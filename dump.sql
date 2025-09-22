-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: airbnb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodation` (
  `accommodation_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `description` text,
  `photo_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `availability_id` int DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `acc_type_id` int DEFAULT NULL,
  `cancellation_policy_id` int DEFAULT NULL,
  `price_night` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`accommodation_id`),
  KEY `user_id` (`user_id`),
  KEY `photo_id` (`photo_id`),
  KEY `location_id` (`location_id`),
  KEY `availability_id` (`availability_id`),
  KEY `currency_id` (`currency_id`),
  KEY `acc_type_id` (`acc_type_id`),
  KEY `cancellation_policy_id` (`cancellation_policy_id`),
  CONSTRAINT `accommodation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `accommodation_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`photo_id`),
  CONSTRAINT `accommodation_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `accommodation_ibfk_4` FOREIGN KEY (`availability_id`) REFERENCES `availability` (`availability_id`),
  CONSTRAINT `accommodation_ibfk_5` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`currency_id`),
  CONSTRAINT `accommodation_ibfk_6` FOREIGN KEY (`acc_type_id`) REFERENCES `accommodation_type` (`acc_type_id`),
  CONSTRAINT `accommodation_ibfk_7` FOREIGN KEY (`cancellation_policy_id`) REFERENCES `cancellation_policy` (`cancellation_policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation`
--

LOCK TABLES `accommodation` WRITE;
/*!40000 ALTER TABLE `accommodation` DISABLE KEYS */;
INSERT INTO `accommodation` VALUES (141,1,'Cozy apartment near the city center, perfect for a weekend getaway.',1,3,1,1,2,24,100.00),(142,2,'Spacious villa with a beautiful garden and private pool.',2,4,2,2,1,25,250.00),(143,3,'Modern studio apartment, ideal for solo travelers or couples.',3,5,3,1,3,26,75.00),(144,4,'Luxury penthouse with a stunning city view.',4,6,4,3,1,27,400.00),(145,5,'Charming cottage in the countryside, a peaceful retreat.',5,7,5,2,2,28,120.00),(146,6,'Beachfront bungalow, perfect for a tropical vacation.',6,8,6,1,3,29,180.00),(147,7,'Comfortable apartment with a fully equipped kitchen and living space.',7,9,7,2,2,30,90.00),(148,8,'Private room in a shared house, ideal for budget travelers.',8,10,8,3,1,32,50.00),(149,9,'Cozy guest house in the heart of the city, close to public transport.',9,11,9,1,2,31,85.00),(150,10,'Luxury resort with multiple amenities including a spa and restaurant.',10,12,10,3,1,32,350.00),(151,11,'Elegant apartment in a high-rise building, close to shopping areas.',11,13,11,2,3,33,140.00),(152,12,'Rustic cabin in the mountains, perfect for nature lovers.',12,14,12,1,2,34,110.00),(153,13,'Charming studio with a balcony overlooking the beach.',13,15,13,1,2,35,130.00),(154,14,'Spacious family house with a large garden and BBQ area.',14,16,14,2,1,36,200.00),(155,15,'Eco-friendly apartment with solar panels and green amenities.',15,17,15,3,2,37,115.00),(156,16,'Modern and stylish loft in a trendy neighborhood.',16,18,16,4,3,38,150.00),(157,17,'Countryside farmhouse with a fully operational kitchen and outdoor space.',17,19,17,5,1,39,90.00),(158,18,'Cozy apartment with easy access to public transport and restaurants.',18,20,18,6,2,40,80.00),(159,19,'Spacious suite with a private balcony and jacuzzi.',19,1,19,7,3,21,300.00),(160,20,'Beautiful rural estate perfect for large gatherings or family vacations.',20,2,20,8,1,22,220.00);
/*!40000 ALTER TABLE `accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation_amenities`
--

DROP TABLE IF EXISTS `accommodation_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodation_amenities` (
  `amenity_id` int DEFAULT NULL,
  `accommodation_id` int DEFAULT NULL,
  KEY `amenity_id` (`amenity_id`),
  KEY `accommodation_id` (`accommodation_id`),
  CONSTRAINT `accommodation_amenities_ibfk_1` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`amenity_id`),
  CONSTRAINT `accommodation_amenities_ibfk_2` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation` (`accommodation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_amenities`
--

LOCK TABLES `accommodation_amenities` WRITE;
/*!40000 ALTER TABLE `accommodation_amenities` DISABLE KEYS */;
INSERT INTO `accommodation_amenities` VALUES (1,141),(2,141),(3,142),(4,142),(5,143),(6,143),(7,144),(8,144),(9,145),(10,145),(11,146),(12,146),(13,147),(14,147),(15,148),(16,148),(17,149),(18,149),(19,150),(20,150);
/*!40000 ALTER TABLE `accommodation_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation_availability`
--

DROP TABLE IF EXISTS `accommodation_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodation_availability` (
  `accommodation_id` int NOT NULL,
  `availability_id` int NOT NULL,
  PRIMARY KEY (`accommodation_id`,`availability_id`),
  KEY `availability_id` (`availability_id`),
  CONSTRAINT `accommodation_availability_ibfk_1` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation` (`accommodation_id`),
  CONSTRAINT `accommodation_availability_ibfk_2` FOREIGN KEY (`availability_id`) REFERENCES `availability` (`availability_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_availability`
--

LOCK TABLES `accommodation_availability` WRITE;
/*!40000 ALTER TABLE `accommodation_availability` DISABLE KEYS */;
INSERT INTO `accommodation_availability` VALUES (141,1),(142,2),(141,3),(143,5),(143,6),(144,7),(144,8),(145,9),(145,10),(146,11),(146,12),(147,13),(147,14),(148,15),(148,16),(149,17),(149,18),(150,19),(150,20);
/*!40000 ALTER TABLE `accommodation_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation_type`
--

DROP TABLE IF EXISTS `accommodation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodation_type` (
  `acc_type_id` int NOT NULL AUTO_INCREMENT,
  `acc_type_name` varchar(50) DEFAULT NULL,
  `number_rooms` int DEFAULT NULL,
  `max_guests` int DEFAULT NULL,
  PRIMARY KEY (`acc_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_type`
--

LOCK TABLES `accommodation_type` WRITE;
/*!40000 ALTER TABLE `accommodation_type` DISABLE KEYS */;
INSERT INTO `accommodation_type` VALUES (1,'Apartment',2,4),(2,'House',3,6),(3,'Studio',1,2),(4,'Loft',1,3),(5,'Villa',5,10),(6,'Cottage',3,5),(7,'Bungalow',2,4),(8,'Hostel',1,1),(9,'Guesthouse',3,6),(10,'Cabin',2,4),(11,'Tiny House',1,2),(12,'Penthouse',4,8),(13,'Chalet',3,6),(14,'Farmhouse',4,8),(15,'Treehouse',1,2),(16,'Boat House',2,4),(17,'Townhouse',3,6),(18,'Duplex',2,5),(19,'Camper Van',1,3),(20,'Castle',10,20);
/*!40000 ALTER TABLE `accommodation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `amenity_id` int NOT NULL AUTO_INCREMENT,
  `amenity_type` varchar(50) DEFAULT NULL,
  `amenity_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`amenity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'Wi-Fi','Available'),(2,'Parking','Available'),(3,'Pool','Unavailable'),(4,'Gym','Available'),(5,'Air Conditioning','Available'),(6,'Heating','Available'),(7,'Kitchen','Available'),(8,'TV','Available'),(9,'Laundry','Available'),(10,'Hot Tub','Unavailable'),(11,'Elevator','Available'),(12,'Breakfast','Available'),(13,'Pets Allowed','Available'),(14,'Balcony','Available'),(15,'Smoking Allowed','Unavailable'),(16,'Garden','Available'),(17,'BBQ','Available'),(18,'Fireplace','Unavailable'),(19,'Security System','Available'),(20,'Smart Lock','Available');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability`
--

DROP TABLE IF EXISTS `availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availability` (
  `availability_id` int NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`availability_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability`
--

LOCK TABLES `availability` WRITE;
/*!40000 ALTER TABLE `availability` DISABLE KEYS */;
INSERT INTO `availability` VALUES (1,'2025-04-01','2025-04-10','Available'),(2,'2025-04-11','2025-04-20','Booked'),(3,'2025-04-21','2025-04-30','Available'),(4,'2025-05-01','2025-05-10','Booked'),(5,'2025-05-11','2025-05-20','Available'),(6,'2025-05-21','2025-05-30','Booked'),(7,'2025-06-01','2025-06-10','Available'),(8,'2025-06-11','2025-06-20','Booked'),(9,'2025-06-21','2025-06-30','Available'),(10,'2025-07-01','2025-07-10','Booked'),(11,'2025-07-11','2025-07-20','Available'),(12,'2025-07-21','2025-07-30','Booked'),(13,'2025-08-01','2025-08-10','Available'),(14,'2025-08-11','2025-08-20','Booked'),(15,'2025-08-21','2025-08-30','Available'),(16,'2025-09-01','2025-09-10','Booked'),(17,'2025-09-11','2025-09-20','Available'),(18,'2025-09-21','2025-09-30','Booked'),(19,'2025-10-01','2025-10-10','Available'),(20,'2025-10-11','2025-10-20','Booked');
/*!40000 ALTER TABLE `availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `accommodation_id` int DEFAULT NULL,
  `promotion_id` int DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `user_id` (`user_id`),
  KEY `accommodation_id` (`accommodation_id`),
  KEY `promotion_id` (`promotion_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation` (`accommodation_id`),
  CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'2025-04-01','2025-04-05',1,141,NULL,450.00),(2,'2025-04-10','2025-04-15',2,142,1,750.00),(3,'2025-04-05','2025-04-07',3,143,NULL,300.00),(4,'2025-04-12','2025-04-17',4,144,2,950.00),(5,'2025-05-01','2025-05-10',5,145,NULL,1500.00),(6,'2025-05-15','2025-05-20',6,146,3,1100.00),(7,'2025-06-05','2025-06-10',7,147,NULL,850.00),(8,'2025-06-15','2025-06-20',8,148,1,1200.00),(9,'2025-07-01','2025-07-07',9,149,2,980.00),(10,'2025-07-10','2025-07-15',10,150,NULL,720.00),(11,'2025-08-01','2025-08-05',11,151,3,500.00),(12,'2025-08-10','2025-08-15',12,152,NULL,880.00),(13,'2025-09-01','2025-09-07',13,153,1,1050.00),(14,'2025-09-10','2025-09-15',14,154,2,1120.00),(15,'2025-10-01','2025-10-05',15,155,NULL,600.00),(16,'2025-10-10','2025-10-15',16,156,3,1300.00),(17,'2025-11-01','2025-11-07',17,157,NULL,1400.00),(18,'2025-11-10','2025-11-15',18,158,1,1600.00),(19,'2025-12-01','2025-12-05',19,159,2,1800.00),(20,'2025-12-10','2025-12-15',20,160,NULL,900.00);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancellation_policy`
--

DROP TABLE IF EXISTS `cancellation_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancellation_policy` (
  `cancellation_policy_id` int NOT NULL AUTO_INCREMENT,
  `description` text,
  `cancellation_deadline` int DEFAULT NULL,
  PRIMARY KEY (`cancellation_policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancellation_policy`
--

LOCK TABLES `cancellation_policy` WRITE;
/*!40000 ALTER TABLE `cancellation_policy` DISABLE KEYS */;
INSERT INTO `cancellation_policy` VALUES (21,'Full refund if canceled 7 days before check-in',7),(22,'Full refund if canceled 5 days before check-in',5),(23,'50% refund if canceled 3 days before check-in',3),(24,'No refund if canceled within 24 hours of check-in',1),(25,'Flexible: Free cancellation until 24 hours before check-in',1),(26,'Moderate: Free cancellation until 3 days before check-in',3),(27,'Strict: Free cancellation until 7 days before check-in',7),(28,'Super Strict: Non-refundable after booking',0),(29,'Long-term stay: 50% refund if canceled within 14 days',14),(30,'Non-refundable: No refunds for any cancellation',0),(31,'Refundable with a fee: 20% penalty if canceled',5),(32,'Holiday Special: No refunds during peak seasons',0),(33,'COVID-19 exception: Full refund with medical proof',1),(34,'Group booking: 30% refund if canceled within 10 days',10),(35,'Early bird special: 75% refund if canceled within 30 days',30),(36,'Same-day booking: No cancellations allowed',0),(37,'Weekend special: 25% refund for cancellations within 2 days',2),(38,'Extended stay: Partial refund within 21 days',21),(39,'Short stay: Non-refundable after 48 hours',2),(40,'Custom policy: Contact support for cancellations',5);
/*!40000 ALTER TABLE `cancellation_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaints` (
  `complaint_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `accommodation_id` int DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`complaint_id`),
  KEY `user_id` (`user_id`),
  KEY `accommodation_id` (`accommodation_id`),
  CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `complaints_ibfk_2` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation` (`accommodation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES (21,1,141,'Noisy neighbors during the stay.','2025-02-12 10:15:00'),(22,2,151,'Air conditioning was not working.','2025-02-18 14:30:00'),(23,3,142,'Host was not responsive.','2025-02-25 09:45:00'),(24,4,152,'Room was not clean on arrival.','2025-03-02 20:10:00'),(25,5,143,'Wi-Fi was very slow.','2025-03-08 13:00:00'),(26,6,153,'Check-in was delayed by 2 hours.','2025-03-15 18:20:00'),(27,7,144,'Hidden fees were charged.','2025-03-22 21:45:00'),(28,8,154,'Shower had no hot water.','2025-03-28 16:10:00'),(29,9,145,'Bed was uncomfortable.','2025-04-05 07:30:00'),(30,10,155,'Misleading photos on the listing.','2025-04-12 23:50:00'),(31,11,146,'Host canceled last minute.','2025-04-20 10:05:00'),(32,12,156,'Security concerns at the property.','2025-04-25 19:25:00'),(33,13,146,'The heating system was broken.','2025-05-01 15:40:00'),(34,14,157,'Bathroom was leaking.','2025-05-07 12:15:00'),(35,15,148,'Strong cigarette smell in the room.','2025-05-14 09:55:00'),(36,16,158,'Unhelpful customer support.','2025-05-21 22:30:00'),(37,17,149,'Loud construction nearby.','2025-05-28 08:20:00'),(38,18,150,'Key card was not working.','2025-06-02 17:50:00'),(39,19,150,'Water pressure was too low.','2025-06-08 13:10:00'),(40,20,160,'Dirty sheets on arrival.','2025-06-15 11:45:00');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `currency_id` int NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(10) DEFAULT NULL,
  `exchange_rate` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD',1.0000),(2,'EUR',0.9200),(3,'GBP',0.7800),(4,'JPY',150.4500),(5,'AUD',1.5200),(6,'CAD',1.3500),(7,'CHF',0.8800),(8,'CNY',7.1600),(9,'SEK',10.5600),(10,'NZD',1.6500),(11,'SGD',1.3500),(12,'HKD',7.8500),(13,'NOK',10.4200),(14,'KRW',1300.4500),(15,'INR',83.4500),(16,'BRL',5.2800),(17,'ZAR',18.7500),(18,'RUB',93.0000),(19,'MXN',17.2500),(20,'TRY',31.4500);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'USA','New York','NY','123 Main St',40.71277600,-74.00597400),(2,'USA','Los Angeles','CA','456 Sunset Blvd',34.05223500,-118.24368300),(3,'Canada','Toronto','ON','789 Queen St',43.65107000,-79.34701500),(4,'UK','London','England','321 Baker St',51.50735100,-0.12775800),(5,'France','Paris','Ile-de-France','222 Champs-Élysées',48.85661300,2.35222200),(6,'Germany','Berlin','Berlin','555 Alexanderplatz',52.52000800,13.40495400),(7,'Italy','Rome','Lazio','777 Via Condotti',41.90278200,12.49636600),(8,'Spain','Barcelona','Catalonia','888 La Rambla',41.38506400,2.17340400),(9,'Japan','Tokyo','Tokyo','999 Shibuya St',35.68948700,139.69171100),(10,'China','Shanghai','Shanghai','111 Nanjing Rd',31.23039100,121.47370100),(11,'Brazil','Rio de Janeiro','RJ','222 Copacabana',-22.90684700,-43.17289700),(12,'Australia','Sydney','NSW','333 Bondi Beach',-33.86882000,151.20929000),(13,'Mexico','Cancun','QR','444 Beachfront Ave',21.16190700,-86.85152400),(14,'India','Mumbai','MH','555 Gateway Rd',19.07609000,72.87742600),(15,'South Africa','Cape Town','WC','666 Table Mountain Rd',-33.92487000,18.42405500),(16,'UAE','Dubai','Dubai','777 Palm Jumeirah',25.27698700,55.29624900),(17,'Thailand','Bangkok','Bangkok','888 Sukhumvit Rd',13.75633100,100.50176200),(18,'Russia','Moscow','Moscow','999 Red Square',55.75582500,37.61729800),(19,'Argentina','Buenos Aires','BA','1010 Florida St',-34.60372200,-58.38159200),(20,'Turkey','Istanbul','Istanbul','1111 Taksim Sq',41.00824000,28.97835900);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `message_content` text,
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,2,'Hi, I wanted to ask if the accommodation has Wi-Fi available?'),(2,2,1,'Yes, the accommodation has free Wi-Fi available.'),(3,3,4,'Could you confirm if the property has air conditioning?'),(4,4,3,'Yes, it does. The air conditioning is available in all rooms.'),(5,5,6,'Can I get a discount for a long stay?'),(6,6,5,'You can request a discount by contacting the host directly.'),(7,7,8,'I was wondering if I can add an extra bed for my stay?'),(8,8,7,'Please contact the host to confirm if an extra bed is available.'),(9,9,10,'How do I change my reservation dates?'),(10,10,9,'You can change the dates by going to your booking page and selecting new dates.'),(11,11,12,'Do you have pet-friendly accommodations?'),(12,12,11,'Yes, some of our properties are pet-friendly. Check the listing details.'),(13,13,14,'Is there a swimming pool at the property?'),(14,14,13,'Yes, there is an outdoor swimming pool available.'),(15,15,16,'How far is the property from the city center?'),(16,16,15,'The property is located 10 km from the city center.'),(17,17,18,'Do you provide towels for guests?'),(18,18,17,'Yes, towels are provided for all guests.'),(19,19,20,'What is the check-out time at the property?'),(20,20,19,'Check-out time is by 11 AM.');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int DEFAULT NULL,
  `method_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`),
  KEY `booking_id` (`booking_id`),
  KEY `method_id` (`method_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`method_id`) REFERENCES `payment_method` (`method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,1,450.00,'2025-04-01 00:00:00'),(2,2,2,750.00,'2025-04-10 00:00:00'),(3,3,1,300.00,'2025-04-05 00:00:00'),(4,4,3,950.00,'2025-04-12 00:00:00'),(5,5,2,1500.00,'2025-05-01 00:00:00'),(6,6,1,1100.00,'2025-05-15 00:00:00'),(7,7,3,850.00,'2025-06-05 00:00:00'),(8,8,2,1200.00,'2025-06-15 00:00:00'),(9,9,1,980.00,'2025-07-01 00:00:00'),(10,10,3,720.00,'2025-07-10 00:00:00'),(11,11,2,500.00,'2025-08-01 00:00:00'),(12,12,1,880.00,'2025-08-10 00:00:00'),(13,13,3,1050.00,'2025-09-01 00:00:00'),(14,14,2,1120.00,'2025-09-10 00:00:00'),(15,15,1,600.00,'2025-10-01 00:00:00'),(16,16,3,1300.00,'2025-10-10 00:00:00'),(17,17,2,1400.00,'2025-11-01 00:00:00'),(18,18,1,1600.00,'2025-11-10 00:00:00'),(19,19,3,1800.00,'2025-12-01 00:00:00'),(20,20,2,900.00,'2025-12-10 00:00:00');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `method_id` int NOT NULL AUTO_INCREMENT,
  `account_details` varchar(255) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'**** **** **** 1234','Credit Card'),(2,'**** **** **** 5678','Debit Card'),(3,'paypal_user1@example.com','PayPal'),(4,'paypal_user2@example.com','PayPal'),(5,'account_123456','Bank Transfer'),(6,'account_654321','Bank Transfer'),(7,'bitcoin_wallet_1','Cryptocurrency'),(8,'bitcoin_wallet_2','Cryptocurrency'),(9,'applepay_user1','Apple Pay'),(10,'applepay_user2','Apple Pay'),(11,'googlepay_user1','Google Pay'),(12,'googlepay_user2','Google Pay'),(13,'venmo_user1','Venmo'),(14,'venmo_user2','Venmo'),(15,'stripe_user1','Stripe'),(16,'stripe_user2','Stripe'),(17,'cash_payment','Cash'),(18,'check_payment','Check'),(19,'western_union_1','Western Union'),(20,'western_union_2','Western Union');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `photo_id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `image_type` varchar(50) DEFAULT NULL,
  `date_uploaded` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'https://example.com/photo1.jpg','jpeg','2025-01-01 10:00:00'),(2,'https://example.com/photo2.png','png','2025-01-02 11:30:00'),(3,'https://example.com/photo3.jpg','jpeg','2025-01-03 12:45:00'),(4,'https://example.com/photo4.png','png','2025-01-04 14:20:00'),(5,'https://example.com/photo5.jpg','jpeg','2025-01-05 15:10:00'),(6,'https://example.com/photo6.png','png','2025-01-06 16:30:00'),(7,'https://example.com/photo7.jpg','jpeg','2025-01-07 17:15:00'),(8,'https://example.com/photo8.png','png','2025-01-08 18:40:00'),(9,'https://example.com/photo10.png','png','2025-01-10 21:05:00'),(10,'https://example.com/photo11.jpg','jpeg','2025-01-11 08:10:00'),(11,'https://example.com/photo12.png','png','2025-01-12 09:15:00'),(12,'https://example.com/photo13.jpg','jpeg','2025-01-13 10:20:00'),(13,'https://example.com/photo14.png','png','2025-01-14 11:25:00'),(14,'https://example.com/photo15.jpg','jpeg','2025-01-15 12:30:00'),(15,'https://example.com/photo16.png','png','2025-01-16 13:35:00'),(16,'https://example.com/photo17.jpg','jpeg','2025-01-17 14:40:00'),(17,'https://example.com/photo18.png','png','2025-01-18 15:45:00'),(18,'https://example.com/photo19.jpg','jpeg','2025-01-19 16:50:00'),(19,'https://example.com/photo20.png','png','2025-01-20 17:55:00'),(20,'https://example.com/photo9.jpg','jpeg','2025-01-09 19:55:00'),(21,'https://example.com/photo1.jpg','jpeg','2025-01-01 10:00:00'),(22,'https://example.com/photo2.png','png','2025-01-02 11:30:00'),(23,'https://example.com/photo3.jpg','jpeg','2025-01-03 12:45:00'),(24,'https://example.com/photo4.png','png','2025-01-04 14:20:00'),(25,'https://example.com/photo5.jpg','jpeg','2025-01-05 15:10:00'),(26,'https://example.com/photo6.png','png','2025-01-06 16:30:00'),(27,'https://example.com/photo7.jpg','jpeg','2025-01-07 17:15:00'),(28,'https://example.com/photo8.png','png','2025-01-08 18:40:00'),(29,'https://example.com/photo10.png','png','2025-01-10 21:05:00'),(30,'https://example.com/photo11.jpg','jpeg','2025-01-11 08:10:00'),(31,'https://example.com/photo12.png','png','2025-01-12 09:15:00'),(32,'https://example.com/photo13.jpg','jpeg','2025-01-13 10:20:00'),(33,'https://example.com/photo14.png','png','2025-01-14 11:25:00'),(34,'https://example.com/photo15.jpg','jpeg','2025-01-15 12:30:00'),(35,'https://example.com/photo16.png','png','2025-01-16 13:35:00'),(36,'https://example.com/photo17.jpg','jpeg','2025-01-17 14:40:00'),(37,'https://example.com/photo18.png','png','2025-01-18 15:45:00'),(38,'https://example.com/photo19.jpg','jpeg','2025-01-19 16:50:00'),(39,'https://example.com/photo20.png','png','2025-01-20 17:55:00'),(40,'https://example.com/photo9.jpg','jpeg','2025-01-09 19:55:00');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `promotion_id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `discount_size` decimal(5,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'DISCOUNT10',10.00,'2025-01-01','2025-01-31'),(2,'SUMMER20',20.00,'2025-06-01','2025-06-30'),(3,'WINTER15',15.00,'2025-12-01','2025-12-31'),(4,'SPRING5',5.00,'2025-03-01','2025-03-15'),(5,'FALL25',25.00,'2025-09-01','2025-09-30'),(6,'WELCOME50',50.00,'2025-02-01','2025-02-07'),(7,'BLACKFRIDAY30',30.00,'2025-11-25','2025-11-30'),(8,'CYBERMONDAY35',35.00,'2025-12-01','2025-12-02'),(9,'NEWYEAR40',40.00,'2025-12-31','2026-01-01'),(10,'FLASHSALE5',5.00,'2025-04-15','2025-04-16'),(11,'HOLIDAY10',10.00,'2025-07-04','2025-07-05'),(12,'SPECIALOFFER15',15.00,'2025-08-15','2025-08-16'),(13,'VIP30',30.00,'2025-10-01','2025-10-07'),(14,'EXCLUSIVE20',20.00,'2025-05-01','2025-05-07'),(15,'FESTIVAL50',50.00,'2025-06-10','2025-06-15'),(16,'EVENT25',25.00,'2025-07-01','2025-07-07'),(17,'WEEKEND15',15.00,'2025-08-01','2025-08-02'),(18,'EARLYBIRD10',10.00,'2025-09-15','2025-09-16'),(19,'MIDWEEK5',5.00,'2025-10-10','2025-10-11'),(20,'FINALSALE40',40.00,'2025-12-29','2025-12-30');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `reviewer_id` int DEFAULT NULL,
  `rated_user_id` int DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `comment` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  KEY `reviewer_id` (`reviewer_id`),
  KEY `rated_user_id` (`rated_user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`rated_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,2,4.5,'Great place!','2025-02-10 14:30:00'),(2,2,3,3.8,'Good but noisy.','2025-02-15 18:45:00'),(3,3,4,5.0,'Fantastic host!','2025-03-01 09:00:00'),(4,4,5,4.0,'Clean and comfortable.','2025-03-05 21:15:00'),(5,5,6,3.5,'Could be better.','2025-03-12 16:20:00'),(6,6,7,4.8,'Highly recommend!','2025-03-18 12:05:00'),(7,7,8,4.2,'Nice location.','2025-03-22 10:30:00'),(8,8,9,3.9,'Okay experience.','2025-03-25 19:40:00'),(9,9,10,5.0,'Best stay ever!','2025-04-01 08:15:00'),(10,10,11,4.7,'Loved the view!','2025-04-05 11:50:00'),(11,11,12,4.1,'Good service.','2025-04-10 17:35:00'),(12,12,13,3.6,'A bit pricey.','2025-04-15 22:00:00'),(13,13,14,4.9,'Awesome amenities!','2025-04-20 13:25:00'),(14,14,15,4.3,'Comfortable bed.','2025-04-25 09:55:00'),(15,15,16,4.4,'Friendly host.','2025-05-01 18:10:00'),(16,16,17,3.7,'Not as expected.','2025-05-05 14:45:00'),(17,17,18,5.0,'Perfect for a weekend!','2025-05-10 16:00:00'),(18,18,19,4.6,'Good value.','2025-05-15 20:30:00'),(19,19,20,4.2,'Nice place!','2025-05-20 11:20:00'),(20,20,1,3.8,'Could improve.','2025-05-25 15:55:00');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Michael','Scott','https://example.com/michael.jpg'),(2,'Dwight','Schrute','https://example.com/dwight.jpg'),(3,'Jim','Halpert','https://example.com/jim.jpg'),(4,'Pam','Beesly','https://example.com/pam.jpg'),(5,'Stanley','Hudson','https://example.com/stanley.jpg'),(6,'Kevin','Malone','https://example.com/kevin.jpg'),(7,'Angela','Martin','https://example.com/angela.jpg'),(8,'Oscar','Martinez','https://example.com/oscar.jpg'),(9,'Phyllis','Vance','https://example.com/phyllis.jpg'),(10,'Ryan','Howard','https://example.com/ryan.jpg');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_support`
--

DROP TABLE IF EXISTS `staff_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_support` (
  `staff_support_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `message_type` varchar(50) DEFAULT NULL,
  `message` text,
  `response` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`staff_support_id`),
  KEY `staff_id` (`staff_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `staff_support_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`),
  CONSTRAINT `staff_support_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_support`
--

LOCK TABLES `staff_support` WRITE;
/*!40000 ALTER TABLE `staff_support` DISABLE KEYS */;
INSERT INTO `staff_support` VALUES (5,1,1,'Complaint','I am having issues with booking the accommodation.','We are working on resolving the issue.','2025-03-10 09:00:00','123-456-7890','user1@example.com'),(6,2,2,'Question','Can I change my reservation dates?','Yes, you can change the dates in your account settings.','2025-03-10 09:15:00','987-654-3210','user2@example.com'),(7,3,3,'Complaint','The accommodation is not as described.','We apologize for the inconvenience and will investigate further.','2025-03-10 09:30:00','456-789-0123','user3@example.com'),(8,1,4,'Complaint','I was charged incorrectly for my stay.','Our team is reviewing the charge and will get back to you.','2025-03-10 09:45:00','321-654-9870','user4@example.com'),(9,2,5,'Question','How can I cancel my reservation?','You can cancel your reservation through your account page.','2025-03-10 10:00:00','654-321-8765','user5@example.com'),(10,3,6,'Complaint','I didn’t receive my refund for the cancelled booking.','We are processing your refund and will notify you shortly.','2025-03-10 10:15:00','789-012-3456','user6@example.com'),(11,1,7,'Question','Can I view reviews for an accommodation?','Yes, you can view reviews on the accommodation page.','2025-03-10 10:30:00','890-123-4567','user7@example.com'),(12,2,8,'Complaint','The host is not responding to my messages.','We will contact the host on your behalf and follow up.','2025-03-10 10:45:00','234-567-8901','user8@example.com'),(13,3,9,'Question','How do I update my profile information?','You can update your profile information under account settings.','2025-03-10 11:00:00','567-890-1234','user9@example.com'),(14,1,10,'Complaint','The accommodation was not clean upon arrival.','We will escalate this issue to the host immediately.','2025-03-10 11:15:00','678-901-2345','user10@example.com'),(15,2,11,'Question','How do I make a payment?','You can make a payment through the payment section in your account.','2025-03-10 11:30:00','890-234-5678','user11@example.com'),(16,3,12,'Complaint','The Wi-Fi was not working during my stay.','We are sorry for the inconvenience and are fixing the issue.','2025-03-10 11:45:00','123-789-4560','user12@example.com'),(17,1,13,'Complaint','I wasn’t able to access the accommodation.','We apologize for the access issue and will resolve it as soon as possible.','2025-03-10 12:00:00','234-890-1234','user13@example.com'),(18,2,14,'Question','How can I contact the host directly?','You can message the host directly through the platform.','2025-03-10 12:15:00','345-678-9012','user14@example.com'),(19,3,15,'Complaint','The location of the accommodation was incorrect.','We apologize for the inconvenience and will correct the listing.','2025-03-10 12:30:00','456-789-0123','user15@example.com'),(20,1,16,'Question','Can I add additional guests to my booking?','Yes, you can add additional guests through your booking details.','2025-03-10 12:45:00','567-890-1234','user16@example.com'),(21,2,17,'Complaint','My booking was not confirmed after payment.','We are looking into this and will update you shortly.','2025-03-10 13:00:00','678-901-2345','user17@example.com'),(22,3,18,'Question','How do I reset my password?','You can reset your password by clicking the \"Forgot Password\" link.','2025-03-10 13:15:00','789-012-3456','user18@example.com'),(23,1,19,'Complaint','The amenities were not as described in the listing.','We will review the listing and work on resolving the issue.','2025-03-10 13:30:00','890-123-4567','user19@example.com'),(24,2,20,'Question','Can I add a review after my stay?','Yes, reviews can be added through your account page after checkout.','2025-03-10 13:45:00','234-567-8901','user20@example.com');
/*!40000 ALTER TABLE `staff_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `registration_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John','Doe',28,'john.doe@example.com','1234567890','https://example.com/john.jpg','2025-01-01 10:00:00'),(2,'Jane','Smith',32,'jane.smith@example.com','0987654321','https://example.com/jane.jpg','2025-01-02 11:30:00'),(3,'Alice','Johnson',24,'alice.johnson@example.com','1122334455','https://example.com/alice.jpg','2025-01-03 12:45:00'),(4,'Bob','Brown',29,'bob.brown@example.com','5566778899','https://example.com/bob.jpg','2025-01-04 14:20:00'),(5,'Charlie','Davis',35,'charlie.davis@example.com','6677889900','https://example.com/charlie.jpg','2025-01-05 15:10:00'),(6,'David','Miller',27,'david.miller@example.com','7788990011','https://example.com/david.jpg','2025-01-06 16:30:00'),(7,'Emma','Wilson',26,'emma.wilson@example.com','8899001122','https://example.com/emma.jpg','2025-01-07 17:15:00'),(8,'Frank','Moore',31,'frank.moore@example.com','9900112233','https://example.com/frank.jpg','2025-01-08 18:40:00'),(9,'Grace','Taylor',23,'grace.taylor@example.com','1011121314','https://example.com/grace.jpg','2025-01-09 19:55:00'),(10,'Henry','Anderson',30,'henry.anderson@example.com','1213141516','https://example.com/henry.jpg','2025-01-10 21:05:00'),(11,'Ivy','Thomas',28,'ivy.thomas@example.com','1314151617','https://example.com/ivy.jpg','2025-01-11 08:10:00'),(12,'Jack','Jackson',34,'jack.jackson@example.com','1415161718','https://example.com/jack.jpg','2025-01-12 09:15:00'),(13,'Kelly','White',25,'kelly.white@example.com','1516171819','https://example.com/kelly.jpg','2025-01-13 10:20:00'),(14,'Liam','Harris',29,'liam.harris@example.com','1617181920','https://example.com/liam.jpg','2025-01-14 11:25:00'),(15,'Mia','Martin',33,'mia.martin@example.com','1718192021','https://example.com/mia.jpg','2025-01-15 12:30:00'),(16,'Noah','Thompson',27,'noah.thompson@example.com','1819202122','https://example.com/noah.jpg','2025-01-16 13:35:00'),(17,'Olivia','Garcia',26,'olivia.garcia@example.com','1920212223','https://example.com/olivia.jpg','2025-01-17 14:40:00'),(18,'Paul','Martinez',32,'paul.martinez@example.com','2021222324','https://example.com/paul.jpg','2025-01-18 15:45:00'),(19,'Quinn','Robinson',24,'quinn.robinson@example.com','2122232425','https://example.com/quinn.jpg','2025-01-19 16:50:00'),(20,'Rachel','Clark',30,'rachel.clark@example.com','2223242526','https://example.com/rachel.jpg','2025-01-20 17:55:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `wishlist_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `accommodation_id` int DEFAULT NULL,
  PRIMARY KEY (`wishlist_id`),
  KEY `user_id` (`user_id`),
  KEY `accommodation_id` (`accommodation_id`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation` (`accommodation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,1,141),(2,2,142),(3,3,143),(4,4,144),(5,5,145),(6,6,146),(7,7,147),(8,8,148),(9,9,149),(10,10,150),(11,11,151),(12,12,152),(13,13,153),(14,14,154),(15,15,155),(16,16,156),(17,17,157),(18,18,158),(19,19,159),(20,20,160);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-22 11:17:33
