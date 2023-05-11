-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 07 fév. 2023 à 09:35
-- Version du serveur : 5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `medali`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799798, 'tester1@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2022-05-25 06:21:50');

-- --------------------------------------------------------

--
-- Structure de la table `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `nameRoom` varchar(123) NOT NULL,
  `AptNumber` int(10) DEFAULT NULL,
  `AptDate` date DEFAULT NULL,
  `AptTime` time DEFAULT NULL,
  `Message` mediumtext,
  `BookingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblbook`
--

INSERT INTO `tblbook` (`ID`, `UserID`, `nameRoom`, `AptNumber`, `AptDate`, `AptTime`, `Message`, `BookingDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(20, 14, 'INF16', 470482436, '2023-02-22', '04:19:00', 'dlfkdf', '2023-02-01 22:14:46', 'xjldkf', 'Selected', '2023-02-01 22:15:12'),
(22, 14, 'inf3', 290760519, '2023-03-03', '23:02:00', 'cgfgfgf', '2023-02-01 22:43:24', 'dfgfgfgggfgffg', 'Selected', '2023-02-01 22:43:39'),
(27, 14, 'inf3', 436467663, '3323-02-21', '23:58:00', 'ffdg', '2023-02-01 22:54:36', 'dffdgdfg', 'Selected', '2023-02-01 22:54:47'),
(28, 14, 'inf3', 584757302, '2033-03-31', '10:01:00', ';cfjn', '2023-02-01 23:01:33', 'lkdjlfg', 'Selected', '2023-02-01 23:01:47'),
(29, 14, 'inf3', 331771588, '2023-02-21', '22:22:00', ';,cn;cn', '2023-02-01 23:03:10', 'dfdffdfdfd', 'Selected', '2023-02-01 23:03:21'),
(30, 14, 'inf3', 686912602, '2023-02-14', '05:02:00', ':f;,', '2023-02-01 23:05:37', 'gfggghgf', 'Selected', '2023-02-01 23:16:46'),
(31, 14, 'INF16', 984207213, '2023-02-17', '21:01:00', 'xfdf', '2023-02-01 23:19:41', 'fggffgfgfgg', 'Selected', '2023-02-01 23:37:33'),
(32, 14, 'INF16', 345932394, '2023-03-04', '06:34:00', 'ffd', '2023-02-01 23:34:39', 'dffffd', 'Selected', '2023-02-01 23:40:36'),
(33, 14, 'INF16', 312582609, '2023-02-24', '04:01:00', 'dfddddddddd', '2023-02-01 23:42:42', 'cccccccccccccccccccccccc', 'Selected', '2023-02-01 23:42:54'),
(34, 14, '', 123651350, '2023-12-23', '12:12:00', 'kclfjf', '2023-02-02 19:50:53', NULL, NULL, NULL),
(35, 14, '', 779010007, '2023-12-12', '12:12:00', 'dkjrldkr', '2023-02-02 19:53:49', NULL, NULL, NULL),
(36, 14, '', 737757507, '2023-12-12', '12:12:00', 'sdfdvddfg', '2023-02-02 19:55:42', NULL, NULL, NULL),
(37, 14, '', 596624244, '2023-12-12', '12:12:00', 'sddssd', '2023-02-02 19:56:59', NULL, NULL, NULL),
(38, 14, 'INF16', 538734268, '2023-12-12', '12:12:00', 'sdlksd', '2023-02-02 19:57:56', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext,
  `EnquiryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(4, 7, 4, 138889283, '2022-05-13 11:42:21'),
(5, 7, 9, 138889283, '2022-05-13 11:42:21'),
(6, 7, 16, 138889283, '2022-05-13 11:42:21'),
(7, 8, 3, 555850701, '2022-05-13 11:42:51'),
(8, 8, 6, 555850701, '2022-05-13 11:42:51'),
(9, 8, 9, 555850701, '2022-05-13 11:42:51'),
(10, 8, 11, 555850701, '2022-05-13 11:42:51'),
(13, 10, 1, 330026346, '2022-05-28 08:51:42'),
(14, 10, 2, 330026346, '2022-05-28 08:51:42'),
(15, 11, 2, 379060040, '2022-05-29 07:36:17'),
(16, 11, 5, 379060040, '2022-05-29 07:36:18'),
(17, 11, 6, 379060040, '2022-05-29 07:36:18'),
(18, 11, 12, 379060040, '2022-05-29 07:36:18'),
(19, 11, 3, 460087279, '2022-06-01 01:03:58');

-- --------------------------------------------------------

--
-- Structure de la table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        <h2><font size=\"6\" face=\"georgia\" color=\"#ff0033\">                        Mohamed Yassine Bouneb&nbsp;</font></h2>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">        EL-hencha sfax Tunis Tunisie&nbsp;</font></font>', 'mohamed@yassino.com', 92419999, NULL, '8:30 pm to 16:30 pm');

-- --------------------------------------------------------

--
-- Structure de la table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDescription` mediumtext,
  `status` int(21) NOT NULL,
  `type` varchar(112) NOT NULL,
  `ability` int(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServiceDescription`, `status`, `type`, `ability`, `Image`, `CreationDate`) VALUES
(1, 'inf3', 'hh', 1, 'Association', 1200, '72e5d5ebcee6413aa6745112af6669ad1675761772.png', '2023-01-24 22:37:38'),
(2, 'INF16', 'hhhhhhhhhhhhhhhhhh', 0, 'Association', 500, 'e673fcdc5cc1c3a2e3f009c287ce41cf1675762249.png', '2023-01-24 22:37:53'),
(3, 'inf1', 'lkd', 0, '', 12, '6ba8e614adca1155860de403ebbcd47b1675761601.png', '2023-02-07 09:20:01');

-- --------------------------------------------------------

--
-- Structure de la table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `type` varchar(53) NOT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `type`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(14, 'Bouneb', 'Mohamed Yassine', 'Association', 92419999, 'mohamed@yassino.fr', '21232f297a57a5a743894a0e4a801fc3', '2023-01-31 20:10:42');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
