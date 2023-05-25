DROP DATABASE IF EXISTS dagachi;
CREATE DATABASE dagachi;
USE dagachi;

/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 10.4.28-MariaDB : Database - dagachi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dagachi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `dagachi`;

/*Table structure for table `ADM_APPROVAL` */

DROP TABLE IF EXISTS `ADM_APPROVAL`;

CREATE TABLE `ADM_APPROVAL` (
  `AA_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '관리자결재 고유번호',
  `CA_ID` INT(11) NOT NULL COMMENT '임원결재 고유번호',
  `AA_RECEIVER` VARCHAR(100) NOT NULL COMMENT '관리자결재 보고자',
  `AA_SENDER` VARCHAR(100) NOT NULL COMMENT '관리자결재 피보고자',
  `AA_APPROVAL_DATE` DATETIME DEFAULT NULL COMMENT '관리자결재 승인 날짜',
  `AA_REJECT_DATE` DATETIME DEFAULT NULL COMMENT '관리자결재 반려날짜',
  `AA_REJECT_REASON` VARCHAR(1000) DEFAULT NULL COMMENT '관리자결재 반려사유',
  PRIMARY KEY (`AA_ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='관리자 결재';

/*Data for the table `ADM_APPROVAL` */

/*Table structure for table `ALERT` */

DROP TABLE IF EXISTS `ALERT`;

CREATE TABLE `ALERT` (
  `ALERT_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '알림 고유번호',
  `ALERT_BODY` VARCHAR(200) NOT NULL COMMENT '알림 내용',
  `ALERT_DATE` DATETIME NOT NULL COMMENT '알림 날짜',
  `ALERT_RECEIVER` VARCHAR(100) NOT NULL COMMENT '알림 받는사람',
  `ALERT_URL` VARCHAR(300) DEFAULT NULL COMMENT '알림 URL',
  `ALERT_REGISTER` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ALERT_ID`)
) ENGINE=INNODB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='알림';

/*Data for the table `ALERT` */

INSERT  INTO `ALERT`(`ALERT_ID`,`ALERT_BODY`,`ALERT_DATE`,`ALERT_RECEIVER`,`ALERT_URL`,`ALERT_REGISTER`) VALUES 
(2,'','2023-05-04 13:00:00','user3','','user2'),
(3,'','2023-05-05 13:00:00','user4','','user3'),
(4,'','2023-05-05 13:00:00','user5','','user4'),
(5,'','2023-05-06 13:00:00','user6','','user5'),
(6,'','2023-05-06 13:00:00','user7','','user6'),
(7,'','2023-05-07 13:00:00','user8','','user7'),
(8,'','2023-05-07 13:00:00','user9','','user8'),
(9,'','2023-05-08 13:00:00','user10','','user9'),
(10,'','2023-05-01 13:00:00','user11','','user10'),
(11,'','2023-05-01 13:00:00','user12','','user11'),
(12,'','2023-05-02 13:00:00','user13','','user12'),
(13,'','2023-05-02 13:00:00','user14','','user13'),
(14,'','2023-05-03 13:00:00','user15','','user14'),
(15,'','2023-05-03 13:00:00','user16','','user15');

/*Table structure for table `APPROVAL` */

DROP TABLE IF EXISTS `APPROVAL`;

CREATE TABLE `APPROVAL` (
  `APPROVAL_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '전자결재 고유번호',
  `APPROVAL_LINE` INT(11) NOT NULL COMMENT '전자결재 라인번호',
  `APPROVAL_DEP` INT(11) NOT NULL COMMENT '전자결재 부서아이디',
  `APPROVAL_TEAM` INT(11) NOT NULL COMMENT '전자결재 팀 아이디',
  `APPROVAL_REGISTER` VARCHAR(100) NOT NULL COMMENT '전자결재 최초등록자',
  `APPROVAL_REGISTDATE` DATETIME NOT NULL COMMENT '전자결재 등록 날짜',
  `APPROVAL_UPDATEDATE` DATETIME NOT NULL COMMENT '전자결재 수정 날짜',
  `APPROVAL_APPDATE` DATETIME NOT NULL COMMENT '전자결재 최종승인 날짜',
  `APPROVAL_STATUS` INT(11) NOT NULL COMMENT '전자결재 상태',
  `APPROVAL_SAVE` INT(11) NOT NULL COMMENT '전자결재 저장여부',
  `APPROVAL_ATTACH` VARCHAR(1000) NOT NULL COMMENT '전자결재 첨부 파일',
  `FORM_ID` INT(11) NOT NULL COMMENT '전자결재 양식번호',
  `FORM_DETAIL_ID` INT(11) NOT NULL COMMENT '전자결재 상세양식 고유번호',
  `APPROVAL_LIMIT_SCOPE` INT(11) NOT NULL COMMENT '전자결재 결재선',
  `APPROVAL_LEVEL` INT(11) NOT NULL COMMENT '전자결재 레벨',
  PRIMARY KEY (`APPROVAL_ID`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='전자결재';

/*Data for the table `APPROVAL` */

INSERT  INTO `APPROVAL`(`APPROVAL_ID`,`APPROVAL_LINE`,`APPROVAL_DEP`,`APPROVAL_TEAM`,`APPROVAL_REGISTER`,`APPROVAL_REGISTDATE`,`APPROVAL_UPDATEDATE`,`APPROVAL_APPDATE`,`APPROVAL_STATUS`,`APPROVAL_SAVE`,`APPROVAL_ATTACH`,`FORM_ID`,`FORM_DETAIL_ID`,`APPROVAL_LIMIT_SCOPE`,`APPROVAL_LEVEL`) VALUES 
(1,0,1,1,'user2','2023-05-07 00:00:00','2023-05-07 00:00:00','2023-05-07 00:00:00',2,0,'',6,1,2,1),
(2,0,1,1,'user3','2023-05-08 00:00:00','2023-05-08 00:00:00','2023-05-08 00:00:00',2,0,'',6,2,2,1),
(3,0,1,1,'user4','2023-05-09 00:00:00','2023-05-09 00:00:00','2023-05-09 00:00:00',2,0,'',6,3,2,1),
(4,0,1,1,'user5','2023-05-10 00:00:00','2023-05-10 00:00:00','2023-05-10 00:00:00',2,0,'',6,4,2,1);

/*Table structure for table `APPROVAL_TEMP` */

DROP TABLE IF EXISTS `APPROVAL_TEMP`;

CREATE TABLE `APPROVAL_TEMP` (
  `APPROVAL_TEMP_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '전자결재 임시저장 고유번호',
  `APPROVAL_ID` INT(11) NOT NULL COMMENT '전자결재 고유번호',
  `APPROVAL_LINE` INT(11) NOT NULL COMMENT '전자결재 라인번호',
  `APPROVAL_DEP` INT(11) NOT NULL COMMENT '전자결재 부서아이디',
  `APPROVAL_TEAM` INT(11) NOT NULL COMMENT '전자결재 팀 아이디',
  `APPROVAL_REGISTER` VARCHAR(100) NOT NULL COMMENT '전자결재 최초등록자',
  `APPROVAL_REGISTDATE` DATETIME NOT NULL COMMENT '전자결재 등록 날짜',
  `APPROVAL_UPDATEDATE` DATETIME NOT NULL COMMENT '전자결재 수정 날짜',
  `APPROVAL_APPDATE` DATETIME NOT NULL COMMENT '전자결재 최종승인 날짜',
  `APPROVAL_STATUS` INT(11) NOT NULL COMMENT '전자결재 상태',
  `FORM_ID` INT(11) NOT NULL COMMENT '전자결재 양식번호',
  `APPROVAL_ATTACH` VARCHAR(1000) NOT NULL COMMENT '전자결재 첨부 파일',
  PRIMARY KEY (`APPROVAL_TEMP_ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='전자결재 임시저장';

/*Data for the table `APPROVAL_TEMP` */

/*Table structure for table `ARTICLE` */

DROP TABLE IF EXISTS `ARTICLE`;

CREATE TABLE `ARTICLE` (
  `ARTICLE_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '게시글 고유번호',
  `BOARD_ID` INT(11) NOT NULL COMMENT '게시판 고유번호',
  `ARTICLE_REGDATE` DATETIME NOT NULL COMMENT '게시글 등록날짜',
  `ARTICLE_UPDATEDATE` DATETIME NOT NULL COMMENT '게시글 수정날짜',
  `ARTICLE_REGISTER` VARCHAR(100) NOT NULL COMMENT '게시글 작성자',
  `ARTICLE_TITLE` VARCHAR(300) NOT NULL COMMENT '게시글 제목',
  `ARTICLE_BODY` VARCHAR(3000) NOT NULL COMMENT '게시글 내용',
  `ARTICLE_VIEWCNT` INT(11) DEFAULT NULL COMMENT '게시글 조회수',
  `ARTICLE_ATTACH` VARCHAR(2000) DEFAULT NULL COMMENT '첨부 파일',
  `ARTICLE_IMPORTANT` INT(11) DEFAULT NULL,
  PRIMARY KEY (`ARTICLE_ID`)
) ENGINE=INNODB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='게시글';

/*Data for the table `ARTICLE` */

INSERT  INTO `ARTICLE`(`ARTICLE_ID`,`BOARD_ID`,`ARTICLE_REGDATE`,`ARTICLE_UPDATEDATE`,`ARTICLE_REGISTER`,`ARTICLE_TITLE`,`ARTICLE_BODY`,`ARTICLE_VIEWCNT`,`ARTICLE_ATTACH`,`ARTICLE_IMPORTANT`) VALUES 
(1,1,'2023-05-01 00:00:00','0000-00-00 00:00:00','user2','사내시설이용유의사항','사내의 모든 시설은 깨끗하게 이용 해주시기 바랍니다',0,'',0),
(2,1,'2023-05-02 00:00:00','0000-00-00 00:00:00','user16','전 주소록 업데이트 ','당일 기준 24:00시 사내 공유 주소록을 업데이트 할 예정입니다',0,'',1),
(3,1,'2023-05-03 00:00:00','0000-00-00 00:00:00','user11','워크숍 일정 확정 ','05/13~05/14(토일)워크숍을 갈 예정이오니 모든 사원은 해당날 아침9시에 회사앞에서 모일수 있도록 해주세요',0,'',1),
(4,1,'2023-05-03 00:00:00','0000-00-00 00:00:00','user11','이달의 직원 생일자 ','이수현/장시혁/최원천 사원이 이달 생일입니다',0,'',0),
(5,1,'2023-05-03 00:00:00','0000-00-00 00:00:00','user2','신년회 진행 확정안내','신년회 참석은 자유이므로 모든 사원은 자유롭게 다음주 월요일 퇴근후 부서별로 와주시면 됩니다',0,'',0),
(6,1,'2023-05-03 00:00:00','0000-00-00 00:00:00','user11','건강검진 안내','모든사원에게 건강검진 무료로 할수있게 해드리겠어요!',0,'',0),
(7,1,'2023-05-04 00:00:00','0000-00-00 00:00:00','user16','본사 주차장 사용관련 안내','본사 주차장 이중주차로 불편이 많습니다.모든 사원은 이중주차를 피해 주십시오',0,'',0),
(8,1,'2023-05-04 00:00:00','0000-00-00 00:00:00','user11','추석 연휴 관련 전사 집결','우리회사는 추석에 집결합니다',0,'',0),
(9,1,'2023-05-04 00:00:00','0000-00-00 00:00:00','user11','직원 건의사항 게시판 개설 관련 공지','직원의 건의사항 게시판 신규 생성을 하려합니다 이후 건의사항이 있을 경우 해당 게시판에 건의해주시면 검토후 개선 하겠습니다',0,'',0),
(10,1,'2023-05-04 00:00:00','0000-00-00 00:00:00','user2','사내시설이용유의사항','사내의 모든 시설은 깨끗하게 이용 해주시기 바랍니다',0,'',0),
(11,1,'2023-05-05 00:00:00','0000-00-00 00:00:00','user16','전 주소록 업데이트 ','당일 기준 24:00시 사내 공유 주소록을 업데이트 할 예정입니다',0,'',1),
(12,1,'2023-05-05 00:00:00','0000-00-00 00:00:00','user11','워크숍 일정 확정 ','05/13~05/14(토일)워크숍을 갈 예정이오니 모든 사원은 해당날 아침9시에 회사앞에서 모일수 있도록 해주세요',0,'',0),
(13,1,'2023-05-06 00:00:00','0000-00-00 00:00:00','user2','신년회 진행 확정안내','신년회 참석은 자유이므로 모든 사원은 자유롭게 다음주 월요일 퇴근후 부서별로 와주시면 됩니다',0,'',0),
(14,1,'2023-05-06 00:00:00','0000-00-00 00:00:00','user11','건강검진 안내','모든사원에게 건강검진 무료로 할수있게 해드리겠어요!',0,'',0),
(15,1,'2023-05-06 00:00:00','0000-00-00 00:00:00','user2','사내시설이용유의사항','사내의 모든 시설은 깨끗하게 이용 해주시기 바랍니다',0,'',1),
(16,2,'2023-05-01 00:00:00','0000-00-00 00:00:00','user16','휴가계양식','',0,'',0),
(17,2,'2023-05-01 00:00:00','0000-00-00 00:00:00','user2','결재양식','',0,'',0),
(18,2,'2023-05-03 00:00:00','0000-00-00 00:00:00','user11','비용처리양식','',0,'',0),
(19,2,'2023-05-03 00:00:00','0000-00-00 00:00:00','user11','인사보고서양식','',0,'',0),
(20,2,'2023-05-03 00:00:00','0000-00-00 00:00:00','user2','출장보고서 양식','',0,'',0),
(21,2,'2023-05-04 00:00:00','0000-00-00 00:00:00','user11','업무보고서양식','',0,'',0),
(22,2,'2023-05-04 00:00:00','0000-00-00 00:00:00','user16','주소록','',0,'',0),
(23,2,'2023-05-04 00:00:00','0000-00-00 00:00:00','user2','휴가계양식','',0,'',0),
(24,2,'2023-05-04 00:00:00','0000-00-00 00:00:00','user11','결재양식','',0,'',0),
(25,2,'2023-05-05 00:00:00','0000-00-00 00:00:00','user11','비용처리양식','',0,'',0),
(26,2,'2023-05-05 00:00:00','0000-00-00 00:00:00','user2','인사보고서양식','',0,'',0),
(27,2,'2023-05-05 00:00:00','0000-00-00 00:00:00','user11','출장보고서 양식','',0,'',0),
(28,2,'2023-05-05 00:00:00','0000-00-00 00:00:00','user16','업무보고서양식','',0,'',0),
(29,2,'2023-05-06 00:00:00','0000-00-00 00:00:00','user2','주소록','',0,'',0),
(30,2,'2023-05-06 00:00:00','0000-00-00 00:00:00','user11','주소록','',0,'',0);

/*Table structure for table `Attendance` */

DROP TABLE IF EXISTS `Attendance`;

CREATE TABLE `Attendance` (
  `ATTENDENCE_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '근태 고유번호',
  `ATTENDENCE_MEMBER` VARCHAR(100) NOT NULL COMMENT '근태 사용자 아이디',
  `ATTENDENCE_STATUS` INT(11) NOT NULL COMMENT '근태 상태',
  `ATTENDENCE_MONTH_VACATION_CNT` FLOAT NOT NULL COMMENT '근태 월차 사용 갯수',
  `ATTENDENCE_YEAR_VACATION_CNT` FLOAT NOT NULL COMMENT '근태 연차 사용갯수',
  `ATTENDENCE_REGDATE` DATETIME NOT NULL COMMENT '근태 등록날짜',
  `ATTENDENCE_REASON` VARCHAR(100) DEFAULT NULL,
  `MEMBER_DEPARTMENT` INT(11) NOT NULL,
  `MEMBER_TEAM` INT(11) NOT NULL,
  PRIMARY KEY (`ATTENDENCE_ID`),
  KEY `FK_Attendence_Member` (`ATTENDENCE_MEMBER`)
) ENGINE=INNODB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='근태';

/*Data for the table `Attendance` */

INSERT  INTO `Attendance`(`ATTENDENCE_ID`,`ATTENDENCE_MEMBER`,`ATTENDENCE_STATUS`,`ATTENDENCE_MONTH_VACATION_CNT`,`ATTENDENCE_YEAR_VACATION_CNT`,`ATTENDENCE_REGDATE`,`ATTENDENCE_REASON`,`MEMBER_DEPARTMENT`,`MEMBER_TEAM`) VALUES 
(1,'user2',1,1,1,'2023-05-01 09:00:00',NULL,1,1),
(2,'user3',5,2,1,'2023-05-01 12:00:00','아파',1,1),
(3,'user16',4,1,1,'2023-05-01 09:00:00','타임',2,5),
(4,'user3',1,3,1,'2023-05-01 09:00:00',NULL,1,1),
(5,'user4',5,1,1,'2023-05-01 14:00:00','두통',1,1),
(6,'user17',4,2,1,'2023-05-01 09:00:00','해피',2,5),
(7,'user5',1,1,1,'2023-05-01 09:00:00',NULL,1,2),
(9,'user5',6,1,1,'2023-05-02 09:00:00','해피타임',1,2),
(10,'user4',1,1,1,'2023-05-02 09:00:00',NULL,1,1),
(11,'user17',2,1,1,'2023-05-02 18:00:00',NULL,2,5),
(12,'user3',1,1,1,'2023-05-02 09:00:00',NULL,1,1),
(13,'user6',1,1,1,'2023-05-02 09:00:00',NULL,1,2),
(14,'user11',2,1,1,'2023-05-02 18:00:00',NULL,2,4),
(15,'user12',6,1,1,'2023-05-02 09:00:00','결혼',2,4),
(16,'user4',1,1,1,'2023-05-02 09:00:00',NULL,1,1),
(17,'user17',2,1,1,'2023-05-02 18:00:00',NULL,2,5),
(18,'user9',1,1,0,'2023-05-03 09:00:00',NULL,1,3),
(19,'user12',1,1,1,'2023-05-03 09:00:00',NULL,2,4),
(20,'user4',1,1,1,'2023-05-03 18:00:00',NULL,1,1),
(21,'user9',2,1,1,'2023-05-03 09:00:00',NULL,1,3),
(22,'user12',1,1,1,'2023-05-04 09:00:00',NULL,2,4),
(23,'user10',1,1,0,'2023-05-04 09:00:00',NULL,1,3),
(24,'user6',2,1,0,'2023-05-04 18:00:00',NULL,1,2),
(25,'user6',1,1,2,'2023-05-04 09:00:00',NULL,1,2),
(26,'user11',2,1,0,'2023-05-04 18:00:00',NULL,2,4),
(27,'user10',1,1,0,'2023-05-05 09:00:00',NULL,1,3),
(28,'user8',1,1,0,'2023-05-05 09:00:00',NULL,1,3),
(29,'user13',2,1,0,'2023-05-05 18:00:00',NULL,2,4),
(30,'user14',1,2,1,'2023-05-05 09:00:00',NULL,2,5),
(31,'user13',1,3,1,'2023-05-05 09:00:00',NULL,2,4),
(32,'user14',2,1,1,'2023-05-05 18:00:00',NULL,2,5),
(33,'user10',1,3,1,'2023-05-06 09:00:00',NULL,1,3),
(34,'user14',1,2,0,'2023-05-06 09:00:00',NULL,2,5),
(35,'user15',2,1,0,'2023-05-06 18:00:00',NULL,2,5),
(36,'user15',1,4,1,'2023-05-06 09:00:00',NULL,2,5),
(37,'user8',1,5,1,'2023-05-06 09:00:00',NULL,1,3),
(38,'user16',2,2,1,'2023-05-06 18:00:00',NULL,2,5),
(39,'user16',1,1,1,'2023-05-06 09:00:00',NULL,2,5),
(40,'user9',1,2,1,'2023-05-06 09:00:00',NULL,1,3);

/*Table structure for table `BOARD` */

DROP TABLE IF EXISTS `BOARD`;

CREATE TABLE `BOARD` (
  `BOARD_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '게시판 고유번호',
  `BOARD_NAME` VARCHAR(100) NOT NULL COMMENT '게시판 이름',
  `BOARD_REGDATE` DATETIME NOT NULL COMMENT '게시판 생성날짜',
  `BOARD_UPDATEDATE` DATETIME NOT NULL COMMENT '게시판 수정날짜',
  `BOARD_DELSTATUS` INT(11) DEFAULT NULL COMMENT '게시판 삭제 여부',
  `BOARD_DELDATE` DATETIME DEFAULT NULL COMMENT '게시판 삭제 날짜',
  PRIMARY KEY (`BOARD_ID`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='게시판 분류';

/*Data for the table `BOARD` */

INSERT  INTO `BOARD`(`BOARD_ID`,`BOARD_NAME`,`BOARD_REGDATE`,`BOARD_UPDATEDATE`,`BOARD_DELSTATUS`,`BOARD_DELDATE`) VALUES 
(1,'공지사항','2023-05-01 02:20:23','0000-00-00 00:00:00',0,NULL),
(2,'공유','2023-05-04 02:20:32','0000-00-00 00:00:00',0,NULL);

/*Table structure for table `BOOK_MARK` */

DROP TABLE IF EXISTS `BOOK_MARK`;

CREATE TABLE `BOOK_MARK` (
  `BOOK_MARK_MCODE` INT(11) NOT NULL AUTO_INCREMENT COMMENT '즐겨찾기 고유번호',
  `BOOK_MARK_REGISTER` VARCHAR(100) NOT NULL COMMENT '즐겨찾기 등록자',
  `MCODE` VARCHAR(30) DEFAULT NULL COMMENT '메뉴 고유번호',
  PRIMARY KEY (`BOOK_MARK_MCODE`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='메뉴 즐겨찾기';

/*Data for the table `BOOK_MARK` */

/*Table structure for table `CAPTAIN_APPROVAL` */

DROP TABLE IF EXISTS `CAPTAIN_APPROVAL`;

CREATE TABLE `CAPTAIN_APPROVAL` (
  `CA_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '임원결재 고유번호',
  `TA_ID` INT(11) NOT NULL COMMENT '팀원결재 고유번호',
  `CA_RECEIVER` VARCHAR(100) NOT NULL COMMENT '임원결재 보고자',
  `CA_SENDER` VARCHAR(100) NOT NULL COMMENT '임원결재 피보고자',
  `CA_APPROVAL_DATE` DATETIME DEFAULT NULL COMMENT '임원결재 승인날짜',
  `CA_REJECT_DATE` DATETIME DEFAULT NULL COMMENT '임원결재 반려날짜',
  `CA_REJECT_REASON` VARCHAR(1000) DEFAULT NULL COMMENT '임원결재 반려사유',
  PRIMARY KEY (`CA_ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='임원결재';

/*Data for the table `CAPTAIN_APPROVAL` */

/*Table structure for table `DEPARTMENT` */

DROP TABLE IF EXISTS `DEPARTMENT`;

CREATE TABLE `DEPARTMENT` (
  `DEPARTMENT_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '부서아이디',
  `DEPARTMENT_NAME` VARCHAR(50) DEFAULT NULL COMMENT '부서 명',
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='부서';

/*Data for the table `DEPARTMENT` */

INSERT  INTO `DEPARTMENT`(`DEPARTMENT_ID`,`DEPARTMENT_NAME`) VALUES 
(1,'인사 부서'),
(2,'마케팅 부서'),
(3,'영업 부서'),
(4,'관리 부서');

/*Table structure for table `FAV_PHONE_BOOK` */

DROP TABLE IF EXISTS `FAV_PHONE_BOOK`;

CREATE TABLE `FAV_PHONE_BOOK` (
  `FAV_PHONE_BOOK_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '중요 주소록 고유번호',
  `PHONE_BOOK_ID` INT(11) NOT NULL COMMENT '연락처 고유번호',
  `FAV_PHONE_BOOK_REGISTER` VARCHAR(100) NOT NULL COMMENT '중요연락처 등록자',
  PRIMARY KEY (`FAV_PHONE_BOOK_ID`)
) ENGINE=INNODB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='중요 주소록';

/*Data for the table `FAV_PHONE_BOOK` */

INSERT  INTO `FAV_PHONE_BOOK`(`FAV_PHONE_BOOK_ID`,`PHONE_BOOK_ID`,`FAV_PHONE_BOOK_REGISTER`) VALUES 
(1,1,'user2'),
(2,4,'user3'),
(3,8,'user4'),
(4,12,'user2'),
(5,15,'user3'),
(6,18,'user4'),
(7,21,'user2'),
(8,23,'user3'),
(9,26,'user4'),
(10,1,'user2'),
(11,4,'user3'),
(12,8,'user4'),
(13,12,'user2'),
(14,15,'user3');

/*Table structure for table `FORM` */

DROP TABLE IF EXISTS `FORM`;

CREATE TABLE `FORM` (
  `FORM_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '양식 고유번호',
  `FORM_NAME` VARCHAR(100) NOT NULL COMMENT '양식 이름',
  PRIMARY KEY (`FORM_ID`)
) ENGINE=INNODB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='양식';

/*Data for the table `FORM` */

INSERT  INTO `FORM`(`FORM_ID`,`FORM_NAME`) VALUES 
(1,'회의록 양식'),
(2,'인사보고서'),
(3,'출장보고서'),
(4,'비용처리 양식'),
(5,'업무보고서 양식'),
(6,'휴가계 양식');

/*Table structure for table `FORM_PAY` */

DROP TABLE IF EXISTS `FORM_PAY`;

CREATE TABLE `FORM_PAY` (
  `FORM_PAY_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '비용처리 고유번호',
  `FORM_ID` INT(11) NOT NULL COMMENT '양식 고유번호',
  `FORM_PAY_COST` INT(11) NOT NULL COMMENT '비용처리 신청 비용',
  `FORM_PAY_REGISTER` VARCHAR(100) NOT NULL COMMENT '비용처리 작성자',
  `FORM_PAY_REASON` VARCHAR(3000) NOT NULL COMMENT '비용처리 사유',
  `FORM_PAY_REGDATE` DATETIME NOT NULL COMMENT '비용처리 등록날짜',
  `FORM_PAY_TITLE` VARCHAR(200) NOT NULL COMMENT '비용처리 제목',
  `FORM_PAY_ATTACH` VARCHAR(1000) DEFAULT NULL COMMENT '비용처리 첨부 파일',
  PRIMARY KEY (`FORM_PAY_ID`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='비용처리';

/*Data for the table `FORM_PAY` */

INSERT  INTO `FORM_PAY`(`FORM_PAY_ID`,`FORM_ID`,`FORM_PAY_COST`,`FORM_PAY_REGISTER`,`FORM_PAY_REASON`,`FORM_PAY_REGDATE`,`FORM_PAY_TITLE`,`FORM_PAY_ATTACH`) VALUES 
(1,4,17000,'user2','사무용품','2023-05-08 00:00:00','이수현 비용청구',NULL),
(2,4,100000,'user3','회식','2023-05-09 00:00:00','최원천 비용청구',NULL),
(3,4,90000,'user4','출장비용','2023-05-10 00:00:00','장시혁 비용청구',NULL),
(4,4,80000,'user5','사무용품','2023-05-11 00:00:00','김민중 비용청구',NULL);

/*Table structure for table `FORM_PER` */

DROP TABLE IF EXISTS `FORM_PER`;

CREATE TABLE `FORM_PER` (
  `FORM_PER_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '인사보고서 고유번호',
  `FORM_ID` INT(11) NOT NULL COMMENT '양식 고유번호',
  `FORM_PER_TITLE` VARCHAR(200) NOT NULL COMMENT '인사보고서 제목',
  `FORM_PER_REGDATE` DATETIME NOT NULL COMMENT '인사보고서 등록날짜',
  `FORM_PER_ATTACH` VARCHAR(1000) DEFAULT NULL COMMENT '인사보고서 첨부 파일',
  `FORM_PER_UPPER` VARCHAR(100) NOT NULL COMMENT '인사보고서 인사자',
  `FORM_PER_DOWNER` VARCHAR(100) NOT NULL COMMENT '인사보고서 피인사자',
  `FORM_PER_BODY` VARCHAR(3000) NOT NULL COMMENT '인사보고서 사유 및 처리',
  `FORM_PER_REGISTER` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`FORM_PER_ID`)
) ENGINE=INNODB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='인사보고서';

/*Data for the table `FORM_PER` */

INSERT  INTO `FORM_PER`(`FORM_PER_ID`,`FORM_ID`,`FORM_PER_TITLE`,`FORM_PER_REGDATE`,`FORM_PER_ATTACH`,`FORM_PER_UPPER`,`FORM_PER_DOWNER`,`FORM_PER_BODY`,`FORM_PER_REGISTER`) VALUES 
(2,2,'장시혁 인턴 승진','2023-05-05 13:00:00','','mimi','user4','장시혁 인턴 사원 승진','user2'),
(3,2,'곽철용 사원 징계위원회','2023-05-06 13:00:00','','mimi','user30','곽철용 사원 횡령으로 인한 감봉및 인사고과 반영','user2'),
(4,2,'이수현 부장 인사발령 건','2023-05-07 13:00:00','','mimi','user2','이수현 부장 부서 이동(관리->인사)','user2'),
(15,2,'최원천 대리 인사발령 건','2023-05-04 13:00:00','','mimi','user3','최원천 대리 부서 이동(관리->인사)','user2');

/*Table structure for table `FORM_TRIP` */

DROP TABLE IF EXISTS `FORM_TRIP`;

CREATE TABLE `FORM_TRIP` (
  `FORM_TRIP_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '출장보고서 고유번호',
  `FORM_ID` INT(11) NOT NULL COMMENT '양식 고유번호',
  `FORM_TRIP_REGISTER` VARCHAR(100) NOT NULL COMMENT '출장보고서 작성자',
  `FORM_TRIP_REASON` VARCHAR(2000) NOT NULL COMMENT '출장보고서 사유',
  `FORM_TRIP_REGDATE` DATETIME NOT NULL COMMENT '출장보고서 등록날짜',
  `FORM_TRIP_STARTDATE` DATETIME NOT NULL COMMENT '출장보고서 출장 시작날짜',
  `FORM_TRIP_ENDDATE` DATETIME NOT NULL COMMENT '출장보고서 출장 완료날짜',
  `FORM_TRIP_LOCATION` VARCHAR(300) NOT NULL COMMENT '출장보고서 출장 위치',
  `FORM_TRIP_ATTACH` VARCHAR(1000) DEFAULT NULL COMMENT '출장보고서 첨부 파일',
  PRIMARY KEY (`FORM_TRIP_ID`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='출장보고서';

/*Data for the table `FORM_TRIP` */

INSERT  INTO `FORM_TRIP`(`FORM_TRIP_ID`,`FORM_ID`,`FORM_TRIP_REGISTER`,`FORM_TRIP_REASON`,`FORM_TRIP_REGDATE`,`FORM_TRIP_STARTDATE`,`FORM_TRIP_ENDDATE`,`FORM_TRIP_LOCATION`,`FORM_TRIP_ATTACH`) VALUES 
(1,3,'user6','광주 협력업체 미팅','2023-05-02 17:00:00','2023-04-29 00:00:00','2023-05-01 00:00:00','광주 kwm컴퍼니',NULL),
(2,3,'user7','대전 협력업체 미팅','2023-05-03 17:00:00','2023-05-02 00:00:00','2023-05-02 00:00:00','대전 kos 컴퍼니',NULL),
(3,3,'user8','서울 협력업체 미팅','2023-05-04 17:00:00','2023-05-03 00:00:00','2023-05-03 00:00:00','서울지사',NULL),
(4,3,'user9','부산 협력업체 미팅','2023-05-05 17:00:00','2023-05-04 00:00:00','2023-05-04 00:00:00','부산지사',NULL);

/*Table structure for table `FORM_VACATION` */

DROP TABLE IF EXISTS `FORM_VACATION`;

CREATE TABLE `FORM_VACATION` (
  `FORM_VACATION_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '휴가계 고유번호',
  `FORM_ID` INT(11) NOT NULL COMMENT '양식 고유번호',
  `FORM_VACATION_STARTDATE` DATETIME NOT NULL COMMENT '휴가계 시작 날짜',
  `FORM_VACATION_FINISHDATE` DATETIME NOT NULL COMMENT '휴가계 완료 날짜',
  `FORM_VACATION_REGISTER` VARCHAR(100) NOT NULL COMMENT '휴가계 작성자',
  `FORM_VACATION_TYPE` INT(11) NOT NULL COMMENT '휴가계 유형',
  `FORM_VACATION_REASON` VARCHAR(1000) NOT NULL COMMENT '휴가계 사유',
  `FORM_VACATION_REGDATE` DATETIME NOT NULL COMMENT '휴가계 등록날짜',
  `FORM_VACATION_TITLE` VARCHAR(200) NOT NULL COMMENT '휴가계 제목',
  `FORM_VACATION_ATTACH` VARCHAR(1000) DEFAULT NULL COMMENT '휴가계 첨부 파일',
  PRIMARY KEY (`FORM_VACATION_ID`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='휴가계 양식';

/*Data for the table `FORM_VACATION` */

INSERT  INTO `FORM_VACATION`(`FORM_VACATION_ID`,`FORM_ID`,`FORM_VACATION_STARTDATE`,`FORM_VACATION_FINISHDATE`,`FORM_VACATION_REGISTER`,`FORM_VACATION_TYPE`,`FORM_VACATION_REASON`,`FORM_VACATION_REGDATE`,`FORM_VACATION_TITLE`,`FORM_VACATION_ATTACH`) VALUES 
(1,6,'2023-05-08 00:00:00','2023-05-08 00:00:00','user2',0,'휴무','2023-05-07 00:00:00','이수현 연차 신청',NULL),
(2,6,'2023-05-09 00:00:00','2023-05-09 00:00:00','user3',1,'결혼','2023-05-08 00:00:00','최원천 월차 신청',NULL),
(3,6,'2023-05-10 00:00:00','2023-05-10 00:00:00','user4',0,'휴무','2023-05-09 00:00:00','장시혁 연차 신청',NULL),
(4,6,'2023-05-11 00:00:00','2023-05-11 00:00:00','user5',1,'휴무','2023-05-10 00:00:00','김민중 월차 신청',NULL);

/*Table structure for table `FORM_WORK` */

DROP TABLE IF EXISTS `FORM_WORK`;

CREATE TABLE `FORM_WORK` (
  `FORM_WORK_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '업무보고서 고유번호',
  `FORM_ID` INT(11) NOT NULL COMMENT '양식 고유번호',
  `FORM_WORK_TITLE` VARCHAR(200) NOT NULL COMMENT '업무보고서 제목',
  `FORM_WORK_REGDATE` DATETIME NOT NULL COMMENT '업무보고서 등록날짜',
  `FORM_WORK_LASTWEEK` VARCHAR(1000) DEFAULT NULL COMMENT '업무보고서 지난 주 결산',
  `FORM_WORK_THISWEEK` VARCHAR(1000) DEFAULT NULL COMMENT '업무보고서 금주 계획',
  `FORM_WORK_MAIN` VARCHAR(3000) NOT NULL COMMENT '업무 보고서 주요 보고사항',
  `FORM_WORK_COMMAND` VARCHAR(1000) NOT NULL COMMENT '업무보고서 지시사항',
  `FORM_WORK_ETC` VARCHAR(500) NOT NULL COMMENT '업무보고서 비고',
  `FORM_WORK_ATTACH` VARCHAR(1000) DEFAULT NULL COMMENT '업무보고서 첨부 파일',
  PRIMARY KEY (`FORM_WORK_ID`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='업무보고서';

/*Data for the table `FORM_WORK` */

INSERT  INTO `FORM_WORK`(`FORM_WORK_ID`,`FORM_ID`,`FORM_WORK_TITLE`,`FORM_WORK_REGDATE`,`FORM_WORK_LASTWEEK`,`FORM_WORK_THISWEEK`,`FORM_WORK_MAIN`,`FORM_WORK_COMMAND`,`FORM_WORK_ETC`,`FORM_WORK_ATTACH`) VALUES 
(1,5,'4월 넷째 주 업무보고','2023-05-01 16:00:00','kos컴퍼니 컨펌완료','kos컴퍼니 DB설계 예정','kos컴퍼니 측에서 단가를 낮춰달라요청','불가하며 해당 사항 계속 요구시  타개책 제안','비고',NULL),
(2,5,'5월 첫째 주 업무보고','2023-05-08 16:00:00','kwm컴퍼니 미팅 완료','kwm컴퍼니 DB설계 진행중','kwm컴퍼니 측에서 단가를 낮춰달라요청','불가하며 해당 사항 계속 요구시  타개책 제안','비고',NULL),
(3,5,'5월 둘째 주 업무보고','2023-05-15 16:00:00','2분기 예산안 수정요청','2분기 예산안 수정완료','지난주 지시사항 2분기 예산안 수정 완료 했습니다','외부 업무 수주 건 물색 요청','비고',NULL),
(4,5,'5월 셋째 주 업무보고','2023-05-22 16:00:00','외부 업무 수주 진행현황 보고','외부 업무 물색 중','외부 업무 물색 중이나 경쟁업체의 선점으로 인한 어려움이 있습니다','','비고',NULL);

/*Table structure for table `MEMBER` */

DROP TABLE IF EXISTS `MEMBER`;

CREATE TABLE `MEMBER` (
  `MEMBER_ID` VARCHAR(100) NOT NULL COMMENT '사용자 아이디',
  `MEMBER_PWD` VARCHAR(100) NOT NULL COMMENT '사용자 비밀번호',
  `MEMBER_NAME` VARCHAR(30) NOT NULL COMMENT '사용자 이름',
  `MEMBER_EMAIL` VARCHAR(500) NOT NULL COMMENT '사용자 이메일',
  `MEMBER_ADDRESS` VARCHAR(1000) NOT NULL COMMENT '사용자 주소',
  `MEMBER_REGDATE` DATETIME NOT NULL COMMENT '사용자 입사일',
  `MEMBER_PHONE` VARCHAR(40) NOT NULL COMMENT '사용자 전화번호',
  `MEMBER_DEPARTMENT` INT(11) NOT NULL COMMENT '사용자 부서',
  `MEMBER_TEAM` INT(11) NOT NULL COMMENT '사용자 팀',
  `MEMBER_RANK` VARCHAR(100) NOT NULL COMMENT '사용자 직급',
  `MEMBER_STATUS` INT(11) NOT NULL COMMENT '사용자 상태',
  `MEMBER_DELDATE` DATETIME DEFAULT NULL COMMENT '사용자 퇴사일',
  `MEMBER_BIRTH` DATETIME NOT NULL COMMENT '사용자 생년원일',
  `MEMBER_AUTH` INT(11) NOT NULL COMMENT '사용자 권한',
  `MEMBER_PIC` VARCHAR(1000) NOT NULL COMMENT '사용자 사진',
  PRIMARY KEY (`MEMBER_ID`),
  KEY `FK_member_department` (`MEMBER_DEPARTMENT`),
  KEY `FK_member_team` (`MEMBER_TEAM`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='사용자';

/*Data for the table `MEMBER` */

INSERT  INTO `MEMBER`(`MEMBER_ID`,`MEMBER_PWD`,`MEMBER_NAME`,`MEMBER_EMAIL`,`MEMBER_ADDRESS`,`MEMBER_REGDATE`,`MEMBER_PHONE`,`MEMBER_DEPARTMENT`,`MEMBER_TEAM`,`MEMBER_RANK`,`MEMBER_STATUS`,`MEMBER_DELDATE`,`MEMBER_BIRTH`,`MEMBER_AUTH`,`MEMBER_PIC`) VALUES 
('user10','user10','권오상','kos@naver.com','대전 광역시 중구','2023-05-03 00:00:00','010-1111-1120',1,3,'사원',1,'0000-00-00 00:00:00','1970-01-01 00:00:00',1,'noImage.jpg'),
('user11','user11','김원미','kwm@naver.com','대전 광역시 동구','2023-05-03 00:00:00','010-1111-1121',2,4,'부장',2,'0000-00-00 00:00:00','1970-01-02 00:00:00',2,'noImage.jpg'),
('user12','user12','이주헌','ljh@naver.com','대전 광역시 서구','2023-05-03 00:00:00','010-1111-1122',2,4,'대리',1,'0000-00-00 00:00:00','1970-01-03 00:00:00',1,'noImage.jpg'),
('user13','user13','이대용','ldy@naver.com','대전 광역시 중구','2023-05-03 00:00:00','010-1111-1123',2,4,'사원',1,'0000-00-00 00:00:00','1970-01-04 00:00:00',1,'noImage.jpg'),
('user14','user14','박제성','pjs@naver.com','대전 광역시 동구','2023-05-03 00:00:00','010-1111-1124',2,5,'대리',1,'0000-00-00 00:00:00','1970-01-06 00:00:00',1,'noImage.jpg'),
('user15','user15','박경덕','pkd@naver.com','대전 광역시 서구','2023-05-03 00:00:00','010-1111-1125',2,5,'사원',1,'0000-00-00 00:00:00','1970-01-05 00:00:00',1,'noImage.jpg'),
('user16','user16','이정호','ljh@naver.com','대전 광역시 중구','2023-05-03 00:00:00','010-1111-1126',2,5,'사원',3,'0000-00-00 00:00:00','1996-01-12 00:00:00',1,'noImage.jpg'),
('user17','user17','강성민','ksm@naver.com','대전 광역시 동구','2023-05-03 00:00:00','010-1111-1127',2,5,'사원',1,'0000-00-00 00:00:00','1970-01-06 00:00:00',1,'noImage.jpg'),
('user18','user18','서우남','swn@naver.com','대전 광역시 서구','2023-05-03 00:00:00','010-1111-1128',2,6,'대리',1,'0000-00-00 00:00:00','2023-05-05 01:51:05',1,'noImage.jpg'),
('user19','user19','김보건','kbg@naver.com','대전 광역시 중구','2023-05-03 00:00:00','010-1111-1129',2,6,'사원',1,'0000-00-00 00:00:00','1999-02-05 01:51:08',1,'noImage.jpg'),
('user2','user2','이수현','lsh@naver.com','대전 광역시 동구','2023-05-03 00:00:00','010-1111-1112',1,1,'부장',1,'0000-00-00 00:00:00','1969-12-19 00:00:00',2,'noImage.jpg'),
('user20','user20','김다예','kdy@naver.com','대전 광역시 동구','2023-05-03 00:00:00','010-1111-1130',2,6,'사원',1,'0000-00-00 00:00:00','1970-08-28 00:00:00',1,'noImage.jpg'),
('user21','user21','김혜지','khj@naver.com','대전 광역시 서구','2023-05-03 00:00:00','010-1111-1131',3,7,'부장',4,'0000-00-00 00:00:00','1970-01-10 00:00:00',2,'noImage.jpg'),
('user22','user22','이혜지','lhj@naver.com','대전 광역시 중구','2023-05-03 00:00:00','010-1111-1132',3,7,'대리',5,'0000-00-00 00:00:00','1970-01-31 00:00:00',1,'noImage.jpg'),
('user23','user23','채성실','css@naver.com','대전 광역시 동구','2023-05-03 00:00:00','010-1111-1133',3,7,'사원',1,'0000-00-00 00:00:00','1970-01-16 00:00:00',1,'noImage.jpg'),
('user24','user24','박상명','psm@naver.com','대전 광역시 서구','2023-05-03 00:00:00','010-1111-1134',3,8,'대리',1,'0000-00-00 00:00:00','1970-01-01 00:00:00',1,'noImage.jpg'),
('user25','user25','유지연','yjy@naver.com','대전 광역시 중구','2023-05-03 00:00:00','010-1111-1135',3,8,'사원',1,'0000-00-00 00:00:00','1970-01-10 00:00:00',1,'noImage.jpg'),
('user26','user26','정성운','jsw@naver.com','대전 광역시 동구','2023-05-03 00:00:00','010-1111-1136',3,8,'사원',1,'0000-00-00 00:00:00','1970-01-23 00:00:00',1,'noImage.jpg'),
('user27','user27','조지훈','jjh2@naver.com','대전 광역시 서구','2023-05-03 00:00:00','010-1111-1137',3,9,'대리',1,'0000-00-00 00:00:00','1970-01-29 00:00:00',1,'noImage.jpg'),
('user28','user28','안세영','asy@naver.com','대전 광역시 중구','2023-05-03 00:00:00','010-1111-1138',3,9,'사원',1,'0000-00-00 00:00:00','1970-01-22 00:00:00',1,'noImage.jpg'),
('user29','user29','김기덕','kkd@naver.com','대전 광역시 동구','2023-05-03 00:00:00','010-1111-1139',4,10,'부장',1,'0000-00-00 00:00:00','1970-01-03 00:00:00',2,'noImage.jpg'),
('user3','user3','최원천','cwc@naver.com','대전 광역시 서구','2023-05-03 00:00:00','010-1111-1113',1,1,'대리',1,'0000-00-00 00:00:00','1970-01-22 00:00:00',1,'noImage.jpg'),
('user30','user30','곽철용','kcy@naver.com','대전 광역시 서구','2023-05-03 00:00:00','010-1111-1140',4,10,'사원',1,'0000-00-00 00:00:00','1970-01-05 00:00:00',1,'noImage.jpg'),
('user4','user4','장시혁','jsh@naver.com','대전 광역시 중구','2023-05-03 00:00:00','010-1111-1114',1,1,'사원',1,'0000-00-00 00:00:00','1970-01-22 00:00:00',1,'noImage.jpg'),
('user5','user5','김민중','kmj@naver.com','대전 광역시 동구','2023-05-03 00:00:00','010-1111-1115',1,2,'대리',1,'0000-00-00 00:00:00','1970-01-21 00:00:00',1,'noImage.jpg'),
('user6','user6','박제현','pjh@naver.com','대전 광역시 서구','2023-05-03 00:00:00','010-1111-1116',1,2,'사원',1,'0000-00-00 00:00:00','1970-01-23 00:00:00',1,'noImage.jpg'),
('user7','user7','최재혁','cjh@naver.com','대전 광역시 중구','2023-05-03 00:00:00','010-1111-1117',1,2,'사원',1,'0000-00-00 00:00:00','1970-01-17 00:00:00',1,'noImage.jpg'),
('user8','user8','권효선','khs@naver.com','대전 광역시 동구','2023-05-03 00:00:00','010-1111-1118',1,3,'대리',1,'0000-00-00 00:00:00','1970-01-08 00:00:00',1,'noImage.jpg'),
('user9','user9','정재희','jjh@naver.com','대전 광역시 서구','2023-05-03 00:00:00','010-1111-1119',1,3,'사원',1,'0000-00-00 00:00:00','1970-01-03 00:00:00',1,'noImage.jpg'),
('﻿mimi','mimi','김형민','nimicosara@naver.com','대전 광역시 중구','2023-05-03 00:00:00','010-1111-1111',1,1,'대표',3,'0000-00-00 00:00:00','1970-02-20 00:00:00',3,'noImage.jpg');

/*Table structure for table `MENU` */

DROP TABLE IF EXISTS `MENU`;

CREATE TABLE `MENU` (
  `MCODE` VARCHAR(30) NOT NULL COMMENT '메뉴 고유번호',
  `MNAME` VARCHAR(50) DEFAULT NULL COMMENT '메뉴 이름',
  `MURL` VARCHAR(300) DEFAULT NULL COMMENT '메뉴 주소',
  `MUPCODE` VARCHAR(30) DEFAULT NULL COMMENT '상위메뉴 번호',
  PRIMARY KEY (`MCODE`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='메뉴';

/*Data for the table `MENU` */

INSERT  INTO `MENU`(`MCODE`,`MNAME`,`MURL`,`MUPCODE`) VALUES 
('m000000','홈',NULL,'m000000'),
('m010000','내정보조회',NULL,'m010000'),
('m010100','내정보수정',NULL,'m010000'),
('m020000','결재',NULL,'m020000'),
('m020100','수신결재',NULL,'m020000'),
('m020200','발신결재',NULL,'m020000'),
('m020201','발신결재등록',NULL,'m020200'),
('m020300','임시보관',NULL,'m020000'),
('m020301','임시보관등록',NULL,'m020300'),
('m030000','게시판종류',NULL,'m030000'),
('m030100','공지사항',NULL,'m030000'),
('m030101','공지등록',NULL,'m030100'),
('m030200','공유게시판',NULL,'m030000'),
('m030201','공유게시판등록',NULL,'m030200'),
('m030300','회의록',NULL,'m030000'),
('m030301','회의록등록',NULL,'m030300'),
('m040000','업무',NULL,'m040000'),
('m040100','내업무조회',NULL,'m040000'),
('m040200','팀업무조회',NULL,'m040000'),
('m040201','팀업무 등록',NULL,'m040200'),
('m040300','업무등록 및 수주 조회',NULL,'m040000'),
('m040301','업무등록 및 수주 등록',NULL,'m040300'),
('m040400','업무분배조회',NULL,'m040000'),
('m040401','업무분배 등록',NULL,'m040400'),
('m050000','일정',NULL,'m050000'),
('m050100','사내일정조회',NULL,'m050000'),
('m050101','사내일정등록',NULL,'m050100'),
('m050200','개인일정조회',NULL,'m050000'),
('m050201','개인일정등록',NULL,'m050200'),
('m060000','회의실',NULL,'m060000'),
('m060100','회의실조회',NULL,'m060000'),
('m070000','주소록',NULL,'m070000'),
('m070100','공유주소록',NULL,'m070000'),
('m070101','공유주소록등록',NULL,'m070100'),
('m070200','개인주소록',NULL,'m070000'),
('m070201','개인주소록등록',NULL,'m070200'),
('m080000','근태',NULL,'m080000'),
('m080100','내근태조회',NULL,'m080000'),
('m080200','팀별근태조회',NULL,'m080000'),
('m080300','부서별근태조회',NULL,'m080000');

/*Table structure for table `PHONE_BOOK` */

DROP TABLE IF EXISTS `PHONE_BOOK`;

CREATE TABLE `PHONE_BOOK` (
  `PHONE_BOOK_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '연락처 고유번호',
  `PHONE_BOOK_NAME` VARCHAR(100) NOT NULL COMMENT '연락처 이름',
  `PHONE_BOOK_EMAIL` VARCHAR(300) DEFAULT NULL COMMENT '연락처 이메일',
  `PHONE_BOOK_PHONE` VARCHAR(100) DEFAULT NULL COMMENT '연락처 전화번호',
  `PHONE_BOOK_COMPANY` VARCHAR(100) DEFAULT NULL COMMENT '연락처 회사명',
  `PHONE_BOOK_TAG` VARCHAR(100) DEFAULT NULL COMMENT '연락처 태그',
  `PHONE_BOOK_FAX` VARCHAR(100) DEFAULT NULL COMMENT '연락처 팩스',
  `PHONE_BOOK_DEP` VARCHAR(100) DEFAULT NULL COMMENT '연락처 부서',
  `PHONE_BOOK_TEAM` VARCHAR(100) DEFAULT NULL COMMENT '연락처 팀',
  `PHONE_BOOK_RANK` VARCHAR(100) DEFAULT NULL COMMENT '연락처 직급',
  `PHONE_BOOK_ADDRESS` VARCHAR(1000) DEFAULT NULL COMMENT '연락처 주소',
  `PHONE_BOOK_WEB` VARCHAR(1000) DEFAULT NULL COMMENT '연락처 웹사이트',
  `PHONE_BOOK_REGISTER` VARCHAR(100) NOT NULL COMMENT '연락처 등록자',
  `PHONE_BOOK_TYPE` INT(11) NOT NULL COMMENT '연락처 유형',
  PRIMARY KEY (`PHONE_BOOK_ID`)
) ENGINE=INNODB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='주소록';

/*Data for the table `PHONE_BOOK` */

INSERT  INTO `PHONE_BOOK`(`PHONE_BOOK_ID`,`PHONE_BOOK_NAME`,`PHONE_BOOK_EMAIL`,`PHONE_BOOK_PHONE`,`PHONE_BOOK_COMPANY`,`PHONE_BOOK_TAG`,`PHONE_BOOK_FAX`,`PHONE_BOOK_DEP`,`PHONE_BOOK_TEAM`,`PHONE_BOOK_RANK`,`PHONE_BOOK_ADDRESS`,`PHONE_BOOK_WEB`,`PHONE_BOOK_REGISTER`,`PHONE_BOOK_TYPE`) VALUES 
(1,'김형민','nimicosara@naver.com','010-1111-1111','','본사','','인사부서','1','대표','대전 광역시 중구','','user2',1),
(2,'이수현','lsh@naver.com','010-1111-1112','','본사','','인사부서','1','부장','대전 광역시 동구','','user2',1),
(3,'최원천','cwc@naver.com','010-1111-1113','','본사','','인사부서','1','대리','대전 광역시 서구','','user2',1),
(4,'장시혁','jsh@naver.com','010-1111-1114','','본사','','인사부서','1','사원','대전 광역시 중구','','user2',1),
(5,'김민중','kmj@naver.com','010-1111-1115','','본사','','인사부서','2','대리','대전 광역시 동구','','user2',1),
(6,'박제현','pjh@naver.com','010-1111-1116','','본사','','인사부서','2','사원','대전 광역시 서구','','user2',1),
(7,'최재혁','cjh@naver.com','010-1111-1117','','본사','','인사부서','2','사원','대전 광역시 중구','','user2',1),
(8,'권효선','khs@naver.com','010-1111-1118','','본사','','인사부서','3','대리','대전 광역시 동구','','user2',1),
(9,'정재희','jjh@naver.com','010-1111-1119','','본사','','인사부서','3','사원','대전 광역시 서구','','user2',1),
(10,'권오상','kos@naver.com','010-1111-1120','','본사','','인사부서','3','사원','대전 광역시 중구','','user2',1),
(11,'김원미','kwm@naver.com','010-1111-1121','','본사','','마케팅부서','4','부장','대전 광역시 동구','','user2',1),
(12,'이주헌','ljh@naver.com','010-1111-1122','','본사','','마케팅부서','4','대리','대전 광역시 서구','','user2',1),
(13,'이대용','ldy@naver.com','010-1111-1123','','본사','','마케팅부서','4','사원','대전 광역시 중구','','user2',1),
(14,'박제성','pjs@naver.com','010-1111-1124','','본사','','마케팅부서','5','대리','대전 광역시 동구','','user2',1),
(15,'박경덕','pkd@naver.com','010-1111-1125','','본사','','마케팅부서','5','사원','대전 광역시 서구','','user2',1),
(16,'이정호','ljh@naver.com','010-1111-1126','','본사','','마케팅부서','5','사원','대전 광역시 중구','','user2',1),
(17,'강성민','ksm@naver.com','010-1111-1127','','본사','','마케팅부서','5','사원','대전 광역시 동구','','user2',1),
(18,'서우남','swn@naver.com','010-1111-1128','','본사','','마케팅부서','6','대리','대전 광역시 서구','','user2',1),
(19,'김보건','kbg@naver.com','010-1111-1129','','본사','','마케팅부서','6','사원','대전 광역시 중구','','user2',1),
(20,'김다예','kdy@naver.com','010-1111-1130','','본사','','마케팅부서','6','사원','대전 광역시 동구','','user2',1),
(21,'김혜지','khj@naver.com','010-1111-1131','','본사','','홍보부서','7','부장','대전 광역시 서구','','user2',1),
(22,'이혜지','lhj@naver.com','010-1111-1132','','본사','','홍보부서','7','대리','대전 광역시 중구','','user2',1),
(23,'채성실','css@naver.com','010-1111-1133','','본사','','홍보부서','7','사원','대전 광역시 동구','','user2',1),
(24,'박상명','psm@naver.com','010-1111-1134','','본사','','홍보부서','8','대리','대전 광역시 서구','','user2',1),
(25,'유지연','yjy@naver.com','010-1111-1135','','본사','','홍보부서','8','사원','대전 광역시 중구','','user2',1),
(26,'정성운','jsw@naver.com','010-1111-1136','','본사','','홍보부서','8','사원','대전 광역시 동구','','user2',1),
(27,'조지훈','jjh2@naver.com','010-1111-1137','','본사','','홍보부서','9','대리','대전 광역시 서구','','user2',1),
(28,'안세영','asy@naver.com','010-1111-1138','','본사','','홍보부서','9','사원','대전 광역시 중구','','user2',1),
(29,'김기덕','kkd@naver.com','010-1111-1139','','본사','','관리부서','10','부장','대전 광역시 동구','','user2',1),
(30,'곽철용','kcy@naver.com','010-1111-1140','','본사','','관리부서','10','사원','대전 광역시 서구','','user2',1),
(31,'김영찬','kyc@naver.com','010-1111-1141','','친구','','','','','대전 광역시 중구','','user3',2),
(32,'홍유미','hym@naver.com','010-1111-1142','','친구','','','','','대전 광역시 동구','','user4',2),
(33,'원제우','wjw@naver.com','010-1111-1143','','친구','','','','','대전 광역시 서구','','user2',2),
(34,'이재현','ljh2@naver.com','010-1111-1144','','친구','','','','','대전 광역시 중구','','user3',2),
(35,'권희남','kjn@naver.com','010-1111-1145','','친구','','','','','대전 광역시 동구','','user4',2),
(36,'이유미','lym@naver.com','010-1111-1146','','친구','','','','','대전 광역시 서구','','user2',2),
(37,'허성경','hsk@naver.com','010-1111-1147','','친구','','','','','대전 광역시 중구','','user3',2),
(38,'장승우','jsw2@naver.com','010-1111-1148','','친구','','','','','대전 광역시 동구','','user4',2),
(39,'김성경','ksk@naver.com','010-1111-1149','','친구','','','','','대전 광역시 서구','','user2',2),
(40,'강소리','ksr@naver.com','010-1111-1150','','친구','','','','','대전 광역시 중구','','user3',2);

/*Table structure for table `PROCEEDING` */

DROP TABLE IF EXISTS `PROCEEDING`;

CREATE TABLE `PROCEEDING` (
  `PROCEEDING_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '회의록 고유번호',
  `FORM_ID` INT(11) NOT NULL COMMENT '양식 고유번호',
  `FORM_PROCEEDING_TYPE` INT(11) NOT NULL COMMENT '회의록 유형',
  `FORM_PROCEEDING_SCOPE` INT(11) NOT NULL COMMENT '회의록 공개범위',
  `FORM_PROCEEDING_TITLE` VARCHAR(200) NOT NULL COMMENT '회의록 제목',
  `FORM_PROCEEDING_REGDATE` DATETIME NOT NULL COMMENT '회의록 등록날짜',
  `FORM_PROCEEDING_UPDATEDATE` DATETIME NOT NULL COMMENT '회의록 수정날짜',
  `FORM_PROCEEDING_TOPIC` VARCHAR(200) NOT NULL COMMENT '회의록 안건',
  `FORM_PROCEEDING_BODY` VARCHAR(2000) NOT NULL COMMENT '회의록 내용',
  `FORM_PROCEEDING_RESULT` VARCHAR(2000) NOT NULL COMMENT '회의록 결론',
  `FORM_PROCEEDING_ATTENDER` VARCHAR(1000) NOT NULL COMMENT '회의록 참석자',
  `FORM_PROCEEDING_LOCATION` INT(11) DEFAULT NULL COMMENT '회의록 회의장소',
  PRIMARY KEY (`PROCEEDING_ID`)
) ENGINE=INNODB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='회의록';

/*Data for the table `PROCEEDING` */

INSERT  INTO `PROCEEDING`(`PROCEEDING_ID`,`FORM_ID`,`FORM_PROCEEDING_TYPE`,`FORM_PROCEEDING_SCOPE`,`FORM_PROCEEDING_TITLE`,`FORM_PROCEEDING_REGDATE`,`FORM_PROCEEDING_UPDATEDATE`,`FORM_PROCEEDING_TOPIC`,`FORM_PROCEEDING_BODY`,`FORM_PROCEEDING_RESULT`,`FORM_PROCEEDING_ATTENDER`,`FORM_PROCEEDING_LOCATION`) VALUES 
(1,1,0,1,'긴급회의입니다','2023-05-04 12:00:00','0000-00-00 00:00:00','징계위원회 회부','이달부터 해당 사원의 월급을 감봉하기로했습니다','해당 사원 감봉','user11,user12,user13',1),
(2,1,0,2,'긴급회의입니다','2023-05-04 12:00:00','0000-00-00 00:00:00','징계위원회 회부','해당 사원은 징계위원회 참석중 퇴사하기로 결정했음','해당 사원 퇴사','user2,user3,user4',2),
(3,1,1,1,'주간회의입니다','2023-05-04 12:00:00','0000-00-00 00:00:00','그룹웨어 판매','목표 판매량 초과','목표 판매량 초과','user5,user6,user7',3),
(4,1,1,2,'주간회의입니다','2023-05-04 12:00:00','0000-00-00 00:00:00','시계 제작','시계 제작건에대한 기획중입니다','기획중','user10,user8,user9',4),
(5,1,2,1,'월간회의입니다','2023-05-04 12:00:00','0000-00-00 00:00:00','데이터 제작','데이터 제작을 기획중입니다','기획중','user5,user6,user7',1),
(6,1,2,2,'월간회의입니다','2023-05-04 12:00:00','0000-00-00 00:00:00','레토르트 신제품제작','레토르트 신제품이 반응이 너무 좋아서 추가로 판매해보는게 어때요?','해당건 반응이 좋아 추가 판매','user10,user8,user9',2),
(7,1,3,1,'임원회의입니다','2023-05-04 12:00:00','0000-00-00 00:00:00','주소 업데이트 누락','주소록 업데이트중 몇몇 주소가 누락되어서 한번더 하는게 어떨까요?','모든 사원 퇴근후 한번더 하기로했음','user2,user3,user4',3),
(8,1,3,2,'임원회의입니다','2023-05-04 12:00:00','0000-00-00 00:00:00','레토르트 신제품 보고관련','레토르트 신제품이 반응이 너무 좋아서 추가로 판매해보는게 어때요?','추가판매','user2,user3,user4',4),
(9,1,4,1,'협력회의입니다','2023-05-04 12:00:00','0000-00-00 00:00:00','kos 컴퓨터 관련','컴퓨터 리콜해주세요라는 요청이옴','컴퓨터 리콜','user11,user12,user13',1),
(10,1,4,2,'협력회의입니다','2023-05-04 12:00:00','0000-00-00 00:00:00','xmpp업체 관련','xmpp와 레토르트 신제품 재계약하기로햇어요','xmpp와 계약','user5,user6,user7',2);

/*Table structure for table `PROJECT_L` */

DROP TABLE IF EXISTS `PROJECT_L`;

CREATE TABLE `PROJECT_L` (
  `PL_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '업무관리 고유번호',
  `PL_NAME` VARCHAR(200) NOT NULL COMMENT '업무관리 이름',
  `PL_KIND_STATUS` INT(11) NOT NULL COMMENT '업무관리 분류상태',
  `PL_STARTDATE` DATETIME NOT NULL COMMENT '업무관리 시작 날짜',
  `PL_ENDDATE` DATETIME NOT NULL COMMENT '업무관리 마감 날짜',
  `PL_REGISTER` VARCHAR(100) NOT NULL COMMENT '업무관리 등록자',
  `PL_MANAGER` VARCHAR(100) NOT NULL COMMENT '업무관리 담당자',
  `PL_TEAM` INT(11) NOT NULL COMMENT '업무 담당팀',
  PRIMARY KEY (`PL_ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='업무관리(대분류)';

/*Data for the table `PROJECT_L` */

/*Table structure for table `PROJECT_M` */

DROP TABLE IF EXISTS `PROJECT_M`;

CREATE TABLE `PROJECT_M` (
  `PM_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '업무 고유번호',
  `PM_NAME` VARCHAR(200) NOT NULL COMMENT '업무 이름',
  `PM_KIND_STATUS` INT(11) NOT NULL COMMENT '업무 분류상태',
  `PM_STARTDATE` DATETIME NOT NULL COMMENT '업무 시작 날짜',
  `PM_ENDDATE` DATETIME NOT NULL COMMENT '업무 마감 날짜',
  `PM_STATUS` INT(11) NOT NULL COMMENT '업무 현황',
  `PM_REGISTER` VARCHAR(100) NOT NULL COMMENT '업무 등록자',
  `PM_MANAGER` VARCHAR(100) NOT NULL COMMENT '업무 담당자',
  `PL_ID` INT(11) DEFAULT NULL COMMENT '업무관리 고유번호',
  PRIMARY KEY (`PM_ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='업무(중분류)';

/*Data for the table `PROJECT_M` */

/*Table structure for table `PROJECT_S` */

DROP TABLE IF EXISTS `PROJECT_S`;

CREATE TABLE `PROJECT_S` (
  `PS_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '개인업무 고유번호',
  `PS_TITLE` VARCHAR(200) NOT NULL COMMENT '개인업무 이름',
  `PS_SENDER` VARCHAR(100) NOT NULL COMMENT '개인업무 전달자',
  `PS_RECEIVER` VARCHAR(100) NOT NULL COMMENT '개인업무 피전달자',
  `PS_SENDDATE` DATETIME NOT NULL COMMENT '개인업무 전달날짜',
  `PS_ENDDATE` DATETIME NOT NULL COMMENT '개인업무 완료날짜',
  `PS_STATUS` INT(11) NOT NULL COMMENT '개인업무 완료여부',
  `PM_ID` INT(11) DEFAULT NULL COMMENT '업무 고유번호',
  PRIMARY KEY (`PS_ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='개인업무(소분류)';

/*Data for the table `PROJECT_S` */

/*Table structure for table `REPORT` */

DROP TABLE IF EXISTS `REPORT`;

CREATE TABLE `REPORT` (
  `FORM_ID` INT(11) NOT NULL COMMENT '양식 고유번호',
  `FORM_DETAIL_ID` INT(11) NOT NULL COMMENT '상세양식 고유번호',
  PRIMARY KEY (`FORM_ID`,`FORM_DETAIL_ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='상신 문서';

/*Data for the table `REPORT` */

INSERT  INTO `REPORT`(`FORM_ID`,`FORM_DETAIL_ID`) VALUES 
(0,1),
(1,2),
(1,3),
(1,4),
(2,1),
(2,2),
(2,3),
(2,4),
(3,1),
(3,2),
(3,3),
(3,4),
(4,1),
(4,2),
(4,3),
(4,4),
(5,1),
(5,2),
(5,3),
(5,4),
(6,1),
(6,2),
(6,3),
(6,4);

/*Table structure for table `RESERVATION` */

DROP TABLE IF EXISTS `RESERVATION`;

CREATE TABLE `RESERVATION` (
  `RESERVATION_CODE` INT(11) NOT NULL AUTO_INCREMENT COMMENT '예약 고유번호',
  `ROOM_CODE` INT(11) NOT NULL COMMENT '회의실 고유번호',
  `RESERVATION_START` DATETIME DEFAULT NULL COMMENT '예약 시작시간',
  `RESERVATION_END` DATETIME DEFAULT NULL COMMENT '예약 종료시간',
  `RESERVATION_MEMBER` VARCHAR(20) DEFAULT NULL COMMENT '예약자명',
  `RESERVATION_REGTIME` DATETIME DEFAULT NULL COMMENT '예약등록 시간',
  PRIMARY KEY (`RESERVATION_CODE`,`ROOM_CODE`)
) ENGINE=INNODB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='회의실 예약';

/*Data for the table `RESERVATION` */

INSERT  INTO `RESERVATION`(`RESERVATION_CODE`,`ROOM_CODE`,`RESERVATION_START`,`RESERVATION_END`,`RESERVATION_MEMBER`,`RESERVATION_REGTIME`) VALUES 
(2,2,'2023-05-09 16:00:00','2023-05-09 18:00:00','user8','2023-05-09 10:00:00'),
(3,3,'2023-05-10 16:00:00','2023-05-10 18:00:00','user14','2023-05-10 10:00:00'),
(4,4,'2023-05-11 16:00:00','2023-05-11 18:00:00','user16','2023-05-11 10:00:00'),
(5,1,'2023-05-12 16:00:00','2023-05-12 18:00:00','user20','2023-05-12 10:00:00'),
(6,2,'2023-05-13 16:00:00','2023-05-13 18:00:00','user24','2023-05-13 10:00:00'),
(7,3,'2023-05-14 16:00:00','2023-05-14 18:00:00','user2','2023-05-14 10:00:00'),
(8,4,'2023-05-15 16:00:00','2023-05-15 18:00:00','user8','2023-05-15 10:00:00'),
(9,1,'2023-05-16 16:00:00','2023-05-16 18:00:00','user14','2023-05-16 10:00:00'),
(10,2,'2023-05-17 16:00:00','2023-05-17 18:00:00','user16','2023-05-17 10:00:00'),
(11,3,'2023-05-18 16:00:00','2023-05-18 18:00:00','user20','2023-05-18 10:00:00'),
(12,4,'2023-05-19 16:00:00','2023-05-19 18:00:00','user24','2023-05-19 10:00:00'),
(13,1,'2023-05-20 16:00:00','2023-05-20 18:00:00','user2','2023-05-20 10:00:00'),
(14,2,'2023-05-21 16:00:00','2023-05-21 18:00:00','user8','2023-05-21 10:00:00'),
(15,3,'2023-05-22 16:00:00','2023-05-22 18:00:00','user14','2023-05-22 10:00:00'),
(16,4,'2023-05-23 16:00:00','2023-05-23 18:00:00','user16','2023-05-23 10:00:00'),
(17,1,'2023-05-24 16:00:00','2023-05-24 18:00:00','user20','2023-05-24 10:00:00'),
(18,2,'2023-05-25 16:00:00','2023-05-25 18:00:00','user24','2023-05-25 10:00:00'),
(19,3,'2023-05-26 16:00:00','2023-05-26 18:00:00','user2','2023-05-26 10:00:00'),
(20,4,'2023-05-27 16:00:00','2023-05-27 18:00:00','user8','2023-05-27 10:00:00'),
(21,1,'2023-05-08 16:00:00','2023-05-08 18:00:00','user2','2023-05-08 10:00:00');

/*Table structure for table `SCHEDULE` */

DROP TABLE IF EXISTS `SCHEDULE`;

CREATE TABLE `SCHEDULE` (
  `SCHEDULE_CODE` INT(11) NOT NULL AUTO_INCREMENT COMMENT '일정 고유번호',
  `SCHEDULE_NAME` VARCHAR(300) NOT NULL COMMENT '일정 제목',
  `SCHEDULE_BODY` VARCHAR(500) NOT NULL COMMENT '일정 내용',
  `SCHEDULE_STARTDATE` DATETIME NOT NULL COMMENT '일정 시작날짜',
  `SCHEDULE_ENDDATE` DATETIME NOT NULL COMMENT '일정 완료 날짜',
  `SCHEDULE_REGDATE` DATETIME NOT NULL COMMENT '일정 등록 날짜',
  `SCHEDULE_REGISTER` VARCHAR(100) NOT NULL COMMENT '일정 등록자',
  `SCHEDULE_TYPE` INT(11) NOT NULL COMMENT '일정 유형',
  PRIMARY KEY (`SCHEDULE_CODE`)
) ENGINE=INNODB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='일정';

/*Data for the table `SCHEDULE` */

INSERT  INTO `SCHEDULE`(`SCHEDULE_CODE`,`SCHEDULE_NAME`,`SCHEDULE_BODY`,`SCHEDULE_STARTDATE`,`SCHEDULE_ENDDATE`,`SCHEDULE_REGDATE`,`SCHEDULE_REGISTER`,`SCHEDULE_TYPE`) VALUES 
(1,'사내 야유회','사내 야유회','2023-05-01 00:00:00','2023-05-02 00:00:00','2023-04-29 00:00:00','user2',1),
(2,'오후 회의','오후 회의','2023-05-03 14:00:00','2023-05-03 16:00:00','2023-04-29 00:00:00','user3',2),
(3,'kos컴퍼니 미팅','kos컴퍼니 미팅','2023-05-04 14:00:00','2023-05-04 16:00:00','2023-04-29 00:00:00','user4',2),
(4,'kwm 컴퍼니 미팅','kwm 컴퍼니 미팅','2023-05-05 14:00:00','2023-05-05 16:00:00','2023-04-29 00:00:00','user5',2),
(5,'사내 워크샵','사내 워크샵','2023-05-06 14:00:00','2023-05-06 16:00:00','2023-04-29 00:00:00','user2',1),
(6,'오후 회의','오후 회의','2023-05-07 14:00:00','2023-05-07 16:00:00','2023-04-29 00:00:00','user6',2),
(7,'오후 회의','오후 회의','2023-05-08 14:00:00','2023-05-08 16:00:00','2023-04-29 00:00:00','user7',2),
(8,'오후 회의','오후 회의','2023-05-09 14:00:00','2023-05-09 16:00:00','2023-04-29 00:00:00','user8',2),
(9,'오후 회의','오후 회의','2023-05-10 14:00:00','2023-05-10 16:00:00','2023-04-29 00:00:00','user9',2),
(10,'오후 회의','오후 회의','2023-05-11 14:00:00','2023-05-11 16:00:00','2023-04-29 00:00:00','user3',2),
(11,'오후 회의','오후 회의','2023-05-12 14:00:00','2023-05-12 16:00:00','2023-04-29 00:00:00','user4',2),
(12,'오후 회의','오후 회의','2023-05-13 14:00:00','2023-05-13 16:00:00','2023-04-29 00:00:00','user5',2),
(13,'오후 회의','오후 회의','2023-05-14 14:00:00','2023-05-14 16:00:00','2023-04-29 00:00:00','user2',2),
(14,'오후 회의','오후 회의','2023-05-15 14:00:00','2023-05-15 16:00:00','2023-04-29 00:00:00','user6',2),
(15,'오후 회의','오후 회의','2023-05-16 14:00:00','2023-05-16 16:00:00','2023-04-29 00:00:00','user7',2),
(16,'오후 회의','오후 회의','2023-05-17 14:00:00','2023-05-17 16:00:00','2023-04-29 00:00:00','user8',2),
(17,'오후 회의','오후 회의','2023-05-18 14:00:00','2023-05-18 16:00:00','2023-04-29 00:00:00','user9',2),
(18,'오후 회의','오후 회의','2023-05-19 14:00:00','2023-05-19 16:00:00','2023-04-29 00:00:00','user3',2),
(19,'오후 회의','오후 회의','2023-05-20 14:00:00','2023-05-20 16:00:00','2023-04-29 00:00:00','user4',2),
(20,'오후 회의','오후 회의','2023-05-21 14:00:00','2023-05-21 16:00:00','2023-04-29 00:00:00','user5',2);

/*Table structure for table `TEAM` */

DROP TABLE IF EXISTS `TEAM`;

CREATE TABLE `TEAM` (
  `TEAM_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '팀 아이디',
  `TEAM_NAME` VARCHAR(50) DEFAULT NULL COMMENT '팀 명',
  `TEAM_DEP` INT(11) NOT NULL,
  PRIMARY KEY (`TEAM_ID`)
) ENGINE=INNODB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='팀';

/*Data for the table `TEAM` */

INSERT  INTO `TEAM`(`TEAM_ID`,`TEAM_NAME`,`TEAM_DEP`) VALUES 
(1,'인사1팀',1),
(2,'인사2팀',1),
(3,'인사3팀',1),
(4,'마케팅 1팀\r',2),
(5,'마케팅 2팀',2),
(6,'마케팅 3팀',2),
(7,'영업 1팀',3),
(8,'영업 2팀',3),
(9,'영업 3팀',3),
(10,'관리 1팀',4),
(11,'관리 2팀',4),
(12,'관리 3팀',4);

/*Table structure for table `TEAM_APPROVAL` */

DROP TABLE IF EXISTS `TEAM_APPROVAL`;

CREATE TABLE `TEAM_APPROVAL` (
  `TA_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '팀원결재 고유번호',
  `APPROVAL_ID` INT(11) NOT NULL COMMENT '전자결재 고유번호',
  `TA_RECEIVER` VARCHAR(100) NOT NULL COMMENT '팀원결재 보고자',
  `TA_SENDER` VARCHAR(100) NOT NULL COMMENT '팀원결재 피보고자',
  `TA_APPROVAL_DATE` DATETIME DEFAULT NULL COMMENT '팀원결재 승인날짜',
  `TA_REJECT_DATE` DATETIME DEFAULT NULL COMMENT '팀원결재 반려날짜',
  `TA_REJECT_REASON` VARCHAR(1000) DEFAULT NULL COMMENT '팀원결재 반려사유',
  PRIMARY KEY (`TA_ID`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='팀원결재';

/*Data for the table `TEAM_APPROVAL` */

INSERT  INTO `TEAM_APPROVAL`(`TA_ID`,`APPROVAL_ID`,`TA_RECEIVER`,`TA_SENDER`,`TA_APPROVAL_DATE`,`TA_REJECT_DATE`,`TA_REJECT_REASON`) VALUES 
(1,1,'mimi','user2','2023-05-07 00:00:00',NULL,NULL),
(2,2,'user2','user3','2023-05-08 00:00:00',NULL,NULL),
(3,3,'user2','user4','2023-05-09 00:00:00',NULL,NULL),
(4,4,'user2','user5','2023-05-10 00:00:00',NULL,NULL);

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `room_code` INT(11) NOT NULL AUTO_INCREMENT,
  `ROOM_NAME` VARCHAR(30) NOT NULL COMMENT '회의실 이름',
  PRIMARY KEY (`room_code`)
) ENGINE=INNODB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='회의실';

/*Data for the table `room` */

INSERT  INTO `room`(`room_code`,`ROOM_NAME`) VALUES 
(1,'1층 회의실'),
(2,'2층 회의실'),
(3,'3층 회의실'),
(4,'4층 회의실');

/*Table structure for table `vacation` */

DROP TABLE IF EXISTS `vacation`;

CREATE TABLE `vacation` (
  `VACATION_ID` INT(11) NOT NULL,
  `VACATION_MEMBER` VARCHAR(100) NOT NULL,
  `YEAR_VACATION_REGDATE` DATETIME NOT NULL,
  `MONTH_VACATION_REGDATE` DATETIME NOT NULL,
  `YEAR_VACATION_FINISH` DATETIME NOT NULL,
  `MONTH_VACATION_FINISH` DATETIME NOT NULL,
  `YEAR_VACATION_COUNT` FLOAT NOT NULL,
  `MONTH_VACATION_COUNT` FLOAT NOT NULL,
  `VACATION_TYPE` INT(11) NOT NULL,
  `VACATION_REASON` VARCHAR(100) DEFAULT NULL,
  `DEL_YEAR_VACATION_COUNT` INT(11) DEFAULT NULL,
  `DEL_MONTH_VACATION_COUNT` INT(11) DEFAULT NULL,
  `VACATION_UPDATEDATE` DATETIME DEFAULT NULL,
  PRIMARY KEY (`VACATION_ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='연.월차';

/*Data for the table `vacation` */

INSERT  INTO `vacation`(`VACATION_ID`,`VACATION_MEMBER`,`YEAR_VACATION_REGDATE`,`MONTH_VACATION_REGDATE`,`YEAR_VACATION_FINISH`,`MONTH_VACATION_FINISH`,`YEAR_VACATION_COUNT`,`MONTH_VACATION_COUNT`,`VACATION_TYPE`,`VACATION_REASON`,`DEL_YEAR_VACATION_COUNT`,`DEL_MONTH_VACATION_COUNT`,`VACATION_UPDATEDATE`) VALUES 
(1,'user2','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,'ㅎㅎ',1,0,'2023-05-10 16:03:13'),
(2,'user2','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,'ㅈㅌ',0,1,'2023-05-10 16:03:23'),
(3,'user3','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,1,0,'2023-05-10 16:03:36'),
(4,'user3','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,1,'2023-05-10 16:03:44'),
(5,'user4','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,1,0,'2023-05-10 16:03:46'),
(6,'user4','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,1,'2023-05-10 16:03:49'),
(7,'user5','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(8,'user5','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(9,'user6','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(10,'user6','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(11,'user7','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(12,'user7','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(13,'user8','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(14,'user8','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(15,'user9','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(16,'user9','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(17,'user10','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(18,'user10','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(19,'user11','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(20,'user11','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(21,'user12','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(22,'user12','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(23,'user13','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(24,'user13','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(25,'user14','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(26,'user14','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(27,'user15','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(28,'user15','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(29,'user16','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(30,'user16','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(31,'user17','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(32,'user17','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(33,'user18','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(34,'user18','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(35,'user19','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(36,'user19','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(37,'user20','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(38,'user20','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(39,'user21','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(40,'user21','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(41,'user22','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL),
(42,'user23','0000-00-00 00:00:00','2023-01-01 00:00:00','0000-00-00 00:00:00','2023-12-31 00:00:00',0,5,1,NULL,0,0,NULL),
(43,'user23','2023-01-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',4,0,0,NULL,0,0,NULL);

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `InsertMonthVacation` */

/*!50106 DROP EVENT IF EXISTS `InsertMonthVacation`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`dagacho`@`%` EVENT `InsertMonthVacation` ON SCHEDULE EVERY 1 MONTH STARTS '2023-06-16 05:08:49' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Inserts a vacation record every month' DO INSERT INTO vacation (
        vacation_member, 
        Month_vacation_regdate, 
        month_vacation_finish,
        month_vacation_count,
        vacation_type,
        del_month_vacation_count
    )
    VALUES (
        #{vacation_member},
        NOW(),
        DATE_FORMAT(NOW(), CONCAT(YEAR(NOW()), '-12-31')),
        1,
        1,
        0
    ) */$$
DELIMITER ;

/* Event structure for event `InsertYearVacation` */

/*!50106 DROP EVENT IF EXISTS `InsertYearVacation`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`dagacho`@`%` EVENT `InsertYearVacation` ON SCHEDULE EVERY 1 YEAR STARTS '2023-01-01 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO INSERT INTO vacation
    SET vacation_member = #{vacation_member},
        year_vacation_regDate = NOW(),
        year_vacation_finish = DATE_FORMAT(NOW(), CONCAT(YEAR(NOW()), '-12-31')),
        year_vacation_count = 15,
        vacation_type = 0,
        del_year_vacation_count = 0,
        vacation_updatedate = NULL */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

SELECT * FROM MEMBER

SELECT * FROM ATTENDANCE



CREATE TABLE `APPROVAL` (
  `A_ID` INT(100) UNSIGNED NOT NULL,
  `A_APPROVER` VARCHAR(30) NOT NULL COMMENT '결재자',
  `A_APPROVALDATE` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() COMMENT '처리날짜',
  `A_COMMENT` VARCHAR(1000) DEFAULT NULL COMMENT '코멘트',
  `A_STATUS` INT(10) NOT NULL COMMENT '승인여부',
  `APPROVAL_ID` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='결재';

ALTER TABLE `APPROVAL`
  MODIFY `A_ID` INT(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

- 테이블 구조 `APPROVAL_DOCUMENT`
--

CREATE TABLE `APPROVAL_DOCUMENT` (
  `APPROVAL_ID` INT(100) NOT NULL,
  `APPROVAL_TITLE` VARCHAR(100) DEFAULT NULL,
  `APPROVAL_CONTENT` LONGTEXT DEFAULT NULL,
  `APPROVAL_REGISTER` VARCHAR(100) DEFAULT NULL,
  `APPROVAL_REGISTDATE` DATETIME DEFAULT CURRENT_TIMESTAMP(),
  `APPROVAL_UPDATEDATE` DATETIME DEFAULT NULL,
  `APPROVAL_APPDATE` DATETIME DEFAULT NULL,
  `APPROVAL_STATUS` INT(100) DEFAULT NULL,
  `APPROVAL_SAVE` INT(100) DEFAULT NULL,
  `APPROVAL_APPROVAL_ATTACH` TEXT DEFAULT NULL,
  `FORM_ID` VARCHAR(100) DEFAULT NULL,
  `APPROVAL_APPROVER1` VARCHAR(100) DEFAULT NULL,
  `APPROVAL_APPROVER2` VARCHAR(100) DEFAULT NULL,
  `APPROVAL_LASTAPPROVER` VARCHAR(100) DEFAULT NULL,
  `APPROVAL_LEVERL` INT(10) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;


CREATE TABLE `FORM` (
  `FORM_ID` INT(11) NOT NULL COMMENT '양식 고유번호',
  `FORM_NAME` VARCHAR(100) NOT NULL COMMENT '양식 이름',
  `FORM_CONTENT` LONGTEXT NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='양식';

`FORM_ID`
ALTER TABLE `FORM`
  MODIFY `FORM_ID` INT(11) NOT NULL AUTO_INCREMENT COMMENT '양식 고유번호', AUTO_INCREMENT=7;
COMMIT;

CREATE TABLE `MEMBER` (
  `MEMBER_ID` VARCHAR(100) NOT NULL COMMENT '사용자 아이디',
  `MEMBER_PWD` VARCHAR(100) NOT NULL COMMENT '사용자 비밀번호',
  `MEMBER_NAME` VARCHAR(30) NOT NULL COMMENT '사용자 이름',
  `MEMBER_EMAIL` VARCHAR(500) NOT NULL COMMENT '사용자 이메일',
  `MEMBER_ADDRESS` VARCHAR(1000) NOT NULL COMMENT '사용자 주소',
  `MEMBER_REGDATE` DATETIME NOT NULL COMMENT '사용자 입사일',
  `MEMBER_PHONE` VARCHAR(40) NOT NULL COMMENT '사용자 전화번호',
  `MEMBER_DEPARTMENT` INT(30) NOT NULL COMMENT '사용자 부서',
  `MEMBER_DEPARTMENT1` VARCHAR(30) DEFAULT NULL,
  `MEMBER_TEAM` INT(30) NOT NULL COMMENT '사용자 팀',
  `MEMBER_TEAM1` VARCHAR(100) DEFAULT NULL,
  `MEMBER_RANK` VARCHAR(100) NOT NULL COMMENT '사용자 직급',
  `MEMBER_STATUS` INT(11) NOT NULL COMMENT '사용자 상태',
  `MEMBER_DELDATE` DATETIME DEFAULT NULL COMMENT '사용자 퇴사일',
  `MEMBER_BIRTH` DATETIME NOT NULL COMMENT '사용자 생년원일',
  `MEMBER_AUTH` INT(11) NOT NULL COMMENT '사용자 권한',
  `MEMBER_PIC` VARCHAR(1000) NOT NULL COMMENT '사용자 사진'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='사용자';

INSERT INTO `MEMBER` (`MEMBER_ID`, `MEMBER_PWD`, `MEMBER_NAME`, `MEMBER_EMAIL`, `MEMBER_ADDRESS`, `MEMBER_REGDATE`, `MEMBER_PHONE`, `MEMBER_DEPARTMENT`, `MEMBER_DEPARTMENT1`, `MEMBER_TEAM`, `MEMBER_TEAM1`, `MEMBER_RANK`, `MEMBER_STATUS`, `MEMBER_DELDATE`, `MEMBER_BIRTH`, `MEMBER_AUTH`, `MEMBER_PIC`) VALUES
('mimi', 'mimi', '김형민', 'nimicosara@naver.com', '대전 광역시 중구', '2023-05-03 00:00:00', '010-1111-1111', 1, '인사', 1, '인사1팀', '대표', 3, NULL, '1996-09-01 00:00:00', 3, 'noImage.jpg'),
('user10', 'user10', '권오상', 'kos@naver.com', '대전 광역시 중구', '2023-05-03 00:00:00', '010-1111-1120', 1, '인사', 3, '인사3팀', '사원', 1, NULL, '1996-09-10 00:00:00', 1, 'noImage.jpg'),
('user11', 'user11', '김원미', 'kwm@naver.com', '대전 광역시 동구', '2023-05-03 00:00:00', '010-1111-1121', 2, '마케팅', 4, '마케팅1팀', '부장', 2, NULL, '1996-09-11 00:00:00', 2, 'noImage.jpg'),
('user12', 'user12', '이주헌', 'ljh@naver.com', '대전 광역시 서구', '2023-05-03 00:00:00', '010-1111-1122', 2, '마케팅', 4, '마케팅1팀', '대리', 1, NULL, '1996-09-12 00:00:00', 1, 'noImage.jpg'),
('user13', 'user13', '이대용', 'ldy@naver.com', '대전 광역시 중구', '2023-05-03 00:00:00', '010-1111-1123', 2, '마케팅', 4, '마케팅1팀', '사원', 1, NULL, '1996-09-13 00:00:00', 1, 'noImage.jpg'),
('user14', 'user14', '박제성', 'pjs@naver.com', '대전 광역시 동구', '2023-05-03 00:00:00', '010-1111-1124', 2, '마케팅', 5, '마케팅2팀', '대리', 1, NULL, '1996-09-14 00:00:00', 1, 'noImage.jpg'),
('user15', 'user15', '박경덕', 'pkd@naver.com', '대전 광역시 서구', '2023-05-03 00:00:00', '010-1111-1125', 2, '마케팅', 5, '마케팅2팀', '사원', 1, NULL, '1996-09-15 00:00:00', 1, 'noImage.jpg'),
('user16', 'user16', '이정호', 'ljh@naver.com', '대전 광역시 중구', '2023-05-03 00:00:00', '010-1111-1126', 2, '마케팅', 5, '마케팅2팀', '사원', 3, NULL, '1996-09-16 00:00:00', 1, 'noImage.jpg'),
('user17', 'user17', '강성민', 'ksm@naver.com', '대전 광역시 동구', '2023-05-03 00:00:00', '010-1111-1127', 2, '마케팅', 5, '마케팅2팀', '사원', 1, NULL, '1996-09-17 00:00:00', 1, 'noImage.jpg'),
('user18', 'user18', '서우남', 'swn@naver.com', '대전 광역시 서구', '2023-05-03 00:00:00', '010-1111-1128', 2, '마케팅', 6, '마케팅2팀', '대리', 1, NULL, '1996-09-18 00:00:00', 1, 'noImage.jpg'),
('user19', 'user19', '김보건', 'kbg@naver.com', '대전 광역시 중구', '2023-05-03 00:00:00', '010-1111-1129', 2, '마케팅', 6, '마케팅2팀', '사원', 1, NULL, '1996-09-19 00:00:00', 1, 'noImage.jpg'),
('user2', 'user2', '이수현', 'lsh@naver.com', '대전 광역시 동구', '2023-05-03 00:00:00', '010-1111-1112', 1, '인사', 1, '인사1팀', '부장', 1, NULL, '1996-09-02 00:00:00', 2, 'noImage.jpg'),
('user20', 'user20', '김다예', 'kdy@naver.com', '대전 광역시 동구', '2023-05-03 00:00:00', '010-1111-1130', 2, '마케팅', 6, '마케팅2팀', '사원', 1, NULL, '1996-09-20 00:00:00', 1, 'noImage.jpg'),
('user21', 'user21', '김혜지', 'khj@naver.com', '대전 광역시 서구', '2023-05-03 00:00:00', '010-1111-1131', 3, '영업', 7, '영업1팀', '부장', 4, NULL, '1996-09-21 00:00:00', 2, 'noImage.jpg'),
('user22', 'user22', '이혜지', 'lhj@naver.com', '대전 광역시 중구', '2023-05-03 00:00:00', '010-1111-1132', 3, '영업', 7, '영업1팀', '대리', 5, NULL, '1996-09-22 00:00:00', 1, 'noImage.jpg'),
('user23', 'user23', '채성실', 'css@naver.com', '대전 광역시 동구', '2023-05-03 00:00:00', '010-1111-1133', 3, '영업', 7, '영업1팀', '사원', 1, NULL, '1996-09-23 00:00:00', 1, 'noImage.jpg'),
('user24', 'user24', '박상명', 'psm@naver.com', '대전 광역시 서구', '2023-05-03 00:00:00', '010-1111-1134', 3, '영업', 8, '영업2팀', '대리', 1, NULL, '1996-09-24 00:00:00', 1, 'noImage.jpg'),
('user25', 'user25', '유지연', 'yjy@naver.com', '대전 광역시 중구', '2023-05-03 00:00:00', '010-1111-1135', 3, '영업', 8, '영업2팀', '사원', 1, NULL, '1996-09-25 00:00:00', 1, 'noImage.jpg'),
('user26', 'user26', '정성운', 'jsw@naver.com', '대전 광역시 동구', '2023-05-03 00:00:00', '010-1111-1136', 3, '영업', 8, '영업2팀', '사원', 1, NULL, '1996-09-26 00:00:00', 1, 'noImage.jpg'),
('user27', 'user27', '조지훈', 'jjh2@naver.com', '대전 광역시 서구', '2023-05-03 00:00:00', '010-1111-1137', 3, '영업', 9, '영업3팀', '대리', 1, NULL, '1996-09-27 00:00:00', 1, 'noImage.jpg'),
('user28', 'user28', '안세영', 'asy@naver.com', '대전 광역시 중구', '2023-05-03 00:00:00', '010-1111-1138', 3, '영업', 9, '영업3팀', '사원', 1, NULL, '1996-09-28 00:00:00', 1, 'noImage.jpg'),
('user29', 'user29', '김기덕', 'kkd@naver.com', '대전 광역시 동구', '2023-05-03 00:00:00', '010-1111-1139', 4, '관리', 10, '관리1팀', '부장', 1, NULL, '1996-09-29 00:00:00', 2, 'noImage.jpg'),
('user3', 'user3', '최원천', 'cwc@naver.com', '대전 광역시 서구', '2023-05-03 00:00:00', '010-1111-1113', 1, '인사', 1, '인사1팀', '대리', 1, NULL, '1996-09-03 00:00:00', 1, 'noImage.jpg'),
('user30', 'user30', '곽철용', 'kcy@naver.com', '대전 광역시 서구', '2023-05-03 00:00:00', '010-1111-1140', 4, '관리', 10, '관리1팀', '사원', 1, NULL, '1996-09-30 00:00:00', 1, 'noImage.jpg'),
('user4', 'user4', '장시혁', 'jsh@naver.com', '대전 광역시 중구', '2023-05-03 00:00:00', '010-1111-1114', 1, '인사', 1, '인사1팀', '사원', 1, NULL, '1996-09-04 00:00:00', 1, 'noImage.jpg'),
('user5', 'user5', '김민중', 'kmj@naver.com', '대전 광역시 동구', '2023-05-03 00:00:00', '010-1111-1115', 1, '인사', 2, '인사2팀', '대리', 1, NULL, '1996-09-05 00:00:00', 1, 'noImage.jpg'),
('user6', 'user6', '박제현', 'pjh@naver.com', '대전 광역시 서구', '2023-05-03 00:00:00', '010-1111-1116', 1, '인사', 2, '인사2팀', '사원', 1, NULL, '1996-09-06 00:00:00', 1, 'noImage.jpg'),
('user7', 'user7', '최재혁', 'cjh@naver.com', '대전 광역시 중구', '2023-05-03 00:00:00', '010-1111-1117', 1, '인사', 2, '인사2팀', '사원', 1, NULL, '1996-09-07 00:00:00', 1, 'noImage.jpg'),
('user8', 'user8', '권효선', 'khs@naver.com', '대전 광역시 동구', '2023-05-03 00:00:00', '010-1111-1118', 1, '인사', 3, '인사3팀', '대리', 1, NULL, '1996-09-08 00:00:00', 1, 'noImage.jpg'),
('user9', 'user9', '정재희', 'jjh@naver.com', '대전 광역시 서구', '2023-05-03 00:00:00', '010-1111-1119', 1, '인사', 3, '인사3팀', '사원', 1, NULL, '1996-09-09 00:00:00', 1, 'noImage.jpg');

ALTER TABLE `MEMBER`
  ADD PRIMARY KEY (`MEMBER_ID`);
COMMIT;`APPROVAL_DOCUMENT``APPROVAL_DOCUMENT`

SELECT * FROM MEMBER






ALTER TABLE team ADD TEAM_DEP INT AFTER Team_name;

/*팀 부서 추가 */

UPDATE team
SET
Team_dep=1
WHERE  team_id=1 || team_id=2 || team_id=3;

UPDATE team
SET
Team_dep=2
WHERE  team_id=4 || team_id=5 || team_id=6;

UPDATE team
SET
Team_dep=3
WHERE  team_id=7 || team_id=8 || team_id=9;

UPDATE team
SET
Team_dep=4
WHERE  team_id=10 || team_id=11 || team_id=12;

SELECT * FROM team