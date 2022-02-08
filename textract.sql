/*
 Navicat Premium Data Transfer

 Source Server         : aws rds
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : textract.czhhj2yyt7he.us-east-2.rds.amazonaws.com:3306
 Source Schema         : textract

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 18/01/2022 20:46:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for result1
-- ----------------------------
DROP TABLE IF EXISTS `result1`;
CREATE TABLE `result1`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Adres` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Bag_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Bouwjaar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Compactheid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Registratienummer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Datum_registratie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Energy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Isolatie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `Koeling` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Ventilatie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Verwarming` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Vloeroppervlakte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Warm_water` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Woningtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Zonneboiler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Zonnepanelen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of result1
-- ----------------------------
INSERT INTO `result1` VALUES (14, 'Aartje de Voseiland 23 1382MK Weesp', ' 0457010000058952', '2012', 'A', '1,73', '346124025', '06-07-2021', '118,07 kWh/m² per jaar', '{\'Gevels\': {\'Noordoost\': [{\'Opp\': \'68,8 m²\', \'Rc\': \'2,8\'}], \'Zuidoost\': [{\'Opp\': \'35,9 m²\', \'Rc\': \'3,25\'}], \'Zuidwest\': [{\'Opp\': \'3,3 m²\', \'Rc\': \'2,8\'}], \'Noordwest\': [{\'Opp\': \'28,0 m²\', \'Rc\': \'2,8\'}]}, \'Gevelpanelen\': {}, \'Daken\': {\'Horizontaal\': [{\'Opp\': \'54,1 m²\', \'Rc\': \'2,5\'}]}, \'Vloeren\': {\'Vloeren\': [{\'Opp\': \'54,1 m²\', \'Rc\': \'2,5\'}]}, \'Ramen\': {\'Noordoost\': [{\'Opp\': \'4,3 m²\', \'Uw\': \'1,8\'}, {\'Opp\': \'3,1 m²\', \'Uw\': \'1,8\'}, {\'Opp\': \'2,9 m²\', \'Uw\': \'1,8\'}, {\'Opp\': \'0,2 m²\', \'Uw\': \'1,8\'}], \'Zuidoost\': [{\'Opp\': \'3,1 m²\', \'Uw\': \'1,8\'}, {\'Opp\': \'2,9 m²\', \'Uw\': \'1,8\'}, {\'Opp\': \'1,8 m²\', \'Uw\': \'1,8\'}], \'Noordwest\': [{\'Opp\': \'4,7 m²\', \'Uw\': \'1,8\'}, {\'Opp\': \'4,4 m²\', \'Uw\': \'1,8\'}, {\'Opp\': \'4,2 m²\', \'Uw\': \'1,8\'}]}, \'Buitendeuren\': {\'Noordoost\': [{\'Opp\': \'2,2 m²\', \'Ud\': \'3,4\'}, {\'Opp\': \'2,2 m²\', \'Ud\': \'2\'}, {\'Opp\': \'1,9 m²\', \'Ud\': \'3,4\'}], \'Zuidoost\': [{\'Opp\': \'1,9 m²\', \'Ud\': \'3,4\'}, {\'Opp\': \'1,7 m²\', \'Ud\': \'3,4\'}], \'Noordwest\': [{\'Opp\': \'3,2 m²\', \'Ud\': \'3,4\'}, {\'Opp\': \'2,9 m²\', \'Ud\': \'3,4\'}]}, \'Verwarming\': {\'Verwarmingstoestellen\': \'HR-107 ketel\', \'Aangesloten opp.\': \'159,0 m²\'}, \'Warm water\': {\'Warmwatertoestellen\': \'Overig warm water toestel\', \'Douche met warmteterugwinning\': \'Niet aanwezig\'}, \'Ventilatie\': {\'Type ventilatiesysteem\': \'Natuurlijke ventilatie met raampjes en roosters\', \'Warmteterugwinning\': \'Nee\', \'Wisselstroomventilator\': \'Nee\', \'Aangesloten Oppervlakte\': \'159,0 m²\'}, \'Koeling\': {\'Koeltoestellen\': \'Geen koeling\', \'Aangesloten oppervlakte\': \'n.v.t.\'}, \'Zonnepanelen\': {\'Wattpiekvermogen\': \'geen zonnepanelen\', \'Oriëntatie\': \'n.v.t.\', \'Oppervlakte\': \'n.v.t.\'}}', 'Niet aanwezig', 'Natuurlijke toevoer met mechanische afzuiging', 'HR-107 ketel', '159 m²', 'Overig warm water toestel', 'Hoekwoning', 'Niet aanwezig', 'Niet aanwezig');
INSERT INTO `result1` VALUES (15, 'Kopdammerdijk 11 1843KA Grootschermer', ' 0458010000010717', '1968', 'C', '0,97', '109758638', '08-07-2021', '193,84 kWh/m² per jaar', '{\'Gevels\': {\'Noord\': [{\'Opp\': \'23,3 m²\', \'Rc\': \'1,47\'}], \'Oost\': [{\'Opp\': \'30,8 m²\', \'Rc\': \'1,47\'}], \'Zuid\': [{\'Opp\': \'16,0 m²\', \'Rc\': \'1,47\'}], \'West\': [{\'Opp\': \'37,0 m²\', \'Rc\': \'1,47\'}]}, \'Gevelpanelen\': {}, \'Daken\': {\'Noord\': [{\'Opp\': \'30 m²\', \'Rc\': \'0,22\'}]}, \'Vloeren\': {\'Vloeren\': [{\'Opp\': \'59,6 m²\', \'Rc\': \'0,15\'}]}, \'Ramen\': {\'Noord\': [{\'Opp\': \'5,0 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'2,2 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'0,5 m²\', \'Uw\': \'5,1\'}], \'Oost\': [{\'Opp\': \'3,1 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'2,8 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'2,2 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'1,4 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'0,9 m²\', \'Uw\': \'2,9\'}], \'Zuid\': [{\'Opp\': \'6,0 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'1,5 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'1,2 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'0,9 m²\', \'Uw\': \'2,9\'}], \'West\': [{\'Opp\': \'1,2 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'1,2 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'1,2 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'0,8 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'0,5 m²\', \'Uw\': \'2,9\'}]}, \'Buitendeuren\': {\'Noord\': [{\'Opp\': \'2,4 m²\', \'Ud\': \'3,4\'}], \'Zuid\': [{\'Opp\': \'2,0 m²\', \'Ud\': \'3,4\'}], \'West\': [{\'Opp\': \'2,0 m²\', \'Ud\': \'3,4\'}]}, \'Verwarming\': {\'Verwarmingstoestellen\': \'HR-107 ketel\', \'Aangesloten opp.\': \'224 m²\'}, \'Warm water\': {\'Warmwatertoestellen\': \'Combitoestel\', \'Douche met warmteterugwinning\': \'Niet aanwezig\'}, \'Ventilatie\': {\'Type ventilatiesysteem\': \'Natuurlijke ventilatie met raampjes en roosters\', \'Warmteterugwinning\': \'Nee\', \'Wisselstroomventilator\': \'Nee\', \'Aangesloten Oppervlakte\': \'224 m²\'}, \'Koeling\': {\'Koeltoestellen\': \'Geen koeling\', \'Aangesloten oppervlakte\': \'n.v.t.\'}, \'Zonnepanelen\': {\'Wattpiekvermogen\': \'832 Wp\', \'Oriëntatie\': \'Zuid\', \'Oppervlakte\': \'12,8 m²\'}}', 'Niet aanwezig', 'Natuurlijke ventilatie via ramen en/of roosters', 'HR-107 ketel', '224 m²', 'Combiketel', 'Vrijstaande woning', 'Niet aanwezig', 'Aanwezig');
INSERT INTO `result1` VALUES (16, 'Balmerstraat 39 7316JV Apeldoorn', ' 0200010000018517', '1965', 'B', '1,47', '865233378', '28-06-2021', '178,16 kWh/m² per jaar', '{\'Gevels\': {\'Noord\': [{\'Opp\': \'19,3 m²\', \'Rc\': \'1,69\'}], \'Zuid\': [{\'Opp\': \'21,7 m²\', \'Rc\': \'1,69\'}]}, \'Gevelpanelen\': {}, \'Daken\': {\'Noord\': [{\'Opp\': \'29,9 m²\', \'Rc\': \'2\'}], \'Zuid\': [{\'Opp\': \'29,9 m²\', \'Rc\': \'2\'}]}, \'Vloeren\': {\'Vloeren\': [{\'Opp\': \'54,9 m²\', \'Rc\': \'1,8\'}]}, \'Ramen\': {\'Noord\': [{\'Opp\': \'3,3 m²\', \'Uw\': \'1,8\'}, {\'Opp\': \'2,4 m²\', \'Uw\': \'2\'}, {\'Opp\': \'2 m²\', \'Uw\': \'1,8\'}, {\'Opp\': \'1,2 m²\', \'Uw\': \'2\'}, {\'Opp\': \'0,9 m²\', \'Uw\': \'2\'}], \'Zuid\': [{\'Opp\': \'4,2 m²\', \'Uw\': \'1,8\'}, {\'Opp\': \'1,2 m²\', \'Uw\': \'1,8\'}, {\'Opp\': \'0,9 m²\', \'Uw\': \'2\'}, {\'Opp\': \'0,7 m²\', \'Uw\': \'2\'}, {\'Opp\': \'0,7 m²\', \'Uw\': \'2,9\'}, {\'Opp\': \'0,7 m²\', \'Uw\': \'1,8\'}]}, \'Buitendeuren\': {\'Noord\': [{\'Opp\': \'2,3 m²\', \'Ud\': \'3,4\'}], \'Zuid\': [{\'Opp\': \'1,3 m²\', \'Ud\': \'3,4\'}]}, \'Verwarming\': {\'Verwarmingstoestellen\': \'HR-107 ketel\', \'Aangesloten opp.\': \'109,8 m²\'}, \'Warm water\': {\'Warmwatertoestellen\': \'Overig warm water toestel\', \'Douche met warmteterugwinning\': \'Niet aanwezig\'}, \'Ventilatie\': {\'Type ventilatiesysteem\': \'Natuurlijke ventilatie met raampjes en roosters\', \'Warmteterugwinning\': \'Nee\', \'Wisselstroomventilator\': \'Nee\', \'Aangesloten Oppervlakte\': \'109,8 m²\'}, \'Koeling\': {\'Koeltoestellen\': \'Geen koeling\', \'Aangesloten oppervlakte\': \'n.v.t.\'}, \'Zonnepanelen\': {\'Wattpiekvermogen\': \'geen zonnepanelen\', \'Oriëntatie\': \'n.v.t.\', \'Oppervlakte\': \'n.v.t.\'}}', 'Niet aanwezig', 'Natuurlijke ventilatie via ramen en/of roosters', 'HR-107 ketel', '110 m²', 'Overig warm water toestel', 'Tussenwoning', 'Niet aanwezig', 'Niet aanwezig');
INSERT INTO `result1` VALUES (17, 'Scheepjeshof 138 3901C) Veenendaal', ' 0345010002065106', '1990', 'A', '1,19', '503591889', '08-07-2021', '150,80 kWh/m² per jaar', '{\'Gevels\': {\'Noord\': [{\'Opp\': \'2,6 m²\', \'Rc\': \'2\'}], \'Oost\': [{\'Opp\': \'15,0 m²\', \'Rc\': \'2\'}], \'West\': [{\'Opp\': \'20,5 m²\', \'Rc\': \'2\'}]}, \'Gevelpanelen\': {}, \'Daken\': {}, \'Vloeren\': {\'Vloeren\': [{\'Opp\': \'96 m²\', \'Rc\': \'1,71\'}]}, \'Ramen\': {\'Oost\': [{\'Opp\': \'5,3 m²\', \'Uw\': \'2,9\'}], \'West\': [{\'Opp\': \'1,7 m²\', \'Uw\': \'2,9\'}]}, \'Buitendeuren\': {\'Oost\': [{\'Opp\': \'1,5 m²\', \'Ud\': \'3,4\'}]}, \'Verwarming\': {\'Verwarmingstoestellen\': \'HR-107 ketel\', \'Aangesloten opp.\': \'96 m²\'}, \'Warm water\': {\'Warmwatertoestellen\': \'Overig warm water toeste\', \'Douche met warmteterugwinning\': \'Niet aanwezig\'}, \'Ventilatie\': {}, \'Koeling\': {\'Koeltoestellen\': \'Geen koeling\', \'Aangesloten oppervlakte\': \'n.v.t.\'}, \'Zonnepanelen\': {\'Wattpiekvermogen\': \'geen zonnepanelen\', \'Oriëntatie\': \'n.v.t.\', \'Oppervlakte\': \'n.v.t.\'}}', 'Niet aanwezig', 'Natuurlijke toevoer met mechanische afzuiging', 'HR-107 ketel', '96m²', 'Overig warm water toestel', 'Tussenwoning onderste bouwlaag', 'Niet aanwezig', 'Niet aanwezig');

-- ----------------------------
-- Table structure for result2
-- ----------------------------
DROP TABLE IF EXISTS `result2`;
CREATE TABLE `result2`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Adres` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Bag_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Aparte_warmtapwatervoorziening` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Bouwperiode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Dakisolatie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Registratienummer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Datum_van_registratie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Gevelisolatie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Glas_slaapruimte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Glas_woonruimte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Ventilatie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Verwarming` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Vloerisolatie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Woningtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Woonoppervlakte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Zonne_energie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Tip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `Energielabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of result2
-- ----------------------------
INSERT INTO `result2` VALUES (4, 'Graaf Willemlaan 154 3818DV (Amersfoort', ' 0307010000412456', 'Geen apart toestel', 'vóór 1946', 'Dak extra geïsoleerd', '874104877', '17-09-2018', 'Gevel extra geïsoleerd', 'HR glas', 'Dubbel glas', 'Mechanische afzuiging', 'Individuele CV-ketel, geinstalleerd in of na 1998', 'Vloer extra geïsoleerd', 'Rijwoning niet op een hoek', '101 t/m120 m²', 'Geen zonnepanelen en geen zonneboiler', '[\'Een zonneboiler voor het verwarmen van UW tapwater\', \'Zonnepanelen voor het opwekken van elektriciteit\', \'HR glas in de woonruimte(s)\']', 'B');
INSERT INTO `result2` VALUES (6, 'Muurhuizen 48 3811EK Amersfoort', ' 0307010000391317', 'Geen apart toestel', '1988 t/m 1991', 'Dak niet extra geïsoleerd', '902151174', '17-09-2018', 'Gevel niet extra geïsoleerd', 'Dubbel glas', 'Dubbel glas', 'Mechanische afzuiging', 'Individuele CV-ketel, geïnstalleerd voor 1998', 'Vloer niet extra geïsoleerd', 'Twee onder een kap', '>140 m²', 'Geen zonnepanelen en geen zonneboiler', '[\'(Extra) isolatie van uw begane grondvloer\', \'Een HR107-combiketel voor de verwarming van uw woning en warmwater\', \'Een zonneboiler voor het verwarmen van uw tapwater\', \'Een warmtepomp voor de verwarming van uw woning\', \'(Extra) isolatie van uw dak\', \'Zonnepanelen voor het opwekken van elektriciteit\', \'(Extra) isolatie van uw buitenmuren\', \'HR+ + glas in de woonruimte(s)\', \'Een HR107-ketel voor de verwarming van uw woning\', \'HR+ + glas in de slaapruimte(s)\']', 'D');
INSERT INTO `result2` VALUES (7, 'Dukaatslag 11 3991TA Houten', ' 0321010000002677', 'Geen apart toestel', '1988 t/m 1991', 'Dak niet extra geïsoleerd', '266484712', '22-10-2018', 'Gevel niet extra geïsoleerd', 'Dubbel glas', 'Dubbel glas', 'Mechanische afzuiging', 'Individuele CV-ketel, geïnstalleerd in of na 1998', 'Vloer extra geïsoleerd', 'Twee onder een kap', '121 t/m 140 m²', 'Geen zonnepanelen en geen zonneboiler', '[\'Een zonneboiler voor het verwarmen van uw tapwater\', \'HR+ glas in de slaapruimte(s)\', \'(Extra) isolatie van uw dak\', \'(Extra) isolatie van uw buitenmuren\', \'Zonnepanelen voor het opwekken van elektriciteit\', \'HR + glas in de woonruimte(s)\']', 'C');

-- ----------------------------
-- Table structure for result3
-- ----------------------------
DROP TABLE IF EXISTS `result3`;
CREATE TABLE `result3`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `Class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Elektriciteit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Energie_Index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Gas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Gebruiksoppervlak` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LabelClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Nummer_toevoeging` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Opnamedatum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Postcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Straat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Warmte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Woonplaats` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Advice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of result3
-- ----------------------------
INSERT INTO `result3` VALUES (1, 'A', '-510 kWh ', '0,94', '1.654 m³ ', '116,0 m²', 'Rijwoning hoek', '64-A', '3 december 2014', '1689MT', 'Ossenweide', '0 GJ ', 'Zwaag', '[\'HR++glas\', \'Zonneboiler\']');
INSERT INTO `result3` VALUES (2, 'A', '-1.093 kWh ', '0,52', '808 m³ ', '167,3 m²', '2-onder-1 kap', '17', '23 maart 2015', '4872CV', 'Steenloper', '0 GJ ', 'Etten-Leur', '[\'Kierdichting\']');
INSERT INTO `result3` VALUES (3, 'D', '645 kWh ', '1,72', '1.700 m³ ', '68,5 m²', 'Rijwoning tussen', '10', '7 februari 2016', '9321BG', 'Hoppekampweg', '0 GJ ', 'Peize', '[\'Gevelisolatie\', \'Zonneboiler\']');

SET FOREIGN_KEY_CHECKS = 1;
