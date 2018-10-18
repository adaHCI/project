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
-- Table structure for table `magazines`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `magazines`
--
ALTER TABLE `magazines`
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
-- Table structure for table `magazines`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `magazines`
--
ALTER TABLE `magazines`
  ADD PRIMARY KEY (`bibID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
>>>>>>> sam
