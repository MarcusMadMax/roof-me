-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 19, 2020 at 12:09 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roof-me`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-10-15 07:30:29', '2020-10-15 07:30:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/roof-me', 'yes'),
(2, 'home', 'http://localhost/roof-me', 'yes'),
(3, 'blogname', 'roof-me', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marcuszillner@icloud.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'roof-me', 'yes'),
(41, 'stylesheet', 'roof-me', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1618299028', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1603060230;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1603092629;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603092630;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1603092645;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603092647;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603438229;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'nonce_key', 'y/&cq,:wm]pw`]}:n0MAz:%o )ssQ,+&{Ip6Wz(QraNVTa!xn2joRB$R|Ds9KZv%', 'no'),
(112, 'nonce_salt', '2G?9W2hA)}Ql,wMJ`fHraG|`ETe99)zrzSVfWSnzF.K&N~7vo]#Q.R0g9Vj T),X', 'no'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'recovery_keys', 'a:1:{s:22:\"wkUyDY5n4lNCJKb04WE8Ev\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BYUSvS3mU9h80.WeoLHJD8NxvfSiev0\";s:10:\"created_at\";i:1603053201;}}', 'yes'),
(118, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1603049539;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603048546;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.1\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(121, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1602748955;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603048546;s:7:\"checked\";a:4:{s:7:\"roof-me\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(125, 'auth_key', 'ks=Dj+:U(/N_?B<uE}r&br+pvuIufSq OV[A.$JZd H/-IQ!O9[YjC]eC)yejhG1', 'no'),
(126, 'auth_salt', '9|x];6uz<CXW[z,#(_THH7BhDlHXArK-SWd^{[|`b]pl-UKeQs7_O;?<^RQ.+EH=', 'no'),
(127, 'logged_in_key', '^V<Q*7^U((%R$3ZHj.~g~-~RRmL1@jF3.y;b_Ni.p1FHi,>3gp8}v44fogb&2q^w', 'no'),
(128, 'logged_in_salt', 'P(y-/N#=t~E7rhRE#yL}iB:G2!PcxX|k3H?Yh)shvFxgSR=Ry}[(LCZ 6ERaLCM]', 'no'),
(129, '_site_transient_timeout_browser_8c639ed2500d66b4ca33d489cc726e80', '1603351846', 'no'),
(130, '_site_transient_browser_8c639ed2500d66b4ca33d489cc726e80', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"86.0.4240.80\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, '_site_transient_timeout_php_check_9c1053d8f82668af273e4a26e955e566', '1603351847', 'no'),
(132, '_site_transient_php_check_9c1053d8f82668af273e4a26e955e566', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(152, 'current_theme', 'Roof Me', 'yes'),
(153, 'theme_mods_roof-me', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(157, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(162, 'acf_version', '5.9.1', 'yes'),
(170, '_site_transient_timeout_browser_40bcd8631a6cfad4b9f36dc6b4aca869', '1603410667', 'no'),
(171, '_site_transient_browser_40bcd8631a6cfad4b9f36dc6b4aca869', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"86.0.4240.80\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(172, '_site_transient_timeout_php_check_b1f7d17548e7b3eac5214a006719f44e', '1603410668', 'no'),
(173, '_site_transient_php_check_b1f7d17548e7b3eac5214a006719f44e', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(191, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"10\",\"critical\":\"0\"}', 'yes'),
(211, '_site_transient_timeout_theme_roots', '1603050345', 'no'),
(212, '_site_transient_theme_roots', 'a:4:{s:7:\"roof-me\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(216, 'recovery_mode_email_last_sent', '1603053200', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1602747065'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1602747065'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 7, '_edit_lock', '1603058506:1'),
(10, 9, '_edit_lock', '1602817800:1'),
(11, 11, '_edit_lock', '1602818578:1'),
(12, 13, '_edit_lock', '1602819614:1'),
(13, 15, '_edit_lock', '1602755820:1'),
(14, 17, '_menu_item_type', 'custom'),
(15, 17, '_menu_item_menu_item_parent', '0'),
(16, 17, '_menu_item_object_id', '17'),
(17, 17, '_menu_item_object', 'custom'),
(18, 17, '_menu_item_target', ''),
(19, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 17, '_menu_item_xfn', ''),
(21, 17, '_menu_item_url', 'http://localhost/roof-me/'),
(23, 18, '_menu_item_type', 'post_type'),
(24, 18, '_menu_item_menu_item_parent', '0'),
(25, 18, '_menu_item_object_id', '15'),
(26, 18, '_menu_item_object', 'page'),
(27, 18, '_menu_item_target', ''),
(28, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 18, '_menu_item_xfn', ''),
(30, 18, '_menu_item_url', ''),
(32, 19, '_menu_item_type', 'post_type'),
(33, 19, '_menu_item_menu_item_parent', '0'),
(34, 19, '_menu_item_object_id', '7'),
(35, 19, '_menu_item_object', 'page'),
(36, 19, '_menu_item_target', ''),
(37, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 19, '_menu_item_xfn', ''),
(39, 19, '_menu_item_url', ''),
(59, 22, '_menu_item_type', 'post_type'),
(60, 22, '_menu_item_menu_item_parent', '0'),
(61, 22, '_menu_item_object_id', '13'),
(62, 22, '_menu_item_object', 'page'),
(63, 22, '_menu_item_target', ''),
(64, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 22, '_menu_item_xfn', ''),
(66, 22, '_menu_item_url', ''),
(68, 24, '_edit_last', '1'),
(69, 24, '_edit_lock', '1602818663:1'),
(70, 7, '_edit_last', '1'),
(71, 7, 'services', 'New Roofing'),
(72, 7, '_services', 'field_5f88968f7e5b1'),
(73, 7, 'learn_more', 'a:3:{s:5:\"title\";s:11:\"New Roofing\";s:3:\"url\";s:47:\"http://localhost/roof-me/index.php/new-roofing/\";s:6:\"target\";s:0:\"\";}'),
(74, 7, '_learn_more', 'field_5f889cb278c3a'),
(75, 27, 'services', 'New Roofing'),
(76, 27, '_services', 'field_5f88968f7e5b1'),
(77, 27, 'learn_more', 'a:3:{s:5:\"title\";s:11:\"New Roofing\";s:3:\"url\";s:47:\"http://localhost/roof-me/index.php/new-roofing/\";s:6:\"target\";s:0:\"\";}'),
(78, 27, '_learn_more', 'field_5f8896f27e5b2'),
(79, 7, 'service-name', 'New Roofing'),
(80, 7, '_service-name', 'field_5f88968f7e5b1'),
(81, 7, 'service_text', 'Bla Bla'),
(82, 7, '_service_text', 'field_5f8896f27e5b2'),
(83, 29, 'services', 'New Roofing'),
(84, 29, '_services', 'field_5f88968f7e5b1'),
(85, 29, 'learn_more', 'a:3:{s:5:\"title\";s:11:\"New Roofing\";s:3:\"url\";s:47:\"http://localhost/roof-me/index.php/new-roofing/\";s:6:\"target\";s:0:\"\";}'),
(86, 29, '_learn_more', 'field_5f889cb278c3a'),
(87, 29, 'service-name', 'New Roofing'),
(88, 29, '_service-name', 'field_5f88968f7e5b1'),
(89, 29, 'service_text', 'Bla Bla'),
(90, 29, '_service_text', 'field_5f8896f27e5b2'),
(91, 30, '_edit_last', '1'),
(92, 30, '_edit_lock', '1602797675:1'),
(93, 30, 'service-name', 'New Roofing'),
(94, 30, '_service-name', 'field_5f88968f7e5b1'),
(95, 30, 'service_text', 'Re-Roofing not only improves the aesthetics of your home, but also ensures it remains healthy, dry and warm for years to come. We’re specialists in residential metal re-roofing, using only high-quality products from COLORSTEEL® and ColorCote®.'),
(96, 30, '_service_text', 'field_5f8896f27e5b2'),
(97, 30, 'learn_more', 'a:3:{s:5:\"title\";s:10:\"Re-Roofing\";s:3:\"url\";s:46:\"http://localhost/roof-me/index.php/re-roofing/\";s:6:\"target\";s:0:\"\";}'),
(98, 30, '_learn_more', 'field_5f889cb278c3a'),
(99, 30, 'service_name', 'Re-Roofing'),
(100, 30, '_service_name', 'field_5f88968f7e5b1'),
(101, 31, '_edit_last', '1'),
(102, 31, '_edit_lock', '1602797323:1'),
(103, 31, 'service_name', 'New Roofing'),
(104, 31, '_service_name', 'field_5f88968f7e5b1'),
(105, 31, 'service_text', 'The right choice in roofing can make all the difference to the performance and protection of your new build, extension or garage. As metal long run specialists, we’ll help you choose the right roofing solution to suit your property.'),
(106, 31, '_service_text', 'field_5f8896f27e5b2'),
(107, 31, 'learn_more', 'a:3:{s:5:\"title\";s:11:\"New Roofing\";s:3:\"url\";s:47:\"http://localhost/roof-me/index.php/new-roofing/\";s:6:\"target\";s:0:\"\";}'),
(108, 31, '_learn_more', 'field_5f889cb278c3a'),
(109, 30, '_wp_old_slug', 'new-roofing'),
(110, 31, '_wp_trash_meta_status', 'publish'),
(111, 31, '_wp_trash_meta_time', '1602797828'),
(112, 31, '_wp_desired_post_slug', 're-roofing'),
(113, 30, '_wp_trash_meta_status', 'publish'),
(114, 30, '_wp_trash_meta_time', '1602797828'),
(115, 30, '_wp_desired_post_slug', 're-roofing-2'),
(116, 32, '_edit_last', '1'),
(117, 32, '_edit_lock', '1602819231:1'),
(118, 32, 'service_name', 'Re-Roofing'),
(119, 32, '_service_name', 'field_5f88968f7e5b1'),
(120, 32, 'service_text', 'Re-Roofing not only improves the aesthetics of your home, but also ensures it remains healthy, dry and warm for years to come. We’re specialists in residential metal re-roofing, using only high-quality products from COLORSTEEL® and ColorCote®.'),
(121, 32, '_service_text', 'field_5f8896f27e5b2'),
(122, 32, 'learn_more', 'a:3:{s:5:\"title\";s:10:\"Re-Roofing\";s:3:\"url\";s:46:\"http://localhost/roof-me/index.php/re-roofing/\";s:6:\"target\";s:0:\"\";}'),
(123, 32, '_learn_more', 'field_5f889cb278c3a'),
(124, 33, '_edit_last', '1'),
(125, 33, '_edit_lock', '1602819240:1'),
(126, 33, 'service_name', 'New Roofing'),
(127, 33, '_service_name', 'field_5f88968f7e5b1'),
(128, 33, 'service_text', 'The right choice in roofing can make all the difference to the performance and protection of your new build, extension or garage. As metal long run specialists, we’ll help you choose the right roofing solution to suit your property.'),
(129, 33, '_service_text', 'field_5f8896f27e5b2'),
(130, 33, 'learn_more', 'a:3:{s:5:\"title\";s:11:\"New Roofing\";s:3:\"url\";s:47:\"http://localhost/roof-me/index.php/new-roofing/\";s:6:\"target\";s:0:\"\";}'),
(131, 33, '_learn_more', 'field_5f889cb278c3a'),
(132, 34, '_edit_last', '1'),
(133, 34, '_edit_lock', '1603058616:1'),
(134, 35, '_edit_last', '1'),
(135, 35, '_edit_lock', '1602810221:1'),
(136, 34, 'hero_header', 'Roofing Solutions'),
(137, 34, '_hero_header', 'field_5f88e9b1b8473'),
(138, 34, 'hero_text', 'At Roof Me we pride ourselves on providing quality workmanship in bringing you the correct re-roofing option for your home and needs. We provide a free consultation and free no obligation quote to assess what condition your roof is in.'),
(139, 34, '_hero_text', 'field_5f88e9c3b8474'),
(140, 34, 'hero_image', '39'),
(141, 34, '_hero_image', 'field_5f88ea1fb8475'),
(142, 39, '_wp_attached_file', '2020/10/roofers.png'),
(143, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1683;s:6:\"height\";i:1061;s:4:\"file\";s:19:\"2020/10/roofers.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"roofers-300x189.png\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"roofers-1024x646.png\";s:5:\"width\";i:1024;s:6:\"height\";i:646;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"roofers-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"roofers-768x484.png\";s:5:\"width\";i:768;s:6:\"height\";i:484;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"roofers-1536x968.png\";s:5:\"width\";i:1536;s:6:\"height\";i:968;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 41, '_edit_last', '1'),
(145, 41, '_edit_lock', '1602810659:1'),
(146, 46, '_edit_last', '1'),
(147, 46, '_edit_lock', '1603054269:1'),
(148, 46, 'about_header', 'AUCKLAND ROOFING SPECIALISTS'),
(149, 46, '_about_header', 'field_5f88f0cd60e76'),
(150, 46, 'about_sub_header', 'New roofs, Re-roofs'),
(151, 46, '_about_sub_header', 'field_5f88f0f160e77'),
(152, 46, 'about_text', 'Working with Roof Me, you can trust that what’s on the outside of your home is the best choice for protecting what’s on the inside. Because it’s one thing to have a roof over your head, it’s another knowing that it’s weathertight, durable and made using high-quality, trusted products that have been professionally installed by experienced roofers. Whether you’re renovating or building a new home, choosing the right roof to suit your property is an important decision that comes down to more that just aesthetics. Our team will help you choose the best roof to suit your home, your environment and your budget, while also considering the latest desgin trends and product innovation. We’re big on workmanship and communication, and our customers recognise us for the professionalism and intergrity. We’ll keep you informed of our progress throughout your project, and ensure you’re 100% satisfied with the final result. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We are Licensed Building Practitioners – find out more about our experienced team.'),
(153, 46, '_about_text', 'field_5f88f11460e78'),
(154, 46, 'about_list', '<ul>\r\n 	<li>Re-Roofing – replacing old with new</li>\r\n 	<li>Re Roof Conversions – concrete/tin tiles to Metal Roofing (Long Run)</li>\r\n 	<li>New Roofing – including extensions/alterations</li>\r\n 	<li>Wall Cladding (Metal Profiled)</li>\r\n 	<li>Metal Roof repairs – Flashing replacement and installation</li>\r\n 	<li>Ceiling Insulation (whilst carrying out re roof)</li>\r\n 	<li>Supply Only of quality COLORSTEEL® and COLORCOTE® product</li>\r\n</ul>'),
(155, 46, '_about_list', 'field_5f88f12560e79'),
(156, 46, 'about_second_header', 'Get in touch to discuss:'),
(157, 46, '_about_second_header', 'field_5f88f3845a991'),
(158, 52, '_edit_last', '1'),
(159, 52, '_edit_lock', '1603048620:1'),
(160, 9, '_edit_last', '1'),
(161, 9, 'sub_title', 'Residential Roof Installation'),
(162, 9, '_sub_title', 'field_5f88fdd7413b0'),
(163, 9, 'paragraph', 'Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof & Wall Cladding (and also Concrete or Clay Tiles).'),
(164, 9, '_paragraph', 'field_5f88fdf1413b1'),
(165, 9, 'title_within_paragraph', 'New Metal Profiled Roofing & Cladding (Long Run Roofing)'),
(166, 9, '_title_within_paragraph', 'field_5f88fe08413b2'),
(167, 9, 'paragraph_2', 'LBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.'),
(168, 9, '_paragraph_2', 'field_5f88fe25413b3'),
(169, 58, 'sub_title', 'Residential Roof Installation'),
(170, 58, '_sub_title', 'field_5f88fdd7413b0'),
(171, 58, 'paragraph', 'Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof & Wall Cladding (and also Concrete or Clay Tiles).'),
(172, 58, '_paragraph', 'field_5f88fdf1413b1'),
(173, 58, 'title_within_paragraph', 'New Metal Profiled Roofing & Cladding (Long Run Roofing)'),
(174, 58, '_title_within_paragraph', 'field_5f88fe08413b2'),
(175, 58, 'paragraph_2', 'LBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.'),
(176, 58, '_paragraph_2', 'field_5f88fe25413b3'),
(177, 60, 'sub_title', 'Residential Roof Installation'),
(178, 60, '_sub_title', 'field_5f88fdd7413b0'),
(179, 60, 'paragraph', 'Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof & Wall Cladding (and also Concrete or Clay Tiles).'),
(180, 60, '_paragraph', 'field_5f88fdf1413b1'),
(181, 60, 'title_within_paragraph', 'New Metal Profiled Roofing & Cladding (Long Run Roofing)'),
(182, 60, '_title_within_paragraph', 'field_5f88fe08413b2'),
(183, 60, 'paragraph_2', 'LBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.'),
(184, 60, '_paragraph_2', 'field_5f88fe25413b3'),
(185, 61, 'sub_title', 'Residential Roof Installation'),
(186, 61, '_sub_title', 'field_5f88fdd7413b0'),
(187, 61, 'paragraph', 'Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof & Wall Cladding (and also Concrete or Clay Tiles).'),
(188, 61, '_paragraph', 'field_5f88fdf1413b1'),
(189, 61, 'title_within_paragraph', 'New Metal Profiled Roofing & Cladding (Long Run Roofing)'),
(190, 61, '_title_within_paragraph', 'field_5f88fe08413b2'),
(191, 61, 'paragraph_2', 'LBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.'),
(192, 61, '_paragraph_2', 'field_5f88fe25413b3'),
(193, 9, 'title', 'RESIDENTIAL ROOF INSTALLATION'),
(194, 9, '_title', 'field_5f89056566d71'),
(195, 63, 'sub_title', 'Residential Roof Installation'),
(196, 63, '_sub_title', 'field_5f88fdd7413b0'),
(197, 63, 'paragraph', 'Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof & Wall Cladding (and also Concrete or Clay Tiles).'),
(198, 63, '_paragraph', 'field_5f88fdf1413b1'),
(199, 63, 'title_within_paragraph', 'New Metal Profiled Roofing & Cladding (Long Run Roofing)'),
(200, 63, '_title_within_paragraph', 'field_5f88fe08413b2'),
(201, 63, 'paragraph_2', 'LBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.'),
(202, 63, '_paragraph_2', 'field_5f88fe25413b3'),
(203, 63, 'title', 'RESIDENTIAL ROOF INSTALLATION'),
(204, 63, '_title', 'field_5f89056566d71'),
(205, 9, 'new_roof_title', 'Hello'),
(206, 9, '_new_roof_title', 'field_5f89056566d71'),
(207, 9, 'new_roof_h4', 'This is Meeeeee'),
(208, 9, '_new_roof_h4', 'field_5f88fdd7413b0'),
(209, 9, 'new_roof_paragraph', 'Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof & Wall Cladding (and also Concrete or Clay Tiles).'),
(210, 9, '_new_roof_paragraph', 'field_5f88fdf1413b1'),
(211, 9, 'new_roof_h5', 'Come and see'),
(212, 9, '_new_roof_h5', 'field_5f88fe08413b2'),
(213, 9, 'new_roof_paragraph_2', 'LBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.'),
(214, 9, '_new_roof_paragraph_2', 'field_5f88fe25413b3'),
(215, 64, 'sub_title', 'Residential Roof Installation'),
(216, 64, '_sub_title', 'field_5f88fdd7413b0'),
(217, 64, 'paragraph', 'Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof & Wall Cladding (and also Concrete or Clay Tiles).'),
(218, 64, '_paragraph', 'field_5f88fdf1413b1'),
(219, 64, 'title_within_paragraph', 'New Metal Profiled Roofing & Cladding (Long Run Roofing)'),
(220, 64, '_title_within_paragraph', 'field_5f88fe08413b2'),
(221, 64, 'paragraph_2', 'LBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.'),
(222, 64, '_paragraph_2', 'field_5f88fe25413b3'),
(223, 64, 'title', 'RESIDENTIAL ROOF INSTALLATION'),
(224, 64, '_title', 'field_5f89056566d71'),
(225, 64, 'new_roof_title', 'Hello'),
(226, 64, '_new_roof_title', 'field_5f89056566d71'),
(227, 64, 'new_roof_h4', 'This is Meeeeee'),
(228, 64, '_new_roof_h4', 'field_5f88fdd7413b0'),
(229, 64, 'new_roof_paragraph', 'Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof & Wall Cladding (and also Concrete or Clay Tiles).'),
(230, 64, '_new_roof_paragraph', 'field_5f88fdf1413b1'),
(231, 64, 'new_roof_h5', 'Come and see'),
(232, 64, '_new_roof_h5', 'field_5f88fe08413b2'),
(233, 64, 'new_roof_paragraph_2', 'LBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.'),
(234, 64, '_new_roof_paragraph_2', 'field_5f88fe25413b3'),
(235, 65, '_edit_last', '1'),
(236, 65, '_edit_lock', '1602819509:1'),
(237, 65, 'service_name', 'Water blasting'),
(238, 65, '_service_name', 'field_5f88968f7e5b1'),
(239, 65, 'service_text', 'Come with us and we do the waterblasting?'),
(240, 65, '_service_text', 'field_5f8896f27e5b2'),
(241, 65, 'learn_more', ''),
(242, 65, '_learn_more', 'field_5f889cb278c3a'),
(261, 9, '_wp_trash_meta_status', 'publish'),
(262, 9, '_wp_trash_meta_time', '1602819714'),
(263, 9, '_wp_desired_post_slug', 'new-roofing'),
(264, 11, '_wp_trash_meta_status', 'publish'),
(265, 11, '_wp_trash_meta_time', '1602819714'),
(266, 11, '_wp_desired_post_slug', 're-roofing'),
(267, 71, '_edit_lock', '1602819595:1'),
(268, 73, '_edit_lock', '1602819658:1'),
(269, 71, '_wp_trash_meta_status', 'publish'),
(270, 71, '_wp_trash_meta_time', '1602819967'),
(271, 71, '_wp_desired_post_slug', 'services'),
(272, 74, '_edit_lock', '1603052841:1'),
(273, 76, '_edit_lock', '1602819862:1'),
(292, 74, '_edit_last', '1'),
(293, 74, 'new_roof_title', ''),
(294, 74, '_new_roof_title', 'field_5f89056566d71'),
(295, 74, 'new_roof_h4', ''),
(296, 74, '_new_roof_h4', 'field_5f88fdd7413b0'),
(297, 74, 'new_roof_paragraph', ''),
(298, 74, '_new_roof_paragraph', 'field_5f88fdf1413b1'),
(299, 74, 'new_roof_h5', ''),
(300, 74, '_new_roof_h5', 'field_5f88fe08413b2'),
(301, 74, 'new_roof_paragraph_2', ''),
(302, 74, '_new_roof_paragraph_2', 'field_5f88fe25413b3'),
(303, 81, 'new_roof_title', ''),
(304, 81, '_new_roof_title', 'field_5f89056566d71'),
(305, 81, 'new_roof_h4', ''),
(306, 81, '_new_roof_h4', 'field_5f88fdd7413b0'),
(307, 81, 'new_roof_paragraph', ''),
(308, 81, '_new_roof_paragraph', 'field_5f88fdf1413b1'),
(309, 81, 'new_roof_h5', ''),
(310, 81, '_new_roof_h5', 'field_5f88fe08413b2'),
(311, 81, 'new_roof_paragraph_2', ''),
(312, 81, '_new_roof_paragraph_2', 'field_5f88fe25413b3'),
(313, 82, 'new_roof_title', ''),
(314, 82, '_new_roof_title', 'field_5f89056566d71'),
(315, 82, 'new_roof_h4', ''),
(316, 82, '_new_roof_h4', 'field_5f88fdd7413b0'),
(317, 82, 'new_roof_paragraph', ''),
(318, 82, '_new_roof_paragraph', 'field_5f88fdf1413b1'),
(319, 82, 'new_roof_h5', ''),
(320, 82, '_new_roof_h5', 'field_5f88fe08413b2'),
(321, 82, 'new_roof_paragraph_2', ''),
(322, 82, '_new_roof_paragraph_2', 'field_5f88fe25413b3'),
(323, 83, '_edit_last', '1'),
(324, 83, '_edit_lock', '1603056443:1'),
(325, 84, '_edit_last', '1'),
(326, 84, '_edit_lock', '1603058346:1'),
(327, 86, '_menu_item_type', 'post_type'),
(328, 86, '_menu_item_menu_item_parent', '0'),
(329, 86, '_menu_item_object_id', '84'),
(330, 86, '_menu_item_object', 'services'),
(331, 86, '_menu_item_target', ''),
(332, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(333, 86, '_menu_item_xfn', ''),
(334, 86, '_menu_item_url', ''),
(336, 87, '_menu_item_type', 'post_type'),
(337, 87, '_menu_item_menu_item_parent', '0'),
(338, 87, '_menu_item_object_id', '83'),
(339, 87, '_menu_item_object', 'services'),
(340, 87, '_menu_item_target', ''),
(341, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(342, 87, '_menu_item_xfn', ''),
(343, 87, '_menu_item_url', ''),
(345, 74, '_wp_trash_meta_status', 'publish'),
(346, 74, '_wp_trash_meta_time', '1603056598'),
(347, 74, '_wp_desired_post_slug', 'new-roofing'),
(348, 76, '_wp_trash_meta_status', 'publish'),
(349, 76, '_wp_trash_meta_time', '1603056600'),
(350, 76, '_wp_desired_post_slug', 're-roofing'),
(351, 7, 'new_roof_title', ''),
(352, 7, '_new_roof_title', 'field_5f89056566d71'),
(353, 7, 'new_roof_h4', ''),
(354, 7, '_new_roof_h4', 'field_5f88fdd7413b0'),
(355, 7, 'new_roof_paragraph', ''),
(356, 7, '_new_roof_paragraph', 'field_5f88fdf1413b1'),
(357, 7, 'new_roof_h5', ''),
(358, 7, '_new_roof_h5', 'field_5f88fe08413b2'),
(359, 7, 'new_roof_paragraph_2', ''),
(360, 7, '_new_roof_paragraph_2', 'field_5f88fe25413b3'),
(361, 88, 'services', 'New Roofing'),
(362, 88, '_services', 'field_5f88968f7e5b1'),
(363, 88, 'learn_more', 'a:3:{s:5:\"title\";s:11:\"New Roofing\";s:3:\"url\";s:47:\"http://localhost/roof-me/index.php/new-roofing/\";s:6:\"target\";s:0:\"\";}'),
(364, 88, '_learn_more', 'field_5f889cb278c3a'),
(365, 88, 'service-name', 'New Roofing'),
(366, 88, '_service-name', 'field_5f88968f7e5b1'),
(367, 88, 'service_text', 'Bla Bla'),
(368, 88, '_service_text', 'field_5f8896f27e5b2'),
(369, 88, 'new_roof_title', ''),
(370, 88, '_new_roof_title', 'field_5f89056566d71'),
(371, 88, 'new_roof_h4', ''),
(372, 88, '_new_roof_h4', 'field_5f88fdd7413b0'),
(373, 88, 'new_roof_paragraph', ''),
(374, 88, '_new_roof_paragraph', 'field_5f88fdf1413b1'),
(375, 88, 'new_roof_h5', ''),
(376, 88, '_new_roof_h5', 'field_5f88fe08413b2'),
(377, 88, 'new_roof_paragraph_2', ''),
(378, 88, '_new_roof_paragraph_2', 'field_5f88fe25413b3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-10-15 07:30:29', '2020-10-15 07:30:29', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-10-15 07:30:29', '2020-10-15 07:30:29', '', 0, 'http://localhost/roof-me/?p=1', 0, 'post', '', 1),
(2, 1, '2020-10-15 07:30:29', '2020-10-15 07:30:29', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/roof-me/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-10-15 07:31:05', '2020-10-15 07:31:05', '', 0, 'http://localhost/roof-me/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-10-15 07:30:29', '2020-10-15 07:30:29', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/roof-me.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-10-15 07:31:05', '2020-10-15 07:31:05', '', 0, 'http://localhost/roof-me/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-10-15 07:30:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-15 07:30:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/roof-me/?p=4', 0, 'post', '', 0),
(5, 1, '2020-10-15 07:31:05', '2020-10-15 07:31:05', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/roof-me.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-10-15 07:31:05', '2020-10-15 07:31:05', '', 3, 'http://localhost/roof-me/index.php/2020/10/15/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2020-10-15 07:31:05', '2020-10-15 07:31:05', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/roof-me/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-10-15 07:31:05', '2020-10-15 07:31:05', '', 2, 'http://localhost/roof-me/index.php/2020/10/15/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-10-15 09:48:07', '2020-10-15 09:48:07', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">Better Roofing</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At Roof Me we pride ourselves on providing quality workmanship in bringing you the correct re-roofing option for your home and needs. We provide a free consultation and free no obligation quote to assess what condition your roof is in.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-10-18 22:02:10', '2020-10-18 22:02:10', '', 0, 'http://localhost/roof-me/?page_id=7', 1, 'page', '', 0),
(8, 1, '2020-10-15 09:48:07', '2020-10-15 09:48:07', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">Better Roofing Solutions</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At Roof Me we pride ourselves on providing quality workmanship in bringing you the correct re-roofing option for your home and needs. We provide a free consultation and free no obligation quote to assess what condition your roof is in.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-10-15 09:48:07', '2020-10-15 09:48:07', '', 7, 'http://localhost/roof-me/index.php/2020/10/15/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-10-15 09:51:15', '2020-10-15 09:51:15', '', 'New roofing', '', 'trash', 'closed', 'closed', '', 'new-roofing__trashed', '', '', '2020-10-16 03:41:54', '2020-10-16 03:41:54', '', 0, 'http://localhost/roof-me/?page_id=9', 2, 'page', '', 0),
(10, 1, '2020-10-15 09:51:15', '2020-10-15 09:51:15', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">RESIDENTIAL ROOF INSTALLATION</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof &amp; Wall Cladding (and also Concrete or Clay Tiles).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">New Metal Profiled Roofing &amp; Cladding (Long Run Roofing)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>LBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.</p>\n<!-- /wp:paragraph -->', 'New Roofing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-15 09:51:15', '2020-10-15 09:51:15', '', 9, 'http://localhost/roof-me/index.php/2020/10/15/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-10-15 09:52:51', '2020-10-15 09:52:51', '', 'Re-Roofing', '', 'trash', 'closed', 'closed', '', 're-roofing__trashed', '', '', '2020-10-16 03:41:54', '2020-10-16 03:41:54', '', 0, 'http://localhost/roof-me/?page_id=11', 3, 'page', '', 0),
(12, 1, '2020-10-15 09:52:51', '2020-10-15 09:52:51', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">RESIDENTIAL RE-ROOFING SPECIALISTS</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Throughout the lifetime of your home, it’s likely you’ll need to repair or replace your roof to minimise risk any major damage to your property. At Roof Me, we specialise in metal to long run metal re-roofing and concrete to metal re-roofing using quality COLORSTEEL® and ColorCote® products in assorted grades, profiles and colours. These products have been built to deal with New Zealand’s harsh weather conditions, and selected by us for their performance, durability and modern finish.Our experienced team will help you understand what will work best for the requirements of your property, so you can choose products that achieve durable, long-lasting results. When combined with our high standard of workmanship, you can be confident you have a roof designed to withstand whatever the Auckland weather throws at it. Long run comes in a variety of profiles and colour choices, and results in a stylish and dramatically improved finish. Find out more about these roofing products or take a look at some of our re roof projects we’ve completed in our roofing projects gallery. Roof Me us based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore, and Auckland.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">How do you know it’s time to re-roof your property?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Auckland’s ever-changing weather conditions – like strong sun, damp weather and coastal storms – can begin to take its toll on your roof, undermining performance and leaving it looking tired and damaged. Re-roofing isn’t just about improving the look of your home, but also about ensuring it remains a safe, dry and healthy place to live. Many older roofs were fitted without underlay (roofing paper) and just the addition of this also will achieve a warmer home. This may also be a good time to insulate (which we can carry out and organise) because the roof space is easily accessed at this time. In some cases, the wooden purlins that are part of the substrate structure to which the roofing material is attached can be rotten and may need to be replaced before a new roof is fitted. Doing so will ensure a safe and secure hold for your new roof. Keep and eye out for these signs that your roof needs to be replaced.</p>\n<!-- /wp:paragraph -->', 'Re-Roofing', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-10-15 09:52:51', '2020-10-15 09:52:51', '', 11, 'http://localhost/roof-me/index.php/2020/10/15/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-10-15 09:53:35', '2020-10-15 09:53:35', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Read what our clients have to write about Roof Me</p>\n<!-- /wp:paragraph -->', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2020-10-15 10:00:07', '2020-10-15 10:00:07', '', 0, 'http://localhost/roof-me/?page_id=13', 4, 'page', '', 0),
(14, 1, '2020-10-15 09:53:35', '2020-10-15 09:53:35', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Read what our clients have to write about Roof Me</p>\n<!-- /wp:paragraph -->', 'Testimonials', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-10-15 09:53:35', '2020-10-15 09:53:35', '', 13, 'http://localhost/roof-me/index.php/2020/10/15/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-10-15 09:55:45', '2020-10-15 09:55:45', '<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">CONTACT US FOR NEW ROOFING NEEDS</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Roof Me is based in Whangaparaoa, Hibiscus Coast but we service North Auckland to South Auckland. Work outside or Auckland can also be discussed. Specialising in Re Roofing &amp; New Roofing using quality COLORSTEEL® / COLORCOTE® products. We would be pleased to supply you with a free no obligation quote for your roofing needs&nbsp;Please note: We do not carry out Roof painting or treatments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Please complete the form below</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-10-15 09:59:23', '2020-10-15 09:59:23', '', 0, 'http://localhost/roof-me/?page_id=15', 5, 'page', '', 0),
(16, 1, '2020-10-15 09:55:45', '2020-10-15 09:55:45', '<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">CONTACT US FOR NEW ROOFING NEEDS</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Roof Me is based in Whangaparaoa, Hibiscus Coast but we service North Auckland to South Auckland. Work outside or Auckland can also be discussed. Specialising in Re Roofing &amp; New Roofing using quality COLORSTEEL® / COLORCOTE® products. We would be pleased to supply you with a free no obligation quote for your roofing needs Please note: We do not carry out Roof painting or treatments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Please complete the form below</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-10-15 09:55:45', '2020-10-15 09:55:45', '', 15, 'http://localhost/roof-me/index.php/2020/10/15/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-10-15 09:56:43', '2020-10-15 09:56:43', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-10-18 21:35:12', '2020-10-18 21:35:12', '', 0, 'http://localhost/roof-me/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2020-10-15 09:56:43', '2020-10-15 09:56:43', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-10-18 21:35:12', '2020-10-18 21:35:12', '', 0, 'http://localhost/roof-me/?p=18', 6, 'nav_menu_item', '', 0),
(19, 1, '2020-10-15 09:56:43', '2020-10-15 09:56:43', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-10-18 21:35:12', '2020-10-18 21:35:12', '', 0, 'http://localhost/roof-me/?p=19', 2, 'nav_menu_item', '', 0),
(22, 1, '2020-10-15 09:56:43', '2020-10-15 09:56:43', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2020-10-18 21:35:12', '2020-10-18 21:35:12', '', 0, 'http://localhost/roof-me/?p=22', 5, 'nav_menu_item', '', 0),
(23, 1, '2020-10-15 09:59:23', '2020-10-15 09:59:23', '<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">CONTACT US FOR NEW ROOFING NEEDS</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Roof Me is based in Whangaparaoa, Hibiscus Coast but we service North Auckland to South Auckland. Work outside or Auckland can also be discussed. Specialising in Re Roofing &amp; New Roofing using quality COLORSTEEL® / COLORCOTE® products. We would be pleased to supply you with a free no obligation quote for your roofing needs&nbsp;Please note: We do not carry out Roof painting or treatments.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Please complete the form below</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-10-15 09:59:23', '2020-10-15 09:59:23', '', 15, 'http://localhost/roof-me/index.php/2020/10/15/15-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-10-15 18:38:06', '2020-10-15 18:38:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"service\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Services-Group', 'services-group', 'publish', 'closed', 'closed', '', 'group_5f88965ea56ae', '', '', '2020-10-15 21:04:47', '2020-10-15 21:04:47', '', 0, 'http://localhost/roof-me/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2020-10-15 18:38:06', '2020-10-15 18:38:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Service name', 'service_name', 'publish', 'closed', 'closed', '', 'field_5f88968f7e5b1', '', '', '2020-10-15 21:04:43', '2020-10-15 21:04:43', '', 24, 'http://localhost/roof-me/?post_type=acf-field&#038;p=25', 0, 'acf-field', '', 0),
(26, 1, '2020-10-15 18:38:06', '2020-10-15 18:38:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Service text', 'service_text', 'publish', 'closed', 'closed', '', 'field_5f8896f27e5b2', '', '', '2020-10-15 19:04:41', '2020-10-15 19:04:41', '', 24, 'http://localhost/roof-me/?post_type=acf-field&#038;p=26', 1, 'acf-field', '', 0),
(27, 1, '2020-10-15 18:40:27', '2020-10-15 18:40:27', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">Better Roofing Solutions</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At Roof Me we pride ourselves on providing quality workmanship in bringing you the correct re-roofing option for your home and needs. We provide a free consultation and free no obligation quote to assess what condition your roof is in.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-10-15 18:40:27', '2020-10-15 18:40:27', '', 7, 'http://localhost/roof-me/index.php/2020/10/15/7-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-10-15 19:02:28', '2020-10-15 19:02:28', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Learn more', 'learn_more', 'publish', 'closed', 'closed', '', 'field_5f889cb278c3a', '', '', '2020-10-15 19:04:41', '2020-10-15 19:04:41', '', 24, 'http://localhost/roof-me/?post_type=acf-field&#038;p=28', 2, 'acf-field', '', 0),
(29, 1, '2020-10-15 19:05:11', '2020-10-15 19:05:11', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">Better Roofing Solutions</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At Roof Me we pride ourselves on providing quality workmanship in bringing you the correct re-roofing option for your home and needs. We provide a free consultation and free no obligation quote to assess what condition your roof is in.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-10-15 19:05:11', '2020-10-15 19:05:11', '', 7, 'http://localhost/roof-me/index.php/2020/10/15/7-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-10-15 20:52:55', '2020-10-15 20:52:55', 'Re-Roofing not only improves the aesthetics of your home, but also ensures it remains healthy, dry and warm for years to come. We’re specialists in residential metal re-roofing, using only high-quality products from COLORSTEEL® and ColorCote®.', 'Re-Roofing', '', 'trash', 'closed', 'closed', '', 're-roofing-2__trashed', '', '', '2020-10-15 21:37:08', '2020-10-15 21:37:08', '', 0, 'http://localhost/roof-me/?post_type=service&#038;p=30', 0, 'service', '', 0),
(31, 1, '2020-10-15 21:07:01', '2020-10-15 21:07:01', 'The right choice in roofing can make all the difference to the performance and protection of your new build, extension or garage. As metal long run specialists, we’ll help you choose the right roofing solution to suit your property.', 'New Roofing', '', 'trash', 'closed', 'closed', '', 're-roofing__trashed', '', '', '2020-10-15 21:37:08', '2020-10-15 21:37:08', '', 0, 'http://localhost/roof-me/?post_type=service&#038;p=31', 0, 'service', '', 0),
(32, 1, '2020-10-15 21:38:24', '2020-10-15 21:38:24', '', 'Re-Roofing', '', 'publish', 'closed', 'closed', '', 're-roofing', '', '', '2020-10-15 21:38:24', '2020-10-15 21:38:24', '', 0, 'http://localhost/roof-me/?post_type=service&#038;p=32', 0, 'service', '', 0),
(33, 1, '2020-10-15 21:39:02', '2020-10-15 21:39:02', 'The right choice in roofing can make all the difference to the performance and protection of your new build, extension or garage. As metal long run specialists, we’ll help you choose the right roofing solution to suit your property.', 'New Roofing', '', 'publish', 'closed', 'closed', '', 'new-roofing', '', '', '2020-10-15 21:39:02', '2020-10-15 21:39:02', '', 0, 'http://localhost/roof-me/?post_type=service&#038;p=33', 0, 'service', '', 0),
(34, 1, '2020-10-16 00:30:26', '2020-10-16 00:30:26', '', 'Hero', '', 'publish', 'closed', 'closed', '', 'main-header', '', '', '2020-10-16 01:00:35', '2020-10-16 01:00:35', '', 0, 'http://localhost/roof-me/?post_type=hero&#038;p=34', 0, 'hero', '', 0),
(35, 1, '2020-10-16 00:32:54', '2020-10-16 00:32:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"hero\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Hero-Group', 'hero-group', 'publish', 'closed', 'closed', '', 'group_5f88e9a83d782', '', '', '2020-10-16 01:06:04', '2020-10-16 01:06:04', '', 0, 'http://localhost/roof-me/?post_type=acf-field-group&#038;p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2020-10-16 00:32:54', '2020-10-16 00:32:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hero header', 'hero_header', 'publish', 'closed', 'closed', '', 'field_5f88e9b1b8473', '', '', '2020-10-16 00:32:54', '2020-10-16 00:32:54', '', 35, 'http://localhost/roof-me/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2020-10-16 00:32:54', '2020-10-16 00:32:54', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Hero text', 'hero_text', 'publish', 'closed', 'closed', '', 'field_5f88e9c3b8474', '', '', '2020-10-16 00:34:04', '2020-10-16 00:34:04', '', 35, 'http://localhost/roof-me/?post_type=acf-field&#038;p=37', 1, 'acf-field', '', 0),
(38, 1, '2020-10-16 00:32:54', '2020-10-16 00:32:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Hero image', 'hero_image', 'publish', 'closed', 'closed', '', 'field_5f88ea1fb8475', '', '', '2020-10-16 00:32:54', '2020-10-16 00:32:54', '', 35, 'http://localhost/roof-me/?post_type=acf-field&p=38', 2, 'acf-field', '', 0),
(39, 1, '2020-10-16 00:36:27', '2020-10-16 00:36:27', '', 'roofers', '', 'inherit', 'open', 'closed', '', 'roofers', '', '', '2020-10-16 00:36:27', '2020-10-16 00:36:27', '', 34, 'http://localhost/roof-me/wp-content/uploads/2020/10/roofers.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2020-10-16 00:59:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-16 00:59:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/roof-me/?post_type=about&p=40', 0, 'about', '', 0),
(41, 1, '2020-10-16 01:05:38', '2020-10-16 01:05:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"about\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About-Group', 'about-group', 'publish', 'closed', 'closed', '', 'group_5f88f0c80e208', '', '', '2020-10-16 01:13:21', '2020-10-16 01:13:21', '', 0, 'http://localhost/roof-me/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2020-10-16 01:05:38', '2020-10-16 01:05:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About header', 'about_header', 'publish', 'closed', 'closed', '', 'field_5f88f0cd60e76', '', '', '2020-10-16 01:05:38', '2020-10-16 01:05:38', '', 41, 'http://localhost/roof-me/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(43, 1, '2020-10-16 01:05:38', '2020-10-16 01:05:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About sub header', 'about_sub_header', 'publish', 'closed', 'closed', '', 'field_5f88f0f160e77', '', '', '2020-10-16 01:05:38', '2020-10-16 01:05:38', '', 41, 'http://localhost/roof-me/?post_type=acf-field&p=43', 1, 'acf-field', '', 0),
(44, 1, '2020-10-16 01:05:38', '2020-10-16 01:05:38', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'About text', 'about_text', 'publish', 'closed', 'closed', '', 'field_5f88f11460e78', '', '', '2020-10-16 01:05:38', '2020-10-16 01:05:38', '', 41, 'http://localhost/roof-me/?post_type=acf-field&p=44', 2, 'acf-field', '', 0),
(45, 1, '2020-10-16 01:05:38', '2020-10-16 01:05:38', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'About list', 'about_list', 'publish', 'closed', 'closed', '', 'field_5f88f12560e79', '', '', '2020-10-16 01:13:21', '2020-10-16 01:13:21', '', 41, 'http://localhost/roof-me/?post_type=acf-field&#038;p=45', 4, 'acf-field', '', 0),
(46, 1, '2020-10-16 01:09:25', '2020-10-16 01:09:25', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-10-18 20:11:24', '2020-10-18 20:11:24', '', 0, 'http://localhost/roof-me/?post_type=about&#038;p=46', 0, 'about', '', 0),
(47, 1, '2020-10-16 01:12:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-16 01:12:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/roof-me/?post_type=acf-field-group&p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2020-10-16 01:13:11', '2020-10-16 01:13:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About second header', 'about_second_header', 'publish', 'closed', 'closed', '', 'field_5f88f3845a991', '', '', '2020-10-16 01:13:21', '2020-10-16 01:13:21', '', 41, 'http://localhost/roof-me/?post_type=acf-field&#038;p=48', 3, 'acf-field', '', 0),
(49, 1, '2020-10-16 01:53:24', '2020-10-16 01:53:24', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">RESIDENTIAL ROOF INSTALLATION</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof &amp; Wall Cladding (and also Concrete or Clay Tiles).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">New Metal Profiled Roofing &amp; Cladding (Long Run Roofing)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>LBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.</p>\n<!-- /wp:paragraph -->', 'New', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-16 01:53:24', '2020-10-16 01:53:24', '', 9, 'http://localhost/roof-me/index.php/2020/10/16/9-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-10-16 01:55:55', '2020-10-16 01:55:55', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">RESIDENTIAL ROOF INSTALLATION</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof &amp; Wall Cladding (and also Concrete or Clay Tiles).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">New Metal Profiled Roofing &amp; Cladding (Long Run Roofing)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>LBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.</p>\n<!-- /wp:paragraph -->', 'New Roofing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-16 01:55:55', '2020-10-16 01:55:55', '', 9, 'http://localhost/roof-me/index.php/2020/10/16/9-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-10-16 01:58:26', '2020-10-16 01:58:26', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"74\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'New roof Group', 'new-roof-group', 'publish', 'closed', 'closed', '', 'group_5f88fdb6dbef7', '', '', '2020-10-16 19:10:29', '2020-10-16 19:10:29', '', 0, 'http://localhost/roof-me/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2020-10-16 01:58:26', '2020-10-16 01:58:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'New Roof h4', 'new_roof_h4', 'publish', 'closed', 'closed', '', 'field_5f88fdd7413b0', '', '', '2020-10-16 02:33:25', '2020-10-16 02:33:25', '', 52, 'http://localhost/roof-me/?post_type=acf-field&#038;p=53', 1, 'acf-field', '', 0),
(54, 1, '2020-10-16 01:58:26', '2020-10-16 01:58:26', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'New Roof paragraph', 'new_roof_paragraph', 'publish', 'closed', 'closed', '', 'field_5f88fdf1413b1', '', '', '2020-10-16 02:31:53', '2020-10-16 02:31:53', '', 52, 'http://localhost/roof-me/?post_type=acf-field&#038;p=54', 2, 'acf-field', '', 0),
(55, 1, '2020-10-16 01:58:26', '2020-10-16 01:58:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'New Roof h5', 'new_roof_h5', 'publish', 'closed', 'closed', '', 'field_5f88fe08413b2', '', '', '2020-10-16 02:32:58', '2020-10-16 02:32:58', '', 52, 'http://localhost/roof-me/?post_type=acf-field&#038;p=55', 3, 'acf-field', '', 0),
(56, 1, '2020-10-16 01:58:26', '2020-10-16 01:58:26', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'New Roof Paragraph 2', 'new_roof_paragraph_2', 'publish', 'closed', 'closed', '', 'field_5f88fe25413b3', '', '', '2020-10-16 02:33:47', '2020-10-16 02:33:47', '', 52, 'http://localhost/roof-me/?post_type=acf-field&#038;p=56', 4, 'acf-field', '', 0),
(57, 1, '2020-10-16 02:01:22', '2020-10-16 02:01:22', '', 'New Roofing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-16 02:01:22', '2020-10-16 02:01:22', '', 9, 'http://localhost/roof-me/index.php/2020/10/16/9-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(58, 1, '2020-10-16 02:01:22', '2020-10-16 02:01:22', '', 'New Roofing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-16 02:01:22', '2020-10-16 02:01:22', '', 9, 'http://localhost/roof-me/index.php/2020/10/16/9-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-10-16 02:02:13', '2020-10-16 02:02:13', '', 'RESIDENTIAL ROOF INSTALLATION', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-16 02:02:13', '2020-10-16 02:02:13', '', 9, 'http://localhost/roof-me/index.php/2020/10/16/9-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-10-16 02:02:14', '2020-10-16 02:02:14', '', 'RESIDENTIAL ROOF INSTALLATION', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-16 02:02:14', '2020-10-16 02:02:14', '', 9, 'http://localhost/roof-me/index.php/2020/10/16/9-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-10-16 02:28:16', '2020-10-16 02:28:16', '', 'New roofing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-16 02:28:16', '2020-10-16 02:28:16', '', 9, 'http://localhost/roof-me/index.php/2020/10/16/9-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-10-16 02:29:17', '2020-10-16 02:29:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'New roof title', 'new_roof_title', 'publish', 'closed', 'closed', '', 'field_5f89056566d71', '', '', '2020-10-16 02:31:20', '2020-10-16 02:31:20', '', 52, 'http://localhost/roof-me/?post_type=acf-field&#038;p=62', 0, 'acf-field', '', 0),
(63, 1, '2020-10-16 02:29:51', '2020-10-16 02:29:51', '', 'New roofing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-16 02:29:51', '2020-10-16 02:29:51', '', 9, 'http://localhost/roof-me/index.php/2020/10/16/9-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-10-16 02:38:08', '2020-10-16 02:38:08', '', 'New roofing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-16 02:38:08', '2020-10-16 02:38:08', '', 9, 'http://localhost/roof-me/index.php/2020/10/16/9-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-10-16 02:40:49', '2020-10-16 02:40:49', 'We do water blasting and roof cleaning.\n\n<img class=\"alignnone size-medium wp-image-39\" src=\"http://localhost/roof-me/wp-content/uploads/2020/10/roofers-300x189.png\" alt=\"\" width=\"300\" height=\"189\" />', 'Roof Water blasting', '', 'publish', 'closed', 'closed', '', 'roof-water-blasting', '', '', '2020-10-16 03:31:00', '2020-10-16 03:31:00', '', 0, 'http://localhost/roof-me/?post_type=service&#038;p=65', 0, 'service', '', 0),
(66, 1, '2020-10-16 02:41:58', '2020-10-16 02:41:58', '', 'Re-Roofing', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-10-16 02:41:58', '2020-10-16 02:41:58', '', 11, 'http://localhost/roof-me/index.php/2020/10/16/11-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-10-16 03:42:09', '2020-10-16 03:42:09', '', 'Services', '', 'trash', 'closed', 'closed', '', 'services__trashed', '', '', '2020-10-16 03:46:07', '2020-10-16 03:46:07', '', 0, 'http://localhost/roof-me/?page_id=71', 3, 'page', '', 0),
(72, 1, '2020-10-16 03:42:09', '2020-10-16 03:42:09', '', 'Services', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-10-16 03:42:09', '2020-10-16 03:42:09', '', 71, 'http://localhost/roof-me/index.php/2020/10/16/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-10-16 03:43:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-16 03:43:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/roof-me/?page_id=73', 0, 'page', '', 0),
(74, 1, '2020-10-16 03:46:26', '2020-10-16 03:46:26', '', 'New Roofing', '', 'trash', 'closed', 'closed', '', 'new-roofing__trashed-2', '', '', '2020-10-18 21:29:58', '2020-10-18 21:29:58', '', 0, 'http://localhost/roof-me/?page_id=74', 2, 'page', '', 0),
(75, 1, '2020-10-16 03:46:26', '2020-10-16 03:46:26', '', 'New Roofing', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-10-16 03:46:26', '2020-10-16 03:46:26', '', 74, 'http://localhost/roof-me/index.php/2020/10/16/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-10-16 03:46:44', '2020-10-16 03:46:44', '', 'Re-Roofing', '', 'trash', 'closed', 'closed', '', 're-roofing__trashed-2', '', '', '2020-10-18 21:30:00', '2020-10-18 21:30:00', '', 0, 'http://localhost/roof-me/?page_id=76', 3, 'page', '', 0),
(77, 1, '2020-10-16 03:46:44', '2020-10-16 03:46:44', '', 'Re-Roofing', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-10-16 03:46:44', '2020-10-16 03:46:44', '', 76, 'http://localhost/roof-me/index.php/2020/10/16/76-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-10-18 19:27:17', '2020-10-18 19:27:17', '', 'About', '', 'inherit', 'closed', 'closed', '', '46-autosave-v1', '', '', '2020-10-18 19:27:17', '2020-10-18 19:27:17', '', 46, 'http://localhost/roof-me/index.php/2020/10/18/46-autosave-v1/', 0, 'revision', '', 0),
(81, 1, '2020-10-18 20:23:23', '2020-10-18 20:23:23', '<!-- wp:paragraph -->\n<p>Hello new rooof</p>\n<!-- /wp:paragraph -->', 'New Roofing', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-10-18 20:23:23', '2020-10-18 20:23:23', '', 74, 'http://localhost/roof-me/index.php/2020/10/18/74-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-10-18 20:27:19', '2020-10-18 20:27:19', '', 'New Roofing', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-10-18 20:27:19', '2020-10-18 20:27:19', '', 74, 'http://localhost/roof-me/index.php/2020/10/18/74-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-10-18 20:44:36', '2020-10-18 20:44:36', '<h2>RESIDENTIAL ROOF INSTALLATION</h2>\r\n<div class=\"section-title\">\r\n<h4>New roofs for new builds, extensions and renovations</h4>\r\n</div>\r\n<div class=\"row content\">\r\n<div class=\"col-lg-12\">Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me. We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration. You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof &amp; Wall Cladding (and also Concrete or Clay Tiles).</div>\r\n</div>\r\n<h4>New Metal Profiled Roofing &amp; Cladding (Long Run Roofing)</h4>\r\nLBP Logo black and white version Although roofing materials may look the same in appearance, they may not perform the same long term All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it. Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you. Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.', 'New Roofing', '', 'publish', 'closed', 'closed', '', 'new-roofing', '', '', '2020-10-18 20:44:36', '2020-10-18 20:44:36', '', 0, 'http://localhost/roof-me/?post_type=services&#038;p=83', 0, 'services', '', 0),
(84, 1, '2020-10-18 20:46:32', '2020-10-18 20:46:32', '<h2>RESIDENTIAL RE-ROOFING SPECIALISTS</h2>\r\n<div class=\"section-title\">\r\n<h4>Hibiscus Coast, North Shore and Auckland</h4>\r\n</div>\r\n<div class=\"row content\">\r\n<div class=\"col-lg-12\">Throughout the lifetime of your home, it’s likely you’ll need to repair or replace your roof to minimise risk any major damage to your property. At Roof Me, we specialise in metal to long run metal re-roofing and concrete to metal re-roofing using quality COLORSTEEL® and ColorCote® products in assorted grades, profiles and colours. These products have been built to deal with New Zealand’s harsh weather conditions, and selected by us for their performance, durability and modern finish.Our experienced team will help you understand what will work best for the requirements of your property, so you can choose products that achieve durable, long-lasting results. When combined with our high standard of workmanship, you can be confident you have a roof designed to withstand whatever the Auckland weather throws at it. Long run comes in a variety of profiles and colour choices, and results in a stylish and dramatically improved finish. Find out more about these roofing products or take a look at some of our re roof projects we’ve completed in our roofing projects gallery. Roof Me us based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore, and Auckland.</div>\r\n</div>\r\n<h4>How do you know it’s time to re-roof your property?</h4>\r\nAuckland’s ever-changing weather conditions – like strong sun, damp weather and coastal storms – can begin to take its toll on your roof, undermining performance and leaving it looking tired and damaged. Re-roofing isn’t just about improving the look of your home, but also about ensuring it remains a safe, dry and healthy place to live. Many older roofs were fitted without underlay (roofing paper) and just the addition of this also will achieve a warmer home. This may also be a good time to insulate (which we can carry out and organise) because the roof space is easily accessed at this time. In some cases, the wooden purlins that are part of the substrate structure to which the roofing material is attached can be rotten and may need to be replaced before a new roof is fitted. Doing so will ensure a safe and secure hold for your new roof. Keep and eye out for these signs that your roof needs to be replaced:', 'Re-Roofing', '', 'publish', 'closed', 'closed', '', 're-roofing', '', '', '2020-10-18 20:47:52', '2020-10-18 20:47:52', '', 0, 'http://localhost/roof-me/?post_type=services&#038;p=84', 0, 'services', '', 0),
(86, 1, '2020-10-18 20:48:43', '2020-10-18 20:48:43', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2020-10-18 21:35:12', '2020-10-18 21:35:12', '', 0, 'http://localhost/roof-me/?p=86', 3, 'nav_menu_item', '', 0),
(87, 1, '2020-10-18 20:48:43', '2020-10-18 20:48:43', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2020-10-18 21:35:12', '2020-10-18 21:35:12', '', 0, 'http://localhost/roof-me/?p=87', 4, 'nav_menu_item', '', 0),
(88, 1, '2020-10-18 22:02:10', '2020-10-18 22:02:10', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\">Better Roofing</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At Roof Me we pride ourselves on providing quality workmanship in bringing you the correct re-roofing option for your home and needs. We provide a free consultation and free no obligation quote to assess what condition your roof is in.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-10-18 22:02:10', '2020-10-18 22:02:10', '', 7, 'http://localhost/roof-me/index.php/2020/10/18/7-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main-menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(22, 2, 0),
(86, 2, 0),
(87, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"5ea9c74142ff7062e8a654b0416bc9be6c10e325cc11850bdeca26cfe4cb944f\";a:4:{s:10:\"expiration\";i:1603221363;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:5:\"login\";i:1603048563;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1'),
(22, 1, 'wp_user-settings-time', '1603051880'),
(23, 1, 'meta-box-order_services', 'a:4:{s:15:\"acf_after_title\";s:9:\"submitdiv\";s:4:\"side\";s:0:\"\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'screen_layout_services', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$BtH4RGvllKOl58Zg0zeYx9Bdrbmq4E.', 'admin', 'marcuszillner@icloud.com', 'http://localhost/roof-me', '2020-10-15 07:30:29', '', 0, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
