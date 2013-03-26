-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.0.51b-community-nt-log - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2013-03-25 21:46:07
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for cams_dev
CREATE DATABASE IF NOT EXISTS `cams_dev` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cams_dev`;


-- Dumping structure for table cams_dev.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL auto_increment,
  `prinombre` varchar(100) NOT NULL,
  `demasnombres` varchar(100) default NULL,
  `priapellido` varchar(100) NOT NULL,
  `segapellido` varchar(100) default NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rol` int(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tabla de usuarios del sistema';

-- Data exporting was unselected.
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
