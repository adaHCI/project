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
-- Table structure for table `books`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
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
-- Table structure for table `books`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bibID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
>>>>>>> sam
