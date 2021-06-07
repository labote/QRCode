-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.18-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- food 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `food` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `food`;

-- 테이블 food.food 구조 내보내기
CREATE TABLE IF NOT EXISTS `food` (
  `food_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(50) NOT NULL,
  `ingredient` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 테이블 데이터 food.food:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT IGNORE INTO `food` (`food_id`, `food_name`, `ingredient`, `description`) VALUES
	(1, '라면', '라면, 계란 1개, 콩나물, 마늘, 고춧가루', '1. 파를 썰고 마늘을 얇게 편썰어준다. 2. 냄비에 기름을 두르고 파와 마늘을 넣는다. 3.향이 올라면 고춧가루 반 큰술넣는다. 4. 중약불로 볶아준다. 5. 550ml 물을 넣고 물이 끓으면 스프와 라면을 넣는다. 6. 3분 끓인 뒤 위에 콩나물과 계란을 넣고 1분 기다린다. 7. 맛있게 먹는다. ');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
