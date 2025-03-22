CREATE DATABASE  IF NOT EXISTS `inventorymanagement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventorymanagement`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: inventorymanagement
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Electronics','Devices and gadgets including phones, laptops, and accessories.'),(2,'Clothing','Apparel for men, women, and children including shirts, pants, and dresses.'),(3,'Home Appliances','Household devices such as refrigerators, washing machines, and microwaves.'),(4,'Furniture','Indoor and outdoor furniture including sofas, tables, and chairs.'),(5,'Books','Printed and digital books across various genres and subjects.'),(6,'Sports Equipment','Gear and equipment for various sports and fitness activities.'),(7,'Toys','Children’s toys including educational and recreational items.'),(8,'Groceries','Food items, beverages, and household essentials.'),(9,'Beauty Products','Cosmetics, skincare, and personal care products.'),(10,'Automotive','Vehicle parts, accessories, and maintenance products.'),(11,'Jewelry','Ornaments including rings, necklaces, bracelets, and earrings.'),(12,'Health Products','Healthcare items including medicines, supplements, and medical devices.'),(13,'Footwear','Shoes, sandals, and other types of footwear for all ages.'),(14,'Office Supplies','Stationery and equipment for office and school use.'),(15,'Garden Supplies','Tools, plants, and accessories for gardening and landscaping.'),(16,'Pet Supplies','Food, toys, and accessories for pets.'),(17,'Music Instruments','Various musical instruments including guitars, pianos, and drums.'),(18,'Kitchenware','Cookware, utensils, and kitchen gadgets.'),(19,'Travel Accessories','Luggage, bags, and travel-related items.'),(20,'Baby Products','Products for infants and toddlers including clothing, toys, and care items.');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `order_detail_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,1,1,3,799.99),(2,1,2,5,150.00),(3,2,3,10,25.00),(4,2,4,7,59.99),(5,3,5,2,700.00),(6,3,6,1,1200.00),(7,4,7,1,350.00),(8,4,8,3,120.00),(9,5,9,4,45.00),(10,5,10,10,10.00),(11,6,11,5,25.00),(12,6,12,3,50.00),(13,7,13,2,70.00),(14,7,14,6,25.00),(15,8,15,12,10.00),(16,8,16,20,5.00),(17,9,17,4,20.00),(18,9,18,2,30.00),(19,10,19,6,100.00),(20,10,20,8,40.00),(21,11,21,1,500.00),(22,11,22,3,70.00),(23,12,23,10,15.00),(24,12,24,8,20.00),(25,13,25,4,120.00),(26,13,26,5,90.00),(27,14,27,50,5.00),(28,14,28,10,10.00),(29,15,29,3,25.00),(30,15,30,4,30.00),(31,16,31,8,30.00),(32,16,32,7,15.00),(33,17,33,3,150.00),(34,17,34,2,250.00),(35,18,35,12,35.00),(36,18,36,5,60.00),(37,19,37,4,75.00),(38,19,38,9,20.00),(39,20,39,2,200.00),(40,20,40,1,80.00);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `supplier_id` int NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2024-08-01',12,950.00),(2,'2024-08-01',6,850.00),(3,'2024-08-01',11,850.00),(4,'2024-08-02',3,1350.00),(5,'2024-08-02',8,1120.00),(6,'2024-08-03',7,950.00),(7,'2024-08-03',20,650.00),(8,'2024-09-03',16,1180.00),(9,'2024-08-04',2,980.00),(10,'2024-09-05',5,970.00),(11,'2024-09-06',12,1140.00),(12,'2024-09-06',4,780.00),(13,'2024-09-06',3,1250.00),(14,'2024-08-07',9,760.00),(15,'2024-09-08',19,1100.00),(16,'2024-09-08',16,1200.00),(17,'2024-08-08',1,1100.00),(18,'2024-08-09',10,1400.00),(19,'2024-09-09',9,790.00),(20,'2024-09-10',18,800.00),(21,'2024-09-10',19,1150.00),(22,'2024-09-11',10,1300.00),(23,'2024-09-11',1,1150.00),(24,'2024-08-12',7,1020.00),(25,'2024-08-12',1,1200.00),(26,'2024-09-12',18,820.00),(27,'2024-08-13',2,920.00),(28,'2024-08-13',3,1400.00),(29,'2024-09-14',12,1100.00),(30,'2024-09-14',14,1320.00),(31,'2024-09-14',15,860.00),(32,'2024-08-15',6,860.00),(33,'2024-08-15',18,780.00),(34,'2024-08-15',8,1080.00),(35,'2024-08-15',5,1100.00),(36,'2024-09-16',13,720.00),(37,'2024-09-16',13,750.00),(38,'2024-08-17',4,820.00),(39,'2024-08-17',9,720.00),(40,'2024-08-17',16,1250.00),(41,'2024-09-19',20,690.00),(42,'2024-09-20',17,970.00),(43,'2024-08-20',8,1150.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `category_id` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int NOT NULL,
  `reorder_level` int NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'iPhone 13',1,799.99,50,10),(2,'Sony Headphones',1,150.00,60,15),(3,'Adidas T-shirt',2,25.00,150,30),(4,'Levi\'s Jeans',2,59.99,100,20),(5,'LG Washing Machine',3,700.00,20,5),(6,'Samsung Refrigerator',3,1200.00,30,5),(7,'Wooden Dining Table',4,350.00,15,3),(8,'Office Chair',4,120.00,40,10),(9,'Harry Potter Book Set',5,45.00,200,50),(10,'The Great Gatsby',5,10.00,250,60),(11,'Yoga Mat',6,25.00,80,10),(12,'Dumbbell Set',6,50.00,70,10),(13,'Lego Star Wars Set',7,70.00,60,15),(14,'Barbie Doll',7,25.00,80,20),(15,'Organic Olive Oil',8,10.00,150,30),(16,'Pack of Pasta',8,5.00,200,40),(17,'Lipstick',9,20.00,120,25),(18,'Face Cream',9,30.00,110,25),(19,'Car Battery',10,100.00,40,10),(20,'Motor Oil',10,40.00,50,10),(21,'Gold Necklace',11,500.00,20,5),(22,'Silver Earrings',11,70.00,40,10),(23,'Vitamin C Supplement',12,15.00,180,40),(24,'Fish Oil Capsules',12,20.00,160,30),(25,'Nike Running Shoes',13,120.00,70,15),(26,'Puma Sneakers',13,90.00,85,20),(27,'Printer Paper',14,5.00,300,50),(28,'Stapler',14,10.00,200,50),(29,'Garden Shovel',15,25.00,50,10),(30,'Garden Hose',15,30.00,60,15),(31,'Dog Food',16,30.00,90,20),(32,'Cat Litter',16,15.00,100,20),(33,'Acoustic Guitar',17,150.00,25,5),(34,'Electric Keyboard',17,250.00,20,5),(35,'Non-stick Frying Pan',18,35.00,100,20),(36,'Blender',18,60.00,75,15),(37,'Travel Backpack',19,75.00,60,10),(38,'Travel Pillow',19,20.00,90,20),(39,'Baby Stroller',20,200.00,30,5),(40,'Baby Monitor',20,80.00,40,10);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) NOT NULL,
  `contact_name` varchar(50) DEFAULT NULL,
  `address` text,
  `phone_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Chennai Supplies','John Doe','123 Elm Street, Chennai','987654321'),(2,'Coimbatore Traders','Jane Smith','Coimbatore','8765432109'),(3,'Madurai Mart','Bob Johnson','Madurai','7654321098'),(4,'Tiruchirappalli Goods','Alice Brown','Tiruchirappalli','6543210987'),(5,'Salem Wholesale','Tom White','Salem','5432109876'),(6,'Tiruppur Supply','Emma Green','Tiruppur','4321098765'),(7,'Erode Prime','David Black','Erode','3210987654'),(8,'Vellore Value','Sophia Blue','Vellore','2109876543'),(9,'Tirunelveli Super','Oliver Gray','Tirunelveli','1098765432'),(10,'Thoothukudi Best','Isabella Red','Thoothukudi','1987654321'),(11,'Dindigul Quality','Liam Yellow','Dindigul','8765432101'),(12,'Thanjavur Reliable','Ava Purple','Thanjavur','7654321091'),(13,'Sivaganga Top','Ethan Orange','Sivaganga','6543210981'),(14,'Theni Superior','Mia Pink','Theni','5432109871'),(15,'Namakkal Smart','Noah Brown','Namakkal','4321098761'),(16,'Karur Efficient','Amelia Green','Karur','3210987651'),(17,'Virudhunagar Hub','James White','Virudhunagar','2109876541'),(18,'Nagapattinam Express','Charlotte Blue','Nagapattinam','1098765431'),(19,'Kanchipuram Trusted','Benjamin Black','Kanchipuram','1987654320'),(20,'Ramanathapuram Elite','Harper Gray','Ramanathapuram','9876543201');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-04 21:14:40
