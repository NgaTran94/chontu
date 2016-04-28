-- ----------------------------------------------------------------------------------------------------------------------------
-- TABLE ORDERS
-- 1. users, onlineusers
-- 2. colors, producttypes, sizes, products, 
-- 3. 
-- ----------------------------------------------------------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO';
SET TIME_ZONE = '+00:00';
SET NAMES 'utf8';
SET COLLATION_CONNECTION = 'utf8_general_ci'; 

-- ----------------------------------------------------------------------------------------------------------------------------
-- Table structure for ChoNTU
-- ----------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(5) unsigned NOT NULL DEFAULT '0',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT userID UNIQUE (user_id,username)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `onlineusers`;
CREATE TABLE `onlineusers` (
  `user_id` int(10) unsigned NOT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `customer_year` varchar(50) NOT NULL,
  `examination_callback` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `colors`;
CREATE TABLE IF NOT EXISTS `colors` (
  `color_id` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `color_name` varchar(50) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `producttypes`;
CREATE TABLE IF NOT EXISTS `producttypes` (
  `type_id` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `sizes`;
CREATE TABLE IF NOT EXISTS `sizes` (
  `size_id` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(5) unsigned NOT NULL,
  `size_name` varchar(50) NOT NULL,
  PRIMARY KEY (`size_id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(5) unsigned NOT NULL,
  `color_id` tinyint(5) unsigned NOT NULL,
  `size_id` tinyint(5) unsigned NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `cost` decimal(10,0) unsigned NOT NULL,
  `image` varchar(100) NOT NULL,
  `quality` tinyint(5) NOT NULL,
  `description` text,
  `user_id` int(10) unsigned NOT NULL,
  `views` smallint(8) NOT NULL DEFAULT '0',
  `likes` smallint(8) NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  KEY `mamau` (`color_id`),
  KEY `malsp` (`type_id`),
  KEY `user_id` (`user_id`),
  KEY `size_id` (`size_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- ----------------------------------------------------------------------------------------------------------------------------
-- Basic Data for ChoNTU
-- ----------------------------------------------------------------------------------------------------------------------------

-- add 1 admin user - admin - password: 1234
INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `first_name`, `last_name`, `phone`) VALUES
(10001, 'tienlq54cntt@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 3, 'Tien', 'Le Quyet', '0903566472');

INSERT INTO `onlineusers` (`user_id`, `session_id`, `time_stamp`, `customer_year`, `examination_callback`) VALUES
(10001, '4rp3e4v1l0cir066uiqkkcc4n3', '2015-05-06 00:58:07', '2015', 'index');

-- ----------------------------------------------------------------------------------------------------------------------------
-- Extra Data for ChoNTU
-- ----------------------------------------------------------------------------------------------------------------------------

INSERT INTO `colors` (`color_id`, `color_name`) VALUES
(1, 'Xanh'),
(2, 'Đỏ'),
(3, 'Tím'),
(4, 'Vàng');

INSERT INTO `producttypes` (`type_id`, `type_name`) VALUES
(1, 'Áo'),
(2, 'Quần'),
(3, 'Giày'),
(4, 'Sách');

INSERT INTO `sizes` (`size_id`, `type_id`, `size_name`) VALUES
(1, 1, 'S'),
(2, 1, 'M'),
(3, 1, 'L'),
(4, 1, 'XL'),
(5, 2, '26'),
(6, 2, '27'),
(7, 2, '28'),
(8, 2, '29'),
(9, 2, '30'),
(10, 2, '31'),
(11, 2, '32'),
(12, 2, '33'),
(13, 2, '34');

INSERT INTO `products` (`product_id`, `type_id`, `color_id`, `size_id`, `product_name`, `cost`, `image`, `quality`, `description`, `user_id`, `views`, `likes`, `post_date`) VALUES
(1, 1, 1, 1, 'Áo Sơ Mi', '150000', 'link hinh anh', 10, 'ao mới', 10001, 2, 10, '2016-04-22 00:00:00'),
(2, 2, 2, 2, 'Quần', '200000', 'link ảnh', 50, 'đẹp lắm cơ', 10001, 2, 2, '2016-04-22 10:38:21');

