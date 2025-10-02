-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : lun. 15 sep. 2025 à 02:58
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `school_manage`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `nom`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'charle', 'davjonathan6@gmail.com', '1', NULL, NULL),
(2, 'karl', 'charle@gmail.com', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `annee_academique`
--

CREATE TABLE `annee_academique` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `annee` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annee_academique`
--

INSERT INTO `annee_academique` (`id`, `annee`, `created_at`, `updated_at`) VALUES
(6, '2025-2026', '2025-02-16 03:14:30', '2025-02-16 03:14:30'),
(7, '2024-2025', '2025-02-16 03:14:52', '2025-02-16 03:14:52'),
(8, '2026-2027', '2025-02-20 05:45:21', '2025-02-20 05:45:21'),
(9, '2025-2026', '2025-08-16 12:27:11', '2025-08-16 12:27:11');

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:2;', 1755259783),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1755259783;', 1755259783),
('spatie.translation-loader.(and :count more errors).fr', 'a:0:{}', 2070707302),
('spatie.translation-loader.*.fr', 'a:0:{}', 2068893860),
('spatie.translation-loader.Not Found.fr', 'a:0:{}', 2068893860),
('spatie.translation-loader.Page Expired.fr', 'a:0:{}', 2070689941),
('spatie.translation-loader.validation.fr', 'a:0:{}', 2068911807);

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filiere_id` bigint(20) UNSIGNED NOT NULL,
  `nom_classe` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `filiere_id`, `nom_classe`, `created_at`, `updated_at`) VALUES
(1, 1, 'ADA1', '2025-01-10 01:02:56', '2025-01-10 01:02:56'),
(3, 4, 'IDA 1', '2025-01-26 00:29:33', '2025-01-26 00:29:33'),
(4, 5, 'Marketing 1', '2025-01-26 00:30:20', '2025-01-26 00:30:20'),
(5, 1, 'ADA2', '2025-01-26 00:30:45', '2025-01-26 00:30:45'),
(6, 7, 'Gbat1', '2025-02-01 11:13:02', '2025-02-01 11:13:02'),
(7, 10, 'SEI', '2025-02-16 03:12:36', '2025-02-16 03:12:36'),
(8, 4, 'IDA2', '2025-02-16 03:13:28', '2025-02-16 03:13:28'),
(9, 7, 'Gbat2', '2025-02-16 03:14:07', '2025-02-16 03:14:07'),
(10, 4, 'IDA3', '2025-02-20 05:46:26', '2025-02-20 05:46:26');

-- --------------------------------------------------------

--
-- Structure de la table `coefficients`
--

CREATE TABLE `coefficients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classe_id` bigint(20) UNSIGNED NOT NULL,
  `matiere_id` bigint(20) UNSIGNED NOT NULL,
  `coefficent` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coefficients`
--

INSERT INTO `coefficients` (`id`, `classe_id`, `matiere_id`, `coefficent`, `created_at`, `updated_at`) VALUES
(1, 3, 13, 1, '2025-08-15 15:50:06', '2025-08-15 15:50:06'),
(2, 3, 9, 4, '2025-08-15 15:55:36', '2025-08-15 20:08:57'),
(3, 3, 14, 2, '2025-08-15 16:15:57', '2025-08-15 16:15:57'),
(4, 3, 4, 1, '2025-08-15 20:07:30', '2025-08-15 20:07:30'),
(5, 3, 18, 1, '2025-08-15 20:08:05', '2025-08-15 20:08:05');

-- --------------------------------------------------------

--
-- Structure de la table `compositions`
--

CREATE TABLE `compositions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `date_composition` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `enseignant_id` bigint(20) UNSIGNED NOT NULL,
  `matiere_id` bigint(20) UNSIGNED NOT NULL,
  `classe_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `compositions`
--

INSERT INTO `compositions` (`id`, `titre`, `date_composition`, `type`, `enseignant_id`, `matiere_id`, `classe_id`, `created_at`, `updated_at`) VALUES
(1, 'composition 1', '2025-07-27', 'examen', 11, 2, 3, '2025-07-27 23:38:07', '2025-07-27 23:38:07'),
(2, 'composition 2', '2025-07-27', 'composition', 11, 9, 3, '2025-07-27 23:45:33', '2025-07-27 23:45:33'),
(3, 'composition 2asi', '2025-07-28', 'examen', 11, 2, 3, '2025-07-28 00:10:18', '2025-07-28 00:10:18'),
(4, 'evaluation2', '2025-08-16', 'composition', 11, 9, 3, '2025-08-16 11:55:15', '2025-08-16 11:55:15');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `enseignant_id` bigint(20) UNSIGNED NOT NULL,
  `classe_id` bigint(20) UNSIGNED NOT NULL,
  `matiere_id` bigint(20) UNSIGNED NOT NULL,
  `Jour` enum('Lundi','Mardi','Mercredi','Jeudi','Vendredi','Samedi') NOT NULL,
  `heure_debut` enum('08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00') NOT NULL,
  `heure_fin` enum('08:30','09:30','10:30','11:30','12:30','13:30','14:30','15:30','16:30','17:00') NOT NULL,
  `salles_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `nom`, `enseignant_id`, `classe_id`, `matiere_id`, `Jour`, `heure_debut`, `heure_fin`, `salles_id`, `created_at`, `updated_at`) VALUES
(75, 'ASI', 11, 3, 2, 'Lundi', '08:00', '12:30', 5, '2025-07-25 23:44:18', '2025-07-25 23:44:18'),
(76, 'Français', 3, 3, 18, 'Lundi', '13:00', '17:00', 5, '2025-07-25 23:45:23', '2025-07-25 23:45:23'),
(77, 'Merise', 11, 3, 9, 'Mardi', '08:00', '12:30', 1, '2025-07-25 23:46:21', '2025-07-25 23:46:21'),
(78, 'Droit', 6, 3, 8, 'Mardi', '13:00', '17:00', 5, '2025-07-25 23:48:42', '2025-07-25 23:48:42'),
(79, 'Gestion', 10, 3, 16, 'Mercredi', '13:00', '17:00', 3, '2025-07-25 23:49:46', '2025-07-25 23:49:46'),
(80, 'Reseaux', 11, 3, 12, 'Jeudi', '08:00', '12:30', 6, '2025-07-25 23:54:54', '2025-07-25 23:54:54'),
(81, 'Math/Fin', 10, 3, 13, 'Vendredi', '08:00', '12:30', 7, '2025-07-25 23:56:39', '2025-07-25 23:56:39'),
(82, 'Comptabilite', 2, 1, 14, 'Lundi', '08:00', '12:30', 1, '2025-08-16 12:28:10', '2025-08-16 12:28:10'),
(83, 'Math/Fin', 2, 1, 13, 'Lundi', '13:00', '17:00', 1, '2025-08-16 12:29:10', '2025-08-16 12:29:10'),
(84, 'Droit', 10, 1, 8, 'Mardi', '08:00', '12:30', 2, '2025-08-16 12:29:57', '2025-08-16 12:29:57');

-- --------------------------------------------------------

--
-- Structure de la table `disponibilite`
--

CREATE TABLE `disponibilite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enseignant_id` bigint(20) UNSIGNED NOT NULL,
  `jour` varchar(255) NOT NULL,
  `periode` enum('08H00-12H30','13H00-17H00') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `disponibilite`
--

INSERT INTO `disponibilite` (`id`, `enseignant_id`, `jour`, `periode`, `created_at`, `updated_at`) VALUES
(28, 3, 'Mardi', '13H00-17H00', '2025-01-25 00:17:49', '2025-01-25 00:17:49'),
(29, 3, 'Mercredi', '08H00-12H30', '2025-01-25 00:18:02', '2025-01-25 00:18:02'),
(30, 3, 'Mercredi', '13H00-17H00', '2025-01-25 00:18:02', '2025-01-25 00:18:02'),
(31, 3, 'Jeudi', '08H00-12H30', '2025-01-25 00:18:02', '2025-01-25 00:18:02'),
(32, 3, 'Jeudi', '13H00-17H00', '2025-01-25 00:18:02', '2025-01-25 00:18:02'),
(33, 3, 'Vendredi', '08H00-12H30', '2025-01-25 00:18:02', '2025-01-25 00:18:02'),
(34, 3, 'Vendredi', '13H00-17H00', '2025-01-25 00:18:02', '2025-01-25 00:18:02'),
(37, 4, 'Lundi', '08H00-12H30', '2025-01-28 09:54:57', '2025-01-28 09:54:57'),
(38, 4, 'Mardi', '08H00-12H30', '2025-01-28 09:54:57', '2025-01-28 09:54:57'),
(39, 4, 'Mercredi', '08H00-12H30', '2025-01-28 09:54:57', '2025-01-28 09:54:57'),
(40, 4, 'Jeudi', '08H00-12H30', '2025-01-28 09:54:57', '2025-01-28 09:54:57'),
(41, 4, 'Vendredi', '08H00-12H30', '2025-01-28 09:54:57', '2025-01-28 09:54:57'),
(42, 4, 'Samedi', '08H00-12H30', '2025-01-28 09:54:57', '2025-01-28 09:54:57'),
(43, 3, 'Lundi', '08H00-12H30', '2025-02-02 17:15:33', '2025-02-02 17:15:33'),
(44, 3, 'Lundi', '13H00-17H00', '2025-02-02 17:15:33', '2025-02-02 17:15:33'),
(45, 6, 'Lundi', '08H00-12H30', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(46, 6, 'Lundi', '13H00-17H00', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(47, 6, 'Mardi', '08H00-12H30', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(48, 6, 'Mardi', '13H00-17H00', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(49, 6, 'Mercredi', '08H00-12H30', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(50, 6, 'Mercredi', '13H00-17H00', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(51, 6, 'Jeudi', '08H00-12H30', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(52, 6, 'Jeudi', '13H00-17H00', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(53, 6, 'Vendredi', '08H00-12H30', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(54, 6, 'Vendredi', '13H00-17H00', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(55, 6, 'Samedi', '08H00-12H30', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(56, 6, 'Samedi', '13H00-17H00', '2025-02-02 17:21:20', '2025-02-02 17:21:20'),
(57, 8, 'Lundi', '08H00-12H30', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(58, 8, 'Lundi', '13H00-17H00', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(59, 8, 'Mardi', '08H00-12H30', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(60, 8, 'Mardi', '13H00-17H00', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(61, 8, 'Mercredi', '08H00-12H30', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(62, 8, 'Mercredi', '13H00-17H00', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(63, 8, 'Jeudi', '08H00-12H30', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(64, 8, 'Jeudi', '13H00-17H00', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(65, 8, 'Vendredi', '08H00-12H30', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(66, 8, 'Vendredi', '13H00-17H00', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(67, 8, 'Samedi', '08H00-12H30', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(68, 8, 'Samedi', '13H00-17H00', '2025-02-16 02:21:39', '2025-02-16 02:21:39'),
(69, 9, 'Lundi', '13H00-17H00', '2025-02-16 02:25:33', '2025-02-16 02:25:33'),
(70, 9, 'Jeudi', '13H00-17H00', '2025-02-16 02:25:33', '2025-02-16 02:25:33'),
(71, 9, 'Samedi', '13H00-17H00', '2025-02-16 02:25:33', '2025-02-16 02:25:33'),
(72, 7, 'Mardi', '08H00-12H30', '2025-02-16 02:37:40', '2025-02-16 02:37:40'),
(73, 7, 'Mardi', '13H00-17H00', '2025-02-16 02:37:40', '2025-02-16 02:37:40'),
(74, 7, 'Jeudi', '08H00-12H30', '2025-02-16 02:37:40', '2025-02-16 02:37:40'),
(75, 7, 'Jeudi', '13H00-17H00', '2025-02-16 02:37:40', '2025-02-16 02:37:40'),
(76, 7, 'Vendredi', '08H00-12H30', '2025-02-16 02:37:40', '2025-02-16 02:37:40'),
(77, 7, 'Vendredi', '13H00-17H00', '2025-02-16 02:37:40', '2025-02-16 02:37:40'),
(117, 2, 'Lundi', '08H00-12H30', '2025-07-25 14:55:52', '2025-07-25 14:55:52'),
(118, 2, 'Lundi', '13H00-17H00', '2025-07-25 14:55:52', '2025-07-25 14:55:52'),
(119, 2, 'Mardi', '08H00-12H30', '2025-07-25 14:55:52', '2025-07-25 14:55:52'),
(120, 2, 'Mardi', '13H00-17H00', '2025-07-25 14:55:52', '2025-07-25 14:55:52'),
(121, 2, 'Vendredi', '08H00-12H30', '2025-07-25 14:55:52', '2025-07-25 14:55:52'),
(122, 2, 'Vendredi', '13H00-17H00', '2025-07-25 14:55:52', '2025-07-25 14:55:52'),
(123, 2, 'Samedi', '08H00-12H30', '2025-07-25 14:55:52', '2025-07-25 14:55:52'),
(124, 2, 'Samedi', '13H00-17H00', '2025-07-25 14:55:52', '2025-07-25 14:55:52'),
(125, 11, 'Lundi', '08H00-12H30', '2025-07-25 23:41:13', '2025-07-25 23:41:13'),
(126, 11, 'Lundi', '13H00-17H00', '2025-07-25 23:41:13', '2025-07-25 23:41:13'),
(127, 11, 'Mardi', '08H00-12H30', '2025-07-25 23:41:13', '2025-07-25 23:41:13'),
(128, 11, 'Mardi', '13H00-17H00', '2025-07-25 23:41:13', '2025-07-25 23:41:13'),
(129, 11, 'Jeudi', '08H00-12H30', '2025-07-25 23:41:13', '2025-07-25 23:41:13'),
(130, 11, 'Jeudi', '13H00-17H00', '2025-07-25 23:41:13', '2025-07-25 23:41:13'),
(131, 11, 'Samedi', '08H00-12H30', '2025-07-25 23:41:13', '2025-07-25 23:41:13'),
(132, 11, 'Samedi', '13H00-17H00', '2025-07-25 23:41:13', '2025-07-25 23:41:13'),
(133, 10, 'Lundi', '08H00-12H30', '2025-07-25 23:42:58', '2025-07-25 23:42:58'),
(134, 10, 'Lundi', '13H00-17H00', '2025-07-25 23:42:58', '2025-07-25 23:42:58'),
(135, 10, 'Mardi', '08H00-12H30', '2025-07-25 23:42:58', '2025-07-25 23:42:58'),
(136, 10, 'Mardi', '13H00-17H00', '2025-07-25 23:42:58', '2025-07-25 23:42:58'),
(137, 10, 'Mercredi', '08H00-12H30', '2025-07-25 23:42:58', '2025-07-25 23:42:58'),
(138, 10, 'Mercredi', '13H00-17H00', '2025-07-25 23:42:58', '2025-07-25 23:42:58'),
(139, 10, 'Jeudi', '08H00-12H30', '2025-07-25 23:42:58', '2025-07-25 23:42:58'),
(140, 10, 'Jeudi', '13H00-17H00', '2025-07-25 23:42:58', '2025-07-25 23:42:58'),
(141, 10, 'Vendredi', '08H00-12H30', '2025-07-25 23:42:58', '2025-07-25 23:42:58'),
(142, 10, 'Vendredi', '13H00-17H00', '2025-07-25 23:42:58', '2025-07-25 23:42:58'),
(143, 10, 'Samedi', '08H00-12H30', '2025-07-25 23:42:58', '2025-07-25 23:42:58'),
(144, 10, 'Samedi', '13H00-17H00', '2025-07-25 23:42:58', '2025-07-25 23:42:58');

-- --------------------------------------------------------

--
-- Structure de la table `disponibilites_salles`
--

CREATE TABLE `disponibilites_salles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `emargement`
--

CREATE TABLE `emargement` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `etudiant_id` bigint(20) UNSIGNED NOT NULL,
  `emplois_du_temps_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('present','absent') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `emplois_du_temps`
--

CREATE TABLE `emplois_du_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cours_id` bigint(20) UNSIGNED NOT NULL,
  `semestre_id` bigint(20) UNSIGNED NOT NULL,
  `annee_academique_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `emplois_du_temps`
--

INSERT INTO `emplois_du_temps` (`id`, `cours_id`, `semestre_id`, `annee_academique_id`, `created_at`, `updated_at`) VALUES
(63, 75, 1, 7, '2025-07-25 23:44:18', '2025-07-25 23:44:18'),
(64, 76, 1, 7, '2025-07-25 23:45:23', '2025-07-25 23:45:23'),
(65, 77, 1, 7, '2025-07-25 23:46:21', '2025-07-25 23:46:21'),
(66, 78, 1, 8, '2025-07-25 23:48:42', '2025-07-25 23:48:42'),
(67, 79, 1, 7, '2025-07-25 23:49:46', '2025-07-25 23:49:46'),
(68, 80, 1, 7, '2025-07-25 23:54:54', '2025-07-25 23:54:54'),
(69, 81, 1, 7, '2025-07-25 23:56:39', '2025-07-25 23:56:39'),
(70, 82, 1, 6, '2025-08-16 12:28:10', '2025-08-16 12:28:10'),
(71, 83, 1, 6, '2025-08-16 12:29:10', '2025-08-16 12:29:10'),
(72, 84, 1, 6, '2025-08-16 12:29:57', '2025-08-16 12:29:57');

-- --------------------------------------------------------

--
-- Structure de la table `enseignants`
--

CREATE TABLE `enseignants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenoms` varchar(255) NOT NULL,
  `specialite` varchar(255) NOT NULL,
  `tel` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `enseignants`
--

INSERT INTO `enseignants` (`id`, `nom`, `prenoms`, `specialite`, `tel`, `email`, `mot_de_passe`, `created_at`, `updated_at`) VALUES
(2, 'jacque', 'jean', 'merise', 142505655, 'zadicharles483@gmail.com', '1', '2025-01-13 01:37:29', '2025-01-13 01:37:29'),
(3, 'tounkara', 'nathan', 'informatique', 1425055655, 'charles@gmail.com', '22', '2025-01-25 00:13:47', '2025-01-25 00:13:47'),
(4, 'charles', 'david', 'btp', 759735303, 'charless@gmail.com', '333', '2025-01-28 09:54:19', '2025-01-28 09:54:19'),
(6, 'chris', 'Jonathan', 'informatique', 142505655, 'karl@gmail.com', '444', '2025-02-02 17:20:50', '2025-02-02 17:20:50'),
(7, 'Jason', 'karle', 'droit', 142505655, 'jason@gmail.com', '555', '2025-02-02 17:27:56', '2025-02-02 17:27:56'),
(8, 'stephane', 'zabi', 'informatique', 142505655, 'dav1@gmail.com', '777', '2025-02-16 01:56:55', '2025-02-16 01:56:55'),
(9, 'kale', 'stfu', 'droit', 142505655, 'kale@gmail.com', '8888', '2025-02-16 01:57:58', '2025-02-16 01:57:58'),
(10, 'jordan', 'dupont', 'informatique', 142505655, 'dupont@mail.com', '11', '2025-07-25 23:18:05', '2025-07-25 23:18:05'),
(11, 'Joseph', 'zrai', 'mathematique', 142505655, 'joseph@mail.com', '02022003', '2025-07-25 23:36:57', '2025-07-25 23:36:57');

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classe_id` bigint(20) UNSIGNED NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenoms` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `tel_etudiant` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `lieu_naissance` varchar(255) DEFAULT NULL,
  `nationalité` varchar(255) DEFAULT NULL,
  `nom_pere` varchar(255) DEFAULT NULL,
  `nom_mere` varchar(255) DEFAULT NULL,
  `nom_tuteur` varchar(255) DEFAULT NULL,
  `tel_pere` int(11) DEFAULT NULL,
  `tel_mere` int(11) DEFAULT NULL,
  `tel_tuteur` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `date_inscription` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `classe_id`, `matricule`, `nom`, `prenoms`, `age`, `sexe`, `tel_etudiant`, `email`, `date_naissance`, `lieu_naissance`, `nationalité`, `nom_pere`, `nom_mere`, `nom_tuteur`, `tel_pere`, `tel_mere`, `tel_tuteur`, `photo`, `date_inscription`, `created_at`, `updated_at`) VALUES
(1, 1, '202506CH01', 'charles', 'charles', 22, 'Masculin', 142505655, 'davjonathan6@gmail.com', '2025-06-09', 'cocody', 'ivoirienne', 'e', 'dede', 'ede', 142505655, 142505655, NULL, 'etudiants_photos/01JXAHVGZE70J5VMKV8KQXF2NM.jpg', '2025-06-09', '2025-06-09 14:35:03', '2025-06-09 14:35:03'),
(3, 3, '202506GT01', 'gtgt', 'tgtgtg', 20, 'Masculin', 142505655, 'davjonatha6@gmail.com', '2025-06-09', 'cocody', 'ivoirienne', 'GZEGZE', 'EZGEZ', 'ZEGZEG', 142505655, NULL, NULL, 'etudiants_photos/01JXAKN583CNJTMHH478PM4021.jpg', '2025-06-09', '2025-06-09 15:06:32', '2025-06-26 16:16:31'),
(4, 3, '202506KA01', 'katliyo', 'lacouse', 23, 'Masculin', 142505655, 'mail@mil.com', '2000-02-02', 'cocody', 'ivoirienne', 'charles', 'dede', NULL, 142505655, 142505655, NULL, 'etudiants_photos/01JYN93WW34HDW0GWGY58EWABJ.jpg', '2025-06-26', '2025-06-26 04:49:41', '2025-06-26 04:49:41'),
(5, 3, '202506CH02', 'Christ', 'junior', 22, 'Masculin', 142505655, 'chris@mail.com', '2003-06-26', 'cocody', 'ivoirienne', NULL, NULL, NULL, NULL, NULL, NULL, 'etudiants_photos/01JYPFGWF0WG14TVCT6W10SDZR.jpeg', '2025-06-26', '2025-06-26 16:00:52', '2025-06-26 16:00:52'),
(6, 3, '202506NE01', 'Nelson', 'kevin', 22, 'Masculin', 142505655, 'nel@mail.com', '2005-02-22', 'cocody', 'ivoirienne', NULL, NULL, NULL, NULL, NULL, NULL, 'etudiants_photos/01JYPFP75254SMACGBB53MWJ0A.jpg', '2025-06-26', '2025-06-26 16:03:47', '2025-06-26 16:03:47'),
(7, 3, '202506EL01', 'Ella', 'Dupont', 20, 'Féminin', 142505655, 'ella@mail.com', '2005-08-26', 'cocody', 'ivoirienne', NULL, NULL, NULL, NULL, NULL, NULL, 'etudiants_photos/01JYPFZFT3W7KMA19WCJ96Q1X2.jpg', '2025-06-26', '2025-06-26 16:08:51', '2025-06-26 16:08:51'),
(8, 1, '202506EM01', 'Emma', 'desonge', 21, 'Féminin', 142505655, 'Emma@mail.com', '2000-02-02', 'cocody', 'ivoirienne', NULL, NULL, NULL, NULL, NULL, NULL, 'etudiants_photos/01JYPGZJV2WN4S7842D5ZWRCA8.jpg', '2025-06-26', '2025-06-26 16:26:22', '2025-06-26 16:26:22'),
(9, 1, '202506ST01', 'stephani', 'laroche', 20, 'Féminin', 142505655, 'steph64@mail.com', '2004-03-21', 'cocody', 'ivoirienne', NULL, NULL, NULL, NULL, NULL, NULL, 'etudiants_photos/01JYPH6KVZBZPKJCXFPCZYW49G.jpeg', '2025-06-26', '2025-06-26 16:30:13', '2025-06-26 16:30:13'),
(10, 1, '202506LE01', 'Leroi', 'chrisrt', 21, 'Masculin', 142505655, 'leroi@mail.com', '2005-04-12', 'cocody', 'ivoirienne', 'Leroi', 'ducon', NULL, 142505655, 142505655, NULL, 'etudiants_photos/01JYPHD6EQEBQ7P958G3AWW614.jpeg', '2025-06-26', '2025-06-26 16:33:49', '2025-06-26 16:33:49'),
(11, 1, '202506HA01', 'hanna', 'clara', 22, 'Féminin', 142505655, 'hanna@mail.com', '2003-07-02', 'cocody', 'ivoirienne', NULL, NULL, NULL, NULL, NULL, NULL, 'etudiants_photos/01JYPHHS8JG8W9MJBRBW2JCXR6.jpg', '2025-06-26', '2025-06-26 16:36:19', '2025-06-26 16:36:19'),
(12, 1, '202506CH03', 'christophe', 'dupont', 24, 'Masculin', 142505655, 'christoph@mail.com', '2004-01-26', 'cocody', 'ivoirienne', NULL, NULL, NULL, NULL, NULL, NULL, 'etudiants_photos/01JYPHREH2551SQSM6JXAR9MEW.jpg', '2025-06-26', '2025-06-26 16:39:57', '2025-06-26 16:39:57'),
(13, 8, '202507LI01', 'lizzo', 'la vie', 22, 'Féminin', 142505655, 'rocky@mail.com', '2003-04-25', 'cocody', 'ivoirienne', 'charles', 'charles', NULL, 142505655, 142505655, NULL, 'etudiants_photos/01K10200MSJVPYTKJNY2JZ2JXH.jpg', '2025-07-25', '2025-07-25 05:48:16', '2025-07-25 05:48:16'),
(14, 3, '202507JO01', 'jores', 'dedzae', 22, 'Masculin', 142505655, 'jon@mail.com', '2025-07-25', 'cocody', 'ivoirienne', 'charles', 'trgreg', 'rvzerv', 121212121, 142505655, 1425056550, 'etudiants_photos/01K112F1AKNAK6FNANACQDBJF1.jpg', '2025-07-25', '2025-07-25 15:15:43', '2025-07-25 15:15:43'),
(15, 3, '202507ZR01', 'zrai4', 'charles', 22, 'Masculin', 142505655, 'zrai2@mail.com', '2016-07-25', 'cocody', 'ivoirienne', NULL, NULL, NULL, NULL, NULL, NULL, 'etudiants_photos/01K11YF4KWB1ATMRPPH71MZ1Z0.jpg', '2025-07-25', '2025-07-25 23:25:06', '2025-07-25 23:25:06'),
(16, 3, '202507MA01', 'matrice', 'lacte', 22, 'Féminin', 142505655, 'lacte@mail.com', '2016-08-25', 'cocody', 'ivoirienne', NULL, NULL, NULL, NULL, NULL, NULL, 'etudiants_photos/01K11YHMXDQEYJHQ8P0GS9K2AB.jpg', '2025-07-25', '2025-07-25 23:26:28', '2025-07-25 23:26:28'),
(17, 3, '202507JO02', 'jok', 'jok', 23, 'Masculin', 142505655, 'jok@gmail.com', '2003-02-21', 'cocody', 'ivoirienne', NULL, NULL, NULL, NULL, NULL, NULL, 'etudiants_photos/01K11YM2624GF7D2X8SJXY0ZYN.jpg', '2025-07-25', '2025-07-25 23:27:47', '2025-07-25 23:27:47'),
(18, 3, '202507ZR02', 'zrai3', 'zrai3', 23, 'Masculin', 142505655, 'zrai4@gmail.com', '2000-06-22', 'cocody', 'ivoirienne', NULL, NULL, NULL, NULL, NULL, NULL, 'etudiants_photos/01K11YPECN69E38MBJ160XW280.jpg', '2025-07-25', '2025-07-25 23:29:05', '2025-07-25 23:29:05');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `filieres`
--

CREATE TABLE `filieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_filiere` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `filieres`
--

INSERT INTO `filieres` (`id`, `nom_filiere`, `created_at`, `updated_at`) VALUES
(1, 'ADA', NULL, NULL),
(2, 'Mecatronique', '2025-01-10 00:34:16', '2025-01-10 00:34:16'),
(4, 'IDA', '2025-01-13 12:30:22', '2025-01-13 12:30:22'),
(5, 'marketing', '2025-01-13 12:31:24', '2025-01-13 12:31:24'),
(6, 'Comptabilité', '2025-01-28 13:06:29', '2025-01-28 13:06:29'),
(7, 'Gbat', '2025-01-28 13:07:03', '2025-01-28 13:07:03'),
(8, 'Management', '2025-01-28 13:07:24', '2025-01-28 13:07:24'),
(9, 'Mecatronique', '2025-01-28 13:12:35', '2025-01-28 13:12:35'),
(10, 'SEI', '2025-02-16 01:51:43', '2025-02-16 01:51:43');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `language_lines`
--

CREATE TABLE `language_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`text`)),
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `namespace` varchar(255) NOT NULL DEFAULT '*',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

CREATE TABLE `matieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_matiere` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`id`, `nom_matiere`, `created_at`, `updated_at`) VALUES
(1, 'Mathematique', NULL, NULL),
(2, 'ASI', NULL, NULL),
(4, 'finance', '2025-01-28 12:57:23', '2025-01-28 12:57:23'),
(7, 'Architecture', '2025-02-02 17:22:16', '2025-02-02 17:22:16'),
(8, 'Droit', '2025-02-02 17:26:39', '2025-02-02 17:26:39'),
(9, 'Merise', '2025-02-02 17:30:27', '2025-02-02 17:30:27'),
(11, 'TPE', '2025-02-02 17:49:04', '2025-02-02 17:49:04'),
(12, 'Reseaux', '2025-02-09 22:01:56', '2025-02-09 22:01:56'),
(13, 'Math/Fin', '2025-02-09 22:02:16', '2025-02-09 22:02:16'),
(14, 'Comptabilite', '2025-02-09 22:02:44', '2025-02-09 22:02:44'),
(15, 'LanguageC', '2025-02-09 22:03:40', '2025-02-09 22:03:40'),
(16, 'Gestion', '2025-02-16 01:54:32', '2025-02-16 01:54:32'),
(17, 'SE', '2025-02-16 01:54:53', '2025-02-16 01:54:53'),
(18, 'Français', '2025-02-16 01:55:25', '2025-02-16 01:55:25');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_07_210117_matieres', 1),
(5, '2025_01_07_210136_filiere', 1),
(6, '2025_01_07_210200_etudiants', 1),
(7, '2025_01_07_210217_enseignants', 1),
(8, '2025_01_07_210240_classe', 1),
(9, '2025_01_07_210552_admin', 1),
(10, '2025_01_07_210715_annee_academique', 1),
(11, '2025_01_08_094537_semestre', 1),
(12, '2025_01_08_111228_disponibilite', 1),
(13, '2025_01_08_131127_create_salles_table', 1),
(14, '2025_01_08_132526_cours', 1),
(15, '2025_01_08_132615_emplois_du_temps', 1),
(16, '2025_01_08_132655_emargement', 1),
(17, '2025_01_12_051935_create_disponibilites_salles', 2),
(18, '2025_01_16_122007_changetype_time_en__string', 3),
(19, '2025_01_16_142040_change_type_periode_enseignant', 4),
(20, '2025_01_16_145053_ajout_colonne_mdp_enseigant', 5),
(21, '2025_01_24_000728_changetype_jour_enum_to_text', 6),
(22, '2025_01_25_221245_changetypecours', 7),
(23, '2025_01_25_224411_dropperiode', 8),
(24, '2025_01_28_001910_change_ortho', 9),
(25, '2025_01_28_203657_dropjour_heure_debut_heure_fin', 10),
(26, '2025_01_30_210931_dropsemestre', 11),
(27, '2025_01_30_211522_dropemploisdutemps', 12),
(28, '2025_01_30_212252_creatsemestreetanne', 13),
(29, '2025_01_30_212420_createforeignkey', 14),
(33, '2022_01_25_010712_create_language_lines_table', 15),
(34, '2025_05_30_021000_create_compositions_table', 15),
(35, '2025_05_30_021732_create_notes_table', 15),
(36, '2025_06_09_014302_addfk_etudiant', 16),
(37, '2025_06_09_022119_add_picture_student', 17),
(38, '2025_07_25_051351_drop_table_nbetudiant', 18),
(39, '2025_07_27_233056_addmatier_id', 19),
(40, '2025_08_15_151301_create_coefficients_table', 20);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `etudiant_id` bigint(20) UNSIGNED NOT NULL,
  `composition_id` bigint(20) UNSIGNED NOT NULL,
  `matiere_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`id`, `etudiant_id`, `composition_id`, `matiere_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, 12, '2025-07-27 23:38:55', '2025-07-27 23:38:55'),
(2, 4, 1, NULL, 10, '2025-07-27 23:38:55', '2025-07-27 23:38:55'),
(3, 5, 1, NULL, 9, '2025-07-27 23:38:55', '2025-07-27 23:38:55'),
(4, 6, 1, NULL, 8, '2025-07-27 23:38:55', '2025-07-27 23:38:55'),
(5, 7, 1, NULL, 20, '2025-07-27 23:38:55', '2025-07-27 23:38:55'),
(6, 14, 1, NULL, 18, '2025-07-27 23:38:55', '2025-07-27 23:38:55'),
(7, 15, 1, NULL, 19, '2025-07-27 23:38:55', '2025-07-27 23:38:55'),
(8, 16, 1, NULL, 14, '2025-07-27 23:38:55', '2025-07-27 23:38:55'),
(9, 17, 1, NULL, 12, '2025-07-27 23:38:55', '2025-07-27 23:38:55'),
(10, 18, 1, NULL, 11, '2025-07-27 23:38:55', '2025-07-27 23:38:55'),
(11, 3, 2, NULL, 12, '2025-07-27 23:46:52', '2025-07-27 23:46:52'),
(12, 4, 2, NULL, 11, '2025-07-27 23:46:52', '2025-07-27 23:46:52'),
(13, 5, 2, NULL, 14, '2025-07-27 23:46:52', '2025-07-27 23:46:52'),
(14, 6, 2, NULL, 15, '2025-07-27 23:46:52', '2025-07-27 23:46:52'),
(15, 7, 2, NULL, 10, '2025-07-27 23:46:52', '2025-07-27 23:46:52'),
(16, 14, 2, NULL, 6, '2025-07-27 23:46:52', '2025-07-27 23:46:52'),
(17, 15, 2, NULL, 5, '2025-07-27 23:46:52', '2025-07-27 23:46:52'),
(18, 16, 2, NULL, 17, '2025-07-27 23:46:52', '2025-07-27 23:46:52'),
(19, 17, 2, NULL, 17, '2025-07-27 23:46:52', '2025-07-27 23:46:52'),
(20, 18, 2, NULL, 12, '2025-07-27 23:46:52', '2025-07-27 23:46:52'),
(21, 3, 3, NULL, 18, '2025-07-28 00:11:11', '2025-07-28 00:11:11'),
(22, 4, 3, NULL, 12, '2025-07-28 00:11:11', '2025-07-28 00:11:11'),
(23, 5, 3, NULL, 10, '2025-07-28 00:11:11', '2025-07-28 00:11:11'),
(24, 6, 3, NULL, 9, '2025-07-28 00:11:11', '2025-07-28 00:11:11'),
(25, 7, 3, NULL, 8, '2025-07-28 00:11:11', '2025-07-28 00:11:11'),
(26, 14, 3, NULL, 17, '2025-07-28 00:11:11', '2025-07-28 00:11:11'),
(27, 15, 3, NULL, 12, '2025-07-28 00:11:11', '2025-07-28 00:11:11'),
(28, 16, 3, NULL, 12.5, '2025-07-28 00:11:11', '2025-07-28 00:11:11'),
(29, 17, 3, NULL, 19, '2025-07-28 00:11:11', '2025-07-28 00:11:11'),
(30, 18, 3, NULL, 5, '2025-07-28 00:11:11', '2025-07-28 00:11:11'),
(31, 3, 4, NULL, 12, '2025-08-16 11:56:02', '2025-08-16 11:56:02'),
(32, 4, 4, NULL, 14, '2025-08-16 11:56:02', '2025-08-16 11:56:02'),
(33, 5, 4, NULL, 11, '2025-08-16 11:56:02', '2025-08-16 11:56:02'),
(34, 6, 4, NULL, 10, '2025-08-16 11:56:02', '2025-08-16 11:56:02'),
(35, 7, 4, NULL, 15, '2025-08-16 11:56:02', '2025-08-16 11:56:02'),
(36, 14, 4, NULL, 11, '2025-08-16 11:56:02', '2025-08-16 11:56:02'),
(37, 15, 4, NULL, 9, '2025-08-16 11:56:02', '2025-08-16 11:56:02'),
(38, 16, 4, NULL, 8, '2025-08-16 11:56:02', '2025-08-16 11:56:02'),
(39, 17, 4, NULL, 6, '2025-08-16 11:56:02', '2025-08-16 11:56:02'),
(40, 18, 4, NULL, 6, '2025-08-16 11:56:02', '2025-08-16 11:56:02');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

CREATE TABLE `salles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_salle` varchar(255) NOT NULL,
  `capacite` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`id`, `nom_salle`, `capacite`, `created_at`, `updated_at`) VALUES
(1, 'Fois', 50, '2025-01-11 16:14:04', '2025-01-11 16:14:04'),
(2, 'vigueur', 70, '2025-01-11 16:14:37', '2025-01-11 16:14:37'),
(3, 'Salle 101', 30, '2025-01-11 17:02:06', '2025-01-11 17:02:06'),
(4, 'salle 3', 50, '2025-01-26 00:28:26', '2025-01-26 00:28:26'),
(5, 'A1', 30, '2025-02-01 22:03:05', '2025-02-01 22:03:05'),
(6, 'A2', 30, '2025-02-16 01:53:37', '2025-02-16 01:53:37'),
(7, 'A3', 40, '2025-02-16 01:53:55', '2025-02-16 01:53:55');

-- --------------------------------------------------------

--
-- Structure de la table `semestre`
--

CREATE TABLE `semestre` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_semestre` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `semestre`
--

INSERT INTO `semestre` (`id`, `nom_semestre`, `date_debut`, `date_fin`, `created_at`, `updated_at`) VALUES
(1, 'Semestre 1', '2024-09-16', '2024-12-13', '2025-01-30 21:32:22', '2025-01-30 21:32:22'),
(2, 'Semestre 2', '2025-01-06', '2025-05-21', '2025-01-30 21:33:33', '2025-01-30 21:33:33');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3voC1JCjWwp3g8xoGK2qFVgWx0IxgGC3m2mvFRjR', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1VCN3Z4OU8ydlU4bUlhRTIxVVlvR1RIdEVXTWtjVjRtYTg4YUFxYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9ldHVkaWFudC9hdXRoL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755615471),
('kk5BOmE7RaicC2WNM2cjusYST7FRzQdWABH8Lrss', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '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O3M6MTM6Impva0BnbWFpbC5jb20iO3M6MTQ6ImRhdGVfbmFpc3NhbmNlIjtzOjEwOiIyMDAzLTAyLTIxIjtzOjE0OiJsaWV1X25haXNzYW5jZSI7czo2OiJjb2NvZHkiO3M6MTI6Im5hdGlvbmFsaXTDqSI7czoxMDoiaXZvaXJpZW5uZSI7czo4OiJub21fcGVyZSI7TjtzOjg6Im5vbV9tZXJlIjtOO3M6MTA6Im5vbV90dXRldXIiO047czo4OiJ0ZWxfcGVyZSI7TjtzOjg6InRlbF9tZXJlIjtOO3M6MTA6InRlbF90dXRldXIiO047czo1OiJwaG90byI7czo0NzoiZXR1ZGlhbnRzX3Bob3Rvcy8wMUsxMVlNMjYyNEdGN0QyWDhTSlhZMFpZTi5qcGciO3M6MTY6ImRhdGVfaW5zY3JpcHRpb24iO3M6MTA6IjIwMjUtMDctMjUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMjUtMDctMjUgMjM6Mjc6NDciO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjUtMDctMjUgMjM6Mjc6NDciO3M6MTQ6Im1hdGllcmVzX2NvdW50IjtpOjc7czoxNjoibW95ZW5uZV9nZW5lcmFsZSI7ZDoxMy41O31zOjExOiIAKgBvcmlnaW5hbCI7YToyMjp7czoyOiJpZCI7aToxNztzOjk6ImNsYXNzZV9pZCI7aTozO3M6OToibWF0cmljdWxlIjtzOjEwOiIyMDI1MDdKTzAyIjtzOjM6Im5vbSI7czozOiJqb2siO3M6NzoicHJlbm9tcyI7czozOiJqb2siO3M6MzoiYWdlIjtpOjIzO3M6NDoic2V4ZSI7czo4OiJNYXNjdWxpbiI7czoxMjoidGVsX2V0dWRpYW50IjtpOjE0MjUwNTY1NTtzOjU6ImVtYWlsIjtzOjEzOiJqb2tAZ21haWwuY29tIjtzOjE0OiJkYXRlX25haXNzYW5jZSI7czoxMDoiMjAwMy0wMi0yMSI7czoxNDoibGlldV9uYWlzc2FuY2UiO3M6NjoiY29jb2R5IjtzOjEyOiJuYXRpb25hbGl0w6kiO3M6MTA6Iml2b2lyaWVubmUiO3M6ODoibm9tX3BlcmUiO047czo4OiJub21fbWVyZSI7TjtzOjEwOiJub21fdHV0ZXVyIjtOO3M6ODoidGVsX3BlcmUiO047czo4OiJ0ZWxfbWVyZSI7TjtzOjEwOiJ0ZWxfdHV0ZXVyIjtOO3M6NToicGhvdG8iO3M6NDc6ImV0dWRpYW50c19waG90b3MvMDFLMTFZTTI2MjRHRjdEMlg4U0pYWTBaWU4uanBnIjtzOjE2OiJkYXRlX2luc2NyaXB0aW9uIjtzOjEwOiIyMDI1LTA3LTI1IjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDI1LTA3LTI1IDIzOjI3OjQ3IjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDI1LTA3LTI1IDIzOjI3OjQ3Ijt9czoxMDoiACoAY2hhbmdlcyI7YTowOnt9czoxMToiACoAcHJldmlvdXMiO2E6MDp7fXM6ODoiACoAY2FzdHMiO2E6MDp7fXM6MTc6IgAqAGNsYXNzQ2FzdENhY2hlIjthOjA6e31zOjIxOiIAKgBhdHRyaWJ1dGVDYXN0Q2FjaGUiO2E6MDp7fXM6MTM6IgAqAGRhdGVGb3JtYXQiO047czoxMDoiACoAYXBwZW5kcyI7YTowOnt9czoxOToiACoAZGlzcGF0Y2hlc0V2ZW50cyI7YTowOnt9czoxNDoiACoAb2JzZXJ2YWJsZXMiO2E6MDp7fXM6MTI6IgAqAHJlbGF0aW9ucyI7YTowOnt9czoxMDoiACoAdG91Y2hlcyI7YTowOnt9czoyNzoiACoAcmVsYXRpb25BdXRvbG9hZENhbGxiYWNrIjtOO3M6MjY6IgAqAHJlbGF0aW9uQXV0b2xvYWRDb250ZXh0IjtOO3M6MTA6InRpbWVzdGFtcHMiO2I6MTtzOjEzOiJ1c2VzVW5pcXVlSWRzIjtiOjA7czo5OiIAKgBoaWRkZW4iO2E6MDp7fXM6MTA6IgAqAHZpc2libGUiO2E6MDp7fXM6MTE6IgAqAGZpbGxhYmxlIjthOjE5OntpOjA7czo5OiJjbGFzc2VfaWQiO2k6MTtzOjk6Im1hdHJpY3VsZSI7aToyO3M6Mzoibm9tIjtpOjM7czo3OiJwcmVub21zIjtpOjQ7czozOiJhZ2UiO2k6NTtzOjQ6InNleGUiO2k6NjtzOjEyOiJ0ZWxfZXR1ZGlhbnQiO2k6NztzOjU6ImVtYWlsIjtpOjg7czoxNDoiZGF0ZV9uYWlzc2FuY2UiO2k6OTtzOjE0OiJsaWV1X25haXNzYW5jZSI7aToxMDtzOjEyOiJuYXRpb25hbGl0w6kiO2k6MTE7czo4OiJub21fcGVyZSI7aToxMjtzOjg6Im5vbV9tZXJlIjtpOjEzO3M6MTA6Im5vbV90dXRldXIiO2k6MTQ7czo4OiJ0ZWxfcGVyZSI7aToxNTtzOjg6InRlbF9tZXJlIjtpOjE2O3M6MTA6InRlbF90dXRldXIiO2k6MTc7czo1OiJwaG90byI7aToxODtzOjE2OiJkYXRlX2luc2NyaXB0aW9uIjt9czoxMDoiACoAZ3VhcmRlZCI7YToxOntpOjA7czoxOiIqIjt9fX0=', 1755583501),
('rUMsLL9tnnyIjcW9umNfoAlwiILBsSsZFBgGCFPX', 1, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGFwelBnQjV4RThyd3lFbWtpMTdINDROQUNnYXE5VUtLcm9MVHJOUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9lbnNlaWduYW50L2F1dGgvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756470841);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(255) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `lang`) VALUES
(1, 'jonathan', 'davjonathan6@gmail.com', NULL, '$2y$12$DDv.mFK.JsMT0TPekkyNuuMqNP8DY/8ywuXukzrWu2CdZ4PPH1QoW', 'VtN0DZHuv7lLr21XYK7XzMycYqbwWjv2ZSx1JiKcObWli27qnhkqnd8NkwZu', '2025-01-10 00:11:30', '2025-01-10 00:11:30', 'en'),
(2, 'david', 'davjonathan3@gmail.com', NULL, '$2y$12$ZZe78ieror6AbcsTHSLHX.1rZmkobl4vW2TcaGRDfO35icalK1hMi', NULL, '2025-01-16 11:52:13', '2025-01-16 11:52:13', 'en');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Index pour la table `annee_academique`
--
ALTER TABLE `annee_academique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classes_filiere_id_foreign` (`filiere_id`);

--
-- Index pour la table `coefficients`
--
ALTER TABLE `coefficients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coefficients_classe_id_foreign` (`classe_id`),
  ADD KEY `coefficients_matiere_id_foreign` (`matiere_id`);

--
-- Index pour la table `compositions`
--
ALTER TABLE `compositions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compositions_enseignant_id_foreign` (`enseignant_id`),
  ADD KEY `compositions_matiere_id_foreign` (`matiere_id`),
  ADD KEY `compositions_classe_id_foreign` (`classe_id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cours_enseignant_id_foreign` (`enseignant_id`),
  ADD KEY `cours_classe_id_foreign` (`classe_id`),
  ADD KEY `cours_matiere_id_foreign` (`matiere_id`),
  ADD KEY `cours_salle_id_foreign` (`salles_id`);

--
-- Index pour la table `disponibilite`
--
ALTER TABLE `disponibilite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disponibilite_enseignant_id_foreign` (`enseignant_id`);

--
-- Index pour la table `disponibilites_salles`
--
ALTER TABLE `disponibilites_salles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `emargement`
--
ALTER TABLE `emargement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emargement_etudiant_id_foreign` (`etudiant_id`),
  ADD KEY `emargement_emplois_du_temps_id_foreign` (`emplois_du_temps_id`);

--
-- Index pour la table `emplois_du_temps`
--
ALTER TABLE `emplois_du_temps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emplois_du_temps_cours_id_foreign` (`cours_id`),
  ADD KEY `emplois_du_temps_semestre_id_foreign` (`semestre_id`),
  ADD KEY `emplois_du_temps_annee_academique_id_foreign` (`annee_academique_id`);

--
-- Index pour la table `enseignants`
--
ALTER TABLE `enseignants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enseignants_email_unique` (`email`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `etudiants_matricule_unique` (`matricule`),
  ADD UNIQUE KEY `etudiants_email_unique` (`email`),
  ADD KEY `etudiants_classe_id_foreign` (`classe_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `filieres`
--
ALTER TABLE `filieres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `language_lines`
--
ALTER TABLE `language_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_lines_group_index` (`group`),
  ADD KEY `language_lines_namespace_index` (`namespace`);

--
-- Index pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_etudiant_id_foreign` (`etudiant_id`),
  ADD KEY `notes_composition_id_foreign` (`composition_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `salles`
--
ALTER TABLE `salles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `annee_academique`
--
ALTER TABLE `annee_academique`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `coefficients`
--
ALTER TABLE `coefficients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `compositions`
--
ALTER TABLE `compositions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pour la table `disponibilite`
--
ALTER TABLE `disponibilite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT pour la table `disponibilites_salles`
--
ALTER TABLE `disponibilites_salles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `emargement`
--
ALTER TABLE `emargement`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `emplois_du_temps`
--
ALTER TABLE `emplois_du_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `enseignants`
--
ALTER TABLE `enseignants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `filieres`
--
ALTER TABLE `filieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `language_lines`
--
ALTER TABLE `language_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `matieres`
--
ALTER TABLE `matieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `salles`
--
ALTER TABLE `salles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `semestre`
--
ALTER TABLE `semestre`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_filiere_id_foreign` FOREIGN KEY (`filiere_id`) REFERENCES `filieres` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `coefficients`
--
ALTER TABLE `coefficients`
  ADD CONSTRAINT `coefficients_classe_id_foreign` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coefficients_matiere_id_foreign` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `compositions`
--
ALTER TABLE `compositions`
  ADD CONSTRAINT `compositions_classe_id_foreign` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `compositions_enseignant_id_foreign` FOREIGN KEY (`enseignant_id`) REFERENCES `enseignants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `compositions_matiere_id_foreign` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_classe_id_foreign` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cours_enseignant_id_foreign` FOREIGN KEY (`enseignant_id`) REFERENCES `enseignants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cours_matiere_id_foreign` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cours_salle_id_foreign` FOREIGN KEY (`salles_id`) REFERENCES `salles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `disponibilite`
--
ALTER TABLE `disponibilite`
  ADD CONSTRAINT `disponibilite_enseignant_id_foreign` FOREIGN KEY (`enseignant_id`) REFERENCES `enseignants` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `emargement`
--
ALTER TABLE `emargement`
  ADD CONSTRAINT `emargement_emplois_du_temps_id_foreign` FOREIGN KEY (`emplois_du_temps_id`) REFERENCES `emplois_du_temps` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emargement_etudiant_id_foreign` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiants` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `emplois_du_temps`
--
ALTER TABLE `emplois_du_temps`
  ADD CONSTRAINT `emplois_du_temps_annee_academique_id_foreign` FOREIGN KEY (`annee_academique_id`) REFERENCES `annee_academique` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emplois_du_temps_cours_id_foreign` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emplois_du_temps_semestre_id_foreign` FOREIGN KEY (`semestre_id`) REFERENCES `semestre` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_classe_id_foreign` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_composition_id_foreign` FOREIGN KEY (`composition_id`) REFERENCES `compositions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notes_etudiant_id_foreign` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
