CREATE DATABASE  IF NOT EXISTS `e_commercedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `e_commercedb`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: e_commercedb
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
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Solai','Raja','Solai@gmail.com','8596745241','6th st','Electronic city','Karnataka','560100'),(2,'Pathmesh','Khan','Pathmesh@gmail.com','9685635041','4th St','HSR layout','karnataka','560112'),(3,'Chitra','Subramanian','Chitra@gmail.com','9234567890','3rd Avenue','Jayanagar','Karnataka','560041'),(4,'Dinesh','Ravi','Dinesh@gmail.com','9345678901','4th Block','Whitefield','Karnataka','560066'),(5,'Elango','Sundar','Elango@gmail.com','9456789012','5th Stage','BTM Layout','Karnataka','560076'),(6,'Farah','Kumar','Farah@gmail.com','9567890123','6th Cross','Marathahalli','Karnataka','560037'),(7,'Gopal','Rajan','Gopal@gmail.com','9678901234','7th Main','Electronic City','Karnataka','560100'),(8,'Hema','Sekar','Hema@gmail.com','9789012345','8th Street','HSR Layout','Karnataka','560102'),(9,'Indra','Venkat','Indra@gmail.com','9890123456','9th Block','Bellandur','Karnataka','560103'),(10,'Jaya','Arun','Jaya@gmail.com','9901234567','10th Main','KR Puram','Karnataka','560036'),(11,'Karthik','Narayanan','Karthik@gmail.com','9012345678','11th Street','MG Road','Karnataka','560001'),(12,'Lakshmi','Ram','Lakshmi@gmail.com','9123456701','12th Cross','Banashankari','Karnataka','560085'),(13,'Muthu','Ganesh','Muthu@gmail.com','9234567012','13th Avenue','Yelahanka','Karnataka','560064'),(14,'Nalini','Bala','Nalini@gmail.com','9345670123','14th Main','Hebbal','Karnataka','560024'),(15,'Om','Prakash','Om@gmail.com','9456701234','15th Block','JP Nagar','Karnataka','560078'),(16,'Pooja','Krishna','Pooja@gmail.com','9567012345','16th Street','Richmond Town','Karnataka','560025'),(17,'Raj','Mohan','Raj@gmail.com','9670123456','17th Cross','Seshadripuram','Karnataka','560020'),(18,'Saranya','Deepak','Saranya@gmail.com','9781234567','18th Avenue','Ulsoor','Karnataka','560042'),(19,'Thiru','Siva','Thiru@gmail.com','9892345678','19th Main','Vijayanagar','Karnataka','560040'),(20,'Uma','Kannan','Uma@gmail.com','9903456789','20th Block','Malleshwaram','Karnataka','560003');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderDetailID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `UnitPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderDetailID`),
  KEY `OrderID` (`OrderID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,1,1,1,799.99),(2,1,3,1,29.99),(3,2,2,1,599.99),(4,2,3,1,29.99),(5,3,4,2,150.00),(6,3,5,1,50.00),(7,4,1,1,799.99),(8,4,6,3,100.00),(9,5,7,2,175.00),(10,5,3,1,29.99),(11,6,2,1,599.99),(12,6,8,1,220.00),(13,7,9,4,45.00),(14,7,10,2,85.00),(15,8,11,1,310.00),(16,8,5,3,50.00),(17,9,6,1,100.00),(18,9,12,5,25.00),(19,10,13,1,400.00),(20,10,3,1,29.99),(21,11,4,1,150.00),(22,11,2,2,599.99),(23,12,14,3,80.00),(24,12,5,1,100.00);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2025-02-01','Shipped',829.98),(2,2,'2025-02-02','Processing',629.98),(3,3,'2025-02-03','Cancelled',499.99),(4,4,'2025-02-04','Shipped',1200.00),(5,5,'2025-02-05','Delivered',349.75),(6,6,'2025-02-06','Processing',199.99),(7,7,'2025-02-07','Shipped',799.50),(8,8,'2025-02-08','Delivered',899.99),(9,9,'2025-02-09','Processing',159.99),(10,10,'2025-02-10','Cancelled',129.95),(11,11,'2025-02-11','Shipped',249.99),(12,12,'2025-02-12','Delivered',379.50),(13,13,'2025-02-13','Processing',999.99),(14,14,'2025-02-14','Shipped',679.89),(15,15,'2025-02-15','Cancelled',89.95),(16,16,'2025-02-16','Delivered',50.00),(17,17,'2025-02-17','Processing',745.99),(18,18,'2025-02-18','Shipped',600.00),(19,19,'2025-02-19','Processing',350.45),(20,20,'2025-02-20','Delivered',269.50);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'2025-02-01',829.98,'Credit Card'),(2,2,'2025-02-02',629.98,'PayPal'),(3,3,'2025-02-03',499.99,'Debit Card'),(4,4,'2025-02-04',1200.00,'Credit Card'),(5,5,'2025-02-05',349.75,'Cash'),(6,6,'2025-02-06',199.99,'PayPal'),(7,7,'2025-02-07',799.50,'Credit Card'),(8,8,'2025-02-08',899.99,'Debit Card'),(9,9,'2025-02-09',159.99,'Credit Card'),(10,10,'2025-02-10',129.95,'Cash'),(11,11,'2025-02-11',249.99,'PayPal'),(12,12,'2025-02-12',379.50,'Credit Card'),(13,13,'2025-02-13',999.99,'Debit Card'),(14,14,'2025-02-14',679.89,'Credit Card'),(15,15,'2025-02-15',89.95,'Cash'),(16,16,'2025-02-16',50.00,'PayPal'),(17,17,'2025-02-17',745.99,'Credit Card'),(18,18,'2025-02-18',600.00,'Debit Card'),(19,19,'2025-02-19',350.45,'Credit Card'),(20,20,'2025-02-20',269.50,'Cash');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Stock` int DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Laptop','Electronics',799.99,50),(2,'Smartphone','Electronics',599.99,100),(3,'Headphones','Accessories',29.99,200),(4,'Tablet','Electronics',499.99,75),(5,'Smartwatch','Accessories',199.99,150),(6,'Camera','Electronics',599.99,30),(7,'Monitor','Electronics',249.99,80),(8,'Keyboard','Accessories',49.99,300),(9,'Mouse','Accessories',39.99,250),(10,'Printer','Electronics',129.99,60),(11,'Router','Electronics',99.99,100),(12,'External Hard Drive','Accessories',89.99,120),(13,'Webcam','Electronics',59.99,90),(14,'Speaker','Accessories',79.99,110),(15,'Microwave','Home Appliances',149.99,40),(16,'Refrigerator','Home Appliances',999.99,20),(17,'Blender','Home Appliances',59.99,70),(18,'Coffee Maker','Home Appliances',89.99,90),(19,'Vacuum Cleaner','Home Appliances',199.99,30),(20,'Air Conditioner','Home Appliances',499.99,25);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-04 16:57:35
