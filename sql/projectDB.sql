-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2018 at 10:30 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectDB`
--
CREATE DATABASE IF NOT EXISTS `projectDB` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projectDB`;

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
CREATE TABLE `alumni` (
  `userID` int(11) NOT NULL,
  `maxReserve` int(2) NOT NULL DEFAULT '3',
  `currReserve` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`userID`, `maxReserve`, `currReserve`) VALUES
(1, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `bibID` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `callNumber` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `physicalDescription` varchar(200) NOT NULL,
  `placeOfPublication` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bibID`, `name`, `callNumber`, `author`, `physicalDescription`, `placeOfPublication`, `year`, `language`) VALUES
('003517953', 'Hidden Belgium.', '914.93 HID', 'Luster', '266 pages : colour illustrations, maps ; 18 cm.', 'Antwerpen :', '©2018.', 'English'),
('003462292', 'Cinda Williams Chima', 'YF CHI', 'Chima, Cinda Williams.', '535 p. ; 21 cm.', 'New York, NY :', 'c2016', 'English'),
('003506576', 'The wandering mind', '153 COR', 'Corballis, Michael C', 'ix, 173 pages : illustrations ; 24 cm', 'Chicago', '2016', 'English'),
('003494404', 'The serpent\'s curse', 'JF ABB', 'Abbott, Tony', '485 pages : illustrations ; 21 cm', 'New York', '2014', 'English'),
('003494417', 'I don\'t want to be big', 'JJ PET', 'Petty, Dev', '1 volume (unpaged) : colour illustrations ; 27 cm', 'New York', '2016', 'English'),
('003505134', 'Modern Kazakhstan', '915.845 TRE', 'Tredinnick, Jeremy', 'vii, 336 pages : colour illustrations, maps ; 21 cm', 'Hong Kong', '2018', 'English'),
('003508963', 'kebana : asian arts & crafts for creative kids', '745.92252 SAT', 'Sato Shozo', '64 pages colour illustrations ; 24 cm', 'Tokyo', '2004', 'English'),
('003500932', 'The integrated string player', '787.143 ALC', ' Alcantara, Pedro de', 'xvii, 246 pages : illustrations, music ; 26 cm', 'New York', '2018', 'English'),
('003500680', 'Ten essential lessons of business management', '494 1784', 'Man Kuen CHAK', '258 pages', 'Hong Kong', '2017', 'Chinese'),
('003500632', 'Hea rich : the real guide', '563.5 7477', 'Hiten Yuen', '192 pages', 'Hong Kong', '2017', 'Chinese'),
('003493912', 'How to be perfect', '158 PAD', 'Padgett, Ron', '99 pages', 'Minneapolis', '2016', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `bibID` varchar(50) NOT NULL,
  `stock` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`bibID`, `stock`) VALUES
('000813254', 0),
('000813257', 1),
('000962622', 1),
('001043256', 1),
('001044490', 1),
('001045788', 1),
('003382170', 1),
('003386017', 0),
('003393321', 1),
('003425739', 1),
('003432369', 1),
('003435677', 1),
('003443013', 0),
('003444053', 1),
('003462292', 1),
('003493912', 0),
('003494404', 1),
('003494417', 0),
('003496926', 1),
('003500632', 0),
('003500680', 1),
('003500932', 0),
('003505134', 1),
('003505731', 0),
('003506021', 1),
('003506576', 0),
('003508963', 0),
('003511418', 1),
('003515364', 1),
('003515614', 0),
('003515629', 1),
('003515637', 0),
('003515650', 1),
('003516372', 1),
('003517698', 1),
('003517953', 0),
('003518592', 1),
('003519747', 1),
('003519750', 0);

-- --------------------------------------------------------

--
-- Table structure for table `magazines`
--

DROP TABLE IF EXISTS `magazines`;
CREATE TABLE `magazines` (
  `bibID` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `callNumber` varchar(50) NOT NULL,
  `frequency` varchar(50) NOT NULL,
  `placeOfPublication` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `magazines`
--

INSERT INTO `magazines` (`bibID`, `name`, `callNumber`, `frequency`, `placeOfPublication`, `year`, `language`) VALUES
('003393321', 'How it works', '305 0050', 'Monthly issue', 'Taipei', '2014', 'Chinese'),
('003444053', 'Asteroid preschool', '050 9262', 'Monthly issue', 'Taipei', '2016', 'Chinese'),
('003435677', 'Rick Steves pocket Florence', '914.551 RIC', 'Monthly issue', 'Berkeley, CA', '2016', 'English'),
('003386017', 'Moon Blue Ridge Parkway road trip', '917.55 MOO', 'Biennial', 'Berkeley, CA', '2015', 'English'),
('003425739', 'Rick Steves best of Spain', '914.6 RIC', 'Monthly issue', 'Berkeley, CA', '2016', 'English'),
('003382170', 'CityPack guide to Dublin', '914.183 CIT', 'Monthly issue', 'Basingstoke', '2015', 'English'),
('003432369', 'Rick Steves snapshot Edinburgh', '914.1445 RIC', 'Monthly issue', 'Berkeley', '2016', 'English'),
('003518592', 'Moon Chicago', '917.7311 MOO', 'Monthly issue', 'Berkeley, CA', '2018', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

DROP TABLE IF EXISTS `map`;
CREATE TABLE `map` (
  `bibID` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `callNumber` varchar(50) NOT NULL,
  `physicalDescription` varchar(200) NOT NULL,
  `placeOfPublication` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`bibID`, `name`, `callNumber`, `physicalDescription`, `placeOfPublication`, `publisher`, `year`, `language`) VALUES
('003519747', 'Lonely Planet Seattle city map', '912.79777 LON', '1 map : colour ; 49 x 63 cm., folded to 20 x 10 cm', 'Carlton, Vic', 'Lonely Planet', '2017', 'English'),
('003519750', 'Lonely Planet Europe planning map', '912.4 LON', '2 maps on 1 sheet : both sides, colour ; 57 x 90 cm., folded to 20 x 10 cm', 'Carlton, Vic', 'Lonely Planet', '2017', 'English'),
('003517698', 'Atlas of the Maldives', '912.5489 GOD', '1 atlas (108 pages) : colour illustrations, colour maps ; 27 cm', 'Cairns, Q\'ld, Australia', 'Atoll Editions', '2018', 'English'),
('003516372', 'Picture atlas of Great Britain and Ireland', '912.42 MEL', '1 atlas (21 pages) : colour illustrations, colour maps ; 31 cm', 'London', 'Usborne Publishing Ltd', '2017', 'English'),
('003515637', 'Lonely Planet Vancouver city map', '912.71133 LON', '1 map : colour ; 49 x 63 cm., folded to 20 x 10 cm', 'Carlton, Vic', 'Lonely Planet', '2017', 'English'),
('003515629', 'Lonely Planet Seoul city map', '912.5195 LON', '1 map : colour ; 49 x 63 cm., folded to 20 x 10 cm', 'Carlton, Vic', 'Lonely Planet', '2017', 'English'),
('003515650', 'Lonely Planet Great Britain planning map', '912.42 LON', '2 maps on 1 sheet : both sides, colour ; 49 x 63 cm., folded to 20 x 10 cm', 'Carlton, Vic', 'Lonely Planet', '2017', 'English'),
('003515614', 'Lonely Planet Vienna city map', '912.43613 LON', '1 map : colour ; 49 x 63 cm., folded to 20 x 10 cm', 'Carlton, Vic', 'Lonely Planet', '2017', 'English'),
('003515364', 'DK compact world atlas', '912 DKC', '1 atlas (192 pages) : colour illustrations, colour maps ; 28 cm', 'London', 'Dorling Kindersley Limited', '2018', 'English'),
('003511418', 'Collins Europe road map [map] : 2018 Europe', '912.4 COL', '1 map : colour ; 87 x 84 cm., folded in cover 25 x 14 cm', 'Bishopbriggs, Glasgow', 'Collins', '2017', 'English'),
('003506021', 'AA glovebox atlas Britain', '912.42 AUT', '1 atlas (ii, 94 pages) : colour maps ; 21 cm', 'Basingstoke', 'AA Publishing', '2017', 'English'),
('003505731', 'Michelin Travel Partner', '912.45 MIC', '1 map : colour ; 118 x 99 cm, folded to 25 x 12 cm', 'Boulogne-Billancourt, France', 'Michelin Travel Partner', '2016', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `non_teachingstaff`
--

DROP TABLE IF EXISTS `non_teachingstaff`;
CREATE TABLE `non_teachingstaff` (
  `userID` int(11) NOT NULL,
  `maxReserve` int(2) NOT NULL DEFAULT '10',
  `currReserve` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `non_teachingstaff`
--

INSERT INTO `non_teachingstaff` (`userID`, `maxReserve`, `currReserve`) VALUES
(2, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve` (
  `reserveID` int(10) NOT NULL,
  `userID` int(11) NOT NULL,
  `bibID` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
CREATE TABLE `software` (
  `bibID` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `callNumber` varchar(50) NOT NULL,
  `placeOfPublication` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`bibID`, `name`, `callNumber`, `placeOfPublication`, `publisher`, `year`, `language`) VALUES
('003496926', 'Quality assurance of pharmaceuticals', '615.19 QUA', 'Geneva', 'World Health Organization', '©2016', 'English'),
('003443013', 'Looking for words', '421 LOO', 'S.I', 'Attainment Company', 'c2016', 'English'),
('000813254', 'Multimedia Beethoven : the ninth symphony', '785 MUL', 'Redmond', 'Microsoft Corporation', '1992', 'English'),
('000813257', 'Multimedia Mozart : the dissonant quartet', '785 MUL', 'Redmond', 'Microsoft Corporation', '1993', 'English'),
('000962622', 'Eyewitness encyclopedia of nature', '570 EYE', 'London', 'Dorling Kindersley', '1995', 'English'),
('001043256', 'Oxford compendium', '423 OXF', 'Oxford', 'Oxford University Press : AND Software b.v', '1994', 'English'),
('001044490', 'Eyewitness encyclopedia of space and the universe', '520.3 EYE', 'London ', 'DK Multimedia', 'c1996', 'English'),
('001045788', 'Fine arts of China', '709 FIN', 'Hopkins, MN', 'Hopkins Technology', 'c1995', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `userID` int(11) NOT NULL,
  `maxReserve` int(2) NOT NULL DEFAULT '5',
  `currReserve` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`userID`, `maxReserve`, `currReserve`) VALUES
(3, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teachingstaff`
--

DROP TABLE IF EXISTS `teachingstaff`;
CREATE TABLE `teachingstaff` (
  `userID` int(11) NOT NULL,
  `maxReserve` int(2) NOT NULL DEFAULT '10',
  `currReserve` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachingstaff`
--

INSERT INTO `teachingstaff` (`userID`, `maxReserve`, `currReserve`) VALUES
(4, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(20) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `isFirstLogin` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userName`, `userPwd`, `userEmail`, `userPhone`, `isFirstLogin`) VALUES
(1, 'BunChai', '654321', 'BunChai@gmail.com', 65462344, b'0'),
(2, 'Changchat', '123456', 'Changchat@gmail.com', 53578956, b'1'),
(3, 'Chakcham', '654321', 'Chakcham@gmail.com', 56795621, b'0'),
(4, 'Cheungchi', '123456', 'Cheungchi@gmail.com', 54689852, b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bibID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`bibID`);

--
-- Indexes for table `magazines`
--
ALTER TABLE `magazines`
  ADD PRIMARY KEY (`bibID`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`bibID`);

--
-- Indexes for table `non_teachingstaff`
--
ALTER TABLE `non_teachingstaff`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserveID`),
  ADD KEY `fk6` (`bibID`),
  ADD KEY `fk7` (`userID`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`bibID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `teachingstaff`
--
ALTER TABLE `teachingstaff`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserveID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `non_teachingstaff`
--
ALTER TABLE `non_teachingstaff`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `fk6` FOREIGN KEY (`bibID`) REFERENCES `items` (`bibID`),
  ADD CONSTRAINT `fk7` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `teachingstaff`
--
ALTER TABLE `teachingstaff`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
