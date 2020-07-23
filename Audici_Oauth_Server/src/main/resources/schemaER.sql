CREATE TABLE `oauth_access_token` (
  `token_id` VARCHAR(256) DEFAULT NULL,
  `token` MEDIUMBLOB,
  `authentication_id` VARCHAR(256) NOT NULL,
  `user_name` VARCHAR(256) DEFAULT NULL,
  `client_id` VARCHAR(256) DEFAULT NULL,
  `authentication` MEDIUMBLOB,
  `refresh_token` VARCHAR(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
)  ;


CREATE TABLE `oauth_approvals` (
  `userId` VARCHAR(256) DEFAULT NULL,
  `clientId` VARCHAR(256) DEFAULT NULL,
  `scope` VARCHAR(256) DEFAULT NULL,
  `status` VARCHAR(10) DEFAULT NULL,
  `expiresAt` TIMESTAMP NULL DEFAULT NULL,
  `lastModifiedAt` TIMESTAMP NULL DEFAULT NULL
)  ;


CREATE TABLE `oauth_client_details` (
  `client_id` VARCHAR(255) NOT NULL,
  `client_secret` VARCHAR(255) NOT NULL,
  `web_server_redirect_uri` VARCHAR(2048) DEFAULT NULL,
  `scope` VARCHAR(255) DEFAULT NULL,
  `access_token_validity` INT DEFAULT NULL,
  `refresh_token_validity` INT DEFAULT NULL,
  `resource_ids` VARCHAR(1024) DEFAULT NULL,
  `authorized_grant_types` VARCHAR(1024) DEFAULT NULL,
  `authorities` VARCHAR(1024) DEFAULT NULL,
  `additional_information` VARCHAR(4096) DEFAULT NULL,
  `autoapprove` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
)  ;

/*Table structure for table `oauth_client_token` */

CREATE TABLE `oauth_client_token` (
  `token_id` VARCHAR(256) DEFAULT NULL,
  `token` MEDIUMBLOB,
  `authentication_id` VARCHAR(256) NOT NULL,
  `user_name` VARCHAR(256) DEFAULT NULL,
  `client_id` VARCHAR(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
)  ;

/*Table structure for table `oauth_code` */

CREATE TABLE `oauth_code` (
  `code` VARCHAR(256) DEFAULT NULL,
  `authentication` MEDIUMBLOB
)  ;


CREATE TABLE `oauth_refresh_token` (
  `token_id` VARCHAR(256) DEFAULT NULL,
  `token` MEDIUMBLOB,
  `authentication` MEDIUMBLOB
)  ;


CREATE TABLE `permission` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ;


CREATE TABLE `role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
)   ;

CREATE TABLE `temp_user_otp` (
  `id` INT NOT NULL,
  `IsVerified` VARCHAR(255) DEFAULT NULL,
  `attempt` INT DEFAULT NULL,
  `countryCode` VARCHAR(255) DEFAULT NULL,
  `createdTimestamp` DATETIME(6) DEFAULT NULL,
  `mobileNumber` VARCHAR(255) DEFAULT NULL,
  `otp` VARCHAR(255) DEFAULT NULL,
  `type` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
)  ;



CREATE TABLE `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(100) NOT NULL,
  `password` VARCHAR(1024) NOT NULL,
  `email` VARCHAR(1024) NOT NULL,
  `enabled` TINYINT NOT NULL,
  `accountNonExpired` TINYINT NOT NULL,
  `credentialsNonExpired` TINYINT NOT NULL,
  `accountNonLocked` TINYINT NOT NULL,
  `first_name` VARCHAR(100) NOT NULL,
  `middle_name` VARCHAR(100) DEFAULT NULL,
  `lastname` VARCHAR(100) NOT NULL,
  `nic` VARCHAR(15) NOT NULL,
  `gender` ENUM('MALE','FEMALE') NOT NULL,
  `mobile_number` INT NOT NULL,
  `picture` LONGTEXT,
  `ip` VARCHAR(20) DEFAULT NULL,
  `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `country` INT DEFAULT NULL,
  `district` INT DEFAULT NULL,
  `active_device_uuid` VARCHAR(255) DEFAULT NULL,
  `device_history` VARCHAR(255) DEFAULT NULL,
  `device_id` VARCHAR(255) DEFAULT NULL,
  `facebook_id` VARCHAR(255) DEFAULT NULL,
  `firebase_token` VARCHAR(255) DEFAULT NULL,
  `google_id` VARCHAR(255) DEFAULT NULL,
  `instagram_id` VARCHAR(255) DEFAULT NULL,
  `referral_id` VARCHAR(255) DEFAULT NULL,
  `updated_time_stamp` DATETIME(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ;
CREATE TABLE `permission_role` (
  `permission_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  KEY `permission_id` (`permission_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `permission_role_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `permission_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
)  ;

CREATE TABLE `role_user` (
  `role_id` INT DEFAULT NULL,
  `user_id` INT DEFAULT NULL,
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
)  ;
