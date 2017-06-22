-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 03 Juin 2017 à 22:02
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `formation-poec`
--

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entraineur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `couleurs` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `equipe`
--

INSERT INTO `equipe` (`id`, `nom`, `entraineur`, `couleurs`, `logo`) VALUES
(1, 'Juventus', 'Massimiliano Allegri', 'noir, blanc', ''),
(2, 'Strasbourg', 'Jean-Pierre Papin', 'bleu, blanc', ''),
(6, 'aaa', 'aaa', 'aaa', ''),
(5, 'PSG', 'truc', 'bleu, rouge', ''),
(7, 'aaa', 'aaa', 'aaa', ''),
(8, 'moi', 'moi', 'vert', ''),
(9, 'dfss', 'dfgdfg', 'sdfgsdfg', ''),
(10, 'jjjjjjj', 'jjjjjjj', 'jjjjjjj', ''),
(11, 'iii', 'iii', 'iii', ''),
(12, 'iii', 'iii', 'iii', ''),
(13, 'fff', 'ffff', 'ffff', ''),
(14, 'hhh', 'hhhh', 'hhhhh', ''),
(15, 'yyy', 'yyy', 'yyy', 'img/logosUpdated/yyy.jpg'),
(16, 'lllll', 'lllllll', 'lllll', 'img/logosUpdated/lllll.jpg'),
(17, 'zerty', 'rtte', 'trez', 'img/logosUpdated/zerty.png'),
(18, 'hhhhh', 'hhhhh', 'hhhhh', 'img/logosUpdated/hhhhh.jpg'),
(19, 'gh hgh gd', 'ghhg ', 'ffff', 'img/logosUpdated/gh_hgh_gd.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `numero_maillot` int(3) NOT NULL,
  `equipe` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `joueur`
--

INSERT INTO `joueur` (`id`, `nom`, `prenom`, `age`, `numero_maillot`, `equipe`) VALUES
(1, 'Bonucci', 'leonardo', 29, 0, 0),
(2, 'Veratti', 'marco', 24, 1, 2),
(7, 'azer', 'erty', 50, 12, 0),
(4, 'Pogba', 'Paul', 23, 34, 0),
(6, 'martin', 'pierre', 22, 18, 0),
(8, 'nom', 'prÃ©nom', 28, 1, 1),
(9, 'truc', 'machin', 50, 1, 5),
(10, 'aaa', 'bbb', 60, 2, 2),
(11, 'ccc', 'ddd', 45, 3, 1),
(12, 'Cavani', 'Edinson', 32, 9, 2),
(13, 'jjj', 'jjjj', 12, 1, 1),
(14, 'yyyyy', 'yyyyy', 40, 4, 15),
(15, 'oooo', 'oooo', 42, 3, 15),
(16, 'ibrahimovic', 'zlatan', 61, 1, 5),
(17, 'a', 'b', 12, 1, 1),
(18, 'd', 'd', 50, 1, 1),
(19, 'r', 'r', 78, 1, 1),
(20, 'hrt', 'fghdfg', 12, 1, 1),
(21, 'sdf', 'sdf', 12, 1, 1),
(22, '', 'sdf', 12, 1, 1),
(23, '', 'sdf', 12, 1, 1),
(24, '', 'sdf', 12, 1, 1),
(25, 'eeee', 'eee', 12, 1, 1),
(26, 'eeee', 'eee', 12, 1, 1),
(27, 'eeee', 'eee', 12, 1, 1),
(28, 'ghjg', 'ghjgh', 12, 1, 1),
(29, 'ffff', 'fff', 12, 1, 1),
(30, 'ffff', 'fff', 12, 1, 1),
(31, 'ffff', 'fff', 12, 1, 1),
(32, 'ffff', 'fff', 12, 1, 1),
(33, 'ffff', 'fff', 12, 1, 1),
(34, 'test', 'test', 12, 1, 1),
(35, 'xcv', 'xcv', 12, 1, 1),
(36, 'xcwv', 'xcv', 12, 1, 1),
(37, 'zer', 'fghfgh', 12, 1, 1),
(38, 'zer', 'fghfgh', 12, 1, 1),
(39, 'hjk', 'hjkhj', 50, 1, 1),
(40, 'eaze', 'azeaz', 60, 1, 1),
(41, 'bn', 'cdwf', 50, 1, 1),
(42, 'qs', 'sx', 12, 1, 1),
(43, 'fgh', 'fgh', 12, 1, 1),
(44, 'zz', 'zzz12', 12, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capitale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nbHabitants` int(11) NOT NULL,
  `superficie` int(11) NOT NULL,
  `langue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `drapeau` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`id`, `nom`, `capitale`, `nbHabitants`, `superficie`, `langue`, `drapeau`) VALUES
(1, 'France', 'Paris', 66810000, 643801, 'Francais', 'france.png'),
(2, 'Italie', 'Rome', 60800000, 301300, 'Italien', 'italie.png'),
(3, 'Laos', 'Vientiane', 6802000, 236800, 'Laotien', 'laos.png'),
(4, 'Mauritanie', 'Nouakchott', 4086000, 1030700, 'Arabe', 'mauritanie.png');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `role`) VALUES
(1, 'alpha', 'alpha', 'alpha@alpha.it', '1234', 'admin'),
(2, 'beta', 'beta', 'beta@beta.it', '5678', 'client');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
