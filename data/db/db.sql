/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.11-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `config` longtext DEFAULT NULL,
  `icon` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_dashboards`
--

DROP TABLE IF EXISTS `be_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_dashboards` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `widgets` text DEFAULT NULL,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `identifier` (`identifier`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_dashboards`
--

LOCK TABLES `be_dashboards` WRITE;
/*!40000 ALTER TABLE `be_dashboards` DISABLE KEYS */;
INSERT INTO `be_dashboards` VALUES
(1,0,1744013723,1744013631,0,0,0,0,1,'{\"b897cd1531ce4348cb0d45d8bf57734f4a246d67\":{\"identifier\":\"t3information\",\"positions\":{\"4\":{\"height\":2,\"width\":2,\"y\":0,\"x\":0}}},\"973a63b2450f370a1d15e2bdf05e9c1b1e353d27\":{\"identifier\":\"docGettingStarted\",\"positions\":{\"4\":{\"height\":1,\"width\":1,\"y\":0,\"x\":2}}}}','faacf8dc927e44b8c4a076ea597850984919bb89','Dashboard');
/*!40000 ALTER TABLE `be_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `tables_select` longtext DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `db_mountpoints` longtext DEFAULT NULL,
  `file_mountpoints` varchar(255) DEFAULT '',
  `file_permissions` longtext DEFAULT NULL,
  `workspace_perms` smallint(5) unsigned NOT NULL DEFAULT 0,
  `pagetypes_select` longtext DEFAULT NULL,
  `tables_modify` longtext DEFAULT NULL,
  `non_exclude_fields` longtext DEFAULT NULL,
  `explicit_allowdeny` longtext DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` longtext DEFAULT NULL,
  `groupMods` longtext DEFAULT NULL,
  `mfa_providers` longtext DEFAULT NULL,
  `TSconfig` longtext DEFAULT NULL,
  `subgroup` varchar(255) DEFAULT '',
  `category_perms` longtext DEFAULT NULL,
  `availableWidgets` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
INSERT INTO `be_groups` VALUES
(1,0,1744015096,1744015096,0,0,'The simple editors group demonstrates a handy and realistic set of permissions and options for every day  backend users who simply manages content and pages. More detailed and advanced features are hidden for embers of this user group to give a more simple interface\n','pages,sys_category,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,tt_content,tx_bootstrappackage_accordion_item,tx_bootstrappackage_carousel_item,tx_bootstrappackage_tab_item','Simple editors','15','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,copyFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile',1,'1,4,3','pages,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,tt_content,tx_bootstrappackage_accordion_item,tx_bootstrappackage_carousel_item,tx_bootstrappackage_tab_item','tx_bootstrappackage_accordion_item:tt_content,tx_bootstrappackage_accordion_item:header,tx_bootstrappackage_accordion_item:hidden,tx_bootstrappackage_accordion_item:media,tx_bootstrappackage_accordion_item:mediaorient,tx_bootstrappackage_carousel_item:background_color,tx_bootstrappackage_carousel_item:background_image,tx_bootstrappackage_carousel_item:tt_content,tx_bootstrappackage_carousel_item:header,tx_bootstrappackage_carousel_item:header_layout,tx_bootstrappackage_carousel_item:hidden,tx_bootstrappackage_carousel_item:image,tx_bootstrappackage_carousel_item:link,tx_bootstrappackage_carousel_item:starttime,tx_bootstrappackage_carousel_item:endtime,tx_bootstrappackage_carousel_item:subheader,tx_bootstrappackage_carousel_item:subheader_layout,tx_bootstrappackage_carousel_item:text_color,sys_file_metadata:title,sys_file_reference:alternative,sys_file_reference:autoplay,sys_file_reference:description,sys_file_reference:crop,sys_file_reference:title,pages:backend_layout_next_level,pages:backend_layout,pages:description,pages:media,pages:keywords,pages:nav_hide,pages:hidden,pages:shortcut_mode,tt_content:imageorient,tt_content:table_caption,tt_content:teaser,tt_content:linkToTop,tt_content:hidden,tx_bootstrappackage_tab_item:header,tx_bootstrappackage_tab_item:hidden,tx_bootstrappackage_tab_item:media,tx_bootstrappackage_tab_item:mediaorient,tx_bootstrappackage_tab_item:tt_content','tt_content:CType:accordion:ALLOW,tt_content:CType:carousel:ALLOW,tt_content:CType:media:ALLOW,tt_content:CType:text:ALLOW,tt_content:CType:textpic:ALLOW,tt_content:CType:image:ALLOW,tt_content:CType:textmedia:ALLOW,tt_content:CType:bullets:ALLOW,tt_content:CType:table:ALLOW,tt_content:CType:uploads:ALLOW,tx_bootstrappackage_carousel_item:item_type:header:ALLOW','','','web_layout,file_FilelistList','','','2','0',NULL),
(2,0,1744015096,1744015096,0,0,'Basic configuration shared for all users. All other user groups can include this group as sub group to share a default set of permissions and options','pages,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,tt_content,tx_bootstrappackage_accordion_item,tx_bootstrappackage_carousel_item,tx_bootstrappackage_tab_item','All users','15','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,copyFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile',0,'','','tt_content:imageorient,tt_content:table_caption,tt_content:table_header_position','','','','user_setup,help_AboutAbout','','','','0',NULL),
(3,0,1744015096,1744015096,0,0,'The advanced editors user group, is an example implementation of a user group with a wide range of permissions and available options for making and editing an advanced set of features for pages and page content. The meta group \"All users\", which includes a basic configuration that can be applied to all user groups, is included as Sub Group below','pages,sys_category,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,sys_file_storage,fe_groups,fe_users,tt_content,index_config,tx_bootstrappackage_accordion_item,tx_bootstrappackage_carousel_item,tx_bootstrappackage_tab_item','Advanced editors','15','','readFolder,writeFolder,addFolder,renameFolder,moveFolder,copyFolder,deleteFolder,recursivedeleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile',1,'1,6,4,7,3,254,199','pages,sys_category,sys_file,sys_file_collection,sys_file_metadata,sys_file_reference,fe_groups,fe_users,tt_content,index_config,tx_bootstrappackage_accordion_item,tx_bootstrappackage_carousel_item,tx_bootstrappackage_tab_item','tx_bootstrappackage_accordion_item:tt_content,tx_bootstrappackage_accordion_item:header,tx_bootstrappackage_accordion_item:hidden,tx_bootstrappackage_accordion_item:sys_language_uid,tx_bootstrappackage_accordion_item:media,tx_bootstrappackage_accordion_item:mediaorient,tx_bootstrappackage_accordion_item:starttime,tx_bootstrappackage_accordion_item:endtime,tx_bootstrappackage_carousel_item:background_color,tx_bootstrappackage_carousel_item:background_image,tx_bootstrappackage_carousel_item:tt_content,tx_bootstrappackage_carousel_item:header,tx_bootstrappackage_carousel_item:header_layout,tx_bootstrappackage_carousel_item:hidden,tx_bootstrappackage_carousel_item:image,tx_bootstrappackage_carousel_item:sys_language_uid,tx_bootstrappackage_carousel_item:link,tx_bootstrappackage_carousel_item:starttime,tx_bootstrappackage_carousel_item:endtime,tx_bootstrappackage_carousel_item:subheader,tx_bootstrappackage_carousel_item:subheader_layout,tx_bootstrappackage_carousel_item:text_color,sys_category:hidden,sys_category:sys_language_uid,sys_category:starttime,sys_category:endtime,sys_file_metadata:categories,sys_file_metadata:title,sys_file_reference:alternative,sys_file_reference:autoplay,sys_file_reference:description,sys_file_reference:crop,sys_file_reference:link,sys_file_reference:title,sys_file_collection:hidden,sys_file_collection:sys_language_uid,sys_file_collection:starttime,sys_file_collection:endtime,pages:newUntil,pages:abstract,pages:fe_group,pages:author,pages:backend_layout_next_level,pages:backend_layout,pages:cache_timeout,pages:cache_tags,pages:categories,pages:module,pages:description,pages:author_email,pages:media,pages:layout,pages:php_tree_stop,pages:no_search,pages:extendToSubpages,pages:is_siteroot,pages:keywords,pages:lastUpdated,pages:l18n_cfg,pages:mount_pid_ol,pages:nav_title,pages:nav_hide,pages:hidden,pages:shortcut_mode,pages:content_from_pid,pages:starttime,pages:endtime,pages:subtitle,pages:target,pages:doktype,tt_content:fe_group,tt_content:header_position,tt_content:imageborder,tt_content:categories,tt_content:image_zoom,tt_content:imagecols,tt_content:date,tt_content:rowDescription,tt_content:uploads_description,tt_content:uploads_type,tt_content:table_delimiter,tt_content:frame_class,tt_content:layout,tt_content:imageheight,tt_content:sectionIndex,tt_content:sys_language_uid,tt_content:header_link,tt_content:imageorient,tt_content:quote_link,tt_content:recursive,tt_content:space_after_class,tt_content:space_before_class,tt_content:starttime,tt_content:pages,tt_content:endtime,tt_content:subheader,tt_content:table_caption,tt_content:table_header_position,tt_content:table_class,tt_content:teaser,tt_content:table_enclosure,tt_content:linkToTop,tt_content:header_layout,tt_content:bullets_type,tt_content:table_tfoot,tt_content:hidden,tt_content:imagewidth,tx_bootstrappackage_tab_item:header,tx_bootstrappackage_tab_item:hidden,tx_bootstrappackage_tab_item:sys_language_uid,tx_bootstrappackage_tab_item:media,tx_bootstrappackage_tab_item:mediaorient,tx_bootstrappackage_tab_item:starttime,tx_bootstrappackage_tab_item:endtime,tx_bootstrappackage_tab_item:tt_content,fe_users:address,fe_users:city,fe_users:company,fe_users:country,fe_users:email,fe_users:disable,fe_users:fax,fe_users:first_name,fe_users:felogin_forgotHash,fe_users:image,fe_users:lastlogin,fe_users:last_name,fe_users:middle_name,fe_users:name,fe_users:telephone,fe_users:tx_extbase_type,fe_users:felogin_redirectPid,fe_users:starttime,fe_users:endtime,fe_users:title,fe_users:TSconfig,fe_users:www,fe_users:zip,fe_groups:hidden,fe_groups:tx_extbase_type,fe_groups:felogin_redirectPid,fe_groups:subgroup,fe_groups:TSconfig','tt_content:CType:list,tt_content:list_type:indexedsearch_pi2','0,1,2','','web_layout,web_FormFormbuilder,web_list,user_setup','','','2,1','0',NULL);
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'default',
  `uc` mediumblob DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `password_reset_token` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `usergroup` varchar(512) DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `db_mountpoints` longtext DEFAULT NULL,
  `file_mountpoints` varchar(255) DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `options` smallint(5) unsigned NOT NULL DEFAULT 3,
  `file_permissions` longtext DEFAULT NULL,
  `workspace_perms` smallint(5) unsigned NOT NULL DEFAULT 1,
  `userMods` longtext DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `TSconfig` longtext DEFAULT NULL,
  `lastlogin` bigint(20) NOT NULL DEFAULT 0,
  `category_perms` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES
(1,0,1744013612,1744013612,0,0,0,0,NULL,'default','a:5:{s:10:\"moduleData\";a:4:{s:28:\"dashboard/current_dashboard/\";s:40:\"faacf8dc927e44b8c4a076ea597850984919bb89\";s:10:\"FormEngine\";a:2:{i:0;a:2:{s:32:\"b488170379a7c112e7538b66076b391d\";a:5:{i:0;s:4:\"Home\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:101;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:30:\"&edit%5Bpages%5D%5B101%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:101;s:3:\"pid\";i:98;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:78:\"/typo3/module/web/layout?token=9cf4c046029328ed32a522332aaca6995d3a82e0&id=101\";}s:32:\"650b3918a6e6f1922310b8e5c5ac84d5\";a:5:{i:0;s:4:\"News\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:11;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B11%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:11;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:77:\"/typo3/module/web/layout?token=9cf4c046029328ed32a522332aaca6995d3a82e0&id=11\";}}i:1;s:32:\"650b3918a6e6f1922310b8e5c5ac84d5\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:9:\"scheduler\";a:1:{s:6:\"action\";s:16:\"scheduler_manage\";}}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"moduleSessionID\";a:4:{s:28:\"dashboard/current_dashboard/\";s:40:\"d2a67509073641c1fb84cf2f740737671698ae68\";s:10:\"FormEngine\";s:40:\"d2a67509073641c1fb84cf2f740737671698ae68\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:40:\"d2a67509073641c1fb84cf2f740737671698ae68\";s:9:\"scheduler\";s:40:\"d2a67509073641c1fb84cf2f740737671698ae68\";}}',0,NULL,'','admin','$argon2i$v=19$m=65536,t=16,p=1$cjNtWXpSNVZuc2RkL2F0cw$FvQ8JuWL5KTBrkDk+JFOpvhVzo8CPSzz9/smYI90AIA','',0,NULL,'','info@typo3.com','',1,3,NULL,1,NULL,'',NULL,1747847937,NULL),
(2,0,1744014582,1744014582,0,0,0,0,NULL,'default','a:4:{s:10:\"moduleData\";a:0:{}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:20:\"edit_docModuleUpload\";s:1:\"1\";}',0,NULL,'','_cli_','$argon2id$v=19$m=65536,t=16,p=1$Qk41RG10QTUxUGQzclc3dA$9bxBcygWFXt9U5WuxRJLFP3866mFPYZjpkdwMrS98sg','',0,NULL,'','','',1,3,NULL,1,NULL,'',NULL,0,NULL);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `subgroup` varchar(255) DEFAULT '',
  `felogin_redirectPid` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
INSERT INTO `fe_groups` VALUES
(1,16,1747689602,1744015096,1,0,'','Usergroup','',''),
(2,102,1747512581,1747512581,0,0,'','Club Members','','');
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uc` blob DEFAULT NULL,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `usergroup` varchar(512) DEFAULT '',
  `name` varchar(160) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` longtext DEFAULT NULL,
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `lastlogin` bigint(20) NOT NULL DEFAULT 0,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  `felogin_redirectPid` longtext DEFAULT NULL,
  `date_of_birth` bigint(20) NOT NULL DEFAULT 0,
  `gender` int(11) NOT NULL DEFAULT 0,
  `iban` varchar(255) NOT NULL DEFAULT '',
  `bic` varchar(255) NOT NULL DEFAULT '',
  `sepa_debtor_mandate` varchar(35) NOT NULL DEFAULT '',
  `sepa_debtor_mandate_sign_date` bigint(20) NOT NULL DEFAULT 0,
  `privacy_accepted_at` bigint(20) NOT NULL DEFAULT 0,
  `member_since` bigint(20) NOT NULL DEFAULT 0,
  `member_until` bigint(20) NOT NULL DEFAULT 0,
  `membership` longtext DEFAULT NULL,
  `membership_status` int(11) NOT NULL DEFAULT 0,
  `payments` int(10) unsigned NOT NULL DEFAULT 0,
  `notes` longtext DEFAULT NULL,
  `create_hash` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`),
  KEY `felogin_forgotHash` (`felogin_forgotHash`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
INSERT INTO `fe_users` VALUES
(1,16,1747689602,1744015096,1,0,0,0,NULL,'0',NULL,0,NULL,'admin','$P$C5tJlzDAHa6hno9T1cr75mvpfDUShu/','1','','','','','','','','','','','','','','',0,0,'','',0,0,'','','',0,0,0,0,NULL,0,0,NULL,''),
(2,102,1747730374,1747730010,0,0,0,0,NULL,'tx_memsy_member',NULL,1747779113,NULL,'info@example.com','$argon2i$v=19$m=65536,t=16,p=1$b0tOTWJBUElXcEs1UkF3eA$HUhEnLuePdRXc6NT92H0NCVFV8hWnQAuz/QtTpShAvc','2','','J.','','Doe','Some Streeet','+491455464','','info@example.com','','89231','Ulm','DE','','',0,1747774105,'',NULL,534414810,1,'DE75512108001245126199','','',0,1747730010,0,0,'1',1,1,'','');
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_config`
--

DROP TABLE IF EXISTS `index_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `index_config` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `set_id` int(11) NOT NULL DEFAULT 0,
  `session_data` mediumtext DEFAULT NULL,
  `alternative_source_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` int(10) unsigned NOT NULL DEFAULT 0,
  `depth` int(10) unsigned NOT NULL DEFAULT 0,
  `table2index` varchar(255) NOT NULL DEFAULT '',
  `indexcfgs` longtext DEFAULT NULL,
  `get_params` varchar(255) NOT NULL DEFAULT '',
  `fieldlist` varchar(255) NOT NULL DEFAULT '',
  `externalUrl` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `extensions` varchar(255) NOT NULL DEFAULT '',
  `url_deny` longtext DEFAULT NULL,
  `records_indexonchange` smallint(5) unsigned NOT NULL DEFAULT 0,
  `timer_next_indexing` bigint(20) NOT NULL DEFAULT 0,
  `timer_offset` bigint(20) NOT NULL DEFAULT 0,
  `timer_frequency` int(10) unsigned NOT NULL DEFAULT 0,
  `recordsbatch` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_config`
--

LOCK TABLES `index_config` WRITE;
/*!40000 ALTER TABLE `index_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_grlist`
--

DROP TABLE IF EXISTS `index_grlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `index_grlist` (
  `uniqid` int(11) NOT NULL AUTO_INCREMENT,
  `phash` varchar(32) NOT NULL,
  `phash_x` varchar(32) NOT NULL,
  `hash_gr_list` varchar(32) NOT NULL,
  `gr_list` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uniqid`),
  KEY `joinkey` (`phash`,`hash_gr_list`),
  KEY `phash_grouping` (`phash_x`,`hash_gr_list`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_grlist`
--

LOCK TABLES `index_grlist` WRITE;
/*!40000 ALTER TABLE `index_grlist` DISABLE KEYS */;
INSERT INTO `index_grlist` VALUES
(2,'9bd8393860e6e9cf4c907a0919ca687d','9bd8393860e6e9cf4c907a0919ca687d','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(13,'230f8464c03ab1dc4fbd4bc332b6b776','230f8464c03ab1dc4fbd4bc332b6b776','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(14,'55a01547a20d7d965193fcd3e277624c','55a01547a20d7d965193fcd3e277624c','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(16,'755095551c463ec2cdedd536714e08a7','755095551c463ec2cdedd536714e08a7','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(17,'56ce185f3262c9101626cfd28a4127a4','56ce185f3262c9101626cfd28a4127a4','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(18,'3e239e3d69de4b3b36fcd34479259a89','3e239e3d69de4b3b36fcd34479259a89','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(19,'c0296a4b8c58865ca9e0f1502b08995d','c0296a4b8c58865ca9e0f1502b08995d','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(20,'9f8b01a6c6a9bdc99536f153cd68d2b7','9f8b01a6c6a9bdc99536f153cd68d2b7','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(23,'a8e33b084be533fcf029619ccf07732a','a8e33b084be533fcf029619ccf07732a','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(25,'3d798c3f120fdabe32985de46a5fc2fd','3d798c3f120fdabe32985de46a5fc2fd','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(26,'68d237c4097d4cfacaa1850865ef957e','68d237c4097d4cfacaa1850865ef957e','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(27,'03394a29ed2144f96bced193919a622f','03394a29ed2144f96bced193919a622f','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(28,'6d2ddd1174e062f12957e8f7a89bafb1','6d2ddd1174e062f12957e8f7a89bafb1','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(29,'1290464a62b44fab8d78ace9c2f6f6e9','1290464a62b44fab8d78ace9c2f6f6e9','cdc0a8f9fe7f5e206d167723a90af880','0,-1'),
(30,'49a936d4a225f7a63e3c2d860a4ec022','49a936d4a225f7a63e3c2d860a4ec022','e214aaf89941ccfe9f2b1d3bd2c4fc76','0,-2,2'),
(31,'724c8f72afa9e4bbe71160df87c71652','724c8f72afa9e4bbe71160df87c71652','e214aaf89941ccfe9f2b1d3bd2c4fc76','0,-2,2'),
(32,'78cabd40e1e1f417b9f83789c2321f4a','78cabd40e1e1f417b9f83789c2321f4a','cdc0a8f9fe7f5e206d167723a90af880','0,-1');
/*!40000 ALTER TABLE `index_grlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_phash`
--

DROP TABLE IF EXISTS `index_phash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `index_phash` (
  `phash` varchar(32) NOT NULL,
  `phash_grouping` varchar(32) NOT NULL,
  `static_page_arguments` blob DEFAULT NULL,
  `data_filename` varchar(1024) NOT NULL DEFAULT '',
  `data_page_id` int(10) unsigned NOT NULL DEFAULT 0,
  `data_page_type` int(10) unsigned NOT NULL DEFAULT 0,
  `data_page_mp` varchar(255) NOT NULL DEFAULT '',
  `gr_list` varchar(255) NOT NULL DEFAULT '',
  `item_type` varchar(5) NOT NULL DEFAULT '',
  `item_title` varchar(255) NOT NULL DEFAULT '',
  `item_description` varchar(255) NOT NULL DEFAULT '',
  `item_mtime` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `item_size` int(11) NOT NULL DEFAULT 0,
  `contentHash` varchar(32) NOT NULL,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `parsetime` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `item_crdate` int(11) NOT NULL DEFAULT 0,
  `externalUrl` smallint(6) NOT NULL DEFAULT 0,
  `recordUid` int(11) NOT NULL DEFAULT 0,
  `freeIndexUid` int(11) NOT NULL DEFAULT 0,
  `freeIndexSetId` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`phash`),
  KEY `phash_grouping` (`phash_grouping`),
  KEY `freeIndexUid` (`freeIndexUid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_phash`
--

LOCK TABLES `index_phash` WRITE;
/*!40000 ALTER TABLE `index_phash` DISABLE KEYS */;
INSERT INTO `index_phash` VALUES
('03394a29ed2144f96bced193919a622f','24209093ce98107aa449a6aa385cd375','[]','',10,0,'','0,-1','0','History','From foundation to the regional league Our history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and ',1744014582,1747774059,12913,'70ff335fd61044ef649fa7ce23b08704',1747774059,134,0,1744014582,0,0,0,0),
('1290464a62b44fab8d78ace9c2f6f6e9','61a2a2a21551669263cbd52843897860','[]','',106,0,'','0,-1','0','Login','',1747728332,1747774085,8421,'99dea78007133396a7b8ed70578ac6ae',1747774085,22,0,1747727970,0,0,0,0),
('230f8464c03ab1dc4fbd4bc332b6b776','ad5c9ca91e077da8aa1ce2dff42a55f1','[]','',99,0,'','0,-1','0','Page A','Page A Page B',1744022126,1744022132,1599,'ecc6dd1a44b97d6794d65dc91f851d7a',1744022132,8,0,1744022114,0,0,0,0),
('3d798c3f120fdabe32985de46a5fc2fd','dc91fa3918f3fab9a43a16f82bb27086','[]','',1,0,'','0,-1','0','FC Bigfoot','Events News Club Login History Membership Contact Team Sponsors Contact Us FC Bigfoot Fuerteventura 23 years of passion and dedication Join today Our latest Game Results News 24 Feb 2024 15th charity ',1747728300,1747763581,20613,'68cdca309ecdb7e1addb33bad54e5a7b',1747763581,49,0,1744014582,0,0,0,0),
('3e239e3d69de4b3b36fcd34479259a89','8a6ef888a6fc754ec9234c30e393cb8f','[]','',5,0,'','0,-1','0','Sponsors','Our companions and sponsors At FC Bigfoot, we are proud to have the backing of our dedicated supporters and companions. These valued partners play a crucial role in the success and growth of our club.',1744014582,1747767218,9404,'34d68992759821b3215089eb3c75c365',1747512491,30,0,1744014582,0,0,0,0),
('49a936d4a225f7a63e3c2d860a4ec022','61a2a2a21551669263cbd52843897860','[]','',106,0,'','0,-2,2','0','Login','',1747728332,1747774105,8761,'99dea78007133396a7b8ed70578ac6ae',1747774105,7,0,1747727970,0,0,0,0),
('55a01547a20d7d965193fcd3e277624c','49bd411e140968a8cdc3180e2441bfe7','[]','',100,0,'','0,-1','0','Page B','Page A Page B',1744022124,1744022133,1599,'3e413a5660735903caa5cd997bfbcf2f',1744022133,8,0,1744022118,0,0,0,0),
('56ce185f3262c9101626cfd28a4127a4','cadd9455631c2005b0784198b1c7f739','[]','',2,0,'','0,-1','0','Privacy Policy','Privacy Policy Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et jus',1744014582,1747512484,14541,'b1ad2257c6042b447ca4e8c389986803',1747512484,65,0,1744014582,0,0,0,0),
('68d237c4097d4cfacaa1850865ef957e','7274c0580dea745ce5f7f1790b2f97bd','[]','',98,0,'','0,-1','0','Base','Home Page A Page B Bootstrap Package - FC Bigfoot',1744021558,1747773267,2229,'9e63aa6649a65f6176eb515840c1d0b1',1747773267,43,0,1744016344,0,0,0,0),
('6d2ddd1174e062f12957e8f7a89bafb1','42a44c80384793445371a8816cb755cc','[]','',4,0,'','0,-1','0','Contact Us','Looking for answers? * * * Lorem ipsum dolor sit amet consectetur adipisicing elit * Submit',1744014582,1747774079,12424,'76cc6cb7ea0a4cbcc93f0ef5d20474f2',1747774079,8,0,1744014582,0,0,0,0),
('724c8f72afa9e4bbe71160df87c71652','dc91fa3918f3fab9a43a16f82bb27086','[]','',1,0,'','0,-2,2','0','FC Bigfoot','Events News Club Login History Membership Member Area Contact Team Sponsors Contact Us FC Bigfoot Fuerteventura 23 years of passion and dedication Join today Our latest Game Results 3 : 0 SurfCamp Lea',1747728300,1747774131,30981,'d9cd5e46e16e67f4bd99282f5fd198a4',1747774131,74,0,1744014582,0,0,0,0),
('755095551c463ec2cdedd536714e08a7','231cf1b64ac1e2ee0b37e62a56171e27','[]','',6,0,'','0,-1','0','Team','The Team Player 1 Player 2 Player 3 Player 4 Player 5 Player 6 Player 7 Player 8',1744014582,1747774051,10034,'e44dbf90baf5c1d021bbb90feba3536d',1747511466,23,0,1744014582,0,0,0,0),
('78cabd40e1e1f417b9f83789c2321f4a','17e3c529abc7b537c5fcf59f12035044','[]','',3,0,'','0,-1','0','Search','',1744014582,1747848552,8409,'13348442cc6a27032d2b4aa28b75a5d3',1747848552,17,0,1744014582,0,0,0,0),
('9bd8393860e6e9cf4c907a0919ca687d','f5bad68bc9b081e512151ece334fae4f','[]','',12,0,'','0,-1','0','Events','Our Game Results Stay updated with the latest scores and outcomes of FC Bigfoot\'s matches. Here, you will find a comprehensive list of our recent game results. Keep checking back for the most current ',1744014582,1747767220,21136,'d4ee89affc87c8081e823b172dcfc30c',1744014836,21,0,1744014582,0,0,0,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','260272db56c0b2239e225cea5f846b49','[]','',11,0,'','0,-1','0','News','News about our club FC Bigfoot\'s 15th Charity Tournament FC Bigfoot proudly announces the 15th edition of our charity tournament! This beloved event unites soccer enthusiasts, players, and supporters ',1744014582,1747692388,12826,'1ac085fcc0132ef4ed7455f215c39761',1747519233,81,0,1744014582,0,0,0,0),
('a8e33b084be533fcf029619ccf07732a','25c669d3081da1f1c1f60ecc6d566990','[]','',9,0,'','0,-1','0','Membership','Become a Member today Join the FC Bigfoot community by becoming a member today! Our membership program offers a variety of benefits designed to enhance your experience and connection with the club. As',1747727757,1747727765,9395,'90b42102810ae58c246ec7d27acda948',1747727765,39,0,1744014582,0,0,0,0),
('c0296a4b8c58865ca9e0f1502b08995d','101b7d8adb6ae7f7b6bf0abc85b15c25','[]','',7,0,'','0,-1','0','Club','',1744014582,1747512495,8032,'aeef646f76c57ed9084edddbb6365b9c',1747512495,5,0,1744014582,0,0,0,0);
/*!40000 ALTER TABLE `index_phash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_rel`
--

DROP TABLE IF EXISTS `index_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `index_rel` (
  `phash` varchar(32) NOT NULL,
  `wid` varchar(32) NOT NULL,
  `count` smallint(5) unsigned NOT NULL DEFAULT 0,
  `first` int(10) unsigned NOT NULL DEFAULT 0,
  `freq` smallint(5) unsigned NOT NULL DEFAULT 0,
  `flags` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`phash`,`wid`),
  KEY `wid` (`wid`,`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_rel`
--

LOCK TABLES `index_rel` WRITE;
/*!40000 ALTER TABLE `index_rel` DISABLE KEYS */;
INSERT INTO `index_rel` VALUES
('03394a29ed2144f96bced193919a622f','0010c6d8214b2e0dbcce46f52cca3734',1,117,682,0),
('03394a29ed2144f96bced193919a622f','01b6e20344b68835c5ed1ddedf20d531',12,2,8187,0),
('03394a29ed2144f96bced193919a622f','01baf36bbdfd6958a8f4fa68b8eb9138',1,1,682,0),
('03394a29ed2144f96bced193919a622f','03c7c0ace395d80182db07ae2c30f034',1,298,682,0),
('03394a29ed2144f96bced193919a622f','052868ffed45aa3fb6beaff64dcef9b2',1,14,682,0),
('03394a29ed2144f96bced193919a622f','06e3d36fa30cea095545139854ad1fb9',1,108,682,0),
('03394a29ed2144f96bced193919a622f','07811dc6c422334ce36a09ff5cd6fe71',1,307,682,0),
('03394a29ed2144f96bced193919a622f','07868a716d4712d7771f6414d2b8bf8a',2,182,1364,0),
('03394a29ed2144f96bced193919a622f','07cc694b9b3fc636710fa08b6922c42b',1,330,682,0),
('03394a29ed2144f96bced193919a622f','07ccfe360dce69b84595428e2ec1c1cc',2,267,1364,0),
('03394a29ed2144f96bced193919a622f','0a541335927d1ab16d9febe9b199bae1',3,87,2046,0),
('03394a29ed2144f96bced193919a622f','0b86f0f8d1478e2f4da5aee809824821',1,350,682,0),
('03394a29ed2144f96bced193919a622f','0cc175b9c0f1b6a831c399e269772661',20,9,13646,0),
('03394a29ed2144f96bced193919a622f','0d149b90e7394297301c90191ae775f0',1,58,682,0),
('03394a29ed2144f96bced193919a622f','0e5243d9965540f62aac19a985f3f33e',1,361,682,0),
('03394a29ed2144f96bced193919a622f','0e66be14b86bd30bf4fc84357763b591',3,129,2046,0),
('03394a29ed2144f96bced193919a622f','10933ceaff3c94fa3844de8a15af6a45',1,202,682,0),
('03394a29ed2144f96bced193919a622f','1180a13c0273c83a6e0b2dcd9a7a6f62',1,454,682,0),
('03394a29ed2144f96bced193919a622f','13b5bfe96f3e2fe411c9f66f4a582adf',10,83,6823,0),
('03394a29ed2144f96bced193919a622f','14f4aeb5bebf370f95ab882c829a5a86',1,440,682,0),
('03394a29ed2144f96bced193919a622f','152c8d094c159fe4ed76eae56d8d48ed',1,146,682,0),
('03394a29ed2144f96bced193919a622f','162e31afc5ade88a04d3f428e97e8f46',2,6,1364,0),
('03394a29ed2144f96bced193919a622f','16875aa2b5eed3e388dcceaa36f56214',1,246,682,0),
('03394a29ed2144f96bced193919a622f','16908b0605f2645dfcb4c3a8d248cef3',1,248,682,0),
('03394a29ed2144f96bced193919a622f','1818d506396d77b3d035f719885c4cd1',2,41,1364,0),
('03394a29ed2144f96bced193919a622f','18218139eec55d83cf82679934e5cd75',1,459,682,0),
('03394a29ed2144f96bced193919a622f','1a57771a7d3737aadc12f4c4c8c19b71',1,385,682,0),
('03394a29ed2144f96bced193919a622f','1af4e7c58b59d5254ef70440b21fceab',2,19,1364,0),
('03394a29ed2144f96bced193919a622f','1c6819d0309c7f049345d8d6a8c03162',1,170,682,0),
('03394a29ed2144f96bced193919a622f','1ce873c16c6b46b4a275b438591a9f7c',1,125,682,0),
('03394a29ed2144f96bced193919a622f','1ed1645edd706dc379effe13f3edcacf',2,188,1364,0),
('03394a29ed2144f96bced193919a622f','1fe57d6202c7cfbb0ee344b1e0a6fb37',1,322,682,0),
('03394a29ed2144f96bced193919a622f','21582c6c30be1217322cdb9aebaf4a59',4,193,2729,0),
('03394a29ed2144f96bced193919a622f','228c70bfc5589c58c044e03fff0e17eb',1,458,682,0),
('03394a29ed2144f96bced193919a622f','22af645d1859cb5ca6da0c484f1f37ea',1,345,682,0),
('03394a29ed2144f96bced193919a622f','22c1febc0ae5b70d1b992009b7ff05d2',1,110,682,0),
('03394a29ed2144f96bced193919a622f','23a58bf9274bedb19375e527a0744fa9',5,39,3411,0),
('03394a29ed2144f96bced193919a622f','260ca9dd8a4577fc00b7bd5810298076',2,367,1364,0),
('03394a29ed2144f96bced193919a622f','27b084adcf83c8fac848dbd371ff76c1',1,245,682,0),
('03394a29ed2144f96bced193919a622f','2942c466ae985c4fe2d8cc9d0c801501',1,259,682,0),
('03394a29ed2144f96bced193919a622f','2a1585a864d9e67627c6ae04c807a2c5',1,169,682,0),
('03394a29ed2144f96bced193919a622f','2b30eb962003529aa1d435285d39b1c0',1,218,682,0),
('03394a29ed2144f96bced193919a622f','2b3de800b4576343a07e86b8c420e448',1,98,682,0),
('03394a29ed2144f96bced193919a622f','2bb3d86d95234affa7c5bd68c4bab606',2,120,1364,0),
('03394a29ed2144f96bced193919a622f','2c61ebff5a7f675451467527df66788d',1,69,682,0),
('03394a29ed2144f96bced193919a622f','308319a5ba52f2b73fd79195accdd23a',1,408,682,0),
('03394a29ed2144f96bced193919a622f','31407b18c5a9dd810565caedda2d0e42',1,214,682,0),
('03394a29ed2144f96bced193919a622f','3189934774aa880fa7fbf8da8f9e446d',1,38,682,0),
('03394a29ed2144f96bced193919a622f','3309a7a7941818e131b4dfb9a6349914',5,59,3411,0),
('03394a29ed2144f96bced193919a622f','36a383994590c1a836800f68a08d00ba',1,135,682,0),
('03394a29ed2144f96bced193919a622f','37598dad8f8805ce708ba8c4f67ce367',2,57,1364,0),
('03394a29ed2144f96bced193919a622f','37b4e2d82900d5e94b8da524fbeb33c0',2,94,1364,0),
('03394a29ed2144f96bced193919a622f','388053b7c0f6bc0351cb7698028e0611',1,270,682,0),
('03394a29ed2144f96bced193919a622f','39abfe1fef63919e7062a25193c1708c',1,17,682,0),
('03394a29ed2144f96bced193919a622f','3a6988a0228a33b2c1100201f4dd148e',1,123,682,0),
('03394a29ed2144f96bced193919a622f','3cd15f8f2940aff879df34df4e5c2cd1',5,0,3411,128),
('03394a29ed2144f96bced193919a622f','3e072748feb6ecd1b1ba397704e009c0',1,126,682,0),
('03394a29ed2144f96bced193919a622f','3f1b0333a44fd5f611d3429887eba4a8',1,131,682,0),
('03394a29ed2144f96bced193919a622f','431bc85b812bd8bcac81bdd27429a12d',1,16,682,0),
('03394a29ed2144f96bced193919a622f','434990c8a25d2be94863561ae98bd682',3,31,2046,0),
('03394a29ed2144f96bced193919a622f','44fdec47036f482b68b748f9d786801b',1,99,682,0),
('03394a29ed2144f96bced193919a622f','46c48bec0d282018b9d167eef7711b2c',1,152,682,0),
('03394a29ed2144f96bced193919a622f','4757fe07fd492a8be0ea6a760d683d6e',1,426,682,0),
('03394a29ed2144f96bced193919a622f','4802fad13618b3ecb36d9180e981704f',1,313,682,0),
('03394a29ed2144f96bced193919a622f','48bb082d4244476f2ef109e51f8f7554',1,191,682,0),
('03394a29ed2144f96bced193919a622f','49889d3f78e208b1538f15a0c7bc16d0',3,4,2046,0),
('03394a29ed2144f96bced193919a622f','49a2d564f1275e1c4e633abc331547db',1,400,682,0),
('03394a29ed2144f96bced193919a622f','4d200fce73a8e1cc965cfc2c43343824',1,462,682,0),
('03394a29ed2144f96bced193919a622f','4f09daa9d95bcb166a302407a0e0babe',1,54,682,0),
('03394a29ed2144f96bced193919a622f','4fef4776f4c032045190a1f915411e19',1,33,682,0),
('03394a29ed2144f96bced193919a622f','50324905c471f3d4d61f7d3f723f3644',1,360,682,0),
('03394a29ed2144f96bced193919a622f','507d922378ecab8e10b81dcbc2ff8bf3',1,290,682,0),
('03394a29ed2144f96bced193919a622f','517b08dafd8aa7559790bf0715de47c6',4,5,2729,0),
('03394a29ed2144f96bced193919a622f','53689aacbba32f62a7ee90c641493951',1,410,682,0),
('03394a29ed2144f96bced193919a622f','55824ad4959e2d9b965227bbc833c960',1,332,682,0),
('03394a29ed2144f96bced193919a622f','584826e70485130530f7f01a973d5637',10,97,6823,0),
('03394a29ed2144f96bced193919a622f','59588ec7ce34becf631e42e3f6287300',2,175,1364,0),
('03394a29ed2144f96bced193919a622f','596733001b7a1d7dac726edda17df294',1,431,682,0),
('03394a29ed2144f96bced193919a622f','5a02279c40a93ee286d2cb0d9a0db4f0',1,419,682,0),
('03394a29ed2144f96bced193919a622f','5b6ddba2ee690f181e25b9cfb807b824',1,184,682,0),
('03394a29ed2144f96bced193919a622f','5bace2853ebc457c9baf0678fe77fe1b',1,151,682,0),
('03394a29ed2144f96bced193919a622f','5bbf2d6725b29ad8ddb7c3ab47c50930',1,333,682,0),
('03394a29ed2144f96bced193919a622f','5c73514ee7a609054d81de61dd9ca3d6',1,393,682,0),
('03394a29ed2144f96bced193919a622f','5f9a38494f6d7426bcbd945a2c332949',1,86,682,0),
('03394a29ed2144f96bced193919a622f','5fd9a718e5c073bb745cd970a6f1a5f3',1,447,682,0),
('03394a29ed2144f96bced193919a622f','5ff58d62c15f28a3f16d0bbe332a1439',5,206,3411,0),
('03394a29ed2144f96bced193919a622f','60aef5b4c954c9f7ac9016310c55aac7',1,381,682,0),
('03394a29ed2144f96bced193919a622f','610264491fdf7f3be32d04c3b7c453cf',1,398,682,0),
('03394a29ed2144f96bced193919a622f','62628cfd1cdd77d02c32812f048bada3',1,288,682,0),
('03394a29ed2144f96bced193919a622f','628b7db04235f228d40adc671413a8c8',1,194,682,0),
('03394a29ed2144f96bced193919a622f','6299ba2cbd9661a5e3872b715521cd6a',2,50,1364,0),
('03394a29ed2144f96bced193919a622f','639bae9ac6b3e1a84cebb7b403297b79',1,68,682,0),
('03394a29ed2144f96bced193919a622f','661841eec099d5338efbfc94d9f17510',1,45,682,0),
('03394a29ed2144f96bced193919a622f','66972eaa447917c5b2effc22f60a956b',1,154,682,0),
('03394a29ed2144f96bced193919a622f','66a57cbdbefdd38ae98fb2fec3234384',1,269,682,0),
('03394a29ed2144f96bced193919a622f','67ed0b03a2cf33155fcb3d27e399f4e6',1,467,682,0),
('03394a29ed2144f96bced193919a622f','6805db9aa8d4796fdccedadc356c77b3',1,444,682,0),
('03394a29ed2144f96bced193919a622f','69d9d554b415750c188714d172ff955e',1,343,682,0),
('03394a29ed2144f96bced193919a622f','6b393b6b209b981e9c552d3d3814c420',1,119,682,0),
('03394a29ed2144f96bced193919a622f','6c92285fa6d3e827b198d120ea3ac674',1,73,682,0),
('03394a29ed2144f96bced193919a622f','6ce207e8f7bc1afc40ba5e1d8a181478',1,162,682,0),
('03394a29ed2144f96bced193919a622f','6e373659f3c93670f67f66279ce312f1',1,20,682,0),
('03394a29ed2144f96bced193919a622f','6e5f1255c3b7e3008e41ca8974012fc4',1,402,682,0),
('03394a29ed2144f96bced193919a622f','6ed2640df741eafe327878bd65000ad3',1,255,682,0),
('03394a29ed2144f96bced193919a622f','6f7f9432d35dea629c8384dab312259a',2,257,1364,0),
('03394a29ed2144f96bced193919a622f','6f857e1b82f3db1d72613365ea42d442',1,312,682,0),
('03394a29ed2144f96bced193919a622f','6fed0ce6808435a1b1cff1c17a4c957a',1,299,682,0),
('03394a29ed2144f96bced193919a622f','74e8333ad11685ff3bdae589c8f6e34d',1,143,682,0),
('03394a29ed2144f96bced193919a622f','759b74ce43947f5f4c91aeddc3e5bad3',4,225,2729,0),
('03394a29ed2144f96bced193919a622f','75aeb98e5241592ad6a6c2c4c78a16ef',2,78,1364,0),
('03394a29ed2144f96bced193919a622f','78ee54aa8f813885fe2fe20d232518b9',2,176,1364,0),
('03394a29ed2144f96bced193919a622f','795c964753c55813f4b19e093e31f934',2,241,1364,0),
('03394a29ed2144f96bced193919a622f','7a3e56dbf4b75792017d682faf64ac07',1,22,682,0),
('03394a29ed2144f96bced193919a622f','7aa28ed115707345d0274032757e8991',1,460,682,0),
('03394a29ed2144f96bced193919a622f','7b0746dabfaed032913530c495453f0f',1,65,682,0),
('03394a29ed2144f96bced193919a622f','7b3a3fe6bf7149d60689a62a053ec719',1,351,682,0),
('03394a29ed2144f96bced193919a622f','7d0db380a5b95a8ba1da0bca241abda1',2,37,1364,0),
('03394a29ed2144f96bced193919a622f','8126146c1eb667719d29fdbe57abc7e1',1,302,682,0),
('03394a29ed2144f96bced193919a622f','82df41632da476065ce2997900554442',6,30,4093,0),
('03394a29ed2144f96bced193919a622f','842e77fefc15c4f24aaf4ec4cc737233',1,252,682,0),
('03394a29ed2144f96bced193919a622f','846c3508919d95b9b6dc610487597e99',1,429,682,0),
('03394a29ed2144f96bced193919a622f','84ddfb34126fc3a48ee38d7044e87276',3,205,2046,0),
('03394a29ed2144f96bced193919a622f','85964989611934e09fd33690cd7aa279',1,229,682,0),
('03394a29ed2144f96bced193919a622f','88627d1fe4d5ef9e8b341f0dbf0370b5',1,406,682,0),
('03394a29ed2144f96bced193919a622f','892ea9918d303f79425139c5a34ccb0b',2,250,1364,0),
('03394a29ed2144f96bced193919a622f','8aaab33740413527c3d6f2be39c6ed2c',1,280,682,0),
('03394a29ed2144f96bced193919a622f','8b04d5e3775d298e78455efc5ca404d5',3,77,2046,0),
('03394a29ed2144f96bced193919a622f','8bf8854bebe108183caeb845c7676ae4',9,26,6140,0),
('03394a29ed2144f96bced193919a622f','8c00c19e66a7ba9d80bded9460cb1b41',1,391,682,0),
('03394a29ed2144f96bced193919a622f','8c40400c009918b5f10b73f9a0e47398',1,104,682,0),
('03394a29ed2144f96bced193919a622f','8cbad96aced40b3838dd9f07f6ef5772',1,145,682,0),
('03394a29ed2144f96bced193919a622f','8cd283d8b7bacc277f2bae5e26ce6d1e',1,64,682,0),
('03394a29ed2144f96bced193919a622f','8dee49165153fc68ffacb5f7f7bf9a3a',1,149,682,0),
('03394a29ed2144f96bced193919a622f','8e355cefbf01134adf70802efd236b9b',1,455,682,0),
('03394a29ed2144f96bced193919a622f','8e83b1d4dd4533f7d84d1c6055598795',1,264,682,0),
('03394a29ed2144f96bced193919a622f','8fc42c6ddf9966db3b09e84365034357',26,3,17739,0),
('03394a29ed2144f96bced193919a622f','910955a907e739b81ec8855763108a29',1,282,682,0),
('03394a29ed2144f96bced193919a622f','933dd8674c563081260867dfa95b5e74',1,21,682,0),
('03394a29ed2144f96bced193919a622f','95cc6b4ac5abdeadc74b73a8ba7200d9',9,36,6140,0),
('03394a29ed2144f96bced193919a622f','99f6f4be0908f24bb4a22a4ffb277da4',1,417,682,0),
('03394a29ed2144f96bced193919a622f','9a4b6f884971dcb4a5172876b335baab',1,49,682,0),
('03394a29ed2144f96bced193919a622f','9aaf3f374c58e8c9dcdd1ebf10256fa5',1,89,682,0),
('03394a29ed2144f96bced193919a622f','9acb44549b41563697bb490144ec6258',1,372,682,0),
('03394a29ed2144f96bced193919a622f','9dd64fb755655d0ad31e8c5507dab208',1,55,682,0),
('03394a29ed2144f96bced193919a622f','9e925e9341b490bfd3b4c4ca3b0c1ef2',5,171,3411,0),
('03394a29ed2144f96bced193919a622f','a0acfa46d86f7610b2c73dbb28f64701',1,221,682,0),
('03394a29ed2144f96bced193919a622f','a181a603769c1f98ad927e7367c7aa51',1,114,682,0),
('03394a29ed2144f96bced193919a622f','a1e6cd7f9480f01643245e0b648d9fbe',2,102,1364,0),
('03394a29ed2144f96bced193919a622f','a2a551a6458a8de22446cc76d639a9e9',2,8,1364,0),
('03394a29ed2144f96bced193919a622f','a2bbabfe7b1dd886a0c32b57bd8a94f9',2,116,1364,0),
('03394a29ed2144f96bced193919a622f','a4559ffef072253af47cf34482a6decb',1,67,682,0),
('03394a29ed2144f96bced193919a622f','a533b26cba9a7c8d891c962473f49ec0',2,82,1364,0),
('03394a29ed2144f96bced193919a622f','a77b3598941cb803eac0fcdafe44fac9',6,81,4093,0),
('03394a29ed2144f96bced193919a622f','a8c478391757a06ee53d8aec274b31a6',1,23,682,0),
('03394a29ed2144f96bced193919a622f','acd05dbb82fb59c9e37b60fe1f328f16',1,61,682,0),
('03394a29ed2144f96bced193919a622f','adb00236071c05878eaeec5b3b96103d',1,186,682,0),
('03394a29ed2144f96bced193919a622f','addec426932e71323700afa1911f8f1c',3,72,2046,0),
('03394a29ed2144f96bced193919a622f','afa05a6348902c252ae10d48879826b3',1,158,682,0),
('03394a29ed2144f96bced193919a622f','b068931cc450442b63f5b3d276ea4297',1,90,682,0),
('03394a29ed2144f96bced193919a622f','b42dad5453b2128a32f6612b13ea5d9f',1,51,682,0),
('03394a29ed2144f96bced193919a622f','b58f5a2fc4d5f188e6b0d11f439437a8',1,268,682,0),
('03394a29ed2144f96bced193919a622f','b8b4b727d6f5d1b61fff7be687f7970f',1,75,682,0),
('03394a29ed2144f96bced193919a622f','b96d6d76b27e3aaa414cf7d198085aea',1,53,682,0),
('03394a29ed2144f96bced193919a622f','bc500dd033a84b00ffd9f81a8a9d5372',2,128,1364,0),
('03394a29ed2144f96bced193919a622f','bd352c8df49c325dd22ad8867e6ef874',1,164,682,0),
('03394a29ed2144f96bced193919a622f','bd4c4ea1b44a8ff2afa18dfd261ec2c8',1,118,682,0),
('03394a29ed2144f96bced193919a622f','be5d5d37542d75f93a87094459f76678',19,13,12963,0),
('03394a29ed2144f96bced193919a622f','bec670e5a55424d840db8636ecc28828',1,25,682,0),
('03394a29ed2144f96bced193919a622f','c0db7d4e3cbad2b18c767c659f448a11',1,212,682,0),
('03394a29ed2144f96bced193919a622f','c185ddac8b5a8f5aa23c5b80bc12d214',1,401,682,0),
('03394a29ed2144f96bced193919a622f','c3262ebffab78cac6b72a63ed8137c4f',1,12,682,0),
('03394a29ed2144f96bced193919a622f','c53df31e20ec8b1f3656fd090f271c0f',1,220,682,0),
('03394a29ed2144f96bced193919a622f','c5ed7369a5a50edae102076547d1405a',1,107,682,0),
('03394a29ed2144f96bced193919a622f','c68271a63ddbc431c307beb7d2918275',1,71,682,0),
('03394a29ed2144f96bced193919a622f','c69b68a0ca8b19b9e58dcfcadb6933f5',1,382,682,0),
('03394a29ed2144f96bced193919a622f','c81c0f0b71e938091314334dc3440fa6',1,180,682,0),
('03394a29ed2144f96bced193919a622f','c8d46d341bea4fd5bff866a65ff8aea9',2,166,1364,0),
('03394a29ed2144f96bced193919a622f','c90ae688b2a3b1fd0751fd743eb385cd',3,199,2046,0),
('03394a29ed2144f96bced193919a622f','c9e9a848920877e76685b2e4e76de38d',1,346,682,0),
('03394a29ed2144f96bced193919a622f','ca23ba209cc33678530392b7197fda4d',1,407,682,0),
('03394a29ed2144f96bced193919a622f','cc23a5af73453c27c71b49531c5d8900',1,121,682,0),
('03394a29ed2144f96bced193919a622f','cc90f1913b83d255b95be0e0fea6d576',1,275,682,0),
('03394a29ed2144f96bced193919a622f','ce0bb0eb1dafcd911038df729e7ebb29',1,293,682,0),
('03394a29ed2144f96bced193919a622f','cf5c0a6a33f6f53bf10be6c527fe5c93',1,217,682,0),
('03394a29ed2144f96bced193919a622f','d0fb963ff976f9c37fc81fe03c21ea7b',2,74,1364,0),
('03394a29ed2144f96bced193919a622f','d194c61fed20c09409961a338e47d739',1,159,682,0),
('03394a29ed2144f96bced193919a622f','d229bbf31eaeebc7c88897732d8b932d',1,277,682,0),
('03394a29ed2144f96bced193919a622f','d2940a0e09b88be2041e12abacc881ef',1,365,682,0),
('03394a29ed2144f96bced193919a622f','d334616758f1c1099a0ae6c443872c8b',1,112,682,0),
('03394a29ed2144f96bced193919a622f','d35e8f9c6b6b0f1c54ced7de730a6241',1,404,682,0),
('03394a29ed2144f96bced193919a622f','d47268e9db2e9aa3827bba3afb7ff94a',1,204,682,0),
('03394a29ed2144f96bced193919a622f','d529e941509eb9e9b9cfaeae1fe7ca23',1,368,682,0),
('03394a29ed2144f96bced193919a622f','d55669822f1a8cf72ec1911e462a54eb',7,113,4776,0),
('03394a29ed2144f96bced193919a622f','d69029ce18e0f2dc8f7842634f064775',1,127,682,0),
('03394a29ed2144f96bced193919a622f','d7812c32def55adbcab7b18cc0276e68',1,138,682,0),
('03394a29ed2144f96bced193919a622f','d98a07f84921b24ee30f86fd8cd85c3c',4,0,2729,0),
('03394a29ed2144f96bced193919a622f','db3f3946ba271882d8c74cdbf3d5179a',1,155,682,0),
('03394a29ed2144f96bced193919a622f','df3f079de6961496f0460dcfdbf9bca3',3,144,2046,0),
('03394a29ed2144f96bced193919a622f','df491a4de50739fa9cffdbd4e3f4b4bb',1,318,682,0),
('03394a29ed2144f96bced193919a622f','e05fe30750d3ea262a610d17ebc07019',12,32,8187,0),
('03394a29ed2144f96bced193919a622f','e1342b084a6585295c7ade62c211f850',2,388,1364,0),
('03394a29ed2144f96bced193919a622f','e3c8afbeb0ec4736db977d18e7e37020',1,10,682,0),
('03394a29ed2144f96bced193919a622f','e3cc92c14a5e6dd1a7d94b6ff634d7fc',1,134,682,0),
('03394a29ed2144f96bced193919a622f','e4586172850ecb0954a632168fa0151a',1,448,682,0),
('03394a29ed2144f96bced193919a622f','e4d31f74c4397cca404cc0fbfebc89ff',1,273,682,0),
('03394a29ed2144f96bced193919a622f','e665e64d39be8129287ce8731e7e473b',1,370,682,0),
('03394a29ed2144f96bced193919a622f','e81c4e4f2b7b93b481e13a8553c2ae1b',1,276,682,0),
('03394a29ed2144f96bced193919a622f','ea170e2cafb1337755c8b3d5ae4437f4',1,70,682,0),
('03394a29ed2144f96bced193919a622f','ea2449f872702f9be2673252f649f821',1,379,682,0),
('03394a29ed2144f96bced193919a622f','ec92c58adafe8f3291136b615a7bae5b',2,295,1364,0),
('03394a29ed2144f96bced193919a622f','ecc3c7b4754f8509cfe9de944671b36f',11,80,7505,0),
('03394a29ed2144f96bced193919a622f','ecda8ff7933831de47cded3bb238b613',1,258,682,0),
('03394a29ed2144f96bced193919a622f','ed2b5c0139cec8ad2873829dc1117d50',4,42,2729,0),
('03394a29ed2144f96bced193919a622f','ed881bac6397ede33c0a285c9f50bb83',1,272,682,0),
('03394a29ed2144f96bced193919a622f','edc1e3ea2ca4939a55f1edf84a1fb85e',1,111,682,0),
('03394a29ed2144f96bced193919a622f','f277687cfcb8e4e4714c2b582bc37080',3,339,2046,0),
('03394a29ed2144f96bced193919a622f','f36acfa3674037fc4f43dab0f06c14b0',2,242,1364,0),
('03394a29ed2144f96bced193919a622f','f3d64714d1f6e7f71558d4252e84ab58',1,233,682,0),
('03394a29ed2144f96bced193919a622f','f3ee211eaff2e448e05ba21b9759af63',1,308,682,0),
('03394a29ed2144f96bced193919a622f','f4c9385f1902f7334b00b9b4ecd164de',1,283,682,0),
('03394a29ed2144f96bced193919a622f','f59cd8184f216f9ebecc3697b68de4c3',2,27,1364,0),
('03394a29ed2144f96bced193919a622f','f5ddaf0ca7929578b408c909429f68f2',3,93,2046,0),
('03394a29ed2144f96bced193919a622f','f6182f0359f72aae12fb90d305ccf9eb',1,405,682,0),
('03394a29ed2144f96bced193919a622f','f61bc28aac428bfb11c51ea329cbc7ff',1,43,682,0),
('03394a29ed2144f96bced193919a622f','f62071fb2eb560e8614c8dc829212273',1,190,682,0),
('03394a29ed2144f96bced193919a622f','f6cb3e816496528d4187db53bc66567f',1,439,682,0),
('03394a29ed2144f96bced193919a622f','f6fee22e34c7d055ea7c17169175d0de',2,28,1364,0),
('03394a29ed2144f96bced193919a622f','f79b1d64a8d8b02b86d797765a6a1fe4',1,348,682,0),
('03394a29ed2144f96bced193919a622f','f82d71a6491c31b384ab5b57d85b6593',1,453,682,0),
('03394a29ed2144f96bced193919a622f','f83d0796e53709a8dd72d2dbf8231ecf',1,230,682,0),
('03394a29ed2144f96bced193919a622f','f894427cc1c571f79da49605ef8b112f',2,101,1364,0),
('03394a29ed2144f96bced193919a622f','f8dcad058c9c44fdb6ffcb22d2d4c31f',1,342,682,0),
('03394a29ed2144f96bced193919a622f','f910ff3a8628ebda9c67ed678703fd7d',1,315,682,0),
('03394a29ed2144f96bced193919a622f','f970e2767d0cfe75876ea857f92e319b',2,300,1364,0),
('03394a29ed2144f96bced193919a622f','f97c5d29941bfb1b2fdab0874906ab82',1,124,682,0),
('03394a29ed2144f96bced193919a622f','fa7842058929774b5e27b579fc597fc9',1,148,682,0),
('1290464a62b44fab8d78ace9c2f6f6e9','d56b699830e77ba53855679cb1d252da',1,0,32000,128),
('230f8464c03ab1dc4fbd4bc332b6b776','0cc175b9c0f1b6a831c399e269772661',2,0,32000,128),
('230f8464c03ab1dc4fbd4bc332b6b776','71860c77c6745379b0d44304d66b6a13',3,0,32000,128),
('230f8464c03ab1dc4fbd4bc332b6b776','92eb5ffee6ae2fec3ad71c777531578f',1,3,32000,0),
('3d798c3f120fdabe32985de46a5fc2fd','01b6e20344b68835c5ed1ddedf20d531',8,77,5446,0),
('3d798c3f120fdabe32985de46a5fc2fd','03d59e663c1af9ac33a9949d1193505a',1,125,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','05e94e8cbc28f5837d0c355917c05fea',1,397,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','06e3d36fa30cea095545139854ad1fb9',2,181,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','06f287d4d2555285b15d0e30a7738037',1,281,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','074b62fb6c21b84e6b5846e6bb001f67',1,17,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','075a959179a3ff15345c5865a10c5435',1,155,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','07811dc6c422334ce36a09ff5cd6fe71',3,29,2042,0),
('3d798c3f120fdabe32985de46a5fc2fd','07868a716d4712d7771f6414d2b8bf8a',1,289,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','07ab242311dbad887fb03e4a25092781',1,138,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','07cc694b9b3fc636710fa08b6922c42b',2,43,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','07ccfe360dce69b84595428e2ec1c1cc',1,65,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','08391c959fc8bd0b672c596c4d6bcdcd',1,164,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','09286af346951f520509c5702db7625e',1,163,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','0b3b97fa66886c5688ee4ae80ec0c3c2',6,10,4085,0),
('3d798c3f120fdabe32985de46a5fc2fd','0cc175b9c0f1b6a831c399e269772661',10,67,6808,0),
('3d798c3f120fdabe32985de46a5fc2fd','0e5243d9965540f62aac19a985f3f33e',1,107,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','0e66be14b86bd30bf4fc84357763b591',2,59,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','0f9642bcff1dc3cd224f1f3e2f1ca629',1,48,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','10b73ec3370562dbd65f130ea54a8a35',1,121,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','11a7a5d55a91adb201e113967eff93fe',1,353,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','1253208465b1efa876f982d8a9e73eef',1,314,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','12de3a4dab98ef8a7d67aace8150b540',1,106,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','13b5bfe96f3e2fe411c9f66f4a582adf',6,74,4085,0),
('3d798c3f120fdabe32985de46a5fc2fd','1424ca49c88f72347af1f2fe7a569169',1,133,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','162e31afc5ade88a04d3f428e97e8f46',12,22,8170,0),
('3d798c3f120fdabe32985de46a5fc2fd','16908b0605f2645dfcb4c3a8d248cef3',3,0,2042,0),
('3d798c3f120fdabe32985de46a5fc2fd','18218139eec55d83cf82679934e5cd75',2,37,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','18ccf61d533b600bbf5a963359223fe4',1,450,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','1b20e9021b3a16b059287caddc7862f6',1,381,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','1ebf4e55c604b92cce9b0f1fd7debcc0',1,57,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','1ed1645edd706dc379effe13f3edcacf',2,73,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','1f5f6080965ed6d0a90e6b9ec599e441',1,141,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','1ff1de774005f8da13f42943881c655f',1,27,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','21582c6c30be1217322cdb9aebaf4a59',3,286,2042,0),
('3d798c3f120fdabe32985de46a5fc2fd','21cec257feb15bcc84e0acd5b0773883',1,461,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','22af645d1859cb5ca6da0c484f1f37ea',1,148,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','23a58bf9274bedb19375e527a0744fa9',1,188,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','23b79ae0fc0f07a3669598dd23c694cc',1,308,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','29d0b8d9daec06cdd0cda7269997b216',1,364,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','2f8a6bf31f3bd67bd2d9720c58b19c9a',3,6,2042,0),
('3d798c3f120fdabe32985de46a5fc2fd','30c6ee2fd7ea2b9ab608ad1b56291bb2',1,317,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','312351bff07989769097660a56395065',1,463,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','312db69f5bf4447dfe3c58983083b54f',1,270,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','3262d48df5d75e3452f0f16b313b7808',2,179,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','3309a7a7941818e131b4dfb9a6349914',2,105,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','339d8d14024f2ae5c8dc2e07362eba1d',7,87,4765,0),
('3d798c3f120fdabe32985de46a5fc2fd','35d6d33467aae9a2e3dccb4b6b027878',1,206,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','364107f60f8e60ce22332e1d3fb8aa6d',1,453,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','37693cfc748049e45d87b8c7d8b9aacd',1,14,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','37b4e2d82900d5e94b8da524fbeb33c0',2,291,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','37d153a06c79e99e4de5889dbe2e7c57',1,145,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','393070777bc8dc5f8900ff849e704f54',1,118,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','3a098d086c802fe130b34cda92eaa1bb',1,102,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','3c59dc048e8850243be8079a5c74d079',1,189,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','3c6e0b8a9c15224a8228b9a98ca1531d',1,355,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','3cd15f8f2940aff879df34df4e5c2cd1',1,4,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','3d9fb56d74e048e4b871027949764052',1,332,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','3e1867f5aee83045775fbe355e6a3ce1',1,85,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','3f1b0333a44fd5f611d3429887eba4a8',2,203,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','3f347890f95ef75c2eacb4f01c622ac9',1,449,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','4015e9ce43edfb0668ddaa973ebc7e87',4,192,2723,0),
('3d798c3f120fdabe32985de46a5fc2fd','40be4e59b9a2a2b5dffb918c0e86b3d7',1,158,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','4119639092e62c55ea8be348e4d9260d',1,251,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','41b54177746ada75a77ec0768ebd51dc',1,100,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','42bd4c0819c498d1c1ab622de74d6f82',1,238,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','434990c8a25d2be94863561ae98bd682',1,166,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','43b5c9175984c071f30b873fdce0a000',1,109,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','43c4975d498bbc4228b3f3a20ff5ac6f',1,318,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','46b3931b9959c927df4fc65fdee94b07',2,127,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','49889d3f78e208b1538f15a0c7bc16d0',1,113,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','4cf2d30b6327df1b462663c7611de22f',2,8,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','4ed5d2eaed1a1fadcc41ad1d58ed603e',1,185,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','50584c36a7a475387f81fa1b1655fe79',1,167,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','508c75c8507a2ae5223dfd2faeb98122',3,1,2042,0),
('3d798c3f120fdabe32985de46a5fc2fd','517b08dafd8aa7559790bf0715de47c6',2,114,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','52d6127375d82f3e300827eb479b2c65',4,296,2723,0),
('3d798c3f120fdabe32985de46a5fc2fd','536801a526cbca7d986e6b9bc55363b8',3,295,2042,0),
('3d798c3f120fdabe32985de46a5fc2fd','53d670af9bb16ea82e7ef41ee23ec6df',1,236,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','53e61336bb49ec978968786b07dea50b',1,25,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','560a6e42db25034a739955610bd3f8b4',1,36,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','5634275d694f8665957746c9619132f0',1,227,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','567904efe9e64d9faf3e41ef402cb568',1,436,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','589b397ed82131bf51acdf63521c2df5',1,418,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','5d17dca175f108350a96a8dfb36a4be6',2,320,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','5e96bf62b9b2c18fdb65564b4a18fd1f',1,348,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','600d6af0f320a021dc494cfa2daca569',1,38,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','60df9e64b0693131b626e465236c6874',1,309,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','62628cfd1cdd77d02c32812f048bada3',1,328,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','628b7db04235f228d40adc671413a8c8',1,247,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','62933a2951ef01f4eafd9bdf4d3cd2f0',2,151,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','62cc0b4ebb0b57b40778179234246c38',2,184,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','639849f6b368019778991b32434354fc',2,47,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','6b48da551d6920b8da8eb01ebc400297',1,287,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','6b5843ce9d2d0599c3e3ce6d59c1551f',1,90,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','6c92285fa6d3e827b198d120ea3ac674',1,123,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','6ed2640df741eafe327878bd65000ad3',2,283,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','6f7f9432d35dea629c8384dab312259a',1,323,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','6f857e1b82f3db1d72613365ea42d442',1,445,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','6fcc4b7d36184ba33346b4be2d5d8244',1,135,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','71ccb7a35a452ea8153b6d920f9f190e',1,23,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','71df210ad5e28264557f10c663572933',1,363,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','731b886d80d2ea138da54d30f43b2005',2,20,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','75aeb98e5241592ad6a6c2c4c78a16ef',1,15,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','77004ea213d5fc71acf74a8c9c6795fb',4,299,2723,0),
('3d798c3f120fdabe32985de46a5fc2fd','7761127a460aaf290ed953098284dd1a',1,411,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','78ee54aa8f813885fe2fe20d232518b9',1,69,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','7b8dc4fb0fb55fc8eb69ff080c45ed7e',1,174,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','7d0db380a5b95a8ba1da0bca241abda1',5,101,3404,0),
('3d798c3f120fdabe32985de46a5fc2fd','7d637d275668ed6d41a9b97e6ad3a556',2,211,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','7dfc1f5dc725f462d6a85bd6a7224164',1,390,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','7f90df6477bdb81ce131fe37eeeb1f01',3,31,2042,0),
('3d798c3f120fdabe32985de46a5fc2fd','82082716189f80fd070b89ac716570ba',1,394,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','82df41632da476065ce2997900554442',4,285,2723,0),
('3d798c3f120fdabe32985de46a5fc2fd','83ab982dd08483187289a75163dc50fe',2,307,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','83c6ea9026abedd647a70333769f6504',1,346,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','8451fc653eaa269664a6d9b46a238424',1,215,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','8518008e8835d42ddb7c83810b5cede0',1,400,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','88c1942bc02943fd4338ebd18d3bf464',1,385,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','89ee4584f59a50776fd36a64d55c1277',1,367,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','8abf18f876245f99e3e536216d5d3bf3',1,313,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','8b461191e6b0705ec1ce1199a20f370e',1,153,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','8bf8854bebe108183caeb845c7676ae4',6,16,4085,0),
('3d798c3f120fdabe32985de46a5fc2fd','8cd283d8b7bacc277f2bae5e26ce6d1e',1,55,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','8df358eebbbb64bf19235a902db73505',2,32,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','8e15b32e960ad327e4c48061410f8bd4',1,137,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','8e83b1d4dd4533f7d84d1c6055598795',2,316,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','8fc42c6ddf9966db3b09e84365034357',16,33,10893,0),
('3d798c3f120fdabe32985de46a5fc2fd','8fd6f46ad5874b41fc087b26745c81b2',4,50,2723,0),
('3d798c3f120fdabe32985de46a5fc2fd','910955a907e739b81ec8855763108a29',1,140,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','931504633da3bba2ae68490a4d0aef24',2,13,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','93349189c5d0219ba8b20ca7cbf068a1',3,297,2042,0),
('3d798c3f120fdabe32985de46a5fc2fd','933dd8674c563081260867dfa95b5e74',2,210,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','95cc6b4ac5abdeadc74b73a8ba7200d9',6,2,4085,0),
('3d798c3f120fdabe32985de46a5fc2fd','960db2ed82202a9706b97775a4269378',2,53,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','97081c1611358b350e8088cb3d2b8b5b',1,333,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','979b93285de87c4731fc824bd9e4ba75',1,351,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','9827f490863603674bc635c4a4bea06c',1,199,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','99f78c54130e752954404fff0707dcbd',1,341,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','9cb9ce5bd9e807867d42a740c9633fc7',1,370,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','9df3b01c60df20d13843841ff0d4482c',1,130,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','9e81e7b963c71363e2fb3eefcfecfc0e',1,420,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','9e925e9341b490bfd3b4c4ca3b0c1ef2',2,202,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','a0c391dc49c440fc9962168353cedde3',1,269,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','a181a603769c1f98ad927e7367c7aa51',1,71,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','a2a551a6458a8de22446cc76d639a9e9',7,64,4765,0),
('3d798c3f120fdabe32985de46a5fc2fd','a2bbabfe7b1dd886a0c32b57bd8a94f9',2,312,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','a542e9b744bedcfd874129ab0f98c4ff',1,360,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','a658279f9b983958149f31e4d8487673',1,361,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','a74ad8dfacd4f985eb3977517615ce25',1,262,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','a7c78469daa497a86142ff91ed286c9c',1,154,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','a98e84980a3612cf1f06dae18c313459',1,156,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','aa08769cdcb26674c6706093503ff0a3',1,441,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','aa8af3ebe14831a7cd1b6d1383a03755',1,80,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','ab3e355e2b6806c984851ebdee2a0da1',1,149,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','ac05c7d8f4406c971085f947e43ef730',4,293,2723,0),
('3d798c3f120fdabe32985de46a5fc2fd','acf4b89d3d503d8252c9c4ba75ddbf6d',1,228,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','adb00236071c05878eaeec5b3b96103d',4,294,2723,0),
('3d798c3f120fdabe32985de46a5fc2fd','addec426932e71323700afa1911f8f1c',9,88,6127,0),
('3d798c3f120fdabe32985de46a5fc2fd','af71e0a18f8a746aaeedb1bbe63b66aa',1,391,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','b03e3fd2b3d22ff6df2796c412b09311',1,254,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','b2fdab230a2c39f3595a947861863cb7',1,93,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','b32d73e56ec99bc5ec8f83871cde708a',1,95,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','b42dad5453b2128a32f6612b13ea5d9f',5,45,3404,0),
('3d798c3f120fdabe32985de46a5fc2fd','b46127d3c32de3d485a478e88b8f6593',1,5,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','b5122e6bf436c50799accdaed57a846d',1,241,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','b5eda0a74558a342cf659187f06f746f',2,78,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','b7b655045b89200c7a4dedb1303ca2f1',1,110,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','b807023f87e63b8ada92f79f546ff9cc',1,240,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','b8a9f715dbb64fd5c56e7783c6820a61',1,216,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','b96ba508e3690f5168e4b0e68b15b178',1,452,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','b9b4136389b37e3520cac8ddc3596c43',1,324,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','ba8a48b0e34226a2992d871c65600a7c',2,150,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','bb3ccd5881d651448ded1dac904054ac',1,126,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','be1ab1632e4285edc3733b142935c60b',1,232,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','be5d5d37542d75f93a87094459f76678',21,18,14297,0),
('3d798c3f120fdabe32985de46a5fc2fd','bf7b83f5e1b17616ccf3e2af66e54e47',1,438,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','c05f6c233521207f6fe311afef550c3c',1,401,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','c185ddac8b5a8f5aa23c5b80bc12d214',2,255,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','c1a1738648ecda410dc3a0dbbb3be683',1,207,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','c395246f710b0e2c86b7ed82f7f56ce3',1,99,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','c51ce410c124a10e0db5e4b97fc2af39',1,144,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','c59174e113eee69e3e2145e6fb22bfad',1,330,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','c5e7dfaf771d423ecf59b008369021e8',1,21,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','c6c24400cd50cd724c6f9a9d2493abf4',1,338,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','c8d46d341bea4fd5bff866a65ff8aea9',4,24,2723,0),
('3d798c3f120fdabe32985de46a5fc2fd','c9ff055d5178c1e5686eb62017e3c4ff',1,169,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','ca23ba209cc33678530392b7197fda4d',2,292,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','cbf5d56e63331be4b1df14b5d99678b2',1,382,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','cc935c5faf4c8f7a0468d7552a9b8138',2,82,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','cd9e6a20f2dd30591bce77969f2b90c1',1,387,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','cf19be9223758af6ecd460b5fc46b2f6',1,405,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d00413cdded7a5c5bc2e06079d63e562',1,335,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d0cab90d8d20d57e2f2b9be52f7dd25d',1,369,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d2e3083420929d8bfae81f58fa4594cb',1,229,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d3d9446802a44259755d38e6d163e820',1,89,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d42f2dd9c54d4fbd36ce35b5ae060c0c',1,388,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d4579b2688d675235f402f6b4b43bcbf',1,272,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d48788168076b999d36c4f3ccb75ba2f',1,68,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d55669822f1a8cf72ec1911e462a54eb',3,40,2042,0),
('3d798c3f120fdabe32985de46a5fc2fd','d56b699830e77ba53855679cb1d252da',1,3,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d6e047923b2b0f63a7a03c66074a0151',1,406,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d745415de7dbe78a88c1cd077b8a798c',1,398,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d7b85f12bdf36266db695411a654f73f',1,28,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d861877da56b8b4ceb35c8cbfdf65bb4',1,34,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','d98a07f84921b24ee30f86fd8cd85c3c',2,51,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','da443a0ad979d5530df38ca1a74e4f80',3,35,2042,0),
('3d798c3f120fdabe32985de46a5fc2fd','db0f6f37ebeb6ea09489124345af2a45',2,212,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','db3f3946ba271882d8c74cdbf3d5179a',2,79,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','dc117c9322deb502c3b16769a8a64e08',1,465,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','de0c47fd329b3e2e28f59696b73b11cc',1,443,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','e05fe30750d3ea262a610d17ebc07019',7,0,4765,128),
('3d798c3f120fdabe32985de46a5fc2fd','e1342b084a6585295c7ade62c211f850',1,217,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','e2eff6c2dafd909df8508f891b385d88',2,46,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','e3cc92c14a5e6dd1a7d94b6ff634d7fc',1,97,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','e5439f340ec51b34d51348e0885bcdf1',1,175,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','e680afd37e4511a8cb3ce9f63168862a',1,231,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','e72ff831dbceb5bf11b0a31b81327631',2,30,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','e81c4e4f2b7b93b481e13a8553c2ae1b',1,81,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','e82fa6ac6af62c4e5bcd387709acd5dc',1,96,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','ebed715e82a0a0f3e950ef6565cdc4a8',1,39,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','ecc3c7b4754f8509cfe9de944671b36f',7,0,4765,128),
('3d798c3f120fdabe32985de46a5fc2fd','ed29da59b3ca8a6b01b216d2973487d2',1,120,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','ed2b5c0139cec8ad2873829dc1117d50',5,98,3404,0),
('3d798c3f120fdabe32985de46a5fc2fd','ed881bac6397ede33c0a285c9f50bb83',2,235,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','eda721c5f8c61daee37ca15ce3c4d881',1,58,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','ee20fd29e100990f661f3f1479c19647',2,321,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','eeaf118e5d97270acfc4cd8da9555891',1,350,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','f068fc985d0a439e5a126d78a28cc4c9',1,366,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','f09cc7ee3a9a93273f4b80601cafb00c',4,263,2723,0),
('3d798c3f120fdabe32985de46a5fc2fd','f1edc500eb1136f10c17eeffb9eecbc5',1,429,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','f39ed5b6d0275dcbc4a2f5de624d95ae',1,198,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','f4af8b5789576c000ce9105b25609bd6',1,462,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','f5743daa1b0c190dc25ac146a657932e',1,344,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','f59cd8184f216f9ebecc3697b68de4c3',1,19,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','f5ab96926a6a561aab7ecb4ba7c915d4',1,234,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','f6cb3e816496528d4187db53bc66567f',2,176,1361,0),
('3d798c3f120fdabe32985de46a5fc2fd','f894427cc1c571f79da49605ef8b112f',3,7,2042,0),
('3d798c3f120fdabe32985de46a5fc2fd','f970e2767d0cfe75876ea857f92e319b',1,161,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','f97c5d29941bfb1b2fdab0874906ab82',1,195,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','f9cb12f89c3f82ffaba2483cd3551d82',1,60,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','f9f90eeaf400d228facde6bc48da5cfb',1,66,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','fbb44b4487415b134bce9c790a27fe5e',1,224,680,0),
('3d798c3f120fdabe32985de46a5fc2fd','ff1ccf57e98c817df1efcd9fe44a8aeb',11,44,7489,0),
('3d798c3f120fdabe32985de46a5fc2fd','ffe8560492ef96f860b965341d0c9698',1,467,680,0),
('3e239e3d69de4b3b36fcd34479259a89','01b6e20344b68835c5ed1ddedf20d531',7,10,14177,0),
('3e239e3d69de4b3b36fcd34479259a89','03265faca14f06be8156135b57d4ccf9',1,61,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','05199deca16614131327f2c3fea9031c',1,78,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','06f287d4d2555285b15d0e30a7738037',1,16,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','07868a716d4712d7771f6414d2b8bf8a',1,103,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','099dafc678df7d266c25f95ccf6cde22',2,75,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','0cc175b9c0f1b6a831c399e269772661',5,24,10126,0),
('3e239e3d69de4b3b36fcd34479259a89','0d3fda0bdbb9d619e09cdf3eecba7999',1,142,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','0e66be14b86bd30bf4fc84357763b591',2,55,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','111c081293c11cb7c2ac6fbf841805cb',1,46,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','13b5bfe96f3e2fe411c9f66f4a582adf',2,27,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','162e31afc5ade88a04d3f428e97e8f46',9,0,18227,0),
('3e239e3d69de4b3b36fcd34479259a89','18b049cc8d8535787929df716f9f4e68',1,135,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','21582c6c30be1217322cdb9aebaf4a59',2,74,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','22af645d1859cb5ca6da0c484f1f37ea',1,119,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','23a58bf9274bedb19375e527a0744fa9',2,81,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','25aa2761448ea05599418ee93dd1d5c5',1,136,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','260ca9dd8a4577fc00b7bd5810298076',1,29,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','29a7e96467b69a9f5a93332e29e9b0de',1,26,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','3f4cede61a59db6832b07ea4f3bd3de1',1,134,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','4015e9ce43edfb0668ddaa973ebc7e87',4,8,8101,0),
('3e239e3d69de4b3b36fcd34479259a89','434990c8a25d2be94863561ae98bd682',1,109,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','43c4975d498bbc4228b3f3a20ff5ac6f',1,144,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','4ace69650136d3421a5e0b259c3bb8e3',5,1,10126,0),
('3e239e3d69de4b3b36fcd34479259a89','4cf2d30b6327df1b462663c7611de22f',2,0,4050,128),
('3e239e3d69de4b3b36fcd34479259a89','4debdd5acda769f4dec9baaf951c1bb9',1,156,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','4e8b250e91212b7e5d8b9f89abea051a',1,122,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','536801a526cbca7d986e6b9bc55363b8',1,99,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','53689aacbba32f62a7ee90c641493951',1,68,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','53d37303b62aa2c190bd5f384faf40ed',1,80,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','5d17dca175f108350a96a8dfb36a4be6',1,21,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','5ff58d62c15f28a3f16d0bbe332a1439',1,31,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','62cc0b4ebb0b57b40778179234246c38',1,143,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','639bae9ac6b3e1a84cebb7b403297b79',1,126,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','6e5f1255c3b7e3008e41ca8974012fc4',1,63,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','6f7f9432d35dea629c8384dab312259a',1,50,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','759b74ce43947f5f4c91aeddc3e5bad3',1,67,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','7896f8fa69398c56d86a65357615c41f',1,22,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','791b0c20a65a95dc903f4928be58156c',1,114,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','7959b935afdef74b73fc9ce484019f03',1,118,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','7d0db380a5b95a8ba1da0bca241abda1',1,4,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','82082716189f80fd070b89ac716570ba',1,77,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','82df41632da476065ce2997900554442',3,53,6075,0),
('3e239e3d69de4b3b36fcd34479259a89','85e47ac07ac9d6416168a97e33fa969a',1,39,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','892ea9918d303f79425139c5a34ccb0b',1,73,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','8bf8854bebe108183caeb845c7676ae4',4,14,8101,0),
('3e239e3d69de4b3b36fcd34479259a89','8c4291f6956da81515a5c0caec2976d0',1,111,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','8cd283d8b7bacc277f2bae5e26ce6d1e',1,123,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','8e83b1d4dd4533f7d84d1c6055598795',4,17,8101,0),
('3e239e3d69de4b3b36fcd34479259a89','8f488a54759182774701b7162904c10c',1,124,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','8fc42c6ddf9966db3b09e84365034357',3,12,6075,0),
('3e239e3d69de4b3b36fcd34479259a89','945b93f37cd9aa702a7380756f44e36a',1,154,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','95456e7506a8c9c04e3bdffd78da1cae',1,148,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','95cc6b4ac5abdeadc74b73a8ba7200d9',2,34,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','965dbaac085fc891bfbbd4f9d145bbc8',1,112,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','96853c0e2dd18a1ef79b19f485d60290',1,48,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','98dc0157e90a9b28306967d14bdd2f4f',1,116,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','9a9baf382431a948930621cc5e9757fe',1,25,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','a181a603769c1f98ad927e7367c7aa51',1,128,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','a3b34c0871dc2fd51eec5559b68f709d',1,23,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','a3e0f6576a754059784babff593d798a',2,9,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','af14b067a4804cdc758bf5ba6908a3fb',1,93,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','b42dad5453b2128a32f6612b13ea5d9f',1,11,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','b4aea98a6f42c3ff3c7e6a3632f5d789',1,88,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','bd4c4ea1b44a8ff2afa18dfd261ec2c8',1,20,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','be5d5d37542d75f93a87094459f76678',13,2,26329,0),
('3e239e3d69de4b3b36fcd34479259a89','c0db7d4e3cbad2b18c767c659f448a11',1,59,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','c53df31e20ec8b1f3656fd090f271c0f',1,147,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','ca23ba209cc33678530392b7197fda4d',1,54,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','cdb64a7b235e8c2d9746398a52932c4d',1,13,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','d55669822f1a8cf72ec1911e462a54eb',2,107,4050,0),
('3e239e3d69de4b3b36fcd34479259a89','d98a07f84921b24ee30f86fd8cd85c3c',1,89,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','db3f3946ba271882d8c74cdbf3d5179a',1,117,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','dd17a1076c261ef24eb6483739b6ecea',1,56,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','df3f079de6961496f0460dcfdbf9bca3',1,79,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e05fe30750d3ea262a610d17ebc07019',3,5,6075,0),
('3e239e3d69de4b3b36fcd34479259a89','e1342b084a6585295c7ade62c211f850',1,66,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e36bb832c6550e87daece530c8b9a3ca',1,45,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e4586172850ecb0954a632168fa0151a',1,43,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e5439f340ec51b34d51348e0885bcdf1',1,120,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e6d1833ee14a790892540fc15fd3aa2a',1,90,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','e80cc6e47b0a1772b7d539489060e797',1,155,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','ecc3c7b4754f8509cfe9de944671b36f',3,6,6075,0),
('3e239e3d69de4b3b36fcd34479259a89','ef87f051e5c271f948020014f3c59dd4',1,64,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f09cc7ee3a9a93273f4b80601cafb00c',1,98,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f3bddd7c27287b153ac2150e49b01ece',1,70,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f42087059b37ae7f4d9f0d3a475801a8',1,41,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f4c9385f1902f7334b00b9b4ecd164de',1,137,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f5743daa1b0c190dc25ac146a657932e',1,51,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f5ab96926a6a561aab7ecb4ba7c915d4',1,125,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f6bc81b1fa9e98a5f645cf8e05202f6f',1,106,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f6fee22e34c7d055ea7c17169175d0de',1,100,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f79b1d64a8d8b02b86d797765a6a1fe4',1,91,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','f9b3d9bfeaf71205d348b43f37cafd0c',1,72,2025,0),
('3e239e3d69de4b3b36fcd34479259a89','ff1ccf57e98c817df1efcd9fe44a8aeb',4,7,8101,0),
('49a936d4a225f7a63e3c2d860a4ec022','d56b699830e77ba53855679cb1d252da',1,0,32000,128),
('55a01547a20d7d965193fcd3e277624c','0cc175b9c0f1b6a831c399e269772661',1,1,32000,0),
('55a01547a20d7d965193fcd3e277624c','71860c77c6745379b0d44304d66b6a13',3,0,32000,128),
('55a01547a20d7d965193fcd3e277624c','92eb5ffee6ae2fec3ad71c777531578f',2,0,32000,128),
('56ce185f3262c9101626cfd28a4127a4','0029d2483a1a8a70bc7b15757967d6dd',12,12,3902,0),
('56ce185f3262c9101626cfd28a4127a4','04bd0ce93e458db4579c595cf42d96ab',4,200,1300,0),
('56ce185f3262c9101626cfd28a4127a4','06472f9dc34e4ae7850cec892363f2a1',5,172,1626,0),
('56ce185f3262c9101626cfd28a4127a4','07632e7838df5baaec933a71742f6edc',4,185,1300,0),
('56ce185f3262c9101626cfd28a4127a4','08123367b10eb42f9c61a297c1fc203c',12,37,3902,0),
('56ce185f3262c9101626cfd28a4127a4','0e76c9c8d1407bbf1690121eb72ab4aa',5,167,1626,0),
('56ce185f3262c9101626cfd28a4127a4','0ec44c296b53efbcb8a9d2fb639177b2',4,217,1300,0),
('56ce185f3262c9101626cfd28a4127a4','107536d845520d5adf1f6b9ce2de2f08',4,188,1300,0),
('56ce185f3262c9101626cfd28a4127a4','115b0dc1fb0482bd99b59699f65e43a2',4,177,1300,0),
('56ce185f3262c9101626cfd28a4127a4','1337d38747e659ed836548ae6cda7cc2',12,17,3902,0),
('56ce185f3262c9101626cfd28a4127a4','134a394e7e9ec2bc21d57ba1d6b42005',12,44,3902,0),
('56ce185f3262c9101626cfd28a4127a4','13b5bfe96f3e2fe411c9f66f4a582adf',10,158,3252,0),
('56ce185f3262c9101626cfd28a4127a4','15ceb382eaee2056153ac76b747c7f95',2,289,650,0),
('56ce185f3262c9101626cfd28a4127a4','15d0c7acbbe63d5dd590c7ee3a9f12f3',4,186,1300,0),
('56ce185f3262c9101626cfd28a4127a4','16b8e956f7e20230367efb963e8ac2f8',5,164,1626,0),
('56ce185f3262c9101626cfd28a4127a4','177544aa797af6f322f8caa5e80e7f24',27,10,8780,0),
('56ce185f3262c9101626cfd28a4127a4','1c52bdae8bad70e82da799843bb4e831',11,46,3577,0),
('56ce185f3262c9101626cfd28a4127a4','1fae427ed9fb02eae850a9b3c6d1a597',2,285,650,0),
('56ce185f3262c9101626cfd28a4127a4','20296d6bca1bd076c8ed0547e4f55f66',4,208,1300,0),
('56ce185f3262c9101626cfd28a4127a4','21cec257feb15bcc84e0acd5b0773883',2,0,650,128),
('56ce185f3262c9101626cfd28a4127a4','21db4a5fea0f4dedb0aa90007de5c3c3',12,28,3902,0),
('56ce185f3262c9101626cfd28a4127a4','22c78aadb8d25a53ca407fae265a7154',2,279,650,0),
('56ce185f3262c9101626cfd28a4127a4','2f22937a18e3d76202329384bd08ae23',12,45,3902,0),
('56ce185f3262c9101626cfd28a4127a4','387cfa57545d4814246bbcebe6bc61dc',2,287,650,0),
('56ce185f3262c9101626cfd28a4127a4','38c7b2741b1d86c35f51687f1f56fd00',2,294,650,0),
('56ce185f3262c9101626cfd28a4127a4','392406f077a3ab6822722d2df998ecd4',9,152,2926,0),
('56ce185f3262c9101626cfd28a4127a4','39ad9cca8cb13896b27cbfd8bc7a5be4',4,184,1300,0),
('56ce185f3262c9101626cfd28a4127a4','39b040ca54fc7aca24b4a28507329bca',4,207,1300,0),
('56ce185f3262c9101626cfd28a4127a4','39eef2554d8407cbfeb017e68c8685e3',4,175,1300,0),
('56ce185f3262c9101626cfd28a4127a4','3b1d7a5b5d10577b79fc206c4ffd64ea',2,290,650,0),
('56ce185f3262c9101626cfd28a4127a4','3fffe9ed3cb0a88d1a6391801d383647',4,194,1300,0),
('56ce185f3262c9101626cfd28a4127a4','4087a2d652670c108c9219d058745bc2',14,14,4552,0),
('56ce185f3262c9101626cfd28a4127a4','40b264bdd5419a65e1e7c4112c9535c4',11,25,3577,0),
('56ce185f3262c9101626cfd28a4127a4','4587c4183c312dd82309be6cdae7bbd6',5,163,1626,0),
('56ce185f3262c9101626cfd28a4127a4','461580541e92155766bee9d9e8f672ea',16,20,5203,0),
('56ce185f3262c9101626cfd28a4127a4','4829322d03d1606fb09ae9af59a271d3',5,169,1626,0),
('56ce185f3262c9101626cfd28a4127a4','4afe8978f49b2b8389b567200ae59649',4,206,1300,0),
('56ce185f3262c9101626cfd28a4127a4','4b77a01c9178cf8fcc13fea642393955',4,202,1300,0),
('56ce185f3262c9101626cfd28a4127a4','4de1b7a4dc53e4a84c25ffb7cdb580ee',56,18,18211,0),
('56ce185f3262c9101626cfd28a4127a4','4ed5bb266ded3068c5ba0a01e78b21b9',4,179,1300,0),
('56ce185f3262c9101626cfd28a4127a4','5078262170842b3759998eb9c3a16314',4,181,1300,0),
('56ce185f3262c9101626cfd28a4127a4','523af537946b79c4f8369ed39ba78605',4,219,1300,0),
('56ce185f3262c9101626cfd28a4127a4','54d54a126a783bc9cba8c06137136943',4,232,1300,0),
('56ce185f3262c9101626cfd28a4127a4','569ef72642be0fadd711d6a468d68ee1',4,191,1300,0),
('56ce185f3262c9101626cfd28a4127a4','5a74f9bbb93ada84e7794406c86010a5',2,288,650,0),
('56ce185f3262c9101626cfd28a4127a4','5a8ebeb7a6108b07be3700432a79840d',4,210,1300,0),
('56ce185f3262c9101626cfd28a4127a4','5b344ac52a0192941b46a8bf252c859c',16,36,5203,0),
('56ce185f3262c9101626cfd28a4127a4','5defbc048070dadee1fa6f2e62532f1f',5,162,1626,0),
('56ce185f3262c9101626cfd28a4127a4','5e68ca8a651d80d2a005ac825ede6b8c',10,154,3252,0),
('56ce185f3262c9101626cfd28a4127a4','60f8b164d96d22ed2d5ac73ff5baa6c6',4,225,1300,0),
('56ce185f3262c9101626cfd28a4127a4','6167fd4d8a9bd320dc09e90baa27d4c9',4,187,1300,0),
('56ce185f3262c9101626cfd28a4127a4','630494285045663b6f3e52af740c5254',2,283,650,0),
('56ce185f3262c9101626cfd28a4127a4','66c64cd3d8cafc59b39bc1a5583f3786',12,32,3902,0),
('56ce185f3262c9101626cfd28a4127a4','6af18b52ade789125f28bd8db932f879',12,15,3902,0),
('56ce185f3262c9101626cfd28a4127a4','6ccb6c0b0d7845edf67759d85e49257d',4,213,1300,0),
('56ce185f3262c9101626cfd28a4127a4','6eeaf26188917e490d3c52d14b3f6809',12,13,3902,0),
('56ce185f3262c9101626cfd28a4127a4','7063c5b30e65883fd6b4b2177d627690',12,40,3902,0),
('56ce185f3262c9101626cfd28a4127a4','72719ffec5896d8017d8cbf23c5a28b7',12,21,3902,0),
('56ce185f3262c9101626cfd28a4127a4','7a8dc91f944d115c7488f24ea53e9543',5,159,1626,0),
('56ce185f3262c9101626cfd28a4127a4','7ae8efb349409c73a8eddb47cc303331',2,284,650,0),
('56ce185f3262c9101626cfd28a4127a4','7b070e052532394b5c2c1803f7ba00f1',4,221,1300,0),
('56ce185f3262c9101626cfd28a4127a4','7d0db380a5b95a8ba1da0bca241abda1',16,26,5203,0),
('56ce185f3262c9101626cfd28a4127a4','7f9a983a540e00931a69382161bdd265',26,6,8455,0),
('56ce185f3262c9101626cfd28a4127a4','7fa3b767c460b54a2be4d49030b349c7',12,42,3902,0),
('56ce185f3262c9101626cfd28a4127a4','804f743824c0451b2f60d81b63b6a900',12,43,3902,0),
('56ce185f3262c9101626cfd28a4127a4','81defa8f7aec3af6ec8392bf4594be48',4,180,1300,0),
('56ce185f3262c9101626cfd28a4127a4','8209600c80b63728b8507839a93c7b41',4,192,1300,0),
('56ce185f3262c9101626cfd28a4127a4','87d4eeb7dec7686410748d174c0e0a11',26,5,8455,0),
('56ce185f3262c9101626cfd28a4127a4','923b22997eabf29a2adf56e77f4d3861',4,215,1300,0),
('56ce185f3262c9101626cfd28a4127a4','952c5e7aea1b83a37e41d7b9b97fda14',4,220,1300,0),
('56ce185f3262c9101626cfd28a4127a4','9c76b78f2828eaadd814a5f7fece828f',2,280,650,0),
('56ce185f3262c9101626cfd28a4127a4','9d0b1714518907192490ce56247c01cf',2,292,650,0),
('56ce185f3262c9101626cfd28a4127a4','9d24420082d450cb81caf59e2b173279',4,182,1300,0),
('56ce185f3262c9101626cfd28a4127a4','a49a895c965f8aa40b4123fbc5849271',12,38,3902,0),
('56ce185f3262c9101626cfd28a4127a4','a6ac54ff17ca90704e5d89a8e0d545bc',4,218,1300,0),
('56ce185f3262c9101626cfd28a4127a4','a98931d104a7fb8f30450547d97e7ca5',31,4,10081,0),
('56ce185f3262c9101626cfd28a4127a4','aa1a3ee027cbd71fb271f7ff74ed2ba0',12,33,3902,0),
('56ce185f3262c9101626cfd28a4127a4','aae82b4d692ecfef8711d47c815707d5',12,30,3902,0),
('56ce185f3262c9101626cfd28a4127a4','ad18a418da4e3cbf4e3e5a70710f2d85',27,11,8780,0),
('56ce185f3262c9101626cfd28a4127a4','ad98f79edf416451a01ddd2e70529a0f',4,224,1300,0),
('56ce185f3262c9101626cfd28a4127a4','ae1c9c6a127cfbd460a949238c631144',4,234,1300,0),
('56ce185f3262c9101626cfd28a4127a4','af03af10d57b7b17f26a0130562d6b6e',4,227,1300,0),
('56ce185f3262c9101626cfd28a4127a4','af2f35ee2183e18edf481f3603d95803',2,296,650,0),
('56ce185f3262c9101626cfd28a4127a4','b1310d53db71792f537efc29d477cc39',4,183,1300,0),
('56ce185f3262c9101626cfd28a4127a4','b1a5d251fa4fe598cb947ffc42b9cbed',24,16,7804,0),
('56ce185f3262c9101626cfd28a4127a4','b51d00b52280f0d7479cde95e61749e7',4,223,1300,0),
('56ce185f3262c9101626cfd28a4127a4','b80bb7740288fda1f201890375a60c8f',2,291,650,0),
('56ce185f3262c9101626cfd28a4127a4','b9bcfe8f89ef61629ec387f6916e2741',4,228,1300,0),
('56ce185f3262c9101626cfd28a4127a4','bb98d4e9c281b175ea84c517b59308ea',4,222,1300,0),
('56ce185f3262c9101626cfd28a4127a4','bd12a2f7c146e4c5191b12fc9a2739f5',5,170,1626,0),
('56ce185f3262c9101626cfd28a4127a4','bdfcacaa4e5a8b57727335c0cbf7614b',9,171,2926,0),
('56ce185f3262c9101626cfd28a4127a4','c5864e0679a35c03abd1c36ad81c8d20',12,34,3902,0),
('56ce185f3262c9101626cfd28a4127a4','c87cf4452134244b7f4b18e2e7ad7f50',4,205,1300,0),
('56ce185f3262c9101626cfd28a4127a4','c8fae3ab04d58c0147395f06241dca64',4,229,1300,0),
('56ce185f3262c9101626cfd28a4127a4','c94cb6e815f22f3e59e16bd7a49dfd2d',16,22,5203,0),
('56ce185f3262c9101626cfd28a4127a4','c9f816aa046f752b966837db2d9bf5a2',12,41,3902,0),
('56ce185f3262c9101626cfd28a4127a4','cb3f4c73e4c498c768489f566045252c',8,165,2601,0),
('56ce185f3262c9101626cfd28a4127a4','cc491de401e5dbcde41ef91090975f42',16,27,5203,0),
('56ce185f3262c9101626cfd28a4127a4','cc7ed4d007b9bd962656b84ae7bf98cb',2,295,650,0),
('56ce185f3262c9101626cfd28a4127a4','cd49a1455ff422a5540f5e13f5edb75a',5,153,1626,0),
('56ce185f3262c9101626cfd28a4127a4','cf403b6285fc29f6f74b2855b3996dff',2,297,650,0),
('56ce185f3262c9101626cfd28a4127a4','d2e16e6ef52a45b7468f1da56bba1953',26,2,8455,0),
('56ce185f3262c9101626cfd28a4127a4','d540f9a8003e11e009342a40200192ea',4,201,1300,0),
('56ce185f3262c9101626cfd28a4127a4','d97431d6862a4268fdd17104ae114b73',5,156,1626,0),
('56ce185f3262c9101626cfd28a4127a4','dc4a5e2a23fbd4f67b3f0fc16bdc39ae',4,231,1300,0),
('56ce185f3262c9101626cfd28a4127a4','dd3aa935c1c8a988517f3f588f7985bf',4,226,1300,0),
('56ce185f3262c9101626cfd28a4127a4','dd44ce468d0204b530b79a94b133eca5',12,8,3902,0),
('56ce185f3262c9101626cfd28a4127a4','dd73e86c9fe114b320f834d644efdc97',5,155,1626,0),
('56ce185f3262c9101626cfd28a4127a4','e15c932956bb516ce8031bf1a3fd71d4',2,293,650,0),
('56ce185f3262c9101626cfd28a4127a4','e78f5438b48b39bcbdea61b73679449d',26,3,8455,0),
('56ce185f3262c9101626cfd28a4127a4','e89d59b453d80c31146f4867ace7d73b',12,7,3902,0),
('56ce185f3262c9101626cfd28a4127a4','ef3e30e070f70244fd6578d88a6b77ac',2,286,650,0),
('56ce185f3262c9101626cfd28a4127a4','efde81f569ccb7211e56a522b8b55e5b',2,282,650,0),
('56ce185f3262c9101626cfd28a4127a4','f180623caa42379bc4518d06c9c9be05',25,19,8130,0),
('56ce185f3262c9101626cfd28a4127a4','f4af8b5789576c000ce9105b25609bd6',2,0,650,128),
('56ce185f3262c9101626cfd28a4127a4','f9d000bc691cbd4ed09645220637e3a3',12,9,3902,0),
('56ce185f3262c9101626cfd28a4127a4','fb2b038ea78e99cb4ca370639f399ce3',5,161,1626,0),
('56ce185f3262c9101626cfd28a4127a4','fce7bfee7c6e21e1d37535d69dadc71d',12,39,3902,0),
('68d237c4097d4cfacaa1850865ef957e','0cc175b9c0f1b6a831c399e269772661',1,2,32000,0),
('68d237c4097d4cfacaa1850865ef957e','106a6c241b8797f52e1e77317b96a201',1,0,32000,0),
('68d237c4097d4cfacaa1850865ef957e','593616de15330c0fb2d55e55410bf994',1,0,32000,128),
('68d237c4097d4cfacaa1850865ef957e','71860c77c6745379b0d44304d66b6a13',2,1,32000,0),
('68d237c4097d4cfacaa1850865ef957e','92eb5ffee6ae2fec3ad71c777531578f',1,4,32000,0),
('68d237c4097d4cfacaa1850865ef957e','ca4c50b905dc21ea17a10549a6f5944f',1,5,32000,0),
('68d237c4097d4cfacaa1850865ef957e','e05fe30750d3ea262a610d17ebc07019',1,7,32000,0),
('68d237c4097d4cfacaa1850865ef957e','ecc3c7b4754f8509cfe9de944671b36f',1,8,32000,0),
('68d237c4097d4cfacaa1850865ef957e','efe90a8e604a7c840e88d03a67f6b7d8',1,6,32000,0),
('6d2ddd1174e062f12957e8f7a89bafb1','0b3b97fa66886c5688ee4ae80ec0c3c2',1,0,22857,128),
('6d2ddd1174e062f12957e8f7a89bafb1','1f96d7488ccbf36f57147e2f9ef9cb55',1,9,22857,0),
('6d2ddd1174e062f12957e8f7a89bafb1','2f8a6bf31f3bd67bd2d9720c58b19c9a',1,0,22857,128),
('6d2ddd1174e062f12957e8f7a89bafb1','4b77a01c9178cf8fcc13fea642393955',1,10,22857,0),
('6d2ddd1174e062f12957e8f7a89bafb1','4c480b2170d066b2af6f98af80902ce0',1,8,22857,0),
('6d2ddd1174e062f12957e8f7a89bafb1','78949a75178ddd3c0c73cfcd5475d75a',1,2,22857,0),
('6d2ddd1174e062f12957e8f7a89bafb1','7f9a983a540e00931a69382161bdd265',1,7,22857,0),
('6d2ddd1174e062f12957e8f7a89bafb1','87d4eeb7dec7686410748d174c0e0a11',1,6,22857,0),
('6d2ddd1174e062f12957e8f7a89bafb1','a98931d104a7fb8f30450547d97e7ca5',1,5,22857,0),
('6d2ddd1174e062f12957e8f7a89bafb1','c79bdf421714f5087fc34b7c538b6807',1,11,22857,0),
('6d2ddd1174e062f12957e8f7a89bafb1','d2e16e6ef52a45b7468f1da56bba1953',1,3,22857,0),
('6d2ddd1174e062f12957e8f7a89bafb1','d55669822f1a8cf72ec1911e462a54eb',1,1,22857,0),
('6d2ddd1174e062f12957e8f7a89bafb1','e78f5438b48b39bcbdea61b73679449d',1,4,22857,0),
('6d2ddd1174e062f12957e8f7a89bafb1','f8905f5d07a2c615f3c94d898b872443',1,0,22857,0),
('724c8f72afa9e4bbe71160df87c71652','01b6e20344b68835c5ed1ddedf20d531',8,152,4697,0),
('724c8f72afa9e4bbe71160df87c71652','03d59e663c1af9ac33a9949d1193505a',1,200,587,0),
('724c8f72afa9e4bbe71160df87c71652','05e94e8cbc28f5837d0c355917c05fea',1,472,587,0),
('724c8f72afa9e4bbe71160df87c71652','06e3d36fa30cea095545139854ad1fb9',2,256,1174,0),
('724c8f72afa9e4bbe71160df87c71652','06f287d4d2555285b15d0e30a7738037',1,356,587,0),
('724c8f72afa9e4bbe71160df87c71652','074b62fb6c21b84e6b5846e6bb001f67',1,19,587,0),
('724c8f72afa9e4bbe71160df87c71652','075a959179a3ff15345c5865a10c5435',1,230,587,0),
('724c8f72afa9e4bbe71160df87c71652','07811dc6c422334ce36a09ff5cd6fe71',3,104,1761,0),
('724c8f72afa9e4bbe71160df87c71652','07868a716d4712d7771f6414d2b8bf8a',1,364,587,0),
('724c8f72afa9e4bbe71160df87c71652','07ab242311dbad887fb03e4a25092781',1,213,587,0),
('724c8f72afa9e4bbe71160df87c71652','07cc694b9b3fc636710fa08b6922c42b',2,118,1174,0),
('724c8f72afa9e4bbe71160df87c71652','07ccfe360dce69b84595428e2ec1c1cc',1,140,587,0),
('724c8f72afa9e4bbe71160df87c71652','08391c959fc8bd0b672c596c4d6bcdcd',1,239,587,0),
('724c8f72afa9e4bbe71160df87c71652','09286af346951f520509c5702db7625e',1,238,587,0),
('724c8f72afa9e4bbe71160df87c71652','0b3b97fa66886c5688ee4ae80ec0c3c2',6,12,3522,0),
('724c8f72afa9e4bbe71160df87c71652','0cc175b9c0f1b6a831c399e269772661',10,142,5871,0),
('724c8f72afa9e4bbe71160df87c71652','0cfff68896ae6825dfa9caee7afcea9f',1,80,587,0),
('724c8f72afa9e4bbe71160df87c71652','0e5243d9965540f62aac19a985f3f33e',1,182,587,0),
('724c8f72afa9e4bbe71160df87c71652','0e66be14b86bd30bf4fc84357763b591',2,134,1174,0),
('724c8f72afa9e4bbe71160df87c71652','0eee59a475855895f87e4900c084a4a9',1,73,587,0),
('724c8f72afa9e4bbe71160df87c71652','0f9642bcff1dc3cd224f1f3e2f1ca629',1,123,587,0),
('724c8f72afa9e4bbe71160df87c71652','10b73ec3370562dbd65f130ea54a8a35',11,30,6458,0),
('724c8f72afa9e4bbe71160df87c71652','11a7a5d55a91adb201e113967eff93fe',1,428,587,0),
('724c8f72afa9e4bbe71160df87c71652','1253208465b1efa876f982d8a9e73eef',1,389,587,0),
('724c8f72afa9e4bbe71160df87c71652','12de3a4dab98ef8a7d67aace8150b540',1,181,587,0),
('724c8f72afa9e4bbe71160df87c71652','13b5bfe96f3e2fe411c9f66f4a582adf',6,149,3522,0),
('724c8f72afa9e4bbe71160df87c71652','1424ca49c88f72347af1f2fe7a569169',6,34,3522,0),
('724c8f72afa9e4bbe71160df87c71652','162e31afc5ade88a04d3f428e97e8f46',12,24,7045,0),
('724c8f72afa9e4bbe71160df87c71652','16908b0605f2645dfcb4c3a8d248cef3',3,0,1761,0),
('724c8f72afa9e4bbe71160df87c71652','18218139eec55d83cf82679934e5cd75',2,112,1174,0),
('724c8f72afa9e4bbe71160df87c71652','18ccf61d533b600bbf5a963359223fe4',1,525,587,0),
('724c8f72afa9e4bbe71160df87c71652','1b20e9021b3a16b059287caddc7862f6',1,456,587,0),
('724c8f72afa9e4bbe71160df87c71652','1b3231655cebb7a1f783eddf27d254ca',5,32,2935,0),
('724c8f72afa9e4bbe71160df87c71652','1ebf4e55c604b92cce9b0f1fd7debcc0',1,132,587,0),
('724c8f72afa9e4bbe71160df87c71652','1ed1645edd706dc379effe13f3edcacf',2,148,1174,0),
('724c8f72afa9e4bbe71160df87c71652','1f5f6080965ed6d0a90e6b9ec599e441',1,216,587,0),
('724c8f72afa9e4bbe71160df87c71652','1fecb4dca32e01d3a83ebab5314ebbab',1,93,587,0),
('724c8f72afa9e4bbe71160df87c71652','1ff1de774005f8da13f42943881c655f',1,102,587,0),
('724c8f72afa9e4bbe71160df87c71652','21582c6c30be1217322cdb9aebaf4a59',3,361,1761,0),
('724c8f72afa9e4bbe71160df87c71652','21cec257feb15bcc84e0acd5b0773883',1,536,587,0),
('724c8f72afa9e4bbe71160df87c71652','22af645d1859cb5ca6da0c484f1f37ea',1,223,587,0),
('724c8f72afa9e4bbe71160df87c71652','23a58bf9274bedb19375e527a0744fa9',1,263,587,0),
('724c8f72afa9e4bbe71160df87c71652','23b79ae0fc0f07a3669598dd23c694cc',1,383,587,0),
('724c8f72afa9e4bbe71160df87c71652','29d0b8d9daec06cdd0cda7269997b216',1,439,587,0),
('724c8f72afa9e4bbe71160df87c71652','2f8a6bf31f3bd67bd2d9720c58b19c9a',3,8,1761,0),
('724c8f72afa9e4bbe71160df87c71652','30c6ee2fd7ea2b9ab608ad1b56291bb2',1,392,587,0),
('724c8f72afa9e4bbe71160df87c71652','312351bff07989769097660a56395065',1,538,587,0),
('724c8f72afa9e4bbe71160df87c71652','312db69f5bf4447dfe3c58983083b54f',1,345,587,0),
('724c8f72afa9e4bbe71160df87c71652','3262d48df5d75e3452f0f16b313b7808',2,254,1174,0),
('724c8f72afa9e4bbe71160df87c71652','3309a7a7941818e131b4dfb9a6349914',2,180,1174,0),
('724c8f72afa9e4bbe71160df87c71652','339d8d14024f2ae5c8dc2e07362eba1d',7,162,4110,0),
('724c8f72afa9e4bbe71160df87c71652','35d6d33467aae9a2e3dccb4b6b027878',1,281,587,0),
('724c8f72afa9e4bbe71160df87c71652','364107f60f8e60ce22332e1d3fb8aa6d',1,528,587,0),
('724c8f72afa9e4bbe71160df87c71652','3681df8d04470ecc65053b790e19a065',1,84,587,0),
('724c8f72afa9e4bbe71160df87c71652','37693cfc748049e45d87b8c7d8b9aacd',1,16,587,0),
('724c8f72afa9e4bbe71160df87c71652','37b4e2d82900d5e94b8da524fbeb33c0',2,366,1174,0),
('724c8f72afa9e4bbe71160df87c71652','37d153a06c79e99e4de5889dbe2e7c57',1,220,587,0),
('724c8f72afa9e4bbe71160df87c71652','393070777bc8dc5f8900ff849e704f54',1,193,587,0),
('724c8f72afa9e4bbe71160df87c71652','3a098d086c802fe130b34cda92eaa1bb',1,177,587,0),
('724c8f72afa9e4bbe71160df87c71652','3c59dc048e8850243be8079a5c74d079',1,264,587,0),
('724c8f72afa9e4bbe71160df87c71652','3c6e0b8a9c15224a8228b9a98ca1531d',1,430,587,0),
('724c8f72afa9e4bbe71160df87c71652','3cd15f8f2940aff879df34df4e5c2cd1',1,4,587,0),
('724c8f72afa9e4bbe71160df87c71652','3d9fb56d74e048e4b871027949764052',1,407,587,0),
('724c8f72afa9e4bbe71160df87c71652','3e1867f5aee83045775fbe355e6a3ce1',1,160,587,0),
('724c8f72afa9e4bbe71160df87c71652','3f1b0333a44fd5f611d3429887eba4a8',2,278,1174,0),
('724c8f72afa9e4bbe71160df87c71652','3f347890f95ef75c2eacb4f01c622ac9',1,524,587,0),
('724c8f72afa9e4bbe71160df87c71652','4015e9ce43edfb0668ddaa973ebc7e87',4,267,2348,0),
('724c8f72afa9e4bbe71160df87c71652','40be4e59b9a2a2b5dffb918c0e86b3d7',1,233,587,0),
('724c8f72afa9e4bbe71160df87c71652','4119639092e62c55ea8be348e4d9260d',1,326,587,0),
('724c8f72afa9e4bbe71160df87c71652','41b54177746ada75a77ec0768ebd51dc',1,175,587,0),
('724c8f72afa9e4bbe71160df87c71652','42bd4c0819c498d1c1ab622de74d6f82',1,313,587,0),
('724c8f72afa9e4bbe71160df87c71652','434990c8a25d2be94863561ae98bd682',1,241,587,0),
('724c8f72afa9e4bbe71160df87c71652','43b5c9175984c071f30b873fdce0a000',1,184,587,0),
('724c8f72afa9e4bbe71160df87c71652','43c4975d498bbc4228b3f3a20ff5ac6f',1,393,587,0),
('724c8f72afa9e4bbe71160df87c71652','46b3931b9959c927df4fc65fdee94b07',2,202,1174,0),
('724c8f72afa9e4bbe71160df87c71652','46defce884d1be32019f20864172323d',1,77,587,0),
('724c8f72afa9e4bbe71160df87c71652','49889d3f78e208b1538f15a0c7bc16d0',1,188,587,0),
('724c8f72afa9e4bbe71160df87c71652','4b82677b6c1408df4be21ada9a584fde',1,7,587,0),
('724c8f72afa9e4bbe71160df87c71652','4cf2d30b6327df1b462663c7611de22f',2,10,1174,0),
('724c8f72afa9e4bbe71160df87c71652','4ed5d2eaed1a1fadcc41ad1d58ed603e',1,260,587,0),
('724c8f72afa9e4bbe71160df87c71652','50584c36a7a475387f81fa1b1655fe79',1,242,587,0),
('724c8f72afa9e4bbe71160df87c71652','508c75c8507a2ae5223dfd2faeb98122',3,1,1761,0),
('724c8f72afa9e4bbe71160df87c71652','517b08dafd8aa7559790bf0715de47c6',12,31,7045,0),
('724c8f72afa9e4bbe71160df87c71652','52d6127375d82f3e300827eb479b2c65',4,371,2348,0),
('724c8f72afa9e4bbe71160df87c71652','536801a526cbca7d986e6b9bc55363b8',3,370,1761,0),
('724c8f72afa9e4bbe71160df87c71652','53a9c3686afdbb0db7c626e56a243a41',1,35,587,0),
('724c8f72afa9e4bbe71160df87c71652','53d670af9bb16ea82e7ef41ee23ec6df',1,311,587,0),
('724c8f72afa9e4bbe71160df87c71652','53e61336bb49ec978968786b07dea50b',1,27,587,0),
('724c8f72afa9e4bbe71160df87c71652','560a6e42db25034a739955610bd3f8b4',1,111,587,0),
('724c8f72afa9e4bbe71160df87c71652','5634275d694f8665957746c9619132f0',1,302,587,0),
('724c8f72afa9e4bbe71160df87c71652','567904efe9e64d9faf3e41ef402cb568',1,511,587,0),
('724c8f72afa9e4bbe71160df87c71652','589b397ed82131bf51acdf63521c2df5',1,493,587,0),
('724c8f72afa9e4bbe71160df87c71652','5d17dca175f108350a96a8dfb36a4be6',2,395,1174,0),
('724c8f72afa9e4bbe71160df87c71652','5e96bf62b9b2c18fdb65564b4a18fd1f',1,423,587,0),
('724c8f72afa9e4bbe71160df87c71652','5fbab8c991be6b35d52e2d4868b6854f',1,50,587,0),
('724c8f72afa9e4bbe71160df87c71652','600d6af0f320a021dc494cfa2daca569',1,113,587,0),
('724c8f72afa9e4bbe71160df87c71652','60df9e64b0693131b626e465236c6874',1,384,587,0),
('724c8f72afa9e4bbe71160df87c71652','62628cfd1cdd77d02c32812f048bada3',1,403,587,0),
('724c8f72afa9e4bbe71160df87c71652','628b7db04235f228d40adc671413a8c8',1,322,587,0),
('724c8f72afa9e4bbe71160df87c71652','62933a2951ef01f4eafd9bdf4d3cd2f0',2,226,1174,0),
('724c8f72afa9e4bbe71160df87c71652','62cc0b4ebb0b57b40778179234246c38',2,259,1174,0),
('724c8f72afa9e4bbe71160df87c71652','62cd275989e78ee56a81f0265a87562e',1,78,587,0),
('724c8f72afa9e4bbe71160df87c71652','639849f6b368019778991b32434354fc',2,122,1174,0),
('724c8f72afa9e4bbe71160df87c71652','667940ea3df6617168cef1233b76dc29',1,85,587,0),
('724c8f72afa9e4bbe71160df87c71652','6b48da551d6920b8da8eb01ebc400297',1,362,587,0),
('724c8f72afa9e4bbe71160df87c71652','6b5843ce9d2d0599c3e3ce6d59c1551f',1,165,587,0),
('724c8f72afa9e4bbe71160df87c71652','6c92285fa6d3e827b198d120ea3ac674',1,198,587,0),
('724c8f72afa9e4bbe71160df87c71652','6ed2640df741eafe327878bd65000ad3',2,358,1174,0),
('724c8f72afa9e4bbe71160df87c71652','6f7f9432d35dea629c8384dab312259a',1,398,587,0),
('724c8f72afa9e4bbe71160df87c71652','6f857e1b82f3db1d72613365ea42d442',1,520,587,0),
('724c8f72afa9e4bbe71160df87c71652','6fcc4b7d36184ba33346b4be2d5d8244',1,210,587,0),
('724c8f72afa9e4bbe71160df87c71652','71ccb7a35a452ea8153b6d920f9f190e',1,25,587,0),
('724c8f72afa9e4bbe71160df87c71652','71df210ad5e28264557f10c663572933',1,438,587,0),
('724c8f72afa9e4bbe71160df87c71652','731b886d80d2ea138da54d30f43b2005',2,22,1174,0),
('724c8f72afa9e4bbe71160df87c71652','75aeb98e5241592ad6a6c2c4c78a16ef',1,17,587,0),
('724c8f72afa9e4bbe71160df87c71652','77004ea213d5fc71acf74a8c9c6795fb',4,374,2348,0),
('724c8f72afa9e4bbe71160df87c71652','7761127a460aaf290ed953098284dd1a',1,486,587,0),
('724c8f72afa9e4bbe71160df87c71652','77a072fba34a72588b4a8170238f2cf0',1,86,587,0),
('724c8f72afa9e4bbe71160df87c71652','78ee54aa8f813885fe2fe20d232518b9',1,144,587,0),
('724c8f72afa9e4bbe71160df87c71652','7b8dc4fb0fb55fc8eb69ff080c45ed7e',1,249,587,0),
('724c8f72afa9e4bbe71160df87c71652','7d0db380a5b95a8ba1da0bca241abda1',5,176,2935,0),
('724c8f72afa9e4bbe71160df87c71652','7d637d275668ed6d41a9b97e6ad3a556',2,286,1174,0),
('724c8f72afa9e4bbe71160df87c71652','7dfc1f5dc725f462d6a85bd6a7224164',1,465,587,0),
('724c8f72afa9e4bbe71160df87c71652','7f90df6477bdb81ce131fe37eeeb1f01',3,106,1761,0),
('724c8f72afa9e4bbe71160df87c71652','82082716189f80fd070b89ac716570ba',1,469,587,0),
('724c8f72afa9e4bbe71160df87c71652','82df41632da476065ce2997900554442',4,360,2348,0),
('724c8f72afa9e4bbe71160df87c71652','83ab982dd08483187289a75163dc50fe',2,382,1174,0),
('724c8f72afa9e4bbe71160df87c71652','83c6ea9026abedd647a70333769f6504',1,421,587,0),
('724c8f72afa9e4bbe71160df87c71652','8451fc653eaa269664a6d9b46a238424',1,290,587,0),
('724c8f72afa9e4bbe71160df87c71652','8518008e8835d42ddb7c83810b5cede0',1,475,587,0),
('724c8f72afa9e4bbe71160df87c71652','88c1942bc02943fd4338ebd18d3bf464',1,460,587,0),
('724c8f72afa9e4bbe71160df87c71652','89ee4584f59a50776fd36a64d55c1277',1,442,587,0),
('724c8f72afa9e4bbe71160df87c71652','8abf18f876245f99e3e536216d5d3bf3',1,388,587,0),
('724c8f72afa9e4bbe71160df87c71652','8b461191e6b0705ec1ce1199a20f370e',1,228,587,0),
('724c8f72afa9e4bbe71160df87c71652','8bf8854bebe108183caeb845c7676ae4',6,18,3522,0),
('724c8f72afa9e4bbe71160df87c71652','8cd283d8b7bacc277f2bae5e26ce6d1e',1,130,587,0),
('724c8f72afa9e4bbe71160df87c71652','8df358eebbbb64bf19235a902db73505',2,107,1174,0),
('724c8f72afa9e4bbe71160df87c71652','8e15b32e960ad327e4c48061410f8bd4',1,212,587,0),
('724c8f72afa9e4bbe71160df87c71652','8e83b1d4dd4533f7d84d1c6055598795',2,391,1174,0),
('724c8f72afa9e4bbe71160df87c71652','8fc42c6ddf9966db3b09e84365034357',16,108,9394,0),
('724c8f72afa9e4bbe71160df87c71652','8fd6f46ad5874b41fc087b26745c81b2',4,125,2348,0),
('724c8f72afa9e4bbe71160df87c71652','910955a907e739b81ec8855763108a29',1,215,587,0),
('724c8f72afa9e4bbe71160df87c71652','931504633da3bba2ae68490a4d0aef24',2,15,1174,0),
('724c8f72afa9e4bbe71160df87c71652','93349189c5d0219ba8b20ca7cbf068a1',3,372,1761,0),
('724c8f72afa9e4bbe71160df87c71652','933dd8674c563081260867dfa95b5e74',2,285,1174,0),
('724c8f72afa9e4bbe71160df87c71652','95cc6b4ac5abdeadc74b73a8ba7200d9',6,2,3522,0),
('724c8f72afa9e4bbe71160df87c71652','960db2ed82202a9706b97775a4269378',2,128,1174,0),
('724c8f72afa9e4bbe71160df87c71652','97081c1611358b350e8088cb3d2b8b5b',1,408,587,0),
('724c8f72afa9e4bbe71160df87c71652','979b93285de87c4731fc824bd9e4ba75',1,426,587,0),
('724c8f72afa9e4bbe71160df87c71652','9827f490863603674bc635c4a4bea06c',1,274,587,0),
('724c8f72afa9e4bbe71160df87c71652','99f78c54130e752954404fff0707dcbd',1,416,587,0),
('724c8f72afa9e4bbe71160df87c71652','9c44fc81ae1c3b4b362d5576bf6cda53',1,49,587,0),
('724c8f72afa9e4bbe71160df87c71652','9cb9ce5bd9e807867d42a740c9633fc7',1,445,587,0),
('724c8f72afa9e4bbe71160df87c71652','9df3b01c60df20d13843841ff0d4482c',1,205,587,0),
('724c8f72afa9e4bbe71160df87c71652','9e81e7b963c71363e2fb3eefcfecfc0e',1,495,587,0),
('724c8f72afa9e4bbe71160df87c71652','9e925e9341b490bfd3b4c4ca3b0c1ef2',2,277,1174,0),
('724c8f72afa9e4bbe71160df87c71652','9ea0a36b3a20901fafe834eb519a595c',1,79,587,0),
('724c8f72afa9e4bbe71160df87c71652','a0c391dc49c440fc9962168353cedde3',1,344,587,0),
('724c8f72afa9e4bbe71160df87c71652','a181a603769c1f98ad927e7367c7aa51',1,146,587,0),
('724c8f72afa9e4bbe71160df87c71652','a2a551a6458a8de22446cc76d639a9e9',7,139,4110,0),
('724c8f72afa9e4bbe71160df87c71652','a2bbabfe7b1dd886a0c32b57bd8a94f9',2,387,1174,0),
('724c8f72afa9e4bbe71160df87c71652','a542e9b744bedcfd874129ab0f98c4ff',1,435,587,0),
('724c8f72afa9e4bbe71160df87c71652','a658279f9b983958149f31e4d8487673',1,436,587,0),
('724c8f72afa9e4bbe71160df87c71652','a74ad8dfacd4f985eb3977517615ce25',1,337,587,0),
('724c8f72afa9e4bbe71160df87c71652','a7c78469daa497a86142ff91ed286c9c',1,229,587,0),
('724c8f72afa9e4bbe71160df87c71652','a86fcebe37c3e9c82e43c25d54ad2146',1,43,587,0),
('724c8f72afa9e4bbe71160df87c71652','a98e84980a3612cf1f06dae18c313459',1,231,587,0),
('724c8f72afa9e4bbe71160df87c71652','aa08769cdcb26674c6706093503ff0a3',2,6,1174,0),
('724c8f72afa9e4bbe71160df87c71652','aa8af3ebe14831a7cd1b6d1383a03755',1,155,587,0),
('724c8f72afa9e4bbe71160df87c71652','ab3e355e2b6806c984851ebdee2a0da1',1,224,587,0),
('724c8f72afa9e4bbe71160df87c71652','ac05c7d8f4406c971085f947e43ef730',4,368,2348,0),
('724c8f72afa9e4bbe71160df87c71652','acf4b89d3d503d8252c9c4ba75ddbf6d',1,303,587,0),
('724c8f72afa9e4bbe71160df87c71652','adb00236071c05878eaeec5b3b96103d',4,369,2348,0),
('724c8f72afa9e4bbe71160df87c71652','addec426932e71323700afa1911f8f1c',9,163,5284,0),
('724c8f72afa9e4bbe71160df87c71652','af71e0a18f8a746aaeedb1bbe63b66aa',1,466,587,0),
('724c8f72afa9e4bbe71160df87c71652','b03e3fd2b3d22ff6df2796c412b09311',1,329,587,0),
('724c8f72afa9e4bbe71160df87c71652','b2fdab230a2c39f3595a947861863cb7',1,168,587,0),
('724c8f72afa9e4bbe71160df87c71652','b32d73e56ec99bc5ec8f83871cde708a',1,170,587,0),
('724c8f72afa9e4bbe71160df87c71652','b42dad5453b2128a32f6612b13ea5d9f',5,120,2935,0),
('724c8f72afa9e4bbe71160df87c71652','b46127d3c32de3d485a478e88b8f6593',1,5,587,0),
('724c8f72afa9e4bbe71160df87c71652','b5122e6bf436c50799accdaed57a846d',1,316,587,0),
('724c8f72afa9e4bbe71160df87c71652','b5eda0a74558a342cf659187f06f746f',2,153,1174,0),
('724c8f72afa9e4bbe71160df87c71652','b7b655045b89200c7a4dedb1303ca2f1',1,185,587,0),
('724c8f72afa9e4bbe71160df87c71652','b807023f87e63b8ada92f79f546ff9cc',1,315,587,0),
('724c8f72afa9e4bbe71160df87c71652','b8488851cdb11c1ff0ba352fb3308451',4,74,2348,0),
('724c8f72afa9e4bbe71160df87c71652','b8a9f715dbb64fd5c56e7783c6820a61',1,291,587,0),
('724c8f72afa9e4bbe71160df87c71652','b96ba508e3690f5168e4b0e68b15b178',1,527,587,0),
('724c8f72afa9e4bbe71160df87c71652','b9b4136389b37e3520cac8ddc3596c43',1,399,587,0),
('724c8f72afa9e4bbe71160df87c71652','ba8a48b0e34226a2992d871c65600a7c',2,225,1174,0),
('724c8f72afa9e4bbe71160df87c71652','bb3ccd5881d651448ded1dac904054ac',1,201,587,0),
('724c8f72afa9e4bbe71160df87c71652','be1ab1632e4285edc3733b142935c60b',1,307,587,0),
('724c8f72afa9e4bbe71160df87c71652','be5d5d37542d75f93a87094459f76678',21,20,12330,0),
('724c8f72afa9e4bbe71160df87c71652','bf7b83f5e1b17616ccf3e2af66e54e47',1,513,587,0),
('724c8f72afa9e4bbe71160df87c71652','c05f6c233521207f6fe311afef550c3c',1,476,587,0),
('724c8f72afa9e4bbe71160df87c71652','c185ddac8b5a8f5aa23c5b80bc12d214',2,330,1174,0),
('724c8f72afa9e4bbe71160df87c71652','c1a1738648ecda410dc3a0dbbb3be683',1,282,587,0),
('724c8f72afa9e4bbe71160df87c71652','c395246f710b0e2c86b7ed82f7f56ce3',1,174,587,0),
('724c8f72afa9e4bbe71160df87c71652','c458d397f9d289f2e4aaa14db438c03d',1,48,587,0),
('724c8f72afa9e4bbe71160df87c71652','c4ca4238a0b923820dcc509a6f75849b',3,45,1761,0),
('724c8f72afa9e4bbe71160df87c71652','c51ce410c124a10e0db5e4b97fc2af39',2,51,1174,0),
('724c8f72afa9e4bbe71160df87c71652','c59174e113eee69e3e2145e6fb22bfad',1,405,587,0),
('724c8f72afa9e4bbe71160df87c71652','c5e7dfaf771d423ecf59b008369021e8',1,23,587,0),
('724c8f72afa9e4bbe71160df87c71652','c6c24400cd50cd724c6f9a9d2493abf4',1,413,587,0),
('724c8f72afa9e4bbe71160df87c71652','c7561db7a418dd39b2201dfe110ab4a4',1,97,587,0),
('724c8f72afa9e4bbe71160df87c71652','c81e728d9d4c2f636f067f89cc14862c',4,44,2348,0),
('724c8f72afa9e4bbe71160df87c71652','c8d11180c956e5b5afc3d1970ce2193e',1,98,587,0),
('724c8f72afa9e4bbe71160df87c71652','c8d46d341bea4fd5bff866a65ff8aea9',4,26,2348,0),
('724c8f72afa9e4bbe71160df87c71652','c9ff055d5178c1e5686eb62017e3c4ff',1,244,587,0),
('724c8f72afa9e4bbe71160df87c71652','ca23ba209cc33678530392b7197fda4d',2,367,1174,0),
('724c8f72afa9e4bbe71160df87c71652','cb50fd5e8c18cffaaad1ab74baf6eb3c',1,66,587,0),
('724c8f72afa9e4bbe71160df87c71652','cbf5d56e63331be4b1df14b5d99678b2',1,457,587,0),
('724c8f72afa9e4bbe71160df87c71652','cc935c5faf4c8f7a0468d7552a9b8138',2,157,1174,0),
('724c8f72afa9e4bbe71160df87c71652','cd9e6a20f2dd30591bce77969f2b90c1',1,462,587,0),
('724c8f72afa9e4bbe71160df87c71652','cf19be9223758af6ecd460b5fc46b2f6',1,480,587,0),
('724c8f72afa9e4bbe71160df87c71652','cfcd208495d565ef66e7dff9f98764da',3,29,1761,0),
('724c8f72afa9e4bbe71160df87c71652','d00413cdded7a5c5bc2e06079d63e562',1,410,587,0),
('724c8f72afa9e4bbe71160df87c71652','d0cab90d8d20d57e2f2b9be52f7dd25d',1,444,587,0),
('724c8f72afa9e4bbe71160df87c71652','d2e3083420929d8bfae81f58fa4594cb',1,304,587,0),
('724c8f72afa9e4bbe71160df87c71652','d3d9446802a44259755d38e6d163e820',1,164,587,0),
('724c8f72afa9e4bbe71160df87c71652','d42f2dd9c54d4fbd36ce35b5ae060c0c',1,463,587,0),
('724c8f72afa9e4bbe71160df87c71652','d4579b2688d675235f402f6b4b43bcbf',1,347,587,0),
('724c8f72afa9e4bbe71160df87c71652','d48788168076b999d36c4f3ccb75ba2f',1,143,587,0),
('724c8f72afa9e4bbe71160df87c71652','d55669822f1a8cf72ec1911e462a54eb',3,115,1761,0),
('724c8f72afa9e4bbe71160df87c71652','d56b699830e77ba53855679cb1d252da',1,3,587,0),
('724c8f72afa9e4bbe71160df87c71652','d6e047923b2b0f63a7a03c66074a0151',1,481,587,0),
('724c8f72afa9e4bbe71160df87c71652','d745415de7dbe78a88c1cd077b8a798c',1,473,587,0),
('724c8f72afa9e4bbe71160df87c71652','d7b85f12bdf36266db695411a654f73f',1,103,587,0),
('724c8f72afa9e4bbe71160df87c71652','d861877da56b8b4ceb35c8cbfdf65bb4',1,109,587,0),
('724c8f72afa9e4bbe71160df87c71652','d92d09fea730e2ba3908f2bff7c2b56b',1,100,587,0),
('724c8f72afa9e4bbe71160df87c71652','d98a07f84921b24ee30f86fd8cd85c3c',2,126,1174,0),
('724c8f72afa9e4bbe71160df87c71652','da443a0ad979d5530df38ca1a74e4f80',3,110,1761,0),
('724c8f72afa9e4bbe71160df87c71652','db0f6f37ebeb6ea09489124345af2a45',2,287,1174,0),
('724c8f72afa9e4bbe71160df87c71652','db3f3946ba271882d8c74cdbf3d5179a',2,154,1174,0),
('724c8f72afa9e4bbe71160df87c71652','dc117c9322deb502c3b16769a8a64e08',1,540,587,0),
('724c8f72afa9e4bbe71160df87c71652','de0c47fd329b3e2e28f59696b73b11cc',1,518,587,0),
('724c8f72afa9e4bbe71160df87c71652','e03f9063484fb1967d1675c86a6094d7',5,33,2935,0),
('724c8f72afa9e4bbe71160df87c71652','e05fe30750d3ea262a610d17ebc07019',7,0,4110,128),
('724c8f72afa9e4bbe71160df87c71652','e1342b084a6585295c7ade62c211f850',1,292,587,0),
('724c8f72afa9e4bbe71160df87c71652','e2eff6c2dafd909df8508f891b385d88',2,121,1174,0),
('724c8f72afa9e4bbe71160df87c71652','e3cc92c14a5e6dd1a7d94b6ff634d7fc',1,172,587,0),
('724c8f72afa9e4bbe71160df87c71652','e5439f340ec51b34d51348e0885bcdf1',1,250,587,0),
('724c8f72afa9e4bbe71160df87c71652','e680afd37e4511a8cb3ce9f63168862a',1,306,587,0),
('724c8f72afa9e4bbe71160df87c71652','e72ff831dbceb5bf11b0a31b81327631',2,105,1174,0),
('724c8f72afa9e4bbe71160df87c71652','e81c4e4f2b7b93b481e13a8553c2ae1b',1,156,587,0),
('724c8f72afa9e4bbe71160df87c71652','e82fa6ac6af62c4e5bcd387709acd5dc',1,171,587,0),
('724c8f72afa9e4bbe71160df87c71652','ebed715e82a0a0f3e950ef6565cdc4a8',1,114,587,0),
('724c8f72afa9e4bbe71160df87c71652','ecc3c7b4754f8509cfe9de944671b36f',7,0,4110,128),
('724c8f72afa9e4bbe71160df87c71652','eccbc87e4b5ce2fe28308fd9f2a7baf3',1,28,587,0),
('724c8f72afa9e4bbe71160df87c71652','ed29da59b3ca8a6b01b216d2973487d2',1,195,587,0),
('724c8f72afa9e4bbe71160df87c71652','ed2b5c0139cec8ad2873829dc1117d50',5,173,2935,0),
('724c8f72afa9e4bbe71160df87c71652','ed881bac6397ede33c0a285c9f50bb83',2,310,1174,0),
('724c8f72afa9e4bbe71160df87c71652','eda721c5f8c61daee37ca15ce3c4d881',1,133,587,0),
('724c8f72afa9e4bbe71160df87c71652','ee20fd29e100990f661f3f1479c19647',2,396,1174,0),
('724c8f72afa9e4bbe71160df87c71652','eeaf118e5d97270acfc4cd8da9555891',1,425,587,0),
('724c8f72afa9e4bbe71160df87c71652','f068fc985d0a439e5a126d78a28cc4c9',1,441,587,0),
('724c8f72afa9e4bbe71160df87c71652','f09cc7ee3a9a93273f4b80601cafb00c',4,338,2348,0),
('724c8f72afa9e4bbe71160df87c71652','f1edc500eb1136f10c17eeffb9eecbc5',1,504,587,0),
('724c8f72afa9e4bbe71160df87c71652','f212d489ec65fe36e32d99f6ac0861c9',1,58,587,0),
('724c8f72afa9e4bbe71160df87c71652','f2f645b7cf0962908fdb5bb485bd0cad',2,72,1174,0),
('724c8f72afa9e4bbe71160df87c71652','f39ed5b6d0275dcbc4a2f5de624d95ae',1,273,587,0),
('724c8f72afa9e4bbe71160df87c71652','f4af8b5789576c000ce9105b25609bd6',1,537,587,0),
('724c8f72afa9e4bbe71160df87c71652','f5743daa1b0c190dc25ac146a657932e',1,419,587,0),
('724c8f72afa9e4bbe71160df87c71652','f59cd8184f216f9ebecc3697b68de4c3',1,21,587,0),
('724c8f72afa9e4bbe71160df87c71652','f5ab96926a6a561aab7ecb4ba7c915d4',1,309,587,0),
('724c8f72afa9e4bbe71160df87c71652','f6216ab8b669f451dd4270a9cb96ec69',1,71,587,0),
('724c8f72afa9e4bbe71160df87c71652','f6cb3e816496528d4187db53bc66567f',2,251,1174,0),
('724c8f72afa9e4bbe71160df87c71652','f894427cc1c571f79da49605ef8b112f',3,9,1761,0),
('724c8f72afa9e4bbe71160df87c71652','f970e2767d0cfe75876ea857f92e319b',1,236,587,0),
('724c8f72afa9e4bbe71160df87c71652','f97c5d29941bfb1b2fdab0874906ab82',1,270,587,0),
('724c8f72afa9e4bbe71160df87c71652','f9cb12f89c3f82ffaba2483cd3551d82',1,135,587,0),
('724c8f72afa9e4bbe71160df87c71652','f9f90eeaf400d228facde6bc48da5cfb',1,141,587,0),
('724c8f72afa9e4bbe71160df87c71652','fbb44b4487415b134bce9c790a27fe5e',1,299,587,0),
('724c8f72afa9e4bbe71160df87c71652','ff1ccf57e98c817df1efcd9fe44a8aeb',11,119,6458,0),
('724c8f72afa9e4bbe71160df87c71652','ffe8560492ef96f860b965341d0c9698',1,542,587,0),
('755095551c463ec2cdedd536714e08a7','1679091c5a880faf6fb5e6087eb1b2dc',1,13,16842,0),
('755095551c463ec2cdedd536714e08a7','8f14e45fceea167a5a36dedd4bea2543',1,15,16842,0),
('755095551c463ec2cdedd536714e08a7','8fc42c6ddf9966db3b09e84365034357',1,0,16842,0),
('755095551c463ec2cdedd536714e08a7','912af0dff974604f1321254ca8ff38b6',8,2,32000,0),
('755095551c463ec2cdedd536714e08a7','a87ff679a2f3e71d9181a67b7542122c',1,9,16842,0),
('755095551c463ec2cdedd536714e08a7','c4ca4238a0b923820dcc509a6f75849b',1,3,16842,0),
('755095551c463ec2cdedd536714e08a7','c81e728d9d4c2f636f067f89cc14862c',1,5,16842,0),
('755095551c463ec2cdedd536714e08a7','c9f0f895fb98ab9159f51fd0297e236d',1,17,16842,0),
('755095551c463ec2cdedd536714e08a7','e4da3b7fbbce2345d7772b0674a318d5',1,11,16842,0),
('755095551c463ec2cdedd536714e08a7','eccbc87e4b5ce2fe28308fd9f2a7baf3',1,7,16842,0),
('755095551c463ec2cdedd536714e08a7','f894427cc1c571f79da49605ef8b112f',2,0,32000,128),
('78cabd40e1e1f417b9f83789c2321f4a','06a943c59f33a34bb5924aaf72cd2995',1,0,32000,128),
('9bd8393860e6e9cf4c907a0919ca687d','0cc175b9c0f1b6a831c399e269772661',1,19,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','0cfff68896ae6825dfa9caee7afcea9f',1,84,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','0eee59a475855895f87e4900c084a4a9',1,77,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','0f81d52e06caaa4860887488d18271c7',1,4,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','10ae9fc7d453b0dd525d0edf2ede7961',1,21,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','10b73ec3370562dbd65f130ea54a8a35',10,41,28571,0),
('9bd8393860e6e9cf4c907a0919ca687d','1424ca49c88f72347af1f2fe7a569169',5,45,14285,0),
('9bd8393860e6e9cf4c907a0919ca687d','162e31afc5ade88a04d3f428e97e8f46',3,0,8571,0),
('9bd8393860e6e9cf4c907a0919ca687d','16908b0605f2645dfcb4c3a8d248cef3',1,0,2857,128),
('9bd8393860e6e9cf4c907a0919ca687d','18218139eec55d83cf82679934e5cd75',1,17,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','18ccf61d533b600bbf5a963359223fe4',1,27,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','1b3231655cebb7a1f783eddf27d254ca',5,43,14285,0),
('9bd8393860e6e9cf4c907a0919ca687d','1fecb4dca32e01d3a83ebab5314ebbab',1,97,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','23a58bf9274bedb19375e527a0744fa9',1,5,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','308319a5ba52f2b73fd79195accdd23a',1,20,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','3681df8d04470ecc65053b790e19a065',1,95,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','43b5c9175984c071f30b873fdce0a000',1,33,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','469bba0a564235dfceede42db14f17b0',1,29,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','46defce884d1be32019f20864172323d',1,88,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','517b08dafd8aa7559790bf0715de47c6',10,42,28571,0),
('9bd8393860e6e9cf4c907a0919ca687d','53a9c3686afdbb0db7c626e56a243a41',1,38,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','53e61336bb49ec978968786b07dea50b',2,2,5714,0),
('9bd8393860e6e9cf4c907a0919ca687d','5fbab8c991be6b35d52e2d4868b6854f',1,54,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','62cd275989e78ee56a81f0265a87562e',1,89,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','639bae9ac6b3e1a84cebb7b403297b79',1,16,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','667940ea3df6617168cef1233b76dc29',1,96,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','6c3fa34115345a2636a23876089152b7',1,13,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','6c92285fa6d3e827b198d120ea3ac674',1,15,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','6e373659f3c93670f67f66279ce312f1',1,37,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','71ccb7a35a452ea8153b6d920f9f190e',1,7,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','77a072fba34a72588b4a8170238f2cf0',1,91,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','8154f2ab366901a6744c15cef7c62eba',1,24,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','8bf8854bebe108183caeb845c7676ae4',2,11,5714,0),
('9bd8393860e6e9cf4c907a0919ca687d','8fc42c6ddf9966db3b09e84365034357',2,6,5714,0),
('9bd8393860e6e9cf4c907a0919ca687d','99be1ee67a0137092d3d112c0620c552',1,3,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','9c28d32df234037773be184dbdafc274',1,14,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','9c44fc81ae1c3b4b362d5576bf6cda53',1,60,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','9ea0a36b3a20901fafe834eb519a595c',1,90,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','a86fcebe37c3e9c82e43c25d54ad2146',1,46,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','ada150cea270ef5267b5ef2ff2366846',1,10,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','b8488851cdb11c1ff0ba352fb3308451',4,85,11428,0),
('9bd8393860e6e9cf4c907a0919ca687d','bb3ccd5881d651448ded1dac904054ac',1,34,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','be5d5d37542d75f93a87094459f76678',1,9,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','c458d397f9d289f2e4aaa14db438c03d',1,59,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','c4ca4238a0b923820dcc509a6f75849b',3,56,8571,0),
('9bd8393860e6e9cf4c907a0919ca687d','c51ce410c124a10e0db5e4b97fc2af39',1,62,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','c7561db7a418dd39b2201dfe110ab4a4',1,108,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','c81e728d9d4c2f636f067f89cc14862c',4,55,11428,0),
('9bd8393860e6e9cf4c907a0919ca687d','c8d11180c956e5b5afc3d1970ce2193e',1,109,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','c8d46d341bea4fd5bff866a65ff8aea9',2,1,5714,0),
('9bd8393860e6e9cf4c907a0919ca687d','cb50fd5e8c18cffaaad1ab74baf6eb3c',1,69,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','ce5fb8df125a4721d1df328bc6f2ddea',1,28,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','cfcd208495d565ef66e7dff9f98764da',3,40,8571,0),
('9bd8393860e6e9cf4c907a0919ca687d','d55669822f1a8cf72ec1911e462a54eb',1,30,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','d92d09fea730e2ba3908f2bff7c2b56b',1,104,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','e03f9063484fb1967d1675c86a6094d7',5,44,14285,0),
('9bd8393860e6e9cf4c907a0919ca687d','e05fe30750d3ea262a610d17ebc07019',1,12,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','e97e07d7e0c203250f2e9891a4bec03c',1,8,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','ea170e2cafb1337755c8b3d5ae4437f4',1,18,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','eccbc87e4b5ce2fe28308fd9f2a7baf3',1,39,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','ed2b5c0139cec8ad2873829dc1117d50',1,35,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','f212d489ec65fe36e32d99f6ac0861c9',1,61,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','f2f645b7cf0962908fdb5bb485bd0cad',2,83,5714,0),
('9bd8393860e6e9cf4c907a0919ca687d','f6216ab8b669f451dd4270a9cb96ec69',1,82,2857,0),
('9bd8393860e6e9cf4c907a0919ca687d','f7c0a09108cdf26287c1bc5af2ed1f93',1,32,2857,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','003f53160982b3d377b1a054b3638c49',1,202,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','01b6e20344b68835c5ed1ddedf20d531',13,161,7954,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','030d798f350102e3f7ab04197e97c9bd',1,435,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','03a93f03f1d612f37642342071e4986e',1,330,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','05e94e8cbc28f5837d0c355917c05fea',1,137,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','06e3d36fa30cea095545139854ad1fb9',1,490,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','07811dc6c422334ce36a09ff5cd6fe71',2,368,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','07868a716d4712d7771f6414d2b8bf8a',2,42,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','07ab242311dbad887fb03e4a25092781',1,419,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','07cc694b9b3fc636710fa08b6922c42b',3,46,1835,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','07ccfe360dce69b84595428e2ec1c1cc',1,262,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','08391c959fc8bd0b672c596c4d6bcdcd',1,472,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','09286af346951f520509c5702db7625e',1,471,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','099dafc678df7d266c25f95ccf6cde22',2,237,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','0b3b97fa66886c5688ee4ae80ec0c3c2',1,427,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','0cc175b9c0f1b6a831c399e269772661',19,34,11625,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','0d149b90e7394297301c90191ae775f0',1,314,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','0d3fda0bdbb9d619e09cdf3eecba7999',2,276,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','0e66be14b86bd30bf4fc84357763b591',1,65,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','10b73ec3370562dbd65f130ea54a8a35',2,385,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','11a7a5d55a91adb201e113967eff93fe',1,514,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','13af528039c500905f92e2a55ccccc2d',1,93,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','13b5bfe96f3e2fe411c9f66f4a582adf',5,100,3059,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','1424ca49c88f72347af1f2fe7a569169',1,413,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','149603e6c03516362a8da23f624db945',1,107,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','162e31afc5ade88a04d3f428e97e8f46',10,2,6118,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','18218139eec55d83cf82679934e5cd75',4,193,2447,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','18b049cc8d8535787929df716f9f4e68',4,68,2447,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','1ce873c16c6b46b4a275b438591a9f7c',2,164,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','1ea287f2ecbfd355c05b14f134d85007',1,183,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','1ed1645edd706dc379effe13f3edcacf',2,99,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','1f2bf2e032a11fec0ea5d7f9d6a5aa1d',1,132,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','21582c6c30be1217322cdb9aebaf4a59',3,199,1835,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','229789c5a8df3182ad7757f6dc6c7eec',1,94,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','22af645d1859cb5ca6da0c484f1f37ea',3,110,1835,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','23a58bf9274bedb19375e527a0744fa9',2,37,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','268184c12df027f536154d099d497b31',1,197,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','27792947ed5d5da7c0d1f43327ed9dab',1,397,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','279f4c1b096489e724b12e6643ebfb3a',1,179,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','28b3da6a4cad283dd294dd51d476084c',1,443,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','28f20a02bf8a021fab4fcec48afb584e',4,108,2447,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','2bb3d86d95234affa7c5bd68c4bab606',1,440,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','2c61ebff5a7f675451467527df66788d',2,116,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','2ea1a0d2250c0a3444da79587f2d2cf1',1,233,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','309b5d4f7785cdf69a212603f95efcc5',1,243,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','312db69f5bf4447dfe3c58983083b54f',1,305,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','3189934774aa880fa7fbf8da8f9e446d',1,214,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','3190dbf13beaf51d8852bdd9bc4cdf89',2,58,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','3262d48df5d75e3452f0f16b313b7808',1,488,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','32aad2fce95f306356015aa528ff4513',1,323,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','340bac32dadc0feb0ba6cc0ffac94515',1,338,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','3413e60c4be854b769e90cfa4cb1730d',2,447,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','34d1f91fb2e514b8576fab1a75a89a6b',1,230,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','37598dad8f8805ce708ba8c4f67ce367',1,261,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','37d153a06c79e99e4de5889dbe2e7c57',2,366,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','3823552b7a2b839259a831e3b7b349a3',1,124,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','388053b7c0f6bc0351cb7698028e0611',1,198,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','3b759a9ca80234563d87672350659b2b',1,188,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','3d262d4c9d3fd91c57191af817d40f8c',1,38,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','3e1867f5aee83045775fbe355e6a3ce1',1,191,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','3f347890f95ef75c2eacb4f01c622ac9',1,346,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','3f4cede61a59db6832b07ea4f3bd3de1',1,332,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','3ffc3af202ae44739c09f22a441653fb',1,138,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','4015e9ce43edfb0668ddaa973ebc7e87',2,112,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','40be4e59b9a2a2b5dffb918c0e86b3d7',1,466,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','4119639092e62c55ea8be348e4d9260d',5,22,3059,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','418c5509e2171d55b0aee5c2ea4442b5',1,147,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','434990c8a25d2be94863561ae98bd682',1,494,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','437b930db84b8079c2dd804a71936b5f',1,139,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','43a0a1e8212cd9140a5c1fa1ef5a5bac',1,245,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','469bba0a564235dfceede42db14f17b0',1,221,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','46b3931b9959c927df4fc65fdee94b07',3,1,1835,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','490e1788a77a71429b8caa472697e1e4',1,499,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','49889d3f78e208b1538f15a0c7bc16d0',1,378,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','4bca24304861acde5770fdbe3cc2503b',2,128,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','50584c36a7a475387f81fa1b1655fe79',1,476,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','508c75c8507a2ae5223dfd2faeb98122',2,0,1223,128),
('9f8b01a6c6a9bdc99536f153cd68d2b7','50bd8c21bfafa6e4e962f6a948b1ef92',1,130,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','517b08dafd8aa7559790bf0715de47c6',4,379,2447,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','53d670af9bb16ea82e7ef41ee23ec6df',1,133,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','53e21a352428181343474073e76918ed',1,441,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','560220fc3242a805f094edce47f35702',2,211,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','564adc21ef12d979b9b055426798dce2',1,249,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','567904efe9e64d9faf3e41ef402cb568',1,106,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','56de9219979795654f00a462f479b92d',2,126,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','584826e70485130530f7f01a973d5637',1,213,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','589b397ed82131bf51acdf63521c2df5',1,113,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','5bace2853ebc457c9baf0678fe77fe1b',1,220,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','5c4e8c01bf4510088d37c806e77bd628',1,279,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','5f12b786b2f662365bc4843f7fc2a6fa',2,270,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','5fc732311905cb27e82d67f4f6511f7f',1,398,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','609f88983635a66fe4c8570afee066e0',1,195,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','62506be34d574da4a0d158a67253ea99',2,177,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','628b7db04235f228d40adc671413a8c8',5,35,3059,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','6299ba2cbd9661a5e3872b715521cd6a',1,254,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','62cc0b4ebb0b57b40778179234246c38',5,269,3059,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','632a2406bbcbcd553eec45ac14b40a0a',1,344,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','639bae9ac6b3e1a84cebb7b403297b79',2,321,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','67b3dba8bc6778101892eb77249db32e',1,48,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','6819d54dd49f7cece869e3fe77d213f8',1,336,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','6c3fa34115345a2636a23876089152b7',1,5,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','6d1cc5925faebb27245b48b88c94838b',2,208,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','6f4922f45568161a8cdf4ad2299f6d23',2,367,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','706dc2ee585fb5dcb18e3ac08da7ce0c',3,91,1835,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','713dd4d0b2e842c08da62ddeec872331',1,74,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7297ba034884447afd590e24a0638ba2',1,458,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','731b886d80d2ea138da54d30f43b2005',1,426,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','734d3030ff72ad8d9678efa82b1db7d2',1,291,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','75631f399043213a36602cc670faef71',1,430,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','75e52a0ecfafeda17a34fc60111c1f0b',1,190,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','76a79a1cdd981d7b73a1b7cf9cc6e0de',1,272,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','76e369257240ded4b1c059cf20e8d9a4',1,173,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','77004ea213d5fc71acf74a8c9c6795fb',1,283,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7716ed93eba822a48b5f39b87bb5f56c',1,251,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7761127a460aaf290ed953098284dd1a',2,84,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','78ee54aa8f813885fe2fe20d232518b9',1,95,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7959b935afdef74b73fc9ce484019f03',1,504,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','79b7ba2c4d2732da179563e4a3ad7d2e',1,23,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7b7813f00f42b7e5366e7065aaa798c6',1,181,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7b8dc4fb0fb55fc8eb69ff080c45ed7e',2,266,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7bcf2403c6ea5f9a79fabfa53a0d43b8',1,512,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7cef8a734855777c2a9d0caf42666e69',1,416,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7d0db380a5b95a8ba1da0bca241abda1',5,142,3059,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7d5827a9c13ecd79a8fd94ebb2537412',1,25,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7d767e6bb05138bb94abee483ea8abc6',1,125,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7dc22b2c6a992f0232345df41303f5ea',1,156,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','7f90df6477bdb81ce131fe37eeeb1f01',5,7,3059,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','8134b84030cca5285ed0e0b31ba06f10',2,85,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','826ad6b0338304c40b42644b5144f80a',1,155,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','82df41632da476065ce2997900554442',6,41,3671,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','84cdc76cabf41bd7c961f6ab12f117d8',2,343,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','85964989611934e09fd33690cd7aa279',1,145,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','85e47ac07ac9d6416168a97e33fa969a',1,117,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','860cb9843fe4a9b87c60b6d02619515a',1,263,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','86abf8f8953dc4beec265226cc233369',2,255,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','8727920077943a3af1ff377e46437c42',1,170,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','88627d1fe4d5ef9e8b341f0dbf0370b5',1,55,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','88d2c32b8e12e4cadb0fdbf279a85d8d',1,415,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','892ea9918d303f79425139c5a34ccb0b',1,235,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','8a6b6ea3aa08285be1d4e00725aa9090',1,326,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','8bf8854bebe108183caeb845c7676ae4',12,16,7342,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','8c4291f6956da81515a5c0caec2976d0',2,317,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','8df358eebbbb64bf19235a902db73505',6,8,3671,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','8e83b1d4dd4533f7d84d1c6055598795',1,28,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','8ee0b79fb35b0efe85b44c0ee243f8d5',1,150,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','8fc42c6ddf9966db3b09e84365034357',28,13,17131,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','8fd6f46ad5874b41fc087b26745c81b2',3,59,1835,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','90bec61be5ffe907d8a66f2484f95ba0',1,50,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','910955a907e739b81ec8855763108a29',2,194,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','91735fc2b8934286afcbab65f138cdf7',1,75,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','922c8158165d7c6528b9194c86b54b01',1,511,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','9357f705a055126cd4cadc045c987c4e',1,383,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','93da65a9fd0004d9477aeac024e08e15',1,180,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','95456e7506a8c9c04e3bdffd78da1cae',1,240,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','95aedc669e1140c32256d3ac1921c23e',2,370,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','95cc6b4ac5abdeadc74b73a8ba7200d9',1,3,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','960db2ed82202a9706b97775a4269378',3,32,1835,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','965dbaac085fc891bfbbd4f9d145bbc8',2,318,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','97e32a574aa9ef24f76a81fc43aba6ce',2,15,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','999b1ad8231180184caf38ed6b540ed7',1,418,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','99be1ee67a0137092d3d112c0620c552',1,507,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','9a7d3e2c3ffb452b2e40784f77723938',1,257,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','9aa76d8a9f8e25e87dbcafc7aaf556fc',1,36,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','9b680059d7f7ea92ea578a9ceeb0f0db',1,506,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','9c28d32df234037773be184dbdafc274',3,39,1835,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','9ce90fddf23fb66e39c8adb03e690768',1,231,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','9df3b01c60df20d13843841ff0d4482c',1,414,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','9df9fdb80dd531ff0f17c4754d44d995',1,158,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','9e2bce23d37e9c08d8baae6e87ea5e90',1,315,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','9e925e9341b490bfd3b4c4ca3b0c1ef2',5,20,3059,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','a04c01d73a91a11610682a602b85a83b',1,175,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','a181a603769c1f98ad927e7367c7aa51',1,97,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','a2a551a6458a8de22446cc76d639a9e9',4,82,2447,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','a2bbabfe7b1dd886a0c32b57bd8a94f9',1,26,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','a3186a309d94022f5d4ec3a601f4a7c6',1,393,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','a385f393da1ce58b289e89aef75880e6',1,67,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','a7c78469daa497a86142ff91ed286c9c',1,475,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','a98e84980a3612cf1f06dae18c313459',1,464,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','aa716414de9fdd94b9e111bddc0169b7',1,303,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','aa8af3ebe14831a7cd1b6d1383a03755',1,187,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ab3e355e2b6806c984851ebdee2a0da1',1,461,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ac725768466500046904d27b548d75c5',1,374,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','acaa16770db76c1ffb9cee51c3cabfcf',1,206,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','acd05dbb82fb59c9e37b60fe1f328f16',1,136,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ad5cd0c1aa08427cdec8d8cc5349a6e6',1,109,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','addec426932e71323700afa1911f8f1c',2,83,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','af14b067a4804cdc758bf5ba6908a3fb',1,468,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','b214af95fab423cc843792c70a199f09',1,57,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','b2bf18e206cf9b5eb2d632030acb16cc',1,153,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','b2fdab230a2c39f3595a947861863cb7',1,356,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','b32d73e56ec99bc5ec8f83871cde708a',1,358,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','b40b43fd5af2db4fbfeb4e83856e4876',1,508,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','b42dad5453b2128a32f6612b13ea5d9f',2,63,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','b5c0b187fe309af0f4d35982fd961d7e',1,307,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','b5eda0a74558a342cf659187f06f746f',1,355,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','b7a61cf5d29e4ad809c301c74229b078',1,392,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','b81dd45e6a3e12c5f231f00cb988f858',1,432,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','b8284650440a8e32b5189e1bcb3e94d8',1,354,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ba7830c6c0beaca54d8dca32b2a20c93',1,11,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','bb7887c1012eb32934823abd96a1068e',1,21,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','bd15747ee12aff1277bcf3617bcff10b',1,12,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','be5d5d37542d75f93a87094459f76678',21,27,12848,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','be6601e0439c8f7e32e545c04aae24c7',1,120,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','bef99584217af744e404ed44a33af589',1,87,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','bf0b130004f7942e3197451db4a1c330',1,320,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','c180aaadf5ab10fb3a733f43f3ffc4b3',1,185,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','c2c8e798aecbc26d86e4805114b03c51',1,121,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','c395246f710b0e2c86b7ed82f7f56ce3',2,365,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','c55704728716728d5e1b6d3857b503a6',1,30,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','c81c0f0b71e938091314334dc3440fa6',1,52,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','c8d46d341bea4fd5bff866a65ff8aea9',1,310,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','c9ff055d5178c1e5686eb62017e3c4ff',1,478,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','cbf5d56e63331be4b1df14b5d99678b2',1,111,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','cc935c5faf4c8f7a0468d7552a9b8138',2,200,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','d50d86b4591ddaaa0609de5237552c3e',1,72,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','d529e941509eb9e9b9cfaeae1fe7ca23',1,253,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','d55669822f1a8cf72ec1911e462a54eb',12,33,7342,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','d850f04cdb48312a9be171e214c0b4ee',2,192,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','d98a07f84921b24ee30f86fd8cd85c3c',4,29,2447,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','d998ff3a339f9318bd7b6e98912e4043',1,162,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','da443a0ad979d5530df38ca1a74e4f80',8,24,4894,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','db3f3946ba271882d8c74cdbf3d5179a',2,78,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','db82206b1d49042d1a710e9c88c21d36',1,352,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','dc117c9322deb502c3b16769a8a64e08',2,467,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','dc62980cd9036671e0a3a0c16c16e61c',1,493,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','dd24ed91e7104df8ec2f38f5d969de43',1,340,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','dd5c8bf51558ffcbe5007071908e9524',1,375,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','de13fc4490fbd29a732bf77eb7476650',1,395,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','df3f079de6961496f0460dcfdbf9bca3',2,248,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','e05fe30750d3ea262a610d17ebc07019',7,4,4282,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','e3cc92c14a5e6dd1a7d94b6ff634d7fc',3,360,1835,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','e4894ca167b08880bfc35862f18575eb',1,425,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','e5439f340ec51b34d51348e0885bcdf1',1,484,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','e58a50b35e8d273ffe254b905362a7fb',1,134,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','e72ff831dbceb5bf11b0a31b81327631',5,6,3059,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','e81c4e4f2b7b93b481e13a8553c2ae1b',1,131,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','e82fa6ac6af62c4e5bcd387709acd5dc',3,69,1835,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','e833b2db6f85ce861428ebef754d13cc',1,446,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','e877c56e4fb621e81fd30dbd114a545b',1,247,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ea82410c7a9991816b5eeeebe195e20a',2,268,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','eb693dc3e09666bb339be2c419d0478e',1,422,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ebed715e82a0a0f3e950ef6565cdc4a8',1,105,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ebf78b512222fe4dcd14e7d5060a15b0',1,70,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ecc3c7b4754f8509cfe9de944671b36f',6,10,3671,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ed2b5c0139cec8ad2873829dc1117d50',5,148,3059,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ed881bac6397ede33c0a285c9f50bb83',2,115,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','eda721c5f8c61daee37ca15ce3c4d881',1,64,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ee63700a92c5b6a61802e226ed995c05',1,313,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f277687cfcb8e4e4714c2b582bc37080',1,501,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f3965f8846e37e152d8cd79bba70891a',1,210,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f45ead318b5fa57aa8985c486928acc3',1,225,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f4842dcb685d490e2a43212b8072a6fe',1,410,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f4c9385f1902f7334b00b9b4ecd164de',1,333,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f5ddaf0ca7929578b408c909429f68f2',2,53,1223,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f68d48a1c64478cadff5c343371783c3',1,171,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f6cb3e816496528d4187db53bc66567f',1,485,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f75cac02116d825a000c33a7c326af37',1,380,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f7b11037f2050959293aafb493b7653c',1,502,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f894427cc1c571f79da49605ef8b112f',1,519,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f970e2767d0cfe75876ea857f92e319b',4,167,2447,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f97c5d29941bfb1b2fdab0874906ab82',1,353,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','f9cb12f89c3f82ffaba2483cd3551d82',1,66,611,0),
('9f8b01a6c6a9bdc99536f153cd68d2b7','ff1ccf57e98c817df1efcd9fe44a8aeb',5,47,3059,0),
('a8e33b084be533fcf029619ccf07732a','01b6e20344b68835c5ed1ddedf20d531',8,23,18156,0),
('a8e33b084be533fcf029619ccf07732a','03265faca14f06be8156135b57d4ccf9',1,24,2269,0),
('a8e33b084be533fcf029619ccf07732a','04b29480233f4def5c875875b6bdc3b1',1,112,2269,0),
('a8e33b084be533fcf029619ccf07732a','061c0f607446c5f26244624e0434c72d',1,72,2269,0),
('a8e33b084be533fcf029619ccf07732a','06cf60d22f85e12c1d761a239a46dae7',1,70,2269,0),
('a8e33b084be533fcf029619ccf07732a','07ccfe360dce69b84595428e2ec1c1cc',1,53,2269,0),
('a8e33b084be533fcf029619ccf07732a','0bd6506986ec42e732ffb866d33bb14e',1,50,2269,0),
('a8e33b084be533fcf029619ccf07732a','0cc175b9c0f1b6a831c399e269772661',8,1,18156,0),
('a8e33b084be533fcf029619ccf07732a','0d3fda0bdbb9d619e09cdf3eecba7999',1,89,2269,0),
('a8e33b084be533fcf029619ccf07732a','13b5bfe96f3e2fe411c9f66f4a582adf',2,68,4539,0),
('a8e33b084be533fcf029619ccf07732a','15512a989521ee93ea7ddfcfb4341132',1,54,2269,0),
('a8e33b084be533fcf029619ccf07732a','162e31afc5ade88a04d3f428e97e8f46',3,14,6808,0),
('a8e33b084be533fcf029619ccf07732a','16908b0605f2645dfcb4c3a8d248cef3',1,51,2269,0),
('a8e33b084be533fcf029619ccf07732a','228c70bfc5589c58c044e03fff0e17eb',1,123,2269,0),
('a8e33b084be533fcf029619ccf07732a','22af645d1859cb5ca6da0c484f1f37ea',1,84,2269,0),
('a8e33b084be533fcf029619ccf07732a','23a58bf9274bedb19375e527a0744fa9',4,29,9078,0),
('a8e33b084be533fcf029619ccf07732a','2b3de800b4576343a07e86b8c420e448',1,40,2269,0),
('a8e33b084be533fcf029619ccf07732a','2b830f876c0bdfab339d80506286180f',1,48,2269,0),
('a8e33b084be533fcf029619ccf07732a','2c61ebff5a7f675451467527df66788d',1,130,2269,0),
('a8e33b084be533fcf029619ccf07732a','3262d48df5d75e3452f0f16b313b7808',1,137,2269,0),
('a8e33b084be533fcf029619ccf07732a','3677b55b4fb1c656b2a6ec776093be88',1,22,2269,0),
('a8e33b084be533fcf029619ccf07732a','434990c8a25d2be94863561ae98bd682',1,100,2269,0),
('a8e33b084be533fcf029619ccf07732a','46c48bec0d282018b9d167eef7711b2c',1,113,2269,0),
('a8e33b084be533fcf029619ccf07732a','4717d53ebfdfea8477f780ec66151dcb',1,28,2269,0),
('a8e33b084be533fcf029619ccf07732a','56de9219979795654f00a462f479b92d',1,79,2269,0),
('a8e33b084be533fcf029619ccf07732a','62cc0b4ebb0b57b40778179234246c38',2,25,4539,0),
('a8e33b084be533fcf029619ccf07732a','639bae9ac6b3e1a84cebb7b403297b79',1,55,2269,0),
('a8e33b084be533fcf029619ccf07732a','6cd5fe80c8bff7d229b38215580f7618',1,139,2269,0),
('a8e33b084be533fcf029619ccf07732a','6e5f1a81b34c045ce1dd0ea94a32e614',1,38,2269,0),
('a8e33b084be533fcf029619ccf07732a','731b886d80d2ea138da54d30f43b2005',1,4,2269,0),
('a8e33b084be533fcf029619ccf07732a','754faff639576f7a88ff3974c0d63ca4',1,131,2269,0),
('a8e33b084be533fcf029619ccf07732a','76e369257240ded4b1c059cf20e8d9a4',1,36,2269,0),
('a8e33b084be533fcf029619ccf07732a','7716ed93eba822a48b5f39b87bb5f56c',1,67,2269,0),
('a8e33b084be533fcf029619ccf07732a','79da17fa16c14866aa3306a4541afec5',1,21,2269,0),
('a8e33b084be533fcf029619ccf07732a','7b7813f00f42b7e5366e7065aaa798c6',1,39,2269,0),
('a8e33b084be533fcf029619ccf07732a','7d0db380a5b95a8ba1da0bca241abda1',1,109,2269,0),
('a8e33b084be533fcf029619ccf07732a','7d767e6bb05138bb94abee483ea8abc6',1,78,2269,0),
('a8e33b084be533fcf029619ccf07732a','82df41632da476065ce2997900554442',2,8,4539,0),
('a8e33b084be533fcf029619ccf07732a','842e77fefc15c4f24aaf4ec4cc737233',1,103,2269,0),
('a8e33b084be533fcf029619ccf07732a','860cb9843fe4a9b87c60b6d02619515a',1,124,2269,0),
('a8e33b084be533fcf029619ccf07732a','860d7a9915c3d84e711f7dddfd9b4341',1,62,2269,0),
('a8e33b084be533fcf029619ccf07732a','86280ac8a7f8881407ba060c76d72d6a',1,0,2269,0),
('a8e33b084be533fcf029619ccf07732a','8aaab33740413527c3d6f2be39c6ed2c',1,58,2269,0),
('a8e33b084be533fcf029619ccf07732a','8bf8854bebe108183caeb845c7676ae4',2,20,4539,0),
('a8e33b084be533fcf029619ccf07732a','8ea3e06d07a108be5a60531161a11019',1,81,2269,0),
('a8e33b084be533fcf029619ccf07732a','8fc42c6ddf9966db3b09e84365034357',9,5,20425,0),
('a8e33b084be533fcf029619ccf07732a','910955a907e739b81ec8855763108a29',2,60,4539,0),
('a8e33b084be533fcf029619ccf07732a','93d1fa1ba6d94983d3d15e1f6b962f9b',1,46,2269,0),
('a8e33b084be533fcf029619ccf07732a','9544fa2fae515081e7fc27ef2d268642',1,44,2269,0),
('a8e33b084be533fcf029619ccf07732a','95cc6b4ac5abdeadc74b73a8ba7200d9',4,31,9078,0),
('a8e33b084be533fcf029619ccf07732a','97bc592b27a9ada2d9a4bb418ed0ebed',1,114,2269,0),
('a8e33b084be533fcf029619ccf07732a','99be1ee67a0137092d3d112c0620c552',1,102,2269,0),
('a8e33b084be533fcf029619ccf07732a','9df3b01c60df20d13843841ff0d4482c',1,41,2269,0),
('a8e33b084be533fcf029619ccf07732a','a04c01d73a91a11610682a602b85a83b',1,19,2269,0),
('a8e33b084be533fcf029619ccf07732a','a181a603769c1f98ad927e7367c7aa51',1,105,2269,0),
('a8e33b084be533fcf029619ccf07732a','a2a551a6458a8de22446cc76d639a9e9',1,93,2269,0),
('a8e33b084be533fcf029619ccf07732a','a4293995cfbfa9ce60ce71ade2ff75f7',1,37,2269,0),
('a8e33b084be533fcf029619ccf07732a','a53ff64efd169c1b4d085d6e7075c8d7',1,74,2269,0),
('a8e33b084be533fcf029619ccf07732a','a7dd12b1dab17d25467b0b0a4c8d4a92',1,98,2269,0),
('a8e33b084be533fcf029619ccf07732a','a9c449d4fa44e9e5a41c574ae55ce4d9',2,16,4539,0),
('a8e33b084be533fcf029619ccf07732a','aa08769cdcb26674c6706093503ff0a3',3,2,6808,0),
('a8e33b084be533fcf029619ccf07732a','ab3e355e2b6806c984851ebdee2a0da1',1,82,2269,0),
('a8e33b084be533fcf029619ccf07732a','acaa16770db76c1ffb9cee51c3cabfcf',2,95,4539,0),
('a8e33b084be533fcf029619ccf07732a','addec426932e71323700afa1911f8f1c',1,61,2269,0),
('a8e33b084be533fcf029619ccf07732a','b2bf18e206cf9b5eb2d632030acb16cc',1,17,2269,0),
('a8e33b084be533fcf029619ccf07732a','b46127d3c32de3d485a478e88b8f6593',4,0,9078,128),
('a8e33b084be533fcf029619ccf07732a','b5c938d6726bb7657f29dd725a097f16',1,69,2269,0),
('a8e33b084be533fcf029619ccf07732a','b7a48972570cba2b5c1f751d6fed78f1',1,108,2269,0),
('a8e33b084be533fcf029619ccf07732a','be5d5d37542d75f93a87094459f76678',5,27,11347,0),
('a8e33b084be533fcf029619ccf07732a','c5e7dfaf771d423ecf59b008369021e8',2,3,4539,0),
('a8e33b084be533fcf029619ccf07732a','c83b72dd001482ce10f0b106c7a0ed0e',1,96,2269,0),
('a8e33b084be533fcf029619ccf07732a','d6e047923b2b0f63a7a03c66074a0151',1,26,2269,0),
('a8e33b084be533fcf029619ccf07732a','d98a07f84921b24ee30f86fd8cd85c3c',1,66,2269,0),
('a8e33b084be533fcf029619ccf07732a','db3f3946ba271882d8c74cdbf3d5179a',1,128,2269,0),
('a8e33b084be533fcf029619ccf07732a','df3f079de6961496f0460dcfdbf9bca3',1,9,2269,0),
('a8e33b084be533fcf029619ccf07732a','e05fe30750d3ea262a610d17ebc07019',3,6,6808,0),
('a8e33b084be533fcf029619ccf07732a','e64c3132023b29762b354a750b474c53',1,133,2269,0),
('a8e33b084be533fcf029619ccf07732a','e81c4e4f2b7b93b481e13a8553c2ae1b',1,83,2269,0),
('a8e33b084be533fcf029619ccf07732a','e82fa6ac6af62c4e5bcd387709acd5dc',1,107,2269,0),
('a8e33b084be533fcf029619ccf07732a','ecc3c7b4754f8509cfe9de944671b36f',3,7,6808,0),
('a8e33b084be533fcf029619ccf07732a','ed2b5c0139cec8ad2873829dc1117d50',2,45,4539,0),
('a8e33b084be533fcf029619ccf07732a','ef22c14dcebaf7e2d91bb723fdf5bbc9',1,77,2269,0),
('a8e33b084be533fcf029619ccf07732a','f3ee211eaff2e448e05ba21b9759af63',1,10,2269,0),
('a8e33b084be533fcf029619ccf07732a','f4ac4122ee48c213eec816f4d7944ea6',1,43,2269,0),
('a8e33b084be533fcf029619ccf07732a','f4c9385f1902f7334b00b9b4ecd164de',1,118,2269,0),
('a8e33b084be533fcf029619ccf07732a','f6cb3e816496528d4187db53bc66567f',1,134,2269,0),
('a8e33b084be533fcf029619ccf07732a','f970e2767d0cfe75876ea857f92e319b',1,32,2269,0),
('a8e33b084be533fcf029619ccf07732a','fa6c9d5de251d2da13b9f81db8da0ca6',1,35,2269,0),
('a8e33b084be533fcf029619ccf07732a','ff1ccf57e98c817df1efcd9fe44a8aeb',1,129,2269,0),
('c0296a4b8c58865ca9e0f1502b08995d','95cc6b4ac5abdeadc74b73a8ba7200d9',1,0,32000,128);
/*!40000 ALTER TABLE `index_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_section`
--

DROP TABLE IF EXISTS `index_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `index_section` (
  `uniqid` int(11) NOT NULL AUTO_INCREMENT,
  `phash` varchar(32) NOT NULL,
  `phash_t3` varchar(32) NOT NULL,
  `rl0` int(10) unsigned NOT NULL DEFAULT 0,
  `rl1` int(10) unsigned NOT NULL DEFAULT 0,
  `rl2` int(10) unsigned NOT NULL DEFAULT 0,
  `page_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uniqid`),
  KEY `joinkey` (`phash`,`rl0`),
  KEY `page_id` (`page_id`),
  KEY `rl0` (`rl0`,`rl1`,`phash`),
  KEY `rl0_2` (`rl0`,`phash`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_section`
--

LOCK TABLES `index_section` WRITE;
/*!40000 ALTER TABLE `index_section` DISABLE KEYS */;
INSERT INTO `index_section` VALUES
(2,'9bd8393860e6e9cf4c907a0919ca687d','9bd8393860e6e9cf4c907a0919ca687d',1,12,0,12),
(13,'230f8464c03ab1dc4fbd4bc332b6b776','230f8464c03ab1dc4fbd4bc332b6b776',98,99,0,99),
(14,'55a01547a20d7d965193fcd3e277624c','55a01547a20d7d965193fcd3e277624c',98,100,0,100),
(16,'755095551c463ec2cdedd536714e08a7','755095551c463ec2cdedd536714e08a7',1,6,0,6),
(17,'56ce185f3262c9101626cfd28a4127a4','56ce185f3262c9101626cfd28a4127a4',1,2,0,2),
(18,'3e239e3d69de4b3b36fcd34479259a89','3e239e3d69de4b3b36fcd34479259a89',1,5,0,5),
(19,'c0296a4b8c58865ca9e0f1502b08995d','c0296a4b8c58865ca9e0f1502b08995d',1,7,0,7),
(20,'9f8b01a6c6a9bdc99536f153cd68d2b7','9f8b01a6c6a9bdc99536f153cd68d2b7',1,11,0,11),
(23,'a8e33b084be533fcf029619ccf07732a','a8e33b084be533fcf029619ccf07732a',1,7,9,9),
(25,'3d798c3f120fdabe32985de46a5fc2fd','3d798c3f120fdabe32985de46a5fc2fd',1,0,0,1),
(26,'68d237c4097d4cfacaa1850865ef957e','68d237c4097d4cfacaa1850865ef957e',98,0,0,98),
(27,'03394a29ed2144f96bced193919a622f','03394a29ed2144f96bced193919a622f',1,7,10,10),
(28,'6d2ddd1174e062f12957e8f7a89bafb1','6d2ddd1174e062f12957e8f7a89bafb1',1,4,0,4),
(29,'1290464a62b44fab8d78ace9c2f6f6e9','1290464a62b44fab8d78ace9c2f6f6e9',1,7,106,106),
(30,'49a936d4a225f7a63e3c2d860a4ec022','49a936d4a225f7a63e3c2d860a4ec022',1,7,106,106),
(31,'724c8f72afa9e4bbe71160df87c71652','724c8f72afa9e4bbe71160df87c71652',1,0,0,1),
(32,'78cabd40e1e1f417b9f83789c2321f4a','78cabd40e1e1f417b9f83789c2321f4a',1,3,0,3);
/*!40000 ALTER TABLE `index_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_stat_word`
--

DROP TABLE IF EXISTS `index_stat_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `index_stat_word` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `pageid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tstamp` (`tstamp`,`word`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_stat_word`
--

LOCK TABLES `index_stat_word` WRITE;
/*!40000 ALTER TABLE `index_stat_word` DISABLE KEYS */;
INSERT INTO `index_stat_word` VALUES
(1,'jochen',1747848552,3),
(2,'jochen',1747848552,3),
(3,'event',1747848558,3),
(4,'event',1747848558,3),
(5,'event',1747848562,3),
(6,'event',1747848562,3);
/*!40000 ALTER TABLE `index_stat_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` text DEFAULT NULL,
  `TSconfig` longtext DEFAULT NULL,
  `php_tree_stop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` smallint(5) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `target` varchar(80) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `lastUpdated` bigint(20) NOT NULL DEFAULT 0,
  `newUntil` bigint(20) NOT NULL DEFAULT 0,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `abstract` longtext DEFAULT NULL,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `is_siteroot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `module` varchar(255) NOT NULL DEFAULT '',
  `l18n_cfg` smallint(5) unsigned NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` varchar(255) DEFAULT '',
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `no_index` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_follow` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  `canonical_link` text NOT NULL DEFAULT '',
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_description` longtext DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) NOT NULL DEFAULT '',
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_card` varchar(255) NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES
(1,0,1747728300,1744014582,0,0,0,0,'',8,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,2,1,31,27,0,1747728300,0,0,0,0.5,1,'FC Bigfoot','/','TCEFORM {\r\n    tt_content {\r\n        CType.keepItems := addToList(memsy_createmembership,memsy_confirmmembership,memsy_membershipsettings,felogin_login)\r\n    }\r\n}',0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,1,0,'',0,'pagets__home','pagets__default','','',0,0,'','','',NULL,0,'',NULL,0,'',1),
(2,1,1744014582,1744014582,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"description\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,2,1,31,27,0,1744014582,0,0,0,0.5,1,'Privacy Policy','/privacy-policy',NULL,0,0,0,0,'',1,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',9),
(3,1,1744014582,1744014582,0,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"description\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,2,1,31,27,0,1744014582,0,0,0,0.5,1,'Search','/search',NULL,0,0,0,0,'',1,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',8),
(4,1,1744014582,1744014582,0,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"description\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,2,1,31,27,0,1744014582,0,0,0,0.5,1,'Contact Us','/contact-us',NULL,0,0,0,0,'',1,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',7),
(5,1,1744014582,1744014582,0,0,0,0,'',32,'',0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,27,0,1744014582,0,0,0,0.5,1,'Sponsors','/sponsors','',0,0,0,0,'',0,'','','',0,0,0,'',0,0,'','','','','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',6),
(6,1,1744014582,1744014582,0,0,0,0,'',16,'',0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,27,0,1744014582,0,0,0,0.5,1,'Team','/team','',0,0,0,0,'',0,'','','',0,0,0,'',0,0,'','','','','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',5),
(7,1,1744014582,1744014582,0,0,0,0,'',8,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,27,0,1744014582,0,0,0,0.5,1,'Club','/club',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',4),
(8,7,1744014582,1744014582,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"shortcut\":\"\"}',0,0,0,0,2,1,31,27,0,0,4,0,0,0.5,4,'Contact','/club/contact',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',12),
(9,7,1744014582,1744014582,0,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,27,0,1747727757,0,0,0,0.5,1,'Membership','/club/membership',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',11),
(10,7,1744014582,1744014582,0,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,27,0,1744014582,0,0,0,0.5,1,'History','/club/history',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',10),
(11,1,1744014582,1744014582,0,0,0,0,'',4,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,27,0,1744014582,0,0,0,0.5,1,'News','/news',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',3),
(12,1,1744014582,1744014582,0,0,0,0,'',2,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,27,0,1744014582,0,0,0,0.5,1,'Events','/events',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',2),
(98,0,1744016476,1744016344,0,0,0,0,'',16,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,1744021558,0,0,0,0.5,1,'Base','/',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,1,0,'',0,'','',NULL,'',0,0,'','','',NULL,0,'',NULL,0,'',0),
(99,98,1744022126,1744022114,0,0,0,0,'0',64,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,1744022126,0,0,0,0.5,1,'Page A','/page-a',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','',NULL,'',0,0,'','','',NULL,0,'',NULL,0,'',0),
(100,98,1744022124,1744022118,0,0,0,0,'0',128,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,1744022124,0,0,0,0.5,1,'Page B','/page-b',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','',NULL,'',0,0,'','','',NULL,0,'',NULL,0,'',0),
(101,98,1747773551,1744022138,0,0,0,0,'',32,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"shortcut_mode\":\"\",\"shortcut\":\"\",\"abstract\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"target\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,0,98,0,0,0.5,4,'Home','/home',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'pagets__default','pagets__default',NULL,'',0,0,'','','',NULL,0,'',NULL,0,'',0),
(102,1,1747512206,1747512183,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"hidden\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,0,0,0,0,0.5,254,'Club Members','/club-members',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'fe_users',0,'','',NULL,'',0,0,'','','',NULL,0,'',NULL,0,'',0),
(103,102,1747512284,1747512278,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,1,31,31,0,0,0,0,0,0.5,254,'Payments','/payments',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','',NULL,'',0,0,'','','',NULL,0,'',NULL,0,'',0),
(104,9,1747727805,1747727612,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,1747727850,0,0,0,0.5,1,'Confirmation','/club/membership/confirmation',NULL,0,0,0,0,'',1,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','',NULL,'',0,0,'','','',NULL,0,'',NULL,0,'',0),
(105,7,1747727933,1747727886,0,0,0,0,'-2',192,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,1747727933,0,0,0,0.5,1,'Member Area','/club/member-area',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','',NULL,'',0,0,'','','',NULL,0,'',NULL,0,'',0),
(106,7,1747728194,1747727970,0,0,0,0,'0',32,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,1747728332,0,0,0,0.5,1,'Login','/club/login',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','',NULL,'',0,0,'','','',NULL,0,'',NULL,0,'',0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `route` varchar(255) NOT NULL DEFAULT '',
  `arguments` text DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `items` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
INSERT INTO `sys_category` VALUES
(1,0,1744015096,1744015096,0,0,0,0,256,'',0,0,NULL,'{\"items\":\"\"}',0,0,0,0,3,'Examples',0),
(2,0,1744015096,1744015096,0,0,0,0,128,'',0,0,NULL,'{\"items\":null}',0,0,0,0,0,'News',0);
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid_local`,`uid_foreign`,`tablenames`,`fieldname`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
INSERT INTO `sys_category_record_mm` VALUES
(1,37,3,1,'tt_content','categories'),
(1,77,1,0,'pages','categories'),
(1,252,2,1,'tt_content','categories');
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_csp_resolution`
--

DROP TABLE IF EXISTS `sys_csp_resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_csp_resolution` (
  `summary` varchar(40) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `scope` varchar(264) NOT NULL,
  `mutation_identifier` text DEFAULT NULL,
  `mutation_collection` mediumtext DEFAULT NULL,
  `meta` mediumtext DEFAULT NULL,
  PRIMARY KEY (`summary`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_csp_resolution`
--

LOCK TABLES `sys_csp_resolution` WRITE;
/*!40000 ALTER TABLE `sys_csp_resolution` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_csp_resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `identifier` text DEFAULT NULL,
  `identifier_hash` varchar(40) NOT NULL DEFAULT '',
  `folder_hash` varchar(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `sha1` varchar(40) NOT NULL DEFAULT '',
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  `storage` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(10) unsigned NOT NULL DEFAULT 0,
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `size` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(5) unsigned NOT NULL DEFAULT 0,
  `metadata` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES
(1,0,1744014549,1744014549,'/fcbigfoot/examples/teaser_1.png','d2d3d5a6d88aee1ba217640d4b228a44a7bd1955','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','teaser_1.png','c556ca54fddb4db3f620edc2d1355b276bcc96ca',1744014549,1744014548,1,2,'image/png',2286225,0,0),
(2,0,1744014549,1744014549,'/fcbigfoot/examples/teaser_3.png','8c88af8ecc6cc6d8a2b3b5295a22e39275046574','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','teaser_3.png','34c9d65bc2084db06780ac9575478b9b5045e91d',1744014549,1744014548,1,2,'image/png',2860879,0,0),
(3,0,1744014549,1744014549,'/fcbigfoot/examples/teaser_2.png','653740c54de80473effcfdcc3f2846fecaa543c2','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','teaser_2.png','5377f88f3c37f0a1e84e3c9bdcf1c89b59e3426a',1744014549,1744014548,1,2,'image/png',2203698,0,0),
(4,0,1744014549,1744014549,'/fcbigfoot/examples/teaser_4.png','e7f246a91379e05c5381a0e6dba12ba23cb43b04','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','teaser_4.png','d7e29c2773671d4498b6c95dfbe8fe2837ab2fd1',1744014549,1744014548,1,2,'image/png',2193087,0,0),
(5,0,1744014549,1744014549,'/fcbigfoot/examples/teaser_5.png','039295a03b1455098e6562f857c6f1f6648ef9a5','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','teaser_5.png','cb4894b8221cf358764668361eb3108200959a93',1744014549,1744014548,1,2,'image/png',2132080,0,0),
(6,0,1744014549,1744014549,'/fcbigfoot/examples/teaser_7.png','58f4b08615f2e6e3b338f7a072f51fd5322c89c0','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','teaser_7.png','92587c1566cc16cf901fcd6941303ec7fd6358a6',1744014549,1744014548,1,2,'image/png',3548249,0,0),
(7,0,1744014549,1744014549,'/fcbigfoot/examples/logo_bigstep.svg','d7590888708350169508cd844fd44d25af0451b0','c37e41d28c2cbad2af3454ed577c6a1bea49a563','svg','logo_bigstep.svg','0b0cdd57857df7357f8eaf40818c2833c500f875',1744014549,1744014548,1,2,'image/svg+xml',8763,0,0),
(8,0,1744014549,1744014549,'/fcbigfoot/examples/logo_forestnet.svg','416a4586d6c4a3ab9e2b9deec14010ff0ed110ac','c37e41d28c2cbad2af3454ed577c6a1bea49a563','svg','logo_forestnet.svg','e63b83fd2db72a803e972174ef093446222dfd87',1744014549,1744014548,1,2,'image/svg+xml',11703,0,0),
(9,0,1744014549,1744014549,'/fcbigfoot/examples/logo_leafwork.svg','566f13fcccd318200cf1968ada86d6753a23de75','c37e41d28c2cbad2af3454ed577c6a1bea49a563','svg','logo_leafwork.svg','5815d0d5d16331c1c97d1fdcb549453bf6f478f9',1744014549,1744014548,1,2,'image/svg+xml',11513,0,0),
(10,0,1744014549,1744014549,'/fcbigfoot/examples/logo_fooprat-apparll.svg','882e4ba38ac467602f249aa323a7c613fc445807','c37e41d28c2cbad2af3454ed577c6a1bea49a563','svg','logo_fooprat-apparll.svg','11a1384708e527624c65d548ebf4d51602ed0620',1744014549,1744014548,1,2,'image/svg+xml',24565,0,0),
(11,0,1744014549,1744014549,'/fcbigfoot/examples/logo_mossbank.svg','b761fadeefd795352c5d4d8658a53f12be1c4e06','c37e41d28c2cbad2af3454ed577c6a1bea49a563','svg','logo_mossbank.svg','d6ba6ce38069ac51fc621921d10fab2928786190',1744014549,1744014548,1,2,'image/svg+xml',7180,0,0),
(12,0,1744014549,1744014549,'/fcbigfoot/examples/logo_yetitel.svg','155845607437f60a6eed049b9180c3106245bf38','c37e41d28c2cbad2af3454ed577c6a1bea49a563','svg','logo_yetitel.svg','fc33810d2e8f39418cabb598a7bb53bb3a915183',1744014549,1744014548,1,2,'image/svg+xml',10135,0,0),
(13,0,1744014549,1744014549,'/fcbigfoot/examples/matches.json','b38490d0a840439949c58671e2f6651bf4a4bf89','c37e41d28c2cbad2af3454ed577c6a1bea49a563','json','matches.json','4edf2036d437dd29a92fb9d180602b0200732f85',1744014549,1744014548,1,5,'application/json',5606,0,0),
(14,0,1744014549,1744014549,'/fcbigfoot/examples/player_1.png','58c0d65fbf6a4140f57e840dcc13aafd847e038d','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','player_1.png','a09c84d2960e4c2d8294e62648ce4afb8a6b3c88',1744014549,1744014548,1,2,'image/png',224366,0,0),
(15,0,1744014549,1744014549,'/fcbigfoot/examples/player_2.png','7fd4298d6821e9ad374f1af50a5bc5b5905720f8','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','player_2.png','b5add362854b8877236d46d2978029a45d69243a',1744014549,1744014548,1,2,'image/png',234589,0,0),
(16,0,1744014549,1744014549,'/fcbigfoot/examples/player_3.png','eb56d2fbbf20138520016c5d9dde701ba888f52a','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','player_3.png','92014c682acabb95b05092f324ef36b7e6de1fdd',1744014549,1744014548,1,2,'image/png',234568,0,0),
(17,0,1744014549,1744014549,'/fcbigfoot/examples/player_4.png','75053388f67075ea6b4094b34191ff0eccada3c1','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','player_4.png','6588e5b8e1e02b734de08b73c599f96572acfa31',1744014549,1744014548,1,2,'image/png',226566,0,0),
(18,0,1744014549,1744014549,'/fcbigfoot/examples/player_5.png','576a07a124b77012f9c473621406004f52d68463','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','player_5.png','75f436a8f8a8c98efb6ae937cc5680852f5f5961',1744014549,1744014548,1,2,'image/png',234567,0,0),
(19,0,1744014549,1744014549,'/fcbigfoot/examples/player_6.png','9fb1287f1184bb025f87f8ac0d8e8947b92b9ab5','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','player_6.png','6789f6b23211fcb23808011e4532a18ff60ec812',1744014549,1744014548,1,2,'image/png',230816,0,0),
(20,0,1744014549,1744014549,'/fcbigfoot/examples/player_7.png','e09aec3b38a89371febacb4cff4a36d3e2c63971','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','player_7.png','b8584f2d7418f0d18fd86aae9b3619f071fea4d0',1744014549,1744014548,1,2,'image/png',239014,0,0),
(21,0,1744014549,1744014549,'/fcbigfoot/examples/player_8.png','8d7e93d7c38c71c7fce3e54d00843d27996ce174','c37e41d28c2cbad2af3454ed577c6a1bea49a563','png','player_8.png','07ec420ee93cd12f02c3c5f1eb55c26e375fc5db',1744014549,1744014548,1,2,'image/png',232868,0,0),
(22,0,1744014645,1744014645,'/_assets/ebd36878f9f5cb16e41dc0f362597304/Images/Logos/logo.svg','c1cba6edfada4efc4a27ad8ad081cbd356209583','40396c198540d40a0037f9d59fbf87a3b9e45c9c','svg','logo.svg','b7eb8a79c8a6377acb1a9ad4d14c9548c00f03a7',1744013425,1744013425,0,2,'image/svg+xml',78070,0,0),
(23,0,1744014645,1744014645,'/_assets/ebd36878f9f5cb16e41dc0f362597304/Images/Demos/teaser_9.png','f2a35ad28b83cca62bc1d47fc5aba4c6c47d0550','3be2d93cf1bd77ee8042f7c3853cb7b0c31436ea','png','teaser_9.png','bb7eac23b24d3b3e5af890675f3e8ddddc7c29d3',1744013425,1744013425,0,2,'image/png',2262587,0,0),
(24,0,1744014645,1744014645,'/_assets/ebd36878f9f5cb16e41dc0f362597304/Images/Demos/teaser_8.png','d32f390473a0843a0eb8eed531eb7f8e00d6fb2b','3be2d93cf1bd77ee8042f7c3853cb7b0c31436ea','png','teaser_8.png','82bb090c14c2579069d3cfbb7bee3f54339469ed',1744013425,1744013425,0,2,'image/png',2171600,0,0),
(25,0,1744014645,1744014645,'/_assets/ebd36878f9f5cb16e41dc0f362597304/Images/Demos/teaser_6.png','3f00fdf3c06c48b4b1fd773afdc4d2398751b675','3be2d93cf1bd77ee8042f7c3853cb7b0c31436ea','png','teaser_6.png','42920a359b95444319617ea62d6a66adab25fbe8',1744013425,1744013425,0,2,'image/png',2364421,0,0),
(26,0,1744015113,1744015113,'/introduction/images/typo3-book-backend-login.png','01242ba34d7590b5be9dbc145a543c2b3ad62e13','e1500cfc74aa6405848b1f4f4acfe1e7fa4120a8','png','typo3-book-backend-login.png','115d94bdbab0847307a8b8979d75fb5709fee247',1744015113,1744015113,1,2,'image/png',204314,0,0),
(27,0,1744015113,1744015113,'/introduction/images/unsplash/the-creative-exchange-373981-unsplash.jpg','2ca0113a744ef1dfa38d5ca07c44ba0c6c9a536d','83abe7ede085ecc67a618a9f6fccc18d008a33cd','jpg','the-creative-exchange-373981-unsplash.jpg','e7348589256acfcfac390a9690bb3cacea86877e',1744015113,1744015113,1,2,'image/jpeg',262954,0,0),
(28,0,1744015113,1744015113,'/introduction/images/unsplash/rawpixel-1046262-unsplash.jpg','23facb1abcb6da3a7ccfc6d441c64759ac7a42ac','83abe7ede085ecc67a618a9f6fccc18d008a33cd','jpg','rawpixel-1046262-unsplash.jpg','6a14cf97b87022ff46fca42814ca87970aa87a36',1744015113,1744015113,1,2,'image/jpeg',170729,0,0),
(29,0,1744015113,1744015113,'/introduction/images/streets/kimon-maritz-193428.jpg','7d1259bd55acfba0b347d131e6c7caf4ff602e00','14f32ec0c139b87b52cd0c9950f03819395e64c2','jpg','kimon-maritz-193428.jpg','e14a7eb6a4f654b697eeca3573c32af9cfe62272',1744015113,1744015113,1,2,'image/jpeg',194512,0,0),
(30,0,1744015113,1744015113,'/introduction/images/streets/nikita-maru-70928.jpg','d1fefec4dd5c5b48f099ac0fc29b0b729fa7e6a8','14f32ec0c139b87b52cd0c9950f03819395e64c2','jpg','nikita-maru-70928.jpg','c7dbc831eff5ab47169f6fec6f095f65fb8988ad',1744015113,1744015113,1,2,'image/jpeg',171753,0,0),
(31,0,1744015113,1744015113,'/introduction/images/streets/felix-russell-saw-182331.jpg','884c65f94edd5178b3148f0741ea0b77badd6aa0','14f32ec0c139b87b52cd0c9950f03819395e64c2','jpg','felix-russell-saw-182331.jpg','3c164b3b79568b9252f072afa39e6b25c8f29028',1744015113,1744015113,1,2,'image/jpeg',168271,0,0),
(32,0,1744015113,1744015113,'/introduction/images/streets/geran-de-klerk-136351.jpg','1f92c9da38b528d3e760a333b57cff4209104250','14f32ec0c139b87b52cd0c9950f03819395e64c2','jpg','geran-de-klerk-136351.jpg','5221d34195c1969365e7435b795816be62354f68',1744015113,1744015113,1,2,'image/jpeg',252357,0,0),
(33,0,1744015113,1744015113,'/introduction/icons/content/content-special-html.svg','2de0b4bce8f0e7e7111a89986af35c44b592db55','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-special-html.svg','de73379c326b0bf29b83810d8678bd18b0e15890',1744015113,1744015112,1,2,'image/svg+xml',384,0,0),
(34,0,1744015113,1744015113,'/introduction/icons/content/content-special-shortcut.svg','7e8bd653681c617017d41b2518385580f305f74c','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-special-shortcut.svg','d4dbedee164d764cfc3f89c81b1b36b523d83a8c',1744015113,1744015113,1,2,'image/svg+xml',1015,0,0),
(35,0,1744015113,1744015113,'/introduction/icons/content/content-menu-thumbnail.svg','d424779b0c406b8b39e41d2e9ea5ad345ca7a673','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-menu-thumbnail.svg','3da3cfe6994b43afda2728d44dcc2839401934ac',1744015113,1744015113,1,2,'image/svg+xml',399,0,0),
(36,0,1744015113,1744015113,'/introduction/images/streets/richard-nolan-157476.jpg','705ec41274ca11601a85cd1a25d25e37f8ab799b','14f32ec0c139b87b52cd0c9950f03819395e64c2','jpg','richard-nolan-157476.jpg','0a88cfb665a2e3865a244076d3d57080c4e66d97',1744015113,1744015113,1,2,'image/jpeg',212120,0,0),
(37,0,1744015113,1744015113,'/introduction/images/streets/adrian-207619.jpg','76914249136f133a3b5efd56ac73cafbae76df58','14f32ec0c139b87b52cd0c9950f03819395e64c2','jpg','adrian-207619.jpg','360cd247d0903619ca381fbd91c95dc3ed13f836',1744015113,1744015112,1,2,'image/jpeg',313638,0,0),
(38,0,1744015113,1744015113,'/introduction/icons/content/content-menu-sitemap.svg','8cf20b374964c9f536a7cd1d2fa49de31653a025','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-menu-sitemap.svg','a5f1d2c8b1a2c4ab9c61b757ff83ba8eeb2da4b3',1744015113,1744015113,1,2,'image/svg+xml',593,0,0),
(39,0,1744015113,1744015113,'/introduction/icons/content/content-menu-pages.svg','b0d488e1662deaf4a416eacf58b35dd159e3a725','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-menu-pages.svg','6d938e03a0e20c470662d185bc5354e15afb1f80',1744015113,1744015113,1,2,'image/svg+xml',692,0,0),
(40,0,1744015113,1744015113,'/introduction/icons/content/content-menu-categorized.svg','eef7d04191c1393a6ac1e33a9aae64ab06543271','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-menu-categorized.svg','920ee2721b9066c62db2106e3c9c61ad7fe1024f',1744015113,1744015113,1,2,'image/svg+xml',563,0,0),
(41,0,1744015113,1744015113,'/introduction/icons/content/menu-card.svg','28ab0091f456e97e24b5b3140cc9283a3f3ad4ad','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','menu-card.svg','82d2f0ab564ba496357efe275f1a5d1e91497198',1744015113,1744015112,1,2,'image/svg+xml',795,0,0),
(42,0,1744015113,1744015113,'/introduction/icons/content/content-menu-abstract.svg','b814e30d75b64d8ad5eb44bd251185cbbbc1de85','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-menu-abstract.svg','fd1d07e742ba45a5b4828cccbeb2e1166b32b32b',1744015113,1744015112,1,2,'image/svg+xml',357,0,0),
(43,0,1744015113,1744015113,'/introduction/icons/content/content-elements-searchform.svg','ff0fb08c92365f2eb1550cf626f62689eba4aaab','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-elements-searchform.svg','94b5eec55258e3e173458e0b56f312b651b6acfe',1744015113,1744015113,1,2,'image/svg+xml',521,0,0),
(44,0,1744015113,1744015113,'/introduction/icons/content/content-elements-login.svg','c2c48bcb209d25d40b0012a42a965e479f225689','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-elements-login.svg','45898fe74025f91c4992654d1b875af23dfe0da6',1744015113,1744015113,1,2,'image/svg+xml',534,0,0),
(45,0,1744015113,1744015113,'/introduction/icons/content/content-form.svg','42fd0237fb23e5e831f19d5f2e1e1c982bfb49c5','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-form.svg','937fc67857d001f25db7798fa2a08a7a063b0a9e',1744015113,1744015113,1,2,'image/svg+xml',331,0,0),
(46,0,1744015113,1744015113,'/introduction/icons/content/timeline.svg','b69701b69b882ba985be9e73e0c8457518c4934c','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','timeline.svg','45e16b7ef692a244db7d1664008a1efa364faa24',1744015113,1744015113,1,2,'image/svg+xml',565,0,0),
(47,0,1744015113,1744015113,'/introduction/images/typo3_9_5_lts_release.jpg','f82492200eba0ce148d5b37ce3d4b0d460e1ca30','e1500cfc74aa6405848b1f4f4acfe1e7fa4120a8','jpg','typo3_9_5_lts_release.jpg','7b402c4b246b71b563932824a16d3c6a435098ba',1744015113,1744015113,1,2,'image/jpeg',139451,0,0),
(48,0,1744015113,1744015113,'/introduction/images/typo3_10_4_lts_release.jpg','483bc27abf74fbe4073a6b7744c854892d2eaed5','e1500cfc74aa6405848b1f4f4acfe1e7fa4120a8','jpg','typo3_10_4_lts_release.jpg','fe28775a3fed5a92ac0fea3488e7d237251ca6b4',1744015113,1744015113,1,2,'image/jpeg',273937,0,0),
(49,0,1744015113,1744015113,'/introduction/images/typo3_11_5_lts_release.png','ad864dd0409f3fb014a91ce7aaa253d8f51e47f7','e1500cfc74aa6405848b1f4f4acfe1e7fa4120a8','png','typo3_11_5_lts_release.png','ce479424071718eaed7c8536432b83bc71249631',1744015113,1744015113,1,2,'image/png',736723,0,0),
(50,0,1744015113,1744015113,'/introduction/icons/content/content-tab.svg','8e3ada7b9c94d59806bd0d8c9b7858abd97584e0','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-tab.svg','8235f86bcd8504b6e61baed3edd2ed9fdbc0ebba',1744015113,1744015112,1,2,'image/svg+xml',449,0,0),
(51,0,1744015113,1744015113,'/introduction/icons/content/content-carousel.svg','43c8dec9839c5b22a20f05af5f455eba062fbdc0','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-carousel.svg','be7940adfa4e74b2ffe8cdc1e150a35cb868c4e2',1744015113,1744015112,1,2,'image/svg+xml',434,0,0),
(52,0,1744015113,1744015113,'/introduction/images/map.png','f5c436e9aa2bede148f0b1a31f8082683ecc1782','e1500cfc74aa6405848b1f4f4acfe1e7fa4120a8','png','map.png','2e539aa55d2d3a209078555f0f661798fbab084a',1744015113,1744015112,1,2,'image/png',5907,0,0),
(53,0,1744015113,1744015113,'/introduction/images/background/background-grey.jpg','21e1c0e0f80f028fec76374bc46086a7699254a0','9be8657d534723bca1337bd2ce598225d0da074f','jpg','background-grey.jpg','919d13be3e463f325355d0d9608536c4b958ce20',1744015113,1744015113,1,2,'image/jpeg',20606,0,0),
(54,0,1744015113,1744015113,'/introduction/images/background/background-orange.jpg','130fa236a5031c1bdde7f5f956c6f17dbc1b4383','9be8657d534723bca1337bd2ce598225d0da074f','jpg','background-orange.jpg','bc490a475e1fa69bc20b3449d39eea09e62bd11f',1744015113,1744015113,1,2,'image/jpeg',88957,0,0),
(55,0,1744015113,1744015113,'/introduction/icons/content/accordion.svg','a20ffdfb78632c133413262ac815ac56d9e61fd9','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','accordion.svg','ce6ba85a7f45f635ac88e8f6da33f1cccece1e2b',1744015113,1744015113,1,2,'image/svg+xml',364,0,0),
(56,0,1744015113,1744015113,'/introduction/youtube/what_is_typo3_.youtube','4d4e51a78c44754a0a1c2402af321c6d1089579f','03ffccb220a709b1c51d29b2187830401913c04f','youtube','what_is_typo3_.youtube','e6a7478baf06899bc46cd8f2fc8f2be11b5dcf84',1744015113,1744015113,1,4,'video/youtube',11,0,0),
(57,0,1744015113,1744015113,'/introduction/youtube/typo3_-_still_here.youtube','cbd040300b177c61f99c5841820afe6cb800d3f7','03ffccb220a709b1c51d29b2187830401913c04f','youtube','typo3_-_still_here.youtube','6780574930783902cacfde7352df8ca83055be4e',1744015113,1744015112,1,4,'video/youtube',11,0,0),
(58,0,1744015113,1744015113,'/introduction/icons/content/externalmedia.svg','203b5ee2a8f5059111a8e71a3d966655fe22545c','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','externalmedia.svg','2e4596c4ec0e1566584c60547cb2b87d883cd3ef',1744015113,1744015112,1,2,'image/svg+xml',291,0,0),
(59,0,1744015113,1744015113,'/introduction/icons/content/content-media.svg','32d3408923aed7c8d6662d7733afc26b910351d5','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-media.svg','9d09050c7874ab4816876b8d4f54272c9829ea7f',1744015113,1744015112,1,2,'image/svg+xml',293,0,0),
(60,0,1744015113,1744015113,'/introduction/youtube/typo3_-_2020.youtube','20f7069f4b876a935e395466f1cb52a6510adc1f','03ffccb220a709b1c51d29b2187830401913c04f','youtube','typo3_-_2020.youtube','9fdf60ca8b096e3c2960be0d900c5ebbd887ff8f',1744015113,1744015112,1,4,'video/youtube',11,0,0),
(61,0,1744015113,1744015113,'/introduction/youtube/evolution_of_the_typo3_ecosystem_-_mathias_schreiber____fabian_stein.youtube','a306dcb9f801ddf8858b842233ccb10d7da23844','03ffccb220a709b1c51d29b2187830401913c04f','youtube','evolution_of_the_typo3_ecosystem_-_mathias_schreiber____fabian_stein.youtube','e20fb404d06947b0f34952577447e70f245511e4',1744015113,1744015112,1,4,'video/youtube',11,0,0),
(62,0,1744015113,1744015113,'/introduction/icons/content/content-image.svg','a9e56ffd117f0719393e6e8117fab44a0ff2ef0b','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-image.svg','4d37a298f4d80ece2aa37b161194ca56290e0474',1744015113,1744015112,1,2,'image/svg+xml',495,0,0),
(63,0,1744015113,1744015113,'/introduction/icons/content/content-special-uploads.svg','119a508b7452b9106c87f29bbf82a9ccc419f187','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-special-uploads.svg','f6957117f0a8268f510d82e686e4b675cf6d8305',1744015113,1744015112,1,2,'image/svg+xml',447,0,0),
(64,0,1744015113,1744015113,'/introduction/icons/content/content-textmedia.svg','51e013180e182e3700169d46bc070f7e7837b8a5','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-textmedia.svg','0434f43062c36418ce80e7f49408dd6a907258ac',1744015113,1744015113,1,2,'image/svg+xml',505,0,0),
(65,0,1744015113,1744015113,'/introduction/icons/content/content-textpic.svg','7fbcbbbb4f0c182495d964f67fc8ddbf79522498','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-textpic.svg','95e4fc47522af5f05da998b87b69fe6746d93f9a',1744015113,1744015113,1,2,'image/svg+xml',651,0,0),
(66,0,1744015113,1744015113,'/introduction/icons/content/gallery.svg','444554c14e824275a4efab62c65114a4e6e60346','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','gallery.svg','8f93c3bf16ea796c24fe15d817f25bd48cddfe7d',1744015113,1744015113,1,2,'image/svg+xml',722,0,0),
(67,0,1744015113,1744015113,'/introduction/icons/content/icon-group.svg','85b44456aeb11d71fa865a3953df623ec0ed2d04','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','icon-group.svg','a21d780d38d17df4e3cb3730d4a120a8b3fc47c9',1744015113,1744015113,1,2,'image/svg+xml',757,0,0),
(68,0,1744015113,1744015113,'/introduction/icons/ionicons/_ionicons_svg_ios-airplane.svg','bf5e52f47a2ccb6a989699143bf36daadda935b4','c76d4f81f24cf86f848b975587e0430e0ee43ca8','svg','_ionicons_svg_ios-airplane.svg','0771c1787fd98d16f52963b50f0048178c80585b',1744015113,1744015113,1,2,'image/svg+xml',719,0,0),
(69,0,1744015113,1744015113,'/introduction/icons/ionicons/_ionicons_svg_ios-bug.svg','0e3c214d3cbd574594d537a70a37d8902fc3cc29','c76d4f81f24cf86f848b975587e0430e0ee43ca8','svg','_ionicons_svg_ios-bug.svg','fe8fc30495b0da3cfc049662ed55f27245b25464',1744015113,1744015113,1,2,'image/svg+xml',1816,0,0),
(70,0,1744015113,1744015113,'/introduction/icons/ionicons/_ionicons_svg_ios-rocket.svg','2cf22435c13d3bac9148ca6ad7b4658c48cbfa15','c76d4f81f24cf86f848b975587e0430e0ee43ca8','svg','_ionicons_svg_ios-rocket.svg','95084d0ba82feea28cf538afdca6cd24404c4b80',1744015113,1744015113,1,2,'image/svg+xml',976,0,0),
(71,0,1744015113,1744015113,'/introduction/icons/ionicons/_ionicons_svg_ios-water.svg','a1cc78cca2d29f9e34582a332b799fd2b5119960','c76d4f81f24cf86f848b975587e0430e0ee43ca8','svg','_ionicons_svg_ios-water.svg','da43d8d1c7c57ae94ed1072ca31160095c4b3c5e',1744015113,1744015113,1,2,'image/svg+xml',558,0,0),
(72,0,1744015113,1744015113,'/introduction/icons/content/card-group.svg','a4c64cd79a9d1aa3664978370583664fd2c00372','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','card-group.svg','20b01df90bf873c09107d4e0bec7f10c431882e4',1744015113,1744015113,1,2,'image/svg+xml',969,0,0),
(73,0,1744015113,1744015113,'/introduction/icons/content/content-audio.svg','4c722407c5f08b075f491121a50cc5e0e943094c','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-audio.svg','d19f5c745cb98df21d9784cf6a73299fedfc9b97',1744015113,1744015113,1,2,'image/svg+xml',737,0,0),
(74,0,1744015113,1744015113,'/introduction/audio/typo3-still-here.mp3','370c5aa106aace8168635e2aa47843194d30d41b','f2901e6dfad915c3b9e48628d3704327dacaf307','mp3','typo3-still-here.mp3','e4ddad1554cfe0d65a744c91b661200084eac2e3',1744015113,1744015113,1,3,'audio/mpeg',1125302,0,0),
(75,0,1744015113,1744015113,'/introduction/audio/what-is-typo3.mp3','2ae0fb43a2f6fee485656d8bcf8ca47b5806a998','f2901e6dfad915c3b9e48628d3704327dacaf307','mp3','what-is-typo3.mp3','a182c632701f000d3528a27813814a2767803fc4',1744015113,1744015113,1,3,'audio/mpeg',3460839,0,0),
(76,0,1744015113,1744015113,'/introduction/icons/content/content-quote.svg','97fb3122e59a23a898358ed40470f5f3016dd90e','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-quote.svg','9f5ed1963054dfd728196777c5e7a64164971a20',1744015113,1744015113,1,2,'image/svg+xml',381,0,0),
(77,0,1744015113,1744015113,'/introduction/icons/content/content-table.svg','fb7ae44f9163d8e349e979be9c1cbfba2e667202','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-table.svg','71cdbe6c8e542d646c7af282a2b5915645942174',1744015113,1744015113,1,2,'image/svg+xml',477,0,0),
(78,0,1744015113,1744015113,'/introduction/icons/content/content-panel.svg','18bc35df76e56aa3b8c8d5c0e4280601806e8aa5','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-panel.svg','8ab3ccadad55eded1e07038e56aa1cd6f6e857e6',1744015113,1744015113,1,2,'image/svg+xml',281,0,0),
(79,0,1744015113,1744015113,'/introduction/icons/content/listgroup.svg','29cbeca63877ff117cfa57cc7b4e0af002062860','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','listgroup.svg','0b21b119be185e4feb8eaa7c48afa5664e632b42',1744015113,1744015113,1,2,'image/svg+xml',502,0,0),
(80,0,1744015113,1744015113,'/introduction/icons/content/content-text-columns.svg','3ec7abd06eca4443c8cf2dcbfeb25fae5e6f0cc6','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-text-columns.svg','6629480b1aa26d7979f1cf7eadd75f3d14eb9eb3',1744015113,1744015112,1,2,'image/svg+xml',431,0,0),
(81,0,1744015113,1744015113,'/introduction/icons/content/texticon.svg','8efd34d9db08b055b8fa0c3a0a2873401a0f302b','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','texticon.svg','9b7b0a9a0cac5b37a6d8d2cbf6337025d92c6389',1744015113,1744015113,1,2,'image/svg+xml',513,0,0),
(82,0,1744015113,1744015113,'/introduction/icons/content/content-text-teaser.svg','a1f6eff2df94b24188910505e7a6aa80588d9699','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-text-teaser.svg','7fe5e092b97bb91a8aa4e376d920d80e16f3022c',1744015113,1744015113,1,2,'image/svg+xml',400,0,0),
(83,0,1744015113,1744015113,'/introduction/icons/content/content-bullets.svg','b045a4c1c2f3ea92896bbfc7207373d2e5c167d8','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-bullets.svg','917bfe7a96f3df9c9c44f6f771c5eeef7d41671d',1744015113,1744015113,1,2,'image/svg+xml',445,0,0),
(84,0,1744015113,1744015113,'/introduction/icons/content/content-header.svg','763ddea19e7285bda528dd3bee146c7236c1f552','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-header.svg','e6a7d02a3ece113781c4a00635ed38cc7536f455',1744015113,1744015113,1,2,'image/svg+xml',265,0,0),
(85,0,1744015113,1744015113,'/introduction/icons/content/content-text.svg','c6104b6f47e332b37591c868f79e22829aa7c36f','890034ce7e40fcf4ef9e3c299235335d8482e521','svg','content-text.svg','7552ac8f9db1ea8f5143091631d1d7dce2d73d1c',1744015113,1744015113,1,2,'image/svg+xml',359,0,0),
(86,0,1744015113,1744015113,'/introduction/images/unsplash/annie-spratt-439326-unsplash.jpg','8e54d6213b2fcc58d675d6fe0052e4554bf66fe2','83abe7ede085ecc67a618a9f6fccc18d008a33cd','jpg','annie-spratt-439326-unsplash.jpg','d57d23c1ed8a8260fd6198ec4ecc1b985e214508',1744015113,1744015113,1,2,'image/jpeg',337559,0,0),
(87,0,1744015113,1744015113,'/introduction/images/backendlayouts/special_start.svg','ca307d9850911348f10408b77c94f5708efc7b10','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','special_start.svg','60bac3860bb110610130e5aa30cc43e889c9897e',1744015113,1744015113,1,2,'image/svg+xml',333,0,0),
(88,0,1744015113,1744015113,'/introduction/images/backendlayouts/special_feature.svg','a9a5f0f4b37648df6426fd31ec6c20e202fbcd9b','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','special_feature.svg','79a67237011c9364f9cde70d5eed1c507402e377',1744015113,1744015113,1,2,'image/svg+xml',412,0,0),
(89,0,1744015113,1744015113,'/introduction/images/backendlayouts/subnavigation_right_2_columns.svg','67522a08d6e42fe2973ec52a7210c843f5027139','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','subnavigation_right_2_columns.svg','a5a7a39c19b8ea66f0d3d6bedeb67ffff713a0da',1744015113,1744015113,1,2,'image/svg+xml',367,0,0),
(90,0,1744015113,1744015113,'/introduction/images/backendlayouts/subnavigation_right.svg','921ce30623bcbe998e721204c628c0fa3c7d2be2','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','subnavigation_right.svg','b8400b6ff69cb84ee5e058578fa10b89570eaf49',1744015113,1744015113,1,2,'image/svg+xml',351,0,0),
(91,0,1744015113,1744015113,'/introduction/images/backendlayouts/subnavigation_left_2_columns.svg','085b611da4a4b49c5fc3906a3e515f3798c4a63c','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','subnavigation_left_2_columns.svg','92a0b55512c00be78ad2e3f3f5676d04f8f6a9a0',1744015113,1744015113,1,2,'image/svg+xml',367,0,0),
(92,0,1744015113,1744015113,'/introduction/images/backendlayouts/subnavigation_left.svg','f6194a1bb3ba08cbeecd42c762c8d71a9d35895a','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','subnavigation_left.svg','ecb0a653e9d3e9e048c2d4d56a8706e014b11443',1744015113,1744015112,1,2,'image/svg+xml',351,0,0),
(93,0,1744015113,1744015113,'/introduction/images/backendlayouts/simple.svg','e729a20ad3ca1b172c4db7a3b234431ba2aa2d8a','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','simple.svg','4bf696bd0033e12a6f52223dd1992e92fe67cf2d',1744015113,1744015112,1,2,'image/svg+xml',244,0,0),
(94,0,1744015113,1744015114,'/introduction/images/backendlayouts/3_columns.svg','65298aaca41b1321ae94561be995aff046acd6d0','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','3_columns.svg','1c4316a5556e4d15553ee12e6534b8ebf7e75e43',1744015113,1744015113,1,2,'image/svg+xml',320,0,0),
(95,0,1744015114,1744015114,'/introduction/images/backendlayouts/2_columns_offset_right.svg','e2669429487a98ad88a12a9d74d6188a3697b761','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','2_columns_offset_right.svg','673ef06f63666060a4e40fb20329a6df9f61b6d3',1744015113,1744015113,1,2,'image/svg+xml',400,0,0),
(96,0,1744015114,1744015114,'/introduction/images/backendlayouts/2_columns_50_50.svg','18a4662316dccf71ff03b37b6c2fcfa9921bb982','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','2_columns_50_50.svg','0d452b540608b09b4d0581030487ac63386eabf6',1744015114,1744015113,1,2,'image/svg+xml',304,0,0),
(97,0,1744015114,1744015114,'/introduction/images/backendlayouts/2_columns_25_75.svg','e9a33d7abb43dee004b21d5416e37e6454b14e1e','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','2_columns_25_75.svg','7a2d5b14115c42517183c55cb5b48933f31e1f7a',1744015114,1744015113,1,2,'image/svg+xml',304,0,0),
(98,0,1744015114,1744015114,'/introduction/images/backendlayouts/2_columns.svg','207cb4c05b073e4f5c3e81b859d17ae0108a5f4c','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','2_columns.svg','1e3d4a84dd6d2c40ac37e5dfe6e93b0bc5e5090d',1744015114,1744015113,1,2,'image/svg+xml',304,0,0),
(99,0,1744015114,1744015114,'/introduction/images/backendlayouts/default.svg','62541a27dd0a6fd4eb12afa669d0d255fd98d623','0e6643ad7bc81d6af9639bdf9171180cf6347f29','svg','default.svg','ba0a2166e9fa3039679d33c1073c69ee048bcb68',1744015114,1744015113,1,2,'image/svg+xml',288,0,0),
(100,0,1744015114,1744015114,'/introduction/images/customizing/extensionmanager.png','3898acdd87d41000e15a19361d5c8f5f2dff4389','52f9b8d5266c43bff49d059ffe512444b1eb3a22','png','extensionmanager.png','3a0585ce68eae7af03dc6266160f03e105e7e18e',1744015114,1744015113,1,2,'image/png',111696,0,0),
(101,0,1744015114,1744015114,'/introduction/images/customizing/editor-shows-typo3-fluid.png','43435af592b31594a5cff980d65dc21d143c2fde','52f9b8d5266c43bff49d059ffe512444b1eb3a22','png','editor-shows-typo3-fluid.png','d9923ccfa270ff8741705b57a1bae549692bf497',1744015114,1744015112,1,2,'image/png',67857,0,0),
(102,0,1744015114,1744015114,'/introduction/images/unsplash/annie-spratt-604129-unsplash.jpg','bb82b60367f008bb10c0a44917a934c79c1d7cda','83abe7ede085ecc67a618a9f6fccc18d008a33cd','jpg','annie-spratt-604129-unsplash.jpg','3a5fd5a126f729143e2d270926a5045dfeb2d87f',1744015114,1744015113,1,2,'image/jpeg',197675,0,0),
(103,0,1744015114,1744015114,'/introduction/images/typo3-composing-backend-all.png','9f3b96e0d5278c98b411b4a84e68748fbb36a7d7','e1500cfc74aa6405848b1f4f4acfe1e7fa4120a8','png','typo3-composing-backend-all.png','a5dcb2da242e1af22089268d9cad5a8d9a9e5335',1744015114,1744015112,1,2,'image/png',238353,0,0),
(104,0,1744015114,1744015114,'/introduction/images/typo3-composing-backend-overview.png','5b0fa2bcabe80ed63aff49582fa98efcded459c8','e1500cfc74aa6405848b1f4f4acfe1e7fa4120a8','png','typo3-composing-backend-overview.png','806835cf309d0d57d148dc5cd70ca166d04524ae',1744015114,1744015113,1,2,'image/png',240456,0,0),
(105,0,1744015114,1744015114,'/introduction/images/unsplash/chuttersnap-255216-unsplash.jpg','ea5a68d4d297c5f1f0caacef22d6d4f19283797f','83abe7ede085ecc67a618a9f6fccc18d008a33cd','jpg','chuttersnap-255216-unsplash.jpg','943b72c7e1ff6ff4583656601ac50d9a2e7a2abb',1744015114,1744015113,1,2,'image/jpeg',273521,0,0),
(106,0,1744016541,1744016541,'/introduction/images/introduction-package.svg','c2d59f27f6f3372086b655c81d0c00735108e33a','e1500cfc74aa6405848b1f4f4acfe1e7fa4120a8','svg','introduction-package.svg','1edc880a62dcfef358e09c8bfc5d32e106abe31d',1744015112,1744015112,1,2,'image/svg+xml',5544,0,0),
(107,0,1744016541,1744016541,'/introduction/images/introduction-package-inverted.svg','103584ae24d4716870624b13438faef4b067e219','e1500cfc74aa6405848b1f4f4acfe1e7fa4120a8','svg','introduction-package-inverted.svg','0111238ac7145bfe98a3e42968f07ce734b97f85',1744015112,1744015112,1,2,'image/svg+xml',5544,0,0),
(108,0,1744016541,1744016541,'/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/Icons/Ionicons/android-mixer.svg','06ef9c478ab6c8a9e857d8b4fde3ebcbf2389948','60eef950a51e4a266465f52970d95cf51783ea24','svg','android-mixer.svg','859ac720543e1f253688628e0897ea141a937ff4',1744013453,1744013453,0,2,'image/svg+xml',618,0,0),
(109,0,1744016541,1744016541,'/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/Icons/Ionicons/android-book.svg','f2452bf6161921de8622587a0bda223c05818779','60eef950a51e4a266465f52970d95cf51783ea24','svg','android-book.svg','b5d68d5cb5fd7e4a4607dde4974eb5f675cd0300',1744013453,1744013453,0,2,'image/svg+xml',312,0,0),
(110,0,1744016541,1744016541,'/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/Icons/Ionicons/beaker.svg','a8799dbe5cab1dc0da8749ae23b3cf8c383426c9','60eef950a51e4a266465f52970d95cf51783ea24','svg','beaker.svg','a6cd5970c2ae42c6abc236a92c8c0410e1805a26',1744013453,1744013453,0,2,'image/svg+xml',1598,0,0),
(111,0,1744016599,1744016599,'/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/BootstrapPackage.svg','760d1af8a806b3df149ba4826a7f15c966215a7c','5e8c86041e2022a51f63bbaf56b3ae90109db902','svg','BootstrapPackage.svg','a6fb0cc7b50579d6255f16171147695a55b93c27',1744013453,1744013453,0,2,'image/svg+xml',3843,0,0),
(112,0,1744016599,1744016599,'/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/BootstrapPackageInverted.svg','f4a6353e4d97d78f98f9d3ab740020169d2f33db','5e8c86041e2022a51f63bbaf56b3ae90109db902','svg','BootstrapPackageInverted.svg','493f5cd69ede03cf7d436e92481422145674b907',1744013453,1744013453,0,2,'image/svg+xml',3784,0,0);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_identifier` longtext DEFAULT NULL,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
INSERT INTO `sys_file_collection` VALUES
(1,17,1747689602,1744015096,1,0,0,0,NULL,0,0,NULL,'{\"files\":\"\"}',0,0,0,0,'Example File Collection','static',3,'',0,0);
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `status` varchar(24) DEFAULT '',
  `latitude` decimal(24,14) DEFAULT 0.00000000000000,
  `longitude` decimal(24,14) DEFAULT 0.00000000000000,
  `pages` int(10) unsigned DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `file` int(10) unsigned NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `visible` smallint(5) unsigned NOT NULL DEFAULT 1,
  `keywords` longtext DEFAULT NULL,
  `caption` longtext DEFAULT NULL,
  `creator_tool` varchar(255) NOT NULL DEFAULT '',
  `download_name` varchar(255) NOT NULL DEFAULT '',
  `creator` varchar(255) NOT NULL DEFAULT '',
  `publisher` varchar(120) NOT NULL DEFAULT '',
  `source` varchar(255) NOT NULL DEFAULT '',
  `copyright` longtext DEFAULT NULL,
  `location_country` varchar(45) NOT NULL DEFAULT '',
  `location_region` varchar(45) NOT NULL DEFAULT '',
  `location_city` varchar(45) NOT NULL DEFAULT '',
  `ranking` int(10) unsigned NOT NULL DEFAULT 0,
  `content_creation_date` bigint(20) NOT NULL DEFAULT 0,
  `content_modification_date` bigint(20) NOT NULL DEFAULT 0,
  `note` longtext DEFAULT NULL,
  `unit` varchar(3) NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT 0,
  `color_space` varchar(4) NOT NULL DEFAULT '',
  `language` varchar(45) NOT NULL DEFAULT '',
  `fe_groups` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES
(1,0,1744014582,1743772283,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,1,NULL,1600,1200,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(2,0,1744014582,1743772283,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,2,NULL,1600,1200,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(3,0,1744014582,1743772283,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,3,NULL,1600,1200,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(4,0,1744014582,1743772513,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,4,NULL,1600,1200,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(5,0,1744014582,1743772748,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,5,NULL,1600,1200,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(6,0,1744014582,1743773431,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,6,NULL,1600,1200,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(7,0,1744014582,1744007043,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,7,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(8,0,1744014582,1744007043,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,8,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(9,0,1744014582,1744007043,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,9,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(10,0,1744014582,1744007043,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,10,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(11,0,1744014582,1744007043,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,11,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(12,0,1744014582,1744007043,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,12,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(13,0,1744014582,1743667841,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,13,NULL,0,0,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(14,0,1744014582,1743677326,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,14,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(15,0,1744014582,1743677326,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,15,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(16,0,1744014582,1743677326,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,16,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(17,0,1744014582,1743677326,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,17,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(18,0,1744014582,1743677326,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,18,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(19,0,1744014582,1743677326,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,19,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(20,0,1744014582,1743774390,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,20,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(21,0,1744014582,1743774390,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,21,NULL,400,400,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(22,0,1744014645,1744014645,0,0,NULL,'',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,22,NULL,500,500,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(23,0,1744014645,1744014645,0,0,NULL,'',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,23,NULL,1600,1200,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(24,0,1744014645,1744014645,0,0,NULL,'',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,24,NULL,1600,1200,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(25,0,1744014645,1744014645,0,0,NULL,'',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,25,NULL,1600,1200,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(26,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,26,NULL,1140,673,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(27,0,1744015096,1538083471,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'Oxford Exchange',NULL,'1',0.00000000000000,0.00000000000000,0,0,27,'Photo by The Creative Exchange on Unsplash',1200,900,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(28,0,1744015096,1538429951,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'1',0.00000000000000,0.00000000000000,0,0,28,'Photo by rawpixel on Unsplash',1200,841,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(29,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'Bird eye’s view!, by Kimon Maritz',NULL,'',0.00000000000000,0.00000000000000,0,0,29,'https://unsplash.com/photos/1-ISIwuBMiw',1200,698,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(30,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'Photo by Nikita Maru',NULL,'',0.00000000000000,0.00000000000000,0,0,30,'https://unsplash.com/search/street-above?photo=2fZQFQ4FOPU',1200,675,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(31,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'Cheers For The Years, by Felix Russell-Saw',NULL,'',0.00000000000000,0.00000000000000,0,0,31,'https://unsplash.com/photos/XyoW1MhPqbs',1200,800,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(32,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'Photo by Geran de Klerk',NULL,'',0.00000000000000,0.00000000000000,0,0,32,'https://unsplash.com/photos/WJkc3xZjSXw',1200,900,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(33,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,33,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(34,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,34,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(35,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,35,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(36,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'Big Sur Road Trip, by Richard Nolan',NULL,'',0.00000000000000,0.00000000000000,0,0,36,'https://unsplash.com/photos/jQ_RRJgun3s',1200,899,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(37,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'From above, by adrian',NULL,'',0.00000000000000,0.00000000000000,0,0,37,'https://unsplash.com/photos/VKgBktwrtX0',1200,1800,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(38,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,38,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(39,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,39,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(40,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,40,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(41,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,41,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(42,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,42,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(43,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,43,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(44,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,44,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(45,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,45,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(46,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'1',0.00000000000000,0.00000000000000,0,0,46,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(47,0,1744015096,1538436154,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,47,NULL,1200,564,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(48,0,1744015096,1632408135,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,48,NULL,1500,500,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(49,0,1744015096,1633423565,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,49,NULL,3126,1042,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(50,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,50,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(51,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,51,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(52,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,52,NULL,920,480,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(53,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,53,NULL,2048,1152,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(54,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,54,NULL,2048,1152,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(55,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,55,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(56,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'What is TYPO3?',NULL,'',0.00000000000000,0.00000000000000,0,0,56,'A short video explaining what TYPO3 is and why it is the right choice for you.',200,113,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(57,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'Still here',NULL,'',0.00000000000000,0.00000000000000,0,0,57,'The internet is the meanest place ever. Everybody knows that. So being \"still here\" in online business after 18 years is by no means a matter of course. That is all the more true, if the project in question is open source, rather than a profit-oriented business. So let\'s celebrate, because TYPO3 is \"still here\" and more successful than ever before.',200,113,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(58,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,58,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(59,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,59,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(60,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'TYPO3 - 2020',NULL,'',0.00000000000000,0.00000000000000,0,0,60,'Mathias Schreiber \nBenni Mack',200,113,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(61,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'EVOLUTION OF THE TYPO3 ECOSYSTEM - Mathias Schreiber  / Fabian Stein',NULL,'',0.00000000000000,0.00000000000000,0,0,61,'Mathias Schreiber and Fabian Stein will show how both Product Development, Services and Marketing go together in the TYPO3 ecosystem.',200,113,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(62,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,62,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(63,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,63,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(64,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,64,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(65,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,65,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(66,0,1744015096,1633076108,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,66,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(67,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,67,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(68,0,1744015096,1538435764,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,68,NULL,512,512,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(69,0,1744015096,1538435765,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,69,NULL,512,512,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(70,0,1744015096,1538435764,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,70,NULL,512,512,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(71,0,1744015096,1538435764,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,71,NULL,512,512,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(72,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,72,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(73,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,73,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(74,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'Still here',NULL,'',0.00000000000000,0.00000000000000,0,0,74,'The internet is the meanest place ever. Everybody knows that. So being \"still here\" in online business after 18 years is by no means a matter of course. That is all the more true, if the project in question is open source, rather than a profit-oriented business. So let\'s celebrate, because TYPO3 is \"still here\" and more successful than ever before.',0,0,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(75,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,'What is TYPO3?',NULL,'',0.00000000000000,0.00000000000000,0,0,75,'A short video explaining what TYPO3 is and why it is the right choice for you.',0,0,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(76,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,76,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(77,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,77,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(78,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,78,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(79,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,79,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(80,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,80,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(81,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,81,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(82,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,82,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(83,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,83,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(84,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,84,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(85,0,1744015096,1538428564,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,85,NULL,16,16,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(86,0,1744015096,1538428294,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'1',0.00000000000000,0.00000000000000,0,0,86,'Photo by Annie Spratt on Unsplash',1200,799,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(87,0,1744015096,1538148691,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,87,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(88,0,1744015096,1538148691,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,88,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(89,0,1744015096,1538148691,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,89,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(90,0,1744015096,1538148692,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,90,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(91,0,1744015096,1538148691,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,91,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(92,0,1744015096,1538148692,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,92,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(93,0,1744015096,1538148691,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,93,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(94,0,1744015096,1538148691,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,94,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(95,0,1744015096,1538148691,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,95,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(96,0,1744015096,1538148691,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,96,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(97,0,1744015096,1538148691,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,97,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(98,0,1744015096,1538148691,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,98,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(99,0,1744015096,1538148691,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,99,NULL,86,128,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(100,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,100,NULL,720,410,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(101,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,101,NULL,300,225,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(102,0,1744015096,1538428456,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'1',0.00000000000000,0.00000000000000,0,0,102,'Photo by Annie Spratt on Unsplash',1200,1799,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(103,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,103,NULL,1140,450,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(104,0,1744015096,1537307839,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,104,NULL,1140,496,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(105,0,1744015096,1538155908,0,0,NULL,'{\"file\":\"\"}',0,0,0,0,NULL,NULL,'1',0.00000000000000,0.00000000000000,0,0,105,'Photo by chuttersnap on Unsplash',1200,800,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(106,0,1744016540,1744016540,0,0,NULL,'',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,106,NULL,244,68,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(107,0,1744016540,1744016540,0,0,NULL,'',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,107,NULL,244,68,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(108,0,1744016540,1744016540,0,0,NULL,'',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,108,NULL,32,32,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(109,0,1744016540,1744016540,0,0,NULL,'',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,109,NULL,32,32,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(110,0,1744016540,1744016540,0,0,NULL,'',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,110,NULL,32,32,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(111,0,1744016598,1744016598,0,0,NULL,'',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,111,NULL,244,68,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL),
(112,0,1744016598,1744016598,0,0,NULL,'',0,0,0,0,NULL,NULL,'',0.00000000000000,0.00000000000000,0,0,112,NULL,244,68,1,NULL,NULL,'','','','','',NULL,'','','',0,0,0,NULL,'',0,'','',NULL);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `processing_url` text DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES
(79,1747509896,1747509896,0,22,'',NULL,'','a:7:{s:5:\"width\";i:68;s:6:\"height\";i:68;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','b65ef2f799feec0068e92c4ba113888f1514f526','b7eb8a79c8a6377acb1a9ad4d14c9548c00f03a7','Image.CropScaleMask','e661c48ce2',68,68),
(80,1747509896,1747509896,1,6,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','92587c1566cc16cf901fcd6941303ec7fd6358a6','Image.CropScaleMask','f4c925614e',0,0),
(81,1747509896,1747509896,0,23,'',NULL,'','a:7:{s:5:\"width\";i:415;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','51d928f5dfa5b0adf81444b0e542182886160add','bb7eac23b24d3b3e5af890675f3e8ddddc7c29d3','Image.CropScaleMask','708ef41242',0,0),
(82,1747509896,1747509896,0,24,'',NULL,'','a:7:{s:5:\"width\";i:415;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','51d928f5dfa5b0adf81444b0e542182886160add','82bb090c14c2579069d3cfbb7bee3f54339469ed','Image.CropScaleMask','e6c22e79e3',0,0),
(83,1747509896,1747509896,0,25,'',NULL,'','a:7:{s:5:\"width\";i:415;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','51d928f5dfa5b0adf81444b0e542182886160add','42920a359b95444319617ea62d6a66adab25fbe8','Image.CropScaleMask','f4b25669f7',0,0),
(84,1747509896,1747509896,1,5,'',NULL,'','a:3:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"crop\";N;}','641f3c338443483006142fb7a37494dad3b23694','cb4894b8221cf358764668361eb3108200959a93','Image.CropScaleMask','4b93cadf3f',0,0),
(85,1747509896,1747509896,1,1,'',NULL,'','a:7:{s:5:\"width\";i:800;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','05a4adce918047e9ad8b28a702b6c11f88059a88','c556ca54fddb4db3f620edc2d1355b276bcc96ca','Image.CropScaleMask','480139219a',0,0),
(86,1747509896,1747509896,1,2,'',NULL,'','a:7:{s:5:\"width\";i:800;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','05a4adce918047e9ad8b28a702b6c11f88059a88','34c9d65bc2084db06780ac9575478b9b5045e91d','Image.CropScaleMask','7c6219797f',0,0),
(87,1747509896,1747509896,1,3,'',NULL,'','a:7:{s:5:\"width\";i:800;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','05a4adce918047e9ad8b28a702b6c11f88059a88','5377f88f3c37f0a1e84e3c9bdcf1c89b59e3426a','Image.CropScaleMask','b57de0a914',0,0),
(88,1747509896,1747509896,1,4,'',NULL,'','a:7:{s:5:\"width\";i:800;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','05a4adce918047e9ad8b28a702b6c11f88059a88','d7e29c2773671d4498b6c95dfbe8fe2837ab2fd1','Image.CropScaleMask','05012ee4a3',0,0),
(89,1747509896,1747509896,1,7,'',NULL,'','a:7:{s:5:\"width\";i:150;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','bee7741c28b70d2644bd663bae66c09fdc158442','0b0cdd57857df7357f8eaf40818c2833c500f875','Image.CropScaleMask','2f7ed31b7c',150,150),
(90,1747509896,1747509896,1,8,'',NULL,'','a:7:{s:5:\"width\";i:150;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','bee7741c28b70d2644bd663bae66c09fdc158442','e63b83fd2db72a803e972174ef093446222dfd87','Image.CropScaleMask','2ea25e52f0',150,150),
(91,1747509896,1747509896,1,9,'',NULL,'','a:7:{s:5:\"width\";i:150;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','bee7741c28b70d2644bd663bae66c09fdc158442','5815d0d5d16331c1c97d1fdcb549453bf6f478f9','Image.CropScaleMask','111b64272f',150,150),
(92,1747509896,1747509896,1,10,'',NULL,'','a:7:{s:5:\"width\";i:150;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','bee7741c28b70d2644bd663bae66c09fdc158442','11a1384708e527624c65d548ebf4d51602ed0620','Image.CropScaleMask','85cb11c992',150,150),
(93,1747509896,1747509896,1,11,'',NULL,'','a:7:{s:5:\"width\";i:150;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','bee7741c28b70d2644bd663bae66c09fdc158442','d6ba6ce38069ac51fc621921d10fab2928786190','Image.CropScaleMask','115486deae',150,150),
(94,1747509896,1747509896,1,12,'',NULL,'','a:7:{s:5:\"width\";i:150;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','bee7741c28b70d2644bd663bae66c09fdc158442','fc33810d2e8f39418cabb598a7bb53bb3a915183','Image.CropScaleMask','e4ea57628a',150,150),
(95,1747509896,1747509896,0,22,'',NULL,'','a:7:{s:5:\"width\";i:300;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f36cf294907344fb50e07b2b64c0e626c2cc70cf','b7eb8a79c8a6377acb1a9ad4d14c9548c00f03a7','Image.CropScaleMask','9525db7c35',300,300),
(96,1747511466,1747511466,1,14,'',NULL,'','a:7:{s:5:\"width\";i:300;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','7994ca0b04dc8390c1467d8547a237aacca9fd86','a09c84d2960e4c2d8294e62648ce4afb8a6b3c88','Image.CropScaleMask','afeb9bcc34',0,0),
(97,1747511466,1747511466,1,15,'',NULL,'','a:7:{s:5:\"width\";i:300;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','7994ca0b04dc8390c1467d8547a237aacca9fd86','b5add362854b8877236d46d2978029a45d69243a','Image.CropScaleMask','a49c443bbe',0,0),
(98,1747511466,1747511466,1,16,'',NULL,'','a:7:{s:5:\"width\";i:300;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','7994ca0b04dc8390c1467d8547a237aacca9fd86','92014c682acabb95b05092f324ef36b7e6de1fdd','Image.CropScaleMask','da49cb740f',0,0),
(99,1747511466,1747511466,1,17,'',NULL,'','a:7:{s:5:\"width\";i:300;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','7994ca0b04dc8390c1467d8547a237aacca9fd86','6588e5b8e1e02b734de08b73c599f96572acfa31','Image.CropScaleMask','0ea2cac85d',0,0),
(100,1747511466,1747511466,1,18,'',NULL,'','a:7:{s:5:\"width\";i:300;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','7994ca0b04dc8390c1467d8547a237aacca9fd86','75f436a8f8a8c98efb6ae937cc5680852f5f5961','Image.CropScaleMask','4ac8f7e917',0,0),
(101,1747511466,1747511466,1,19,'',NULL,'','a:7:{s:5:\"width\";i:300;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','7994ca0b04dc8390c1467d8547a237aacca9fd86','6789f6b23211fcb23808011e4532a18ff60ec812','Image.CropScaleMask','a6c649def7',0,0),
(102,1747511466,1747511466,1,20,'',NULL,'','a:7:{s:5:\"width\";i:300;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','7994ca0b04dc8390c1467d8547a237aacca9fd86','b8584f2d7418f0d18fd86aae9b3619f071fea4d0','Image.CropScaleMask','797ee43902',0,0),
(103,1747511466,1747511466,1,21,'',NULL,'','a:7:{s:5:\"width\";i:300;s:6:\"height\";s:4:\"auto\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','7994ca0b04dc8390c1467d8547a237aacca9fd86','07ec420ee93cd12f02c3c5f1eb55c26e375fc5db','Image.CropScaleMask','4324f9d788',0,0),
(104,1747517922,1747513773,1,103,'/_processed_/d/8/csm_typo3-composing-backend-all_2cf5627c8e.png','csm_typo3-composing-backend-all_2cf5627c8e.png','','a:2:{s:8:\"maxWidth\";i:64;s:9:\"maxHeight\";i:64;}','adce1dbae2e4683670473874bda4b4e3a0297998','a5dcb2da242e1af22089268d9cad5a8d9a9e5335','Image.CropScaleMask','2cf5627c8e',64,25),
(105,1747517922,1747513773,1,104,'/_processed_/f/c/csm_typo3-composing-backend-overview_670ad64f1d.png','csm_typo3-composing-backend-overview_670ad64f1d.png','','a:2:{s:8:\"maxWidth\";i:64;s:9:\"maxHeight\";i:64;}','adce1dbae2e4683670473874bda4b4e3a0297998','806835cf309d0d57d148dc5cd70ca166d04524ae','Image.CropScaleMask','670ad64f1d',64,28),
(106,1747515712,1747515712,0,111,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','a6fb0cc7b50579d6255f16171147695a55b93c27','Image.CropScaleMask','261c013c3d',244,68),
(107,1747515712,1747515712,0,112,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','493f5cd69ede03cf7d436e92481422145674b907','Image.CropScaleMask','01e1a3e172',244,68),
(108,1747515712,1747515712,1,105,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1920;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','d7dc90283c33ac9dc05c8b692f36c876f70b06ba','943b72c7e1ff6ff4583656601ac50d9a2e7a2abb','Image.CropScaleMask','3bc3ba17ca',0,0),
(109,1747515712,1747515712,1,105,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1650;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','6e09c840783dba73ff8c3e0ed7bdbdea4d16a287','943b72c7e1ff6ff4583656601ac50d9a2e7a2abb','Image.CropScaleMask','6a4f8a284e',0,0),
(110,1747515712,1747515712,1,105,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1380;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','0843592157612098070cdd9547747c8224d79a43','943b72c7e1ff6ff4583656601ac50d9a2e7a2abb','Image.CropScaleMask','9060da6ae6',0,0),
(111,1747515712,1747515712,1,105,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1020;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','beb33334b0e57b496a959f278bf15c5fa36dc8e5','943b72c7e1ff6ff4583656601ac50d9a2e7a2abb','Image.CropScaleMask','819b9b2cb9',0,0),
(112,1747515712,1747515712,1,105,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:500;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','81c13e849ae84d032c9f0e3805b43b5c2b54d6ef','943b72c7e1ff6ff4583656601ac50d9a2e7a2abb','Image.CropScaleMask','23c00ed28c',0,0),
(113,1747515712,1747515712,1,105,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:374;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','fe99132c8b06a533c81165edcdfea60272e46f99','943b72c7e1ff6ff4583656601ac50d9a2e7a2abb','Image.CropScaleMask','016217ba60',0,0),
(114,1747515712,1747515712,1,103,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1280;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','50fbdb0a1f728492fbac899aee2989b520ffbb71','a5dcb2da242e1af22089268d9cad5a8d9a9e5335','Image.CropScaleMask','1072f9bf6e',0,0),
(115,1747515712,1747515712,1,103,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1100;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','013cecd923f59a410611402187055a763c68a59b','a5dcb2da242e1af22089268d9cad5a8d9a9e5335','Image.CropScaleMask','69c169cf45',0,0),
(116,1747515712,1747515712,1,103,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:920;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','d6c532fac79f74ae7340dca7311482304d1103a0','a5dcb2da242e1af22089268d9cad5a8d9a9e5335','Image.CropScaleMask','cfbc3839a2',0,0),
(117,1747515712,1747515712,1,103,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:680;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','cf2eda657680e587f6f971ef728630d6d456e19d','a5dcb2da242e1af22089268d9cad5a8d9a9e5335','Image.CropScaleMask','4e5b5a8e01',0,0),
(118,1747515712,1747515712,1,103,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:500;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','81c13e849ae84d032c9f0e3805b43b5c2b54d6ef','a5dcb2da242e1af22089268d9cad5a8d9a9e5335','Image.CropScaleMask','354ea493d6',0,0),
(119,1747515712,1747515712,1,103,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:374;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','fe99132c8b06a533c81165edcdfea60272e46f99','a5dcb2da242e1af22089268d9cad5a8d9a9e5335','Image.CropScaleMask','4a17e65ded',0,0),
(120,1747515712,1747515712,1,103,'',NULL,'','a:7:{s:5:\"width\";i:1280;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','515a7b508f756e7c6c38d99c444f9648bb23597d','a5dcb2da242e1af22089268d9cad5a8d9a9e5335','Image.CropScaleMask','94794f87c6',0,0),
(121,1747515712,1747515712,1,104,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1200;s:9:\"maxHeight\";i:1200;s:4:\"crop\";N;}','73d6808c16641264459623fd5bde7cb787701f50','806835cf309d0d57d148dc5cd70ca166d04524ae','Image.CropScaleMask','cb866b81f7',0,0),
(122,1747515712,1747515712,1,104,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1280;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','50fbdb0a1f728492fbac899aee2989b520ffbb71','806835cf309d0d57d148dc5cd70ca166d04524ae','Image.CropScaleMask','1cff3cd45e',0,0),
(123,1747515712,1747515712,1,104,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1100;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','013cecd923f59a410611402187055a763c68a59b','806835cf309d0d57d148dc5cd70ca166d04524ae','Image.CropScaleMask','06829ed8fb',0,0),
(124,1747515712,1747515712,1,104,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:920;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','d6c532fac79f74ae7340dca7311482304d1103a0','806835cf309d0d57d148dc5cd70ca166d04524ae','Image.CropScaleMask','3422da3b3f',0,0),
(125,1747515712,1747515712,1,104,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:680;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','cf2eda657680e587f6f971ef728630d6d456e19d','806835cf309d0d57d148dc5cd70ca166d04524ae','Image.CropScaleMask','373a79ff0d',0,0),
(126,1747515712,1747515712,1,104,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:500;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','81c13e849ae84d032c9f0e3805b43b5c2b54d6ef','806835cf309d0d57d148dc5cd70ca166d04524ae','Image.CropScaleMask','c389d5cec6',0,0),
(127,1747515712,1747515712,1,104,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:374;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','fe99132c8b06a533c81165edcdfea60272e46f99','806835cf309d0d57d148dc5cd70ca166d04524ae','Image.CropScaleMask','8dff7fd657',0,0),
(128,1747515712,1747515712,1,104,'',NULL,'','a:7:{s:5:\"width\";i:1280;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','515a7b508f756e7c6c38d99c444f9648bb23597d','806835cf309d0d57d148dc5cd70ca166d04524ae','Image.CropScaleMask','73436ea386',0,0),
(129,1747515718,1747515718,1,102,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1920;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:813.4664970014992;s:8:\"\0*\0width\";d:1198.200899550225;s:9:\"\0*\0height\";d:673.9880059970016;}}','b9e148ca20447928f2402c8f9fe13e5b2726f1b9','3a5fd5a126f729143e2d270926a5045dfeb2d87f','Image.CropScaleMask','c452b056a9',0,0),
(130,1747515718,1747515718,1,102,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1650;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','6e09c840783dba73ff8c3e0ed7bdbdea4d16a287','3a5fd5a126f729143e2d270926a5045dfeb2d87f','Image.CropScaleMask','f8bac45d5e',0,0),
(131,1747515718,1747515718,1,102,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1380;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:815.2654970014992;s:8:\"\0*\0width\";d:1198.200899550225;s:9:\"\0*\0height\";d:673.9880059970016;}}','92bfc78310a30754f289e43af9cbc2597a4d486c','3a5fd5a126f729143e2d270926a5045dfeb2d87f','Image.CropScaleMask','6a612991ae',0,0),
(132,1747515718,1747515718,1,102,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1020;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:811.6674970014992;s:8:\"\0*\0width\";d:1198.200899550225;s:9:\"\0*\0height\";d:673.9880059970016;}}','5cc76b7550b40d8af8b1d9fddc4cd060dfe02615','3a5fd5a126f729143e2d270926a5045dfeb2d87f','Image.CropScaleMask','4323c041ac',0,0),
(133,1747515718,1747515718,1,102,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:500;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:757.8036626686657;s:8:\"\0*\0width\";d:1198.200899550225;s:9:\"\0*\0height\";d:898.6506746626687;}}','ce3d6fbed258a8f65f8047af000e48582d611660','3a5fd5a126f729143e2d270926a5045dfeb2d87f','Image.CropScaleMask','db7e191c64',0,0),
(134,1747515718,1747515718,1,102,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:374;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:723.6226626686657;s:8:\"\0*\0width\";d:1198.200899550225;s:9:\"\0*\0height\";d:898.6506746626687;}}','dc729a03b51a3a050c49728c382bd39e25f36fb4','3a5fd5a126f729143e2d270926a5045dfeb2d87f','Image.CropScaleMask','b4d78ed957',0,0),
(135,1747515718,1747515718,1,100,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:620;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','b07acc452fba60553011434f8e6b79e3d7b82f93','3a0585ce68eae7af03dc6266160f03e105e7e18e','Image.CropScaleMask','ec889e7063',0,0),
(136,1747515718,1747515718,1,100,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:530;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','fa70bb47d4dd037c0005ed7c8ba2a0ac9a2b2a10','3a0585ce68eae7af03dc6266160f03e105e7e18e','Image.CropScaleMask','1a81e420c5',0,0),
(137,1747515718,1747515718,1,100,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:440;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','3ced3f0306db64bfb42a31456507e472ed74645c','3a0585ce68eae7af03dc6266160f03e105e7e18e','Image.CropScaleMask','31e6b5b099',0,0),
(138,1747515718,1747515718,1,100,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:320;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','0f7aeea1d7b5bf29deed49a1b61426faad0279d6','3a0585ce68eae7af03dc6266160f03e105e7e18e','Image.CropScaleMask','359fea15e5',0,0),
(139,1747515718,1747515718,1,100,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:500;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','81c13e849ae84d032c9f0e3805b43b5c2b54d6ef','3a0585ce68eae7af03dc6266160f03e105e7e18e','Image.CropScaleMask','0ac806bae0',0,0),
(140,1747515718,1747515718,1,100,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:374;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','fe99132c8b06a533c81165edcdfea60272e46f99','3a0585ce68eae7af03dc6266160f03e105e7e18e','Image.CropScaleMask','c0172b004d',0,0),
(141,1747515718,1747515718,1,100,'',NULL,'','a:7:{s:5:\"width\";i:620;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','c3462bc67bac7dda419ffb85497d3b0abc50ea45','3a0585ce68eae7af03dc6266160f03e105e7e18e','Image.CropScaleMask','519d01728d',0,0),
(142,1747515718,1747515718,1,101,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:620;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','b07acc452fba60553011434f8e6b79e3d7b82f93','d9923ccfa270ff8741705b57a1bae549692bf497','Image.CropScaleMask','170bb301a4',0,0),
(143,1747515718,1747515718,1,101,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:530;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','fa70bb47d4dd037c0005ed7c8ba2a0ac9a2b2a10','d9923ccfa270ff8741705b57a1bae549692bf497','Image.CropScaleMask','f6e4345af8',0,0),
(144,1747515718,1747515718,1,101,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:440;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','3ced3f0306db64bfb42a31456507e472ed74645c','d9923ccfa270ff8741705b57a1bae549692bf497','Image.CropScaleMask','70f7574f76',0,0),
(145,1747515718,1747515718,1,101,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:320;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','0f7aeea1d7b5bf29deed49a1b61426faad0279d6','d9923ccfa270ff8741705b57a1bae549692bf497','Image.CropScaleMask','80164fa43e',0,0),
(146,1747515718,1747515718,1,101,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:500;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','81c13e849ae84d032c9f0e3805b43b5c2b54d6ef','d9923ccfa270ff8741705b57a1bae549692bf497','Image.CropScaleMask','9b39de4ada',0,0),
(147,1747515718,1747515718,1,101,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:374;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','fe99132c8b06a533c81165edcdfea60272e46f99','d9923ccfa270ff8741705b57a1bae549692bf497','Image.CropScaleMask','8c6d31b3c1',0,0),
(148,1747515718,1747515718,1,101,'',NULL,'','a:7:{s:5:\"width\";i:620;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','c3462bc67bac7dda419ffb85497d3b0abc50ea45','d9923ccfa270ff8741705b57a1bae549692bf497','Image.CropScaleMask','c3f72b31d6',0,0),
(149,1747516542,1743773431,1,6,'',NULL,'','a:2:{s:8:\"maxWidth\";i:64;s:9:\"maxHeight\";i:64;}','adce1dbae2e4683670473874bda4b4e3a0297998','92587c1566cc16cf901fcd6941303ec7fd6358a6','Image.CropScaleMask','2852c84523',64,48),
(150,1747516598,1743772748,1,5,'',NULL,'','a:2:{s:8:\"maxWidth\";i:64;s:9:\"maxHeight\";i:64;}','adce1dbae2e4683670473874bda4b4e3a0297998','cb4894b8221cf358764668361eb3108200959a93','Image.CropScaleMask','f29fc93489',64,48),
(151,1747689572,1537307839,1,26,'',NULL,'','a:2:{s:8:\"maxWidth\";i:64;s:9:\"maxHeight\";i:64;}','adce1dbae2e4683670473874bda4b4e3a0297998','115d94bdbab0847307a8b8979d75fb5709fee247','Image.CropScaleMask','4d7253fe62',64,38);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `link` text NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `crop` longtext DEFAULT NULL,
  `autoplay` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES
(1,6,1744014582,1744014582,0,0,0,0,NULL,'',0,0,0,0,21,NULL,NULL,1,'tx_fcbigfoot_domain_model_person','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(2,6,1744014582,1744014582,0,0,0,0,NULL,'{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,20,NULL,NULL,2,'tx_fcbigfoot_domain_model_person','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(3,6,1744014582,1744014582,0,0,0,0,NULL,'',0,0,0,0,19,NULL,NULL,3,'tx_fcbigfoot_domain_model_person','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(4,6,1744014582,1744014582,0,0,0,0,NULL,'',0,0,0,0,18,NULL,NULL,4,'tx_fcbigfoot_domain_model_person','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(5,6,1744014582,1744014582,0,0,0,0,NULL,'',0,0,0,0,17,NULL,NULL,5,'tx_fcbigfoot_domain_model_person','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(6,6,1744014582,1744014582,0,0,0,0,NULL,'',0,0,0,0,16,NULL,NULL,6,'tx_fcbigfoot_domain_model_person','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(7,6,1744014582,1744014582,0,0,0,0,NULL,'',0,0,0,0,15,NULL,NULL,7,'tx_fcbigfoot_domain_model_person','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(8,6,1744014582,1744014582,0,0,0,0,NULL,'',0,0,0,0,14,NULL,NULL,8,'tx_fcbigfoot_domain_model_person','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(9,1,1744014582,1744014582,0,0,0,0,NULL,'',0,0,0,0,12,NULL,NULL,1,'tx_fcbigfoot_domain_model_sponsor','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(10,1,1744014582,1744014582,0,0,0,0,NULL,'{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,11,NULL,NULL,2,'tx_fcbigfoot_domain_model_sponsor','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(11,1,1744014582,1744014582,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,10,NULL,NULL,3,'tx_fcbigfoot_domain_model_sponsor','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(12,1,1744014582,1744014582,0,0,0,0,NULL,'{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,9,NULL,NULL,4,'tx_fcbigfoot_domain_model_sponsor','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(13,1,1744014582,1744014582,0,0,0,0,NULL,'{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,8,NULL,NULL,5,'tx_fcbigfoot_domain_model_sponsor','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(14,1,1744014582,1744014582,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,7,NULL,NULL,6,'tx_fcbigfoot_domain_model_sponsor','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(15,1,1744014582,1744014582,0,0,0,0,NULL,'{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,6,NULL,NULL,26,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(16,1,1744014582,1744014582,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,5,NULL,NULL,22,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(17,1,1744014582,1744014582,0,0,0,0,NULL,'',0,0,0,0,4,NULL,NULL,1,'tx_fcbigfoot_domain_model_teaser','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(18,1,1744014582,1744014582,0,0,0,0,NULL,'',0,0,0,0,3,NULL,NULL,2,'tx_fcbigfoot_domain_model_teaser','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(19,1,1744014582,1744014582,0,0,0,0,NULL,'{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,2,NULL,NULL,3,'tx_fcbigfoot_domain_model_teaser','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(20,1,1744014582,1744014582,0,0,0,0,NULL,'',0,0,0,0,1,NULL,NULL,4,'tx_fcbigfoot_domain_model_teaser','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(21,17,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"description\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,29,NULL,NULL,1,'sys_file_collection','files',3,'',NULL,'',0),
(22,17,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"description\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,32,NULL,NULL,1,'sys_file_collection','files',2,'',NULL,'',0),
(23,17,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"description\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,31,NULL,NULL,1,'sys_file_collection','files',1,'',NULL,'',0),
(24,95,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,105,NULL,NULL,2,'tx_bootstrappackage_carousel_item','background_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(25,95,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,104,NULL,NULL,28,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(26,95,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,103,NULL,NULL,31,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(27,94,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,102,NULL,NULL,3,'tx_bootstrappackage_carousel_item','background_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.45217704113479668,\"width\":0.99850074962518742,\"height\":0.37464591773040662},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0.45317704113479662,\"width\":0.99850074962518742,\"height\":0.37464591773040662},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0.45117704113479667,\"width\":0.99850074962518742,\"height\":0.37464591773040662},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0.42123605484639559,\"width\":0.99850074962518742,\"height\":0.49952789030720884},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0.40223605484639563,\"width\":0.99850074962518742,\"height\":0.49952789030720884},\"selectedRatio\":\"4:3\",\"focusArea\":null}}',0),
(28,94,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,101,NULL,NULL,35,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(29,94,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,100,NULL,'Extensions',36,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(30,93,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,99,NULL,NULL,93,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(31,92,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,98,NULL,NULL,92,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(32,91,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,97,NULL,NULL,91,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(33,90,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,96,NULL,NULL,90,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(34,89,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,95,NULL,NULL,89,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(35,88,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,94,NULL,NULL,88,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(36,87,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,93,NULL,NULL,87,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(37,86,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,92,NULL,NULL,86,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(38,85,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,91,NULL,NULL,85,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(39,84,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,90,NULL,NULL,84,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(40,83,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,89,NULL,NULL,83,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(41,82,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,88,NULL,NULL,82,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(42,81,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,87,NULL,NULL,81,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(43,80,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,86,NULL,NULL,4,'tx_bootstrappackage_carousel_item','background_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(44,79,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,85,NULL,NULL,79,'pages','nav_icon',1,'',NULL,'',0),
(45,78,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,84,NULL,NULL,78,'pages','nav_icon',1,'',NULL,'',0),
(46,77,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,83,NULL,NULL,77,'pages','nav_icon',1,'',NULL,'',0),
(47,76,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,82,NULL,NULL,76,'pages','nav_icon',1,'',NULL,'',0),
(48,75,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,81,NULL,NULL,75,'pages','nav_icon',1,'',NULL,'',0),
(49,74,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,80,NULL,NULL,74,'pages','nav_icon',1,'',NULL,'',0),
(50,73,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,79,NULL,NULL,73,'pages','nav_icon',1,'',NULL,'',0),
(51,72,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,78,NULL,NULL,72,'pages','nav_icon',1,'',NULL,'',0),
(52,71,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,77,NULL,NULL,71,'pages','nav_icon',1,'',NULL,'',0),
(53,70,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,76,NULL,NULL,70,'pages','nav_icon',1,'',NULL,'',0),
(54,68,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,75,NULL,NULL,118,'tt_content','assets',2,'',NULL,'',0),
(55,68,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,74,NULL,NULL,118,'tt_content','assets',1,'',NULL,'',0),
(56,68,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,73,NULL,NULL,68,'pages','nav_icon',1,'',NULL,'',0),
(57,67,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,36,NULL,NULL,9,'tx_bootstrappackage_card_group_item','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":0.7493333333333333,\"width\":1,\"x\":0,\"y\":0.24933333333333332},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0.000999506172839517,\"y\":0.128,\"width\":0.998000987654321,\"height\":0.7493333333333333},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.000999506172839517,\"y\":0.092,\"width\":0.998000987654321,\"height\":0.7493333333333333},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.000999506172839517,\"y\":0.12933333333333333,\"width\":0.998000987654321,\"height\":0.7493333333333333},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.000999506172839517,\"y\":0.11733333333333333,\"width\":0.998000987654321,\"height\":0.7493333333333333},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(58,67,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,32,NULL,NULL,12,'tx_bootstrappackage_card_group_item','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0.00044444444444451391,\"y\":0,\"width\":0.99911111111111095,\"height\":0.7493333333333333},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0.12137499999999997,\"width\":0.999,\"height\":0.74925000000000008},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0.093374999999999958,\"width\":0.999,\"height\":0.74925000000000008},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.00083333333333333339,\"y\":0.12133333333333333,\"width\":0.99733333333333329,\"height\":0.748},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0.14537499999999998,\"width\":0.999,\"height\":0.74925000000000008},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(59,67,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,70,NULL,NULL,13,'tx_bootstrappackage_card_group_item','link_icon',1,'',NULL,'',0),
(60,67,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,31,NULL,NULL,13,'tx_bootstrappackage_card_group_item','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":0.8425787106446777,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":0.8425787106446777,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":0.8425787106446777,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.8425787106446777,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.8425787106446777,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(61,67,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,29,NULL,NULL,16,'tx_bootstrappackage_card_group_item','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(62,67,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,72,NULL,NULL,67,'pages','nav_icon',1,'',NULL,'',0),
(63,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,71,NULL,NULL,1,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(64,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,71,NULL,NULL,2,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(65,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,71,NULL,NULL,3,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(66,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,70,NULL,NULL,4,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(67,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,70,NULL,NULL,5,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(68,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,70,NULL,NULL,6,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(69,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,69,NULL,NULL,7,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(70,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,69,NULL,NULL,8,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(71,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,69,NULL,NULL,9,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(72,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,68,NULL,NULL,10,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(73,66,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,68,NULL,NULL,11,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(74,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,68,NULL,NULL,12,'tx_bootstrappackage_icon_group_item','icon_file',1,'',NULL,'',0),
(75,66,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,67,NULL,NULL,66,'pages','nav_icon',1,'',NULL,'',0),
(76,65,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,36,NULL,NULL,131,'tt_content','image',6,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(77,65,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,30,NULL,NULL,131,'tt_content','image',5,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(78,65,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,29,NULL,NULL,131,'tt_content','image',4,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(79,65,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,32,NULL,NULL,131,'tt_content','image',3,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(80,65,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,31,NULL,NULL,131,'tt_content','image',2,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(81,65,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,37,NULL,NULL,131,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(82,65,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,66,NULL,NULL,65,'pages','nav_icon',1,'',NULL,'',0),
(83,64,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,30,'','',132,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(84,64,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,29,'','',133,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(85,64,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,32,'','',134,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(86,64,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,31,'','',135,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(87,64,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,65,NULL,NULL,64,'pages','nav_icon',1,'',NULL,'',0),
(88,63,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,60,NULL,NULL,137,'tt_content','assets',1,'',NULL,'',0),
(89,63,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,61,NULL,NULL,138,'tt_content','assets',1,'',NULL,'',0),
(90,63,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,56,NULL,NULL,139,'tt_content','assets',1,'',NULL,'',0),
(91,63,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"description\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,57,NULL,NULL,140,'tt_content','assets',1,'',NULL,'',0),
(92,63,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,64,NULL,NULL,63,'pages','nav_icon',1,'',NULL,'',0),
(93,62,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,63,NULL,NULL,62,'pages','nav_icon',1,'',NULL,'',0),
(94,61,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,30,NULL,'',148,'tt_content','image',4,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0.00024999999999995,\"y\":0,\"width\":0.5625,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.00024999999999995,\"y\":0,\"width\":0.5625,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.00024999999999995,\"y\":0,\"width\":0.5625,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.00024999999999995,\"y\":0,\"width\":0.5625,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null}}',0),
(95,61,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,29,NULL,'',148,'tt_content','image',3,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0.00011458333333453346,\"y\":2.8498043475427e-15,\"width\":0.5817708333333276,\"height\":0.99999999999999},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.00011458333333453346,\"y\":2.8498043475427e-15,\"width\":0.5817708333333276,\"height\":0.99999999999999},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.00011458333333453346,\"y\":2.8498043475427e-15,\"width\":0.5817708333333276,\"height\":0.99999999999999},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.00011458333333453346,\"y\":2.8498043475427e-15,\"width\":0.5817708333333276,\"height\":0.99999999999999},\"selectedRatio\":\"1:1\",\"focusArea\":null}}',0),
(96,61,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,32,NULL,'',148,'tt_content','image',2,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null}}',0),
(97,61,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,31,NULL,'',148,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0.33316666666667166,\"y\":0,\"width\":0.6666666666666666,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.33316666666667166,\"y\":0,\"width\":0.6666666666666666,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.33316666666667166,\"y\":0,\"width\":0.6666666666666666,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.33316666666667166,\"y\":0,\"width\":0.6666666666666666,\"height\":1},\"selectedRatio\":\"1:1\",\"focusArea\":null}}',0),
(98,61,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,36,NULL,'',149,'tt_content','image',6,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0.0001248578351382,\"y\":0.23631508678239,\"width\":0.99975028432972,\"height\":0.75033377837115},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.0001248578351382,\"y\":0.23631508678239,\"width\":0.99975028432972,\"height\":0.75033377837115},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.0001248578351382,\"y\":0.23631508678239,\"width\":0.99975028432972,\"height\":0.75033377837115},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.0001248578351382,\"y\":0.23631508678239,\"width\":0.99975028432972,\"height\":0.75033377837115},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(99,61,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,30,NULL,'',149,'tt_content','image',5,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0.00088809946714038,\"y\":6.2106698384957e-15,\"width\":0.99822380106572,\"height\":0.99822380106571},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.00088809946714038,\"y\":6.2106698384957e-15,\"width\":0.99822380106572,\"height\":0.99822380106571},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.00088809946714038,\"y\":6.2106698384957e-15,\"width\":0.99822380106572,\"height\":0.99822380106571},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.00088809946714038,\"y\":6.2106698384957e-15,\"width\":0.99822380106572,\"height\":0.99822380106571},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(100,61,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,29,NULL,'',149,'tt_content','image',4,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0.00064114802087314,\"y\":0.032646048109976,\"width\":0.99871770395825,\"height\":0.9656357388316},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.00064114802087314,\"y\":0.032646048109976,\"width\":0.99871770395825,\"height\":0.9656357388316},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.00064114802087314,\"y\":0.032646048109976,\"width\":0.99871770395825,\"height\":0.9656357388316},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.00064114802087314,\"y\":0.032646048109976,\"width\":0.99871770395825,\"height\":0.9656357388316},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(101,61,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,32,NULL,'',149,'tt_content','image',3,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.237375,\"width\":0.999,\"height\":0.74924999999999},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.00044444444444451,\"y\":0.23733333333333,\"width\":0.99911111111111,\"height\":0.74933333333332},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.00044444444444451,\"y\":0.23733333333333,\"width\":0.99911111111111,\"height\":0.74933333333332},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.00044444444444451,\"y\":0.23733333333333,\"width\":0.99911111111111,\"height\":0.74933333333332},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(102,61,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,31,NULL,'',149,'tt_content','image',2,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0.0006940973957466,\"y\":0.15592203898052,\"width\":0.99861180520851,\"height\":0.84257871064467},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.0006940973957466,\"y\":0.15592203898052,\"width\":0.99861180520851,\"height\":0.84257871064467},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.0006940973957466,\"y\":0.15592203898052,\"width\":0.99861180520851,\"height\":0.84257871064467},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.0006940973957466,\"y\":0.15592203898052,\"width\":0.99861180520851,\"height\":0.84257871064467},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(103,61,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,37,NULL,'',149,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.47328110944528,\"width\":0.99850074962519,\"height\":0.37443778110944},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0.474,\"width\":1,\"height\":0.375},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0.473,\"width\":1,\"height\":0.375},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0.473,\"width\":1,\"height\":0.375},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(104,61,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,62,NULL,NULL,61,'pages','nav_icon',1,'',NULL,'',0),
(105,60,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,56,NULL,NULL,152,'tt_content','assets',4,'',NULL,'',0),
(106,60,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,57,NULL,NULL,152,'tt_content','assets',3,'',NULL,'',0),
(107,60,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,60,NULL,NULL,152,'tt_content','assets',2,'',NULL,'',0),
(108,60,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,61,NULL,NULL,152,'tt_content','assets',1,'',NULL,'',0),
(109,60,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,60,NULL,NULL,153,'tt_content','assets',3,'',NULL,'',0),
(110,60,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,56,NULL,NULL,153,'tt_content','assets',2,'',NULL,'',0),
(111,60,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,57,NULL,NULL,153,'tt_content','assets',1,'',NULL,'',0),
(112,60,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,59,NULL,NULL,60,'pages','nav_icon',1,'',NULL,'',0),
(113,59,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,58,NULL,NULL,59,'pages','nav_icon',1,'',NULL,'',0),
(114,57,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,30,NULL,NULL,2,'tx_bootstrappackage_accordion_item','media',2,'',NULL,'{\"default\":{\"cropArea\":{\"height\":0.9982238010657194,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":0.9982238010657194,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":0.9982238010657194,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.9982238010657194,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.9982238010657194,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(115,57,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,29,NULL,NULL,2,'tx_bootstrappackage_accordion_item','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(116,57,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,30,NULL,NULL,3,'tx_bootstrappackage_accordion_item','media',2,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(117,57,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,29,NULL,NULL,3,'tx_bootstrappackage_accordion_item','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0.0006411480208731391,\"y\":0.03264604810996564,\"width\":0.9987177039582538,\"height\":0.965635738831615},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0.0006411480208731391,\"y\":0.03264604810996564,\"width\":0.9987177039582538,\"height\":0.965635738831615},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.0006411480208731391,\"y\":0.03264604810996564,\"width\":0.9987177039582538,\"height\":0.965635738831615},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.0006411480208731391,\"y\":0.03264604810996564,\"width\":0.9987177039582538,\"height\":0.965635738831615},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.0006411480208731391,\"y\":0.03264604810996564,\"width\":0.9987177039582538,\"height\":0.965635738831615},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(118,57,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,57,NULL,NULL,4,'tx_bootstrappackage_accordion_item','media',1,'',NULL,'',0),
(119,57,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,56,NULL,NULL,5,'tx_bootstrappackage_accordion_item','media',1,'',NULL,'',0),
(120,57,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,55,NULL,NULL,57,'pages','nav_icon',1,'',NULL,'',0),
(121,56,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,29,'',NULL,5,'tx_bootstrappackage_carousel_item','background_image',1,'',NULL,'',0),
(122,56,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,54,'',NULL,6,'tx_bootstrappackage_carousel_item','background_image',1,'','','',0),
(123,56,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,53,'',NULL,7,'tx_bootstrappackage_carousel_item','background_image',1,'','','',0),
(124,56,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,52,'',NULL,7,'tx_bootstrappackage_carousel_item','image',1,'','','',0),
(125,56,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,51,NULL,NULL,56,'pages','nav_icon',1,'',NULL,'',0),
(126,55,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,30,NULL,NULL,2,'tx_bootstrappackage_tab_item','media',2,'',NULL,'{\"default\":{\"cropArea\":{\"height\":0.9982238010657194,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":0.9982238010657194,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":0.9982238010657194,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.9982238010657194,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.9982238010657194,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(127,55,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,29,NULL,NULL,2,'tx_bootstrappackage_tab_item','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(128,55,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,30,NULL,NULL,3,'tx_bootstrappackage_tab_item','media',2,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0.000888099467140376,\"y\":0,\"width\":0.9982238010657193,\"height\":0.9982238010657193},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0.000888099467140376,\"y\":0,\"width\":0.9982238010657193,\"height\":0.9982238010657193},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.000888099467140376,\"y\":0,\"width\":0.9982238010657193,\"height\":0.9982238010657193},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.000888099467140376,\"y\":0,\"width\":0.9982238010657193,\"height\":0.9982238010657193},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.000888099467140376,\"y\":0,\"width\":0.9982238010657193,\"height\":0.9982238010657193},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(129,55,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,29,NULL,NULL,3,'tx_bootstrappackage_tab_item','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0.0006411480208731391,\"y\":0.03264604810996564,\"width\":0.9987177039582538,\"height\":0.965635738831615},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0.0006411480208731391,\"y\":0.03264604810996564,\"width\":0.9987177039582538,\"height\":0.965635738831615},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.0006411480208731391,\"y\":0.03264604810996564,\"width\":0.9987177039582538,\"height\":0.965635738831615},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.0006411480208731391,\"y\":0.03264604810996564,\"width\":0.9987177039582538,\"height\":0.965635738831615},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.0006411480208731391,\"y\":0.03264604810996564,\"width\":0.9987177039582538,\"height\":0.965635738831615},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(130,55,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,37,NULL,NULL,4,'tx_bootstrappackage_tab_item','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(131,55,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,37,NULL,NULL,5,'tx_bootstrappackage_tab_item','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(132,55,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,50,NULL,NULL,55,'pages','nav_icon',1,'',NULL,'',0),
(133,54,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,49,NULL,NULL,1,'tx_bootstrappackage_timeline_item','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(134,54,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,48,NULL,NULL,2,'tx_bootstrappackage_timeline_item','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(135,54,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":\"\",\"alternative\":\"\",\"description\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,47,NULL,NULL,3,'tx_bootstrappackage_timeline_item','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(136,54,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,46,NULL,NULL,54,'pages','nav_icon',1,'',NULL,'',0),
(137,51,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,45,NULL,NULL,51,'pages','nav_icon',1,'',NULL,'',0),
(138,50,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,44,NULL,NULL,50,'pages','nav_icon',1,'',NULL,'',0),
(139,49,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,43,NULL,NULL,49,'pages','nav_icon',1,'',NULL,'',0),
(140,47,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,42,NULL,NULL,47,'pages','nav_icon',1,'',NULL,'',0),
(141,46,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,37,'',NULL,46,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.32437481259370315,\"width\":0.9985007496251874,\"height\":0.4992503748125937},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0.324,\"width\":1,\"height\":0.5},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0.324,\"width\":1,\"height\":0.5},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0.368,\"width\":1,\"height\":0.375},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0.368,\"width\":1,\"height\":0.375},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(142,46,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,37,NULL,NULL,46,'pages','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(143,45,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,31,NULL,NULL,45,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.0006940973957465957,\"y\":0.15592203898050974,\"width\":0.9986118052085068,\"height\":0.8425787106446776},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.0006940973957465957,\"y\":0.15592203898050974,\"width\":0.9986118052085068,\"height\":0.8425787106446776},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(144,45,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,31,NULL,NULL,45,'pages','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(145,44,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,32,'',NULL,44,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.7493333333333333,\"width\":1,\"x\":0,\"y\":0.23733333333333334},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.7493333333333333,\"width\":1,\"x\":0,\"y\":0.23733333333333334},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(146,44,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,32,NULL,NULL,44,'pages','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(147,43,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,29,NULL,NULL,43,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":1,\"width\":0.776,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":1,\"width\":0.776,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":1,\"width\":0.776,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(148,42,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,30,NULL,NULL,42,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.000888099467140376,\"y\":0,\"width\":0.9982238010657193,\"height\":0.9982238010657193},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.000888099467140376,\"y\":0,\"width\":0.9982238010657193,\"height\":0.9982238010657193},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(149,42,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,30,NULL,NULL,42,'pages','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(150,41,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,36,NULL,NULL,41,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":1,\"width\":0.998,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":1,\"width\":0.998,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":1,\"width\":0.998,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.7503337783711616,\"width\":1,\"x\":0,\"y\":0.2363150867823765},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.7503337783711616,\"width\":1,\"x\":0,\"y\":0.2363150867823765},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(151,41,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,36,NULL,NULL,41,'pages','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(152,40,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,41,NULL,NULL,40,'pages','nav_icon',1,'',NULL,'',0),
(153,39,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,40,NULL,NULL,39,'pages','nav_icon',1,'',NULL,'',0),
(154,38,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,39,NULL,NULL,38,'pages','nav_icon',1,'',NULL,'',0),
(155,37,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,39,NULL,NULL,37,'pages','nav_icon',1,'',NULL,'',0),
(156,36,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,38,NULL,NULL,36,'pages','nav_icon',1,'',NULL,'',0),
(157,35,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,37,'',NULL,35,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0.32437481259370315,\"width\":0.9985007496251874,\"height\":0.4992503748125937},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0.324,\"width\":1,\"height\":0.5},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0.324,\"width\":1,\"height\":0.5},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0.368,\"width\":1,\"height\":0.375},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0.368,\"width\":1,\"height\":0.375},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(158,35,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,37,NULL,NULL,35,'pages','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(159,34,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,31,NULL,NULL,34,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.0006940973957465957,\"y\":0.15592203898050974,\"width\":0.9986118052085068,\"height\":0.8425787106446776},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.0006940973957465957,\"y\":0.15592203898050974,\"width\":0.9986118052085068,\"height\":0.8425787106446776},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(160,34,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,31,NULL,NULL,34,'pages','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(161,33,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,32,'',NULL,33,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.7493333333333333,\"width\":1,\"x\":0,\"y\":0.23733333333333334},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.7493333333333333,\"width\":1,\"x\":0,\"y\":0.23733333333333334},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(162,33,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,32,NULL,NULL,33,'pages','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(163,32,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,29,NULL,NULL,32,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":1,\"width\":0.776,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":1,\"width\":0.776,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":1,\"width\":0.776,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.9656357388316151,\"width\":1,\"x\":0,\"y\":0.03264604810996564},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(164,31,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,30,NULL,NULL,31,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.000888099467140376,\"y\":0,\"width\":0.9982238010657193,\"height\":0.9982238010657193},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.000888099467140376,\"y\":0,\"width\":0.9982238010657193,\"height\":0.9982238010657193},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(165,31,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,30,NULL,NULL,31,'pages','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(166,30,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,36,NULL,NULL,30,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":1,\"width\":0.998,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":1,\"width\":0.998,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":1,\"width\":0.998,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.7503337783711616,\"width\":1,\"x\":0,\"y\":0.2363150867823765},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.7503337783711616,\"width\":1,\"x\":0,\"y\":0.2363150867823765},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(167,30,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,36,NULL,NULL,30,'pages','media',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(168,29,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,35,NULL,NULL,29,'pages','nav_icon',1,'',NULL,'',0),
(169,27,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,34,NULL,NULL,27,'pages','nav_icon',1,'',NULL,'',0),
(170,26,1747689602,1744015096,1,0,0,0,NULL,'',0,0,0,0,33,NULL,NULL,26,'pages','nav_icon',1,'',NULL,'',0),
(171,24,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,30,NULL,NULL,203,'tt_content','background_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(172,24,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,30,NULL,NULL,204,'tt_content','background_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(173,24,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,30,NULL,NULL,205,'tt_content','background_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(174,24,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,30,NULL,NULL,206,'tt_content','background_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(175,24,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,30,NULL,NULL,207,'tt_content','background_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(176,24,1747689602,1744015096,1,0,0,0,NULL,'{\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,30,NULL,NULL,208,'tt_content','background_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(177,23,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,32,NULL,'',223,'tt_content','image',2,'',NULL,'{\"default\":{\"cropArea\":{\"height\":1,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":1,\"width\":0.999,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":1,\"width\":0.75,\"x\":0,\"y\":0},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":1,\"width\":0.75,\"x\":0,\"y\":0},\"selectedRatio\":\"1:1\",\"focusArea\":null}}',0),
(178,23,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,31,NULL,'',223,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":1,\"width\":0.889,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":1,\"width\":0.889,\"x\":0,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.8425787106446777,\"width\":0.562,\"x\":0,\"y\":0.15592203898050974},\"selectedRatio\":\"1:1\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.8425787106446777,\"width\":0.562,\"x\":0,\"y\":0.15592203898050974},\"selectedRatio\":\"1:1\",\"focusArea\":null}}',0),
(179,23,1747689602,1744015096,1,0,0,0,NULL,'{\"link\":\"\"}',0,0,0,0,30,NULL,'',224,'tt_content','image',2,'https://unsplash.com/search/street-above?photo=2fZQFQ4FOPU _blank',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":0.75,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.0008880994671404392,\"y\":0,\"width\":0.9982238010657198,\"height\":0.99822380106572},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.0008880994671404392,\"y\":0,\"width\":0.9982238010657198,\"height\":0.99822380106572},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(180,23,1747689602,1744015096,1,0,0,0,NULL,'{\"link\":\"\"}',0,0,0,0,29,NULL,'',224,'tt_content','image',1,'https://unsplash.com/photos/1-ISIwuBMiw _blank',NULL,'{\"default\":{\"cropArea\":{\"x\":1.1250259982868252e-15,\"y\":0.00044762757385855,\"width\":0.7749999999999978,\"height\":0.9991047448522801},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":1.1250259982868252e-15,\"y\":0.00044762757385855,\"width\":0.7749999999999978,\"height\":0.9991047448522801},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":1.1250259982868252e-15,\"y\":0.00044762757385855,\"width\":0.7749999999999978,\"height\":0.9991047448522801},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.00064114802087314,\"y\":0.03264604810997017,\"width\":0.9987177039582501,\"height\":0.9656357388316116},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.00064114802087314,\"y\":0.03264604810997017,\"width\":0.9987177039582501,\"height\":0.9656357388316116},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(181,20,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,28,NULL,NULL,8,'tx_bootstrappackage_carousel_item','background_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(182,15,1747689602,1744015096,1,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,27,NULL,NULL,9,'tx_bootstrappackage_carousel_item','background_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"height\":0.7493333333333333,\"width\":0.999,\"x\":0,\"y\":0.24933333333333332},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0.0004444444444444942,\"y\":0.2493333333333333,\"width\":0.9991111111111111,\"height\":0.7493333333333333},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.0004444444444444942,\"y\":0.2493333333333333,\"width\":0.9991111111111111,\"height\":0.7493333333333333},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.7493333333333333,\"width\":0.749,\"x\":0,\"y\":0.24933333333333332},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.7493333333333333,\"width\":0.749,\"x\":0,\"y\":0.24933333333333332},\"selectedRatio\":\"4:3\",\"focusArea\":null}}',0),
(183,15,1747689602,1744015096,1,0,0,0,NULL,'{\"title\":null,\"alternative\":null,\"link\":null,\"description\":null,\"crop\":null,\"uid_local\":null,\"hidden\":null,\"sys_language_uid\":null}',0,0,0,0,26,NULL,NULL,249,'tt_content','image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),
(184,34,1747689602,1744015096,1,0,2,159,NULL,'{\"sys_language_uid\":\"\",\"l10n_parent\":\"\"}',0,0,0,0,31,NULL,NULL,13,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.0006940973957465957,\"y\":0.15592203898050974,\"width\":0.9986118052085068,\"height\":0.8425787106446776},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.0006940973957465957,\"y\":0.15592203898050974,\"width\":0.9986118052085068,\"height\":0.8425787106446776},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(185,34,1747689602,1744015096,1,0,1,159,NULL,'{\"sys_language_uid\":\"\",\"l10n_parent\":\"\"}',0,0,0,0,31,NULL,NULL,14,'pages','thumbnail',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.0006940973957465957,\"y\":0.15592203898050974,\"width\":0.9986118052085068,\"height\":0.8425787106446776},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.0006940973957465957,\"y\":0.15592203898050974,\"width\":0.9986118052085068,\"height\":0.8425787106446776},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0),
(186,34,1747689602,1744015096,1,0,1,184,NULL,'{\"sys_language_uid\":\"\",\"l10n_parent\":\"\"}',0,0,0,0,31,NULL,NULL,14,'pages','thumbnail',2,'',NULL,'{\"default\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":5.555555555562345e-5,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.0006940973957465957,\"y\":0.15592203898050974,\"width\":0.9986118052085068,\"height\":0.8425787106446776},\"selectedRatio\":\"16:9\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.0006940973957465957,\"y\":0.15592203898050974,\"width\":0.9986118052085068,\"height\":0.8425787106446776},\"selectedRatio\":\"16:9\",\"focusArea\":null}}',0);
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `processingfolder` tinytext DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_browsable` smallint(5) unsigned NOT NULL DEFAULT 1,
  `is_default` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_writable` smallint(5) unsigned NOT NULL DEFAULT 1,
  `is_online` smallint(5) unsigned NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(5) unsigned NOT NULL DEFAULT 1,
  `driver` varchar(255) NOT NULL DEFAULT '',
  `configuration` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES
(1,0,1744014538,1744014538,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.',1,NULL,'fileadmin',1,1,1,1,1,'Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>');
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `identifier` longtext DEFAULT NULL,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
INSERT INTO `sys_lockedrecords` VALUES
(65,1,1747773696,'pages',11,0,'admin',0);
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES
(1,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendGroupsExplicitAllowDenyMigration','i:1;'),
(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendModulePermissionMigration','i:1;'),
(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\IndexedSearchCTypeMigration','i:1;'),
(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateSiteSettingsConfigUpdate','i:1;'),
(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PagesRecyclerDoktypeMigration','i:1;'),
(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SynchronizeColPosAndCTypeWithDefaultLanguage','i:1;'),
(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileCollectionIdentifierMigration','i:1;'),
(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileMountIdentifierMigration','i:1;'),
(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysLogSerializationUpdate','i:1;'),
(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysTemplateNoWorkspaceMigration','i:1;'),
(11,'installUpdate','TYPO3\\CMS\\Extensionmanager\\Updates\\FeLoginModeExtractionUpdate','i:1;'),
(12,'installUpdateRows','rowUpdatersDone','a:1:{i:0;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\SysRedirectRootPageMoveMigration\";}'),
(14,'extensionDataImport','typo3/cms-core/ext_tables_static+adt.sql','s:0:\"\";'),
(15,'extensionDataImport','typo3/cms-scheduler/ext_tables_static+adt.sql','s:0:\"\";'),
(16,'extensionDataImport','typo3/cms-extbase/ext_tables_static+adt.sql','s:0:\"\";'),
(17,'extensionDataImport','typo3/cms-fluid/ext_tables_static+adt.sql','s:0:\"\";'),
(18,'extensionDataImport','typo3/cms-install/ext_tables_static+adt.sql','s:0:\"\";'),
(19,'extensionDataImport','typo3/cms-backend/ext_tables_static+adt.sql','s:0:\"\";'),
(20,'extensionDataImport','typo3/cms-frontend/ext_tables_static+adt.sql','s:0:\"\";'),
(21,'extensionDataImport','typo3/cms-dashboard/ext_tables_static+adt.sql','s:0:\"\";'),
(22,'extensionDataImport','typo3/cms-filelist/ext_tables_static+adt.sql','s:0:\"\";'),
(23,'extensionDataImport','typo3/cms-impexp/ext_tables_static+adt.sql','s:0:\"\";'),
(24,'extensionDataImport','typo3/cms-lowlevel/ext_tables_static+adt.sql','s:0:\"\";'),
(25,'extensionDataImport','typo3/cms-form/ext_tables_static+adt.sql','s:0:\"\";'),
(26,'extensionDataImport','typo3/cms-seo/ext_tables_static+adt.sql','s:0:\"\";'),
(27,'extensionDataImport','typo3/cms-indexed-search/ext_tables_static+adt.sql','s:0:\"\";'),
(28,'extensionDataImport','typo3/cms-setup/ext_tables_static+adt.sql','s:0:\"\";'),
(29,'extensionDataImport','typo3/cms-rte-ckeditor/ext_tables_static+adt.sql','s:0:\"\";'),
(30,'extensionDataImport','typo3/cms-belog/ext_tables_static+adt.sql','s:0:\"\";'),
(31,'extensionDataImport','typo3/cms-beuser/ext_tables_static+adt.sql','s:0:\"\";'),
(32,'extensionDataImport','typo3/cms-extensionmanager/ext_tables_static+adt.sql','s:0:\"\";'),
(33,'extensionDataImport','typo3/cms-filemetadata/ext_tables_static+adt.sql','s:0:\"\";'),
(34,'extensionDataImport','typo3/cms-info/ext_tables_static+adt.sql','s:0:\"\";'),
(35,'extensionDataImport','typo3/cms-tstemplate/ext_tables_static+adt.sql','s:0:\"\";'),
(36,'extensionDataImport','bk2k/bootstrap-package/ext_tables_static+adt.sql','s:0:\"\";'),
(37,'extensionDataImport','typo3-incubator/theme-fcbigfoot/Initialisation/Files','i:1;'),
(38,'extensionDataImport','typo3-incubator/theme-fcbigfoot/ext_tables_static+adt.sql','s:0:\"\";'),
(39,'extensionDataImport','typo3-incubator/theme-fcbigfoot/Initialisation/dataImported','i:1;'),
(40,'siteConfigImport','fcbigfoot','i:1;'),
(41,'extensionDataImport','typo3/cms-felogin/ext_tables_static+adt.sql','s:0:\"\";'),
(42,'extensionDataImport','typo3/cms-introduction/Initialisation/Files','i:1;'),
(43,'extensionDataImport','typo3/cms-introduction/ext_tables_static+adt.sql','s:0:\"\";'),
(44,'extensionDataImport','typo3/cms-introduction/Initialisation/dataImported','i:1;'),
(45,'siteConfigImport','introduction','i:1;'),
(46,'extensionDataImport','typo3/cms-fluid-styled-content/ext_tables_static+adt.sql','s:0:\"\";'),
(47,'extensionDataImport','typo3-incubator/memsy/ext_tables_static+adt.sql','s:0:\"\";'),
(48,'extensionDataImport','typo3-incubator/surfcamp-base/ext_tables_static+adt.sql','s:0:\"\";'),
(50,'core','formProtectionSessionToken:1','s:64:\"1fc4b05ad269abcb73916dcaa7a0b6c63993b067b8f33136e4af54ad49e7d3a5\";'),
(51,'tx_scheduler','lastRun','a:3:{s:5:\"start\";i:1747848841;s:3:\"end\";i:1747848841;s:4:\"type\";s:4:\"cron\";}');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `constants` longtext DEFAULT NULL,
  `include_static_file` longtext DEFAULT NULL,
  `basedOn` longtext DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `config` longtext DEFAULT NULL,
  `static_file_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES
(1,80,1747689602,1744015096,1,0,0,0,256,NULL,'Grid Example (overrides content selection for subpages)',0,0,NULL,'','',0,'[tree.level === 2]\n# DEMO CSS\npage.cssInline {\n    100 = TEXT\n    100.value (\n    .example-grid { border: 1px solid rgba(117, 167, 90, 0.5); background-color: rgba(117, 167, 90, 0.25); padding: 2em; }\n    )\n}\n\n# Override Content Selection\nlib.dynamicContent >\nlib.dynamicContent = COA\nlib.dynamicContent {\n    5 = LOAD_REGISTER\n    5 {\n        colPos.cObject = TEXT\n        colPos.cObject {\n            field = colPos\n            ifEmpty.cObject = TEXT\n            ifEmpty.cObject {\n                value.current = 1\n                ifEmpty = 0\n            }\n        }\n    }\n    10 = CASE\n    10 {\n        key.data = register:colPos\n        0 = TEXT\n        0.value = Main\n        1 = TEXT\n        1.value = Left\n        2 = TEXT\n        2.value = Right\n        3 = TEXT\n        3.value = Border\n        4 = TEXT\n        4.value = Main 2\n        8 = TEXT\n        8.value = Content Before\n        9 = TEXT\n        9.value = Content After\n        10 = TEXT\n        10.value = Footer 1\n        11 = TEXT\n        11.value = Footer 2\n        12 = TEXT\n        12.value = Footer 3\n        20 = TEXT\n        20.value = Middle 1\n        21 = TEXT\n        21.value = Middle 2\n        22 = TEXT\n        22.value = Middle 3\n        30 = TEXT\n        30.value = Special 1\n        31 = TEXT\n        31.value = Special 2\n        32 = TEXT\n        32.value = Special 3\n        33 = TEXT\n        33.value = Special 4\n        34 = TEXT\n        34.value = Special 5\n        35 = TEXT\n        35.value = Special 6\n        36 = TEXT\n        36.value = Special 7\n        37 = TEXT\n        37.value = Special 8\n        38 = TEXT\n        38.value = Special 9\n        39 = TEXT\n        39.value = Special 10		\n		wrap = <div>|</div>\n    }\n    11 = TEXT\n    11 {\n        value = colPos = {register:colPos}\n        value.insertData = 1\n        wrap = <div>|</div>\n    }\n    90 = RESTORE_REGISTER\n    wrap (\n        <div class=\"frame frame-default frame-type-html frame-layout-0 frame-background-none frame-no-backgroundimage frame-space-before-none frame-space-after-none\">\n            <div class=\"frame-inner\">\n                <div class=\"example-grid\">|</div>\n            </div>\n        </div>\n    )\n}\nlib.dynamicContentSlide =< lib.dynamicContent\nlib.dynamicContentSlide {\n	20 = TEXT\n	20.value = If no content element is found in this column, the rootLine will be traversed back until some content is found.\n	20.wrap = <div>|</div>\n}\n[global]',0,1),
(2,15,1744016595,1744015096,1,0,0,0,256,'','Introduction Package',1,3,'[tree.level === 0]\npage.theme.navigation.style = default-transition\n[end]\n\npage.theme.navigation.type = top\npage.theme.meta.enable = 0\npage.logo.file = fileadmin/introduction/images/introduction-package.svg\npage.logo.fileInverted = fileadmin/introduction/images/introduction-package-inverted.svg\npage.theme.socialmedia.channels.facebook.url = https://www.facebook.com/typo3/\npage.theme.socialmedia.channels.x.url = https://x.com/typo3\npage.theme.socialmedia.channels.github.url = https://github.com/TYPO3/typo3\npage.theme.socialmedia.channels.youtube.url = https://www.youtube.com/user/typo3\npage.theme.cookieconsent.position = bottom-right\n','EXT:bootstrap_package/Configuration/TypoScript','',0,'',3,2);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `frame_class` varchar(60) NOT NULL DEFAULT 'default',
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `table_caption` varchar(255) DEFAULT NULL,
  `CType` varchar(255) NOT NULL DEFAULT '',
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) NOT NULL DEFAULT '',
  `space_after_class` varchar(60) NOT NULL DEFAULT '',
  `date` bigint(20) NOT NULL DEFAULT 0,
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_layout` int(10) unsigned NOT NULL DEFAULT 0,
  `header_position` varchar(255) NOT NULL DEFAULT '',
  `header_link` text NOT NULL DEFAULT '',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `bodytext` longtext DEFAULT NULL,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` int(10) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` int(10) unsigned NOT NULL DEFAULT 0,
  `pages` longtext DEFAULT NULL,
  `recursive` int(10) unsigned NOT NULL DEFAULT 0,
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `records` longtext DEFAULT NULL,
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 1,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` longtext DEFAULT NULL,
  `selected_categories` longtext DEFAULT NULL,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `bullets_type` int(10) unsigned NOT NULL DEFAULT 0,
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `table_delimiter` int(10) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` int(10) unsigned NOT NULL DEFAULT 0,
  `table_header_position` int(10) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` longtext DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(64) NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` int(10) unsigned NOT NULL DEFAULT 0,
  `fcbigfoot_buttons` int(10) unsigned NOT NULL DEFAULT 0,
  `fcbigfoot_game_results_mode` varchar(255) NOT NULL DEFAULT '',
  `fcbigfoot_file_link` text NOT NULL DEFAULT '',
  `fcbigfoot_button_text` varchar(255) NOT NULL DEFAULT '',
  `fcbigfoot_button_link` text NOT NULL DEFAULT '',
  `fcbigfoot_persons` int(10) unsigned NOT NULL DEFAULT 0,
  `fcbigfoot_sponsors` int(10) unsigned NOT NULL DEFAULT 0,
  `fcbigfoot_teaser` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `tx_memsy_confirmation_pid` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES
(1,12,1744014582,1744014582,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"fcbigfoot_file_link\":\"\"}',0,0,0,0,'default',0,NULL,'game_results',0,0,'','',0,'Our Game Results',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'table','file:13','','',0,0,0,11,NULL),
(2,12,1744014582,1744014582,0,0,0,0,'',128,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imagewidth\":\"\",\"imageheight\":\"\",\"imageborder\":\"\",\"imageorient\":\"\",\"imagecols\":\"\",\"image_zoom\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"categories\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Our Game Results',2,'','','','<p>Stay updated with the latest scores and outcomes of FC Bigfoot\'s matches. Here, you will find a comprehensive list of our recent game results. Keep checking back for the most current information on our achievements.</p>',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,12,NULL),
(3,11,1744014582,1744014582,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Our New Supporter',2,'','','','<p>We are thrilled to welcome <a href=\"https://typo3.org/\">TYPO3 Association</a> as our newest sponsor! This exciting partnership promises to elevate FC Bigfoot to even greater heights, both on and off the field. With TYPO3 Association\'s support, we look forward to enhancing our club\'s capabilities and achieving new milestones. Stay tuned for the amazing opportunities this collaboration will bring to our team and community.</p>\n\n',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,16,NULL),
(4,11,1744014582,1744014582,0,0,0,0,'',128,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imagewidth\":\"\",\"imageheight\":\"\",\"imageborder\":\"\",\"imageorient\":\"\",\"imagecols\":\"\",\"image_zoom\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"categories\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Get Ready for Another Exciting Match!',2,'','','','<p>Mark your calendars for Thursday, April 18, 2024, at 16:30, as FC Bigfoot, currently third in the regional league, takes on our rivals from SurfCamp League. This is a match you won\'t want to miss!</p>\n<p><strong>Match Details</strong></p>\n<ul><li>Date and Time: Thursday, April 18, 2024, at 16:30</li><li>Teams: FC Bigfoot vs. SurfCamp League</li><li>Stadium Access: Gates open at 14:30</li><li>Catering: Food and beverages will be available</li></ul>\n<p>Join us for an afternoon of intense competition and cheer on FC Bigfoot as they strive to climb the league standings. Bring your friends and family for a memorable day of soccer excitement!</p>',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,15,NULL),
(5,11,1744014582,1744014582,0,0,0,0,'',64,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imagewidth\":\"\",\"imageheight\":\"\",\"imageborder\":\"\",\"imageorient\":\"\",\"imagecols\":\"\",\"image_zoom\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"categories\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'FC Bigfoot\'s 15th Charity Tournament',2,'','','','<p>FC Bigfoot proudly announces the 15th edition of our charity tournament! This beloved event unites soccer enthusiasts, players, and supporters from across the region for a day filled with thrilling matches and community spirit. For the 15th time, we host a marquee event showcasing local soccer talent and fierce competition. Teams from the region have confirmed their participation, promising an exciting display of sportsmanship and skill.</p>\n<p><strong>Bringing the Community Together</strong><br />Our charity tournament is more than just a series of soccer matches; it\'s a vibrant gathering point for all soccer fans in the region. It\'s a place where old friends reconnect, new friendships are built, and everyone can share in the collective joy of the sport. Whether you\'re a real soccer fan or someone who enjoys the lively atmosphere, there\'s something for everyone at our event. Beyond the action on the pitch, the tournament offers a perfect setting for families and friends to spend a memorable day together. As the matches unfold, spectators can enjoy a variety of food and beverage options, including the chance to relax and chat over a cold beer. There will be activities for children, ensuring that even the youngest fans have a great time.</p>\n<p><strong>Supporting a Worthy Cause</strong><br />At its heart, the charity tournament is about giving back to the community. Proceeds from the event will go towards local charities, supporting initiatives that make a real difference in the lives of those in need. By attending and participating, you\'re not only enjoying a fantastic day of soccer but also contributing to a greater cause.<br />Mark your calendars and gather your friends and family for an unforgettable day of soccer, fun, and community spirit. The 15th charity tournament hosted by FC Bigfoot is more than just an event; it\'s a celebration of everything we love about the game and the bonds it creates.</p>\n<p>We look forward to seeing you there, cheering on your favorite teams, enjoying the festivities, and being part of a tradition that continues to strengthen our community year after year. Let\'s make this 15th edition the best one yet!</p>',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,14,NULL),
(6,11,1744014582,1744014582,0,0,0,0,'',32,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"assets\":\"\",\"imagewidth\":\"\",\"imageheight\":\"\",\"imageborder\":\"\",\"imageorient\":\"\",\"imagecols\":\"\",\"image_zoom\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"categories\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'News about our club',2,'','','','',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,13,NULL),
(7,10,1744014582,1744014582,0,0,0,0,'',256,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'2018 - 2024',2,'','','Becoming a community','<p>The biggest milestone was reached in 2018 when FC Bigfoot was promoted to the regional league for the first time. This achievement marked a turning point in the club\'s history. The promotion brought a new level of visibility and prestige, attracting more fans and support from the local community.</p>\n<p>Since then, FC Bigfoot has continued its success, not only maintaining its status in the regional league but also expanding its influence nationally. The club\'s strategic focus on youth development has been a cornerstone of this growth. By investing in state-of-the-art training facilities and nurturing young talent through comprehensive development programs, FC Bigfoot has established a strong pipeline of skilled players.</p>\n<p>FC Bigfoot has solidified its position as a prominent and influential football club, known for its dedication to both competitive success and community engagement. The club\'s ongoing commitment to youth development and national expansion ensures that its legacy will continue to grow in the years to come.</p>',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,21,NULL),
(8,10,1744014582,1744014582,0,0,0,0,'',128,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'2005 - 2018',2,'','','Growth, growth, growth!','<p>FC Bigfoot was able to expand during this era, marking a significant period of growth and development for the club. Beyond competing in the classic league, FC Bigfoot became known for its community-oriented approach. The club organized various local events and initiatives that engaged the community, fostering a strong bond between the club and its supporters.</p>\n<p>FC Bigfoot also emphasized inclusivity, ensuring that everyone, regardless of gender or background, had the opportunity to be part of the club. This inclusive approach, combined with their community-focused initiatives, solidified FC Bigfoot’s reputation as a forward-thinking and community-oriented club.</p>',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,20,NULL),
(9,10,1744014582,1744014582,0,0,0,0,'',64,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'2001 - 2004',2,'','','Our first years','<p>FC Bigfoot was established in 2001 and swiftly became a well-known name in the local football community. In its early days, the team had to practice on a worn-out field with barely enough equipment for all the players. Despite these challenges, they showed remarkable persistence.</p>\n<p>One memorable incident occurred during their first season. In a match against a more experienced team, FC Bigfoot was down by four goals at halftime. Instead of giving up, they rallied together and, with sheer determination and teamwork, managed to tie the game by the final whistle. This game became a turning point for the club, showcasing their spirit and winning the respect of fans and competitors alike. From that day on, FC Bigfoot was known for its fighting spirit.</p>',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,19,NULL),
(10,10,1744014582,1744014582,0,0,0,0,'',32,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'From foundation to the regional league',2,'','','','<p>Our history is a testament to resilience and triumph. From humble beginnings to remarkable achievements, each chapter tells a story of dedication, teamwork, and community support. FC Bigfooot is a club at heart with a focus on cohesion and mutual support. The club may only have a comparatively short 23-year history, but it has a lively history with many ups and downs. You can find out more here.</p>',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,18,NULL),
(11,9,1747727455,1744014582,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'default',0,NULL,'form_formframework',0,0,'','',0,'',2,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">EXT:fcbigfoot/Configuration/Form/FormDefinitions/applicationForm.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,26,NULL),
(12,9,1744014582,1744014582,0,0,0,0,'',128,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Become a Member today',2,'','','','<p>Join the FC Bigfoot community by becoming a member today! Our membership program offers a variety of benefits designed to enhance your experience and connection with the club. As a member, you\'ll enjoy exclusive perks, including early access to tickets, discounts on merchandise, and invitations to special events.</p>\n<p>Membership also provides you with the opportunity to be more involved with the club, from participating in member-only meetings to having a say in club decisions. Whether you\'re a lifelong supporter or new to the FC Bigfoot family, our membership program is a great way to show your support and stay engaged with all the exciting developments at the club.</p>\n<p>Sign up now and be a part of the FC Bigfoot legacy, contributing to our community. Together, we can achieve great things both on and off the field.</p>',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,22,NULL),
(13,6,1744014582,1744014582,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"fcbigfoot_persons\":\"\"}',0,0,0,0,'default',0,NULL,'persons_overview',0,0,'','',0,'The Team',2,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',8,0,0,17,NULL),
(14,5,1744014582,1744014582,0,0,0,0,'',256,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Our companions and sponsors',2,'','','','<p>At FC Bigfoot, we are proud to have the backing of our dedicated supporters and companions. These valued partners play a crucial role in the success and growth of our club. Our supporters and companions share our vision and commitment to excellence, helping to foster a strong sense of community. Through their involvement, we are able to enhance our facilities, invest in youth development programs, and organize community outreach initiatives that make a positive impact.</p>\n<p>By partnering with FC Bigfoot, our supporters and companions benefit from increased visibility and association with a club that values openness, teamwork, and community spirit. We are grateful for their support and look forward to continuing our journey together, achieving new heights and celebrating many successes.</p>\n<p>Thank you to all our supporters and companions for being an integral part of the FC Bigfoot family. Your contributions make a significant difference, and we are proud to stand alongside you.</p>',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,23,NULL),
(15,4,1744014582,1744014582,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'default',0,NULL,'form_formframework',0,0,'','',0,'',2,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">EXT:fcbigfoot/Configuration/Form/FormDefinitions/contactForm.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"c87ff2d476f3784a635b9cbf9fff5fb1\">\n            <language index=\"lDEF\">\n                <field index=\"settings.finishers.EmailToReceiver.subject\">\n                    <value index=\"vDEF\">{text-3}</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.recipients\">\n                    <el index=\"el\">\n                        <field index=\"67efd22343271823246578\">\n                            <value index=\"_arrayContainer\">\n                                <el>\n                                    <field index=\"email\">\n                                        <value index=\"vDEF\">benjamin.kott@outlook.com</value>\n                                    </field>\n                                    <field index=\"name\">\n                                        <value index=\"vDEF\">benjamin kott</value>\n                                    </field>\n                                </el>\n                            </value>\n                        </field>\n                    </el>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.senderAddress\">\n                    <value index=\"vDEF\">{email-1}</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.senderName\">\n                    <value index=\"vDEF\">{text-1}</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.addHtmlPart\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.translation.language\">\n                    <value index=\"vDEF\">Default</value>\n                </field>\n                <field index=\"settings.finishers.EmailToReceiver.title\">\n                    <value index=\"vDEF\">Contact </value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"171fdbda7d5ee82c650e8ef0672dd01d\">\n            <language index=\"lDEF\">\n                <field index=\"settings.finishers.Confirmation.contentElementUid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.finishers.Confirmation.message\">\n                    <value index=\"vDEF\">Your message has been sent.</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,24,NULL),
(16,3,1744014582,1744014582,0,0,0,0,'',256,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'indexedsearch_pi2',0,0,'','',0,'',1,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,1,NULL),
(17,2,1744014582,1744014582,0,0,0,0,'',256,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Privacy Policy',2,'','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. &nbsp;</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. &nbsp;</p>\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. &nbsp;</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. &nbsp;</p>\n<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. &nbsp;</p>\n<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus. &nbsp;</p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. &nbsp;</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. &nbsp;</p>\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo</p>',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,25,NULL),
(18,1,1744014582,1744014582,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"fcbigfoot_buttons\":\"\"}',0,0,0,0,'default',3,NULL,'cta',0,0,'','',0,'Let\'s keep in touch',2,'','','Game on',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,2,'slider','','','',0,0,0,2,NULL),
(19,1,1744014582,1744014582,0,0,0,0,'',128,'',0,0,0,0,NULL,'{\"fcbigfoot_sponsors\":\"\"}',0,0,0,0,'default',0,NULL,'sponsors',0,0,'','',0,'Our biggest supporters',2,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,6,0,10,NULL),
(20,1,1744014582,1744014582,0,0,0,0,'',64,'',0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Our Core Values',2,'','','','<p>At FC Bigfoot, our values guide everything we do, both on and off the field. We are dedicated to fostering a community that embodies the spirit of football through trust, respect, openness, sharing, friendship, and fun.</p>\n<p><strong>Trust and Respect</strong><br />We trust and respect every individual within our club—players, coaches, staff, and supporters. Everyone\'s contributions are valued, creating a strong, cohesive team.</p>\n<p><strong>Openness</strong><br />Our inclusive and welcoming community embraces diversity. We ensure that everyone feels valued and included, fostering a sense of belonging through transparent and honest communication.</p>\n<p><strong>Sharing</strong><br />Collaboration is key at FC Bigfoot. Sharing knowledge, skills, and experiences makes us stronger, inspiring the next generation of players and fans.</p>\n<p><strong>Friendship and Fun</strong><br />Football is about building friendships and creating memories. We prioritize camaraderie and enjoyment, believing that a positive and fun atmosphere leads to better performance and a more fulfilling experience.</p>\n<p>FC Bigfoot is more than a club—we are a community built on shared values. Trust, respect, openness, sharing, friendship, and fun define us. Join us at FC Bigfoot, where values matter and every member is celebrated.</p>',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,3,NULL),
(21,1,1744014582,1744014582,0,0,0,0,'',32,'',0,0,0,0,NULL,'{\"fcbigfoot_teaser\":\"\"}',0,0,0,0,'default',0,NULL,'teaser_group',0,0,'','',0,'Our events ',2,'','','','',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,4,4,NULL),
(22,1,1744014582,1744014582,0,0,0,0,'',16,'',0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Your City. Your Club.',2,'','','','<p>With 21 teams, we are once again one of the largest clubs in Fuerteventura this season! We have three senior teams in each age group and at least two youth teams in each age group. In total, we have almost 900 members. We would like to thank everyone who has supported us so actively this season.</p>',1,1,0,0,26,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,5,NULL),
(23,1,1744014582,1744014582,0,0,0,0,'',8,'',0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'default',0,NULL,'news_teaser',0,0,'','',0,'News',2,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,6,NULL),
(24,1,1744014582,1744014582,0,0,0,0,'',4,'',0,0,0,0,NULL,'{\"fcbigfoot_file_link\":\"\"}',0,0,0,0,'default',2,NULL,'game_results',0,0,'','',0,'Game Results',2,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','file:13','','',0,0,0,7,NULL),
(25,1,1744014582,1744014582,0,0,0,0,'',2,'',0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'default',2,NULL,'textpic',0,0,'','',0,'Our latest Game Results',2,'','','','',0,0,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,8,NULL),
(26,1,1744014582,1744014582,0,0,0,0,'',1,'',0,0,0,0,NULL,'{\"fcbigfoot_button_link\":\"\"}',0,0,0,0,'default',1,NULL,'hero',0,0,'','',0,'FC Bigfoot Fuerteventura',1,'','','23 years of passion and dedication',NULL,1,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','Join today','9',0,0,0,9,NULL),
(27,95,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Runs everywhere',2,'center','','','<p class=\"text-center\">You can install TYPO3 by downloading <a href=\"https://get.typo3.org/\">with or without&nbsp;composer</a>. Putting it on a web server or on a cloud service like Microsoft Azure or Amazon AWS&nbsp;is simple - due to proper separation of content, configuration and other assets like caches and temporary files.&nbsp;Use any database you like&nbsp;MySQL/MariaDB, postgreSQL, SQL Server or SQLite - due to the underlying database abstraction.</p>\n<p class=\"text-center\"><a class=\"btn btn-secondary\" href=\"https://docs.typo3.org/Home/GettingStarted.html\">Read TYPO3 Install Guide</a></p>',0,0,0,0,25,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,1,NULL),
(28,95,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'image',0,0,'','',0,'TYPO3 Book with Backend Screen',100,'center','','',NULL,1,0,0,0,0,0,1,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,2,NULL),
(29,95,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'{\"colPos\":null,\"sys_language_uid\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Full Responsive Backend',2,'center','','','<p class=\"lead text-center\">The administration interface, called TYPO3 Backend, can be managed from any modern web browser, including tablets and smart phones the same way. Publishing a&nbsp;small change&nbsp;on-the-go or working with tablet devices to add content has never been easier.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,3,NULL),
(30,95,1747689602,1744015096,1,0,0,0,'',32,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_card_group_item\":\"\"}',0,0,0,0,'default',0,NULL,'card_group',0,0,'','',0,'A few feature highlights in TYPO3 core',100,'center','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,4,NULL),
(31,95,1747689602,1744015096,1,0,0,0,'',16,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'image',0,0,'','',0,'Feature Complete Out-of-the-box',100,'center','','','',1,0,0,0,8,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,5,NULL),
(32,95,1747689602,1744015096,1,0,0,0,'',8,'',0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Highlights',100,'center','','','<p class=\"lead text-center\">A single TYPO3 CMS installation can easily power hundreds of websites in many dozens of languages. Need more functionality? No problem! More than 1,500 open source extensions are available via Packagist and TYPO3 Extension Repository (TER).</p>',0,0,0,0,8,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,6,NULL),
(33,95,1747689602,1744015096,1,0,0,0,'',4,NULL,0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',9,NULL,'text',0,0,'','',0,'Reliable Upgrade Paths',0,'','','','<p>From its inception TYPO3 has emphasized the importance of stable APIs and full&nbsp;backwards-compatibility.&nbsp; The TYPO3 core team follows a regular release schedule and take great care to ensure easy, non-breaking updates.</p>\n<p><a class=\"btn btn-primary\" href=\"https://typo3.org/typo3-cms/roadmap/\" target=\"_blank\">TYPO3 CMS Roadmap</a></p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,7,NULL),
(34,95,1747689602,1744015096,1,0,0,0,'',2,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_carousel_item\":\"\"}',0,0,0,0,'none',3,NULL,'carousel_small',0,0,'','',0,'',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"interval\">\n                    <value index=\"vDEF\">5000</value>\n                </field>\n                <field index=\"transition\">\n                    <value index=\"vDEF\">fade</value>\n                </field>\n                <field index=\"wrap\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"show_nav_title\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,8,NULL),
(35,94,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Fluid: Next Generation Templating',2,'','','','<p class=\"lead\">Fluid - TYPO3\'s next generation templating engine - is used for creating custom extension templates.</p>\n<p>Fluid\'s approach to creating templates emphasizes simplicity, flexibility, extensibility, and easy of use. The syntax is XML-based and can be used in any Web IDE. With its ViewHelpers, Fluid can be extended by powerful functionality that fits custom web project needs.</p>',1,0,0,0,126,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,9,NULL),
(36,94,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Add functionality to the core system',2,'','','','<p>There are more than 1,500 extensions available in the TYPO3 Extension Repository (TER) on TYPO3.org for you to browse and assess according to your needs. Download and install them directly with the TYPO3 backend Extension Manager. And TYPO3 is open source! You and your developers (or <a href=\"https://typo3.com/services/find-a-typo3-partner/\">your TYPO3 service provider</a>) can also create new, custom extensions to meet your specialised needs.</p>\n<ul class=\"list-inline\"><li><a class=\"btn btn-secondary\" href=\"https://packagist.org/explore/?type=typo3-cms-extension\">Packagist</a></li><li><a class=\"btn btn-primary\" href=\"https://extensions.typo3.org/\">TYPO3 Extension Repository</a></li></ul>',1,0,0,0,125,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,10,NULL),
(37,94,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',1,0,'','',0,'Incredible flexible',100,'center','','','<p class=\"lead text-center\">Whether you need a blog, feedback forms, an online shop, integrations with external web services, calendars, and much more ... extensions give you a wide range of flexibility to go beyond core functionality, growing your site hand-in-hand as your business and site grow. They are the ideal building block for creating complex online solutions.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,11,NULL),
(38,94,1747689602,1744015096,1,0,0,0,'',32,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_carousel_item\":\"\"}',0,0,0,0,'none',3,NULL,'carousel_small',0,0,'','',0,'',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"interval\">\n                    <value index=\"vDEF\">5000</value>\n                </field>\n                <field index=\"transition\">\n                    <value index=\"vDEF\">fade</value>\n                </field>\n                <field index=\"wrap\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"show_nav_title\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,12,NULL),
(39,94,1747689602,1744015096,1,0,0,0,'',16,NULL,0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',9,NULL,'text',0,0,'','',0,'Extensive Configuration Options',2,'','','','<p>Every aspect of the TYPO3 backend is configurable and customizable. Backend interfaces can be configured using TSConfig. Rendered HTML content can be configured using TypoScript or Fluid,&nbsp;a standalone template engine.&nbsp;Checkout our documentation linked below.</p>\n<ul class=\"list-inline\"> 	<li class=\"text-left\"><a class=\"btn btn-primary\" href=\"https://github.com/TYPO3/Fluid/tree/master/doc\" target=\"_blank\">Fluid</a></li> 	<li class=\"text-center\"><a class=\"btn btn-primary\" href=\"https://docs.typo3.org/typo3cms/TyposcriptReference/\" target=\"_blank\">TypoScript</a></li> 	<li class=\"text-center\"><a class=\"btn btn-primary\" href=\"https://docs.typo3.org/typo3cms/TSconfigReference/\" target=\"_blank\">TSConfig</a></li> 	<li class=\"text-center\"><a class=\"btn btn-primary\" href=\"https://docs.typo3.org/typo3cms/TCAReference/\" target=\"_blank\">TCA</a></li> 	<li class=\"text-center\"><a class=\"btn btn-primary\" href=\"https://docs.typo3.org/typo3cms/CoreApiReference/\" target=\"_blank\">Core API</a></li> </ul>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,13,NULL),
(40,93,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'none',3,NULL,'html',0,0,'','',0,'',0,'','','','',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,14,NULL),
(41,80,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Ready to create your own Template?',3,'center','','','<p class=\"text-center\">Checkout our documentation on SitePackages with a ste by step tutorial for turning a basic design template (HTML, CSS, JavaScript files, etc.) into a fully working, mobile-responsive website powered by TYPO3.</p>\n<p class=\"text-center\"><a class=\"btn btn-primary\" href=\"https://docs.typo3.org/typo3cms/SitePackageTutorial/Index.html\" target=\"_blank\">SitePackage Tutorial</a></p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,15,NULL),
(42,80,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_card_dir',0,0,'','',0,'Page Layouts provided by the Bootstrap Package',3,'center','','',NULL,0,0,0,0,0,0,0,2,'80',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,16,NULL),
(43,80,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Page Layouts',100,'center','','','<p class=\"lead text-center\">TYPO3 offers the flexibility to use ready-made page layouts to have full control over the output of your content and to enable consistency. Templates are reusable and can be inherited to subpages if desired. Every website has different requirements, TYPO3 makes it possible to provide your own layouts and combine them with new designs.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,17,NULL),
(44,80,1747689602,1744015096,1,0,0,0,'',32,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_carousel_item\":\"\"}',0,0,0,0,'none',3,NULL,'carousel_small',0,0,'','',0,'',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"interval\">\n                    <value index=\"vDEF\">5000</value>\n                </field>\n                <field index=\"transition\">\n                    <value index=\"vDEF\">fade</value>\n                </field>\n                <field index=\"wrap\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"show_nav_title\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,18,NULL),
(45,79,1747689602,1744015096,1,0,0,0,'',768,'',0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Address',0,'','','','<p><strong>John Doe</strong></p>\n<p>Street&nbsp;<br />Zip &amp; City</p>\n<p>+49 1234 456-7890</p>\n<p>+49 1234 456-7891</p>\n<p>john.doe@example.com</p>\n<p>www.example.com</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,19,NULL),
(46,79,1747689602,1744015096,1,0,0,0,'',640,'',0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_color_class\":null,\"background_image\":null,\"background_image_options\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Tables',4,'','','','<table class=\"table table-bordered table-hover\"> 	<thead> 		<tr> 			<th>#</th> 			<th>FirstName</th> 			<th>LastName</th> 			<th>Username</th> 		</tr> 	</thead> 	<tbody> 		<tr class=\"success\"> 			<td>1</td> 			<td>Benjamin</td> 			<td>Kott</td> 			<td>@benjaminkott</td> 		</tr> 		<tr> 			<td>2</td> 			<td>John</td> 			<td>Doe</td> 			<td>-</td> 		</tr> 		<tr> 			<td>3</td> 			<td>Larry</td> 			<td>the Bird</td> 			<td>@twitter</td> 		</tr> 	</tbody> </table>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,20,NULL),
(47,79,1747689602,1744015096,1,0,0,0,'',576,NULL,0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Links',3,'','','','<p>You can insert <a class=\"link-page\" href=\"65\">internal links</a> (links to pages within the website), <a class=\"link-external\" href=\"http://typo3.org\">external links</a> (links to external sites) or <a class=\"link-mail\" href=\"test@test.net\">e-mail links</a> (links that open the user\'s email client when clicked).</p>\n<p>Additional link stylings:</p>\n<ul> 	<li><a class=\"link-arrow\" href=\"65\">Arrow</a></li> 	<li><a class=\"link-page\" href=\"65\">Page</a></li> 	<li><a class=\"link-file\" href=\"file:1\">File</a></li> 	<li><a class=\"link-folder\" href=\"t3://folder?storage=1&amp;identifier=%2Fintroduction%2Fimages%2F\">Folder</a></li> 	<li><a class=\"link-mail\" href=\"john.doe@example.com\">E-Mail&nbsp;</a></li> </ul>',0,0,0,0,0,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,21,NULL),
(48,79,1747689602,1744015096,1,0,0,0,'',544,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"bodytext\":null,\"rte_enabled\":null,\"layout\":null,\"spaceBefore\":null,\"spaceAfter\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"linkToTop\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Lists',3,'','','','<span style=\"line-height: 1.428571429;\">Bulleted list:</span>\n<ul><li>first level</li><li>first level<ul><li>second level</li><li>second level<ul><li>third level</li><li>third level</li></ul></li></ul></li></ul>\n<strong>Ordered list:</strong>\n<ol><li>first level</li><li>first level<ol><li>second level</li><li>second level<ol><li>third level</li><li>third level</li></ol></li></ol></li></ol>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,22,NULL),
(49,79,1747689602,1744015096,1,0,0,0,'',528,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"bodytext\":null,\"rte_enabled\":null,\"layout\":null,\"spaceBefore\":null,\"spaceAfter\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"linkToTop\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Blockquote',3,'','','','Aenean ante elit, elementum et, varius ut, condimentum ut, sem. Aenean ante neque, imperdiet sed, ultricies vitae, aliquam dictum, arcu. Aenean arcu est, semper vitae, euismod quis, vehicula eu, risus.\n<blockquote>Aenean ante elit, elementum et, varius ut, condimentum ut, sem. Aenean ante neque, imperdiet sed, ultricies vitae, aliquam dictum, arcu. Aenean arcu est, semper vitae, euismod quis, vehicula eu, risus.</blockquote>\nAenean ante elit, elementum et, varius ut, condimentum ut, sem. Aenean ante neque, imperdiet sed, ultricies vitae, aliquam dictum, arcu. Aenean arcu est, semper vitae, euismod quis, vehicula eu, risus.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,23,NULL),
(50,79,1747689602,1744015096,1,0,0,0,'',520,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"bodytext\":null,\"rte_enabled\":null,\"layout\":null,\"spaceBefore\":null,\"spaceAfter\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"linkToTop\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Examples of Rich Text Content Elements ',2,'','','','<strong>Continuous text:</strong> text, optional in <strong>bold</strong> or <em>italic</em> or in a combination of<em><strong> bold and italic</strong></em>. \n<strong>Special characters can be used</strong>: @ © ® ¢ ¼ ½ ¾ § ± a² m³ Ω π µ γ β α H<sub>2</sub>O\n<strong>Texts in foreign languages can be mixed on one page. </strong><br />The font has to be installed on the device though:\ncyrillic: Русская версия <br />chinese: 中文版<br />arabic: <span lang=\"ar\" xml:lang=\"ar\">الْعَرَبيّة</span> \n<p class=\"text-center\">Centered text</p>\n<p class=\"text-right\">Text justified right</p>',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,24,NULL),
(51,79,1747689602,1744015096,1,0,0,0,'',516,'',0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Contextual Styling',0,'','','','<ul class=\"list-inline\"> 	<li><span class=\"text-muted\">Muted</span></li> 	<li><span class=\"text-primary\"><a href=\"64\">Primary</a></span></li> 	<li><span class=\"text-secondary\">Secondary</span></li> 	<li><span class=\"text-info\">Info</span></li> 	<li><span class=\"text-warning\">Warning</span></li> 	<li><span class=\"text-success\">Success</span></li> 	<li><span class=\"text-danger\">Danger</span></li> </ul>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,25,NULL),
(52,79,1747689602,1744015096,1,0,0,0,'',514,'',0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Buttons',0,'','','','<ul class=\"list-inline\"> 	<li><a class=\"btn btn-default\" href=\"64\">Default</a></li> 	<li><a class=\"btn btn-primary\" href=\"64\">Primary</a></li> 	<li><a class=\"btn btn-secondary\" href=\"64\">Secondary</a></li> 	<li><a class=\"btn btn-info\" href=\"64\">Info</a></li> 	<li><a class=\"btn btn-warning\" href=\"64\">Warning</a></li> 	<li><a class=\"btn btn-success\" href=\"64\">Success</a></li> 	<li><a class=\"btn btn-danger\" href=\"64\">Danger</a></li> </ul>\n<ul class=\"list-inline\"> 	<li><a class=\"btn btn-outline-default\" href=\"64\">Default</a></li> 	<li><a class=\"btn btn-outline-primary\" href=\"64\">Primary</a></li> 	<li><a class=\"btn btn-outline-secondary\" href=\"64\">Secondary</a></li> 	<li><a class=\"btn btn-outline-info\" href=\"64\">Info</a></li> 	<li><a class=\"btn btn-outline-warning\" href=\"64\">Warning</a></li> 	<li><a class=\"btn btn-outline-success\" href=\"64\">Success</a></li> 	<li><a class=\"btn btn-outline-danger\" href=\"64\">Danger</a></li> </ul>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,26,NULL),
(53,79,1747689602,1744015096,1,0,0,0,'',513,'',0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_color_class\":null,\"background_image\":null,\"background_image_options\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Indented Blocks',0,'','','','<p>Curabitur nisi. Ut tincidunt tincidunt erat. Nullam sagittis. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Sed fringilla mauris sit amet nibh.</p>\n<div class=\"text-indent\"><p>Phasellus dolor. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Donec vitae sapien ut libero venenatis faucibus. In hac habitasse platea dictumst. Ut non enim eleifend felis pretium feugiat.Phasellus a est. Vestibulum volutpat pretium libero. Duis leo. Cras non dolor. Nullam dictum felis eu pede mollis pretium.</p></div>\n<p>Integer tincidunt. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Phasellus accumsan cursus velit. Fusce fermentum. Nullam accumsan lorem in dui.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,27,NULL),
(54,79,1747689602,1744015096,1,0,0,0,'',512,'',0,0,0,0,NULL,'{\"colPos\":null,\"sys_language_uid\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Boxed Content',0,'','','','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.</p>\n<div class=\"well\"><p>Nullam cursus lacinia erat. In auctor lobortis lacus. Vivamus consectetuer hendrerit lacus. Pellentesque commodo eros a enim. Suspendisse feugiat.</p></div>\n<p>Praesent vestibulum dapibus nibh. Fusce fermentum. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,28,NULL),
(55,79,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Multicolumn',0,'','','','<div class=\"text-column\"><p>Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Etiam rhoncus. Vestibulum ullamcorper mauris at ligula. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Praesent porttitor, nulla vitae posuere iaculis, arcu nisl dignissim dolor, a pretium mi sem ut ipsum.Quisque id mi.&nbsp;Nullam quis ante.&nbsp; In ac felis quis tortor malesuada pretium.Nulla facilisi. Donec posuere vulputate arcu. Nunc nulla. Quisque ut nisi. Ut id nisl quis enim dignissim sagittis.Phasellus viverra nulla ut metus varius laoreet. Donec mi odio, faucibus at,&nbsp;</p></div>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,29,NULL),
(56,79,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'TYPO3\'s Built-in Rich Text Editor',1,'','','','<p class=\"lead\">TYPO3 ships with the CKEditor (<a href=\"http://ckeditor.com/\">ckeditor.com</a>) as there <strong><em>sophisticated</em></strong>&nbsp;built-in rich text editor (RTE).&nbsp;This editor contains all of the features one would expect from an Enterprise CMS, and is highly configurable and extendable to fit every project out there.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,30,NULL),
(57,78,1747689602,1744015096,1,0,0,0,'',1280,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 5. level (right-justified)',5,'right','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,31,NULL),
(58,78,1747689602,1744015096,1,0,0,0,'',1152,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 4. level (right-justified)',4,'right','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,32,NULL),
(59,78,1747689602,1744015096,1,0,0,0,'',1088,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 3. level (right-justified)',3,'right','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,33,NULL),
(60,78,1747689602,1744015096,1,0,0,0,'',1056,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 2. level (right-justified)',2,'right','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,34,NULL),
(61,78,1747689602,1744015096,1,0,0,0,'',1040,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 1. level (right-justified)',0,'right','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,35,NULL),
(62,78,1747689602,1744015096,1,0,0,0,'',1032,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 5. level (centered)',5,'center','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,36,NULL),
(63,78,1747689602,1744015096,1,0,0,0,'',1028,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 4. level (centered)',4,'center','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,37,NULL),
(64,78,1747689602,1744015096,1,0,0,0,'',1026,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 3. level (centered)',3,'center','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,38,NULL),
(65,78,1747689602,1744015096,1,0,0,0,'',1025,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 2. level (centered)',2,'center','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,39,NULL),
(66,78,1747689602,1744015096,1,0,0,0,'',1024,NULL,0,0,0,0,NULL,'{\"colPos\":null,\"sys_language_uid\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 1. level (centered)',0,'center','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,40,NULL),
(67,78,1747689602,1744015096,1,0,0,0,'',768,NULL,0,0,0,0,NULL,'{\"header_link\":\"\"}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 5. level (with link)',5,'','78','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,41,NULL),
(68,78,1747689602,1744015096,1,0,0,0,'',640,NULL,0,0,0,0,NULL,'{\"header_link\":\"\"}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 4. level (with link)',4,'','78','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,42,NULL),
(69,78,1747689602,1744015096,1,0,0,0,'',576,NULL,0,0,0,0,NULL,'{\"header_link\":\"\"}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 3. level (with link)',3,'','78','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,43,NULL),
(70,78,1747689602,1744015096,1,0,0,0,'',544,NULL,0,0,0,0,NULL,'{\"header_link\":\"\"}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 2 level (with link)',2,'','78','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,44,NULL),
(71,78,1747689602,1744015096,1,0,0,0,'',528,NULL,0,0,0,0,NULL,'{\"header_link\":\"\"}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 1. level (with link)',0,'','78','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,45,NULL),
(72,78,1747689602,1744015096,1,0,0,0,'',520,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 5 level',5,'','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,46,NULL),
(73,78,1747689602,1744015096,1,0,0,0,'',516,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 4. level',4,'','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,47,NULL),
(74,78,1747689602,1744015096,1,0,0,0,'',514,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 3. level',3,'','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,48,NULL),
(75,78,1747689602,1744015096,1,0,0,0,'',513,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 2. level',2,'','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,49,NULL),
(76,78,1747689602,1744015096,1,0,0,0,'',512,NULL,0,0,0,0,NULL,'{\"subheader\":null}',0,0,0,0,'default',0,NULL,'header',0,0,'','',0,'Header 1. level',0,'','','Subheader','',0,0,0,0,8,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,50,NULL),
(77,78,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"colPos\":null,\"sys_language_uid\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Full Control Over All Content Elements',1,'','','','<p class=\"lead\">TYPO3 offers editors full control over all content elements; even simple content elements like headers are accompanied by several configuration options. Site administrators may, for example, predefine several different header layouts for editors to utilize across the site.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,51,NULL),
(78,77,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bullets_type\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'bullets',0,0,'','',0,'Definition List',3,'','','','Vivamus condimentum|Nisl nec nibh ultricies dictum.\nCras porttitor|Neque vitae neque facilisis ultricies.\nCras vitae|Diam ut lectus finibus dapibus non nec est.\nSed laoreet|Odio non ipsum congue, id condimentum risus euismod.\nMauris sodales|Erat et venenatis consectetur.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',2,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,52,NULL),
(79,77,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'bullets',0,0,'','',0,'Ordered',3,'','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nMaecenas quis leo suscipit, volutpat felis eu, aliquet velit.\nPellentesque nec neque quis urna tristique pretium id sed justo.\nPhasellus consequat ligula in elit semper consectetur.\nQuisque porttitor arcu in neque pellentesque accumsan.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',1,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,53,NULL),
(80,77,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'bullets',0,0,'','',0,'Unordered',3,'','','','Quisque pulvinar dolor sed tempor porta.\nUt a erat rhoncus, vulputate ligula ut, tincidunt nisl.\nDuis id arcu vitae nibh ultricies faucibus.\nMorbi sit amet risus pulvinar, lacinia orci suscipit, tempor orci.\nNulla quis est nec mauris pellentesque hendrerit.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,54,NULL),
(81,77,1747689602,1744015096,1,0,0,0,'',32,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Multiple Layouts for Standard Content Types',1,'','','','<p class=\"lead\">Ordered and unordered lists are available in TYPO3&nbsp;as a standard content element.&nbsp;Users are able to create multiple&nbsp;predefined list layouts, which help to ensure site-wide visual consistency.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,55,NULL),
(82,76,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,56,NULL),
(83,76,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"teaser\":null,\"bodytext\":null,\"layout\":null,\"section_frame\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'textteaser',0,0,'','',0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',2,'','','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis nibh venenatis, finibus sapien id, fringilla dolor. Aenean euismod arcu nec enim feugiat maximus. Aenean mollis eros eget elementum vulputate. Mauris fringilla magna quis condimentum mattis. Proin quis lacus non elit mollis viverra sed vel orci. </p>\n<p>Aenean aliquam elit sit amet est efficitur, eget pharetra est sodales. Sed at nulla pellentesque felis maximus faucibus sit amet ut augue. Nunc blandit, ex at facilisis maximus, arcu tellus fringilla purus, non cursus nibh diam sit amet velit. Maecenas efficitur mauris accumsan, elementum urna sit amet, scelerisque orci. Aliquam pulvinar aliquet lectus, at volutpat elit convallis non. Nam eu leo nibh. Praesent a ligula at urna tempor molestie luctus in metus.</p>\n<p>Nam ac quam ac libero malesuada commodo ut ac eros. Fusce ullamcorper laoreet ligula. In augue urna, fermentum eu iaculis ut, tristique eget lacus. Ut nec gravida turpis. Nam id commodo nisi. Phasellus tortor ante, molestie sed nisl ac, tincidunt sagittis justo. Nunc non nibh non magna consectetur viverra a vitae lacus. Duis dignissim odio feugiat, ornare massa ut, molestie velit. Aliquam erat volutpat. Integer nisi ligula, placerat eu ex quis, dignissim gravida arcu. In nec consectetur lorem.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,57,NULL),
(84,76,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Text with Teaser',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,58,NULL),
(85,75,1747689602,1744015096,1,0,0,0,'',768,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,59,NULL),
(86,75,1747689602,1744015096,1,0,0,0,'',640,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"bodytext\":null,\"icon_position\":null,\"icon_type\":null,\"icon_size\":null,\"icon_color\":null,\"icon_background\":null,\"icon\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'texticon',0,0,'','',0,'Text and Icon - Left - Default - Default',1,'','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisi odio, lacinia ac rutrum vitae, consequat eget quam. Curabitur ornare ipsum fringilla quam cursus, at condimentum sapien commodo. Mauris ac sagittis neque. Ut est sem, venenatis eget velit vitae, pellentesque vehicula nunc. Aliquam risus magna, rutrum vel pharetra eget, luctus id arcu. Cras vitae nunc pulvinar, tristique ipsum vitae, elementum magna. Praesent blandit ante ac placerat tincidunt. Vestibulum et elit arcu. Mauris sit amet libero non risus feugiat mattis vitae ac metus.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,60,NULL),
(87,75,1747689602,1744015096,1,0,0,0,'',576,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"bodytext\":null,\"icon_position\":null,\"icon_type\":null,\"icon_size\":null,\"icon\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'texticon',0,0,'','',0,'Text and Icon - Left - Default - Awesome',1,'','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisi odio, lacinia ac rutrum vitae, consequat eget quam. Curabitur ornare ipsum fringilla quam cursus, at condimentum sapien commodo. Mauris ac sagittis neque. Ut est sem, venenatis eget velit vitae, pellentesque vehicula nunc. Aliquam risus magna, rutrum vel pharetra eget, luctus id arcu. Cras vitae nunc pulvinar, tristique ipsum vitae, elementum magna. Praesent blandit ante ac placerat tincidunt. Vestibulum et elit arcu. Mauris sit amet libero non risus feugiat mattis vitae ac metus.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,61,NULL),
(88,75,1747689602,1744015096,1,0,0,0,'',544,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"bodytext\":null,\"icon_position\":null,\"icon_type\":null,\"icon_size\":null,\"icon\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'texticon',0,0,'','',0,'Text and Icon - Left - Default - Large',1,'','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisi odio, lacinia ac rutrum vitae, consequat eget quam. Curabitur ornare ipsum fringilla quam cursus, at condimentum sapien commodo. Mauris ac sagittis neque. Ut est sem, venenatis eget velit vitae, pellentesque vehicula nunc. Aliquam risus magna, rutrum vel pharetra eget, luctus id arcu. Cras vitae nunc pulvinar, tristique ipsum vitae, elementum magna. Praesent blandit ante ac placerat tincidunt. Vestibulum et elit arcu. Mauris sit amet libero non risus feugiat mattis vitae ac metus.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,62,NULL),
(89,75,1747689602,1744015096,1,0,0,0,'',528,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"bodytext\":null,\"icon_position\":null,\"icon_type\":null,\"icon_size\":null,\"icon\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'texticon',0,0,'','',0,'Text and Icon - Left - Default - Medium',1,'','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisi odio, lacinia ac rutrum vitae, consequat eget quam. Curabitur ornare ipsum fringilla quam cursus, at condimentum sapien commodo. Mauris ac sagittis neque. Ut est sem, venenatis eget velit vitae, pellentesque vehicula nunc. Aliquam risus magna, rutrum vel pharetra eget, luctus id arcu. Cras vitae nunc pulvinar, tristique ipsum vitae, elementum magna. Praesent blandit ante ac placerat tincidunt. Vestibulum et elit arcu. Mauris sit amet libero non risus feugiat mattis vitae ac metus.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,63,NULL),
(90,75,1747689602,1744015096,1,0,0,0,'',520,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"bodytext\":null,\"icon_position\":null,\"icon_type\":null,\"icon_size\":null,\"icon_color\":null,\"icon_background\":null,\"icon\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'texticon',0,0,'','',0,'Text and Icon - Left - Circle - Default',1,'','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisi odio, lacinia ac rutrum vitae, consequat eget quam. Curabitur ornare ipsum fringilla quam cursus, at condimentum sapien commodo. Mauris ac sagittis neque. Ut est sem, venenatis eget velit vitae, pellentesque vehicula nunc. Aliquam risus magna, rutrum vel pharetra eget, luctus id arcu. Cras vitae nunc pulvinar, tristique ipsum vitae, elementum magna. Praesent blandit ante ac placerat tincidunt. Vestibulum et elit arcu. Mauris sit amet libero non risus feugiat mattis vitae ac metus.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,64,NULL),
(91,75,1747689602,1744015096,1,0,0,0,'',516,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"bodytext\":null,\"icon_position\":null,\"icon_type\":null,\"icon_size\":null,\"icon_color\":null,\"icon_background\":null,\"icon\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'texticon',0,0,'','',0,'Text and Icon - Left - Square - Default',1,'','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisi odio, lacinia ac rutrum vitae, consequat eget quam. Curabitur ornare ipsum fringilla quam cursus, at condimentum sapien commodo. Mauris ac sagittis neque. Ut est sem, venenatis eget velit vitae, pellentesque vehicula nunc. Aliquam risus magna, rutrum vel pharetra eget, luctus id arcu. Cras vitae nunc pulvinar, tristique ipsum vitae, elementum magna. Praesent blandit ante ac placerat tincidunt. Vestibulum et elit arcu. Mauris sit amet libero non risus feugiat mattis vitae ac metus.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,65,NULL),
(92,75,1747689602,1744015096,1,0,0,0,'',514,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"bodytext\":null,\"icon_position\":null,\"icon_type\":null,\"icon_size\":null,\"icon\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'texticon',0,0,'','',0,'Text and Icon - Top - Default - Default',1,'','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisi odio, lacinia ac rutrum vitae, consequat eget quam. Curabitur ornare ipsum fringilla quam cursus, at condimentum sapien commodo. Mauris ac sagittis neque. Ut est sem, venenatis eget velit vitae, pellentesque vehicula nunc. Aliquam risus magna, rutrum vel pharetra eget, luctus id arcu. Cras vitae nunc pulvinar, tristique ipsum vitae, elementum magna. Praesent blandit ante ac placerat tincidunt. Vestibulum et elit arcu. Mauris sit amet libero non risus feugiat mattis vitae ac metus.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,66,NULL),
(93,75,1747689602,1744015096,1,0,0,0,'',513,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"bodytext\":null,\"icon_position\":null,\"icon_type\":null,\"icon_size\":null,\"icon\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'texticon',0,0,'','',0,'Text and Icon - Right - Default - Default',1,'','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisi odio, lacinia ac rutrum vitae, consequat eget quam. Curabitur ornare ipsum fringilla quam cursus, at condimentum sapien commodo. Mauris ac sagittis neque. Ut est sem, venenatis eget velit vitae, pellentesque vehicula nunc. Aliquam risus magna, rutrum vel pharetra eget, luctus id arcu. Cras vitae nunc pulvinar, tristique ipsum vitae, elementum magna. Praesent blandit ante ac placerat tincidunt. Vestibulum et elit arcu. Mauris sit amet libero non risus feugiat mattis vitae ac metus.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,67,NULL),
(94,75,1747689602,1744015096,1,0,0,0,'',512,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"bodytext\":null,\"icon_position\":null,\"icon_type\":null,\"icon_size\":null,\"icon\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'texticon',0,0,'','',0,'Text and Icon - Left - Default - Default',1,'','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisi odio, lacinia ac rutrum vitae, consequat eget quam. Curabitur ornare ipsum fringilla quam cursus, at condimentum sapien commodo. Mauris ac sagittis neque. Ut est sem, venenatis eget velit vitae, pellentesque vehicula nunc. Aliquam risus magna, rutrum vel pharetra eget, luctus id arcu. Cras vitae nunc pulvinar, tristique ipsum vitae, elementum magna. Praesent blandit ante ac placerat tincidunt. Vestibulum et elit arcu. Mauris sit amet libero non risus feugiat mattis vitae ac metus.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,68,NULL),
(95,75,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"colPos\":null,\"sys_language_uid\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Text and Icon',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,69,NULL),
(96,74,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,70,NULL),
(97,74,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"bodytext\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'textcolumn',0,0,'','',0,'Phasellus pellentesque malesuada nibh',1,'','','Proin quis nibh venenatis, finibus sapien id, fringilla dolor.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis nibh venenatis, finibus sapien id, fringilla dolor. Aenean euismod arcu nec enim feugiat maximus. Aenean mollis eros eget elementum vulputate. Mauris fringilla magna quis condimentum mattis. Proin quis lacus non elit mollis viverra sed vel orci. Aenean aliquam elit sit amet est efficitur, eget pharetra est sodales. Sed at nulla pellentesque felis maximus faucibus sit amet ut augue. Nunc blandit, ex at facilisis maximus, arcu tellus fringilla purus, non cursus nibh diam sit amet velit. Maecenas efficitur mauris accumsan, elementum urna sit amet, scelerisque orci. Aliquam pulvinar aliquet lectus, at volutpat elit convallis non. Nam eu leo nibh. Praesent a ligula at urna tempor molestie luctus in metus.\nNam ac quam ac libero malesuada commodo ut ac eros. Fusce ullamcorper laoreet ligula. In augue urna, fermentum eu iaculis ut, tristique eget lacus. Ut nec gravida turpis. Nam id commodo nisi. Phasellus tortor ante, molestie sed nisl ac, tincidunt sagittis justo. Nunc non nibh non magna consectetur viverra a vitae lacus. Duis dignissim odio feugiat, ornare massa ut, molestie velit. Aliquam erat volutpat. Integer nisi ligula, placerat eu ex quis, dignissim gravida arcu. In nec consectetur lorem. Aliquam sit amet risus tellus. Vivamus pellentesque, velit et fermentum dignissim, orci augue rhoncus ligula, ut sodales sem nulla vel nibh. Praesent ac risus tellus. Integer placerat efficitur elit, ut malesuada purus posuere non. Morbi sed dolor et ante sodales varius eget sed eros.\nMauris id ipsum ut felis porttitor euismod. Morbi non venenatis augue. Vivamus euismod vehicula arcu. Morbi et sem nisl. Praesent non quam non massa aliquet ultricies gravida vel nisl. Pellentesque ultrices sem vel dui facilisis, ac porta orci elementum. Fusce cursus, velit auctor scelerisque iaculis, ipsum risus luctus est, non fringilla nisi mi et mauris. Quisque ac urna condimentum, pretium augue porta, laoreet nisl. Sed a neque egestas leo pretium malesuada. Sed sollicitudin ornare leo sed elementum.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,71,NULL),
(98,74,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Text in Columns',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,72,NULL),
(99,73,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,73,NULL),
(100,73,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'listgroup',0,0,'','',0,'List Group Example',100,'','','','Lorem ipsum dolor sit amet, consectetur adipiscing elit\nMaecenas blandit mauris vitae vehicula volutpat\nDuis feugiat risus efficitur ligula condimentum tempus\nCurabitur eget quam in ipsum tincidunt pulvinar ut a eros\nNam placerat erat sit amet euismod fermentum',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,74,NULL),
(101,73,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','medium',0,'List Group',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,75,NULL),
(102,72,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'default',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,76,NULL),
(103,72,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'panel',0,0,'','',0,'Panel - Danger',1,'','','','Sed semper orci non elementum condimentum. Fusce at urna consectetur, sodales dolor accumsan, convallis neque. Mauris varius urna vel facilisis laoreet. Nulla cursus consequat vehicula. Donec dignissim, augue sit amet dapibus interdum, odio eros laoreet mi, id egestas dui felis eget tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque lobortis efficitur finibus. Nulla facilisi. ',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,77,NULL),
(104,72,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'panel',0,0,'','',0,'Panel - Warning',1,'','','','Sed semper orci non elementum condimentum. Fusce at urna consectetur, sodales dolor accumsan, convallis neque. Mauris varius urna vel facilisis laoreet. Nulla cursus consequat vehicula. Donec dignissim, augue sit amet dapibus interdum, odio eros laoreet mi, id egestas dui felis eget tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque lobortis efficitur finibus. Nulla facilisi. ',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,78,NULL),
(105,72,1747689602,1744015096,1,0,0,0,'',32,NULL,0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'panel',0,0,'','',0,'Panel - Info',1,'','','','Sed semper orci non elementum condimentum. Fusce at urna consectetur, sodales dolor accumsan, convallis neque. Mauris varius urna vel facilisis laoreet. Nulla cursus consequat vehicula. Donec dignissim, augue sit amet dapibus interdum, odio eros laoreet mi, id egestas dui felis eget tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque lobortis efficitur finibus. Nulla facilisi. ',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,79,NULL),
(106,72,1747689602,1744015096,1,0,0,0,'',16,NULL,0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'panel',0,0,'','',0,'Panel - Success',1,'','','','Sed semper orci non elementum condimentum. Fusce at urna consectetur, sodales dolor accumsan, convallis neque. Mauris varius urna vel facilisis laoreet. Nulla cursus consequat vehicula. Donec dignissim, augue sit amet dapibus interdum, odio eros laoreet mi, id egestas dui felis eget tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque lobortis efficitur finibus. Nulla facilisi. ',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,80,NULL),
(107,72,1747689602,1744015096,1,0,0,0,'',8,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"header_layout\":null,\"bodytext\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'panel',0,0,'','',0,'Panel - Primary',1,'','','','Sed semper orci non elementum condimentum. Fusce at urna consectetur, sodales dolor accumsan, convallis neque. Mauris varius urna vel facilisis laoreet. Nulla cursus consequat vehicula. Donec dignissim, augue sit amet dapibus interdum, odio eros laoreet mi, id egestas dui felis eget tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque lobortis efficitur finibus. Nulla facilisi. ',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,81,NULL),
(108,72,1747689602,1744015096,1,0,0,0,'',4,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"header_layout\":null,\"bodytext\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'panel',0,0,'','',0,'Panel - Default',1,'','','','Sed semper orci non elementum condimentum. Fusce at urna consectetur, sodales dolor accumsan, convallis neque. Mauris varius urna vel facilisis laoreet. Nulla cursus consequat vehicula. Donec dignissim, augue sit amet dapibus interdum, odio eros laoreet mi, id egestas dui felis eget tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque lobortis efficitur finibus. Nulla facilisi. ',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,82,NULL),
(109,72,1747689602,1744015096,1,0,0,0,'',2,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','medium',0,'Panel',1,'','','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,83,NULL),
(110,71,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,'Caption','table',0,0,'','',0,'Bordered',3,'','','','Title 1|Title 2|Title 3\nRow 1|Row 1|Row 1\nRow 2|Row 2|Row 2\nRow 3|Row 3|Row 3\nRow 4|Row 4|Row 4',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'bordered',124,0,1,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,84,NULL),
(111,71,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,'Caption','table',0,0,'','',0,'Striped rows',3,'','','','Title 1|Title 2|Title 3\nRow 1|Row 1|Row 1\nRow 2|Row 2|Row 2\nRow 3|Row 3|Row 3\nRow 4|Row 4|Row 4',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'striped',124,0,1,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,85,NULL),
(112,71,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"\",\"table_delimiter\":\"\",\"table_enclosure\":\"\",\"table_caption\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"cols\":\"\",\"table_class\":\"\",\"table_header_position\":\"\",\"table_tfoot\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,'','table',0,0,'','',0,'Basic',3,'','','','Title 1|Title 2|Title 3\nRow 1|Row 1|Row 1\nRow 2|Row 2|Row 2\nRow 3|Row 3|Row 3\nRow 4|Row 4|Row 4',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,1,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,86,NULL),
(113,71,1747689602,1744015096,1,0,0,0,'',32,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','medium',0,'Tables',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor tellus vitae accumsan. Nulla aliquam tristique velit, at bibendum eros sagittis ut. Maecenas tincidunt neque ac augue convallis luctus. Quisque nulla arcu, euismod et neque fermentum, sollicitudin vestibulum dolor. In eget leo tincidunt, volutpat urna eu, suscipit odio. Quisque placerat porttitor iaculis. Cras non adipiscing ligula. Aenean egestas nisi eget nisi ultricies, non feugiat lectus blandit. Pellentesque non quam arcu.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,87,NULL),
(114,70,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,88,NULL),
(115,70,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"quote_link\":\"\"}',0,0,0,0,'default',0,NULL,'quote',0,0,'','',0,'W3C HTML5 specification',0,'','','','The blockquote element represents a section that is quoted from another source.',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,89,NULL),
(116,70,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Quote',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,90,NULL),
(117,68,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,91,NULL),
(118,68,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"assets\":\"\"}',0,0,0,0,'default',0,NULL,'audio',0,0,'','',0,'Audio Example',100,'','','','\n',0,2,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,92,NULL),
(119,68,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Audio',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,93,NULL),
(120,67,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,94,NULL),
(121,67,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_card_group_item\":\"\"}',0,0,0,0,'default',0,NULL,'card_group',0,0,'','',0,'Cards in 4 Columns',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,95,NULL),
(122,67,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_card_group_item\":\"\"}',0,0,0,0,'default',0,NULL,'card_group',0,0,'','',0,'Cards in 3 Columns',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,96,NULL),
(123,67,1747689602,1744015096,1,0,0,0,'',32,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_card_group_item\":\"\"}',0,0,0,0,'default',0,NULL,'card_group',0,0,'','',0,'Cards in 2 Columns',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,97,NULL),
(124,67,1747689602,1744015096,1,0,0,0,'',16,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_card_group_item\":\"\"}',0,0,0,0,'default',0,NULL,'card_group',0,0,'','',0,'Card',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,98,NULL),
(125,67,1747689602,1744015096,1,0,0,0,'',8,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_color_class\":null,\"background_image\":null,\"background_image_options\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Card Group',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,99,NULL),
(126,66,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,100,NULL),
(127,66,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_icon_group_item\":\"\"}',0,0,0,0,'default',0,NULL,'icon_group',0,0,'','',0,'',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">center</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"icon_position\">\n                    <value index=\"vDEF\">left-center</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,101,NULL),
(128,66,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_icon_group_item\":\"\"}',0,0,0,0,'default',0,NULL,'icon_group',0,0,'','',0,'',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">center</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"icon_position\">\n                    <value index=\"vDEF\">left-center</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,102,NULL),
(129,66,1747689602,1744015096,1,0,0,0,'',32,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_icon_group_item\":\"\"}',0,0,0,0,'default',0,NULL,'icon_group',0,0,'','',0,'',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">center</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"icon_position\">\n                    <value index=\"vDEF\">left-center</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,103,NULL),
(130,66,1747689602,1744015096,1,0,0,0,'',16,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_color_class\":null,\"background_image\":null,\"background_image_options\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Icon Group',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,104,NULL),
(131,65,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'gallery',0,0,'','',0,'',0,'','','',NULL,6,0,0,0,0,0,1,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,105,NULL),
(132,64,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Position: Below',2,'','','','<p> Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. </p>\n<p>Hambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. </p>',1,0,0,0,8,0,0,1,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,106,NULL),
(133,64,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Position: Above',2,'','','','<p>Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna.</p>\n<p>Hambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor.</p>',1,0,0,0,0,0,0,1,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,107,NULL),
(134,64,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Position:  Beside text, right',2,'','','','<p> Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna. </p>\n<p>Hambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor. </p>',1,0,0,0,25,0,0,1,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,108,NULL),
(135,64,1747689602,1744015096,1,0,0,0,'',32,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',1458082800,'Position: Beside text, left',2,'','','','<p>Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna.</p>\n<p>Hambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor.</p>',1,0,0,0,26,0,0,1,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,109,NULL),
(136,64,1747689602,1744015096,1,0,0,0,'',16,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Easily Position Text and Images',1,'','','','<p class=\"lead\">TYPO3 makes working with text and images a snap. TYPO3\'s text with image content element gives editors precise control over captions, alternative text attributes and layout. TYPO3\'s core tools for manipulating images can automatically optimize image files uploaded by back-end editors to reduce file size and reduce the time required to load a page.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,110,NULL),
(137,63,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"assets\":\"\"}',0,0,0,0,'default',0,NULL,'textmedia',0,0,'','',0,'Position: Below',0,'','','','<p>Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna.</p>\n<p>Hambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor.</p>',0,1,0,0,8,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,111,NULL),
(138,63,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"assets\":\"\"}',0,0,0,0,'default',0,NULL,'textmedia',0,0,'','',0,'Position: Above',0,'','','','<p>Nam aliquam, lorem nec dapibus feugiat, ipsum quam laoreet arcu, sed ullamcorper augue augue vitae magna.</p>\n<p>Hambiam est lectus, interdum id, accumsan a, blandit quis, mauris placerat sit amet, nibh. Lacus lectus est mattis vel, pharetra sit amet. Nam laoreet, erat ac laoreet euismod, sapien felis pretium libero, semper euismod mauris metus quis tortor.</p>',0,1,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,112,NULL),
(139,63,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'{\"assets\":\"\"}',0,0,0,0,'default',0,NULL,'textmedia',0,0,'','',0,'Position: Beside text, right',0,'','','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et tortor tincidunt, condimentum risus non, ornare lacus. Ut suscipit pellentesque nulla a viverra. Nulla pretium tincidunt imperdiet. Donec mollis tortor vitae euismod tristique. Vivamus arcu dui, pharetra ac tortor in, posuere blandit sapien. Ut lacinia, sem a pulvinar vestibulum, enim mi ultrices ipsum, vel interdum mi odio sed nisi. Sed eleifend posuere dictum.</p>',0,1,0,0,25,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,113,NULL),
(140,63,1747689602,1744015096,1,0,0,0,'',32,'',0,0,0,0,NULL,'{\"assets\":\"\"}',0,0,0,0,'default',0,NULL,'textmedia',0,0,'','',0,'Position: Beside text, left',0,'','','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et tortor tincidunt, condimentum risus non, ornare lacus. Ut suscipit pellentesque nulla a viverra. Nulla pretium tincidunt imperdiet. Donec mollis tortor vitae euismod tristique. Vivamus arcu dui, pharetra ac tortor in, posuere blandit sapien. Ut lacinia, sem a pulvinar vestibulum, enim mi ultrices ipsum, vel interdum mi odio sed nisi. Sed eleifend posuere dictum.</p>\n<p>Vestibulum eu eros est. Sed nec turpis eu elit vestibulum sagittis nec nec massa. Etiam dignissim purus id magna facilisis facilisis. Nullam nisl mauris, vulputate et aliquam in, euismod at velit. Pellentesque sagittis bibendum justo, in congue lectus aliquam et.</p>',0,1,0,0,26,0,1,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,114,NULL),
(141,63,1747689602,1744015096,1,0,0,0,'',16,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Easily Position Text and Media',1,'','','','<p class=\"lead\">TYPO3 makes working with text and media a snap. TYPO3\'s text with media content element gives editors precise control over captions, alternative text attributes&nbsp;and layout. TYPO3\'s core tools for manipulating images can automatically optimize image files uploaded by back-end editors to reduce file size and reduce the time required to load a page.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,115,NULL),
(142,62,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"file_collections\":\"\"}',0,0,0,0,'default',0,NULL,'uploads',0,0,'','',0,'Download with preview, filesize and description',2,'','','','',0,0,0,0,0,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'1',1,'','','',1,2,0,'slider','','','',0,0,0,116,NULL),
(143,62,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"file_collections\":\"\"}',0,0,0,0,'default',0,NULL,'uploads',0,0,'','',0,'Download with icon, filesize and description',2,'','','','',0,0,0,0,0,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'1',1,'','','',1,1,0,'slider','','','',0,0,0,117,NULL),
(144,62,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"file_collections\":\"\"}',0,0,0,0,'default',0,NULL,'uploads',0,0,'','',0,'Download with icon and filesize',2,'','','','',0,0,0,0,0,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'1',1,'','','',0,1,0,'slider','','','',0,0,0,118,NULL),
(145,62,1747689602,1744015096,1,0,0,0,'',32,NULL,0,0,0,0,NULL,'{\"file_collections\":\"\"}',0,0,0,0,'default',0,NULL,'uploads',0,0,'','',0,'Download with icon, no filesize',2,'','','','',0,0,0,0,0,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'1',0,'','','',0,1,0,'slider','','','',0,0,0,119,NULL),
(146,62,1747689602,1744015096,1,0,0,0,'',16,NULL,0,0,0,0,NULL,'{\"file_collections\":\"\"}',0,0,0,0,'default',0,NULL,'uploads',0,0,'','',0,'Download no icon, no filesize',2,'','','','',0,0,0,0,0,0,0,0,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'1',0,'','','_blank',0,0,0,'slider','','','',0,0,0,120,NULL),
(147,62,1747689602,1744015096,1,0,0,0,'',8,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'File Downloads',1,'','','','<p class=\"lead\">Proin faucibus nisl posuere dui fringilla, et lobortis est dictum. Donec erat libero, auctor at ligula in, facilisis rhoncus nulla. Fusce tristique eget elit nec accumsan. Nulla tristique, orci tempor posuere imperdiet, quam ipsum fringilla enim, ac malesuada velit orci eget nisl.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,121,NULL),
(148,61,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'image',0,0,'','',0,'4 images in 2 columns, cropped to square',0,'','','','',4,0,0,0,0,0,1,2,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,122,NULL),
(149,61,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'image',0,0,'','',0,'6 Images in 3 Columns',0,'','','','',6,0,0,0,0,0,1,3,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,123,NULL),
(150,61,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Multiple Image Layout Options',1,'','','','<p class=\"lead\">TYPO3 provides users with numerous possibilities for laying out images on a page. The back-end interface provides users with easy control over image formats, sizes, widths and&nbsp;groupings.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,124,NULL),
(151,60,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,125,NULL),
(152,60,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"assets\":\"\"}',0,0,0,0,'default',0,NULL,'media',0,0,'','',0,'4 Videos in 2 Columns',0,'','','',NULL,0,4,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,126,NULL),
(153,60,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'{\"assets\":\"\"}',0,0,0,0,'default',0,NULL,'media',0,0,'','',0,'3 Videos in 3 Columns',0,'','','','\n',0,3,0,0,0,0,0,3,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,127,NULL),
(154,60,1747689602,1744015096,1,0,0,0,'',32,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Multiple Media Layout Options',1,'','','','<p class=\"lead\">TYPO3 provides users with numerous possibilities for laying out media on a page. The back-end interface provides users with easy control over image formats, sizes, widths and groupings.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,128,NULL),
(155,59,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,129,NULL),
(156,59,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"external_media_source\":null,\"external_media_ratio\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'external_media',0,0,'','',0,'External Media Example',100,'','','','',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,130,NULL),
(157,59,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'External Media',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,131,NULL),
(158,57,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,132,NULL),
(159,57,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_accordion_item\":\"\"}',0,0,0,0,'default',0,NULL,'accordion',0,0,'','',0,'Accordion Example',100,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,133,NULL),
(160,57,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Accordions',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,134,NULL),
(161,56,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,135,NULL),
(162,56,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_carousel_item\":\"\"}',0,0,0,0,'default',0,NULL,'carousel_small',0,0,'','',0,'Carousel Example',100,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"interval\">\n                    <value index=\"vDEF\">5000</value>\n                </field>\n                <field index=\"transition\">\n                    <value index=\"vDEF\">fade</value>\n                </field>\n                <field index=\"wrap\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"show_nav_title\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,136,NULL),
(163,56,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Carousel',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,137,NULL),
(164,55,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,138,NULL),
(165,55,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_tab_item\":\"\"}',0,0,0,0,'default',0,NULL,'tab',0,0,'','',0,'Tab Example',100,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,139,NULL),
(166,55,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Tab',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,140,NULL),
(167,54,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,141,NULL),
(168,54,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_timeline_item\":\"\"}',0,0,0,0,'default',0,NULL,'timeline',0,0,'','',0,'Milestones',0,'center','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"sorting\">\n                    <value index=\"vDEF\">date desc</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,142,NULL),
(169,54,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Timeline',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,143,NULL),
(170,52,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'panel',0,0,'','',0,'Data Processing',0,'','','','<p>If you want an email to be sent, the form must be customized and an email finisher must be added. The demo settings only refer to this page without processing the entered data in any way.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,144,NULL),
(171,52,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Thank you!',0,'','','','<p>We look forward to hearing from you and will contact you as soon as possible.</p>\n<p><a class=\"btn btn-primary\" href=\"39\">Back to contact form</a></p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,145,NULL),
(172,51,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'default',0,NULL,'form_formframework',0,0,'','',0,'Contactform',100,'','','','',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\">EXT:introduction/Resources/Private/Forms/introduction-contact-form.form.yaml</value>\n                </field>\n                <field index=\"settings.overrideFinishers\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"b7420c8d88a2286ea9e4ca38790f1600\">\n            <language index=\"lDEF\">\n                <field index=\"settings.finishers.Redirect.pageUid\">\n                    <value index=\"vDEF\">pages_105</value>\n                </field>\n                <field index=\"settings.finishers.Redirect.additionalParameters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"54b64f2af042660e87d8b53726555def\">\n            <language index=\"lDEF\">\n                <field index=\"settings.finishers.Redirect.pageUid\">\n                    <value index=\"vDEF\">40</value>\n                </field>\n                <field index=\"settings.finishers.Redirect.additionalParameters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.finishers.Redirect.fragment\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,146,NULL),
(173,51,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"bodytext\":null,\"rte_enabled\":null,\"layout\":null,\"spaceBefore\":null,\"spaceAfter\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"linkToTop\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Powerful Form Handling',0,'','','','<p class=\"lead\">Setting up a contact or mail form is very easy. The layout of forms is handled centrally, which allows editors to focus on the content of the form.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,147,NULL),
(174,50,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'default',0,NULL,'felogin_login',0,0,'','',0,'',1,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"showForgotPassword\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showPermaLogin\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"showLogoutFormAfterLogin\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.showForgotPassword\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.showPermaLogin\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.showLogoutFormAfterLogin\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.pages\">\n                    <value index=\"vDEF\">16</value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_redirect\">\n            <language index=\"lDEF\">\n                <field index=\"redirectMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectFirstMethod\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"redirectPageLogin\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectPageLoginError\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectPageLogout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"redirectDisable\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.redirectMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectFirstMethod\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.redirectPageLogin\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectPageLoginError\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectPageLogout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectDisable\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_messages\">\n            <language index=\"lDEF\">\n                <field index=\"welcome_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"welcome_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"success_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"error_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"status_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"logout_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"forgot_reset_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.welcome_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.welcome_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.success_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.success_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.error_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.error_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.status_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.status_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.logout_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.logout_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.forgot_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.forgot_reset_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,148,NULL),
(175,49,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"list_type\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'list',0,0,'','',0,'Search',3,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'indexedsearch_pi2',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,149,NULL),
(176,49,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Indexed Search ',0,'','','','<p>TYPO3 ships with a ready to use search.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,150,NULL),
(177,47,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_abstract',0,0,'','',0,'Abstracts',0,'','','',NULL,0,0,0,0,0,0,0,2,'15',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,151,NULL),
(178,40,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,152,NULL),
(179,40,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_card_dir',0,0,'','',0,'4 Columns',2,'','','',NULL,0,0,0,0,0,0,0,2,'40',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,153,NULL),
(180,40,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_card_dir',0,0,'','',0,'3 Columns',2,'','','',NULL,0,0,0,0,0,0,0,2,'40',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,154,NULL),
(181,40,1747689602,1744015096,1,0,0,0,'',32,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_card_dir',0,0,'','',0,'2 Columns',2,'','','',NULL,0,0,0,0,0,0,0,2,'40',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,155,NULL),
(182,40,1747689602,1744015096,1,0,0,0,'',16,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_card_list',0,0,'','',0,'1 Column',0,'','','','\n',0,0,0,0,0,0,0,2,'46',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,156,NULL),
(183,40,1747689602,1744015096,1,0,0,0,'',8,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','medium',0,'Card Menu',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,157,NULL),
(184,39,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"selected_categories\":\"\"}',0,0,0,0,'default',0,NULL,'menu_categorized_content',0,0,'','',0,'Content elements for selected categories',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'1,2','categories',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,158,NULL),
(185,39,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"selected_categories\":\"\"}',0,0,0,0,'default',0,NULL,'menu_categorized_pages',0,0,'','',0,'Pages for selected categories',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'1,2','categories',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,159,NULL),
(186,38,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_subpages',0,0,'','',0,'Subpages',0,'','','',NULL,0,0,0,0,0,0,0,2,'20',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,160,NULL),
(187,38,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_pages',0,0,'','',0,'Menu of selected pages',0,'','','',NULL,0,0,0,0,0,0,0,2,'74,67',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,161,NULL),
(188,38,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"subheader\":null,\"header_layout\":null,\"header_position\":null,\"header_link\":null,\"bodytext\":null,\"layout\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"rowDescription\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Dynamic Site Maps',1,'','','','In addition to generating basic site maps based on the structure of the page tree, TYPO3 is able to build advanced site maps such as a key-word based site map of related pages. ',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,162,NULL),
(189,37,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_section_pages',0,0,'','',0,'Section index of subpages from selected pages',0,'','','',NULL,0,0,0,0,0,0,0,2,'20',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,163,NULL),
(190,37,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_section',0,0,'','',0,'Section index (page content marked for section menus)',0,'','','',NULL,0,0,0,0,0,0,0,2,'95,94',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,164,NULL),
(191,36,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_sitemap_pages',0,0,'','',0,'Sitemaps of selected pages',0,'','','',NULL,0,0,0,0,0,0,0,2,'20',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,165,NULL),
(192,36,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"pages\":null}',0,0,0,0,'default',0,NULL,'menu_sitemap',0,0,'','',0,'Sitemap',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,166,NULL),
(193,29,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Bootstrap Package Notice',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'244',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,167,NULL),
(194,29,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_thumbnail_dir',0,0,'','',0,'4 Columns',2,'','','Thumbnails of subpages',NULL,0,0,0,0,0,0,0,2,'29',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,168,NULL),
(195,29,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_thumbnail_dir',0,0,'','',0,'3 Columns',2,'','','Thumbnails of subpages',NULL,0,0,0,0,0,0,0,2,'29',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,169,NULL),
(196,29,1747689602,1744015096,1,0,0,0,'',32,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_thumbnail_dir',0,0,'','',0,'2 Columns',2,'','','Thumbnails of subpages',NULL,0,0,0,0,0,0,0,2,'29',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,170,NULL),
(197,29,1747689602,1744015096,1,0,0,0,'',16,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_thumbnail_list',0,0,'','',0,'1 Column',0,'','','Thumbnails','\n',0,0,0,0,0,0,0,2,'35,34',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,171,NULL),
(198,29,1747689602,1744015096,1,0,0,0,'',8,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','medium',0,'Thumbnail Menu',1,'','','','<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus turpis nisi, eleifend laoreet ipsum rutrum eu. Vivamus lorem tellus, fermentum eu vulputate vitae, facilisis ut metus.&nbsp;</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,172,NULL),
(199,27,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"records\":\"\"}',0,0,0,0,'none',0,NULL,'shortcut',0,0,'','',0,'Insert Records',1,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'80,112',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,173,NULL),
(200,27,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','medium',0,'Insert records',1,'','','','<p class=\"lead\">With the \"Record insert\" element you can easily (re-)use existing content elements different places. For instance like done below, here the content from some of the other example pages is shown.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,174,NULL),
(201,26,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',0,NULL,'html',0,0,'','',0,'Plain HTML',0,'','','','<h1>This content element shows various HTML elements</h1>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut et accumsan et iusto\n    odio dignissim qui blandit praesent luptatum zzril delenit Lorem ipsum dolor sit amet, volutpat. </p>\n<h2>This is 2nd level heading</h2>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut consectetuer adipiscing\n    elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>\n<h3>This is 3rd level heading</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut consectetuer adipiscing\n    elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>\n<h4>This is 4th level heading</h4>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut consectetuer adipiscing\n    elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>\n<h5>This is 5th level heading</h5>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut consectetuer adipiscing\n    elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>\n<h6>This is 6th level heading</h6>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut consectetuer adipiscing\n    elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>\n\n<h2>Basic block level elements</h2>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna\n    aliquam erat volutpat. Ut wisi enim zzril delenit Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam\n    nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n\n<address>This holds an address. Block level, but without margin or padding because they\'re often stacked.</address>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna\n    aliquam erat volutpat. Ut wisi enim zzril delenit Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam\n    nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n\n<div>This is a <code>div</code> element. Lorem ipsum dolor sit amet, elit, sed diam nonummy nibh euismod tincidunt ut consectetuer\n    adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. (End of <code>div</code>.)</div>\n\n<blockquote>\n    <p>This is a block quotation containing a <em>single</em> paragraph. Lorem ipsum dolor sit amet, consectetuer adipiscing\n        elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n</blockquote>\n\n\n<p>The following contains address information about the author, in an <code>address</code> element.\n</p>\n\n\n<h2>Lists</h2>\n\n<p>This is a paragraph before an <strong>unnumbered</strong> list (<code>ul</code>). Lorem ipsum dolor sit amet, consectetuer\n    adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n\n<ul>\n    <li>One.</li>\n    <li>Two.</li>\n    <li>Three. Well, probably this list item should be longer. Note that for short items lists look better if they are compactly\n        presented, whereas for long items, it would be better to have more vertical spacing between items.</li>\n    <li>Four. This is the last item in this list. Let us terminate the list now without making any more fuss about it.</li>\n</ul>\n\n<p>This is a paragraph before a <strong>numbered</strong> list (<code>ol</code>). Note that the spacing between a paragraph\n    and a list before or after that is hard to tune in a user style sheet. You can\'t guess which paragraphs are logically\n    related to a list, e.g. as a \"list header\".</p>\n\n<ol>\n    <li>One.</li>\n    <li>Two.</li>\n    <li>Three. Well, probably this list item should be longer. Note that if items are short, lists look better if they are compactly\n        presented, whereas for long items, it would be better to have more vertical spacing between items.</li>\n    <li>Four. This is the last item in this list. Let us terminate the list now without making any more fuss about it.</li>\n    <li>Five</li>\n    <li>Six</li>\n    <li>Seven</li>\n    <li>Eight</li>\n    <li>Nine</li>\n    <li>Ten</li>\n\n</ol>\n\n<p>This is a paragraph before a <strong>definition</strong> list (<code>dl</code>). In principle, such a list should consist\n    of <em>terms</em> and associated definitions. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\n    nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>\n<dl>\n    <dt>Apple</dt>\n    <dd>is a fruit.</dd>\n    <dt>Banana</dt>\n    <dd>Is also a fruit.</dd>\n    <dt>Tomato</dt>\n    <dd>Is debatable. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet\n        dolore magna aliquam erat volutpat.</dd>\n</dl>\n\n<h2>Text-level markup</h2>\n\n\n<ul>\n    <li> <abbr title=\"Cascading Style Sheets\">CSS</abbr> (an abbreviation;\n        <code>abbr</code> markup used)</li>\n    <li> <acronym title=\"radio detecting and ranging\">radar</acronym> (an acronym; <code>acronym</code> markup used)</li>\n\n    <li> <cite>Origin of Species</cite> (a book title; <code>cite</code> markup used)</li>\n    <li> <code>a[i] = b[i] + c[i);</code> (computer code; <code>code</code> markup used)</li>\n\n    <li> an <dfn>octet</dfn> is an entity consisting of eight bits (\n        <code>dfn</code> markup used for the term being defined)</li>\n    <li> this is <em>very</em> simple (<code>em</code> markup used for emphasizing a word)</li>\n\n    <li> type <kbd>yes</kbd> when prompted for an answer (<code>kbd</code> markup used for text indicating keyboard input)</li>\n    <li> <q>Hello!</q> (<code>q</code> markup used for quotation)</li>\n\n    <li> He said: <q>She said <q>Hello!</q></q> (a quotation inside a quotation)</li>\n    <li> you may get the message <samp>Core dumped</samp> at times (\n        <code>samp</code> markup used for sample output)</li>\n\n    <li> <strong>this is highlighted text</strong> (<code>strong</code> markup used)</li>\n\n    <li> <tt>text in monospace font</tt> (<code>tt</code> markup used)</li>\n\n    <li> the command <code>cat</code> <var>filename</var> displays the file specified by the <var>filename</var> (<code>var</code>        markup used to indicate a word as a variable).</li>\n    <li> In order to test how subscripts and superscripts (<code>sub</code> and <code>sup</code> markup) work inside running text,\n        we need some dummy text around constructs like x<sub>1</sub> and H<sub>2</sub>O (where subscripts occur). So here\n        is some fill so that you will (hopefully) see whether and how badly the subscripts and superscripts mess up vertical\n        spacing between lines. Now superscripts: M<sup>lle</sup>, 1<sup>st</sup>, and then some mathematical notations: e<sup>x</sup>,\n        sin<sup>2</sup> <i>x</i>, and some nested superscripts (exponents) too: Lorem ipsum dolor sit amet, consectetuer\n        adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim\n        ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea euismod tincidunt\n        ut laoreet dolore magna aliquam erat volutpat. </li>\n\n</ul>\n\n<p>Some of the elements tested above are typically displayed in a monospace font, often using the <em>same</em> presentation\n    for all of them. This tests whether that is the case on your browser:</p>\n\n<ul>\n    <li><code>This is sample text inside code markup</code></li>\n    <li><kbd>This is sample text inside kbd markup</kbd></li>\n    <li><samp>This is sample text inside samp markup</samp></li>\n\n    <li><tt>This is sample text inside tt markup</tt></li>\n</ul>\n\n<h2>Links</h2>\n\n<ul>\n    <li><a href=\"http://http:///web/20110926020946/http://developer.yahoo.com/yui\">developer.yahoo.com/yui</a></li>\n    <li><a href=\"http://http:///web/20110926020946/http://yuiblog.com/\">the YUI Blog</a></li>\n</ul>\n\n\n<h2>Tables</h2>\n\n<p>The following table has a caption. The first row and the first column contain table header cells only; other cells are data\n    cells.</p>\n\n<table summary=\"each row names a nordic country and specifies its total area and land area, in square kilometers\">\n    <caption>Caption: Sample table: Areas of the Nordic countries, in sq km</caption>\n    <tr>\n        <th>Country</th>\n        <th>Total area</th>\n\n        <th>Land area</th>\n    </tr>\n    <tr>\n        <th>Denmark</th>\n        <td>43,070</td>\n        <td>42,370</td>\n    </tr>\n    <tr>\n\n        <th>Finland</th>\n        <td>337,030</td>\n        <td>305,470</td>\n    </tr>\n    <tr>\n        <th>Iceland</th>\n        <td>103,000</td>\n\n        <td>100,250</td>\n    </tr>\n    <tr>\n        <th>Norway</th>\n        <td>324,220</td>\n        <td>307,860</td>\n    </tr>\n\n    <tr>\n        <th>Sweden</th>\n        <td>449,964</td>\n        <td>410,928</td>\n    </tr>\n</table>\n\n<h2>Forms</h2>\n\n<form action=\"/web/20110926020946/http://www.cs.tut.fi/cgi-bin/run/~jkorpela/echo.cgi\">\n\n    <div><input type=\"hidden\" name=\"hidden field\" value=\"42\"></div>\n    <div><label for=\"f1\">Single-line text input field: <input id=\"f1\" name=\"text\" size=\"20\" value=\"Default text.\"></label></div>\n    <div><label for=\"f2\">Multi-line text input field (textarea):</label></div>\n    <div><textarea id=\"f2\" name=\"textarea\" rows=\"16\" cols=\"20\">Default text.</textarea></div>\n\n    <p>The following two radio buttons are inside <code>fieldset</code> element with a <code>legend</code>:</p>\n\n\n    <fieldset>\n        <legend>Legend</legend>\n        <div>\n            <label for=\"f3\">Radio button 1</label>\n            <input id=\"f3\" type=\"radio\" name=\"radio\" value=\"1\">\n        </div>\n        <div>\n            <label for=\"f4\">Radio button 2 (initially checked)</label>\n\n            <input id=\"f4\" type=\"radio\" name=\"radio\" value=\"2\" checked>\n        </div>\n    </fieldset>\n\n    <fieldset>\n        <legend>Check those that apply</legend>\n        <div>\n            <label for=\"f5\">Checkbox 1</label>\n\n            <input id=\"f5\" type=\"checkbox\" name=\"checkbox\">\n        </div>\n        <div>\n            <label for=\"f6\">Checkbox 2 (initially checked)</label>\n            <input id=\"f6\" type=\"checkbox\" name=\"checkbox2\" checked>\n        </div>\n    </fieldset>\n\n    <p>\n\n        <label for=\"f10\">A <code>select</code> element with <code>size=\"1\"</code> (dropdown box):</label>\n    </p>\n\n    <select id=\"f10\" name=\"select1\" size=\"1\">\n      <option>one</option>\n\n      <option selected>two (default)</option>\n      <option>three</option>\n    </select>\n\n    <p>\n        <label for=\"f11\">A <code>select</code> element with <code>size=\"3\"</code> (listbox):</label>\n\n    </p>\n\n    <select id=\"f11\" name=\"select2\" size=\"3\">\n      <option>one</option>\n      <option selected>two (default)</option>\n      <option>three</option>\n    </select>\n\n    <div>\n        <label for=\"f99\">Submit button:</label>\n        <input id=\"f99\" type=\"submit\" name=\"submit\" value=\"Just a test\">\n    </div>\n    <div>\n        <label for=\"f0\">Reset button:</label>\n        <input id=\"f0\" type=\"reset\" name=\"reset\" value=\"Reset\">\n    </div>\n</form>\n\n\n<p>This next bit shows that PREformatted text is working.</p>\n\n<pre>\n1\n 2\n  3\n   4\n    5\n</pre>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna\n    aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut\n    aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,\n    vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum\n    zzril delenit Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet\n    dolore magna aliquam erat volutpat.</p>\n<marquee><pre>\n|￣￣￣￣￣￣￣￣￣￣|\n|    TYPO3!!       | \n|＿＿＿＿＿＿＿＿＿＿|\n(\\__/) ||\n(•ㅅ•) ||\n/ 　 づ</pre></marquee>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,175,NULL),
(202,24,1747689602,1744015096,1,0,0,0,'',768,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'medium','',0,'Embedded',2,'','','','<p>Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,176,NULL),
(203,24,1747689602,1744015096,1,0,0,0,'',640,NULL,0,0,0,0,NULL,'{\"background_image\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Background Image (Parallax)',2,'','','','<p>Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,177,NULL),
(204,24,1747689602,1744015096,1,0,0,0,'',576,NULL,0,0,0,0,NULL,'{\"background_image\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Background Image (Fade)',2,'','','','<p>Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,178,NULL),
(205,24,1747689602,1744015096,1,0,0,0,'',544,NULL,0,0,0,0,NULL,'{\"background_image\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Background Image (Sepia)',2,'','','','<p>Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,179,NULL),
(206,24,1747689602,1744015096,1,0,0,0,'',528,NULL,0,0,0,0,NULL,'{\"background_image\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Background Image (Grayscale)',2,'','','','<p>Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,180,NULL),
(207,24,1747689602,1744015096,1,0,0,0,'',520,NULL,0,0,0,0,NULL,'{\"background_image\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Background Image (Blur)',2,'','','','<p>Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,181,NULL),
(208,24,1747689602,1744015096,1,0,0,0,'',516,NULL,0,0,0,0,NULL,'{\"background_image\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'medium','',0,'Background Image (Simple)',2,'','','','<p>Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,182,NULL),
(209,24,1747689602,1744015096,1,0,0,0,'',514,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Coloured Backgrounds (Secondary)',2,'','','','<p>Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,183,NULL),
(210,24,1747689602,1744015096,1,0,0,0,'',513,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'If the same backgrounds follow each other, the distance between the elements is reduced.',3,'','','','<p>Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,184,NULL),
(211,24,1747689602,1744015096,1,0,0,0,'',512,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Coloured Backgrounds (Primary)',2,'','','','<p>Duis vitae ipsum et ante sollicitudin tincidunt a nec sem. Maecenas ultricies lacinia nunc at adipiscing? Nam ullamcorper commodo elit in euismod. Fusce nec varius tortor. Fusce justo diam, interdum quis egestas et, luctus a purus.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,185,NULL),
(212,24,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Coloured Backgrounds (Dark)',2,'','','','<p>Duis luctus, enim commodo auctor sodales, mi dui facilisis elit, a lobortis quam lacus nec velit. Nam pharetra, augue quis tristique consequat, arcu orci tincidunt dolor, et vehicula nulla risus vel nisi? Maecenas vel ligula lorem. Pellentesque ullamcorper dolor non justo faucibus eleifend. Sed nec sapien vel massa vulputate vehicula eget eu nisl.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,186,NULL),
(213,24,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Coloured Backgrounds (Light)',2,'','','','<p>Duis luctus, enim commodo auctor sodales, mi dui facilisis elit, a lobortis quam lacus nec velit. Nam pharetra, augue quis tristique consequat, arcu orci tincidunt dolor, et vehicula nulla risus vel nisi? Maecenas vel ligula lorem. Pellentesque ullamcorper dolor non justo faucibus eleifend. Sed nec sapien vel massa vulputate vehicula eget eu nisl.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,187,NULL),
(214,24,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"bodytext\":null,\"rte_enabled\":null,\"layout\":null,\"spaceBefore\":null,\"spaceAfter\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"linkToTop\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Indent, 66/33%',2,'','','','Proin rhoncus augue quis est eleifend consequat. Fusce varius vehicula feugiat. In quis ipsum neque. Sed venenatis risus diam. Praesent tincidunt lacinia pellentesque. Donec non justo eros, lacinia hendrerit est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas et urna sed lorem venenatis tempor quis vel eros? Proin pellentesque ultricies enim sed aliquet. ',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,188,NULL),
(215,24,1747689602,1744015096,1,0,0,0,'',32,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"bodytext\":null,\"rte_enabled\":null,\"layout\":null,\"spaceBefore\":null,\"spaceAfter\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"linkToTop\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Indent, 33/66%',2,'','','','Mauris magna nisl, dapibus dapibus faucibus ultrices, congue vehicula ligula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque ac quam sed odio blandit commodo! Vivamus dui urna, volutpat nec ultrices in, consectetur vitae sapien. Nulla facilisi.',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,189,NULL),
(216,24,1747689602,1744015096,1,0,0,0,'',16,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"bodytext\":null,\"rte_enabled\":null,\"layout\":null,\"spaceBefore\":null,\"spaceAfter\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"linkToTop\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Indent',2,'','','','Donec volutpat pulvinar enim tincidunt sagittis. Duis rutrum enim leo. Maecenas euismod congue blandit? Aliquam et auctor sapien. Phasellus ut pellentesque tellus. Sed ac libero vitae quam porttitor viverra. Nullam neque libero, luctus suscipit ultricies in, tincidunt ac justo?',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,190,NULL),
(217,24,1747689602,1744015096,1,0,0,0,'',8,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Ruler before coloured',2,'','','','<p>You can set a rulers before or after each content element.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,191,NULL),
(218,24,1747689602,1744015096,1,0,0,0,'',4,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Ruler after coloured',2,'','','','<p>Here the ruler is positioned after the element.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,192,NULL),
(219,24,1747689602,1744015096,1,0,0,0,'',2,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','medium',0,'Ruler after',2,'','','','<p>Here the ruler is positioned after the element.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,193,NULL),
(220,24,1747689602,1744015096,1,0,0,0,'',1,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"bodytext\":null,\"rte_enabled\":null,\"layout\":null,\"spaceBefore\":null,\"spaceAfter\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"linkToTop\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Ruler before',2,'','','','You can set a rulers before or after each content element.',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,194,NULL),
(221,24,1747689602,1744015096,1,0,0,0,'',0,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','medium',0,'Content-specific Layouts',1,'','','','<p class=\"lead\">Frames are centrally configured layouts for different content elements. Frames can be used, for example, to allow a content editor to apply a specific background image and/or color to specific content elements throughout the website.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,195,NULL),
(222,23,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"background_image\":null,\"background_color_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'No HTML Required',0,'','','','<p>With TYPO3, controlling the behavior of images is simple. Editors with no knowledge of HTML can easily manage&nbsp;links, popups, captions, alignment,&nbsp;and more.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,196,NULL),
(223,23,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Image Click-enlarge Functionality',2,'','','','<p>Check the \"click-enlarge\" checkbox in the back-end to allow users to click to show the full-size image.</p>',2,0,0,0,8,0,1,2,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,197,NULL),
(224,23,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Images Linked to Internal and External Pages',2,'','','','<p>Each image can be linked using the link field in the back-end. Multiple links can be added by separating each link with a comma. Values entered into the link field can be&nbsp;page id, a URL, or an&nbsp;e-mail address.</p>',2,0,0,0,8,0,1,2,'',0,'',0,'',1,0,'','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,198,NULL),
(225,22,1747689602,1744015096,1,0,0,0,'',256,NULL,0,2,227,227,NULL,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"CType\":\"\",\"colPos\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Eksempler',100,'','','','<ul><li><strong>Bulgarian:</strong> Жълтата дюля беше щастлива, че пухът, който цъфна, замръзна като гьон.</li><li><strong>Czech:</strong> Příliš žluťoučký kůň úpěl ďábelské kódy.</li><li><strong>Dutch:</strong> Pa\'s wĳze lynx bezag vroom het fikse aquaduct.</li><li><strong>English:</strong> The quick brown fox jumps over the lazy dog.</li><li><strong>Esperanto:</strong> Eĥoŝanĝo ĉiuĵaŭde.</li><li><strong>French:</strong> Les naïfs ægithales hâtifs pondant à Noël où il gèle sont sûrs d\'être déçus et de voir leurs drôles d\'œufs abîmés.</li><li><strong>German: </strong>Falsches Üben von Xylophonmusik quält jeden größeren Zwerg. (1)</li><li><strong>German: </strong><span>Im finsteren Jagdschloß am offenen Felsquellwasser patzte der affig-flatterhafte kauzig-höf‌liche Bäcker über seinem versifften kniffligen C-Xylophon.</span> (2)</li><li><strong>Greek</strong> (monotonic): ξεσκεπάζω την ψυχοφθόρα βδελυγμία</li><li><strong>Greek</strong> (polytonic): ξεσκεπάζω τὴν ψυχοφθόρα βδελυγμία</li><li><strong>Hebrew:</strong> <span>זה כיף סתם לשמוע איך תנצח קרפד עץ טוב בגן.</span></li><li><strong>Hungarian:</strong> Árvíztűrő tükörfúrógép.</li><li><strong>Icelandic:</strong> Sævör grét áðan því úlpan var ónýt.</li><li><strong>Irish:</strong> \"An ḃfuil do ċroí ag bualaḋ ó ḟaitíos an ġrá a ṁeall lena ṗóg éada ó ṡlí do leasa ṫú?\" \"D\'ḟuascail Íosa Úrṁac na hÓiġe Beannaiṫe pór Éava agus Áḋaiṁ.\"</li><li><strong>Jamaican:</strong> Chruu, a kwik di kwik brong fox a jomp huova di liezi daag de, yu no siit?</li><li><strong>Japanese</strong> (Hiragana):<br>いろはにほへど　ちりぬるを<br>わがよたれぞ　つねならむ<br>うゐのおくやま　けふこえて<br>あさきゆめみじ　ゑひもせず (4)</li><li><strong>Polish:</strong> Pchnąć w tę łódź jeża lub ośm skrzyń fig.</li><li><strong>Portuguese:</strong> O próximo vôo à noite sobre o Atlântico, põe freqüentemente o único médico. (3)</li><li><strong>Sami (Northern):</strong> Vuol Ruoŧa geđggiid leat máŋga luosa ja čuovžža.</li><li><strong>Slovak:</strong> Starý kôň na hŕbe kníh žuje tíško povädnuté ruže, na stĺpe sa ďateľ učí kvákať novú ódu o živote.</li><li><strong>Spanish:</strong> El pingüino Wenceslao hizo kilómetros bajo exhaustiva lluvia y frío, añoraba a su querido cachorro.</li><li><strong>Swedish:</strong> Flygande bäckasiner söka strax hwila på mjuka tuvor.</li><li><strong>Russian:</strong> Съешь же ещё этих мягких французских булок да выпей чаю.</li><li><strong>Russian:</strong> В чащах юга жил-был цитрус? Да, но фальшивый экземпляр! ёъ.</li></ul>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,199,NULL),
(226,22,1747689602,1744015096,1,0,0,0,'',128,NULL,0,1,227,227,NULL,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"CType\":\"\",\"colPos\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Beispiele',100,'','','','<ul><li><strong>Bulgarian:</strong> Жълтата дюля беше щастлива, че пухът, който цъфна, замръзна като гьон.</li><li><strong>Czech:</strong> Příliš žluťoučký kůň úpěl ďábelské kódy.</li><li><strong>Dutch:</strong> Pa\'s wĳze lynx bezag vroom het fikse aquaduct.</li><li><strong>English:</strong> The quick brown fox jumps over the lazy dog.</li><li><strong>Esperanto:</strong> Eĥoŝanĝo ĉiuĵaŭde.</li><li><strong>French:</strong> Les naïfs ægithales hâtifs pondant à Noël où il gèle sont sûrs d\'être déçus et de voir leurs drôles d\'œufs abîmés.</li><li><strong>German: </strong>Falsches Üben von Xylophonmusik quält jeden größeren Zwerg. (1)</li><li><strong>German: </strong><span>Im finsteren Jagdschloß am offenen Felsquellwasser patzte der affig-flatterhafte kauzig-höf‌liche Bäcker über seinem versifften kniffligen C-Xylophon.</span> (2)</li><li><strong>Greek</strong> (monotonic): ξεσκεπάζω την ψυχοφθόρα βδελυγμία</li><li><strong>Greek</strong> (polytonic): ξεσκεπάζω τὴν ψυχοφθόρα βδελυγμία</li><li><strong>Hebrew:</strong> <span>זה כיף סתם לשמוע איך תנצח קרפד עץ טוב בגן.</span></li><li><strong>Hungarian:</strong> Árvíztűrő tükörfúrógép.</li><li><strong>Icelandic:</strong> Sævör grét áðan því úlpan var ónýt.</li><li><strong>Irish:</strong> \"An ḃfuil do ċroí ag bualaḋ ó ḟaitíos an ġrá a ṁeall lena ṗóg éada ó ṡlí do leasa ṫú?\" \"D\'ḟuascail Íosa Úrṁac na hÓiġe Beannaiṫe pór Éava agus Áḋaiṁ.\"</li><li><strong>Jamaican:</strong> Chruu, a kwik di kwik brong fox a jomp huova di liezi daag de, yu no siit?</li><li><strong>Japanese</strong> (Hiragana):<br>いろはにほへど　ちりぬるを<br>わがよたれぞ　つねならむ<br>うゐのおくやま　けふこえて<br>あさきゆめみじ　ゑひもせず (4)</li><li><strong>Polish:</strong> Pchnąć w tę łódź jeża lub ośm skrzyń fig.</li><li><strong>Portuguese:</strong> O próximo vôo à noite sobre o Atlântico, põe freqüentemente o único médico. (3)</li><li><strong>Sami (Northern):</strong> Vuol Ruoŧa geđggiid leat máŋga luosa ja čuovžža.</li><li><strong>Slovak:</strong> Starý kôň na hŕbe kníh žuje tíško povädnuté ruže, na stĺpe sa ďateľ učí kvákať novú ódu o živote.</li><li><strong>Spanish:</strong> El pingüino Wenceslao hizo kilómetros bajo exhaustiva lluvia y frío, añoraba a su querido cachorro.</li><li><strong>Swedish:</strong> Flygande bäckasiner söka strax hwila på mjuka tuvor.</li><li><strong>Russian:</strong> Съешь же ещё этих мягких французских булок да выпей чаю.</li><li><strong>Russian:</strong> В чащах юга жил-был цитрус? Да, но фальшивый экземпляр! ёъ.</li></ul>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,200,NULL),
(227,22,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"sys_language_uid\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"bodytext\":null,\"rte_enabled\":null,\"layout\":null,\"spaceBefore\":null,\"spaceAfter\":null,\"section_frame\":null,\"hidden\":null,\"sectionIndex\":null,\"linkToTop\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"categories\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Examples',100,'','','','<ul><li><strong>Bulgarian:</strong> Жълтата дюля беше щастлива, че пухът, който цъфна, замръзна като гьон. </li><li><strong>Czech:</strong> Příliš žluťoučký kůň úpěl ďábelské kódy. </li><li><strong>Dutch:</strong> Pa\'s wĳze lynx bezag vroom het fikse aquaduct. </li><li><strong>English:</strong> The quick brown fox jumps over the lazy dog. </li><li><strong>Esperanto:</strong> Eĥoŝanĝo ĉiuĵaŭde. </li><li><strong>French:</strong> Les naïfs ægithales hâtifs pondant à Noël où il gèle sont sûrs d\'être déçus et de voir leurs drôles d\'œufs abîmés. </li><li><strong>German: </strong> Falsches Üben von Xylophonmusik quält jeden größeren Zwerg. (1) </li><li><strong>German: </strong> <span lang=\"da\">Im finsteren Jagdschloß am offenen Felsquellwasser patzte der affig-flatterhafte kauzig-höf‌liche Bäcker über seinem versifften kniffligen C-Xylophon.</span> (2) </li><li><strong>Greek</strong> (monotonic): ξεσκεπάζω την ψυχοφθόρα βδελυγμία </li><li><strong>Greek</strong> (polytonic): ξεσκεπάζω τὴν ψυχοφθόρα βδελυγμία </li><li><strong>Hebrew:</strong> <span dir=\"rtl\">זה כיף סתם לשמוע איך תנצח קרפד עץ טוב בגן.</span> </li><li><strong>Hungarian:</strong> Árvíztűrő tükörfúrógép. </li><li><strong>Icelandic:</strong> Sævör grét áðan því úlpan var ónýt. </li><li><strong>Irish:</strong> &quot;An ḃfuil do ċroí ag bualaḋ ó ḟaitíos an ġrá a ṁeall lena ṗóg éada ó ṡlí do leasa ṫú?&quot; &quot;D\'ḟuascail Íosa Úrṁac na hÓiġe Beannaiṫe pór Éava agus Áḋaiṁ.&quot; </li><li><strong>Jamaican:</strong> Chruu, a kwik di kwik brong fox a jomp huova di liezi daag de, yu no siit? </li><li><strong>Japanese</strong> (Hiragana):<br />いろはにほへど　ちりぬるを<br /> わがよたれぞ　つねならむ<br /> うゐのおくやま　けふこえて<br /> あさきゆめみじ　ゑひもせず (4)</li><li><strong>Polish:</strong> Pchnąć w tę łódź jeża lub ośm skrzyń fig. </li><li><strong>Portuguese:</strong> O próximo vôo à noite sobre o Atlântico, põe freqüentemente o único médico. (3) </li><li><strong>Sami (Northern):</strong> Vuol Ruoŧa geđggiid leat máŋga luosa ja čuovžža. </li><li><strong>Slovak:</strong> Starý kôň na hŕbe kníh žuje tíško povädnuté ruže, na stĺpe sa ďateľ učí kvákať novú ódu o živote. </li><li><strong>Spanish:</strong> El pingüino Wenceslao hizo kilómetros bajo exhaustiva lluvia y frío, añoraba a su querido cachorro. </li><li><strong>Swedish:</strong> Flygande bäckasiner söka strax hwila på mjuka tuvor. </li><li><strong>Russian:</strong> Съешь же ещё этих мягких французских булок да выпей чаю. </li><li><strong>Russian:</strong> В чащах юга жил-был цитрус? Да, но фальшивый экземпляр! ёъ. </li></ul>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,201,NULL),
(228,22,1747689602,1744015096,1,0,0,0,'',32,NULL,0,2,230,230,NULL,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"CType\":\"\",\"colPos\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','medium',0,'TYPO3 kender ingen grænser',1,'','','','<p>TYPO3 understøtter alle sprog og tegnsæt. Alle frontend-, backend- og database-interaktioner understøtter fuldt ud UTF-8.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,202,NULL),
(229,22,1747689602,1744015096,1,0,0,0,'',16,NULL,0,1,230,230,NULL,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"CType\":\"\",\"colPos\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','medium',0,'TYPO3 spricht deine Sprache',1,'','','','<p class=\"lead\">TYPO3 unterstützt alle Sprachen, Zeichen und Codierung Out-of-the-Box. Alle Frontend und Backend-Datenbank Interaktionen werden standardmäßig Unicode (UTF-8) ausgeführt.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,203,NULL),
(230,22,1747689602,1744015096,1,0,0,0,'',8,NULL,0,0,0,0,NULL,'{\"colPos\":null,\"sys_language_uid\":null}',0,0,0,0,'default',0,NULL,'text',0,0,'','medium',0,'TYPO3 Speaks Your Language',1,'','','','<p class=\"lead\">TYPO3 supports all languages, characters and encoding out-of-the-box. All frontend, backend and database interactions run Unicode (UTF-8) by default.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,204,NULL),
(231,20,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Endless Possibilities',2,'','','','<p>The content elements that appear on subpages are just the Core and Bootstrap Package content elements. TYPO3 can be easily extended to include custom content elements. It is also possible to create dynamic, database-driven content elements (plug-ins) using the TYPO3 extension API.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,205,NULL),
(232,20,1747689602,1744015096,1,0,0,0,'',128,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_subpages',0,0,'','',0,'And more...',2,'','','',NULL,0,0,0,0,0,0,0,2,'21',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,206,NULL),
(233,20,1747689602,1744015096,1,0,0,0,'',64,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_card_dir',0,0,'','',0,'Special Elements',0,'center','','',NULL,0,0,0,0,0,0,0,2,'25',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,207,NULL),
(234,20,1747689602,1744015096,1,0,0,0,'',32,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_card_dir',0,0,'','',0,'Menu´s',0,'center','','',NULL,0,0,0,0,0,0,0,2,'28',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,208,NULL),
(235,20,1747689602,1744015096,1,0,0,0,'',16,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_card_dir',0,0,'','',0,'Forms',0,'center','','',NULL,0,0,0,0,0,0,0,2,'48',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,209,NULL),
(236,20,1747689602,1744015096,1,0,0,0,'',8,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_card_dir',0,0,'','',0,'Interactive Elements',0,'center','','',NULL,0,0,0,0,0,0,0,2,'53',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,210,NULL),
(237,20,1747689602,1744015096,1,0,0,0,'',4,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_card_dir',0,0,'','',0,'Media',0,'center','','',NULL,0,0,0,0,0,0,0,2,'58',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,211,NULL),
(238,20,1747689602,1744015096,1,0,0,0,'',2,'',0,0,0,0,NULL,'{\"pages\":\"\"}',0,0,0,0,'default',0,NULL,'menu_card_dir',0,0,'','',0,'Text',0,'center','','',NULL,0,0,0,0,0,0,0,2,'69',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"align\">\n                    <value index=\"vDEF\">left</value>\n                </field>\n                <field index=\"columns\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,212,NULL),
(239,20,1747689602,1744015096,1,0,0,0,'',1,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'Content Management Made Easy',100,'center','','','<p class=\"lead text-center\">These examples illustrate how - straight out-of-the-box - TYPO3 delivers a vast amount of freedom to content editors. Unlike more static content management systems, TYPO3 content management is highly element-based and granular. Click on any of the links in the secondary navigation, to the right, to see examples of each core content element.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,213,NULL),
(240,20,1747689602,1744015096,1,0,0,0,'',0,'',0,0,0,0,NULL,'{\"tx_bootstrappackage_carousel_item\":\"\"}',0,0,0,0,'none',3,NULL,'carousel_small',0,0,'','',0,'',0,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"interval\">\n                    <value index=\"vDEF\">5000</value>\n                </field>\n                <field index=\"transition\">\n                    <value index=\"vDEF\">fade</value>\n                </field>\n                <field index=\"wrap\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"show_nav_title\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,214,NULL),
(241,19,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'menu_sitemap',0,0,'','',0,'Sitemap',2,'','','',NULL,0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,215,NULL),
(242,19,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'What to do',2,'','','','<p class=\"csc-frame-frame1\">The information might still be available.<br /> You can try to look for the information in the sitemap at this page.<br /> <br /> Also you can try the <a class=\"link-page\" href=\"35\" title=\"Opens internal link in current window\">search</a>.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,216,NULL),
(243,19,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',0,NULL,'panel',0,0,'','',0,'Page not found',0,'','','','<p class=\"lead\">The page you were looking for cannot be found. You may have followed a bad link or mis-typed an URL. Possibly the page has been moved, discarded or is from the past. Our apologies.</p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,217,NULL),
(244,18,1747689602,1744015096,1,0,0,0,'',256,'',0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',0,NULL,'panel',0,0,'','',0,'This feature is part of the Bootstrap Package!',0,'','','','<p>Bootstrap Package delivers a full configured frontend theme for TYPO3, based on the Bootstrap CSS Framework. The goal of this package is to give an advanced example of how modern templating in TYPO3 CMS can be handled nicely without depending on third party extensions.</p>\n<p><a class=\"btn btn-info\" href=\"https://github.com/benjaminkott/bootstrap_package\" target=\"_blank\" title=\"Bootstrap Package on GitHub\">Bootstrap Package on GitHub</a></p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,218,NULL),
(245,15,1747689602,1744015096,1,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',10,NULL,'text',0,0,'','',0,'Related Links',4,'','','','<p><a href=\"https://typo3.org/help/documentation/\" rel=\"noopener\" target=\"_blank\" title=\"TYPO3 Documentation\">Documentation</a><br /> <a href=\"https://typo3.org/certification/\" rel=\"noopener\" target=\"_blank\" title=\"TYPO3 Certification\">Certification</a><br /> <a href=\"https://typo3.org/community/\" rel=\"noopener\" target=\"_blank\" title=\"TYPO3 Community\">Community</a><br /> <a href=\"https://extensions.typo3.org/\" rel=\"noopener\" target=\"_blank\" title=\"TYPO3 Extensions\">Extensions</a></p>',0,0,0,0,0,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,219,NULL),
(246,15,1747689602,1744015096,1,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',22,NULL,'texticon',0,0,'','',0,'Playground',2,'center','','','<p class=\"lead text-center\">Build any web application you can imagine. Explore the Backend and experience the enormous flexibility.</p>\n<p class=\"text-center\"><a class=\"btn btn-secondary\" href=\"t3://folder?storage=0&amp;identifier=%2Ftypo3%2F\" title=\"btn-primary\">Log into TYPO3</a></p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,220,NULL),
(247,15,1747689602,1744015096,1,0,0,0,'',64,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',21,NULL,'texticon',0,0,'','',0,'Examples',2,'center','','','<p class=\"text-center lead\">Don\'t hesitate and discover the large selection of our pre-configured page layouts and content elements.</p>\n<p class=\"text-center\"><a class=\"btn btn-secondary\" href=\"65\">Pages</a>&nbsp;<a class=\"btn btn-secondary\" href=\"6\">Content</a></p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,221,NULL),
(248,15,1747689602,1744015096,1,0,0,0,'',32,NULL,0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',20,NULL,'texticon',0,0,'','',0,'Possibilities',2,'center','','','<p class=\"lead text-center\">With a rich core feature set out-of-the-box, TYPO3 is an ideal choice for building ambitious digital experiences.</p>\n<p class=\"text-center\"><a class=\"btn btn-secondary\" href=\"80\">Features</a>&nbsp;<a class=\"btn btn-secondary\" href=\"79\">Customizing</a></p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,222,NULL),
(249,15,1747689602,1744015096,1,0,0,0,'',16,NULL,0,0,0,0,NULL,'{\"image\":\"\"}',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'Deliver business value',2,'','','','<p>Start small and scale as you grow with TYPO3 CMS. Your initial, simple TYPO3 website will keep pace with you as your needs grow. It offers powerful multilingual and multisite features to help you reach a global audience and create new websites with ease. TYPO3 provides proven return on investment with stable long-term installations and clean upgrade paths, while remaining flexible enough to support innovation.</p>',1,0,0,0,125,0,0,1,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,223,NULL),
(250,15,1747689602,1744015096,1,0,0,0,'',8,NULL,0,0,0,0,NULL,'{\"tx_bootstrappackage_carousel_item\":\"\"}',0,0,0,0,'none',3,NULL,'carousel',0,0,'','',0,'Startpage Teaser',100,'','','',NULL,0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"interval\">\n                    <value index=\"vDEF\">5000</value>\n                </field>\n                <field index=\"background_image_maxwidth\">\n                    <value index=\"vDEF\">1920</value>\n                </field>\n                <field index=\"wrap\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"transition\">\n                    <value index=\"vDEF\">fade</value>\n                </field>\n                <field index=\"show_nav_title\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,224,NULL),
(251,15,1747689602,1744015096,1,0,0,0,'',4,'',0,0,0,0,NULL,'{\"bodytext\":\"\"}',0,0,0,0,'default',11,NULL,'text',0,0,'','',0,'Professional Services',4,'','','','<p><a href=\"https://typo3.com/products/extended-support\" rel=\"noopener\" target=\"_blank\" title=\"Extended Support\">Extended Support</a><br /> <a href=\"https://typo3.com/services/project-reviews\" title=\"Project Reviews\">Project Reviews</a><br /> <a href=\"https://typo3.com/services/service-level-agreements\" rel=\"noopener\" target=\"_blank\" title=\"Service Level Agreements\">Service Level Agreements</a><br /> <a href=\"https://typo3.com/products/sector-solutions/higher-education-package\" rel=\"noopener\" target=\"_blank\" title=\"Higher Education Package\">Higher Education Package</a><br /> <a href=\"https://typo3.com/products/all-about-the-professional-service-listing\" rel=\"noopener\" target=\"_blank\" title=\"Professional Service Listing\">Professional Service Listing</a></p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,225,NULL),
(252,15,1747689602,1744015096,1,0,0,0,'',2,'',0,0,0,0,NULL,'{\"background_image_options\":\"\"}',0,0,0,0,'default',12,NULL,'text',1,0,'','',0,'100% free open source software',4,'','','','<p>We are committed to open source. Safe, reliable, no hidden agenda, no license jungle or legal issues, zero license fees. As a website owner, your investment in a TYPO3 CMS web application customized to perfectly match your requirements means you own your mission critical web infrastructure. No one can take that software back, unilaterally increase your licensing costs, or prevent you from improving and extending it.</p>',0,0,0,0,0,0,0,2,'',0,'',0,'',1,0,NULL,'0','',0,0,'',124,0,0,0,'',0,'','','',0,0,0,'slider','','','',0,0,0,226,NULL),
(253,98,1744021558,1744021280,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_class\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"subheader_class\":\"\",\"bodytext\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"categories\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,NULL,'text',0,0,'','',0,'',0,'','','','<p><a href=\"t3://page?uid=15\">Bootstrap Package</a> - <a href=\"t3://page?uid=1\">FC Bigfoot</a></p>',0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,'slider','','','',0,0,0,0,NULL),
(254,9,1747514637,1747514637,0,0,0,0,'',64,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'textpic',0,0,'','',0,'',2,'','','',NULL,0,0,0,0,0,0,0,1,NULL,0,'',0,NULL,1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.persistenceIdentifier\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,'slider','','','',0,0,0,0,NULL),
(255,9,1747727757,1747727757,0,0,0,0,'',384,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'memsy_createmembership',0,0,'','',0,'Sign Up for a Membership',2,'','','','<p><strong>FC Bigfoot Membership Privacy Policy</strong></p>\r\n<p>Effective Date: [Insert Date]</p>\r\n<p>At FC Bigfoot, we value the privacy of our members. This policy explains how we collect, use, and protect personal information provided through our club membership process.</p>\r\n<p><strong>1. Information We Collect</strong><br />When you become a member of FC Bigfoot, we may collect:</p>\r\n<ul><li>Full name</li><li>Contact details (email, phone number, address)</li><li>Date of birth</li><li>Emergency contact information</li><li>Payment details for membership fees</li></ul>\r\n<p><strong>2. How We Use Your Information</strong><br />Your personal information is used to:</p>\r\n<ul><li>Process and manage your membership</li><li>Contact you about club news, events, and activities</li><li>Maintain internal membership records</li><li>Ensure the safety and well-being of members during club activities</li></ul>\r\n<p><strong>3. Data Sharing and Protection</strong><br />We do not sell or share your information with third parties, except:</p>\r\n<ul><li>With service providers for payment processing</li><li>If required by law or for safety reasons</li></ul>\r\n<p>We take reasonable steps to keep your data secure and accessible only to authorized club personnel.</p>\r\n<p><strong>4. Your Rights</strong><br />You may request access to your data, or ask us to update or delete it at any time by contacting: [Insert Email].</p>\r\n<p><strong>5. Policy Updates</strong><br />We may revise this policy occasionally. Any updates will be shared via email or posted on our official club website.</p>',0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,'slider','','','',0,0,0,0,'104'),
(256,104,1747727850,1747727850,0,0,0,0,'',256,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,'memsy_confirmmembership',0,0,'','',0,'Welcome to the Club!',2,'','','',NULL,0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,'slider','','','',0,0,0,0,NULL),
(257,106,1747728332,1747728191,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"colPos\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,'default',0,NULL,'felogin_login',0,0,'','',0,'Member',0,'','','',NULL,0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.showForgotPassword\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.showPermaLogin\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.showLogoutFormAfterLogin\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.pages\">\n                    <value index=\"vDEF\">102</value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_redirect\">\n            <language index=\"lDEF\">\n                <field index=\"settings.redirectMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectFirstMethod\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.redirectPageLogin\">\n                    <value index=\"vDEF\">105</value>\n                </field>\n                <field index=\"settings.redirectPageLoginError\">\n                    <value index=\"vDEF\">106</value>\n                </field>\n                <field index=\"settings.redirectPageLogout\">\n                    <value index=\"vDEF\">106</value>\n                </field>\n                <field index=\"settings.redirectDisable\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_messages\">\n            <language index=\"lDEF\">\n                <field index=\"settings.welcome_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.welcome_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.success_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.success_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.error_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.error_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.status_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.status_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.logout_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.logout_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.forgot_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.forgot_reset_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,'slider','','','',0,0,0,0,NULL);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `remote` varchar(100) NOT NULL DEFAULT 'ter',
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) NOT NULL DEFAULT '',
  `serialized_dependencies` mediumtext DEFAULT NULL,
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `authorcompany` varchar(255) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  `documentation_link` varchar(2048) DEFAULT NULL,
  `distribution_image` varchar(255) DEFAULT NULL,
  `distribution_welcome_image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `state` int(10) unsigned NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  `last_updated` bigint(20) NOT NULL DEFAULT 0,
  `update_comment` longtext DEFAULT NULL,
  `current_version` smallint(5) unsigned NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`remote`),
  KEY `index_extrepo` (`extension_key`,`remote`),
  KEY `index_versionrepo` (`integer_version`,`remote`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_fcbigfoot_domain_model_button`
--

DROP TABLE IF EXISTS `tx_fcbigfoot_domain_model_button`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_fcbigfoot_domain_model_button` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `label` longtext DEFAULT NULL,
  `link` text NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_fcbigfoot_domain_model_button`
--

LOCK TABLES `tx_fcbigfoot_domain_model_button` WRITE;
/*!40000 ALTER TABLE `tx_fcbigfoot_domain_model_button` DISABLE KEYS */;
INSERT INTO `tx_fcbigfoot_domain_model_button` VALUES
(1,1,1744014582,1744014582,2,18,'tt_content','Suscribe','11'),
(2,1,1744014582,1744014582,1,18,'tt_content','Contact us','4');
/*!40000 ALTER TABLE `tx_fcbigfoot_domain_model_button` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_fcbigfoot_domain_model_person`
--

DROP TABLE IF EXISTS `tx_fcbigfoot_domain_model_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_fcbigfoot_domain_model_person` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `name` longtext DEFAULT NULL,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_fcbigfoot_domain_model_person`
--

LOCK TABLES `tx_fcbigfoot_domain_model_person` WRITE;
/*!40000 ALTER TABLE `tx_fcbigfoot_domain_model_person` DISABLE KEYS */;
INSERT INTO `tx_fcbigfoot_domain_model_person` VALUES
(1,6,1744014582,1744014582,8,13,'tt_content','Player 8',1),
(2,6,1744014582,1744014582,7,13,'tt_content','Player 7',1),
(3,6,1744014582,1744014582,6,13,'tt_content','Player 6',1),
(4,6,1744014582,1744014582,5,13,'tt_content','Player 5',1),
(5,6,1744014582,1744014582,4,13,'tt_content','Player 4',1),
(6,6,1744014582,1744014582,3,13,'tt_content','Player 3',1),
(7,6,1744014582,1744014582,2,13,'tt_content','Player 2',1),
(8,6,1744014582,1744014582,1,13,'tt_content','Player 1',1);
/*!40000 ALTER TABLE `tx_fcbigfoot_domain_model_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_fcbigfoot_domain_model_sponsor`
--

DROP TABLE IF EXISTS `tx_fcbigfoot_domain_model_sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_fcbigfoot_domain_model_sponsor` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `title` longtext DEFAULT NULL,
  `url` text NOT NULL DEFAULT '',
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_fcbigfoot_domain_model_sponsor`
--

LOCK TABLES `tx_fcbigfoot_domain_model_sponsor` WRITE;
/*!40000 ALTER TABLE `tx_fcbigfoot_domain_model_sponsor` DISABLE KEYS */;
INSERT INTO `tx_fcbigfoot_domain_model_sponsor` VALUES
(1,1,1744014582,1744014582,6,19,'tt_content','Yetitel','',1),
(2,1,1744014582,1744014582,5,19,'tt_content','Moos Bank','',1),
(3,1,1744014582,1744014582,4,19,'tt_content','Fooprat','',1),
(4,1,1744014582,1744014582,3,19,'tt_content','Leafworks','',1),
(5,1,1744014582,1744014582,2,19,'tt_content','Forest Net','',1),
(6,1,1744014582,1744014582,1,19,'tt_content','Bigstep','',1);
/*!40000 ALTER TABLE `tx_fcbigfoot_domain_model_sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_fcbigfoot_domain_model_teaser`
--

DROP TABLE IF EXISTS `tx_fcbigfoot_domain_model_teaser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_fcbigfoot_domain_model_teaser` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `link` text NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_fcbigfoot_domain_model_teaser`
--

LOCK TABLES `tx_fcbigfoot_domain_model_teaser` WRITE;
/*!40000 ALTER TABLE `tx_fcbigfoot_domain_model_teaser` DISABLE KEYS */;
INSERT INTO `tx_fcbigfoot_domain_model_teaser` VALUES
(1,1,1744014582,1744014582,0,4,21,'tt_content','Training',1,'7'),
(2,1,1744014582,1744014582,0,3,21,'tt_content','Junior Training',1,'11'),
(3,1,1744014582,1744014582,0,2,21,'tt_content','Charity Event',1,'12'),
(4,1,1744014582,1744014582,0,1,21,'tt_content','Game Day',1,'12');
/*!40000 ALTER TABLE `tx_fcbigfoot_domain_model_teaser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT 0,
  `item_uid` int(11) NOT NULL DEFAULT 0,
  `user_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `preset_data` blob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
INSERT INTO `tx_impexp_presets` VALUES
(1,0,1744015096,1744015096,'Introduction Package',1,0,2,'a:13:{s:8:\"pagetree\";a:3:{s:2:\"id\";s:1:\"0\";s:6:\"levels\";s:3:\"999\";s:6:\"tables\";a:16:{i:0;s:14:\"backend_layout\";i:1;s:9:\"be_groups\";i:2;s:9:\"fe_groups\";i:3;s:8:\"fe_users\";i:4;s:12:\"sys_category\";i:5;s:12:\"sys_language\";i:6;s:8:\"sys_news\";i:7;s:12:\"sys_template\";i:8;s:10:\"tt_content\";i:9;s:34:\"tx_bootstrappackage_accordion_item\";i:10;s:35:\"tx_bootstrappackage_card_group_item\";i:11;s:33:\"tx_bootstrappackage_carousel_item\";i:12;s:35:\"tx_bootstrappackage_icon_group_item\";i:13;s:28:\"tx_bootstrappackage_tab_item\";i:14;s:33:\"tx_bootstrappackage_timeline_item\";i:15;s:17:\"tx_impexp_presets\";}}s:12:\"external_ref\";a:1:{s:6:\"tables\";a:23:{i:0;s:14:\"backend_layout\";i:1;s:9:\"be_groups\";i:2;s:9:\"fe_groups\";i:3;s:8:\"fe_users\";i:4;s:5:\"pages\";i:5;s:12:\"sys_category\";i:6;s:8:\"sys_file\";i:7;s:19:\"sys_file_collection\";i:8;s:17:\"sys_file_metadata\";i:9;s:18:\"sys_file_reference\";i:10;s:16:\"sys_file_storage\";i:11;s:14:\"sys_filemounts\";i:12;s:12:\"sys_language\";i:13;s:8:\"sys_news\";i:14;s:12:\"sys_template\";i:15;s:10:\"tt_content\";i:16;s:34:\"tx_bootstrappackage_accordion_item\";i:17;s:35:\"tx_bootstrappackage_card_group_item\";i:18;s:33:\"tx_bootstrappackage_carousel_item\";i:19;s:35:\"tx_bootstrappackage_icon_group_item\";i:20;s:28:\"tx_bootstrappackage_tab_item\";i:21;s:33:\"tx_bootstrappackage_timeline_item\";i:22;s:17:\"tx_impexp_presets\";}}s:15:\"external_static\";a:1:{s:6:\"tables\";s:0:\"\";}s:19:\"showStaticRelations\";s:0:\"\";s:15:\"excludeDisabled\";s:1:\"1\";s:6:\"preset\";a:2:{s:5:\"title\";s:20:\"Introduction Package\";s:6:\"public\";i:1;}s:4:\"meta\";a:3:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"notes\";s:0:\"\";}s:8:\"filetype\";s:3:\"xml\";s:8:\"filename\";s:4:\"data\";s:24:\"excludeHTMLfileResources\";s:0:\"\";s:26:\"saveFilesOutsideExportFile\";s:1:\"1\";s:13:\"extension_dep\";a:7:{i:0;s:4:\"form\";i:1;s:7:\"felogin\";i:2;s:12:\"filemetadata\";i:3;s:6:\"impexp\";i:4;s:14:\"indexed_search\";i:5;s:12:\"rte_ckeditor\";i:6;s:17:\"bootstrap_package\";}s:10:\"softrefCfg\";a:48:{s:32:\"343a10e6c2480e111dd3e9e564eb7966\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"e447e9841537ca15610f6264eb3a2671\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"9acad8fb6435ad4224ed723b8edb240e\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"f295b6127908fe930ce19590508d96a0\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"5c24326ea5bb63e0f300c90db4eec58e\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"57118c7c32d1239d83f4a6a0062e062c\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"ec9dae51295c6a3d68999dab5005cc3a\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"8f97a2b4d5d72a7da23df92f6c9f4b0d\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"6b9a3b48dc810ef3c226ea086d370c67\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"fc2a15a89cb68d0a165816230f813033\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"f5188757ca1bb48c099d7edf4797d7fb\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"46cabf1803e5861d3bdbee83e392e961\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"8cd7325c01999383c5db39b5bf894489\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"7f0d77e28de222e72730b4bc452cd4c8\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"363dcd56e89c2b9130f23c64fee73631\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"c6223f4bee65583a543187730c6db029\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"0da0e6ee9c8526b1a9fffe7083f7ceca\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"4b6635e5953f61181df4eeb1a7a94854\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"ffd71b1fad70aa0d741e2d7e605354a3\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"fe40e7f3779ca1809a5da365dab425d6\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"adc31a25c50909afdfb439280d31ec47\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"efa395b5a8dac46505dabe973f44ea3f\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"58cb31ff7881ff18f4e911d63bb0dfb4\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"df63486e300c5cdda7e74771f3387aa3\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"0f65c761f9929d0e19da2d19abd31fa3\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"fc2a618c20881a9af09c84f804f7060c\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"c273386018cb5513bf7f8e480626bf2c\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"a9cd6a7e7972b6248ad2f97f30e5653c\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"b471aa51ef4e52171c8af285931559e7\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"8373ea7740e1e552a3c27a431b0497b0\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"acd7df507659b949fc76a5e575b3978c\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"3fd670bc2be21d92bd6cf10cec7e4444\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"4f41ab257d850be225b3378547c42494\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"05e4c44b332058deae458722ce060af6\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"1da6b09c5ccd59b2172d2a3a92ec7ec0\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"fdd71f7f45955e06b6472db4f16d4dcb\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"0bed7278d7b4d87732301eacee599498\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"3bf4db00576e35fea2f6426033434900\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"4117fbc6c6198596b48d0009d317c0de\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"39fa51cdd305602a715fa9a4f2ea40a1\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"1cd1813a7aa128d248ca4caca0953759\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"d35124c40eb77ee01b5470a2dd27c8d4\";a:1:{s:4:\"mode\";s:7:\"exclude\";}s:32:\"2439f007131caa7735b9f6003c69422a\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"067b133759aba063cfe50d4a8bb63f2f\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"2563b3b5053be8a36eedb82030a33b02\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"ac791b20f624920e2542d922874a5b1f\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"5dcb1d4f91b1cdb5a2da7be433961c9c\";a:1:{s:4:\"mode\";s:0:\"\";}s:32:\"ba1a5043a65a5549d335c89446fe3310\";a:1:{s:4:\"mode\";s:0:\"\";}}}');
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_memsy_domain_model_membership`
--

DROP TABLE IF EXISTS `tx_memsy_domain_model_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_memsy_domain_model_membership` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_memsy_domain_model_membership`
--

LOCK TABLES `tx_memsy_domain_model_membership` WRITE;
/*!40000 ALTER TABLE `tx_memsy_domain_model_membership` DISABLE KEYS */;
INSERT INTO `tx_memsy_domain_model_membership` VALUES
(1,102,1747729882,1747729882,'Familiy','',69.00);
/*!40000 ALTER TABLE `tx_memsy_domain_model_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_memsy_domain_model_payment`
--

DROP TABLE IF EXISTS `tx_memsy_domain_model_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_memsy_domain_model_payment` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `member` int(10) unsigned NOT NULL DEFAULT 0,
  `paid_at` bigint(20) NOT NULL DEFAULT 0,
  `due_by` bigint(20) NOT NULL DEFAULT 0,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `state` int(10) unsigned NOT NULL DEFAULT 0,
  `reminder_mail_sent_at` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_memsy_domain_model_payment`
--

LOCK TABLES `tx_memsy_domain_model_payment` WRITE;
/*!40000 ALTER TABLE `tx_memsy_domain_model_payment` DISABLE KEYS */;
INSERT INTO `tx_memsy_domain_model_payment` VALUES
(1,103,1747730374,1747730141,2,0,1764547200,69.00,0,0);
/*!40000 ALTER TABLE `tx_memsy_domain_model_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_failure` text DEFAULT NULL,
  `lastexecution_context` varchar(3) NOT NULL DEFAULT '',
  `serialized_task_object` mediumblob DEFAULT NULL,
  `serialized_executions` mediumblob DEFAULT NULL,
  `task_group` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `groupName` varchar(80) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-21 17:34:22
