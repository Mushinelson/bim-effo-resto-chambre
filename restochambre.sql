-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 03 oct. 2024 à 18:16
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restochambre`
--
drop database if exists RestoChambre;
create database RestoChambre;
	use RestoChambre;
-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `idA` int(11) NOT NULL,
  `Login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`idA`, `Login`, `password`, `iduser`) VALUES
(1, 'Admin', 'Admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `caissier`
--

CREATE TABLE `caissier` (
  `id` int(11) NOT NULL,
  `Login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `etat` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `caissier`
--

INSERT INTO `caissier` (`id`, `Login`, `password`, `iduser`, `etat`) VALUES
(1, 'caissier', 'caissier', 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `idchambre` int(11) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `categorie` varchar(100) DEFAULT NULL,
  `PU` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `Devise` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`idchambre`, `libelle`, `categorie`, `PU`, `image`, `Devise`) VALUES
(1, 'chambre 1', 'VIP', 5, 'chambre-simple-hotel-clermont-lherault-le-sarac-7.jpg', 'USD'),
(2, 'chambre 2', 'Moyen', 3, 'day.jpg', 'USD');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `idclient` int(11) NOT NULL,
  `Nom` varchar(100) DEFAULT NULL,
  `Tel` varchar(15) DEFAULT NULL,
  `AdresseMail` varchar(50) DEFAULT NULL,
  `AdressePhysique` varchar(50) DEFAULT NULL,
  `Login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`idclient`, `Nom`, `Tel`, `AdresseMail`, `AdressePhysique`, `Login`, `password`) VALUES
(1, 'shabani shabanga lucien', '0998609018', 'lucienshbn@gmail.com', 'BUkavu', 'lucien', 'lucien'),
(2, 'shako', '0998609000', 'shako@gmail.com', 'kadutu', 'shako', 'shako'),
(3, 'tombo alenga', '0998600000', 'tombo@gmail.com', 'Buholo', 'tombo', 'tombo'),
(4, 'Ndagano', '0998609111', 'ndagano@gmail.com', 'Bujumbura-Q. MIROIR Num. 21', 'ndagano', 'ndagano'),
(5, 'nato', '0998789000', 'nato@gmail.com', 'Bujumbura-Q. MIROIR Num. 21', 'nato', 'nato'),
(6, 'nathan', '099860000', 'nathan@gmail.com', 'kavumu', 'nathan', 'nathan'),
(7, 'kaka', '0998609018', 'lucienshbn@gmail.com', 'Bujumbura-Q. MIROIR Num. 21', 'kaka', 'kaka'),
(8, 'dada', '0998609018', 'lucienshbn@gmail.com', 'Bujumbura-Q. MIROIR Num. 21', 'dada', 'dada'),
(9, 'Mushi Nelson', '0998609018', 'Mushi@gmail.com', 'kadutu/12', 'mushi', 'mushi');

-- --------------------------------------------------------

--
-- Structure de la table `commander`
--

CREATE TABLE `commander` (
  `idCommande` int(11) NOT NULL,
  `datecommande` date DEFAULT current_timestamp(),
  `idproduit_cmd` int(11) DEFAULT NULL,
  `idclient_cmd` int(11) DEFAULT NULL,
  `quantiteCom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commander`
--

INSERT INTO `commander` (`idCommande`, `datecommande`, `idproduit_cmd`, `idclient_cmd`, `quantiteCom`) VALUES
(1, '2024-10-02', 1, 1, 6),
(2, '2024-10-02', 3, 1, 11),
(3, '2024-10-02', 2, 1, 4),
(4, '2024-10-02', 2, 9, 6),
(5, '2024-10-03', 2, 1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `gestionnaire_chambre`
--

CREATE TABLE `gestionnaire_chambre` (
  `idGC` int(11) NOT NULL,
  `Login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `etat` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `gestionnaire_chambre`
--

INSERT INTO `gestionnaire_chambre` (`idGC`, `Login`, `password`, `iduser`, `etat`) VALUES
(1, 'lucien', 'lucien', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `gestionnaire_resto`
--

CREATE TABLE `gestionnaire_resto` (
  `idGR` int(11) NOT NULL,
  `Login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `etat` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `gestionnaire_resto`
--

INSERT INTO `gestionnaire_resto` (`idGR`, `Login`, `password`, `iduser`, `etat`) VALUES
(1, 'tombo', 'tombo', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `idpaiement` int(11) NOT NULL,
  `motif` varchar(100) DEFAULT NULL,
  `montant` int(11) DEFAULT NULL,
  `dateP` date DEFAULT current_timestamp(),
  `idCommande_p` int(11) DEFAULT NULL,
  `idReservation_p` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `paiement`
--

INSERT INTO `paiement` (`idpaiement`, `motif`, `montant`, `dateP`, `idCommande_p`, `idReservation_p`) VALUES
(1, 'Paiement', 250000, '2024-10-03', 1, NULL),
(2, 'Paiement', 25, '2024-10-03', NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idprod` int(11) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `PU` int(11) DEFAULT NULL,
  `Quantite` int(11) DEFAULT NULL,
  `Devise` varchar(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idprod`, `libelle`, `PU`, `Quantite`, `Devise`, `image`) VALUES
(1, 'Guetre', 2500, 100, 'FC', 'kuakata.png'),
(2, 'Burger', 5, 20, 'USD', 'burger.png'),
(3, 'spaghettis', 5000, 10, 'FC', 'chowmein.png');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `idReservation` int(11) NOT NULL,
  `dateReservation` date DEFAULT current_timestamp(),
  `nbrJour` int(11) NOT NULL,
  `idchambre_res` int(11) DEFAULT NULL,
  `idclient_res` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`idReservation`, `dateReservation`, `nbrJour`, `idchambre_res`, `idclient_res`) VALUES
(1, '2024-10-02', 5, 2, 1),
(2, '2024-10-02', 12, 2, 1),
(3, '2024-10-02', 5, 1, 9),
(4, '2024-10-02', 4, 2, 9);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `Nom` varchar(100) DEFAULT NULL,
  `Tel` varchar(15) DEFAULT NULL,
  `AdresseMail` varchar(50) DEFAULT NULL,
  `Fonction` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`iduser`, `Nom`, `Tel`, `AdresseMail`, `Fonction`) VALUES
(1, 'Administrateur', '09987', 'Admin@gmail.com', 'Admin'),
(2, 'lucien', '0998609018', 'lucienshbn@gmail.com', 'Gchambre'),
(4, 'Tombo Alenga', '0998609000', 'Tombo@gmail.com', 'GResto'),
(5, 'caissier', '0998609111', 'caissier@gmail.com', 'Caissier');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idA`),
  ADD KEY `iduser` (`iduser`);

--
-- Index pour la table `caissier`
--
ALTER TABLE `caissier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`);

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`idchambre`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`idclient`);

--
-- Index pour la table `commander`
--
ALTER TABLE `commander`
  ADD PRIMARY KEY (`idCommande`),
  ADD KEY `idproduit_cmd` (`idproduit_cmd`),
  ADD KEY `idclient_cmd` (`idclient_cmd`);

--
-- Index pour la table `gestionnaire_chambre`
--
ALTER TABLE `gestionnaire_chambre`
  ADD PRIMARY KEY (`idGC`),
  ADD KEY `iduser` (`iduser`);

--
-- Index pour la table `gestionnaire_resto`
--
ALTER TABLE `gestionnaire_resto`
  ADD PRIMARY KEY (`idGR`),
  ADD KEY `iduser` (`iduser`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`idpaiement`),
  ADD KEY `idCommande_p` (`idCommande_p`),
  ADD KEY `idReservation_p` (`idReservation_p`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idprod`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`idReservation`),
  ADD KEY `idchambre_res` (`idchambre_res`),
  ADD KEY `idclient_res` (`idclient_res`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `idA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `caissier`
--
ALTER TABLE `caissier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `idchambre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `idclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `commander`
--
ALTER TABLE `commander`
  MODIFY `idCommande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `gestionnaire_chambre`
--
ALTER TABLE `gestionnaire_chambre`
  MODIFY `idGC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `gestionnaire_resto`
--
ALTER TABLE `gestionnaire_resto`
  MODIFY `idGR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `idpaiement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `idprod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `idReservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`);

--
-- Contraintes pour la table `caissier`
--
ALTER TABLE `caissier`
  ADD CONSTRAINT `caissier_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`);

--
-- Contraintes pour la table `commander`
--
ALTER TABLE `commander`
  ADD CONSTRAINT `commander_ibfk_1` FOREIGN KEY (`idproduit_cmd`) REFERENCES `produit` (`idprod`),
  ADD CONSTRAINT `commander_ibfk_2` FOREIGN KEY (`idclient_cmd`) REFERENCES `clients` (`idclient`);

--
-- Contraintes pour la table `gestionnaire_chambre`
--
ALTER TABLE `gestionnaire_chambre`
  ADD CONSTRAINT `gestionnaire_chambre_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`);

--
-- Contraintes pour la table `gestionnaire_resto`
--
ALTER TABLE `gestionnaire_resto`
  ADD CONSTRAINT `gestionnaire_resto_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`idCommande_p`) REFERENCES `commander` (`idCommande`),
  ADD CONSTRAINT `paiement_ibfk_2` FOREIGN KEY (`idReservation_p`) REFERENCES `reservation` (`idReservation`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`idchambre_res`) REFERENCES `chambre` (`idchambre`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`idclient_res`) REFERENCES `clients` (`idclient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
