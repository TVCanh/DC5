-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `group_variants`
--

DROP TABLE IF EXISTS `group_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `group_variants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjggn49ydnd0a0lusxeuhqutlp` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_variants`
--

LOCK TABLES `group_variants` WRITE;
/*!40000 ALTER TABLE `group_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (286),(286),(286);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logintoken`
--

DROP TABLE IF EXISTS `logintoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `logintoken` (
  `id` bigint(20) NOT NULL,
  `createddy` bigint(20) DEFAULT NULL,
  `expiredday` bigint(20) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logintoken`
--

LOCK TABLES `logintoken` WRITE;
/*!40000 ALTER TABLE `logintoken` DISABLE KEYS */;
INSERT INTO `logintoken` VALUES (22,1548403570000,1548489970000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDAzNTcwLCJleHAiOjE1NDg0ODk5NzB9.4_2gKg4q7UXv6KFtPoopGVvqrAek6e92jM1DRMlrXRtqWrU5VUUCjbu5Fm_r2dCfn3Y4SuAZtbHd7U5lbPR6nQ'),(12,1548384569000,1548470969000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4Mzg0NTY5LCJleHAiOjE1NDg0NzA5Njl9.lLiSP9d9xDcbslSKSzE4FcK5QbMONVbzdtkiQzSy-UCyKG5xkSSmv5Jx3Eqj4wZZXA3M6jABnjnQ2QOehbKb_w'),(13,1548384640000,1548471040000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4Mzg0NjQwLCJleHAiOjE1NDg0NzEwNDB9.MCc7znOs1oDTALrEpMK9VTSHFv94lDhjRcRiwN1mICY8cbQGiFuEkvKv-IlubiM4ZVhVoWWDrF16KLKxGFEcOA'),(24,1548403608000,1548490008000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDAzNjA4LCJleHAiOjE1NDg0OTAwMDh9.SjmskHaGBKDLb8EkXtc99zWZkCsnrClWF_1batyv4HmdMv80AKuaPudMp0rxNwrgtK-wcyeKIyAodUAqOTgzAw'),(26,1548403708000,1548490108000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDAzNzA4LCJleHAiOjE1NDg0OTAxMDh9.xSGznqQf5HABZ1dcp37XhQqMFM22E0T5MMYf_6OHPkGtX9ntjbPxiqYbUZxID-KLn604IUg6Wkxc-q0bY6U1-A'),(28,1548403789000,1548490189000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDAzNzg5LCJleHAiOjE1NDg0OTAxODl9.hL8j4zuaNbyImfGEAl1wXhJ9IHfEJegp2ahjC_fzq0CzFF_IUtV0S6fRvioJ5J77hvYsBRm1Ygbp4HSEgABN6A'),(30,1548404040000,1548490440000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDA0MDQwLCJleHAiOjE1NDg0OTA0NDB9.tL44SQFcvm6OtDo5ZTYqZJJxTn3n7WspNkf7bpmv3w6weB6YHYCugUWPrHqC6a7zD2rORS3QYrm6a7S3Q76GzA'),(32,1548404719000,1548491119000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDA0NzE5LCJleHAiOjE1NDg0OTExMTl9.kFm6Ee93nEyzNwhebnca4-99IwbvuGQUKgvy2eZhuvMtHVSgbih5lDMk626y2Y2MinW3SpACWSv6Atz57bBExA'),(33,1548404757000,1548491157000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDA0NzU3LCJleHAiOjE1NDg0OTExNTd9.aQ99vscLvjIsJ-jh0Mq8H2_6D1w-8hU7ROOauzld4oUtL8A713f4e7bggtcw5r4HHclrWN8GfSlB2ac60McnwQ'),(34,1548404779000,1548491179000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDA0Nzc5LCJleHAiOjE1NDg0OTExNzl9.wz6bZNnVZVaMclaw8zxLAz8EWH_jGObSFkWUumOqxD7q3AdnO9v-zossZcpGHwJtVW9mZUP5ZmLiwZDkXQEgRQ'),(35,1548404926000,1548491326000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDA0OTI2LCJleHAiOjE1NDg0OTEzMjZ9.FmQi6A2ie27LuxiyiI_8uLXN6ZRdXGSBnENBP5SGHmegYt4XLl1sZdVDeHKL-MkMRUZK8Zb27AeTP8ZbLXj-MA'),(37,1548408489000,1548494889000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDA4NDg5LCJleHAiOjE1NDg0OTQ4ODl9.h_Gk_XwcAi53xjcWlBAmPJ8QECAGLS-naDJjoH2x3gM_FHa_i_gX4OTO_9E_QnCkruQa_GEYhFMgfSWtDBtftg'),(38,1548408558000,1548494958000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDA4NTU4LCJleHAiOjE1NDg0OTQ5NTh9.s4f2wENL5gFfCmJDCDbdjbETqCYd3L5J0u04nOH0hu-XfYItAt8v-yIQ3xJcCyWO7lOteYoj3SnVsbm81kCGAQ'),(39,1548408586000,1548494986000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDA4NTg2LCJleHAiOjE1NDg0OTQ5ODZ9.WkWAOjuTdwL_eiGbaLA7oAvY9CNkRhaOnSMYnJ-REPIxS4TezpNPikxuEVUhOowNPj8fQeSfyJ-UZK_tJJ6JLw'),(43,1548409197000,1548495597000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDA5MTk3LCJleHAiOjE1NDg0OTU1OTd9.sTIow8za0iJLv_og2xw29A6NqVmMVESn6ILvG0C_hLxnQXsAP8ySt9GdNc3zl97tmE4PkM9yq1jQzk3Jg6gtxQ'),(44,1548409560000,1548495960000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NDA5NTYwLCJleHAiOjE1NDg0OTU5NjB9.Ql-tH63W7dk0rolczY4DwJxiiNgGAffO6eSA1S6IQMGa3BXti1-eUCrdY_W4CFwj6j9J2l-asrNdluZP1qC4KA'),(66,1548736296000,1548822696000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NzM2Mjk2LCJleHAiOjE1NDg4MjI2OTZ9.rQSajdMvUkiFUTN_NaRATiGThCLomPuX7EdAME2bU5EYHXZttpUkqY5uE4xCWFXb8p9PLpjKn25Yns7NLoC-yQ'),(49,1548647162000,1548733562000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NjQ3MTYyLCJleHAiOjE1NDg3MzM1NjJ9.RUDQwDTk9eLv1Vok6hwAgDuPFMNBVD2TZ_hd_ki9flBJUSVILrHEIcT6hBpCXOVqERnycVaITlUDUtFYTd39Jw'),(50,1548647244000,1548733644000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NjQ3MjQ0LCJleHAiOjE1NDg3MzM2NDR9.FvZtkvnkhoqq7LeMNXHjOMR6W83ZygpnpBdmWVds-KYKZL3l-qZtzLKuG7sXT9jd93boGnlIt7I2D-MqyWkSrA'),(51,1548647387000,1548733787000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NjQ3Mzg3LCJleHAiOjE1NDg3MzM3ODd9.T5tRwyGhblVeduJeWSQNG9czU8KOwhZna54lQ4Y3FFr9SkODYeYCFl3qwAkeD4fIqwu74a-HuFqxMm80kei4TQ'),(52,1548647792000,1548734192000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4NjQ3NzkyLCJleHAiOjE1NDg3MzQxOTJ9.9GWPYZYmHxMoWHXvpFK4rNdxdFbC6hGs1BiKz4lhl2nZFuP24kLEXg221r5fdJVeYlguvgMViS1OPIP1eICxJw'),(75,1548830350000,1548916750000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4ODMwMzUwLCJleHAiOjE1NDg5MTY3NTB9.h-hoHhWEgIi_LBBz7i5123aYM7JuJjSBFaTyHVmhRcIdnFhnIky4Wi2ENmFAjTBtHBLhyKIp6oGJUErmEacdWA'),(76,1548924298000,1549010698000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ4OTI0Mjk4LCJleHAiOjE1NDkwMTA2OTh9.AycWqrN5aWuBnt1EMFiS5bRC1SCdZi6Jspxdu9A-9MSROLanhu-gU7fynw7JhqScIOhMIMzPRsPKcoh87wGcNg'),(99,1549877837000,1549964237000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODc3ODM3LCJleHAiOjE1NDk5NjQyMzd9.AGG6t0d1aBJpq8Krx70aM8MC8vFh9S-OQoBYNIuBtmonbbW4-udZJbGf8umaTdslG_buNALctHB1tJ0NaWb1QQ'),(78,1549868582000,1549954982000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODY4NTgyLCJleHAiOjE1NDk5NTQ5ODJ9.M6nddznfFkFpoPuaEkAg78MRA6lgtAUad0KlxLX0irPgnXNqibmUaGqZX41NlLTqKbHCyFZRDv691vMADLG72g'),(79,1549868748000,1549955148000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODY4NzQ4LCJleHAiOjE1NDk5NTUxNDh9.M4MlIm8QFcCr9ER-DJXI83JxHnclobnII9nHWN24C3qtOsQHGcxu9NFHQYylyZZWcOgfzIPnaY9RjDTm0qpUXA'),(80,1549869496000,1549955896000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODY5NDk2LCJleHAiOjE1NDk5NTU4OTZ9.X3jIPhCrTCB9JoWCgXnAgBmFCbkvED9rvjeAUdnlC8bj8CXc6ZDhBNx2rPXsLLjpnzOya9cmTXVt3snUMQW4Vw'),(81,1549869980000,1549956380000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODY5OTgwLCJleHAiOjE1NDk5NTYzODB9.rqdV7zFVR2YOiFhHV94ZohfCtvY8sh0gakSegYvtFvLe6FNqZ7hVCLt3GLC9PgYUzh1LFiGmagC9j3nDQKy2sQ'),(82,1549870056000,1549956456000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcwMDU2LCJleHAiOjE1NDk5NTY0NTZ9.UEFYvgfNc2nYOePeWhAixponn53cVJOub-Onou2pcKQ45o7CE9znf7My8CvHo7Ku6hBP7O-pw-AfyRq-CdVMrQ'),(83,1549870168000,1549956568000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcwMTY4LCJleHAiOjE1NDk5NTY1Njh9.sgJkQdIvP5ooAKKjM_wy2N5OzdIanZf0qL5kvWKkB_nKEqiUHdPOoFNTghEO3enEvIqU9MyAR-pvYkrJbVu3rA'),(84,1549870257000,1549956657000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcwMjU3LCJleHAiOjE1NDk5NTY2NTd9.rKKYd0oBEOxyJqwPK6LJ6xVio-bzF1auNJ_LObQMGRHUmK18ll3nBUQ7h5uklh2xJMCDNR4o9OkfRBToDaE_Uw'),(85,1549870505000,1549956905000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcwNTA1LCJleHAiOjE1NDk5NTY5MDV9.aTvXFlriErky0YUS_uNXlsERt5aUopkE__2agXp1jk_hBvdHdlO9hlE0R7GDJkUYT2ABkoSxcbAypEibYH8-mQ'),(86,1549870763000,1549957163000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcwNzYzLCJleHAiOjE1NDk5NTcxNjN9.xT480JzubyxnXKmUtzOnGz53LXzEBdVQHyNbzUBaPAKxQ8Acov9ssG5QxgDcDwpPjZQ44_YOS3SZb2SbGBBihw'),(87,1549870913000,1549957313000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcwOTEzLCJleHAiOjE1NDk5NTczMTN9.tK2uFtYJ0aH49dt-PEG9SfPLzijCCkgBuVLTvFX9TW8zaE9RMlVafjf4JAqIvDpjEI7X5dTKuQalS88kSYv9Dw'),(88,1549870968000,1549957368000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcwOTY4LCJleHAiOjE1NDk5NTczNjh9.MNfVzkiG_N7aaazJENf6Egdi8YcFMFRVKZKNcFH01sHgWVczjU_e7n3gG_oeyNkkndWLjJXT2R7mhvQXOwEYMA'),(89,1549871537000,1549957937000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcxNTM3LCJleHAiOjE1NDk5NTc5Mzd9.68RfiP5Jwt443-qfb89JnS0nTq0V9qmdGhzRj1tcGOITPPvUClC3QXXw0gnuinVFSArIkWFPJLny0lwNDuKCVA'),(90,1549871641000,1549958041000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcxNjQxLCJleHAiOjE1NDk5NTgwNDF9.QKScAf8ZsXfmUo6L8yY8JsJm3mbaw7nF4P_8Lw8vLwzHbuKhAFe_qIsHkcG3XMMfceCzVaPwmXbe4JCm35iKDQ'),(91,1549871697000,1549958097000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcxNjk3LCJleHAiOjE1NDk5NTgwOTd9.8lvvJWI1a8dhVJ_QDYJ-qNxyDTQAFL3r192nXioK4KgQnHhadlSfi91233u85qoHzY7vlu4O2wfkNGsscjXsuA'),(92,1549871912000,1549958312000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcxOTEyLCJleHAiOjE1NDk5NTgzMTJ9.E_Mdhb03xiLGsVfhkODU2ozC8t4-vXmWuzrXPH-glYLWhPFVylsjdvpqdhf7rQAhyzTGgoYcJkxiuC6hma5O8g'),(93,1549871982000,1549958382000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODcxOTgyLCJleHAiOjE1NDk5NTgzODJ9.8HeZ32BoKr_dHbYncefOhQQoI8d0-PqlaEtWXHunxpNSOkScPL_ntOhM2RLCA0uI6mT26IslVzkz_hXzpB5sDA'),(94,1549873135000,1549959535000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODczMTM1LCJleHAiOjE1NDk5NTk1MzV9.m-TS_AkmSxupJj2__bfI0o98aH7l0EE8FWGK9mBSh6zDQQTV5lbHJ6fkr_zsfGWu4rzpgdAzjySJTu9M-nmoQg'),(95,1549873689000,1549960089000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODczNjg5LCJleHAiOjE1NDk5NjAwODl9.X13tCwfV0-LbXJbU-5MiWJzVHE29r_MtKZA62GpgFMf7KRWjq1VaGuJG3SIos9Nis2Gk8CXZDaubTkgho0tdpw'),(96,1549874108000,1549960508000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5ODc0MTA4LCJleHAiOjE1NDk5NjA1MDh9.DSfyOHMf0cBZIWmTiyCdLxyA-hUSb05FxFZ7jrijUNugZMrH4v9Ip6_4dkyr3u6FCsj0U3MCNBaD8nIJQg6CiQ'),(107,1549937100000,1550023500000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5OTM3MTAwLCJleHAiOjE1NTAwMjM1MDB9.JqxYqppiPUMIuQezMSJS7vRNhlVlRIMLoRZj2Zu54RSkGUiXZdCZU0kFNxRztYEkv2V_E1MYY1UIIxkXFFhtMA'),(108,1549937133000,1550023533000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5OTM3MTMzLCJleHAiOjE1NTAwMjM1MzN9.s_GgNB_EtH8ePovqzte-y8Srnb8vVyiOBTY1ckgZcScYd9Q4pcgP0Wz7h8YI56qQ7EBF9c1i6vIF6lQJa-LDXg'),(110,1549937428000,1550023828000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTQ5OTM3NDI4LCJleHAiOjE1NTAwMjM4Mjh9.uN_c_KiTSjjXnqGbmBHXl61Izq7jNw5JBHT70oJfb_eQ74CfTdc-YQa5wB8PDL2XucG_I9vijN0UNHQ5YFIbxA'),(123,1550050176000,1550136576000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwMDUwMTc2LCJleHAiOjE1NTAxMzY1NzZ9.mXK4zB69-GLeOYc9uNarIOWHsSyQBF4fNhxmQk8V0Kwc3JxV9sZqqDYxYGLR8h6zfwV75Ser_eBhzPQ_GAB-Iw'),(129,1550196190000,1550282590000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwMTk2MTkwLCJleHAiOjE1NTAyODI1OTB9.5LgXm9A18bZd3G0Z1uM7Pa3e9GCLu5EV9arAkLPapf_OdQVVBmCXbCnOODjZ-SQEJ2bawnJQM4JaH_I33fbr2Q'),(130,1550196266000,1550282666000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwMTk2MjY2LCJleHAiOjE1NTAyODI2NjZ9.4FHtcoTYjSwGbEG0fXQHA3It_mt56iHREkNfFdayu5IaYTOigB_JmyvZyudjmpy-e5g6z39-qfEQ1oiPqD5oyg'),(131,1550196285000,1550282685000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwMTk2Mjg1LCJleHAiOjE1NTAyODI2ODV9.8lkQ8eo_x5WuygP5R8H97wfetGZsExjqUavRv-YKYpTR4NoQei7dwkgLe4ChLzE5bMoRS0DDPpzu33sKI89_aw'),(136,1550196501000,1550282901000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTExIiwiaWF0IjoxNTUwMTk2NTAxLCJleHAiOjE1NTAyODI5MDF9.nnQQSYXxwBSn-DbZYjdQoHD8j-NfhhwK8fKUQhBAggXuFTslksvI7GmAqFobH30Mnv1XE4QUnINmJmUux2EjHA'),(160,1550220771000,1550307171000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwMjIwNzcxLCJleHAiOjE1NTAzMDcxNzF9.ncLxkzAHGbVKEhl8Iqx476tXlOS-izKCqwEQhVmX4GsYXqRQ_hP7ti4Ni9Ln3gRzbsoBIsQwNk2NnR00kTY5DA'),(171,1550455117000,1550541517000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwNDU1MTE3LCJleHAiOjE1NTA1NDE1MTd9.NL2Ib9XC1-zOnv9UBiMXP__Ayk3NvwTCS_MpGDdhn5UMOJ5S_CIiHnsngZQCm4jeVzb-PwpGLBUQ5H9JJEp8SA'),(229,1550714913000,1550801313000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwNzE0OTEzLCJleHAiOjE1NTA4MDEzMTN9.0BMzKSeWUwHAxH8o4Mjhnz6UE8L4gYHbeDodjVkAPnqH2HWGi_TJTwurQFYs8ZSp5gZFLJQ1E_xvSglOiNdSwA'),(230,1550717715000,1550804115000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwNzE3NzE1LCJleHAiOjE1NTA4MDQxMTV9.TVaHRzS1Rr2k5Mty-MgWj0oFr66z646dcAgm01K31oIiST82RATp2NI1GkEzJRXlCcLJiZsyzWor3ES_e1LHDQ'),(231,1550717729000,1550804129000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwNzE3NzI5LCJleHAiOjE1NTA4MDQxMjl9.Eibu-zag_ndbFcqW9paF5AxCRx5DTxzMu6OOoTWyL6emWDmzrTxnLU8zTgyOqKsDSRE6_XRxLZKYqAgqKHQmHA'),(232,1550717771000,1550804171000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwNzE3NzcxLCJleHAiOjE1NTA4MDQxNzF9.iChKMax-UEV8AGez7EUeOIX9EcgcIo_ouYznBw2AZwDuDm-GSqRhMcjm3O8FwJyGH12gbtjgHeBJd-PTMIqFKQ'),(245,1550743223000,1550829623000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMjEiLCJpYXQiOjE1NTA3NDMyMjMsImV4cCI6MTU1MDgyOTYyM30.hjY0yrh6gD_9-2--JSMcvyJoiG2xx6HEMsr14GYDBLvBGcvLX0X3hLgSayxBCmXIzHfIdoPAErcNxHzBaA_wWQ'),(251,1550744535000,1550830935000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwNzQ0NTM1LCJleHAiOjE1NTA4MzA5MzV9._ECBmyKGdYXaRa22xtDkixl49Hfq2rkdPxLNUbvqhgn0KyU4Cx-gZ_i0bYUuKe-VKbPjvE3A-EMlnxm-TOLi7A'),(253,1550808294000,1550894694000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTExIiwiaWF0IjoxNTUwODA4Mjk0LCJleHAiOjE1NTA4OTQ2OTR9.FN0JU91peiOhvIT4GW38G8gTO_Xm6Q65Z0plpgk8--sddV0QPQSmDEr2tIr90xKPd2bQFZL-fTJbmiy_WZUvJw'),(254,1550808321000,1550894721000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMjEiLCJpYXQiOjE1NTA4MDgzMjEsImV4cCI6MTU1MDg5NDcyMX0.R1LMevbUpjWobmnsEgP5xHI4KiSu55kt8QMGMoWwdLbL_xLOkoCpNL2K-oxkMG9fnG0I0KFlW477EjY8zsdX3w'),(255,1550808352000,1550894752000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEyIiwiaWF0IjoxNTUwODA4MzUyLCJleHAiOjE1NTA4OTQ3NTJ9.clyJJjI4_Koo0oF4_k9ruMtW5lE084ipasIkEyK-2Ct_U16SbGHtp-L5WsqLYFEwQruJXcnZtBtmiXsCPwpG2w'),(256,1550808372000,1550894772000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aGFvIiwiaWF0IjoxNTUwODA4MzcyLCJleHAiOjE1NTA4OTQ3NzJ9.0zC-DXyoL9Q-cl9KCUlUI98h48KRsDAIqbMKKz7PlOfyxaLd4LyP_28kI-uJ_0ikqcDVMFhSGdiRQqzaJuE8ug'),(262,1550819943000,1550906343000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTUwODE5OTQzLCJleHAiOjE1NTA5MDYzNDN9.ijeX0nM15hztUTNGqcPZ98LSh7L-JORJGopqJs7NQq6DerSgJb7x8e7hB0HmwRE4uTg5WGv6WIIEPNny2OYmhw'),(263,1556002936000,1556089336000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTExIiwiaWF0IjoxNTU2MDAyOTM2LCJleHAiOjE1NTYwODkzMzZ9.TVJACMwYtFie28ZoSb9sQ84vHoHgituvLuauaAFnxfvTND_QqackCgSAMHHJwTzNKZOTmP9IjFDQ2lXkG2rW6Q'),(264,1556003258000,1556089658000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTU2MDAzMjU4LCJleHAiOjE1NTYwODk2NTh9.dkyCaf-4z7MKYxpq4CTGWAIzPJ2gXu1CrdVdVCvWvlDl0shw6KdDz_qVktwLHhuo7ElFig1fNCVjVkwnxtxAjQ'),(265,1556003395000,1556089795000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTU2MDAzMzk1LCJleHAiOjE1NTYwODk3OTV9.6klTjOjaEMWGzP6xXUNGRvi6f6BbaYZIDo6xC0x4_bkmmcl0xe0GdW0iDxyr6gm0VlduCXUOrExyve5XlvqeOA'),(266,1556003813000,1556090213000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTU2MDAzODEzLCJleHAiOjE1NTYwOTAyMTN9.lyQ3ygvTYrBOq82544jQxe3p13wCs30051E1k1xLuafmqsTF5pLU1B5wGcqPPS5JUwLyyoogNQFh0B0p8e9CIA'),(267,1556003850000,1556090250000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTU2MDAzODUwLCJleHAiOjE1NTYwOTAyNTB9.0RPyaH-zVuXRP-dgYmfvEciRt9wFkaYHemiEba6abDxA8EFZ6D-1bYtYvgL7WxNvw-haERoWa1k7KyHF3i3tuQ'),(268,1556003998000,1556090398000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTU2MDAzOTk4LCJleHAiOjE1NTYwOTAzOTh9.FSaZ3q7mekAl1W7uX-LOalpdOk2V-ewkFSVmET2h74BP_-Zi9cnu8i0qVbaOLWNGSetBLz0MsSU3Kkg8CpTMMA'),(269,1556004356000,1556090756000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTU2MDA0MzU2LCJleHAiOjE1NTYwOTA3NTZ9._MJqHnZ5-qGzckhGJxnN0IP4w72HylYJcac9Ieu9cxzR5U8KQWqeIDmP2sCgU_MyY6U9qGDxotE_vOvJSkgpYA'),(270,1556004874000,1556091274000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYW5oMTEzIiwiaWF0IjoxNTU2MDA0ODc0LCJleHAiOjE1NTYwOTEyNzR9.OmFEHFfG4wptQAUdJhrpO0uHAFYZUbQe5yFmEsg7okSs8J7kUSA4n3NaT0xhvIIwr7WdBWJK6RLA5VZp3g-LDQ'),(278,1570587377000,1570673777000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0dmFuY2FuaCIsImlhdCI6MTU3MDU4NzM3NywiZXhwIjoxNTcwNjczNzc3fQ.EUAhUTwumpHNv8BaQoy4KLKMK-SobaWoEvkjnxAWSsE97rVMZNznj0MkQR0olmrm97ThCe_ITNjJKkmYY_hQKw'),(285,1570591802000,1570678202000,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0dmFuY2FuaCIsImlhdCI6MTU3MDU5MTgwMiwiZXhwIjoxNTcwNjc4MjAyfQ.-VgLiJwBKX5zhzqESwGTW-sNzdXIHaLVABGXF192aLt4djhNWERY9x9T6GxUR6QFxwPIzE-hoFCqyliH3hfXGw');
/*!40000 ALTER TABLE `logintoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbioxgbv59vetrxe0ejfubep1w` (`order_id`),
  KEY `FKlf6f9q956mt144wiv6p1yko16` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=280 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi8m3sv8lmhd08noscqpfj6va4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (192,'Tran Canh',NULL,'Nokia 215','500.0',14,'Phone','Peace',NULL),(194,'tvancanh',NULL,'Samsung S9','777.0',0,'SmartPhone','Peace',NULL),(195,'Supervisor',NULL,'California Phones','500.0',0,'Khongbiet','Taolao',NULL),(238,'Canh',NULL,'HP','900.0',0,'Laptop','Peace',NULL),(197,'Canh',NULL,'Iphone 6','700.0',0,'SmartPhone','Couple',NULL),(240,'Supervisor',NULL,'Dell','1000.0',15,'Laptop','Couple',NULL),(239,'canh coi',NULL,'Asus','700.0',11,'Laptop','Taolao',NULL),(279,'canh',NULL,'bánh xèo','200.0',12,'bánh','cái',NULL),(281,'canh',NULL,'bánh bao','111.0',1,'asd','cái',NULL),(282,'canh',NULL,'bánh bao1','1.0',1,'asd','cái',NULL),(283,'canh',NULL,'tvancnah','11.0',1,'phone','cái',NULL),(284,'canh',NULL,'bánh bao1','5000.0',2,'asd','Cái',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_groups`
--

DROP TABLE IF EXISTS `product_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_groups`
--

LOCK TABLES `product_groups` WRITE;
/*!40000 ALTER TABLE `product_groups` DISABLE KEYS */;
INSERT INTO `product_groups` VALUES (1,NULL,'phone','500'),(2,NULL,'phone','500'),(3,NULL,'phone','500');
/*!40000 ALTER TABLE `product_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'download.jpg',5),(2,'download.jpg',1),(7,'download.jpg',10),(8,'image.PNG',5),(9,'download.jpg',163),(10,'download.jpg',200),(11,'download.jpg',500),(12,'download.jpg',400),(13,'DB.PNG',4400),(14,'image.PNG',170),(15,'download.jpg',172),(16,'DB.PNG',173),(17,'download.jpg',174),(18,'DB.PNG',175),(19,'download.jpg',176),(20,'DB.PNG',177),(21,'image.PNG',178),(22,'iphone6.jpg',179),(23,'samsung.jpg',180),(24,'HTC.jpg',181),(25,'nokia.jpg',183),(26,'download.jpg',184),(27,'iphone6.jpg',185),(28,'samsung.jpg',186),(29,'nokia.jpg',187),(30,'samsung.jpg',188),(31,'HTC.jpg',190),(32,'samsung.jpg',191),(33,'download.jpg',179),(34,'download.jpg',1000),(35,'download.jpg',1000),(36,'1000',1000),(37,'1111.jpg',1111),(38,'192.jpg',192),(39,'193.jpg',193),(40,'194.jpg',194),(41,'195.jpg',195),(42,'196.jpg',196),(43,'197.jpg',197),(44,'198.jpg',198),(45,'199.jpg',199),(46,'200.jpg',200),(47,'201.jpg',201),(48,'202.jpg',202),(49,'203.jpg',203),(50,'204.jpg',204),(51,'205.jpg',205),(52,'100.jpg',100),(53,'225.jpg',225),(54,'234.jpg',234),(55,'235.jpg',235),(56,'236.jpg',236),(57,'237.jpg',237),(58,'238.jpg',238),(59,'239.jpg',239),(60,'240.jpg',240),(61,'241.jpg',241),(62,'252.jpg',252),(63,'100.jpg',100),(64,'284.jpg',284);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nb4h0p6txrmfc0xbrd1kglp9t` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_NORMAL'),(2,'ROLE_STAFF'),(3,'ROLE_SUPERVISOR'),(4,'ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_images`
--

DROP TABLE IF EXISTS `user_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_images`
--

LOCK TABLES `user_images` WRITE;
/*!40000 ALTER TABLE `user_images` DISABLE KEYS */;
INSERT INTO `user_images` VALUES (1,'100.jpg',100),(2,'3.jpg',3),(3,'1.jpg',1),(4,'246.jpg',246),(5,'249.jpg',249);
/*!40000 ALTER TABLE `user_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (276,4);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (276,NULL,'canhtranhg1996@gmail.com',_binary '','tvancnah','$2a$10$9H7gAeir2s5p/GIaEALJ6OHr6T3w7SIwzxRUr4qbFQPnQVhK/WDSu',NULL,'tvancanh','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0dmFuY2FuaCIsImlhdCI6MTU3MDU5MTgwMiwiZXhwIjoxNTcwNjc4MjAyfQ.-VgLiJwBKX5zhzqESwGTW-sNzdXIHaLVABGXF192aLt4djhNWERY9x9T6GxUR6QFxwPIzE-hoFCqyliH3hfXGw');
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

-- Dump completed on 2019-10-09 10:46:58
