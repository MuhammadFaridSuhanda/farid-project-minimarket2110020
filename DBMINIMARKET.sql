/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.1.36-community-log : Database - dbminimarket2110020
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbminimarket2110020` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbminimarket2110020`;

/*Table structure for table `barang2110020` */

DROP TABLE IF EXISTS `barang2110020`;

CREATE TABLE `barang2110020` (
  `idbarang2110020` char(7) NOT NULL,
  `namabarang2110020` varchar(100) DEFAULT NULL,
  `satuan2110020` varchar(50) DEFAULT NULL,
  `hargabeli2110020` double DEFAULT NULL,
  `hargajual2110020` double DEFAULT NULL,
  `stok2110020` int(11) DEFAULT NULL,
  PRIMARY KEY (`idbarang2110020`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `barang2110020` */

/*Table structure for table `detailjual2110020` */

DROP TABLE IF EXISTS `detailjual2110020`;

CREATE TABLE `detailjual2110020` (
  `iddetail2110020` int(11) NOT NULL AUTO_INCREMENT,
  `idjual2110020` char(10) DEFAULT NULL,
  `idbarang2110020` char(7) DEFAULT NULL,
  `qty2110020` int(11) DEFAULT NULL,
  `harga2110020` double DEFAULT NULL,
  PRIMARY KEY (`iddetail2110020`),
  KEY `idjual2110020` (`idjual2110020`),
  KEY `idbarang2110020` (`idbarang2110020`),
  CONSTRAINT `detailjual2110020_ibfk_1` FOREIGN KEY (`idjual2110020`) REFERENCES `jual2110020` (`idjual2110020`) ON UPDATE CASCADE,
  CONSTRAINT `detailjual2110020_ibfk_2` FOREIGN KEY (`idbarang2110020`) REFERENCES `barang2110020` (`idbarang2110020`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detailjual2110020` */

/*Table structure for table `jual2110020` */

DROP TABLE IF EXISTS `jual2110020`;

CREATE TABLE `jual2110020` (
  `idjual2110020` char(10) NOT NULL,
  `tgl2110020` date DEFAULT NULL,
  `username2110020` char(5) DEFAULT NULL,
  `total2110020` double DEFAULT NULL,
  PRIMARY KEY (`idjual2110020`),
  KEY `username2110020` (`username2110020`),
  CONSTRAINT `jual2110020_ibfk_1` FOREIGN KEY (`username2110020`) REFERENCES `user2110020` (`username2110020`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jual2110020` */

/*Table structure for table `temp2110020` */

DROP TABLE IF EXISTS `temp2110020`;

CREATE TABLE `temp2110020` (
  `idbarang2110020` char(7) DEFAULT NULL,
  `qty2110020` int(11) DEFAULT NULL,
  `harga2110020` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `temp2110020` */

/*Table structure for table `user2110020` */

DROP TABLE IF EXISTS `user2110020`;

CREATE TABLE `user2110020` (
  `username2110020` char(5) NOT NULL,
  `nama2110020` varchar(30) DEFAULT NULL,
  `password2110020` varchar(50) DEFAULT NULL,
  `email2110020` varchar(100) DEFAULT NULL,
  `lastlogin2110020` datetime DEFAULT NULL,
  PRIMARY KEY (`username2110020`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user2110020` */

insert  into `user2110020`(`username2110020`,`nama2110020`,`password2110020`,`email2110020`,`lastlogin2110020`) values ('A001','FARID','123','faridsuhanda@gmail.com','2023-12-28 12:06:33');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
