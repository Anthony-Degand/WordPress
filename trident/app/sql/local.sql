-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (7,'action_scheduler/migration_hook','complete','2022-08-25 12:08:51','2022-08-25 12:08:51','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1661429331;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1661429331;}',1,1,'2022-08-29 07:24:10','2022-08-29 07:24:10',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (8,'woocommerce_cleanup_draft_orders','complete','2022-08-25 12:07:55','2022-08-25 12:07:55','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1661429275;s:18:\"\0*\0first_timestamp\";i:1661429275;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1661429275;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,1,'2022-08-29 07:24:10','2022-08-29 07:24:10',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (9,'woocommerce_cleanup_draft_orders','pending','2022-08-30 07:24:10','2022-08-30 07:24:10','[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1661844250;s:18:\"\0*\0first_timestamp\";i:1661429275;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1661844250;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (10,'action_scheduler/migration_hook','complete','2022-08-29 07:25:48','2022-08-29 07:25:48','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1661757948;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1661757948;}',1,1,'2022-08-29 07:26:08','2022-08-29 07:26:08',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,7,'action créée','2022-08-25 12:07:51','2022-08-25 12:07:51');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,8,'action créée','2022-08-25 12:07:55','2022-08-25 12:07:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,8,'action lancée via Async Request','2022-08-29 07:24:10','2022-08-29 07:24:10');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,8,'action terminée via Async Request','2022-08-29 07:24:10','2022-08-29 07:24:10');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,9,'action créée','2022-08-29 07:24:10','2022-08-29 07:24:10');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,7,'action lancée via Async Request','2022-08-29 07:24:10','2022-08-29 07:24:10');
INSERT INTO `wp_actionscheduler_logs` VALUES (7,7,'action terminée via Async Request','2022-08-29 07:24:10','2022-08-29 07:24:10');
INSERT INTO `wp_actionscheduler_logs` VALUES (8,10,'action créée','2022-08-29 07:24:48','2022-08-29 07:24:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (9,10,'action lancée via WP Cron','2022-08-29 07:26:08','2022-08-29 07:26:08');
INSERT INTO `wp_actionscheduler_logs` VALUES (10,10,'action terminée via WP Cron','2022-08-29 07:26:08','2022-08-29 07:26:08');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10004','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10004','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Trident','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','degand.anthony@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','j F Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','G\\hi','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:25:\"fakerpress/fakerpress.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:3;s:27:\"updraftplus/updraftplus.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','themeTahar','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','themeTahar','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','1200','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','1200','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1920','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1920','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','10','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1676978215','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:7:\"sidebar\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:18:{i:1661868478;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1661869032;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1661901432;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1661903225;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1661903843;a:1:{s:33:\"updraftplus_clean_temporary_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1661904000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1661909048;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1661930658;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1661930661;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1661941448;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1661944632;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1661946425;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1661946427;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1661947669;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662076774;a:2:{s:14:\"updraft_backup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:23:\"updraft_backup_database\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1662117432;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1663053908;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','Ma 4H]lUVVR~${~fcW215E%SmQ%s_m#[ag@Dobl|Ef_=y}MOJanDO}r@h|SmqL(X','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','mai<6Ms8P/}f.eZQm&k ;t$r9t-ymwx*vTX1wJ(rU)mg,nYog`YI9cwEp$Rv]WyK','no');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (122,'auth_key','s=W,+CA+4^j#Z%;G;A`CxkC&+~l9{&>^?P+)`R);w$a@dd34M^{W16YFMdhx)8nu','no');
INSERT INTO `wp_options` VALUES (123,'auth_salt','5X1itOw:M,Brn lA&wNp`etEc?YV_%@U1L[S6@!xC/vZNY5&f8A%0`_~V$W!V$MF','no');
INSERT INTO `wp_options` VALUES (124,'logged_in_key','Xp^0}p%=l|^}GQiha5e@Rc4lrLla3GOG(vD0HT!~jP{Y4-:c@c(|o2?`vh,6C{<`','no');
INSERT INTO `wp_options` VALUES (125,'logged_in_salt','3y4Xd[qX`9*=]4I0X7~KubpS5_k.IJpXt/ODdYH!pqN![@cDi)BEvn9Ok>$A;75S','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_timeout_browser_b20f96e5878b0a47ff8626c8f757e35b','1662032827','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_browser_b20f96e5878b0a47ff8626c8f757e35b','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"104.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce','1662032827','no');
INSERT INTO `wp_options` VALUES (133,'_site_transient_php_check_12edeb5890095749089987982a1404ce','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (136,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (147,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (148,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}','yes');
INSERT INTO `wp_options` VALUES (151,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (152,'recently_activated','a:2:{s:27:\"woocommerce/woocommerce.php\";i:1661777761;s:24:\"wordpress-seo/wp-seo.php\";i:1661757887;}','yes');
INSERT INTO `wp_options` VALUES (160,'updraftplus_version','1.22.19','yes');
INSERT INTO `wp_options` VALUES (161,'updraft_updraftvault','a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-68a95d0ea2e2044003e45f4d797a20a5\";a:3:{s:5:\"token\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"quota\";i:-1;}}}','yes');
INSERT INTO `wp_options` VALUES (162,'updraft_dropbox','a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-a97c4c6bce670a5361df8addbfa99615\";a:4:{s:6:\"appkey\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:6:\"folder\";s:0:\"\";s:15:\"tk_access_token\";s:0:\"\";}}}','yes');
INSERT INTO `wp_options` VALUES (163,'updraft_s3','a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-00b3b6dd95403132a116e0df5e0660b0\";a:3:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}','yes');
INSERT INTO `wp_options` VALUES (164,'updraft_cloudfiles','a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-c47ed584d5d14659051e13978f1082c1\";a:5:{s:7:\"authurl\";s:35:\"https://auth.api.rackspacecloud.com\";s:6:\"region\";s:3:\"DFW\";s:4:\"user\";s:0:\"\";s:6:\"apikey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}','yes');
INSERT INTO `wp_options` VALUES (165,'updraft_googledrive','a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-66c3d4b932693347156fa746362ca553\";a:9:{s:8:\"clientid\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:0:\"\";s:6:\"folder\";s:11:\"UpdraftPlus\";s:7:\"user_id\";s:64:\"fc7f28a265bd79575b366547c664db7790d5efef8ffd5f3f834ff49daf4900ae\";s:16:\"tmp_access_token\";a:4:{s:12:\"access_token\";s:212:\"ya29.a0AVA9y1uDsnFVXg7RhE2iAg2-5LuB1Oe5T8428QRDFY42ttug_BrwG5m4vbpk_GubvjsfMjqI7vAYgXB0julL87sC4bZ1ytp5xjcTC1a-MlYJ-Rqb91KYWBcXG11DSHDD1oVzVrIzqPaz2-AtOhKSZ4faahmD9waCgYKATASAQASFQE65dr8tC1VQQwFsr6eWtwEYaT7CQ0165\";s:7:\"created\";i:1661494058;s:10:\"expires_in\";i:3599;s:13:\"refresh_token\";s:0:\"\";}s:10:\"expires_in\";i:1661497627;s:9:\"ownername\";s:14:\"Anthony Degand\";s:16:\"instance_enabled\";i:1;}}}','yes');
INSERT INTO `wp_options` VALUES (166,'updraft_onedrive','a:1:{s:7:\"version\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (167,'updraft_ftp','a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-f0ab6ff2c9bce845c493a07098540256\";a:5:{s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"path\";s:0:\"\";s:7:\"passive\";s:1:\"1\";}}}','yes');
INSERT INTO `wp_options` VALUES (168,'updraft_azure','a:1:{s:7:\"version\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (169,'updraft_sftp','a:1:{s:7:\"version\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (170,'updraft_googlecloud','a:1:{s:7:\"version\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (171,'updraft_backblaze','a:1:{s:7:\"version\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (172,'updraft_webdav','a:1:{s:7:\"version\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (173,'updraft_s3generic','a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-d1fcd0daf616f31402f8e6294be88333\";a:5:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:0:\"\";s:19:\"bucket_access_style\";s:10:\"path_style\";}}}','yes');
INSERT INTO `wp_options` VALUES (174,'updraft_openstack','a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-01825144bac987e0e07b0eadd339cd70\";a:6:{s:7:\"authurl\";s:0:\"\";s:6:\"tenant\";s:0:\"\";s:6:\"region\";s:0:\"\";s:4:\"user\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}','yes');
INSERT INTO `wp_options` VALUES (175,'updraft_dreamobjects','a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-6b0753532d4656b19a836f5220b3866e\";a:4:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:26:\"objects-us-east-1.dream.io\";}}}','yes');
INSERT INTO `wp_options` VALUES (176,'updraftplus-addons_siteid','ea41d92d0dfdfefc458ab8f14c071eb4','no');
INSERT INTO `wp_options` VALUES (177,'updraftplus_tour_cancelled_on','settings_more','yes');
INSERT INTO `wp_options` VALUES (178,'updraft_retain_extrarules','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (179,'updraft_email','','yes');
INSERT INTO `wp_options` VALUES (180,'updraft_report_warningsonly','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (181,'updraft_report_wholebackup','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (182,'updraft_extradbs','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (183,'updraft_include_more_path','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (184,'auto_update_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (185,'updraft_interval','weekly','yes');
INSERT INTO `wp_options` VALUES (186,'updraft_retain','2','yes');
INSERT INTO `wp_options` VALUES (189,'updraft_interval_database','weekly','yes');
INSERT INTO `wp_options` VALUES (190,'updraft_retain_db','2','yes');
INSERT INTO `wp_options` VALUES (191,'updraft_service','googledrive','yes');
INSERT INTO `wp_options` VALUES (192,'updraft_include_plugins','1','yes');
INSERT INTO `wp_options` VALUES (193,'updraft_include_themes','1','yes');
INSERT INTO `wp_options` VALUES (194,'updraft_include_uploads','1','yes');
INSERT INTO `wp_options` VALUES (195,'updraft_include_uploads_exclude','backup*,*backups,backwpup*,wp-clone,snapshots','yes');
INSERT INTO `wp_options` VALUES (196,'updraft_include_others','1','yes');
INSERT INTO `wp_options` VALUES (197,'updraft_include_others_exclude','upgrade,cache,updraft,backup*,*backups,mysql.sql,debug.log','yes');
INSERT INTO `wp_options` VALUES (198,'updraft_split_every','400','yes');
INSERT INTO `wp_options` VALUES (199,'updraft_delete_local','1','yes');
INSERT INTO `wp_options` VALUES (200,'updraft_dir','updraft','yes');
INSERT INTO `wp_options` VALUES (201,'updraft_debug_mode','0','yes');
INSERT INTO `wp_options` VALUES (202,'updraft_ssl_useservercerts','0','yes');
INSERT INTO `wp_options` VALUES (203,'updraft_ssl_disableverify','0','yes');
INSERT INTO `wp_options` VALUES (204,'updraft_ssl_nossl','0','yes');
INSERT INTO `wp_options` VALUES (209,'WPLANG','fr_FR','yes');
INSERT INTO `wp_options` VALUES (210,'new_admin_email','degand.anthony@gmail.com','yes');
INSERT INTO `wp_options` VALUES (236,'theme_mods_twentytwentytwo','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1661429114;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (237,'current_theme','My Theme','yes');
INSERT INTO `wp_options` VALUES (238,'theme_mods_neve','a:7:{i:0;b:0;s:19:\"neve_ran_migrations\";b:1;s:24:\"neve_migrated_hfg_colors\";b:1;s:18:\"nav_menu_locations\";a:0:{}s:13:\"ti_prev_theme\";s:15:\"twentytwentytwo\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1661431147;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:12:\"shop-sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}s:19:\"footer-four-widgets\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (239,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (240,'neve_install','1661429114','yes');
INSERT INTO `wp_options` VALUES (241,'_transient_timeout_neve_all_languages','1662033914','no');
INSERT INTO `wp_options` VALUES (242,'_transient_neve_all_languages','a:1:{s:12:\"translations\";a:49:{i:0;a:7:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-07-18 09:55:53\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}}i:1;a:7:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2020-02-26 11:24:11\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}}i:2;a:7:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-02-11 08:45:38\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}}i:3;a:7:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-12-27 14:20:43\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}}i:4;a:7:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2020-03-01 16:20:02\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:5;a:7:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2020-03-01 16:19:31\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:6;a:7:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-07-11 08:10:29\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:7;a:7:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2020-03-01 16:19:05\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:8;a:7:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-07-11 08:11:34\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:9;a:7:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-10-04 06:12:46\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}}i:10;a:7:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2020-10-19 09:09:49\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:11;a:7:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-08-06 19:29:29\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:12;a:7:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2020-02-06 23:41:00\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:13;a:7:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-08-06 00:44:02\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:14;a:7:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2020-02-06 23:43:20\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:15;a:7:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-07-03 02:27:14\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:16;a:7:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-01-20 14:05:36\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:17;a:7:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-02-08 06:56:09\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:18;a:7:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-07-03 02:28:18\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:19;a:7:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-08-15 03:41:34\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:20;a:7:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-06-28 04:59:33\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:21;a:7:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2019-11-15 15:58:27\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}}i:22;a:7:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-09-23 08:22:02\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}}i:23;a:7:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-09-23 08:24:53\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}}i:24;a:7:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-09-24 07:47:52\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}}i:25;a:7:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-10-01 12:45:24\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}}i:26;a:7:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-08-16 07:58:52\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}}i:27;a:7:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-09-23 08:25:59\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}}i:28;a:7:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-09-23 08:26:27\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}}i:29;a:7:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-07-02 23:38:37\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}}i:30;a:7:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-09-27 11:16:10\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}}i:31;a:7:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2020-11-10 01:25:37\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}}i:32;a:7:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-07-17 23:22:29\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}}i:33;a:7:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-08-19 11:04:29\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:34;a:7:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-08-18 14:19:02\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:35;a:7:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-07-21 14:01:51\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:36;a:7:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-06-14 08:55:37\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}}i:37;a:7:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-09-23 08:28:45\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}}i:38;a:7:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-09-23 08:29:14\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}}i:39;a:7:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-08-01 15:01:58\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}}i:40;a:7:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-07-10 08:29:45\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}}i:41;a:7:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-03-24 06:57:16\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}}i:42;a:7:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2020-02-27 15:47:53\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}}i:43;a:7:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-09-24 07:46:16\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}}i:44;a:7:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2022-07-11 11:11:14\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}}i:45;a:7:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-09-23 08:32:19\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}}i:46;a:7:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2021-09-23 08:34:35\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}}i:47;a:7:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2020-03-04 23:38:45\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}}i:48;a:7:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"3.3.6\";s:7:\"updated\";s:19:\"2020-06-29 21:40:09\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.3.6/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}}}}','no');
INSERT INTO `wp_options` VALUES (243,'neve_user_check_time','1661429115','yes');
INSERT INTO `wp_options` VALUES (244,'neve_new_user','yes','yes');
INSERT INTO `wp_options` VALUES (245,'_transient_timeout_neve_336versions','1661861115','no');
INSERT INTO `wp_options` VALUES (246,'_transient_neve_336versions','a:129:{i:0;a:2:{s:7:\"version\";s:5:\"1.0.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.0.4.zip\";}i:1;a:2:{s:7:\"version\";s:5:\"1.0.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.0.5.zip\";}i:2;a:2:{s:7:\"version\";s:5:\"1.0.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.0.6.zip\";}i:3;a:2:{s:7:\"version\";s:5:\"1.0.8\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.0.8.zip\";}i:4;a:2:{s:7:\"version\";s:5:\"1.0.9\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.0.9.zip\";}i:5;a:2:{s:7:\"version\";s:6:\"1.0.10\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.10.zip\";}i:6;a:2:{s:7:\"version\";s:6:\"1.0.11\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.11.zip\";}i:7;a:2:{s:7:\"version\";s:6:\"1.0.12\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.12.zip\";}i:8;a:2:{s:7:\"version\";s:6:\"1.0.13\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.13.zip\";}i:9;a:2:{s:7:\"version\";s:6:\"1.0.14\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.14.zip\";}i:10;a:2:{s:7:\"version\";s:6:\"1.0.15\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.15.zip\";}i:11;a:2:{s:7:\"version\";s:6:\"1.0.16\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.16.zip\";}i:12;a:2:{s:7:\"version\";s:6:\"1.0.18\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.18.zip\";}i:13;a:2:{s:7:\"version\";s:6:\"1.0.19\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.19.zip\";}i:14;a:2:{s:7:\"version\";s:6:\"1.0.20\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.20.zip\";}i:15;a:2:{s:7:\"version\";s:6:\"1.0.21\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.21.zip\";}i:16;a:2:{s:7:\"version\";s:6:\"1.0.22\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.22.zip\";}i:17;a:2:{s:7:\"version\";s:6:\"1.0.23\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.23.zip\";}i:18;a:2:{s:7:\"version\";s:6:\"1.0.24\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.24.zip\";}i:19;a:2:{s:7:\"version\";s:6:\"1.0.25\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.25.zip\";}i:20;a:2:{s:7:\"version\";s:6:\"1.0.26\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.26.zip\";}i:21;a:2:{s:7:\"version\";s:6:\"1.0.27\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.27.zip\";}i:22;a:2:{s:7:\"version\";s:6:\"1.0.28\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.28.zip\";}i:23;a:2:{s:7:\"version\";s:6:\"1.0.29\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.29.zip\";}i:24;a:2:{s:7:\"version\";s:5:\"1.1.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.1.0.zip\";}i:25;a:2:{s:7:\"version\";s:5:\"1.1.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.1.1.zip\";}i:26;a:2:{s:7:\"version\";s:5:\"1.1.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.1.2.zip\";}i:27;a:2:{s:7:\"version\";s:5:\"1.1.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.1.3.zip\";}i:28;a:2:{s:7:\"version\";s:5:\"1.1.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.1.4.zip\";}i:29;a:2:{s:7:\"version\";s:5:\"2.0.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.0.0.zip\";}i:30;a:2:{s:7:\"version\";s:5:\"2.1.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.1.0.zip\";}i:31;a:2:{s:7:\"version\";s:5:\"2.2.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.2.0.zip\";}i:32;a:2:{s:7:\"version\";s:5:\"2.3.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.1.zip\";}i:33;a:2:{s:7:\"version\";s:5:\"2.3.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.2.zip\";}i:34;a:2:{s:7:\"version\";s:5:\"2.3.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.3.zip\";}i:35;a:2:{s:7:\"version\";s:5:\"2.3.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.4.zip\";}i:36;a:2:{s:7:\"version\";s:5:\"2.3.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.5.zip\";}i:37;a:2:{s:7:\"version\";s:5:\"2.3.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.6.zip\";}i:38;a:2:{s:7:\"version\";s:5:\"2.3.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.7.zip\";}i:39;a:2:{s:7:\"version\";s:5:\"2.3.8\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.8.zip\";}i:40;a:2:{s:7:\"version\";s:5:\"2.3.9\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.9.zip\";}i:41;a:2:{s:7:\"version\";s:6:\"2.3.10\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.10.zip\";}i:42;a:2:{s:7:\"version\";s:6:\"2.3.11\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.11.zip\";}i:43;a:2:{s:7:\"version\";s:6:\"2.3.12\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.12.zip\";}i:44;a:2:{s:7:\"version\";s:6:\"2.3.14\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.14.zip\";}i:45;a:2:{s:7:\"version\";s:6:\"2.3.15\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.15.zip\";}i:46;a:2:{s:7:\"version\";s:6:\"2.3.17\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.17.zip\";}i:47;a:2:{s:7:\"version\";s:6:\"2.3.19\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.19.zip\";}i:48;a:2:{s:7:\"version\";s:6:\"2.3.20\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.20.zip\";}i:49;a:2:{s:7:\"version\";s:6:\"2.3.21\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.21.zip\";}i:50;a:2:{s:7:\"version\";s:6:\"2.3.22\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.22.zip\";}i:51;a:2:{s:7:\"version\";s:5:\"2.4.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.4.0.zip\";}i:52;a:2:{s:7:\"version\";s:5:\"2.4.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.4.1.zip\";}i:53;a:2:{s:7:\"version\";s:5:\"2.4.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.4.2.zip\";}i:54;a:2:{s:7:\"version\";s:5:\"2.4.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.4.3.zip\";}i:55;a:2:{s:7:\"version\";s:5:\"2.5.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.5.1.zip\";}i:56;a:2:{s:7:\"version\";s:5:\"2.5.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.5.2.zip\";}i:57;a:2:{s:7:\"version\";s:5:\"2.5.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.5.3.zip\";}i:58;a:2:{s:7:\"version\";s:5:\"2.5.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.5.4.zip\";}i:59;a:2:{s:7:\"version\";s:5:\"2.6.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.0.zip\";}i:60;a:2:{s:7:\"version\";s:5:\"2.6.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.1.zip\";}i:61;a:2:{s:7:\"version\";s:5:\"2.6.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.2.zip\";}i:62;a:2:{s:7:\"version\";s:5:\"2.6.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.3.zip\";}i:63;a:2:{s:7:\"version\";s:5:\"2.6.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.4.zip\";}i:64;a:2:{s:7:\"version\";s:5:\"2.6.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.5.zip\";}i:65;a:2:{s:7:\"version\";s:5:\"2.6.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.6.zip\";}i:66;a:2:{s:7:\"version\";s:5:\"2.7.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.0.zip\";}i:67;a:2:{s:7:\"version\";s:5:\"2.7.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.1.zip\";}i:68;a:2:{s:7:\"version\";s:5:\"2.7.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.2.zip\";}i:69;a:2:{s:7:\"version\";s:5:\"2.7.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.3.zip\";}i:70;a:2:{s:7:\"version\";s:5:\"2.7.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.4.zip\";}i:71;a:2:{s:7:\"version\";s:5:\"2.7.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.5.zip\";}i:72;a:2:{s:7:\"version\";s:5:\"2.7.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.6.zip\";}i:73;a:2:{s:7:\"version\";s:5:\"2.7.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.7.zip\";}i:74;a:2:{s:7:\"version\";s:5:\"2.8.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.8.0.zip\";}i:75;a:2:{s:7:\"version\";s:5:\"2.8.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.8.1.zip\";}i:76;a:2:{s:7:\"version\";s:5:\"2.8.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.8.2.zip\";}i:77;a:2:{s:7:\"version\";s:5:\"2.8.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.8.3.zip\";}i:78;a:2:{s:7:\"version\";s:5:\"2.8.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.8.4.zip\";}i:79;a:2:{s:7:\"version\";s:5:\"2.9.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.0.zip\";}i:80;a:2:{s:7:\"version\";s:5:\"2.9.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.1.zip\";}i:81;a:2:{s:7:\"version\";s:5:\"2.9.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.2.zip\";}i:82;a:2:{s:7:\"version\";s:5:\"2.9.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.3.zip\";}i:83;a:2:{s:7:\"version\";s:5:\"2.9.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.4.zip\";}i:84;a:2:{s:7:\"version\";s:5:\"2.9.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.5.zip\";}i:85;a:2:{s:7:\"version\";s:6:\"2.10.0\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.10.0.zip\";}i:86;a:2:{s:7:\"version\";s:6:\"2.10.1\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.10.1.zip\";}i:87;a:2:{s:7:\"version\";s:6:\"2.10.2\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.10.2.zip\";}i:88;a:2:{s:7:\"version\";s:6:\"2.10.3\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.10.3.zip\";}i:89;a:2:{s:7:\"version\";s:6:\"2.10.4\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.10.4.zip\";}i:90;a:2:{s:7:\"version\";s:6:\"2.11.0\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.0.zip\";}i:91;a:2:{s:7:\"version\";s:6:\"2.11.1\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.1.zip\";}i:92;a:2:{s:7:\"version\";s:6:\"2.11.2\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.2.zip\";}i:93;a:2:{s:7:\"version\";s:6:\"2.11.3\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.3.zip\";}i:94;a:2:{s:7:\"version\";s:6:\"2.11.4\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.4.zip\";}i:95;a:2:{s:7:\"version\";s:6:\"2.11.5\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.5.zip\";}i:96;a:2:{s:7:\"version\";s:6:\"2.11.6\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.6.zip\";}i:97;a:2:{s:7:\"version\";s:5:\"3.0.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.0.zip\";}i:98;a:2:{s:7:\"version\";s:5:\"3.0.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.1.zip\";}i:99;a:2:{s:7:\"version\";s:5:\"3.0.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.2.zip\";}i:100;a:2:{s:7:\"version\";s:5:\"3.0.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.3.zip\";}i:101;a:2:{s:7:\"version\";s:5:\"3.0.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.4.zip\";}i:102;a:2:{s:7:\"version\";s:5:\"3.0.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.5.zip\";}i:103;a:2:{s:7:\"version\";s:5:\"3.0.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.6.zip\";}i:104;a:2:{s:7:\"version\";s:5:\"3.0.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.7.zip\";}i:105;a:2:{s:7:\"version\";s:5:\"3.0.8\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.8.zip\";}i:106;a:2:{s:7:\"version\";s:5:\"3.0.9\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.9.zip\";}i:107;a:2:{s:7:\"version\";s:6:\"3.0.10\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.3.0.10.zip\";}i:108;a:2:{s:7:\"version\";s:6:\"3.0.11\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.3.0.11.zip\";}i:109;a:2:{s:7:\"version\";s:5:\"3.1.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.0.zip\";}i:110;a:2:{s:7:\"version\";s:5:\"3.1.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.1.zip\";}i:111;a:2:{s:7:\"version\";s:5:\"3.1.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.2.zip\";}i:112;a:2:{s:7:\"version\";s:5:\"3.1.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.3.zip\";}i:113;a:2:{s:7:\"version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.4.zip\";}i:114;a:2:{s:7:\"version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.5.zip\";}i:115;a:2:{s:7:\"version\";s:5:\"3.1.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.6.zip\";}i:116;a:2:{s:7:\"version\";s:5:\"3.2.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.0.zip\";}i:117;a:2:{s:7:\"version\";s:5:\"3.2.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.1.zip\";}i:118;a:2:{s:7:\"version\";s:5:\"3.2.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.2.zip\";}i:119;a:2:{s:7:\"version\";s:5:\"3.2.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.3.zip\";}i:120;a:2:{s:7:\"version\";s:5:\"3.2.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.4.zip\";}i:121;a:2:{s:7:\"version\";s:5:\"3.2.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.5.zip\";}i:122;a:2:{s:7:\"version\";s:5:\"3.3.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.0.zip\";}i:123;a:2:{s:7:\"version\";s:5:\"3.3.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.1.zip\";}i:124;a:2:{s:7:\"version\";s:5:\"3.3.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.2.zip\";}i:125;a:2:{s:7:\"version\";s:5:\"3.3.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.3.zip\";}i:126;a:2:{s:7:\"version\";s:5:\"3.3.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.4.zip\";}i:127;a:2:{s:7:\"version\";s:5:\"3.3.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.5.zip\";}i:128;a:2:{s:7:\"version\";s:5:\"3.3.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.6.zip\";}}','no');
INSERT INTO `wp_options` VALUES (247,'neve_notice_dismissed','yes','yes');
INSERT INTO `wp_options` VALUES (258,'action_scheduler_hybrid_store_demarkation','6','yes');
INSERT INTO `wp_options` VALUES (259,'schema-ActionScheduler_StoreSchema','6.0.1661429267','yes');
INSERT INTO `wp_options` VALUES (260,'schema-ActionScheduler_LoggerSchema','3.0.1661429267','yes');
INSERT INTO `wp_options` VALUES (263,'woocommerce_schema_version','430','yes');
INSERT INTO `wp_options` VALUES (264,'woocommerce_store_address','','yes');
INSERT INTO `wp_options` VALUES (265,'woocommerce_store_address_2','','yes');
INSERT INTO `wp_options` VALUES (266,'woocommerce_store_city','','yes');
INSERT INTO `wp_options` VALUES (267,'woocommerce_default_country','US:CA','yes');
INSERT INTO `wp_options` VALUES (268,'woocommerce_store_postcode','','yes');
INSERT INTO `wp_options` VALUES (269,'woocommerce_allowed_countries','all','yes');
INSERT INTO `wp_options` VALUES (270,'woocommerce_all_except_countries','','yes');
INSERT INTO `wp_options` VALUES (271,'woocommerce_specific_allowed_countries','','yes');
INSERT INTO `wp_options` VALUES (272,'woocommerce_ship_to_countries','','yes');
INSERT INTO `wp_options` VALUES (273,'woocommerce_specific_ship_to_countries','','yes');
INSERT INTO `wp_options` VALUES (274,'woocommerce_default_customer_address','base','yes');
INSERT INTO `wp_options` VALUES (275,'woocommerce_calc_taxes','no','yes');
INSERT INTO `wp_options` VALUES (276,'woocommerce_enable_coupons','yes','yes');
INSERT INTO `wp_options` VALUES (277,'woocommerce_calc_discounts_sequentially','no','no');
INSERT INTO `wp_options` VALUES (278,'woocommerce_currency','USD','yes');
INSERT INTO `wp_options` VALUES (279,'woocommerce_currency_pos','left','yes');
INSERT INTO `wp_options` VALUES (280,'woocommerce_price_thousand_sep',',','yes');
INSERT INTO `wp_options` VALUES (281,'woocommerce_price_decimal_sep','.','yes');
INSERT INTO `wp_options` VALUES (282,'woocommerce_price_num_decimals','2','yes');
INSERT INTO `wp_options` VALUES (283,'woocommerce_shop_page_id','7','yes');
INSERT INTO `wp_options` VALUES (284,'woocommerce_cart_redirect_after_add','no','yes');
INSERT INTO `wp_options` VALUES (285,'woocommerce_enable_ajax_add_to_cart','yes','yes');
INSERT INTO `wp_options` VALUES (286,'woocommerce_placeholder_image','6','yes');
INSERT INTO `wp_options` VALUES (287,'woocommerce_weight_unit','kg','yes');
INSERT INTO `wp_options` VALUES (288,'woocommerce_dimension_unit','cm','yes');
INSERT INTO `wp_options` VALUES (289,'woocommerce_enable_reviews','yes','yes');
INSERT INTO `wp_options` VALUES (290,'woocommerce_review_rating_verification_label','yes','no');
INSERT INTO `wp_options` VALUES (291,'woocommerce_review_rating_verification_required','no','no');
INSERT INTO `wp_options` VALUES (292,'woocommerce_enable_review_rating','yes','yes');
INSERT INTO `wp_options` VALUES (293,'woocommerce_review_rating_required','yes','no');
INSERT INTO `wp_options` VALUES (294,'woocommerce_manage_stock','yes','yes');
INSERT INTO `wp_options` VALUES (295,'woocommerce_hold_stock_minutes','60','no');
INSERT INTO `wp_options` VALUES (296,'woocommerce_notify_low_stock','yes','no');
INSERT INTO `wp_options` VALUES (297,'woocommerce_notify_no_stock','yes','no');
INSERT INTO `wp_options` VALUES (298,'woocommerce_stock_email_recipient','degand.anthony@gmail.com','no');
INSERT INTO `wp_options` VALUES (299,'woocommerce_notify_low_stock_amount','2','no');
INSERT INTO `wp_options` VALUES (300,'woocommerce_notify_no_stock_amount','0','yes');
INSERT INTO `wp_options` VALUES (301,'woocommerce_hide_out_of_stock_items','no','yes');
INSERT INTO `wp_options` VALUES (302,'woocommerce_stock_format','','yes');
INSERT INTO `wp_options` VALUES (303,'woocommerce_file_download_method','force','no');
INSERT INTO `wp_options` VALUES (304,'woocommerce_downloads_redirect_fallback_allowed','no','no');
INSERT INTO `wp_options` VALUES (305,'woocommerce_downloads_require_login','no','no');
INSERT INTO `wp_options` VALUES (306,'woocommerce_downloads_grant_access_after_payment','yes','no');
INSERT INTO `wp_options` VALUES (307,'woocommerce_downloads_add_hash_to_filename','yes','yes');
INSERT INTO `wp_options` VALUES (308,'woocommerce_attribute_lookup_enabled','no','yes');
INSERT INTO `wp_options` VALUES (309,'woocommerce_attribute_lookup_direct_updates','no','yes');
INSERT INTO `wp_options` VALUES (310,'woocommerce_prices_include_tax','no','yes');
INSERT INTO `wp_options` VALUES (311,'woocommerce_tax_based_on','shipping','yes');
INSERT INTO `wp_options` VALUES (312,'woocommerce_shipping_tax_class','inherit','yes');
INSERT INTO `wp_options` VALUES (313,'woocommerce_tax_round_at_subtotal','no','yes');
INSERT INTO `wp_options` VALUES (314,'woocommerce_tax_classes','','yes');
INSERT INTO `wp_options` VALUES (315,'woocommerce_tax_display_shop','excl','yes');
INSERT INTO `wp_options` VALUES (316,'woocommerce_tax_display_cart','excl','yes');
INSERT INTO `wp_options` VALUES (317,'woocommerce_price_display_suffix','','yes');
INSERT INTO `wp_options` VALUES (318,'woocommerce_tax_total_display','itemized','no');
INSERT INTO `wp_options` VALUES (319,'woocommerce_enable_shipping_calc','yes','no');
INSERT INTO `wp_options` VALUES (320,'woocommerce_shipping_cost_requires_address','no','yes');
INSERT INTO `wp_options` VALUES (321,'woocommerce_ship_to_destination','billing','no');
INSERT INTO `wp_options` VALUES (322,'woocommerce_shipping_debug_mode','no','yes');
INSERT INTO `wp_options` VALUES (323,'woocommerce_enable_guest_checkout','yes','no');
INSERT INTO `wp_options` VALUES (324,'woocommerce_enable_checkout_login_reminder','no','no');
INSERT INTO `wp_options` VALUES (325,'woocommerce_enable_signup_and_login_from_checkout','no','no');
INSERT INTO `wp_options` VALUES (326,'woocommerce_enable_myaccount_registration','no','no');
INSERT INTO `wp_options` VALUES (327,'woocommerce_registration_generate_username','yes','no');
INSERT INTO `wp_options` VALUES (328,'woocommerce_registration_generate_password','yes','no');
INSERT INTO `wp_options` VALUES (329,'woocommerce_erasure_request_removes_order_data','no','no');
INSERT INTO `wp_options` VALUES (330,'woocommerce_erasure_request_removes_download_data','no','no');
INSERT INTO `wp_options` VALUES (331,'woocommerce_allow_bulk_remove_personal_data','no','no');
INSERT INTO `wp_options` VALUES (332,'woocommerce_registration_privacy_policy_text','Vos données personnelles seront utilisées pour vous accompagner au cours de votre visite du site web, gérer l’accès à votre compte, et pour d’autres raisons décrites dans notre [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (333,'woocommerce_checkout_privacy_policy_text','Vos données personnelles seront utilisées pour le traitement de votre commande, vous accompagner au cours de votre visite du site web, et pour d’autres raisons décrites dans notre [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (334,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (335,'woocommerce_trash_pending_orders','','no');
INSERT INTO `wp_options` VALUES (336,'woocommerce_trash_failed_orders','','no');
INSERT INTO `wp_options` VALUES (337,'woocommerce_trash_cancelled_orders','','no');
INSERT INTO `wp_options` VALUES (338,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (339,'woocommerce_email_from_name','Trident','no');
INSERT INTO `wp_options` VALUES (340,'woocommerce_email_from_address','degand.anthony@gmail.com','no');
INSERT INTO `wp_options` VALUES (341,'woocommerce_email_header_image','','no');
INSERT INTO `wp_options` VALUES (342,'woocommerce_email_footer_text','{site_title} &mdash; Built with {WooCommerce}','no');
INSERT INTO `wp_options` VALUES (343,'woocommerce_email_base_color','#7f54b3','no');
INSERT INTO `wp_options` VALUES (344,'woocommerce_email_background_color','#f7f7f7','no');
INSERT INTO `wp_options` VALUES (345,'woocommerce_email_body_background_color','#ffffff','no');
INSERT INTO `wp_options` VALUES (346,'woocommerce_email_text_color','#3c3c3c','no');
INSERT INTO `wp_options` VALUES (347,'woocommerce_merchant_email_notifications','no','no');
INSERT INTO `wp_options` VALUES (348,'woocommerce_cart_page_id','8','no');
INSERT INTO `wp_options` VALUES (349,'woocommerce_checkout_page_id','9','no');
INSERT INTO `wp_options` VALUES (350,'woocommerce_myaccount_page_id','10','no');
INSERT INTO `wp_options` VALUES (351,'woocommerce_terms_page_id','','no');
INSERT INTO `wp_options` VALUES (352,'woocommerce_force_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (353,'woocommerce_unforce_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (354,'woocommerce_checkout_pay_endpoint','order-pay','yes');
INSERT INTO `wp_options` VALUES (355,'woocommerce_checkout_order_received_endpoint','order-received','yes');
INSERT INTO `wp_options` VALUES (356,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes');
INSERT INTO `wp_options` VALUES (357,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes');
INSERT INTO `wp_options` VALUES (358,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes');
INSERT INTO `wp_options` VALUES (359,'woocommerce_myaccount_orders_endpoint','orders','yes');
INSERT INTO `wp_options` VALUES (360,'woocommerce_myaccount_view_order_endpoint','view-order','yes');
INSERT INTO `wp_options` VALUES (361,'woocommerce_myaccount_downloads_endpoint','downloads','yes');
INSERT INTO `wp_options` VALUES (362,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes');
INSERT INTO `wp_options` VALUES (363,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes');
INSERT INTO `wp_options` VALUES (364,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes');
INSERT INTO `wp_options` VALUES (365,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes');
INSERT INTO `wp_options` VALUES (366,'woocommerce_logout_endpoint','customer-logout','yes');
INSERT INTO `wp_options` VALUES (367,'woocommerce_api_enabled','no','yes');
INSERT INTO `wp_options` VALUES (368,'woocommerce_allow_tracking','no','no');
INSERT INTO `wp_options` VALUES (369,'woocommerce_show_marketplace_suggestions','yes','no');
INSERT INTO `wp_options` VALUES (370,'woocommerce_single_image_width','600','yes');
INSERT INTO `wp_options` VALUES (371,'woocommerce_thumbnail_image_width','300','yes');
INSERT INTO `wp_options` VALUES (372,'woocommerce_checkout_highlight_required_fields','yes','yes');
INSERT INTO `wp_options` VALUES (373,'woocommerce_demo_store','no','no');
INSERT INTO `wp_options` VALUES (374,'wc_downloads_approved_directories_mode','enabled','yes');
INSERT INTO `wp_options` VALUES (375,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:23:\"/boutique/%product_cat%\";s:13:\"category_base\";s:17:\"categorie-produit\";s:8:\"tag_base\";s:17:\"etiquette-produit\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (376,'current_theme_supports_woocommerce','no','yes');
INSERT INTO `wp_options` VALUES (377,'woocommerce_queue_flush_rewrite_rules','no','yes');
INSERT INTO `wp_options` VALUES (379,'product_cat_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (380,'default_product_cat','16','yes');
INSERT INTO `wp_options` VALUES (381,'woocommerce_refund_returns_page_id','11','yes');
INSERT INTO `wp_options` VALUES (384,'woocommerce_paypal_settings','a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:107:\"Payer avec PayPal, vous pouvez payer avec votre carte de crédit si vous n&rsquo;avez pas de compte PayPal.\";s:5:\"email\";s:24:\"degand.anthony@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:24:\"degand.anthony@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (385,'woocommerce_version','6.8.2','yes');
INSERT INTO `wp_options` VALUES (386,'woocommerce_db_version','6.8.2','yes');
INSERT INTO `wp_options` VALUES (387,'woocommerce_admin_install_timestamp','1661429270','yes');
INSERT INTO `wp_options` VALUES (388,'woocommerce_inbox_variant_assignment','10','yes');
INSERT INTO `wp_options` VALUES (392,'_transient_jetpack_autoloader_plugin_paths','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (393,'action_scheduler_lock_async-request-runner','1661777817','yes');
INSERT INTO `wp_options` VALUES (394,'woocommerce_admin_notices','a:1:{i:0;s:20:\"no_secure_connection\";}','yes');
INSERT INTO `wp_options` VALUES (395,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"nJbRoTvOoOJC95D5KCRadq1rlI7PDjuD\";}','yes');
INSERT INTO `wp_options` VALUES (396,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (397,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (398,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (399,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (400,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (401,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (402,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (403,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (404,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (405,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (406,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (407,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (408,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (415,'_transient_timeout_woocommerce_admin_remote_inbox_notifications_specs','1662379676','no');
INSERT INTO `wp_options` VALUES (416,'_transient_woocommerce_admin_remote_inbox_notifications_specs','a:36:{s:27:\"new_in_app_marketplace_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"new_in_app_marketplace_2021\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:36:\"Customize your store with extensions\";s:7:\"content\";s:164:\"Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"browse_extensions\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Browse extensions\";}}s:3:\"url\";s:24:\"admin.php?page=wc-addons\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:14:23\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.7\";}}}s:21:\"wayflyer_bnpl_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:21:\"wayflyer_bnpl_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:48:\"Grow your business with funding through Wayflyer\";s:7:\"content\";s:261:\"Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"wayflyer_bnpl_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Level up with funding\";}}s:3:\"url\";s:118:\"https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-17 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-18 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IE\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NL\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-affirm\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}}}}}}s:35:\"wc_shipping_mobile_app_usps_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:94:\"Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Shipping\";}}s:3:\"url\";s:135:\"https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:25:\"woocommerce-shipping-usps\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}}s:30:\"wc_shipping_mobile_app_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:69:\"Print and manage your shipping labels with the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:30:\"Get the WooCommerce Mobile App\";}}s:3:\"url\";s:116:\"https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:16:48\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:251:\"WooCommerce Shipping & Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:17:25\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:270:\"Product Add-Ons allow your customers to personalize products while they\'re shopping on your online store. No more follow-up email requests—customers get what they want, before they\'re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:18:01\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:18:37\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:467:\"That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:130:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:177:\"It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:144:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:49\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:39:\"wc-admin-first-five-things-to-customize\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-admin-first-five-things-to-customize\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"The first 5 things to customize in your store\";s:7:\"content\";s:175:\"Deciding what to start with first is tricky. To help you properly prioritize, we’ve put together this short list of the first few things you should customize in WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:130:\"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:20:31\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:2;}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:5:\"value\";s:9:\"NOT EMPTY\";s:7:\"default\";s:9:\"NOT EMPTY\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:13\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}s:29:\"share-your-feedback-on-paypal\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"share-your-feedback-on-paypal\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:29:\"Share your feedback on PayPal\";s:7:\"content\";s:127:\"Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:43:\"http://automattic.survey.fm/paypal-feedback\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:50\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}}}s:31:\"google_listings_and_ads_install\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"google_listings_and_ads_install\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Drive traffic and sales with Google\";s:7:\"content\";s:123:\"Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"get-started\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Get started\";}}s:3:\"url\";s:122:\"https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-06-09 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google_listings_and_ads\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:10;}}}s:39:\"wc-subscriptions-security-update-3-0-15\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-subscriptions-security-update-3-0-15\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:42:\"WooCommerce Subscriptions security update!\";s:7:\"content\";s:738:\"We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br/><br/>Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br/><br/>We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br/><br/>If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"update-wc-subscriptions-3-0-15\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"View latest version\";}}s:3:\"url\";s:30:\"&page=wc-addons&section=helper\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:30:32\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"woocommerce-subscriptions\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:6:\"3.0.15\";}}}s:29:\"woocommerce-core-update-5-4-0\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"woocommerce-core-update-5-4-0\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Update to WooCommerce 5.4.1 now\";s:7:\"content\";s:140:\"WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:20:\"update-wc-core-5-4-0\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:25:\"How to update WooCommerce\";}}s:3:\"url\";s:64:\"https://docs.woocommerce.com/document/how-to-update-woocommerce/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:31:08\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.0\";}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-11\";s:7:\"content\";s:19:\"wcpay-promo-2020-11\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-12\";s:7:\"content\";s:19:\"wcpay-promo-2020-12\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:34:\"ppxo-pps-upgrade-paypal-payments-1\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-1\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Get the latest PayPal extension for WooCommerce\";s:7:\"content\";s:442:\"Heads up! There’s a new PayPal on the block!<br/><br/>Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br/><br/>Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-1\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:33:53\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:7;s:7:\"default\";i:1;s:9:\"operation\";s:1:\"<\";}}}s:34:\"ppxo-pps-upgrade-paypal-payments-2\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-2\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Upgrade your PayPal experience!\";s:7:\"content\";s:358:\"Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-2\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:34:30\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:6;s:7:\"default\";i:1;s:9:\"operation\";s:1:\">\";}}}s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:56:\"Action required: Critical vulnerabilities in WooCommerce\";s:7:\"content\";s:574:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:59:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.6\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.8\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.9\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.6\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.2\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.3\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.4\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.4\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.5\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.2\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.4\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.3\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.3\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.4\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.2\";}i:32;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.3\";}i:33;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.4\";}i:34;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.1\";}i:35;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:36;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.2\";}i:37;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.3\";}i:38;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}i:39;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"3.5.10\";}i:40;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.7\";}i:41;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.3\";}i:42;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.3\";}i:43;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.5\";}i:44;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.4\";}i:45;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.4\";}i:46;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.5\";}i:47;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.6\";}i:48;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.4\";}i:49;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.5\";}i:50;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.5\";}i:51;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.4\";}i:52;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.3\";}i:53;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.5\";}i:54;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.3\";}i:55;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.3\";}i:56;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.5\";}i:57;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.3\";}i:58;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.4\";}}}s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"Action required: Critical vulnerabilities in WooCommerce Blocks\";s:7:\"content\";s:570:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/>Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br/><br/>For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:32:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:42\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"2.5.16\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.6.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.7.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.8.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.9.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.0.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.1.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.2.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.1\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}}}s:45:\"woocommerce-core-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:45:\"woocommerce-core-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"Solved: Critical vulnerabilities patched in WooCommerce\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:18\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:23:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.6\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.8\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.9\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.2\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.4\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.2\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.2\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.1\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:62:\"Solved: Critical vulnerabilities patched in WooCommerce Blocks\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:54\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:31:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"2.5.16\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.7.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.8.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.9.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.0.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.1.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.2.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.1\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.1\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:19:\"habit-moment-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"habit-moment-survey\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"We’re all ears! Share your experience so far with WooCommerce\";s:7:\"content\";s:136:\"We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:45:\"https://automattic.survey.fm/store-management\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:37:30\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:30;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:0;}}}s:26:\"ecomm-wc-navigation-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"ecomm-wc-navigation-survey\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"We’d like your feedback on the WooCommerce navigation\";s:7:\"content\";s:134:\"We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:32:\"share-navigation-survey-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:63:\"https://automattic.survey.fm/feedback-on-woocommerce-navigation\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:38:07\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:12:\"is_ecommerce\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:90;}}}s:42:\"woocommerce-core-paypal-march-2022-updated\";O:8:\"stdClass\":8:{s:4:\"slug\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:391:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:42:\"woocommerce-core-paypal-march-2022-dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:44:57\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:3:\"5.5\";}i:1;a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}}}}}}}s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:237:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:45:04\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}s:24:\"pinterest_03_2022_update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:24:\"pinterest_03_2022_update\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Your Pinterest for WooCommerce plugin is out of date!\";s:7:\"content\";s:262:\"Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"pinterest_03_2022_update\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"Update Instructions\";}}s:3:\"url\";s:148:\"https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-23 00:00:39\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"pinterest-for-woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"1.0.8\";}}}s:33:\"store_setup_survey_survey_q2_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:33:\"store_setup_survey_survey_q2_2022\";s:4:\"type\";s:6:\"survey\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:30:\"How is your store setup going?\";s:7:\"content\";s:232:\"Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:53:\"store_setup_survey_survey_q2_2022_share_your_thoughts\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Tell us how it’s going\";}}s:3:\"url\";s:52:\"https://automattic.survey.fm/store-setup-survey-2022\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-05-09 08:42:10\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:7;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:9;}}}s:17:\"wc-admin-wisepad3\";O:8:\"stdClass\":8:{s:4:\"slug\";s:17:\"wc-admin-wisepad3\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:74:\"Take your business on the go in Canada with WooCommerce In-Person Payments\";s:7:\"content\";s:275:\"Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"wc-admin-wisepad3\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Grow my business offline\";}}s:3:\"url\";s:126:\"https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-06-15 10:00:28\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}}}s:20:\"mercado_pago_q3_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"mercado_pago_q3_2022\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:7:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Get paid with Mercado Pago Checkout\";s:7:\"content\";s:228:\"Give your customers a checkout they can trust with Latin America\'s leading payment processor. Securely accept debit and credit cards, cash, bank transfers, and installment payments – backed by exclusive fraud prevention tools.\";}i:1;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"es_AR\";s:5:\"title\";s:38:\"Cobrá con el Checkout de Mercado Pago\";s:7:\"content\";s:327:\"Ofrecé a tus clientes el procesador de pagos líder en América Latina para las tiendas de WooCommerce. Acepta pagos de forma segura con dinero en cuenta, tarjetas de débito y crédito, dinero en efectivo, transferencias bancarias y meses con y sin interés, con el respaldo herramientas exclusivas de prevención del fraude.\";}i:2;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"es_UY\";s:5:\"title\";s:38:\"Cobrá con el Checkout de Mercado Pago\";s:7:\"content\";s:327:\"Ofrecé a tus clientes el procesador de pagos líder en América Latina para las tiendas de WooCommerce. Acepta pagos de forma segura con dinero en cuenta, tarjetas de débito y crédito, dinero en efectivo, transferencias bancarias y meses con y sin interés, con el respaldo herramientas exclusivas de prevención del fraude.\";}i:3;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"es_CL\";s:5:\"title\";s:38:\"Cobrá con el Checkout de Mercado Pago\";s:7:\"content\";s:327:\"Ofrecé a tus clientes el procesador de pagos líder en América Latina para las tiendas de WooCommerce. Acepta pagos de forma segura con dinero en cuenta, tarjetas de débito y crédito, dinero en efectivo, transferencias bancarias y meses con y sin interés, con el respaldo herramientas exclusivas de prevención del fraude.\";}i:4;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"es_CO\";s:5:\"title\";s:38:\"Cobrá con el Checkout de Mercado Pago\";s:7:\"content\";s:327:\"Ofrecé a tus clientes el procesador de pagos líder en América Latina para las tiendas de WooCommerce. Acepta pagos de forma segura con dinero en cuenta, tarjetas de débito y crédito, dinero en efectivo, transferencias bancarias y meses con y sin interés, con el respaldo herramientas exclusivas de prevención del fraude.\";}i:5;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"es_PE\";s:5:\"title\";s:38:\"Cobrá con el Checkout de Mercado Pago\";s:7:\"content\";s:327:\"Ofrecé a tus clientes el procesador de pagos líder en América Latina para las tiendas de WooCommerce. Acepta pagos de forma segura con dinero en cuenta, tarjetas de débito y crédito, dinero en efectivo, transferencias bancarias y meses con y sin interés, con el respaldo herramientas exclusivas de prevención del fraude.\";}i:6;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"pt_BR\";s:5:\"title\";s:39:\"Venda agora com o Checkout Mercado Pago\";s:7:\"content\";s:295:\"O líder em processamento de vendas na américa latina agora está disponível para Woocommerce. Aceite de forma segura pagamentos com cartão de débito e crédito, boleto, transferências bancárias e pagamentos parcelados- tudo isso apoiado por ferramentas exclusivas de prevenção a fraude.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:20:\"mercado_pago_q3_2022\";s:7:\"locales\";a:8:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Free download\";}i:1;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_AR\";s:5:\"label\";s:17:\"Descargalo gratis\";}i:2;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"pt_BR\";s:5:\"label\";s:14:\"Baixar grátis\";}i:3;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_MX\";s:5:\"label\";s:17:\"Descargalo gratis\";}i:4;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_CL\";s:5:\"label\";s:17:\"Descargalo gratis\";}i:5;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_CO\";s:5:\"label\";s:17:\"Descargalo gratis\";}i:6;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_PE\";s:5:\"label\";s:17:\"Descargalo gratis\";}i:7;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_UY\";s:5:\"label\";s:17:\"Descargalo gratis\";}}s:3:\"url\";s:130:\"https://woocommerce.com/products/mercado-pago-checkout/?utm_source=inbox_note&utm_medium=product&utm_campaign=mercado_pago_q3_2022\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-08 11:00:01\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2022-08-31 23:59:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MX\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BR\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CL\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PE\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UY\";}}}}}s:47:\"woocommerce-payments-august-2022-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"Action required: Please update WooCommerce Payments\";s:7:\"content\";s:213:\"An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:44:17\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"3.9\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"4.5.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.1\";}}}s:46:\"woocommerce-payments-august-2022-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-payments-august-2022-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"WooCommerce Payments has been automatically updated\";s:7:\"content\";s:265:\"You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:41:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.3\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.1\";}}}}}s:35:\"mobile_app_order_management_q3_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:35:\"mobile_app_order_management_q3_2022\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Take order management on the go\";s:7:\"content\";s:210:\"The WooCommerce Mobile App continues to get better with added order management functionality! Add or remove products, edit fees, or change the shipping options in any existing order – all from within the app.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"mobile_app_order_management_q3_2022\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:30:\"Get the WooCommerce Mobile App\";}}s:3:\"url\";s:121:\"https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=mobile_app_order_management_q3_2022\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-17 01:32:05\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2022-08-31 23:59:00\";}}}s:40:\"product_creation_usability_test_3_months\";O:8:\"stdClass\":8:{s:4:\"slug\";s:40:\"product_creation_usability_test_3_months\";s:4:\"type\";s:6:\"survey\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:39:\"Have a say in the future of WooCommerce\";s:7:\"content\";s:165:\"Take an early look at the future of editing products in WooCommerce. Share your thoughts (~5 minutes) and help shape the experience for yourself and other merchants.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:52:\"product_creation_usability_test_3_months_take_a_look\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Try it now\";}}s:3:\"url\";s:27:\"https://t.maze.co/103446424\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-25 12:48:05\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:90;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:0;}}}}','no');
INSERT INTO `wp_options` VALUES (417,'wc_remote_inbox_notifications_stored_state','O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:0;}','no');
INSERT INTO `wp_options` VALUES (418,'_transient_timeout_woocommerce_admin_remote_free_extensions_specs','1662034072','no');
INSERT INTO `wp_options` VALUES (419,'_transient_woocommerce_admin_remote_free_extensions_specs','a:4:{s:10:\"obw/basics\";O:8:\"stdClass\":3:{s:3:\"key\";s:10:\"obw/basics\";s:5:\"title\";s:14:\"Get the basics\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":4:{s:11:\"description\";s:163:\"Accept credit cards and other popular payment methods with <a href=\"https://woocommerce.com/products/woocommerce-payments\" target=\"_blank\">WooCommerce Payments</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:20:\"woocommerce-payments\";}i:1;O:8:\"stdClass\":4:{s:11:\"description\";s:119:\"Print shipping labels with <a href=\"https://woocommerce.com/products/shipping\" target=\"_blank\">WooCommerce Shipping</a>\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:13:\"product_types\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:5:\"count\";}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";i:1;s:7:\"default\";a:0:{}s:9:\"operation\";s:2:\"!=\";}}i:1;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:15:\"product_types.0\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";s:9:\"downloads\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:2:\"!=\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:29:\"woocommerce-services:shipping\";}i:2;O:8:\"stdClass\":4:{s:11:\"description\";s:111:\"Get automated sales tax with <a href=\"https://woocommerce.com/products/tax\" target=\"_blank\">WooCommerce Tax</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:24:\"woocommerce-services:tax\";}i:3;O:8:\"stdClass\":4:{s:11:\"description\";s:110:\"Enhance speed and security with <a href=\"https://woocommerce.com/products/jetpack\" target=\"_blank\">Jetpack</a>\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:7:\"jetpack\";}}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:7:\"jetpack\";}}}s:8:\"obw/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:8:\"obw/grow\";s:5:\"title\";s:15:\"Grow your store\";s:7:\"plugins\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:115:\"Level up your email marketing with <a href=\"https://woocommerce.com/products/mailpoet\" target=\"_blank\">MailPoet</a>\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:8:\"mailpoet\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:8:\"mailpoet\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:127:\"Drive sales with <a href=\"https://woocommerce.com/products/google-listings-and-ads\" target=\"_blank\">Google Listings and Ads</a>\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google-listings-and-ads\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:23:\"google-listings-and-ads\";}}}s:15:\"task-list/reach\";O:8:\"stdClass\":3:{s:3:\"key\";s:15:\"task-list/reach\";s:5:\"title\";s:22:\"Reach out to customers\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:111:\"Create and send purchase follow-up emails, newsletters, and promotional campaigns straight from your dashboard.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailpoet.png\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:12:\"mailpoet:alt\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:9:\"Mailchimp\";s:11:\"description\";s:78:\"Send targeted campaigns, recover abandoned carts and much more with Mailchimp.\";s:9:\"image_url\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailchimp-for-woocommerce.png\";s:10:\"manage_url\";s:36:\"admin.php?page=mailchimp-woocommerce\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:25:\"mailchimp-for-woocommerce\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:29:\"Creative Mail for WooCommerce\";s:11:\"description\";s:99:\"Create on-brand store campaigns, fast email promotions and customer retargeting with Creative Mail.\";s:9:\"image_url\";s:121:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/creative-mail-by-constant-contact.png\";s:10:\"manage_url\";s:27:\"admin.php?page=creativemail\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:33:\"creative-mail-by-constant-contact\";}}}s:14:\"task-list/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:14:\"task-list/grow\";s:5:\"title\";s:15:\"Grow your store\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:134:\"Reach more shoppers and drive sales for your store. Integrate with Google to list your products for free and launch paid ad campaigns.\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:27:\"google-listings-and-ads:alt\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:22:\"TikTok for WooCommerce\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/tiktok.svg\";s:11:\"description\";s:118:\"Grow your online sales by promoting your products on TikTok to over one billion monthly active users around the world.\";s:10:\"manage_url\";s:21:\"admin.php?page=tiktok\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MY\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PH\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ID\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"VN\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TH\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"KR\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IL\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UA\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TR\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SA\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:19:\"tiktok-for-business\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"Pinterest for WooCommerce\";s:11:\"description\";s:159:\"Get your products in front of Pinterest users searching for ideas and things to buy. Get started with Pinterest and make your entire product catalog browsable.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/pinterest.png\";s:10:\"manage_url\";s:51:\"admin.php?page=wc-admin&path=%2Fpinterest%2Flanding\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:25:\"pinterest-for-woocommerce\";}}}}','no');
INSERT INTO `wp_options` VALUES (420,'_transient_woocommerce_shipping_task_zone_count_transient','0','yes');
INSERT INTO `wp_options` VALUES (427,'wc_blocks_surface_cart_checkout_probability','19','yes');
INSERT INTO `wp_options` VALUES (428,'wc_blocks_db_schema_version','260','yes');
INSERT INTO `wp_options` VALUES (431,'_transient_woocommerce_reports-transient-version','1661429276','yes');
INSERT INTO `wp_options` VALUES (432,'_transient_timeout_orders-all-statuses','1662034076','no');
INSERT INTO `wp_options` VALUES (433,'_transient_orders-all-statuses','a:2:{s:7:\"version\";s:10:\"1661429276\";s:5:\"value\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (436,'_transient_timeout_woocommerce_admin_payment_method_promotion_specs','1662034077','no');
INSERT INTO `wp_options` VALUES (437,'_transient_woocommerce_admin_payment_method_promotion_specs','a:1:{s:20:\"woocommerce_payments\";O:8:\"stdClass\":8:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:7:\"content\";s:369:\"Payments made simple, with no monthly fees – designed exclusively for WooCommerce stores. Accept credit cards, debit cards, and other popular payment methods.<br/><br/>By clicking “Install”, you agree to the <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and <a href=\"https://automattic.com/privacy/\" target=\"_blank\">Privacy policy</a>.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}}s:9:\"sub_title\";s:865:\"<img class=\"wcpay-visa-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/visa.svg\" alt=\"Visa\"><img class=\"wcpay-mastercard-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/mastercard.svg\" alt=\"Mastercard\"><img class=\"wcpay-amex-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/amex.svg\" alt=\"Amex\"><img class=\"wcpay-googlepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/googlepay.svg\" alt=\"Googlepay\"><img class=\"wcpay-applepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/applepay.svg\" alt=\"Applepay\">\";s:15:\"additional_info\";O:8:\"stdClass\":1:{s:18:\"experiment_version\";s:2:\"v2\";}}}','no');
INSERT INTO `wp_options` VALUES (438,'woocommerce_task_list_tracked_completed_tasks','a:2:{i:0;s:8:\"purchase\";i:1;s:14:\"store_creation\";}','yes');
INSERT INTO `wp_options` VALUES (439,'woocommerce_task_list_completed_lists','a:2:{i:0;s:8:\"extended\";i:1;s:19:\"extended_two_column\";}','yes');
INSERT INTO `wp_options` VALUES (442,'_transient_timeout_wc_term_counts','1664354617','no');
INSERT INTO `wp_options` VALUES (443,'_transient_wc_term_counts','a:1:{i:16;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (456,'theme_mods_Anthony_D','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"footer\";i:21;s:4:\"main\";i:21;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1661847468;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:12:\"blog-sidebar\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (478,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (499,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (509,'updraft_lastmessage','La sauvegarde a apparemment réussi et est maintenant terminée (Août 26 06:08:50)','yes');
INSERT INTO `wp_options` VALUES (510,'updraftplus_unlocked_fd','1','no');
INSERT INTO `wp_options` VALUES (511,'updraftplus_last_lock_time_fd','2022-08-26 06:05:23','no');
INSERT INTO `wp_options` VALUES (512,'updraftplus_semaphore_fd','0','no');
INSERT INTO `wp_options` VALUES (513,'updraft_last_scheduled_fd','1661493923','yes');
INSERT INTO `wp_options` VALUES (519,'updraft_backup_history','a:1:{i:1661493923;a:15:{s:7:\"plugins\";a:1:{i:0;s:55:\"backup_2022-08-26-0605_Trident_fab3420d32ad-plugins.zip\";}s:6:\"themes\";a:1:{i:0;s:54:\"backup_2022-08-26-0605_Trident_fab3420d32ad-themes.zip\";}s:7:\"uploads\";a:1:{i:0;s:55:\"backup_2022-08-26-0605_Trident_fab3420d32ad-uploads.zip\";}s:6:\"others\";a:1:{i:0;s:54:\"backup_2022-08-26-0605_Trident_fab3420d32ad-others.zip\";}s:2:\"db\";s:49:\"backup_2022-08-26-0605_Trident_fab3420d32ad-db.gz\";s:7:\"db-size\";i:485507;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"02b247adc0c5249f5f50b2b83168bda3487c1b49\";s:7:\"themes0\";s:40:\"66afb1889e61cc3aebc4a446caecafca61800f8e\";s:8:\"uploads0\";s:40:\"451a524851e1bf1dcc8e81b556476e8170efa901\";s:7:\"others0\";s:40:\"8bda7fabd867566698b9e68525944f51b3a845ab\";s:3:\"db0\";s:40:\"3c6d1e6aa3c525e7d16a38f6ea5b115cccbfd155\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"0ae87089c13febd9a877d8ecd18e030795c220ed2715be01753ca2ca2e8d23f2\";s:7:\"themes0\";s:64:\"1f1cfcfc68437f834ae0184ee992b1a6ec90d192d0c60dbeb820542a25279a37\";s:8:\"uploads0\";s:64:\"6757b6da4aa76430cbfc1bd3785be4114a2db2d85f881424ae0f91663dbb4393\";s:7:\"others0\";s:64:\"8bf8ece3db9afcecd7af4a6b94841cd7ebdadbe62b7f7cf8873f9c19102f0f24\";s:3:\"db0\";s:64:\"e53dc395fd644d966907bdf59d626d0e26212f085a2f140cd14bcdab4a3db984\";}}s:5:\"nonce\";s:12:\"fab3420d32ad\";s:7:\"service\";a:1:{i:0;s:11:\"googledrive\";}s:20:\"service_instance_ids\";a:1:{s:11:\"googledrive\";a:1:{i:0;s:34:\"s-66c3d4b932693347156fa746362ca553\";}}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";a:4:{s:7:\"plugins\";i:1661493923;s:6:\"themes\";i:1661494073;s:7:\"uploads\";i:1661494113;s:6:\"others\";i:1661494116;}s:18:\"created_by_version\";s:7:\"1.22.17\";s:21:\"last_saved_by_version\";s:7:\"1.22.17\";s:12:\"is_multisite\";b:0;}}','no');
INSERT INTO `wp_options` VALUES (520,'updraft_last_backup','a:6:{s:26:\"nonincremental_backup_time\";i:1661493923;s:11:\"backup_time\";i:1661493923;s:12:\"backup_array\";a:7:{s:7:\"plugins\";a:1:{i:0;s:55:\"backup_2022-08-26-0605_Trident_fab3420d32ad-plugins.zip\";}s:6:\"themes\";a:1:{i:0;s:54:\"backup_2022-08-26-0605_Trident_fab3420d32ad-themes.zip\";}s:7:\"uploads\";a:1:{i:0;s:55:\"backup_2022-08-26-0605_Trident_fab3420d32ad-uploads.zip\";}s:6:\"others\";a:1:{i:0;s:54:\"backup_2022-08-26-0605_Trident_fab3420d32ad-others.zip\";}s:2:\"db\";s:49:\"backup_2022-08-26-0605_Trident_fab3420d32ad-db.gz\";s:7:\"db-size\";i:485507;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"02b247adc0c5249f5f50b2b83168bda3487c1b49\";s:7:\"themes0\";s:40:\"66afb1889e61cc3aebc4a446caecafca61800f8e\";s:8:\"uploads0\";s:40:\"451a524851e1bf1dcc8e81b556476e8170efa901\";s:7:\"others0\";s:40:\"8bda7fabd867566698b9e68525944f51b3a845ab\";s:3:\"db0\";s:40:\"3c6d1e6aa3c525e7d16a38f6ea5b115cccbfd155\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"0ae87089c13febd9a877d8ecd18e030795c220ed2715be01753ca2ca2e8d23f2\";s:7:\"themes0\";s:64:\"1f1cfcfc68437f834ae0184ee992b1a6ec90d192d0c60dbeb820542a25279a37\";s:8:\"uploads0\";s:64:\"6757b6da4aa76430cbfc1bd3785be4114a2db2d85f881424ae0f91663dbb4393\";s:7:\"others0\";s:64:\"8bf8ece3db9afcecd7af4a6b94841cd7ebdadbe62b7f7cf8873f9c19102f0f24\";s:3:\"db0\";s:64:\"e53dc395fd644d966907bdf59d626d0e26212f085a2f140cd14bcdab4a3db984\";}}}s:7:\"success\";i:1;s:6:\"errors\";a:0:{}s:12:\"backup_nonce\";s:12:\"fab3420d32ad\";}','yes');
INSERT INTO `wp_options` VALUES (523,'updraft_combine_jobs_around','1662076774','yes');
INSERT INTO `wp_options` VALUES (571,'_transient_health-check-site-status-result','{\"good\":12,\"recommended\":5,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (611,'acf_version','5.12.3','yes');
INSERT INTO `wp_options` VALUES (614,'_transient_wc_attribute_taxonomies','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (628,'yoast_migrations_free','a:1:{s:7:\"version\";s:4:\"19.6\";}','yes');
INSERT INTO `wp_options` VALUES (629,'wpseo','a:88:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:0;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"19.6\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1661757861;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:22:\"http://localhost:10004\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1661757862;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;}','yes');
INSERT INTO `wp_options` VALUES (630,'wpseo_titles','a:144:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:50:\"%%name%%, auteur/autrice sur %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:65:\"Vous avez cherché %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:38:\"Page non trouvée %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:64:\"L’article %%POSTLINK%% est apparu en premier sur %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:30:\"Erreur 404 : Page introuvable\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:13:\"Archives pour\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:7:\"Accueil\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:18:\"Vous avez cherché\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:13:\"title-product\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:26:\"display-metabox-pt-product\";b:1;s:26:\"post_types-product-maintax\";i:0;s:24:\"schema-page-type-product\";s:7:\"WebPage\";s:27:\"schema-article-type-product\";s:4:\"None\";s:20:\"social-title-product\";s:9:\"%%title%%\";s:26:\"social-description-product\";s:0:\"\";s:24:\"social-image-url-product\";s:0:\"\";s:23:\"social-image-id-product\";i:0;s:18:\"title-tax-category\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:27:\"Archives des %%term_title%%\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:27:\"Archives des %%term_title%%\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:27:\"Archives des %%term_title%%\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:21:\"title-tax-product_cat\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_cat\";s:0:\"\";s:31:\"display-metabox-tax-product_cat\";b:1;s:23:\"noindex-tax-product_cat\";b:0;s:28:\"social-title-tax-product_cat\";s:27:\"Archives des %%term_title%%\";s:34:\"social-description-tax-product_cat\";s:0:\"\";s:32:\"social-image-url-tax-product_cat\";s:0:\"\";s:31:\"social-image-id-tax-product_cat\";i:0;s:29:\"taxonomy-product_cat-ptparent\";i:0;s:21:\"title-tax-product_tag\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:31:\"display-metabox-tax-product_tag\";b:1;s:23:\"noindex-tax-product_tag\";b:0;s:28:\"social-title-tax-product_tag\";s:27:\"Archives des %%term_title%%\";s:34:\"social-description-tax-product_tag\";s:0:\"\";s:32:\"social-image-url-tax-product_tag\";s:0:\"\";s:31:\"social-image-id-tax-product_tag\";i:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:32:\"title-tax-product_shipping_class\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:35:\"metadesc-tax-product_shipping_class\";s:0:\"\";s:42:\"display-metabox-tax-product_shipping_class\";b:1;s:34:\"noindex-tax-product_shipping_class\";b:0;s:39:\"social-title-tax-product_shipping_class\";s:27:\"Archives des %%term_title%%\";s:45:\"social-description-tax-product_shipping_class\";s:0:\"\";s:43:\"social-image-url-tax-product_shipping_class\";s:0:\"\";s:42:\"social-image-id-tax-product_shipping_class\";i:0;s:40:\"taxonomy-product_shipping_class-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (631,'wpseo_social','a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (659,'_transient_product_query-transient-version','1661777495','yes');
INSERT INTO `wp_options` VALUES (667,'recovery_mode_email_last_sent','1661761050','yes');
INSERT INTO `wp_options` VALUES (705,'_transient_shipping-transient-version','1661762554','yes');
INSERT INTO `wp_options` VALUES (706,'_transient_timeout_wc_shipping_method_count_legacy','1664354554','no');
INSERT INTO `wp_options` VALUES (707,'_transient_wc_shipping_method_count_legacy','a:2:{s:7:\"version\";s:10:\"1661762554\";s:5:\"value\";i:0;}','no');
INSERT INTO `wp_options` VALUES (712,'_transient_timeout_wc_report_products_stats_8c5d6eeee090de2481a6951717c91b7b','1662367416','no');
INSERT INTO `wp_options` VALUES (713,'_transient_wc_report_products_stats_8c5d6eeee090de2481a6951717c91b7b','a:2:{s:7:\"version\";s:10:\"1661429276\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:29:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-08-01\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-01 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-08-02\";s:10:\"date_start\";s:19:\"2022-08-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-02 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-08-03\";s:10:\"date_start\";s:19:\"2022-08-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-03 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-08-04\";s:10:\"date_start\";s:19:\"2022-08-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-04 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-08-05\";s:10:\"date_start\";s:19:\"2022-08-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-05 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-08-06\";s:10:\"date_start\";s:19:\"2022-08-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-06 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-08-07\";s:10:\"date_start\";s:19:\"2022-08-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-08-08\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-08 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-08-09\";s:10:\"date_start\";s:19:\"2022-08-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-09 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-08-10\";s:10:\"date_start\";s:19:\"2022-08-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-10 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2022-08-11\";s:10:\"date_start\";s:19:\"2022-08-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-11 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2022-08-12\";s:10:\"date_start\";s:19:\"2022-08-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-12 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2022-08-13\";s:10:\"date_start\";s:19:\"2022-08-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-13 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2022-08-14\";s:10:\"date_start\";s:19:\"2022-08-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-14 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2022-08-15\";s:10:\"date_start\";s:19:\"2022-08-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-15 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2022-08-16\";s:10:\"date_start\";s:19:\"2022-08-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-16 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2022-08-17\";s:10:\"date_start\";s:19:\"2022-08-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-17 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2022-08-18\";s:10:\"date_start\";s:19:\"2022-08-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-18 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2022-08-19\";s:10:\"date_start\";s:19:\"2022-08-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-19 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2022-08-20\";s:10:\"date_start\";s:19:\"2022-08-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-20 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2022-08-21\";s:10:\"date_start\";s:19:\"2022-08-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-21 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2022-08-22\";s:10:\"date_start\";s:19:\"2022-08-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-22 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2022-08-23\";s:10:\"date_start\";s:19:\"2022-08-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-23 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2022-08-24\";s:10:\"date_start\";s:19:\"2022-08-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-24 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2022-08-25\";s:10:\"date_start\";s:19:\"2022-08-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-25 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2022-08-26\";s:10:\"date_start\";s:19:\"2022-08-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-26 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2022-08-27\";s:10:\"date_start\";s:19:\"2022-08-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-27 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2022-08-28\";s:10:\"date_start\";s:19:\"2022-08-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-28 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2022-08-29\";s:10:\"date_start\";s:19:\"2022-08-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-29 00:00:00\";s:8:\"date_end\";s:19:\"2022-08-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:29;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (714,'_transient_timeout_wc_report_products_stats_5ed90cb65f894dfb47c345a29935fc06','1662367417','no');
INSERT INTO `wp_options` VALUES (715,'_transient_wc_report_products_stats_5ed90cb65f894dfb47c345a29935fc06','a:2:{s:7:\"version\";s:10:\"1661429276\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:29:{i:0;a:6:{s:8:\"interval\";s:10:\"2021-08-01\";s:10:\"date_start\";s:19:\"2021-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-01 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2021-08-02\";s:10:\"date_start\";s:19:\"2021-08-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-02 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2021-08-03\";s:10:\"date_start\";s:19:\"2021-08-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-03 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2021-08-04\";s:10:\"date_start\";s:19:\"2021-08-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-04 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2021-08-05\";s:10:\"date_start\";s:19:\"2021-08-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-05 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2021-08-06\";s:10:\"date_start\";s:19:\"2021-08-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-06 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2021-08-07\";s:10:\"date_start\";s:19:\"2021-08-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-07 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2021-08-08\";s:10:\"date_start\";s:19:\"2021-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-08 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2021-08-09\";s:10:\"date_start\";s:19:\"2021-08-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-09 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2021-08-10\";s:10:\"date_start\";s:19:\"2021-08-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-10 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2021-08-11\";s:10:\"date_start\";s:19:\"2021-08-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-11 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2021-08-12\";s:10:\"date_start\";s:19:\"2021-08-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-12 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2021-08-13\";s:10:\"date_start\";s:19:\"2021-08-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-13 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2021-08-14\";s:10:\"date_start\";s:19:\"2021-08-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-14 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2021-08-15\";s:10:\"date_start\";s:19:\"2021-08-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-15 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2021-08-16\";s:10:\"date_start\";s:19:\"2021-08-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-16 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2021-08-17\";s:10:\"date_start\";s:19:\"2021-08-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-17 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2021-08-18\";s:10:\"date_start\";s:19:\"2021-08-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-18 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2021-08-19\";s:10:\"date_start\";s:19:\"2021-08-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-19 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2021-08-20\";s:10:\"date_start\";s:19:\"2021-08-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-20 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2021-08-21\";s:10:\"date_start\";s:19:\"2021-08-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-21 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2021-08-22\";s:10:\"date_start\";s:19:\"2021-08-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-22 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2021-08-23\";s:10:\"date_start\";s:19:\"2021-08-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-23 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2021-08-24\";s:10:\"date_start\";s:19:\"2021-08-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-24 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2021-08-25\";s:10:\"date_start\";s:19:\"2021-08-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-25 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2021-08-26\";s:10:\"date_start\";s:19:\"2021-08-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-26 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2021-08-27\";s:10:\"date_start\";s:19:\"2021-08-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-27 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2021-08-28\";s:10:\"date_start\";s:19:\"2021-08-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-28 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2021-08-29\";s:10:\"date_start\";s:19:\"2021-08-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-08-29 00:00:00\";s:8:\"date_end\";s:19:\"2021-08-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-08-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:29;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (761,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (936,'theme_mods_monThème','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1661777379;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (937,'woocommerce_maybe_regenerate_images_hash','991b1ca641921cf0f5baf7a2fe85861b','yes');
INSERT INTO `wp_options` VALUES (960,'theme_mods_thèmeTahar','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:21;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1661847454;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:7:\"sidebar\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (965,'_transient_wc_count_comments','O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (1137,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.0.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.0.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.1\";s:7:\"version\";s:5:\"6.0.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1661858302;s:15:\"version_checked\";s:5:\"6.0.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1138,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1661858303;s:7:\"checked\";a:7:{s:9:\"Anthony_D\";s:3:\"1.0\";s:5:\"astra\";s:5:\"3.9.1\";s:7:\"inspiro\";s:5:\"1.7.5\";s:8:\"monTheme\";s:3:\"0.1\";s:4:\"neve\";s:5:\"3.3.6\";s:7:\"oceanwp\";s:5:\"3.3.4\";s:10:\"themeTahar\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:5:\"astra\";a:6:{s:5:\"theme\";s:5:\"astra\";s:11:\"new_version\";s:5:\"3.9.1\";s:3:\"url\";s:35:\"https://wordpress.org/themes/astra/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/astra.3.9.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.3\";}s:7:\"inspiro\";a:6:{s:5:\"theme\";s:7:\"inspiro\";s:11:\"new_version\";s:5:\"1.7.5\";s:3:\"url\";s:37:\"https://wordpress.org/themes/inspiro/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/inspiro.1.7.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"7.2\";}s:4:\"neve\";a:6:{s:5:\"theme\";s:4:\"neve\";s:11:\"new_version\";s:5:\"3.3.6\";s:3:\"url\";s:34:\"https://wordpress.org/themes/neve/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.6.zip\";s:8:\"requires\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:7:\"oceanwp\";a:6:{s:5:\"theme\";s:7:\"oceanwp\";s:11:\"new_version\";s:5:\"3.3.4\";s:3:\"url\";s:37:\"https://wordpress.org/themes/oceanwp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/oceanwp.3.3.4.zip\";s:8:\"requires\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.2\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1139,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1661858303;s:8:\"response\";a:0:{}s:12:\"translations\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"5.12.3\";s:7:\"updated\";s:19:\"2022-08-30 10:38:49\";s:7:\"package\";s:90:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/5.12.3/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:9:\"elementor\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"3.7.3\";s:7:\"updated\";s:19:\"2022-08-29 17:49:13\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/elementor/3.7.3/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"3.1.5\";s:7:\"updated\";s:19:\"2019-05-10 15:36:27\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/regenerate-thumbnails/3.1.5/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"updraftplus\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:7:\"1.22.19\";s:7:\"updated\";s:19:\"2022-08-29 21:46:53\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/translation/plugin/updraftplus/1.22.19/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:13:\"wordpress-seo\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:4:\"19.6\";s:7:\"updated\";s:19:\"2022-08-25 14:20:15\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/wordpress-seo/19.6/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:9:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:23:\"elementor/elementor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:5:\"3.7.3\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/elementor.3.7.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.png?rev=2622511\";s:2:\"1x\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=2597493\";s:3:\"svg\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=2597493\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=2597493\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=2597493\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:25:\"fakerpress/fakerpress.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/fakerpress\";s:4:\"slug\";s:10:\"fakerpress\";s:6:\"plugin\";s:25:\"fakerpress/fakerpress.php\";s:11:\"new_version\";s:5:\"0.5.3\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/fakerpress/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/fakerpress.0.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/fakerpress/assets/icon-256x256.png?rev=1846090\";s:2:\"1x\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";s:3:\"svg\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002\";s:2:\"1x\";s:65:\"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:41:\"better-wp-security/better-wp-security.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/better-wp-security\";s:4:\"slug\";s:18:\"better-wp-security\";s:6:\"plugin\";s:41:\"better-wp-security/better-wp-security.php\";s:11:\"new_version\";s:5:\"8.1.2\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/better-wp-security/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/better-wp-security.8.1.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/better-wp-security/assets/icon-256x256.png?rev=2698018\";s:2:\"1x\";s:63:\"https://ps.w.org/better-wp-security/assets/icon.svg?rev=2698018\";s:3:\"svg\";s:63:\"https://ps.w.org/better-wp-security/assets/icon.svg?rev=2698018\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/better-wp-security/assets/banner-772x250.png?rev=2698018\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:27:\"updraftplus/updraftplus.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/updraftplus\";s:4:\"slug\";s:11:\"updraftplus\";s:6:\"plugin\";s:27:\"updraftplus/updraftplus.php\";s:11:\"new_version\";s:7:\"1.22.19\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/updraftplus/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/updraftplus.1.22.19.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-256x256.jpg?rev=1686200\";s:2:\"1x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-128x128.jpg?rev=1686200\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/updraftplus/assets/banner-1544x500.png?rev=1686200\";s:2:\"1x\";s:66:\"https://ps.w.org/updraftplus/assets/banner-772x250.png?rev=1686200\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.2\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"6.8.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.6.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"19.6\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.19.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2643727\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"5.9\";}}s:7:\"checked\";a:9:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.12.3\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:23:\"elementor/elementor.php\";s:5:\"3.7.3\";s:25:\"fakerpress/fakerpress.php\";s:5:\"0.5.3\";s:41:\"better-wp-security/better-wp-security.php\";s:5:\"8.1.2\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.5\";s:27:\"updraftplus/updraftplus.php\";s:7:\"1.22.19\";s:27:\"woocommerce/woocommerce.php\";s:5:\"6.8.2\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"19.6\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,6,'_wp_attached_file','woocommerce-placeholder.png');
INSERT INTO `wp_postmeta` VALUES (4,6,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:102644;s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10560;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2039;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:31893;}s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"woocommerce-placeholder-1200x1200.png\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:121753;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3754;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49572;}s:18:\"medium_old_300x300\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10560;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84297;}s:9:\"neve-blog\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-930x620.png\";s:5:\"width\";i:930;s:6:\"height\";i:620;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:67752;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (5,12,'_edit_lock','1661756974:1');
INSERT INTO `wp_postmeta` VALUES (9,16,'_edit_lock','1661756342:1');
INSERT INTO `wp_postmeta` VALUES (10,18,'_edit_lock','1661434787:1');
INSERT INTO `wp_postmeta` VALUES (11,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (12,2,'_edit_lock','1661434892:1');
INSERT INTO `wp_postmeta` VALUES (13,22,'fakerpress_flag','1');
INSERT INTO `wp_postmeta` VALUES (14,22,'_thumbnail_id','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (17,24,'_wp_attached_file','2022/08/5db56897-dd05-3fe8-a988-dee14e6c6808.jpg');
INSERT INTO `wp_postmeta` VALUES (18,24,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1338;s:6:\"height\";i:892;s:4:\"file\";s:48:\"2022/08/5db56897-dd05-3fe8-a988-dee14e6c6808.jpg\";s:8:\"filesize\";i:245040;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:48:\"5db56897-dd05-3fe8-a988-dee14e6c6808-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29797;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:48:\"5db56897-dd05-3fe8-a988-dee14e6c6808-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4079;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:48:\"5db56897-dd05-3fe8-a988-dee14e6c6808-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67798;}s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"5db56897-dd05-3fe8-a988-dee14e6c6808-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:229863;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"5db56897-dd05-3fe8-a988-dee14e6c6808-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8126;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"5db56897-dd05-3fe8-a988-dee14e6c6808-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:106314;}s:18:\"medium_old_300x200\";a:5:{s:4:\"file\";s:48:\"5db56897-dd05-3fe8-a988-dee14e6c6808-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18377;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"5db56897-dd05-3fe8-a988-dee14e6c6808-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:176670;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (19,24,'fakerpress_flag','1');
INSERT INTO `wp_postmeta` VALUES (20,24,'_fakerpress_orginal_url','https://picsum.photos/1338/892/?random');
INSERT INTO `wp_postmeta` VALUES (24,27,'_wp_attached_file','2022/08/153f6adb-1cc6-3ba3-a795-a081a8af9046.jpg');
INSERT INTO `wp_postmeta` VALUES (25,27,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1314;s:6:\"height\";i:876;s:4:\"file\";s:48:\"2022/08/153f6adb-1cc6-3ba3-a795-a081a8af9046.jpg\";s:8:\"filesize\";i:194500;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:48:\"153f6adb-1cc6-3ba3-a795-a081a8af9046-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18776;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:48:\"153f6adb-1cc6-3ba3-a795-a081a8af9046-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2872;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:48:\"153f6adb-1cc6-3ba3-a795-a081a8af9046-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47822;}s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"153f6adb-1cc6-3ba3-a795-a081a8af9046-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:180057;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"153f6adb-1cc6-3ba3-a795-a081a8af9046-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5334;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"153f6adb-1cc6-3ba3-a795-a081a8af9046-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77486;}s:18:\"medium_old_300x200\";a:5:{s:4:\"file\";s:48:\"153f6adb-1cc6-3ba3-a795-a081a8af9046-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12794;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"153f6adb-1cc6-3ba3-a795-a081a8af9046-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:135551;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (26,27,'fakerpress_flag','1');
INSERT INTO `wp_postmeta` VALUES (27,27,'_fakerpress_orginal_url','https://picsum.photos/1314/876/?random');
INSERT INTO `wp_postmeta` VALUES (44,36,'_wp_attached_file','2022/08/f8b0cc84-f271-3c05-beaa-5866c7742499.jpg');
INSERT INTO `wp_postmeta` VALUES (45,36,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1385;s:6:\"height\";i:923;s:4:\"file\";s:48:\"2022/08/f8b0cc84-f271-3c05-beaa-5866c7742499.jpg\";s:8:\"filesize\";i:161718;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:48:\"f8b0cc84-f271-3c05-beaa-5866c7742499-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16161;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:48:\"f8b0cc84-f271-3c05-beaa-5866c7742499-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2698;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:48:\"f8b0cc84-f271-3c05-beaa-5866c7742499-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37059;}s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"f8b0cc84-f271-3c05-beaa-5866c7742499-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:138179;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"f8b0cc84-f271-3c05-beaa-5866c7742499-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4913;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"f8b0cc84-f271-3c05-beaa-5866c7742499-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59271;}s:18:\"medium_old_300x200\";a:5:{s:4:\"file\";s:48:\"f8b0cc84-f271-3c05-beaa-5866c7742499-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10477;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"f8b0cc84-f271-3c05-beaa-5866c7742499-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:103393;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (46,36,'fakerpress_flag','1');
INSERT INTO `wp_postmeta` VALUES (47,36,'_fakerpress_orginal_url','https://picsum.photos/1385/923/?random');
INSERT INTO `wp_postmeta` VALUES (49,37,'_wp_attached_file','2022/08/d4c42fb2-0800-3b67-a9ee-121812c5888c.jpg');
INSERT INTO `wp_postmeta` VALUES (50,37,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:48:\"2022/08/d4c42fb2-0800-3b67-a9ee-121812c5888c.jpg\";s:8:\"filesize\";i:78547;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:48:\"d4c42fb2-0800-3b67-a9ee-121812c5888c-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12117;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:48:\"d4c42fb2-0800-3b67-a9ee-121812c5888c-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2481;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:48:\"d4c42fb2-0800-3b67-a9ee-121812c5888c-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25851;}s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"d4c42fb2-0800-3b67-a9ee-121812c5888c-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82739;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"d4c42fb2-0800-3b67-a9ee-121812c5888c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4148;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"d4c42fb2-0800-3b67-a9ee-121812c5888c-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39262;}s:18:\"medium_old_300x200\";a:5:{s:4:\"file\";s:48:\"d4c42fb2-0800-3b67-a9ee-121812c5888c-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8556;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"d4c42fb2-0800-3b67-a9ee-121812c5888c-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64222;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (51,37,'fakerpress_flag','1');
INSERT INTO `wp_postmeta` VALUES (52,37,'_fakerpress_orginal_url','https://picsum.photos/1280/853/?random');
INSERT INTO `wp_postmeta` VALUES (59,42,'_wp_attached_file','2022/08/509bccb4-4e23-37e0-9fed-75a0dec1695b.jpg');
INSERT INTO `wp_postmeta` VALUES (60,42,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1337;s:6:\"height\";i:891;s:4:\"file\";s:48:\"2022/08/509bccb4-4e23-37e0-9fed-75a0dec1695b.jpg\";s:8:\"filesize\";i:73697;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:48:\"509bccb4-4e23-37e0-9fed-75a0dec1695b-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8752;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:48:\"509bccb4-4e23-37e0-9fed-75a0dec1695b-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1900;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:48:\"509bccb4-4e23-37e0-9fed-75a0dec1695b-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19845;}s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"509bccb4-4e23-37e0-9fed-75a0dec1695b-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69896;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"509bccb4-4e23-37e0-9fed-75a0dec1695b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3126;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"509bccb4-4e23-37e0-9fed-75a0dec1695b-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30995;}s:18:\"medium_old_300x200\";a:5:{s:4:\"file\";s:48:\"509bccb4-4e23-37e0-9fed-75a0dec1695b-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6460;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"509bccb4-4e23-37e0-9fed-75a0dec1695b-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53163;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (61,42,'fakerpress_flag','1');
INSERT INTO `wp_postmeta` VALUES (62,42,'_fakerpress_orginal_url','https://picsum.photos/1337/891/?random');
INSERT INTO `wp_postmeta` VALUES (66,44,'_wp_attached_file','2022/08/6f20c379-5740-3b78-8da2-554b1b656a7e.jpg');
INSERT INTO `wp_postmeta` VALUES (67,44,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1183;s:6:\"height\";i:788;s:4:\"file\";s:48:\"2022/08/6f20c379-5740-3b78-8da2-554b1b656a7e.jpg\";s:8:\"filesize\";i:152344;s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:48:\"6f20c379-5740-3b78-8da2-554b1b656a7e-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16183;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:48:\"6f20c379-5740-3b78-8da2-554b1b656a7e-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2713;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:48:\"6f20c379-5740-3b78-8da2-554b1b656a7e-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39096;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"6f20c379-5740-3b78-8da2-554b1b656a7e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4866;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"6f20c379-5740-3b78-8da2-554b1b656a7e-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65379;}s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"6f20c379-5740-3b78-8da2-554b1b656a7e-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10764;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"6f20c379-5740-3b78-8da2-554b1b656a7e-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:123713;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (68,44,'fakerpress_flag','1');
INSERT INTO `wp_postmeta` VALUES (69,44,'_fakerpress_orginal_url','https://picsum.photos/1183/788/?random');
INSERT INTO `wp_postmeta` VALUES (75,48,'_wp_attached_file','2022/08/089fbca7-cfe7-3a98-adae-be01a80eb3d9.jpg');
INSERT INTO `wp_postmeta` VALUES (76,48,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:48:\"2022/08/089fbca7-cfe7-3a98-adae-be01a80eb3d9.jpg\";s:8:\"filesize\";i:64261;s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:48:\"089fbca7-cfe7-3a98-adae-be01a80eb3d9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13012;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:48:\"089fbca7-cfe7-3a98-adae-be01a80eb3d9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2675;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:48:\"089fbca7-cfe7-3a98-adae-be01a80eb3d9-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29740;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"089fbca7-cfe7-3a98-adae-be01a80eb3d9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4678;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"089fbca7-cfe7-3a98-adae-be01a80eb3d9-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44108;}s:6:\"medium\";a:5:{s:4:\"file\";s:48:\"089fbca7-cfe7-3a98-adae-be01a80eb3d9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10012;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"089fbca7-cfe7-3a98-adae-be01a80eb3d9-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70156;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (77,48,'fakerpress_flag','1');
INSERT INTO `wp_postmeta` VALUES (78,48,'_fakerpress_orginal_url','https://picsum.photos/1050/700/?random');
INSERT INTO `wp_postmeta` VALUES (80,49,'_edit_lock','1661756340:1');
INSERT INTO `wp_postmeta` VALUES (81,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (82,12,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (83,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (84,10,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (85,10,'_edit_lock','1661780107:1');
INSERT INTO `wp_postmeta` VALUES (89,12,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (90,12,'_wp_trash_meta_time','1661757127');
INSERT INTO `wp_postmeta` VALUES (91,12,'_wp_desired_post_slug','accueil-2');
INSERT INTO `wp_postmeta` VALUES (146,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (147,60,'_edit_lock','1661775909:1');
INSERT INTO `wp_postmeta` VALUES (209,16,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (210,16,'_wp_trash_meta_time','1661777536');
INSERT INTO `wp_postmeta` VALUES (211,16,'_wp_desired_post_slug','blog');
INSERT INTO `wp_postmeta` VALUES (212,11,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (213,11,'_wp_trash_meta_time','1661777549');
INSERT INTO `wp_postmeta` VALUES (214,11,'_wp_desired_post_slug','remboursements_retours');
INSERT INTO `wp_postmeta` VALUES (215,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (216,3,'_wp_trash_meta_time','1661777552');
INSERT INTO `wp_postmeta` VALUES (217,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (218,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (219,2,'_wp_trash_meta_time','1661777557');
INSERT INTO `wp_postmeta` VALUES (220,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (221,9,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (222,9,'_wp_trash_meta_time','1661777693');
INSERT INTO `wp_postmeta` VALUES (223,9,'_wp_desired_post_slug','commander');
INSERT INTO `wp_postmeta` VALUES (224,90,'_edit_lock','1661778387:1');
INSERT INTO `wp_postmeta` VALUES (225,92,'_wp_attached_file','2022/08/Trident2-0.png');
INSERT INTO `wp_postmeta` VALUES (226,92,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:612;s:6:\"height\";i:569;s:4:\"file\";s:22:\"2022/08/Trident2-0.png\";s:8:\"filesize\";i:135209;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"Trident2-0-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22074;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (229,90,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (230,90,'_pingme','1');
INSERT INTO `wp_postmeta` VALUES (231,90,'_encloseme','1');
INSERT INTO `wp_postmeta` VALUES (232,90,'note','');
INSERT INTO `wp_postmeta` VALUES (233,90,'_note','field_630ca9c53baa0');
INSERT INTO `wp_postmeta` VALUES (234,90,'les_plus','Lorem ipsum dolor sit amet. Qui animi ratione aut voluptatem esse aut fuga provident aut quod voluptas 33 magni dolorum. A odit voluptatem est officia itaque ut consequuntur nostrum ut enim accusamus id itaque reprehenderit. Ab dolorem neque ex sapiente sint ea iusto pariatur et repudiandae quaerat cum fugiat quas hic nesciunt excepturi ad nemo temporibus.\r\n\r\n&nbsp;');
INSERT INTO `wp_postmeta` VALUES (235,90,'_les_plus','field_630caab53baa1');
INSERT INTO `wp_postmeta` VALUES (236,90,'les_moins','Cum impedit nihil sed repellendus esse non nobis voluptas aut voluptatem iusto. Aut quia officia qui veritatis assumenda sit aspernatur eveniet et enim unde in dolor molestias ut expedita modi sed minus accusantium?\r\n\r\nNon asperiores molestias et architecto labore aut nulla quidem. Ad laborum galisum aut officia doloremque et facilis quod ex deleniti cupiditate ab labore excepturi non saepe sint. Non veritatis doloribus eum quia architecto et galisum totam ut placeat quidem est illum dolorem. Et ipsam debitis et tenetur tempore eum soluta fuga ut quibusdam fugiat et impedit maxime et molestias atque in consequatur dolores.');
INSERT INTO `wp_postmeta` VALUES (237,90,'_les_moins','field_630cab513baa2');
INSERT INTO `wp_postmeta` VALUES (238,90,'date_de_sortie','20220820');
INSERT INTO `wp_postmeta` VALUES (239,90,'_date_de_sortie','field_630cab723baa3');
INSERT INTO `wp_postmeta` VALUES (240,90,'prix','452');
INSERT INTO `wp_postmeta` VALUES (241,90,'_prix','field_630caba73baa4');
INSERT INTO `wp_postmeta` VALUES (242,90,'pochette','92');
INSERT INTO `wp_postmeta` VALUES (243,90,'_pochette','field_630cabd33baa5');
INSERT INTO `wp_postmeta` VALUES (244,94,'note','');
INSERT INTO `wp_postmeta` VALUES (245,94,'_note','field_630ca9c53baa0');
INSERT INTO `wp_postmeta` VALUES (246,94,'les_plus','Lorem ipsum dolor sit amet. Qui animi ratione aut voluptatem esse aut fuga provident aut quod voluptas 33 magni dolorum. A odit voluptatem est officia itaque ut consequuntur nostrum ut enim accusamus id itaque reprehenderit. Ab dolorem neque ex sapiente sint ea iusto pariatur et repudiandae quaerat cum fugiat quas hic nesciunt excepturi ad nemo temporibus.\r\n\r\n&nbsp;');
INSERT INTO `wp_postmeta` VALUES (247,94,'_les_plus','field_630caab53baa1');
INSERT INTO `wp_postmeta` VALUES (248,94,'les_moins','Cum impedit nihil sed repellendus esse non nobis voluptas aut voluptatem iusto. Aut quia officia qui veritatis assumenda sit aspernatur eveniet et enim unde in dolor molestias ut expedita modi sed minus accusantium?\r\n\r\nNon asperiores molestias et architecto labore aut nulla quidem. Ad laborum galisum aut officia doloremque et facilis quod ex deleniti cupiditate ab labore excepturi non saepe sint. Non veritatis doloribus eum quia architecto et galisum totam ut placeat quidem est illum dolorem. Et ipsam debitis et tenetur tempore eum soluta fuga ut quibusdam fugiat et impedit maxime et molestias atque in consequatur dolores.');
INSERT INTO `wp_postmeta` VALUES (249,94,'_les_moins','field_630cab513baa2');
INSERT INTO `wp_postmeta` VALUES (250,94,'date_de_sortie','20220820');
INSERT INTO `wp_postmeta` VALUES (251,94,'_date_de_sortie','field_630cab723baa3');
INSERT INTO `wp_postmeta` VALUES (252,94,'prix','452');
INSERT INTO `wp_postmeta` VALUES (253,94,'_prix','field_630caba73baa4');
INSERT INTO `wp_postmeta` VALUES (254,94,'pochette','92');
INSERT INTO `wp_postmeta` VALUES (255,94,'_pochette','field_630cabd33baa5');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (2,1,'2022-08-25 11:16:56','2022-08-25 11:16:56','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10004/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2022-08-29 12:52:37','2022-08-29 12:52:37','',0,'http://localhost:10004/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-08-25 11:16:56','2022-08-25 11:16:56','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10004.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2022-08-29 12:52:32','2022-08-29 12:52:32','',0,'http://localhost:10004/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2022-08-25 11:47:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-08-25 11:47:07','0000-00-00 00:00:00','',0,'http://localhost:10004/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2022-08-25 12:03:38','2022-08-25 12:03:38','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentytwo','','','2022-08-25 12:03:38','2022-08-25 12:03:38','',0,'http://localhost:10004/wp-global-styles-twentytwentytwo/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2022-08-25 12:07:49','2022-08-25 12:07:49','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2022-08-25 12:07:49','2022-08-25 12:07:49','',0,'http://localhost:10004/wp-content/uploads/2022/08/woocommerce-placeholder.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (7,1,'2022-08-25 12:07:50','2022-08-25 12:07:50','','Boutique','','publish','closed','closed','','boutique','','','2022-08-25 12:07:50','2022-08-25 12:07:50','',0,'http://localhost:10004/boutique/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2022-08-25 12:07:50','2022-08-25 12:07:50','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Panier','','publish','closed','closed','','panier','','','2022-08-25 12:07:50','2022-08-25 12:07:50','',0,'http://localhost:10004/panier/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2022-08-25 12:07:50','2022-08-25 12:07:50','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Validation de la commande','','trash','closed','closed','','commander__trashed','','','2022-08-29 12:54:53','2022-08-29 12:54:53','',0,'http://localhost:10004/commander/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2022-08-25 12:07:50','2022-08-25 12:07:50','<!-- wp:paragraph -->\n<p>Discover the underwater life</p>\n<!-- /wp:paragraph -->','Accueil','','publish','closed','closed','','accueil','','','2022-08-29 13:35:13','2022-08-29 13:35:13','',0,'http://localhost:10004/mon-compte/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2022-08-29 12:52:29','2022-08-29 12:52:29','<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->','Politique en matière de remboursements et de retours','','trash','closed','closed','','remboursements_retours__trashed','','','2022-08-29 12:52:29','2022-08-29 12:52:29','',0,'http://localhost:10004/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-08-25 13:40:13','2022-08-25 13:40:13','','Accueil-2?','','trash','closed','closed','','accueil-2__trashed','','','2022-08-29 07:12:07','2022-08-29 07:12:07','',0,'http://localhost:10004/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-08-25 13:39:52','2022-08-25 13:39:52','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-anthony_d','','','2022-08-25 13:39:52','2022-08-25 13:39:52','',0,'http://localhost:10004/wp-global-styles-anthony_d/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2022-08-25 13:40:13','2022-08-25 13:40:13','','Accueil','','inherit','closed','closed','','12-revision-v1','','','2022-08-25 13:40:13','2022-08-25 13:40:13','',12,'http://localhost:10004/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2022-08-25 13:40:32','2022-08-25 13:40:32','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10004/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2022-08-25 13:40:32','2022-08-25 13:40:32','',2,'http://localhost:10004/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-08-25 13:42:00','2022-08-25 13:42:00','','Blog','','trash','closed','closed','','blog__trashed','','','2022-08-29 12:52:16','2022-08-29 12:52:16','',0,'http://localhost:10004/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-08-25 13:42:00','2022-08-25 13:42:00','','blog','','inherit','closed','closed','','16-revision-v1','','','2022-08-25 13:42:00','2022-08-25 13:42:00','',16,'http://localhost:10004/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-08-25 13:42:10','2022-08-25 13:42:10','','Contact','','publish','closed','closed','','contact','','','2022-08-25 13:42:10','2022-08-25 13:42:10','',0,'http://localhost:10004/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2022-08-25 13:42:10','2022-08-25 13:42:10','','Contact','','inherit','closed','closed','','18-revision-v1','','','2022-08-25 13:42:10','2022-08-25 13:42:10','',18,'http://localhost:10004/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2022-08-25 13:42:19','2022-08-25 13:42:19','','Blog','','inherit','closed','closed','','16-revision-v1','','','2022-08-25 13:42:19','2022-08-25 13:42:19','',16,'http://localhost:10004/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2022-08-25 13:43:54','2022-08-25 13:43:54','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10004/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2022-08-25 13:43:54','2022-08-25 13:43:54','',2,'http://localhost:10004/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-01-23 07:27:54','2022-01-23 07:27:54','<blockquote>Porro consectetur itaque iste numquam. Quidem minus laboriosam repellendus repudiandae. Illo qui ipsam quidem nihil. Dolore sapiente fugiat inventore ipsam laudantium asperiores magnam vitae. Nihil illo architecto totam voluptatem. Voluptate vitae tempora fugit sint nisi provident. In nostrum expedita quisquam laboriosam rerum corrupti. Sapiente dolores id autem commodi labore nostrum est. Voluptate quis voluptate vero aut nostrum vero. Beatae omnis corporis adipisci non consequuntur temporibus. Atque rem sapiente delectus nesciunt excepturi quas quam. Vel non officiis perferendis quidem vel in. Ex voluptas vero itaque quo sit. Repellendus veritatis suscipit enim dignissimos. Eos autem delectus aliquid cupiditate molestias commodi porro. Ut ex error tempore corporis. Cumque aspernatur illo ex similique voluptas nemo veniam. Sapiente esse repellat tempora eum. Aut incidunt architecto ut aut dolore hic. Consequatur tempore a quis quia. Corporis quaerat necessitatibus dolore aspernatur maiores. Porro hic voluptate dolorem aut velit. Sequi commodi ratione excepturi consectetur. Magni aut perferendis quo quisquam accusantium eius similique. Non sequi consequatur ea autem nulla aut. Sit eveniet exercitationem velit sunt voluptatum quia odit tempora. Beatae nihil aspernatur omnis quam. Alias rerum iste quidem omnis ut porro occaecati. Distinctio delectus quis excepturi rerum deserunt. Vitae assumenda explicabo eveniet autem. Illum doloremque consequatur voluptatem laborum necessitatibus. Recusandae voluptas necessitatibus sed velit. Amet dolorem expedita harum perferendis nisi laborum. Est id saepe debitis adipisci. At veniam delectus veritatis blanditiis qui. Magnam dolore asperiores earum commodi nemo quia. Commodi qui nostrum consequatur quo aperiam quis inventore laboriosam. Nulla voluptatibus in voluptatem at quos sapiente repellat perferendis. Velit perspiciatis itaque soluta eum sed. Quis delectus dicta quibusdam reprehenderit eum illo. Voluptatem vitae autem iusto error et facere aut.</blockquote>\n<h2>Id nihil sed vel fugit maiores et. Asperiores beatae ea quia qui. Nisi voluptas nisi alias</h2>\n<ul><li>Excepturi ea quis omnis aut</li><li>Nemo vitae id fugit</li><li>Necessitatibus adipisci non iure iste quia</li><li>Delectus nobis maxime aspernatur odit</li><li>Beatae saepe est id</li></ul>\n<h3>Beatae tempora voluptas error laborum unde est. Alias eum laudantium placeat</h3>\n<ol><li>Ratione repellat voluptas nisi</li><li>Qui qui at quaerat</li><li>Accusamus rerum</li><li>Ut et quo porro</li><li>Consequatur qui nulla enim et</li><li>Minus in aut ut molestiae</li><li>Et veritatis officia</li><li>Iure dolores sit ut neque aperiam</li></ol>\n<blockquote>Ad eos molestias quod fugiat libero. dolorem corporis officia et velit. Repellat vel ipsam minima corporis. consequatur assumenda laboriosam autem dolores. Dolores quaerat facere quasi sint nemo. <a title=\"Quod et non.\" href=\"http://www.bechtelar.com/rerum-culpa-voluptatem-cum-molestias\">harum ab inventore aut</a> Adipisci in asperiores impedit. et ea natus perspiciatis sapiente. Qui mollitia numquam. et nostrum commodi et veniam animi. Voluptatem reprehenderit possimus in neque est aspernatur provident. Sapiente recusandae quia facilis sed. Quia architecto voluptatibus autem quas rerum iste. fugiat omnis Eaque maxime perferendis sint quia ad sit Nihil delectus velit perferendis et. in ducimus nobis. Quo et sunt non ipsum impedit amet ut. Sint alias corporis numquam dignissimos architecto Ex qui harum saepe qui sed. Fugiat iure itaque velit sed. Eum accusamus veritatis repellat doloremque ad. Consequuntur incidunt qui ipsa quia Ut labore accusamus excepturi mollitia. Eligendi cupiditate <a title=\"Quisquam praesentium incidunt quo maxime quae voluptate sunt.\" href=\"http://miller.net/eos-omnis-officiis-laborum-unde-harum\">ut eius quis. Aperiam eaque delectus ex quae. Tempore</a> ea est autem ratione consectetur. Suscipit explicabo ut illo. ut sed eius nisi. Ea doloribus eligendi aut ratione. Alias ut explicabo error omnis consequatur. voluptatibus enim distinctio. Beatae autem animi rerum ut voluptatum et voluptas. Eos et et assumenda est. Rerum neque est minima. autem fugiat laudantium non. Perferendis nisi qui possimus ipsa earum aut Sunt neque architecto qui est. Ut iure amet repellendus dignissimos totam. rerum molestiae quidem corporis molestias fugiat. Laborum numquam Nostrum omnis accusamus aut Possimus omnis ut officia rerum quisquam et. In qui eligendi ea rerum explicabo nam Qui fugiat perspiciatis laborum doloribus unde.</blockquote>\n<!--more-->\n<h1>Ea non ut rerum quia unde quia. Odit non beatae ipsam et fugit. Corporis eum recusandae est ut dolor provident minus. Excepturi sit a quia</h1>\n<ol><li>Animi dolor nulla</li><li>Rerum commodi animi rerum harum</li></ol>\n','Est enim praesentium aliquam dolorem','Aut dolore similique sit molestiae.','publish','open','closed','','est-enim-praesentium-aliquam-dolorem','','','2022-01-23 07:27:54','2022-01-23 07:27:54','',0,'http://localhost:10004/est-enim-praesentium-aliquam-dolorem/',0,'post','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-08-25 13:56:35','2022-08-25 13:56:35','','5db56897-dd05-3fe8-a988-dee14e6c6808','','inherit','open','closed','','5db56897-dd05-3fe8-a988-dee14e6c6808','','','2022-08-25 13:56:35','2022-08-25 13:56:35','',0,'http://localhost:10004/wp-content/uploads/2022/08/5db56897-dd05-3fe8-a988-dee14e6c6808.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (27,1,'2022-08-25 13:56:37','2022-08-25 13:56:37','','153f6adb-1cc6-3ba3-a795-a081a8af9046','','inherit','open','closed','','153f6adb-1cc6-3ba3-a795-a081a8af9046','','','2022-08-25 13:56:37','2022-08-25 13:56:37','',0,'http://localhost:10004/wp-content/uploads/2022/08/153f6adb-1cc6-3ba3-a795-a081a8af9046.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (36,1,'2022-08-25 13:57:34','2022-08-25 13:57:34','','f8b0cc84-f271-3c05-beaa-5866c7742499','','inherit','open','closed','','f8b0cc84-f271-3c05-beaa-5866c7742499','','','2022-08-25 13:57:34','2022-08-25 13:57:34','',0,'http://localhost:10004/wp-content/uploads/2022/08/f8b0cc84-f271-3c05-beaa-5866c7742499.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-08-25 13:57:36','2022-08-25 13:57:36','','d4c42fb2-0800-3b67-a9ee-121812c5888c','','inherit','open','closed','','d4c42fb2-0800-3b67-a9ee-121812c5888c','','','2022-08-25 13:57:36','2022-08-25 13:57:36','',0,'http://localhost:10004/wp-content/uploads/2022/08/d4c42fb2-0800-3b67-a9ee-121812c5888c.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-08-25 13:58:21','2022-08-25 13:58:21','','509bccb4-4e23-37e0-9fed-75a0dec1695b','','inherit','open','closed','','509bccb4-4e23-37e0-9fed-75a0dec1695b','','','2022-08-25 13:58:21','2022-08-25 13:58:21','',0,'http://localhost:10004/wp-content/uploads/2022/08/509bccb4-4e23-37e0-9fed-75a0dec1695b.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-08-25 13:58:35','2022-08-25 13:58:35','','6f20c379-5740-3b78-8da2-554b1b656a7e','','inherit','open','closed','','6f20c379-5740-3b78-8da2-554b1b656a7e','','','2022-08-25 13:58:35','2022-08-25 13:58:35','',0,'http://localhost:10004/wp-content/uploads/2022/08/6f20c379-5740-3b78-8da2-554b1b656a7e.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-08-25 13:59:18','2022-08-25 13:59:18','','089fbca7-cfe7-3a98-adae-be01a80eb3d9','','inherit','open','closed','','089fbca7-cfe7-3a98-adae-be01a80eb3d9','','','2022-08-25 13:59:18','2022-08-25 13:59:18','',0,'http://localhost:10004/wp-content/uploads/2022/08/089fbca7-cfe7-3a98-adae-be01a80eb3d9.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-08-29 06:57:58','0000-00-00 00:00:00','','Brouillon auto','','auto-draft','closed','closed','','','','','2022-08-29 06:57:58','0000-00-00 00:00:00','',0,'http://localhost:10004/?page_id=49',0,'page','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2022-08-29 07:02:57','2022-08-29 07:02:57','','Acc','','inherit','closed','closed','','12-revision-v1','','','2022-08-29 07:02:57','2022-08-29 07:02:57','',12,'http://localhost:10004/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2022-08-29 07:03:18','2022-08-29 07:03:18','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','Accueil','','inherit','closed','closed','','10-revision-v1','','','2022-08-29 07:03:18','2022-08-29 07:03:18','',10,'http://localhost:10004/?p=51',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2022-08-29 07:05:30','2022-08-29 07:05:30','','Accueil','','inherit','closed','closed','','12-revision-v1','','','2022-08-29 07:05:30','2022-08-29 07:05:30','',12,'http://localhost:10004/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2022-08-29 07:05:56','2022-08-29 07:05:56','','Accueil-2?','','inherit','closed','closed','','12-revision-v1','','','2022-08-29 07:05:56','2022-08-29 07:05:56','',12,'http://localhost:10004/?p=53',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2022-08-29 12:08:00','2022-08-29 12:08:00','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Tests de jeux','tests-de-jeux','publish','closed','closed','','group_630ca93af2277','','','2022-08-29 12:08:00','2022-08-29 12:08:00','',0,'http://localhost:10004/?post_type=acf-field-group&#038;p=60',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2022-08-29 12:08:00','2022-08-29 12:08:00','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";i:10;s:3:\"min\";i:0;s:3:\"max\";i:10;s:4:\"step\";s:0:\"\";}','Note','note','publish','closed','closed','','field_630ca9c53baa0','','','2022-08-29 12:08:00','2022-08-29 12:08:00','',60,'http://localhost:10004/?post_type=acf-field&p=61',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2022-08-29 12:08:00','2022-08-29 12:08:00','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}','Les plus','les_plus','publish','closed','closed','','field_630caab53baa1','','','2022-08-29 12:08:00','2022-08-29 12:08:00','',60,'http://localhost:10004/?post_type=acf-field&p=62',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2022-08-29 12:08:00','2022-08-29 12:08:00','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}','Les moins','les_moins','publish','closed','closed','','field_630cab513baa2','','','2022-08-29 12:08:00','2022-08-29 12:08:00','',60,'http://localhost:10004/?post_type=acf-field&p=63',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2022-08-29 12:08:00','2022-08-29 12:08:00','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}','Date de sortie','date_de_sortie','publish','closed','closed','','field_630cab723baa3','','','2022-08-29 12:08:00','2022-08-29 12:08:00','',60,'http://localhost:10004/?post_type=acf-field&p=64',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2022-08-29 12:08:00','2022-08-29 12:08:00','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:3:\"€\";s:3:\"min\";i:0;s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Prix','prix','publish','closed','closed','','field_630caba73baa4','','','2022-08-29 12:08:00','2022-08-29 12:08:00','',60,'http://localhost:10004/?post_type=acf-field&p=65',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2022-08-29 12:08:00','2022-08-29 12:08:00','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Pochette','pochette','publish','closed','closed','','field_630cabd33baa5','','','2022-08-29 12:08:00','2022-08-29 12:08:00','',60,'http://localhost:10004/?post_type=acf-field&p=66',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2022-08-29 12:52:29','2022-08-29 12:52:29','<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->','Politique en matière de remboursements et de retours','','inherit','closed','closed','','11-revision-v1','','','2022-08-29 12:52:29','2022-08-29 12:52:29','',11,'http://localhost:10004/?p=87',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2022-08-29 12:52:32','2022-08-29 12:52:32','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10004.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2022-08-29 12:52:32','2022-08-29 12:52:32','',3,'http://localhost:10004/?p=88',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2022-08-29 12:54:53','2022-08-29 12:54:53','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Validation de la commande','','inherit','closed','closed','','9-revision-v1','','','2022-08-29 12:54:53','2022-08-29 12:54:53','',9,'http://localhost:10004/?p=89',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2022-08-29 13:06:25','2022-08-29 13:06:25','','article 2','','publish','open','open','','article-2','','','2022-08-29 13:06:27','2022-08-29 13:06:27','',0,'http://localhost:10004/?p=90',0,'post','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2022-08-29 13:04:23','2022-08-29 13:04:23','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-th%c3%a8metahar','','','2022-08-29 13:04:23','2022-08-29 13:04:23','',0,'http://localhost:10004/wp-global-styles-th%c3%a8metahar/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2022-08-29 13:06:09','2022-08-29 13:06:09','','Trident2-0','','inherit','open','closed','','trident2-0','','','2022-08-29 13:06:09','2022-08-29 13:06:09','',90,'http://localhost:10004/wp-content/uploads/2022/08/Trident2-0.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (93,1,'2022-08-29 13:06:25','2022-08-29 13:06:25','','article 2','','inherit','closed','closed','','90-revision-v1','','','2022-08-29 13:06:25','2022-08-29 13:06:25','',90,'http://localhost:10004/?p=93',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2022-08-29 13:06:27','2022-08-29 13:06:27','','article 2','','inherit','closed','closed','','90-revision-v1','','','2022-08-29 13:06:27','2022-08-29 13:06:27','',90,'http://localhost:10004/?p=94',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2022-08-29 13:35:08','2022-08-29 13:35:08','<!-- wp:paragraph -->\n<p>Discover the underwater life</p>\n<!-- /wp:paragraph -->','Accueil','','inherit','closed','closed','','10-autosave-v1','','','2022-08-29 13:35:08','2022-08-29 13:35:08','',10,'http://localhost:10004/?p=95',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2022-08-29 13:35:13','2022-08-29 13:35:13','<!-- wp:paragraph -->\n<p>Discover the underwater life</p>\n<!-- /wp:paragraph -->','Accueil','','inherit','closed','closed','','10-revision-v1','','','2022-08-29 13:35:13','2022-08-29 13:35:13','',10,'http://localhost:10004/?p=96',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (5,2,0);
INSERT INTO `wp_term_relationships` VALUES (13,20,0);
INSERT INTO `wp_term_relationships` VALUES (22,17,0);
INSERT INTO `wp_term_relationships` VALUES (90,1,0);
INSERT INTO `wp_term_relationships` VALUES (91,22,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'product_cat','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'nav_menu','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'wp_theme','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentytwo','twentytwentytwo',0);
INSERT INTO `wp_terms` VALUES (3,'simple','simple',0);
INSERT INTO `wp_terms` VALUES (4,'grouped','grouped',0);
INSERT INTO `wp_terms` VALUES (5,'variable','variable',0);
INSERT INTO `wp_terms` VALUES (6,'external','external',0);
INSERT INTO `wp_terms` VALUES (7,'exclude-from-search','exclude-from-search',0);
INSERT INTO `wp_terms` VALUES (8,'exclude-from-catalog','exclude-from-catalog',0);
INSERT INTO `wp_terms` VALUES (9,'featured','featured',0);
INSERT INTO `wp_terms` VALUES (10,'outofstock','outofstock',0);
INSERT INTO `wp_terms` VALUES (11,'rated-1','rated-1',0);
INSERT INTO `wp_terms` VALUES (12,'rated-2','rated-2',0);
INSERT INTO `wp_terms` VALUES (13,'rated-3','rated-3',0);
INSERT INTO `wp_terms` VALUES (14,'rated-4','rated-4',0);
INSERT INTO `wp_terms` VALUES (15,'rated-5','rated-5',0);
INSERT INTO `wp_terms` VALUES (16,'Non classé','non-classe',0);
INSERT INTO `wp_terms` VALUES (17,'Plongée','plongee',0);
INSERT INTO `wp_terms` VALUES (18,'snorkeling','snorkeling',0);
INSERT INTO `wp_terms` VALUES (19,'chasse sous-marine','chasse-sous-marine',0);
INSERT INTO `wp_terms` VALUES (20,'Anthony_D','anthony_d',0);
INSERT INTO `wp_terms` VALUES (21,'Portefolio','portefolio',0);
INSERT INTO `wp_terms` VALUES (22,'thèmeTahar','themetahar',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Anthony_D');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_dashboard','a:6:{i:0;s:24:\"wc_admin_dashboard_setup\";i:1;s:21:\"dashboard_site_health\";i:2;s:19:\"dashboard_right_now\";i:3;s:18:\"dashboard_activity\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'_woocommerce_tracks_anon_id','woo:Wi5CrVjwr1IhfgtVqZXeNUGj');
INSERT INTO `wp_usermeta` VALUES (22,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (24,1,'wc_last_active','1661731200');
INSERT INTO `wp_usermeta` VALUES (25,1,'managenav-menuscolumnshidden','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_nav-menus','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'closedpostboxes_nav-menus','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (28,1,'nav_menu_recently_edited','21');
INSERT INTO `wp_usermeta` VALUES (29,1,'meta-box-order_product','a:3:{s:4:\"side\";s:84:\"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (30,1,'session_tokens','a:2:{s:64:\"a7957bc8833a6f53473db9e8107981cccedbc1e0d85e4e7daa3c681794b3dc11\";a:4:{s:10:\"expiration\";i:1661950482;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";s:5:\"login\";i:1661777682;}s:64:\"2606a6456d2a139933f1b7f1fa86993c1eb9e6eafdf3c4a5d73ad6503e94771b\";a:4:{s:10:\"expiration\";i:1662020217;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";s:5:\"login\";i:1661847417;}}');
INSERT INTO `wp_usermeta` VALUES (32,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:0:{}}');
INSERT INTO `wp_usermeta` VALUES (33,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (34,1,'wp_user-settings-time','1661778382');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Anthony_D','$P$Bvc.kLPQasJV0bmiP/EH.jHW1lOTWd0','anthony_d','degand.anthony@gmail.com','http://localhost:10004','2022-08-25 11:16:56','',0,'Anthony_D');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_note_actions` VALUES (1,1,'add-store-details','Ajouter les détails de la boutique','http://localhost:10004/wp-admin/admin.php?page=wc-admin&path=/setup-wizard','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (44,38,'connect','Connecter','?page=wc-addons&section=helper','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (45,39,'learn_more','Learn More','https://woocommerce.com/checkout-blocks/','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (256,40,'learn-more','En savoir plus','https://woocommerce.com/mobile/?utm_medium=product','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (257,41,'visit-the-theme-marketplace','Consulter la bibliothèque de thèmes','https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (258,42,'affirm-insight-first-product-and-payment','Oui','','actioned','Merci pour vos retours',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (259,42,'affirm-insight-first-product-and-payment','Non','','actioned','Merci pour vos retours',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (260,43,'add-first-product','Ajouter un produit','http://localhost:10004/wp-admin/admin.php?page=wc-admin&task=products','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (261,44,'learn-more','En savoir plus','https://woocommerce.com/document/managing-products/?utm_source=inbox&utm_medium=product','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (304,2,'browse_extensions','Browse extensions','http://localhost:10004/wp-admin/admin.php?page=wc-addons','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (305,3,'wayflyer_bnpl_q4_2021','Level up with funding','https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (306,4,'wc_shipping_mobile_app_usps_q4_2021','Get WooCommerce Shipping','https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (307,5,'wc_shipping_mobile_app_q4_2021','Get the WooCommerce Mobile App','https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_q4_2021','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (308,6,'set-up-concierge','Schedule free session','https://wordpress.com/me/concierge','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (309,7,'learn-more','Learn more','https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (310,8,'learn-more-ecomm-unique-shopping-experience','Learn more','https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (311,9,'watch-the-webinar','Watch the webinar','https://youtu.be/V_2XtCOyZ7o','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (312,10,'learn-more','Learn more','https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (313,11,'optimizing-the-checkout-flow','Learn more','https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (314,12,'learn-more','Learn more','https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (315,13,'qualitative-feedback-from-new-users','Share feedback','https://automattic.survey.fm/wc-pay-new','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (316,14,'share-feedback','Share feedback','http://automattic.survey.fm/paypal-feedback','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (317,15,'get-started','Get started','https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (318,16,'update-wc-subscriptions-3-0-15','View latest version','http://localhost:10004/wp-admin/&page=wc-addons&section=helper','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (319,17,'update-wc-core-5-4-0','How to update WooCommerce','https://docs.woocommerce.com/document/how-to-update-woocommerce/','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (320,20,'ppxo-pps-install-paypal-payments-1','View upgrade guide','https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (321,21,'ppxo-pps-install-paypal-payments-2','View upgrade guide','https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (322,22,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (323,22,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (324,23,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (325,23,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (326,24,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (327,24,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (328,25,'learn-more','Learn more','https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (329,25,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (330,26,'share-feedback','Share feedback','https://automattic.survey.fm/store-management','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (331,27,'share-navigation-survey-feedback','Share feedback','https://automattic.survey.fm/feedback-on-woocommerce-navigation','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (332,28,'learn-more','Learn more','https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (333,28,'woocommerce-core-paypal-march-2022-dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (334,29,'learn-more','Learn more','https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (335,29,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (336,30,'pinterest_03_2022_update','Update Instructions','https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (337,31,'store_setup_survey_survey_q2_2022_share_your_thoughts','Tell us how it’s going','https://automattic.survey.fm/store-setup-survey-2022','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (338,32,'wc-admin-wisepad3','Grow my business offline','https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (339,33,'mercado_pago_q3_2022','Free download','https://woocommerce.com/products/mercado-pago-checkout/?utm_source=inbox_note&utm_medium=product&utm_campaign=mercado_pago_q3_2022','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (340,34,'learn-more','Find out more','https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (341,34,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (342,35,'learn-more','Find out more','https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/','unactioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (343,35,'dismiss','Dismiss','','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (344,36,'mobile_app_order_management_q3_2022','Get the WooCommerce Mobile App','https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=mobile_app_order_management_q3_2022','actioned','',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (345,37,'product_creation_usability_test_3_months_take_a_look','Try it now','https://t.maze.co/103446424','unactioned','',NULL,NULL);
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_notes`
--

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_notes` VALUES (1,'wc-admin-complete-store-details','info','en_US','Ajoutez les informations sur votre boutique pour terminer sa configuration.','Ajoutez toutes les informations importantes pour configurer votre boutique, par exemple son adresse de base.','{}','unactioned','woocommerce-admin','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (2,'new_in_app_marketplace_2021','info','en_US','Customize your store with extensions','Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.','{}','unactioned','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (3,'wayflyer_bnpl_q4_2021','marketing','en_US','Grow your business with funding through Wayflyer','Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (4,'wc_shipping_mobile_app_usps_q4_2021','marketing','en_US','Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App','Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (5,'wc_shipping_mobile_app_q4_2021','marketing','en_US','Print and manage your shipping labels with the WooCommerce Mobile App','Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (6,'ecomm-need-help-setting-up-your-store','info','en_US','Need help setting up your Store?','Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (7,'woocommerce-services','info','en_US','WooCommerce Shipping & Tax','WooCommerce Shipping &amp; Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (8,'ecomm-unique-shopping-experience','info','en_US','For a shopping experience as unique as your customers','Product Add-Ons allow your customers to personalize products while they\'re shopping on your online store. No more follow-up email requests—customers get what they want, before they\'re done checking out. Learn more about this extension that comes included in your plan.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (9,'wc-admin-getting-started-in-ecommerce','info','en_US','Getting Started in eCommerce - webinar','We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (10,'your-first-product','info','en_US','Your first product','That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (11,'wc-admin-optimizing-the-checkout-flow','info','en_US','Optimizing the checkout flow','It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (12,'wc-admin-first-five-things-to-customize','info','en_US','The first 5 things to customize in your store','Deciding what to start with first is tricky. To help you properly prioritize, we’ve put together this short list of the first few things you should customize in WooCommerce.','{}','unactioned','woocommerce.com','2022-08-29 07:24:21',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (13,'wc-payments-qualitative-feedback','info','en_US','WooCommerce Payments setup - let us know what you think','Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (14,'share-your-feedback-on-paypal','info','en_US','Share your feedback on PayPal','Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (15,'google_listings_and_ads_install','marketing','en_US','Drive traffic and sales with Google','Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (16,'wc-subscriptions-security-update-3-0-15','info','en_US','WooCommerce Subscriptions security update!','We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (17,'woocommerce-core-update-5-4-0','info','en_US','Update to WooCommerce 5.4.1 now','WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (18,'wcpay-promo-2020-11','marketing','en_US','wcpay-promo-2020-11','wcpay-promo-2020-11','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (19,'wcpay-promo-2020-12','marketing','en_US','wcpay-promo-2020-12','wcpay-promo-2020-12','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (20,'ppxo-pps-upgrade-paypal-payments-1','info','en_US','Get the latest PayPal extension for WooCommerce','Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (21,'ppxo-pps-upgrade-paypal-payments-2','info','en_US','Upgrade your PayPal experience!','Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (22,'woocommerce-core-sqli-july-2021-need-to-update','update','en_US','Action required: Critical vulnerabilities in WooCommerce','In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (23,'woocommerce-blocks-sqli-july-2021-need-to-update','update','en_US','Action required: Critical vulnerabilities in WooCommerce Blocks','In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (24,'woocommerce-core-sqli-july-2021-store-patched','update','en_US','Solved: Critical vulnerabilities patched in WooCommerce','In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (25,'woocommerce-blocks-sqli-july-2021-store-patched','update','en_US','Solved: Critical vulnerabilities patched in WooCommerce Blocks','In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (26,'habit-moment-survey','marketing','en_US','We’re all ears! Share your experience so far with WooCommerce','We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (27,'ecomm-wc-navigation-survey','info','en_US','We’d like your feedback on the WooCommerce navigation','We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (28,'woocommerce-core-paypal-march-2022-updated','update','en_US','Security auto-update of WooCommerce','<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.','{}','pending','woocommerce.com','2022-08-25 12:07:52',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (29,'woocommerce-core-paypal-march-2022-updated-nopp','update','en_US','Security auto-update of WooCommerce','<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).','{}','pending','woocommerce.com','2022-08-25 12:07:53',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (30,'pinterest_03_2022_update','marketing','en_US','Your Pinterest for WooCommerce plugin is out of date!','Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.','{}','pending','woocommerce.com','2022-08-25 12:07:53',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (31,'store_setup_survey_survey_q2_2022','survey','en_US','How is your store setup going?','Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.','{}','pending','woocommerce.com','2022-08-25 12:07:53',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (32,'wc-admin-wisepad3','marketing','en_US','Take your business on the go in Canada with WooCommerce In-Person Payments','Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.','{}','pending','woocommerce.com','2022-08-25 12:07:53',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (33,'mercado_pago_q3_2022','marketing','en_US','Get paid with Mercado Pago Checkout','Give your customers a checkout they can trust with Latin America\'s leading payment processor. Securely accept debit and credit cards, cash, bank transfers, and installment payments – backed by exclusive fraud prevention tools.','{}','pending','woocommerce.com','2022-08-25 12:07:53',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (34,'woocommerce-payments-august-2022-need-to-update','update','en_US','Action required: Please update WooCommerce Payments','An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.','{}','pending','woocommerce.com','2022-08-25 12:07:53',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (35,'woocommerce-payments-august-2022-store-patched','update','en_US','WooCommerce Payments has been automatically updated','You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.','{}','pending','woocommerce.com','2022-08-25 12:07:53',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (36,'mobile_app_order_management_q3_2022','marketing','en_US','Take order management on the go','The WooCommerce Mobile App continues to get better with added order management functionality! Add or remove products, edit fees, or change the shipping options in any existing order – all from within the app.','{}','unactioned','woocommerce.com','2022-08-25 12:07:53',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (37,'product_creation_usability_test_3_months','survey','en_US','Have a say in the future of WooCommerce','Take an early look at the future of editing products in WooCommerce. Share your thoughts (~5 minutes) and help shape the experience for yourself and other merchants.','{}','pending','woocommerce.com','2022-08-25 12:07:53',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (38,'wc-admin-wc-helper-connection','info','en_US','Se connecter à WooCommerce.com','Connectez-vous pour obtenir des notifications et des mises à jour importantes sur les produits.','{}','unactioned','woocommerce-admin','2022-08-25 12:07:55',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (39,'surface_cart_checkout','info','en_US','Présentation des blocs Panier et Validation de la commande','Augmentez les revenus de votre boutique grâce aux blocs Panier et Validation de la commande WooCommerce optimisés pour la conversion, disponibles dans l’extension WooCommerce Blocks.','{}','unactioned','woo-gutenberg-products-block','2022-08-25 12:07:55',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (40,'wc-admin-mobile-app','info','en_US','Installer l’application mobile Woo','Installez l’application mobile WooCommerce pour gérer les commandes, recevoir des notifications de vente et afficher les statistiques principales où que vous soyez.','{}','unactioned','woocommerce-admin','2022-08-29 12:07:56',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (41,'wc-admin-choosing-a-theme','marketing','en_US','Vous cherchez un thème ?','Découvrez les thèmes compatibles avec WooCommerce et choisissez celui qui correspond le mieux à l’image de votre marque et à vos besoins.','{}','unactioned','woocommerce-admin','2022-08-29 12:07:56',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (42,'wc-admin-insight-first-product-and-payment','survey','en_US','Tendances','Plus de 80 % des nouveaux commerçants ajoutent leur premier produit et configurent au moins un moyen de paiement durant la première semaine.<br><br>Trouvez-vous ce type d’information utile ?','{}','unactioned','woocommerce-admin','2022-08-29 12:07:56',NULL,0,'plain','',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (43,'wc-admin-add-first-product-note','email','en_US','Ajouter votre premier produit','{greetings}<br /><br />Nice one; vous avez créé votre boutique WooCommerce ! Il est maintenant temps d’ajouter votre premier produit et de commencer à le vendre.<br /><br />Trois méthodes permettent d’ajouter des produits : vous pouvez <strong>créer les produits manuellement, les importer d’une traite par l’intermédiaire d’un fichier CSV</strong>, ou <strong>les migrer depuis un autre service</strong>.<br /><br /><a href=\"https://woocommerce.com/document/managing-products/?utm_source=help_panel&amp;utm_medium=product\">Explorez notre documentation</a> pour plus d’informations ou bien lancez-vous !','{\"role\":\"administrator\"}','unactioned','woocommerce-admin','2022-08-29 12:07:56',NULL,0,'plain','http://localhost:10004/wp-content/plugins/woocommerce/images/admin_notes/dashboard-widget-setup.png',0,0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (44,'wc-admin-adding-and-managing-products','info','en_US','Ajout et gestion de produits','Découvrez comment proposer des produits dans WooCommerce à l’aide de notre documentation consacrée à l’ajout et à la gestion des produits. ','{}','unactioned','woocommerce-admin','2022-08-29 12:07:56',NULL,0,'plain','',0,0,'info');
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_category_lookup`
--

DROP TABLE IF EXISTS `wp_wc_category_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_category_lookup`
--

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_category_lookup` VALUES (16,16);
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_coupon_lookup`
--

LOCK TABLES `wp_wc_order_coupon_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_stats`
--

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

LOCK TABLES `wp_wc_order_tax_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_attributes_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_attributes_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_attributes_lookup`
--

LOCK TABLES `wp_wc_product_attributes_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_download_directories`
--

DROP TABLE IF EXISTS `wp_wc_product_download_directories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_id`),
  KEY `url` (`url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_download_directories`
--

LOCK TABLES `wp_wc_product_download_directories` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_download_directories` DISABLE KEYS */;
INSERT INTO `wp_wc_product_download_directories` VALUES (1,'file://C:/Users/afpa/Local Sites/trident/app/public/wp-content/uploads/woocommerce_uploads/',1);
INSERT INTO `wp_wc_product_download_directories` VALUES (2,'http://localhost:10004/wp-content/uploads/woocommerce_uploads/',1);
/*!40000 ALTER TABLE `wp_wc_product_download_directories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_rate_limits`
--

DROP TABLE IF EXISTS `wp_wc_rate_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rate_limit_expiry` bigint(20) unsigned NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rate_limit_id`),
  UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_rate_limits`
--

LOCK TABLES `wp_wc_rate_limits` WRITE;
/*!40000 ALTER TABLE `wp_wc_rate_limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_rate_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_reserved_stock`
--

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_reserved_stock`
--

LOCK TABLES `wp_wc_reserved_stock` WRITE;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` VALUES (1,'Taux réduit','taux-reduit');
INSERT INTO `wp_wc_tax_rate_classes` VALUES (2,'Taux zéro','taux-zero');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (6,'1','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:745:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:24:\"degand.anthony@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}',1661950491);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840');
INSERT INTO `wp_yoast_migrations` VALUES (2,'20171228151841');
INSERT INTO `wp_yoast_migrations` VALUES (3,'20190529075038');
INSERT INTO `wp_yoast_migrations` VALUES (4,'20191011111109');
INSERT INTO `wp_yoast_migrations` VALUES (5,'20200408101900');
INSERT INTO `wp_yoast_migrations` VALUES (6,'20200420073606');
INSERT INTO `wp_yoast_migrations` VALUES (7,'20200428123747');
INSERT INTO `wp_yoast_migrations` VALUES (8,'20200428194858');
INSERT INTO `wp_yoast_migrations` VALUES (9,'20200429105310');
INSERT INTO `wp_yoast_migrations` VALUES (10,'20200430075614');
INSERT INTO `wp_yoast_migrations` VALUES (11,'20200430150130');
INSERT INTO `wp_yoast_migrations` VALUES (12,'20200507054848');
INSERT INTO `wp_yoast_migrations` VALUES (13,'20200513133401');
INSERT INTO `wp_yoast_migrations` VALUES (14,'20200609154515');
INSERT INTO `wp_yoast_migrations` VALUES (15,'20200616130143');
INSERT INTO `wp_yoast_migrations` VALUES (16,'20200617122511');
INSERT INTO `wp_yoast_migrations` VALUES (17,'20200702141921');
INSERT INTO `wp_yoast_migrations` VALUES (18,'20200728095334');
INSERT INTO `wp_yoast_migrations` VALUES (19,'20201202144329');
INSERT INTO `wp_yoast_migrations` VALUES (20,'20201216124002');
INSERT INTO `wp_yoast_migrations` VALUES (21,'20201216141134');
INSERT INTO `wp_yoast_migrations` VALUES (22,'20210817092415');
INSERT INTO `wp_yoast_migrations` VALUES (23,'20211020091404');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 15:43:40
