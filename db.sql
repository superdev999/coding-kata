/*
SQLyog Community v12.4.3 (64 bit)
MySQL - 10.1.32-MariaDB : Database - nodemysql
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nodemysql` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nodemysql`;

/*Table structure for table `offers` */

DROP TABLE IF EXISTS `offers`;

CREATE TABLE `offers` (
  `id` bigint(30) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(30) DEFAULT NULL,
  `quentity` int(30) DEFAULT NULL,
  `sale` int(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `offers` */

insert  into `offers`(`id`,`product_id`,`quentity`,`sale`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,45,2,'2021-02-18 00:47:52','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,2,130,3,'2021-02-18 00:48:05','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(3,3,0,0,'2021-02-18 02:37:04','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(4,4,0,0,'2021-02-18 02:37:07','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(30) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(30,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`price`,`description`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Apple',30.00,NULL,'2021-02-18 00:47:05','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'Banana',50.00,NULL,'2021-02-18 00:47:11','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(3,'Peach',60.00,NULL,'2021-02-18 00:47:21','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(4,'Kiwi',20.00,NULL,'2021-02-18 00:47:30','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
