-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2017 at 02:57 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hologram`
--

-- --------------------------------------------------------

--
-- Table structure for table `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `nom`, `prenom`, `adresse`, `tel`) VALUES
(1, 'myriam', 'myriam', 'm.jaziri@esprit.tn', 'm.jaziri@esprit.tn', 1, '9p60hhsczsw0kk08wsg4wg0cs00kcs0', 'z6ZjWjw2cgT51vqUjEd84Stj71YyjSmH6Fcsrem1d5Rjik9Cv3il3xxhczI9u+BFAK3jvlf4zbg6gs1n87AvBQ==', '2017-04-10 16:01:25', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'myriam', 'jaz', 'Tunis', '20650466'),
(2, 'sarra', 'sarra', 's.ayache@esprit.tn', 's.ayache@esprit.tn', 1, '9p60hhsczsw0kk08wsg4wg0ce00kcs0', '123456', '2017-04-10 16:01:25', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'sarra', 'ay', 'Tunis', '20650466');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `idProduit` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productContent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productDate` datetime NOT NULL,
  `etat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productPhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idUser_id` int(11) DEFAULT NULL,
  `finalVideo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idProduit`),
  KEY `IDX_1CF73D31B7D7B867` (`idUser_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idProduit`, `productName`, `productContent`, `productDate`, `etat`, `video`, `productPhoto`, `idUser_id`, `finalVideo`) VALUES
(1, 'earth ', ' Description of the product', '2017-03-12 15:07:06', 'valider', '1489342510_498.mp4', '1489341366_4623.jpeg', 1, 'finalearth.mp4'),
(2, 'Coca Cola', '  Description of Coca Cola', '2017-03-12 17:35:26', 'valider', '1489336526_4813.mp4', '1489336526_5123.jpeg', 1, '51669-coca.mp4'),
(3, 'coca', 'coca', '2017-04-18 14:00:00', '', '', '', 2, 'EarthVideoHologram.mp4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
