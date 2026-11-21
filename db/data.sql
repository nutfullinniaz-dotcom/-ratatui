-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: topot
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Мужская'),(2,'Женская');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,2),(2,3),(3,4),(4,12),(5,13),(6,15),(7,16),(8,17),(9,18),(10,20);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'Kari'),(2,'Marco Tozzi'),(3,'Poc'),(4,'Rieker'),(5,'Alessio Nesca'),(6,'CROSBY');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'YYYY-MM-DD','YYYY-MM-DD',1,4,901,1,''),(2,'YYYY-MM-DD','YYYY-MM-DD',11,1,902,1,''),(3,'YYYY-MM-DD','YYYY-MM-DD',2,2,903,1,''),(4,'YYYY-MM-DD','YYYY-MM-DD',11,3,904,1,''),(5,'YYYY-MM-DD','YYYY-MM-DD',2,4,905,1,''),(6,'YYYY-MM-DD','YYYY-MM-DD',15,1,906,1,''),(7,'YYYY-MM-DD','YYYY-MM-DD',3,2,907,1,''),(8,'YYYY-MM-DD','YYYY-MM-DD',19,3,908,2,''),(9,'YYYY-MM-DD','YYYY-MM-DD',5,4,909,2,''),(10,'YYYY-MM-DD','YYYY-MM-DD',19,4,910,2,'');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orderstatus`
--

LOCK TABLES `orderstatus` WRITE;
/*!40000 ALTER TABLE `orderstatus` DISABLE KEYS */;
INSERT INTO `orderstatus` VALUES (1,'Завершен'),(2,'Новый');
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prodorder`
--

LOCK TABLES `prodorder` WRITE;
/*!40000 ALTER TABLE `prodorder` DISABLE KEYS */;
INSERT INTO `prodorder` VALUES (1,1,1,2),(2,2,3,1),(3,3,5,10),(4,4,7,5),(5,5,1,2),(6,6,3,1),(7,7,5,10),(8,8,7,5),(9,9,9,5),(10,10,11,5),(11,1,2,2),(12,2,4,1),(13,3,6,10),(14,4,8,4),(15,5,2,2),(16,6,4,1),(17,7,6,10),(18,8,8,4),(19,9,10,1),(20,10,12,5);
/*!40000 ALTER TABLE `prodorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'А112Т4',1,'шт.',4990,1,1,2,2,6,'Женские Ботинки демисезонные kari','1.jpg'),(2,'F635R4',1,'шт.',3244,2,2,2,1,13,'Ботинки Marco Tozzi женские демисезонные, размер 39, цвет бежевый','2.jpg'),(3,'H782T5',2,'шт.',4499,1,1,1,3,5,'Туфли kari мужские классика MYZ21AW-450A, размер 43, цвет: черный','3.jpg'),(4,'G783F5',1,'шт.',5900,1,3,1,1,8,'Мужские ботинки Рос-Обувь кожаные с натуральным мехом','4.jpg'),(5,'J384T6',1,'шт.',3800,2,4,1,1,16,'B3430/14 Полуботинки мужские Rieker','5.jpg'),(6,'D572U8',3,'шт.',4100,2,3,1,2,6,'129615-4 Кроссовки мужские','6.jpg'),(7,'F572H7',2,'шт.',2700,1,2,2,1,14,'Туфли Marco Tozzi женские летние, размер 39, цвет черный','7.jpg'),(8,'D329H3',4,'шт.',1890,2,5,2,3,4,'Полуботинки Alessio Nesca женские 3-30797-47, размер 37, цвет: бордовый','8.jpg'),(9,'B320R5',2,'шт.',4300,1,4,2,1,6,'Туфли Rieker женские демисезонные, размер 41, цвет коричневый','9.jpg'),(10,'G432E4',2,'шт.',2800,1,1,2,2,15,'Туфли kari женские TR-YR-413017, размер 37, цвет: черный','10.jpg'),(11,'S213E3',4,'шт.',2156,2,6,1,2,6,'407700/01-01 Полуботинки мужские CROSBY',''),(12,'E482R4',4,'шт.',1800,1,1,2,1,14,'Полуботинки kari женские MYZ20S-149, размер 41, цвет: черный',''),(13,'S634B5',5,'шт.',5500,2,6,1,2,0,'Кеды Caprice мужские демисезонные, размер 42, цвет черный',''),(14,'K345R4',4,'шт.',2100,2,6,1,1,3,'407700/01-02 Полуботинки мужские CROSBY',''),(15,'O754F4',2,'шт.',5400,2,4,2,3,18,'Туфли женские демисезонные Rieker артикул 55073-68/37',''),(16,'G531F4',1,'шт.',6600,1,1,2,4,9,'Ботинки женские зимние ROMER арт. 893167-01 Черный',''),(17,'J542F5',6,'шт.',500,1,1,1,5,0,'Тапочки мужские Арт.70701-55-67син р.41',''),(18,'B431R5',1,'шт.',2700,2,4,1,1,5,'Мужские кожаные ботинки/мужские ботинки',''),(19,'P764G4',6,'шт.',6800,1,6,2,6,15,'Туфли женские, ARGO, размер 38',''),(20,'C436G5',1,'шт.',10200,1,5,2,6,9,'Ботинки женские, ARGO, размер 40',''),(21,'F427R5',1,'шт.',11800,2,4,2,6,11,'Ботинки на молнии с декоративной пряжкой FRAU',''),(22,'N457T5',4,'шт.',4600,1,6,2,2,13,'Полуботинки Ботинки черные зимние, мех',''),(23,'D364R4',2,'шт.',12400,1,1,2,7,5,'Туфли Luiza Belly женские Kate-lazo черные из натуральной замши',''),(24,'S326R5',6,'шт.',9900,2,6,1,8,15,'Мужские кожаные тапочки \"Профиль С.Дали\"\" \"',''),(25,'L754R4',4,'шт.',1700,1,1,2,1,7,'Полуботинки kari женские WB2020SS-26, размер 38, цвет: черный',''),(26,'M542T5',3,'шт.',2800,2,4,1,9,3,'Кроссовки мужские TOFA',''),(27,'D268G5',2,'шт.',4399,2,4,2,2,12,'Туфли Rieker женские демисезонные, размер 36, цвет коричневый',''),(28,'T324F5',7,'шт.',4699,1,6,2,1,5,'Сапоги замша Цвет: синий',''),(29,'K358H6',6,'шт.',599,1,4,1,10,2,'Тапочки мужские син р.41',''),(30,'H535R5',1,'шт.',2300,2,4,2,1,7,'Женские Ботинки демисезонные','');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pvz2`
--

LOCK TABLES `pvz2` WRITE;
/*!40000 ALTER TABLE `pvz2` DISABLE KEYS */;
INSERT INTO `pvz2` VALUES (1,420151,'  Лесной','  Вишневая',32),(2,125061,'  Лесной','  Подгорная',8),(3,630370,'  Лесной','  Шоссейная',24),(4,400562,'  Лесной','  Зеленая',32),(5,614510,'  Лесной','  Маяковского',47),(6,410542,'  Лесной','  Светлая',46),(7,620839,'  Лесной','  Цветочная',8),(8,443890,'  Лесной','  Коммунистическая',1),(9,603379,'  Лесной','  Спортивная',46),(10,603721,'  Лесной','  Гоголя',41),(11,410172,'  Лесной','  Северная',13),(12,614611,'  Лесной','  Молодежная',50),(13,454311,' Лесной','  Новая',19),(14,660007,' Лесной','  Октябрьская',19),(15,603036,'  Лесной','  Садовая',4),(16,394060,' Лесной','  Фрунзе',43),(17,410661,'  Лесной','  Школьная',50),(18,625590,'  Лесной','  Коммунистическая',20),(19,625683,'  Лесной','  8 Марта',3),(20,450983,' Лесной','  Комсомольская',26),(21,394782,'  Лесной','  Чехова',3),(22,603002,'  Лесной','  Дзержинского',28),(23,450558,'  Лесной','  Набережная',30),(24,344288,'  Лесной','  Чехова',1),(25,614164,' Лесной','   Степная',30),(26,394242,'  Лесной','  Коммунистическая',43),(27,660540,'  Лесной','  Солнечная',25),(28,125837,'  Лесной','  Шоссейная',40),(29,125703,'  Лесной','  Партизанская',49),(30,625283,'  Лесной','  Победы',46),(31,614753,'  Лесной','  Полевая',35),(32,426030,'  Лесной','  Маяковского',44),(33,450375,'  Лесной','  Клубная',44),(34,625560,'  Лесной','  Некрасова',12),(35,630201,'  Лесной','  Комсомольская',17),(36,190949,'  Лесной','  Мичурина',26);
/*!40000 ALTER TABLE `pvz2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Администратор'),(2,'Менеджер'),(3,'Авторизированный клиент');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shoes`
--

LOCK TABLES `shoes` WRITE;
/*!40000 ALTER TABLE `shoes` DISABLE KEYS */;
INSERT INTO `shoes` VALUES (1,'Ботинки'),(2,'Туфли'),(3,'Кроссовки'),(4,'Полуботинки'),(5,'Кеды'),(6,'Тапочки'),(7,'Сапоги');
/*!40000 ALTER TABLE `shoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `suppliers2`
--

LOCK TABLES `suppliers2` WRITE;
/*!40000 ALTER TABLE `suppliers2` DISABLE KEYS */;
INSERT INTO `suppliers2` VALUES (1,'Kari'),(2,'Обувь для вас');
/*!40000 ALTER TABLE `suppliers2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Никифорова ','Весения','Николавена','94d5ous@gmail.com','uzWC67'),(2,1,'Сазонов','Руслан','Германович','uth4iz@mail.com','2L6KZG'),(3,1,'Одинцов','Серафим','Артёмович','yzls62@outlook.com','JlFRCZ'),(4,2,'Степанов','Михаил','Артёмович','1diph5e@tutanota.com','8ntwUp'),(5,2,'Ворсин','Петр','Евгеньевич','tjde7c@yahoo.com','YOyhfR'),(6,2,'Старикова','Елена','Павловна','wpmrc3do@tutanota.com','RSbvHv'),(7,3,'Михайлюк','Анна','Вячеславовна','5d4zbu@tutanota.com','rwVDh9'),(8,3,'Ситдикова','Елена','Анатольевна','ptec8ym@yahoo.com','LdNyos'),(9,3,'Ворсин','Петр','Евгеньевич','1qz4kw@mail.com','gynQMT'),(10,3,'Старикова','Елена','Павловна','4np6se@mail.com','AtnDjr');
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

-- Dump completed on 2026-11-21  9:55:24
