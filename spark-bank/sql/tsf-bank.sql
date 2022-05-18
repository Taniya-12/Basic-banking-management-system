-- phpMyAdmin SQL Dump

-- Generation Time: May 16, 2022 at 03:51 PM
-- Server version: 10.4.19-MariaDB - mariadb.org binary distribution
-- Server charset: UTF-8 Unicode (utf8mb4)
-- PHP version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- -------------------------------------------------------
-- Database: `tsf-bank`

-- --------------------------------------------------------

--
-- Table structure for table `transaction`

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `sno` int(3) NOT NULL AUTO_INCREMENT,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Taniya', 'Prem', 10000, '2022-05-14 11:22:39'),
(2, 'Aparna', 'Taniya',20000, '2022-05-14 11:23:08'),
(3, 'Aparna', 'Riya', 1000, '2022-05-14 11:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------------------------------------------
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Taniya', 'taniya1605@gmail.com', 49100),
(2, 'Prem', 'prem1009@gmail.com', 29450),
(3, 'Prantika', 'prantika0509@gmail.com', 40000),
(4, 'Pooja', 'pooja1710@gmail.com', 50000),
(5, 'Riya', 'riya1602@gmail.com', 41000),
(6, 'Prity', 'prity1707@gmail.com', 30000),
(7, 'Pallavi', 'pallavi1802@gmail.com', 50000),
(8, 'Muskan', 'muskan2007@gmail.com', 40000),
(9, 'Sushila', 'sushila1602@gmail.com', 30450),
(10, 'Aparna', 'aparna1001@gmail.com', 60000);
COMMIT;

-- ------------------------------------------------------------------
-- --------------------------------------------------------------------------
