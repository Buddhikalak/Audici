/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.20-0ubuntu0.20.04.1 : Database - audici_oauth
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`audici_oauth` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `audici_oauth`;

/*Table structure for table `oauth_access_token` */

DROP TABLE IF EXISTS `oauth_access_token`;

CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` mediumblob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `oauth_access_token` */

LOCK TABLES `oauth_access_token` WRITE;

insert  into `oauth_access_token`(`token_id`,`token`,`authentication_id`,`user_name`,`client_id`,`authentication`,`refresh_token`) values ('ce095462c8774e59a9e71b82a5950337','¨Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ‹Á–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0r<c^xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valueq\0~\0xpt\0$d410423e-9e10-4d77-9ecd-6b0b2bc0a507sq\0~\0	w\0\0r<ƒ≥Wxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExt\0bearert\0$c06b288d-d4c6-45d5-abac-3059a6abc410','321a32e1236e7f732e0412417b8ad5dc','admin','audici_client','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\raudici_clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0 w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0-sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0\Zq\0~\0q\0~\0x\0psr\0,us.audici.authorization.Model.AuthUserDetail;†ÂÎM3–©\0\0xr\0\"us.audici.authorization.Model.User\0\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedI\0countryZ\0credentialsNonExpiredI\0districtZ\0enabledL\0createdt\0Ljava/sql/Time;L\0emailq\0~\0L\0\nfirst_nameq\0~\0L\0genderq\0~\0L\0idt\0Ljava/lang/Integer;L\0lastnameq\0~\0L\0middle_nameq\0~\0L\0\rmobile_numberq\0~\0L\0nicq\0~\0L\0passwordq\0~\0L\0pictureq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0\0\0\0\0\0pt\0buddhika.lakshan123@gmail.compppppppt\0D{bcrypt}$2a$10$3wOt9LNFSBFfdUKr0qtIWuWccg/sL5H1p2qW4OKYlokpCWZ2m//Smpsr\0/org.hibernate.collection.internal.PersistentBag˛W≈Ø⁄O¶D\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW∑]ä∫sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\09xp\0ˇˇˇˇ\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0sq\0~\01\0\0\0\0\0\0sr\0\rjava.sql.TimetâJ\rŸ2ƒq\0\0xr\0java.util.DatehjÅKYt\0\0xpw\0\0\0\0\0Ï\r∞xq\0~\05t\0Buddhikat\0FEMALEq\0~\0=t\0Lakshanpt\0	755996086t\0\n953180898vq\0~\06pq\0~\0:t\0admint\0(us.audici.authorization.Model.User.rolespsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0\0\0\0\0w\0\0\0\0xpq\0~\0G','587b2834af13e331d1d4001853257a5c'),('eb6901ba2c1b177193d3423c2de85107','¨Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ‹Á–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0r: ∆^xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valueq\0~\0xpt\0$843cf32c-ba97-48ad-a93a-12c6d80f6c48sq\0~\0	w\0\0r;,nWxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExt\0bearert\0$cc458c03-7b1d-4a80-8d42-73ddce067243','bbac00747310d51c662e9c8727b6ca71','123','audici_client','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_CONTESTANTsq\0~\0\rt\0CREATE_PROFILExq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\raudici_clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0123xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0%w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\02sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0 q\0~\0!x\0psr\0,us.audici.authorization.Model.AuthUserDetail;†ÂÎM3–©\0\0xr\0\"us.audici.authorization.Model.User\0\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedI\0countryZ\0credentialsNonExpiredI\0districtZ\0enabledL\0createdt\0Ljava/sql/Time;L\0emailq\0~\0L\0\nfirst_nameq\0~\0L\0genderq\0~\0L\0idt\0Ljava/lang/Integer;L\0lastnameq\0~\0L\0middle_nameq\0~\0L\0\rmobile_numberq\0~\0L\0nicq\0~\0L\0passwordq\0~\0L\0pictureq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0\0\0\0\0\0pt\0\rbud@gmail.compppppppt\0D{bcrypt}$2a$10$g0OLWLFdfEB1NyZwyosKDOGIovRerlWN/yMIwUcR2cPAGXPVWo7Vapsr\0/org.hibernate.collection.internal.PersistentBag˛W≈Ø⁄O¶D\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW∑]ä∫sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0>xp\0ˇˇˇˇ\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0	sq\0~\06\0\0\0\0\0\0sr\0\rjava.sql.TimetâJ\rŸ2ƒq\0\0xr\0java.util.DatehjÅKYt\0\0xpw\0\0\0\0Ï˜8xq\0~\0:t\0123t\0MALEq\0~\0Bt\0lakst\0asdt\0	755996084t\0\n953180898vq\0~\0;t\0123q\0~\0?t\0123t\0(us.audici.authorization.Model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0\"us.audici.authorization.Model.Role†Nˇ@‰§Ì\0L\0idq\0~\08L\0nameq\0~\0L\0permissionsq\0~\0xpsq\0~\0@\0\0\0q\0~\0sq\0~\0<\0ˇˇˇˇ\0\0\0q\0~\0Sq\0~\0Rt\0.us.audici.authorization.Model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\0(us.audici.authorization.Model.PermissionåìMŒ:®m\0L\0idq\0~\08L\0nameq\0~\0xpq\0~\0Sq\0~\0xsq\0~\0\0\0\0w\0\0\0q\0~\0Xxpxsq\0~\0\0\0\0w\0\0\0q\0~\0Rxpq\0~\0N','3b1ba70274ed92edd38b9ac2518b3589');

UNLOCK TABLES;

/*Table structure for table `oauth_approvals` */

DROP TABLE IF EXISTS `oauth_approvals`;

CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NULL DEFAULT NULL,
  `lastModifiedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `oauth_approvals` */

LOCK TABLES `oauth_approvals` WRITE;

UNLOCK TABLES;

/*Table structure for table `oauth_client_details` */

DROP TABLE IF EXISTS `oauth_client_details`;

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `web_server_redirect_uri` varchar(2048) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `access_token_validity` int DEFAULT NULL,
  `refresh_token_validity` int DEFAULT NULL,
  `resource_ids` varchar(1024) DEFAULT NULL,
  `authorized_grant_types` varchar(1024) DEFAULT NULL,
  `authorities` varchar(1024) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `oauth_client_details` */

LOCK TABLES `oauth_client_details` WRITE;

insert  into `oauth_client_details`(`client_id`,`client_secret`,`web_server_redirect_uri`,`scope`,`access_token_validity`,`refresh_token_validity`,`resource_ids`,`authorized_grant_types`,`authorities`,`additional_information`,`autoapprove`) values ('audici_client','{bcrypt}$2a$10$77vX1/IQF1zYYtsfuURMiOkkasr8h1.AIqlli0MvSvAwSRYeYfJC2','http://localhost:8080/code','READ,WRITE',3600,10000,'inventory,payment','authorization_code,password,refresh_token,implicit',NULL,'{}',NULL);

UNLOCK TABLES;

/*Table structure for table `oauth_client_token` */

DROP TABLE IF EXISTS `oauth_client_token`;

CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `oauth_client_token` */

LOCK TABLES `oauth_client_token` WRITE;

UNLOCK TABLES;

/*Table structure for table `oauth_code` */

DROP TABLE IF EXISTS `oauth_code`;

CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `oauth_code` */

LOCK TABLES `oauth_code` WRITE;

UNLOCK TABLES;

/*Table structure for table `oauth_refresh_token` */

DROP TABLE IF EXISTS `oauth_refresh_token`;

CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `oauth_refresh_token` */

LOCK TABLES `oauth_refresh_token` WRITE;

insert  into `oauth_refresh_token`(`token_id`,`token`,`authentication`) values ('7df4cd1aa059761a7ee4a5de17b6a741','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$d91006ac-335f-4267-9a06-fb6150d88da0sr\0java.util.DatehjÅKYt\0\0xpw\0\0r1+x','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\raudici_clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0 w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0-sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0\Zq\0~\0q\0~\0x\0psr\0,us.audici.authorization.Model.AuthUserDetail;†ÂÎM3–©\0\0xr\0\"us.audici.authorization.Model.Userc-^ºÅ7H;\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xpt\0buddhika.lakshan123@gmail.compt\0D{bcrypt}$2a$10$3wOt9LNFSBFfdUKr0qtIWuWccg/sL5H1p2qW4OKYlokpCWZ2m//Smsr\0/org.hibernate.collection.internal.PersistentBag˛W≈Ø⁄O¶D\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW∑]ä∫sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\08xp\0ˇˇˇˇ\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0sq\0~\01q\0~\04q\0~\0<q\0~\05q\0~\09t\0admint\0(us.audici.authorization.Model.User.rolespsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0\0\0\0\0w\0\0\0\0xpq\0~\0>'),('3b1ba70274ed92edd38b9ac2518b3589','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$843cf32c-ba97-48ad-a93a-12c6d80f6c48sr\0java.util.DatehjÅKYt\0\0xpw\0\0r;,nWx','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_CONTESTANTsq\0~\0\rt\0CREATE_PROFILExq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\raudici_clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0123xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0%w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0%w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\02sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0 q\0~\0!x\0psr\0,us.audici.authorization.Model.AuthUserDetail;†ÂÎM3–©\0\0xr\0\"us.audici.authorization.Model.User\0\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedI\0countryZ\0credentialsNonExpiredI\0districtZ\0enabledL\0createdt\0Ljava/sql/Time;L\0emailq\0~\0L\0\nfirst_nameq\0~\0L\0genderq\0~\0L\0idt\0Ljava/lang/Integer;L\0lastnameq\0~\0L\0middle_nameq\0~\0L\0\rmobile_numberq\0~\0L\0nicq\0~\0L\0passwordq\0~\0L\0pictureq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0\0\0\0\0\0pt\0\rbud@gmail.compppppppt\0D{bcrypt}$2a$10$g0OLWLFdfEB1NyZwyosKDOGIovRerlWN/yMIwUcR2cPAGXPVWo7Vapsr\0/org.hibernate.collection.internal.PersistentBag˛W≈Ø⁄O¶D\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW∑]ä∫sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0>xp\0ˇˇˇˇ\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0	sq\0~\06\0\0\0\0\0\0sr\0\rjava.sql.TimetâJ\rŸ2ƒq\0\0xr\0java.util.DatehjÅKYt\0\0xpw\0\0\0\0Ï˜8xq\0~\0:t\0123t\0MALEq\0~\0Bt\0lakst\0asdt\0	755996084t\0\n953180898vq\0~\0;t\0123q\0~\0?t\0123t\0(us.audici.authorization.Model.User.rolespsq\0~\0\0\0\0w\0\0\0sr\0\"us.audici.authorization.Model.Role†Nˇ@‰§Ì\0L\0idq\0~\08L\0nameq\0~\0L\0permissionsq\0~\0xpsq\0~\0@\0\0\0q\0~\0sq\0~\0<\0ˇˇˇˇ\0\0\0q\0~\0Sq\0~\0Rt\0.us.audici.authorization.Model.Role.permissionspsq\0~\0\0\0\0w\0\0\0sr\0(us.audici.authorization.Model.PermissionåìMŒ:®m\0L\0idq\0~\08L\0nameq\0~\0xpq\0~\0Sq\0~\0xsq\0~\0\0\0\0w\0\0\0q\0~\0Xxpxsq\0~\0\0\0\0w\0\0\0q\0~\0Rxpq\0~\0N'),('587b2834af13e331d1d4001853257a5c','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$d410423e-9e10-4d77-9ecd-6b0b2bc0a507sr\0java.util.DatehjÅKYt\0\0xpw\0\0r<ƒ≥Wx','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\raudici_clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0 w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0-sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0\Zq\0~\0q\0~\0x\0psr\0,us.audici.authorization.Model.AuthUserDetail;†ÂÎM3–©\0\0xr\0\"us.audici.authorization.Model.User\0\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedI\0countryZ\0credentialsNonExpiredI\0districtZ\0enabledL\0createdt\0Ljava/sql/Time;L\0emailq\0~\0L\0\nfirst_nameq\0~\0L\0genderq\0~\0L\0idt\0Ljava/lang/Integer;L\0lastnameq\0~\0L\0middle_nameq\0~\0L\0\rmobile_numberq\0~\0L\0nicq\0~\0L\0passwordq\0~\0L\0pictureq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0\0\0\0\0\0pt\0buddhika.lakshan123@gmail.compppppppt\0D{bcrypt}$2a$10$3wOt9LNFSBFfdUKr0qtIWuWccg/sL5H1p2qW4OKYlokpCWZ2m//Smpsr\0/org.hibernate.collection.internal.PersistentBag˛W≈Ø⁄O¶D\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW∑]ä∫sT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\09xp\0ˇˇˇˇ\0\0\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0sq\0~\01\0\0\0\0\0\0sr\0\rjava.sql.TimetâJ\rŸ2ƒq\0\0xr\0java.util.DatehjÅKYt\0\0xpw\0\0\0\0\0Ï\r∞xq\0~\05t\0Buddhikat\0FEMALEq\0~\0=t\0Lakshanpt\0	755996086t\0\n953180898vq\0~\06pq\0~\0:t\0admint\0(us.audici.authorization.Model.User.rolespsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0\0\0\0\0w\0\0\0\0xpq\0~\0G');

UNLOCK TABLES;

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `permission` */

LOCK TABLES `permission` WRITE;

insert  into `permission`(`id`,`name`) values (1,'CREATE_PROFILE'),(4,'DELETE_PROFILE'),(2,'READ_PROFILE'),(3,'UPDATE_PROFILE');

UNLOCK TABLES;

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  KEY `permission_id` (`permission_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `permission_role_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `permission_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `permission_role` */

LOCK TABLES `permission_role` WRITE;

insert  into `permission_role`(`permission_id`,`role_id`) values (1,2),(2,2),(2,2),(2,2),(1,1);

UNLOCK TABLES;

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `role` */

LOCK TABLES `role` WRITE;

insert  into `role`(`id`,`name`) values (2,'ROLE_ADMIN'),(1,'ROLE_CONTESTANT'),(4,'ROLE_JUDGE'),(3,'ROLE_ORG_ADMIN');

UNLOCK TABLES;

/*Table structure for table `role_user` */

DROP TABLE IF EXISTS `role_user`;

CREATE TABLE `role_user` (
  `role_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `role_user` */

LOCK TABLES `role_user` WRITE;

insert  into `role_user`(`role_id`,`user_id`) values (1,9);

UNLOCK TABLES;

/*Table structure for table `temp_user_otp` */

DROP TABLE IF EXISTS `temp_user_otp`;

CREATE TABLE `temp_user_otp` (
  `id` int NOT NULL,
  `IsVerified` varchar(255) DEFAULT NULL,
  `attempt` int DEFAULT NULL,
  `countryCode` varchar(255) DEFAULT NULL,
  `createdTimestamp` datetime(6) DEFAULT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `temp_user_otp` */

LOCK TABLES `temp_user_otp` WRITE;

insert  into `temp_user_otp`(`id`,`IsVerified`,`attempt`,`countryCode`,`createdTimestamp`,`mobileNumber`,`otp`,`type`) values (1,'NO',0,'+94','2020-05-20 15:42:13.345000','0755996082','8751','VERIFY'),(10,'NO',0,'+94','2020-05-21 15:10:31.838000','0755996089','1846','VERIFY'),(11,'NO',0,'+94','2020-05-21 15:10:49.617000','0755996087','7474','VERIFY'),(15,'YES',0,'+94','2020-05-21 15:52:41.165000','0755996084','3076','VERIFY'),(16,'NO',0,'+94','2020-05-22 16:27:48.113000','0712347750','8143','VERIFY');

UNLOCK TABLES;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(1024) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `enabled` tinyint NOT NULL,
  `accountNonExpired` tinyint NOT NULL,
  `credentialsNonExpired` tinyint NOT NULL,
  `accountNonLocked` tinyint NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `gender` enum('MALE','FEMALE') NOT NULL,
  `mobile_number` int NOT NULL,
  `picture` longtext,
  `ip` varchar(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `country` int DEFAULT NULL,
  `district` int DEFAULT NULL,
  `active_device_uuid` varchar(255) DEFAULT NULL,
  `device_history` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `firebase_token` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `instagram_id` varchar(255) DEFAULT NULL,
  `referral_id` varchar(255) DEFAULT NULL,
  `updated_time_stamp` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user` */

LOCK TABLES `user` WRITE;

insert  into `user`(`id`,`username`,`password`,`email`,`enabled`,`accountNonExpired`,`credentialsNonExpired`,`accountNonLocked`,`first_name`,`middle_name`,`lastname`,`nic`,`gender`,`mobile_number`,`picture`,`ip`,`created`,`country`,`district`,`active_device_uuid`,`device_history`,`device_id`,`facebook_id`,`firebase_token`,`google_id`,`instagram_id`,`referral_id`,`updated_time_stamp`) values (1,'admin','{bcrypt}$2a$10$3wOt9LNFSBFfdUKr0qtIWuWccg/sL5H1p2qW4OKYlokpCWZ2m//Sm','buddhika.lakshan123@gmail.com',1,1,1,1,'Buddhika',NULL,'Lakshan','953180898v','FEMALE',755996086,NULL,'192.168.1.8','2020-05-20 09:47:50',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'123','{bcrypt}$2a$10$g0OLWLFdfEB1NyZwyosKDOGIovRerlWN/yMIwUcR2cPAGXPVWo7Va','bud@gmail.com',1,1,1,1,'123','asd','laks','953180898v','MALE',755996084,'123',NULL,'2020-05-21 14:28:27',1,1,'123','123','123','123','123','123','123','123',NULL);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
