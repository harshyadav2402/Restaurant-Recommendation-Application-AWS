-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2017 at 10:38 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurantdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Custid` int(11) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `StreetAddress` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Zipcode` int(11) NOT NULL,
  `Contact` varchar(45) NOT NULL,
  `FavCuisine` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`FirstName`, `LastName`, `Custid`, `Email`, `StreetAddress`, `City`, `State`, `Zipcode`, `Contact`, `FavCuisine`, `Password`) VALUES
('Harsh', 'Yadav', 1, 'hy1217@nyu.edu', '103-16, 107 Street', 'New York', 'NY', 11417, '9292925185', 'Italian', 'harshyadav'),
('Jayesh ', 'Patil', 2, 'jpp421@nyu.edu', '123, 12 Street', 'Charlotte', 'NC', 11412, '9871234563', 'Italian', 'jayesh'),
('Abhishek', 'Kuntal', 7, 'ak6181@nyu.edu', '121, 109 Street', 'New York', 'NY', 12312, '9872153479', 'Thai', 'abhishek'),
('Raghav', 'Bansal', 8, 'rg1292@gmail.com', '103, 111 Street', 'Green City', 'NC', 28202, '9832415782', 'French', 'raghav'),
('Tom', 'Lee', 9, 'tomlee@gmail.com', '121-123 Street', 'Charlotte', 'NC', 28203, '9834218634', 'Italian', 'tomlee');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `Username` varchar(200) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `ratingid` int(11) NOT NULL,
  `rate` float DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`Username`, `Email`, `ratingid`, `rate`) VALUES
('Max', 'max123', 1, 4),
('ba123@gmail.com', NULL, 2, 2),
('barry123', NULL, 3, 3),
('Bill135559', NULL, 4, 4),
('Bill183882', NULL, 5, 1),
('Bill203684', NULL, 6, 3),
('Bill241476', NULL, 7, 4),
('Bill271444', NULL, 8, 0),
('Bill398809', NULL, 9, 3),
('Bill587388', NULL, 10, 1),
('Bill818307', NULL, 11, 3),
('Bill883412', NULL, 12, 3),
('Bill891504', NULL, 13, 1),
('Bill906929', NULL, 14, 2),
('Bill942271', NULL, 15, 3),
('Harry172179', NULL, 16, 0),
('Harry192084', NULL, 17, 3),
('Harry252082', NULL, 18, 0),
('Harry313160', NULL, 19, 2),
('Harry319463', NULL, 20, 0),
('Harry366501', NULL, 21, 3),
('Harry474512', NULL, 22, 2),
('Harry829781', NULL, 23, 0),
('Harry835089', NULL, 24, 2),
('Harry933974', NULL, 25, 4),
('Harry973299', NULL, 26, 4),
('hy1216', NULL, 27, 4),
('Jack109111', NULL, 28, 3),
('Jack234688', NULL, 29, 4),
('Jack238530', NULL, 30, 5),
('Jack288851', NULL, 31, 0),
('Jack313434', NULL, 32, 3),
('Jack331884', NULL, 33, 4),
('Jack493816', NULL, 34, 5),
('Jack577125', NULL, 35, 3),
('Jack617061', NULL, 36, 4),
('Jack68647', NULL, 37, 5),
('Jack734695', NULL, 38, 3),
('Jack856793', NULL, 39, 0),
('James148558', NULL, 40, 3),
('James234304', NULL, 41, 3),
('James326267', NULL, 42, 4),
('James370276', NULL, 43, 5),
('James436666', NULL, 44, 2),
('James463987', NULL, 45, 0),
('James521732', NULL, 46, 2),
('James542033', NULL, 47, 4),
('James547045', NULL, 48, 3),
('James557215', NULL, 49, 0),
('James774407', NULL, 50, 2),
('James80905', NULL, 51, 3),
('James814422', NULL, 52, 0),
('James895937', NULL, 53, 0),
('James971855', NULL, 54, 4),
('James982856', NULL, 55, 4),
('Jane192635', NULL, 56, 0),
('Jane325909', NULL, 57, 3),
('Jane369733', NULL, 58, 3),
('Jane745293', NULL, 59, 0),
('Jane807803', NULL, 60, 3),
('Jane820147', NULL, 61, 3),
('Jane895040', NULL, 62, 3),
('Jane935098', NULL, 63, 0),
('Jane963884', NULL, 64, 0),
('Jane972332', NULL, 65, 0),
('Jeremy158932', NULL, 66, 3),
('Jeremy292672', NULL, 67, 3),
('Jeremy353744', NULL, 68, 0),
('Jeremy419417', NULL, 69, 2),
('Jeremy446505', NULL, 70, 4),
('Jeremy497074', NULL, 71, 3),
('Jeremy523839', NULL, 72, 0),
('Jeremy533039', NULL, 73, 3),
('Jeremy612580', NULL, 74, 0),
('Jeremy616563', NULL, 75, 3),
('Jeremy621197', NULL, 76, 4),
('Jeremy687928', NULL, 77, 4),
('Jeremy781967', NULL, 78, 3),
('Jeremy801509', NULL, 79, 4),
('Jeremy847196', NULL, 80, 2),
('Jeremy904521', NULL, 81, 4),
('Jeremy953403', NULL, 82, 0),
('John24491', NULL, 83, 4),
('John247430', NULL, 84, 0),
('John479706', NULL, 85, 3),
('John527707', NULL, 86, 2),
('John589677', NULL, 87, 0),
('John783056', NULL, 88, 4),
('John886619', NULL, 89, 5),
('John88738', NULL, 90, 4),
('John968469', NULL, 91, 4),
('Lee16304v', NULL, 92, 4),
('Lee226322', NULL, 93, 3),
('Lee227202', NULL, 94, 2),
('Lee254404', NULL, 95, 4),
('Lee545718', NULL, 96, 4),
('Lee649383', NULL, 97, 4),
('Lee703906', NULL, 98, 4),
('Lee763486', NULL, 99, 4),
('Lee862055', NULL, 100, 4),
('Lee956191', NULL, 101, 4),
('Lucy114026', NULL, 102, 4),
('Lucy184097', NULL, 103, 0),
('Lucy211679', NULL, 104, 3),
('Lucy253284', NULL, 105, 2),
('Lucy259986', NULL, 106, 3),
('Lucy261475', NULL, 107, 2),
('Lucy344560', NULL, 108, 1),
('Lucy411377', NULL, 109, 3),
('Lucy502576', NULL, 110, 4),
('Lucy513881', NULL, 111, 5),
('Lucy527533', NULL, 112, 3),
('Lucy548833', NULL, 113, 1),
('Lucy578573', NULL, 114, 3),
('Lucy643282', NULL, 115, 4),
('Lucy769605', NULL, 116, 5),
('Lucy827069', NULL, 117, 2),
('Lucy831441', NULL, 118, 5),
('Lucy843114', NULL, 119, 2),
('Lucy888358', NULL, 120, 2),
('Lucy891268', NULL, 121, 5),
('Lucy917254', NULL, 122, 3),
('Mac211889', NULL, 123, 2),
('Mac218879', NULL, 124, 2),
('Mac307382', NULL, 125, 2),
('Mac336560', NULL, 126, 4),
('Mac351648', NULL, 127, 0),
('Mac558647', NULL, 128, 5),
('Mac562740', NULL, 129, 5),
('Mac571226', NULL, 130, 3),
('Mac578756', NULL, 131, 5),
('Mac704657', NULL, 132, 5),
('Mac724472', NULL, 133, 5),
('Mac779599', NULL, 134, 5),
('Mac798975', NULL, 135, 0),
('Mac973887', NULL, 136, 4),
('Mac981446', NULL, 137, 4),
('mar123', NULL, 138, 0),
('Mathew107389', NULL, 139, 5),
('Mathew182972', NULL, 140, 3),
('Mathew186636', NULL, 141, 0),
('Mathew225548', NULL, 142, 3),
('Mathew22573', NULL, 143, 0),
('Mathew353234', NULL, 144, 3),
('Mathew367741', NULL, 145, 0),
('Mathew400691', NULL, 146, 3),
('Mathew433648', NULL, 147, 0),
('Mathew573121', NULL, 148, 3),
('Mathew618674', NULL, 149, 4),
('Mathew703676', NULL, 150, 3),
('Mathew752775', NULL, 151, 3),
('Mathew813003', NULL, 152, 3),
('Mathew88840', NULL, 153, 3),
('Mathew921478', NULL, 154, 0),
('Mathew982566', NULL, 155, 4),
('Max24890', NULL, 156, 3),
('Max329237', NULL, 157, 0),
('Max360515', NULL, 158, 3),
('Max376185', NULL, 159, 3),
('Max402074', NULL, 160, 3),
('Max499467', NULL, 161, 0),
('Max555762', NULL, 162, 2),
('Max592842', NULL, 163, 2),
('Max662080', NULL, 164, 0),
('Max669865', NULL, 165, 4),
('Max795413', NULL, 166, 4),
('Max813676', NULL, 167, 4),
('Max854858', NULL, 168, 4),
('Max925163', NULL, 169, 4),
('Max938231', NULL, 170, 5),
('Max969748', NULL, 171, 0),
('Max980922', NULL, 172, 3),
('mehul123', NULL, 173, 0),
('Moore157721', NULL, 174, 2),
('Moore249392', NULL, 175, 0),
('Moore388448', NULL, 176, 2),
('Moore414733', NULL, 177, 4),
('Moore432887', NULL, 178, 4),
('Moore509268', NULL, 179, 3),
('Moore564290', NULL, 180, 2),
('Moore56449', NULL, 181, 2),
('Moore565298', NULL, 182, 4),
('Moore640235', NULL, 183, 4),
('Moore708805', NULL, 184, 5),
('Moore795729', NULL, 185, 3),
('Moore907710', NULL, 186, 2),
('Moore924470', NULL, 187, 2),
('Moore951763', NULL, 188, 4),
('Moore963275', NULL, 189, 5),
('Pat148815', NULL, 190, 5),
('Pat200050', NULL, 191, 5),
('Pat409032', NULL, 192, 0),
('Pat508784', NULL, 193, 5),
('Pat540914', NULL, 194, 5),
('Pat58330', NULL, 195, 5),
('Pat66082', NULL, 196, 5),
('Pat715231', NULL, 197, 4),
('Pat757427', NULL, 198, 3),
('Pat790508', NULL, 199, 3),
('Pat853391', NULL, 200, 3),
('Pat911798', NULL, 201, 0),
('Pat946350', NULL, 202, 2),
('Pat965222', NULL, 203, 0),
('Peter127576', NULL, 204, 4),
('Peter130041', NULL, 205, 5),
('Peter142820', NULL, 206, 3),
('Peter160748', NULL, 207, 4),
('Peter16890', NULL, 208, 3),
('Peter19404', NULL, 209, 3),
('Peter391297', NULL, 210, 4),
('Peter398991', NULL, 211, 3),
('Peter468738', NULL, 212, 3),
('Peter583958', NULL, 213, 3),
('Peter816010', NULL, 214, 4),
('Peter828566', NULL, 215, 3),
('Peter951772', NULL, 216, 3),
('Peter994989', NULL, 217, 0),
('Shane248300', NULL, 218, 2),
('Shane280508', NULL, 219, 2),
('Shane281083', NULL, 220, 2),
('Shane301194', NULL, 221, 2),
('Shane308505', NULL, 222, 2),
('Shane400401', NULL, 223, 2),
('Shane48417', NULL, 224, 1),
('Shane529615', NULL, 225, 1),
('Shane609422v', NULL, 226, 1),
('Shane631127', NULL, 227, 1),
('Shane714894', NULL, 228, 1),
('Shane716670', NULL, 229, 1),
('Shane786768', NULL, 230, 0),
('Shane870873', NULL, 231, 0),
('Shane911926', NULL, 232, 3),
('Shane926735', NULL, 233, 4),
('Shane971546', NULL, 234, 5),
('Tom26301', NULL, 235, 5),
('Tom380441', NULL, 236, 5),
('Tom395279', NULL, 237, 5),
('Tom407166', NULL, 238, 5),
('Tom414056', NULL, 239, 4),
('Tom46468', NULL, 240, 3),
('Tom572270', NULL, 241, 3),
('Tom647568', NULL, 242, 3),
('Tom684519', NULL, 243, 3),
('Tom802178', NULL, 244, 3),
('Tom825450', NULL, 245, 0),
('Tom844108', NULL, 246, 3),
('Tom851997', NULL, 247, 3),
('Tom951997', NULL, 248, 3),
('Tom978538', NULL, 249, 3),
('Shane971546', 'jpp421@nyu.edu', 250, 4),
('Shane971546', 'jpp421@nyu.edu', 251, 3.5),
('Shane971546', 'jpp421@nyu.edu', 252, 3);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Reserid` int(11) NOT NULL,
  `Username` varchar(40) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Value` int(11) DEFAULT NULL,
  `Arrive` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `Name` varchar(45) NOT NULL,
  `Restid` int(11) NOT NULL,
  `Street` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Zipcode` int(11) NOT NULL,
  `Cuisine` varchar(45) NOT NULL,
  `Photo` varchar(200) DEFAULT 'default.jpg',
  `OwnerName` varchar(45) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `happyhourdetail` varchar(45) DEFAULT 'No Discount',
  `happystatus` varchar(20) DEFAULT 'Stop'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`Name`, `Restid`, `Street`, `City`, `State`, `Zipcode`, `Cuisine`, `Photo`, `OwnerName`, `Username`, `Password`, `happyhourdetail`, `happystatus`) VALUES
('Rusty Bucket Restaurant and Tavern', 5, '4810 Ashley Park Ln, South Park', 'Charlotte', 'NC', 28210, 'Japanese', 'default.jpg', 'Harsh Yadav', 'hy1216', '24harsh02', 'No Discount', NULL),
('Buca di Beppo Italian Restaurant', 6, '10915 Carolina Place Parkway', 'Pineville', 'NC', 28134, 'Italian', 'default.jpg', 'Barry', 'barry123', 'barry', '9% OFF', 'Start'),
('Applebee', 7, '10921 Carolina Pl Pkwy', 'Pineville', 'NC', 28134, 'Thai', 'default.jpg', 'Bucky', 'ba123@gmail.com', 'buc123', 'No Discount', NULL),
('Olive Garden Italian Restaurant', 13, '9421 Pineville Matthews Rd', 'Pinesville', 'NC', 28134, 'Italian', '80130-five-guys-secret-menu1.jpg', 'Mary Jane', 'mar123', 'marry', '', 'Stop'),
('Fox and Hound Smokehouse & Tavern', 35, '330 N Tryon St\nFirst Ward\n', 'Charlotte', 'NC', 28202, 'French', 'default.jpg', 'Moore', 'Harry319463', '965569', 'No Discount', 'Stop'),
('Rí Rá Irish Pub', 36, '208 N Tryon St\nFirst Ward\n', 'Charlotte', 'NC', 28202, 'Italian', 'default.jpg', 'Mac', 'Tom26301', '304001', 'No Discount', 'Stop'),
('Champions', 37, '100 W Trade St\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'French', 'default.jpg', 'Lucy', 'Moore951763', '999447', 'No Discount', 'Stop'),
('Rock Bottom Restaurant & Brewery', 38, '401 N Tryon St\nSte 100\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'Chinese', 'default.jpg', 'Jeremy', 'Harry973299', '562751', 'No Discount', 'Stop'),
('Phils Deli New York Deli & Tavern', 39, '105 E 5th St First Ward', 'Charlotte', 'NC', 28202, 'Mexican', 'default.jpg', 'Shane', 'Shane631127', '424589', 'No Discount', 'Stop'),
('Hartigans Irish Pub', 40, '601 S Cedar St Uptown', 'Charlotte', 'NC', 28202, 'American', 'default.jpg', 'Pat', 'Max360515', '391349', 'No Discount', 'Stop'),
('Phils Tavern', 41, '105 E 5th St\nFirst Ward', 'Charlotte', 'NC', 28202, 'Thai', 'default.jpg', 'Peter', 'Lucy114026', '229154', 'No Discount', 'Stop'),
('The Capital Grille', 42, '201 N Tryon St\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'American', 'default.jpg', 'Jack', 'John783056', '725101', 'No Discount', 'Stop'),
('Graduate Food & Pub', 43, '123 W Trade St\n', 'Charlotte', 'NC', 28202, 'American', 'default.jpg', 'Shane', 'Harry933974', '984628', 'No Discount', 'Stop'),
('Stool Pigeons Coop & Grill', 44, '214 N Church St\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'Mexican', 'default.jpg', 'Mac', 'Shane400401', '684327', 'No Discount', 'Stop'),
('Cosmos Cafe', 45, '300 N College St\nFirst Ward\n', 'Charlotte', 'NC', 28202, 'French', 'default.jpg', 'Jeremy', 'Max669865', '124322', 'No Discount', 'Stop'),
('Blue Restaurant & Bar', 46, '310 N College St', 'Charlotte', 'NC', 28202, 'Mexican', 'default.jpg', 'Jeremy', 'Moore565298', '687079', 'No Discount', 'Stop'),
('Cajun Queen', 47, '1800 E 7th St\nElizabeth\n', 'Charlotte', 'NC', 28204, 'Italian', 'default.jpg', 'Shane', 'Mac571226', '818353', 'No Discount', 'Stop'),
('Kabob House', 48, '6432 E Independence Blvd\n', 'Charlotte', 'NC', 28212, 'Japanese', 'default.jpg', 'Bill', 'Lucy843114', '937401', 'No Discount', 'Stop'),
('Flying Saucer Draught Emporium', 49, '9605 N Tryon St\nSte A\nUniversity City\n', 'Charlotte', 'NC', 28262, 'Indian', 'default.jpg', 'Max', 'Moore924470', '560229', 'No Discount', 'Stop'),
('Hickory Tavern', 50, '11504 Providence Rd\n', 'Charlotte', 'NC', 28104, 'Indian', 'default.jpg', 'Jack', 'Mathew182972', '896737', 'No Discount', 'Stop'),
('Baileys Sports Grille', 51, '8500 Matthews Rd\nSte K', 'Charlotte', 'NC', 28226, 'Italian', 'default.jpg', 'Harry', 'Jack577125', '158184', 'No Discount', 'Stop'),
('Chilis Grill & Bar', 52, '500 University Center Blvd\nUniversity City', 'Charlotte', 'NC', 28262, 'American', 'default.jpg', 'Bill', 'Jack734695', '422999', 'No Discount', 'Stop'),
('Stool Pigeons Coop & Grill', 53, '9609 N Tryon St\nUniversity City', 'Charlotte', 'NC', 28262, 'Italian', 'default.jpg', 'Peter', 'Lucy259986', '419186', 'No Discount', 'Stop'),
('Applebees', 54, '8700 Jw Clay Blvd\nUniversity City', 'Charlotte', 'NC', 28262, 'Indian', 'default.jpg', 'Mac', 'Moore907710', '866399', 'No Discount', 'Stop'),
('Picassos Sports Cafe', 55, '230 E Wt Harris Blvd\nUniversity City', 'Charlotte', 'NC', 28262, 'Thai', 'default.jpg', 'Pat', 'Lee763486', '742300', 'No Discount', 'Stop'),
('Hooters', 56, '7702 Gateway Ln\n', 'Concord', 'NC', 28027, 'American', 'default.jpg', 'Shane', 'James463987', '971176', 'No Discount', 'Stop'),
('Olive Garden Italian Restaurant', 57, '8010 Concord Mills Blvd\n', 'Concord', 'NC', 28027, 'Indian', 'default.jpg', 'Lee', 'Jane963884', '790884', 'No Discount', 'Stop'),
('Macados', 58, '8111 Concord Blvd\n', 'Concord Mills', 'NC', 28027, 'American', 'default.jpg', 'Mathew', 'Pat853391', '627822', 'No Discount', 'Stop'),
('Iron Thunder Saloon', 59, '10023 Weddington Rd\n', 'Concord', 'NC', 28027, 'American', 'default.jpg', 'Peter', 'Jack109111', '340779', 'No Discount', 'Stop'),
('Picadelis Pub', 60, '1600 Matthews Mint Hill Rd\nSte A', 'Matthews', 'NC', 28105, 'American', 'default.jpg', 'Mathew', 'Peter994989', '274472', 'No Discount', 'Stop'),
('Applebees', 61, '9616 E Independence Blvd', 'Matthews', 'NC', 28105, 'Japanese', 'default.jpg', 'Mathew', 'Lee254404', '419316', 'No Discount', 'Stop'),
('Vinnies Sardine Grill & Raw Bar', 62, '1714 S Blvd\nDerita\n', 'Charlotte', 'NC', 28203, 'Thai', 'default.jpg', 'Harry', 'Lucy888358', '407527', 'No Discount', 'Stop'),
('East Boulevard Bar & Grill', 63, '1315 E Blvd\nSte 130\nUniversity City\n', 'Charlotte', 'NC', 28203, 'Thai', 'default.jpg', 'Mathew', 'Jack288851', '833920', 'No Discount', 'Stop'),
('300 East', 64, '300 East Blvd\nSouth End\n', 'Charlotte', 'NC', 28203, 'Italian', 'default.jpg', 'Lee', 'Bill906929', '484843', 'No Discount', 'Stop'),
('Bonterra Restaurant & Wine Room', 65, '1829 Cleveland Ave\nSouth End\n', 'Charlotte', 'NC', 28203, 'Thai', 'default.jpg', 'Pat', 'James80905', '112841', 'No Discount', 'Stop'),
('Tyber Creek Pub', 66, '1933 South Blvd\nSouth End\n', 'Charlotte', 'NC', 28203, 'Japanese', 'default.jpg', 'Mac', 'Jeremy446505', '904064', 'No Discount', 'Stop'),
('Nikko Japanese Restaurant & Sushi Bar', 67, '325 Arlington Ave\nSte 108\nSouth End\n', 'Charlotte', 'NC', 28203, 'American', 'default.jpg', 'Lucy', 'Jeremy292672', '394588', 'No Discount', 'Stop'),
('Comet Grill', 68, '2224 Park Rd\n', 'Charlotte', 'NC', 28203, 'Mexican', 'default.jpg', 'Jane', 'Shane911926', '719979', 'No Discount', 'Stop'),
('Jillians', 69, '200 E Bland St\nSouth End\n', 'Charlotte', 'NC', 28203, 'American', 'default.jpg', 'Lucy', 'Lucy548833', '668937', 'No Discount', 'Stop'),
('The Common Market', 70, '2007 Commonwealth Ave\n', 'Charlotte', 'NC', 28205, 'Chinese', 'default.jpg', 'John', 'Jeremy353744', '441555', 'No Discount', 'Stop'),
('The Penguin Drive-In', 71, '1921 Commonwealth Ave\n', 'Charlotte', 'NC', 28205, 'Chinese', 'default.jpg', 'Shane', 'James370276', '848609', 'No Discount', 'Stop'),
('Thomas Street Tavern', 72, '1228 Thomas Ave\n', 'Charlotte', 'NC', 28205, 'Thai', 'default.jpg', 'John', 'James436666', '641275', 'No Discount', 'Stop'),
('Yesteryears Goodtime Pub', 73, '4508 E Independence Blvd\nCotswold\n', 'Charlotte', 'NC', 28205, 'Japanese', 'default.jpg', 'Pat', 'John968469', '268583', 'No Discount', 'Stop'),
('Primo Tuscan Grille', 74, '116 Middleton Dr\nElizabeth\n', 'Charlotte', 'NC', 28207, 'Mexican', 'default.jpg', 'Harry', 'Lee227202', '580367', 'No Discount', 'Stop'),
('Providence Road Sundries', 75, '1522 Providence Rd\nElizabeth\n', 'Charlotte', 'NC', 28207, 'Thai', 'default.jpg', 'James', 'Tom414056', '265632', 'No Discount', 'Stop'),
('Selwyn Avenue Pub', 76, '2801 Selwyn Ave\nMyers Park\n', 'Charlotte', 'NC', 28209, 'Japanese', 'default.jpg', 'Jack', 'Shane48417', '40296', 'No Discount', 'Stop'),
('The Press Box', 77, '1627 Montford Dr\nSouth Park\n', 'Charlotte', 'NC', 28209, 'Japanese', 'default.jpg', 'Harry', 'Harry192084', '109982', 'No Discount', 'Stop'),
('Jeffs Bucket Shop', 78, '1601 Montford Dr\nSouth Park\n', 'Charlotte', 'NC', 28209, 'Thai', 'default.jpg', 'John', 'Shane280508', '262558', 'No Discount', 'Stop'),
('Sir Edmond Halleys', 79, '4151A Park Rd\n', 'Charlotte', 'NC', 28209, 'Italian', 'default.jpg', 'Lucy', 'Mac724472', '152795', 'No Discount', 'Stop'),
('Village Tavern', 80, '4201 Congress St\nSouth Park\n', 'Charlotte', 'NC', 28209, 'Mexican', 'default.jpg', 'Lee', 'Mathew921478', '363864', 'No Discount', 'Stop'),
('Red Rocks Cafe Bar & Bakery', 81, '4223-8 Providence Rd\nSherwood Forest\n', 'Charlotte', 'NC', 28211, 'Japanese', 'default.jpg', 'Peter', 'Jane895040', '163440', 'No Discount', 'Stop'),
('Zebra Restaurant', 82, '4521 Sharon Rd\nSte 100\nSouth Park\n', 'Charlotte', 'NC', 28211, 'Chinese', 'default.jpg', 'Peter', 'Pat200050', '218684', 'No Discount', 'Stop'),
('Jocks & Jills Sports Grille', 83, '4109 Southstream Blvd\n', 'Charlotte', 'NC', 28217, 'Japanese', 'default.jpg', 'Peter', 'Mac981446', '963810', 'No Discount', 'Stop'),
('Bankers Raw Bar', 84, '200 W Woodlawn Rd\n', 'Charlotte', 'NC', 28217, 'French', 'default.jpg', 'Jack', 'Jeremy904521', '959417', 'No Discount', 'Stop'),
('The Mens Club of Charlotte', 85, '444 Tyvola Rd\nStarmount\n', 'Charlotte', 'NC', 28217, 'American', 'default.jpg', 'Mac', 'Tom407166', '532146', 'No Discount', 'Stop'),
('Big Als Pub & Grubberia', 86, '9242 Albemarle Rd\nEastland\n', 'Charlotte', 'NC', 28227, 'Indian', 'default.jpg', 'James', 'Mathew573121', '329512', 'No Discount', 'Stop'),
('Chilis Grill & Bar', 87, '2521 Sardis Rd N\n', 'Charlotte', 'NC', 28227, 'Indian', 'default.jpg', 'Peter', 'John247430', '800203', 'No Discount', 'Stop'),
('Firebirds Wood Fired Grill', 88, '7716 Rea Rd\n', 'Charlotte', 'NC', 28277, 'American', 'default.jpg', 'Moore', 'Bill241476', '932093', 'No Discount', 'Stop'),
('Wolfman Pizza', 89, '8504 Park Rd\n', 'Charlotte', 'NC', 28210, 'Mexican', 'default.jpg', 'Jeremy', 'James982856', '589272', 'No Discount', 'Stop'),
('Tutto Mondo Lounge', 90, '1820 S Blvd\nMyers Park\n', 'Charlotte', 'NC', 28203, 'Thai', 'default.jpg', 'Jane', 'Mathew186636', '891261', 'No Discount', 'Stop'),
('Arpa', 91, '129-100 West Trade Street\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'Japanese', 'default.jpg', 'Pat', 'Max938231', '123118', 'No Discount', 'Stop'),
('Cantina 1511', 92, '4271 Park Rd\nSte B\n', 'Charlotte', 'NC', 28209, 'Thai', 'default.jpg', 'Moore', 'Max969748', '601294', 'No Discount', 'Stop'),
('Olive Garden Italian Restaurant', 93, '8225 Northlake Commons Blvd\n', 'Charlotte', 'NC', 28216, 'Mexican', 'default.jpg', 'Bill', 'Jeremy497074', '732383', 'No Discount', 'Stop'),
('Hawthornes NY Pizza & Bar', 94, '1701 E 7th St\nElizabeth\n', 'Charlotte', 'NC', 28204, 'Indian', 'default.jpg', 'James', 'Max925163', '82090', 'No Discount', 'Stop'),
('Beantown Tavern', 95, '130 Matthews Station St\n', 'Matthews', 'NC', 28104, 'Thai', 'default.jpg', 'Pat', 'Mathew400691', '157684', 'No Discount', 'Stop'),
('Dilworth Neighborhood Grille', 96, '911 E Morehead St\nDilworth\n', 'Charlotte', 'NC', 28204, 'Japanese', 'default.jpg', 'Moore', 'James814422', '485392', 'No Discount', 'Stop'),
('Eds Tavern', 97, '2200 Park Rd\nSedgefield\n', 'Charlotte', 'NC', 28203, 'Indian', 'default.jpg', 'Lucy', 'Bill183882', '903536', 'No Discount', 'Stop'),
('Hickory Tavern', 98, '2005 E Arbors Dr\nHighland Creek\n', 'Charlotte', 'NC', 28262, 'Italian', 'default.jpg', 'John', 'Jack856793', '528112', 'No Discount', 'Stop'),
('Solstice Tavern', 99, '3221 N Davidson St\nNoDa\n', 'Charlotte', 'NC', 28205, 'Chinese', 'default.jpg', 'Harry', 'Shane716670', '336584', 'No Discount', 'Stop'),
('Nolen Kitchen', 100, '2839 Selwyn Ave\nSte X\nMyers Park\n', 'Charlotte', 'NC', 28209, 'Chinese', 'default.jpg', 'Jane', 'Peter828566', '703496', 'No Discount', 'Stop'),
('Angry Ales', 101, '1518 Montford Dr\nSouth Park\n', 'Charlotte', 'NC', 28209, 'Japanese', 'default.jpg', 'Max', 'Jack68647', '458137', 'No Discount', 'Stop'),
('Tres Pesos Bar and Grill', 102, '122 W Woodlawn Rd\n', 'Charlotte', 'NC', 28217, 'Japanese', 'default.jpg', 'Tom', 'Mac211889', '484854', 'No Discount', 'Stop'),
('Boardwalk Billys Raw Bar & Ribs', 103, '9005 J M Keynes Dr\nUniversity City\n', 'Charlotte', 'NC', 28262, 'Italian', 'default.jpg', 'John', 'Bill203684', '133192', 'No Discount', 'Stop'),
('Big Ben British Restaurant & Pub', 104, '2000 South Blvd\nSte 150\nSouth End\n', 'Charlotte', 'NC', 28203, 'Japanese', 'default.jpg', 'Lucy', 'Max980922', '128619', 'No Discount', 'Stop'),
('Skinnyz Bar & Grille', 105, '15060 Idlewild Rd\n', 'Matthews', 'NC', 28106, 'Chinese', 'default.jpg', 'Max', 'Jeremy419417', '43474', 'No Discount', 'Stop'),
('Hickory Tavern', 106, '9010 Harris Corners Pkwy\n', 'Charlotte', 'NC', 28269, 'Italian', 'default.jpg', 'Mac', 'Mathew703676', '546111', 'No Discount', 'Stop'),
('The Philosophers Stone Tavern', 107, '1958 E 7th St\nElizabeth\n', 'Charlotte', 'NC', 28204, 'Mexican', 'default.jpg', 'Tom', 'Tom395279', '757200', 'No Discount', 'Stop'),
('Dolce Vita Wine Bar', 108, '3205 N Davidson St\nNoDa\n', 'Charlotte', 'NC', 28205, 'French', 'default.jpg', 'John', 'Jack493816', '130516', 'No Discount', 'Stop'),
('Hefs Bar & Grill', 110, 'Shopping Ctr\n1600\n', 'Charlotte', 'NC', 28209, 'Chinese', 'default.jpg', 'John', 'Lucy411377', '798524', 'No Discount', 'Stop'),
('Caffe Siena', 111, '230 N College St\nFirst Ward\n', 'Charlotte', 'NC', 28202, 'Japanese', 'default.jpg', 'Moore', 'Peter16890', '490287', 'No Discount', 'Stop'),
('Therapy Marketplace and Cafe', 112, '401 N Tryon St\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'Chinese', 'default.jpg', 'Mathew', 'Bill398809', '704168', 'No Discount', 'Stop'),
('Feast at HOM', 113, '116 W 5th St\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'Mexican', 'default.jpg', 'Lucy', 'Peter398991', '956128', 'No Discount', 'Stop'),
('Fox Sports Bar and Grill', 114, '5501 Josh Birmingham Pkwy\n', 'Charlotte', 'NC', 28208, 'Mexican', 'default.jpg', 'Tom', 'Bill587388', '818070', 'No Discount', 'Stop'),
('Bad Dog American Pub', 115, '8933 JM Keynes Dr\nSte 2\nUniversity City\n', 'Charlotte', 'NC', 28262, 'Italian', 'default.jpg', 'John', 'Tom684519', '139698', 'No Discount', 'Stop'),
('Fairview Grill', 116, '5124 Park Rd\nSouth Park\n', 'Charlotte', 'NC', 28209, 'Indian', 'default.jpg', 'Shane', 'Lucy891268', '162787', 'No Discount', 'Stop'),
('Sammys Deli & Neighborhood Pub', 117, '25 S Main St', 'Belmont', 'NC', 28012, 'Italian', 'default.jpg', 'Jeremy', 'Bill942271', '129070', 'No Discount', 'Stop'),
('Andrew Blairs', 118, '1600 Montford Dr\nSouth Park\n', 'Charlotte', 'NC', 28209, 'French', 'default.jpg', 'Tom', 'Lucy578573', '530068', 'No Discount', 'Stop'),
('Dean & Deluca Wine Room', 119, '6822 Phillips Pl Ct\nSte G\nSouth Park\n', 'Charlotte', 'NC', 28210, 'Italian', 'default.jpg', 'Mac', 'Lucy827069', '730167', 'No Discount', 'Stop'),
('Cedar Street Tavern', 120, '120 N Cedar St\nSte 755\nThird Ward\n', 'Charlotte', 'NC', 28202, 'Japanese', 'default.jpg', 'Max', 'Shane308505', '546266', 'No Discount', 'Stop'),
('Whisky River', 121, 'EpiCentre\n210 E Trade St, Ste A-208\nUptown\n', 'Charlotte', 'NC', 28202, 'French', 'default.jpg', 'Shane', 'Max662080', '338050', 'No Discount', 'Stop'),
('Hickory Tavern', 122, '13545 Steelcroft Pkwy\nSteele Creek\n', 'Charlotte', 'NC', 28278, 'Thai', 'default.jpg', 'James', 'Shane529615', '252607', 'No Discount', 'Stop'),
('The Pizza Peel', 123, '4422 Colwick Rd\nCotswold\n', 'Charlotte', 'NC', 28211, 'French', 'default.jpg', 'Mathew', 'Jeremy621197', '829615', 'No Discount', 'Stop'),
('Tavern 51', 124, '8700 Matthews Rd\n', 'Charlotte', 'NC', 28226, 'Italian', 'default.jpg', 'Harry', 'Max329237', '444505', 'No Discount', 'Stop'),
('Hawthornes NY Pizza & Bar', 125, '5814 Highland Shoppes Dr\nHighland Creek\n', 'Charlotte', 'NC', 28269, 'French', 'default.jpg', 'Mathew', 'Shane926735', '736307', 'No Discount', 'Stop'),
('BlackFinn American Saloon', 126, '210 E Trade St\nSte B-120\nUptown\n', 'Charlotte', 'NC', 28202, 'Italian', 'default.jpg', 'Max', 'Peter130041', '30451', 'No Discount', 'Stop'),
('Lancasters BBQ', 127, '9230 Beatties Ford Rd\n', 'Huntersville', 'NC', 28078, 'Thai', 'default.jpg', 'John', 'Moore414733', '278167', 'No Discount', 'Stop'),
('Finz Raw Bar and Grill', 128, '142 E John St\n', 'Matthews', 'NC', 28105, 'Italian', 'default.jpg', 'Moore', 'Tom647568', '457845', 'No Discount', 'Stop'),
('Buffalo Wild Wings', 129, '440 E McCullough Dr\nSte 230\nUniversity City\n', 'Charlotte', 'NC', 28262, 'American', 'default.jpg', 'Mac', 'Peter816010', '78688', 'No Discount', 'Stop'),
('Jackalope Jacks', 130, '1936 E 7th St\nElizabeth\n', 'Charlotte', 'NC', 28204, 'Mexican', 'default.jpg', 'James', 'James971855', '527219', 'No Discount', 'Stop'),
('Global Restaurant', 131, '3520 Toringdon Way\nBallantyne\n', 'Charlotte', 'NC', 28277, 'Thai', 'default.jpg', 'Jane', 'Harry252082', '55994', 'No Discount', 'Stop'),
('Picassos Sports Cafe', 132, '222 S Church St\nUptown\n', 'Charlotte', 'NC', 28202, 'Chinese', 'default.jpg', 'James', 'Jeremy781967', '147158', 'No Discount', 'Stop'),
('Hickory Tavern', 133, '12210 Copper Way\nSte 212\nBallantyne\n', 'Charlotte', 'NC', 28277, 'Italian', 'default.jpg', 'Harry', 'Moore795729', '714863', 'No Discount', 'Stop'),
('131 Main', 134, '1315 East Blvd\nDilworth\n', 'Charlotte', 'NC', 28203, 'Italian', 'default.jpg', 'Jane', 'Jane192635', '638173', 'No Discount', 'Stop'),
('The Corner Pub', 135, '335 N Graham St\nThird Ward\n', 'Charlotte', 'NC', 28263, 'French', 'default.jpg', 'Peter', 'John479706', '855189', 'No Discount', 'Stop'),
('Firebirds Wood Fired Grill', 136, '3920 Sharon Rd\nSouth Park\n', 'Charlotte', 'NC', 28211, 'French', 'default.jpg', 'Max', 'Lucy527533', '809168', 'No Discount', 'Stop'),
('Hooters', 137, '123 W Trade St\n', 'Charlotte', 'NC', 28202, 'Thai', 'default.jpg', 'Peter', 'Pat790508', '246184', 'No Discount', 'Stop'),
('Flemings Prime Steakhouse & Wine Bar', 138, '210 E Trade St\nUptown\n', 'Charlotte', 'NC', 28202, 'French', 'default.jpg', 'Pat', 'Peter583958', '606149', 'No Discount', 'Stop'),
('The Wine Loft', 139, '2201 South Blvd\nSouth End\n', 'Charlotte', 'NC', 28203, 'French', 'default.jpg', 'Shane', 'Bill135559', '674163', 'No Discount', 'Stop'),
('Wild Wing Cafe', 140, '9539 Pinnacle Dr\nUniversity City\n', 'Charlotte', 'NC', 28262, 'French', 'default.jpg', 'Max', 'Mathew353234', '362934', 'No Discount', 'Stop'),
('McBonies Bar & Grill', 141, '4800 Monroe Rd\nCotswold\n', 'Charlotte', 'NC', 28263, 'French', 'default.jpg', 'Mathew', 'Mathew618674', '743749', 'No Discount', 'Stop'),
('Boardwalk Billys II Raw Bar & Ribs', 142, '1636 Sardis Rd N\n', 'Charlotte', 'NC', 28270, 'Thai', 'default.jpg', 'Jeremy', 'Lucy261475', '69563', 'No Discount', 'Stop'),
('Chilis', 143, '8325 Northlake Commons Blvd\n', 'Charlotte', 'NC', 28216, 'Chinese', 'default.jpg', 'Tom', 'Mac798975', '862601', 'No Discount', 'Stop'),
('Revolution Ale House', 144, '3228 N Davidson St\nNoDa\n', 'Charlotte', 'NC', 28205, 'Italian', 'default.jpg', 'Moore', 'Peter468738', '138924', 'No Discount', 'Stop'),
('The Red Lion', 145, '2127 Ayrsley Town Blvd\nSteele Creek\n', 'Charlotte', 'NC', 28273, 'French', 'default.jpg', 'Shane', 'Tom802178', '948161', 'No Discount', 'Stop'),
('Quaker Steak & Lube', 146, '7731 Gateway Ln NW\n', 'Concord', 'NC', 28027, 'Mexican', 'default.jpg', 'Jeremy', 'Jack234688', '618532', 'No Discount', 'Stop'),
('Mai Thai', 147, '3775 Concord Pkwy\nSte 132\n', 'Concord', 'NC', 28027, 'Japanese', 'default.jpg', 'Harry', 'Jack331884', '515347', 'No Discount', 'Stop'),
('Hawthornes NY Pizza & Bar', 148, '4100 Carmel Rd\nSte A\n', 'Charlotte', 'NC', 28226, 'Thai', 'default.jpg', 'Bill', 'Lee956191', '163207', 'No Discount', 'Stop'),
('Bikinis Sports Bar & Grill', 149, '520 University Center Blvd\nUniversity City\n', 'Charlotte', 'NC', 28262, 'Indian', 'default.jpg', 'Jack', 'Moore157721', '125055', 'No Discount', 'Stop'),
('Cantina 1511', 150, '7708 Rea Rd\n', 'Charlotte', 'NC', 28277, 'Thai', 'default.jpg', 'Harry', 'Mac558647', '315612', 'No Discount', 'Stop'),
('The Wine Shop at Rivergate', 151, '14142 Rivergate Pkwy\nSteele Creek\n', 'Charlotte', 'NC', 28273, 'Chinese', 'default.jpg', 'Mac', 'Lucy917254', '731550', 'No Discount', 'Stop'),
('Applebees', 152, '8710 S Tryon St\nSteele Creek\n', 'Charlotte', 'NC', 28273, 'Indian', 'default.jpg', 'Harry', 'James326267', '64349', 'No Discount', 'Stop'),
('Maestros Bar & Bistro', 153, '207 Johnston Dr\n', 'Pineville', 'NC', 28134, 'Japanese', 'default.jpg', 'Jane', 'Lucy769605', '680063', 'No Discount', 'Stop'),
('Lebowskis Neighborhood Grill', 154, '1524 East Blvd\nDilworth\n', 'Charlotte', 'NC', 28203, 'Japanese', 'default.jpg', 'Peter', 'Moore963275', '426363', 'No Discount', 'Stop'),
('Ruby Tuesday', 155, '8905 Red Oak Blvd\nSteele Creek\n', 'Charlotte', 'NC', 28217, 'Indian', 'default.jpg', 'James', 'Lucy253284', '676598', 'No Discount', 'Stop'),
('Soul Gastrolounge', 156, '1500-B Central Ave\nPlaza Midwood\n', 'Charlotte', 'NC', 28205, 'French', 'default.jpg', 'Mac', 'John589677', '903581', 'No Discount', 'Stop'),
('DVine Wine Cafe', 157, '14815 Ballantyne Village Way\n', 'Charlotte', 'NC', 28277, 'Italian', 'default.jpg', 'James', 'Moore56449', '550916', 'No Discount', 'Stop'),
('Buffalo Wild Wings', 158, '2530 Sardis Road North\n', 'Charlotte', 'NC', 28227, 'Thai', 'default.jpg', 'Peter', 'Tom978538', '280001', 'No Discount', 'Stop'),
('Brazwells Premium Pub', 159, '1627 Montford Dr\nSouth Park\n', 'Charlotte', 'NC', 28209, 'Italian', 'default.jpg', 'James', 'Mathew433648', '178924', 'No Discount', 'Stop'),
('Tilted Kilt Pub & Eatery', 160, '13230 Carowinds Blvd\nSteele Creek\n', 'Charlotte', 'NC', 28273, 'Mexican', 'default.jpg', 'Peter', 'Lucy344560', '772823', 'No Discount', 'Stop'),
('Chilis Grill & Bar', 161, '8136 Providence Rd\nArboretum\n', 'Charlotte', 'NC', 28277, 'Japanese', 'default.jpg', 'Mac', 'Lee226322', '439122', 'No Discount', 'Stop'),
('Hawthornes NY Pizza & Bar', 162, '7319 Matthews Mint Hill Rd\n', 'Charlotte', 'NC', 28227, 'Mexican', 'default.jpg', 'Jane', 'Tom825450', '887777', 'No Discount', 'Stop'),
('The Fillmore', 163, 'Charlotte 1000 Music Factory Blvd\n', 'Charlotte', 'NC', 28206, 'Italian', 'default.jpg', 'Moore', 'Shane301194', '847129', 'No Discount', 'Stop'),
('P.J. O Reillys', 164, '16640 Hawfield Way Dr\nBallantyne\n', 'Charlotte', 'NC', 28277, 'Indian', 'default.jpg', 'Mac', 'Mathew22573', '702061', 'No Discount', 'Stop'),
('Enso Asian Bistro & Sushi Bar', 165, '210 E Trade St\nSte A-108\nUptown\n', 'Charlotte', 'NC', 28202, 'Thai', 'default.jpg', 'Bill', 'Moore249392', '135528', 'No Discount', 'Stop'),
('Cafe Central', 166, '1410 Central Ave\nPlaza Midwood\n', 'Charlotte', 'NC', 28205, 'French', 'default.jpg', 'James', 'Harry313160', '47019', 'No Discount', 'Stop'),
('Eastfield Bar and Grill', 167, '8709 Arbor Creek Dr\n', 'Charlotte', 'NC', 28269, 'Mexican', 'default.jpg', 'John', 'Mac336560', '493105', 'No Discount', 'Stop'),
('Hooters', 168, '9807 S Blvd\n', 'Charlotte', 'NC', 28273, 'Italian', 'default.jpg', 'Tom', 'Jane972332', '997782', 'No Discount', 'Stop'),
('Tgi Fridays', 169, '6840 Northlake Mall Dr\n', 'Charlotte', 'NC', 28216, 'Japanese', 'default.jpg', 'James', 'Jeremy847196', '52513', 'No Discount', 'Stop'),
('FATZ Cafe', 170, '10920 Winds Crossing Dr.\nSteele Creek\n', 'Charlotte', 'NC', 28273, 'Indian', 'default.jpg', 'Jane', 'Bill818307', '687838', 'No Discount', 'Stop'),
('Town Tavern', 171, '200 N Tryon St\nFirst Ward\n', 'Charlotte', 'NC', 28202, 'Mexican', 'default.jpg', 'Jack', 'John527707', '930812', 'No Discount', 'Stop'),
('The Lodge', 172, '7725 Colony Rd\n', 'Charlotte', 'NC', 28226, 'Thai', 'default.jpg', 'Tom', 'Bill891504', '981103', 'No Discount', 'Stop'),
('Ruby Tuesday', 173, '7780 Lyles Lane Nw\n', 'Concord', 'NC', 28027, 'French', 'default.jpg', 'Moore', 'Moore640235', '938264', 'No Discount', 'Stop'),
('Fox & Hound Pub & Grill', 174, '9325 Ctr Lake Dr\nSte 200\n', 'Charlotte', 'NC', 28216, 'American', 'default.jpg', 'James', 'Pat911798', '478223', 'No Discount', 'Stop'),
('Whiskey Warehouse', 175, '1221 The Plz\n', 'Charlotte', 'NC', 28205, 'Thai', 'default.jpg', 'Bill', 'James542033', '991153', 'No Discount', 'Stop'),
('Dandelion Market', 176, '118 W 5th St\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'Mexican', 'default.jpg', 'Shane', 'Max854858', '892957', 'No Discount', 'Stop'),
('Wooden Vine Wine Bar & Bistro', 177, '231 N Tryon St\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'Chinese', 'default.jpg', 'Bill', 'Shane714894', '288863', 'No Discount', 'Stop'),
('Buffalo Wings & Rings', 178, '16715 Orchard Stone\nBallantyne\n', 'Charlotte', 'NC', 28277, 'American', 'default.jpg', 'Bill', 'Lucy502576', '717493', 'No Discount', 'Stop'),
('The Burger Company', 179, '1500 W Morehead St\n', 'Charlotte', 'NC', 28208, 'Chinese', 'default.jpg', 'Shane', 'Mathew367741', '732013', 'No Discount', 'Stop'),
('Istanbul Hookah Lounge', 180, '138 Brevard Ct\nUptown\n', 'Charlotte', 'NC', 28202, 'Indian', 'default.jpg', 'Lee', 'Max813676', '627320', 'No Discount', 'Stop'),
('Wet Willies', 181, '900 Seaboard St\nSte B\nThird Ward\n', 'Charlotte', 'NC', 28206, 'Mexican', 'default.jpg', 'Lucy', 'John886619', '99611', 'No Discount', 'Stop'),
('Mortimers Cafe and Pub', 182, '210 E Trade St\nSte 148-C\nUptown\n', 'Charlotte', 'NC', 28202, 'Japanese', 'default.jpg', 'John', 'Jane935098', '452722', 'No Discount', 'Stop'),
('Buffalo Wild Wings', 183, '400 E Martin Luther King Jr Blvd\nSte B\nUptown', 'Charlotte', 'NC', 28202, 'Mexican', 'default.jpg', 'John', 'Moore708805', '266836', 'No Discount', 'Stop'),
('Icehouse', 184, '2100 S Blvd\nSouth End\n', 'Charlotte', 'NC', 28203, 'Japanese', 'default.jpg', 'Jack', 'Peter160748', '838907', 'No Discount', 'Stop'),
('Fox & Hound', 185, '15235 John J Delaney Dr\nBallantyne\n', 'Charlotte', 'NC', 28277, 'Thai', 'default.jpg', 'Lee', 'James557215', '395264', 'No Discount', 'Stop'),
('Duckworths Grill & Taphouse', 186, '4435 Park Rd\nSouth Park\n', 'Charlotte', 'NC', 28209, 'Chinese', 'default.jpg', 'Peter', 'Jeremy616563', '259107', 'No Discount', 'Stop'),
('Growlers Pourhouse', 187, '3120 N Davidson St\nNoDa\n', 'Charlotte', 'NC', 28205, 'Italian', 'default.jpg', 'James', 'Pat148815', '622953', 'No Discount', 'Stop'),
('Taco Mac', 188, '4626 Piedmont Row Drive\n', 'Charlotte', 'NC', 28210, 'Chinese', 'default.jpg', 'Mac', 'Jack617061', '554746', 'No Discount', 'Stop'),
('Kickstand Burgers & Bar', 189, '1101 Central Ave\nPlaza Midwood\n', 'Charlotte', 'NC', 28204, 'Japanese', 'default.jpg', 'Tom', 'Tom851997', '992426', 'No Discount', 'Stop'),
('Kennedys Premium Bar and Grill', 190, '366 N Caswell St\nElizabeth\n', 'Charlotte', 'NC', 28204, 'American', 'default.jpg', 'Mathew', 'Harry474512', '852291', 'No Discount', 'Stop'),
('Mellow Mushroom', 191, '2820 Selwyn Ave\nSte 100\nMyers Park\n', 'Charlotte', 'NC', 28209, 'Chinese', 'default.jpg', 'Peter', 'John24491', '336956', 'No Discount', 'Stop'),
('Bask On Seaboard', 192, '1000 Seaboard St\nSte C1\nThird Ward\n', 'Charlotte', 'NC', 28206, 'Indian', 'default.jpg', 'Mathew', 'Lucy643282', '439371', 'No Discount', 'Stop'),
('Chilis Grill and Bar', 193, '5521 Westpark Dr\nStarmount\n', 'Charlotte', 'NC', 28217, 'French', 'default.jpg', 'Jane', 'Pat715231', '581415', 'No Discount', 'Stop'),
('Johns Place', 194, '3016 Weddington Rd\n', 'Matthews', 'NC', 28105, 'Chinese', 'default.jpg', 'Bill', 'Moore432887', '516502', 'No Discount', 'Stop'),
('JackBeagles', 195, '3213 N Davidson St\nNoDa\n', 'Charlotte', 'NC', 28205, 'French', 'default.jpg', 'Lucy', 'Lee862055', '270855', 'No Discount', 'Stop'),
('Nefelies', 196, '145 Brevard Ct\nUptown\n', 'Charlotte', 'NC', 28202, 'Thai', 'default.jpg', 'Bill', 'Lee16304', '876563', 'No Discount', 'Stop'),
('Lucky Lous Tavern', 197, '5124 Park Rd\nSouth Park\n', 'Charlotte', 'NC', 28209, 'Chinese', 'default.jpg', 'Moore', 'Lee703906', '128212', 'No Discount', 'Stop'),
('The Belfast Mill', 198, '144 Brevard Ct\nUptown\n', 'Charlotte', 'NC', 28202, 'Indian', 'default.jpg', 'Pat', 'Mac307382', '949506', 'No Discount', 'Stop'),
('Applebees', 199, '5110 Piper Station Dr\n', 'Charlotte', 'NC', 28277, 'French', 'default.jpg', 'Jack', 'Tom951997', '854216', 'No Discount', 'Stop'),
('Valhalla Pub and Eatery', 200, '317 S Church St\nUptown\n', 'Charlotte', 'NC', 28202, 'Thai', 'default.jpg', 'Lee', 'Jeremy612580', '636760', 'No Discount', 'Stop'),
('VBGB Beer Hall and Garden', 201, '920 Hamilton St\nThird Ward\n', 'Charlotte', 'NC', 28206, 'Italian', 'default.jpg', 'James', 'James895937', '874519', 'No Discount', 'Stop'),
('Taco Mac', 202, '517 University Center Blvd\nUniversity City\n', 'Charlotte', 'NC', 28262, 'Chinese', 'default.jpg', 'Shane', 'Jeremy953403', '305182', 'No Discount', 'Stop'),
('Stadium Sports Tavern', 203, '8155 Ardrey Kell Rd\n', 'Charlotte', 'NC', 28277, 'Chinese', 'default.jpg', 'Peter', 'Mac704657', '587016', 'No Discount', 'Stop'),
('Hickory Tavern', 204, '6400 Weddington-Monroe Rd', 'Wesley Chapel', 'NC', 28110, 'Japanese', 'default.jpg', 'Max', 'Max402074', '389385', 'No Discount', 'Stop'),
('FireWater', 205, '8708 JW Clay Blvd\nUniversity City\n', 'Charlotte', 'NC', 28262, 'Mexican', 'default.jpg', 'Mathew', 'Pat965222', '395897', 'No Discount', 'Stop'),
('Carolina Ale House', 206, '201 S College St\nSte 100\nUptown\n', 'Charlotte', 'NC', 28244, 'Mexican', 'default.jpg', 'John', 'Pat66082', '62992', 'No Discount', 'Stop'),
('World of Beer', 207, '222 E Bland St\nSouth End\n', 'Charlotte', 'NC', 28203, 'American', 'default.jpg', 'John', 'Lee545718', '645118', 'No Discount', 'Stop'),
('Osso Restaurant & Lounge', 208, '1000 NC Music Factory Blvd\n', 'Charlotte', 'NC', 28206, 'Thai', 'default.jpg', 'Bill', 'Lee649383', '884454', 'No Discount', 'Stop'),
('Mellow Mushroom', 209, '14835 Ballantyne Village Way\nBallantyne\n', 'Charlotte', 'NC', 28277, 'French', 'default.jpg', 'Pat', 'Peter951772', '902622', 'No Discount', 'Stop'),
('Harrys Grille & Tavern', 210, '2127 Ayrsley Town Blvd\nSte 103\nSteele Creek\n', 'Charlotte', 'NC', 28273, 'Japanese', 'default.jpg', 'John', 'Lucy513881', '702833', 'No Discount', 'Stop'),
('Smalls', 211, '1609 Elizabeth Ave\nElizabeth\n', 'Charlotte', 'NC', 28204, 'Chinese', 'default.jpg', 'James', 'Shane281083', '218481', 'No Discount', 'Stop'),
('Kanvas', 212, '525 E 6th St\nFirst Ward\n', 'Charlotte', 'NC', 28202, 'French', 'default.jpg', 'Max', 'Shane609422', '409672', 'No Discount', 'Stop'),
('Fitzgeralds Irish Pub', 213, '201 E 5th St\nFirst Ward\n', 'Charlotte', 'NC', 28202, 'Chinese', 'default.jpg', 'Harry', 'Jane745293', '43056', 'No Discount', 'Stop'),
('Queen Sheba Bar & Restaurant', 214, '4808 Central Ave\nEastland\n', 'Charlotte', 'NC', 28205, 'Italian', 'default.jpg', 'Peter', 'Mac351648', '276387', 'No Discount', 'Stop'),
('Upscale Restaurant & Lounge', 215, '3108 E Independence Blvd\nElizabeth\n', 'Charlotte', 'NC', 28205, 'Thai', 'default.jpg', 'Jane', 'Mathew88840', '403172', 'No Discount', 'Stop'),
('Uptown Bar &  Lounge', 216, '5501 Josh Birmingham Pkwy\n', 'Charlotte', 'NC', 28208, 'Thai', 'default.jpg', 'Mac', 'Mathew982566', '536187', 'No Discount', 'Stop'),
('Deltas Restaurant', 217, '525 N Tryon St\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'American', 'default.jpg', 'Peter', 'Pat58330', '491796', 'No Discount', 'Stop'),
('All American Pub', 218, '200 E Bland St\nSouth End\n', 'Charlotte', 'NC', 28203, 'Japanese', 'default.jpg', 'Lucy', 'Pat508784', '774949', 'No Discount', 'Stop'),
('Twin Peaks', 219, '8601 Concord Mills Blvd.\n', 'Concord', 'NC', 28027, 'American', 'default.jpg', 'Pat', 'Pat409032', '457171', 'No Discount', 'Stop'),
('Dillingers Tap Room', 220, '214 N Church St\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'Japanese', 'default.jpg', 'Shane', 'Tom380441', '185418', 'No Discount', 'Stop'),
('Maverick Rock Taco', 221, '1513 Montford Dr\nSouth Park\n', 'Charlotte', 'NC', 28209, 'French', 'default.jpg', 'Jeremy', 'Mac578756', '242745', 'No Discount', 'Stop'),
('Grapes Wine Bar', 222, '2233 Matthews Township Pkwy\n', 'Matthews', 'NC', 28105, 'Thai', 'default.jpg', 'John', 'Pat540914', '995878', 'No Discount', 'Stop'),
('Beaudevin', 223, 'Charlotte Douglas International Airport\n', 'Charlotte', 'NC', 28208, 'French', 'default.jpg', 'John', 'Jeremy687928', '680852', 'No Discount', 'Stop'),
('Cinebarre', 224, '8008 Providence Rd\nArboretum\n', 'Charlotte', 'NC', 28277, 'Chinese', 'default.jpg', 'Harry', 'Max24890', '407896', 'No Discount', 'Stop'),
('Hawthornes New York Pizza & Bar', 225, '8410 Rea Rd\nBallantyne\n', 'Charlotte', 'NC', 28277, 'Chinese', 'default.jpg', 'Mathew', 'Max499467', '477888', 'No Discount', 'Stop'),
('MVPs Raw Bar & Grill', 226, '10916 Black Dog Ln\n', 'Charlotte', 'NC', 28214, 'Thai', 'default.jpg', 'Tom', 'Moore564290', '174462', 'No Discount', 'Stop'),
('The Rusty Onion', 227, '6654 Carmel Rd\n', 'Charlotte', 'NC', 28226, 'Indian', 'default.jpg', 'Lucy', 'Peter127576', '85457', 'No Discount', 'Stop'),
('Buffalo Wild Wings', 228, '14157 Steele Creek Rd\nSteele Creek\n', 'Charlotte', 'NC', 28273, 'Japanese', 'default.jpg', 'Bill', 'Jeremy158932', '264159', 'No Discount', 'Stop'),
('Vine American Kitchen', 229, '13735 Conlan Cir\nBallantyne\n', 'Charlotte', 'NC', 28277, 'Japanese', 'default.jpg', 'Bill', 'Max795413', '132953', 'No Discount', 'Stop'),
('Tilted Kilt Pub & Eatery', 230, '1625 Windsor Square Dr\n', 'Matthews', 'NC', 28105, 'American', 'default.jpg', 'John', 'Peter391297', '972193', 'No Discount', 'Stop'),
('Joe Hoopers Neighborhood Pub', 231, '1300 Central Ave\nPlaza Midwood\n', 'Charlotte', 'NC', 28205, 'Thai', 'default.jpg', 'Mathew', 'Jane369733', '780107', 'No Discount', 'Stop'),
('The Friendly Moose', 232, '4320 Potters Rd\n', 'Matthews', 'NC', 28104, 'Thai', 'default.jpg', 'Moore', 'John88738', '106840', 'No Discount', 'Stop'),
('Cowbell Burger & Whiskey Bar', 233, '201 N Tryon St\nSte 1010\nFourth Ward\n', 'Charlotte', 'NC', 28202, 'Indian', 'default.jpg', 'Max', 'Mac779599', '366550', 'No Discount', 'Stop'),
('Bubble', 234, '210 E Trade St\nUptown\n', 'Charlotte', 'NC', 28202, 'Thai', 'default.jpg', 'Jeremy', 'Mac562740', '468873', 'No Discount', 'Stop'),
('J. Sams Wine Bar', 235, '4625 Piedmont Row Dr\nSouth Park\n', 'Charlotte', 'NC', 28210, 'Thai', 'default.jpg', 'Lee', 'Jane820147', '844999', 'No Discount', 'Stop'),
('Moes Original Bar B Que', 236, '111 Matthews Station St\n', 'Matthews', 'NC', 28105, 'Indian', 'default.jpg', 'Harry', 'James774407', '320260', 'No Discount', 'Stop'),
('Mynt Restaurant & Lounge', 237, '1508 S Mint St\n', 'Charlotte', 'NC', 28203, 'Indian', 'default.jpg', 'John', 'Max592842', '210676', 'No Discount', 'Stop'),
('Hookah Hotspot', 238, '2600 Central Ave\nPlaza Midwood\n', 'Charlotte', 'NC', 28205, 'Thai', 'default.jpg', 'John', 'Max376185', '407112', 'No Discount', 'Stop'),
('Glenway Premium Pub', 239, '55 Glenway St', 'Belmont,', 'NC', 28012, 'Mexican', 'default.jpg', 'Shane', 'Bill883412', '548515', 'No Discount', 'Stop'),
('Carolina Ale House', 240, '8695 Concord Mills Blvd\n', 'Concord', 'NC', 28027, 'Mexican', 'default.jpg', 'Mathew', 'Jane807803', '716010', 'No Discount', 'Stop'),
('Sankeys Taproom and Grille', 241, '11416 E Independence Blvd\nSte L\n', 'Matthews', 'NC', 28105, 'American', 'default.jpg', 'Tom', 'Jeremy533039', '405700', 'No Discount', 'Stop'),
('The Tavern', 242, '300 E Morehead St\nSouth End\n', 'Charlotte', 'NC', 28202, 'Italian', 'default.jpg', 'Shane', 'Jack313434', '584259', 'No Discount', 'Stop'),
('Tin Roof', 243, '210 E Trade St\nSte 286\nUptown\n', 'Charlotte', 'NC', 28202, 'Italian', 'default.jpg', 'John', 'Jeremy523839', '222586', 'No Discount', 'Stop'),
('Greystone Pub', 244, '3039 South Blvd\nSedgefield\n', 'Charlotte', 'NC', 28209, 'American', 'default.jpg', 'Bill', 'Moore509268', '432047', 'No Discount', 'Stop'),
('Bar Louie ', 245, 'Charlotte University City 8760\n', 'Charlotte', 'NC', 28262, 'Mexican', 'default.jpg', 'Mac', 'Lucy211679', '86522', 'No Discount', 'Stop'),
('Buffalo Wild Wings', 246, '9402 Northlake W Dr\nSte 103\n', 'Charlotte', 'NC', 28216, 'Chinese', 'default.jpg', 'Tom', 'Harry172179', '46184', 'No Discount', 'Stop'),
('Riverview Raw Bar and Chill', 247, '10012 Moores Chapel Loop\n', 'Charlotte', 'NC', 28214, 'French', 'default.jpg', 'Jeremy', 'Moore388448', '963778', 'No Discount', 'Stop'),
('Tanners Bistro', 248, '505 E 6th St\nFirst Ward\n', 'Charlotte', 'NC', 28202, 'Japanese', 'default.jpg', 'Lee', 'Shane248300', '371578', 'No Discount', 'Stop'),
('Mellow Mushroom', 249, '255 W Martin Luther King Jr. Blvd\nUptown\n', 'Charlotte', 'NC', 28202, 'Indian', 'default.jpg', 'John', 'James521732', '994148', 'No Discount', 'Stop'),
('The Pizza Peel- Central', 250, '1600 Central Ave\nPlaza Midwood\n', 'Charlotte', 'NC', 28205, 'Chinese', 'default.jpg', 'Lee', 'James148558', '835702', 'No Discount', 'Stop'),
('DBs Tavern', 251, '8155 Ardrey Kell Rd\n', 'Charlotte', 'NC', 28277, 'French', 'default.jpg', 'Shane', 'Lucy184097', '762258', 'No Discount', 'Stop'),
('Persuasian Restaurant', 252, '2214 Park Rd\nSedgefield\n', 'Charlotte', 'NC', 28203, 'French', 'default.jpg', 'Pat', 'James547045', '19101', 'No Discount', 'Stop'),
('Pint Central', 253, '1226 Central Ave\nSte A\nPlaza Midwood\n', 'Charlotte', 'NC', 28204, 'American', 'default.jpg', 'Peter', 'Harry835089', '93452', 'No Discount', 'Stop'),
('The Summit Room', 254, '1531 East Blvd\nDilworth\n', 'Charlotte', 'NC', 28203, 'Chinese', 'default.jpg', 'Lucy', 'Max555762', '999463', 'No Discount', 'Stop'),
('Vida Vida', 255, '210 E Trade St\nUptown\n', 'Charlotte', 'NC', 28202, 'Chinese', 'default.jpg', 'Max', 'Pat946350', '837278', 'No Discount', 'Stop'),
('Draught', 256, '601 S Cedar St\nUptown\n', 'Charlotte', 'NC', 28202, 'Thai', 'default.jpg', 'Peter', 'Harry829781', '456708', 'No Discount', 'Stop'),
('Texicali Taco & Tequila Bar', 257, '900 Music Factory\nThird Ward\n', 'Charlotte', 'NC', 28206, 'Italian', 'default.jpg', 'John', 'Shane971546', '518833', 'No Discount', 'Stop'),
('Al-basha Mediterranean Grill & Hookah', 258, '3145 N Sharon Amity Rd\nSte A\nEastland\n', 'Charlotte', 'NC', 28205, 'American', 'default.jpg', 'Shane', 'Mathew813003', '133340', 'No Discount', 'Stop'),
('Bakersfield East Blvd', 259, '1301 East Blvd\nDilworth\n', 'Charlotte', 'NC', 28203, 'Chinese', 'default.jpg', 'Pat', 'Mac218879', '469952', 'No Discount', 'Stop'),
('Yama Izakaya', 260, '1324 Central Ave\nPlaza Midwood\n', 'Charlotte', 'NC', 28205, 'Indian', 'default.jpg', 'Jeremy', 'Bill271444', '160052', 'No Discount', 'Stop'),
('Treehouse Whiskey & Fork', 261, '4423 Sharon Rd\nSouth Park\n', 'Charlotte', 'NC', 28211, 'Mexican', 'default.jpg', 'Lucy', 'Mac973887', '528340', 'No Discount', 'Stop'),
('Q Tavern', 262, '201 S McDowell St\nUptown\n', 'Charlotte', 'NC', 28204, 'American', 'default.jpg', 'Jack', 'Jeremy801509', '311532', 'No Discount', 'Stop'),
('The Improper Pig', 263, '110 S Sharon Amity Rd\nCotswold\n', 'Charlotte', 'NC', 28211, 'American', 'default.jpg', 'Moore', 'Tom844108', '442855', 'No Discount', 'Stop'),
('CJs Pub', 264, '3805 Concord Pkwy S\nSte 152\n', 'Concord', 'NC', 28027, 'Italian', 'default.jpg', 'Lee', 'Jane325909', '214539', 'No Discount', 'Stop'),
('Evoke', 265, '555 S McDowell St\nUptown\n', 'Charlotte', 'NC', 28204, 'Thai', 'default.jpg', 'Mathew', 'Mathew225548', '424006', 'No Discount', 'Stop'),
('The Mandrake', 266, '333 W Trade St\n', 'Charlotte', 'NC', 28202, 'Japanese', 'default.jpg', 'Moore', 'James234304', '914025', 'No Discount', 'Stop'),
('Big Als Pub & Grubberia', 267, '9306 Albemarle Rd\nEastland\n', 'Charlotte', 'NC', 28227, 'Japanese', 'default.jpg', 'Max', 'Shane870873', '117144', 'No Discount', 'Stop'),
('Hefs Bar & Grill', 268, '1920 Sardis Rd N\n', 'Charlotte', 'NC', 28270, 'Thai', 'default.jpg', 'Jeremy', 'Tom572270', '76671', 'No Discount', 'Stop'),
('Piedmont Social House', 269, '2135 Ayrsley Town Blvd\nSteele Creek\n', 'Charlotte', 'NC', 28273, 'Italian', 'default.jpg', 'Max', 'Peter142820', '29966', 'No Discount', 'Stop'),
('Duckworths Grill & Taphouse', 270, '330 N Tryon St\nFirst Ward\n', 'Charlotte', 'NC', 28202, 'American', 'default.jpg', 'Harry', 'Harry366501', '184626', 'No Discount', 'Stop'),
('Pit Road Bar & Grill', 271, 'Victory Lane Karting\nNorth ', 'Charlotte', 'NC', 28206, 'Japanese', 'default.jpg', 'John', 'Shane786768', '341117', 'No Discount', 'Stop'),
('The Local on 5th', 272, '105 E 5th St\nFirst Ward\n', 'Charlotte', 'NC', 28202, 'Thai', 'default.jpg', 'Harry', 'Peter19404', '104168', 'No Discount', 'Stop'),
('1897 Market', 273, '5501 Josh Birmingham Parkway\n', 'Charlotte', 'NC', 28208, 'Thai', 'default.jpg', 'Pat', 'Lucy831441', '227437', 'No Discount', 'Stop'),
('Corkbuzz ', 274, '4905 Ashley Park Ln\nSte J\nSouth Park\n', 'Charlotte', 'NC', 28210, 'Thai', 'default.jpg', 'Moore', 'Mathew752775', '74549', 'No Discount', 'Stop'),
('The Brass Tap - South End', 275, '1440 S Tryon St\nSouth End\n', 'Charlotte', 'NC', 28203, 'Italian', 'default.jpg', 'Shane', 'Mathew107389', '566590', 'No Discount', 'Stop'),
('The Cellar At Duckworths', 276, '330 N Tryon St\nFirst Ward\n', 'Charlotte', 'NC', 28202, 'Mexican', 'default.jpg', 'James', 'Jack238530', '480898', 'No Discount', 'Stop'),
('Queen City Beer and Chili', 277, '135 Brevard Ct\nUptown\n', 'Charlotte', 'NC', 28202, 'American', 'default.jpg', 'Mathew', 'Pat757427', '719341', 'No Discount', 'Stop'),
('BluNotes of ', 278, '3425 David Cox Rd\n', 'Charlotte', 'NC', 28269, 'American', 'default.jpg', 'James', 'Tom46468', '313056', 'No Discount', 'Stop'),
('Five Guys', 279, 'Jay Street Metrotech', 'New York', 'NY', 11201, 'American', 'https://s3.us-east-2.amazonaws.com/uploads11/86471-five-guys-secret-menu1.jpg', 'Mehul', 'mehul123', 'mehul', 'No Discount', 'Stop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Custid`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingid`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Reserid`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`Restid`),
  ADD UNIQUE KEY `Username_UNIQUE` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Reserid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `Restid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
