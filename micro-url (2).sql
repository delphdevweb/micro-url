-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 15 jan. 2021 à 13:17
-- Version du serveur :  8.0.22-0ubuntu0.20.04.3
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `micro-url`
--

-- --------------------------------------------------------

--
-- Structure de la table `mots-clé`
--

CREATE TABLE `mots-clé` (
  `id_mc` int NOT NULL,
  `motcle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `mots-clé`
--

INSERT INTO `mots-clé` (`id_mc`, `motcle`) VALUES
(1, 'job'),
(2, 'loisirs'),
(3, 'association'),
(4, 'piratage'),
(5, 'piratage'),
(6, 'piratage'),
(7, 'piratage'),
(8, 'piratage'),
(9, 'piratage'),
(10, 'piratage'),
(11, 'piratage'),
(12, 'piratage'),
(13, 'piratage'),
(14, 'piratage'),
(15, 'piratage'),
(16, 'piratage'),
(17, 'piratage'),
(18, 'piratage'),
(19, 'piratage'),
(20, 'piratage'),
(21, 'piratage'),
(22, 'piratage'),
(23, 'piratage'),
(24, 'piratage'),
(25, 'piratage'),
(26, 'piratage');

-- --------------------------------------------------------

--
-- Structure de la table `raccourci_url`
--

CREATE TABLE `raccourci_url` (
  `id_url_racc` int NOT NULL,
  `id_taburl` int NOT NULL,
  `id_tabmc` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `raccourci_url`
--

INSERT INTO `raccourci_url` (`id_url_racc`, `id_taburl`, `id_tabmc`) VALUES
(7, 48, 16),
(8, 50, 17),
(9, 52, 18),
(10, 54, 19),
(11, 56, 20),
(12, 58, 21),
(13, 60, 22),
(14, 62, 23),
(15, 64, 24),
(16, 66, 25),
(17, 68, 26);

-- --------------------------------------------------------

--
-- Structure de la table `url`
--

CREATE TABLE `url` (
  `id` int NOT NULL,
  `url` text NOT NULL,
  `shortcut` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `url`
--

INSERT INTO `url` (`id`, `url`, `shortcut`, `datetime`, `description`) VALUES
(1, 'https://bibliothequenumerique.tv5monde.com/livre/184/Voyage-au-centre-de-la-Terre', 'https://tv5monde.com/livre', '2021-01-15 09:58:28', 'Bibliothèque numérique, livre \"Voyage autour du monde\" de Jules Verne.'),
(2, 'https://information.tv5monde.com/?utm_source=tv5monde&utm_medium=metanav&utm_campaign=information_toute-l-actualite', 'htts://information.tv5monde.com', '2021-01-15 10:03:33', 'Retrouvez toutes les dernières actualités sur tv5monde '),
(3, 'https://culture.tv5monde.com/?utm_source=tv5monde&utm_medium=metanav&utm_campaign=culture', 'htts://information.tv5monde.com', '2021-01-15 10:11:16', 'Retrouvez toutes les dernières actualités sur tv5monde '),
(12, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 10:53:34', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(26, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:12:57', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(28, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:13:08', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(30, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:14:14', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(32, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:14:32', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(34, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:17:33', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(36, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:23:00', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(38, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:25:16', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(40, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:28:58', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(42, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:29:49', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(44, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:30:23', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(46, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:30:38', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(48, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:35:49', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(50, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:39:16', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(52, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:47:16', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(54, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:49:00', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(56, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:54:45', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(58, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:55:07', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(60, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 11:55:40', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(62, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 12:02:13', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(64, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 12:03:09', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(66, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 12:03:12', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.'),
(68, 'https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/', 'ztz7', '2021-01-15 13:12:41', 'L\'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d\'accéder aux données des autres joueurs.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mots-clé`
--
ALTER TABLE `mots-clé`
  ADD PRIMARY KEY (`id_mc`);

--
-- Index pour la table `raccourci_url`
--
ALTER TABLE `raccourci_url`
  ADD PRIMARY KEY (`id_url_racc`),
  ADD KEY `id_taburl` (`id_taburl`),
  ADD KEY `id_tabmc` (`id_tabmc`);

--
-- Index pour la table `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mots-clé`
--
ALTER TABLE `mots-clé`
  MODIFY `id_mc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `raccourci_url`
--
ALTER TABLE `raccourci_url`
  MODIFY `id_url_racc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `url`
--
ALTER TABLE `url`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `raccourci_url`
--
ALTER TABLE `raccourci_url`
  ADD CONSTRAINT `raccourci_url_ibfk_1` FOREIGN KEY (`id_taburl`) REFERENCES `url` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `raccourci_url_ibfk_2` FOREIGN KEY (`id_tabmc`) REFERENCES `mots-clé` (`id_mc`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
