-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 08:25 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie.lt`
--

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `Genre_ID` int(2) UNSIGNED NOT NULL,
  `Genre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`Genre_ID`, `Genre`) VALUES
(1, 'Action'),
(2, 'Drama'),
(3, 'Crime'),
(4, 'Thriller'),
(5, 'Adventure'),
(6, 'Mystery'),
(7, 'Comedy'),
(8, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `moviedb`
--

CREATE TABLE `moviedb` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Type_ID` int(2) UNSIGNED NOT NULL,
  `Genre_ID` int(2) UNSIGNED NOT NULL,
  `Years` year(4) NOT NULL,
  `Time` varchar(10) NOT NULL,
  `Rating` decimal(2,1) NOT NULL,
  `Description` text NOT NULL,
  `Background` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moviedb`
--

INSERT INTO `moviedb` (`ID`, `Name`, `Type_ID`, `Genre_ID`, `Years`, `Time`, `Rating`, `Description`, `Background`) VALUES
(1, 'The Dark Knight', 1, 1, 2008, '2h 32min', '9.0', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'knight.jpg'),
(2, 'The Shawshank Redemption', 1, 2, 1994, '2h 22min', '9.3', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'showshank.jpg'),
(3, 'The Godfather', 1, 3, 1972, '2h 55min', '9.2', 'An organized crime dynasty\'s aging patriarch transfers control of his clandestine empire to his reluctant son.', 'godfather.jpg'),
(4, '12 Angry Men', 1, 3, 1957, '1h 36min', '9.0', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', '12angry.jpg'),
(5, 'The Lord of the Rings: The Return of the King', 1, 1, 2003, '3h 21min', '8.9', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'ring.jpg'),
(6, 'Fight Club', 1, 2, 1999, '2h 19min', '8.8', 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.', 'fightclub.jpg'),
(7, 'Gisaengchung', 1, 4, 2019, '2h 12min', '8.6', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', 'gisaengchung.jpg'),
(8, 'The Silence of the Lambs', 1, 4, 1991, '1h 58min', '8.6', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 'lambs.jpg'),
(9, 'The Green Mile', 1, 2, 1999, '3h 9min', '8.6', 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.', 'mile.jpg'),
(10, 'Breaking Bad', 2, 3, 2008, '49min', '9.4', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.', 'breakingbad.jpg'),
(11, 'Chernobyl', 2, 2, 2019, '1h 5min', '9.4', 'In April 1986, an explosion at the Chernobyl nuclear power plant in the Union of Soviet Socialist Republics becomes one of the world\'s worst man-made catastrophes.', 'chernobyl.jpg'),
(12, 'The Wire', 2, 3, 2002, '59min', '9.3', 'The Baltimore drug scene, as seen through the eyes of drug dealers and law enforcement.', 'wire.jpg'),
(13, 'Game of Thrones', 2, 5, 2011, '57min', '9.2', 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', 'got.jpg'),
(14, 'The Sopranos', 2, 3, 1999, '55min', '9.2', 'New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, leading him to seek professional psychiatric counseling.', 'sopranos.jpg'),
(15, 'True Detective', 2, 6, 2014, '55min', '8.9', 'Seasonal anthology series in which police investigations unearth the personal and professional secrets of those involved, both within and outside the law.', 'real.jpg'),
(16, 'The Office', 2, 7, 2005, '22min', '8.9', 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', 'office.jpg'),
(17, 'Friends', 2, 7, 1994, '22min', '8.9', 'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.', 'friends.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `Type_ID` int(2) UNSIGNED NOT NULL,
  `Type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`Type_ID`, `Type`) VALUES
(1, 'Film'),
(2, 'TV Series');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD KEY `ID` (`Genre_ID`);

--
-- Indexes for table `moviedb`
--
ALTER TABLE `moviedb`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Type ID` (`Type_ID`,`Genre_ID`),
  ADD KEY `Genre ID` (`Genre_ID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD KEY `Type_ID` (`Type_ID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `moviedb`
--
ALTER TABLE `moviedb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `moviedb`
--
ALTER TABLE `moviedb`
  ADD CONSTRAINT `moviedb_ibfk_1` FOREIGN KEY (`Genre_ID`) REFERENCES `genre` (`Genre_ID`),
  ADD CONSTRAINT `moviedb_ibfk_2` FOREIGN KEY (`Type_ID`) REFERENCES `type` (`Type_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
