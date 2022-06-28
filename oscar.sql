-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 12:55 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oscar`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `idfilma` int(20) NOT NULL,
  `naziv` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `produkcija` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `godina` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`idfilma`, `naziv`, `produkcija`, `godina`) VALUES
(1, 'Titanic', '20th Century Fox and Paramount', 1997),
(2, 'Shakespeare in Love', 'Miramax', 1998),
(3, 'Chicago', 'Miramax', 2002),
(4, 'Gladiator', 'DreamWorks and Universal', 2000),
(5, 'The Godfather Part II', 'Paramount', 1974),
(6, 'Cabaret', 'Allied Artists', 1972),
(7, 'Rocky', 'United Artists', 1976),
(8, 'Star Wars', '20th Century-Fox', 1977),
(9, 'Gravity', 'Warner Bros.', 2013),
(10, 'The Godfather', 'Paramount', 1972),
(11, 'On the Waterfront', 'Columbia', 1954);

-- --------------------------------------------------------

--
-- Table structure for table `glumac`
--

CREATE TABLE `glumac` (
  `idglumca` int(20) NOT NULL,
  `ime` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `glumac`
--

INSERT INTO `glumac` (`idglumca`, `ime`) VALUES
(1, 'Leonardo DiCaprio'),
(2, 'Kate Winslet'),
(3, 'Al Pacino'),
(4, 'Robert De Niro'),
(5, 'Gwyneth Paltrow'),
(6, 'Joseph Fiennes'),
(7, 'Richard Gere'),
(8, 'Renée Zellwege'),
(9, 'Russell Crowe'),
(10, 'Joaquin Phoenix'),
(11, 'Liza Minnelli'),
(12, 'Michael York'),
(13, 'Sylvester Stallone'),
(14, 'Talia Shire'),
(15, 'Harrison Ford'),
(16, 'Carrie Fisher'),
(17, 'George Clooney'),
(18, 'Sandra Bullock'),
(19, 'Marlon Brando'),
(20, 'Karl Malden');

-- --------------------------------------------------------

--
-- Table structure for table `nominacija`
--

CREATE TABLE `nominacija` (
  `idfilma` int(20) NOT NULL,
  `idglumca` int(20) NOT NULL,
  `razlogNominacije` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nominacija`
--

INSERT INTO `nominacija` (`idfilma`, `idglumca`, `razlogNominacije`) VALUES
(1, 1, 'Neverovatna gluma'),
(2, 13, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idfilma`);

--
-- Indexes for table `glumac`
--
ALTER TABLE `glumac`
  ADD PRIMARY KEY (`idglumca`);

--
-- Indexes for table `nominacija`
--
ALTER TABLE `nominacija`
  ADD PRIMARY KEY (`idfilma`,`idglumca`),
  ADD KEY `idglumca` (`idglumca`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `idfilma` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `glumac`
--
ALTER TABLE `glumac`
  MODIFY `idglumca` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nominacija`
--
ALTER TABLE `nominacija`
  ADD CONSTRAINT `nominacija_ibfk_1` FOREIGN KEY (`idfilma`) REFERENCES `film` (`idfilma`),
  ADD CONSTRAINT `nominacija_ibfk_2` FOREIGN KEY (`idglumca`) REFERENCES `glumac` (`idglumca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
