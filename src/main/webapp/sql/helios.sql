-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le : Mer 30 Mars 2016 à 16:33
-- Version du serveur: 5.5.16
-- Version de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `helios_helios`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_Admin` int(11) NOT NULL AUTO_INCREMENT,
  `nom_Admin` varchar(150) NOT NULL,
  `login_Admin` varchar(150) NOT NULL,
  `mdp_Admin` varchar(150) NOT NULL,
  PRIMARY KEY (`nom_Admin`),
  KEY `id_Admin` (`id_Admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id_Article` int(11) NOT NULL AUTO_INCREMENT,
  `titre_Article` varchar(150) NOT NULL,
  `photoPresentation_Article` varchar(150) NOT NULL,
  `textePresentation_Article` text NOT NULL,
  `photo_Article` varchar(150) NOT NULL,
  `texte_Article` text NOT NULL,
  `date_Article` date NOT NULL,
  `categorie_Article` varchar(150) NOT NULL,
  `langue_Article` varchar(150) NOT NULL,
  PRIMARY KEY (`titre_Article`),
  KEY `id_Article` (`id_Article`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id_Article`, `titre_Article`, `photoPresentation_Article`, `textePresentation_Article`, `photo_Article`, `texte_Article`, `date_Article`, `categorie_Article`, `langue_Article`) VALUES
(1, 'Aperta ut provincias in parceretur', '10 Construction 2.jpg', 'Quo cognito Constantius ultra mortalem modum exarsit ac nequo casu idem Gallus de futuris incertus agitare quaedam conducentia saluti suae per itinera conaretur, remoti sunt omnes de industria milites agentes in civitatibus perviis.', '11 Présentation.jpg', 'Etenim si attendere diligenter, existimare vere de omni hac causa volueritis, sic constituetis, iudices, nec descensurum quemquam ad hanc accusationem fuisse, cui, utrum vellet, liceret, nec, cum descendisset, quicquam habiturum spei fuisse, nisi alicuius intolerabili libidine et nimis acerbo odio niteretur. Sed ego Atratino, humanissimo atque optimo adulescenti meo necessario, ignosco, qui habet excusationem vel pietatis vel necessitatis vel aetatis. Si voluit accusare, pietati tribuo, si iussus est, necessitati, si speravit aliquid, pueritiae. Ceteris non modo nihil ignoscendum, sed etiam acriter est resistendum.\r\n\r\nEt licet quocumque oculos flexeris feminas adfatim multas spectare cirratas, quibus, si nupsissent, per aetatem ter iam nixus poterat suppetere liberorum, ad usque taedium pedibus pavimenta tergentes iactari volucriter gyris, dum exprimunt innumera simulacra, quae finxere fabulae theatrales.\r\n\r\nEt interdum acciderat, ut siquid in penetrali secreto nullo citerioris vitae ministro praesente paterfamilias uxori susurrasset in aurem, velut Amphiarao referente aut Marcio, quondam vatibus inclitis, postridie disceret imperator. ideoque etiam parietes arcanorum soli conscii timebantur.', '2016-02-09', 'Coucou', 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id_Categorie` int(11) NOT NULL AUTO_INCREMENT,
  `nom_Categorie` varchar(150) NOT NULL,
  `langue_Categorie` varchar(150) NOT NULL,
  PRIMARY KEY (`nom_Categorie`),
  KEY `id_Categorie` (`id_Categorie`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_Categorie`, `nom_Categorie`, `langue_Categorie`) VALUES
(1, 'Coucou', 'fr'),
(5, 'Loulou', 'fr'),
(4, 'Porte', 'fr'),
(2, 'Salut', 'fr'),
(3, 'Toto', 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE IF NOT EXISTS `evenement` (
  `id_Evenement` int(11) NOT NULL AUTO_INCREMENT,
  `article_Evenement` varchar(150) NOT NULL,
  `nom_Evenement` varchar(150) NOT NULL,
  `description_Evenement` text NOT NULL,
  `date_Evenement` date NOT NULL,
  `photo_Evenement` varchar(150) NOT NULL,
  `langue_Evenement` varchar(150) NOT NULL,
  PRIMARY KEY (`nom_Evenement`),
  KEY `id_Evenement` (`id_Evenement`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `evenement`
--

INSERT INTO `evenement` (`id_Evenement`, `article_Evenement`, `nom_Evenement`, `description_Evenement`, `date_Evenement`, `photo_Evenement`, `langue_Evenement`) VALUES
(1, 'Aperta ut provincias in parceretur', 'C''est la fete', 'Etenim si attendere diligenter, existimare vere de omni hac causa volueritis, sic constituetis, iudices, nec descensurum quemquam ad hanc accusationem fuisse, cui, utrum vellet, liceret, nec, cum descendisset, quicquam habiturum spei fuisse, nisi alicuius intolerabili libidine et nimis acerbo odio niteretur. Sed ego Atratino, humanissimo atque optimo adulescenti meo necessario, ignosco, qui habet excusationem vel pietatis vel necessitatis vel aetatis. Si voluit accusare, pietati tribuo, si iussus est, necessitati, si speravit aliquid, pueritiae. Ceteris non modo nihil ignoscendum, sed etiam acriter est resistendum.', '2016-03-02', '12 Test sur circuit.jpg', 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `galerie`
--

CREATE TABLE IF NOT EXISTS `galerie` (
  `id_Galerie` int(11) NOT NULL AUTO_INCREMENT,
  `article_Galerie` varchar(150) NOT NULL,
  `titre_Galerie` varchar(150) NOT NULL,
  `description_Galerie` text NOT NULL,
  `date_Galerie` date NOT NULL,
  `lien_Galerie` varchar(150) NOT NULL,
  `categorie_Galerie` varchar(150) NOT NULL,
  `type_Galerie` varchar(150) NOT NULL,
  `langue_Galerie` varchar(150) NOT NULL,
  PRIMARY KEY (`titre_Galerie`),
  KEY `id_Galerie` (`id_Galerie`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `galerie`
--

INSERT INTO `galerie` (`id_Galerie`, `article_Galerie`, `titre_Galerie`, `description_Galerie`, `date_Galerie`, `lien_Galerie`, `categorie_Galerie`, `type_Galerie`, `langue_Galerie`) VALUES
(3, 'Aperta ut provincias in parceretur', 'Test 1', 'Etenim si attendere diligenter, existimare vere de omni hac causa volueritis, sic constituetis, iudices, nec descensurum quemquam ad hanc accusationem fuisse, cui, utrum vellet, liceret, nec, cum descendisset, quicquam habiturum spei fuisse, nisi alicuius intolerabili libidine et nimis acerbo odio niteretur. Sed ego Atratino, humanissimo atque optimo adulescenti meo necessario, ignosco, qui habet excusationem vel pietatis vel necessitatis vel aetatis. Si voluit accusare, pietati tribuo, si iussus est, necessitati, si speravit aliquid, pueritiae. Ceteris non modo nihil ignoscendum, sed etiam acriter est resistendum.', '2007-03-07', '14 Solar Event.JPG', 'Coucou', 'photo', 'fr'),
(4, 'Aperta ut provincias in parceretur', 'Test 2', 'Etenim si attendere diligenter, existimare vere de omni hac causa volueritis, sic constituetis, iudices, nec descensurum quemquam ad hanc accusationem fuisse, cui, utrum vellet, liceret, nec, cum descendisset, quicquam habiturum spei fuisse, nisi alicuius intolerabili libidine et nimis acerbo odio niteretur. Sed ego Atratino, humanissimo atque optimo adulescenti meo necessario, ignosco, qui habet excusationem vel pietatis vel necessitatis vel aetatis. Si voluit accusare, pietati tribuo, si iussus est, necessitati, si speravit aliquid, pueritiae. Ceteris non modo nihil ignoscendum, sed etiam acriter est resistendum.', '2016-03-21', '15 Solar Event 2.JPG', 'Toto', 'video', 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
  `id_Membre` int(11) NOT NULL AUTO_INCREMENT,
  `nom_Membre` varchar(150) NOT NULL,
  `prenom_Membre` varchar(150) NOT NULL,
  `job_Membre` varchar(150) NOT NULL,
  `photo_Membre` varchar(150) NOT NULL,
  `description_Membre` text NOT NULL,
  `facebook_Membre` varchar(150) NOT NULL,
  `link_Membre` varchar(150) NOT NULL,
  `twitter_Membre` varchar(150) NOT NULL,
  `insta_Membre` varchar(150) NOT NULL,
  `mail_Membre` varchar(150) NOT NULL,
  `langue_Membre` varchar(150) NOT NULL,
  PRIMARY KEY (`nom_Membre`,`prenom_Membre`,`id_Membre`),
  KEY `id_Membre` (`id_Membre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`id_Membre`, `nom_Membre`, `prenom_Membre`, `job_Membre`, `photo_Membre`, `description_Membre`, `facebook_Membre`, `link_Membre`, `twitter_Membre`, `insta_Membre`, `mail_Membre`, `langue_Membre`) VALUES
(1, 'Destriez', 'Simon', 'Président', '24 WSC 2009 5.JPG', 'Etenim si attendere diligenter, existimare vere de omni hac causa volueritis, sic constituetis, iudices, nec descensurum quemquam ad hanc accusationem fuisse, cui, utrum vellet, liceret, nec, cum descendisset, quicquam habiturum spei fuisse, nisi alicuius intolerabili libidine et nimis acerbo odio niteretur. Sed ego Atratino, humanissimo atque optimo adulescenti meo necessario, ignosco, qui habet excusationem vel pietatis vel necessitatis vel aetatis. Si voluit accusare, pietati tribuo, si iussus est, necessitati, si speravit aliquid, pueritiae. Ceteris non modo nihil ignoscendum, sed etiam acriter est resistendum.', 'https://www.facebook.com/simon.destriez?fref=ts', 'https://www.facebook.com/simon.destriez?fref=ts', 'https://www.facebook.com/simon.destriez?fref=ts', 'https://www.facebook.com/simon.destriez?fref=ts', 'simon.destriez@hei.fr', 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

CREATE TABLE IF NOT EXISTS `partenaire` (
  `id_Partenaire` int(11) NOT NULL AUTO_INCREMENT,
  `nom_Partenaire` varchar(150) NOT NULL,
  `description_Partenaire` text NOT NULL,
  `photo_Partenaire` varchar(150) NOT NULL,
  `lien_Partenaire` varchar(150) NOT NULL,
  `importance_Partenaire` int(11) NOT NULL,
  `langue_Partenaire` varchar(150) NOT NULL,
  PRIMARY KEY (`nom_Partenaire`),
  KEY `id_Partenaire` (`id_Partenaire`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `partenaire`
--

INSERT INTO `partenaire` (`id_Partenaire`, `nom_Partenaire`, `description_Partenaire`, `photo_Partenaire`, `lien_Partenaire`, `importance_Partenaire`, `langue_Partenaire`) VALUES
(1, 'Kahina', 'Etenim si attendere diligenter, existimare vere de omni hac causa volueritis, sic constituetis, iudices, nec descensurum quemquam ad hanc accusationem fuisse, cui, utrum vellet, liceret, nec, cum descendisset, quicquam habiturum spei fuisse, nisi alicuius intolerabili libidine et nimis acerbo odio niteretur. Sed ego Atratino, humanissimo atque optimo adulescenti meo necessario, ignosco, qui habet excusationem vel pietatis vel necessitatis vel aetatis. Si voluit accusare, pietati tribuo, si iussus est, necessitati, si speravit aliquid, pueritiae. Ceteris non modo nihil ignoscendum, sed etiam acriter est resistendum.', 'tektronix.jpg', 'http://uk.tek.com/', 10, 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `piece`
--

CREATE TABLE IF NOT EXISTS `piece` (
  `id_Piece` int(11) NOT NULL AUTO_INCREMENT,
  `nom_Piece` varchar(150) NOT NULL,
  `voiture_Piece` varchar(150) NOT NULL,
  `description_Piece` text NOT NULL,
  `langue_Piece` varchar(150) NOT NULL,
  PRIMARY KEY (`nom_Piece`),
  KEY `id_Piece` (`id_Piece`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `id_Voiture` int(11) NOT NULL AUTO_INCREMENT,
  `nom_Voiture` varchar(150) NOT NULL,
  `photo_Voiture` varchar(150) NOT NULL,
  `description_Voiture` text NOT NULL,
  `langue_Voiture` varchar(150) NOT NULL,
  PRIMARY KEY (`nom_Voiture`),
  KEY `id_Voiture` (`id_Voiture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
