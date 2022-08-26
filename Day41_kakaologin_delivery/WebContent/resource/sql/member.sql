CREATE TABLE `member` (
	`mno` INT(11) NOT NULL AUTO_INCREMENT,
	`mname` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`mpass` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mtel` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`memail` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mgender` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`maddr` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mlevel` VARCHAR(10) NULL DEFAULT '5' COLLATE 'utf8mb4_general_ci',
	`miname` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`mdate` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`mno`, `mname`) USING BTREE,
	UNIQUE INDEX `mname` (`mname`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=9
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

-- 테이블 데이터 webmarket.member:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`mno`, `mname`, `mpass`, `mtel`, `memail`, `mgender`, `maddr`, `mlevel`, `miname`, `mdate`) VALUES
	(1, '1111', '1111', '010-1234-5678', 'austiny@naver.com', '남성', '서울특별시 종로구 삼일대로 385-1', '5', 'sns1.png', '2022-08-17 11:48:21'),
	(2, '2222', '2222', '011-1234-5678', 'austiny@naver.com', '여성', '서울시 관악구 관악로1 서울대학교', '5', 'sns3.png', '2022-08-17 11:49:16'),
	(3, '3333', '3333', '1111', 'austiny@naver.com', '남성', '서울특별시 강남구 언주로30길 26 타워팰리스', '5', 'sns2.png', '2022-08-23 12:59:05');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
