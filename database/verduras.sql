-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2016 at 03:39 AM
-- Server version: 5.5.41-log
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `verduras`
--

-- --------------------------------------------------------

--
-- Table structure for table `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `id_grupo` int(11) NOT NULL,
  `nombre_grupo` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `zona_sectorGrupo` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `grupo`
--

INSERT INTO `grupo` (`id_grupo`, `nombre_grupo`, `zona_sectorGrupo`) VALUES
(1, 'verdufrescas', 'occidente'),
(2, 'fruta hoy', 'oriente'),
(3, 'mundifrut', 'norte'),
(4, 'verduverg', 'sur');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tipo_producto` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `unidad_medida` char(4) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precioNeto_producto` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_producto`, `tipo_producto`, `unidad_medida`, `precioNeto_producto`) VALUES
(1, 'manzanas', 'fruta', 'kg', 1000),
(2, 'peras', 'fruta', 'kg', 1500),
(3, 'arracacha', 'verdura', 'kg', 5000),
(4, 'papas', 'verdura', 'kg', 6000),
(5, 'criolla', 'verdura', 'kg', 6000),
(6, '	Acelga	', '	verdura	', '	Kg	', 6059),
(7, '	Aguacate	', '	verdura	', '	Kg	', 5819),
(8, '	Ajo	', '	verdura	', '	Kg	', 5761),
(9, '	Alcachofa	', '	verdura	', '	Kg	', 9237),
(10, '	Alcaparra	', '	verdura	', '	Kg	', 8973),
(11, '	Almendras	', '	fruta	', '	Kg	', 6525),
(12, '	Apio	', '	verdura	', '	Kg	', 6658),
(13, '	Avellana	', '	verdura	', '	Kg	', 6811),
(14, '	Betabel	', '	verdura	', '	Kg	', 9472),
(15, '	Brócoli	', '	verdura	', '	Kg	', 5812),
(16, '	Cacahuates	', '	verdura	', '	Kg	', 6258),
(17, '	Calabaza	', '	verdura	', '	Kg	', 9135),
(18, '	Caña	', '	fruta	', '	Kg	', 9530),
(19, '	Castañas	', '	fruta	', '	Kg	', 6346),
(20, '	Cebolla	', '	verdura	', '	Kg	', 9728),
(21, '	Champiñón	', '	verdura	', '	Kg	', 5569),
(22, '	Chayote	', '	verdura	', '	Kg	', 8040),
(23, '	Chícharos	', '	verdura	', '	Kg	', 7795),
(24, '	Chile fresco	', '	verdura	', '	Kg	', 8800),
(25, '	Chiles	', '	verdura	', '	Kg	', 9396),
(26, '	Chiles gueros	', '	verdura	', '	Kg	', 7853),
(27, '	Ciruela	', '	fruta	', '	Kg	', 5555),
(28, '	Ciruela pasa	', '	fruta	', '	Kg	', 5321),
(29, '	Col	', '	verdura	', '	Kg	', 5595),
(30, '	Coliflor	', '	verdura	', '	Kg	', 8400),
(31, '	Dátil	', '	fruta	', '	Kg	', 6634),
(32, '	Durazno	', '	fruta	', '	Kg	', 9611),
(33, '	Ejote	', '	fruta	', '	Kg	', 6406),
(34, '	Elote	', '	verdura	', '	Kg	', 8150),
(35, '	Espinacas	', '	verdura	', '	Kg	', 8678),
(36, '	Fresa	', '	fruta	', '	Kg	', 6771),
(37, '	Frijoles	', '	verdura	', '	Kg	', 6178),
(38, '	mora silvestre	', '	fruta	', '	Kg	', 9410),
(39, '	Granada	', '	fruta	', '	Kg	', 9750),
(40, '	Guanábana	', '	fruta	', '	Kg	', 8132),
(41, '	Guayaba	', '	fruta	', '	Kg	', 6314),
(42, '	Jamaica	', '	fruta	', '	Kg	', 7566),
(43, '	Jícama	', '	fruta	', '	Kg	', 8989),
(44, '	Jitomate	', '	verdura	', '	Kg	', 9897),
(45, '	Kiwi	', '	fruta	', '	Kg	', 7140),
(46, '	Lechuga	', '	verdura	', '	Kg	', 5919),
(47, '	Lima	', '	fruta	', '	Kg	', 6040),
(48, '	Limón	', '	fruta	', '	Kg	', 7673),
(49, '	Mamey	', '	fruta	', '	Kg	', 9121),
(50, '	Mandarina	', '	fruta	', '	Kg	', 9027),
(51, '	Mango	', '	fruta	', '	Kg	', 5865),
(52, '	Manzana	', '	fruta	', '	Kg	', 8279),
(53, '	Melón	', '	fruta	', '	Kg	', 6587),
(54, '	Naranja	', '	fruta	', '	Kg	', 8418),
(55, '	Nopal	', '	verdura	', '	Kg	', 6372),
(56, '	Nopalitos	', '	verdura	', '	Kg	', 8680),
(57, '	Nuez	', '	fruta	', '	Kg	', 5887),
(58, '	Orejón	', '	verdura	', '	Kg	', 9767),
(59, '	Papa	', '	verdura	', '	Kg	', 6313),
(60, '	Papaya	', '	fruta	', '	Kg	', 5393),
(61, '	Pasa (Uva pasa)	', '	fruta	', '	Kg	', 6652),
(62, '	Pepino	', '	verdura	', '	Kg	', 6054),
(63, '	Pera	', '	fruta	', '	Kg	', 6343),
(64, '	Pimiento	', '	verdura	', '	Kg	', 6480),
(65, '	Piña	', '	fruta	', '	Kg	', 8998),
(66, '	Plátano	', '	fruta	', '	Kg	', 6846),
(67, '	Rábano	', '	fruta	', '	Kg	', 7526),
(68, '	Romeritos	', '	fruta	', '	Kg	', 9227),
(69, '	Sandía	', '	fruta	', '	Kg	', 8765),
(70, '	Tamarindo	', '	fruta	', '	Kg	', 5184),
(71, '	Tejocote	', '	fruta	', '	Kg	', 7410),
(72, '	Tomate	', '	verdura	', '	Kg	', 5323),
(73, '	Toronja	', '	fruta	', '	Kg	', 8774),
(74, '	Tuna	', '	fruta	', '	Kg	', 6552),
(75, '	Uva	', '	fruta	', '	Kg	', 5711),
(76, '	Verdolaga	', '	verdura	', '	Kg	', 8774),
(77, '	Zanahoria	', '	verdura	', '	Kg	', 5184);

-- --------------------------------------------------------

--
-- Table structure for table `vendedor`
--

CREATE TABLE IF NOT EXISTS `vendedor` (
  `id_vendedor` int(11) NOT NULL,
  `nombre_vendedor` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `zona_vendedor` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cedula_vendedor` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `vendedor`
--

INSERT INTO `vendedor` (`id_vendedor`, `nombre_vendedor`, `zona_vendedor`, `cedula_vendedor`) VALUES
(1, 'cristian arrieta', 'sur', '1234567890'),
(2, 'gabriel roncancio', 'sur', '1234567891'),
(3, 'jhon garzon ', 'norte', '1234567892'),
(4, 'fernado bernal', 'norte', '1234567893'),
(5, 'laura velosa', 'occidente', '1234567894'),
(6, 'dany diaz', 'occidente', '1234567895'),
(7, 'william bernal', 'oriente', '1234567896'),
(8, 'rosa melo', 'oriente', '1234567897');

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `id_venta` int(11) NOT NULL,
  `costo_venta` double NOT NULL,
  `fecha_venta` date NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `cantidad_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Dumping data for table `venta`
--

INSERT INTO `venta` (`id_venta`, `costo_venta`, `fecha_venta`, `id_vendedor`, `id_producto`, `id_grupo`, `cantidad_producto`) VALUES
(1, 15000, '2016-02-15', 1, 4, 1, 10),
(2, 47000, '2016-02-17', 3, 6, 3, 6),
(3, 5000, '2016-02-11', 2, 14, 2, 1),
(4, 13000, '2016-02-10', 3, 17, 1, 4),
(5, 11000, '2016-02-01', 4, 23, 2, 4),
(6, 14000, '2016-03-15', 5, 45, 3, 10),
(7, 1000, '2016-03-10', 6, 13, 4, 1),
(8, 16000, '2016-03-12', 7, 22, 1, 3),
(9, 16000, '2016-03-01', 8, 24, 1, 5),
(10, 14000, '2016-02-14', 6, 5, 1, 6),
(11, 41000, '2016-02-10', 3, 3, 4, 7),
(12, 22000, '2016-02-09', 5, 23, 3, 8),
(13, 11000, '2016-02-04', 7, 2, 3, 4),
(14, 22000, '2016-02-21', 2, 14, 2, 7),
(15, 34000, '2016-02-21', 3, 24, 1, 6),
(16, 9000, '2016-03-15', 2, 14, 4, 3),
(17, 4000, '2016-01-17', 1, 6, 1, 2),
(18, 5000, '2016-02-24', 4, 4, 1, 2),
(19, 43000, '2016-02-20', 2, 5, 4, 10),
(20, 11000, '2016-02-02', 1, 22, 3, 9),
(21, 34000, '2016-02-02', 1, 11, 3, 12),
(22, 47000, '2016-02-17', 3, 6, 3, 6),
(23, 5000, '2016-02-11', 7, 14, 2, 1),
(24, 13000, '2016-03-10', 3, 17, 1, 4),
(25, 11000, '2016-02-01', 4, 23, 2, 4),
(26, 14000, '2016-03-15', 7, 45, 3, 10),
(27, 1000, '2016-03-10', 6, 13, 4, 1),
(28, 16000, '2016-03-12', 8, 22, 1, 3),
(29, 16000, '2016-03-01', 7, 24, 3, 5),
(30, 14000, '2016-02-14', 6, 5, 1, 6),
(31, 41000, '2016-02-10', 3, 3, 4, 7),
(32, 22000, '2016-01-09', 7, 23, 3, 8),
(33, 11000, '2016-02-04', 8, 2, 3, 4),
(34, 22000, '2016-02-21', 6, 14, 2, 7),
(35, 34000, '2016-02-21', 3, 24, 1, 6),
(36, 9000, '2016-03-15', 2, 14, 4, 3),
(37, 4000, '2016-03-17', 1, 6, 4, 2),
(38, 5000, '2016-01-24', 8, 4, 1, 2),
(39, 43000, '2016-02-20', 7, 5, 4, 10),
(40, 11000, '2016-03-02', 6, 22, 3, 9),
(41, 34000, '2016-02-02', 1, 11, 4, 12),
(42, 15000, '2016-02-15', 8, 4, 4, 10),
(43, 15000, '2016-02-15', 1, 4, 1, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grupo`
--
ALTER TABLE `grupo`
 ADD PRIMARY KEY (`id_grupo`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
 ADD PRIMARY KEY (`id_producto`);

--
-- Indexes for table `vendedor`
--
ALTER TABLE `vendedor`
 ADD PRIMARY KEY (`id_vendedor`);

--
-- Indexes for table `venta`
--
ALTER TABLE `venta`
 ADD PRIMARY KEY (`id_venta`), ADD KEY `id_vendedor` (`id_vendedor`), ADD KEY `id_producto` (`id_producto`), ADD KEY `id_grupo` (`id_grupo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `venta`
--
ALTER TABLE `venta`
ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`),
ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`),
ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
