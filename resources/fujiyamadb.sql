/*
MySQL Data Transfer
Source Host: localhost
Source Database: fujiyamadb
Target Host: localhost
Target Database: fujiyamadb
Date: 29/08/2013 11:03:55 AM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for appetizers
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
-- Table structure for ensaladas
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
-- Table structure for photos
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
-- Table structure for platos
-- ----------------------------
DROP TABLE IF EXISTS `platos`;
CREATE TABLE `platos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `platosproducts_idx` (`product_id`),
  CONSTRAINT `platosproducts` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for postres
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
-- Table structure for product_tags
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
-- Table structure for products
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
-- Table structure for rolls
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for users
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `appetizers` VALUES ('1', '10', 'CEVICHES');
INSERT INTO `appetizers` VALUES ('2', '11', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('3', '12', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('4', '13', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('5', '14', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('6', '15', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('7', '16', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('8', '17', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('9', '18', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('10', '19', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('11', '20', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('12', '21', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('13', '22', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('14', '23', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('15', '24', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('16', '25', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('17', '26', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('18', '27', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('19', '28', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('20', '29', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('21', '30', 'ENTRADAS');
INSERT INTO `appetizers` VALUES ('22', '32', 'CEVICHES');
INSERT INTO `appetizers` VALUES ('23', '33', 'CEVICHES');
INSERT INTO `appetizers` VALUES ('24', '34', 'CEVICHES');
INSERT INTO `appetizers` VALUES ('25', '35', 'SOPAS');
INSERT INTO `appetizers` VALUES ('26', '36', 'SOPAS');
INSERT INTO `appetizers` VALUES ('27', '37', 'SOPAS');
INSERT INTO `appetizers` VALUES ('28', '38', 'SOPAS');
INSERT INTO `ensaladas` VALUES ('1', '3', 'ENSALADA');
INSERT INTO `ensaladas` VALUES ('2', '39', 'ENSALADA');
INSERT INTO `ensaladas` VALUES ('3', '40', 'ENSALADA');
INSERT INTO `ensaladas` VALUES ('4', '41', 'ENSALADA');
INSERT INTO `ensaladas` VALUES ('5', '42', 'ENSALADA');
INSERT INTO `ensaladas` VALUES ('6', '43', 'ENSALADA');
INSERT INTO `ensaladas` VALUES ('7', '44', 'ENSALADA');
INSERT INTO `ensaladas` VALUES ('8', '45', 'ENSALADA');
INSERT INTO `ensaladas` VALUES ('9', '46', 'NIGIRI');
INSERT INTO `ensaladas` VALUES ('10', '47', 'TEMAKI');
INSERT INTO `ensaladas` VALUES ('11', '48', 'SASHIMI');
INSERT INTO `ensaladas` VALUES ('12', '49', 'HOSOMAKI');
INSERT INTO `photos` VALUES ('1', '1', 'files/postres/banana-tempura-thumb.jpg', 'files/postres/banana-tempura.jpg');
INSERT INTO `photos` VALUES ('2', '3', 'files/ensaladas/fujiyama-salad-thumb.jpg', 'files/ensaladas/fujiyama-salad.jpg');
INSERT INTO `photos` VALUES ('3', '4', 'files/postres/helado-frito-thumb.jpg', 'files/postres/helado-frito.jpg');
INSERT INTO `photos` VALUES ('4', '5', 'files/postres/crepe-de-nutella-thumb.jpg', 'files/postres/crepe-de-nutella.jpg');
INSERT INTO `photos` VALUES ('5', '6', 'files/postres/banana-split-roll-thumb.jpg', 'files/postres/banana-split-roll.jpg');
INSERT INTO `photos` VALUES ('6', '7', 'files/rolls/alaska-especial-thumb.jpg', 'files/rolls/alaska-especial.jpg');
INSERT INTO `photos` VALUES ('7', '8', 'files/rolls/mitsuy-thumb.jpg', 'files/rolls/mitsuy.jpg');
INSERT INTO `photos` VALUES ('8', '9', 'files/platos/chicken-fry-thumb.jpg', 'files/platos/chicken-fry.jpg');
INSERT INTO `photos` VALUES ('9', '10', 'files/appetizers/ceviche-fujiyama-thumb.jpg', 'files/appetizers/ceviche-fujiyama.jpg');
INSERT INTO `photos` VALUES ('10', '11', 'files/appetizers/croquetas-thumb.jpg', 'files/appetizers/croquetas.jpg');
INSERT INTO `photos` VALUES ('11', '12', 'files/appetizers/yakitori-thumb.jpg', 'files/appetizers/yakitori.jpg');
INSERT INTO `photos` VALUES ('12', '13', 'files/appetizers/gyosas-thumb.jpg', 'files/appetizers/gyosas.jpg');
INSERT INTO `photos` VALUES ('13', '14', 'files/appetizers/eby-fry-thumb.jpg', 'files/appetizers/eby-fry.jpg');
INSERT INTO `photos` VALUES ('14', '15', 'files/appetizers/kani-crunch-thumb.jpg', 'files/appetizers/kani-crunch.jpg');
INSERT INTO `photos` VALUES ('15', '16', 'files/appetizers/kuku-roll-thumb.jpg', 'files/appetizers/kuku-roll.jpg');
INSERT INTO `photos` VALUES ('16', '17', 'files/appetizers/macanas-de-cangrejo-thumb.jpg', 'files/appetizers/macanas-de-cangrejo.jpg');
INSERT INTO `photos` VALUES ('17', '18', 'files/appetizers/ebi-tamochi-thumb.jpg', 'files/appetizers/ebi-tamochi.jpg');
INSERT INTO `photos` VALUES ('18', '19', 'files/appetizers/kushiyaki-thumb.jpg', 'files/appetizers/kushiyaki.jpg');
INSERT INTO `photos` VALUES ('19', '20', 'files/appetizers/ebiyaki-thumb.jpg', 'files/appetizers/ebiyaki.jpg');
INSERT INTO `photos` VALUES ('20', '21', 'files/appetizers/sobeagi-thumb.jpg', 'files/appetizers/sobeagi.jpg');
INSERT INTO `photos` VALUES ('21', '22', 'files/appetizers/atun-aderezado-thumb.jpg', 'files/appetizers/atun-aderezado.jpg');
INSERT INTO `photos` VALUES ('22', '23', 'files/appetizers/shumai-thumb.jpg', 'files/appetizers/shumai.jpg');
INSERT INTO `photos` VALUES ('23', '24', 'files/appetizers/tataki-de-atun-thumb.jpg', 'files/appetizers/tataki-de-atun.jpg');
INSERT INTO `photos` VALUES ('24', '25', 'files/appetizers/dina-crunch-thumb.jpg', 'files/appetizers/dina-crunch.jpg');
INSERT INTO `photos` VALUES ('25', '26', 'files/appetizers/edamame-thumb.jpg', 'files/appetizers/edamame.jpg');
INSERT INTO `photos` VALUES ('26', '27', 'files/appetizers/tsunami-thumb.jpg', 'files/appetizers/tsunami.jpg');
INSERT INTO `photos` VALUES ('27', '28', 'files/appetizers/eby-crunch-thumb.jpg', 'files/appetizers/eby-crunch.jpg');
INSERT INTO `photos` VALUES ('28', '29', 'files/appetizers/tuna-roll-thumb.jpg', 'files/appetizers/tuna-roll.jpg');
INSERT INTO `photos` VALUES ('29', '30', 'files/appetizers/asia-crunch-thumb.jpg', 'files/appetizers/asia-crunch.jpg');
INSERT INTO `photos` VALUES ('30', '32', 'files/appetizers/ceviche-tako-thumb.jpg', 'files/appetizers/ceviche-tako.jpg');
INSERT INTO `photos` VALUES ('31', '33', 'files/appetizers/ceviche-fujiyama-mixto-thumb.jpg', 'files/appetizers/ceviche-fujiyama-mixto.jpg');
INSERT INTO `photos` VALUES ('32', '34', 'files/appetizers/ceviche-white-fish-thumb.jpg', 'files/appetizers/ceviche-white-fish.jpg');
INSERT INTO `photos` VALUES ('33', '35', 'files/appetizers/sopa-miso-thumb.jpg', 'files/appetizers/sopa-miso.jpg');
INSERT INTO `photos` VALUES ('34', '36', 'files/appetizers/sopa-kanisu-thumb.jpg', 'files/appetizers/sopa-kanisu.jpg');
INSERT INTO `photos` VALUES ('35', '37', 'files/appetizers/sopa-yo-se-nabe-especial-thumb.jpg', 'files/appetizers/sopa-yo-se-nabe-especial.jpg');
INSERT INTO `photos` VALUES ('36', '38', 'files/appetizers/sopa-suimono-thumb.jpg', 'files/appetizers/sopa-suimono.jpg');
INSERT INTO `photos` VALUES ('37', '39', 'files/ensaladas/wakame-thumb.jpg', 'files/ensaladas/wakame.jpg');
INSERT INTO `photos` VALUES ('38', '40', 'files/ensaladas/wakame-especial-thumb.jpg', 'files/ensaladas/wakame-especial.jpg');
INSERT INTO `photos` VALUES ('39', '41', 'files/ensaladas/idako-thumb.jpg', 'files/ensaladas/idako.jpg');
INSERT INTO `photos` VALUES ('40', '42', 'files/ensaladas/chucaika-thumb.jpg', 'files/ensaladas/chucaika.jpg');
INSERT INTO `photos` VALUES ('41', '43', 'files/ensaladas/neptuno-thumb.jpg', 'files/ensaladas/neptuno.jpg');
INSERT INTO `photos` VALUES ('42', '44', 'files/ensaladas/surimi-salad-thumb.jpg', 'files/ensaladas/surimi-salad.jpg');
INSERT INTO `photos` VALUES ('43', '45', 'files/ensaladas/neptuno-especial-thumb.jpg', 'files/ensaladas/neptuno-especial-thumb.jpg');
INSERT INTO `photos` VALUES ('44', '46', 'files/ensaladas/nigiri-thumb.jpg', 'files/ensaladas/nigiri.jpg');
INSERT INTO `photos` VALUES ('45', '47', 'files/ensaladas/temaki-thumb.jpg', 'files/ensaladas/temaki.jpg');
INSERT INTO `photos` VALUES ('46', '48', 'files/ensaladas/sashimi-thumb.jpg', 'files/ensaladas/sashimi.jpg');
INSERT INTO `photos` VALUES ('47', '49', 'files/ensaladas/hosomaki-thumb.jpg', 'files/ensaladas/hosomaki-thumb.jpg');
INSERT INTO `photos` VALUES ('48', '50', 'files/platos/yakitoridon-thumb.jpg', 'files/platos/yakitoridon.jpg');
INSERT INTO `photos` VALUES ('49', '51', 'files/platos/yudon-thumb.jpg', 'files/platos/yudon.jpg');
INSERT INTO `photos` VALUES ('50', '52', 'files/platos/yakisoba-mixto-thumb.jpg', 'files/platos/yakisoba-mixto.jpg');
INSERT INTO `photos` VALUES ('51', '53', 'files/platos/ya-say-thumb.jpg', 'files/platos/ya-say.jpg');
INSERT INTO `photos` VALUES ('52', '54', 'files/platos/yakisoba-de-pollo-thumb.jpg', 'files/platos/yakisoba-de-pollo.jpg');
INSERT INTO `photos` VALUES ('53', '55', 'files/platos/yakisoba-de-langostinos-thumb.jpg', 'files/platos/yakisoba-de-langostinos.jpg');
INSERT INTO `photos` VALUES ('54', '56', 'files/platos/pollo-teriyaki-thumb.jpg', 'files/platos/pollo-teriyaki.jpg');
INSERT INTO `photos` VALUES ('55', '57', 'files/platos/lomito-teriyaki-thumb.jpg', 'files/platos/lomito-teriyaki.jpg');
INSERT INTO `photos` VALUES ('56', '58', 'files/platos/yakisoba-de-vegetales-thumb.jpg', 'files/platos/yakisoba-de-vegetales.jpg');
INSERT INTO `photos` VALUES ('57', '59', 'files/platos/yakisoba-de-lomito-thumb.jpg', 'files/platos/yakisoba-de-lomito.jpg');
INSERT INTO `photos` VALUES ('58', '60', 'files/platos/salmon-teriyaki-thumb.jpg', 'files/platos/salmon-teriyaki.jpg');
INSERT INTO `photos` VALUES ('59', '61', 'files/platos/bochan-thumb.jpg', 'files/platos/bochan.jpg');
INSERT INTO `photos` VALUES ('60', '62', 'files/platos/toreagy-de-pollo-thumb.jpg', 'files/platos/toreagy-de-pollo.jpg');
INSERT INTO `photos` VALUES ('61', '63', 'files/platos/tempura-udon-thumb.jpg', 'files/platos/tempura-udon.jpg');
INSERT INTO `photos` VALUES ('62', '64', 'files/platos/tempura-de-langostinos-thumb.jpg', 'files/platos/tempura-de-langostinos.jpg');
INSERT INTO `photos` VALUES ('64', '66', 'files/platos/yakimeshi-de-lomito-thumb.jpg', 'files/platos/yakimeshi-de-lomito.jpg');
INSERT INTO `photos` VALUES ('65', '67', 'files/platos/yakimeshi-de-langostinos-thumb.jpg', 'files/platos/yakimeshi-de-langostinos.jpg');
INSERT INTO `photos` VALUES ('66', '68', 'files/platos/tempura-soba-thumb.jpg', 'files/platos/tempura-soba.jpg');
INSERT INTO `photos` VALUES ('67', '69', 'files/platos/tempura-de-vegetales-thumb.jpg', 'files/platos/tempura-de-vegetales.jpg');
INSERT INTO `photos` VALUES ('68', '70', 'files/platos/tempura-mixto-thumb.jpg', 'files/platos/tempura-mixto.jpg');
INSERT INTO `photos` VALUES ('69', '71', 'files/platos/katsudon-thumb.jpg', 'files/platos/katsudon.jpg');
INSERT INTO `photos` VALUES ('70', '72', 'files/platos/yakimeshi-de-pollo-thumb.jpg', 'files/platos/yakimeshi-de-pollo.jpg');
INSERT INTO `photos` VALUES ('71', '73', 'files/platos/yakimeshi-mixto-thumb.jpg', 'files/platos/yakimeshi-mixto.jpg');
INSERT INTO `photos` VALUES ('72', '75', 'files/rolls/amigo-thumb.jpg', 'files/rolls/amigo.jpg');
INSERT INTO `photos` VALUES ('73', '76', 'files/rolls/kiury-thumb.jpg', 'files/rolls/kiury.jpg');
INSERT INTO `photos` VALUES ('74', '77', 'files/rolls/miyagi-thumb.jpg', 'files/rolls/miyagi.jpg');
INSERT INTO `photos` VALUES ('75', '78', 'files/rolls/fujiyama-especial-thumb.jpg', 'files/rolls/fujiyama-especial.jpg');
INSERT INTO `photos` VALUES ('76', '79', 'files/rolls/imperial-thumb.jpg', 'files/rolls/imperial.jpg');
INSERT INTO `photos` VALUES ('77', '80', 'files/rolls/okinawa-thumb.jpg', 'files/rolls/okinawa.jpg');
INSERT INTO `photos` VALUES ('78', '82', 'files/rolls/chacky-fry-thumb.jpg', 'files/rolls/chacky-fry.jpg');
INSERT INTO `photos` VALUES ('79', '83', 'files/rolls/tiger-thumb.jpg', 'files/rolls/tiger.jpg');
INSERT INTO `photos` VALUES ('80', '84', 'files/rolls/shogun-thumb.jpg', 'files/rolls/shogun.jpg');
INSERT INTO `photos` VALUES ('81', '85', 'files/rolls/fuji-crunch-thumb.jpg', 'files/rolls/fuji-crunch.jpg');
INSERT INTO `photos` VALUES ('82', '86', 'files/rolls/paco-thumb.jpg', 'files/rolls/paco.jpg');
INSERT INTO `photos` VALUES ('83', '87', 'files/rolls/roastbeef-thumb.jpg', 'files/rolls/roastbeef.jpg');
INSERT INTO `photos` VALUES ('84', '88', 'files/rolls/kioto-thumb.jpg', 'files/rolls/kioto.jpg');
INSERT INTO `photos` VALUES ('85', '89', 'files/rolls/nomura-thumb.jpg', 'files/rolls/nomura.jpg');
INSERT INTO `photos` VALUES ('86', '90', 'files/rolls/vulcano-thumb.jpg', 'files/rolls/vulcano.jpg');
INSERT INTO `photos` VALUES ('87', '91', 'files/rolls/takami-thumb.jpg', 'files/rolls/takami.jpg');
INSERT INTO `photos` VALUES ('88', '92', 'files/rolls/fire-roll-thumb.jpg', 'files/rolls/fire-roll.jpg');
INSERT INTO `photos` VALUES ('89', '93', 'files/rolls/ying-yang-thumb.jpg', 'files/rolls/ying-yang.jpg');
INSERT INTO `photos` VALUES ('90', '94', 'files/rolls/dt-roll-thumb.jpg', 'files/rolls/dt-roll.jpg');
INSERT INTO `photos` VALUES ('91', '95', 'files/rolls/crunch-tuna-thumb.jpg', 'files/rolls/crunch-tuna.jpg');
INSERT INTO `photos` VALUES ('92', '96', 'files/rolls/dragon-especial-thumb.jpg', 'files/rolls/dragon-especial.jpg');
INSERT INTO `photos` VALUES ('93', '97', 'files/rolls/salmon-skin-thumb.jpg', 'files/rolls/salmon-skin.jpg');
INSERT INTO `photos` VALUES ('94', '98', 'files/rolls/fujiroll-especial-thumb.jpg', 'files/rolls/fujiroll-especial.jpg');
INSERT INTO `photos` VALUES ('95', '99', 'files/rolls/samurai-thumb.jpg', 'files/rolls/samurai.jpg');
INSERT INTO `photos` VALUES ('96', '100', 'files/rolls/krakatoa-thumb.jpg', 'files/rolls/krakatoa.jpg');
INSERT INTO `photos` VALUES ('97', '101', 'files/rolls/ebiten-thumb.jpg', 'files/rolls/ebiten.jpg');
INSERT INTO `photos` VALUES ('98', '102', 'files/rolls/pirana-thumb.jpg', 'files/rolls/pirana.jpg');
INSERT INTO `photos` VALUES ('99', '103', 'files/rolls/naomi-thumb.jpg', 'files/rolls/naomi.jpg');
INSERT INTO `photos` VALUES ('100', '104', 'files/rolls/katana-thumb.jpg', 'files/rolls/katana.jpg');
INSERT INTO `photos` VALUES ('101', '105', 'files/rolls/eduardo-roll-thumb.jpg', 'files/rolls/eduardo-roll.jpg');
INSERT INTO `photos` VALUES ('102', '106', 'files/rolls/hiroito-thumb.jpg', 'files/rolls/hiroito.jpg');
INSERT INTO `photos` VALUES ('103', '107', 'files/rolls/takemura-thumb.jpg', 'files/rolls/takemura.jpg');
INSERT INTO `photos` VALUES ('104', '108', 'files/rolls/jr-roll-thumb.jpg', 'files/rolls/jr-roll.jpg');
INSERT INTO `photos` VALUES ('105', '109', 'files/rolls/sounkio-thumb.jpg', 'files/rolls/sounkio.jpg');
INSERT INTO `photos` VALUES ('106', '110', 'files/rolls/poseidon-thumb.jpg', 'files/rolls/poseidon.jpg');
INSERT INTO `photos` VALUES ('107', '111', 'files/rolls/alaska-thumb.jpg', 'files/rolls/alaska.jpg');
INSERT INTO `photos` VALUES ('108', '112', 'files/rolls/arcoiris-thumb.jpg', 'files/rolls/arcoiris.jpg');
INSERT INTO `photos` VALUES ('109', '113', 'files/rolls/hiroshima-thumb.jpg', 'files/rolls/hiroshima.jpg');
INSERT INTO `photos` VALUES ('110', '114', 'files/rolls/oceania-thumb.jpg', 'files/rolls/oceania.jpg');
INSERT INTO `photos` VALUES ('111', '115', 'files/rolls/hitomi-thumb.jpg', 'files/rolls/hitomi.jpg');
INSERT INTO `photos` VALUES ('112', '116', 'files/rolls/fantasia-thumb.jpg', 'files/rolls/fantasia.jpg');
INSERT INTO `photos` VALUES ('113', '117', 'files/rolls/california-thumb.jpg', 'files/rolls/california.jpg');
INSERT INTO `photos` VALUES ('114', '118', 'files/rolls/maguro-thumb.jpg', 'files/rolls/maguro.jpg');
INSERT INTO `photos` VALUES ('115', '119', 'files/rolls/dinamita-thumb.jpg', 'files/rolls/dinamita.jpg');
INSERT INTO `photos` VALUES ('116', '120', 'files/rolls/kawasaky-thumb.jpg', 'files/rolls/kawasaky.jpg');
INSERT INTO `photos` VALUES ('117', '121', 'files/rolls/unagui-thumb.jpg', 'files/rolls/unagui.jpg');
INSERT INTO `photos` VALUES ('118', '122', 'files/rolls/fruti-roll-thumb.jpg', 'files/rolls/fruti-roll.jpg');
INSERT INTO `photos` VALUES ('119', '123', 'files/rolls/kaizo-thumb.jpg', 'files/rolls/kaizo.jpg');
INSERT INTO `photos` VALUES ('120', '124', 'files/rolls/spicy-tuna-thumb.jpg', 'files/rolls/spicy-tuna.jpg');
INSERT INTO `photos` VALUES ('121', '125', 'files/rolls/millenium-thumb.jpg', 'files/rolls/millenium.jpg');
INSERT INTO `photos` VALUES ('122', '126', 'files/rolls/ely-roll-thumb.jpg', 'files/rolls/ely-roll.jpg');
INSERT INTO `photos` VALUES ('123', '127', 'files/rolls/noruega-thumb.jpg', 'files/rolls/noruega.jpg');
INSERT INTO `photos` VALUES ('124', '128', 'files/rolls/fuji-sake-thumb.jpg', 'files/rolls/fuji-sake.jpg');
INSERT INTO `photos` VALUES ('125', '129', 'files/rolls/tropical-thumb.jpg', 'files/rolls/tropical.jpg');
INSERT INTO `photos` VALUES ('126', '130', 'files/rolls/fujiyama-thumb.jpg', 'files/rolls/fujiyama.jpg');
INSERT INTO `photos` VALUES ('127', '131', 'files/rolls/cosmopolitan-thumb.jpg', 'files/rolls/cosmopolitan.jpg');
INSERT INTO `photos` VALUES ('128', '132', 'files/rolls/tokyo-thumb.jpg', 'files/rolls/tokyo.jpg');
INSERT INTO `photos` VALUES ('129', '133', 'files/rolls/da-vinci-thumb.jpg', 'files/rolls/da-vinci.jpg');
INSERT INTO `photos` VALUES ('130', '134', 'files/rolls/ningio-thumb.jpg', 'files/rolls/ningio.jpg');
INSERT INTO `photos` VALUES ('131', '135', 'files/rolls/yamasa-thumb.jpg', 'files/rolls/yamasa.jpg');
INSERT INTO `photos` VALUES ('132', '136', 'files/rolls/sacana-thumb.jpg', 'files/rolls/sacana.jpg');
INSERT INTO `photos` VALUES ('133', '137', 'files/rolls/tocayo-thumb.jpg', 'files/rolls/tocayo.jpg');
INSERT INTO `photos` VALUES ('134', '138', 'files/rolls/vegetariano-thumb.jpg', 'files/rolls/vegetariano.jpg');
INSERT INTO `photos` VALUES ('135', '139', 'files/rolls/alba-thumb.jpg', 'files/rolls/alba.jpg');
INSERT INTO `photos` VALUES ('136', '140', 'files/rolls/divorcio-thumb.jpg', 'files/rolls/divorcio.jpg');
INSERT INTO `photos` VALUES ('137', '141', 'files/rolls/hollywood-thumb.jpg', 'files/rolls/hollywood.jpg');
INSERT INTO `platos` VALUES ('1', '9');
INSERT INTO `platos` VALUES ('2', '50');
INSERT INTO `platos` VALUES ('3', '51');
INSERT INTO `platos` VALUES ('4', '52');
INSERT INTO `platos` VALUES ('5', '53');
INSERT INTO `platos` VALUES ('6', '54');
INSERT INTO `platos` VALUES ('7', '55');
INSERT INTO `platos` VALUES ('8', '56');
INSERT INTO `platos` VALUES ('9', '57');
INSERT INTO `platos` VALUES ('10', '58');
INSERT INTO `platos` VALUES ('11', '59');
INSERT INTO `platos` VALUES ('12', '60');
INSERT INTO `platos` VALUES ('13', '61');
INSERT INTO `platos` VALUES ('14', '62');
INSERT INTO `platos` VALUES ('15', '63');
INSERT INTO `platos` VALUES ('16', '64');
INSERT INTO `platos` VALUES ('18', '66');
INSERT INTO `platos` VALUES ('19', '67');
INSERT INTO `platos` VALUES ('20', '68');
INSERT INTO `platos` VALUES ('21', '69');
INSERT INTO `platos` VALUES ('22', '70');
INSERT INTO `platos` VALUES ('23', '71');
INSERT INTO `platos` VALUES ('24', '72');
INSERT INTO `platos` VALUES ('25', '73');
INSERT INTO `postres` VALUES ('1', '1');
INSERT INTO `postres` VALUES ('2', '4');
INSERT INTO `postres` VALUES ('3', '5');
INSERT INTO `postres` VALUES ('4', '6');
INSERT INTO `products` VALUES ('1', 'Banana Tempura', 'Banana tempurizada acompañada de helado y sirope de chocolate', '85');
INSERT INTO `products` VALUES ('3', 'Fujiyama Salad', 'Salmón, kani, masago, atún, pescado blanco, aguacate, pulpo y wakame, aderezado con salsas dragón y anguila', '125');
INSERT INTO `products` VALUES ('4', 'Helado Frito', 'Porción de helado tempurizado con topping de chocolate y cambur', '81');
INSERT INTO `products` VALUES ('5', 'Crepe de Nutella', 'Crepe rellena con nutella acompañada de helado y sirope de chocolate', '85');
INSERT INTO `products` VALUES ('6', 'Banana Split Roll', 'Roll empanizado de cambur, manzana verde, queso crema, aguacate y nutella con topping de helado con nutella', '110');
INSERT INTO `products` VALUES ('7', 'Alaska Especial', 'Salmón, queso crema y aguacate con topping de salmón, aguacate, wakame y huevas de ikura', '149');
INSERT INTO `products` VALUES ('8', 'Mitsuy', 'Cangrejo, salmón, queso crema, cebollín y masago, empanizado con salsa de anguila y dragón', '136');
INSERT INTO `products` VALUES ('9', 'Chicken Fry', 'Arroz salteado con vegetales, pollo empanizado y vegetales a la plancha en salsa de ostras', '96');
INSERT INTO `products` VALUES ('10', 'Ceviche Fujiyama', 'Cortes finos de pescado blanco y pulpo, aguacate, aderezos mixtos, limón y ajonjolí', '132');
INSERT INTO `products` VALUES ('11', 'Croquetas', 'Croquetas de salmón, cangrejo o atún con salsa mostaza y tártara', '54');
INSERT INTO `products` VALUES ('12', 'Yakitori', 'Tres pinchos de pollo con cebolli?n y salsa teriyaki', '79');
INSERT INTO `products` VALUES ('13', 'Gyosas', 'Empanaditas rellenas de cerdo y vegetales con salsa gyosa', '62');
INSERT INTO `products` VALUES ('14', 'Eby Fry', 'Cinco langostinos empanizados con salsa tokasu', '88');
INSERT INTO `products` VALUES ('15', 'Kani Crunch', 'Cangrejo empanizado con salsa drago?n', '76');
INSERT INTO `products` VALUES ('16', 'Kuku Roll', 'Pescado blanco relleno de queso crema y aguacate, empanizado con salsa naomi y unagi', '82');
INSERT INTO `products` VALUES ('17', 'Macanas de Cangrejo', 'Croquetas de cangrejo con sus macanas y salsa ta?rtara', '78');
INSERT INTO `products` VALUES ('18', 'Ebi Tamochi', 'Langostinos rebozados en hilos de arroz con salsa de jengibre', '114');
INSERT INTO `products` VALUES ('19', 'Kushiyaki', 'Tres pinchos de lomito con cebolli?n y salsa teriyaki', '69');
INSERT INTO `products` VALUES ('20', 'Ebiyaki', 'Tres pinchos de langostinos con cebolli?n y salsa teriyaki', '79');
INSERT INTO `products` VALUES ('21', 'Sobeagi', 'Salmón tempurizado con limo?n aguacate y queso crema, con topping salsa de anguila', '89');
INSERT INTO `products` VALUES ('22', 'Atún Aderezado', 'Atún sobrasado a la pimienta, con salsa al curry, ajonjoli? y salsa chutney de pin?a', '80');
INSERT INTO `products` VALUES ('23', 'Shumai', 'Empanaditas rellenas de vegetales o langostinos con salsa gyosa', '70');
INSERT INTO `products` VALUES ('24', 'Tataki de Atún', 'Atu?n sobrasado con salsa ponzu y ajonjoli?', '89');
INSERT INTO `products` VALUES ('25', 'Dina Crunch', 'Ensalada Dinamita Tempurizada y salsa anguila', '68');
INSERT INTO `products` VALUES ('26', 'Edamame', 'Vainitas Japonesas', '65');
INSERT INTO `products` VALUES ('27', 'Tsunami', 'Berenjena rellena con salsa de langostinos, tempura y cebolli?n', '79');
INSERT INTO `products` VALUES ('28', 'Eby Crunch', 'Hojuela de camaro?n deshidratada con crema de langostinos empanizados, masago, cebolli?n, salsa de anguila y topping de ajonjoli?', '65');
INSERT INTO `products` VALUES ('29', 'Tuna Roll', 'Roll con atu?n, queso crema, aguacate, con topping de alfalfa, salsa chutney de pin?a y salsa imperial', '88');
INSERT INTO `products` VALUES ('30', 'Asia Crunch', 'Arroz con cebolli?n y un toque de picante crunch estilo nigiri, rodeado de salmo?n y crema divorcio con salsa de anguila', '101');
INSERT INTO `products` VALUES ('32', 'Ceviche Tako', 'Cortes finos de pulpo, aderezos mixtos, limo?n y ajonjoli?', '140');
INSERT INTO `products` VALUES ('33', 'Ceviche Fujiyama Mixto', 'Cortes finos de pescados y mariscos variados, limo?n, aderezos mixtos, ajonjoli (picante)', '132');
INSERT INTO `products` VALUES ('34', 'Ceviche White Fish', 'Pescado blanco con papa rebanada, ajonjoli?, limo?n y aderezos mixtos (picante)', '109');
INSERT INTO `products` VALUES ('35', 'Sopa Miso', 'Sopa con cebolli?n y tofu? (Queso de Soya)', '65');
INSERT INTO `products` VALUES ('36', 'Sopa Kanisú', 'Caldo de pescado, cangrejo, langostinos, huevo y cebolli?n', '82');
INSERT INTO `products` VALUES ('37', 'Sopa Yo Se Nabe Especial', 'Sopa con trozos de pescado blanco, atu?n, salmo?n, langostinos y pasta japonesa', '130');
INSERT INTO `products` VALUES ('38', 'Sopa Suimono', 'Sopa de pescado o pollo', '75');
INSERT INTO `products` VALUES ('39', 'Wakame', 'Algas, kani y salsa drago?n', '68');
INSERT INTO `products` VALUES ('40', 'Wakame Especial', 'Atu?n, cangrejo, wakame, salmo?n y pescado blanco aderezados con salsa drago?n y salsa de anguila', '122');
INSERT INTO `products` VALUES ('41', 'Idako', 'Pulpo bebe con wakame especial', '140');
INSERT INTO `products` VALUES ('42', 'Chucaika', 'Ensalada dinamita con calamar', '125');
INSERT INTO `products` VALUES ('43', 'Neptuno', 'Ensalada dinamita con salmo?n y mayonesa', '120');
INSERT INTO `products` VALUES ('44', 'Surimi Salad', 'Cangrejo, masago y wakame, con un toque de mayonesa y aguacate', '98');
INSERT INTO `products` VALUES ('45', 'Neptuno Especial', 'Ensalada dinamita y salmo?n en una hoja de arroz aderezada con aguacate, alfalfa, mango y salsas chutney de pin?a, naomi y anguila', '150');
INSERT INTO `products` VALUES ('46', 'Nigiri', 'Salmo?n, langostino, anguila, atu?n, cangrejo, macarela, huevas de salmo?n, pulpo', '48');
INSERT INTO `products` VALUES ('47', 'Temaki', 'Alaska, California, Unagui, Maguro, Salmo?n, Kani, Atu?n, Mixto', '162');
INSERT INTO `products` VALUES ('48', 'Sashimi', 'Salmo?n, langostino, anguila, macarela mixto I (salmo?n y atu?n), mixto II (salmo?n, atu?n y sierra)', '179');
INSERT INTO `products` VALUES ('49', 'Hosomaki', 'Salmo?n, atu?n, cangrejo, anguila, langostino, pepino', '71');
INSERT INTO `products` VALUES ('50', 'Yakitoridón', 'Arroz japone?s con trocitos de pollo en salsa teriyaki', '101');
INSERT INTO `products` VALUES ('51', 'Yudón', 'Arroz japone?s con trocitos de lomito en salsa teriyaki', '109');
INSERT INTO `products` VALUES ('52', 'Yakisoba Mixto', 'Vegetales salteados con pollo, lomito, langostinos y pasta japonesa', '105');
INSERT INTO `products` VALUES ('53', 'Ya-say', 'Vegetales salteados', '70');
INSERT INTO `products` VALUES ('54', 'Yakisoba de Pollo', 'Vegetales salteados con pollo y pasta japonesa', '100');
INSERT INTO `products` VALUES ('55', 'Yakisoba de Langostinos', 'Vegetales salteados con langostinos y pasta japonesa', '129');
INSERT INTO `products` VALUES ('56', 'Pollo Teriyaki', 'Pechuga de pollo con vegetales y arroz', '102');
INSERT INTO `products` VALUES ('57', 'Lomito Teriyaki', 'Lomito con vegetales y arroz', '115');
INSERT INTO `products` VALUES ('58', 'Yakisoba de Vegetales', 'Vegetales salteados con pasta japonesa', '90');
INSERT INTO `products` VALUES ('59', 'Yakisoba de Lomito', 'Vegetales salteados con lomito y pasta japonesa', '119');
INSERT INTO `products` VALUES ('60', 'Salmón Teriyaki', 'Salmo?n, arroz y vegetales salteados', '125');
INSERT INTO `products` VALUES ('61', 'Bochán', 'Vaporizado de vegetales, pescado blanco, salmo?n, atu?n, cangrejo y langostinos', '132');
INSERT INTO `products` VALUES ('62', 'Toreagy de Pollo', 'Pollo marinado en salsa de jengibre con arroz salteado y vegetales en salsa de ostras', '100');
INSERT INTO `products` VALUES ('63', 'Tempura Udón', 'Sopa compuesta con pasta udo?n, cebolli?n, langostinos y vegetales tempurizados', '90');
INSERT INTO `products` VALUES ('64', 'Tempura de Langostinos', 'Langostinos tempurizados con salsa tempura', '135');
INSERT INTO `products` VALUES ('66', 'Yakimeshi de Lomito', 'Arroz satinado con vegetales y lomito', '119');
INSERT INTO `products` VALUES ('67', 'Yakimeshi de Langostinos', 'Arroz satinado con vegetales y langostinos', '129');
INSERT INTO `products` VALUES ('68', 'Tempura Soba', 'Sopa compuesta con pasta soba, cebollin, langostinos y vegetales tempurizados', '90');
INSERT INTO `products` VALUES ('69', 'Tempura de Vegetales', 'Vegetales tempurizados con salsa tempura', '86');
INSERT INTO `products` VALUES ('70', 'Tempura Mixto', 'Vegetales variados con langostinos y salsa tempura', '125');
INSERT INTO `products` VALUES ('71', 'Katsudón', 'Pechuga de pollo empanizada en salsa tempura con arroz japone?s, cebolli?n y huevo', '98');
INSERT INTO `products` VALUES ('72', 'Yakimeshi de Pollo', 'Arroz satinado con vegetales y pollo', '100');
INSERT INTO `products` VALUES ('73', 'Yakimeshi Mixto', 'Arroz satinado con vegetales, pollo, lomito y langostinos', '115');
INSERT INTO `products` VALUES ('75', 'Amigo', 'Salmo?n, atu?n, cangrejo, pepino, aguacate y cebolli?n con topping de wakame', '128');
INSERT INTO `products` VALUES ('76', 'Kiury', 'Pepino relleno de salmo?n, atu?n, cangrejo, aguacate, queso crema y cebollin con topping de ikura y salsa ponzu', '101');
INSERT INTO `products` VALUES ('77', 'Miyagi', 'Pescado blanco, atu?n, cangrejo, queso crema, masago, cebolli?n, anguila, wakame y topping de salsa de anguila', '130');
INSERT INTO `products` VALUES ('78', 'Fujiyama Especial', 'Salmo?n, atu?n, pescado blanco, langostino, anguila, cangrejo, cebolli?n, queso crema y masago con topping de wakame, ensalada neptuno y salsa unagui', '165');
INSERT INTO `products` VALUES ('79', 'Imperial', 'Hoja de arroz, salmo?n, atu?n, cebolli?n, queso crema, mango y alfalfa con topping de salsa imperial y chutney de pin?a', '122');
INSERT INTO `products` VALUES ('80', 'Okinawa', 'Envuelto en pla?tano frito, queso crema, masago, ensalada dinamita, salmo?n ahumado, salsa unagui y ajonjoli?', '126');
INSERT INTO `products` VALUES ('82', 'Chacky Fry', 'Pla?tano relleno de queso crema, masago, aguacate y salmo?n empanizado con topping de salsa de anguila', '95');
INSERT INTO `products` VALUES ('83', 'Tiger', 'Salmo?n, queso crema, cebolli?n con topping de salsa de anguila', '114');
INSERT INTO `products` VALUES ('84', 'Shogún', 'Queso crema, masago, cebolli?n, langostino empanizado, cangrejo y aguacate, con topping de ensalada dinamita y salsa de anguila', '136');
INSERT INTO `products` VALUES ('85', 'Fuji Crunch', 'Salmo?n, queso crema, masago, cebolli?n, anguila y mango, empanizado con cereal y salsa anguila', '129');
INSERT INTO `products` VALUES ('86', 'Paco', 'Salmo?n ahumado, anguila, masago, langostinos, cangrejo, queso crema y cebolli?n, con topping de ensalada dinamita y salsa de anguila', '155');
INSERT INTO `products` VALUES ('87', 'Roastbeef', 'Pollo, lomito, queso crema, cebolli?n y champin?ones, con topping de salsa teriyaki y salsa mostaza', '112');
INSERT INTO `products` VALUES ('88', 'Kioto', 'Queso crema, masago, cebolli?n, anguila, piel de salmo?n, langostinos, wakame y kani con salsa de anguila', '139');
INSERT INTO `products` VALUES ('89', 'Nomura', 'Pescado blanco empanizado, ensalada dinamita, queso crema, cebolli?n, aguacate y masago con topping de pescado blanco empanizado y salsa de anguila', '119');
INSERT INTO `products` VALUES ('90', 'Vulcano', 'Queso crema, cangrejo, langostinos y masago, con topping de crema de cangrejo', '132');
INSERT INTO `products` VALUES ('91', 'Takami', 'Salmo?n, cangrejo, anguila, cebolli?n, queso crema, masago y langostinos con topping de ensalada dinamita y salsa de anguila', '152');
INSERT INTO `products` VALUES ('92', 'Fire Roll', 'Queso crema al amaretto, ensalada dinamita, cebolli?n y kani crunch con topping de pla?tano y queso tipo brie con salsa de anguila', '135');
INSERT INTO `products` VALUES ('93', 'Ying Yang', 'Queso crema, kani crunch, berros tempurizados con topping de atu?n aderezado, aguacate y salsa chutney de pin?a', '132');
INSERT INTO `products` VALUES ('94', 'DT Roll', 'Queso crema, masago, cebolli?n, aguacate, langostinos empanizados, cangrejo empanizado y anguila empanizada con topping de salmon, atu?n, salsa drago?n y salsa de anguila', '157');
INSERT INTO `products` VALUES ('95', 'Crunch Tuna', 'Berros tempurizados con topping de spicy tuna', '103');
INSERT INTO `products` VALUES ('96', 'Dragón Especial', 'Queso crema, cebolli?n, masago, cangrejo y langostinos empanizados, con topping de aguacate y salsa drago?n', '123');
INSERT INTO `products` VALUES ('97', 'Salmón Skin', 'Piel de salmo?n, queso crema, ajonjoli?, cebolli?n y salsa de anguila', '102');
INSERT INTO `products` VALUES ('98', 'Fujiroll Especial', 'Langostino empanizado, cangrejo empanizado, cebolli?n y queso crema, con topping de langostinos tempurizados con salsa fuji', '142');
INSERT INTO `products` VALUES ('99', 'Samurai', 'Queso crema, perejil tempurizado, aguacate y salmo?n con topping de langostinos tempurizados con salsa samurai', '132');
INSERT INTO `products` VALUES ('100', 'Krakatoa', 'Ensalada dinamita, cebolli?n, kani crunch, espa?rragos y salmo?n empanizado con topping de aguacate e hilos de papa con salsa kracatoa', '134');
INSERT INTO `products` VALUES ('101', 'Ebiten', 'Langostinos tempurizados y berros crunch y ajonjoli?', '111');
INSERT INTO `products` VALUES ('102', 'Piraña', 'Salmo?n, langostinos tempurizados, queso crema, masago, cebolli?n y aguacate, con topping de ensalada dinamita', '139');
INSERT INTO `products` VALUES ('103', 'Naomi', 'Queso crema, cebolli?n, masago, anguila y kani empanizado con topping de langostinos, naranja, salsa naomi y salsa anguila', '135');
INSERT INTO `products` VALUES ('104', 'Katana', 'Atu?n, salmo?n, cangrejo, cebolli?n, queso crema y ajonjoli?', '142');
INSERT INTO `products` VALUES ('105', 'Eduardo Roll', 'Salmo?n, cangrejo, anguila, queso crema, cebolli?n y ajonjoli?, con topping de ensalada chucaika con cebolli?n, salsa ta?rtara y salsa unagui', '145');
INSERT INTO `products` VALUES ('106', 'Hiroito', 'Queso crema, masago, salmo?n ahumado, pescado blanco y cangrejo, con topping de salmo?n y atu?n, ensalada chucaika, salsa de anguila y ajonjoli?', '165');
INSERT INTO `products` VALUES ('107', 'Takemura', 'Queso crema, masago, cebolli?n, anguila, cangrejo, pescado blanco y aguacate, con topping de langostinos, pulpo y sirope de parchita', '159');
INSERT INTO `products` VALUES ('108', 'J.R. Roll', 'Queso crema, masago, cebolli?n, anguila, salmo?n, langostino y cangrejo, con topping de salsa gratinada de langostinos', '149');
INSERT INTO `products` VALUES ('109', 'Sounkio', 'Queso crema, masago, cebolli?n, aguacate, langostinos y cangrejo, con topping de salmo?n ahumado, salsa krakatoa y ajonjoli?', '142');
INSERT INTO `products` VALUES ('110', 'Poseidón', 'Queso crema, cebolli?n, anguila y kani con topping de salsa poseido?n y salsa anguila', '159');
INSERT INTO `products` VALUES ('111', 'Alaska', 'Queso crema, aguacate, salmo?n y ajonjoli?', '119');
INSERT INTO `products` VALUES ('112', 'Arcoiris', 'Cangrejo, pepino y aguacate con topping de salmo?n, atu?n y wakame', '129');
INSERT INTO `products` VALUES ('113', 'Hiroshima', 'Queso crema, masago, atu?n, cebolli?n, anguila y pescado blanco con topping de atu?n, salsa de anguila, wasabi y ajonjoli?', '149');
INSERT INTO `products` VALUES ('114', 'Oceanía', 'Cebolli?n, atu?n aderezado y ajonjoli?, con topping de salsa al curry y chutney de pin?a', '143');
INSERT INTO `products` VALUES ('115', 'Hitomi', 'Salmo?n, pescado blanco, queso crema, masago, manzana verde y mango, con topping de cangrejo y sirope de mora o parchita', '142');
INSERT INTO `products` VALUES ('116', 'Fantasía', 'Queso crema, cebolli?n, cangrejo y anguila con topping de masago, ensalada dinamita y salsa anguila', '160');
INSERT INTO `products` VALUES ('117', 'California', 'Cangrejo, pepino y aguacate con topping de masago y ajonjoli?', '98');
INSERT INTO `products` VALUES ('118', 'Maguro', 'Atu?n, queso crema, aguacate y ajonjoli?', '119');
INSERT INTO `products` VALUES ('119', 'Dinamita', 'Cangrejo, aguacate, pepino con topping de ensalada dinamita y ajonjoli?', '125');
INSERT INTO `products` VALUES ('120', 'Kawasaky', 'Salmo?n, atu?n, queso crema y cebolli?n, con topping de ensalada dinamita, anguila tostada, langostinos y salsa anguila', '142');
INSERT INTO `products` VALUES ('121', 'Unagui', 'Anguila, queso crema y cebolli?n con topping de ajonjoli? tostado con salsa de anguila', '150');
INSERT INTO `products` VALUES ('122', 'Fruti Roll', 'Queso crema, masago,pescado blanco, fresa y cangrejo con topping de kiwi y fresa con sirope de fresa', '119');
INSERT INTO `products` VALUES ('123', 'Kaizo', 'Roll con alga por fuera, queso crema, masago, cebolli?n, anguila caliente, aguacate, langostino, hoja de arroz rostizada, kani y salsa kaizo', '150');
INSERT INTO `products` VALUES ('124', 'Spicy Tuna', 'Pepino, cebolli?n y atu?n con topping de spicy tuna', '111');
INSERT INTO `products` VALUES ('125', 'Millenium', 'Queso crema, masago, cebolli?n, salmo?n, langostinos, cangrejo y anguila, con topping de pulpo, aguacate y salsa chutney de pin?a', '159');
INSERT INTO `products` VALUES ('126', 'Ely Roll', 'Queso crema, cebolli?n, aguacate, salmo?n y pescado blanco con topping de langostinos y atu?n con salsa de eneldo', '145');
INSERT INTO `products` VALUES ('127', 'Noruega', 'Salmo?n ahumado, queso crema y cebolli?n con topping de ajonjoli?', '149');
INSERT INTO `products` VALUES ('128', 'Fuji Sake', 'Ensalada dinamita, topping de salmo?n y salsa de anguila con ajonjoli?', '123');
INSERT INTO `products` VALUES ('129', 'Tropical', 'Anguila, kani, queso crema y cebolli?n con topping de pla?tano y salsa anguila', '142');
INSERT INTO `products` VALUES ('130', 'Fujiyama', 'Pulpo, langostino, cebolli?n y queso crema con topping de aguacate y wakame', '129');
INSERT INTO `products` VALUES ('131', 'Cosmopolitan', 'Queso crema, masago, cebolli?n, anguila, salmo?n y pescado blanco con topping de cangrejo y salsa de anguila', '136');
INSERT INTO `products` VALUES ('132', 'Tokyo', 'Calamares aderezados, pescado blanco, langostinos empanizados, queso crema, cebolli?n, aguacate con topping de masago, ajonjoli? y cangrejo empanizado', '155');
INSERT INTO `products` VALUES ('133', 'Da Vinci', 'Salmo?n, atu?n, queso crema, cebolli?n, anguila y cangrejo, con topping de ensalada dinamita, salsa anguila y salsa de mostaza', '145');
INSERT INTO `products` VALUES ('134', 'Ningio', 'Arroz, queso crema, masago, naranja, manzana verde, cangrejo y langostinos con topping de mango y sirope de parchita', '159');
INSERT INTO `products` VALUES ('135', 'Yamasa', 'Salmo?n, atu?n, anguila, cangrejo, cebolli?n, pulpo, pescado blanco, langostino, queso crema y masago, con topping de wakame y ensalada neptuno', '155');
INSERT INTO `products` VALUES ('136', 'Sacana', 'Salmo?n, queso crema, cebolli?n, cangrejo, y anguila con topping de salmo?n gratinado con salsa de anguila', '142');
INSERT INTO `products` VALUES ('137', 'Tocayo', 'Salmo?n, langostino, aguacate, cebolli?n y queso crema, con topping de salsa de langostinos', '159');
INSERT INTO `products` VALUES ('138', 'Vegetariano', 'Cebolli?n, pepino, aguacate, espa?rragos, zanahoria y ajonjoli? con topping de wakame', '87');
INSERT INTO `products` VALUES ('139', 'Alba', 'Queso crema, masago, cebolli?n, aguacate, cangrejo, pescado blanco y anguila, con topping de langostinos y salsa fundida alba', '134');
INSERT INTO `products` VALUES ('140', 'Divorcio', 'Salmo?n, anguila, queso crema, cangrejo y cebolli?n, con topping de salmo?n y anguila gratinada', '142');
INSERT INTO `products` VALUES ('141', 'Hollywood', 'Salmo?n, queso crema, cangrejo, manzana verde con topping de aguacate y salsa de parchita', '142');
INSERT INTO `rolls` VALUES ('1', '7', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('2', '8', 'TEMPSARROZ');
INSERT INTO `rolls` VALUES ('3', '75', 'SARROZ');
INSERT INTO `rolls` VALUES ('4', '76', 'SARROZ');
INSERT INTO `rolls` VALUES ('5', '77', 'SARROZ');
INSERT INTO `rolls` VALUES ('6', '78', 'SARROZ');
INSERT INTO `rolls` VALUES ('7', '79', 'SARROZ');
INSERT INTO `rolls` VALUES ('8', '80', 'SARROZ');
INSERT INTO `rolls` VALUES ('9', '82', 'TEMPSARROZ');
INSERT INTO `rolls` VALUES ('10', '83', 'TEMP');
INSERT INTO `rolls` VALUES ('11', '84', 'TEMP');
INSERT INTO `rolls` VALUES ('12', '85', 'TEMP');
INSERT INTO `rolls` VALUES ('13', '86', 'TEMP');
INSERT INTO `rolls` VALUES ('14', '87', 'TEMP');
INSERT INTO `rolls` VALUES ('15', '88', 'TEMP');
INSERT INTO `rolls` VALUES ('16', '89', 'TEMP');
INSERT INTO `rolls` VALUES ('17', '90', 'TEMP');
INSERT INTO `rolls` VALUES ('18', '91', 'TEMP');
INSERT INTO `rolls` VALUES ('19', '92', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('20', '93', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('21', '94', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('22', '95', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('23', '96', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('24', '97', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('25', '98', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('26', '99', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('27', '100', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('28', '101', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('29', '102', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('30', '103', 'TEMPDENTRO');
INSERT INTO `rolls` VALUES ('31', '104', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('32', '105', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('33', '106', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('34', '107', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('35', '108', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('36', '109', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('37', '110', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('38', '111', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('39', '112', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('40', '113', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('41', '114', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('42', '115', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('43', '116', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('44', '117', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('45', '118', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('46', '119', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('47', '120', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('48', '121', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('49', '122', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('50', '123', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('51', '124', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('52', '125', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('53', '126', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('54', '127', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('56', '128', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('57', '129', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('58', '130', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('59', '131', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('60', '132', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('61', '133', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('62', '134', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('63', '135', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('64', '136', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('65', '137', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('66', '138', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('67', '139', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('68', '140', 'TRADICIONALES');
INSERT INTO `rolls` VALUES ('69', '141', 'TRADICIONALES');
INSERT INTO `users` VALUES ('1', 'Alejandro', 'Pardo Rodriguez', 'alejandro.pardo.r@gmail.com', '1988-09-30 16:49:45', 'MALE');
