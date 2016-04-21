-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 21 Avril 2016 à 17:59
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ecommerceweb`
--
CREATE DATABASE IF NOT EXISTS `ecommerceweb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecommerceweb`;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(1, 'books'),
(2, 'multimedia'),
(3, 'goodies');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `codePostal` int(11) NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `customerorder`
--

CREATE TABLE IF NOT EXISTS `customerorder` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmation_number` bigint(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ecommercewebtab`
--

CREATE TABLE IF NOT EXISTS `ecommercewebtab` (
  `ID` varchar(50) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `ProductCategory` varchar(50) NOT NULL,
  `ProductDescription` text NOT NULL,
  `ProductImageLink` varchar(200) NOT NULL,
  `ProductPrice` float NOT NULL,
  `ProductQuantity` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`ProductName`,`ProductCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `descreption` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quantity` int(11) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `isbn` varchar(45) NOT NULL DEFAULT '"**********"',
  `author` varchar(45) NOT NULL DEFAULT '"**********"',
  `genre` varchar(45) NOT NULL DEFAULT '"**********"',
  `edition` varchar(45) NOT NULL DEFAULT '"**************"',
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`product_id`, `name`, `descreption`, `price`, `last_update`, `quantity`, `category_id`, `isbn`, `author`, `genre`, `edition`) VALUES
(1, 'Guerre et paix', 'Magistral!', 25, '2016-04-21 08:28:56', 10, 1, '978-2253088974', 'Tolstoi', 'Roman Historique', 'Hachett'),
(2, 'La Chute des Geants', 'Magnifique!', 15, '2016-04-21 08:28:56', 10, 1, '978-2221110829', 'Folett', 'Roman Historique', 'Hachett'),
(3, 'The Hobbit', 'The best!', 5, '2016-04-21 08:31:42', 10, 1, '978-0395071229', 'J. R. R. Tolkien', 'Roman fantastique', 'Houghton Mifflin'),
(4, 'Slinky Malinki', 'The most have!', 1, '2016-04-21 08:31:42', 10, 1, '978-0670913510', 'Lynley Dodd', 'Roman fantastique', 'Houghton Rendel');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `customerorder` (`order_id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
