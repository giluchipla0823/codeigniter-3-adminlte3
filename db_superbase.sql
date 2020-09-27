-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-09-2020 a las 01:04:16
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_superbase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `description` varchar(150) COLLATE latin1_spanish_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `name`, `description`, `order`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'MANTENEDORES', 'Menú Principal de Mantenedores', 1, 1, '2020-08-22 15:34:52', '2020-08-22 15:34:52', NULL),
(2, 1, 'Módulos', 'Mantenedor de Módulos', 1, 1, '2020-08-22 15:34:52', '2020-08-22 15:34:52', NULL),
(3, 1, 'Opciones', 'Mantenedor de Opciones para los módulos', 1, 1, '2020-08-22 15:34:52', '2020-08-22 15:34:52', NULL),
(4, 1, 'Usuarios', 'Mantenedor de Usuarios', 1, 1, '2020-08-22 15:34:52', '2020-08-22 15:34:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_user`
--

CREATE TABLE `menu_user` (
  `menu_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `menu_user`
--

INSERT INTO `menu_user` (`menu_id`, `user_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `description` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Rol administrador', 1, '2020-08-22 15:34:52', '2020-08-22 15:34:52', NULL),
(2, 'guest', 'Rol invitado', 1, '2020-08-22 15:34:52', '2020-08-22 15:34:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `last_name` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `email_verification_code` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `active`, `email_verification_code`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrador', 'Webmaster', 'webmaster@gmail.com', 'webmaster', 'bb636236ee5251177a08bec42cf5036c1d9a992b481ae34da474a80501407e8ed1c81c68d595ec453be7880a96ebc6f8502e637b5217d6736a0907544c0c3e18bwqN0WZY7sJXK09KklEZ137H/NhLudJfbYLIQBWaewA=', 1, NULL, '2020-08-22 15:34:52', '2020-08-22 15:34:52', '2020-09-26 19:10:52', NULL),
(2, 'Gino Luiggi', 'Chirinos Plasencia', 'guest@gmail.com', 'guest', 'd0ee1398c8ee2b11c32357cd8748227f94c7aa3d8fb2316018008181d8a9c606d2cab17b6659afa594aa2ecd48c54b928aa939e5fd22ee3ccc9e0e2f88cdfa22Nv23ueteQ2n3zdC+LguwybxAOhNoXnxWNEZ/2zuHK+I=', 1, NULL, '2020-08-22 15:34:52', '2020-08-22 15:34:52', '2020-09-26 19:10:52', NULL),
(3, 'Pepe', 'Pepe', 'pepe@gmail.com', 'pepe123', '0f3609fa9b46802796981bbdfe94b4ce867d6ebac5c0d1e7d57e323b39ef5230dcaec983537a96a612e9a51fb797ec3d4c026c0cbab47fec800a305c8e9dd779cF89pdhj5rZux3JBlhTZ8aPCw2jy7+z4j7BXKWCOtr0=', 1, NULL, '2020-08-22 15:34:52', '2020-09-26 17:39:08', '2020-09-26 19:10:52', NULL),
(4, 'Claudia', 'Medina', 'claudia.medina@gmail.com', 'claudia.medina', 'b4d7ac352a3fcb7dab1991444dccab7bad2a9a999e4aa55010e009200d3c6549547937344e8b84057c4fdc058f2d247567a896dd7b12542ee097a9c402107b84EdlZk/q2dNCu7Q5BYMEw9htf2/7AdgMn8RZXJ/jSR5c=', 1, NULL, '2020-08-22 15:34:52', '2020-09-26 17:41:26', '2020-09-26 19:10:52', NULL),
(5, 'Franco ', 'Fernandez', 'franco@gmail.com', 'franco123', 'f3d7fe756651effbc62a99c225a075f862d82ced31e84b4c443c96ab37ef4de1d65a2a91235d1fbda2c3b12dd36b262dff20c8b37181af260ae6df255a49e0c6Yi5QANdO5wMAr5/ZrsAoGtnoFZYs+SED/f78Zxoz3zk=', 1, NULL, '2020-09-26 19:09:35', '2020-09-26 19:09:35', '2020-09-26 19:10:52', NULL),
(6, 'Frank', 'Lampard', 'lampard08@gmail.com', 'lampard08', '98df02dcb96bb7fc7cf0f2f45893607befbeb063f1dcd880a4a5bca542f84cc63f55d021ac286490aaaa6d703119e411d9c93fe1645a67530530ef480f3bd8b0b5Ymz2HDs7KSF03CvI0lR//pZUFNFkUeEXzrWuRMIY0=', 1, NULL, '2020-09-26 17:14:20', '2020-09-26 19:11:29', '2020-09-26 19:14:20', NULL),
(7, 'Pedro', 'Picapiedra', 'pedro-picapiedra@gmail.com', 'pedro.picapiedra', 'c89df487499075e5608f11715edc70071e3c22cf1dc152b2b08c854b554ad2f06758fc6abdace3d97819d197d9d581933b787208f15edca8e58438db5014e445ROSogUuP7IRvDOFp+0FXm97++mDUkq1fvzklY63Nfko=', 1, NULL, '2020-09-26 17:19:48', '2020-09-26 19:19:42', '2020-09-26 19:19:48', NULL),
(8, 'Mario', 'Bross', 'mario.bross@gmail.com', 'mario.bross', '7b22286762e119bf4d25ee53d1aa191558b9b8e68f8983ec0222eaa2fc174e8f51f58dca9072a19445b8009a7eb9e194ff72ba40461f6496d06e90a64028bc0fDKy7wmVzN1aRrRVCO33Syl7q9pkHsOlJDtw2dsee8Ms=', 1, NULL, NULL, '2020-09-27 00:00:35', '2020-09-27 00:02:05', NULL),
(9, 'Mario', 'Casas', 'mario.casas@gmail.com', 'mario.casas', 'bd86ec401313558e2527bdc7be60bed721baaf796e97c2adc34865a6877ab6b73ebff82ef79bbb6c03d442937ca96bdf8735177fd108a9930668690469dad5c5mhiJflSmf7bMySZu5eqBOke1k/amnGxdJdPFU6QWnws=', 0, NULL, NULL, '2020-09-27 00:17:31', '2020-09-27 00:17:31', NULL),
(10, 'Fernando', 'Palomo', 'fernando.palomo@gmail.com', 'fernando.palomo', 'c6b1878ae7d3b92ca3c6a6d7f61ff4263379dd536df94d1b6a86c1333fe910ca3fdcba19a0b9cdc90d3671fdb25804bc5659d8788f5ea1a6b3b02c4abf744b57akks5QdF3KIXCtnEg+B1Y85CDhol+WbiEwi4Q3C8NK4=', 0, NULL, NULL, '2020-09-27 00:23:39', '2020-09-27 00:23:39', NULL),
(11, 'Mateo', 'Kovacic', 'mateo.kovacic@gmail.com', 'mateo.kovacic', '5b38100ffa8c5b37a706e64c570717bb535fe9ff3f3bec686e45a9faaf05a3e26313bd397cc76d36cb6ddb57adfdabba22324833ff21421ccf322d544d38d0cfLKjLyktd14NuBaQ3mUtar3/iR1Y/zRgFeykZbuRAyIA=', 0, NULL, NULL, '2020-09-27 00:24:49', '2020-09-27 00:24:49', NULL),
(12, 'Manuel', 'Neuer', 'manuel.neuer@gmail.com', 'manuel.neuer', 'c422fde91a3b94a3ae9b84e1efeb67d52213d9d1d00fc08e998ef44a0f534348054dc384b5c05f0b148ab59ca9aa6492312cfdb563d36d94fe7e0451073cf84cY/Qr+2UEQ2Lys4ZHaiBYc+i4LxlNqBdIFAxcvJ22EZU=', 1, NULL, '2020-09-26 22:54:42', '2020-09-27 00:35:53', '2020-09-27 00:54:42', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_user`
--
ALTER TABLE `menu_user`
  ADD KEY `fk_users_id_idx` (`user_id`),
  ADD KEY `fk_usm_menu_id_idx` (`menu_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `fk_users_id_idx` (`user_id`),
  ADD KEY `fk_roles_id_idx` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menu_user`
--
ALTER TABLE `menu_user`
  ADD CONSTRAINT `fk_usm_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `fk_usm_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `fk_usr_roles_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `fk_usr_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
