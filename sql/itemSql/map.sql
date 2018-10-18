<<<<<<< HEAD
-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2018 at 09:07 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`bibID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
=======
-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2018 at 09:07 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`bibID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
>>>>>>> sam
