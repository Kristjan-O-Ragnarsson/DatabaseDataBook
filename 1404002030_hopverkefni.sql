-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 07, 2017 at 05:38 PM
-- Server version: 5.7.14-log
-- PHP Version: 5.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `1404002030_hopverkefni`
--

-- --------------------------------------------------------

--
-- Table structure for table `diskur`
--

CREATE TABLE IF NOT EXISTS `diskur` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nafn` varchar(32) NOT NULL,
  `utgafudagur` date NOT NULL,
  `tegund_disks` int(11) NOT NULL,
  `utegefandi` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `diskur_fk0` (`tegund_disks`),
  KEY `diskur_fk1` (`utegefandi`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `diskur`
--

INSERT INTO `diskur` (`ID`, `nafn`, `utgafudagur`, `tegund_disks`, `utegefandi`) VALUES
(1, 'Flensborkadiskurinn mikli', '2015-03-16', 1, 3),
(2, 'Lögin hans birgis', '2016-05-20', 4, 2),
(3, 'Amaterasu', '2017-03-27', 5, 3),
(4, 'Hallborgarjazz', '2014-06-15', 4, 1),
(5, 'Besti diskurinn', '2010-08-02', 3, 3),
(6, 'Dsikurinn', '2017-10-16', 2, 3),
(7, 'Gögnin', '2017-12-14', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `flokkur`
--

CREATE TABLE IF NOT EXISTS `flokkur` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nafn` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `flokkur`
--

INSERT INTO `flokkur` (`ID`, `nafn`) VALUES
(1, 'Hljómsveit'),
(2, 'Solo'),
(3, 'Kór');

-- --------------------------------------------------------

--
-- Table structure for table `flytjandi`
--

CREATE TABLE IF NOT EXISTS `flytjandi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nafn` varchar(32) NOT NULL,
  `stofndagur` date NOT NULL,
  `lysing` text,
  `danardagur` varchar(4) DEFAULT NULL,
  `flokkkur_flytjandi` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `flytjandi_fk0` (`flokkkur_flytjandi`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `flytjandi`
--

INSERT INTO `flytjandi` (`ID`, `nafn`, `stofndagur`, `lysing`, `danardagur`, `flokkkur_flytjandi`) VALUES
(6, 'Flensborgarkorinn', '2008-01-01', 'Vorið 2008 var tekin ákvörðun um að láta draum rætast og stofna nýjan kór fyrir útskrifaða Flensborgara sem áttu erfitt með að skilja við Kór Flensborgarskóla, sem í flestum tilfellum hafði verið stór hluti af lífi þeirra öll framhaldsskólaárin. \r\n\r\n16 eldri félagar tóku sig til ásamt Hrafnhildi Blomsterberg kórstjóra og hófu æfingar um haustið 2008. \r\nStrax í upphafi vakti kórinn mikla athygli fyrir einstakan hljóm, flotta framkomu og einstaka lífs- og sönggleði.', NULL, 3),
(7, 'Gagnamagnið', '2017-01-01', 'Hljómsveit sem var smöluð saman fyrir söngvakepni sjónvarpsins', NULL, 1),
(8, 'Birgir', '1990-02-15', 'Birgir er ný birjaður að semja lög.  Hann er ekkert sérstaklega góður í því samt og titlarnir hans er heldu ekkert sérstakir', NULL, 2),
(9, 'Hallborg', '1980-02-22', NULL, NULL, 2),
(10, 'Grímkell', '1975-11-06', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lag`
--

CREATE TABLE IF NOT EXISTS `lag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nafn` varchar(32) NOT NULL,
  `lengd` varchar(5) NOT NULL,
  `texti` text NOT NULL,
  `diskur_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `lag_fk0` (`diskur_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `lag`
--

INSERT INTO `lag` (`ID`, `nafn`, `lengd`, `texti`, `diskur_id`) VALUES
(1, 'Little Braver', '5:07', 'Meada Jun', 3),
(3, 'History Maker', '3:08', 'Dean Fujioka', 3),
(4, 'Fyrsta lag birgis', '6:15', 'Birgir', 2),
(5, 'Lag numer 2 hjá birgir', '9:00', 'Birgir', 2),
(6, 'Kiseijuu Sei no Kakuritsu', '3:41', 'Fear, and Loathing in Las Vegas', 3),
(7, 'Cold Hearted Loser', '7:25', 'John smith', 1),
(8, 'Antgonism From A New Perspective', '13:59', 'John smith', 1),
(9, 'Everybody Needs Adoration', '8:25', 'John smith', 1),
(10, 'Dawn Of The Spell', '9:47', 'John smith', 1),
(11, 'Music Peepshow', '3:47', 'John smith', 1),
(12, 'Force Machine', '1:12', 'John smith', 1),
(13, 'I''ve Only Got One Lazer', '2:34', 'John smith', 1),
(14, 'Pacific Explosion', '3:45', 'John smith', 1),
(15, 'Rauði riddarinn', '2:02', 'Hrafnhildi Blomsterberg', 1),
(16, 'Unconditional Blood', '6:66', 'Bigrir', 2),
(17, 'Jet Fueled Blood', '7:59', 'Grímkell', 6),
(18, 'The Sweatshirt Of My Dreams', '1:22', 'Hallborg', 6),
(19, 'Check Out The Sanity', '3:19', 'Hallborg', 6),
(20, 'Random Fox', '5:29', 'Hallborg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `lag_fly`
--

CREATE TABLE IF NOT EXISTS `lag_fly` (
  `lag_id` int(11) NOT NULL,
  `flytjandi_id` int(11) NOT NULL,
  PRIMARY KEY (`lag_id`,`flytjandi_id`),
  KEY `lag_fly_fk1` (`flytjandi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lag_fly`
--

INSERT INTO `lag_fly` (`lag_id`, `flytjandi_id`) VALUES
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(1, 7),
(3, 7),
(6, 7),
(4, 8),
(5, 8),
(16, 8),
(18, 9),
(19, 9),
(20, 9),
(17, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tegund`
--

CREATE TABLE IF NOT EXISTS `tegund` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nafn` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tegund`
--

INSERT INTO `tegund` (`ID`, `nafn`) VALUES
(1, 'Pop'),
(2, 'Rock'),
(3, 'Electro'),
(4, 'Jazz'),
(5, 'J-Pop');

-- --------------------------------------------------------

--
-- Table structure for table `utgefandi`
--

CREATE TABLE IF NOT EXISTS `utgefandi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nafn` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `utgefandi`
--

INSERT INTO `utgefandi` (`ID`, `nafn`) VALUES
(1, 'Hekla Records'),
(2, 'Kimi Records'),
(3, 'Sena');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diskur`
--
ALTER TABLE `diskur`
  ADD CONSTRAINT `diskur_fk0` FOREIGN KEY (`tegund_disks`) REFERENCES `tegund` (`ID`),
  ADD CONSTRAINT `diskur_fk1` FOREIGN KEY (`utegefandi`) REFERENCES `utgefandi` (`ID`);

--
-- Constraints for table `flytjandi`
--
ALTER TABLE `flytjandi`
  ADD CONSTRAINT `flytjandi_fk0` FOREIGN KEY (`flokkkur_flytjandi`) REFERENCES `flokkur` (`ID`);

--
-- Constraints for table `lag`
--
ALTER TABLE `lag`
  ADD CONSTRAINT `lag_fk0` FOREIGN KEY (`diskur_id`) REFERENCES `diskur` (`ID`);

--
-- Constraints for table `lag_fly`
--
ALTER TABLE `lag_fly`
  ADD CONSTRAINT `lag_fly_fk0` FOREIGN KEY (`lag_id`) REFERENCES `lag` (`ID`),
  ADD CONSTRAINT `lag_fly_fk1` FOREIGN KEY (`flytjandi_id`) REFERENCES `flytjandi` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
