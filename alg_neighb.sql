-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 10 Ιουλ 2014 στις 12:28:22
-- Έκδοση διακομιστή: 5.6.16
-- Έκδοση PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Βάση δεδομένων: `uowm`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `alg_neighb`
--

CREATE TABLE IF NOT EXISTS `alg_neighb` (
  `from` tinyint(4) NOT NULL,
  `to` tinyint(4) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `alg_neighb`
--

INSERT INTO `alg_neighb` (`from`, `to`, `weight`) VALUES
(1, 2, 110),
(1, 3, 57),
(2, 4, 74),
(2, 8, 56),
(3, 5, 83),
(3, 6, 47),
(4, 7, 74),
(13, 4, 53),
(33, 35, 43),
(24, 23, 38),
(7, 13, 62),
(13, 7, 62),
(7, 11, 59),
(11, 12, 71),
(12, 11, 71),
(11, 27, 43),
(27, 28, 69),
(28, 27, 69),
(8, 5, 65),
(5, 8, 65),
(8, 16, 48),
(16, 8, 48),
(6, 9, 38),
(9, 6, 38),
(6, 10, 56),
(21, 10, 37),
(10, 21, 37),
(10, 25, 69),
(25, 24, 69),
(24, 25, 69),
(5, 9, 73),
(23, 33, 25),
(18, 19, 14),
(22, 21, 33),
(19, 20, 30),
(20, 19, 30),
(36, 24, 55),
(18, 23, 18),
(19, 22, 24),
(19, 18, 14),
(22, 19, 24),
(24, 22, 18),
(25, 26, 24),
(5, 9, 73),
(9, 5, 73),
(5, 17, 52),
(17, 5, 52),
(14, 13, 20),
(14, 12, 43),
(12, 28, 50),
(28, 31, 78),
(31, 34, 44),
(34, 35, 42),
(35, 36, 36),
(36, 26, 93),
(15, 14, 59),
(16, 15, 20),
(15, 29, 15),
(29, 30, 34),
(29, 32, 27),
(32, 30, 45),
(16, 17, 48),
(30, 31, 16),
(31, 12, 73),
(12, 31, 73),
(17, 18, 48),
(33, 32, 54),
(9, 20, 16),
(20, 9, 16),
(20, 21, 24),
(21, 20, 24);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
