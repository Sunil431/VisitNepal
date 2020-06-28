-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 28, 2020 at 06:21 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BigProject`
--

-- --------------------------------------------------------

--
-- Table structure for table `Table1`
--

CREATE TABLE `Table1` (
  `ID` int(8) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Table1`
--

INSERT INTO `Table1` (`ID`, `Username`, `Password`) VALUES
(1, 'sunil', 'deupala'),
(2, 'shree', 'basu'),
(5, 'Sunny', '12345'),
(7, 'Sunil', 'Deupala1'),
(8, 'Bishal', 'bishal123'),
(10, 'Ram', 'Ram1234'),
(11, 'rajin', 'rajin1234'),
(12, 'Sunil', 'deupala'),
(13, 'Indra', 'Indra123'),
(14, 'Indra', 'Indra'),
(15, 'Indra', 'indra12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Table1`
--
ALTER TABLE `Table1`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Table1`
--
ALTER TABLE `Table1`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
