-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 22, 2018 at 09:10 AM
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
('003517953', 'Hidden Belgium.', '914.93 HID', 'Luster', '266 pages : colour illustrations, maps ; 18 cm.', 'Antwerpen :', '2018.', 'English'),
('003462292', 'Cinda Williams Chima', 'YF CHI', 'Chima, Cinda Williams.', '535 p. ; 21 cm.', 'New York, NY :', '2016', 'English'),
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
-- Table structure for table `favourite`
--

DROP TABLE IF EXISTS `favourite`;
CREATE TABLE `favourite` (
  `favouriteID` int(10) NOT NULL,
  `userID` int(11) NOT NULL,
  `bibID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`favouriteID`, `userID`, `bibID`) VALUES
(7, 1, '003382170'),
(11, 1, '003494404'),
(12, 1, '003500932');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `bibID` varchar(50) NOT NULL,
  `stock` int(10) NOT NULL DEFAULT '1',
  `intro` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`bibID`, `stock`, `intro`) VALUES
('000813254', 0, NULL),
('000813257', 0, NULL),
('000962622', 1, 'Animal Plants Magical Habitat Product Information Inspiring and dynamic guidance on the habitats of hundreds of animals, plants and their homes. Get a unique perspective on nature! See the world through the different animals in Animal Vision, or match animals and plants with their microscopic images on stunning close-ups. details! More than 1800 article screens and pop-ups provide a lot of detail! Watch and hear the secrets of the natural world! Experience the beautiful 3D habitat to learn more about plants and animals! Product Characteristics Learn how to classify plants and animals Explore the world\'s habitats Learn about plant and animal cycles and ecosystems Research on animals and threatened habitats.'),
('001043256', 0, NULL),
('001044490', 0, NULL),
('001045788', 1, 'Shortly before the autumn of 1610 the renowned Ming dynasty official, painter, writer, and collector Mi Wanzhong (1570 1628) purchased a scholar\'s rock to add to his already famous collection. So mesmerized was he by this newly purchased wonder, which was said to eclipse all others he owned, that he commissioned his friend and artistic mentor Wu Bin (c. 1568 1621) to paint a scroll showing ten views of this fantastic rock. The result was a monumental scroll, more than thirty feet long, of such grandeur and originality that it is considered one of the most important Chinese paintings and a milestone in the revered Chinese tradition of rock collecting. Crags and Ravines Make a Marvellous View celebrates Wu Bin\'s monumental work through a combination of scholarly essays, translations, and reproductions. In keeping with the spirit of the Rasika imprint, this beautiful book invites both the scholar and the curious amateur to contemplate and enjoy an exceptional work of art.'),
('003382170', 0, NULL),
('003386017', 1, 'The Blue Ridge Parkway connects the green valleys of Shenandoah National Park to the Great Smoky Mountains. Drive America\'s most scenic highway with Moon Blue Ridge Parkway Road Trip. Inside you\'ll find: Maps and Driving Tools: 29 easy-to-use maps keep you oriented on and off the highway, along with site-to-site mileage, driving times, and detailed directions for the entire route Eat, Sleep, Stop and Explore:Listen to live bluegrass with a glass of local moonshine, drive past fields brimming with fireflies, and wander through American history. You\'ll know exactly what you want to do at each stop with lists of the best hikes, views, and more  Itineraries for Every Traveler: Drive the entire two-week route or follow strategic itineraries like \"Music of the Blue Ridge,\" including suggestions for spending time in in Washington DC, Front Royal, Waynesboro, Roanoke, Galax, Asheville, Cherokee, and Knoxville Local Expert: North Carolinian and mountaineer Jason Frye shares his love of the Great Smoky Mountains (and where to find the best barbecue!)  Planning Your Trip: Know when and where to get gas, how to avoid traffic, tips for driving in different road and weather conditions, and suggestions for LGBTQ travelers, seniors, and road trippers with kids With Moon Blue Ridge Parkway Road Trip\'s practical tips, detailed itineraries, and local insight, you\'re ready to fill up the tank and hit the road. Looking to explore more of America on wheels? Try Moon Nashville to New Orleans Road Trip! Doing more than driving through? Check out Moon Blue Ridge & Smoky Mountains or Moon North Carolina.'),
('003393321', 0, NULL),
('003425739', 1, 'Hit Spain\'s can\'t-miss art, sights, and bites in two weeks or less with Rick Steves Best of Spain! * Expert advice from Rick Steves on what\'s worth your time and money * Two-day itineraries covering Barcelona, Madrid, Toledo, Granada, Andalucia\'s White Hill Towns, and Sevilla * Over 60 full-color maps and vibrant photos * Rick\'s tips for beating the crowds, skipping lines, and avoiding tourist traps * The best of local culture, flavors, and haunts, including walks through the most interesting neighborhoods and museums * Trip planning strategies like how to link destinations and design your itinerary, what to pack, where to stay, and how to get around * Suggestions for side trips to Montserrat and Figueres, Basque Country, Santiago de Compostela, El Escorial, Segovia, Salamanca, Cordoba, and Spain\'s South Coast Experience Spain\'s Old World romance and New World excitement for yourself with Rick Steves Best of Spain! Planning a longer trip? Rick Steves Spain 2018 is the classic, in-depth guide to exploring the country, updated annually. Time for a quick getaway? Colorful Rick Steves Pocket Barcelona is perfect when you have a week or less.'),
('003432369', 0, NULL),
('003435677', 0, NULL),
('003443013', 0, NULL),
('003444053', 1, 'Guide the children to know the spring, summer, autumn and winter, observe the color changes of the season, listen to the sound of the season, smell the smell of the season, let the children open the senses and feel the magical changes of the four seasons. Parents may also wish to grasp the autumn season, and the children to come to the autumn sunrise tour, together with the footsteps of autumn!'),
('003462292', 0, '16-year-old Han Alister encounters three underage wizards setting fire to the sacred mountain of Hanalea. Alister is unaware that this will lead to a series of events that threaten to consume the world in chaos. To prevent the wizard Micah from using a magical amulet against him, he makes Micah give him the amulet. Later Alister learns that the amulet has an evil history, and it once belonged to the Demon King. The Demon King is an evil sorcerer who almost destroyed the world a millennia ago. Now, the wizards will stop at nothing to get their amulet back.'),
('003493912', 1, 'Make eye contact with a tree.\" \"Do not practice cannibalism.\" \"Wear comfortable shoes.\" \"Sing, every once in a while.\" \"In later life, become a mystic.\" Offbeat, warm, and funny, Ron Padgett\'s prescriptions for human perfection springs to life in Jason Novak\'s cartoons-a delightful match-up of sensibilities. And remember: \"Don\'t give advice.\"\r\n\r\nRon Padgett\'s How Long was a Pulitzer Prize finalist in poetry and his Collected Poems won the William Carlos Williams Award from the Poetry Society of America and the Los Angeles Times Book Prize for the best poetry book of 2013. His work has been translated into eighteen languages.\r\n\r\nJason Novak is a cartoonist whose work has appeared in the New Yorker the Paris Review and the Believer among other places. He lives in Oakland, California.\r\n'),
('003494404', 1, 'Bestselling author Tony Abbott returns with the next full-length book in the Copernicus Legacy series, a globe-trotting adventure packed with more riddles, puzzles, and secret histories. The hunt for Copernicus\'s first relic sent Wade, Darrell, Lily, and Becca to the far reaches of the world and put them in serious danger. But they never imagined Sara Kaplan-Darrell and Wade\'s mother-would be kidnapped by the conniving Galina Krause. Now they must race the evil Teutonic Order to find the Serpens relic and rescue Sara before it\'s too late.\r\n\r\nFans of Rick Riordan and Ridley Pearson will love this epic series, which is filled with suspense and action.\r\n\r\nCorrelates to the Common Core State Standards in English Language Arts\r\n'),
('003494417', 1, '\"Reminiscent of Mo Willems\'s \'Elephant and Piggie\' series\"-Publishers Weekly\r\n\r\nFrog does NOT want to grow up. Doesn\'t need to be tall. Doesn\'t want to be able to jump high enough to see the tree frogs. He\'s just FINE being small. Besides, if you grow up, you don\'t get to do fun things like jump in mud puddles with your best friend, Pig. Do you? \r\n This hilarious story uses humor to teach that it\'s great being exactly who you are-is sure to bring a smile to every kid who just wants to stay a kid, in addition to those who are the smallest in their class. It\'s a sly and smartly funny tale that will have children and parents laughing together.\r\n'),
('003496926', 1, 'To respond to the global need for adequate quality assurance of pharmaceuticals, WHO\'s Expert Committee in Specifications for Pharmaceutical Preparations has, over the years, made numerous recommendations to establish standards and guidelines and to promote the effective functioning of national regulatory and control systems, and the implementation of internationally-agreed standards by trained personnel.'),
('003500632', 1, 'How to find investment and business projects that can help you make money?\r\nAfter you find it, how can you build a profitable system? What is the route? How to implement?\r\nThe answer to this series of questions is the rich experience that this book wants to share with you.\r\n\r\nMaking money with money does not mean that you have nothing to do. On the contrary, it is very hard to learn and operate at the beginning. After you have established your own system of making money, you basically don\'t have to do it, or you can make a small income. Thoughts.\r\n'),
('003500680', 1, 'In today\'s increasingly complex environment, how can we do a good job and how can we become a good manager? As a young person who has just entered the workplace, how to interact with the environment and develop a personal career? This book is a \"compulsory course\". I hope that readers can master important business management concepts in a short period of time. At the same time, we will take practice as a starting point and hope that everyone will establish a solid conceptual foundation when starting a career, without blindly exploring and Take the first step in the world of business management with confidence.'),
('003500932', 1, NULL),
('003505134', 1, 'Spectacular photography, rich historical background, and essential travel information are combined in this indispensable reference for the immense, diverse, remote region at the crossroads of Europe and Asia. A country larger than Western Europe, Kazakhstan\'s vast expanse encompasses the Great Steppe, the heights of the Tien Shan in the south, the exquisite lakes and valleys of the mystical Altai mountains in the northeast, and the archaeologically rich desert coast of the Caspian Sea in the west. With independence and the discovery of oil has come rapid modernization, and Kazakhstan today stands as Central Asia\'s most stable and forward-thinking nation.'),
('003505731', 1, 'Michelin\'s local map series with its high level of road detail is ideal for exploring the villages, towns and back roads of France. Bike paths and nature trails are indicated for outdoor fun, while suggested driving tours highlight the must-see sights of each area. Inset town maps help with navigation in and around urban areas. Clear, precise cartography with symbols conveying important travel information plus a legend in English allow travelers to quickly find their way.'),
('003506021', 1, 'This handy A5 atlas fits in the glovebox of your car, perfect for quick referencing on the move. Including information on road map symbols, key to map page and mileage chart, this is the perfect companion for travelling through Britain and Ireland.'),
('003506576', 1, 'If we\'ve done our job well?and, let\'s be honest, if we\'re lucky?you\'ll read to the end of this description. Most likely, however, you won\'t. Somewhere in the middle of the next paragraph, your mind will wander off. Minds wander. That\'s just how it is.\r\n \r\nThat may be bad news for me, but is it bad news for people in general? Does the fact that as much as fifty percent of our waking hours find us failing to focus on the task at hand represent a problem? Michael Corballis doesn\'t think so, and with The Wandering Mind, he shows us why, rehabilitating woolgathering and revealing its incredibly useful effects. Drawing on the latest research from cognitive science and evolutionary biology, Corballis shows us how mind-wandering not only frees us from moment-to-moment drudgery, but also from the limitations of our immediate selves. Mind-wandering strengthens our imagination, fueling the flights of invention, storytelling, and empathy that underlie our shared humanity; furthermore, he explains, our tendency to wander back and forth through the timeline of our lives is fundamental to our very sense of ourselves as coherent, continuing personalities.\r\n \r\nFull of unusual examples and surprising discoveries, The Wandering Mind mounts a vigorous defense of inattention--even as it never fails to hold the reader\'s.\r\n'),
('003508963', 1, 'Ikebana, the ancient Japanese art of flower arranging, has never been easier-or more fun! This colorful, easy-to-follow guide will walk you through the steps of 10 different ikebana projects. Before you know it, you\'ll be creating your very own unique and beautiful flower arrangements. Creating flower arrangements is a great way to explore this time-honored Japanese art form.'),
('003511418', 0, NULL),
('003515364', 0, NULL),
('003515614', 1, 'Check out Lonely Planet Vienna, our most comprehensive guidebook to the city, covering the top sights and most authentic off-beat experiences. Or check out Lonely Planet Pocket Vienna, a handy-sized guide focused on the can\'t-miss experiences for a quick trip.\r\n\r\nAbout Lonely Planet: Since 1973, Lonely Planet has become the world\'s leading travel media company with guidebooks to every destination, an award-winning website, mobile and digital travel products, and a dedicated traveller community. Lonely Planet covers must-see spots but also enables curious travellers to get off beaten paths to understand more of the culture of the places in which they find themselves. The world awaits!'),
('003515629', 0, NULL),
('003515637', 1, 'TripAdvisor Travelers\' Choice Awards 2012, 2013, 2014, 2015 and 2016 winner in Favorite Travel Guide category\r\n\r\n\'Lonely Planet guides are, quite simply, like no other.\' - New York Times\r\n\r\n\'Lonely Planet. It\'s on everyone\'s bookshelves; it\'s in every traveller\'s hands. It\'s on mobile phones. It\'s on the Internet. It\'s everywhere, and it\'s telling entire generations of people how to travel the world.\' - Fairfax Media (Australia)'),
('003515650', 0, NULL),
('003516372', 1, 'A fact-filled book showing the most famous and interesting sights in Britain and Northern Ireland, and maps to stick them on. Each double page shows a region with key geographic and historic features, towns and fun places to visit.'),
('003517698', 0, NULL),
('003517953', 1, 'Journalist Derek Blyth was born in the U.K. but has lived in Belgium for more than 25 years. He has written countless articles about Belgian cities (for example as editor-in-chief of The Bulletin) and books like Flemish Cities Explored. He is the author of The 500 Hidden Secrets of Brussels, Antwerp, Ghent, and Flanders Fields and the Belgian Coast. This brand new guide is his personal ode to the most beautiful and intriguing spots in what he calls \'the world\'s strangest country\''),
('003518592', 1, 'Explore the City: Navigate by neighborhood or by activity with color-coded maps, or follow turn-by-turn directions for a self-guided neighborhood walk.\r\nGet a Taste of the City: Sample Chicago beef at a classic steakhouse, grab a gourmet hot dog, or pick from dozens of high-end farm-to-table restaurants but don\'t forget to try the deep-dish pizza!'),
('003519747', 1, 'From Lonely Planet, the world\'s leading travel guide publisher\r\n\r\nDurable and waterproof, with a handy slipcase and an easy-fold format, Lonely Planet Seattle City Map is your conveniently-sized passport to traveling with ease. Get more from your map and your trip with images and information about top city attractions, walking tour routes, transport maps, itinerary suggestions, extensive street and site index, and practical travel tips and directory. With this easy-to-use, full colour navigation tool in your back pocket, you can truly get to the heart of Seattle, so begin your journey now!'),
('003519750', 0, NULL);

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
  `userEmail` varchar(100) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `isFirstLogin` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userName`, `userPwd`, `userEmail`, `userPhone`, `isFirstLogin`) VALUES
(1, 'BunChai', '654321', 'checkproject18@gmail.com', 65462344, b'0'),
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
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`favouriteID`),
  ADD KEY `fk8` (`bibID`),
  ADD KEY `fk9` (`userID`);

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
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `favouriteID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserveID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favourite`
--
ALTER TABLE `favourite`
  ADD CONSTRAINT `fk8` FOREIGN KEY (`bibID`) REFERENCES `items` (`bibID`),
  ADD CONSTRAINT `fk9` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

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
