/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : bbs

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 07/01/2021 10:25:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentID` int NOT NULL,
  `userID` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `postID` int DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`commentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `postID` int NOT NULL,
  `userID` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `point` int DEFAULT NULL,
  `replies` int DEFAULT NULL,
  `views` int DEFAULT NULL,
  `top` int DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`postID`,`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `wealth` int DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;
