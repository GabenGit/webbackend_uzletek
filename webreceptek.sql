-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 19. 10:44
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webreceptek`
--
CREATE DATABASE IF NOT EXISTS `webreceptek` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `webreceptek`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `etelek`
--

CREATE TABLE `etelek` (
  `etelek_id` int(11) NOT NULL,
  `etelek_nev` varchar(255) NOT NULL,
  `etelek_tipus` int(11) NOT NULL,
  `etelek_kep` varchar(255) NOT NULL,
  `etelek_hozzavalok` varchar(255) NOT NULL,
  `etelek_allergenek` varchar(255) NOT NULL,
  `etelek_elkeszites` text NOT NULL,
  `etelek_video` varchar(255) NOT NULL,
  `etelek_ajanlat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `etelek`
--

INSERT INTO `etelek` (`etelek_id`, `etelek_nev`, `etelek_tipus`, `etelek_kep`, `etelek_hozzavalok`, `etelek_allergenek`, `etelek_elkeszites`, `etelek_video`, `etelek_ajanlat`) VALUES
(1, 'Sült paradicsom', 1, 'kep1.jpg', '1ek - olívaolaj	\r\n0.5kg - koktélparadicsom	\r\nsó	\r\nbors	\r\n10gerezd - fokhagyma	\r\n1tk - rozmaring	\r\n3tk - kakukkfű	\r\n10levél - bazsalikom', 'nincs', '1. A sütőt előmelegítjük 180 fokra.\r\n2. Egy tepsibe olívaolajat öntünk, erre rakjuk a megmosott paradicsomokat, sózzuk, borsozzuk, a paradicsomok közé rakjuk a héjas fokhagymagerezdeket. Ezek sütés közben kellemesen aromásítják majd a paradicsomot, sütés után kinyomkodjuk a héjából, kellemes édeskés, krémes állagú lesz.\r\n3. A paradicsomokat fűszerezzük rozmaringgal, kakukkfűvel, az egészet kicsit összefogatjuk, majd az előmelegített sütőbe rakjuk 30-35 percre, amíg a paradicsom héja enyhén megsül, és a húsa kissé összeesik.\r\n4. Az elkészült paradicsomokra friss bazsalikomleveleket tépkedünk, és hagyjuk langyosra hűlni.\r\n5. A sült paradicsomot tehetjük pirítósra, kínálhatjuk húsok mellé. de hozzáadhatjuk készülő fogásokhoz is.', 'https://www.youtube.com/embed/MDqcv5ZwtRw?si=f8YIb_pwsPfAyWfI', 0),
(2, 'Krémsajtos tojássaláta', 1, 'kep2.jpg', '4db - főtt tojás	\r\n1doboz - natúr krém sajt	\r\n2tk - dijoni magos mustár	\r\n1fej - lila hagyma	\r\n1csok - petrezselyemzöld	\r\nsó	\r\n2csip - őrölt fehérbors	', '- tojás\r\n- tej\r\n- mustár', '1. A kis fej lila hagymát és a kis csokor petrezselyemzöldet apróra felvágjuk.\r\n2. Az előzőleg megfőtt tojásokat felkockázzuk.\r\n3. A krémsajthoz hozzákeverjük a mustárt, az apróra vágott lila hagymát, petrezselyemzöldet és összekeverjük. Ízlés szerint sózzuk és borsozzuk.\r\n4. A keverékhez hozzáadjuk a felkockázott főtt tojást és óvatosan összeforgatjuk.\r\n5. Tálalásig hűtőben pihentetjük.', 'https://www.youtube.com/embed/fSzTnhEENxA?si=R89-QY69h30gZ-Yg', 0),
(3, 'Csikós tokány', 2, 'kep3.jpg', '15dkg - füstölt kenyér szalonna	\r\n2fej - vöröshagyma	\r\n2db - t. v. paprika	\r\nbors	\r\n80dkg - szeletelt sertéslapocka	\r\nsó	\r\n3gerezd - fokhagyma	\r\n1ek - pirospaprika	\r\n1db - paradicsom	\r\n2ek - tejföl	\r\n1ek - liszt', '- glutén\r\n- tej', '1. A szalonnát 3-4 milliméteresre csíkozzuk; a hagymát meghámozzuk, felkockázzuk; a paprikát megmossuk, felszeleteljük, majd a hagymához hasonló méretűre vágjuk; a hússzeleteket enyhén átlósan7-8 milliméteres csíkokra vágjuk; a fokhagymát megpucoljuk, apróra vágjuk; végül a paradicsomot is megmossuk, és felkockázzuk.\r\n2. Egy magas falú serpenyőben a szalonnát alacsony fokozaton, időnként kevergetve pár perc alatt átlátszóra pirítjuk, ezután hozzáadjuk a vöröshagymát, és együtt tovább dinszteljük. Hozzáadjuk a paprikát is, megborsozzuk, és addig pároljuk, amíg az alap opálosan áttetsző nem lesz.\r\n3. Ezután hozzáadjuk a tokányhúst, sózzuk, de csak óvatosan, mert a szalonna is sós, és fehéredésig pirítjuk. Ízesítjük a fokhagymával, majd fűszerezzük a pirospaprikával, alaposan elkeverjük, és a kockázott paradicsomot is beletesszük. Ezzel is jól elkeverjük, és felöntjük annyi vízzel, amennyi éppen ellepi, majd lefedjük, és takaréklángon nagyjából 60-70 perc alatt puhára pároljuk.\r\n4. Ha megpuhult, egy kis tálba kanalazzuk a tejfölt, hozzáadjuk a lisztet, és habverő segítségével csomómentesre keverjük, majd hőkiegyenlítéssel a raguhoz öntjük. Pár percig kevergetve készre főzzük a tokányt.\r\n5. Melegen, általában nokedlivel vagy tésztával, esetleg rizzsel és savanyúsággal fogyaszthatjuk ezt a szaftos-ízes megunhatatlan ősi ragut.', 'https://www.youtube.com/embed/JA8jqD-yJDw?si=gGNySX9u7XlXC_Fe', 0),
(4, 'Margó torony', 4, 'kep4.jpg', '0dkg - darált háztartási keksz	\r\n20dkg - darált dió	\r\n10dkg - sütőmargarin	\r\n20dkg - porcukor	\r\n0.5dl - rum	\r\n3ek - cukrozatlan kakaópor', '- glutén\r\n- diófélék', '1. A darált kekszet a dióval, a porcukorral, a margarinnal, a rummal és a kakaóporral összedolgozuk. A kókuszgolyóhoz hasonló állagot kell kapnunk. Ha esetleg száraz lenne, és nem állna össze, cseppenként adjunk hozzá tejet.\r\n2. A masszát porcukorral megszórt margó torony formába nyomkodjuk majd kiütögetjük. Minden töltés előtt érdemes megporcukrozni a forma belsejét. Ha nincs ilyen formánk, akkor kézzel is formázhatunk a masszából kúpokat. Porcukorral meghintve tálaljuk.', '', 0),
(5, 'Finom görögsaláta', 5, 'kep5.jpg', '1db - kígyóuborka	\r\n1fej - lila hagyma	\r\n25dkg - koktélparadicsom	\r\n10dkg - olajbogyó	\r\n15dkg - feta  sajt	\r\n1db - citrom	\r\n3ek - extraszűz olívaolaj	\r\n1tk - szárított bazsalikom	\r\n3tk - szárított oregánó', '- tej\r\n', '1. Előkészítjük a saláta hozzávalóit: az uborkát feldaraboljuk, majd nagyjából egycentis kockákra vágjuk, a hagymát vékonyan felszeleteljük, a koktélparadicsomokat és az olajbogyókat félbevágjuk, a feta sajtot felkockázzuk.\r\n2. Összeállítjuk az öntetet: a citromot félbevágjuk, a levét kinyomjuk, és egy keverőtálba öntjük. Hozzáadjuk az olívaolajat, fűszerezzük a bazsalikommal és az oregánóval, majd jó alaposan egyneműre keverjük.\r\n3. Következhet a saláta összeállítása: salátástálba öntjük az uborkát, a paradicsomot, a lila hagymát, az olajbogyót, végül a feta sajtot. Ráöntjük az öntetet, és alaposan összeforgatjuk, ügyelve, hogy ne törjük össze a sajtot, de az öntetből mindenhova jusson.\r\n4. Az elkészült salátát fogyasztás előtt letakarva egy óráig hűtőben tároljuk. ', 'https://www.youtube.com/embed/8rUZC7ZOplo?si=f2oGLnFEjZPhni_A', 0),
(6, 'Babgulyás', 3, 'kep6.jpg', '1fej - hagyma	\r\nolaj	\r\n1db - paprika	\r\n1db - paradicsom	\r\n40dkg - sertés comb vagy lapocka	\r\nőrölt - piros paprika	\r\nsó	\r\nételízesítő	\r\n20dkg bab	\r\n4db sárgarépa	\r\n2db petrezselyem gyökér	\r\n4köz burgonya', 'nincs', '1. A felkockázott vöröshagymát olajon megpirítjuk, ezután hozzáadjuk a felkockázott paprikát és paradicsomot majd ezeket összepirítjuk. Mikor szépen összefonnyadtak a hozzávalók, hozzáadjuk a felkockázott húst, megszórjuk őrölt piros paprikával, sóval, ételízesítővel és összeforgatjuk.\r\n2. Ezután hozzáadjuk a babot, felöntjük vízzel és felforraljuk. Forrás után a levesbe tesszük a megtisztított,felkockázott répát, petrezselyem gyökeret és a burgonyát. A levest addig főzzük, ameddig a hús és a bab puha nem lesz.', 'https://www.youtube.com/embed/9T_yaLxH_gY?si=kbxBSgNUsod4YLyp', 0),
(7, 'Linzerkarika', 4, 'kep7.jpg', '30dkg - liszt	\r\n20dkg - vaj	\r\n1db - tojássárgája	\r\n10dkg - porcukor	\r\n0.5db - citrom reszelt héja	\r\n1db - tojás a kenéshez	\r\n', '- glutén\r\n- tojás\r\n- tej', '1. A linzerkarika elkészítéséhez a lisztet egy tálba öntjük, hozzáadjuk a vajat és összemorzsoljuk. Beleöntjük a tojássárgáját, a porcukrot és a reszelt citromhéjat és gyors mozdulatokkal összegyúrjuk. Gombóccá formáljuk a tésztát és folpakba csomagolva legalább 1 órára a hűtőbe tesszük.\r\n2. A tésztát lisztezett felületen kinyújtjuk és különböző formákat szaggatunk ki belőle. A felének a közepét egy kisebb kiszúróval kilyukasztjuk.\r\n3. Sütőpapírral kibélelt tepsibe tesszük a formákat, a lyukas közepűeket megkenjük tojással. A linzer karikákat 170 fokra előmelegített sütőben 20-25 perc alatt aranybarnára sütjük. Ha megsült ízlés szerint lekvárral, krémmel megtöltjük.', 'https://www.youtube.com/embed/bsLQ1Si2tV8?si=PV9BP9fYVRtjBPvK', 3),
(8, 'Gazpacho', 3, 'kep8.jpg', '5db - paradicsom	\r\n1db - kígyóuborka	\r\n1db - kaliforniai paprika	\r\n1k - fej vöröshagyma	\r\n2gerezd	- fokhagyma	\r\n0.5db - citrom leve	\r\n1tk - fehérborecet	\r\n2ek - extraszűz olívaolaj	\r\nsó	\r\nbors	\r\n1dl - víz	\r\n1szelet - kenyér	', '- glutén', '1. Előkészítjük az alapanyagokat. A paradicsomok végét x alakban bevágjuk, forrásban lévő vízbe rakjuk 1-2 percre, majd szűrőkanál segítségével áttesszük jéghideg vízbe, ezután meghámozzuk, félbevágjuk, ha szükséges, kivágjuk a csumáját, és rusztikus darabokra vágjuk. Az uborkát meghámozzuk, felkockázzuk. A paprikát megmossuk, kicsumázzuk, ezt is nagyobb darabokra vágjuk. A hagymát meghámozzuk, nagyobb darabokra vágjuk, a fokhagymát szintén meghámozzuk, félbevágjuk.\r\n2. Elővesszük a turmixgépet, és ebbe halmozzuk az előkészített hozzávalókat, a paradicsomot, az uborkát, a paprikát, és a hagymákat. Ízesítjük citromlével, és az ecettel, ráöntjük az olajat, sózzuk, borsozzuk, hozzáadjuk a vizet, majd a tetejére tépkedjük a kenyérszeletet. Ha mindent beleraktunk, lefedjük a turmixgépet, és 5-6 percig erős fokozaton homogénre turmixoljuk a hozzávalókat.\r\n3. Az elkészült levest akár le is szűrhetjük, vagy hagyhatjuk ebben az állapotában is. Hűtőbe rakjuk 4-5 órára, majd hidegen szervírozzuk.\r\n4. Ha azonnal szeretnénk fogyasztani, dolgozzunk hideg zöldségekkel, vagy turmixolás előtt adhatunk jégkockát is az alapanyagokhoz.\r\n5. Ez a spanyol leves a nyár legüdítőbb, legfrissítőbb levesei közé tartozik, könnyen elkészíthető, nem igényel főzést, hosszú ideig friss marad a hűtőben. Tálalhatjuk magában vagy apróra vágott hagymával, paprikával és uborkával, de tehetünk rá pirított kenyérkockát is.', 'https://www.youtube.com/embed/rrY-m3MxliE?si=nEjXnXnHFm3_bDly', 0),
(9, 'Majonézes kukoricasaláta', 5, 'kep9.jpg', '4ek - majonéz	\r\n1ek - mustár	\r\n2ek - tejföl	\r\n1fej - vöröshagyma	\r\n1db - kukoricakonzerv	\r\nsnidling	', '- tojás\r\n- tej\r\n- mustár', '1. A majonézt kikeverjük a mustárral és a tejföllel, beletesszük a nagyon finomra vágott hagymát és a lecsepegtetett kukoricát. Ízlés szerint megszórjuk felaprított snidlinggel.\r\n2. Összekeverjük, és néhány órát a hűtőben pihentetjük, hogy összeérjenek az ízek. Sült húsokhoz kínáljuk köretként. ', 'https://www.youtube.com/embed/wic6rpVp_7w?si=OH_swcRCbV5jxXRl', 0),
(10, 'Csirkemellpaprikás', 2, 'kep10.jpg', '1ek - zsír	\r\n1fej - vöröshagyma	\r\ncsip - só	\r\n80dkg - csirkemell	\r\ncsip - bors	\r\n2gerezd - fokhagyma	\r\n1dl - száraz fehérbor	\r\n2db paprika	\r\n1ek pirospaprika	\r\n1db paradicsom	\r\n1dl tejszín	\r\n1ek tejföl', '- tej', '1. Előkészítjük az alapanyagokat: a vöröshagymát meghámozzuk, apróra kockázzuk; a csirkemellet nagyjából kétcentis kockákra vágjuk; a paprikát és a paradicsomot megmossuk, a paprikát felszeleteljük, majd félcentis darabokra vágjuk (így nem lesz darabos a szaft), a paradicsomot apróra kockázzuk; végül a fokhagymagerezdeket meghámozzuk, apróra vágjuk.\r\n2. Egy serpenyőben közepes lángon zsiradékot hevítünk, erre rakjuk a vöröshagymát, enyhén sózzuk, hogy könnyebben kiengedje a nedvességét. Ha kissé üveges, hozzáadjuk a csirkemellkockákat, együtt pirítjuk tovább, közben ízesítjük sóval, borssal.\r\n3. Ha kifehéredtek a húsok, hozzáadjuk a fokhagymát, tovább pároljuk pár percig, majd felöntjük a fehérborral. Ha az alkohol elpárolgott, hozzáadjuk a paprikát, elkeverjük, majd megszórjuk a pirospaprikával, ezt is alaposan elkeverjük. Következik a paradicsom, végül felöntjük egy kevés vízzel, majd lefedve, alacsony hőmérsékleten nagyjából fél óra alatt készre pároljuk.\r\n4. Ha a hús megpuhult, és a szaft is kissé besűrűsödött, hozzáöntjük a tejszínt, majd belekanalazzuk a tejfölt, elkeverjük, és még egyet forralunk rajta.\r\n5. Nokedlivel és savanyúsággal tálaljuk.', 'https://www.youtube.com/embed/DctsPFd0cMA?si=Z77T9svHrCjx2trj', 0),
(11, 'Pulled pork', 2, 'kep11.jpg', '1.4kg - sertéscomb	\r\n2ek - só	\r\n1tk - őrölt fekete bors	\r\n2tk - majoránna	\r\n2tk - oregano	\r\n1tk - köménymag	\r\n0.5tk - fahéj	\r\n2tk - római kömény	\r\n2tk - őrölt koriander	\r\n1ek - fokhagymapor	\r\n2tk - pirospaprika	\r\n2ek - barna cukor	\r\n1ek - sűrített paradic', '- glutén\r\n- szójabab\r\n- tej', '1. Egy nagy méretű keverőtálban, amibe a hús is elfér, összeállítjuk a pácot. Beletesszük a sót, az őrölt fekete borsot, a majoránnát, az oregánót, a köménymagot, a fahéjat, a római köményt, az őrölt koriandert, a fokhagymaport, a pirospaprikát és a barna cukrot. Hozzákanalazzuk a sűrített paradicsomot, felöntjük olajjal és az egészet jó alaposan összekeverjük.\r\n2. A húst a pácba helyezzük, jól bedörzsöljük a páccal, hogy mindenhol bevonja a felületét.\r\n3. A sütőt 130 Celsius-fokra előmelegítjük.\r\n4. Egy hőálló, vastag falú edényben közepes lángon olajat hevítünk, ebbe tesszük a páccal bekent húst és minden oldalát körbepirítjuk. Hozzáadjuk a megtisztított és cikkekre vágott vöröshagymát, a maradék pácot és beletesszük a ketchupot, a narancslevet, a Worcestershire-szószt, a szójaszószt, a balzsamecetet és a kevés vizet. Jól elkeverjük és felforraljuk. Ha felforrt, lefedjük és az előmelegített sütőbe tesszük 4 órára.\r\n5. Az elkészült húst villával szálaira bontjuk, összekeverjük a szafttal és szendvicsben vagy hot dog kiflibe töltve tálaljuk. A szendvicsbe kerülhet Cheddar sajt, szósz és karikára vágott csemegeuborka is.', 'https://www.youtube.com/embed/ijsJ2l9yqCc?si=7aEDkmrQWyAoPM8V', 0),
(12, 'Bruschetta', 1, 'kep12.jpg', '8szelet - rozskenyér	\r\n4db - paradicsom	\r\n1k - fej fehér hagyma	\r\n3gerezd - fokhagyma	\r\n1levél - friss oregánó	\r\n1levél - bazsalikom	\r\nsó	\r\nőrölt - fekete bors	\r\n2ek - extra szűz olívaolaj', '- glutén', '1. A paradicsomokat, a hagymát és a zöldfűszereket apróra vágjuk. A fokhagymát lereszeljük.\r\n2. A paradicsomot összekeverjük a bazsalikommal és az oregánóval. Megsózzuk, megborsozzuk, majd meglocsoljuk az olívaolajjal.\r\n3. A kenyerek mindkét oldalát megpirítjuk, és ráhalmozzuk a fűszeres paradicsomot. Szórhatunk a tetejére aprított mozzarella sajtot is. Frissen kínáljuk.', 'https://www.youtube.com/embed/L4ZI32QfGbc?si=Kx4IgFzaOqxh3sYH', 0),
(13, 'Körtés-pudingos pite', 4, 'kep13.jpg', 'A tésztához:\r\n30dkg - liszt	\r\n15dkg - porcukor	\r\nsó	\r\n12dkg - hideg vaj	\r\n1db - tojás	\r\n1ek - tejföl	\r\n1tk - sütőpor\r\n	\r\nA töltelékhez:\r\n2db - tojás	\r\n4dkg - cukor	\r\n1csom - vaníliás cukor	\r\nsó	\r\n2dl - tej	\r\n2dl - tejszín	\r\n2csom - vaníliaízű pudingpor	\r\n', '- glutén\r\n- tojás\r\n- tej', '1. Egy keverőtálba szórjuk a lisztet, a porcukrot, egy csipet sót, majd hozzáadjuk a felkockázott hideg vajat, a tojást, a tejfölt és a sütőport. Gyors, morzsoló mozdulatokkal elkeverjük a vajat a lisztes keverékkel, és az egészből tésztát gyúrunk. Ha esetleg nedves a tészta, kevés lisztet adjunk még hozzá. Mindenképpen dolgozzunk gyorsan, hogy a vaj ne olvadjon el. A tésztát folpakba csomagoljuk, és fél órára hűtőbe tesszük pihenni, hogy a vaj visszahűljön.\r\n2. Amíg a tészta pihen, elkészítjük a tölteléket. Egy keverőtálba rakjuk a tojásokat, a cukrot, a vaníliás cukrot, egy csipet sót, és jól elkeverjük. Hozzáöntjük a tejet és a tejszínt, ezt is elkeverjük, majd hozzáadjuk a vaníliás pudingport is. Jó alaposan összekeverjük, hogy a pudingpor feloldódjon, majd felhasználásig félretesszük.\r\n3. A körtét megmossuk, meghámozzuk, a magházat és a szárát eltávolítjuk, cikkekre vágjuk, és 2-3 centis darabokra aprítjuk, majd egy tálba tesszük, meglocsoljuk a citrom levével, fűszerezzük fahéjjal és kardamomommal, majd felhasználásig ezt is félretesszük.\r\n4. Előveszünk egy 24 centiméteres torta- vagy piteformát, az aljára sütőpapírt helyezünk. A lehűlt tésztát kicsomagoljuk, a tortaformába rakjuk, és kézzel elegyengetjük a formában úgy, hogy egyenletes, szép kört kapjunk, és pereme is legyen. (Ezt a műveletet nyújtófával is elvégezhetjük, úgy, hogy 2-3 milliméter vastagra nyújtjuk a tésztát, majd a nyújtófára feltekerve a formába igazítjuk.)\r\n5. A sütőt előmelegítjük 180 fokra. A pitealapot villával megszurkáljuk, sütőpapírt helyezünk rá, majd sütőgyöngyöt, vagy ha nincsen, szárazbabot, lencsét vagy rizst. Erre azért van szükség, hogy az elősütés során a pite oldala ne boruljon be, és a közepe ne emelkedjen fel. A tésztát a sütőbe rakjuk 10 percre, azután kivesszük, eltávolítjuk a nehezéket a sütőpapírral együtt, és hagyjuk langyosra hűlni.\r\n6. Az elősütött pitealapot megkenjük a baracklekvárral. Ha a lekvárt egyenletesen eloszlatjuk, a pite alján betömjük a villával okozott lukakat, így nem folyik ki majd a sodó, emellett kiváló ízt ad majd a pitének. A lekváros felületre kanalazzuk a körtedarabokat, majd az egészet felöntjük annyi sodóval, amennyi még nem teljesen lepi el a körtét.\r\n7. A tetejét megszórjuk a szeletelt mandulával, és a sütőbe rakjuk kb. 30 percre, amíg a töltelék megszilárdul, és a teteje enyhén pirosra sül. Az elkészült pitét hagyjuk langyosra hűlni, ezután szeleteljük. Igazi nyár végi, ősz eleji könnyű desszert, csodás fűszeres ízekkel. Egyszerűen kihagyhatatlan.', 'https://www.youtube.com/embed/lFLYHpr4T2A?si=gGMDJkLbhz84l9K3', 0),
(14, 'Tojásleves', 3, 'kep14.jpg', '2ek - liszt	\r\n2ek - olaj	\r\n2db - babérlevél	\r\n1kvk - őrölt kömény	\r\nsó	\r\n1kvk - őrölt paprika	\r\n6db - tojás	\r\n1ek - ecet	', '- glutén\r\n- tojás', '1. A tojásleves elkészítéséhez alacsony lángon a lisztből és az olajból rántást készítünk, majd felöntjük 1 liter vízzel. Ízesítjük babérlevélel, a köménnyel, egy kevés sóval és az őrölt paprikával.\r\n2. Felverünk kettő tojást, majd ha felforrt a leves, a felvert tojásokat óvatosan belekeverjük, és így még 1-2 percig főzzük.\r\n3. A többi tojást egyenként felütjük, és óvatosan a forró levesbe engedjük. Azután tovább főzzük még így 2-3 percig. Tálalásnál egy tányérba egy bevert tojást teszünk. ', 'https://www.youtube.com/embed/LQ8vWWCMI1g?si=tK8IWZjka4IijYH6', 1),
(15, 'Majonézes krumplisaláta', 5, 'kep15.jpg', '1.5kg - burgonya	\r\nsó	\r\n2db - lila hagyma	\r\n1db - vöröshagyma\r\n	\r\nA salátaöntethez:\r\n2ek - cukor	\r\n0.5dl - ecet	\r\n1l - víz\r\n	\r\nA majonézhez:\r\n2db - tojás	\r\n1ek - mustár	\r\n3dl - olaj	\r\nsó	\r\nbors	\r\n0.25db - citrom leve	\r\nporcukor	\r\n2dl - tejföl', '- tojás\r\n- tej\r\n- mustár', '1. A burgonyát héjában, sós vízben megfőzzük. A héját még melegen lehúzzuk, lehűtjük, a krumplikat felkarikázzuk. A lila- és a vöröshagymát vékony karikákra vágjuk.\r\n2. Kb. 1 liter cukros, ecetes salátalevet készítünk ízlés szerint ízesítve. A salátalébe tesszük a felkarikázott burgonya- és hagymaszeleteket, kb. 2-3 órát állni hagyjuk, ez idő alatt elkészítjük a majonézt.\r\n3. A majonézhez a tojássárgákat a mustárral kikeverjük, majd az olajat lassan, szinte csepegtetve adagoljuk hozzá, folyamatos keverés mellett. Ízesítjük még sóval, borssal, citromlével és a porcukorral. Ha elkészült, hozzáadjuk a tejfölt.\r\n4. A krumplit és a hagymát alaposan leszűrjük, és egy tálba tesszük. Az elkészült mártással alaposan és óvatosan elverjük, hogy ne törjön össze a burgonya. Ha szükséges, még utólag ízesíthetjük sóval, borssal, és néhány órát még a hűtőben pihentetjük, hogy az ízek jól összeérjenek. ', 'https://www.youtube.com/embed/8rxKy-uA6K8?si=OBO0ATbBgconP4pd', 0),
(16, 'Cobb saláta', 5, 'kep16.jpg', '8db - koktélparadicsom	\r\n1fej - római saláta	\r\n4db - tojás	\r\n8szelet - bacon	\r\n40dkg - csirke	\r\n0.33csésze - vörösborecet	\r\n0.66csésze - olívaolaj	\r\n1ek - dijoni mustár	\r\nsó	\r\nfekete bors (őrölt)	\r\n1db - avokádó	\r\n10dkg - kék sajt', 'nincs', '1. A paradicsomokat félbe vágjuk. A római salátát  közepes darabokra tépkedjük. A tojásokat keményre főzzük, majd miután megpucoltuk, negyedeljük őket. A bacont ropogósra sütjük, miközben a főtt csirkét apróra kockázzuk.\r\n2. Az ecetet, az olajot és a mustárt egy edényben összekeverjük, sózzuk, borsozzuk.\r\n3. Egy nagyobb lapos tányér aljára szórjuk a salátát, majd a tojásból, a paradicsomból, a csirkéből, az avokádó szeletekből, a szalonnából és a kék sajtból rakjunk ki egységes sorokat. Végül leöntjük az elkészült salátaöntettel.', 'https://www.youtube.com/embed/nZSVWK00GtY?si=_FFtWs6IKTe0Wo_c', 0),
(17, 'Harcsaleves', 3, 'kep17.jpg', '60dkg - afrikaiharcsa-filé	\r\n20dkg - vöröshagyma	\r\n10dkg - burgonya	\r\n10dkg - paradicsom	\r\n10dkg - tv-paprika	\r\n5dkg - olívabogyó	\r\n5dkg - kapribogyó	\r\n5dkg - gyöngyhagyma	\r\n0.5dl - olaj	\r\nőrölt - fűszerpaprika	\r\nőrölt - fekete bors	\r\nsó	', '- hal', '1. A harcsaleves elkészítéséhez a felaprított vöröshagymát egy kevés olajon megfonnyasztjuk, majd hozzáadjuk a kockára vágott burgonyát és a felaprított paradicsomot és paprikát. Ízesítjük, fűszerezzük sóval, borssal és fűszerpaprikával.\r\n2. Ezután felengedjük vízzel, majd belehelyezzük az előre sóval és borssal fűszerezett, felkockázott afrikai harcsát. Hozzáadjuk az olívabogyót, a gyöngyhagymát és a kapribogyót, és kb. 20 perc alatt készre főzzük. ', '', 0),
(18, 'Csokis muffin', 4, 'kep18.jpg', '15dkg - liszt	\r\n0.5csom	- sütőpor	\r\n15dkg - cukor	\r\n5dkg - cukrozatlan kakaópor	\r\n2db - tojás	\r\n15dkg - vaj	\r\n3ek - baracklekvár	\r\n5dkg - étcsokoládé', '- glutén\r\n- tojás\r\n- tej', '1. A csokis muffin elkészítéséhez egy tálban összekeverjük a száraz hozzávalókat: a lisztet, a sütőport, a cukrot és a kakaóport.\r\n2. Folyamatos keverés mellett hozzáadjuk a tojásokat, a megolvasztott vajat, a baracklekvárt, végül pedig a darabokra tört étcsokoládét.\r\n3. A tésztát egy 12 darabos, papírkapszlikkal kibélelt muffintepsibe adagoljuk, majd a 170 fokra előmelegített sütőben 20-25 perc alatt készre sütjük.', 'https://www.youtube.com/embed/l9dUjcnbUEM?si=JBmFsL4fKTef0aPY', 0),
(19, 'Töltött tök', 2, 'kep19.jpg', '1fej - vöröshagyma	\r\n2db - kisebb tök	\r\n2gerezd	- fokhagyma	\r\n1csok - kapor	\r\n2ek - olívaolaj	\r\nsó	\r\n80dkg - darált sertéshús	\r\n20dkg - főtt rizs	\r\n1tk - majoránna	\r\nbors	\r\n33dkg - tejföl	\r\n1dl - víz', '- tej', '1. A hagymát meghámozzuk, és apró kockákra vágjuk. A tököt meghámozzuk, félbevágjuk, és kikanalazzuk a magos, puha részét. A fokhagymát fokhagymanyomón átnyomjuk, a kaprot apróra vágjuk.\r\n2. Egy serpenyőben, egy evőkanál olívaolajon a hagymát alacsony hőmérsékleten 5-6 perc alatt üvegesre dinszteljük. Az elején megsózzuk, és ha már összeesett, hozzáadjuk a fokhagymát, 1-2 percig kevergetve pirítjuk, majd levesszük a tűzről.\r\n3. Egy keverőtálba rakjuk a darált húst, hozzáadjuk a dinsztelt hagymát, a főtt rizst, fűszerezzük a kapor egyharmadával, a majoránnával, ízesítjük sóval, borssal, az egészet jó alaposan összekeverjük.\r\n4. A sütőt előmelegítjük 180 fokra, egy magasabb falú tepsibe vagy jénaiba egy evőkanál olajat öntünk, megsózzuk. Erre helyezzük a tökhajókat, kicsit megmozgatjuk, hogy az olajat és a sót is eloszlassuk a tepsi alján, majd enyhén sózzuk a tetejét is. Azután a tököket megtöltjük a húsos keverékkel, kézzel formázzuk, és enyhén megnyomkodjuk, tömörítjük a tölteléket.\r\n5. Egy tálba rakjuk a tejfölt, hozzáadjuk a maradék kaprot, jól összekeverjük, és megkenjük vele a töltelék tetejét. Egy keveset hagyhatunk a tálaláshoz is.\r\n6. Vizet öntünk a tepsi aljára, lefedjük, majd az előmelegített sütőben 50 percig sütjük. 50 perc elteltével levesszük a tetejét, a sütő hőmérsékletét 200 fokra emeljük, és további 15 percig sütjük, vagy amíg a tejföl meg nem pirul a tetején.\r\n7. Az elkészült töltött tököt melegen tálaljuk, meglocsolhatjuk a megmaradt kapros tejföllel, fogyaszthatjuk rizzsel vagy friss kenyérrel.', 'https://www.youtube.com/embed/-vCNsE46vWo?si=5QfmQO__qkYfYjGd', 2),
(20, 'Fasírt', 1, 'kep20.jpg', '40dkg - darált sertéscomb	\r\n2fej - vöröshagyma	\r\n4gerezd	- fokhagyma	\r\n2db - tojás	\r\n2db - szikkadt zsemle	\r\nsó	\r\nőrölt - feketebors	\r\n2tk - fűszerpaprika	\r\nzsemlemorzsa	\r\nolaj a sütéshez', '- glutén\r\n- tojás\r\n- tej', '1. A fasírt elkészítéséhez megdinszteljük olajon az apró kockára vágott vöröshagymát. Ha egy kicsit kihűlt, hozzáadjuk a darált húshoz, rányomjuk a fokhagymát, majd a tojásokat is ráütjük.\r\n2. A szikkadt zsemléket tejbe áztatjuk néhány percre, aztán alaposan kifacsarjuk, és ezt is a húshoz adjuk.\r\n3. Fűszerezzük sóval, borssal és pirospaprikával a fasírtalapot, majd alaposan keverjük össze. Használjuk a kezeinket! Ha túl lágy lenne a massza, akkor adjunk hozzá egy kevés zsemlemorzsát is.\r\n4. Miután alaposan összekevertük a fasírtmasszát, vizes kézzel pici golyókat formázunk belőle, majd kevés zsemlemorzsában megforgatjuk. Így lesz jó ropogós a külsejük.\r\n5. Végül nem túl forró olajban, pár perc alatt kisütjük valamennyit. Krumplipürével, petrezselymes burgonyával vagy sült krumplival is tálalhatjuk. Adhatunk hozzá tejfölös-hagymás mártogatóst is.', 'https://www.youtube.com/embed/8bwK7T_dKJs?si=7udUbGygoF9DbpKp', 0),
(21, 'Hollandi mártás', 1, 'kep21.jpg', '25dkg - vaj	\r\n4db - tojássárgája	\r\n2ek - víz	\r\n1csip - só	\r\n0.5tk - fehérborecet	\r\n0.5db - citrom leve	\r\n1csip - cayenne bors', '- tojás\r\n- tej', '1. A vajat megolvasztjuk. A tojássárgájákat egy fém vagy üveg keverőtálba tesszük, és hozzáadunk 2 ek vizet, a sót és a borecetet, majd nem túl forró vízgőz fölé tesszük a tálat. (A tál alja ne érjen bele a forró vízbe!)\r\n2. Kézi vagy gépi habverővel keverni kezdjük és folyamatosan verjük, amíg fakó sárgává nem válik. Néha ellenőrizzük, hogy a gőz, amiben áll ne legyen se túl hideg, mert akkor nem lesz elég kemény a mártás, se túl meleg, mert akkor összecsomósodik.\r\n3. Lehúzzuk a tűzről, és folyamatos keverés mellett először cseppenként, majd kissé bátrabban hozzáadjuk az olvasztott vajat. Ha a mártás nagyon keménynek tűnik, hozzáadunk egy evőkanál vizet.\r\n4. A citromlével és a Cayenne-borssal ízesítjük, és ha szükséges, adunk hozzá még sót. Azonnal tálaljuk spárga vagy Benedict tojás mellé.', 'https://www.youtube.com/embed/JwoJPRt3Jh4?si=9wpIhZKqAev5ojuF', 0),
(22, 'Kapros lazactatár', 1, 'kep22.jpg', '30dkg - füstölt lazacszelet	\r\n10dkg - kígyóuborka	\r\n1csok - kapor	\r\n1tk - só	\r\nbors	\r\n0.5db - citrom	\r\n2ek - majonéz	\r\n1fej - lila hagyma	\r\ntoast kenyér', '- tojás\r\n- hal\r\n- mustár', '1. A kapros lazactatár elkészítéséhez a füstölt lazacszeleteket kicsomagoljuk, és apró kockákra vágjuk. Egy fém vagy üveg keverőtálba tesszük.\r\n2. A kígyóuborkát megmossuk, meghámozzuk és kis kockákra vágjuk, és szintén a keverőtálba öntjük.\r\n3. A felaprított kaprot, a sót, a borsot, a citrom kifacsart levét, a majonézt és a felaprított lila hagymát is hozzáadjuk, és összekeverjük mindet.\r\n4. Ha ezzel elkészültünk, nincs más dolgunk, mint pihentetni fél órát, és addig elkészíteni a pirítóst, melyet a lazactatárral megkenve remek előételt kapunk. ', 'https://www.youtube.com/embed/2Lh6oq4HgTs?si=J2Y-uTHdRdHXNCaI', 0),
(23, 'Rántott karfiol', 2, 'kep23.jpg', '1kg - karfiol	\r\n3db - tojás	\r\n2ek - tej	\r\n10dkg - liszt	\r\n20dkg - zsemlemorzsa	\r\nsó	\r\n3dl - olaj', '- glutén\r\n- tojás\r\n- tej', '1. A megtisztított karfiolt rózsáira bontjuk, megmossuk, a nagyobb rózsákat félbe és negyedbe vágjuk.\r\n2. Sós vízben forrástól számított 3 percig főzzük, majd leszűrjük, és lecsepegtetjük.\r\n3. Ha kihűlt, az összes karfiolrózsát lisztbe, majd tejjel elhabart tojásba, végül zsemlemorzsába forgatjuk. Ezután bő, forró olajban kisütjük mindet. Főtt rizs, vegyes saláta, sült krumpli illik mellé.', 'https://www.youtube.com/embed/0L8-ydYwfuc?si=JprmO7nVXh28apQJ', 0),
(24, 'Vadas marha', 2, 'kep24.jpg', '80dkg - fehérpecsenye	\r\nsó	\r\nbors	\r\nolaj	\r\n60dkg - zöldség	\r\n1fej - vöröshagyma	\r\n2gerezd	- fokhagyma	\r\n2db - babérlevél	\r\n1dl - száraz fehérbor	\r\n1ek - liszt	\r\n2dl - tejföl	\r\n1ek - cukor	\r\n1ek - mustár	\r\n0.5db - citrom leve	\r\n1ek - borecet', '- glutén\r\n- tojás\r\n- tej\r\n- mustár', '1. A húst felszeleteljük, a szeleteket kissé kiklopfoljuk, sózzuk, borsozzuk, és mindkét oldalukon, 2-3 evőkanál olajon hirtelen elősütjük 1-1 perc alatt.\r\n2. A hússzeleteket kiemeljük, a visszamaradt olajban a felkarikázott zöldségeket is megpirítjuk (kb. 5 perc), majd hozzáadjuk az apróra vágott vöröshagymát, fokhagymát, és kicsit lepirítjuk.\r\n3. Az elősütött húsokat rátesszük a zöldségágyra, rádobjuk a babérlevelet, sózzuk, borsozzuk, ráöntjük a fehérbort, valamint 1 dl vizet.\r\n4. Saját levében, fedő alatt, lassan pároljuk bő 1 óra hosszat. Ha kell, vízzel pótoljuk az elpárolgott levet.\r\n5. A megpuhult húsokat és a babért kiszedjük, a zöldségeket merülőmixerrel összeaprítjuk, a liszttel és a tejföllel behabarjuk a mártást.\r\n6. Cukorral, mustárral, tejföllel, citromlével, borecettel ízesítjük, a hússzeleteket visszahelyezzük a mártásba, és lassan jól átforraljuk.\r\n7. A krumpligombóchoz az összetört főtt burgonyát a többi alapanyaggal összedolgozzuk, majd a masszából dió nagyságú gombócokat formázunk, lobogó sós vízbe dobjuk, amikor feljönnek a víz tetejére, tálba szedjük, kevés olajjal meglocsoljuk, hogy ne ragadjanak össze.', 'https://www.youtube.com/embed/_GzxiPOAt9U?si=xFqyIP6_j83odDra', 0),
(25, 'Madeira sütemény', 4, 'kep25.jpg', 'Piskótához:\r\n3db - tojás	\r\n10dkg - margarin	\r\n12dkg - kristálycukor	\r\n1db - lime reszelt héja	\r\n0.5db - lime facsart leve	\r\n2.5dl - tej	\r\n30dkg - liszt	\r\n1csom - sütőpor	\r\n1csom - vaníliás cukor	\r\n1kvk - vaníliaaroma\r\n	\r\nKrémhez:\r\n25dkg - Mascarpone	\r\n1db', '- glutén\r\n- tojás\r\n- tej', '1. A piskótához felverjük a tojásokat, a margarint és a cukrot. Hozzákeverjük a lime reszelt héját, majd felváltva adagoljuk a tejet és a lisztet. Végezetül beledolgozzuk a sütőport, a vaníliás cukrot, a lime levét és a vaníliaaromát. Alaposan eldolgozzuk a tésztát.\r\n2. Egy 30 cm-es, püspökkenyér sütőformát olajjal vékonyan kikenünk, beletöltjük a tésztát és előmelegített sütőben, 170 Celsius-fokonon tűpróbáig sütjük.\r\n3. Ha kihűlt, hosszában kettévágjuk és hagyjuk teljesen kihűlni.\r\n4. A mascarponét a lime reszelt héjával és fél lime levével közepes fokozaton elkezdjük felverni, közben pedig lassan hozzáöntjük a cukrászhabot. Keményedésig verjük a krémet és csillag végű habzsákba töltjük.\r\n5. A habzsákból a sütemény alsó, vágott felére 6x3 db, kb. 4 cm magas halmocskát nyomunk körkörösen, majd a sorban 2-2 eperszeletet és 3-3 szem áfonyát nyomunk finoman a habba. Rátesszük a piskóta tetejét és ugyanezt megismételjük a sütemény tetején is, 2x5 halmocskával, 2-2 szelet eperrel és 3-3 áfonyával.\r\n6. Végül meghintjük egy kis reszelt citrommal, beletűzdelünk pár mentalevelet és fogyasztásig hűtőben tároljuk.', 'https://www.youtube.com/embed/inMXk3zCTTM?si=DK2Cxy6kyL90gcAA', 0),
(26, 'Rumos meggy parfé', 4, 'kep26.jpg', '15dkg - meggy kimagozva	\r\n2dl - rum	\r\n1.75dl - tejszín	\r\n2db - tojás	\r\n6dkg - porcukor	\r\n5dkg - hántolt mandula', '- tojás\r\n- tej\r\n- diófélék', '1. A kimagozott meggyet nagyobb darabokra vágjuk, és egy tálba téve ráöntjük a rumot. Lefedve legalább egy órát hagyjuk állni.\r\n2. A tejszín felét egy nyeles lábasban majdnem forrásig melegítjük. Közben a tojássárgákat a cukor felével fehéredésig habosítjuk egy kézi robotgéppel. A forró tejszínt kis adagokban a cukros tojássárgájára öntjük, miközben folyamatosan keverjük.\r\n3. A tejszínes-tojássárgás keveréket visszaöntjük a lábasba, és kevergetve lassú tűzön addig főzzük, míg besűrűsödik. A tűzről levéve hagyjuk teljesen kihűlni.\r\n4. A meggyet lecsepegtetjük, és a kihűlt pudinghoz adjuk. A rumot nem öntjük ki, hanem félretesszük. A mandulát durvára vágjuk, és ezt is a meggyes-tojásos masszához keverjük.\r\n5. Kibélelünk folpakkal egy félliteres, hosszúkás kenyérformát, úgy, hogy a fóliaszélek túllógjanak a forma peremén.\r\n6. Egy tálban kemény habbá verjük a tojásfehérjét, és egy másik tálban a megmaradt tejszínt is keményre verjük.\r\n7. Egy habverővel óvatosan a meggyes-mandulás krémbe forgatjuk a kétféle habot. A keveréket az előkészített formába öntjük, és két órára a fagyasztóba tesszük.\r\n8. Azután kivesszük a formát a fagyasztóból, átkeverjük a parfét, hogy a meggyszemek ne üljenek le a forma aljába, és visszatesszük a formát a fagyasztóba egy egész éjszakára.\r\n9. Tálalás előtt egy kanál porcukrot egy kis serpenyőbe teszünk a meggyes rummal együtt, és lassú tűzön addig forraljuk, míg egy nem túl sűrű szirupot kapunk. Hagyjuk kihűlni.\r\n10. Tálalás előtt 10 perccel kivesszük a parfét a fagyasztóból, és kifordítjuk egy deszkára. Lehúzzuk róla a fóliát, majd szeletekre vágjuk, és a sziruppal meglocsolva, valamint a friss, félbevágott meggyszemekkel díszítve tálaljuk.', 'https://www.youtube.com/embed/Bt3-CeNi-Rs?si=nMbC27At0VejVlD4', 0),
(27, 'Marhahúsleves', 3, 'kep27.jpg', '1.2kg - marhalábszár, -szegy vagy -rostélyos	\r\n60dkg - csont	\r\n1fej - hagyma	\r\n4gerezd	- fokhagyma	\r\n1körömnyi - cseresznyepaprika	\r\n15szem - bors	\r\n1kvk - sáfrány	\r\n80dkg - vegyes leveszöldség	\r\n30dkg - kelkáposzta	\r\n1csok - petrezselyem	\r\n1db - zöldpapr', 'nincs', '1. A húst és a csontot megmossuk, a húst 3-4 darabra vágjuk. A hagymát és a fokhagymát meghámozzuk, a cseresznyepaprikát leöblítjük, a borsot és a sárfrány(os szeklicé)t teatojásba zárjuk. A zöldségeket megtisztítjuk, és hasábokra vágjuk. A kelkáposztát, a csokorban hagyott petrezselymet, a zöldpaprikát és a paradicsomot leöblítjük.\r\n2. A csontot és a húst egy nagyobb fazék aljára tesszük, felöntjük 3 l hideg vízzel. Forrásig hevítjük, első habját szitakanállal leszedjük, majd hozzáadjuk a teatojást, a hagymát, a fokhagymát, a cseresznyepaprikát és egy kevés sót. Fedő nélkül, lassan gyöngyöző forralással fél óráig főzzük.\r\n3. A leveshez adjuk a vegyes zöldséget, a kelkáposztát, a csokorban hagyott petrezselymet, a zöldpaprikát és a paradicsomot egészben, majd további lassú forralással, fedő nélkül az egészet puhára főzzük.\r\n4. Enyhén sós vízben kifőzzük a finommetéltet, leszűrjük, rámerünk egy kevés húslevest, melegen tartjuk.\r\n5. A húsleves felszínéről leszedjük a zsiradékot. A levest merőkanállal előmelegített tálba szedjük-szűrjük, hozzáadjuk a tésztát. A zöldséget és a húst előmelegített tálra rendezzük, és a levessel együtt vagy utána, tetszés szerinti mártásokkal tálaljuk.', 'https://www.youtube.com/embed/t6GHdkk3Im4?si=O_vjLoqFVfxSGTWA', 0),
(28, 'Ramen', 3, 'kep28.jpg', '30dkg - csirkemell	\r\n10g - shitake gomba (szárított)	\r\n4db - tojás	\r\n3db - leveskocka	\r\n2gerezd	- fokhagyma	\r\nkh - gyömbér	\r\n1csom - újhagyma	\r\nízlés szerint só	\r\nízlés szerint bors	\r\n4ek - szójaszósz	\r\n1ek - fehér ecet	\r\n1dl - olaj	\r\n2.5l - víz', '- szójabab', '1. A csirkemelleket csíkokra vágjuk, majd kevés olajon megpirítjuk. Felöntjük a vízzel, sózzuk, és kb. 30 percig főzzük úgy, hogy a hozzáöntött vízből kb. 1,5 liter maradjon.\r\n2. A húst kivesszük a léből, tányérra helyezzük és letakarjuk.\r\n3. Az erőlevesbe belemorzsoljuk a leveskockákatt és felforraljuk. Ha kész, levesszük a tűzről.\r\n4. Az újhagymát, a gyömbért, a fokhagymát megpucoljuk, apróra vágjuk. A szárított gombát is aprítjuk.\r\n5. Egy lábasban olajat melegítünk, hozzáadjuk az aprított zöldségeket, és egy picit megpirítjuk. A zöldségre ráöntjük az erőlevest, és további 15 percig főzzük.\r\n6. Hozzáadjuk a szójaszószt és a fehérecetet, majd ismét felforraljuk. Végül visszatesszük a csirkemellet is, még egyet rottyantunk rajta, és kész is.\r\n7. A tojásokat kb. 5 perc alatt megfőzzük. Eltávolítjuk a héját, félbe vágjuk.\r\n8. A levest tányérokba szedjük, és a főtt tojással tálaljuk.', 'https://www.youtube.com/embed/XmbsOmel_Yg?si=kjzmAvAzDzVPgRRk', 0),
(29, 'Színes rizssaláta', 5, 'kep29.jpg', '3db - cékla	\r\n14dkg - rizs-vadrizs keverék	\r\nsó	\r\n2marék - konyhakész bébispenót	\r\n1marék - dióbél	\r\nfrissen - őrölt bors	\r\n10dkg - feta sajt	\r\n\r\nAz öntethez:\r\n2ek - balzsamecet	\r\n1ek - méz	\r\n1.5ek - olívaolaj	\r\nsó	\r\nfrissen - őrölt bors', 'nincs', '1. A céklákat megmossuk, majd egyesével alufóliába csomagoljuk, és 200 fokos sütőben legalább 60 percig sütjük, vagy amíg meg nem puhulnak. A sütőből kivéve eltávolítjuk a fóliát, és hagyjuk hűlni őket, majd meghámozzuk, és falatnyi kockákra vágjuk.\r\n2. Egy szűrőbe téve többször átmossuk rizskeveréket. Ezután feltesszük főni bő, sós vízben. Felforraljuk, majd fedő alatt, alacsony lángon puhára főzzük kb. 45 perc alatt, vagy amíg meg nem puhul. Ha ezzel elkészültünk, leszürjök, és hagyjuk kihűlni.\r\n3. Közben az öntet hozzávalóit egy zárható üvegcsébe tesszük, és alaposan összerázzuk. Ezt követően a hűtőbe tesszük a felhasználásig.\r\n4. Összeállítjuk a salátát. A kihűlt rizst összeforgatjuk a céklával, a bébi- spenóttal és a durvára tört, száraz serpenyőben megpirított dióval vagy kesudióval. Az öntetet a salátára öntjük, sózzuk és borsozzuk, majd lazán összeforgatjuk. Ezután hűőbe tesszük, hogy az ízek összeérjenek. Tálaláskor rámorzsoljuk a fetát. Szobahőmérsékletűen kínáljuk önmagában, vagy natúr sült húsok mellé.', 'https://www.youtube.com/embed/u-Xp9MnvEx8?si=zHDXprs_IeEC7rVw', 0),
(30, 'Tzatziki Görög joghurttal', 5, 'kep30.jpg', '1db - kígyóuborka	\r\nsó	\r\n40dkg - natúr görög joghurt	\r\n1gerezd - fokhagyma	\r\n0.5db - citrom	\r\nbors	\r\nolívaolaj', '- tej', '1. Az uborkát megmossuk és szárazra töröljük, majd a reszelő durva oldalán lereszeljük. (Az uborkát egyébként meg is hámozhatjuk reszelés előtt, ez igazából már csak ízlés kérdése.)\r\n2. Az összezúzott fokhagymát jól összekeverjük a görög joghurttal, majd pár csepp citromlével ízesítjük. Ha lehet, frissen facsarjuk rá.\r\n3. Ezután nincs más dolgunk, mint hozzáadni a lecsepegtetett uborkát a joghurthoz, és ízlés szerint megborsozni, majd jól elkeverni.\r\n4. Húsok mellé tálalva kiváló saláta, köret lehet. Pici olívaolajjal meglocsolva kínáljuk. Természetesen a tzatziki tökéletesen illik gyros mellé is.', 'https://www.youtube.com/embed/EdhJn9mSYOw?si=dT_V0ujIgQhfn6jH', 0),
(31, 'Darált húsos raguval töltött hagyma', 1, 'kep31.jpg', '25dkg - darált hús	\r\n8fej - vöröshagyma	\r\n2dl - tejföl	\r\n1db - tojás	\r\n3ek - olaj	\r\n2ek - zsemlemorzsa	\r\n1csip - őrölt szerecsendió	\r\n1csip	őrölt bors	\r\n1csip	só	', '- glutén\r\n- tojás\r\n- diófélék', '1. A vöröshagymát megtisztítjuk. Fazékban vizet forralunk, és beletesszük a hagymákat. Az újraforrástól számított három percig főzzük, majd leszűrjük.\r\n2. A hagymák tetejéről levágunk egy vékony lapot, és a belsejüket úgy szedjük ki, hogy a hagymafal vastagsága legalább 1 cm maradjon.\r\n3. A kivájt hagymaforgácsot és a levágott „kalapokat” nagyon apróra összevágjuk.\r\n4. A tojást, a darált húst és az apróra vágott hagymát összegyúrjuk, sóval, borssal, szerecsendióval fűszerezzük. Egy kis tepsit kikenünk egy evőkanál olajjal, és meghintjük a zsemlemorzsával.\r\n5. A kivájt hagymákat a tepsiben szorosan egymás mellé helyezzük. A húsmasszával jól megpúpozva megtöltjük.\r\n6. A tejfölt kissé megsózzuk, és rálocsoljuk a hagyma tetejére. A tepsit alufóliával befedjük, és az előmelegített forró sütőben 20 percig pároljuk, majd az alufóliát levesszük, és kissé megpirítjuk a tetejét.\r\n7. Gyalult és olajban gyorsan megsütött sárgarépát vagy szalmakrumplit és salátát a kinálunk hozzá köretnek.', '', 0),
(32, 'Olajban eltett sült paprika', 1, 'kep32.jpg', '1.5kg - kápia paprika	\r\n2dl - olívaolaj	\r\n1fej - fokhagyma	\r\n1ek - oregano	\r\nsó (elhagyható)	\r\nbors (elhagyható)	', 'nincs', '1. A sütőt előmelegítjük 200 fokra, a paprikákat alaposan megmossuk, majd sütőpapírral bélelt tepsibe rendezzük, és a sütőbe tesszük, 40-50 perc alatt megsütjük. Az idő felénél megforgatjuk, akkor jó, ha a paprikák héja megfeketedik.\r\n2. Míg a paprika sül, elkészítjük a fűszeres olajat, a fokhagymát meghámozzuk, a nagyobb gerezdeket félbevágjuk. Egy forralóedénybe öntjük az olajat, és alacsony hőmérsékleten melegíteni kezdjük. Hozzáadjuk a fokhagymagerezdeket és az oregánót, ízlés szerint sózhatjuk, borsozhatjuk, és akár ½ db citrom levével savanyúbbá is tehetjük. Ha az olaj gyöngyözni kezd, ezen a hőmérsékleten tartjuk. Nem sütjük a fokhagymát és a fűszereket, csak konfitáljuk, azaz zsírban főzzük nagyjából 10 percig. Az elkészült olajat félretesszük.\r\n3. Előkészítjük a megsült paprikákat. A tepsiből egy tálba rakjuk, és fóliával lefedjük. Legalább 5 percig pihentetjük, így könnyebben el tudjuk távolítani a paprika héját.\r\n4. Ha letelt az idő, vágódeszkára helyezzük a paprikát, majd kézzel eltávolítjuk a héját és a csumáját a magokkal együtt. Az előkészített füstös paprikahúst fertőtlenített üvegbe tesszük, rétegenként meglocsoljuk a fűszeres olajjal, úgy, hogy fokhagymagerezdeket is teszünk rá. Folytatjuk a rétegezést, amíg el nem fogynak az alapanyagok. Paprikával zárjuk a sort, és a tálban összegyűlt paprikalét is hozzáadjuk. (Ezt ne öntsük ki semmi esetre sem, rengeteg ízt hordoz magában, egyfajta paprikaesszencia.) Végül felöntjük a maradék olajjal, hogy ellepje.\r\n5. Az elkészült paprikát lezárjuk, és fénytől védett helyen tároljuk. Hosszú hónapokig eláll.', 'https://www.youtube.com/embed/ebA-U0wIVJ4?si=AS_2NFPa056ftjex', 0),
(33, 'Klasszikus BLT szendvics', 1, 'kep33.jpg', '30dkg - gierlinger bacon	\r\n50dkg - toast	\r\n1fej - jégsaláta	\r\n4db - paradicsom	\r\n4ek - majonéz	\r\nsó	\r\nbors', '- glutén\r\n- tej\r\n- mustár\r\n- kén-dioxid', '1. Serpenyőbe rakjuk egymás mellé a baconszeleteket, alacsony hőmérsékleten zsírjára pirítjuk, közben időnként átforgatjuk mindet.\r\n2. Az elkészült szeleteket félrerakjuk, a kisült zsiradék egy részét leöntjük, egy keveset a serpenyőben hagyunk, és ezen a kenyérszeletek mindkét oldalát megpirítjuk. Amíg sülnek, a paradicsomot felkarikázzuk, a salátát feldaraboljuk.\r\n3. Ha a kenyérszeletek megpirultak, egy-egy oldalukat megkenjük majonézzel, salátát halmozunk rájuk. Az egyik salátás kenyérszeletre rakunk paradicsomszeleteket, ízlés szerint sózhatjuk, borsozhatjuk, majd ráhalmozzuk a ropogós bacont, végül befedjük a másik majonézes, salátás kenyérszelettel, átlósan félbevágjuk, és máris fogyaszthatjuk ezt az isteni, klasszikus klubszendvicset.', 'https://www.youtube.com/embed/wwKmBryMY4s?si=YGY5E1NBX_i0X91L', 0),
(34, 'Hagyományos töltött tojás', 1, 'kep34.jpg', '8db - tojás	\r\n2ek - majonéz	\r\n2ek - tejföl	\r\n1tk - mustár	\r\n0.5db - vöröshagyma	\r\n0.5db - citrom leve	\r\n0.5csok - petrezselyem	\r\n1tk - ecet	\r\nsó	\r\nbors', '- tojás\r\n- tej\r\n- mustár', '1. A szoba-hőmérsékletű tojásokat sós-ecetes vízben forrástól számítva 10 perc alatt keményre főzzük. Ha letelt a 10 perc, a tojásokat azonnal hideg vízbe tesszük, és lehűtjük.\r\n2. A kihűlt tojásokat meghámozzuk, félbevágjuk, a sárgájákat egy keverőtálba tesszük, a fehérjéket félretesszük.\r\n3. A tojássárgájákat fűszerezzük sóval, borssal, hozzáadjuk a majonézt, az apróra metélt hagymát, a mustárt, és végül a tejfölt. Lágy krémmé keverjük.\r\n4. A tojáskrémet kanál vagy habzsák segítségével visszatöltjük a fehérjékbe. Végül az elkészült töltött tojásokat megszórjuk apróra vágott petrezselyemmel, borssal, és olívaolajat csepegtetünk rá.', 'https://www.youtube.com/embed/uQvLGeQnkhE?si=1aBLt9fctBoAfW8L', 0),
(35, 'Retro töltött zsemle', 1, 'kep35.jpg', '10db - zsemle	\r\n2tubus - tömlős sajt	\r\n15dkg - párizsi	\r\n4db - savanyú uborka	\r\n10db - tojás	\r\nmajoránna	', '- glutén\r\n- tojás\r\n- tej', '1. A zsemlék tetejét levágjuk, a belsejét kikaparjuk, egy kisebb tányérba tesszük.\r\n2. A zsemle belsejét összekeverjük a sajtkrémel, a kockára vágott párizsivel és savanyú uborkával. Megtöltjük vele a kikapart zsemléket.\r\n3. A tojásokat a zsemlék tetejére ütjük, majd megszórjuk majorannával.\r\n4. Előmelegitett sütőben kb. 15-20 percig sütjük. ', 'https://www.youtube.com/embed/deWBEUB9PTQ?si=FG-5oPcmM61X9FhZ', 0),
(36, 'Medvehagyma-krémleves fenyőmaggal', 3, 'kep36.jpg', '2csok - medvehagyma	\r\n1fej - vöröshagyma	\r\n60dkg - burgonya	\r\n0.5tk - szerecsendió	\r\n3dkg - vaj	\r\n1tk - olívaolaj	\r\n0.5dl - tejszín	\r\n1.5l - víz vagy zöldségalaplé	\r\nsó	\r\nbors	', 'nincs', '1. A medvehagyma-krémleves elkészítéséhez a burgonyát meghámozzuk, egyformára daraboljuk. A medvehagymát megtisztítjuk, és azt is nagyobb darabokra vágjuk.\r\n2. Egy fazékba öntjük az olívaolajat, hozzáadjuk a vajat, közepes lángon melegíteni kezdjük.\r\n3. A vöröshagymát meghámozzuk, félfőre vágjuk, majd amikor a vaj felhevült, hozzáadjuk, sózzuk, pár percig dinszteljük.\r\n4. Amikor a hagyma már üveges, hozzáadjuk a feldarabolt burgonyát, sózzuk, borsozzuk, fűszerezzük szerecsendióval, összekeverjük, majd felöntjük annyi vízzel vagy alaplével, amennyi nagyjából 1 centire ellepi a burgonyát.\r\n5. Közepes lángon elkezdjük főzni, majd ha felforrt, kicsit lejjebb vesszük a hőmérsékletet, és 30 percig főzzük.\r\n6. Ha a burgonya már megfőtt, beletesszük a medvehagymát, amivel 4-5 percig tovább főzzük, majd a kész levesalapot levesszük a tűzről, és botmixerrel krémesre pürésítjük.\r\n7. A krémlevest visszatesszük a tűzre, hozzáadjuk a tejszínt, és összeforraljuk. A levest tálalhatjuk pirított fenyőmaggal, parmezánnal, de krutonnal vagy pirított sonkával is isteni!', 'https://www.youtube.com/embed/RodP3ukQi5Y?si=JvxMZUmfRnq4rVpU', 0),
(37, 'Hagymakrémleves', 3, 'kep37.jpg', '4fej - vöröshagyma	\r\n4gerezd - fokhagyma	\r\nolaj	\r\n1ek - liszt	\r\n1liter - hús- vagy zöldségleves-alaplé	\r\nsó	\r\nbors	\r\n2dl - főzőtejszín', '- glutén\r\n- tej\r\n- zeller', '1. A hagymakrémleves elkészítéséhez a hagymát megtisztítjuk és felvágjuk, a fokhagymát pedig felaprítjuk.\r\n2. Egy közepes méretű fazékban a felforrósított olajon üvegesre pároljuk a kétféle hagymát, majd megszórjuk a liszttel, és felöntjük az alaplével.\r\n3. Megsózzuk, megborsozzuk, és lefedve kb. 20 perc alatt megfőzzük, addig, amíg a hagyma megpuhul.\r\n4. Beleöntjük a levesbe a főzőtejszínt, elkeverjük, egyet forralunk rajta, majd botmixerrel egyneművé mixeljük, és pirítóssal tálaljuk. ', 'https://www.youtube.com/embed/pN_-T7okh78?si=J2HI9Fdi8E3RJqNk', 0),
(38, 'Pecsenyekacsa', 2, 'kep38.jpg', '1db - pecsenyekacsa	\r\nsó	\r\n2ek - szárított kakukkfű	\r\n1ág - rozmaring	\r\n3db - vöröshagyma	\r\n1fej - fokhagyma', 'nincs', '1. A kacsát előkészítjük: az esetleges tollmaradványokat csipesszel vagy konyhai fáklyával eltávolítjuk, a szárnyvégeket és a püspökfalatot késsel levágjuk. A bőrét nem irdaljuk be, mert vékony.\r\n2. Az előkészített kacsa minden oldalát alaposan besózzuk, a bőrébe is beledörzsöljük. A hasüregét is bemasszírozzuk sóval, valamint a kakukkfűvel, és rozmaringágat teszünk bele. A sütőt előmelegítjük 140 fokra. Egy vastag falú sütőtálba megtisztított, cikkekre vágott vöröshagymát és fokhagymagerezdeket szórunk héjastól. Erre a hagymaágyra helyezzük a kacsát, kevés vizet öntünk köré, majd lefedjük, és az előmelegített sütőbe helyezzük 1-1½ órára.\r\n3. Ezután levesszük a fedőt, a sütő hőmérsékletét 200 fokra növeljük, és 6-8 perc alatt az egyik, majd 6-8 perc alatt a másik oldalát is körbesütjük, úgy, hogy a bőre minden oldalon szép pirosra, ropogósra süljön.', 'https://www.youtube.com/embed/3CqsgRsg1SM?si=rHLgpCIO98-g-3JH', 0),
(39, 'Spenótos tészta', 2, 'kep39.jpg', '1ek - olívaolaj	\r\n1fej - fokhagyma	\r\n50dkg - spenót	\r\nsó	\r\nbors	\r\n2dl - tejszín	\r\n0.5dl - tésztafőző víz	\r\n20dkg - parmezán sajt	\r\n50dkg - tészta	', '- glutén\r\n- tojás\r\n- tej', '1. A fokhagymát meghámozzuk, nagyon apróra vágjuk, a sajtot lereszeljük. A tésztát a csomagoláson feltüntetett útmutatásnak megfelelően megfőzzük.\r\n2. Míg a tészta fő, egy nagyobb serpenyőben közepes lángon olívaolajat hevítünk, hozzáadjuk a fokhagymát, nagyjából egy percig kevergetve pirítjuk, ügyeljünk arra, hogy ne égjen, barnuljon meg, csak az ízt akarjuk kinyerni.\r\n3. Ha érezzük az illatát, jöhet a megmosott, lecsepegtetett spenót, majd ízlés szerint sózzuk, borsozzuk. Nem kell megijedni, ha a serpenyőben alig férnek el a levelek, a hő hatására pár perc kevergetés után összesnek.\r\n4. Ha már majdnem megfonnyadt a spenót, felöntjük a tejszínnel, hozzáadunk a tészta főzőlevéből, pár percig kevergetve főzzük végül a parmezán felét is hozzáadjuk, ezzel is sűrítjük a szószt. Ilyenkor ha szükséges, még egyszer sózzuk, borsozzuk. Az elkészült alaphoz adjuk a tésztát, alaposan összekeverjük, hogy a spenótos szósz mindenhol bevonja.\r\n5. Az elkészült spenótos tésztát melegen, parmezánnal megszórva tálaljuk.', 'https://www.youtube.com/embed/w5_uL35u7FM?si=_mzhsxsRWhQ1599t', 0),
(40, 'Battenberg-szelet', 4, 'kep40.jpg', '20dkg - puha vaj	\r\n15dkg - porcukor	\r\n0.5tk - mandulakivonat	\r\n1tk - vaníliakivonat	\r\n3db - tojás	\r\n20dkg - finomliszt	\r\n1csom - sütőpor	\r\n1csip - só	\r\npár - csepp piros ételfesték	\r\n20dkg - sárgabaracklekvár	\r\n30dkg - natúr marcipán', '- glutén\r\n- tojás\r\n- tej\r\n- diófélék', '1. Egy közepes méretű tepsit kibélelünk sütőpapírral. A közepére helyezünk egy keményre gyűrt alufóliacsíkot, ezzel hosszában elfelezzük a tepsit.\r\n2. A sütőt előmelegítjük 175 fokra.\r\n3. A puha vajat kihabosítjuk a porcukorral, hozzáadjuk a kétféle aromát és a felvert tojásokat. Ezzel is kihabosítjuk.\r\n4. Egy másik tálban összekeverjük a lisztet és a sütőport a csipet sóval, majd óvatosan ezt is a vajas-tojásos masszába forgatjuk.\r\n5. A tésztát két egyenlő részre osztjuk. Az egyik adaghoz hozzákeverjük az ételfestéket, majd mindkét masszát a tepsi egy-egy térfelébe simítjuk.\r\n6. A tepsit az előmelegített sütőbe toljuk, és kb. 15 perc alatt megsütjük a piskótákat.\r\n7. A kisült tésztát rácson hagyjuk teljesen kihűlni, majd lehúzzuk róla a sütőpapírt.\r\n8. A baracklekvárt felmelegítjük egy kis lábasban, és megkenjük vele a sárga színű piskóta tetejét.\r\n9. A sárga piskótára ráhelyezzük a rózsaszínűt, majd 4 egyforma széles csíkra vágjuk.\r\n10. Az egyik kétszínű csíkot az oldalára fordítjuk, megkenjük itt is baracklekvárral, majd ragasztunk rá egy másik kétszínű csíkot, hogy a sárga részre kerüljön a rózsaszín, és a rózsaszínre a sárga. Így két sakktáblamintás tésztarudunk lesz.\r\n11. A marcipánt porcukorral megszórt munkafelületen nagyon vékonyra nyújtjuk. Ráhelyezzük az egyik tésztarudat, és beletekerjük a marcipánba. Eligazgatjuk, majd ugyanígy járunk el a másik tésztarúddal is.\r\n12. A marcipános tésztarudakat legalább egy éjszakára a hűtőbe tesszük, majd vékony szeletekre vágjuk, és tálaljuk.', 'https://www.youtube.com/embed/Kje-416IVxA?si=_PycMoHdQFXhBi0X', 0);
INSERT INTO `etelek` (`etelek_id`, `etelek_nev`, `etelek_tipus`, `etelek_kep`, `etelek_hozzavalok`, `etelek_allergenek`, `etelek_elkeszites`, `etelek_video`, `etelek_ajanlat`) VALUES
(41, 'Matcha teás tiramisu', 4, 'kep41.jpg', '1ek - matchatea-por	\r\n4dl - meleg víz	\r\n6db - tojás	\r\n6dkg + 2 - cukor	\r\n1csip	só	\r\n50dkg - Mascarpone	\r\n50dkg - babapiskóta	\r\n1ek - matchatea-por a szóráshoz', '- glutén\r\n- tojás\r\n- tej', '1. Egy keverőtálba öntjük a matchatea-port, ráöntjük a vizet, és alaposan összekeverjük, felhasználásig félretesszük.\r\n2. Két hőálló keverőtálba kettéválasztjuk a tojásokat, az egyikbe a sárgáját, a másikba a fehérjét tesszük.\r\n3. Egy lábasban vizet forralunk, ha forr, levesszük a tűzről, és a lábas tetejére rakjuk a tojássárgájás tálat, ügyelve arra, hogy a tál ne érjen vízbe. A tojássárgájákhoz adunk 6 dkg cukrot, és vízgőz felett robotgép segítségével fehéredésig keverjük. Ha kész, félretesszük.\r\n4. Következik a tojásfehérje, hozzáadunk egy csipet sót, és ezt is a vízgőz felett verjük fel borotvahab-állagúra, úgy, hogy menet közben hozzáadunk 2 dkg cukrot. Ha elkészült, ezt is félretesszük.\r\n5. A tojássárgájás alaphoz hozzáadjuk a mascarponét, és egy habverő segítségével egynemű krémmé keverjük, majd egy spatulával óvatos mozdulatokkal több részletben a tojásfehérjehabot is hozzáadjuk, ügyelve arra, hogy a habot ne törjük össze. Az egészet fényes krémmé keverjük.\r\n6. Jöhet a tiramisu összeállítása. Egy közepes méretű, magasabb falú tepsiben vagy kerámiatálban először egy kevés krémet eloszlatunk, majd a babapiskótákat egyenként 2-3 másodpercre a matcha teába mártjuk, és egyenletesen elrendezve a krémre helyezzük. Következik még egy réteg krém, majd még egy réteg teába mártott piskóta. Az utolsó réteg krém legyen, végül az egészet meghintjük matchatea-porral.\r\n7. Az elkészült tiramisut fogyasztás előtt egy éjszakára hűtőbe tesszük.', 'https://www.youtube.com/embed/AfqdNQKj0EM?si=IWFkvOX5pZS-XBUN', 0),
(42, 'Marinált cukkini', 5, 'kep42.jpg', '6dl - napraforgó olaj	\r\n4dl - fehérbor ecet	\r\n1tk - só	\r\n1tk - cukor	\r\n2db - vöröshagyma	\r\n100dkg - cukkini	\r\n2ek - oregano', 'nincs', '1. A marinált cukkinihez összeöntjük az olajat és a  fehérbor ecetet, megsózzuk, megborsozzk és felforraljuk. Beletesszük a kockára vágott vöröshagymát és 5 percig főzzük. Ezután hozzadjuk a megmosott, kis darabokra vágott cukkinit és tovább főzzük 4 percig. (A főzési időket tartsuk be, hogy ne főzzük szét a cukkinit!) Levesszük a tűzről, beletesszük az oreganót.\r\n2. A cukkinit szűrőkanál segítségével az üvegbe töltjük, a végén rámerjük a forró levet. (Előtte keverjük meg, hogy olaj és ecet is egyformán kerüljön a cukkinire).\r\n3. Az üvegeket lezárjuk, 5 percre fejtetőre állítjuk. (A hőkezelés és az olaj elegendő a marinált cukkini tartósításához. Sem tartósítószer, sem száraz vagy nedves dunsztolás nem szükséges!)\r\n4. Jól behűtve fogyasszuk, előtte szűrőn keresztül öntsük le és fogjuk fel az olajos-fehérbor ecetes levet: kiválóan használható húsok pácolásához, vagy akár friss salátákhoz dresszingként.', '', 0),
(43, 'Újkrumplisaláta', 5, 'kep43.jpg', '50dkg - újburgonya	\r\n1ek - dijoni mustár	\r\n0.5db - citrom leve	\r\n0.5db - citrom lereszelt héja	\r\n4ek - extraszűz olívaolaj	\r\n2szál - újhagyma	\r\n1k csok. - petrezselyem	\r\nsó	\r\nbors', 'mustár', '1. Az újkrumplisaláta elkészítéséhez alaposan megmossuk a krumplit (meghámoznunk nem kell), majd feltesszük egy hideg vízzel teli egy lábasba főni. Ha egész kicsik a darabok, egészben, ha nagyobbak kettő vagy négy részre vágva.\r\n2. 10-12 percig főzzük, amíg épp át nem fő a belseje, de nem tovább, mert akkor szétesik. Ezt a legjobban úgy tudjuk ellenőrizni, hogy beleszúrunk egy kést vagy fogpiszkálót, és ha a közepén nincs már a krumplinak ellenállása, akkor kész,\r\n3. Közben felaprítjuk a petrezselymet és vékonyra karikázzuk az alaposan megmosott újhagymát.\r\n4. Elkészítjük a mártást. Összekeverjük a mustárt a citrom kifacsart levével, sóval és borssal, majd állandó kevergetés közben hozzáadjuk az olajat. \r\n5. Leszűrjük a krumplit és hagyjuk, hogy kissé kigőzölje magát a szűrőben. Egy tálba tesszük és még melegen összekeverjük az öntettel.\r\n6. Megvárjuk, míg teljesen kihűl, és csak azután adjuk hozzá a petrezselymet és az újhagymát. ', '', 0),
(44, 'Töltött káposzta', 2, 'kep44.jpg', '10dkg- rizs	\r\n1kg - sertéscomb	\r\n1fej - vöröshagyma	\r\n3gerezd - fokhagyma	\r\nsó	\r\nőrölt feketebors	\r\npirospaprika\r\n1fej - savanyú káposzta	\r\nfüstölt bordaszél	\r\nolaj	\r\n2ek - liszt	\r\n2ek - tejföl	', '- glutén\r\n- tej', '1. A töltött káposzta töltelékéhez a rizst megmossuk, hozzáadjuk darált sertéshúst, az apróra vágott vöröshagymát és fokhagymát, a sót, borsot és a pirospaprikát, majd óvatos mozdulatokkal összegyúrjuk.\r\n2. A káposztát ízlés szerint kimossuk, majd a lefejtett levelekbe göngyöljük a tölteléket.\r\n3. A megmaradt káposztaleveleket feldaraboljuk, és a lábas aljára halmozzuk, a megmosott füstölt bordaszéllel együtt. Erre rakjuk a megtöltött káposztákat, majd felöntjük annyi vízzel, hogy ellepje. 2-3 nagyobb káposztalevéllel betakarjuk, és felfőzzük. Kb. 70-80 perc alatt fő meg (az idő a hústól is függ).\r\n4. Ha megfőtt a töltött káposzta, rántást készítünk hozzá. Ehhez kevés olajat hevítünk, a lisztet megpirítjuk benne, majd a tűzről levéve pirospaprikát teszünk bele, hogy szép színe legyen, és két evőkanál tejfölt is belekeverünk. A káposzta levéből annyit adunk hozzá, hogy kb. egyforma meleg legyen (hőkiegyenlítés), rászűrjük a káposztára, és összeforraljuk.\r\n5. Tejföllel és friss kenyérrel tálaljuk.', 'https://www.youtube.com/embed/mWjRicZkvik?si=4uQUaYC_fWI4Wx-k', 0),
(45, 'Surimis bagel', 1, 'kep45.jpg', '1db - avokádó	\r\n0.5db - citrom leve	\r\n2db - bagel	\r\n1csom - vici surimi sticks	\r\nmustár	\r\nuborka	\r\nlila hagyma	\r\nkapor	\r\nkrémsajt', '- glutén\r\n- hal\r\n- tej\r\n- mustár', '1. A surimis bagel elkészítéséhez az avokádó húsát egy villával krémesre nyomkodjuk. Hozzáadjuk a kifacsart citromlevet.\r\n2. Félbevágjuk a bagelt, és megkenjük a citromos avokádóval. Megszórjuk a feldarabolt surimivel, és megkenjük egy kevés mustárral.\r\n3. Rárakunk néhány szelet uborkát és vékony karikákra vágott lila hagymát. Ízlés szerint tehetünk hozzá kaprot. Végül a bagel tetejét megkenjük krémsajttal, és összeillesztjük a szendvicset.', 'https://www.youtube.com/embed/dv9lTQuX1K4?si=9N69SqytOtzfwbu9', 0),
(46, 'Sajtos krumplileves', 3, 'kep46.jpg', '15dkg - füstölt szalonna	\r\n80dkg - burgonya	\r\n1db - sárgarépa	\r\n2db - vöröshagyma	\r\n1csok - petrezselyemzöld	\r\n0.5tk - só	\r\n0.5tk - őrölt bors	\r\n800ml - húsleves alaplé	\r\n2ek - liszt	\r\n500ml - tej	\r\n20dkg - cheddar sajt	', '- glutén\r\n- tej', '1. A füstölt szalonnát feldaraboljuk, fazékba tesszük, és zsírjára sütjük. Hozzáadjuk a meghámozott és felkockázott krumplit, a lereszelt sárgarépát, a feldarabolt vöröshagymát és a felaprított petrezselyemzöldet. Sózzuk, borsozzuk, majd felönjük az alaplével. Ezután fedő alatt alacsony lángon kb.15 percig főzzük, amíg a burgonya megpuhul.\r\n2. A tejbe beleöntjük a lisztet, habverővel elkeverjük, majd a leveshez öntjük. felforraljuk, majd takarék lángra tesszük. Hozzáadjuk a felkockázott cheddar sajtot, aztán folyamatosan kevergetés mellett felolvasztjuk a levesben. Ha a sajt felolvadt, tálalhatjuk a levest.', 'https://www.youtube.com/embed/z4pY6-xfIYk?si=XYs9TM41cbIhqAfU', 0),
(47, 'Néró teasütemény', 4, 'kep47.jpg', '25dkg - vaj	\r\n17dkg - porcukor	\r\n1csom - vaníliás cukor	\r\n1db - citrom reszelt héja	\r\n8db -tojássárgája	\r\n30dkg - finomliszt\r\n40dkg - baracklekvár\r\n5dkg - étcsoki', '- glutén\r\n- tojás\r\n- tej', '1. A sütőt előmelegítjük 180 fokra. Két tepsit kibélelünk szilikonos sütőpapírral.\r\n2. A puha vajat habosra keverjük a porcukorral egy kézi robotgép segítségével.\r\n3. Hozzáadjuk a vaníliás cukrot és a reszelt citromhéjat is, majd egyesével belekeverjük a tojássárgájákat.\r\n4. A masszához öntjük a lisztet, és ezzel is simára keverjük egy szilikonspatulával vagy fakanállal.\r\n5. A kész tésztát sima csöves habzsákba töltjük, és az előkészített tepsikre 2-2,5 cm átmérőjű korongokat nyomunk egymástól kicsit távolabb, mert sütés közben még nőni fognak.\r\n6. A tepsiket az előmelegített sütőbe tesszük, és 8-10 perc alatt készre sütjük a kis félgömböket.\r\n7. Rácsra téve hagyjuk kihűlni a tésztakorongokat, ezután egy-egy darabot összeragasztunk baracklekvárral.\r\n8. A csokit apróra vágjuk, vízgőz fölött megolvasztjuk, majd egy kicsi habzsákba kanalazzuk. Vágunk egy pici lyukat a zsák végén, és vékony csíkokat csorgatunk az összeragasztott teasütemények tetejére.', 'https://www.youtube.com/embed/pFhk-le8zzY?si=GR0vsZMvp4Savqis', 0),
(48, 'Gyömbéres uborkasaláta', 5, 'kep48.jpg', '3db - kígyóuborka	\r\nújhagyma	\r\ngyömbér	\r\nfűszerkeverék	\r\nolívaolaj	\r\nalmaecet', 'nincs', '1. A gyömbéres uborkasalátához első lépésként a megmosott és leszárított petrezselyemzöldet és mentát apróra vágjuk.\r\n2. Ezután összevágjuk a megtisztított hagymát, a gyömbért meghámozzuk, azt is felvágjuk apró darabokra.\r\n3. Ezután összevágjuk a megtisztított hagymát, a gyömbért meghámozzuk, azt is felvágjuk apró darabokra.\r\n4. A kígyóuborkát megmossuk, majd hosszában kettévágjuk. Az uborka magját kikaparjuk, a húsát 3-4 mm-es vastagságú szeletekre vágjuk.\r\n5. Az uborkát a tálba tesszük, ráreszeljük a lime héját és összeforgatjuk a fűszerekkel, hagymával, gyömbérrel. Fogyasztásig hűtőbe tesszük.\r\n6. A gyömbéres uborkasaláta kiváló köret grillhúsokhoz, például grillezett csirkemellhez.', '', 0),
(49, 'Édesburgonya-püré', 2, 'kep49.jpg', '30dkg - édesburgonya	\r\nsó	\r\n5dkg - vaj	\r\n2gerezd - fokhagyma	\r\n1kh - őrölt szerecsendió	\r\n5dkg - reszelt sajt	', '- tej\r\n- diófélék', '1. Az édesburgonyát meghámozzuk és kockákra vágjuk. Sós vízben puhára főzzük.\r\n2. A megfőtt édesburgonyát leszűrjük, krumplinyomóval vagy egy villa segítségével összetörjük.\r\n3. Még melegen hozzáadjuk a vajat, a zúzott fokhagymát, az őrölt szerecsendiót és a sajtot, majd jól elkeverjük, hogy a vaj és a sajt megolvadjon.\r\n4. Ha szükséges, ízlés szerint még sózzuk. Sült húsok mellé tálalhatjuk.', 'https://www.youtube.com/embed/JggFJS47Onc?si=Z3HqniaeqaqtpPvf', 0),
(50, 'Barbeque szósz', 1, 'kep50.jpg', '2dl - paradicsomszósz	\r\n2dl - sűrített paradicsom	\r\n1ek - vegyes virágméz	\r\n1mk - 10 %-os ételecet	\r\n1mk - füstölt paprika	\r\n1csip - darált chili paprika	\r\n1csip - só	\r\n1gerezd - zúzott fokhagyma	\r\n1fej - vöröshagyma (közepes)	\r\nétolaj', 'nincs', '1. A vöröshagymát nagyon apróra vágjuk és étolajon megpirítjuk. A hagyma akkor jó, ha szép barna színű, puha állagú, kicsit karamellizált.\r\n2. Ezután a hagymához adjuk a paradicsomszószt, a sűrített paradicsomot, a mézet, az ecetet, a füstölt paprikát, a chili paprikát és a zúzott fokhagymát. Jól összekeverjük, sóval ízesítjük. Felforraljuk, majd forrást követően takaréklángon kb. 10 percig főzzük sűrű kevergetés mellett.\r\n3. A barbeque szószt fogyaszthatjuk sült húsokkal, sült burgonyával, de grillezés előtt a húsokat is átkenhetjük vele.', 'https://www.youtube.com/embed/q3-lT0PaAOQ?si=xXMsVuxQFjXf-cCI', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eteltipusok`
--

CREATE TABLE `eteltipusok` (
  `eteltipusok_id` int(11) NOT NULL,
  `eteltipusok_nev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `eteltipusok`
--

INSERT INTO `eteltipusok` (`eteltipusok_id`, `eteltipusok_nev`) VALUES
(1, 'előétel'),
(2, 'főétel'),
(3, 'leves'),
(4, 'desszert'),
(5, 'saláta');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `film`
--

CREATE TABLE `film` (
  `film_id` int(11) NOT NULL,
  `film_cim` varchar(50) NOT NULL,
  `film_datum` date NOT NULL,
  `film_hossz` int(11) NOT NULL,
  `film_kep` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `film`
--

INSERT INTO `film` (`film_id`, `film_cim`, `film_datum`, `film_hossz`, `film_kep`) VALUES
(1, 'Wandavision', '0000-00-00', 0, '1.png'),
(2, 'Loki', '0000-00-00', 0, '2.png'),
(3, 'Falcon and the winter soldier', '0000-00-00', 0, '3.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kepek`
--

CREATE TABLE `kepek` (
  `id` int(11) NOT NULL,
  `szoveg` varchar(255) NOT NULL,
  `kép` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_hungarian_ci;

--
-- A tábla adatainak kiíratása `kepek`
--

INSERT INTO `kepek` (`id`, `szoveg`, `kép`) VALUES
(1, 'alma', '1.jpg'),
(2, 'alma', 'photo_1701859114619_photo.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kommentek`
--

CREATE TABLE `kommentek` (
  `komment_id` int(11) NOT NULL,
  `komment_nev` varchar(255) NOT NULL,
  `komment_date` date NOT NULL,
  `komment_rateing` int(11) NOT NULL,
  `komment_szoveg` varchar(255) NOT NULL,
  `kommentek_etterem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_hungarian_ci;

--
-- A tábla adatainak kiíratása `kommentek`
--

INSERT INTO `kommentek` (`komment_id`, `komment_nev`, `komment_date`, `komment_rateing`, `komment_szoveg`, `kommentek_etterem`) VALUES
(1, 'Józsi', '2022-05-25', 5, 'Nagyon szeretem ezt az éttermet!', 0),
(2, 'Mario', '2023-03-14', 4, 'Nagyon jó étterem, de lehetne gyorsabb a kiszolgálás', 0),
(3, 'Marci', '2024-01-08', 1, 'Nagyon rossz étterem, silány minőség, bunkó kiszolgálás és nagyon drága', 0),
(4, 'Gábor', '2023-08-10', 3, 'Nem a legjobb, de tűrhető volt', 0),
(5, 'Bohos', '2022-08-13', 4, 'Meg voltam elégedve mindennel, de ettem már jobb helyen!', 0),
(6, 'Böbe', '2019-04-18', 2, 'Az ételek finomak, de nagyon drága, lehetne egy kicsit olcsóbb', 0),
(7, 'Laci', '2023-10-31', 3, 'Az étel vacak, de a kiszolgálás rendben van', 0),
(8, 'Ádám', '2020-02-03', 5, 'Nagyon finom volt minden!', 0),
(9, 'Laci', '2021-01-31', 1, 'Vacak minden, többet nem jövök ide!', 0),
(10, 'Hugo', '2024-01-03', 5, 'Minden nagyon finom, a kiszolgálás csodálatos. A tálalás is elképesztő illetve a minőség is kitűnő.', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `megye`
--

CREATE TABLE `megye` (
  `megye_id` int(11) NOT NULL,
  `megye_nev` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `megye`
--

INSERT INTO `megye` (`megye_id`, `megye_nev`) VALUES
(1, 'Bács-Kiskun'),
(2, 'Baranya'),
(3, 'Békés'),
(4, 'Borsod-Abaúj-Zemplén'),
(6, 'Csongrád'),
(7, 'Fejér'),
(9, 'Győr-Moson-Sopron'),
(10, 'Hajdú-Bihar'),
(11, 'Heves'),
(12, 'Jász-Nagykun-Szolnok'),
(13, 'Komárom-Esztergom'),
(14, 'Nógrád'),
(15, 'Pest'),
(16, 'Somogy'),
(17, 'Szabolcs-Szatmár-Bereg'),
(18, 'Tolna'),
(19, 'Vas'),
(20, 'Veszprém'),
(21, 'Zala');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szavazat_etel`
--

CREATE TABLE `szavazat_etel` (
  `szavazat_id` int(11) NOT NULL,
  `szavazat_szam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szavazat_etel`
--

INSERT INTO `szavazat_etel` (`szavazat_id`, `szavazat_szam`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 30),
(5, 1),
(6, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 3),
(11, 10);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59'),
(14, 'valaki', 'valaki@gmail.com', '$2a$08$2I9RHv7Yt6ljopICRKZq9.c/PzU.jDQU2zqtSD16A3kjQjbBuhw1a', '2024-02-06 17:37:10', '2024-02-06 17:37:10'),
(15, 'asdasd', 'asd@gmail.com', '$2a$08$ZFsgD.G8iZNufZ/jq8vS5eoAUsXAToYFAqw96JUSkTen9L.LlrfSq', '2024-02-07 11:24:18', '2024-02-07 11:24:18');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('2024-02-06 17:37:10', '2024-02-06 17:37:10', 1, 14),
('2024-02-07 11:24:18', '2024-02-07 11:24:18', 1, 15),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `uzlet`
--

CREATE TABLE `uzlet` (
  `uzlet_id` int(11) NOT NULL,
  `uzlet_nev` varchar(255) NOT NULL,
  `uzlet_cim` varchar(255) NOT NULL,
  `uzlet_kep` varchar(255) NOT NULL,
  `uzlettipus` int(11) NOT NULL,
  `varosok_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `uzlet`
--

INSERT INTO `uzlet` (`uzlet_id`, `uzlet_nev`, `uzlet_cim`, `uzlet_kep`, `uzlettipus`, `varosok_id`) VALUES
(3, 'Burger King', 'Csapó utca 30.', 'burgerking1.jpg', 3, '1'),
(4, 'MC Donald\'s', 'Piac utca 53.', 'Meki1.jpg', 3, '1'),
(5, 'Csülök Büfé', 'Monostorpályi út 1.', 'csulokbufe1.jpg', 2, '2'),
(7, 'Calico Jack Pub', 'Bem tér 15.', 'calico1.jpg', 1, '1'),
(18, 'Komédiás Étterem', 'Czuczor Gergely u. 30', 'Komedias.jpg', 1, '7'),
(19, 'Vincent Étterem', 'Izsáki út 3', 'Vincent.jpg', 1, '2'),
(20, 'Gusto Étterem', 'Városház u. 15', 'Gusto.jpg', 1, '3'),
(21, 'Malom Étterem', 'Kossuth Lajos utca 8', 'Malom.jpg', 1, '4'),
(22, 'Kalász Étterem', 'Csanád vezér tér 4', 'Kalasz.jpg', 1, '5'),
(23, 'A Fogadó', 'Szent László u. 43', 'Afogado.jpg', 1, '6'),
(24, 'Korzó Étterem', 'Dobó István tér 7-9', 'Korzo.jpg', 1, '8'),
(25, 'Liliomfi Étterem', 'Táncsics Mihály u. 15', 'Liliomfi.jpg', 1, '9'),
(26, 'Cuha Völgye Étterem', 'Kossuth Lajos u. 11', 'Cuha.jpg', 1, '10'),
(27, 'El Bandi', 'Aradi vértanúk tere 4', 'Elbandi.jpg', 3, '2'),
(28, 'Burger Center', 'Béke sgrt. 6', 'Burgercenter.jpg', 3, '3'),
(29, 'Rockabilly Chicken', 'Mésztelep u. 1', 'Rockabilly.jpg', 3, '4'),
(30, 'Ízvarázs Gyorsbüfé', 'Széchenyi tér 10', 'Izvarazs.jpg', 3, '5'),
(31, 'Pajti Grill Büfé', 'Szent István út 69', 'Pajti.jpg', 3, '6'),
(32, 'Roppsbox', 'Czuczor Gergely u. 26', 'Roppsbox.jpg', 3, '7'),
(33, 'Manna Büfé', 'Sas u. 1', 'Manna.jpg', 3, '8'),
(34, 'Pezzo', 'Ady Endre út 15', 'Pezzo.jpg', 3, '9'),
(35, 'Hamburger Box', 'Kossuth Lajos u. 7', 'Hamburgerbox.jpg', 3, '10'),
(36, 'Retro Büfé', 'Ceglédi út', 'Retro.jpg', 2, '2'),
(37, 'Rozsdás Rákolló Büfé', 'Csabai út 3', 'Rozsdasrakollo.jpg', 2, '3'),
(38, 'Attroy Büfé', 'Búza tér', 'Attroy.jpg', 2, '4'),
(40, 'Duna Döner', 'Csanád vezér tér 11', 'Dunadoner.jpg', 2, '5'),
(41, 'Harapó Büfé', 'Rákóczi u. 33', '', 2, '6'),
(42, 'Lulu Non-Stop Büfé', 'Jereváni út 39', 'Lulu.jpg', 2, '7'),
(43, 'BeDobó Büfé', 'Knézich Károly u. 3', 'Bedobo.jpg', 2, '8'),
(44, 'OBI Büfé', 'Szolnok, 5000', 'Obibufe.jpg', 2, '9'),
(45, 'Az Arborétum Büféje', 'Damjanich u. 19', 'Arboretum.jpg', 2, '10');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `uzlettipus`
--

CREATE TABLE `uzlettipus` (
  `uzlettipus_id` int(11) NOT NULL,
  `uzlettipus_nev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `uzlettipus`
--

INSERT INTO `uzlettipus` (`uzlettipus_id`, `uzlettipus_nev`) VALUES
(1, 'Étterem'),
(2, 'Büfé'),
(3, 'Gyorsétterem');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `varos`
--

CREATE TABLE `varos` (
  `varos_id` int(11) NOT NULL,
  `varos_nev` varchar(255) NOT NULL,
  `varos_megye` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `varos`
--

INSERT INTO `varos` (`varos_id`, `varos_nev`, `varos_megye`) VALUES
(1, 'Debrecen', 10),
(2, 'Kecskemét', 1),
(3, 'Gyula', 3),
(4, 'Miskolc', 4),
(5, 'Makó', 6),
(6, 'Bicske', 7),
(7, 'Győr', 9),
(8, 'Eger', 11),
(9, 'Szolnok', 12),
(10, 'Zirc', 20);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `etelek`
--
ALTER TABLE `etelek`
  ADD PRIMARY KEY (`etelek_id`),
  ADD KEY `etelek_tipus` (`etelek_tipus`);

--
-- A tábla indexei `eteltipusok`
--
ALTER TABLE `eteltipusok`
  ADD PRIMARY KEY (`eteltipusok_id`);

--
-- A tábla indexei `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`);

--
-- A tábla indexei `megye`
--
ALTER TABLE `megye`
  ADD PRIMARY KEY (`megye_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szavazat_etel`
--
ALTER TABLE `szavazat_etel`
  ADD PRIMARY KEY (`szavazat_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A tábla indexei `uzlet`
--
ALTER TABLE `uzlet`
  ADD PRIMARY KEY (`uzlet_id`),
  ADD KEY `uzlettipus` (`uzlettipus`);

--
-- A tábla indexei `uzlettipus`
--
ALTER TABLE `uzlettipus`
  ADD PRIMARY KEY (`uzlettipus_id`);

--
-- A tábla indexei `varos`
--
ALTER TABLE `varos`
  ADD PRIMARY KEY (`varos_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `etelek`
--
ALTER TABLE `etelek`
  MODIFY `etelek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT a táblához `eteltipusok`
--
ALTER TABLE `eteltipusok`
  MODIFY `eteltipusok_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `film`
--
ALTER TABLE `film`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT a táblához `szavazat_etel`
--
ALTER TABLE `szavazat_etel`
  MODIFY `szavazat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `uzlet`
--
ALTER TABLE `uzlet`
  MODIFY `uzlet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT a táblához `uzlettipus`
--
ALTER TABLE `uzlettipus`
  MODIFY `uzlettipus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `varos`
--
ALTER TABLE `varos`
  MODIFY `varos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `etelek`
--
ALTER TABLE `etelek`
  ADD CONSTRAINT `etelek_ibfk_1` FOREIGN KEY (`etelek_tipus`) REFERENCES `eteltipusok` (`eteltipusok_id`);

--
-- Megkötések a táblához `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `uzlet`
--
ALTER TABLE `uzlet`
  ADD CONSTRAINT `uzlet_ibfk_1` FOREIGN KEY (`uzlettipus`) REFERENCES `uzlettipus` (`uzlettipus_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
