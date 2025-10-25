
-- phpMyAdmin SQL Dump
-- BASE DE DATOS: student

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
SET NAMES utf8mb4;

-- --------------------------------------------------------
-- Tabla: student_info
-- --------------------------------------------------------

CREATE TABLE `student_info` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `roll` int(6) NOT NULL,
  `class` varchar(7) NOT NULL,
  `city` varchar(15) NOT NULL,
  `pcontact` varchar(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `student_info` (`id`, `name`, `roll`, `class`, `city`, `pcontact`, `photo`, `datetime`) VALUES
(48, 'Emiliano Zapata', 234109, 'Primero', 'Carrera 54 N 12', '3162453578', '2341092020-08-14-08-34.png', '2020-08-14 15:23:34'),
(49, 'Rafael Castro', 234110, 'Segundo', 'Calle 78 N 19 1', '3145648712', '2341102020-08-14-08-13.png', '2020-08-14 15:38:13'),
(50, 'Julia Barón', 234111, 'Tercero', 'Calle 20 N 17 8', '3215468719', '2341112020-08-14-08-27.jpg', '2020-08-14 17:19:16'),
(51, 'Natalia Cardona', 234112, 'Cuarto', 'Carrera 54 N 12', '3015824671', '2341122020-08-14-08-22.png', '2020-08-14 19:54:22'),
(52, 'Sofia Tamayo', 234113, 'Quinto', 'Carrera 55 N 97', '3147894512', '2341132020-08-14-08-22.png', '2020-08-14 21:51:22');

-- --------------------------------------------------------
-- Tabla: users
-- --------------------------------------------------------

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `status` varchar(12) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `photo`, `status`, `datetime`) VALUES
(21, 'configuroweb', 'hola@cweb.com', 'configuroweb', MD5('1234'), 'configuroweb.png', 'activo', '2020-08-14 15:00:09');

-- --------------------------------------------------------
-- Índices
-- --------------------------------------------------------

ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll` (`roll`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `student_info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

COMMIT;
