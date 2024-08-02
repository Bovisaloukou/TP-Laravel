-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 02 août 2024 à 21:54
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
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Électronique', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(2, 'Vêtements', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(3, 'Maison', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(4, 'Jouets', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(5, 'Sports', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(6, 'Livres', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(7, 'Musique', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(8, 'Jardinage', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(9, 'Beauté', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(10, 'Santé', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(11, 'Automobile', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(12, 'Bricolage', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(13, 'Cuisine', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(14, 'Bijoux', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(15, 'Montres', '2024-08-02 16:03:05', '2024-08-02 16:03:05'),
(16, 'Chaussures', '2024-08-02 16:03:06', '2024-08-02 16:03:06'),
(17, 'Accessoires', '2024-08-02 16:03:06', '2024-08-02 16:03:06'),
(18, 'Jeux Vidéo', '2024-08-02 16:03:06', '2024-08-02 16:03:06'),
(19, 'Ordinateurs', '2024-08-02 16:03:06', '2024-08-02 16:03:06'),
(20, 'Télévisions', '2024-08-02 16:03:06', '2024-08-02 16:03:06');

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
(4, '2024_07_31_075247_create_categories_table', 1),
(5, '2024_07_31_075249_create_products_table', 1);

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
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'T-shirt', 'T-shirt en coton', 19.99, 100, 2, '2024-08-02 16:03:06', '2024-08-02 16:03:06'),
(3, 'Jean', 'Jean en denim', 39.99, 50, 2, '2024-08-02 16:03:06', '2024-08-02 16:03:06'),
(4, 'Canapé', 'Canapé en cuir', 499.99, 15, 3, '2024-08-02 16:03:06', '2024-08-02 16:03:06'),
(5, 'Lampe de table', 'Lampe de table moderne', 59.99, 30, 3, '2024-08-02 16:03:06', '2024-08-02 16:03:06'),
(6, 'Puzzle en bois', 'Puzzle en bois pour enfants', 24.99, 80, 4, '2024-08-02 16:03:06', '2024-08-02 16:03:06'),
(7, 'Train miniature', 'Train miniature avec rails', 89.99, 50, 4, '2024-08-02 16:03:06', '2024-08-02 16:03:06'),
(8, 'Veste de pluie', 'Veste de pluie imperméable', 59.99, 45, 5, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(9, 'Chaussures de sport', 'Chaussures de sport en mesh', 79.99, 55, 5, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(10, 'Livre de cuisine', 'Livre de recettes de cuisine', 29.99, 60, 6, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(11, 'Roman à suspense', 'Roman captivant', 19.99, 100, 6, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(12, 'CD de musique classique', 'CD de musique classique', 14.99, 70, 7, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(13, 'Vinyle de jazz', 'Vinyle de jazz', 24.99, 40, 7, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(14, 'Gant de jardinage', 'Gant de jardinage en cuir', 14.99, 100, 8, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(15, 'Arrosoir', 'Arrosoir en métal', 25.99, 50, 8, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(16, 'Crème hydratante', 'Crème hydratante pour peau sèche', 19.99, 80, 9, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(17, 'Maquillage', 'Kit de maquillage complet', 49.99, 30, 9, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(18, 'Compléments alimentaires', 'Compléments alimentaires pour énergie', 29.99, 70, 10, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(19, 'Appareil de massage', 'Appareil de massage électrique', 89.99, 40, 10, '2024-08-02 16:03:07', '2024-08-02 16:03:07'),
(20, 'Voiture télécommandée', 'Voiture télécommandée tout-terrain', 129.99, 20, 11, '2024-08-02 16:03:08', '2024-08-02 16:03:08'),
(21, 'Kit de réparation', 'Kit de réparation pour automobile', 69.99, 30, 11, '2024-08-02 16:03:08', '2024-08-02 16:03:08'),
(22, 'Perceuse', 'Perceuse électrique sans fil', 119.99, 15, 12, '2024-08-02 16:03:08', '2024-08-02 16:03:08'),
(23, 'Set de tournevis', 'Set de tournevis professionnels', 39.99, 40, 12, '2024-08-02 16:03:08', '2024-08-02 16:03:08'),
(24, 'Mixeur', 'Mixeur à grande capacité', 89.99, 25, 13, '2024-08-02 16:03:08', '2024-08-02 16:03:08'),
(25, 'Friteuse', 'Friteuse sans huile', 99.99, 20, 13, '2024-08-02 16:03:08', '2024-08-02 16:03:08'),
(26, 'Collier en or', 'Collier en or 18K', 299.99, 15, 14, '2024-08-02 16:03:08', '2024-08-02 16:03:08'),
(27, 'Bracelet', 'Bracelet en argent', 79.99, 30, 14, '2024-08-02 16:03:08', '2024-08-02 16:03:08'),
(28, 'Montre connectée', 'Montre connectée avec GPS', 199.99, 25, 15, '2024-08-02 16:03:08', '2024-08-02 16:03:08'),
(29, 'Montre de luxe', 'Montre de luxe avec bracelet en cuir', 499.99, 15, 15, '2024-08-02 16:03:08', '2024-08-02 16:03:08'),
(30, 'Chaussures de danse', 'Chaussures de danse en cuir', 89.99, 30, 16, '2024-08-02 16:03:08', '2024-08-02 16:03:08'),
(31, 'Sac à main', 'Sac à main en cuir', 149.99, 40, 16, '2024-08-02 16:03:09', '2024-08-02 16:03:09'),
(32, 'Casque VR', 'Casque de réalité virtuelle', 399.99, 10, 17, '2024-08-02 16:03:09', '2024-08-02 16:03:09'),
(33, 'Manette de jeu', 'Manette de jeu sans fil', 59.99, 25, 17, '2024-08-02 16:03:09', '2024-08-02 16:03:09'),
(34, 'Écran d’ordinateur', 'Écran d’ordinateur 27 pouces', 299.99, 15, 18, '2024-08-02 16:03:09', '2024-08-02 16:03:09'),
(35, 'Clavier mécanique', 'Clavier mécanique avec rétroéclairage', 129.99, 20, 18, '2024-08-02 16:03:09', '2024-08-02 16:03:09'),
(36, 'Home cinéma', 'Système home cinéma 5.1', 699.99, 10, 19, '2024-08-02 16:03:09', '2024-08-02 16:03:09'),
(37, 'Clé USB 64 Go', 'Clé USB de 64 Go', 19.99, 120, 20, '2024-08-02 16:03:09', '2024-08-02 16:03:09');

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
('PtY5mC4jerMvGhMQ2KQGMYtB49OOmtkpaNJJdhu0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSm5rZzBSWmJJc2E5MW02NzR4UGNGR3lsMVFzZ3M5cjdQejFQNlQ5ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722623592);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

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
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
