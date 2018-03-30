-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2018 at 04:58 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sis_gfs`
--

-- --------------------------------------------------------

--
-- Table structure for table `r_building_room`
--

CREATE TABLE `r_building_room` (
  `ROOM_ID` int(11) NOT NULL,
  `ROOM_NAME` varchar(100) NOT NULL,
  `BUILDING_FK` int(11) NOT NULL,
  `DELETE_FLAG` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `r_building_room`
--
ALTER TABLE `r_building_room`
  ADD PRIMARY KEY (`ROOM_ID`),
  ADD KEY `BUILDING_FK` (`BUILDING_FK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `r_building_room`
--
ALTER TABLE `r_building_room`
  MODIFY `ROOM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `r_building_room`
--
ALTER TABLE `r_building_room`
  ADD CONSTRAINT `r_building_room_ibfk_1` FOREIGN KEY (`BUILDING_FK`) REFERENCES `r_building` (`BLDG_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
