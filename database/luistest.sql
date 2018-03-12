/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.7.19 : Database - luistest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`luistest` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id_cliente` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) DEFAULT NULL,
  `clave` varchar(200) DEFAULT NULL,
  `bloqueado` int(1) DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `clientes` */

insert  into `clientes`(`id_cliente`,`email`,`clave`,`bloqueado`,`updated_at`,`created_at`,`token`) values 
(1,'lomartinezg@gmail.com','12345',0,'2018-03-08 18:32:21','2018-03-08 18:32:21','9dd2105233ce93f68943479acb6be20e'),
(2,'jcarrol84@gmail.com','jen30041984',0,'2018-03-08 18:33:23','2018-03-08 18:33:23','3168c0a3bb63b80d133b0d497deb8895'),
(3,'jorge@gmail.com','69',0,'2018-03-08 18:40:57','2018-03-08 18:33:43','64c4c350329a37ea22a74dfe68fbb4f3');

/*Table structure for table `codigo_ventas` */

DROP TABLE IF EXISTS `codigo_ventas`;

CREATE TABLE `codigo_ventas` (
  `id_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `siglas` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `cod_venta` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `codigo_ventas` */

insert  into `codigo_ventas`(`id_codigo`,`siglas`,`Descripcion`,`cod_venta`,`updated_at`,`created_at`) values 
(1,'FA','Factura',3,'2018-03-12 22:07:45','2018-03-09 12:03:54'),
(2,'VF','Venta Fallida',0,'2018-03-09 12:03:54','2018-03-09 12:03:54'),
(3,'OC','Orden de Compra',0,'2018-03-09 12:03:54','2018-03-09 12:03:54');

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id_producto` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(250) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `productos` */

insert  into `productos`(`id_producto`,`tipo`,`descripcion`,`precio`,`updated_at`,`created_at`) values 
(1,'Vaso','Vaso de Metal',25.00,'2018-03-08 19:02:10','2018-03-08 19:02:10'),
(2,'Vaso','Vaso de Vidrio',17.00,'2018-03-08 19:02:24','2018-03-08 19:02:24'),
(3,'Vaso','Vaso de Plastico',50.00,'2018-03-08 19:02:36','2018-03-08 19:02:36'),
(4,'Zapato Deportivo','Nike Jordan',3890.00,'2018-03-08 19:03:10','2018-03-08 19:03:10'),
(5,'Zapato Deportivo','Nike Classic',2000.00,'2018-03-08 19:03:22','2018-03-08 19:03:22'),
(6,'Zapato Deportivo','Salomons',4150.00,'2018-03-08 19:03:49','2018-03-08 19:03:49'),
(7,'Zapato Deportivo','Adidas',1890.00,'2018-03-08 19:04:02','2018-03-08 19:04:02'),
(8,'Zapato Deportivo','New Balance 574',2300.00,'2018-03-08 19:04:23','2018-03-08 19:04:23'),
(9,'Jean','Levis 505',3100.00,'2018-03-08 19:04:39','2018-03-08 19:04:39'),
(10,'Jean','Levis 501',3050.00,'2018-03-08 19:04:49','2018-03-08 19:04:49'),
(11,'Camiza','Scutaro',2768.00,'2018-03-08 19:05:20','2018-03-08 19:05:20'),
(12,'Colonia','Carolina Herrera 212',3400.00,'2018-03-08 19:05:36','2018-03-08 19:05:36'),
(13,'Colonia','Hugo Boss Blue',2100.00,'2018-03-08 19:05:55','2018-03-08 19:05:55'),
(14,'Colonia','Hugo Boss Red',2000.00,'2018-03-08 19:12:31','2018-03-08 19:07:21'),
(15,'Colonia','Hugo Boss Red 2',3340.00,'2018-03-09 11:58:22','2018-03-09 11:58:22');

/*Table structure for table `sucursal` */

DROP TABLE IF EXISTS `sucursal`;

CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `cuil` varchar(20) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `barrio` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `piso` varchar(100) DEFAULT NULL,
  `oficina` varchar(100) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `craated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `sucursal` */

insert  into `sucursal`(`id_sucursal`,`nombre`,`cuil`,`provincia`,`barrio`,`direccion`,`piso`,`oficina`,`id_cliente`,`updated_at`,`craated_at`) values 
(1,'PROTOCOL','21-3344355-9','Cuidad Autonoma de Buenos Aires','Balvanera','Viamonte 1842','1','B',1,'2018-03-09 10:00:15','2018-03-09 10:00:20'),
(2,'LATAM_411','21-60782345-9','CABA','San nicolas','Recoleta 5768',NULL,NULL,1,'2018-03-09 10:00:23','2018-03-09 10:00:24');

/*Table structure for table `ventas` */

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `id_cliente` int(11) DEFAULT NULL,
  `id_venta` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cod_venta` text,
  PRIMARY KEY (`id_venta`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `ventas` */

insert  into `ventas`(`id_cliente`,`id_venta`,`created_at`,`updated_at`,`cod_venta`) values 
(1,15,'2018-03-09 12:03:54','2018-03-09 12:03:54',NULL),
(1,14,'2018-03-09 12:02:22','2018-03-09 12:02:22',NULL),
(1,16,'2018-03-09 13:21:57','2018-03-09 13:21:57',NULL),
(1,17,'2018-03-09 13:23:12','2018-03-09 13:23:12',NULL),
(1,18,'2018-03-09 14:09:40','2018-03-09 14:09:40','FA1'),
(1,19,'2018-03-09 14:10:07','2018-03-09 14:10:07','FA2'),
(NULL,20,'2018-03-12 22:07:45','2018-03-12 22:07:45','FA3');

/*Table structure for table `ventas_detalle` */

DROP TABLE IF EXISTS `ventas_detalle`;

CREATE TABLE `ventas_detalle` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_detalle`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `ventas_detalle` */

insert  into `ventas_detalle`(`id_detalle`,`id_venta`,`id_producto`,`cantidad`,`updated_at`,`created_at`) values 
(6,14,3,10,'2018-03-09 12:02:22','2018-03-09 12:02:22'),
(5,14,2,2,'2018-03-09 12:02:22','2018-03-09 12:02:22'),
(4,14,1,5,'2018-03-09 12:02:22','2018-03-09 12:02:22'),
(7,15,1,5,'2018-03-09 12:03:54','2018-03-09 12:03:54'),
(8,15,2,2,'2018-03-09 12:03:54','2018-03-09 12:03:54'),
(9,15,3,10,'2018-03-09 12:03:54','2018-03-09 12:03:54'),
(10,16,1,5,'2018-03-09 13:21:57','2018-03-09 13:21:57'),
(11,16,2,2,'2018-03-09 13:21:57','2018-03-09 13:21:57'),
(12,16,3,10,'2018-03-09 13:21:57','2018-03-09 13:21:57'),
(13,17,1,5,'2018-03-09 13:23:12','2018-03-09 13:23:12'),
(14,17,2,2,'2018-03-09 13:23:12','2018-03-09 13:23:12'),
(15,17,3,10,'2018-03-09 13:23:12','2018-03-09 13:23:12'),
(16,18,1,5,'2018-03-09 14:09:40','2018-03-09 14:09:40'),
(17,18,2,2,'2018-03-09 14:09:40','2018-03-09 14:09:40'),
(18,18,3,10,'2018-03-09 14:09:40','2018-03-09 14:09:40'),
(19,19,1,5,'2018-03-09 14:10:07','2018-03-09 14:10:07'),
(20,19,2,2,'2018-03-09 14:10:07','2018-03-09 14:10:07'),
(21,19,3,10,'2018-03-09 14:10:07','2018-03-09 14:10:07');

/*Table structure for table `ventas_sucursal` */

DROP TABLE IF EXISTS `ventas_sucursal`;

CREATE TABLE `ventas_sucursal` (
  `id_venta_suc` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_venta_suc`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `ventas_sucursal` */

insert  into `ventas_sucursal`(`id_venta_suc`,`id_venta`,`id_sucursal`,`updated_at`,`created_at`) values 
(1,17,1,'2018-03-09 13:23:12','2018-03-09 13:23:12'),
(2,17,2,'2018-03-09 13:23:12','2018-03-09 13:23:12'),
(3,17,1,'2018-03-09 13:23:12','2018-03-09 13:23:12'),
(4,18,1,'2018-03-09 14:09:40','2018-03-09 14:09:40'),
(5,18,2,'2018-03-09 14:09:40','2018-03-09 14:09:40'),
(6,18,1,'2018-03-09 14:09:40','2018-03-09 14:09:40'),
(7,19,1,'2018-03-09 14:10:07','2018-03-09 14:10:07'),
(8,19,2,'2018-03-09 14:10:07','2018-03-09 14:10:07'),
(9,19,1,'2018-03-09 14:10:07','2018-03-09 14:10:07');

/*Table structure for table `ventas_totales` */

DROP TABLE IF EXISTS `ventas_totales`;

CREATE TABLE `ventas_totales` (
  `id_totales` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `id_ventas` int(11) DEFAULT NULL,
  `updated_at` tinyblob,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_totales`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `ventas_totales` */

insert  into `ventas_totales`(`id_totales`,`total`,`id_ventas`,`updated_at`,`created_at`) values 
(4,1154.1,NULL,'2018-03-09 12:02:22','2018-03-09 12:02:22'),
(5,1154.1,15,'2018-03-09 12:03:54','2018-03-09 12:03:54'),
(6,1154.1,17,'2018-03-09 13:23:12','2018-03-09 13:23:12'),
(7,1154.1,18,'2018-03-09 14:09:40','2018-03-09 14:09:40'),
(8,1154.1,19,'2018-03-09 14:10:07','2018-03-09 14:10:07'),
(9,0,20,'2018-03-12 22:07:45','2018-03-12 22:07:45');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
