
DROP TABLE IF EXISTS `return`;

CREATE TABLE `return` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL,
  PRIMARY KEY (`RollNo`,`BookId`),
  KEY `BookId` (`BookId`),
  CONSTRAINT `return_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  CONSTRAINT `return_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `return`
--

LOCK TABLES `return` WRITE;
INSERT INTO `return` VALUES ('b160158cs',1),('b160003ch',9),('b160511cs',10),('b160511cs',13),('b160158cs',18);
UNLOCK TABLES;

