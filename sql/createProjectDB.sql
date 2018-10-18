<<<<<<< HEAD

DROP TABLE IF EXISTS `alumni`;

CREATE TABLE `alumni` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(20) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `isFirstLogin` BIT DEFAULT 1,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `non_teachingStaff`;

CREATE TABLE `non_teachingStaff` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(20) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `isFirstLogin` BIT DEFAULT 1,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(20) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `isFirstLogin` BIT DEFAULT 1,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `teachingStaff`;

CREATE TABLE `teachingStaff` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(20) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `isFirstLogin` BIT DEFAULT 1,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
=======

DROP TABLE IF EXISTS `alumni`;

CREATE TABLE `alumni` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(20) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `isFirstLogin` BIT DEFAULT 1,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `non_teachingStaff`;

CREATE TABLE `non_teachingStaff` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(20) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `isFirstLogin` BIT DEFAULT 1,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(20) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `isFirstLogin` BIT DEFAULT 1,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `teachingStaff`;

CREATE TABLE `teachingStaff` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(20) NOT NULL,
  `userEmail` varchar(20) NOT NULL,
  `userPhone` int(20) NOT NULL,
  `isFirstLogin` BIT DEFAULT 1,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
>>>>>>> sam
