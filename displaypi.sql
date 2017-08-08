-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 08. Aug 2017 um 20:36
-- Server Version: 5.5.49-0ubuntu0.14.04.1
-- PHP-Version: 5.6.30-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `thorben`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `displaypi`
--

CREATE TABLE IF NOT EXISTS `displaypi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `typ` text NOT NULL,
  `dauer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `displaypi`
--

INSERT INTO `displaypi` (`id`, `url`, `typ`, `dauer`) VALUES
(1, '3.jpg', 'image', 10),
(2, '1.jpg', 'image', 10),
(3, '2.jpg', 'image', 5),
(4, 'videotest.mp4', 'video', 30),
(5, '4.jpg', 'image', 10);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
