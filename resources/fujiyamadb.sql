/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost
 Source Database       : fujiyamadb

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : utf-8

 Date: 08/08/2013 15:28:48 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `appetizers`
-- ----------------------------
DROP TABLE IF EXISTS `appetizers`;
CREATE TABLE `appetizers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `type` enum('ENTRADAS','CEVICHES','SOPAS') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `productappetizer_idx` (`product_id`),
  CONSTRAINT `productappetizer` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `appetizers`
-- ----------------------------
BEGIN;
INSERT INTO `appetizers` VALUES ('1', '10', 'CEVICHES'), ('2', '11', 'ENTRADAS'), ('3', '12', 'ENTRADAS'), ('4', '13', 'ENTRADAS'), ('5', '14', 'ENTRADAS'), ('6', '15', 'ENTRADAS'), ('7', '16', 'ENTRADAS'), ('8', '17', 'ENTRADAS'), ('9', '18', 'ENTRADAS'), ('10', '19', 'ENTRADAS'), ('11', '20', 'ENTRADAS'), ('12', '21', 'ENTRADAS'), ('13', '22', 'ENTRADAS'), ('14', '23', 'ENTRADAS'), ('15', '24', 'ENTRADAS'), ('16', '25', 'ENTRADAS'), ('17', '26', 'ENTRADAS'), ('18', '27', 'ENTRADAS'), ('19', '28', 'ENTRADAS'), ('20', '29', 'ENTRADAS'), ('21', '30', 'ENTRADAS'), ('22', '32', 'CEVICHES'), ('23', '33', 'CEVICHES'), ('24', '34', 'CEVICHES'), ('25', '35', 'SOPAS'), ('26', '36', 'SOPAS'), ('27', '37', 'SOPAS'), ('28', '38', 'SOPAS');
COMMIT;

-- ----------------------------
--  Table structure for `ensaladas`
-- ----------------------------
DROP TABLE IF EXISTS `ensaladas`;
CREATE TABLE `ensaladas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `type` enum('ENSALADA','TEMAKI','NIGIRI','SASHIMI','HOSOMAKI') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `ensaladasproducts_idx` (`product_id`),
  CONSTRAINT `ensaladasproducts` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `ensaladas`
-- ----------------------------
BEGIN;
INSERT INTO `ensaladas` VALUES ('1', '3', 'ENSALADA'), ('2', '39', 'ENSALADA'), ('3', '40', 'ENSALADA'), ('4', '41', 'ENSALADA'), ('5', '42', 'ENSALADA'), ('6', '43', 'ENSALADA'), ('7', '44', 'ENSALADA'), ('8', '45', 'ENSALADA'), ('9', '46', 'NIGIRI'), ('10', '47', 'TEMAKI'), ('11', '48', 'SASHIMI'), ('12', '49', 'HOSOMAKI');
COMMIT;

-- ----------------------------
--  Table structure for `photos`
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `photosproducts_idx` (`product_id`),
  CONSTRAINT `photosproducts` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `photos`
-- ----------------------------
BEGIN;
INSERT INTO `photos` VALUES ('1', '1', '../files/postres/banana-tempura-thumb.jpg', '../files/postres/banana-tempura.jpg'), ('2', '3', '../files/ensaladas/fujiyama-salad-thumb.jpg', '../files/ensaladas/fujiyama-salad.jpg'), ('3', '4', '../files/postres/helado-frito-thumb.jpg', '../files/postres/helado-frito.jpg'), ('4', '5', '../files/postres/crepe-de-nutella-thumb.jpg', '../files/postres/crepe-de-nutella.jpg'), ('5', '6', '../files/postres/banana-split-roll-thumb.jpg', '../files/postres/banana-split-roll.jpg'), ('6', '7', '../files/rolls/alaska-especial-thumb.jpg', '../files/rolls/alaska-especial.jpg'), ('7', '8', '../files/rolls/mitsuy-thumb.jpg', '../files/rolls/mitsuy.jpg'), ('8', '9', '../files/platos/chicken-fry-thumb.jpg', '../files/platos/chicken-fry.jpg'), ('9', '10', '../files/appetizers/ceviche-fujiyama-thumb.jpg', '../files/appetizers/ceviche-fujiyama.jpg'), ('10', '11', '../files/appetizers/croquetas-thumb.jpg', '../files/appetizers/croquetas.jpg'), ('11', '12', '../files/appetizers/yakitori-thumb.jpg', '../files/appetizers/yakitori.jpg'), ('12', '13', '../files/appetizers/gyosas-thumb.jpg', '../files/appetizers/gyosas.jpg'), ('13', '14', '../files/appetizers/eby-fry-thumb.jpg', '../files/appetizers/eby-fry.jpg'), ('14', '15', '../files/appetizers/kani-crunch-thumb.jpg', '../files/appetizers/kani-crunch.jpg'), ('15', '16', '../files/appetizers/kuku-roll-thumb.jpg', '../files/appetizers/kuku-roll.jpg'), ('16', '17', '../files/appetizers/macanas-de-cangrejo-thumb.jpg', '../files/appetizers/macanas-de-cangrejo.jpg'), ('17', '18', '../files/appetizers/ebi-tamochi-thumb.jpg', '../files/appetizers/ebi-tamochi.jpg'), ('18', '19', '../files/appetizers/kushiyaki-thumb.jpg', '../files/appetizers/kushiyaki.jpg'), ('19', '20', '../files/appetizers/ebiyaki-thumb.jpg', '../files/appetizers/ebiyaki.jpg'), ('20', '21', '../files/appetizers/sobeagi-thumb.jpg', '../files/appetizers/sobeagi.jpg'), ('21', '22', '../files/appetizers/atun-aderezado-thumb.jpg', '../files/appetizers/atun-aderezado.jpg'), ('22', '23', '../files/appetizers/shumai-thumb.jpg', '../files/appetizers/shumai.jpg'), ('23', '24', '../files/appetizers/tataki-de-atun-thumb.jpg', '../files/appetizers/tataki-de-atun.jpg'), ('24', '25', '../files/appetizers/dina-crunch-thumb.jpg', '../files/appetizers/dina-crunch.jpg'), ('25', '26', '../files/appetizers/edamame-thumb.jpg', '../files/appetizers/edamame.jpg'), ('26', '27', '../files/appetizers/tsunami-thumb.jpg', '../files/appetizers/tsunami.jpg'), ('27', '28', '../files/appetizers/eby-crunch-thumb.jpg', '../files/appetizers/eby-crunch.jpg'), ('28', '29', '../files/appetizers/tuna-roll-thumb.jpg', '../files/appetizers/tuna-roll.jpg'), ('29', '30', '../files/appetizers/asia-crunch-thumb.jpg', '../files/appetizers/asia-crunch.jpg'), ('30', '32', '../files/appetizers/ceviche-tako-thumb.jpg', '../files/appetizers/ceviche-tako.jpg'), ('31', '33', '../files/appetizers/ceviche-fujiyama-mixto-thumb.jpg', '../files/appetizers/ceviche-fujiyama-mixto.jpg'), ('32', '34', '../files/appetizers/ceviche-white-fish-thumb.jpg', '../files/appetizers/ceviche-white-fish.jpg'), ('33', '35', '../files/appetizers/sopa-miso-thumb.jpg', '../files/appetizers/sopa-miso.jpg'), ('34', '36', '../files/appetizers/sopa-kanisu-thumb.jpg', '../files/appetizers/sopa-kanisu.jpg'), ('35', '37', '../files/appetizers/sopa-yo-se-nabe-especial-thumb.jpg', '../files/appetizers/sopa-yo-se-nabe-especial.jpg'), ('36', '38', '../files/appetizers/sopa-suimono-thumb.jpg', '../files/appetizers/sopa-suimono.jpg'), ('37', '39', '../files/ensaladas/wakame-thumb.jpg', '../files/ensaladas/wakame.jpg'), ('38', '40', '../files/ensaladas/wakame-especial-thumb.jpg', '../files/ensaladas/wakame-especial.jpg'), ('39', '41', '../files/ensaladas/idako-thumb.jpg', '../files/ensaladas/idako.jpg'), ('40', '42', '../files/ensaladas/chucaika-thumb.jpg', '../files/ensaladas/chucaika.jpg'), ('41', '43', '../files/ensaladas/neptuno-thumb.jpg', '../files/ensaladas/neptuno.jpg'), ('42', '44', '../files/ensaladas/surimi-salad-thumb.jpg', '../files/ensaladas/surimi-salad.jpg'), ('43', '45', '../files/ensaladas/neptuno-especial-thumb.jpg', '../files/ensaladas/neptuno-especial-thumb.jpg'), ('44', '46', '../files/ensaladas/nigiri-thumb.jpg', '../files/ensaladas/nigiri.jpg'), ('45', '47', '../files/ensaladas/temaki-thumb.jpg', '../files/ensaladas/temaki.jpg'), ('46', '48', '../files/ensaladas/sashimi-thumb.jpg', '../files/ensaladas/sashimi.jpg'), ('47', '49', '../files/ensaladas/hosomaki-thumb.jpg', '../files/ensaladas/hosomaki-thumb.jpg'), ('48', '50', '../files/platos/yakitoridon-thumb.jpg', '../files/platos/yakitoridon.jpg'), ('49', '51', '../files/platos/yudon-thumb.jpg', '../files/platos/yudon.jpg'), ('50', '52', '../files/platos/yakisoba-mixto-thumb.jpg', '../files/platos/yakisoba-mixto.jpg'), ('51', '53', '../files/platos/ya-say-thumb.jpg', '../files/platos/ya-say.jpg'), ('52', '54', '../files/platos/yakisoba-de-pollo-thumb.jpg', '../files/platos/yakisoba-de-pollo.jpg'), ('53', '55', '../files/platos/yakisoba-de-langostinos-thumb.jpg', '../files/platos/yakisoba-de-langostinos.jpg'), ('54', '56', '../files/platos/pollo-teriyaki-thumb.jpg', '../files/platos/pollo-teriyaki.jpg'), ('55', '57', '../files/platos/lomito-teriyaki-thumb.jpg', '../files/platos/lomito-teriyaki.jpg'), ('56', '58', '../files/platos/yakisoba-de-vegetales-thumb.jpg', '../files/platos/yakisoba-de-vegetales.jpg'), ('57', '59', '../files/platos/yakisoba-de-lomito-thumb.jpg', '../files/platos/yakisoba-de-lomito.jpg'), ('58', '60', '../files/platos/salmon-teriyaki-thumb.jpg', '../files/platos/salmon-teriyaki.jpg'), ('59', '61', '../files/platos/bochan-thumb.jpg', '../files/platos/bochan.jpg'), ('60', '62', '../files/platos/toreagy-de-pollo-thumb.jpg', '../files/platos/toreagy-de-pollo.jpg'), ('61', '63', '../files/platos/tempura-udon-thumb.jpg', '../files/platos/tempura-udon.jpg'), ('62', '64', '../files/platos/tempura-de-langostinos-thumb.jpg', '../files/platos/tempura-de-langostinos.jpg'), ('64', '66', '../files/platos/yakimeshi-de-lomito-thumb.jpg', '../files/platos/yakimeshi-de-lomito.jpg'), ('65', '67', '../files/platos/yakimeshi-de-langostinos-thumb.jpg', '../files/platos/yakimeshi-de-langostinos.jpg'), ('66', '68', '../files/platos/tempura-soba-thumb.jpg', '../files/platos/tempura-soba.jpg'), ('67', '69', '../files/platos/tempura-de-vegetales-thumb.jpg', '../files/platos/tempura-de-vegetales.jpg'), ('68', '70', '../files/platos/tempura-mixto-thumb.jpg', '../files/platos/tempura-mixto.jpg'), ('69', '71', '../files/platos/katsudon-thumb.jpg', '../files/platos/katsudon.jpg'), ('70', '72', '../files/platos/yakimeshi-de-pollo-thumb.jpg', '../files/platos/yakimeshi-de-pollo.jpg'), ('71', '73', '../files/platos/yakimeshi-mixto-thumb.jpg', '../files/platos/yakimeshi-mixto.jpg'), ('72', '75', '../files/rolls/amigo-thumb.jpg', '../files/rolls/amigo.jpg'), ('73', '76', '../files/rolls/kiury-thumb.jpg', '../files/rolls/kiury.jpg'), ('74', '77', '../files/rolls/miyagi-thumb.jpg', '../files/rolls/miyagi.jpg'), ('75', '78', '../files/rolls/fujiyama-especial-thumb.jpg', '../files/rolls/fujiyama-especial.jpg'), ('76', '79', '../files/rolls/imperial-thumb.jpg', '../files/rolls/imperial.jpg'), ('77', '80', '../files/rolls/okinawa-thumb.jpg', '../files/rolls/okinawa.jpg'), ('78', '82', '../files/rolls/chacky-fry-thumb.jpg', '../files/rolls/chacky-fry.jpg'), ('79', '83', '../files/rolls/tiger-thumb.jpg', '../files/rolls/tiger.jpg'), ('80', '84', '../files/rolls/shogun-thumb.jpg', '../files/rolls/shogun.jpg'), ('81', '85', '../files/rolls/fuji-crunch-thumb.jpg', '../files/rolls/fuji-crunch.jpg'), ('82', '86', '../files/rolls/paco-thumb.jpg', '../files/rolls/paco.jpg'), ('83', '87', '../files/rolls/roastbeef-thumb.jpg', '../files/rolls/roastbeef.jpg'), ('84', '88', '../files/rolls/kioto-thumb.jpg', '../files/rolls/kioto.jpg'), ('85', '89', '../files/rolls/nomura-thumb.jpg', '../files/rolls/nomura.jpg'), ('86', '90', '../files/rolls/vulcano-thumb.jpg', '../files/rolls/vulcano.jpg'), ('87', '91', '../files/rolls/takami-thumb.jpg', '../files/rolls/takami.jpg'), ('88', '92', '../files/rolls/fire-roll-thumb.jpg', '../files/rolls/fire-roll.jpg'), ('89', '93', '../files/rolls/ying-yang-thumb.jpg', '../files/rolls/ying-yang.jpg'), ('90', '94', '../files/rolls/dt-roll-thumb.jpg', '../files/rolls/dt-roll.jpg'), ('91', '95', '../files/rolls/crunch-tuna-thumb.jpg', '../files/rolls/crunch-tuna.jpg'), ('92', '96', '../files/rolls/dragon-especial-thumb.jpg', '../files/rolls/dragon-especial.jpg'), ('93', '97', '../files/rolls/salmon-skin-thumb.jpg', '../files/rolls/salmon-skin.jpg'), ('94', '98', '../files/rolls/fujiroll-especial-thumb.jpg', '../files/rolls/fujiroll-especial.jpg'), ('95', '99', '../files/rolls/samurai-thumb.jpg', '../files/rolls/samurai.jpg'), ('96', '100', '../files/rolls/krakatoa-thumb.jpg', '../files/rolls/krakatoa.jpg'), ('97', '101', '../files/rolls/ebiten-thumb.jpg', '../files/rolls/ebiten.jpg'), ('98', '102', '../files/rolls/pirana-thumb.jpg', '../files/rolls/pirana.jpg'), ('99', '103', '../files/rolls/naomi-thumb.jpg', '../files/rolls/naomi.jpg'), ('100', '104', '../files/rolls/katana-thumb.jpg', '../files/rolls/katana.jpg'), ('101', '105', '../files/rolls/eduardo-roll-thumb.jpg', '../files/rolls/eduardo-roll.jpg'), ('102', '106', '../files/rolls/hiroito-thumb.jpg', '../files/rolls/hiroito.jpg'), ('103', '107', '../files/rolls/takemura-thumb.jpg', '../files/rolls/takemura.jpg'), ('104', '108', '../files/rolls/jr-roll-thumb.jpg', '../files/rolls/jr-roll.jpg'), ('105', '109', '../files/rolls/sounkio-thumb.jpg', '../files/rolls/sounkio.jpg'), ('106', '110', '../files/rolls/poseidon-thumb.jpg', '../files/rolls/poseidon.jpg'), ('107', '111', '../files/rolls/alaska-thumb.jpg', '../files/rolls/alaska.jpg'), ('108', '112', '../files/rolls/arcoiris-thumb.jpg', '../files/rolls/arcoiris.jpg'), ('109', '113', '../files/rolls/hiroshima-thumb.jpg', '../files/rolls/hiroshima.jpg'), ('110', '114', '../files/rolls/oceania-thumb.jpg', '../files/rolls/oceania.jpg'), ('111', '115', '../files/rolls/hitomi-thumb.jpg', '../files/rolls/hitomi.jpg'), ('112', '116', '../files/rolls/fantasia-thumb.jpg', '../files/rolls/fantasia.jpg'), ('113', '117', '../files/rolls/california-thumb.jpg', '../files/rolls/california.jpg'), ('114', '118', '../files/rolls/maguro-thumb.jpg', '../files/rolls/maguro.jpg'), ('115', '119', '../files/rolls/dinamita-thumb.jpg', '../files/rolls/dinamita.jpg'), ('116', '120', '../files/rolls/kawasaky-thumb.jpg', '../files/rolls/kawasaky.jpg'), ('117', '121', '../files/rolls/unagui-thumb.jpg', '../files/rolls/unagui.jpg'), ('118', '122', '../files/rolls/fruti-roll-thumb.jpg', '../files/rolls/fruti-roll.jpg'), ('119', '123', '../files/rolls/kaizo-thumb.jpg', '../files/rolls/kaizo.jpg'), ('120', '124', '../files/rolls/spicy-tuna-thumb.jpg', '../files/rolls/spicy-tuna.jpg'), ('121', '125', '../files/rolls/millenium-thumb.jpg', '../files/rolls/millenium.jpg'), ('122', '126', '../files/rolls/ely-roll-thumb.jpg', '../files/rolls/ely-roll.jpg'), ('123', '127', '../files/rolls/noruega-thumb.jpg', '../files/rolls/noruega.jpg'), ('124', '128', '../files/rolls/fuji-sake-thumb.jpg', '../files/rolls/fuji-sake.jpg'), ('125', '129', '../files/rolls/tropical-thumb.jpg', '../files/rolls/tropical.jpg'), ('126', '130', '../files/rolls/fujiyama-thumb.jpg', '../files/rolls/fujiyama.jpg'), ('127', '131', '../files/rolls/cosmopolitan-thumb.jpg', '../files/rolls/cosmopolitan.jpg'), ('128', '132', '../files/rolls/tokyo-thumb.jpg', '../files/rolls/tokyo.jpg'), ('129', '133', '../files/rolls/da-vinci-thumb.jpg', '../files/rolls/da-vinci.jpg'), ('130', '134', '../files/rolls/ningio-thumb.jpg', '../files/rolls/ningio.jpg'), ('131', '135', '../files/rolls/yamasa-thumb.jpg', '../files/rolls/yamasa.jpg'), ('132', '136', '../files/rolls/sacana-thumb.jpg', '../files/rolls/sacana.jpg'), ('133', '137', '../files/rolls/tocayo-thumb.jpg', '../files/rolls/tocayo.jpg'), ('134', '138', '../files/rolls/vegetariano-thumb.jpg', '../files/rolls/vegetariano.jpg'), ('135', '139', '../files/rolls/alba-thumb.jpg', '../files/rolls/alba.jpg'), ('136', '140', '../files/rolls/divorcio-thumb.jpg', '../files/rolls/divorcio.jpg'), ('137', '141', '../files/rolls/hollywood-thumb.jpg', '../files/rolls/hollywood.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `platos`
-- ----------------------------
DROP TABLE IF EXISTS `platos`;
CREATE TABLE `platos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `platosproducts_idx` (`product_id`),
  CONSTRAINT `platosproducts` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `platos`
-- ----------------------------
BEGIN;
INSERT INTO `platos` VALUES ('1', '9'), ('2', '50'), ('3', '51'), ('4', '52'), ('5', '53'), ('6', '54'), ('7', '55'), ('8', '56'), ('9', '57'), ('10', '58'), ('11', '59'), ('12', '60'), ('13', '61'), ('14', '62'), ('15', '63'), ('16', '64'), ('18', '66'), ('19', '67'), ('20', '68'), ('21', '69'), ('22', '70'), ('23', '71'), ('24', '72'), ('25', '73');
COMMIT;

-- ----------------------------
--  Table structure for `postres`
-- ----------------------------
DROP TABLE IF EXISTS `postres`;
CREATE TABLE `postres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `postresproducts_idx` (`product_id`),
  CONSTRAINT `postresproducts` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `postres`
-- ----------------------------
BEGIN;
INSERT INTO `postres` VALUES ('1', '1'), ('2', '4'), ('3', '5'), ('4', '6');
COMMIT;

-- ----------------------------
--  Table structure for `product_tags`
-- ----------------------------
DROP TABLE IF EXISTS `product_tags`;
CREATE TABLE `product_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `tagsproducts_idx` (`product_id`),
  KEY `tagstags_idx` (`tag_id`),
  CONSTRAINT `tagsproducts` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tagstags` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `products`
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES ('1', 'Banana Tempura', 'Banana tempurizada acompañada de helado y sirope de chocolate', '85'), ('3', 'Fujiyama Salad', 'Salmón, kani, masago, atún, pescado blanco, aguacate, pulpo y wakame, aderezado con salsas dragón y anguila', '125'), ('4', 'Helado Frito', 'Porción de helado tempurizado con topping de chocolate y cambur', '81'), ('5', 'Crepe de Nutella', 'Crepe rellena con nutella acompañada de helado y sirope de chocolate', '85'), ('6', 'Banana Split Roll', 'Roll empanizado de cambur, manzana verde, queso crema, aguacate y nutella con topping de helado con nutella', '110'), ('7', 'Alaska Especial', 'Salmón, queso crema y aguacate con topping de salmón, aguacate, wakame y huevas de ikura', '149'), ('8', 'Mitsuy', 'Cangrejo, salmón, queso crema, cebollín y masago, empanizado con salsa de anguila y dragón', '136'), ('9', 'Chicken Fry', 'Arroz salteado con vegetales, pollo empanizado y vegetales a la plancha en salsa de ostras', '96'), ('10', 'Ceviche Fujiyama', 'Cortes finos de pescado blanco y pulpo, aguacate, aderezos mixtos, limón y ajonjolí', '132'), ('11', 'Croquetas', 'Croquetas de salmón, cangrejo o atún con salsa mostaza y tártara', '54'), ('12', 'Yakitori', 'Tres pinchos de pollo con cebolli?n y salsa teriyaki', '79'), ('13', 'Gyosas', 'Empanaditas rellenas de cerdo y vegetales con salsa gyosa', '62'), ('14', 'Eby Fry', 'Cinco langostinos empanizados con salsa tokasu', '88'), ('15', 'Kani Crunch', 'Cangrejo empanizado con salsa drago?n', '76'), ('16', 'Kuku Roll', 'Pescado blanco relleno de queso crema y aguacate, empanizado con salsa naomi y unagi', '82'), ('17', 'Macanas de Cangrejo', 'Croquetas de cangrejo con sus macanas y salsa ta?rtara', '78'), ('18', 'Ebi Tamochi', 'Langostinos rebozados en hilos de arroz con salsa de jengibre', '114'), ('19', 'Kushiyaki', 'Tres pinchos de lomito con cebolli?n y salsa teriyaki', '69'), ('20', 'Ebiyaki', 'Tres pinchos de langostinos con cebolli?n y salsa teriyaki', '79'), ('21', 'Sobeagi', 'Salmón tempurizado con limo?n aguacate y queso crema, con topping salsa de anguila', '89'), ('22', 'Atún Aderezado', 'Atún sobrasado a la pimienta, con salsa al curry, ajonjoli? y salsa chutney de pin?a', '80'), ('23', 'Shumai', 'Empanaditas rellenas de vegetales o langostinos con salsa gyosa', '70'), ('24', 'Tataki de Atún', 'Atu?n sobrasado con salsa ponzu y ajonjoli?', '89'), ('25', 'Dina Crunch', 'Ensalada Dinamita Tempurizada y salsa anguila', '68'), ('26', 'Edamame', 'Vainitas Japonesas', '65'), ('27', 'Tsunami', 'Berenjena rellena con salsa de langostinos, tempura y cebolli?n', '79'), ('28', 'Eby Crunch', 'Hojuela de camaro?n deshidratada con crema de langostinos empanizados, masago, cebolli?n, salsa de anguila y topping de ajonjoli?', '65'), ('29', 'Tuna Roll', 'Roll con atu?n, queso crema, aguacate, con topping de alfalfa, salsa chutney de pin?a y salsa imperial', '88'), ('30', 'Asia Crunch', 'Arroz con cebolli?n y un toque de picante crunch estilo nigiri, rodeado de salmo?n y crema divorcio con salsa de anguila', '101'), ('32', 'Ceviche Tako', 'Cortes finos de pulpo, aderezos mixtos, limo?n y ajonjoli?', '140'), ('33', 'Ceviche Fujiyama Mixto', 'Cortes finos de pescados y mariscos variados, limo?n, aderezos mixtos, ajonjoli (picante)', '132'), ('34', 'Ceviche White Fish', 'Pescado blanco con papa rebanada, ajonjoli?, limo?n y aderezos mixtos (picante)', '109'), ('35', 'Sopa Miso', 'Sopa con cebolli?n y tofu? (Queso de Soya)', '65'), ('36', 'Sopa Kanisú', 'Caldo de pescado, cangrejo, langostinos, huevo y cebolli?n', '82'), ('37', 'Sopa Yo Se Nabe Especial', 'Sopa con trozos de pescado blanco, atu?n, salmo?n, langostinos y pasta japonesa', '130'), ('38', 'Sopa Suimono', 'Sopa de pescado o pollo', '75'), ('39', 'Wakame', 'Algas, kani y salsa drago?n', '68'), ('40', 'Wakame Especial', 'Atu?n, cangrejo, wakame, salmo?n y pescado blanco aderezados con salsa drago?n y salsa de anguila', '122'), ('41', 'Idako', 'Pulpo bebe con wakame especial', '140'), ('42', 'Chucaika', 'Ensalada dinamita con calamar', '125'), ('43', 'Neptuno', 'Ensalada dinamita con salmo?n y mayonesa', '120'), ('44', 'Surimi Salad', 'Cangrejo, masago y wakame, con un toque de mayonesa y aguacate', '98'), ('45', 'Neptuno Especial', 'Ensalada dinamita y salmo?n en una hoja de arroz aderezada con aguacate, alfalfa, mango y salsas chutney de pin?a, naomi y anguila', '150'), ('46', 'Nigiri', 'Salmo?n, langostino, anguila, atu?n, cangrejo, macarela, huevas de salmo?n, pulpo', '48'), ('47', 'Temaki', 'Alaska, California, Unagui, Maguro, Salmo?n, Kani, Atu?n, Mixto', '162'), ('48', 'Sashimi', 'Salmo?n, langostino, anguila, macarela mixto I (salmo?n y atu?n), mixto II (salmo?n, atu?n y sierra)', '179'), ('49', 'Hosomaki', 'Salmo?n, atu?n, cangrejo, anguila, langostino, pepino', '71'), ('50', 'Yakitoridón', 'Arroz japone?s con trocitos de pollo en salsa teriyaki', '101'), ('51', 'Yudón', 'Arroz japone?s con trocitos de lomito en salsa teriyaki', '109'), ('52', 'Yakisoba Mixto', 'Vegetales salteados con pollo, lomito, langostinos y pasta japonesa', '105'), ('53', 'Ya-say', 'Vegetales salteados', '70'), ('54', 'Yakisoba de Pollo', 'Vegetales salteados con pollo y pasta japonesa', '100'), ('55', 'Yakisoba de Langostinos', 'Vegetales salteados con langostinos y pasta japonesa', '129'), ('56', 'Pollo Teriyaki', 'Pechuga de pollo con vegetales y arroz', '102'), ('57', 'Lomito Teriyaki', 'Lomito con vegetales y arroz', '115'), ('58', 'Yakisoba de Vegetales', 'Vegetales salteados con pasta japonesa', '90'), ('59', 'Yakisoba de Lomito', 'Vegetales salteados con lomito y pasta japonesa', '119'), ('60', 'Salmón Teriyaki', 'Salmo?n, arroz y vegetales salteados', '125'), ('61', 'Bochán', 'Vaporizado de vegetales, pescado blanco, salmo?n, atu?n, cangrejo y langostinos', '132'), ('62', 'Toreagy de Pollo', 'Pollo marinado en salsa de jengibre con arroz salteado y vegetales en salsa de ostras', '100'), ('63', 'Tempura Udón', 'Sopa compuesta con pasta udo?n, cebolli?n, langostinos y vegetales tempurizados', '90'), ('64', 'Tempura de Langostinos', 'Langostinos tempurizados con salsa tempura', '135'), ('66', 'Yakimeshi de Lomito', 'Arroz satinado con vegetales y lomito', '119'), ('67', 'Yakimeshi de Langostinos', 'Arroz satinado con vegetales y langostinos', '129'), ('68', 'Tempura Soba', 'Sopa compuesta con pasta soba, cebollin, langostinos y vegetales tempurizados', '90'), ('69', 'Tempura de Vegetales', 'Vegetales tempurizados con salsa tempura', '86'), ('70', 'Tempura Mixto', 'Vegetales variados con langostinos y salsa tempura', '125'), ('71', 'Katsudón', 'Pechuga de pollo empanizada en salsa tempura con arroz japone?s, cebolli?n y huevo', '98'), ('72', 'Yakimeshi de Pollo', 'Arroz satinado con vegetales y pollo', '100'), ('73', 'Yakimeshi Mixto', 'Arroz satinado con vegetales, pollo, lomito y langostinos', '115'), ('75', 'Amigo', 'Salmo?n, atu?n, cangrejo, pepino, aguacate y cebolli?n con topping de wakame', '128'), ('76', 'Kiury', 'Pepino relleno de salmo?n, atu?n, cangrejo, aguacate, queso crema y cebollin con topping de ikura y salsa ponzu', '101'), ('77', 'Miyagi', 'Pescado blanco, atu?n, cangrejo, queso crema, masago, cebolli?n, anguila, wakame y topping de salsa de anguila', '130'), ('78', 'Fujiyama Especial', 'Salmo?n, atu?n, pescado blanco, langostino, anguila, cangrejo, cebolli?n, queso crema y masago con topping de wakame, ensalada neptuno y salsa unagui', '165'), ('79', 'Imperial', 'Hoja de arroz, salmo?n, atu?n, cebolli?n, queso crema, mango y alfalfa con topping de salsa imperial y chutney de pin?a', '122'), ('80', 'Okinawa', 'Envuelto en pla?tano frito, queso crema, masago, ensalada dinamita, salmo?n ahumado, salsa unagui y ajonjoli?', '126'), ('82', 'Chacky Fry', 'Pla?tano relleno de queso crema, masago, aguacate y salmo?n empanizado con topping de salsa de anguila', '95'), ('83', 'Tiger', 'Salmo?n, queso crema, cebolli?n con topping de salsa de anguila', '114'), ('84', 'Shogún', 'Queso crema, masago, cebolli?n, langostino empanizado, cangrejo y aguacate, con topping de ensalada dinamita y salsa de anguila', '136'), ('85', 'Fuji Crunch', 'Salmo?n, queso crema, masago, cebolli?n, anguila y mango, empanizado con cereal y salsa anguila', '129'), ('86', 'Paco', 'Salmo?n ahumado, anguila, masago, langostinos, cangrejo, queso crema y cebolli?n, con topping de ensalada dinamita y salsa de anguila', '155'), ('87', 'Roastbeef', 'Pollo, lomito, queso crema, cebolli?n y champin?ones, con topping de salsa teriyaki y salsa mostaza', '112'), ('88', 'Kioto', 'Queso crema, masago, cebolli?n, anguila, piel de salmo?n, langostinos, wakame y kani con salsa de anguila', '139'), ('89', 'Nomura', 'Pescado blanco empanizado, ensalada dinamita, queso crema, cebolli?n, aguacate y masago con topping de pescado blanco empanizado y salsa de anguila', '119'), ('90', 'Vulcano', 'Queso crema, cangrejo, langostinos y masago, con topping de crema de cangrejo', '132'), ('91', 'Takami', 'Salmo?n, cangrejo, anguila, cebolli?n, queso crema, masago y langostinos con topping de ensalada dinamita y salsa de anguila', '152'), ('92', 'Fire Roll', 'Queso crema al amaretto, ensalada dinamita, cebolli?n y kani crunch con topping de pla?tano y queso tipo brie con salsa de anguila', '135'), ('93', 'Ying Yang', 'Queso crema, kani crunch, berros tempurizados con topping de atu?n aderezado, aguacate y salsa chutney de pin?a', '132'), ('94', 'DT Roll', 'Queso crema, masago, cebolli?n, aguacate, langostinos empanizados, cangrejo empanizado y anguila empanizada con topping de salmon, atu?n, salsa drago?n y salsa de anguila', '157'), ('95', 'Crunch Tuna', 'Berros tempurizados con topping de spicy tuna', '103'), ('96', 'Dragón Especial', 'Queso crema, cebolli?n, masago, cangrejo y langostinos empanizados, con topping de aguacate y salsa drago?n', '123'), ('97', 'Salmón Skin', 'Piel de salmo?n, queso crema, ajonjoli?, cebolli?n y salsa de anguila', '102'), ('98', 'Fujiroll Especial', 'Langostino empanizado, cangrejo empanizado, cebolli?n y queso crema, con topping de langostinos tempurizados con salsa fuji', '142'), ('99', 'Samurai', 'Queso crema, perejil tempurizado, aguacate y salmo?n con topping de langostinos tempurizados con salsa samurai', '132'), ('100', 'Krakatoa', 'Ensalada dinamita, cebolli?n, kani crunch, espa?rragos y salmo?n empanizado con topping de aguacate e hilos de papa con salsa kracatoa', '134'), ('101', 'Ebiten', 'Langostinos tempurizados y berros crunch y ajonjoli?', '111'), ('102', 'Piraña', 'Salmo?n, langostinos tempurizados, queso crema, masago, cebolli?n y aguacate, con topping de ensalada dinamita', '139'), ('103', 'Naomi', 'Queso crema, cebolli?n, masago, anguila y kani empanizado con topping de langostinos, naranja, salsa naomi y salsa anguila', '135'), ('104', 'Katana', 'Atu?n, salmo?n, cangrejo, cebolli?n, queso crema y ajonjoli?', '142'), ('105', 'Eduardo Roll', 'Salmo?n, cangrejo, anguila, queso crema, cebolli?n y ajonjoli?, con topping de ensalada chucaika con cebolli?n, salsa ta?rtara y salsa unagui', '145'), ('106', 'Hiroito', 'Queso crema, masago, salmo?n ahumado, pescado blanco y cangrejo, con topping de salmo?n y atu?n, ensalada chucaika, salsa de anguila y ajonjoli?', '165'), ('107', 'Takemura', 'Queso crema, masago, cebolli?n, anguila, cangrejo, pescado blanco y aguacate, con topping de langostinos, pulpo y sirope de parchita', '159'), ('108', 'J.R. Roll', 'Queso crema, masago, cebolli?n, anguila, salmo?n, langostino y cangrejo, con topping de salsa gratinada de langostinos', '149'), ('109', 'Sounkio', 'Queso crema, masago, cebolli?n, aguacate, langostinos y cangrejo, con topping de salmo?n ahumado, salsa krakatoa y ajonjoli?', '142'), ('110', 'Poseidón', 'Queso crema, cebolli?n, anguila y kani con topping de salsa poseido?n y salsa anguila', '159'), ('111', 'Alaska', 'Queso crema, aguacate, salmo?n y ajonjoli?', '119'), ('112', 'Arcoiris', 'Cangrejo, pepino y aguacate con topping de salmo?n, atu?n y wakame', '129'), ('113', 'Hiroshima', 'Queso crema, masago, atu?n, cebolli?n, anguila y pescado blanco con topping de atu?n, salsa de anguila, wasabi y ajonjoli?', '149'), ('114', 'Oceanía', 'Cebolli?n, atu?n aderezado y ajonjoli?, con topping de salsa al curry y chutney de pin?a', '143'), ('115', 'Hitomi', 'Salmo?n, pescado blanco, queso crema, masago, manzana verde y mango, con topping de cangrejo y sirope de mora o parchita', '142'), ('116', 'Fantasía', 'Queso crema, cebolli?n, cangrejo y anguila con topping de masago, ensalada dinamita y salsa anguila', '160'), ('117', 'California', 'Cangrejo, pepino y aguacate con topping de masago y ajonjoli?', '98'), ('118', 'Maguro', 'Atu?n, queso crema, aguacate y ajonjoli?', '119'), ('119', 'Dinamita', 'Cangrejo, aguacate, pepino con topping de ensalada dinamita y ajonjoli?', '125'), ('120', 'Kawasaky', 'Salmo?n, atu?n, queso crema y cebolli?n, con topping de ensalada dinamita, anguila tostada, langostinos y salsa anguila', '142'), ('121', 'Unagui', 'Anguila, queso crema y cebolli?n con topping de ajonjoli? tostado con salsa de anguila', '150'), ('122', 'Fruti Roll', 'Queso crema, masago,pescado blanco, fresa y cangrejo con topping de kiwi y fresa con sirope de fresa', '119'), ('123', 'Kaizo', 'Roll con alga por fuera, queso crema, masago, cebolli?n, anguila caliente, aguacate, langostino, hoja de arroz rostizada, kani y salsa kaizo', '150'), ('124', 'Spicy Tuna', 'Pepino, cebolli?n y atu?n con topping de spicy tuna', '111'), ('125', 'Millenium', 'Queso crema, masago, cebolli?n, salmo?n, langostinos, cangrejo y anguila, con topping de pulpo, aguacate y salsa chutney de pin?a', '159'), ('126', 'Ely Roll', 'Queso crema, cebolli?n, aguacate, salmo?n y pescado blanco con topping de langostinos y atu?n con salsa de eneldo', '145'), ('127', 'Noruega', 'Salmo?n ahumado, queso crema y cebolli?n con topping de ajonjoli?', '149'), ('128', 'Fuji Sake', 'Ensalada dinamita, topping de salmo?n y salsa de anguila con ajonjoli?', '123'), ('129', 'Tropical', 'Anguila, kani, queso crema y cebolli?n con topping de pla?tano y salsa anguila', '142'), ('130', 'Fujiyama', 'Pulpo, langostino, cebolli?n y queso crema con topping de aguacate y wakame', '129'), ('131', 'Cosmopolitan', 'Queso crema, masago, cebolli?n, anguila, salmo?n y pescado blanco con topping de cangrejo y salsa de anguila', '136'), ('132', 'Tokyo', 'Calamares aderezados, pescado blanco, langostinos empanizados, queso crema, cebolli?n, aguacate con topping de masago, ajonjoli? y cangrejo empanizado', '155'), ('133', 'Da Vinci', 'Salmo?n, atu?n, queso crema, cebolli?n, anguila y cangrejo, con topping de ensalada dinamita, salsa anguila y salsa de mostaza', '145'), ('134', 'Ningio', 'Arroz, queso crema, masago, naranja, manzana verde, cangrejo y langostinos con topping de mango y sirope de parchita', '159'), ('135', 'Yamasa', 'Salmo?n, atu?n, anguila, cangrejo, cebolli?n, pulpo, pescado blanco, langostino, queso crema y masago, con topping de wakame y ensalada neptuno', '155'), ('136', 'Sacana', 'Salmo?n, queso crema, cebolli?n, cangrejo, y anguila con topping de salmo?n gratinado con salsa de anguila', '142'), ('137', 'Tocayo', 'Salmo?n, langostino, aguacate, cebolli?n y queso crema, con topping de salsa de langostinos', '159'), ('138', 'Vegetariano', 'Cebolli?n, pepino, aguacate, espa?rragos, zanahoria y ajonjoli? con topping de wakame', '87'), ('139', 'Alba', 'Queso crema, masago, cebolli?n, aguacate, cangrejo, pescado blanco y anguila, con topping de langostinos y salsa fundida alba', '134'), ('140', 'Divorcio', 'Salmo?n, anguila, queso crema, cangrejo y cebolli?n, con topping de salmo?n y anguila gratinada', '142'), ('141', 'Hollywood', 'Salmo?n, queso crema, cangrejo, manzana verde con topping de aguacate y salsa de parchita', '142');
COMMIT;

-- ----------------------------
--  Table structure for `rolls`
-- ----------------------------
DROP TABLE IF EXISTS `rolls`;
CREATE TABLE `rolls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `type` enum('SARROZ','TEMPSARROZ','TEMP','TEMPDENTRO','TRADICIONALES') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `rollsproducts_idx` (`product_id`),
  CONSTRAINT `rollsproducts` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `rolls`
-- ----------------------------
BEGIN;
INSERT INTO `rolls` VALUES ('1', '7', 'TRADICIONALES'), ('2', '8', 'TEMPSARROZ'), ('3', '75', 'SARROZ'), ('4', '76', 'SARROZ'), ('5', '77', 'SARROZ'), ('6', '78', 'SARROZ'), ('7', '79', 'SARROZ'), ('8', '80', 'SARROZ'), ('9', '82', 'TEMPSARROZ'), ('10', '83', 'TEMP'), ('11', '84', 'TEMP'), ('12', '85', 'TEMP'), ('13', '86', 'TEMP'), ('14', '87', 'TEMP'), ('15', '88', 'TEMP'), ('16', '89', 'TEMP'), ('17', '90', 'TEMP'), ('18', '91', 'TEMP'), ('19', '92', 'TEMPDENTRO'), ('20', '93', 'TEMPDENTRO'), ('21', '94', 'TEMPDENTRO'), ('22', '95', 'TEMPDENTRO'), ('23', '96', 'TEMPDENTRO'), ('24', '97', 'TEMPDENTRO'), ('25', '98', 'TEMPDENTRO'), ('26', '99', 'TEMPDENTRO'), ('27', '100', 'TEMPDENTRO'), ('28', '101', 'TEMPDENTRO'), ('29', '102', 'TEMPDENTRO'), ('30', '103', 'TEMPDENTRO'), ('31', '104', 'TRADICIONALES'), ('32', '105', 'TRADICIONALES'), ('33', '106', 'TRADICIONALES'), ('34', '107', 'TRADICIONALES'), ('35', '108', 'TRADICIONALES'), ('36', '109', 'TRADICIONALES'), ('37', '110', 'TRADICIONALES'), ('38', '111', 'TRADICIONALES'), ('39', '112', 'TRADICIONALES'), ('40', '113', 'TRADICIONALES'), ('41', '114', 'TRADICIONALES'), ('42', '115', 'TRADICIONALES'), ('43', '116', 'TRADICIONALES'), ('44', '117', 'TRADICIONALES'), ('45', '118', 'TRADICIONALES'), ('46', '119', 'TRADICIONALES'), ('47', '120', 'TRADICIONALES'), ('48', '121', 'TRADICIONALES'), ('49', '122', 'TRADICIONALES'), ('50', '123', 'TRADICIONALES'), ('51', '124', 'TRADICIONALES'), ('52', '125', 'TRADICIONALES'), ('53', '126', 'TRADICIONALES'), ('54', '127', 'TRADICIONALES'), ('56', '128', 'TRADICIONALES'), ('57', '129', 'TRADICIONALES'), ('58', '130', 'TRADICIONALES'), ('59', '131', 'TRADICIONALES'), ('60', '132', 'TRADICIONALES'), ('61', '133', 'TRADICIONALES'), ('62', '134', 'TRADICIONALES'), ('63', '135', 'TRADICIONALES'), ('64', '136', 'TRADICIONALES'), ('65', '137', 'TRADICIONALES'), ('66', '138', 'TRADICIONALES'), ('67', '139', 'TRADICIONALES'), ('68', '140', 'TRADICIONALES'), ('69', '141', 'TRADICIONALES');
COMMIT;

-- ----------------------------
--  Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` enum('MALE','FEMALE') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', 'Alejandro', 'Pardo Rodriguez', 'alejandro.pardo.r@gmail.com', '1988-09-30 16:49:45', 'MALE');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
