CREATE DATABASE
    IF NOT EXISTS `gioco` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gioco`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: gioco
-- ------------------------------------------------------
-- Server version	5.7.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand`
(
    `idBrand`      int(9) NOT NULL,
    `companyBrand` varchar(20) DEFAULT NULL,
    `nameBrand`    varchar(20) DEFAULT NULL,
    PRIMARY KEY
        (`idBrand`),
    UNIQUE KEY `idBrand`
        (`idBrand`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand`
    DISABLE KEYS */;
INSERT INTO `
brand`
VALUES (1, 'Microsoft', 'Xbox'),
       (2, 'Sony', 'PlayStation'),
       (3, 'Nintendo', 'Nintendo');
/*!40000 ALTER TABLE `brand`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category`
(
    `idCategory`   int(9) NOT NULL,
    `nameCategory` varchar(20) DEFAULT NULL,
    PRIMARY KEY
        (`idCategory`),
    UNIQUE KEY `idCategory`
        (`idCategory`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category`
    DISABLE KEYS */;
INSERT INTO `
category`
VALUES (1, 'Videojuegos'),
       (2, 'Consolas'),
       (3, 'Souvenirs'),
       (4, 'accesorios');
/*!40000 ALTER TABLE `category`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client`
(
    `idClient`              int(5) NOT NULL,
    `firsNameClient`        varchar(20) DEFAULT NULL,
    `secondNameClient`      varchar(20) DEFAULT NULL,
    `middleNameClient`      varchar(20) DEFAULT NULL,
    `lastNameClient`        varchar(20) DEFAULT NULL,
    `phoneNumberClient`     varchar(15) DEFAULT NULL,
    `dateIntegrationClient` date        DEFAULT NULL,
    `birthDateClient`       date        DEFAULT NULL,
    `curpClient`            varchar(18) DEFAULT NULL,
    `pointsClient`          float(2, 2) DEFAULT NULL,
    `interiorNumberClient`  int(6)      DEFAULT NULL,
    `exteriorNumberClient`  int(6)      DEFAULT NULL,
    `streetClient`          varchar(40) DEFAULT NULL,
    `rfcClient`             varchar(16) DEFAULT NULL,
    `emailClient`           varchar(40) DEFAULT NULL,
    `postalCodeClient`      varchar(10) DEFAULT NULL,
    PRIMARY KEY
        (`idClient`),
    UNIQUE KEY `idClient`
        (`idClient`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client`
    DISABLE KEYS */;
INSERT INTO `
client`
VALUES (-1, 'default', '', '', '', '0', '2019-09-05', '1995-10-10', '', 0.00, 0, 0, '', '', '', ''),
       (0, 'Administrador', '', '', '', '0', '2019-09-05', '1995-10-10', '', 0.00, 0, 0, '', '', '', ''),
       (1, 'Héctor', 'Jama', 'Escobedo', 'Olguín', '7731598533', '2019-09-06', '2000-03-20', 'EOOH000320HHGSLCA9', 0.00,
        5, 860, 'Belén', 'EOOH000320CJ5', 'jamahcs@outlook.com', '76148'),
       (2, 'Alan', 'Martín', 'Resendiz', 'Colindres', '4191173458', '2019-09-06', '1999-10-26', 'AAAAAAAAAAAAAAAAAA',
        0.00, 1, 1, 'Pie de la cuesta', 'AAAAAAAAAAAAAAAA', 'alan@gmail.com', '76148');
/*!40000 ALTER TABLE `client`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product`
(
    `idProduct`            int(9) NOT NULL,
    `nameProduct`          varchar(20) DEFAULT NULL,
    `costProduct`          float       DEFAULT NULL,
    `priceProduct`         float       DEFAULT NULL,
    `stockProduct`         int(4)      DEFAULT NULL,
    `generationProduct`    varchar(20) DEFAULT NULL,
    `clasificationProduct` varchar(50) DEFAULT NULL,
    `esrb`                 varchar(20) DEFAULT NULL,
    `idCategory`           int(9)      DEFAULT NULL,
    `idBrand`              int(9)      DEFAULT NULL,
    PRIMARY KEY
        (`idProduct`),
    UNIQUE KEY `idProduct`
        (`idProduct`),
    KEY `idCategory`
        (`idCategory`),
    KEY `idBrand`
        (`idBrand`),
    CONSTRAINT `product_ibfk_1` FOREIGN KEY
        (`idCategory`) REFERENCES `category`
            (`idCategory`),
    CONSTRAINT `product_ibfk_2` FOREIGN KEY
        (`idBrand`) REFERENCES `brand`
            (`idBrand`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product`
    DISABLE KEYS */;
INSERT INTO `
product`
VALUES (1, 'Halo 5: Guardians', 1000, 1400, 10, 'Xbox One', 'Acción, FPS', 'M - Mature 17+', 1, 1),
       (2, 'Xbox One Slim', 4000, 6000, 4, 'Xbox One', 'N/A', 'N/A', 2, 1);
/*!40000 ALTER TABLE `product`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale`
(
    `idSale`           int(9) NOT NULL,
    `branchOfficeSale` varchar(20) DEFAULT NULL,
    `dateSale`         datetime    DEFAULT NULL,
    `importSale`       float       DEFAULT NULL,
    `idClient`         int(5)      DEFAULT NULL,
    `idSeller`         int(5)      DEFAULT NULL,
    PRIMARY KEY
        (`idSale`),
    UNIQUE KEY `idSale`
        (`idSale`),
    KEY `idClient`
        (`idClient`),
    KEY `idSeller`
        (`idSeller`),
    CONSTRAINT `sale_ibfk_1` FOREIGN KEY
        (`idClient`) REFERENCES `client`
            (`idClient`),
    CONSTRAINT `sale_ibfk_2` FOREIGN KEY
        (`idSeller`) REFERENCES `seller`
            (`idSeller`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale`
    DISABLE KEYS */;
INSERT INTO `
sale`
VALUES (1, 'Sucursal Antea', '2020-03-20 12:20:19', 2800, 1, 1);
/*!40000 ALTER TABLE `sale`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saleproduct`
--

DROP TABLE IF EXISTS `saleproduct`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saleproduct`
(
    `quantityProduct` int(3) DEFAULT NULL,
    `ivaSale`         float  DEFAULT NULL,
    `idSale`          int(9) DEFAULT NULL,
    `idProduct`       int(9) DEFAULT NULL,
    KEY `idSale`
        (`idSale`),
    KEY `idProduct`
        (`idProduct`),
    CONSTRAINT `saleproduct_ibfk_1` FOREIGN KEY
        (`idSale`) REFERENCES `sale`
            (`idSale`),
    CONSTRAINT `saleproduct_ibfk_2` FOREIGN KEY
        (`idProduct`) REFERENCES `product`
            (`idProduct`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saleproduct`
--

LOCK TABLES `saleproduct` WRITE;
/*!40000 ALTER TABLE `saleproduct`
    DISABLE KEYS */;
INSERT INTO `
saleproduct`
VALUES (2, 288, 1, 1);
/*!40000 ALTER TABLE `saleproduct`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller`
(
    `idSeller`              int(5) NOT NULL,
    `idSupervisor`          int(5)      DEFAULT NULL,
    `branchSeller`          varchar(20) DEFAULT NULL,
    `firsNameSeller`        varchar(20) DEFAULT NULL,
    `secondNameSeller`      varchar(20) DEFAULT NULL,
    `middleNameSeller`      varchar(20) DEFAULT NULL,
    `lastNameSeller`        varchar(20) DEFAULT NULL,
    `phoneNumberSeller`     varchar(15) DEFAULT NULL,
    `dateIntegrationSeller` date        DEFAULT NULL,
    `emailSeller`           varchar(40) DEFAULT NULL,
    PRIMARY KEY
        (`idSeller`),
    UNIQUE KEY `idSeller`
        (`idSeller`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller`
    DISABLE KEYS */;
INSERT INTO `
seller`
VALUES (-1, 0, '', 'default', '', '', '', '0', '0000-00-00', ''),
       (0, 0, '', 'Administrador', '', '', '', '0', '0000-00-00', ''),
       (1, 1, 'Sucursal Antea', 'Mariana', '', 'Hernandez', 'Olvera', '4424717667', '2019-09-05', 'mariana@gmail.com');
/*!40000 ALTER TABLE `seller`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users`
(
    `nickname`     varchar(20) NOT NULL,
    `passwordUser` varchar(20) DEFAULT NULL,
    `typeUser`     int(1)      DEFAULT NULL,
    `idClient`     int(5)      DEFAULT '-1',
    `idSeller`     int(5)      DEFAULT '-1',
    `status`       int(1)      DEFAULT NULL,
    PRIMARY KEY
        (`nickname`),
    UNIQUE KEY `nickname`
        (`nickname`),
    KEY `idClient`
        (`idClient`),
    KEY `idSeller`
        (`idSeller`),
    CONSTRAINT `users_ibfk_1` FOREIGN KEY
        (`idClient`) REFERENCES `client`
            (`idClient`),
    CONSTRAINT `users_ibfk_2` FOREIGN KEY
        (`idSeller`) REFERENCES `seller`
            (`idSeller`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users`
    DISABLE KEYS */;
INSERT INTO `
users`
VALUES ('admin', 'admin', 0, -1, -1, NULL),
       ('alanUser', 'acceso', 2, 2, -1, NULL),
       ('JamaHCS', 'acceso', 2, 1, -1, NULL),
       ('marianaUser', 'acceso', 1, -1, 1, NULL);
/*!40000 ALTER TABLE `users`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 14:17:29
