-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-10-2020 a las 00:11:21
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
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `token` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('martin.ramirez@gmail.com', 'KWUJT9Lv5oWojcxnsyBJ7AaGDaG9ToC0VTtV019imTfKqGYkLZHCCofbbsyMvF9OfnPIVgdyNYWfIVehOy7MZWacTsjnVoglA78OPsfSNVEfaOwNROVtd4Jqrp0ZzUj3FnUi40h8HKdh4fNKWce9Ajbm4KvRNFyhVEvWAxkio5mI7UkQfRSvkp8jlxdox8pnP59k3HgACHxLV9Qupj8ytHn2qQLwAZrf4QuTurufW5kJ1fMFquc05HMX9HAJgHI', '2020-09-28 00:51:28'),
('ana.pedroche@gmail.com', 'VKxD9JnZdnAPBGNy8oqLBIBvw25lnrCKVBKmMJ2gVnByAazEJmLYcekOAglKoYWa8NTLHTnSpDNYYzvsetu7DAG2JRn21ujGU7Eq1hyc03rptBBwVIR9hxWnMk0ZhWQhDGSTJyW71BcQ57isngyyWgMgj07g3mjKFVVy3UAQPWW8INAIFtKhfMKQBobPeuPJMnfpy7LCqTQCGKOy2zkif4owD1BCMOiqj6P5SbozZotBwb6c2YbppHfBN5z4SQ0', '2020-09-28 00:53:29'),
('ana.pedroche@gmail.com', 'LpVLJYnEdFyscYyhPyNQJ69ZQqf6f4PxEOvz162a8j1Tf1iPhXcNn9BU8uoY9mACDgmWWBDrNiKXLqkh4hooLw5AprE5supt8bdrvcxFfZDemD6ck0tBWVCpmEVdu3eBGOGZ8PE6LMAgL4yUwSiZaqwz4wKaRcQVaWxVrAb3udXe6BoSAlSQ6HuuEnOsIhOLWghZkDLXErDyLwRDzFPmVihxXy8dvsgZ8dXDWa4Q0z61NE6MkoBDaz1kehEGLyl', '2020-09-28 01:22:28'),
('manuel.neuer@gmail.com', 'qiH1CohD4nnPO1ka7MsLk7WBpCbhkbLuBFRTCnWKJNpjy0c7FX42g5GK9F6EkrvQewIbtVsVmOiDYopnSi2s3LZL5flKZw7Cu1SqG5ShqGqtxaAzjQy74tJefm1wbDY0bUXVMMK82rDL9dSxFREsm0OgUvrXoGsXCKDbrLCH0K5k5pFlqnUq2qfS0A8kg6QeIIlqhb0qMrecDRup32RQm8Tj84Y9RDyy2AUAtmunKtUEjoRyPSUncxJqFakyDDE', '2020-09-28 01:23:26'),
('webmaster@gmail.com', 'AGprKlOVZvaJxwT0EzdIcDr4oTox6RVfzGPiYpt1UDBlpv8EHIcULBQcaK8sZ2Cj9of5WBp0shGcLafJ3S0wAEqauZjGdJayIkK2bhYN1iBhhRF3EI9VUXqFcQ7Nibm91LvPWRtm1UStZkfMLcb0gUrHeIOsNadomYyENuwIbwOhRN9vauTLCPs7Soyy5GHc1TcmESHf1CXTLsfEtblyPC4wFNGEV5PraKYSvvEbVAhD0pe78FoLujpo9eEobrp', '2020-10-01 18:46:19'),
('webmaster@gmail.com', 'XMnDPGm3UpFQx3YtHf1bLWUo7OeN6AaeyLibqrUvrihHcRJiJ5yx2NwP76qiIZajaX0TsFAwRyTqdAu8H7VN7JHGA4QrxEYbOpHMMoInecMGswXn4Ww6bn7Bsls2mG1YuJ4bmEt5X54oIZzhYZcRVfzp4lYrxortlCeG5xm0DoZVKCZ3ZdaVcNekfzToV1IxqtgYLzR8xEFc8rRF6xj9rvevmMMb00GitZksWIE5ir3KL00hbKbOXQr8GgggNyq', '2020-10-01 18:47:15'),
('webmaster@gmail.com', 'MlemR5K8f1IU65hK7Ve7HjZ7u7sq0mbL2ml7b4Vlqw1X3Yi66DtAVG3VFrOs5wY1RZ5zLWq3tom39pKLQUkJVKjmQvz2SP37NJSL2gHs1iqjctkVOAEBI6fXbGbl7KzRuIJkdrTnyzKcN3ZXf8jPi68ULyS5AcKqqZmsP1QycGUID5XoInK0rA3RvFFWwpxtJA0gMFrSIwO09hylnFBI8bVOnmaLhvjYJXAyCdBQowgyhsOrOLVTGaANIeRa3JY', '2020-10-01 18:47:43'),
('webmaster@gmail.com', 'pmOtRvxChDnCKhvovY3RO3UhN37j2FTW2ZtDTtsHKmIV78tRm9F2ZA6hPj3Lsocj0ILTovdyc47YG0yhfvPq6ll0MWs2KhEBMGwYlLqgkKQHlo2gBatB6y5CG7rz9f8p115m4PO5ovBuNyYm2tcZkW96h9ukl7DUEsx66Xmr9rsBrdbJFxHeQGPPjCyurueusiUIJBUJI0rRhUNjjPIiIiYYA2a3GhoxusVhApn9jVFw7Kewsqa5o0bBqD3WzzT', '2020-10-01 18:48:14'),
('webmaster@gmail.com', 'y8Lnur1JxIRBXKxX8lHPzpOzSjlFKMbY3cdolnqNiUecRzTQq0pS5qGF0GIFMf6POrCSYex0TPcl3OuCklvxG5RQsPwIIFXICaXzKFEBHgqr3DynJaF1qpRcSdQFkT8JxS7IqeoWiXYn8TAAQ1FRt5j67LWuEbLY4ovWiuZrYNA6f9p222QIzqfaZeVJlZWOxNKwnYMKsXbefXRYkonBnZJLdcOACCTqVmCqtzR96X6hTD1DTabW8KKSChuuLX0', '2020-10-01 18:54:31');

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
(1, 'Administrador', 'Webmaster', 'webmaster@gmail.com', 'webmaster', '74ece85208d629334446a78c65494b402ec990cc6967b719b1617a1962c76044d2bcab195be885511106c53c18c9b5ba89d46f375978f25bab9fe0fe3da31190K2J+oMqQQNg5AUuAOKAzcVZb+vKbdnxtAxuaEJIY/I8=', 1, NULL, '2020-08-22 15:34:52', '2020-08-22 15:34:52', '2020-10-05 23:48:47', NULL),
(2, 'Gino Luiggi', 'Chirinos Plasencia', 'guest@gmail.com', 'guest', 'd0ee1398c8ee2b11c32357cd8748227f94c7aa3d8fb2316018008181d8a9c606d2cab17b6659afa594aa2ecd48c54b928aa939e5fd22ee3ccc9e0e2f88cdfa22Nv23ueteQ2n3zdC+LguwybxAOhNoXnxWNEZ/2zuHK+I=', 1, NULL, '2020-08-22 15:34:52', '2020-08-22 15:34:52', '2020-09-26 19:10:52', NULL),
(3, 'Pepe', 'Pepe', 'pepe@gmail.com', 'pepe123', '0f3609fa9b46802796981bbdfe94b4ce867d6ebac5c0d1e7d57e323b39ef5230dcaec983537a96a612e9a51fb797ec3d4c026c0cbab47fec800a305c8e9dd779cF89pdhj5rZux3JBlhTZ8aPCw2jy7+z4j7BXKWCOtr0=', 1, NULL, '2020-08-22 15:34:52', '2020-09-26 17:39:08', '2020-09-26 19:10:52', NULL),
(4, 'Claudia', 'Medina', 'claudia.medina@gmail.com', 'claudia.medina', 'b4d7ac352a3fcb7dab1991444dccab7bad2a9a999e4aa55010e009200d3c6549547937344e8b84057c4fdc058f2d247567a896dd7b12542ee097a9c402107b84EdlZk/q2dNCu7Q5BYMEw9htf2/7AdgMn8RZXJ/jSR5c=', 1, NULL, '2020-08-22 15:34:52', '2020-09-26 17:41:26', '2020-09-26 19:10:52', NULL),
(5, 'Franco ', 'Fernandez', 'franco@gmail.com', 'franco123', 'f3d7fe756651effbc62a99c225a075f862d82ced31e84b4c443c96ab37ef4de1d65a2a91235d1fbda2c3b12dd36b262dff20c8b37181af260ae6df255a49e0c6Yi5QANdO5wMAr5/ZrsAoGtnoFZYs+SED/f78Zxoz3zk=', 1, NULL, '2020-09-26 19:09:35', '2020-09-26 19:09:35', '2020-09-26 19:10:52', NULL),
(6, 'Frank', 'Lampard', 'lampard08@gmail.com', 'lampard08', '98df02dcb96bb7fc7cf0f2f45893607befbeb063f1dcd880a4a5bca542f84cc63f55d021ac286490aaaa6d703119e411d9c93fe1645a67530530ef480f3bd8b0b5Ymz2HDs7KSF03CvI0lR//pZUFNFkUeEXzrWuRMIY0=', 1, NULL, '2020-09-26 17:14:20', '2020-09-26 19:11:29', '2020-09-26 19:14:20', NULL),
(7, 'Pedro', 'Picapiedra', 'pedro-picapiedra@gmail.com', 'pedro.picapiedra', 'c89df487499075e5608f11715edc70071e3c22cf1dc152b2b08c854b554ad2f06758fc6abdace3d97819d197d9d581933b787208f15edca8e58438db5014e445ROSogUuP7IRvDOFp+0FXm97++mDUkq1fvzklY63Nfko=', 1, NULL, '2020-09-26 17:19:48', '2020-09-26 19:19:42', '2020-09-26 19:19:48', NULL),
(8, 'Mario', 'Bross', 'mario.bross@gmail.com', 'mario.bross', '7b22286762e119bf4d25ee53d1aa191558b9b8e68f8983ec0222eaa2fc174e8f51f58dca9072a19445b8009a7eb9e194ff72ba40461f6496d06e90a64028bc0fDKy7wmVzN1aRrRVCO33Syl7q9pkHsOlJDtw2dsee8Ms=', 1, NULL, NULL, '2020-09-27 00:00:35', '2020-09-27 00:02:05', NULL),
(9, 'Mario', 'Casas', 'mario.casas@gmail.com', 'mario.casas', 'bd86ec401313558e2527bdc7be60bed721baaf796e97c2adc34865a6877ab6b73ebff82ef79bbb6c03d442937ca96bdf8735177fd108a9930668690469dad5c5mhiJflSmf7bMySZu5eqBOke1k/amnGxdJdPFU6QWnws=', 0, NULL, NULL, '2020-09-27 00:17:31', '2020-09-27 00:17:31', NULL),
(10, 'Fernando', 'Palomo', 'fernando.palomo@gmail.com', 'fernando.palomo', 'c6b1878ae7d3b92ca3c6a6d7f61ff4263379dd536df94d1b6a86c1333fe910ca3fdcba19a0b9cdc90d3671fdb25804bc5659d8788f5ea1a6b3b02c4abf744b57akks5QdF3KIXCtnEg+B1Y85CDhol+WbiEwi4Q3C8NK4=', 0, NULL, NULL, '2020-09-27 00:23:39', '2020-09-27 00:23:39', NULL),
(11, 'Mateo', 'Kovacic', 'mateo.kovacic@gmail.com', 'mateo.kovacic', '1e62fb3e38b98d9a61783511a9877cda22d559a2cd2020e623447351f65d9d4b9f6648ac310481b0ca30a9694dc8d37b765d16dea48ce69eb73ee2c4086e7d12kYDMBt+OT+TEE2Jhkc6wctw6Aw9u9g+THLzW6GpTksM=', 0, NULL, NULL, '2020-09-27 00:24:49', '2020-10-01 17:50:41', NULL),
(12, 'Manuel', 'Neuer', 'manuel.neuer@gmail.com', 'manuel.neuer', '60f904ca9c6c6220f7370fd01155f000b5ad8c502bc0861d8afbb6fd5fec0bbc60fa3b46879d9786b9aecb226bcaf3681c9538ad49122b7c03b24b9605ea03a6GVRBO+TaOW1ws+44RmsprTKjj5VljL+zVbZv7x5TWp4=', 1, NULL, '2020-09-26 22:54:42', '2020-09-27 00:35:53', '2020-09-28 01:23:39', NULL),
(13, 'Marco', 'Razetti', 'marco.razetti@gmail.com', 'marco.razetti', '523cd713848209baec40246f9e1fe9516f9f897309508278cb3a8b0d865d29f1ed2c3de072b19c736793ae778547aaaafd8d37a3ed65a64a6d47a67b07521b3cpHi35W0UH3BRL9od/yimt3rVasF640EpE9V4red0C9k=', 0, '8jCJwbXyfZLbm1g5ScH7GDHaxjbpismp8qDlnvb2celeKyWbNc', NULL, '2020-09-27 16:29:31', '2020-10-01 17:45:28', NULL),
(14, 'Ana', 'Pedroche', 'ana.pedroche@gmail.com', 'ana.pedroche', '12c93090e3acf59aca262bed7d0cb768dc0217cbfcc9b0c56647546111ba804f60b54b86c721421747b7c4fbebbd0e2b4cb5fd5937c970d9053fa104b8d67a2a2rKrwfLT8G4LX60Kyf+aVgHNJ+CrjlCLnmEcQAEgqmU=', 0, 'dPDhyEvufN5p6ZhD0okRt3PvOzmwlynUbbPI15UTWpuIfKzCtq', NULL, '2020-09-27 16:49:02', '2020-09-27 16:49:02', NULL),
(15, 'Martin', 'Ramirez', 'martin.ramirez@gmail.com', 'martin.ramirez', '0a8cbd3ed2453dcc71c09443b8816381ca999750dc959f5e67af12b825e13b6a3d22b8b9c4787f68d13d2d29891c00292d23fd423c025d91c2f2ff72e15614d6ySCy9ggiTl+tsfvVJwhW59Je0TmvIPHt2cHnc81cMDg=', 0, 'Y1UE3vNVrqiGGsBTIo2ZEMa8Eg0aFxmmhpn0skgo88WN6xRUQq', NULL, '2020-09-27 16:49:46', '2020-10-01 17:35:29', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
