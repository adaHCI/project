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
-- Table structure for table `software`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`bibID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
