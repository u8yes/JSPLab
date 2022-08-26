CREATE TABLE `board` (
	`bid` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`content` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`author` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`bdate` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`bid`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=14
;




-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.8.3-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 테이블 데이터 webmarket.board:~13 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`bid`, `title`, `content`, `author`, `bdate`) VALUES
	(1, 'ã¹ãã´ã', 'ã¹ãã´ã', NULL, NULL),
	(2, 'date test', 'date test', NULL, '2022-08-16 15:10:35'),
	(3, 'test', 'test', 'sns1.png', '2022-08-18 12:03:20'),
	(4, 'test2', 'test3', 'sns2.png', '2022-08-18 14:52:44'),
	(5, 'last test', 'last test', 'sns1.png', '2022-08-18 15:39:37'),
	(6, 'testttest', 'test', 'sns3.png', '2022-08-18 15:51:49'),
	(7, 'testttest111', 'test', 'sns4.png', '2022-08-18 15:54:23'),
	(8, 'fdsa', 'fdsafdsads', 'sns1.png', '2022-08-18 16:41:12'),
	(9, 'test', '<p>test</p>', '1111', '2022-08-23 15:21:02'),
	(10, '2222', '<p>2222</p>', '1111', '2022-08-23 15:21:13'),
	(11, '게시판 테스트', '<p>테수ㅡ튜</p>', '1111', '2022-08-23 15:33:25'),
	(12, '9999', '<p>9999</p>', '1111', '2022-08-23 16:09:42'),
	(13, '9999', NULL, NULL, '2022-08-23 16:55:55');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
