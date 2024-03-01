const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  
  var connection
  function kapcsolat(){
    var mysql = require('mysql')

    connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'webreceptek'
    })
    
    connection.connect()
    
  }
  
  
  app.get('/film', (req, res) => {
    kapcsolat()
    connection.query('SELECT * from film', function (err, rows, fields) {
      if (err) throw err
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
  })

  app.get('/uzlettipus', (req, res) => {
    
    kapcsolat()
    connection.query('SELECT * FROM uzlettipus', (err, rows, fields) => {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    connection.end() 
    })

    app.post('/keresuzlet', (req, res) => {
      kapcsolat()
      
      connection.query(`SELECT * FROM uzlet INNER JOIN varos ON uzlet.varosok_id = varos.varos_id WHERE uzlettipus = ${req.body.bevitel1}`, (err, rows, fields) => {
      if (err) throw err
      
      console.log(rows)
      res.send(rows)
      })
      connection.end() 
      })

  app.get('/diagram_gabor', (req, res) => {
    kapcsolat()
    connection.query('SELECT film.film_cim, COUNT(*) AS darabszam FROM szavazat INNER JOIN film ON film.film_id = szavazat.szavazat_film GROUP BY film_id;', function (err, rows, fields) {
      if (err) throw err
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
  })


  app.post('/szavazatfelvitel', (req, res) => {
    kapcsolat()
    connection.query('insert into szavazat values (null,'+req.body.bevitel1+')', function (err, rows, fields) {
      if (err) {
        console.log("Szavazatát rögzítettük!")
        res.send("Szavazatát rögzítettük!")
      }
      else {
      console.log("Szavazatát rögzítettük!")
      res.send("Szavazatát rögzítettük!")
    }
    })
    connection.end()
  })

  app.delete('/Torles_uzlet', (req, res) => {
    kapcsolat()
    connection.query(`DELETE FROM uzlet WHERE uzlet_id=${req.body.bevitel1}` ,function (err, rows, fields) {
      if (err) {
        console.log("Hiba!")
        res.send("Hiba!")
      }
      else {
      console.log("A törlés sikerült!")
      res.send("A törlés sikerült!")
    }
    })
    connection.end()
  })

  app.delete('/Torles_varos', (req, res) => {
    kapcsolat()
    connection.query(`DELETE FROM varos WHERE varos_id=${req.body.bevitel1}` ,function (err, rows, fields) {
      if (err) {
        console.log("Hiba!")
        res.send("Hiba!")
      }
      else {
      console.log("A törlés sikerült!")
      res.send("A törlés sikerült!")
    }
    })
    connection.end()
  })

app.post('/keres', (req, res) => {
  kapcsolat()    
    let parancs='SELECT * from film where film_cim like "%'+req.body.bevitel1+'%"'
    connection.query(parancs, function (err, rows, fields) {
      if (err) {
        console.log("Hiba")
      }
    else{
      console.log(rows)
      res.send(rows)
    }
     
    })
    
    connection.end()
 })
//  SAJÁT BACKEND VÉGPONT
  
app.get('/uzlet', (req, res) => {
    
  kapcsolat()
  connection.query('SELECT * FROM uzlet', (err, rows, fields) => {
    if (err) throw err
  
    console.log(rows)
    res.send(rows)
  })
  connection.end() 
  })

  app.get('/varos', (req, res) => {
    
    kapcsolat()
    connection.query('SELECT * FROM varos', (err, rows, fields) => {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    connection.end() 
    })



//----------------------------Tibi-------------------------//
    app.get('/etelek', (req, res) => {
      kapcsolat()
    
      connection.query('SELECT * FROM etelek', (err, rows, fields) => {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
    })
  
  
    app.get('/eteltipusok', (req, res) => {
      kapcsolat()
    
      connection.query('SELECT * FROM eteltipusok', (err, rows, fields) => {
      if (err) throw err
    
      console.log(rows)
      res.send(rows)
  })
    
    connection.end()
  })
  
  
  /*SELECT film.film_cim, COUNT(*) as darabszam FROM szavazat INNER JOIN film ON film.film_id=szavazat.szavazat_film GROUP BY film_id;*/
  app.get('/diagram', (req, res) => {
    kapcsolat()
    connection.query('SELECT etelek_nev, COUNT(*) darabszam FROM etelek INNER JOIN szavazat_etel ON szavazat_etel.szavazat_szam=etelek.etelek_id GROUP BY etelek_id', function (err, rows, fields) {
      if (err) throw err
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
  })
    
  app.delete('/torlesetelek', (req, res) => {
    kapcsolat()
    connection.query(`DELETE FROM etelek WHERE etelek_id=${req.body.bevitel1};`, function (err, rows, fields) {
      if (err) {
        console.log("Hiba!")
        res.send("Hiba!")
      }
      else {
      console.log("A törlés sikerült!")
      res.send("A törlés sikerült!")
    }
    })
    connection.end()
  })
  
  app.delete('/torleseteltipusok', (req, res) => {
    kapcsolat()
    connection.query(`DELETE FROM eteltipusok WHERE eteltipusok_id=${req.body.bevitel1};`, function (err, rows, fields) {
      if (err) {
        console.log("Hiba!")
        res.send("Hiba!")
      }
      else {
      console.log("A törlés sikerült!")
      res.send("A törlés sikerült!")
    }
    })
    connection.end()
  })
    
  app.get('/diagram2', (req, res) => {
    kapcsolat()
    connection.query(`SELECT COUNT(etelek_nev) AS etelek_szama, eteltipusok_nev FROM etelek INNER JOIN eteltipusok ON etelek.etelek_tipus = eteltipusok.eteltipusok_id GROUP BY eteltipusok_nev;`, function (err, rows, fields) {
      if (err) throw err
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
  })

  
  
  


};
