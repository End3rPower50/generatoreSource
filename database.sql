-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 25 Octobre 2015 à 03:23
-- Version du serveur :  5.6.24
-- Version de PHP :  5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `End3rPower50`
--

-- --------------------------------------------------------

--
-- Structure de la table `generators`
--

CREATE TABLE IF NOT EXISTS `generators` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `message` mediumtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `writer` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `message`, `writer`, `date`) VALUES
(1, 'This source was created by End3rPower50', 'admin', '2016-12-14 22:38:38');

-- --------------------------------------------------------

--
-- Structure de la table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `price` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `length` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `accounts` int(11) NOT NULL,
  `generator` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `website` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `paypal` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `footer` varchar(1000) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '&copy; 24/7 | <a href=http://www.codegen.pe.hu>original gen</a>',
  `favicon` varchar(1000) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'img/favicon.png'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `settings`
--

INSERT INTO `settings` (`website`, `paypal`, `footer`, `favicon`) VALUES
('End3rPower50 Source', 'paypal@money.com', '© End3rPower50', ''),
('End3rPower50 Source', 'paypal@money.com', '© End3rPower50', '');

-- --------------------------------------------------------

--
-- Structure de la table `statistics`
--

CREATE TABLE IF NOT EXISTS `statistics` (
  `id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `generated` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `subscriptions`
--

CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL,
  `price` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `payment` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `package` int(11) NOT NULL,
  `expires` date NOT NULL,
  `txn_id` varchar(1000) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `support`
--

CREATE TABLE IF NOT EXISTS `support` (
  `id` int(11) NOT NULL,
  `from` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `to` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subject` varchar(1000) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `message` mediumtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL,
  `read` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rank` int(1) NOT NULL DEFAULT '1',
  `ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` date DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `rank`, `ip`, `date`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@contact.com', 5, '127.0.0.1', '2016-12-10', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `generators`
--
ALTER TABLE `generators`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `support`
--
ALTER TABLE `support`
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
-- AUTO_INCREMENT pour la table `generators`
--
ALTER TABLE `generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
  
-- --------------------------------------------------------

--
-- Struttura della tabella `zcon`
--

CREATE TABLE IF NOT EXISTS `zcon` (
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `zcon`
--

INSERT INTO `zcon` (`name`, `key`) VALUES
('gen', '7783787878778787847878'),
('key', 'defaultpassword');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
