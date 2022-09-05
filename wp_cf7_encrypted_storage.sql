-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: srv1.philosophia.tech
-- Gegenereerd op: 25 jun 2022 om 18:16
-- Serverversie: 8.0.23-0ubuntu0.20.04.1
-- PHP-versie: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_wp1`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wp_cf7_encrypted_storage`
--

CREATE TABLE IF NOT EXISTS `wp_cf7_encrypted_storage` (
                                                          `entry_id` int NOT NULL AUTO_INCREMENT,
                                                          `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                                          `entry_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
                                                          PRIMARY KEY (`entry_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
