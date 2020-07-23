/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.20-0ubuntu0.19.10.1 : Database - audici_oauth
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

/*Data for the table `hibernate_sequence` */

LOCK TABLES `hibernate_sequence` WRITE;

insert  into `hibernate_sequence`(`next_val`) values (3),(3),(3),(3);

UNLOCK TABLES;

/*Data for the table `oauth_access_token` */

LOCK TABLES `oauth_access_token` WRITE;

insert  into `oauth_access_token`(`token_id`,`token`,`authentication_id`,`user_name`,`client_id`,`authentication`,`refresh_token`) values ('772f494468bd14a57051eb59d2b58c02','¬í\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken²6$úÎ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ZÜçÐ\0\0xpsr\0java.util.DatehjKYt\0\0xpw\0\0r1»¡òxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ßGcÐÉ·\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokensá\ncTÔ^\0L\0valueq\0~\0xpt\0$4751801c-27aa-4eda-acce-44bed09cfb3asq\0~\0	w\0\0r2Iïxsr\0%java.util.Collections$UnmodifiableSetÑU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ë^÷\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSetØl×ZÝ*\0\0xr\0java.util.HashSetºDž·4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExt\0bearert\0$bc36d80c-a10f-41a4-8310-f4cd4a91a91f','321a32e1236e7f732e0412417b8ad5dc','admin','audici_client','¬í\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authenticationœ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenÓª(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableListü%1µì\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ë^÷\0L\0cq\0~\0xpsr\0java.util.ArrayListxÒÇa\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiœ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\raudici_clientsr\0%java.util.Collections$UnmodifiableMapñ¥šþtõB\0L\0mq\0~\0xpsr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÑU\0\0xq\0~\0	sr\0java.util.LinkedHashSetØl×ZÝ*\0\0xr\0java.util.HashSetºDž·4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0 w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0-sr\0java.util.LinkedHashMap4ÀN\\lÀû\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0\Zq\0~\0q\0~\0x\0psr\0,us.audici.authorization.Model.AuthUserDetail; åëM3Ð©\0\0xr\0\"us.audici.authorization.Model.User\0\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedI\0countryZ\0credentialsNonExpiredI\0districtZ\0enabledL\0createdt\0Ljava/sql/Time;L\0emailq\0~\0L\0\nfirst_nameq\0~\0L\0genderq\0~\0L\0idt\0Ljava/lang/Integer;L\0lastnameq\0~\0L\0middle_nameq\0~\0L\0\rmobile_numberq\0~\0L\0nicq\0~\0L\0passwordq\0~\0L\0pictureq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0\0\0\0\0\0pt\0buddhika.lakshan123@gmail.compppppppt\0D{bcrypt}$2a$10$3wOt9LNFSBFfdUKr0qtIWuWccg/sL5H1p2qW4OKYlokpCWZ2m//Smpsr\0/org.hibernate.collection.internal.PersistentBagþWÅ¯ÚOŠD\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW·]ºsT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\09xp\0ÿÿÿÿ\0\0\0sr\0java.lang.Integerâ €÷8\0I\0valuexr\0java.lang.Number¬à\0\0xp\0\0\0sq\0~\01\0\0\0\0\0\0sr\0\rjava.sql.TimetJ\rÙ2Äq\0\0xr\0java.util.DatehjKYt\0\0xpw\0\0\0\0\0ì\r°xq\0~\05t\0Buddhikat\0FEMALEq\0~\0=t\0Lakshanpt\0	755996086t\0\n953180898vq\0~\06pq\0~\0:t\0admint\0(us.audici.authorization.Model.User.rolespsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0\0\0\0\0w\0\0\0\0xpq\0~\0G','7bdb279694d5b596ecd2511eb86171f2');

UNLOCK TABLES;

/*Data for the table `oauth_approvals` */

LOCK TABLES `oauth_approvals` WRITE;

UNLOCK TABLES;

/*Data for the table `oauth_client_details` */

LOCK TABLES `oauth_client_details` WRITE;

insert  into `oauth_client_details`(`client_id`,`client_secret`,`web_server_redirect_uri`,`scope`,`access_token_validity`,`refresh_token_validity`,`resource_ids`,`authorized_grant_types`,`authorities`,`additional_information`,`autoapprove`) values ('audici_client','{bcrypt}$2a$10$77vX1/IQF1zYYtsfuURMiOkkasr8h1.AIqlli0MvSvAwSRYeYfJC2','http://localhost:8080/code','READ,WRITE',3600,10000,'inventory,payment','authorization_code,password,refresh_token,implicit',NULL,'{}',NULL);

UNLOCK TABLES;

/*Data for the table `oauth_client_token` */

LOCK TABLES `oauth_client_token` WRITE;

UNLOCK TABLES;

/*Data for the table `oauth_code` */

LOCK TABLES `oauth_code` WRITE;

UNLOCK TABLES;

/*Data for the table `oauth_refresh_token` */

LOCK TABLES `oauth_refresh_token` WRITE;

insert  into `oauth_refresh_token`(`token_id`,`token`,`authentication`) values ('7df4cd1aa059761a7ee4a5de17b6a741','¬í\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ßGcÐÉ·\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokensá\ncTÔ^\0L\0valuet\0Ljava/lang/String;xpt\0$d91006ac-335f-4267-9a06-fb6150d88da0sr\0java.util.DatehjKYt\0\0xpw\0\0r1+x','¬í\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authenticationœ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenÓª(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableListü%1µì\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ë^÷\0L\0cq\0~\0xpsr\0java.util.ArrayListxÒÇa\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiœ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\raudici_clientsr\0%java.util.Collections$UnmodifiableMapñ¥šþtõB\0L\0mq\0~\0xpsr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÑU\0\0xq\0~\0	sr\0java.util.LinkedHashSetØl×ZÝ*\0\0xr\0java.util.HashSetºDž·4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0 w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0-sr\0java.util.LinkedHashMap4ÀN\\lÀû\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0\Zq\0~\0q\0~\0x\0psr\0,us.audici.authorization.Model.AuthUserDetail; åëM3Ð©\0\0xr\0\"us.audici.authorization.Model.Userc-^Œ7H;\0	Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0emailq\0~\0L\0idt\0Ljava/lang/Integer;L\0passwordq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xpt\0buddhika.lakshan123@gmail.compt\0D{bcrypt}$2a$10$3wOt9LNFSBFfdUKr0qtIWuWccg/sL5H1p2qW4OKYlokpCWZ2m//Smsr\0/org.hibernate.collection.internal.PersistentBagþWÅ¯ÚOŠD\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW·]ºsT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\08xp\0ÿÿÿÿ\0\0\0sr\0java.lang.Integerâ €÷8\0I\0valuexr\0java.lang.Number¬à\0\0xp\0\0\0sq\0~\01q\0~\04q\0~\0<q\0~\05q\0~\09t\0admint\0(us.audici.authorization.Model.User.rolespsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0\0\0\0\0w\0\0\0\0xpq\0~\0>'),('7bdb279694d5b596ecd2511eb86171f2','¬í\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ßGcÐÉ·\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokensá\ncTÔ^\0L\0valuet\0Ljava/lang/String;xpt\0$4751801c-27aa-4eda-acce-44bed09cfb3asr\0java.util.DatehjKYt\0\0xpw\0\0r2Iïx','¬í\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authenticationœ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenÓª(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableListü%1µì\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ë^÷\0L\0cq\0~\0xpsr\0java.util.ArrayListxÒÇa\0I\0sizexp\0\0\0\0w\0\0\0\0xq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUrit\0Ljava/lang/String;L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiœ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0\raudici_clientsr\0%java.util.Collections$UnmodifiableMapñ¥šþtõB\0L\0mq\0~\0xpsr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÑU\0\0xq\0~\0	sr\0java.util.LinkedHashSetØl×ZÝ*\0\0xr\0java.util.HashSetºDž·4\0\0xpw\0\0\0?@\0\0\0\0\0t\0READt\0WRITExsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0 w\0\0\0?@\0\0\0\0\0t\0paymentt\0	inventoryxsq\0~\0 w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0\0w\0\0\0\0xq\0~\0-sr\0java.util.LinkedHashMap4ÀN\\lÀû\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0\Zq\0~\0q\0~\0x\0psr\0,us.audici.authorization.Model.AuthUserDetail; åëM3Ð©\0\0xr\0\"us.audici.authorization.Model.User\0\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedI\0countryZ\0credentialsNonExpiredI\0districtZ\0enabledL\0createdt\0Ljava/sql/Time;L\0emailq\0~\0L\0\nfirst_nameq\0~\0L\0genderq\0~\0L\0idt\0Ljava/lang/Integer;L\0lastnameq\0~\0L\0middle_nameq\0~\0L\0\rmobile_numberq\0~\0L\0nicq\0~\0L\0passwordq\0~\0L\0pictureq\0~\0L\0rolesq\0~\0L\0usernameq\0~\0xp\0\0\0\0\0\0\0\0pt\0buddhika.lakshan123@gmail.compppppppt\0D{bcrypt}$2a$10$3wOt9LNFSBFfdUKr0qtIWuWccg/sL5H1p2qW4OKYlokpCWZ2m//Smpsr\0/org.hibernate.collection.internal.PersistentBagþWÅ¯ÚOŠD\0L\0bagq\0~\0L\0providedCollectionq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionW·]ºsT\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\09xp\0ÿÿÿÿ\0\0\0sr\0java.lang.Integerâ €÷8\0I\0valuexr\0java.lang.Number¬à\0\0xp\0\0\0sq\0~\01\0\0\0\0\0\0sr\0\rjava.sql.TimetJ\rÙ2Äq\0\0xr\0java.util.DatehjKYt\0\0xpw\0\0\0\0\0ì\r°xq\0~\05t\0Buddhikat\0FEMALEq\0~\0=t\0Lakshanpt\0	755996086t\0\n953180898vq\0~\06pq\0~\0:t\0admint\0(us.audici.authorization.Model.User.rolespsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0\0\0\0\0w\0\0\0\0xpq\0~\0G');

UNLOCK TABLES;

/*Data for the table `permission` */

LOCK TABLES `permission` WRITE;

insert  into `permission`(`id`,`name`) values (1,'CREATE_PROFILE'),(4,'DELETE_PROFILE'),(2,'READ_PROFILE'),(3,'UPDATE_PROFILE');

UNLOCK TABLES;

/*Data for the table `permission_role` */

LOCK TABLES `permission_role` WRITE;

insert  into `permission_role`(`permission_id`,`role_id`) values (1,2),(2,2),(2,2),(2,2);

UNLOCK TABLES;

/*Data for the table `role` */

LOCK TABLES `role` WRITE;

insert  into `role`(`id`,`name`) values (2,'ROLE_ADMIN'),(1,'ROLE_CONTESTANT'),(4,'ROLE_JUDGE'),(3,'ROLE_ORG_ADMIN');

UNLOCK TABLES;

/*Data for the table `role_user` */

LOCK TABLES `role_user` WRITE;

UNLOCK TABLES;

/*Data for the table `temp_user_otp` */

LOCK TABLES `temp_user_otp` WRITE;

insert  into `temp_user_otp`(`id`,`IsVerified`,`attempt`,`countryCode`,`createdTimestamp`,`mobileNumber`,`otp`,`type`) values (1,'NO',0,'+94','2020-05-20 15:42:13.345000','0755996082','8751','VERIFY'),(2,'NO',0,'+94','2020-05-20 15:42:21.897000','0755996084','4259','VERIFY');

UNLOCK TABLES;

/*Data for the table `user` */

LOCK TABLES `user` WRITE;

insert  into `user`(`id`,`username`,`password`,`email`,`enabled`,`accountNonExpired`,`credentialsNonExpired`,`accountNonLocked`,`first_name`,`middle_name`,`lastname`,`nic`,`gender`,`mobile_number`,`picture`,`ip`,`created`,`country`,`district`,`active_device_uuid`,`device_history`,`device_id`,`facebook_id`,`firebase_token`,`google_id`,`instagram_id`,`referral_id`,`updated_time_stamp`) values (1,'admin','{bcrypt}$2a$10$3wOt9LNFSBFfdUKr0qtIWuWccg/sL5H1p2qW4OKYlokpCWZ2m//Sm','buddhika.lakshan123@gmail.com',1,1,1,1,'Buddhika',NULL,'Lakshan','953180898v','FEMALE',755996086,NULL,'192.168.1.8','2020-05-20 09:47:50',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;