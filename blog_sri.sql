-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 29 Mars 2017 à 20:40
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog_sri`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id_article` int(11) NOT NULL,
  `titre` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descript` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auteur` int(11) DEFAULT NULL,
  `id_categ` int(11) DEFAULT NULL,
  `img` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id_article`, `titre`, `descript`, `auteur`, `id_categ`, `img`) VALUES
(3, 'Batterie externe samsung', 'test description', 1, 2, 'default.png'),
(15, 'Table IKEA', 'table de 4 place', 9, 5, 'default.png'),
(18, 'TV Samsung LED 12200', 'tv 50 pouces', 9, 3, 'default.png'),
(20, 'IPad', 'Tablette apple', 9, 2, 'default.png'),
(21, 'sss', 'sss', 9, 2, 'default.png'),
(22, 'sss', 'sss', 9, 2, 'default.png'),
(24, 'Telephone LG', 'tel LG ', 9, 2, 'default.png'),
(25, 'Casque audio Bluethoot', 'mm', 9, 2, 'default.png'),
(26, 'aa', 'oao', 9, 2, 'default.png'),
(27, 'pp', 'LLL', 9, 2, 'default.png'),
(28, 'Matelas KITEA', 'confortable....', 9, 5, 'default.png'),
(29, 'tst', 'mm', 9, 2, 'default.png'),
(30, 'oi', 'kk', 9, 2, 'default.png'),
(31, 'aa', 'aa', 9, 3, 'default.png'),
(32, 'hk', 'testetststettsts', 9, 3, 'default.png'),
(33, 'aa', 'mm', 9, 3, 'default.png'),
(34, 'Refrigerateur', 'mm', 9, 3, 'default.png'),
(37, 'kk', ',,', 9, 2, 'default.png'),
(39, 'mm', ';hnkbnj;k', 9, 2, 'default.png'),
(40, 'hh', 'j', 9, 2, 'article_img_58dc122498e2f'),
(41, 'hh', 'j', 9, 2, 'default.png'),
(42, 'TEST image', 'qqmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 9, 3, 'article_img_58dc14ffc6a85.jpeg'),
(43, 'SAMSUNG AIR WATCH', 'SAMSUNG AIR WATCH', 9, 2, 'article_img_58dc1a589a5a5.gif');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categ` int(11) NOT NULL,
  `intitu_categ` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_categ`, `intitu_categ`) VALUES
(2, 'Technologie & HighTech'),
(3, 'Electro-ménager'),
(5, 'Meubles & Equipements d\'intérieur');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id_comm` int(11) NOT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `when_com` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `users` int(11) DEFAULT NULL,
  `article` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `comment`
--

INSERT INTO `comment` (`id_comm`, `message`, `when_com`, `users`, `article`) VALUES
(6, 'qqqqqq', '2017-03-26 20:12:57', 1, 4),
(17, 'AZAZ', '2017-03-26 20:12:57', 9, 4),
(19, 'TEST ECHO', '2017-03-26 20:12:57', 9, 3),
(8, 'qqqqq', '2017-03-26 20:12:57', 1, NULL),
(9, 'Othman', '2017-03-26 20:12:57', 1, NULL),
(10, 'sss', '2017-03-26 20:12:57', 1, NULL),
(20, 'test', '2017-03-26 20:12:57', 9, 3),
(14, 'aaaa', '2017-03-26 20:12:57', 2, 4),
(32, '', '2017-03-28 20:27:58', 9, 16),
(31, 'tes coment', '2017-03-27 22:22:30', 9, 15),
(25, 'go &gt; tt\r\n', '2017-03-26 20:12:57', 9, 3),
(29, 'rrrrr', '2017-03-27 03:06:06', 9, 14),
(33, 'ff', '2017-03-28 20:28:20', 9, 16),
(34, 'test user comment\r\n', '2017-03-28 22:17:39', 25, 3),
(35, 'Great Product', '2017-03-28 22:29:16', 25, 20),
(36, 'sls;', '2017-03-29 21:59:58', 9, 41),
(37, 'test test\r\n', '2017-03-29 22:20:29', 30, 40);

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `intut_profil` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `profil`
--

INSERT INTO `profil` (`id_profil`, `intut_profil`) VALUES
(1, 'Administrateur'),
(2, 'Standard');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profil_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id_user`, `nom`, `prenom`, `login`, `pass`, `profil_type`) VALUES
(1, 'othman', 'bechchar', 'othman', 'a8cebf1698dc14282c507b1e1cfb7f2c9d5216aa7bd0854b50561e02c2b99d9a38945ec0f81e55f9699062b1eac6d0083411c839ba2b27c6a15b494463bc5c73', 1),
(2, 'test', 'test', 'tt', '1234', 1),
(3, 'qqq', 'qqq', 'qq', 'cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e', 2),
(4, 'qqq', 'qqq', 'qq', '4b0ab7b94e92a4f175774a4ad8a9a8c4d273671086ef091a689d63d3752a53ba043a1daf6204c9d4043b24bb42e18903029b43acd5efeabf7f368c26d532ab6e', 2),
(5, 'qqq', 'qqq', 'qqq', '4b0ab7b94e92a4f175774a4ad8a9a8c4d273671086ef091a689d63d3752a53ba043a1daf6204c9d4043b24bb42e18903029b43acd5efeabf7f368c26d532ab6e', 2),
(6, 'qq', 'qq', 'qq', '4b0ab7b94e92a4f175774a4ad8a9a8c4d273671086ef091a689d63d3752a53ba043a1daf6204c9d4043b24bb42e18903029b43acd5efeabf7f368c26d532ab6e', 2),
(7, 'qq', 'qq', 'qqq', '5e3b118f9e6917361f4a1e222becdf0ba765ba94447ee0065776a596007156bc0e570e6446e6bdf68e33fa182915dd36a155162b29a0f5a40feca462a5985fdd', 2),
(8, 'test', 'TEST', 'tt', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2),
(9, 'ADMIN', 'GLOBAL', 'admin', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(10, 'gg', 'gg', 'toto', '5e2c119747b29257037d21fac79bffb824873fe4d44843947d1f672aeb9bb42687c17c35c6bedbec4ceb8b1db77cf2588851d83abe6e111c5243be965e770704', 1),
(11, 'ami', 'firend', 'friend', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(12, 'aa', 'aa', 'abab', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(13, 'aa', 'aa', 'abab', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(14, 'aa', 'aa', 'abab', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(15, 'aa', 'aa', 'abab', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(16, 'aa', 'aa', 'abab', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(17, 'aa', 'aa', 'abab', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(18, 'aa', 'aa', 'abab', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(19, 'aa', 'aa', 'abab', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(20, 'aa', 'aa', 'abab', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(21, 'aa', 'aa', 'abab', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(22, 'OOJJJ', 'HH', 'LL', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(23, 'ALEX', 'DUPONT', 'alex', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1),
(24, 'qq', 'kn', 'll;ml;', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2),
(25, 'MUSTAPHA', 'BECHCHAR', 'mbech', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2),
(26, 'OO', 'OO', 'OO', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2),
(27, 'UU', 'UU', 'UU', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2),
(28, 'oo', 'oo', 'oo', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2),
(29, 'OOM', 'LLK', 'login', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', 2),
(30, 'Othman', 'Bechchar', 'timobech', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2),
(31, 'MMM', 'MM', 'MMM', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2),
(32, 'qq', 'qq', 'mbechqq', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2),
(33, 'AQW', 'AQW', 'AQW', 'd84f9e641e6a565b3bfb1982c09bc905b19999bfb1ca00b6fee11fe220536e6c0d999d82620bbd157330c4a1b8014bf86b7c1ebad84c2aa1689de56b64cfeab7', 2),
(34, 'hhh', 'hhh ', 'lll', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `id_categ` (`id_categ`),
  ADD KEY `fk_user_auteur` (`auteur`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categ`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comm`),
  ADD KEY `FK_comment_1` (`users`),
  ADD KEY `article` (`article`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `profil_type` (`profil_type`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`id_categ`) REFERENCES `categorie` (`id_categ`),
  ADD CONSTRAINT `fk_user_auteur` FOREIGN KEY (`auteur`) REFERENCES `users` (`id_user`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`profil_type`) REFERENCES `profil` (`id_profil`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
