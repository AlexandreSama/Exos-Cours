-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour epreuve
CREATE DATABASE IF NOT EXISTS `epreuve` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `epreuve`;

-- Listage de la structure de la table epreuve. epreuve
CREATE TABLE IF NOT EXISTS `epreuve` (
  `numepreuve` int(11) NOT NULL AUTO_INCREMENT,
  `datepreuve` datetime NOT NULL,
  `lieu` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `etunum` int(11) NOT NULL,
  PRIMARY KEY (`numepreuve`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table epreuve.epreuve : ~0 rows (environ)
/*!40000 ALTER TABLE `epreuve` DISABLE KEYS */;
/*!40000 ALTER TABLE `epreuve` ENABLE KEYS */;

-- Listage de la structure de la table epreuve. etudiant
CREATE TABLE IF NOT EXISTS `etudiant` (
  `numetu` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `datenaiss` datetime NOT NULL,
  `rue` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `cp` int(11) NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `epreuvenum` int(11) NOT NULL,
  PRIMARY KEY (`numetu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table epreuve.etudiant : ~0 rows (environ)
/*!40000 ALTER TABLE `etudiant` DISABLE KEYS */;
/*!40000 ALTER TABLE `etudiant` ENABLE KEYS */;

-- Listage de la structure de la table epreuve. matiere
CREATE TABLE IF NOT EXISTS `matiere` (
  `codemat` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `coef` float NOT NULL,
  PRIMARY KEY (`codemat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table epreuve.matiere : ~0 rows (environ)
/*!40000 ALTER TABLE `matiere` DISABLE KEYS */;
/*!40000 ALTER TABLE `matiere` ENABLE KEYS */;

-- Listage de la structure de la table epreuve. notation
CREATE TABLE IF NOT EXISTS `notation` (
  `note` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table epreuve.notation : ~0 rows (environ)
/*!40000 ALTER TABLE `notation` DISABLE KEYS */;
/*!40000 ALTER TABLE `notation` ENABLE KEYS */;


-- Listage de la structure de la base pour musicien
CREATE DATABASE IF NOT EXISTS `musicien` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `musicien`;

-- Listage de la structure de la table musicien. musicien
CREATE TABLE IF NOT EXISTS `musicien` (
  `nom` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `representation_id` int(11) NOT NULL,
  PRIMARY KEY (`nom`),
  KEY `FK_musicien_representation` (`representation_id`),
  CONSTRAINT `FK_musicien_representation` FOREIGN KEY (`representation_id`) REFERENCES `representation` (`id_representation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table musicien.musicien : ~2 rows (environ)
/*!40000 ALTER TABLE `musicien` DISABLE KEYS */;
INSERT INTO `musicien` (`nom`, `representation_id`) VALUES
	('Megadeth', 1),
	('Queen', 2);
/*!40000 ALTER TABLE `musicien` ENABLE KEYS */;

-- Listage de la structure de la table musicien. programmer
CREATE TABLE IF NOT EXISTS `programmer` (
  `id_programmer` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `tarif` double NOT NULL,
  `representation_id` int(11) NOT NULL,
  PRIMARY KEY (`id_programmer`),
  KEY `FK_programmer_representation` (`representation_id`),
  CONSTRAINT `FK_programmer_representation` FOREIGN KEY (`representation_id`) REFERENCES `representation` (`id_representation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table musicien.programmer : ~2 rows (environ)
/*!40000 ALTER TABLE `programmer` DISABLE KEYS */;
INSERT INTO `programmer` (`id_programmer`, `date`, `tarif`, `representation_id`) VALUES
	(1, '2023-07-20 14:03:36', 12.5, 1),
	(2, '2014-09-14 14:04:13', 20, 2);
/*!40000 ALTER TABLE `programmer` ENABLE KEYS */;

-- Listage de la structure de la table musicien. representation
CREATE TABLE IF NOT EXISTS `representation` (
  `id_representation` int(11) NOT NULL AUTO_INCREMENT,
  `titre_represensation` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lieu` text COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id_representation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table musicien.representation : ~2 rows (environ)
/*!40000 ALTER TABLE `representation` DISABLE KEYS */;
INSERT INTO `representation` (`id_representation`, `titre_represensation`, `lieu`) VALUES
	(1, 'Metal Festival', 'Paris'),
	(2, 'Rock Festival', 'Bastille');
/*!40000 ALTER TABLE `representation` ENABLE KEYS */;


-- Listage de la structure de la base pour notes
CREATE DATABASE IF NOT EXISTS `notes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `notes`;

-- Listage de la structure de la table notes. etudiant
CREATE TABLE IF NOT EXISTS `etudiant` (
  `id_etudiant` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id_etudiant`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table notes.etudiant : ~3 rows (environ)
/*!40000 ALTER TABLE `etudiant` DISABLE KEYS */;
INSERT INTO `etudiant` (`id_etudiant`, `nom`, `prenom`) VALUES
	(1, 'Doe', 'John'),
	(2, 'Doyle', 'Lucas'),
	(3, 'Watson', 'Joe');
/*!40000 ALTER TABLE `etudiant` ENABLE KEYS */;

-- Listage de la structure de la table notes. evaluer
CREATE TABLE IF NOT EXISTS `evaluer` (
  `id_evaluer` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `note` double NOT NULL,
  `etudiant_id` int(11) NOT NULL,
  `codemat_id` int(11) NOT NULL,
  PRIMARY KEY (`id_evaluer`),
  KEY `FK_evaluer_etudiant` (`etudiant_id`),
  KEY `FK_evaluer_matiere` (`codemat_id`),
  CONSTRAINT `FK_evaluer_etudiant` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiant` (`id_etudiant`),
  CONSTRAINT `FK_evaluer_matiere` FOREIGN KEY (`codemat_id`) REFERENCES `matiere` (`codemat`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table notes.evaluer : ~12 rows (environ)
/*!40000 ALTER TABLE `evaluer` DISABLE KEYS */;
INSERT INTO `evaluer` (`id_evaluer`, `date`, `note`, `etudiant_id`, `codemat_id`) VALUES
	(1, '2023-07-20 14:19:56', 10, 1, 3),
	(2, '2023-07-20 14:20:09', 12, 2, 2),
	(3, '2023-07-20 14:20:21', 17, 3, 1),
	(4, '2023-07-20 14:29:55', 7, 1, 2),
	(5, '2023-07-20 14:30:05', 14, 2, 3),
	(6, '2023-07-20 14:30:23', 19, 3, 1),
	(7, '2023-07-20 14:34:15', 15, 1, 1),
	(8, '2023-07-20 14:34:29', 11, 3, 3),
	(9, '2023-07-20 14:34:39', 4, 2, 2),
	(10, '2023-07-20 14:37:10', 13, 1, 2),
	(11, '2023-07-20 14:37:25', 16, 2, 1),
	(12, '2023-07-20 14:37:35', 18, 3, 3);
/*!40000 ALTER TABLE `evaluer` ENABLE KEYS */;

-- Listage de la structure de la table notes. matiere
CREATE TABLE IF NOT EXISTS `matiere` (
  `codemat` int(11) NOT NULL AUTO_INCREMENT,
  `libellemat` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `coeffmat` double NOT NULL,
  PRIMARY KEY (`codemat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table notes.matiere : ~3 rows (environ)
/*!40000 ALTER TABLE `matiere` DISABLE KEYS */;
INSERT INTO `matiere` (`codemat`, `libellemat`, `coeffmat`) VALUES
	(1, 'math', 5),
	(2, 'français', 5),
	(3, 'sport', 1);
/*!40000 ALTER TABLE `matiere` ENABLE KEYS */;

-- Listage de la structure de la vue notes. mem
-- Création d'une table temporaire pour palier aux erreurs de dépendances de VIEW
CREATE TABLE `mem` (
	`codemat_id` INT(11) NOT NULL,
	`AVG(note)` DOUBLE NULL,
	`etudiant_id` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Listage de la structure de la vue notes. mge
-- Création d'une table temporaire pour palier aux erreurs de dépendances de VIEW
CREATE TABLE `mge` (
	`etudiant_id` INT(11) NOT NULL,
	`AVG(note)` DOUBLE NULL
) ENGINE=MyISAM;

-- Listage de la structure de la vue notes. mm
-- Création d'une table temporaire pour palier aux erreurs de dépendances de VIEW
CREATE TABLE `mm` (
	`codemat_id` INT(11) NOT NULL,
	`AVG(note)` DOUBLE NULL
) ENGINE=MyISAM;

-- Listage de la structure de la vue notes. mp
-- Création d'une table temporaire pour palier aux erreurs de dépendances de VIEW
CREATE TABLE `mp` (
	`AVG(note)` DOUBLE NULL
) ENGINE=MyISAM;

-- Listage de la structure de la vue notes. mem
-- Suppression de la table temporaire et création finale de la structure d'une vue
DROP TABLE IF EXISTS `mem`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `mem` AS SELECT codemat_id, AVG(note), etudiant_id
FROM evaluer
GROUP BY codemat_id, etudiant_id ;

-- Listage de la structure de la vue notes. mge
-- Suppression de la table temporaire et création finale de la structure d'une vue
DROP TABLE IF EXISTS `mge`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `mge` AS SELECT etudiant_id, AVG(note)
FROM evaluer
GROUP BY etudiant_id ;

-- Listage de la structure de la vue notes. mm
-- Suppression de la table temporaire et création finale de la structure d'une vue
DROP TABLE IF EXISTS `mm`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `mm` AS SELECT codemat_id, AVG(note)
FROM evaluer
GROUP BY codemat_id ;

-- Listage de la structure de la vue notes. mp
-- Suppression de la table temporaire et création finale de la structure d'une vue
DROP TABLE IF EXISTS `mp`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `mp` AS SELECT AVG(note)
FROM evaluer ;


-- Listage de la structure de la base pour produit
CREATE DATABASE IF NOT EXISTS `produit` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `produit`;

-- Listage de la structure de la table produit. acheter
CREATE TABLE IF NOT EXISTS `acheter` (
  `nofour#` int(11) NOT NULL AUTO_INCREMENT,
  `noart#` int(11) NOT NULL,
  `prixachat` double NOT NULL,
  `delai` int(11) NOT NULL,
  PRIMARY KEY (`nofour#`),
  KEY `FK_acheter_article` (`noart#`),
  CONSTRAINT `FK_acheter_article` FOREIGN KEY (`noart#`) REFERENCES `article` (`noart`),
  CONSTRAINT `FK_acheter_fournisseur` FOREIGN KEY (`nofour#`) REFERENCES `fournisseur` (`nofour`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table produit.acheter : ~2 rows (environ)
/*!40000 ALTER TABLE `acheter` DISABLE KEYS */;
INSERT INTO `acheter` (`nofour#`, `noart#`, `prixachat`, `delai`) VALUES
	(1, 3, 250, 30),
	(2, 1, 300, 8),
	(3, 2, 10, 5);
/*!40000 ALTER TABLE `acheter` ENABLE KEYS */;

-- Listage de la structure de la table produit. article
CREATE TABLE IF NOT EXISTS `article` (
  `noart` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `prixinvent` double NOT NULL,
  PRIMARY KEY (`noart`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table produit.article : ~2 rows (environ)
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`noart`, `libelle`, `stock`, `prixinvent`) VALUES
	(1, 'lampe', '150', 200),
	(2, 'briquet', '7', 2),
	(3, 'bougie', '250', 8);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- Listage de la structure de la table produit. fournisseur
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `nofour` int(11) NOT NULL AUTO_INCREMENT,
  `nomfour` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `adrfour` text COLLATE utf8mb4_bin,
  `villefour` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`nofour`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Listage des données de la table produit.fournisseur : ~2 rows (environ)
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` (`nofour`, `nomfour`, `adrfour`, `villefour`) VALUES
	(1, 'STELANTIS', '9 Rue du pigeon', 'COLMAR'),
	(2, 'CONSTELLIUM', '14 Avenue du son', 'OBERNAI'),
	(3, 'SCHMIDT', NULL, 'SELESTAT');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
