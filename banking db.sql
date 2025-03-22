CREATE DATABASE  IF NOT EXISTS `banking` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `banking`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: banking
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `AccountID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `Balance` decimal(15,2) DEFAULT NULL,
  `OpeningDate` date DEFAULT NULL,
  PRIMARY KEY (`AccountID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,1,'Savings',1000.00,'2025-01-01'),(2,2,'Checking',500.00,'2025-01-10'),(3,3,'Savings',1500.00,'2025-01-15'),(4,4,'Checking',250.00,'2025-01-20'),(5,5,'Savings',2000.00,'2025-01-25'),(6,6,'Checking',300.00,'2025-01-30'),(7,7,'Savings',1200.00,'2025-02-01'),(8,8,'Checking',400.00,'2025-02-05'),(9,9,'Savings',1700.00,'2025-02-10'),(10,10,'Checking',450.00,'2025-02-15'),(11,11,'Savings',2200.00,'2025-02-20'),(12,12,'Checking',500.00,'2025-02-25'),(13,13,'Savings',1300.00,'2025-03-01'),(14,14,'Checking',600.00,'2025-03-05'),(15,15,'Savings',1800.00,'2025-03-10'),(16,16,'Checking',700.00,'2025-03-15'),(17,17,'Savings',2300.00,'2025-03-20'),(18,18,'Checking',800.00,'2025-03-25'),(19,19,'Savings',2400.00,'2025-03-30'),(20,20,'Checking',900.00,'2025-04-05');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `ZipCode` varchar(10) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Arun','Kumar','arun.kumar@gamil.com','+91-9876543210','12, Mount Road','Chennai','Tamil Nadu','600001','2001-05-15'),(2,'Balu','Rajan','balu.rajan@gamil.com','+91-9876543211','13, Besant Nagar','Chennai','Tamil Nadu','600002','2000-08-20'),(3,'Charan','Murthy','charan.murthy@gamil.com','+91-9876543212','14, T Nagar','Chennai','Tamil Nadu','600003','2002-11-30'),(4,'Dinesh','Ravi','dinesh.ravi@gamil.com','+91-9876543213','15, Anna Nagar','Chennai','Tamil Nadu','600004','2003-03-25'),(5,'Eshwar','Shankar','eshwar.shankar@gamil.com','+91-9876543214','16, Kodambakkam','Chennai','Tamil Nadu','600005','2004-07-10'),(6,'Farook','Ahmed','farook.ahmed@gamil.com','+91-9876543215','17, Mylapore','Chennai','Tamil Nadu','600006','2005-12-15'),(7,'Gopi','Krishna','gopi.krishna@gamil.com','+91-9876543216','18, Adyar','Chennai','Tamil Nadu','600007','2006-09-20'),(8,'Hari','Karthik','hari.karthik@gamil.com','+91-9876543217','19, Velachery','Chennai','Tamil Nadu','600008','2007-04-05'),(9,'Indra','Balu','indra.balu@gamil.com','+91-9876543218','20, Thiruvanmiyur','Chennai','Tamil Nadu','600009','2008-01-20'),(10,'Jay','Raghavan','jay.raghavan@gamil.com','+91-9876543219','21, Guindy','Chennai','Tamil Nadu','600010','2009-06-15'),(11,'Kiran','Naveen','kiran.naveen@gamil.com','+91-9876543220','22, Saidapet','Chennai','Tamil Nadu','600011','2010-05-10'),(12,'Latha','Siva','latha.siva@gamil.com','+91-9876543221','23, Tambaram','Chennai','Tamil Nadu','600012','2001-12-25'),(13,'Muthu','Vel','muthu.vel@gamil.com','+91-9876543222','24, Perambur','Chennai','Tamil Nadu','600013','2002-02-15'),(14,'Nirmal','Sekar','nirmal.sekar@gamil.com','+91-9876543223','25, Triplicane','Chennai','Tamil Nadu','600014','2003-08-25'),(15,'Oviya','Ravi','oviya.ravi@gamil.com','+91-9876543224','26, Egmore','Chennai','Tamil Nadu','600015','2004-04-05'),(16,'Priya','Kumar','priya.kumar@gamil.com','+91-9876543225','27, Thirumangalam','Chennai','Tamil Nadu','600016','2005-10-20'),(17,'Raj','Singh','raj.singh@gamil.com','+91-9876543226','28, Vepery','Chennai','Tamil Nadu','600017','2006-11-25'),(18,'Sita','Ram','sita.ram@gamil.com','+91-9876543227','29, Pallavaram','Chennai','Tamil Nadu','600018','2007-03-15'),(19,'Thiru','Nathan','thiru.nathan@gamil.com','+91-9876543228','30, Royapettah','Chennai','Tamil Nadu','600019','2008-06-10'),(20,'Uma','Mahesh','uma.mahesh@gamil.com','+91-9876543229','31, Purasawalkam','Chennai','Tamil Nadu','600020','2009-09-25');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans` (
  `LoanID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `LoanAmount` decimal(15,2) DEFAULT NULL,
  `InterestRate` decimal(5,2) DEFAULT NULL,
  `LoanStartDate` date DEFAULT NULL,
  `LoanEndDate` date DEFAULT NULL,
  PRIMARY KEY (`LoanID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (1,1,5000.00,5.00,'2025-02-01','2030-02-01'),(2,2,10000.00,4.50,'2025-02-10','2035-02-10'),(3,3,7500.00,4.75,'2025-03-01','2032-03-01'),(4,4,6000.00,4.25,'2025-03-10','2031-03-10'),(5,5,8500.00,5.25,'2025-03-20','2033-03-20'),(6,6,9500.00,4.90,'2025-03-30','2034-03-30'),(7,7,11000.00,5.10,'2025-04-05','2035-04-05'),(8,8,7000.00,4.85,'2025-04-15','2032-04-15'),(9,9,12000.00,4.65,'2025-04-25','2037-04-25'),(10,10,6500.00,5.30,'2025-05-05','2031-05-05'),(11,11,10500.00,4.55,'2025-05-15','2036-05-15'),(12,12,5500.00,4.95,'2025-05-25','2030-05-25'),(13,13,8000.00,5.15,'2025-06-01','2033-06-01'),(14,14,11500.00,4.75,'2025-06-10','2038-06-10'),(15,15,9300.00,4.60,'2025-06-20','2035-06-20'),(16,16,10200.00,5.35,'2025-06-30','2034-06-30'),(17,17,7200.00,4.50,'2025-07-10','2033-07-10'),(18,18,9700.00,4.80,'2025-07-20','2036-07-20'),(19,19,12300.00,5.00,'2025-07-30','2039-07-30'),(20,20,8600.00,5.20,'2025-08-10','2032-08-10');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `TransactionID` int NOT NULL AUTO_INCREMENT,
  `AccountID` int DEFAULT NULL,
  `TransactionDate` date DEFAULT NULL,
  `TransactionType` varchar(50) DEFAULT NULL,
  `Amount` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `AccountID` (`AccountID`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`AccountID`) REFERENCES `accounts` (`AccountID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,'2025-01-15','Deposit',200.00),(2,1,'2025-01-20','Withdrawal',50.00),(3,2,'2025-01-25','Deposit',300.00),(4,2,'2025-01-30','Withdrawal',100.00),(5,3,'2025-02-05','Deposit',400.00),(6,3,'2025-02-10','Withdrawal',150.00),(7,4,'2025-02-15','Deposit',500.00),(8,4,'2025-02-20','Withdrawal',200.00),(9,5,'2025-02-25','Deposit',600.00),(10,5,'2025-03-01','Withdrawal',250.00),(11,6,'2025-03-05','Deposit',700.00),(12,6,'2025-03-10','Withdrawal',300.00),(13,7,'2025-03-15','Deposit',800.00),(14,7,'2025-03-20','Withdrawal',350.00),(15,8,'2025-03-25','Deposit',900.00),(16,8,'2025-03-30','Withdrawal',400.00),(17,9,'2025-04-05','Deposit',1000.00),(18,9,'2025-04-10','Withdrawal',450.00),(19,10,'2025-04-15','Deposit',1100.00),(20,10,'2025-04-20','Withdrawal',500.00);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-04 19:19:39
