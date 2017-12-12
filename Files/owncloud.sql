-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2017 at 03:55 PM
-- Server version: 5.5.58-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `owncloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `AppDBv2_actions`
--

CREATE TABLE IF NOT EXISTS `AppDBv2_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `AppDBv2_actions`
--

INSERT INTO `AppDBv2_actions` (`id`, `name`) VALUES
(1, 'file_changed'),
(2, 'file_created'),
(3, 'file_deleted');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add auth group', 7, 'add_authgroup'),
(20, 'Can change auth group', 7, 'change_authgroup'),
(21, 'Can delete auth group', 7, 'delete_authgroup'),
(22, 'Can add auth group permissions', 8, 'add_authgrouppermissions'),
(23, 'Can change auth group permissions', 8, 'change_authgrouppermissions'),
(24, 'Can delete auth group permissions', 8, 'delete_authgrouppermissions'),
(25, 'Can add auth permission', 9, 'add_authpermission'),
(26, 'Can change auth permission', 9, 'change_authpermission'),
(27, 'Can delete auth permission', 9, 'delete_authpermission'),
(28, 'Can add auth user', 10, 'add_authuser'),
(29, 'Can change auth user', 10, 'change_authuser'),
(30, 'Can delete auth user', 10, 'delete_authuser'),
(31, 'Can add auth user groups', 11, 'add_authusergroups'),
(32, 'Can change auth user groups', 11, 'change_authusergroups'),
(33, 'Can delete auth user groups', 11, 'delete_authusergroups'),
(34, 'Can add auth user user permissions', 12, 'add_authuseruserpermissions'),
(35, 'Can change auth user user permissions', 12, 'change_authuseruserpermissions'),
(36, 'Can delete auth user user permissions', 12, 'delete_authuseruserpermissions'),
(37, 'Can add django admin log', 13, 'add_djangoadminlog'),
(38, 'Can change django admin log', 13, 'change_djangoadminlog'),
(39, 'Can delete django admin log', 13, 'delete_djangoadminlog'),
(40, 'Can add django content type', 14, 'add_djangocontenttype'),
(41, 'Can change django content type', 14, 'change_djangocontenttype'),
(42, 'Can delete django content type', 14, 'delete_djangocontenttype'),
(43, 'Can add django migrations', 15, 'add_djangomigrations'),
(44, 'Can change django migrations', 15, 'change_djangomigrations'),
(45, 'Can delete django migrations', 15, 'delete_djangomigrations'),
(46, 'Can add django session', 16, 'add_djangosession'),
(47, 'Can change django session', 16, 'change_djangosession'),
(48, 'Can delete django session', 16, 'delete_djangosession'),
(49, 'Can add oc activity', 17, 'add_ocactivity'),
(50, 'Can change oc activity', 17, 'change_ocactivity'),
(51, 'Can delete oc activity', 17, 'delete_ocactivity'),
(52, 'Can add user name', 18, 'add_username'),
(53, 'Can change user name', 18, 'change_username'),
(54, 'Can delete user name', 18, 'delete_username'),
(55, 'Can add site', 19, 'add_site'),
(56, 'Can change site', 19, 'change_site'),
(57, 'Can delete site', 19, 'delete_site'),
(58, 'Can add auth group', 20, 'add_authgroup'),
(59, 'Can change auth group', 20, 'change_authgroup'),
(60, 'Can delete auth group', 20, 'delete_authgroup'),
(61, 'Can add auth group permissions', 21, 'add_authgrouppermissions'),
(62, 'Can change auth group permissions', 21, 'change_authgrouppermissions'),
(63, 'Can delete auth group permissions', 21, 'delete_authgrouppermissions'),
(64, 'Can add auth permission', 22, 'add_authpermission'),
(65, 'Can change auth permission', 22, 'change_authpermission'),
(66, 'Can delete auth permission', 22, 'delete_authpermission'),
(67, 'Can add auth user', 23, 'add_authuser'),
(68, 'Can change auth user', 23, 'change_authuser'),
(69, 'Can delete auth user', 23, 'delete_authuser'),
(70, 'Can add auth user groups', 24, 'add_authusergroups'),
(71, 'Can change auth user groups', 24, 'change_authusergroups'),
(72, 'Can delete auth user groups', 24, 'delete_authusergroups'),
(73, 'Can add auth user user permissions', 25, 'add_authuseruserpermissions'),
(74, 'Can change auth user user permissions', 25, 'change_authuseruserpermissions'),
(75, 'Can delete auth user user permissions', 25, 'delete_authuseruserpermissions'),
(76, 'Can add django admin log', 26, 'add_djangoadminlog'),
(77, 'Can change django admin log', 26, 'change_djangoadminlog'),
(78, 'Can delete django admin log', 26, 'delete_djangoadminlog'),
(79, 'Can add django content type', 27, 'add_djangocontenttype'),
(80, 'Can change django content type', 27, 'change_djangocontenttype'),
(81, 'Can delete django content type', 27, 'delete_djangocontenttype'),
(82, 'Can add django migrations', 28, 'add_djangomigrations'),
(83, 'Can change django migrations', 28, 'change_djangomigrations'),
(84, 'Can delete django migrations', 28, 'delete_djangomigrations'),
(85, 'Can add django session', 29, 'add_djangosession'),
(86, 'Can change django session', 29, 'change_djangosession'),
(87, 'Can delete django session', 29, 'delete_djangosession'),
(88, 'Can add oc activity', 30, 'add_ocactivity'),
(89, 'Can change oc activity', 30, 'change_ocactivity'),
(90, 'Can delete oc activity', 30, 'delete_ocactivity'),
(91, 'Can add data table', 31, 'add_datatable'),
(92, 'Can change data table', 31, 'change_datatable'),
(93, 'Can delete data table', 31, 'delete_datatable'),
(94, 'Can add actions', 32, 'add_actions'),
(95, 'Can change actions', 32, 'change_actions'),
(96, 'Can delete actions', 32, 'delete_actions');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$nBJkyc4eD0RY$HRrIEcBUEd830J36mvBqbt3ucwPc0sB5dksIg4fKWto=', '2017-11-09 15:52:05', 1, 'admin', '', '', '', 1, 1, '2017-11-08 13:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-11-10 15:42:14', '1', 'file_changed', 1, '[{"added": {}}]', 32, 1),
(2, '2017-11-10 15:42:23', '2', 'file_created', 1, '[{"added": {}}]', 32, 1),
(3, '2017-11-10 15:43:16', '3', 'file_deleted', 1, '[{"added": {}}]', 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'AppDB', 'authgroup'),
(8, 'AppDB', 'authgrouppermissions'),
(9, 'AppDB', 'authpermission'),
(10, 'AppDB', 'authuser'),
(11, 'AppDB', 'authusergroups'),
(12, 'AppDB', 'authuseruserpermissions'),
(13, 'AppDB', 'djangoadminlog'),
(14, 'AppDB', 'djangocontenttype'),
(15, 'AppDB', 'djangomigrations'),
(16, 'AppDB', 'djangosession'),
(17, 'AppDB', 'ocactivity'),
(18, 'AppDB', 'username'),
(32, 'AppDBv2', 'actions'),
(20, 'AppDBv2', 'authgroup'),
(21, 'AppDBv2', 'authgrouppermissions'),
(22, 'AppDBv2', 'authpermission'),
(23, 'AppDBv2', 'authuser'),
(24, 'AppDBv2', 'authusergroups'),
(25, 'AppDBv2', 'authuseruserpermissions'),
(31, 'AppDBv2', 'datatable'),
(26, 'AppDBv2', 'djangoadminlog'),
(27, 'AppDBv2', 'djangocontenttype'),
(28, 'AppDBv2', 'djangomigrations'),
(29, 'AppDBv2', 'djangosession'),
(30, 'AppDBv2', 'ocactivity'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(19, 'sites', 'site');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-11-08 13:16:13'),
(2, 'auth', '0001_initial', '2017-11-08 13:16:14'),
(3, 'admin', '0001_initial', '2017-11-08 13:16:14'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-11-08 13:16:14'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-11-08 13:16:14'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-11-08 13:16:14'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-11-08 13:16:14'),
(8, 'auth', '0004_alter_user_username_opts', '2017-11-08 13:16:14'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-11-08 13:16:14'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-11-08 13:16:14'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-11-08 13:16:14'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-11-08 13:16:14'),
(13, 'sessions', '0001_initial', '2017-11-08 13:16:14'),
(14, 'sites', '0001_initial', '2017-11-09 10:21:01'),
(15, 'sites', '0002_alter_domain_unique', '2017-11-09 10:21:01'),
(16, 'AppDB', '0001_initial', '2017-11-09 10:43:37'),
(17, 'AppDB', '0002_delete_username', '2017-11-09 10:48:19'),
(18, 'AppDBv2', '0001_initial', '2017-11-09 14:42:35'),
(19, 'AppDBv2', '0002_datatable', '2017-11-09 15:25:17'),
(20, 'AppDBv2', '0003_delete_datatable', '2017-11-10 13:02:22'),
(21, 'AppDBv2', '0004_actions', '2017-11-10 15:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('n55m29n7z5zmk3slhccwif2aptrd92u4', 'NjEwYWFkZWU2OTdjMjAxNDM2Y2JkNmM4MzU2YmIxYWU4YWFjZjU3Nzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc3Y2EyNmUwODJkZDIyZTdmYmYwYzA2MDM0NGI5MzJkZDFkZmM0YjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-11-23 15:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `oc_activity`
--

CREATE TABLE IF NOT EXISTS `oc_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `affecteduser` varchar(64) COLLATE utf8_bin NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `subjectparams` varchar(4000) COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `messageparams` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `file` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `link` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `object_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `object_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`),
  KEY `activity_time` (`timestamp`),
  KEY `activity_user_time` (`affecteduser`,`timestamp`),
  KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`),
  KEY `activity_filter_app` (`affecteduser`,`app`,`timestamp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=342266 ;

--
-- Dumping data for table `oc_activity`
--

INSERT INTO `oc_activity` (`activity_id`, `timestamp`, `priority`, `type`, `user`, `affecteduser`, `app`, `subject`, `subjectparams`, `message`, `messageparams`, `file`, `link`, `object_type`, `object_id`) VALUES
(342207, 1478595928, 30, 'file_changed', 'knep', 'mwla', 'files', 'changed_by', '[{"89198":"\\/JDM Poland\\/raporty\\/10.2016\\/Taras\\/Raport TOR Pa\\u017adziernik.ods"},"knep"]', '', '[]', '/JDM Poland/raporty/10.2016/Taras/Raport TOR Październik.ods', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Poland%2Fraporty%2F10.2016%2FTaras', 'files', 89198),
(342208, 1478595928, 30, 'file_changed', 'knep', 'jpie', 'files', 'changed_by', '[{"89198":"\\/JDM Poland\\/raporty\\/10.2016\\/Taras\\/Raport TOR Pa\\u017adziernik.ods"},"knep"]', '', '[]', '/JDM Poland/raporty/10.2016/Taras/Raport TOR Październik.ods', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Poland%2Fraporty%2F10.2016%2FTaras', 'files', 89198),
(342209, 1478595928, 30, 'file_changed', 'knep', 'dsol', 'files', 'changed_by', '[{"89198":"\\/JDM Poland\\/raporty\\/10.2016\\/Taras\\/Raport TOR Pa\\u017adziernik.ods"},"knep"]', '', '[]', '/JDM Poland/raporty/10.2016/Taras/Raport TOR Październik.ods', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Poland%2Fraporty%2F10.2016%2FTaras', 'files', 89198),
(342210, 1478595928, 30, 'file_changed', 'knep', 'knep', 'files', 'changed_self', '[{"89198":"\\/JDM Poland\\/raporty\\/10.2016\\/Taras\\/Raport TOR Pa\\u017adziernik.ods"}]', '', '[]', '/JDM Poland/raporty/10.2016/Taras/Raport TOR Październik.ods', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Poland%2Fraporty%2F10.2016%2FTaras', 'files', 89198),
(342211, 1478595928, 30, 'file_changed', 'knep', 'root', 'files', 'changed_by', '[{"89198":"\\/JDM Poland\\/raporty\\/10.2016\\/Taras\\/Raport TOR Pa\\u017adziernik.ods"},"knep"]', '', '[]', '/JDM Poland/raporty/10.2016/Taras/Raport TOR Październik.ods', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Poland%2Fraporty%2F10.2016%2FTaras', 'files', 89198),
(342212, 1478596714, 30, 'file_changed', 'adaj', 'mkol', 'files', 'changed_by', '[{"89209":"\\/EXPO\\/10.2016\\/Godziny. EXPO  10.2016.xls"},"adaj"]', '', '[]', '/EXPO/10.2016/Godziny. EXPO  10.2016.xls', 'https://192.168.16.225/owncloud/files/index.php?dir=%2FEXPO%2F10.2016', 'files', 89209),
(342213, 1478596714, 30, 'file_changed', 'adaj', 'iiev', 'files', 'changed_by', '[{"89209":"\\/UDOST\\u0118PNIONE PRZEZ INNYCH\\/OBS\\u0141UGA\\/EXPO\\/10.2016\\/Godziny. EXPO  10.2016.xls"},"adaj"]', '', '[]', '/UDOSTĘPNIONE PRZEZ INNYCH/OBSŁUGA/EXPO/10.2016/Godziny. EXPO  10.2016.xls', 'https://192.168.16.225/owncloud/files/index.php?dir=%2FUDOST%C4%98PNIONE+PRZEZ+INNYCH%2FOBS%C5%81UGA%2FEXPO%2F10.2016', 'files', 89209),
(342214, 1478596714, 30, 'file_changed', 'adaj', 'adaj', 'files', 'changed_self', '[{"89209":"\\/EXPO\\/10.2016\\/Godziny. EXPO  10.2016.xls"}]', '', '[]', '/EXPO/10.2016/Godziny. EXPO  10.2016.xls', 'https://192.168.16.225/owncloud/files/index.php?dir=%2FEXPO%2F10.2016', 'files', 89209),
(342215, 1478596714, 30, 'file_changed', 'adaj', 'kwoj', 'files', 'changed_by', '[{"89209":"\\/EXPO (koord. - Antonii Dajlida)\\/10.2016\\/Godziny. EXPO  10.2016.xls"},"adaj"]', '', '[]', '/EXPO (koord. - Antonii Dajlida)/10.2016/Godziny. EXPO  10.2016.xls', 'https://192.168.16.225/owncloud/files/index.php?dir=%2FEXPO+%28koord.+-+Antonii+Dajlida%29%2F10.2016', 'files', 89209),
(342216, 1478597221, 30, 'file_created', 'ikam', 'dsol', 'files', 'created_by', '[{"89224":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442 \\u0424\\u0456\\u0440\\u044e\\u0437\\u0430 .jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акт Фірюза .jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89224),
(342217, 1478597221, 30, 'file_created', 'ikam', 'jpie', 'files', 'created_by', '[{"89224":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442 \\u0424\\u0456\\u0440\\u044e\\u0437\\u0430 .jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акт Фірюза .jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89224),
(342218, 1478597221, 30, 'file_created', 'ikam', 'mwla', 'files', 'created_by', '[{"89224":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442 \\u0424\\u0456\\u0440\\u044e\\u0437\\u0430 .jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акт Фірюза .jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89224),
(342219, 1478597221, 30, 'file_created', 'ikam', 'dpov', 'files', 'created_by', '[{"89224":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442 \\u0424\\u0456\\u0440\\u044e\\u0437\\u0430 .jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акт Фірюза .jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89224),
(342220, 1478597221, 30, 'file_created', 'ikam', 'vhit', 'files', 'created_by', '[{"89224":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442 \\u0424\\u0456\\u0440\\u044e\\u0437\\u0430 .jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акт Фірюза .jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89224),
(342222, 1478597221, 30, 'file_created', 'ikam', 'ikam', 'files', 'created_self', '[{"89224":"\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442 \\u0424\\u0456\\u0440\\u044e\\u0437\\u0430 .jpeg"}]', '', '[]', '/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акт Фірюза .jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89224),
(342223, 1478597221, 30, 'file_created', 'ikam', 'igord', 'files', 'created_by', '[{"89224":"\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442 \\u0424\\u0456\\u0440\\u044e\\u0437\\u0430 .jpeg"},"ikam"]', '', '[]', '/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акт Фірюза .jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89224),
(342224, 1478597221, 30, 'file_created', 'ikam', 'root', 'files', 'created_by', '[{"89224":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442 \\u0424\\u0456\\u0440\\u044e\\u0437\\u0430 .jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акт Фірюза .jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89224),
(342225, 1478597295, 30, 'file_created', 'ikam', 'dsol', 'files', 'created_by', '[{"89225":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/untitled folder"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/untitled folder', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89225),
(342226, 1478597295, 30, 'file_created', 'ikam', 'jpie', 'files', 'created_by', '[{"89225":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/untitled folder"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/untitled folder', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89225),
(342227, 1478597295, 30, 'file_created', 'ikam', 'mwla', 'files', 'created_by', '[{"89225":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/untitled folder"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/untitled folder', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89225),
(342228, 1478597295, 30, 'file_created', 'ikam', 'dpov', 'files', 'created_by', '[{"89225":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/untitled folder"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/untitled folder', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89225),
(342229, 1478597295, 30, 'file_created', 'ikam', 'vhit', 'files', 'created_by', '[{"89225":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/untitled folder"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/untitled folder', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89225),
(342231, 1478597295, 30, 'file_created', 'ikam', 'ikam', 'files', 'created_self', '[{"89225":"\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/untitled folder"}]', '', '[]', '/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/untitled folder', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89225),
(342232, 1478597295, 30, 'file_created', 'ikam', 'igord', 'files', 'created_by', '[{"89225":"\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/untitled folder"},"ikam"]', '', '[]', '/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/untitled folder', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89225),
(342233, 1478597295, 30, 'file_created', 'ikam', 'root', 'files', 'created_by', '[{"89225":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/untitled folder"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/untitled folder', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11', 'files', 89225),
(342234, 1478597376, 30, 'file_created', 'ikam', 'dsol', 'files', 'created_by', '[{"89226":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/1.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/1.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89226),
(342235, 1478597376, 30, 'file_created', 'ikam', 'jpie', 'files', 'created_by', '[{"89226":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/1.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/1.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89226),
(342236, 1478597376, 30, 'file_created', 'ikam', 'mwla', 'files', 'created_by', '[{"89226":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/1.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/1.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89226),
(342237, 1478597376, 30, 'file_created', 'ikam', 'dpov', 'files', 'created_by', '[{"89226":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/1.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/1.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89226),
(342238, 1478597376, 30, 'file_created', 'ikam', 'vhit', 'files', 'created_by', '[{"89226":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/1.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/1.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89226),
(342240, 1478597376, 30, 'file_created', 'ikam', 'ikam', 'files', 'created_self', '[{"89226":"\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/1.jpeg"}]', '', '[]', '/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/1.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89226),
(342241, 1478597376, 30, 'file_created', 'ikam', 'igord', 'files', 'created_by', '[{"89226":"\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/1.jpeg"},"ikam"]', '', '[]', '/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/1.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89226),
(342242, 1478597376, 30, 'file_created', 'ikam', 'root', 'files', 'created_by', '[{"89226":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/1.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/1.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89226),
(342244, 1478597393, 30, 'file_deleted', 'iiev', 'dzak', 'files', 'deleted_by', '[{"89184":"\\/Skany new\\/MARION\\/BAHDANOVICH KANSTANTSIN PASSPORT.jpg"},"iiev"]', '', '[]', '/Skany new/MARION/BAHDANOVICH KANSTANTSIN PASSPORT.jpg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FSkany+new%2FMARION', 'files', 89184),
(342245, 1478597393, 30, 'file_deleted', 'iiev', 'iiev', 'files', 'deleted_self', '[{"89184":"\\/Skany new\\/MARION\\/BAHDANOVICH KANSTANTSIN PASSPORT.jpg"}]', '', '[]', '/Skany new/MARION/BAHDANOVICH KANSTANTSIN PASSPORT.jpg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FSkany+new%2FMARION', 'files', 89184),
(342247, 1478597393, 30, 'file_deleted', 'iiev', 'kalatowki-recruitment-5', 'files', 'deleted_by', '[{"89184":"\\/Skany new\\/MARION\\/BAHDANOVICH KANSTANTSIN PASSPORT.jpg"},"iiev"]', '', '[]', '/Skany new/MARION/BAHDANOVICH KANSTANTSIN PASSPORT.jpg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FSkany+new%2FMARION', 'files', 89184),
(342248, 1478597393, 30, 'file_deleted', 'iiev', 'alikh', 'files', 'deleted_by', '[{"89184":"\\/Skany new\\/MARION\\/BAHDANOVICH KANSTANTSIN PASSPORT.jpg"},"iiev"]', '', '[]', '/Skany new/MARION/BAHDANOVICH KANSTANTSIN PASSPORT.jpg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FSkany+new%2FMARION', 'files', 89184),
(342250, 1478597394, 30, 'file_deleted', 'iiev', 'dzak', 'files', 'deleted_by', '[{"89185":"\\/Skany new\\/MARION\\/BAHDANOVICH KANSTANTSIN VISA.jpg"},"iiev"]', '', '[]', '/Skany new/MARION/BAHDANOVICH KANSTANTSIN VISA.jpg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FSkany+new%2FMARION', 'files', 89185),
(342251, 1478597394, 30, 'file_deleted', 'iiev', 'iiev', 'files', 'deleted_self', '[{"89185":"\\/Skany new\\/MARION\\/BAHDANOVICH KANSTANTSIN VISA.jpg"}]', '', '[]', '/Skany new/MARION/BAHDANOVICH KANSTANTSIN VISA.jpg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FSkany+new%2FMARION', 'files', 89185),
(342253, 1478597394, 30, 'file_deleted', 'iiev', 'kalatowki-recruitment-5', 'files', 'deleted_by', '[{"89185":"\\/Skany new\\/MARION\\/BAHDANOVICH KANSTANTSIN VISA.jpg"},"iiev"]', '', '[]', '/Skany new/MARION/BAHDANOVICH KANSTANTSIN VISA.jpg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FSkany+new%2FMARION', 'files', 89185),
(342254, 1478597394, 30, 'file_deleted', 'iiev', 'alikh', 'files', 'deleted_by', '[{"89185":"\\/Skany new\\/MARION\\/BAHDANOVICH KANSTANTSIN VISA.jpg"},"iiev"]', '', '[]', '/Skany new/MARION/BAHDANOVICH KANSTANTSIN VISA.jpg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FSkany+new%2FMARION', 'files', 89185),
(342255, 1478597433, 30, 'file_created', 'ikam', 'dsol', 'files', 'created_by', '[{"89229":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/2.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/2.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89229),
(342256, 1478597433, 30, 'file_created', 'ikam', 'jpie', 'files', 'created_by', '[{"89229":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/2.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/2.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89229),
(342257, 1478597433, 30, 'file_created', 'ikam', 'mwla', 'files', 'created_by', '[{"89229":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/2.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/2.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89229),
(342258, 1478597433, 30, 'file_created', 'ikam', 'dpov', 'files', 'created_by', '[{"89229":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/2.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/2.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89229),
(342259, 1478597433, 30, 'file_created', 'ikam', 'vhit', 'files', 'created_by', '[{"89229":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/2.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/2.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89229),
(342261, 1478597433, 30, 'file_created', 'ikam', 'ikam', 'files', 'created_self', '[{"89229":"\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/2.jpeg"}]', '', '[]', '/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/2.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89229),
(342262, 1478597433, 30, 'file_created', 'ikam', 'igord', 'files', 'created_by', '[{"89229":"\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/2.jpeg"},"ikam"]', '', '[]', '/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/2.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89229),
(342263, 1478597433, 30, 'file_created', 'ikam', 'root', 'files', 'created_by', '[{"89229":"\\/JDM Recruitment\\/JDM Ukraine\\/\\u0411\\u0423\\u0425\\u0413\\u0410\\u041b\\u0422\\u0415\\u0420\\u0418\\u042f\\/2016\\/\\u0441\\u043a\\u0430\\u043d\\u0438 \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043e\\u043a\\/\\u043b\\u0438\\u0441\\u0442\\u043e\\u043f\\u0430\\u0434\\/08.11\\/\\u0410\\u043a\\u0442\\u0438 \\u0414\\u0456\\u0445\\u0442\\u044f\\u0440\\/2.jpeg"},"ikam"]', '', '[]', '/JDM Recruitment/JDM Ukraine/БУХГАЛТЕРИЯ/2016/скани платіжок/листопад/08.11/Акти Діхтяр/2.jpeg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FJDM+Recruitment%2FJDM+Ukraine%2F%D0%91%D0%A3%D0%A5%D0%93%D0%90%D0%9B%D0%A2%D0%95%D0%A0%D0%98%D0%AF%2F2016%2F%D1%81%D0%BA%D0%B0%D0%BD%D0%B8+%D0%BF%D0%BB%D0%B0%D1%82%D1%96%D0%B6%D0%BE%D0%BA%2F%D0%BB%D0%B8%D1%81%D1%82%D0%BE%D0%BF%D0%B0%D0%B4%2F08.11%2F%D0%90%D0%BA%D1%82%D0%B8+%D0%94%D1%96%D1%85%D1%82%D1%8F%D1%80', 'files', 89229),
(342265, 1478597449, 30, 'file_deleted', 'iiev', 'dzak', 'files', 'deleted_by', '[{"89188":"\\/Skany new\\/MARION\\/FROLOV SERGEI PASSPORT.jpg"},"iiev"]', '', '[]', '/Skany new/MARION/FROLOV SERGEI PASSPORT.jpg', 'https://cloud.jdmgroup.pl/files/index.php?dir=%2FSkany+new%2FMARION', 'files', 89188);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
