-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2024 a las 00:41:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mybank`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costumer`
--

CREATE TABLE `costumer` (
  `id_costumer` int(11) NOT NULL,
  `costumer_name` varchar(55) NOT NULL,
  `costumer_last_name` varchar(55) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `mail` varchar(55) NOT NULL,
  `type` varchar(30) NOT NULL,
  `passw` varchar(8) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `state` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id_product`, `product_name`, `description`, `state`) VALUES
(2, 'Credito', 'Credito de Libranza', '1'),
(5, 'Seguro de vida', 'Seguro', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`id_costumer`),
  ADD KEY `fk_product` (`product`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `costumer`
--
ALTER TABLE `costumer`
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`product`) REFERENCES `product` (`id_product`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
