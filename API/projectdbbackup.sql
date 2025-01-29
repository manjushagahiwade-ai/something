CREATE DATABASE  IF NOT EXISTS `projectdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projectdb`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: projectdb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `experience` float DEFAULT NULL,
  `picture` longblob,
  `login_id` int DEFAULT NULL,
  PRIMARY KEY (`doctor_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_doctor_login_idx` (`login_id`),
  CONSTRAINT `fk_doctor_user` FOREIGN KEY (`login_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (8,'Bakul','Parag','Joshi','bakul@gmail.com','232323232323','2',8.5,NULL,3),(39,'Prasad','Diliprao','Deshmukh','prasadd@gmail.com','657829812','3',3,NULL,6),(40,'Ashwini','S','Bhujbal','ashwini@gmail.com','4378432134','9',5,NULL,7),(41,'Palash','P','Joshi','palash@gmail.com','8734218943','4',4,NULL,8),(42,'Tanay','P','Joshi','tanay@gmail.com','8787878787','10',2,NULL,9),(43,'Vikas','D','B','vikas@gmail.com','89898899898','2',6.8,NULL,10);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `login_id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `role_id` int DEFAULT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`login_id`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  KEY `fk_role_idx` (`role_id`),
  CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'snehals','snehal123',2,_binary ''),(7,'dhanashreer','dhanashree123',2,_binary ''),(8,'bakulj','bakul123',2,_binary ''),(14,'truptis','trupti123',2,_binary ''),(15,'admin','$2a$10$I6em36bCe3eFYbGhubQ5MeanL1T6FmG/wXxKkM2/GeRoXh8sgnySG',1,_binary ''),(20,'s','s123S',2,_binary ''),(21,'palashj','palash123',2,_binary ''),(23,'v','v123',2,_binary '\0'),(30,'smitak','smita123',2,_binary '\0'),(33,'vaibhavi','v123',2,_binary '\0'),(34,'amitp','$2a$10$BkP.NttgCcdo1Hc6Sds2H.zWQk8WjWFD.p.cOGXw27b8YdtSSRMkS',2,_binary ''),(35,'pritis','priti123',2,_binary ''),(36,'vi','1uPN8I3++nHu4ivhESxAMPEgrEwABwuFhnxthrRfd5w=',2,_binary '\0'),(37,'dipti','XjHwQkwV/+R6P/wXAPF+Io5n/rMpXbYC3jsnDHmUESE=',2,_binary ''),(38,'milindk','iayWj8z+AKLhSlz1ps3+fhUcHXdR2H2QkxTGaP3XXTw=',2,_binary ''),(40,'palashpj','Dt1ef1uEepDtrqslTEgiOGf2iAHT9fWQsbnhfiiy2NY=',2,_binary '\0'),(41,'tanayj','CC3M0ZEfIzVbPUgyh94d8Fdu1P7ElAKb721s0X7ZTeo=',2,_binary ''),(42,'sonalik','xMYgsLQVhA0d6elLvfYCeQzbe+ntduyztqVn0+PEqpw=',2,_binary '\0'),(43,'aditi','$2a$10$VnmmPVcrFuEu.2jSgRRxSOx9QhZRd7TYzMOang.g1pN2GaKqbdgTe',2,_binary ''),(45,'neelamj','$2a$10$pjdZLXDX99huBcI2LfJaeuDhIWTV2VkiCq0RqCATgTXFBZOxo655a',2,_binary ''),(46,'dipali','$2a$10$ZxJAXWPek5ehfar4AZ8a6e2FxivLHlfzQCk1vq2SV1KdwS38kyCsC',2,_binary ''),(47,'vinay','$2a$10$YQeHBlNO89TKPcP9b2XS3.kxu4smwEe2LIgx8qWf2NFv5dRvnp142',2,_binary '\0'),(48,'viru','$2a$10$WX/NSanmJG7yhBqiA0mSfO0m/fJrHvHdFXz4cyan3TYvNkGSL0W52',2,_binary '');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `login_id` int DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `fk_patient_login_idx` (`login_id`),
  CONSTRAINT `fk_patient_login` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMIN'),(2,'DOCTOR'),(3,'HOSPITAL'),(4,'PATIENT');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialization` (
  `sp_id` int NOT NULL AUTO_INCREMENT,
  `specialization` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
INSERT INTO `specialization` VALUES (1,'Pediatrician','take care of patients from infancy through age 18'),(2,'Obstetricians','doctor who specializes in female reproductive health, including menopause and hormone problems.'),(3,'Cardiologist','focus on treatment of the heart and its blood vessels.'),(4,'Oncologist','Oncologists take care of patients who have cancer by treating the disease itself, as well as the symptoms it causes.'),(5,'Gastroenterologist ','Gastroenterologists treat the functions and diseases of the digestive system.'),(6,'Pulmonologist','Pulmonologists treat the cardio-pulmonary system, which consists of the heart, lungs, and organs involved in the respiratory process.'),(7,'Nephrologist','Nephrologists treat kidney disease'),(8,'Endocrinologist','Endocrinologists treat the endocrine system'),(9,'Ophthalmologist','Ophthalmologists are medical doctors who treat diseases or disorders of the eyes,'),(10,'Dermatologist','Dermatologists diagnose and treat conditions that affect the hair, skin, and nails'),(11,'Psychiatrist','A psychiatrist specializes in mental health'),(12,'Neurologist','Neurologists are doctors who take care of patients with medical conditions that affect the brain, spine, or nerves');
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles` int DEFAULT NULL,
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userrole_idx` (`roles`),
  CONSTRAINT `fk_userrole` FOREIGN KEY (`roles`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'bakul','$2a$10$h496nzuPJnsjLg2FTH0/CO2buKqX39x0u6VfJ6ejk9vRgo1PN2m6q',2,_binary ''),(4,'amit','$2a$12$jQfepMPsmsy1XOfJvgfpP.7DX2skTXw7obNu86hc60E5kbo4nUy4m',1,_binary ''),(5,'vaibhav','$2a$12$p5iDJJRNCFuP4MKTByK4xujQ8rcCgtD9Tqlb1vHL8kbfF7WF0F8KO',4,_binary ''),(6,'prasad','$2a$10$yw4C9drzz1RR6oV3ybSuq.h18nxuCvovAC1HzYDx7wjIlGWGdhnfO',2,_binary ''),(7,'ashwini','$2a$10$ys7Ntc31Ar/K9Jk8pN1jd.gWn0s9/Ydu1uPs6yBBEVEXjO5ydQudW',2,_binary '\0'),(8,'palash','$2a$10$9bjSYUveGIoF1BseNpP0z.BK7Tzjk4XAtlD5dYEYnLk6.8Hs7NDzO',2,_binary '\0'),(9,'tanay','$2a$10$CNv8k7Uxhxe.y8Dsc/VSlOtHvjquJDqI86vxkl71G67hrZtk2NGFK',2,_binary '\0'),(10,'vikas','$2a$10$7w4/CAMEBZLP/UtICaePG.0P1pTGKL5oSag8QHiPCZ1u7.erCTIXy',2,_binary '\0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-10 10:55:51
