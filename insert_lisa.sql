--
-- Base de données :  `lisa`
--
USE lisa;
--
-- Contenu de la table `agence`
--

INSERT INTO `agence` (`Identifier`, `Libelle`) VALUES
(1, 'lisa1');

--
-- Contenu de la table `catalog`
--

INSERT INTO `catalog` (`Identifier`, `Type`, `Label`, `Speed`, `CatalogWidth`, `CatalogHeight`, `IdOperation`, `IdAgence`) VALUES
(1, 'fiches_produits', 'OP120_V1', 'V1', 2317, 3309, 1, 1),
(2, 'fiche produits de la mer', 'OP125', 'V3', NULL, NULL, 1, 1),
(3, 'fiches_produits de bain', 'OP126', NULL, NULL, NULL, 1, 1),
(4, 'fiches_produits de lit', 'OP129', NULL, NULL, NULL, 1, 1),
(5, 'fiches_produits noir', 'OP130', NULL, NULL, NULL, 1, 1);

--
-- Contenu de la table `operation`
--

INSERT INTO `operation` (`Identifier`, `Code`, `Title`, `StartDate`, `EndDate`) VALUES
(1, 'OP120', '30% d\'avantages clients sur de nombreux produits', NULL, NULL);

--
-- Contenu de la table `page`
--

INSERT INTO `page` (`Identifier`, `Number`, `IdCatalog`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`Identifier`, `Code`, `Label`, `Description`, `Category`, `Price`, `Reduction_euro`, `Advantage_percent`, `Ecotaxe`, `Image`, `Origin`, `Mention`, `Packaging`, `IdPage`) VALUES
(1, '110400000', 'ROULÉ DE DINDE DE MA RÉGION FARCI AUX CHAMPIGNONS "ROYAL BERNARD"*', '750 g. Le kg : 7,87 €.\r\nPour l’achat de 2 produits strictement identiques (même code-barres), bénéficiez d’un avantage de 5,90 €.', 'Frais', 5.9, NULL, NULL, 0, 'images/Img_40000_16C004K_V1_Page_02_Image_0015.jpg', 'ORIGINE FRANCE', '*PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES.', NULL, 2),
(2, '110400000', 'ROULÉ DE DINDE DE MA RÉGION FARCI AUX OLIVES "ROYAL BERNARD"*', '750 g. Le kg : 7,87 €.\r\nPour l’achat de 2 produits strictement identiques (même code-barres), bénéficiez d’un  de 5,90 €.', 'Frais', 5.9, NULL, NULL, 0, 'images/Img_40001_16C004K_V1_Page_02_Image_0016.jpg', 'ORIGINE FRANCE', '* PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES.', NULL, 2),
(3, '110400000', 'RHUBARBE ROUGE SURGELÉE "THOMAS LE PRINCE"*', '1 kg.\r\nPour l’achat de 2 produits strictement identiques (même code-barres), bénéficiez d’un  de 3,95 €.', 'Frais', NULL, NULL, NULL, 0, 'images/Img_40002_16C004K_V1_Page_02_Image_0011.jpg', NULL, 'CDATA[* PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES.', NULL, 2),
(4, '110200000', 'BOISSON SOJA DU SUD-OUEST NATURE OU CALCIUM* "CÉRÉAL BIO"**', '1 L.\r\nPour l\'achat de 2 produits strictement identiques (même code-barres), bénéficiez d’un  de 1,45 €.', 'Boisson sans alcool', 1.45, NULL, NULL, 0, 'images/Img_40003_16C004K_V1_Page_02_Image_0007.jpg', NULL, '* PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES. ** PRODUITS ISSUS DE L\'AGRICULTURE BIOLOGIQUE.', 'L\'UNITÉ', 2),
(5, '110200000', 'BOISSON SOJA DU SUD-OUEST VANILLE OU CHOCOLAT* "CÉRÉAL BIO"**', '1 L.\r\nPour l\'achat de 2 produits strictement identiques (même code-barres), bénéficiez d’un  de 1,99 €.', 'Boisson sans alcool', 1.99, NULL, NULL, 0, 'images/Img_40004_16C004K_V1_Page_02_Image_0009.jpg', NULL, ' PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES. ** PRODUITS ISSUS DE L\'AGRICULTURE BIOLOGIQUE.', 'L\'UNITÉ', 2),
(6, '110300000', 'BLANC CHÂTAIGNE D\'ARDÈCHE OU BLANC ABRICOT DU ROUSSILLON OU ROSÉ CASSIS DE BOURGOGNE "COEUR DE RÉGION"*', 'Boisson arômatisée à base de vin. 10% vol. 75 cl. Le L : 3,99 €.\r\nPour l’achat de 2 produits strictement identiques (même code barres), bénéficiez d’un  de 2,99 €.', 'Boisson avec alcool', 2.99, NULL, NULL, 0, 'images/Img_40005_16C004K_V1_Page_02_Image_0012.jpg', NULL, '* PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES. L’ABUS D’ALCOOL EST DANGEREUX POUR LA SANTÉ. À CONSOMMER AVEC MODÉRATION.', 'L\'UNITÉ', 2),
(7, '110300000', 'AOC (2) CORBIÈRES "DOMAINE CRÉMAILHE" 2014*', '75 cl. Le L : 6,52 €.\r\nPour l’achat de 2 produits strictement identiques (même code-barres), bénéficiez d’un  de 4,89 €.', 'Boisson avec alcool', 4.89, NULL, NULL, 0, 'images/Img_40006_16C004K_V1_Page_03_Image_0015.jpg', NULL, '* PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES. (2) APPELLATION D\'ORIGINE CONTRÔLÉE. L’ABUS D’ALCOOL EST DANGEREUX POUR LA SANTÉ. À CONSOMMER AVEC MODÉRATION.', NULL, 3),
(8, '110300000', 'AOC (2) BLAYE CÔTES DE BORDEAUX "CHÂTEAU LA ROSERAIE" 2014*', '75 cl. Le L : 8,79 €.\r\nPour l’achat de 2 produits strictement identiques (même code-barres), bénéficiez d’un  de 6,59 €.', 'Boisson avec alcool', 6.59, NULL, NULL, 0, 'images/Img_40007_16C004K_V1_Page_03_Image_0016.jpg', NULL, '* PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES. (2) APPELLATION D\'ORIGINE CONTRÔLÉE. L’ABUS D’ALCOOL EST DANGEREUX POUR LA SANTÉ. À CONSOMMER AVEC MODÉRATION.', NULL, 3),
(9, '110300000', 'AOC (2) GRIGNAN LES ADHÉMAR "LES MATINES" 2015*', '75 cl. Le L : 13,20 €.\r\nPour l’achat de 2 produits strictement identiques (même code-barres), bénéficiez d’un  de 9,90 €.', 'Boisson avec alcool', 9.9, NULL, NULL, 0, 'images/Img_40008_pop_1.jpg', NULL, '* PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES. (2) APPELLATION D\'ORIGINE CONTRÔLÉE. L’ABUS D’ALCOOL EST DANGEREUX POUR LA SANTÉ. À CONSOMMER AVEC MODÉRATION.', NULL, 3),
(10, '116200000', 'SHAMPOOING "PALMOLIVE"*', '2 en 1 hydra balance, anti-pelliculaire usage fréquent, beauty gloss, cheveux colorés, fraîcheur et volume ou force et vitalité. 350 ml. Le L : 4,83 €.\r\nPour l’achat de 2 produits strictement identiques (même\r\ncode-barres), bénéficiez d’un  de 1,69 €.', 'Cheveu', 1.69, NULL, NULL, 0, 'images/Img_40009_16C004K_V1_Page_03_Image_0009.jpg', NULL, '* PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES.', 'L\'UNITÉ', 3),
(11, '116200000', 'SHAMPOOING SPÉCIAL NETTOYAGE HAUTE PRESSION (3)*', '5 L. Le L : 1,30 €.\r\nPour l\'achat de 2 produits strictement identiques (même code-barres), bénéficiez d’un  de 6,50 €', 'Cheveu', 6.5, NULL, NULL, 0, 'images/Img_40010_16C004K_V1_Page_03_Image_0007.jpg', NULL, '* PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES. (3) PRODUIT DANGEREUX. RESPECTER LES PRÉCAUTIONS D\'EMPLOI. INFLAMMABLE.', NULL, 3),
(12, '123200000', 'LITIÈRE POUR CHAT TRANQUILLE VÉGÉTALE*', 'Fibres éco-recyclées et biodégradables issues d\'écarts non utilisés de la production céréales.\r\n4 L. Le L : 1,12 €.\r\nPour l\'achat de 2 produits strictement identiques (même code-barres), bénéficiez d’un  de 4,49 €.', 'Animalerie', 4.49, NULL, NULL, 0, 'images/Img_40011_16C004K_V1_Page_03_Image_0008.jpg', NULL, '* PRODUITS STRICTEMENT IDENTIQUES, MÊME CODE-BARRES.', NULL, 3),
(13, '110400000', 'JAMBON RÔTI "LE PLUS BON" "PARMACOTTO"', NULL, 'Frais', 8.95, NULL, NULL, 0, 'images/Img_40013_pop_2.jpg', 'ORIGINE U.E', NULL, 'LE KG', 4),
(14, '110400000', 'JAMBON RÔTI "LE PLUS BON" "PARMACOTTO"', NULL, 'Frais', 8.95, NULL, NULL, 0, 'images/Img_40013_pop_2.jpg', 'ORIGINE U.E', NULL, 'LE KG', 4),
(15, '110400000', 'JAMBON DE BAYONNE IGP* SANS OS 12 MOIS DE SÉCHAGE "MICHEL DUPUY"', NULL, 'Frais', 13.95, NULL, NULL, 0, 'images/Img_40014_pop_3.jpg', 'ORIGINE FRANCE', '*INDICATION GÉOGRAPHIQUE PROTÉGÉE.', 'LE KG', 4),
(16, '110400000', 'JAMBON DE BAYONNE IGP* SANS OS 12 MOIS DE SÉCHAGE "MICHEL DUPUY"', NULL, 'Frais', 13.95, NULL, NULL, 0, 'images/Img_40014_pop_3.jpg', 'ORIGINE FRANCE', '*INDICATION GÉOGRAPHIQUE PROTÉGÉE.', 'LE KG', 4),
(17, '110400000', 'ROSETTE DE LYON "CHAMBOST"', NULL, 'Frais', 8.95, NULL, NULL, 0, 'images/Img_40015_pop_4.jpg', 'TRANSFORMÉ EN FRANCE', NULL, 'LE KG', 5),
(18, '110400000', 'ROSETTE DE LYON "CHAMBOST"', NULL, 'Frais', 8.95, NULL, NULL, 0, 'images/Img_40015_pop_4.jpg', 'TRANSFORMÉ EN FRANCE', NULL, 'LE KG', 5),
(19, '110400000', 'PÂTÉ EN CROUTE AUX FILETS D\'OIE "ROLAND MONTERRAT', NULL, 'Frais', 5.85, NULL, NULL, 0, 'images/Img_40016_pop_5.jpg', 'TRANSFORMÉ EN FRANCE', NULL, 'LE KG', 5),
(20, '110400000', 'PÂTÉ EN CROUTE AUX FILETS D\'OIE "ROLAND MONTERRAT', NULL, 'Frais', 5.85, NULL, NULL, 0, 'images/Img_40016_pop_5.jpg', 'TRANSFORMÉ EN FRANCE', NULL, 'LE KG', 5),
(21, '110400000', 'SAUCISSON SEC PUR PORC LABEL ROUGE "MAISON DE SAVOIE"', '250 g. Le kg : 15,80 €.\r\nLabel rouge certifié par : Certipaq.', 'Frais', 9.95, NULL, 30, 0, 'images/Img_40017_16C004K_V1_Page_05_Image_0005.jpg', 'ORIGINE U.E', NULL, NULL, 5),
(22, '110400000', '2 GÂTEAUX DE FOIE DE VOLAILLE SAUCE FINANCIÈRE "MAISON CHAPUIS"', '420 g. Le kg : 5,71 €.', 'Frais', 2.4, NULL, 30, 0, 'images/Img_40018_16C004K_V1_Page_05_Image_0004.jpg', 'TRANSFORMÉ EN FRANCE', NULL, '', 5),
(23, '110400000', 'PLATEAU JAMBON SEC DE SAVOIE "MÔSSIEUR POLETTE"', '160 g. Le kg : 18,44 €.', 'Frais', 2.95, NULL, 30, 0, 'images/Img_40019_16C004K_V1_Page_05_Image_0011.jpg', 'ORIGINE FRANCE', NULL, NULL, 5),
(24, '110400000', 'SALADES MEZZE PENNE CRUDITÉS FILET DE POULET "MIX"', '320 g. Le kg : 12,34 €.', 'Frais', 3.95, NULL, 30, 0, 'images/Img_40020_16C004K_V1_Page_05_Image_0002.jpg', 'TRANSFORMÉ EN FRANCE', NULL, NULL, 5),
(25, '110400000', 'QUENELLES LYONNAISES NATURE, VOLAILLE OU BROCHET "MAISON MALARTRE"', '3 x 80 g (240 g).', 'Frais', 200, NULL, 30, 0, 'images/Img_40021_16C004K_V1_Page_05_Image_0012.jpg, images/Img_40021_16C004K_V1_Page_05_Image_0013.jpg, images/Img_40021_16C004K_V1_Page_05_Image_0014.jpg', 'TRANSFORMÉ EN FRANCE', NULL, 'L\'UNITÉ', 5),
(26, '110400000', 'SALADES MEZZE BOULGOUR CRUDITÉS SAUMON FUMÉ "MIX"', '320 g. Le kg : 12,34 €.', 'Frais', 3.95, NULL, 30, 0, 'images/Img_40022_16C004K_V1_Page_05_Image_0003.jpg', 'TRANSFORMÉ EN FRANCE', NULL, '', 5);

