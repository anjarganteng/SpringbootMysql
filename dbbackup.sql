-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.33 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for app_microservice
CREATE DATABASE IF NOT EXISTS `app_microservice` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `app_microservice`;

-- Dumping structure for table app_microservice.app_order
CREATE TABLE IF NOT EXISTS `app_order` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_order`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table app_microservice.app_order: ~3 rows (approximately)
INSERT INTO `app_order` (`id_order`, `username`, `order_date`) VALUES
	(1, 'rey', '2024-02-09 22:21:10'),
	(2, 'axel', '2024-02-09 16:21:19'),
	(3, 'anjar', '2024-02-08 20:21:26'),
	(4, 'axel', '2024-02-08 20:21:26');

-- Dumping structure for table app_microservice.app_order_detail
CREATE TABLE IF NOT EXISTS `app_order_detail` (
  `id_order_detail` int NOT NULL AUTO_INCREMENT,
  `id_order` int DEFAULT NULL,
  `product_code` varchar(20) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` decimal(20,4) DEFAULT NULL,
  `discount` decimal(20,4) DEFAULT NULL,
  `total_amount` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`id_order_detail`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table app_microservice.app_order_detail: ~6 rows (approximately)
INSERT INTO `app_order_detail` (`id_order_detail`, `id_order`, `product_code`, `quantity`, `price`, `discount`, `total_amount`) VALUES
	(1, 1, 'S000001', 1, 5000000.0000, 0.0000, 5000000.0000),
	(2, 2, 'S000002', 1, 7000000.0000, 0.0000, 7000000.0000),
	(3, 2, 'S000003', 2, 7500000.0000, 500000.0000, 14500000.0000),
	(4, 3, 'I000001', 1, 5000000.0000, 0.0000, 5000000.0000),
	(5, 3, 'I000002', 2, 6000000.0000, 500000.0000, 11500000.0000),
	(6, 3, 'X000001', 1, 5000000.0000, 0.0000, 5000000.0000),
	(7, 1, 'S000001', 1, NULL, NULL, NULL),
	(8, 4, 'X000001', 1, 5000000.0000, 0.0000, 5000000.0000),
	(9, 4, 'X000002', 1, 5000000.0000, 0.0000, 5000000.0000);

-- Dumping structure for table app_microservice.app_product
CREATE TABLE IF NOT EXISTS `app_product` (
  `product_code` varchar(20) NOT NULL,
  `product_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(20,4) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`product_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table app_microservice.app_product: ~9 rows (approximately)
INSERT INTO `app_product` (`product_code`, `product_name`, `price`, `quantity`) VALUES
	('I000001', 'Iphone 11', 5000000.0000, 10),
	('I000002', 'Iphone 12 Pro', 6000000.0000, 10),
	('I000003', 'Iphone 15 Pro', 12000000.0000, 11),
	('P000001', 'Product Test 1', 1000000.0000, 10),
	('S000001', 'Samsung Galaxy S24', 5000000.0000, 100),
	('S000002', 'Samsung Z Flip', 7000000.0000, 10),
	('S000003', 'Samsung Z Fold', 7500000.0000, 10),
	('V000001', 'Vivo Y27', 2000000.0000, 10),
	('V000002', 'Vivo V29', 5500000.0000, 10),
	('X000001', 'Xiaomi X5 Pro', 5000000.0000, 9),
	('X000002', 'Xiaomi Poco X3', 5500000.0000, 9);

-- Dumping structure for table app_microservice.app_user
CREATE TABLE IF NOT EXISTS `app_user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `firstname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lastname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table app_microservice.app_user: ~2 rows (approximately)
INSERT INTO `app_user` (`username`, `password`, `firstname`, `lastname`, `email`, `phone`, `address`, `is_active`, `created_date`, `modified_date`) VALUES
	('anjar', '$2a$10$wPaWi3S4dkwqqPu5nDQCb.yEjnxwGObYDIYgTlNCno8ccwyhpaWXS', 'Ginanjar', 'Sanjaya', 'anjar@gmail.com', '081311114911', 'Paradise Serpong City, Kawasan Adventures, Cluster Balmoral, J29/63 Kel. Babakan, Kec. Setu, Tangerang Selatan, Banten, 15315', 1, '2024-02-01 22:54:11', '2024-02-01 22:54:11'),
	('axel', '$2a$10$wPaWi3S4dkwqqPu5nDQCb.yEjnxwGObYDIYgTlNCno8ccwyhpaWXS', 'Ibrahim', 'Axel', 'axel@gmail.com', '081311114909', 'Paradise Serpong City, Kawasan Adventures, Cluster Balmoral, J29/61 Kel. Babakan, Kec. Setu, Tangerang Selatan, Banten, 15315', 1, '2024-02-01 22:54:11', '2024-02-01 22:54:13'),
	('putri', '$2a$10$Yq7sV5qe6InjVui9sfdojO7KqdEgccenFwa7nbs3VxCzlSkTZCazq', 'Atika', 'Putri', 'putri@gmail.com', '081311114911', 'Paradise Serpong City, Kawasan Adventures, Cluster Balmoral, J29/63 Kel. Babakan, Kec. Setu, Tangerang Selatan, Banten, 15315', 1, '2024-02-02 05:54:11', '2024-02-02 05:54:11'),
	('rey', '$2a$10$wPaWi3S4dkwqqPu5nDQCb.yEjnxwGObYDIYgTlNCno8ccwyhpaWXS', 'Muhammad', 'Rayyanka', 'rey@gmail.com', '081311114910', 'Paradise Serpong City, Kawasan Adventures, Cluster Balmoral, J29/62 Kel. Babakan, Kec. Setu, Tangerang Selatan, Banten, 15315', 1, '2024-02-01 22:54:11', '2024-02-01 22:54:11'),
	('user1', '$2a$10$e6Zmh5mkTffy6/hGNFjAnO0ZlDfDWd/baa/uRNgM9GzTl2eiFI2yG', 'Ida', 'Atika', NULL, NULL, NULL, 0, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
