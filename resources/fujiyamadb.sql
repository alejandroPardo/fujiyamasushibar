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

 Date: 07/27/2013 19:38:05 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `appetizers`
-- ----------------------------
BEGIN;
INSERT INTO `appetizers` VALUES ('1', '10', 'CEVICHES'), ('2', '11', 'ENTRADAS');
COMMIT;

-- ----------------------------
--  Table structure for `ensaladas`
-- ----------------------------
DROP TABLE IF EXISTS `ensaladas`;
CREATE TABLE `ensaladas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `type` enum('ENSALADA','TEMAKI','NIGIRI') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `ensaladasproducts_idx` (`product_id`),
  CONSTRAINT `ensaladasproducts` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `ensaladas`
-- ----------------------------
BEGIN;
INSERT INTO `ensaladas` VALUES ('1', '3', 'ENSALADA');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `photos`
-- ----------------------------
BEGIN;
INSERT INTO `photos` VALUES ('1', '1', '../files/postres/banana-tempura-thumb.jpg', '../files/postres/banana-tempura.jpg'), ('2', '3', '../files/ensaladas/fujiyama-salad-thumb.jpg', '../files/ensaladas/fujiyama-salad.jpg'), ('3', '4', '../files/postres/helado-frito-thumb.jpg', '../files/postres/helado-frito.jpg'), ('4', '5', '../files/postres/crepe-de-nutella-thumb.jpg', '../files/postres/crepe-de-nutella.jpg'), ('5', '6', '../files/postres/banana-split-roll-thumb.jpg', '../files/postres/banana-split-roll.jpg'), ('6', '7', '../files/rolls/alaska-especial-thumb.jpg', '../files/rolls/alaska-especial.jpg'), ('7', '8', '../files/rolls/mitsuy-thumb.jpg', '../files/rolls/mitsuy.jpg'), ('8', '9', '../files/platos/chicken-fry-thumb.jpg', '../files/platos/chicken-fry.jpg'), ('9', '10', '../files/appetizers/ceviche-fujiyama-thumb.jpg', '../files/appetizers/ceviche-fujiyama.jpg'), ('10', '11', '../files/appetizers/croquetas-thumb.jpg', '../files/appetizers/croquetas.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `platos`
-- ----------------------------
BEGIN;
INSERT INTO `platos` VALUES ('1', '9');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `products`
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES ('1', 'Banana Tempura', 'Banana tempurizada acompañada de helado y sirope de chocolate', '85'), ('3', 'Fujiyama Salad', 'Salmón, kani, masago, atún, pescado blanco, aguacate, pulpo y wakame, aderezado con salsas dragón y anguila', '125'), ('4', 'Helado Frito', 'Porción de helado tempurizado con topping de chocolate y cambur', '81'), ('5', 'Crepe de Nutella', 'Crepe rellena con nutella acompañada de helado y sirope de chocolate', '85'), ('6', 'Banana Split Roll', 'Roll empanizado de cambur, manzana verde, queso crema, aguacate y nutella con topping de helado con nutella', '110'), ('7', 'Alaska Especial', 'Salmón, queso crema y aguacate con topping de salmón, aguacate, wakame y huevas de ikura', '149'), ('8', 'Mitsuy', 'Cangrejo, salmón, queso crema, cebollín y masago, empanizado con salsa de anguila y dragón', '136'), ('9', 'Chicken Fry', 'Arroz salteado con vegetales, pollo empanizado y vegetales a la plancha en salsa de ostras', '96'), ('10', 'Ceviche Fujiyama', 'Cortes finos de pescado blanco y pulpo, aguacate, aderezos mixtos, limón y ajonjolí', '132'), ('11', 'Croquetas', 'Croquetas de salmón, cangrejo o atún con salsa mostaza y tártara', '54');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `rolls`
-- ----------------------------
BEGIN;
INSERT INTO `rolls` VALUES ('1', '7', 'TRADICIONALES'), ('2', '8', 'TEMPSARROZ');
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
