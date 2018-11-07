DROP DATABASE IF EXISTS blog;
CREATE DATABASE blog;

USE blog;

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `id` int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `category_name` varchar(256) NOT NULL,
  `create_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4;

DROP TABLE IF EXISTS `tbl_tag`;
CREATE TABLE `tbl_tag` (
  `id` int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `name` varchar(256) NOT NULL,
  `create_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4;

DROP TABLE IF EXISTS `tbl_article`;
CREATE TABLE `tbl_article` (
  `id` int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `article_title` varchar(256) NOT NULL,
  `author` VARCHAR(256) NOT NULL,
  `summary` VARCHAR(4096) NULL,
  `article_content` VARCHAR(4096) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `create_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL,
  UNIQUE KEY `article_title` (`article_title`),
  FOREIGN KEY (tag_id) REFERENCES tbl_tag (id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (category_id) REFERENCES tbl_category (id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4;

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `user_name` varchar(256) NOT NULL,
  `crypt_pwd` varchar(256) NOT NULL,
  `register_time` timestamp NOT NULL,
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4;

DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE `tbl_comment` (
  `id` int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_content` varchar(4096) NOT NULL,
  `comment_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (article_id) REFERENCES tbl_article (id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (user_id) REFERENCES tbl_user (id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4;

DROP TABLE IF EXISTS `tbl_reply`;
CREATE TABLE `tbl_reply` (
  `id` int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_content` varchar(4096) NOT NULL,
  `comment_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (comment_id) REFERENCES tbl_comment (id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (user_id) REFERENCES tbl_user (id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4;

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin` (
  `id` int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `admin_name` varchar(256) NOT NULL,
  `crypt_pwd` varchar(256) NOT NULL,
  UNIQUE KEY `admin_name` (`admin_name`)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4;

