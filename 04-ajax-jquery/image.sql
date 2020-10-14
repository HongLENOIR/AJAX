-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 30 sep. 2020 à 17:36
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `loadscroll`
--

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id_image` int(3) NOT NULL,
  `url` text NOT NULL,
  `alt` text NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id_image`, `url`, `alt`, `title`) VALUES
(1, 'https://cdn.pixabay.com/photo/2015/03/26/10/46/volcanoes-691939_960_720.jpg', 'loem', 'lorem'),
(2, '\r\nhttps://cdn.pixabay.com/photo/2016/05/05/02/32/balloon-1373161_960_720.jpg', 'lorem', 'lerem'),
(3, 'https://cdn.pixabay.com/photo/2016/11/29/05/45/astronomy-1867616__340.jpg', 'lem', 'lerem'),
(4, 'https://cdn.pixabay.com/photo/2015/10/12/14/59/milky-way-984050__340.jpg', 'lorem', 'lorem'),
(5, 'https://cdn.pixabay.com/photo/2016/11/29/02/20/astronomy-1866822__340.jpg', 'lorem', 'lorem'),
(6, 'https://cdn.pixabay.com/photo/2011/12/15/09/50/lagoon-nebula-11143__340.jpg', 'lorem', 'lorem'),
(7, 'https://cdn.pixabay.com/photo/2016/11/22/20/10/astronomy-1850461__340.jpg', 'lorem', 'lorem'),
(8, 'https://cdn.pixabay.com/photo/2017/05/01/22/35/starfield-2276843__340.jpg', 'lorem', 'lorem'),
(9, 'https://cdn.pixabay.com/photo/2011/12/13/14/15/orion-nebula-11001__340.jpg', 'lorem', 'lorem'),
(10, 'https://cdn.pixabay.com/photo/2018/10/30/16/06/water-lily-3784022_960_720.jpg\r\n', 'lorem', 'lorem'),
(11, 'https://cdn.pixabay.com/photo/2011/12/15/11/29/orion-nebula-11185__340.jpg', 'lorem', 'lorem'),
(12, 'https://cdn.pixabay.com/photo/2017/08/11/08/57/star-2630050__340.jpg', 'lorem', 'lorem'),
(13, 'https://cdn.pixabay.com/photo/2011/12/15/10/06/eagle-nebula-11149__340.jpg', 'lorem', 'lorem'),
(14, 'https://cdn.pixabay.com/photo/2017/06/14/11/48/spiral-2401967__340.jpg', 'lorem', 'lorem'),
(15, 'https://cdn.pixabay.com/photo/2011/12/15/09/35/orion-nebula-11137__340.jpg', 'lorem', 'lorem'),
(16, 'https://cdn.pixabay.com/photo/2011/12/15/11/24/crab-nebula-11182__340.jpg', 'lorem', 'lorem'),
(17, 'https://cdn.pixabay.com/photo/2018/04/17/14/42/astronomy-3327653__340.jpg', 'kor', 'fe'),
(18, 'https://cdn.pixabay.com/photo/2011/12/13/17/09/ngc-2082-11052_960_720.jpg', 'ge', 'gfe'),
(19, 'https://cdn.pixabay.com/photo/2011/12/14/12/28/ngc-2818-11126_960_720.jpg', 'gegeg', 'gege'),
(20, 'https://cdn.pixabay.com/photo/2011/12/14/12/21/orion-nebula-11107_960_720.jpg', 'ege', 'gege'),
(21, 'https://cdn.pixabay.com/photo/2012/11/28/10/16/star-clusters-67616_960_720.jpg', 'ge', 'ge'),
(22, 'https://cdn.pixabay.com/photo/2011/12/14/12/17/galaxy-11098_960_720.jpgg', 'ge', 'geg'),
(23, 'https://cdn.pixabay.com/photo/2011/12/15/10/00/carina-nebula-11147__340.jpg', 'gege', 'geg'),
(24, 'https://cdn.pixabay.com/photo/2011/12/15/10/00/carina-nebula-11147__340.jpg', 'geg', 'geg'),
(25, 'https://cdn.pixabay.com/photo/2015/03/26/10/04/blue-690872__340.jpg', 'gege', 'gege'),
(26, 'https://cdn.pixabay.com/photo/2020/06/13/17/50/milky-way-5295155__340.jpg', 'gege', 'geg'),
(27, 'https://cdn.pixabay.com/photo/2018/02/23/09/16/astronomy-3175061__340.jpg', 'geg', 'ge'),
(28, 'https://cdn.pixabay.com/photo/2011/12/15/11/10/ngc-2264-11175__340.jpg', 'ge', 'ge'),
(29, 'https://cdn.pixabay.com/photo/2018/04/17/14/42/astronomy-3327653__340.jpg', 'geg', 'geg'),
(30, 'https://cdn.pixabay.com/photo/2018/04/16/10/33/universe-3324227__340.jpg', 'geeg', 'geg'),
(31, 'https://cdn.pixabay.com/photo/2011/12/15/11/21/cassiopeia-a-11180__340.jpg', 'gege', 'geg'),
(32, 'https://cdn.pixabay.com/photo/2016/09/07/03/04/crab-nebula-1650715__340.jpg', 'ge', 'geg'),
(33, 'https://cdn.pixabay.com/photo/2011/12/15/11/04/eagle-nebula-11172__340.jpg', 'geg', 'geg'),
(34, 'https://cdn.pixabay.com/photo/2015/08/18/14/49/horsehead-nebula-894256_960_720.jpg', 'gege', 'gege'),
(35, 'https://cdn.pixabay.com/photo/2012/11/28/11/22/galaxy-67712__340.jpg', 'gege', 'geg'),
(36, 'https://cdn.pixabay.com/photo/2017/08/13/18/23/space-2638126__340.jpg', 'gege', 'geg'),
(37, 'https://cdn.pixabay.com/photo/2019/09/19/15/33/night-4489561__340.jpg', 'gege', 'gege'),
(38, 'https://cdn.pixabay.com/photo/2018/02/28/07/43/astronomy-3187445__340.jpg', 'gege', 'geg'),
(39, 'https://cdn.pixabay.com/photo/2011/12/13/14/15/orion-nebula-11001__340.jpg', 'gege', 'geg'),
(40, 'https://cdn.pixabay.com/photo/2017/08/05/18/24/star-2584986__340.jpg', 'gege', 'geg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
