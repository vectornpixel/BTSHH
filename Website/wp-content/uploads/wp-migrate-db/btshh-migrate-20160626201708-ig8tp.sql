# WordPress MySQL database migration
#
# Generated: Sunday 26. June 2016 20:17 UTC
# Hostname: localhost
# Database: `btshh`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-06-19 19:35:52', '2016-06-19 19:35:52', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.btshiphop.com', 'yes'),
(2, 'home', 'http://www.btshiphop.com', 'yes'),
(3, 'blogname', 'Behind The Scenes Hip Hop', 'yes'),
(4, 'blogdescription', 'Highlighting the Artist Behind the Artists', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vectornpixel@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:34:"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml$";s:40:"index.php?xml_sitemap=params=$matches[2]";s:38:"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml\\.gz$";s:49:"index.php?xml_sitemap=params=$matches[2];zip=true";s:35:"sitemap(-+([a-zA-Z0-9_-]+))?\\.html$";s:50:"index.php?xml_sitemap=params=$matches[2];html=true";s:38:"sitemap(-+([a-zA-Z0-9_-]+))?\\.html.gz$";s:59:"index.php?xml_sitemap=params=$matches[2];html=true;zip=true";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:38:"mc4wp-form/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"mc4wp-form/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"mc4wp-form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"mc4wp-form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"mc4wp-form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"mc4wp-form/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"mc4wp-form/([^/]+)/embed/?$";s:43:"index.php?mc4wp-form=$matches[1]&embed=true";s:31:"mc4wp-form/([^/]+)/trackback/?$";s:37:"index.php?mc4wp-form=$matches[1]&tb=1";s:39:"mc4wp-form/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?mc4wp-form=$matches[1]&paged=$matches[2]";s:46:"mc4wp-form/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?mc4wp-form=$matches[1]&cpage=$matches[2]";s:35:"mc4wp-form/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?mc4wp-form=$matches[1]&page=$matches[2]";s:27:"mc4wp-form/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"mc4wp-form/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"mc4wp-form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"mc4wp-form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"mc4wp-form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"mc4wp-form/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:50:"google-analytics-for-wordpress/googleanalytics.php";i:3;s:36:"google-sitemap-generator/sitemap.php";i:4;s:37:"mailchimp-for-wp/mailchimp-for-wp.php";i:5;s:37:"tinymce-advanced/tinymce-advanced.php";i:6;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'btshiphop', 'yes'),
(41, 'stylesheet', 'btshiphop', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:16:"aiosp_manage_seo";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:5:{i:1466988994;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1467012781;a:1:{s:13:"sm_ping_daily";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1467012952;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1467056158;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'nonce_key', '<ye)qkbx^P^ D3BgWn91qrcf7vZPHnU;Y:tnL?Hcc`!Y.`FY|}r1wSl7rY]i$H@F', 'yes'),
(107, 'nonce_salt', '<))_oXNBbVI!7{$Ork=t 3gXBcAee-d<1-{i49}6V!QFSoKcg|5riT$f1)Nw8Ijf', 'yes'),
(116, 'auth_key', 'i0`~}HEY2wwxc9R*0oBY#;N/PM1.AKZwi^S<-B)LPn_&5?nPz^p94A.)8*A5HtG;', 'yes'),
(117, 'auth_salt', '6`&9<X7~K=&tDmCN9Zzmfr,|+onz*Pr/:G.?p(UmVY.lWPF_+Yx8>-];u~ iSbcP', 'yes'),
(118, 'logged_in_key', '1y]Ij]N{l&yNJ}o*)+Sh1t_>/DxiI;m.kyzUWS8}h0RQW+<@`b>OIgI@h$=sx)04', 'yes'),
(119, 'logged_in_salt', '8P{^7^avU6Fn2K3m|6W-LG,[txpwAMc$N,Xqp5[F^A@EVj[N^#,/b9iq*>Yd/W$s', 'yes'),
(123, 'can_compress_scripts', '1', 'yes'),
(140, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1466364966;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(141, 'current_theme', 'btshh', 'yes'),
(142, 'theme_mods_btshiphop', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:14;}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(198, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:22:"vectornpixel@gmail.com";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1466628909;}', 'yes'),
(231, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(319, 'category_children', 'a:0:{}', 'yes'),
(324, 'recently_activated', 'a:0:{}', 'yes'),
(330, 'aioseop_options', 'a:90:{s:12:"aiosp_donate";N;s:16:"aiosp_home_title";N;s:22:"aiosp_home_description";s:0:"";s:20:"aiosp_togglekeywords";i:1;s:19:"aiosp_home_keywords";N;s:26:"aiosp_use_static_home_info";i:0;s:9:"aiosp_can";i:1;s:30:"aiosp_no_paged_canonical_links";i:0;s:31:"aiosp_customize_canonical_links";i:0;s:22:"aiosp_can_set_protocol";s:4:"auto";s:20:"aiosp_rewrite_titles";i:1;s:20:"aiosp_force_rewrites";i:1;s:24:"aiosp_use_original_title";i:0;s:16:"aiosp_cap_titles";i:1;s:14:"aiosp_cap_cats";i:1;s:28:"aiosp_home_page_title_format";s:12:"%page_title%";s:23:"aiosp_page_title_format";s:27:"%page_title% | %blog_title%";s:23:"aiosp_post_title_format";s:27:"%post_title% | %blog_title%";s:27:"aiosp_category_title_format";s:31:"%category_title% | %blog_title%";s:26:"aiosp_archive_title_format";s:30:"%archive_title% | %blog_title%";s:23:"aiosp_date_title_format";s:21:"%date% | %blog_title%";s:25:"aiosp_author_title_format";s:23:"%author% | %blog_title%";s:22:"aiosp_tag_title_format";s:20:"%tag% | %blog_title%";s:25:"aiosp_search_title_format";s:23:"%search% | %blog_title%";s:24:"aiosp_description_format";s:13:"%description%";s:22:"aiosp_404_title_format";s:33:"Nothing found for %request_words%";s:18:"aiosp_paged_format";s:14:" - Part %page%";s:17:"aiosp_enablecpost";s:2:"on";s:17:"aiosp_cpostactive";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:19:"aiosp_cpostadvanced";i:0;s:18:"aiosp_cpostnoindex";a:0:{}s:19:"aiosp_cpostnofollow";a:0:{}s:16:"aiosp_cpostnoodp";a:0:{}s:17:"aiosp_cpostnoydir";a:0:{}s:17:"aiosp_cposttitles";i:0;s:21:"aiosp_posttypecolumns";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:15:"aiosp_admin_bar";s:2:"on";s:23:"aiosp_custom_menu_order";s:2:"on";s:19:"aiosp_google_verify";s:0:"";s:17:"aiosp_bing_verify";s:0:"";s:22:"aiosp_pinterest_verify";s:0:"";s:22:"aiosp_google_publisher";s:0:"";s:28:"aiosp_google_disable_profile";i:0;s:29:"aiosp_google_sitelinks_search";N;s:26:"aiosp_google_set_site_name";N;s:30:"aiosp_google_specify_site_name";N;s:28:"aiosp_google_author_advanced";i:0;s:28:"aiosp_google_author_location";a:1:{i:0;s:3:"all";}s:29:"aiosp_google_enable_publisher";s:2:"on";s:30:"aiosp_google_specify_publisher";N;s:25:"aiosp_google_analytics_id";N;s:32:"aiosp_ga_use_universal_analytics";i:0;s:25:"aiosp_ga_advanced_options";s:2:"on";s:15:"aiosp_ga_domain";N;s:21:"aiosp_ga_multi_domain";i:0;s:21:"aiosp_ga_addl_domains";N;s:21:"aiosp_ga_anonymize_ip";N;s:28:"aiosp_ga_display_advertising";N;s:22:"aiosp_ga_exclude_users";N;s:29:"aiosp_ga_track_outbound_links";i:0;s:25:"aiosp_ga_link_attribution";i:0;s:27:"aiosp_ga_enhanced_ecommerce";i:0;s:20:"aiosp_use_categories";i:0;s:26:"aiosp_use_tags_as_keywords";i:1;s:32:"aiosp_dynamic_postspage_keywords";i:1;s:22:"aiosp_category_noindex";i:1;s:26:"aiosp_archive_date_noindex";i:1;s:28:"aiosp_archive_author_noindex";i:1;s:18:"aiosp_tags_noindex";i:0;s:20:"aiosp_search_noindex";i:0;s:17:"aiosp_404_noindex";i:0;s:17:"aiosp_tax_noindex";a:0:{}s:23:"aiosp_paginated_noindex";i:0;s:24:"aiosp_paginated_nofollow";i:0;s:11:"aiosp_noodp";i:0;s:12:"aiosp_noydir";i:0;s:18:"aiosp_skip_excerpt";i:0;s:27:"aiosp_generate_descriptions";i:1;s:20:"aiosp_run_shortcodes";i:0;s:33:"aiosp_hide_paginated_descriptions";i:0;s:32:"aiosp_dont_truncate_descriptions";i:0;s:19:"aiosp_schema_markup";i:1;s:20:"aiosp_unprotect_meta";i:0;s:14:"aiosp_ex_pages";s:0:"";s:20:"aiosp_post_meta_tags";s:0:"";s:20:"aiosp_page_meta_tags";s:0:"";s:21:"aiosp_front_meta_tags";s:0:"";s:20:"aiosp_home_meta_tags";s:0:"";s:12:"aiosp_do_log";N;s:19:"last_active_version";s:7:"2.3.5.1";}', 'yes'),
(335, 'yst_ga', 'a:1:{s:10:"ga_general";a:25:{s:10:"ga_general";a:23:{s:17:"analytics_profile";N;s:22:"analytics_profile_code";N;s:14:"manual_ua_code";i:0;s:20:"manual_ua_code_field";N;s:26:"track_internal_as_outbound";N;s:23:"track_internal_as_label";N;s:14:"track_outbound";i:0;s:14:"anonymous_data";i:0;s:16:"enable_universal";i:1;s:12:"demographics";i:0;s:12:"ignore_users";a:2:{i:0;s:13:"administrator";i:1;s:6:"editor";}s:19:"dashboards_disabled";i:0;s:13:"anonymize_ips";i:0;s:17:"track_download_as";s:5:"event";s:19:"extensions_of_files";s:30:"doc,exe,js,pdf,ppt,tgz,zip,xls";s:14:"track_full_url";s:6:"domain";s:18:"subdomain_tracking";N;s:16:"tag_links_in_rss";i:0;s:12:"allow_anchor";i:0;s:16:"add_allow_linker";i:0;s:25:"enhanced_link_attribution";i:0;s:11:"custom_code";N;s:10:"debug_mode";i:0;}s:19:"dashboards_disabled";i:0;s:17:"analytics_profile";N;s:22:"analytics_profile_code";N;s:14:"manual_ua_code";i:0;s:20:"manual_ua_code_field";N;s:26:"track_internal_as_outbound";N;s:23:"track_internal_as_label";N;s:14:"track_outbound";i:0;s:14:"anonymous_data";i:0;s:16:"enable_universal";i:1;s:12:"demographics";i:0;s:12:"ignore_users";a:2:{i:0;s:13:"administrator";i:1;s:6:"editor";}s:13:"anonymize_ips";i:0;s:17:"track_download_as";s:5:"event";s:19:"extensions_of_files";s:30:"doc,exe,js,pdf,ppt,tgz,zip,xls";s:14:"track_full_url";s:6:"domain";s:18:"subdomain_tracking";N;s:16:"tag_links_in_rss";i:0;s:12:"allow_anchor";i:0;s:16:"add_allow_linker";i:0;s:25:"enhanced_link_attribution";i:0;s:11:"custom_code";N;s:10:"debug_mode";i:0;s:7:"version";s:3:"5.5";}}', 'yes'),
(336, 'yst_ga_api', 'a:0:{}', 'no'),
(338, 'monsterinsights_welcome_1', '1', 'yes'),
(341, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.4.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1466836314;s:7:"version";s:5:"4.4.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(346, 'sm_rewrite_done', '$Id: sitemap-loader.php 937300 2014-06-23 18:04:11Z arnee $', 'yes'),
(348, 'widget_mc4wp_form_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(350, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(354, 'tadv_settings', 'a:6:{s:7:"options";s:15:"menubar,advlist";s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"plugins";s:107:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist";}', 'yes'),
(355, 'tadv_admin_settings', 'a:1:{s:7:"options";a:0:{}}', 'yes'),
(356, 'tadv_version', '4000', 'yes'),
(360, 'sm_options', 'a:51:{s:18:"sm_b_prio_provider";s:41:"GoogleSitemapGeneratorPrioByCountProvider";s:9:"sm_b_ping";b:1;s:10:"sm_b_stats";b:0;s:12:"sm_b_pingmsn";b:1;s:12:"sm_b_autozip";b:1;s:11:"sm_b_memory";s:0:"";s:9:"sm_b_time";i:-1;s:18:"sm_b_style_default";b:1;s:10:"sm_b_style";s:0:"";s:12:"sm_b_baseurl";s:0:"";s:11:"sm_b_robots";b:1;s:9:"sm_b_html";b:1;s:12:"sm_b_exclude";a:0:{}s:17:"sm_b_exclude_cats";a:0:{}s:10:"sm_in_home";b:1;s:11:"sm_in_posts";b:1;s:15:"sm_in_posts_sub";b:0;s:11:"sm_in_pages";b:1;s:10:"sm_in_cats";b:0;s:10:"sm_in_arch";b:0;s:10:"sm_in_auth";b:0;s:10:"sm_in_tags";b:0;s:9:"sm_in_tax";a:0:{}s:17:"sm_in_customtypes";a:0:{}s:13:"sm_in_lastmod";b:1;s:10:"sm_cf_home";s:5:"daily";s:11:"sm_cf_posts";s:7:"monthly";s:11:"sm_cf_pages";s:6:"weekly";s:10:"sm_cf_cats";s:6:"weekly";s:10:"sm_cf_auth";s:6:"weekly";s:15:"sm_cf_arch_curr";s:5:"daily";s:14:"sm_cf_arch_old";s:6:"yearly";s:10:"sm_cf_tags";s:6:"weekly";s:10:"sm_pr_home";d:1;s:11:"sm_pr_posts";d:0.59999999999999997779553950749686919152736663818359375;s:15:"sm_pr_posts_min";d:0.200000000000000011102230246251565404236316680908203125;s:11:"sm_pr_pages";d:0.59999999999999997779553950749686919152736663818359375;s:10:"sm_pr_cats";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_arch";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_auth";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_tags";d:0.299999999999999988897769753748434595763683319091796875;s:12:"sm_i_donated";b:0;s:17:"sm_i_hide_donated";b:0;s:17:"sm_i_install_date";i:1466891820;s:14:"sm_i_hide_note";b:0;s:15:"sm_i_hide_works";b:0;s:16:"sm_i_hide_donors";b:0;s:9:"sm_i_hash";s:20:"67e1ef11cc10ac3361c9";s:13:"sm_i_lastping";i:1466912474;s:16:"sm_i_supportfeed";b:1;s:22:"sm_i_supportfeed_cache";i:1466891822;}', 'yes'),
(361, 'sm_status', 'O:28:"GoogleSitemapGeneratorStatus":4:{s:39:"\0GoogleSitemapGeneratorStatus\0startTime";d:1466912474.2955610752105712890625;s:37:"\0GoogleSitemapGeneratorStatus\0endTime";d:1466912474.47628307342529296875;s:41:"\0GoogleSitemapGeneratorStatus\0pingResults";a:2:{s:6:"google";a:5:{s:9:"startTime";d:1466912474.2965030670166015625;s:7:"endTime";d:1466912474.364202022552490234375;s:7:"success";b:0;s:3:"url";s:116:"http://www.google.com/webmasters/sitemaps/ping?sitemap=http%3A%2F%2Flocalhost%3A8888%2FBTSHH%2FWebsite%2Fsitemap.xml";s:4:"name";s:6:"Google";}s:4:"bing";a:5:{s:9:"startTime";d:1466912474.3821868896484375;s:7:"endTime";d:1466912474.47397708892822265625;s:7:"success";b:1;s:3:"url";s:109:"http://www.bing.com/webmaster/ping.aspx?siteMap=http%3A%2F%2Flocalhost%3A8888%2FBTSHH%2FWebsite%2Fsitemap.xml";s:4:"name";s:4:"Bing";}}s:38:"\0GoogleSitemapGeneratorStatus\0autoSave";b:1;}', 'no'),
(440, 'WPLANG', '', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2016/06/btslogo.png'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:370;s:6:"height";i:127;s:4:"file";s:19:"2016/06/btslogo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"btslogo-150x127.png";s:5:"width";i:150;s:6:"height";i:127;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"btslogo-300x103.png";s:5:"width";i:300;s:6:"height";i:103;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 1, '_edit_lock', '1466827779:1'),
(5, 5, '_wp_attached_file', '2016/06/ice_cube__stuff__by_nerubianify-d8in53e.jpg'),
(6, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:797;s:6:"height";i:585;s:4:"file";s:51:"2016/06/ice_cube__stuff__by_nerubianify-d8in53e.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:51:"ice_cube__stuff__by_nerubianify-d8in53e-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:51:"ice_cube__stuff__by_nerubianify-d8in53e-300x220.jpg";s:5:"width";i:300;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:51:"ice_cube__stuff__by_nerubianify-d8in53e-768x564.jpg";s:5:"width";i:768;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(7, 1, '_thumbnail_id', '5'),
(8, 1, '_edit_last', '1'),
(11, 8, '_edit_last', '1'),
(12, 8, '_edit_lock', '1466643281:1'),
(22, 12, '_menu_item_type', 'post_type'),
(23, 12, '_menu_item_menu_item_parent', '0'),
(24, 12, '_menu_item_object_id', '8'),
(25, 12, '_menu_item_object', 'page'),
(26, 12, '_menu_item_target', ''),
(27, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(28, 12, '_menu_item_xfn', ''),
(29, 12, '_menu_item_url', ''),
(30, 12, '_menu_item_orphaned', '1466643577'),
(31, 13, '_menu_item_type', 'post_type'),
(32, 13, '_menu_item_menu_item_parent', '0'),
(33, 13, '_menu_item_object_id', '2'),
(34, 13, '_menu_item_object', 'page'),
(35, 13, '_menu_item_target', ''),
(36, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(37, 13, '_menu_item_xfn', ''),
(38, 13, '_menu_item_url', ''),
(39, 13, '_menu_item_orphaned', '1466643577'),
(49, 15, '_menu_item_type', 'taxonomy'),
(50, 15, '_menu_item_menu_item_parent', '0'),
(51, 15, '_menu_item_object_id', '8'),
(52, 15, '_menu_item_object', 'category'),
(53, 15, '_menu_item_target', ''),
(54, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 15, '_menu_item_xfn', ''),
(56, 15, '_menu_item_url', ''),
(67, 17, '_menu_item_type', 'taxonomy'),
(68, 17, '_menu_item_menu_item_parent', '0'),
(69, 17, '_menu_item_object_id', '4'),
(70, 17, '_menu_item_object', 'category'),
(71, 17, '_menu_item_target', ''),
(72, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 17, '_menu_item_xfn', ''),
(74, 17, '_menu_item_url', ''),
(85, 19, '_menu_item_type', 'taxonomy'),
(86, 19, '_menu_item_menu_item_parent', '0'),
(87, 19, '_menu_item_object_id', '2'),
(88, 19, '_menu_item_object', 'category'),
(89, 19, '_menu_item_target', ''),
(90, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 19, '_menu_item_xfn', ''),
(92, 19, '_menu_item_url', ''),
(94, 20, '_menu_item_type', 'taxonomy'),
(95, 20, '_menu_item_menu_item_parent', '0'),
(96, 20, '_menu_item_object_id', '5'),
(97, 20, '_menu_item_object', 'category'),
(98, 20, '_menu_item_target', ''),
(99, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(100, 20, '_menu_item_xfn', ''),
(101, 20, '_menu_item_url', ''),
(103, 21, '_menu_item_type', 'taxonomy'),
(104, 21, '_menu_item_menu_item_parent', '0'),
(105, 21, '_menu_item_object_id', '7'),
(106, 21, '_menu_item_object', 'category'),
(107, 21, '_menu_item_target', ''),
(108, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(109, 21, '_menu_item_xfn', ''),
(110, 21, '_menu_item_url', ''),
(121, 23, '_menu_item_type', 'taxonomy'),
(122, 23, '_menu_item_menu_item_parent', '0'),
(123, 23, '_menu_item_object_id', '6'),
(124, 23, '_menu_item_object', 'category'),
(125, 23, '_menu_item_target', ''),
(126, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 23, '_menu_item_xfn', ''),
(128, 23, '_menu_item_url', ''),
(139, 25, '_menu_item_type', 'taxonomy'),
(140, 25, '_menu_item_menu_item_parent', '0'),
(141, 25, '_menu_item_object_id', '9'),
(142, 25, '_menu_item_object', 'category'),
(143, 25, '_menu_item_target', ''),
(144, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(145, 25, '_menu_item_xfn', ''),
(146, 25, '_menu_item_url', ''),
(151, 27, '_menu_item_type', 'custom'),
(152, 27, '_menu_item_menu_item_parent', '0'),
(153, 27, '_menu_item_object_id', '27'),
(154, 27, '_menu_item_object', 'custom'),
(155, 27, '_menu_item_target', ''),
(156, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(157, 27, '_menu_item_xfn', ''),
(158, 27, '_menu_item_url', 'http://www.btshiphop.com/'),
(160, 28, '_edit_last', '1'),
(161, 28, '_edit_lock', '1466732945:1'),
(166, 28, '_wp_trash_meta_status', 'publish'),
(167, 28, '_wp_trash_meta_time', '1466733698'),
(168, 28, '_wp_desired_post_slug', 'test-post'),
(169, 30, '_edit_last', '1'),
(170, 30, '_edit_lock', '1466828889:1'),
(171, 31, '_wp_attached_file', '2016/06/720x405-GettyImages-479492315.jpg') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(172, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:405;s:4:"file";s:41:"2016/06/720x405-GettyImages-479492315.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"720x405-GettyImages-479492315-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"720x405-GettyImages-479492315-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(173, 30, '_thumbnail_id', '31'),
(176, 8, '_wp_trash_meta_status', 'publish'),
(177, 8, '_wp_trash_meta_time', '1466829041'),
(178, 8, '_wp_desired_post_slug', 'latest'),
(179, 33, '_edit_last', '1'),
(180, 33, '_edit_lock', '1466834914:1'),
(181, 35, '_edit_last', '1'),
(182, 35, '_edit_lock', '1466912217:1'),
(183, 37, '_menu_item_type', 'post_type'),
(184, 37, '_menu_item_menu_item_parent', '0'),
(185, 37, '_menu_item_object_id', '33'),
(186, 37, '_menu_item_object', 'page'),
(187, 37, '_menu_item_target', ''),
(188, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(189, 37, '_menu_item_xfn', ''),
(190, 37, '_menu_item_url', ''),
(192, 38, '_menu_item_type', 'post_type'),
(193, 38, '_menu_item_menu_item_parent', '0'),
(194, 38, '_menu_item_object_id', '35'),
(195, 38, '_menu_item_object', 'page'),
(196, 38, '_menu_item_target', ''),
(197, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(198, 38, '_menu_item_xfn', ''),
(199, 38, '_menu_item_url', ''),
(201, 41, '_edit_last', '1'),
(202, 41, '_edit_lock', '1466912329:1'),
(203, 43, '_menu_item_type', 'post_type'),
(204, 43, '_menu_item_menu_item_parent', '0'),
(205, 43, '_menu_item_object_id', '41'),
(206, 43, '_menu_item_object', 'page'),
(207, 43, '_menu_item_target', ''),
(208, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(209, 43, '_menu_item_xfn', ''),
(210, 43, '_menu_item_url', ''),
(212, 44, '_edit_last', '1'),
(213, 44, '_edit_lock', '1466834815:1'),
(214, 46, '_menu_item_type', 'post_type'),
(215, 46, '_menu_item_menu_item_parent', '0'),
(216, 46, '_menu_item_object_id', '44'),
(217, 46, '_menu_item_object', 'page'),
(218, 46, '_menu_item_target', ''),
(219, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(220, 46, '_menu_item_xfn', ''),
(221, 46, '_menu_item_url', ''),
(223, 48, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(224, 48, '_mail', 'a:8:{s:7:"subject";s:42:"Behind The Scenes Hip Hop "[your-subject]"";s:6:"sender";s:36:"[your-name] <vectornpixel@gmail.com>";s:4:"body";s:187:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)";s:9:"recipient";s:22:"vectornpixel@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(225, 48, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:42:"Behind The Scenes Hip Hop "[your-subject]"";s:6:"sender";s:50:"Behind The Scenes Hip Hop <vectornpixel@gmail.com>";s:4:"body";s:129:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:32:"Reply-To: vectornpixel@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(226, 48, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(227, 48, '_additional_settings', NULL),
(228, 48, '_locale', 'en_US'),
(229, 49, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(230, 49, '_mail', 'a:8:{s:7:"subject";s:42:"Behind The Scenes Hip Hop "[your-subject]"";s:6:"sender";s:36:"[your-name] <vectornpixel@gmail.com>";s:4:"body";s:187:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)";s:9:"recipient";s:22:"vectornpixel@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(231, 49, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:42:"Behind The Scenes Hip Hop "[your-subject]"";s:6:"sender";s:50:"Behind The Scenes Hip Hop <vectornpixel@gmail.com>";s:4:"body";s:129:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:32:"Reply-To: vectornpixel@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(232, 49, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(233, 49, '_additional_settings', ''),
(234, 49, '_locale', 'en_US'),
(235, 51, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Portfolio Links<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(236, 51, '_mail', 'a:8:{s:7:"subject";s:42:"Behind The Scenes Hip Hop "[your-subject]"";s:6:"sender";s:36:"[your-name] <vectornpixel@gmail.com>";s:4:"body";s:187:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)";s:9:"recipient";s:22:"vectornpixel@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(237, 51, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:42:"Behind The Scenes Hip Hop "[your-subject]"";s:6:"sender";s:50:"Behind The Scenes Hip Hop <vectornpixel@gmail.com>";s:4:"body";s:129:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:32:"Reply-To: vectornpixel@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(238, 51, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(239, 51, '_additional_settings', ''),
(240, 51, '_locale', 'en_US'),
(241, 53, '_wp_attached_file', '2016/06/5116930.png'),
(242, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:550;s:4:"file";s:19:"2016/06/5116930.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"5116930-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"5116930-300x161.png";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:19:"5116930-768x413.png";s:5:"width";i:768;s:6:"height";i:413;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"5116930-1024x550.png";s:5:"width";i:1024;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-06-19 19:35:52', '2016-06-19 19:35:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla enim non elit tincidunt, faucibus interdum orci aliquet. Mauris et tristique risus, a varius justo. Donec porttitor tortor a leo blandit, ac lobortis ligula viverra. Mauris volutpat, elit pulvinar pharetra porttitor, odio neque egestas felis, in fringilla urna est ut urna. Sed a lectus venenatis lacus varius molestie. Cras hendrerit magna sed vulputate dignissim. Integer sed purus mattis, pellentesque nulla ac, condimentum mi. Ut varius, mauris non lobortis fringilla, nisi massa commodo neque, id ornare sapien leo vel arcu. Aliquam ornare mollis laoreet. Quisque lobortis, nisi id ultricies vestibulum, nibh leo luctus nunc, mattis pharetra justo urna ac quam. In hac habitasse platea dictumst. Vivamus sed eros non tellus cursus varius sit amet rhoncus ex. Phasellus ac arcu vitae leo aliquet venenatis et nec justo. Ut hendrerit, lectus et dictum tempus, justo massa condimentum dolor, eu laoreet elit tellus non neque.\r\n\r\nDonec venenatis luctus magna at varius. Nulla blandit euismod mollis. Phasellus fringilla tincidunt egestas. Nam tellus orci, malesuada porta rutrum at, lacinia sed elit. Integer vitae metus tempus, gravida elit a, suscipit sem. Phasellus placerat, quam at fermentum interdum, sem orci dapibus sem, in ultricies lorem mi eleifend ipsum. Phasellus ut magna egestas, dictum nibh at, iaculis turpis. Pellentesque placerat diam et magna porttitor porttitor. Nunc tempor fermentum elit sit amet vehicula. Phasellus dui urna, sagittis nec tempus sed, gravida quis orci. Duis mauris tellus, imperdiet vitae lacinia a, tempor vitae magna. Sed lacinia lorem arcu, id eleifend lorem mattis non.\r\n\r\nNullam mollis egestas neque, non dapibus massa venenatis eu. Phasellus eu interdum augue. Proin iaculis maximus turpis congue tempus. Aliquam ac gravida elit, sit amet congue arcu. Pellentesque efficitur luctus neque et venenatis. Praesent at mauris non tellus ullamcorper auctor at eget ligula. Duis interdum sollicitudin nunc vel gravida. Suspendisse tincidunt ipsum et metus vehicula luctus. In scelerisque a lacus nec vehicula. Donec blandit justo urna, sed tempor ligula interdum at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec posuere, nisi id vestibulum aliquam, libero nulla eleifend augue, at facilisis nisi risus sollicitudin diam. Praesent nec pharetra enim. Proin est augue, ultrices sed nisl quis, porttitor luctus tortor. Aliquam tempor eget neque ac pretium.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ornare vehicula erat, sit amet lobortis metus porta ut.', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-06-24 02:01:12', '2016-06-24 02:01:12', '', 0, 'http://www.btshiphop.com/?p=1', 0, 'post', '', 1),
(2, 1, '2016-06-19 19:35:52', '2016-06-19 19:35:52', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://www.btshiphop.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-06-19 19:35:52', '2016-06-19 19:35:52', '', 0, 'http://www.btshiphop.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-06-19 19:35:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-06-19 19:35:58', '0000-00-00 00:00:00', '', 0, 'http://www.btshiphop.com/?p=3', 0, 'post', '', 0),
(4, 1, '2016-06-19 19:39:15', '2016-06-19 19:39:15', '', 'btslogo', '', 'inherit', 'open', 'closed', '', 'btslogo', '', '', '2016-06-19 19:39:15', '2016-06-19 19:39:15', '', 0, 'http://www.btshiphop.com/wp-content/uploads/2016/06/btslogo.png', 0, 'attachment', 'image/png', 0),
(5, 1, '2016-06-22 00:25:05', '2016-06-22 00:25:05', '', 'ice_cube__stuff__by_nerubianify-d8in53e', '', 'inherit', 'open', 'closed', '', 'ice_cube__stuff__by_nerubianify-d8in53e', '', '', '2016-06-22 00:25:05', '2016-06-22 00:25:05', '', 1, 'http://www.btshiphop.com/wp-content/uploads/2016/06/ice_cube__stuff__by_nerubianify-d8in53e.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2016-06-22 00:25:19', '2016-06-22 00:25:19', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-06-22 00:25:19', '2016-06-22 00:25:19', '', 1, 'http://www.btshiphop.com/2016/06/22/1-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-06-23 00:04:05', '2016-06-23 00:04:05', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ornare vehicula erat, sit amet lobortis metus porta ut.', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-06-23 00:04:05', '2016-06-23 00:04:05', '', 1, 'http://www.btshiphop.com/2016/06/23/1-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-06-23 00:57:04', '2016-06-23 00:57:04', '', 'Latest', '', 'trash', 'closed', 'closed', '', 'latest__trashed', '', '', '2016-06-25 04:30:41', '2016-06-25 04:30:41', '', 0, 'http://www.btshiphop.com/?page_id=8', 0, 'page', '', 0),
(9, 1, '2016-06-23 00:57:04', '2016-06-23 00:57:04', '', 'Latest', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-06-23 00:57:04', '2016-06-23 00:57:04', '', 8, 'http://www.btshiphop.com/2016/06/23/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-06-23 00:57:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-06-23 00:57:05', '0000-00-00 00:00:00', '', 0, 'http://www.btshiphop.com/?page_id=10', 0, 'page', '', 0),
(12, 1, '2016-06-23 00:59:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-23 00:59:37', '0000-00-00 00:00:00', '', 0, 'http://www.btshiphop.com/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2016-06-23 00:59:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-23 00:59:37', '0000-00-00 00:00:00', '', 0, 'http://www.btshiphop.com/?p=13', 1, 'nav_menu_item', '', 0),
(15, 1, '2016-06-23 01:00:16', '2016-06-23 01:00:16', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=15', 8, 'nav_menu_item', '', 0),
(17, 1, '2016-06-23 01:00:16', '2016-06-23 01:00:16', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=17', 4, 'nav_menu_item', '', 0),
(19, 1, '2016-06-23 01:00:16', '2016-06-23 01:00:16', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2016-06-23 01:00:16', '2016-06-23 01:00:16', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=20', 7, 'nav_menu_item', '', 0),
(21, 1, '2016-06-23 01:00:16', '2016-06-23 01:00:16', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=21', 5, 'nav_menu_item', '', 0),
(23, 1, '2016-06-23 01:00:16', '2016-06-23 01:00:16', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=23', 10, 'nav_menu_item', '', 0),
(25, 1, '2016-06-23 01:00:16', '2016-06-23 01:00:16', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=25', 11, 'nav_menu_item', '', 0),
(26, 1, '2016-06-24 00:25:17', '2016-06-24 00:25:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla enim non elit tincidunt, faucibus interdum orci aliquet. Mauris et tristique risus, a varius justo. Donec porttitor tortor a leo blandit, ac lobortis ligula viverra. Mauris volutpat, elit pulvinar pharetra porttitor, odio neque egestas felis, in fringilla urna est ut urna. Sed a lectus venenatis lacus varius molestie. Cras hendrerit magna sed vulputate dignissim. Integer sed purus mattis, pellentesque nulla ac, condimentum mi. Ut varius, mauris non lobortis fringilla, nisi massa commodo neque, id ornare sapien leo vel arcu. Aliquam ornare mollis laoreet. Quisque lobortis, nisi id ultricies vestibulum, nibh leo luctus nunc, mattis pharetra justo urna ac quam. In hac habitasse platea dictumst. Vivamus sed eros non tellus cursus varius sit amet rhoncus ex. Phasellus ac arcu vitae leo aliquet venenatis et nec justo. Ut hendrerit, lectus et dictum tempus, justo massa condimentum dolor, eu laoreet elit tellus non neque.\r\n\r\nDonec venenatis luctus magna at varius. Nulla blandit euismod mollis. Phasellus fringilla tincidunt egestas. Nam tellus orci, malesuada porta rutrum at, lacinia sed elit. Integer vitae metus tempus, gravida elit a, suscipit sem. Phasellus placerat, quam at fermentum interdum, sem orci dapibus sem, in ultricies lorem mi eleifend ipsum. Phasellus ut magna egestas, dictum nibh at, iaculis turpis. Pellentesque placerat diam et magna porttitor porttitor. Nunc tempor fermentum elit sit amet vehicula. Phasellus dui urna, sagittis nec tempus sed, gravida quis orci. Duis mauris tellus, imperdiet vitae lacinia a, tempor vitae magna. Sed lacinia lorem arcu, id eleifend lorem mattis non.\r\n\r\nNullam mollis egestas neque, non dapibus massa venenatis eu. Phasellus eu interdum augue. Proin iaculis maximus turpis congue tempus. Aliquam ac gravida elit, sit amet congue arcu. Pellentesque efficitur luctus neque et venenatis. Praesent at mauris non tellus ullamcorper auctor at eget ligula. Duis interdum sollicitudin nunc vel gravida. Suspendisse tincidunt ipsum et metus vehicula luctus. In scelerisque a lacus nec vehicula. Donec blandit justo urna, sed tempor ligula interdum at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec posuere, nisi id vestibulum aliquam, libero nulla eleifend augue, at facilisis nisi risus sollicitudin diam. Praesent nec pharetra enim. Proin est augue, ultrices sed nisl quis, porttitor luctus tortor. Aliquam tempor eget neque ac pretium.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ornare vehicula erat, sit amet lobortis metus porta ut.', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-06-24 00:25:17', '2016-06-24 00:25:17', '', 1, 'http://www.btshiphop.com/2016/06/24/1-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-06-24 00:26:02', '2016-06-24 00:26:02', '', 'Latest', '', 'publish', 'closed', 'closed', '', 'latest', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2016-06-24 01:35:34', '2016-06-24 01:35:34', 'test post here', 'test post', '', 'trash', 'open', 'open', '', 'test-post__trashed', '', '', '2016-06-24 02:01:38', '2016-06-24 02:01:38', '', 0, 'http://www.btshiphop.com/?p=28', 0, 'post', '', 0),
(29, 1, '2016-06-24 01:35:34', '2016-06-24 01:35:34', 'test post here', 'test post', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-06-24 01:35:34', '2016-06-24 01:35:34', '', 28, 'http://www.btshiphop.com/2016/06/24/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-06-25 04:13:19', '2016-06-25 04:13:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla enim non elit tincidunt, faucibus interdum orci aliquet. Mauris et tristique risus, a varius justo. Donec porttitor tortor a leo blandit, ac lobortis ligula viverra. Mauris volutpat, elit pulvinar pharetra porttitor, odio neque egestas felis, in fringilla urna est ut urna. Sed a lectus venenatis lacus varius molestie. Cras hendrerit magna sed vulputate dignissim. Integer sed purus mattis, pellentesque nulla ac, condimentum mi. Ut varius, mauris non lobortis fringilla, nisi massa commodo neque, id ornare sapien leo vel arcu. Aliquam ornare mollis laoreet. Quisque lobortis, nisi id ultricies vestibulum, nibh leo luctus nunc, mattis pharetra justo urna ac quam. In hac habitasse platea dictumst. Vivamus sed eros non tellus cursus varius sit amet rhoncus ex. Phasellus ac arcu vitae leo aliquet venenatis et nec justo. Ut hendrerit, lectus et dictum tempus, justo massa condimentum dolor, eu laoreet elit tellus non neque.\r\n\r\nDonec venenatis luctus magna at varius. Nulla blandit euismod mollis. Phasellus fringilla tincidunt egestas. Nam tellus orci, malesuada porta rutrum at, lacinia sed elit. Integer vitae metus tempus, gravida elit a, suscipit sem. Phasellus placerat, quam at fermentum interdum, sem orci dapibus sem, in ultricies lorem mi eleifend ipsum. Phasellus ut magna egestas, dictum nibh at, iaculis turpis. Pellentesque placerat diam et magna porttitor porttitor. Nunc tempor fermentum elit sit amet vehicula. Phasellus dui urna, sagittis nec tempus sed, gravida quis orci. Duis mauris tellus, imperdiet vitae lacinia a, tempor vitae magna. Sed lacinia lorem arcu, id eleifend lorem mattis non.\r\n\r\n&nbsp;', 'Test Article Two', '', 'publish', 'open', 'open', '', 'test-article-two', '', '', '2016-06-25 04:13:19', '2016-06-25 04:13:19', '', 0, 'http://www.btshiphop.com/?p=30', 0, 'post', '', 0),
(31, 1, '2016-06-25 04:13:16', '2016-06-25 04:13:16', '', '720x405-GettyImages-479492315', '', 'inherit', 'open', 'closed', '', '720x405-gettyimages-479492315', '', '', '2016-06-25 04:13:16', '2016-06-25 04:13:16', '', 30, 'http://www.btshiphop.com/wp-content/uploads/2016/06/720x405-GettyImages-479492315.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2016-06-25 04:13:19', '2016-06-25 04:13:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla enim non elit tincidunt, faucibus interdum orci aliquet. Mauris et tristique risus, a varius justo. Donec porttitor tortor a leo blandit, ac lobortis ligula viverra. Mauris volutpat, elit pulvinar pharetra porttitor, odio neque egestas felis, in fringilla urna est ut urna. Sed a lectus venenatis lacus varius molestie. Cras hendrerit magna sed vulputate dignissim. Integer sed purus mattis, pellentesque nulla ac, condimentum mi. Ut varius, mauris non lobortis fringilla, nisi massa commodo neque, id ornare sapien leo vel arcu. Aliquam ornare mollis laoreet. Quisque lobortis, nisi id ultricies vestibulum, nibh leo luctus nunc, mattis pharetra justo urna ac quam. In hac habitasse platea dictumst. Vivamus sed eros non tellus cursus varius sit amet rhoncus ex. Phasellus ac arcu vitae leo aliquet venenatis et nec justo. Ut hendrerit, lectus et dictum tempus, justo massa condimentum dolor, eu laoreet elit tellus non neque.\r\n\r\nDonec venenatis luctus magna at varius. Nulla blandit euismod mollis. Phasellus fringilla tincidunt egestas. Nam tellus orci, malesuada porta rutrum at, lacinia sed elit. Integer vitae metus tempus, gravida elit a, suscipit sem. Phasellus placerat, quam at fermentum interdum, sem orci dapibus sem, in ultricies lorem mi eleifend ipsum. Phasellus ut magna egestas, dictum nibh at, iaculis turpis. Pellentesque placerat diam et magna porttitor porttitor. Nunc tempor fermentum elit sit amet vehicula. Phasellus dui urna, sagittis nec tempus sed, gravida quis orci. Duis mauris tellus, imperdiet vitae lacinia a, tempor vitae magna. Sed lacinia lorem arcu, id eleifend lorem mattis non.\r\n\r\n&nbsp;', 'Test Article Two', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-06-25 04:13:19', '2016-06-25 04:13:19', '', 30, 'http://www.btshiphop.com/2016/06/25/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-06-25 04:30:49', '2016-06-25 04:30:49', '<span class="s2">Behind The Scenes Hip Hop began with an idea. My name is Asim Craft. I am a professional designer and web developer that has experience ranging two decades. Currently my goal is to bring streaming music to the world by launching my flagship products with iHeartRadio. But my past is whats very exciting, with two decades of experience in the music and hip hop industry, as not the creator for a very dominate media company in the mid 2000s, I was also a artist, writer, and producer. </span>\r\n\r\n<span class="s2">WithBehind The Scenes Hip Hop I want to bring to the masses what I see as a very unique and creative world of design and media that sometimes get looked over. As a comparison to other media professionals, designers specializing in the urban markets receives very little recognition. The goal was to stick to my guns, and do not advertise or become another hip hop blog or music information outlet. Instead I wanted to focus on the artists and individuals behind the artists. The ones who keeps the ship running, the graphic designers, marketing managers, promotors, producers, engineers, music video directors, photographers, album cover designer, and anyone else who brings this creative urban market to the forefront. With BTSHipHop i hope to highlight these media professionals works but also with hopes to inspire other upcoming designers by incorporating the processes that we take to create these amazing projects. I hope you guys enjoy this blog.</span>', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2016-06-25 06:10:16', '2016-06-25 06:10:16', '', 0, 'http://www.btshiphop.com/?page_id=33', 0, 'page', '', 0),
(34, 1, '2016-06-25 04:30:49', '2016-06-25 04:30:49', 'test', 'About', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-06-25 04:30:49', '2016-06-25 04:30:49', '', 33, 'http://www.btshiphop.com/2016/06/25/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-06-25 04:30:56', '2016-06-25 04:30:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nunc lectus, faucibus non nibh eget, finibus luctus augue. Curabitur eu pharetra dui, id varius quam. Praesent consequat, velit non varius posuere, lectus mi egestas erat, eget lobortis lectus velit sed mauris. Vivamus malesuada at sem sed efficitur. Ut lorem ipsum, porttitor a aliquet fringilla, elementum ut ipsum. Nam fringilla, dolor vitae cursus consequat, orci lorem luctus dui, ut convallis ipsum odio in leo. Mauris massa enim, hendrerit nec faucibus eget, rhoncus et lorem. Pellentesque urna justo, ultrices nec imperdiet a, pulvinar id odio.\r\n\r\n[contact-form-7 id="49" title="Contact"]\r\n\r\n&nbsp;', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-06-26 03:39:04', '2016-06-26 03:39:04', '', 0, 'http://www.btshiphop.com/?page_id=35', 0, 'page', '', 0),
(36, 1, '2016-06-25 04:30:56', '2016-06-25 04:30:56', 'test', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-06-25 04:30:56', '2016-06-25 04:30:56', '', 35, 'http://www.btshiphop.com/2016/06/25/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-06-25 04:31:56', '2016-06-25 04:31:56', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=37', 9, 'nav_menu_item', '', 0),
(38, 1, '2016-06-25 04:31:56', '2016-06-25 04:31:56', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=38', 12, 'nav_menu_item', '', 0),
(39, 1, '2016-06-25 04:44:52', '2016-06-25 04:44:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nunc lectus, faucibus non nibh eget, finibus luctus augue. Curabitur eu pharetra dui, id varius quam. Praesent consequat, velit non varius posuere, lectus mi egestas erat, eget lobortis lectus velit sed mauris. Vivamus malesuada at sem sed efficitur. Ut lorem ipsum, porttitor a aliquet fringilla, elementum ut ipsum. Nam fringilla, dolor vitae cursus consequat, orci lorem luctus dui, ut convallis ipsum odio in leo. Mauris massa enim, hendrerit nec faucibus eget, rhoncus et lorem. Pellentesque urna justo, ultrices nec imperdiet a, pulvinar id odio.', 'About', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-06-25 04:44:52', '2016-06-25 04:44:52', '', 33, 'http://www.btshiphop.com/2016/06/25/33-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-06-25 04:45:17', '2016-06-25 04:45:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nunc lectus, faucibus non nibh eget, finibus luctus augue. Curabitur eu pharetra dui, id varius quam. Praesent consequat, velit non varius posuere, lectus mi egestas erat, eget lobortis lectus velit sed mauris. Vivamus malesuada at sem sed efficitur. Ut lorem ipsum, porttitor a aliquet fringilla, elementum ut ipsum. Nam fringilla, dolor vitae cursus consequat, orci lorem luctus dui, ut convallis ipsum odio in leo. Mauris massa enim, hendrerit nec faucibus eget, rhoncus et lorem. Pellentesque urna justo, ultrices nec imperdiet a, pulvinar id odio.', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-06-25 04:45:17', '2016-06-25 04:45:17', '', 35, 'http://www.btshiphop.com/2016/06/25/35-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-06-25 06:07:21', '2016-06-25 06:07:21', '<p class="p1"><span class="s1">Behind The Scenes Hip Hop is actively looking for media professionally particularly in the urban music market to be featured on this site. Music and Media is our passion, and we want other individuals passions to be heared. Start by submitting your information to us for review, please leave your email address so we cant contact you to become featured our website ! Send us anything! Instagram account, youtube, personal portfolio, anything that we can check out.</span></p>\r\n<p class="p1">[contact-form-7 id="51" title="Featured"]</p>', 'Get Featured', '', 'publish', 'closed', 'closed', '', 'get-featured', '', '', '2016-06-26 03:41:05', '2016-06-26 03:41:05', '', 0, 'http://www.btshiphop.com/?page_id=41', 0, 'page', '', 0),
(42, 1, '2016-06-25 06:07:21', '2016-06-25 06:07:21', '<p class="p1"><span class="s1">Behind The Scenes Hip Hop is actively looking for media professionally particularly in the urban music market to be featured on this site. Music and Media is our passion, and we want other individuals passions to be heared. Start by submitting your information to us for review, please leave your email address so we cant contact you to become featured our website ! Send us anything! Instagram account, youtube, personal portfolio, anything that we can check out.</span></p>', 'Get Featured', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-06-25 06:07:21', '2016-06-25 06:07:21', '', 41, 'http://www.btshiphop.com/2016/06/25/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-06-25 06:07:46', '2016-06-25 06:07:46', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2016-06-25 06:09:18', '2016-06-25 06:09:18', '<p class="p1"><span class="s1">We are always looking to promote passionate media professionals on our site, If you have any projects that you are willing to take short video clips of, send them ! We will add your social media or portfolio account attached with any content you send over.</span></p>', 'Send Your Snaps', '', 'publish', 'closed', 'closed', '', 'send-your-snaps', '', '', '2016-06-25 06:09:18', '2016-06-25 06:09:18', '', 0, 'http://www.btshiphop.com/?page_id=44', 0, 'page', '', 0),
(45, 1, '2016-06-25 06:09:18', '2016-06-25 06:09:18', '<p class="p1"><span class="s1">We are always looking to promote passionate media professionals on our site, If you have any projects that you are willing to take short video clips of, send them ! We will add your social media or portfolio account attached with any content you send over.</span></p>', 'Send Your Snaps', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-06-25 06:09:18', '2016-06-25 06:09:18', '', 44, 'http://www.btshiphop.com/2016/06/25/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-06-25 06:09:25', '2016-06-25 06:09:25', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2016-06-25 06:14:12', '2016-06-25 06:14:12', '', 0, 'http://www.btshiphop.com/?p=46', 6, 'nav_menu_item', '', 0),
(47, 1, '2016-06-25 06:10:16', '2016-06-25 06:10:16', '<span class="s2">Behind The Scenes Hip Hop began with an idea. My name is Asim Craft. I am a professional designer and web developer that has experience ranging two decades. Currently my goal is to bring streaming music to the world by launching my flagship products with iHeartRadio. But my past is whats very exciting, with two decades of experience in the music and hip hop industry, as not the creator for a very dominate media company in the mid 2000s, I was also a artist, writer, and producer. </span>\r\n\r\n<span class="s2">WithBehind The Scenes Hip Hop I want to bring to the masses what I see as a very unique and creative world of design and media that sometimes get looked over. As a comparison to other media professionals, designers specializing in the urban markets receives very little recognition. The goal was to stick to my guns, and do not advertise or become another hip hop blog or music information outlet. Instead I wanted to focus on the artists and individuals behind the artists. The ones who keeps the ship running, the graphic designers, marketing managers, promotors, producers, engineers, music video directors, photographers, album cover designer, and anyone else who brings this creative urban market to the forefront. With BTSHipHop i hope to highlight these media professionals works but also with hopes to inspire other upcoming designers by incorporating the processes that we take to create these amazing projects. I hope you guys enjoy this blog.</span>', 'About', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-06-25 06:10:16', '2016-06-25 06:10:16', '', 33, 'http://www.btshiphop.com/2016/06/25/33-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2016-06-25 06:31:54', '2016-06-25 06:31:54', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\nBehind The Scenes Hip Hop "[your-subject]"\n[your-name] <vectornpixel@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)\nvectornpixel@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nBehind The Scenes Hip Hop "[your-subject]"\nBehind The Scenes Hip Hop <vectornpixel@gmail.com>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)\n[your-email]\nReply-To: vectornpixel@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-06-25 06:31:54', '2016-06-25 06:31:54', '', 0, 'http://www.btshiphop.com/?post_type=wpcf7_contact_form&p=48', 0, 'wpcf7_contact_form', '', 0),
(49, 1, '2016-06-26 03:37:56', '2016-06-26 03:37:56', '<p>Your Name (required)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Your Email (required)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Subject<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Your Message<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit "Send"]</p>\nBehind The Scenes Hip Hop "[your-subject]"\n[your-name] <vectornpixel@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)\nvectornpixel@gmail.com\nReply-To: [your-email]\n\n\n\n\nBehind The Scenes Hip Hop "[your-subject]"\nBehind The Scenes Hip Hop <vectornpixel@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)\n[your-email]\nReply-To: vectornpixel@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-06-26 03:37:56', '2016-06-26 03:37:56', '', 0, 'http://www.btshiphop.com/?post_type=wpcf7_contact_form&p=49', 0, 'wpcf7_contact_form', '', 0),
(50, 1, '2016-06-26 03:39:04', '2016-06-26 03:39:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nunc lectus, faucibus non nibh eget, finibus luctus augue. Curabitur eu pharetra dui, id varius quam. Praesent consequat, velit non varius posuere, lectus mi egestas erat, eget lobortis lectus velit sed mauris. Vivamus malesuada at sem sed efficitur. Ut lorem ipsum, porttitor a aliquet fringilla, elementum ut ipsum. Nam fringilla, dolor vitae cursus consequat, orci lorem luctus dui, ut convallis ipsum odio in leo. Mauris massa enim, hendrerit nec faucibus eget, rhoncus et lorem. Pellentesque urna justo, ultrices nec imperdiet a, pulvinar id odio.\r\n\r\n[contact-form-7 id="49" title="Contact"]\r\n\r\n&nbsp;', 'Contact', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-06-26 03:39:04', '2016-06-26 03:39:04', '', 35, 'http://www.btshiphop.com/2016/06/26/35-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2016-06-26 03:40:46', '2016-06-26 03:40:46', '<p>Your Name (required)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Your Email (required)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Subject<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Your Portfolio Links<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit "Send"]</p>\nBehind The Scenes Hip Hop "[your-subject]"\n[your-name] <vectornpixel@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)\nvectornpixel@gmail.com\nReply-To: [your-email]\n\n\n\n\nBehind The Scenes Hip Hop "[your-subject]"\nBehind The Scenes Hip Hop <vectornpixel@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Behind The Scenes Hip Hop (http://www.btshiphop.com)\n[your-email]\nReply-To: vectornpixel@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Featured', '', 'publish', 'closed', 'closed', '', 'featured', '', '', '2016-06-26 03:40:46', '2016-06-26 03:40:46', '', 0, 'http://www.btshiphop.com/?post_type=wpcf7_contact_form&p=51', 0, 'wpcf7_contact_form', '', 0),
(52, 1, '2016-06-26 03:41:05', '2016-06-26 03:41:05', '<p class="p1"><span class="s1">Behind The Scenes Hip Hop is actively looking for media professionally particularly in the urban music market to be featured on this site. Music and Media is our passion, and we want other individuals passions to be heared. Start by submitting your information to us for review, please leave your email address so we cant contact you to become featured our website ! Send us anything! Instagram account, youtube, personal portfolio, anything that we can check out.</span></p>\r\n<p class="p1">[contact-form-7 id="51" title="Featured"]</p>', 'Get Featured', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-06-26 03:41:05', '2016-06-26 03:41:05', '', 41, 'http://www.btshiphop.com/2016/06/26/41-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2016-06-26 18:01:46', '2016-06-26 18:01:46', '', '5116930', '', 'inherit', 'open', 'closed', '', '5116930', '', '', '2016-06-26 18:01:46', '2016-06-26 18:01:46', '', 0, 'http://www.btshiphop.com/wp-content/uploads/2016/06/5116930.png', 0, 'attachment', 'image/png', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(15, 14, 0),
(17, 14, 0),
(19, 14, 0),
(20, 14, 0),
(21, 14, 0),
(23, 14, 0),
(25, 14, 0),
(27, 14, 0),
(28, 1, 0),
(30, 7, 0),
(37, 14, 0),
(38, 14, 0),
(43, 14, 0),
(46, 14, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', 'Featured Artist Highlights', 0, 1),
(4, 4, 'category', 'Looking for random projects? Discover new works by browsing various of tagged items and people from around the net', 0, 0),
(5, 5, 'category', 'From album art, photo shoots, video shoots, and more. Here are upcoming projects in the early stages', 0, 0),
(6, 6, 'category', 'Short Behind the Scenes clips of urban media professionals and what they are cooking up', 0, 0),
(7, 7, 'category', 'We present to you interviews with urban media professionals around the world', 0, 1),
(8, 8, 'category', 'Lists of top media projects we have gathered around the net', 0, 0),
(9, 9, 'category', 'Dozens of videos, designs, and art work for your entertainment', 0, 0),
(14, 14, 'nav_menu', '', 0, 12) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Highlights', 'highlights', 0),
(4, 'Discovery', 'discovery', 0),
(5, 'In The Works', 'intheworks', 0),
(6, 'New Snaps', 'newsnaps', 0),
(7, 'Interviews', 'interviews', 0),
(8, 'Collections', 'collections', 0),
(9, 'The Dump', 'thedump', 0),
(14, 'Menu 1', 'menu-1', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'aioseop_menu_220'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:5:{s:64:"63f4dad04ae604bfde6cbc96e05ea10dfa19520a73237d566d9247ea89f45ae5";a:4:{s:10:"expiration";i:1467000708;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1466827908;}s:64:"afa16ac71cd407a1bd8d83b8819e3cfb78072fe8659735db1b656065eceb5905";a:4:{s:10:"expiration";i:1467064622;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1466891822;}s:64:"178f974aa8ad531ae1be764562176098508e60e2d5cfe3cc23f62eee87624940";a:4:{s:10:"expiration";i:1467073807;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1466901007;}s:64:"be2bd6c1f312d230319525bb4859c69252678a5488c741440ea371c889993df0";a:4:{s:10:"expiration";i:1467136443;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1466963643;}s:64:"41df7d381f834088e68bfc604dcca8bfe7e9fa958ce07d72f21f0918cdc67dd8";a:4:{s:10:"expiration";i:1467141527;s:2:"ip";s:13:"68.42.227.150";s:2:"ua";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17";s:5:"login";i:1466968727;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1466555115'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(20, 1, 'nav_menu_recently_edited', '14') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BVua3SHrhV8w0F15pnaT2qu8UAdwPH0', 'admin', 'vectornpixel@gmail.com', '', '2016-06-19 19:35:52', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

