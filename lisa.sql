

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Base de données :  `lisa`
--
CREATE DATABASE lisa CHARACTER SET 'utf8';
USE lisa;
-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE `agence` (
  `Identifier` int(11) UNSIGNED NOT NULL,
  `Libelle` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `backofficeuser`
--

CREATE TABLE `backofficeuser` (
  `Identifier` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Prenom` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Login` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `bigchain`
--

CREATE TABLE `bigchain` (
  `Identifier` int(11) UNSIGNED NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `catalog`
--

CREATE TABLE `catalog` (
  `Identifier` int(10) UNSIGNED NOT NULL,
  `Type` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Label` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Speed` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CatalogWidth` int(11) UNSIGNED DEFAULT NULL,
  `CatalogHeight` int(11) UNSIGNED DEFAULT NULL,
  `IdOperation` int(10) UNSIGNED NOT NULL,
  `IdAgence` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `catalog_shop`
--

CREATE TABLE `catalog_shop` (
  `IdCatalog` int(10) UNSIGNED NOT NULL,
  `IdShop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

CREATE TABLE `operation` (
  `Identifier` int(11) UNSIGNED NOT NULL,
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

CREATE TABLE `page` (
  `Identifier` int(10) UNSIGNED NOT NULL,
  `Number` int(10) UNSIGNED DEFAULT NULL,
  `IdCatalog` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `page_zone`
--

CREATE TABLE `page_zone` (
  `IdPage` int(10) UNSIGNED NOT NULL,
  `IdZone` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `Identifier` int(10) UNSIGNED NOT NULL,
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Label` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Category` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Price` float UNSIGNED DEFAULT NULL,
  `Price_before_coupon` float UNSIGNED DEFAULT NULL,
  `Price_crossed` float UNSIGNED DEFAULT NULL,
  `Reduction_euro` float UNSIGNED DEFAULT NULL,
  `Reduction_percent` float UNSIGNED DEFAULT NULL,
  `Advantage_euro` float UNSIGNED DEFAULT NULL,
  `Advantage_percent` float UNSIGNED DEFAULT NULL,
  `Ecotaxe` float UNSIGNED DEFAULT NULL,
  `Image` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Picto` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Origin` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mention` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Packaging` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Lowerprice` float UNSIGNED DEFAULT NULL,
  `Color` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Start_validity_date` date DEFAULT NULL,
  `End_validity_date` date DEFAULT NULL,
  `IdZone` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `serviceprovidor`
--

CREATE TABLE `serviceprovidor` (
  `Identifier` int(11) UNSIGNED NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `shop`
--

CREATE TABLE `shop` (
  `Identifier` int(11) UNSIGNED NOT NULL,
  `StartDate` date DEFAULT NULL,
  `DisplayStartDate` date DEFAULT NULL,
  `DisplayEndDate` date DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `IdBigChain` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `shop_serviceprovidor`
--

CREATE TABLE `shop_serviceprovidor` (
  `IdShop` int(11) UNSIGNED NOT NULL,
  `IdServiceProvidor` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `xml`
--

CREATE TABLE `xml` (
  `Identifier` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Lien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `zone`
--

CREATE TABLE `zone` (
  `Identifier` int(10) UNSIGNED NOT NULL,
  `Zone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoordX` int(10) UNSIGNED DEFAULT NULL,
  `CoordY` int(10) UNSIGNED DEFAULT NULL,
  `Width` int(10) UNSIGNED DEFAULT NULL,
  `Height` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`Identifier`);

--
-- Index pour la table `backofficeuser`
--
ALTER TABLE `backofficeuser`
  ADD PRIMARY KEY (`Identifier`);

--
-- Index pour la table `bigchain`
--
ALTER TABLE `bigchain`
  ADD PRIMARY KEY (`Identifier`);

--
-- Index pour la table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`Identifier`),
  ADD KEY `IdOperation` (`IdOperation`),
  ADD KEY `IdAgence` (`IdAgence`),
  ADD KEY `IdAgence_2` (`IdAgence`),
  ADD KEY `IdAgence_3` (`IdAgence`),
  ADD KEY `IdAgence_4` (`IdAgence`);

--
-- Index pour la table `catalog_shop`
--
ALTER TABLE `catalog_shop`
  ADD PRIMARY KEY (`IdCatalog`,`IdShop`),
  ADD KEY `IdCatalog` (`IdCatalog`),
  ADD KEY `IdShop` (`IdShop`);

--
-- Index pour la table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`Identifier`);

--
-- Index pour la table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`Identifier`),
  ADD KEY `IdCatalog` (`IdCatalog`);

--
-- Index pour la table `page_zone`
--
ALTER TABLE `page_zone`
  ADD PRIMARY KEY (`IdPage`,`IdZone`),
  ADD KEY `IdZone` (`IdZone`),
  ADD KEY `IdPage` (`IdPage`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Identifier`),
  ADD KEY `IdZone` (`IdZone`);

--
-- Index pour la table `serviceprovidor`
--
ALTER TABLE `serviceprovidor`
  ADD PRIMARY KEY (`Identifier`);

--
-- Index pour la table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`Identifier`),
  ADD KEY `IdBigChain` (`IdBigChain`);

--
-- Index pour la table `shop_serviceprovidor`
--
ALTER TABLE `shop_serviceprovidor`
  ADD PRIMARY KEY (`IdShop`,`IdServiceProvidor`),
  ADD KEY `IdServiceProvidor` (`IdServiceProvidor`),
  ADD KEY `IdShop` (`IdShop`);

--
-- Index pour la table `xml`
--
ALTER TABLE `xml`
  ADD PRIMARY KEY (`Identifier`);

--
-- Index pour la table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`Identifier`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `agence`
--
ALTER TABLE `agence`
  MODIFY `Identifier` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `backofficeuser`
--
ALTER TABLE `backofficeuser`
  MODIFY `Identifier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bigchain`
--
ALTER TABLE `bigchain`
  MODIFY `Identifier` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `Identifier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `operation`
--
ALTER TABLE `operation`
  MODIFY `Identifier` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `page`
--
ALTER TABLE `page`
  MODIFY `Identifier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `Identifier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `serviceprovidor`
--
ALTER TABLE `serviceprovidor`
  MODIFY `Identifier` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `shop`
--
ALTER TABLE `shop`
  MODIFY `Identifier` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `xml`
--
ALTER TABLE `xml`
  MODIFY `Identifier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `zone`
--
ALTER TABLE `zone`
  MODIFY `Identifier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `catalog`
--
ALTER TABLE `catalog`
  ADD CONSTRAINT `fk_Catalog_Agence` FOREIGN KEY (`IdAgence`) REFERENCES `agence` (`Identifier`),
  ADD CONSTRAINT `fk_Catalog_Operation` FOREIGN KEY (`IdOperation`) REFERENCES `operation` (`Identifier`);

--
-- Contraintes pour la table `catalog_shop`
--
ALTER TABLE `catalog_shop`
  ADD CONSTRAINT `fk_Catalog_Shop` FOREIGN KEY (`IdCatalog`) REFERENCES `catalog` (`Identifier`),
  ADD CONSTRAINT `fk_Shop_Catalog` FOREIGN KEY (`IdShop`) REFERENCES `shop` (`Identifier`);

--
-- Contraintes pour la table `page`
--
ALTER TABLE `page`
  ADD CONSTRAINT `fk_Page_Catalog` FOREIGN KEY (`IdCatalog`) REFERENCES `catalog` (`Identifier`);

--
-- Contraintes pour la table `page_zone`
--
ALTER TABLE `page_zone`
  ADD CONSTRAINT `fk_Pagezone_Page` FOREIGN KEY (`IdPage`) REFERENCES `page` (`Identifier`),
  ADD CONSTRAINT `fk_Pagezone_Zone` FOREIGN KEY (`IdZone`) REFERENCES `zone` (`Identifier`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_Product_Zone` FOREIGN KEY (`IdZone`) REFERENCES `zone` (`Identifier`);

--
-- Contraintes pour la table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `fk_Shop_BigChain` FOREIGN KEY (`IdBigChain`) REFERENCES `bigchain` (`Identifier`);

--
-- Contraintes pour la table `shop_serviceprovidor`
--
ALTER TABLE `shop_serviceprovidor`
  ADD CONSTRAINT `fk_ShopServiceProvidor` FOREIGN KEY (`IdServiceProvidor`) REFERENCES `serviceprovidor` (`Identifier`),
  ADD CONSTRAINT `fk_ShopServiceProvidor_Shop` FOREIGN KEY (`IdShop`) REFERENCES `shop` (`Identifier`);


