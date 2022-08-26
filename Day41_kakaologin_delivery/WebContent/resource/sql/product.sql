CREATE TABLE `product` (
	`pid` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`pname` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pdesc` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pprice` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pfilename1` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pfilename2` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pfilename3` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`pid`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
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

-- 테이블 데이터 webmarket.product:~11 rows (대략적) 내보내기
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`pid`, `pname`, `pdesc`, `pprice`, `pfilename1`, `pfilename2`, `pfilename3`) VALUES
	('0001', '안녕하세요', NULL, '4123232', 'sns1.png', 'sns2.png', 'sns3.png'),
	('0002', '안녕하세요', NULL, '4123232', 'sns1.png', 'sns2.png', 'sns3.png'),
	('0003', '안녕하세요', NULL, '4123232', 'sns1.png', 'sns2.png', 'sns3.png'),
	('bgfds', 'gfds', 'gfds', '1234', 'sns2.png', NULL, NULL),
	('lunch', 'lunch', 'lunch', '10000', 'sns1.png', 'sns2.png', 'sns3.png'),
	('tes222', '', '654654', '643654', '남성', '653653', 'sns4.png'),
	('test', 'test', 'test', '11100', 'etc', NULL, NULL),
	('test111', '0000', '654654', '643654', '남성', '653653', 'sns4.png'),
	('test2', 'test2', 'test\r\nrfw\r\nfdsa\r\nfds\r\n', '220000', 'etc', NULL, NULL),
	('test3', 'test3', 'íê¸ íì¸', '220000', 'etc', NULL, NULL),
	('아이디', '제품명', NULL, '50000', 'sns1.png', 'sns2.png', 'sns3.png');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
