-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2016 at 10:05 PM
-- Server version: 5.5.41-log
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hnc`
--

-- --------------------------------------------------------

--
-- Table structure for table `accion`
--

CREATE TABLE IF NOT EXISTS `accion` (
`id` int(11) NOT NULL,
  `cod_accion` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `nom_accion` varchar(35) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `error`
--

CREATE TABLE IF NOT EXISTS `error` (
`id` int(11) NOT NULL,
  `cod_error` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `nom_error` varchar(35) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `error`
--

INSERT INTO `error` (`id`, `cod_error`, `nom_error`) VALUES
(1, '01', 'Humano'),
(2, '02', 'Sistema'),
(3, '03', 'No Parametrizado');

-- --------------------------------------------------------

--
-- Table structure for table `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
`id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cod_usuario` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_programa` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_error` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_accion` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `solucion` varchar(3) COLLATE utf8_spanish2_ci NOT NULL,
  `desc_solucion` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `programa`
--

CREATE TABLE IF NOT EXISTS `programa` (
`id` int(11) NOT NULL,
  `cod_programa` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `nom_programa` varchar(35) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `programa`
--

INSERT INTO `programa` (`id`, `cod_programa`, `nom_programa`) VALUES
(1, '01', 'Bancos'),
(2, '02', 'Proveedores'),
(3, '03', 'Compras');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accion`
--
ALTER TABLE `accion`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error`
--
ALTER TABLE `error`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `novedades`
--
ALTER TABLE `novedades`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programa`
--
ALTER TABLE `programa`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accion`
--
ALTER TABLE `accion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `error`
--
ALTER TABLE `error`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `novedades`
--
ALTER TABLE `novedades`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `programa`
--
ALTER TABLE `programa`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
