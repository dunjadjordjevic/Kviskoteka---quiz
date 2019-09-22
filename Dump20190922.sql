CREATE DATABASE  IF NOT EXISTS `korisnik` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `korisnik`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: korisnik
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anagram`
--

DROP TABLE IF EXISTS `anagram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `anagram` (
  `anagram` varchar(45) NOT NULL,
  `resenje` varchar(45) NOT NULL,
  `idAna` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`anagram`),
  UNIQUE KEY `anagram_UNIQUE` (`anagram`),
  UNIQUE KEY `idAna_UNIQUE` (`idAna`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anagram`
--

LOCK TABLES `anagram` WRITE;
/*!40000 ALTER TABLE `anagram` DISABLE KEYS */;
INSERT INTO `anagram` VALUES ('On je vecni prostak','Nepristojan covek',1),('Posle vitki','Veliki post',2),('Proza puna divote','Znakovi pored puta',3),('Rad ti svira','Stradivari',4),('U akciji tima sprecili provalnike','Uprava kriminalisticke policije',5),('U boci sve prirodno','Sirup od borovnice',6);
/*!40000 ALTER TABLE `anagram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biljka`
--

DROP TABLE IF EXISTS `biljka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `biljka` (
  `idBiljke` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idBiljke`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biljka`
--

LOCK TABLES `biljka` WRITE;
/*!40000 ALTER TABLE `biljka` DISABLE KEYS */;
INSERT INTO `biljka` VALUES (1,'Mak'),(2,'Dinja'),(3,'Kukuruz'),(4,'Jabuka'),(5,'Krompir'),(6,'Boranija'),(7,'Grašak');
/*!40000 ALTER TABLE `biljka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drzava`
--

DROP TABLE IF EXISTS `drzava`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `drzava` (
  `idDrzave` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idDrzave`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drzava`
--

LOCK TABLES `drzava` WRITE;
/*!40000 ALTER TABLE `drzava` DISABLE KEYS */;
INSERT INTO `drzava` VALUES (1,'Danska'),(2,'Mađarska'),(3,'Srbija'),(4,'Švajcarska'),(5,'Holandija'),(6,'Francuska'),(7,'Poljska'),(8,'Italija'),(9,'Norveška'),(21,'Jamajka');
/*!40000 ALTER TABLE `drzava` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grad`
--

DROP TABLE IF EXISTS `grad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grad` (
  `idGrada` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idGrada`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grad`
--

LOCK TABLES `grad` WRITE;
/*!40000 ALTER TABLE `grad` DISABLE KEYS */;
INSERT INTO `grad` VALUES (1,'Moskva'),(2,'Beograd'),(3,'Kragujevac'),(4,'Šabac'),(5,'Brno'),(6,'Prag'),(7,'Verona'),(8,'Stokholm'),(9,'Aleksinac'),(10,'Dimitrovgrad');
/*!40000 ALTER TABLE `grad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupa`
--

DROP TABLE IF EXISTS `grupa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grupa` (
  `idGrupe` int(11) NOT NULL AUTO_INCREMENT,
  `idAna` int(11) DEFAULT NULL,
  `idPehar` int(11) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `igrano` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGrupe`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupa`
--

LOCK TABLES `grupa` WRITE;
/*!40000 ALTER TABLE `grupa` DISABLE KEYS */;
INSERT INTO `grupa` VALUES (3,4,0,'2019-09-09',1),(5,4,0,'2019-09-10',1),(6,2,0,'2019-09-11',1),(7,2,0,'2019-09-12',1),(8,4,0,'2019-09-13',1),(9,4,0,'2019-09-16',1),(10,3,0,'2019-09-17',1),(11,4,0,'2019-09-20',1),(12,3,1,'2019-09-21',1),(13,1,1,'2019-09-22',1);
/*!40000 ALTER TABLE `grupa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `igra_dana`
--

DROP TABLE IF EXISTS `igra_dana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `igra_dana` (
  `datum` date NOT NULL,
  `korisnickoime` varchar(45) NOT NULL,
  `poeni` int(11) DEFAULT NULL,
  PRIMARY KEY (`korisnickoime`,`datum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `igra_dana`
--

LOCK TABLES `igra_dana` WRITE;
/*!40000 ALTER TABLE `igra_dana` DISABLE KEYS */;
INSERT INTO `igra_dana` VALUES ('2019-09-10','adamk_',0),('2019-09-10','aleksandradj_',10),('2019-09-01','andrijam_',0),('2019-09-04','andrijam_',10),('2019-09-09','andrijam_',10),('2019-09-10','andrijam_',10),('2019-09-03','dimitrijedj_',0),('2019-09-09','dimitrijedj_',0),('2019-09-10','dimitrijedj_',0),('2019-09-01','dunjadj_',0),('2019-09-04','dunjadj_',10),('2019-09-09','dunjadj_',10),('2019-09-10','dunjadj_',10),('2019-09-11','dunjadj_',0),('2019-09-13','dunjadj_',0),('2019-09-16','dunjadj_',10),('2019-09-05','lukam_',10),('2019-09-04','tanjal_',10),('2019-09-10','tanjal_',0),('2019-09-17','tanjal_',44),('2019-09-20','tanjal_',26);
/*!40000 ALTER TABLE `igra_dana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jezero`
--

DROP TABLE IF EXISTS `jezero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jezero` (
  `idJezera` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idJezera`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jezero`
--

LOCK TABLES `jezero` WRITE;
/*!40000 ALTER TABLE `jezero` DISABLE KEYS */;
INSERT INTO `jezero` VALUES (5,'Palićko'),(6,'Šumaričko'),(7,'Gledićko'),(8,'Dojransko'),(9,'Grošničko'),(10,'Gružansko');
/*!40000 ALTER TABLE `jezero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korisnik`
--

DROP TABLE IF EXISTS `korisnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `korisnik` (
  `korisnickoime` varchar(50) NOT NULL,
  `lozinka` varchar(200) DEFAULT NULL,
  `ime` varchar(45) DEFAULT NULL,
  `prezime` varchar(45) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `zanimanje` varchar(45) DEFAULT NULL,
  `pol` varchar(45) NOT NULL,
  `jmbg` varchar(45) NOT NULL,
  `tip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`korisnickoime`),
  UNIQUE KEY `username_UNIQUE` (`korisnickoime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korisnik`
--

LOCK TABLES `korisnik` WRITE;
/*!40000 ALTER TABLE `korisnik` DISABLE KEYS */;
INSERT INTO `korisnik` VALUES ('adamk_','$2a$10$f1m7jmtGA5q4XNDdh7cE4eAE0e0JjipDGeN4QI8EcmT0nYeChUdqu','Adam','Krcunovic','ka97@gmail.com','student','muski','2412997723612','takmicar'),('aleksandarm_','$2a$10$nIBpsdfOCXFqACtZKkRLOuBY.JTjVlEPOigK93jAObFlyDkaT.XrO','Aleksandar','Miladinovic','am@gmail.com','programer','muski','2512994720013','administrator'),('aleksandradj_','$2a$10$ENU2A6nKT.foCOiqRLCeaOYXZxRV/7DUXdVRHoAmZFceoJYs6G42.','Aleksandra','Djordjevic','dja69@gmail.com','radnik','zenski','2901969725012','takmicar'),('andrijam_','$2a$10$nGZi7iKcKjn1d6YgUJi0k.t055P7icqaN.UFmDHO3pDmATkNOvF4e','Andrija','Misic','andrijamisic02@gmail.com','djak','muski','1910002720012','takmicar'),('dimitrijedj_','$2a$10$76SYjYNeNWp/YJICvyuQmO.bjiSqGRMo0tG23X9hS2lnhtffc9lU.','Dimitrije','Djordjevic','ddj00@gmail.com','djak','muski','3010000720015','takmicar'),('dunjadj_','$2a$10$wLq9PE65Q1RgcbzRwKdirOtBN8uf6i2HV./d8ERjxBvEMMm10HU96','Dunja','Djordjevic','ddj97@gmail.com','student','zenski','1510997725036','takmicar'),('jovanau_','$2a$10$UXw5eIEOIj0ToFAYeBI.be/bcDBV55IjijuOdUISFl.WrmF8M3b/u','Jovana','Uskokovic','ju@gmail.com','student','zenski','1704997725045','supervizor'),('stefans_','$2a$10$RdnscQlZHHqFUCizDVAY1OY/EZAEGgQvIFAqU6LLOaWLnPN0Qhr.m','Stefan','Stojanovic','stefans97@gmail.com','student','muski','2603997723612','takmicar'),('tanjal_','$2a$10$TKziDy8MR1tebV3ngPqOe.Lv6u/Crla4j.4FHLzVK1ooRqPQSWhRS','Tanja','Lukic','tl97@gmail.com','student','zenski','1008997725012','takmicar');
/*!40000 ALTER TABLE `korisnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muzicka_grupa`
--

DROP TABLE IF EXISTS `muzicka_grupa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `muzicka_grupa` (
  `idGrupe` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idGrupe`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muzicka_grupa`
--

LOCK TABLES `muzicka_grupa` WRITE;
/*!40000 ALTER TABLE `muzicka_grupa` DISABLE KEYS */;
INSERT INTO `muzicka_grupa` VALUES (1,'Novi fosili'),(2,'Neverne bebe'),(3,'Parni valjak'),(4,'Bajaga'),(5,'Radiohead'),(6,'Bon Jovi'),(7,'Metallica'),(8,'Guns n Roses'),(9,'Sabaton'),(10,'Artan lili'),(11,'Beatles'),(12,'Red hot chilly peppers');
/*!40000 ALTER TABLE `muzicka_grupa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pehar`
--

DROP TABLE IF EXISTS `pehar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pehar` (
  `idPehar` int(11) NOT NULL AUTO_INCREMENT,
  `pitanje1` varchar(200) DEFAULT NULL,
  `odgovor1` varchar(200) DEFAULT NULL,
  `pitanje2` varchar(200) DEFAULT NULL,
  `odgovor2` varchar(200) DEFAULT NULL,
  `pitanje3` varchar(200) DEFAULT NULL,
  `odgovor3` varchar(200) DEFAULT NULL,
  `pitanje4` varchar(200) DEFAULT NULL,
  `odgovor4` varchar(200) DEFAULT NULL,
  `pitanje5` varchar(200) DEFAULT NULL,
  `odgovor5` varchar(200) DEFAULT NULL,
  `pitanje6` varchar(200) DEFAULT NULL,
  `odgovor6` varchar(200) DEFAULT NULL,
  `pitanje7` varchar(200) DEFAULT NULL,
  `odgovor7` varchar(200) DEFAULT NULL,
  `pitanje8` varchar(200) DEFAULT NULL,
  `odgovor8` varchar(200) DEFAULT NULL,
  `pitanje9` varchar(200) DEFAULT NULL,
  `odgovor9` varchar(200) DEFAULT NULL,
  `pitanje10` varchar(200) DEFAULT NULL,
  `odgovor10` varchar(200) DEFAULT NULL,
  `pitanje11` varchar(200) DEFAULT NULL,
  `odgovor11` varchar(200) DEFAULT NULL,
  `pitanje12` varchar(200) DEFAULT NULL,
  `odgovor12` varchar(200) DEFAULT NULL,
  `pitanje13` varchar(200) DEFAULT NULL,
  `odgovor13` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idPehar`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pehar`
--

LOCK TABLES `pehar` WRITE;
/*!40000 ALTER TABLE `pehar` DISABLE KEYS */;
INSERT INTO `pehar` VALUES (1,'Jedan od najpoznatijih portala u Srbiji?','krstarica','Krasta (umanjeno)','krastica','Stara baka?','starica','Nadimak za jednu Saru?','sarita','Poznati muzički instrument','sitar','Albanska pevačica ... Ora?','rita','Konji (pesnički)?','ati','Terati nekome ...?','inat','Engleska jedinica mere za zapreminu?','pinta','Rđa, boja preko bakarnog novca?','patina','Spopasti nekoga?','napasti','Država u Južnoj Aziji?','pakistan','Dati odobrenje ili .. ?','pristanak'),(2,'Životinja koja nastanjuje prašume ostrva Boreno i Sumatre?','orangutan','Tragač za zlatnim runom (mitološki) ?','argonaut','Unazad, natraške?','unatrag','Nar, šipak, mogren..?','granat','Deblja trska od koje se pravi nameštaj?','ratan','Povreda, ozleda..?','rana','Sin princa Valijanta?','arn','Planeta Sunčevog sistema?','uran','Poznat je i arteški?','bunar','Čalma, saruk?','turban','Ono koje se odnosi na barut?','barutno','Grubo, surovo..?','brutalno','Glavni grad Mongolije?','ulanbator'),(3,'Kraljevski dvorac nedaleko od Madrida?','eskorijal','Vozači kola, vozari...?','kolesari','Splavari...?','skelari','Nemački šahovski velemajstor?','lasker','Ime književnika Čapeka?','karel','Veći vodeni tok?','reka','Vodeni ljuskar?','rak','Takmičenje u brzini?','trka','Ulaznice..?','karte','Zanatlija koji pravi četke?','četkar','Obrtač...?','okretač','Žene koje se bave stočarstvom?','stočarke','Glasnik, vesnik...?','skoroteča'),(4,'Poligon za sportsku rekreaciju u prirodi?','trimstaza','Imati stav o nečemu. Misliti... ','smatrati','Vrsta mediteranskog grma?','tamaris','Po njoj je poznat Radoje Domanović?','satira','Poluostrvo koje dele Sloveni i Hrvati?','istra','Uzrast, stas...?','rast','Čas...','sat','Američko-Sovjetski pregovori o ograničenju strateškog oružja?','salt','Ime glumice Stivens?','stela','Specijalni način pevanja gornjih tonova muškog pevačkog registra?','falset','Lepljivi zavoj za rane?','flaster','Vrsta rude cinka, cinkov-sulfid?','sfalerit','Spoljni omotač Zemlje, debeo 60km?','pitosfera');
/*!40000 ALTER TABLE `pehar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petputapet`
--

DROP TABLE IF EXISTS `petputapet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `petputapet` (
  `idPetPutaPet` int(11) NOT NULL,
  `prvaRec` varchar(45) DEFAULT NULL,
  `drugaRec` varchar(45) DEFAULT NULL,
  `trecaRec` varchar(45) DEFAULT NULL,
  `cetvrtaRec` varchar(45) DEFAULT NULL,
  `petaRec` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPetPutaPet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petputapet`
--

LOCK TABLES `petputapet` WRITE;
/*!40000 ALTER TABLE `petputapet` DISABLE KEYS */;
INSERT INTO `petputapet` VALUES (1,'sedam','elita','dinar','ataci','marin'),(2,'damir','atina','mikec','ineni','racin'),(3,'disko','usput','skoti','korac','opaki'),(4,'staja','valok','epovi','tivat','irina');
/*!40000 ALTER TABLE `petputapet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pitanje`
--

DROP TABLE IF EXISTS `pitanje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pitanje` (
  `pitanje` varchar(100) DEFAULT NULL,
  `odgovor` varchar(100) DEFAULT NULL,
  `korisnickoime` varchar(45) NOT NULL,
  PRIMARY KEY (`korisnickoime`),
  UNIQUE KEY `korisnickoime_UNIQUE` (`korisnickoime`),
  KEY `korisnickoime_idx` (`korisnickoime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pitanje`
--

LOCK TABLES `pitanje` WRITE;
/*!40000 ALTER TABLE `pitanje` DISABLE KEYS */;
INSERT INTO `pitanje` VALUES ('Odakle sam ja?','Kraljevo','adamk_'),('Kako ti se zove pas?','Bella','aleksandarm_'),('Sta si u horoskopu?','Vodolija','aleksandradj_'),('Odakle si?','Beograd','andrijam_'),('Kako ti se zove pas?','Dona','dimitrijedj_'),('Šta sam ja u horoskopu?','Vaga','dunjadj_'),('jole?','jole','jovanau_'),('Odakle sam ja?','Velika Plana','lukam_'),('Sta si u horoskopu?','Vaga','proba'),('Sta si u horoskopu?','Bik','stefans_'),('Sta si u horoskopu?','Lav','tanjal_');
/*!40000 ALTER TABLE `pitanje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planina`
--

DROP TABLE IF EXISTS `planina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `planina` (
  `idPlanine` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idPlanine`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planina`
--

LOCK TABLES `planina` WRITE;
/*!40000 ALTER TABLE `planina` DISABLE KEYS */;
INSERT INTO `planina` VALUES (1,'Durmitor'),(2,'Kopaonik'),(3,'Zlatibor'),(4,'Tara'),(5,'Ural'),(6,'Alpi'),(7,'Pirineji'),(8,'Šar planina');
/*!40000 ALTER TABLE `planina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reka`
--

DROP TABLE IF EXISTS `reka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reka` (
  `idReke` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idReke`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reka`
--

LOCK TABLES `reka` WRITE;
/*!40000 ALTER TABLE `reka` DISABLE KEYS */;
INSERT INTO `reka` VALUES (1,'Dunav'),(2,'Sava'),(3,'Lepenica'),(4,'Timok'),(5,'Tisa'),(6,'Morava'),(7,'Mlava'),(8,'Misisipi');
/*!40000 ALTER TABLE `reka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezultat`
--

DROP TABLE IF EXISTS `rezultat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rezultat` (
  `idRezultata` int(11) NOT NULL AUTO_INCREMENT,
  `korisnickoime` varchar(45) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `anagram` int(11) DEFAULT NULL,
  `mojbroj` int(11) DEFAULT NULL,
  `pehar` int(11) DEFAULT NULL,
  `petputapet` int(11) DEFAULT NULL,
  `zg` int(11) DEFAULT NULL,
  `ukupno` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRezultata`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezultat`
--

LOCK TABLES `rezultat` WRITE;
/*!40000 ALTER TABLE `rezultat` DISABLE KEYS */;
/*!40000 ALTER TABLE `rezultat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zahtevi_geo`
--

DROP TABLE IF EXISTS `zahtevi_geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zahtevi_geo` (
  `idZahteva` int(11) NOT NULL AUTO_INCREMENT,
  `polje` varchar(45) DEFAULT NULL,
  `naziv` varchar(45) DEFAULT NULL,
  `prihvacen` int(11) DEFAULT NULL,
  `korisnickoime` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idZahteva`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zahtevi_geo`
--

LOCK TABLES `zahtevi_geo` WRITE;
/*!40000 ALTER TABLE `zahtevi_geo` DISABLE KEYS */;
/*!40000 ALTER TABLE `zahtevi_geo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zahtevireg`
--

DROP TABLE IF EXISTS `zahtevireg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zahtevireg` (
  `korisnickoime` varchar(45) NOT NULL,
  `lozinka` varchar(200) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `odobreno` int(11) DEFAULT NULL,
  `ime` varchar(50) DEFAULT NULL,
  `prezime` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zanimanje` varchar(50) DEFAULT NULL,
  `pol` varchar(45) DEFAULT NULL,
  `jmbg` varchar(45) DEFAULT NULL,
  `tip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`korisnickoime`),
  UNIQUE KEY `korisnickoime_UNIQUE` (`korisnickoime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zahtevireg`
--

LOCK TABLES `zahtevireg` WRITE;
/*!40000 ALTER TABLE `zahtevireg` DISABLE KEYS */;
INSERT INTO `zahtevireg` VALUES ('adamk_','$2a$10$kw9hQ9DPIm9Qte2mscOh/.DnSRS7Txvmb1pi0nWMbfIeWnF4SbEwa','2019-09-05',1,'Adam','Krcunovic','ka97@gmail.com','student','muski','2412997723612','takmicar'),('aleksandradj_','$2a$10$hdnk0rmi1E6.IRvPNtZ/POAvGArvjEyL53fWQDKRqQa9NckujYknS','2019-09-06',1,'Aleksandra','Djordjevic','dja69@gmail.com','radnik','zenski','2901969725012','takmicar'),('lukam_','$2a$10$ueIWYIITlsOfhX7tFutmOOJ8PmquiBE8LdKDnmAYoMl.TBOw2rLo.','2019-09-05',0,'Luka','Miletic','ml97@gmail.com','student','muski','1205997723612','takmicar'),('stefans_','$2a$10$RdnscQlZHHqFUCizDVAY1OY/EZAEGgQvIFAqU6LLOaWLnPN0Qhr.m','2019-09-21',1,'Stefan','Stojanovic','stefans97@gmail.com','student','muski','2603997723612','takmicar');
/*!40000 ALTER TABLE `zahtevireg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zivotinja`
--

DROP TABLE IF EXISTS `zivotinja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zivotinja` (
  `idZivotinje` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idZivotinje`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zivotinja`
--

LOCK TABLES `zivotinja` WRITE;
/*!40000 ALTER TABLE `zivotinja` DISABLE KEYS */;
INSERT INTO `zivotinja` VALUES (1,'Pas'),(2,'Mačka'),(3,'Miš'),(4,'Orao'),(5,'Gepard'),(7,'Detlić'),(11,'Dabar');
/*!40000 ALTER TABLE `zivotinja` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-22 23:12:53
