
 DROP TABLE IF EXISTS `books`;

 CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) utf8mb4_unicode_ci NOT NULL,
  `openid` varchar(100) utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(100) utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(100) utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(1000) utf8mb4_unicode_ci NOT NULL,
  `price` varchar(100) utf8mb4_unicode_ci DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `tags` varchar(100) utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(100) utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL,
  `bookid` varchar(100) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;