-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: kindergarten
-- ------------------------------------------------------
-- Server version	8.0.17 

/* (c) 2020 Prof. Dr. Markus Grüne; Weitergabe außerhalb der Lehrveranstaltung untersagt.*/

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `kindergarten`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `kindergarten` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `kindergarten`;

--
-- Table structure for table `abholberechtigteperson`
--

DROP TABLE IF EXISTS `abholberechtigteperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abholberechtigteperson` (
  `idAbholberechtigtePerson` int(11) NOT NULL,
  PRIMARY KEY (`idAbholberechtigtePerson`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abholberechtigteperson`
--

LOCK TABLES `abholberechtigteperson` WRITE;
/*!40000 ALTER TABLE `abholberechtigteperson` DISABLE KEYS */;
/*!40000 ALTER TABLE `abholberechtigteperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresse` (
  `idAdresse` int(11) NOT NULL,
  `elternteil_IdElternteil` int(11) DEFAULT NULL,
  `BetreuerIn_idbetreuer` int(11) DEFAULT NULL,
  `Strasse Hnr` varchar(45) NOT NULL,
  `PLZ` int(11) NOT NULL,
  `Ort` varchar(45) NOT NULL,
  `ZusatzInfo` varchar(45) DEFAULT NULL COMMENT 'z.B. Stock, Wohnungsnummer\n',
  `Land` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAdresse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (1,1,NULL,'Sonnenwall 1',85700,'Juckstadt','.','Kosmopolitanien'),(2,2,NULL,'Sonnenwall 1',85700,'Juckstadt','.','Kosmopolitanien'),(3,5,NULL,'Sonnenwall 2',85700,'Juckstadt','.','Kosmopolitanien'),(4,6,NULL,'Sonnenwall 2',85700,'Juckstadt','.','Kosmopolitanien'),(5,11,NULL,'Mondbach 12a',85700,'Juckstadt','.','Kosmopolitanien'),(6,12,NULL,'Mondbach 12a',85700,'Juckstadt','.','Kosmopolitanien'),(7,17,NULL,'Mondweide 13',85700,'Juckstadt','.','Kosmopolitanien'),(8,18,NULL,'Mondweide 13',85700,'Juckstadt','.','Kosmopolitanien'),(9,NULL,1,'Sonnenwall 3',85700,'Juckstadt','.','Kosmopolitanien'),(10,NULL,6,'Sonnewall 34',85700,'Juckstadt','.','Kosmopolitanien'),(11,NULL,9,'Mondweide 14',85700,'Juckstadt','.','Kosmopolitanien'),(12,NULL,14,'Mondweide 2u',85700,'Juckstadt','.','Kosmopolitanien'),(13,NULL,18,'Sonnentor I2',85700,'Juckstadt','.','Kosmopolitanien'),(14,32,NULL,'Sternenklippe 4',85701,'Juckstadt-Oberjucksheim','.','Kosmopolitanien'),(15,33,NULL,'Sternenklippe 4',85701,'Juckstadt-Oberjucksheim','.','Kosmopolitanien'),(16,36,NULL,'Sternenklippe 90',85701,'Juckstadt-Oberjucksheim','.','Kosmopolitanien'),(17,37,NULL,'Sternenklippe 90',85701,'Juckstadt-Oberjucksheim','.','Kosmopolitanien'),(18,38,NULL,'Wingert 3',85701,'Juckstadt-Oberjucksheim','.','Kosmopolitanien'),(19,39,NULL,'Wingert 3a',85701,'Juckstadt-Oberjucksheim','.','Kosmopolitanien'),(20,NULL,11,'Weingartenweg 1',85701,'Juckstadt-Oberjucksheim','.','Kosmopolitanien'),(21,7,NULL,'Weingartenweg 12',85702,'Kratzhausen','.','Kosmopolitanien'),(22,8,NULL,'Weingartenweg 12',85702,'Kratzhausen','.','Kosmopolitanien'),(23,40,NULL,'Erika-Peters-Weihe 2',85702,'Kratzhausen','.','Kosmopolitanien'),(24,41,NULL,'Erika-Peters-Weihe 2',85702,'Kratzhausen','.','Kosmopolitanien'),(25,NULL,20,'Erika-Peters-Weihe 22',85702,'Kratzhausen','.','Kosmopolitanien'),(26,14,NULL,'Im Siebengrund 31',85703,'Flohberg','.','Kosmopolitanien'),(27,23,NULL,'Im Siebengrund 12',85703,'Flohberg','.','Kosmopolitanien'),(28,NULL,2,'Im Siebenschlaf 1a',85703,'Flohberg','.','Kosmopolitanien'),(29,NULL,15,'Ringwall - Villa Fuchs',85704,'Krabbelborn','.','Kosmopolitanien'),(30,42,NULL,'Walldorfstraße 12',85706,'Krabbelborn-Bracke','.','Kosmopolitanien'),(31,43,NULL,'Walldorfstraße 12',85706,'Krabbelborn-Bracke','.','Kosmopolitanien'),(32,NULL,17,'Walldorfstraße 12',85706,'Krabbelborn-Bracke','.','Kosmopolitanien'),(33,NULL,7,'Sandbracken 4',85708,'Zeckenbach','.','Kosmopolitanien'),(34,NULL,8,'Sandbracken 4',85708,'Zeckenbach','.','Kosmopolitanien'),(35,NULL,12,'Sandbracken 18',85708,'Zeckenbach','.','Kosmopolitanien'),(36,13,NULL,'Tümpelei 2',85709,'Zeckenbach-Flohse','.','Kosmopolitanien'),(37,19,NULL,'Tümpelei 2',85709,'Zeckenbach-Flohse','.','Kosmopolitanien'),(38,20,NULL,'Tümpelei 2',85709,'Zeckenbach-Flohse','.','Kosmopolitanien'),(39,NULL,13,'Tümpelei 2a',85709,'Zeckenbach-Flohse','.','Kosmopolitanien'),(40,3,NULL,'Zwickenge 2',85710,'Kneifenbrunn','.','Kosmopolitanien'),(41,4,NULL,'Zwickenge 2',85710,'Kneifenbrunn','.','Kosmopolitanien'),(42,28,NULL,'Zwickenstrang 4',85710,'Kneifenbrunn','.','Kosmopolitanien'),(43,29,NULL,'Zwickenstrang 4',85710,'Kneifenbrunn','.','Kosmopolitanien'),(44,44,NULL,'Pulvereistraße P3',85711,'Juckstadt-Unterjucksheim','.','Kosmopolitanien'),(45,45,NULL,'Pulvereistraße P3',85711,'Juckstadt-Unterjucksheim','.','Kosmopolitanien'),(46,46,NULL,'Pulvermühle 123',85711,'Juckstadt-Unterjucksheim','.','Kosmopolitanien'),(47,47,NULL,'Pulvermühle 123',85711,'Juckstadt-Unterjucksheim','.','Kosmopolitanien'),(48,NULL,4,'Pulverfass 1',85711,'Juckstadt-Unterjucksheim','.','Kosmopolitanien'),(49,NULL,5,'Pulverfass 1',85711,'Juckstadt-Unterjucksheim','.','Kosmopolitanien'),(50,NULL,10,'Pulverfass 1',85711,'Juckstadt-Unterjucksheim','.','Kosmopolitanien'),(51,15,NULL,'Kniepstar 12',85712,'Kneifenkratz','.','Kosmopolitanien'),(52,16,NULL,'Kniepstar 12',85712,'Kneifenkratz','.','Kosmopolitanien'),(53,24,NULL,'Pinche Pu 3',85712,'Kneifenkratz','.','Kosmopolitanien'),(54,25,NULL,'Pinche Pu 3',85712,'Kneifenkratz','.','Kosmopolitanien'),(55,NULL,3,'Peinigenweg 12',85712,'Kneifenkratz','.','Kosmopolitanien'),(56,NULL,19,'Peinigenweg 13',85712,'Kneifenkratz','.','Kosmopolitanien'),(57,21,NULL,'Fellfriseur-Fritz-Weg 1',85713,'Räudingsfeld','.','Kosmopolitanien'),(58,34,NULL,'Fellfriseur-Fritz-Weg 1',85713,'Räudingsfeld','.','Kosmopolitanien'),(59,22,NULL,'Fell-Gerber-Bunt-Straße 88',85714,'Räudingsfeld-Pustel','.','Kosmopolitanien'),(60,35,NULL,'Fell-Gerber-Bunt-Straße 88',85714,'Räudingsfeld-Pustel','.','Kosmopolitanien'),(61,26,NULL,'Hautroth 12',85715,'Schorfsstech','.','Kosmopolitanien'),(62,27,NULL,'Hautroth 12',85715,'Schorfsstech','.','Kosmopolitanien'),(63,30,NULL,'Epidermis-Pustelblume 1',85715,'Schorfsstech','.','Kosmopolitanien'),(64,31,NULL,'Epidermis-Pustelblume 1',85715,'Schorfsstech','.','Kosmopolitanien'),(65,NULL,16,'Siebzig-Jahr-Weg 12',86705,'Krabbelborn-Mücke','.','Kosmopolitanien'),(66,9,NULL,'Achtzigersteigung 88',86707,'Wasserlaufhausen','.','Kosmopolitanien'),(67,10,NULL,'Achtzigersteigung 88',86707,'Wasserlaufhausen','.','Kosmopolitanien');
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arbeitszeit`
--

DROP TABLE IF EXISTS `arbeitszeit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arbeitszeit` (
  `idArbeitszeit` int(11) NOT NULL,
  `Tag` varchar(10) DEFAULT NULL COMMENT 'wenn ja, dann 1\nwenn nein, dann 0\n',
  `IstVormittagsAnwesend` tinyint(4) DEFAULT NULL,
  `IstNachmittagsAnwesend` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idArbeitszeit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbeitszeit`
--

LOCK TABLES `arbeitszeit` WRITE;
/*!40000 ALTER TABLE `arbeitszeit` DISABLE KEYS */;
INSERT INTO `arbeitszeit` VALUES (1,'Mo',1,0),(2,'Mo',0,1),(3,'Di',1,0),(4,'Di',0,1),(5,'Mi',1,0),(6,'Mi',0,1),(7,'Do',1,0),(8,'Do',0,1),(9,'Fr',1,0),(10,'Fr',0,1),(11,'Sa',1,0);
/*!40000 ALTER TABLE `arbeitszeit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arbeitszeitzuordnung`
--

DROP TABLE IF EXISTS `arbeitszeitzuordnung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arbeitszeitzuordnung` (
  `Arbeitszeit_idArbeitszeit` int(11) NOT NULL,
  `betreuer_idbetreuer` int(11) NOT NULL,
  PRIMARY KEY (`Arbeitszeit_idArbeitszeit`,`betreuer_idbetreuer`),
  KEY `fk_Arbeitszeit_has_betreuer_betreuer1_idx` (`betreuer_idbetreuer`),
  KEY `fk_Arbeitszeit_has_betreuer_Arbeitszeit1_idx` (`Arbeitszeit_idArbeitszeit`),
  CONSTRAINT `fk_Arbeitszeit_has_betreuer_Arbeitszeit1` FOREIGN KEY (`Arbeitszeit_idArbeitszeit`) REFERENCES `arbeitszeit` (`idArbeitszeit`),
  CONSTRAINT `fk_Arbeitszeit_has_betreuer_betreuer1` FOREIGN KEY (`betreuer_idbetreuer`) REFERENCES `betreuerin` (`idbetreuer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbeitszeitzuordnung`
--

LOCK TABLES `arbeitszeitzuordnung` WRITE;
/*!40000 ALTER TABLE `arbeitszeitzuordnung` DISABLE KEYS */;
INSERT INTO `arbeitszeitzuordnung` VALUES (1,1),(3,1),(5,1),(6,1),(7,1),(11,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(2,3),(4,3),(6,3),(8,3),(10,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(1,5),(2,5),(5,5),(6,5),(9,5),(10,5),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6),(11,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7),(10,7),(2,8),(3,8),(4,8),(6,8),(7,8),(8,8),(10,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9),(10,9),(1,10),(3,10),(5,10),(7,10),(9,10),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(8,11),(9,11),(10,11),(1,12),(2,12),(3,12),(5,12),(6,12),(9,12),(10,12),(1,13),(4,13),(5,13),(6,13),(7,13),(8,13),(9,13),(10,13),(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(8,14),(9,14),(10,14),(2,15),(3,15),(4,15),(6,15),(7,15),(9,15),(10,15),(11,15),(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(8,16),(9,16),(10,16),(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(8,17),(9,17),(10,17),(2,18),(4,18),(5,18),(7,18),(9,18),(1,19),(2,19),(3,19),(4,19),(5,19),(6,19),(7,19),(8,19),(9,19),(10,19),(11,19),(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20),(8,20),(9,20),(10,20);
/*!40000 ALTER TABLE `arbeitszeitzuordnung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `betreuerin`
--

DROP TABLE IF EXISTS `betreuerin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `betreuerin` (
  `idbetreuer` int(11) NOT NULL,
  `Vorname` varchar(45) NOT NULL,
  `nachname` varchar(45) NOT NULL,
  `Eintritsdatum` date NOT NULL,
  `Stellung` varchar(45) NOT NULL COMMENT 'hiermit ist gemeint, ob eine Person Leiterin ist',
  `gruppe_IdGruppe` int(11) DEFAULT NULL,
  PRIMARY KEY (`idbetreuer`),
  KEY `fk_betreuer_gruppe1_idx` (`gruppe_IdGruppe`),
  CONSTRAINT `fk_betreuer_gruppe1` FOREIGN KEY (`gruppe_IdGruppe`) REFERENCES `gruppe` (`IdGruppe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `betreuerin`
--

LOCK TABLES `betreuerin` WRITE;
/*!40000 ALTER TABLE `betreuerin` DISABLE KEYS */;
INSERT INTO `betreuerin` VALUES (1,'Bertha','Panislowski','1980-09-15','kindergartenleitung',1),(2,'Selma','Latbergo','1990-12-15','Gruppenleitung',1),(3,'Max','Matt-Auschberger','2020-06-01','Praktikant',1),(4,'Heide','Witzkaherr-Kapitän','2010-07-01','Gruppenleitung',2),(5,'Herbert','Hartriegel','2005-10-15','BetreuerIn',2),(6,'Fridolina','Gerberich','2005-12-15','BetreuerIn',3),(7,'Hatice','Aydogan','2003-07-15','Gruppenleitung',3),(8,'Franzi','Hashemi-Nguyen','2012-03-15','Gruppenleitung',4),(9,'Fritzl','Gustlbaur','2015-04-15','BetreuerIn',4),(10,'Susi','Sunkist','1999-12-15','Gruppenleitung',5),(11,'Susanne ','Moonchild-Cho','1998-08-15','BetreuerIn',6),(12,'Sudeetha','Rapti','2010-05-15','Gruppenleitung',6),(13,'Sanjit','Ratterjeeh','2019-06-15','BetreuerIn',5),(14,'Erich','Schmitz','2010-08-01','Gruppenleitung',7),(15,'Waldemar','Waldläufer','2011-08-01','BetreuerIn',7),(16,'Kim','Nguyen','2007-11-15','BetreuerIn',4),(17,'Isidor','Istmachel','2009-12-15','Stellv. kindergartenleitung',1),(18,'Bertha','Syrtchuk','2007-03-15','BetreuerIn',3),(19,'Edbin','Aksu','2020-04-15','BetreuerIn',2),(20,'Sheeba','Jamal','2004-12-01','BetreuerIn',6);
/*!40000 ALTER TABLE `betreuerin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elterngespraech`
--

DROP TABLE IF EXISTS `elterngespraech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elterngespraech` (
  `idElterngespraech` int(11) NOT NULL,
  PRIMARY KEY (`idElterngespraech`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elterngespraech`
--

LOCK TABLES `elterngespraech` WRITE;
/*!40000 ALTER TABLE `elterngespraech` DISABLE KEYS */;
/*!40000 ALTER TABLE `elterngespraech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elternteil`
--

DROP TABLE IF EXISTS `elternteil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elternteil` (
  `IdElternteil` int(11) NOT NULL,
  `IstHauptansprechpartner` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'wenn ja, dann 1\nwenn nein, dann 0\n',
  `Anrede` varchar(45) DEFAULT NULL,
  `Vorname` varchar(45) NOT NULL,
  `Nachname` varchar(45) NOT NULL,
  `Telefonnummer` varchar(45) NOT NULL,
  `Whatsapp zugehörigkeit` varchar(45) NOT NULL,
  `IstBerufstaetig` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'wenn ja, dann 1\nwenn nein, dann 0\n',
  `GruppenElternteil` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdElternteil`),
  KEY `fk_elternteil_gruppe1_idx` (`GruppenElternteil`),
  CONSTRAINT `fk_elternteil_gruppe1` FOREIGN KEY (`GruppenElternteil`) REFERENCES `gruppe` (`IdGruppe`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elternteil`
--

LOCK TABLES `elternteil` WRITE;
/*!40000 ALTER TABLE `elternteil` DISABLE KEYS */;
INSERT INTO `elternteil` VALUES (1,1,'Frau','Zoey','Franke','85814','0',1,0),(2,0,'Herr','Nick','Franke','51681','1',0,4),(3,1,'Herr','Ben','Iwanow','35835','1',1,1),(4,0,'Frau','Josefine','Iwanow','35835','0',1,0),(5,1,'Frau','Tilda','Kaya','61207','1',1,7),(6,0,'Herr','Marvin','Kaya','61207','1',1,0),(7,1,'Frau','Sophie','Gerdmann','54806','0',1,0),(8,0,'Herr','Orlando','Gerdmann','54806','1',1,0),(9,1,'Herr','Shashank','Le','78241','1',0,0),(10,0,'Frau','Lena','Le','78241','0',1,0),(11,0,'Herr','Leo','Lechmann','88814','1',1,0),(12,1,'Frau','Preeti','Lechmann-Grün','34062','1',1,3),(13,0,'Frau','Luna','Seibel','99602','0',1,0),(14,1,'Frau','Zeni','Seibel-Dostoi','99602','1',0,0),(15,1,'Herr','Torben','Lorenz','66090','1',1,0),(16,0,'Frau','Fiona','Lorenz','66090','1',1,5),(17,1,'Frau','Sophia','Demir','6147','0',0,0),(18,0,'Herr','Mohamed','Demir','6147','1',1,2),(19,1,'Frau','Mareike','Friedberger','62404','0',1,0),(20,0,'Herr','Kemal Jürgen','Friedberger','62404','0',1,2),(21,1,'Herr','Friedrich','Feyerabend','56914','1',1,0),(22,1,'Frau','Ni','Gerdmann','54806','1',0,0),(23,1,'Frau','Carlotta','Lenz','61073','1',1,7),(24,1,'Frau','Samira','Becker','53694','0',1,0),(25,0,'Herr','Thilo','Becker','98558','0',0,0),(26,0,'Herr','Marvin Maria','Tragtor-Schneider','13392','1',1,3),(27,1,'Frau','Felicia','Schneider','80758','1',1,0),(28,0,'Herr','David','Levi','345345','1',0,0),(29,1,'Frau','Rachel','Levi','345345','1',0,6),(30,0,'Frau','Preeti','Sharma','74446','1',1,0),(31,1,'Frau','Swati','Sharma','74446','1',1,0),(32,0,'Herr','Ranjid','Bhat','121212','0',1,0),(33,1,'Frau','Ng','Bhat','121212','1',1,0),(34,0,'Herr','Iwan','Sokolow','12378','1',1,0),(35,1,'Frau','Elena','Sokolowa','12378','1',1,0),(36,0,'Frau','Martina','Herberts','50212','',1,5),(37,1,'Herr','Markus','Herberts','50212','',1,0),(38,0,'Frau','Mareike','Manuel','12449','0',1,0),(39,1,'Frau','Merinda','Manual','12449','0',1,4),(40,0,'Herr','Magnus','Schmitz-Backes','99603','0',0,0),(41,1,'Frau','Magdalena','Schmitz-Backes','99603','0',1,0),(42,0,'Herr','Yusuf','Yildirim','88890','0',0,0),(43,1,'Frau','Amara','Yildirim','88890','0',1,6),(44,0,'Frau','Trine','Töbel','99384','1',1,0),(45,1,'Herr','Tran Hu','Töbel','99384','1',1,0),(46,0,'Herr','Zambal','Zafak','56408','1',1,1),(47,1,'Frau','Zembi','Zafak','56408','1',1,0);
/*!40000 ALTER TABLE `elternteil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familienverhaeltnis`
--

DROP TABLE IF EXISTS `familienverhaeltnis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `familienverhaeltnis` (
  `kind_IdKind` int(11) NOT NULL,
  `elternteil_IdElternteil` int(11) NOT NULL,
  PRIMARY KEY (`kind_IdKind`,`elternteil_IdElternteil`),
  KEY `fk_kind_has_elternteil_elternteil1_idx` (`elternteil_IdElternteil`),
  KEY `fk_kind_has_elternteil_kind_idx` (`kind_IdKind`),
  CONSTRAINT `fk_kind_has_elternteil_elternteil1` FOREIGN KEY (`elternteil_IdElternteil`) REFERENCES `elternteil` (`IdElternteil`),
  CONSTRAINT `fk_kind_has_elternteil_kind` FOREIGN KEY (`kind_IdKind`) REFERENCES `kind` (`IdKind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familienverhaeltnis`
--

LOCK TABLES `familienverhaeltnis` WRITE;
/*!40000 ALTER TABLE `familienverhaeltnis` DISABLE KEYS */;
INSERT INTO `familienverhaeltnis` VALUES (14,1),(15,1),(16,1),(17,1),(18,1),(14,2),(15,2),(16,2),(17,2),(18,2),(28,3),(29,3),(28,4),(29,4),(30,5),(31,5),(32,5),(30,6),(31,6),(32,6),(25,7),(26,7),(27,7),(25,8),(26,8),(27,8),(22,9),(24,9),(23,10),(24,10),(33,11),(34,11),(35,11),(36,11),(37,11),(38,11),(33,12),(34,12),(35,12),(36,12),(37,12),(38,12),(45,13),(46,13),(47,13),(45,14),(46,14),(47,14),(41,15),(42,15),(41,16),(42,16),(7,17),(8,17),(9,17),(10,17),(7,18),(8,18),(9,18),(10,18),(19,19),(20,19),(21,19),(19,20),(20,20),(21,20),(11,21),(12,21),(13,21),(39,23),(40,23),(1,24),(2,24),(3,24),(4,24),(5,24),(6,24),(1,25),(2,25),(3,25),(4,25),(5,25),(6,25),(43,26),(44,26),(48,28),(49,28),(50,28),(48,29),(49,29),(50,29),(51,30),(51,31),(52,32),(53,32),(54,32),(52,33),(53,33),(54,33),(55,34),(55,35),(56,36),(57,36),(58,36),(56,37),(57,37),(58,37),(59,38),(60,38),(61,38),(62,38),(59,39),(60,39),(61,39),(62,39),(63,40),(64,40),(65,40),(66,40),(67,40),(63,41),(64,41),(65,41),(66,41),(67,41),(68,42),(69,42),(70,42),(71,42),(68,43),(69,43),(70,43),(71,43),(72,44),(73,44),(74,44),(72,45),(73,45),(74,45),(75,46),(76,46),(77,46),(78,46),(79,46),(75,47),(76,47),(77,47),(78,47),(79,47);
/*!40000 ALTER TABLE `familienverhaeltnis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gruppe`
--

DROP TABLE IF EXISTS `gruppe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gruppe` (
  `IdGruppe` int(11) NOT NULL,
  `raum_IdRaum` int(11) NOT NULL,
  `NameGruppe` varchar(45) NOT NULL,
  PRIMARY KEY (`IdGruppe`),
  KEY `fk_gruppe_raum1_idx` (`raum_IdRaum`),
  CONSTRAINT `fk_gruppe_raum1` FOREIGN KEY (`raum_IdRaum`) REFERENCES `raum` (`IdRaum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruppe`
--

LOCK TABLES `gruppe` WRITE;
/*!40000 ALTER TABLE `gruppe` DISABLE KEYS */;
INSERT INTO `gruppe` VALUES (0,1,'1'),(1,4,'Schmetterlinge'),(2,5,'Marienkäfer'),(3,3,'Ameisen'),(4,6,'Regenwürmer'),(5,2,'Bienen'),(6,1,'Flöhe'),(7,1,'Wasserläufer');
/*!40000 ALTER TABLE `gruppe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kind`
--

DROP TABLE IF EXISTS `kind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kind` (
  `IdKind` int(11) NOT NULL,
  `Vorname` varchar(45) NOT NULL,
  `Nachname` varchar(45) NOT NULL,
  `Geburtsdatum` date NOT NULL,
  `Datenschutzeinverständnis` varchar(45) NOT NULL,
  `gruppe_IdGruppe` int(11) NOT NULL,
  PRIMARY KEY (`IdKind`),
  KEY `fk_kind_gruppe1_idx` (`gruppe_IdGruppe`),
  CONSTRAINT `fk_kind_gruppe1` FOREIGN KEY (`gruppe_IdGruppe`) REFERENCES `gruppe` (`IdGruppe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kind`
--

LOCK TABLES `kind` WRITE;
/*!40000 ALTER TABLE `kind` DISABLE KEYS */;
INSERT INTO `kind` VALUES (1,'Joris','Becker','2015-06-11','1',5),(2,'Clara','Becker','2016-05-10','1',4),(3,'Konrad','Becker','2017-10-01','1',2),(4,'Tilda','Becker','2015-02-02','1',6),(5,'Tanya','Becker','2015-04-26','1',6),(6,'Torsten','Becker','2014-10-28','1',6),(7,'Alina','Demir','2017-08-07','0',2),(8,'Zoey','Demir','2017-09-27','0',2),(9,'Iqbal','Demir','2017-02-01','0',3),(10,'Jacki','Demir','2014-03-11','0',6),(11,'Lionel','Feyerabend','2018-01-29','1',1),(12,'Max','Feyerabend','2015-02-24','1',6),(13,'Carlotta','Feyerabend','2016-02-18','1',5),(14,'Frauke','Franke','2016-05-09','1',4),(15,'Frieda','Franke','2014-04-30','1',7),(16,'Franziska','Franke','2018-04-13','1',1),(17,'Felix','Franke','2017-02-22','1',3),(18,'Friedrich','Franke','2017-11-09','0',2),(19,'Maria','Friedberger','2015-11-27','1',5),(20,'Jasper','Friedberger','2015-02-08','1',6),(21,'Sophia','Friedberger','2017-08-01','1',2),(22,'Piet','Le','2017-05-18','0',3),(23,'Tran','Le','2017-11-13','0',2),(24,'Ni','Le','2017-09-15','0',2),(25,'Shashank','Gerdmann','2017-12-21','1',1),(26,'Maria','Gerdmann','2014-04-04','1',7),(27,'Ni','Gerdmann','2018-10-06','1',1),(28,'Ni','Iwanow','2018-04-25','1',1),(29,'Mariate','Iwanow','2017-04-14','1',3),(30,'Nick','Kaya','2014-10-13','1',6),(31,'Mandy','Kaya','2014-02-25','1',7),(32,'Piet','Kaya','2015-05-21','1',5),(33,'Ole','Lechmann','2014-07-02','0',7),(34,'Ali','Lechmann','2016-05-31','0',4),(35,'Torben','Lechmann','2014-01-14','0',7),(36,'Shashank','Lechmann-Grün','2017-07-26','0',3),(37,'Ilyas','Lechmann-Grün','2016-12-22','0',3),(38,'Lena','Lechmann-Grün','2017-09-26','0',2),(39,'Mariate','Lenz','2014-09-06','1',7),(40,'Thilo','Lenz','2017-08-04','1',2),(41,'Cho','Lorenz','2014-08-12','1',7),(42,'Joe','Lorenz','2015-09-05','1',5),(43,'Konrad','Tragtor-Schneider','2014-12-16','0',6),(44,'Jacki','Tragtor-Schneider','2017-06-12','0',3),(45,'Linus','Seibel-Dostoi','2015-01-13','0',6),(46,'Lasse','Seibel-Dostoi','2017-12-24','0',1),(47,'Thilo','Seibel-Dostoi','2016-08-12','1',4),(48,'Felix','Levi','2014-05-22','1',7),(49,'Peter','Levi','2017-12-19','1',2),(50,'Luna','Levi','2014-03-17','1',6),(51,'Mohamed','Sharma','2014-07-19','1',7),(52,'Jacki','Bhat','2014-03-03','1',7),(53,'Mandy','Bhat','2016-10-18','1',4),(54,'Shashank','Bhat','2018-03-20','1',1),(55,'Cho','Sokolow','2018-02-01','0',1),(56,'Sigur','Herberts','2017-07-09','0',3),(57,'Merle','Herberts','2015-08-14','0',5),(58,'Luna','Herberts','2015-08-01','0',5),(59,'Elena','Manuel','2015-03-04','1',6),(60,'Chantal','Manuel','2016-03-20','1',4),(61,'Maik','Manuel','2016-10-09','1',4),(62,'Ali','Manuel','2014-08-02','1',7),(63,'Klara','Schmitz-Backes','2014-06-10','0',7),(64,'Laila','Schmitz-Backes','2017-02-16','0',3),(65,'Erwin','Schmitz-Backes','2017-09-09','0',2),(66,'Jasper','Schmitz-Backes','2016-07-16','0',4),(67,'Tilda','Schmitz-Backes','2015-07-17','0',5),(68,'Mustafa','Yildirim','2015-01-24','1',6),(69,'Ben','Yildirim','2014-11-10','1',6),(70,'Muhamad','Yildirim','2016-12-12','1',3),(71,'Klara','Yildirim','2018-01-29','1',1),(72,'Laila','Töbel','2016-06-01','0',4),(73,'Chantal','Töbel','2018-02-25','0',1),(74,'Ben','Töbel','2014-07-18','0',7),(75,'Zerlo','Zafak','2018-09-10','1',1),(76,'Zedan','Zafak','2018-02-03','1',1),(77,'Zufu','Zafak','2014-03-08','1',6),(78,'Zufa','Zafak','2017-12-18','1',2),(79,'Zeni','Zafak','2016-11-20','1',4);
/*!40000 ALTER TABLE `kind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raum`
--

DROP TABLE IF EXISTS `raum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raum` (
  `IdRaum` int(11) NOT NULL,
  `Raumnummer` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `HatBasteltisch` tinyint(4) NOT NULL,
  `HatSandtisch` tinyint(4) NOT NULL,
  PRIMARY KEY (`IdRaum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raum`
--

LOCK TABLES `raum` WRITE;
/*!40000 ALTER TABLE `raum` DISABLE KEYS */;
INSERT INTO `raum` VALUES (1,'001','Blumenwiese',1,0),(2,'002','Ameisenhaufen',0,1),(3,'003','Steinwüste',0,0),(4,'004','Tundra',1,1),(5,'005','Taiga',0,1),(6,'006','Alm',1,1);
/*!40000 ALTER TABLE `raum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schrank`
--

DROP TABLE IF EXISTS `schrank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schrank` (
  `idSchrank` int(11) NOT NULL,
  `Bezeichnung` varchar(45) DEFAULT NULL COMMENT 'z.B. Schrank 1, Schrank 2 oder Bastelschrank, Spielzeugschrank',
  `raum_IdRaum` int(11) NOT NULL,
  PRIMARY KEY (`idSchrank`),
  KEY `fk_Schrank_raum1_idx` (`raum_IdRaum`),
  CONSTRAINT `fk_Schrank_raum1` FOREIGN KEY (`raum_IdRaum`) REFERENCES `raum` (`IdRaum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schrank`
--

LOCK TABLES `schrank` WRITE;
/*!40000 ALTER TABLE `schrank` DISABLE KEYS */;
INSERT INTO `schrank` VALUES (1,'Schrank 1',1),(2,'Schrank 2',1),(3,'Schrank 3',2),(4,'Schrank 4',2),(5,'Schrank 5',3),(6,'Schrank 6',3),(7,'Schrank 7',4),(8,'Schrank 8',4),(9,'Schrank 9',5),(10,'Schrank 10',5),(11,'Schrank 11',6),(12,'Schrank 12',6);
/*!40000 ALTER TABLE `schrank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schrankfach`
--

DROP TABLE IF EXISTS `schrankfach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schrankfach` (
  `idSchrankfach` int(11) NOT NULL,
  `Inhaltstyp` varchar(45) DEFAULT NULL COMMENT 'z.B. Bastelsachen, Playmobil, Lego, ...',
  `Schrank_idSchrank` int(11) NOT NULL,
  PRIMARY KEY (`idSchrankfach`,`Schrank_idSchrank`),
  KEY `fk_Schrankfach_Schrank1_idx` (`Schrank_idSchrank`),
  CONSTRAINT `fk_Schrankfach_Schrank1` FOREIGN KEY (`Schrank_idSchrank`) REFERENCES `schrank` (`idSchrank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schrankfach`
--

LOCK TABLES `schrankfach` WRITE;
/*!40000 ALTER TABLE `schrankfach` DISABLE KEYS */;
INSERT INTO `schrankfach` VALUES (1,'Spielzeug',1),(2,'Bastelkram',1),(3,'Geschirr',2),(4,'Bastelkram',2),(5,'Brettspiele',3),(6,'Bastelkram',3),(7,'Brettspiele',4),(8,'Duplo',4),(9,'Kim-Spiele',5),(10,'Geschirr',5),(11,'Stoffreste',6),(12,'Unterlagen',6),(13,'Unterlagen',7),(14,'Duplo',7),(15,'Lego',8),(16,'Playmobil',8),(17,'Geschirr',9),(18,'Brettspiele',9),(19,'Kim-Spiele',10),(20,'Unterlagen',10),(21,'Spielzeug',11),(22,'Playmobil',11),(23,'Spielzeug',12),(24,'Playmobil',12);
/*!40000 ALTER TABLE `schrankfach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spielzeug`
--

DROP TABLE IF EXISTS `spielzeug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spielzeug` (
  `idSpielzeug` int(11) NOT NULL,
  `Bezeichnung` varchar(45) DEFAULT NULL,
  `Altersgruppe` varchar(45) DEFAULT NULL,
  `Kategorie` varchar(45) DEFAULT NULL,
  `Schrankfach_idSchrankfach` int(11) NOT NULL,
  `Schrankfach_Schrank_idSchrank` int(11) NOT NULL,
  PRIMARY KEY (`idSpielzeug`),
  KEY `fk_Spielzeug_Schrankfach1_idx` (`Schrankfach_idSchrankfach`,`Schrankfach_Schrank_idSchrank`),
  CONSTRAINT `fk_Spielzeug_Schrankfach1` FOREIGN KEY (`Schrankfach_idSchrankfach`, `Schrankfach_Schrank_idSchrank`) REFERENCES `schrankfach` (`idSchrankfach`, `Schrank_idSchrank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spielzeug`
--

LOCK TABLES `spielzeug` WRITE;
/*!40000 ALTER TABLE `spielzeug` DISABLE KEYS */;
INSERT INTO `spielzeug` VALUES (1,'Playmobil - 1 2 3 - Traktor','bis 3','Kleinspielzeug',1,1),(2,'Lego - Dschungel','bis 6','Kleinspielzeug',2,1),(3,'Duplo - Zoo','bis 3','Kleinspielzeug',3,2),(4,'Lego - Anna und Elsa','bis 6','Kleinspielzeug',4,2),(5,'Duplo - Ritterburg klein','bis 3','Kleinspielzeug',5,3),(6,'Nerf - Bogen','bis 6','Krieg und Frieden',6,3),(7,'Playmobil - 1 2 3 - Anhänger','bis 3','Kleinspielzeug',7,4),(8,'Spiel des Lebens','bis 6','Brettspiel',8,4),(9,'Playmobil - 1 2 3 - Bauernhof','bis 3','Kleinspielzeug',9,5),(10,'Spiel ohne Grenzen','bis 6','Brettspiel',10,5),(11,'Playmobil - 1 2 3 - Prinzessin','bis 3','Kleinspielzeug',11,6),(12,'Spielesammlung','bis 6','Brettspiel',12,6),(13,'Duplo - Drachenreiter','bis 3','Kleinspielzeug',13,7),(14,'Rennbahn mit 8 Autos','bis 6','Kleinspielzeug',14,7),(15,'Playmobil - 1 2 3 - Bauernhoftiere','bis 3','Kleinspielzeug',15,8),(16,'Lego - Ninjago - der Schuft','bis 6','Kleinspielzeug',16,8),(17,'Poly M - Set groß','bis 3','Leisespiel',17,9),(18,'Lego - Ninjago - der Gute','bis 6','Kleinspielzeug',18,9),(19,'Poly M - Set klein','bis 3','Leisespiel',19,10),(20,'Lego - Ninjago - die Schwertkämpferin','bis 6','Kleinspielzeug',20,10),(21,'Bauklötze - natur','bis 3','Natur',21,11),(22,'Playmobil - Verfolgungsjagd','bis 6','Kleinspielzeug',22,11),(23,'Poly M - Set mittel','bis 3','Leisespiel',23,12),(24,'Bauen mit Steinen - Mörtelmeister','bis 6','Natur',24,12),(25,'Stofftiere','bis 3','Kuscheln',1,1),(26,'Buchsammlung - Geheimnis um …','bis 6','Bücher',3,2),(27,'Kasperlepuppen','bis 3','Kreativspiele',5,3),(28,'Buchsammlung - Pippi Langstrumpf','bis 6','Bücher',9,5),(29,'Schaumstoffboxhandschuhe','bis 3','Krieg und Frieden',13,7),(30,'Schaumstoffritterrüstung 1','bis 6','Krieg und Frieden',17,9),(31,'Kaufladen - Kasse','bis 3','Kreativspiele',2,1),(32,'Schaumstoffritterrüstung 2','bis 6','Krieg und Frieden',8,4),(33,'Kaufladen - Dosen und Tüten','bis 3','Kreativspiele',4,2),(34,'Schnitzmesser','bis 6','Natur',12,6),(35,'Kaufladen - Spielgeld','bis 3','Kreativspiele',24,12),(36,'Dekoartikel','bis 6','Deko',20,10),(37,'Kaufladen - Einkaufswagen','bis 3','Kreativspiele',7,4),(38,'Bücher: Mädchen machen Krach','bis 6','Bücher',9,5),(39,'Kaufladen - Kreidetafel','bis 3','Kreativspiele',11,6);
/*!40000 ALTER TABLE `spielzeug` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-07 16:59:55
