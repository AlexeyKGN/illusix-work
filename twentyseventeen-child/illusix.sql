-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 20 2018 г., 03:18
-- Версия сервера: 5.7.16-log
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- База данных: `illusix`
--
-- --------------------------------------------------------
--
-- Структура таблицы `wp_commentmeta`
--
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-19 11:31:19', '2018-08-19 08:31:19', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://illusix', 'yes'),
(2, 'home', 'http://illusix', 'yes'),
(3, 'blogname', 'illusix', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alexkurgan19927@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '20', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '20', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:19:\"jetpack/jetpack.php\";i:2;s:23:\"ml-slider/ml-slider.php\";i:3;s:57:\"woocommerce-fixed-quantity/woocommerce-fixed-quantity.php\";i:4;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:5;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
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
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'ru_RU', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_key', 'o7F6/;P>DIr4&AC8MVXkR(-]leBicl7t<H}rSBg<,$N4gmvYIpUuD[-z&&K)xVC}', 'no'),
(109, 'nonce_salt', '4gQxbB.J}i)1]C=}iQg%k]tD^pCr*$bQv-#[iL~0m;]/?SW~;R@cu*aqMtzgZM&N', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'cron', 'a:13:{i:1534724261;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1534724665;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1534725080;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1534734868;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1534753880;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1534753890;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534756381;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534756468;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534756478;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534767268;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534798800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536019200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534669595;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'auth_key', '_ysR[27)$N>R<4`-A}.$[5nqw@y5#@800tx~wp`[{~2aJcsJ1N*=7/E1/!F+l|6D', 'no'),
(126, 'auth_salt', 'im8!/7.^$egO`6<^Xr{4[?x9A,54~H/TU6VD0`x8UA1,EKS(kYdb>W$U038m/;X#', 'no'),
(127, 'logged_in_key', '$p3EkU1/ZFfw&?,{^|En#EX.f+}^tD3,5h2G_8q.ne|Z^e,B^qLae+a,toWr1Zb.', 'no'),
(128, 'logged_in_salt', '2JNpHI5ca9u:Py$ur^Vo!6mwuO~nn3GfOj._El,I{AHcp[r[8P=h/j01c1fnbFft', 'no'),
(131, '_site_transient_timeout_browser_9ff0dcc64a5081b5d3f7f34218bba777', '1535272293', 'no'),
(132, '_site_transient_browser_9ff0dcc64a5081b5d3f7f34218bba777', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"61.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(150, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"alexkurgan19927@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1534667577;}', 'no'),
(153, 'current_theme', 'Twenty Seventeen Child', 'yes'),
(154, 'theme_mods_twentyseventeen-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:24;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(155, 'theme_switched', '', 'yes'),
(157, '_transient_timeout_plugin_slugs', '1534786940', 'no'),
(158, '_transient_plugin_slugs', 'a:8:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:19:\"jetpack/jetpack.php\";i:3;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:4;s:23:\"ml-slider/ml-slider.php\";i:5;s:27:\"woocommerce/woocommerce.php\";i:6;s:57:\"woocommerce-fixed-quantity/woocommerce-fixed-quantity.php\";i:7;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";}', 'no'),
(159, 'recently_activated', 'a:1:{s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:1534700487;}', 'yes'),
(171, 'woocommerce_store_address', 'test', 'yes'),
(172, 'woocommerce_store_address_2', 'test2', 'yes'),
(173, 'woocommerce_store_city', 'Харьков', 'yes'),
(174, 'woocommerce_default_country', 'UA:*', 'yes'),
(175, 'woocommerce_store_postcode', '213213123123', 'yes'),
(176, 'woocommerce_allowed_countries', 'all', 'yes'),
(177, 'woocommerce_all_except_countries', '', 'yes'),
(178, 'woocommerce_specific_allowed_countries', '', 'yes'),
(179, 'woocommerce_ship_to_countries', '', 'yes'),
(180, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(181, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(182, 'woocommerce_calc_taxes', 'no', 'yes'),
(183, 'woocommerce_enable_coupons', 'yes', 'yes'),
(184, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(185, 'woocommerce_currency', 'UAH', 'yes'),
(186, 'woocommerce_currency_pos', 'left', 'yes'),
(187, 'woocommerce_price_thousand_sep', ',', 'yes'),
(188, 'woocommerce_price_decimal_sep', '.', 'yes'),
(189, 'woocommerce_price_num_decimals', '2', 'yes'),
(190, 'woocommerce_shop_page_id', '6', 'yes'),
(191, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(192, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(193, 'woocommerce_weight_unit', 'kg', 'yes'),
(194, 'woocommerce_dimension_unit', 'cm', 'yes'),
(195, 'woocommerce_enable_reviews', 'yes', 'yes'),
(196, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(197, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(198, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(199, 'woocommerce_review_rating_required', 'yes', 'no'),
(200, 'woocommerce_manage_stock', 'yes', 'yes'),
(201, 'woocommerce_hold_stock_minutes', '60', 'no'),
(202, 'woocommerce_notify_low_stock', 'yes', 'no'),
(203, 'woocommerce_notify_no_stock', 'yes', 'no'),
(204, 'woocommerce_stock_email_recipient', 'alexkurgan19927@gmail.com', 'no'),
(205, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(206, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(207, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(208, 'woocommerce_stock_format', '', 'yes'),
(209, 'woocommerce_file_download_method', 'force', 'no'),
(210, 'woocommerce_downloads_require_login', 'no', 'no'),
(211, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(212, 'woocommerce_prices_include_tax', 'no', 'yes'),
(213, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(214, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(215, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(216, 'woocommerce_tax_classes', 'Пониженная ставка\r\nНулевая ставка', 'yes'),
(217, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(218, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(219, 'woocommerce_price_display_suffix', '', 'yes'),
(220, 'woocommerce_tax_total_display', 'itemized', 'no'),
(221, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(222, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(223, 'woocommerce_ship_to_destination', 'billing', 'no'),
(224, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(225, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(226, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(227, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(228, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(229, 'woocommerce_registration_generate_username', 'yes', 'no'),
(230, 'woocommerce_registration_generate_password', 'yes', 'no'),
(231, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(232, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(233, 'woocommerce_registration_privacy_policy_text', 'Ваши личные данные будут использоваться для упрощения вашей работы с сайтом, управления доступом к вашей учётной записи и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(234, 'woocommerce_checkout_privacy_policy_text', 'Ваши личные данные будут использоваться для обработки ваших заказов, упрощения вашей работы с сайтом и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(235, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(236, 'woocommerce_trash_pending_orders', '', 'no'),
(237, 'woocommerce_trash_failed_orders', '', 'no'),
(238, 'woocommerce_trash_cancelled_orders', '', 'no'),
(239, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(240, 'woocommerce_email_from_name', 'illusix', 'no'),
(241, 'woocommerce_email_from_address', 'alexkurgan19927@gmail.com', 'no'),
(242, 'woocommerce_email_header_image', '', 'no'),
(243, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(244, 'woocommerce_email_base_color', '#96588a', 'no'),
(245, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(246, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(247, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(248, 'woocommerce_cart_page_id', '7', 'yes'),
(249, 'woocommerce_checkout_page_id', '8', 'yes'),
(250, 'woocommerce_myaccount_page_id', '9', 'yes'),
(251, 'woocommerce_terms_page_id', '', 'no'),
(252, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(253, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(254, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(255, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(256, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(257, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(258, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(259, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(260, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(261, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(262, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(263, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(264, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(265, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(266, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(267, 'woocommerce_api_enabled', 'no', 'yes'),
(268, 'woocommerce_single_image_width', '600', 'yes'),
(269, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(270, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(271, 'woocommerce_demo_store', 'no', 'no'),
(272, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(273, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(274, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(277, 'default_product_cat', '15', 'yes'),
(280, 'woocommerce_version', '3.4.4', 'yes'),
(281, 'woocommerce_db_version', '3.4.4', 'yes'),
(282, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(283, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(284, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, '_transient_timeout_external_ip_address_127.0.0.1', '1535274875', 'no'),
(301, '_transient_external_ip_address_127.0.0.1', '178.150.171.75', 'no'),
(305, 'woocommerce_product_type', 'both', 'yes'),
(306, 'woocommerce_sell_in_person', '1', 'yes'),
(307, 'woocommerce_allow_tracking', 'yes', 'yes'),
(309, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:25:\"alexkurgan19927@gmail.com\";}', 'yes'),
(310, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(311, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(312, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(313, 'wc_ppec_version', '1.6.3', 'yes'),
(316, '_transient_timeout__woocommerce_helper_updates', '1534713355', 'no'),
(317, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1534670155;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(319, '_transient_shipping-transient-version', '1534670181', 'yes'),
(320, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:25:\"Единая ставка\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"11\";}', 'yes'),
(321, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:25:\"Единая ставка\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"11\";}', 'yes'),
(322, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(324, 'mailchimp_woocommerce_version', '2.1.9', 'no'),
(325, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(327, 'mailchimp-woocommerce-store_id', '5b79357f089ed', 'yes'),
(329, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(331, '_transient_timeout_wc_setup_activated', '1534670816', 'no'),
(332, '_transient_wc_setup_activated', 'yes', 'no'),
(333, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(336, 'jetpack_activated', '1', 'yes'),
(337, '_transient_timeout_activated_jetpack', '1534670268', 'no'),
(338, '_transient_activated_jetpack', '1', 'no'),
(339, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(340, 'jetpack_sync_settings_disable', '0', 'yes'),
(341, '_transient_timeout_jetpack_file_data_6.4.2', '1537175862', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(342, '_transient_jetpack_file_data_6.4.2', 'a:58:{s:32:\"c22c48d7cfe9d38dff2864cfea64636a\";a:15:{s:4:\"name\";s:20:\"Spelling and Grammar\";s:11:\"description\";s:39:\"Check your spelling, style, and grammar\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"6\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:115:\"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"fb5c4814ddc3946a3f22cc838fcb2af3\";a:15:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:14:\"jumpstart_desc\";s:79:\"Brings your photos and images to life as full-size, easily navigable galleries.\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5813eda53235a9a81a69b1f6a4a15db6\";a:15:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7ef4ca32a1c84fc10ef50c8293cae5df\";a:15:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:80:\"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c5331bfc2648dfeeebe486736d79a72c\";a:15:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:57:\"Insert a customizable contact form anywhere on your site.\";s:14:\"jumpstart_desc\";s:111:\"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:18:\"Writing, Jumpstart\";s:25:\"additional_search_queries\";s:44:\"contact, form, grunion, feedback, submission\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"707c77d2e8cb0c12d094e5423c8beda8\";a:15:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cd499b1678cfe3aabfc8ca0d3eb7e8b9\";a:15:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:53:\"Tweak your site’s CSS without modifying your theme.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d266d6546645f42cf52a66387699c50\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d436678d5e010ac6b0f157aa1021554\";a:15:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c9ff765b826940496a65c0f927a594a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"092b94702bb483a5472578283c2103d6\";a:15:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"6bd77e09440df2b63044cf8cb7963773\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ee1a10e2ef5733ab19eb1eb552d5ecb3\";a:15:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:131:\"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"284c08538b0bdc266315b2cf80b9c044\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0ce5c3ac630dea9f41215e48bb0f52f3\";a:15:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"87da2858d4f9cadb6a44fdcf32e8d2b5\";a:15:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"004962cb7cb9ec2b64769ac4df509217\";a:15:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:57:\"Use LaTeX markup for complex equations and other geekery.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7f408184bee8850d439c01322867e72c\";a:15:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:16:\"Lazy load images\";s:14:\"jumpstart_desc\";s:164:\"Lazy-loading images improve your site\'s speed and create a smoother viewing experience. Images will load as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:33:\"mobile, theme, performance, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ad914b747f382ae918ed3b37077d4a1\";a:15:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b347263e3470979442ebf0514e41e893\";a:15:{s:4:\"name\";s:6:\"Manage\";s:11:\"description\";s:54:\"Manage all of your sites from a centralized dashboard.\";s:14:\"jumpstart_desc\";s:151:\"Helps you remotely manage plugins, turn on automated updates, and more from <a href=\"https://wordpress.com/plugins/\" target=\"_blank\">wordpress.com</a>.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"3\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:35:\"Centralized Management, Recommended\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:26:\"manage, management, remote\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"589982245aa6f495b72ab7cf57a1a48e\";a:15:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3bec8e063d637bc285018241b783725\";a:15:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6ab1c3e749bcfba2dedbaebe6c9fc614\";a:15:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b7be7da643ec641511839ecc6afb6def\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d54f83ff429a8a37ace796de98459411\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0f8b373fa12c825162c0b0bc20b8bbdd\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d7b0750cb34a4a72a44fa67790de639\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f07fde8db279ffb0116c727df72c6374\";a:15:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:14:\"jumpstart_desc\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:37:\"monitor, uptime, downtime, monitoring\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"136a5445a49150db75472862f3d3aefb\";a:15:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"395d8ae651afabb54d1e98440674b384\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4484ac68583fbbaab0ef698cdc986950\";a:15:{s:4:\"name\";s:6:\"Photon\";s:11:\"description\";s:29:\"Serve images from our servers\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:38:\"photon, image, cdn, performance, speed\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6f30193afa5b1360e3fa2676501b5e3a\";a:15:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"3e9f8bd3755d92e8e5d06966a957beb8\";a:15:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:41:\"Block suspicious-looking sign in activity\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:65:\"security, secure, protection, botnet, brute force, protect, login\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0cacc8ab2145ad11cb54d181a98aa550\";a:15:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:27:\"Automated social marketing.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:107:\"facebook, twitter, google+, googleplus, google, path, tumblr, linkedin, social, tweet, connections, sharing\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a528c2f803a92c5c2effa67cd33ab33a\";a:15:{s:4:\"name\";s:20:\"Progressive Web Apps\";s:11:\"description\";s:85:\"Speed up and improve the reliability of your site using the latest in web technology.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"18\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:26:\"manifest, pwa, progressive\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"329b8efce059081d46936ece0c6736b3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5fdd42d482712fbdaf000b28ea7adce9\";a:15:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:64:\"Increase page views by showing related content to your visitors.\";s:14:\"jumpstart_desc\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:22:\"related, related posts\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c5096ef610018e98a8bcccfbea4471e\";a:15:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:41:\"Enhanced search, powered by Elasticsearch\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:6:\"search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"0d81dd7df3ad2f245e84fd4fb66bf829\";a:15:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"32aaa676b3b6c9f3ef22430e1e0bca24\";a:15:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:37:\"Allow visitors to share your content.\";s:14:\"jumpstart_desc\";s:116:\"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:141:\"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"948472b453cda59b38bb7c37af889af0\";a:15:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:50:\"Embed media from popular sites without any coding.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d00a6ca0a79fbe893275aaf6ed6ae42\";a:15:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:54:\"Create short and simple links for all posts and pages.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"372e711395f23c466e04d4fd07f73099\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ea687cec293289a2a3e5f0459e79768\";a:15:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2fe9dc2c7389d4f0825a0b23bc8b19d1\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e7cf8a7e0f151ccf7cbdc6d8f118f316\";a:15:{s:4:\"name\";s:14:\"Single Sign On\";s:11:\"description\";s:62:\"Allow users to log into this site using WordPress.com accounts\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"34fb073ed896af853ed48bd5739240cb\";a:15:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8de0dfff24a17cf0fa0011dfc691a3f3\";a:15:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:87:\"Allow users to subscribe to your posts and comments and receive notifications via email\";s:14:\"jumpstart_desc\";s:126:\"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4744f348db095538d3edcacb0ed99c89\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d89db0d934b39f86065ff58e73594070\";a:15:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"01987a7ba5e19786f2992501add8181a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"20459cc462babfc5a82adf6b34f6e8b1\";a:15:{s:4:\"name\";s:12:\"Data Backups\";s:11:\"description\";s:54:\"Off-site backups, security scans, and automatic fixes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:28:\"vaultpress, backup, security\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"836245eb0a8f0c5272542305a88940c1\";a:15:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e94397a5c47c1be995eff613e65a674f\";a:15:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:27:\"Fast, ad-free video hosting\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:25:\"video, videos, videopress\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"032cd76e08467c732ccb026efda0c9cd\";a:15:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9b3e84beedf2e96f1ac5dd6498d2b1aa\";a:15:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:54:\"Add images, Twitter streams, and more to your sidebar.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7724fd9600745cf93e37cc09282e1a37\";a:15:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}s:32:\"5b8f8e5b5a1887e3c0393cb78d5143a3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no'),
(343, 'jetpack_available_modules', 'a:1:{s:5:\"6.4.2\";a:43:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(344, 'jetpack_options', 'a:4:{s:7:\"version\";s:16:\"6.4.2:1534670262\";s:11:\"old_version\";s:16:\"6.4.2:1534670262\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:-12;}', 'yes'),
(345, 'jetpack_tos_agreed', '1', 'yes'),
(346, 'jetpack_secrets', 'a:1:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"ymTTGZo2SUbqa8GTiZh0MCxkZYEbgByO\";s:8:\"secret_2\";s:32:\"hrKrNckkCjp57M9enUXCeKbMXAvDsdG9\";s:3:\"exp\";i:1534670863;}}', 'no'),
(348, 'jetpack_testimonial', '0', 'yes'),
(350, 'do_activate', '0', 'yes'),
(351, '_transient_timeout_jetpack_https_test', '1534756667', 'no'),
(352, '_transient_jetpack_https_test', '1', 'no'),
(353, '_transient_timeout_jetpack_https_test_message', '1534756667', 'no'),
(354, '_transient_jetpack_https_test_message', '', 'no'),
(355, '_transient_product_query-transient-version', '1534719989', 'yes'),
(364, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:8:\"The Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(372, '_transient_product-transient-version', '1534688564', 'yes'),
(408, '_transient_timeout_wc_product_loope6201534674431', '1537266722', 'no'),
(409, '_transient_wc_product_loope6201534674431', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(411, 'product_cat_children', 'a:0:{}', 'yes'),
(540, '_transient_timeout_wc_product_children_18', '1537269946', 'no'),
(541, '_transient_wc_product_children_18', 'a:2:{s:3:\"all\";a:1:{i:0;i:20;}s:7:\"visible\";a:1:{i:0;i:20;}}', 'no'),
(542, '_transient_timeout_wc_var_prices_18', '1537315135', 'no'),
(543, '_transient_wc_var_prices_18', '{\"version\":\"1534688564\",\"f8103910b9c5fe51f47c2240921702b0\":{\"price\":{\"20\":\"433.00\"},\"regular_price\":{\"20\":\"433.00\"},\"sale_price\":{\"20\":\"433.00\"}},\"e37c8f175701dfdb7d66d611fff492e8\":{\"price\":{\"20\":\"866.00\"},\"regular_price\":{\"20\":\"866.00\"},\"sale_price\":{\"20\":\"866.00\"}}}', 'no'),
(546, '_transient_timeout_wc_child_has_weight_18', '1537269956', 'no'),
(547, '_transient_wc_child_has_weight_18', '', 'no'),
(548, '_transient_timeout_wc_child_has_dimensions_18', '1537269956', 'no'),
(549, '_transient_wc_child_has_dimensions_18', '', 'no'),
(550, '_transient_timeout_wc_related_18', '1534764356', 'no'),
(551, '_transient_wc_related_18', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=18\";a:2:{i:0;s:2:\"11\";i:1;s:2:\"15\";}}', 'no'),
(580, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(687, '_transient_timeout_wc_product_children_35', '1537272338', 'no'),
(688, '_transient_wc_product_children_35', 'a:2:{s:3:\"all\";a:4:{i:0;i:50;i:1;i:51;i:2;i:52;i:3;i:53;}s:7:\"visible\";a:4:{i:0;i:50;i:1;i:51;i:2;i:52;i:3;i:53;}}', 'no'),
(689, '_transient_timeout_wc_var_prices_35', '1537315136', 'no'),
(690, '_transient_wc_var_prices_35', '{\"version\":\"1534688564\",\"f8103910b9c5fe51f47c2240921702b0\":{\"price\":{\"50\":\"200.00\",\"51\":\"210.00\",\"52\":\"195.00\",\"53\":\"195.00\"},\"regular_price\":{\"50\":\"200.00\",\"51\":\"210.00\",\"52\":\"210.00\",\"53\":\"210.00\"},\"sale_price\":{\"50\":\"200.00\",\"51\":\"210.00\",\"52\":\"195.00\",\"53\":\"195.00\"}},\"e37c8f175701dfdb7d66d611fff492e8\":{\"price\":{\"50\":\"400.00\",\"51\":\"420.00\",\"52\":\"390.00\",\"53\":\"390.00\"},\"regular_price\":{\"50\":\"400.00\",\"51\":\"420.00\",\"52\":\"420.00\",\"53\":\"420.00\"},\"sale_price\":{\"50\":\"400.00\",\"51\":\"420.00\",\"52\":\"420.00\",\"53\":\"420.00\"}}}', 'no'),
(720, '_transient_timeout_wc_product_children_15', '1537272461', 'no'),
(721, '_transient_wc_product_children_15', 'a:2:{s:3:\"all\";a:1:{i:0;i:17;}s:7:\"visible\";a:1:{i:0;i:17;}}', 'no'),
(722, '_transient_timeout_wc_var_prices_15', '1537315135', 'no'),
(723, '_transient_wc_var_prices_15', '{\"version\":\"1534688564\",\"f8103910b9c5fe51f47c2240921702b0\":{\"price\":{\"17\":\"789.00\"},\"regular_price\":{\"17\":\"990.00\"},\"sale_price\":{\"17\":\"789.00\"}},\"e37c8f175701dfdb7d66d611fff492e8\":{\"price\":{\"17\":\"1578.00\"},\"regular_price\":{\"17\":\"1980.00\"},\"sale_price\":{\"17\":\"1980.00\"}}}', 'no'),
(769, '_transient_timeout_wc_product_children_54', '1537272792', 'no'),
(770, '_transient_wc_product_children_54', 'a:2:{s:3:\"all\";a:4:{i:0;i:55;i:1;i:56;i:2;i:57;i:3;i:58;}s:7:\"visible\";a:4:{i:0;i:55;i:1;i:56;i:2;i:57;i:3;i:58;}}', 'no'),
(771, '_transient_timeout_wc_var_prices_54', '1537315136', 'no'),
(772, '_transient_wc_var_prices_54', '{\"version\":\"1534688564\",\"f8103910b9c5fe51f47c2240921702b0\":{\"price\":{\"55\":\"250.00\",\"56\":\"250.00\",\"57\":\"200.00\",\"58\":\"200.00\"},\"regular_price\":{\"55\":\"250.00\",\"56\":\"250.00\",\"57\":\"200.00\",\"58\":\"200.00\"},\"sale_price\":{\"55\":\"250.00\",\"56\":\"250.00\",\"57\":\"200.00\",\"58\":\"200.00\"}},\"e37c8f175701dfdb7d66d611fff492e8\":{\"price\":{\"55\":\"500.00\",\"56\":\"500.00\",\"57\":\"400.00\",\"58\":\"400.00\"},\"regular_price\":{\"55\":\"500.00\",\"56\":\"500.00\",\"57\":\"400.00\",\"58\":\"400.00\"},\"sale_price\":{\"55\":\"500.00\",\"56\":\"500.00\",\"57\":\"400.00\",\"58\":\"400.00\"}}}', 'no'),
(775, '_transient_timeout_wc_child_has_weight_54', '1537272810', 'no'),
(776, '_transient_wc_child_has_weight_54', '', 'no'),
(777, '_transient_timeout_wc_child_has_dimensions_54', '1537272810', 'no'),
(778, '_transient_wc_child_has_dimensions_54', '', 'no'),
(779, '_transient_timeout_wc_related_54', '1534767210', 'no'),
(780, '_transient_wc_related_54', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=54\";a:5:{i:0;s:2:\"11\";i:1;s:2:\"15\";i:2;s:2:\"18\";i:3;s:2:\"21\";i:4;s:2:\"35\";}}', 'no'),
(806, '_transient_timeout_wc_product_children_60', '1537273323', 'no'),
(807, '_transient_wc_product_children_60', 'a:2:{s:3:\"all\";a:12:{i:0;i:61;i:1;i:62;i:2;i:63;i:3;i:64;i:4;i:65;i:5;i:66;i:6;i:67;i:7;i:68;i:8;i:69;i:9;i:70;i:10;i:71;i:11;i:72;}s:7:\"visible\";a:12:{i:0;i:61;i:1;i:62;i:2;i:63;i:3;i:64;i:4;i:65;i:5;i:66;i:6;i:67;i:7;i:68;i:8;i:69;i:9;i:70;i:10;i:71;i:11;i:72;}}', 'no'),
(808, '_transient_timeout_wc_var_prices_60', '1537315136', 'no'),
(809, '_transient_wc_var_prices_60', '{\"version\":\"1534688564\",\"f8103910b9c5fe51f47c2240921702b0\":{\"price\":{\"61\":\"100.00\",\"62\":\"100.00\",\"63\":\"100.00\",\"64\":\"100.00\",\"65\":\"150.00\",\"66\":\"150.00\",\"67\":\"130.00\",\"68\":\"150.00\",\"69\":\"195.00\",\"70\":\"200.00\",\"71\":\"200.00\",\"72\":\"195.00\"},\"regular_price\":{\"61\":\"100.00\",\"62\":\"100.00\",\"63\":\"100.00\",\"64\":\"100.00\",\"65\":\"150.00\",\"66\":\"150.00\",\"67\":\"150.00\",\"68\":\"150.00\",\"69\":\"200.00\",\"70\":\"200.00\",\"71\":\"200.00\",\"72\":\"225.00\"},\"sale_price\":{\"61\":\"100.00\",\"62\":\"100.00\",\"63\":\"100.00\",\"64\":\"100.00\",\"65\":\"150.00\",\"66\":\"150.00\",\"67\":\"130.00\",\"68\":\"150.00\",\"69\":\"195.00\",\"70\":\"200.00\",\"71\":\"200.00\",\"72\":\"195.00\"}},\"e37c8f175701dfdb7d66d611fff492e8\":{\"price\":{\"61\":\"200.00\",\"62\":\"200.00\",\"63\":\"200.00\",\"64\":\"200.00\",\"65\":\"300.00\",\"66\":\"300.00\",\"67\":\"260.00\",\"68\":\"300.00\",\"69\":\"390.00\",\"70\":\"400.00\",\"71\":\"400.00\",\"72\":\"390.00\"},\"regular_price\":{\"61\":\"200.00\",\"62\":\"200.00\",\"63\":\"200.00\",\"64\":\"200.00\",\"65\":\"300.00\",\"66\":\"300.00\",\"67\":\"300.00\",\"68\":\"300.00\",\"69\":\"400.00\",\"70\":\"400.00\",\"71\":\"400.00\",\"72\":\"450.00\"},\"sale_price\":{\"61\":\"200.00\",\"62\":\"200.00\",\"63\":\"200.00\",\"64\":\"200.00\",\"65\":\"300.00\",\"66\":\"300.00\",\"67\":\"300.00\",\"68\":\"300.00\",\"69\":\"400.00\",\"70\":\"400.00\",\"71\":\"400.00\",\"72\":\"450.00\"}}}', 'no'),
(866, '_transient_timeout_wc_product_children_76', '1537273955', 'no'),
(867, '_transient_wc_product_children_76', 'a:2:{s:3:\"all\";a:4:{i:0;i:77;i:1;i:78;i:2;i:79;i:3;i:80;}s:7:\"visible\";a:4:{i:0;i:77;i:1;i:78;i:2;i:79;i:3;i:80;}}', 'no'),
(868, '_transient_timeout_wc_var_prices_76', '1537315135', 'no'),
(869, '_transient_wc_var_prices_76', '{\"version\":\"1534688564\",\"f8103910b9c5fe51f47c2240921702b0\":{\"price\":{\"77\":\"450.00\",\"78\":\"450.00\",\"79\":\"400.00\",\"80\":\"400.00\"},\"regular_price\":{\"77\":\"450.00\",\"78\":\"450.00\",\"79\":\"400.00\",\"80\":\"400.00\"},\"sale_price\":{\"77\":\"450.00\",\"78\":\"450.00\",\"79\":\"400.00\",\"80\":\"400.00\"}},\"e37c8f175701dfdb7d66d611fff492e8\":{\"price\":{\"77\":\"900.00\",\"78\":\"900.00\",\"79\":\"800.00\",\"80\":\"800.00\"},\"regular_price\":{\"77\":\"900.00\",\"78\":\"900.00\",\"79\":\"800.00\",\"80\":\"800.00\"},\"sale_price\":{\"77\":\"900.00\",\"78\":\"900.00\",\"79\":\"800.00\",\"80\":\"800.00\"}}}', 'no'),
(903, '_transient_timeout_wc_product_children_74', '1537274134', 'no'),
(904, '_transient_wc_product_children_74', 'a:2:{s:3:\"all\";a:4:{i:0;i:81;i:1;i:82;i:2;i:83;i:3;i:84;}s:7:\"visible\";a:4:{i:0;i:81;i:1;i:82;i:2;i:83;i:3;i:84;}}', 'no'),
(905, '_transient_timeout_wc_var_prices_74', '1537315136', 'no'),
(906, '_transient_wc_var_prices_74', '{\"version\":\"1534688564\",\"f8103910b9c5fe51f47c2240921702b0\":{\"price\":{\"81\":\"110.00\",\"82\":\"110.00\",\"83\":\"99.00\",\"84\":\"99.00\"},\"regular_price\":{\"81\":\"110.00\",\"82\":\"110.00\",\"83\":\"99.00\",\"84\":\"99.00\"},\"sale_price\":{\"81\":\"110.00\",\"82\":\"110.00\",\"83\":\"99.00\",\"84\":\"99.00\"}},\"e37c8f175701dfdb7d66d611fff492e8\":{\"price\":{\"81\":\"220.00\",\"82\":\"220.00\",\"83\":\"198.00\",\"84\":\"198.00\"},\"regular_price\":{\"81\":\"220.00\",\"82\":\"220.00\",\"83\":\"198.00\",\"84\":\"198.00\"},\"sale_price\":{\"81\":\"220.00\",\"82\":\"220.00\",\"83\":\"198.00\",\"84\":\"198.00\"}}}', 'no'),
(940, '_transient_timeout_wc_product_children_73', '1537274343', 'no'),
(941, '_transient_wc_product_children_73', 'a:2:{s:3:\"all\";a:4:{i:0;i:85;i:1;i:86;i:2;i:87;i:3;i:88;}s:7:\"visible\";a:4:{i:0;i:85;i:1;i:86;i:2;i:87;i:3;i:88;}}', 'no'),
(942, '_transient_timeout_wc_var_prices_73', '1537315135', 'no'),
(943, '_transient_wc_var_prices_73', '{\"version\":\"1534688564\",\"f8103910b9c5fe51f47c2240921702b0\":{\"price\":{\"85\":\"1225.00\",\"86\":\"1225.00\",\"87\":\"900.00\",\"88\":\"900.00\"},\"regular_price\":{\"85\":\"1450.00\",\"86\":\"1450.00\",\"87\":\"900.00\",\"88\":\"900.00\"},\"sale_price\":{\"85\":\"1225.00\",\"86\":\"1225.00\",\"87\":\"900.00\",\"88\":\"900.00\"}},\"e37c8f175701dfdb7d66d611fff492e8\":{\"price\":{\"85\":\"2450.00\",\"86\":\"2450.00\",\"87\":\"1800.00\",\"88\":\"1800.00\"},\"regular_price\":{\"85\":\"2900.00\",\"86\":\"2900.00\",\"87\":\"1800.00\",\"88\":\"1800.00\"},\"sale_price\":{\"85\":\"2900.00\",\"86\":\"2900.00\",\"87\":\"1800.00\",\"88\":\"1800.00\"}}}', 'no'),
(955, '_transient_timeout_wc_term_counts', '1537275791', 'no'),
(956, '_transient_wc_term_counts', 'a:1:{i:15;s:2:\"10\";}', 'no'),
(957, '_transient_timeout_wc_child_has_weight_15', '1537275791', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(958, '_transient_wc_child_has_weight_15', '', 'no'),
(959, '_transient_timeout_wc_child_has_dimensions_15', '1537275791', 'no'),
(960, '_transient_wc_child_has_dimensions_15', '', 'no'),
(961, '_transient_timeout_wc_related_15', '1534770192', 'no'),
(962, '_transient_wc_related_15', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=15\";a:9:{i:0;s:2:\"11\";i:1;s:2:\"18\";i:2;s:2:\"21\";i:3;s:2:\"35\";i:4;s:2:\"54\";i:5;s:2:\"60\";i:6;s:2:\"73\";i:7;s:2:\"74\";i:8;s:2:\"76\";}}', 'no'),
(993, '_transient_timeout_wc_product_children_21', '1537280444', 'no'),
(994, '_transient_wc_product_children_21', 'a:2:{s:3:\"all\";a:12:{i:0;i:22;i:1;i:23;i:2;i:24;i:3;i:25;i:4;i:26;i:5;i:27;i:6;i:28;i:7;i:29;i:8;i:30;i:9;i:31;i:10;i:32;i:11;i:33;}s:7:\"visible\";a:12:{i:0;i:22;i:1;i:23;i:2;i:24;i:3;i:25;i:4;i:26;i:5;i:27;i:6;i:28;i:7;i:29;i:8;i:30;i:9;i:31;i:10;i:32;i:11;i:33;}}', 'no'),
(995, '_transient_timeout_wc_var_prices_21', '1537315135', 'no'),
(996, '_transient_wc_var_prices_21', '{\"version\":\"1534688564\",\"f8103910b9c5fe51f47c2240921702b0\":{\"price\":{\"22\":\"222.00\",\"23\":\"322.00\",\"24\":\"233.00\",\"25\":\"233.00\",\"26\":\"256.00\",\"27\":\"276.00\",\"28\":\"278.00\",\"29\":\"300.00\",\"30\":\"309.00\",\"31\":\"266.00\",\"32\":\"225.00\",\"33\":\"222.00\"},\"regular_price\":{\"22\":\"400.00\",\"23\":\"322.00\",\"24\":\"233.00\",\"25\":\"233.00\",\"26\":\"256.00\",\"27\":\"276.00\",\"28\":\"278.00\",\"29\":\"300.00\",\"30\":\"309.00\",\"31\":\"266.00\",\"32\":\"225.00\",\"33\":\"222.00\"},\"sale_price\":{\"22\":\"222.00\",\"23\":\"322.00\",\"24\":\"233.00\",\"25\":\"233.00\",\"26\":\"256.00\",\"27\":\"276.00\",\"28\":\"278.00\",\"29\":\"300.00\",\"30\":\"309.00\",\"31\":\"266.00\",\"32\":\"225.00\",\"33\":\"222.00\"}},\"e37c8f175701dfdb7d66d611fff492e8\":{\"price\":{\"22\":\"444.00\",\"23\":\"644.00\",\"24\":\"466.00\",\"25\":\"466.00\",\"26\":\"512.00\",\"27\":\"552.00\",\"28\":\"556.00\",\"29\":\"600.00\",\"30\":\"618.00\",\"31\":\"532.00\",\"32\":\"450.00\",\"33\":\"444.00\"},\"regular_price\":{\"22\":\"800.00\",\"23\":\"644.00\",\"24\":\"466.00\",\"25\":\"466.00\",\"26\":\"512.00\",\"27\":\"552.00\",\"28\":\"556.00\",\"29\":\"600.00\",\"30\":\"618.00\",\"31\":\"532.00\",\"32\":\"450.00\",\"33\":\"444.00\"},\"sale_price\":{\"22\":\"800.00\",\"23\":\"644.00\",\"24\":\"466.00\",\"25\":\"466.00\",\"26\":\"512.00\",\"27\":\"552.00\",\"28\":\"556.00\",\"29\":\"600.00\",\"30\":\"618.00\",\"31\":\"532.00\",\"32\":\"450.00\",\"33\":\"444.00\"}}}', 'no'),
(1002, '_transient_timeout_wc_product_children_11', '1537280571', 'no'),
(1003, '_transient_wc_product_children_11', 'a:2:{s:3:\"all\";a:1:{i:0;i:13;}s:7:\"visible\";a:1:{i:0;i:13;}}', 'no'),
(1004, '_transient_timeout_wc_var_prices_11', '1537315136', 'no'),
(1005, '_transient_wc_var_prices_11', '{\"version\":\"1534688564\",\"f8103910b9c5fe51f47c2240921702b0\":{\"price\":{\"13\":\"225.00\"},\"regular_price\":{\"13\":\"345.00\"},\"sale_price\":{\"13\":\"225.00\"}},\"e37c8f175701dfdb7d66d611fff492e8\":{\"price\":{\"13\":\"450.00\"},\"regular_price\":{\"13\":\"690.00\"},\"sale_price\":{\"13\":\"690.00\"}}}', 'no'),
(1006, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1022, '_transient_timeout_woocommerce_system_status_wp_version_check', '1534781826', 'no'),
(1023, '_transient_woocommerce_system_status_wp_version_check', '4.9.8', 'no'),
(1037, '_transient_timeout_wc_product_loop42d91534688564', '1537289204', 'no'),
(1038, '_transient_wc_product_loop42d91534688564', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:76;i:1;i:74;i:2;i:73;i:3;i:60;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(1041, 'woocommerce_default_catalog_orderby', 'price-desc', 'yes'),
(1042, 'woocommerce_maybe_regenerate_images_hash', '494bdb3708d5a8a5b3be00abab75910e', 'yes'),
(1056, '_transient_timeout_wc_shipping_method_count_1_1534670181', '1537289823', 'no'),
(1057, '_transient_wc_shipping_method_count_1_1534670181', '2', 'no'),
(1064, '_transient_timeout_wc_product_loopc8c31534688564', '1537290198', 'no'),
(1065, '_transient_wc_product_loopc8c31534688564', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:76;i:1;i:74;i:2;i:73;i:3;i:60;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(1066, '_transient_timeout_wc_product_loopc80d1534688564', '1537290490', 'no'),
(1067, '_transient_wc_product_loopc80d1534688564', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:73;i:1;i:15;i:2;i:76;i:3;i:18;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(1068, '_transient_timeout_wc_product_loop3d7d1534688564', '1537291045', 'no'),
(1069, '_transient_wc_product_loop3d7d1534688564', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:74;i:1;i:60;i:2;i:35;i:3;i:54;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(1070, '_transient_timeout_wc_product_loop3b791534688564', '1537291072', 'no'),
(1071, '_transient_wc_product_loop3b791534688564', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:11;i:1;i:15;i:2;i:18;i:3;i:21;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(1073, '_transient_timeout_wc_product_loop1a551534688564', '1537291223', 'no'),
(1074, '_transient_wc_product_loop1a551534688564', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:11;i:1;i:15;i:2;i:18;i:3;i:21;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(1079, '_transient_timeout_wc_product_loop022b1534688564', '1537291418', 'no'),
(1080, '_transient_wc_product_loop022b1534688564', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:10:{i:0;i:11;i:1;i:15;i:2;i:18;i:3;i:21;i:4;i:35;i:5;i:54;i:6;i:60;i:7;i:73;i:8;i:74;i:9;i:76;}s:5:\"total\";i:10;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:10;s:12:\"current_page\";i:1;}', 'no'),
(1081, '_transient_timeout_wc_product_loop3ac01534688564', '1537291439', 'no'),
(1082, '_transient_wc_product_loop3ac01534688564', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:10:{i:0;i:74;i:1;i:60;i:2;i:35;i:3;i:54;i:4;i:21;i:5;i:11;i:6;i:76;i:7;i:18;i:8;i:15;i:9;i:73;}s:5:\"total\";i:10;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:10;s:12:\"current_page\";i:1;}', 'no'),
(1083, '_transient_timeout_wc_product_loop16981534688564', '1537291780', 'no'),
(1084, '_transient_wc_product_loop16981534688564', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:10:{i:0;i:76;i:1;i:74;i:2;i:73;i:3;i:60;i:4;i:54;i:5;i:35;i:6;i:21;i:7;i:18;i:8;i:15;i:9;i:11;}s:5:\"total\";i:10;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:10;s:12:\"current_page\";i:1;}', 'no'),
(1086, '_transient_timeout_wc_child_has_weight_60', '1537292222', 'no'),
(1087, '_transient_wc_child_has_weight_60', '', 'no'),
(1088, '_transient_timeout_wc_child_has_dimensions_60', '1537292222', 'no'),
(1089, '_transient_wc_child_has_dimensions_60', '', 'no'),
(1090, '_transient_timeout_wc_related_60', '1534786623', 'no'),
(1091, '_transient_wc_related_60', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=60\";a:9:{i:0;s:2:\"11\";i:1;s:2:\"15\";i:2;s:2:\"18\";i:3;s:2:\"21\";i:4;s:2:\"35\";i:5;s:2:\"54\";i:6;s:2:\"73\";i:7;s:2:\"74\";i:8;s:2:\"76\";}}', 'no'),
(1096, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1534711168', 'no'),
(1097, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4493;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2940;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2580;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2447;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1882;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1673;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1670;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1458;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1405;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1398;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1392;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1328;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1284;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1237;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1111;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1070;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1033;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1030;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:919;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:888;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:834;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:811;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:806;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:729;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:703;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:695;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:682;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:672;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:665;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:659;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:658;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:644;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:642;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:617;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:613;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:610;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:607;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:600;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:594;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:573;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:550;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:544;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:543;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:530;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:523;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:513;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:513;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:513;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:506;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:494;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:490;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:490;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:484;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:480;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:479;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:459;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:457;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:452;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:441;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:439;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:436;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:422;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:419;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:416;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:414;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:414;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:408;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:389;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:388;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:372;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:371;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:371;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:366;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:362;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:358;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:358;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:350;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:348;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:346;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:344;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:344;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:339;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:338;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:334;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:329;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:325;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:312;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:309;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:307;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:303;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:303;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:302;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:301;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:299;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:298;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:296;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:290;}}', 'no'),
(1099, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1534710699;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(1102, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1103, 'ms_hide_all_ads_until', '1535910152', 'yes'),
(1104, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(1105, 'ml-slider_children', 'a:0:{}', 'yes'),
(1106, 'metaslider_tour_cancelled_on', 'step_edit_settings', 'yes'),
(1125, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1135, '_transient_timeout_wc_products_onsale', '1537302626', 'no'),
(1136, '_transient_wc_products_onsale', 'a:16:{i:0;i:13;i:1;i:17;i:2;i:22;i:3;i:52;i:4;i:53;i:5;i:67;i:6;i:69;i:7;i:72;i:8;i:85;i:9;i:86;i:10;i:11;i:11;i:15;i:12;i:21;i:13;i:35;i:15;i:60;i:18;i:73;}', 'no'),
(1139, '_site_transient_timeout_theme_roots', '1534712502', 'no'),
(1140, '_site_transient_theme_roots', 'a:4:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:21:\"twentyseventeen-child\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1141, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1534710704;s:7:\"checked\";a:4:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:21:\"twentyseventeen-child\";s:3:\"1.1\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1142, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1534710706;s:7:\"checked\";a:8:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";s:19:\"jetpack/jetpack.php\";s:5:\"6.4.2\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.1.9\";s:23:\"ml-slider/ml-slider.php\";s:5:\"3.8.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.4\";s:57:\"woocommerce-fixed-quantity/woocommerce-fixed-quantity.php\";s:5:\"1.2.2\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.6.3\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"6.4.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.6.4.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.1.9\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1557817\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1557817\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.8.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.8.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"woocommerce-fixed-quantity/woocommerce-fixed-quantity.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-fixed-quantity\";s:4:\"slug\";s:26:\"woocommerce-fixed-quantity\";s:6:\"plugin\";s:57:\"woocommerce-fixed-quantity/woocommerce-fixed-quantity.php\";s:11:\"new_version\";s:5:\"1.2.2\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-fixed-quantity/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woocommerce-fixed-quantity.1.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-fixed-quantity/assets/icon-256x256.png?rev=1676754\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-fixed-quantity/assets/icon-128x128.png?rev=1676754\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-fixed-quantity/assets/banner-1544x500.png?rev=1676754\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-fixed-quantity/assets/banner-772x250.png?rev=1676754\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1900204\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1900204\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1143, '_transient_timeout_wc_product_loop373e1534688564', '1537303745', 'no'),
(1144, '_transient_wc_product_loop373e1534688564', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:6:{i:0;i:11;i:1;i:15;i:2;i:21;i:3;i:35;i:4;i:60;i:5;i:73;}s:5:\"total\";i:6;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(1146, '_transient_timeout_wc_report_sales_by_date', '1534805465', 'no'),
(1147, '_transient_wc_report_sales_by_date', 'a:24:{s:32:\"6f849998950a82c8f3187c97e6bb7497\";a:0:{}s:32:\"7e5e2314ad21bae5399d5e8fb3510929\";a:0:{}s:32:\"ead5e21ea24c102a02e4014b5e618d87\";a:0:{}s:32:\"491a9a59e24d3c8ad764ef0411cd6cff\";N;s:32:\"dd9e338901e9c97c6e0a90d607a24b45\";a:0:{}s:32:\"fdc4d555e39c41e081e53ec349c26ffd\";a:0:{}s:32:\"0e547f47211eba09066b68357a4c7d47\";a:0:{}s:32:\"3ff5e37146439a707b5560687816e966\";a:0:{}s:32:\"d072078a5176acccf28b4e1970be1f7f\";a:0:{}s:32:\"c323091b44fc2a837d12c42a381f9b85\";a:0:{}s:32:\"5986decc6d96d75b231edd1bb3e15335\";a:0:{}s:32:\"700246ce41da27327b0cc1bebe760078\";N;s:32:\"b044a85234823d8f26e1e253e421fbd4\";a:0:{}s:32:\"0bc988342345bd65c35527fda9ed6b66\";a:0:{}s:32:\"aa93432cd474975fffdcdf5a7233b041\";a:0:{}s:32:\"9f7df8826c0d7c1bc246fdeeb1c8f7bd\";a:0:{}s:32:\"fa65c18ac53108903a6084be958aaaa0\";a:0:{}s:32:\"2ef2a45f180258ea2fe9cc225f49172d\";a:0:{}s:32:\"a800fe0c10c8df4112185a328c0c762f\";a:0:{}s:32:\"ebd2081f4d780a664c4b5cb0041eba7e\";N;s:32:\"cbdd84cd8019e23c63e948581652d6bc\";a:0:{}s:32:\"5773e20abc72059a68ebfdcc689e409f\";a:0:{}s:32:\"a514146eb07fa716cab7b3217c071780\";a:0:{}s:32:\"ae74f098b32a34fa17e3cd233b8973f0\";a:0:{}}', 'no'),
(1148, '_transient_timeout_wc_admin_report', '1534798804', 'no'),
(1149, '_transient_wc_admin_report', 'a:1:{s:32:\"dee73607c8a9232a38fad96b644f43aa\";a:0:{}}', 'no'),
(1150, '_transient_timeout_wc_low_stock_count', '1537304404', 'no'),
(1151, '_transient_wc_low_stock_count', '0', 'no'),
(1152, '_transient_timeout_wc_outofstock_count', '1537304404', 'no'),
(1153, '_transient_wc_outofstock_count', '0', 'no'),
(1154, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1534755608', 'no'),
(1155, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no'),
(1156, '_transient_timeout_feed_126d1ca39d75da07beec8b892738427b', '1534755609', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1157, '_transient_feed_126d1ca39d75da07beec8b892738427b', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Блог | Русский\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://ru.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Русский\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Wed, 11 Jul 2018 15:05:40 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"ru-RU\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-43572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:54:\"\n		\n		\n				\n		\n				\n		\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Конференция WordCamp Москва 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://ru.wordpress.org/news/2018/07/wordcamp-moscow2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Jul 2018 17:06:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:25:\"Общие вопросы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=2017\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:446:\"В этом году WordCamp Moscow впервые будет длиться два дня! Мероприятие пройдет 18 и 19 августа в центре Digital October! Посетите сайт конференции, чтобы ознакомиться с подробностями, стать спикером, спонсором или зарегистрироваться для участия в конференции!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"Yui\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:568:\"<p>В этом году WordCamp Moscow впервые будет длиться два дня! Мероприятие пройдет <strong>18 и 19 августа</strong> в центре Digital October!</p>\n<p><a href=\"https://2018.moscow.wordcamp.org/\" target=\"_blank\" rel=\"noopener noreferrer\">Посетите сайт конференции</a>, чтобы ознакомиться с подробностями, стать спикером, спонсором или зарегистрироваться для участия в конференции!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:54:\"\n		\n		\n				\n		\n				\n		\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"Конференция WordCamp Санкт-Петербург 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://ru.wordpress.org/news/2018/05/wordcamp-stpetersburg2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 07:03:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:25:\"Общие вопросы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1994\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:575:\"Конференция состоится 26 мая 2018 при поддержке компании SEMrush. Хотите поучаствовать, поделиться сообществом своим опытом или просто рассказать что-то интересное из мира WordPress? Приходите, будет интересно! Полезные знакомства, новые доклады, футболка с символикой WordPress, пицца и after-party. Подробности на сайте конференции.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"Yui\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:706:\"<p>Конференция состоится 26 мая 2018 при поддержке компании SEMrush.<br />\nХотите поучаствовать, поделиться сообществом своим опытом или просто рассказать что-то интересное из мира WordPress?<br />\nПриходите, будет интересно!<br />\nПолезные знакомства, новые доклады, футболка с символикой WordPress, пицца и after-party.<br />\nПодробности <a href=\"https://2018.saintpetersburg.wordcamp.org/\" target=\"_blank\" rel=\"noopener noreferrer\">на сайте конференции.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"Выпуск WordPress 4.9.4 (требуется ручное обновление)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://ru.wordpress.org/news/2018/02/%d0%b2%d1%8b%d0%bf%d1%83%d1%81%d0%ba-wordpress-4-9-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 16:46:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:22:\"Исправления\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1886\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:661:\"Доступна версия WordPress 4.9.4, исправляющая внесенную в выпуске 4.9.3 ошибку с автообновлением. Если вы успели (возможно автоматически) обновить свой сайт (или сайты) до 4.9.3, то вам нужно обновить WordPress  до версии 4.9.4, используя кнопку в Консоль &#62; Обновления, либо иным удобным вам способом (wp-cli, через ftp или ssh). Скачать архив дистрибутива можно здесь. Детали ошибки [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"Yui\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:905:\"<p>Доступна версия WordPress 4.9.4, исправляющая внесенную в выпуске 4.9.3 ошибку с автообновлением. Если вы успели (возможно автоматически) обновить свой сайт (или сайты) до 4.9.3, то вам нужно обновить WordPress  до версии 4.9.4, используя кнопку в <em>Консоль &gt; Обновления, </em>либо иным удобным вам способом (wp-cli, через ftp или ssh). Скачать архив дистрибутива можно <a href=\"https://ru.wordpress.org/releases/\">здесь</a>.</p>\n<p>Детали ошибки <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\" target=\"_blank\" rel=\"noopener\">доступны</a> в блоге Make WordPress.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Всемирный день перевода WordPress 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2017/09/wp-translation-day-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Sep 2017 18:55:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1841\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:655:\"Всемирный день перевода — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык. Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Denis Yanchevskiy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4393:\"<p><a href=\"https://wptranslationday.org/\">Всемирный день перевода</a> — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык.</p>\n<p><a href=\"https://wptranslationday.org/\"><img class=\"alignnone wp-image-1842 size-full\" src=\"https://ru.wordpress.org/files/2017/09/4by3.jpg\" alt=\"\" width=\"1024\" height=\"768\" srcset=\"https://ru.wordpress.org/files/2017/09/4by3.jpg 1024w, https://ru.wordpress.org/files/2017/09/4by3-300x225.jpg 300w, https://ru.wordpress.org/files/2017/09/4by3-768x576.jpg 768w, https://ru.wordpress.org/files/2017/09/4by3-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></p>\n<p>Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в развитие WordPress — сейчас самое время!</p>\n<p>В России в рамках мероприятия планируется встреча в Ростове-на-Дону, а также вебинар для тех, кто будет переводить у себя дома.</p>\n<p><strong>Когда</strong></p>\n<p>День перевода WordPress пройдёт в субботу, 30 сентября.</p>\n<p><strong>Где</strong></p>\n<ul>\n<li>Ростов-на-Дону: ул. Большая Садовая, д. 81/31 (кафе Starbucks). Начало в 12:00.</li>\n<li>Вебинар: <a href=\"https://www.crowdcast.io/e/gwtd3/22\">https://www.crowdcast.io/e/gwtd3/22</a>, начало в 20:00 по московскому времени. Вы узнаете, как переводить WordPress, плагины и темы на русский язык, сможете выбрать проект и приступить к переводу.</li>\n</ul>\n<p>Расписание всех вебинаров мероприятия: <a href=\"https://wptranslationday.org/#primary\">https://wptranslationday.org/#primary</a>.</p>\n<p><strong>Полезные ресурсы</strong></p>\n<ul>\n<li><a href=\"https://ru.wordpress.org/support/topic/%D0%BA%D0%B0%D0%BA-%D0%BF%D0%B5%D1%80%D0%B5%D0%B2%D0%B5%D1%81%D1%82%D0%B8-%D1%82%D0%B5%D0%BC%D1%83-%D0%B8%D0%BB%D0%B8-%D0%BF%D0%BB%D0%B0%D0%B3%D0%B8%D0%BD/\">Как перевести тему или плагин?</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D1.82.D0.B8.D0.BB.D1.8C_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.D0.B0\">Рекомендации по стилю перевода</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.9A.D0.B0.D0.BA_.D1.81.D0.B4.D0.B5.D0.BB.D0.B0.D1.82.D1.8C_.D1.85.D0.BE.D1.80.D0.BE.D1.88.D0.B8.D0.B9_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.3F\">Как сделать хороший перевод</a></li>\n<li><a href=\"https://translate.wordpress.org/locale/ru/default/glossary\">Словарь терминов</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/about/get-involved/first-steps/\">Первые шаги переводчика</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/tools/glotpress-translate-wordpress-org/\">Как работать с сайтом translate.wordpress.org (GlotPress)</a></li>\n</ul>\n<p>Для координации и обсуждения вопросов стоит зарегистрироваться в <a href=\"https://ruwp.slack.com/\">Slack-группе русскоязычного сообщества WordPress</a> и зайти на канал <code>#translations</code>. При регистрации введите адрес вида <code>username@chat.wordpress.org</code> (он же используется и в <a href=\"https://make.wordpress.org/chat/\">английском Slack</a>), где <code>username</code> — ваш логин на WordPress.org.</p>\n<p>Да пребудут с нами понятные интерфейсы и качественная локализация!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Всемирный день перевода WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ru.wordpress.org/news/2016/11/wp-translation-day/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 Nov 2016 16:35:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1751\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:655:\"Всемирный день перевода — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык. Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Sergey Biryukov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4653:\"<p><a href=\"https://wptranslationday.org/\">Всемирный день перевода</a> — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык.</p>\n<p><img class=\"alignnone wp-image-1764 size-large\" src=\"https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-1024x579.jpg\" width=\"692\" height=\"391\" srcset=\"https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-1024x579.jpg 1024w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-300x170.jpg 300w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-768x434.jpg 768w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2.jpg 1200w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в развитие WordPress — сейчас самое время!</p>\n<p>В России в рамках мероприятия планируются встречи в Москве и Ростове-на-Дону, а также вебинар для тех, кто будет переводить у себя дома.</p>\n<p><strong>Когда</strong></p>\n<p>День перевода WordPress пройдёт в субботу, 12 ноября.</p>\n<p><strong>Где</strong></p>\n<ul>\n<li><a href=\"https://wpmag.ru/2016/global-translation-day-moscow/\">Москва</a>: метро Краснопресненская, БЦ «Трехгорная мануфактура», ул. Рочдельская, д. 15 стр. 10, 2 этаж (офис компании Setka). Начало в 12:00.</li>\n<li>Ростов-на-Дону: ул. Большая Садовая, д. 81/31 (кафе Starbucks). Начало в 12:00.</li>\n<li>Вебинар: <a href=\"https://www.crowdcast.io/e/gwtd2/14\">https://www.crowdcast.io/e/gwtd2/14</a>, начало в 16:00 по московскому времени. Вы узнаете, как переводить WordPress, плагины и темы на русский язык, сможете выбрать проект и приступить к переводу.</li>\n</ul>\n<p>Расписание всех вебинаров мероприятия: <a href=\"https://wptranslationday.org/#schedule\">https://wptranslationday.org/#schedule</a>.</p>\n<p><strong>Полезные ресурсы</strong></p>\n<ul>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/about/get-involved/first-steps/\">Первые шаги переводчика</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/tools/glotpress-translate-wordpress-org/\">Как работать с сайтом translate.wordpress.org (GlotPress)</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D1.82.D0.B8.D0.BB.D1.8C_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.D0.B0\">Рекомендации по стилю перевода</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.9A.D0.B0.D0.BA_.D1.81.D0.B4.D0.B5.D0.BB.D0.B0.D1.82.D1.8C_.D1.85.D0.BE.D1.80.D0.BE.D1.88.D0.B8.D0.B9_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.3F\">Как сделать хороший перевод</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D0.BB.D0.BE.D0.B2.D0.B0.D1.80.D1.8C_.D1.82.D0.B5.D1.80.D0.BC.D0.B8.D0.BD.D0.BE.D0.B2\">Словарь терминов</a></li>\n</ul>\n<p>Для координации и обсуждения вопросов стоит зарегистрироваться в <a href=\"https://ruwp.slack.com/\">Slack-группе русскоязычного сообщества WordPress</a> и зайти на канал <code>#translations</code>. При регистрации введите адрес вида <code>username@chat.wordpress.org</code> (он же используется и в <a href=\"https://make.wordpress.org/chat/\">английском Slack</a>), где <code>username</code> — ваш логин на WordPress.org.</p>\n<p>Да пребудут с нами понятные интерфейсы и качественная локализация!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Moscow 2016\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2016/07/wordcamp-moscow-2016/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Jul 2016 14:00:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1722\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:345:\"13 августа в Москве пройдёт конференция WordCamp Moscow 2016 в центре Digital October. Гостей ждет целый день лекций на интересные темы связанные с разработкой, дизайном, предпринимательством и блоггингом.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2961:\"<p>13 августа в Москве пройдёт конференция WordCamp Moscow 2016 в центре Digital October. Гостей ждет целый день лекций на интересные темы связанные с разработкой, дизайном, предпринимательством и блоггингом.</p>\n<p><img src=\"https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-1024x684.jpg\" alt=\"Николай Миронов на WordCamp Russia 2015\" width=\"692\" height=\"462\" class=\"alignnone size-large wp-image-1724\" srcset=\"https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-1024x684.jpg 1024w, https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-300x200.jpg 300w, https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-768x513.jpg 768w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>Cписок докладов находится на стадии утверждения, но некоторые темы уже определены:</p>\n<ul>\n<li>Как заказать разработку сайта у специалиста и остаться довольным</li>\n<li>Как работает искусственный интеллект в поисковых системах</li>\n<li>Откуда брать идеи для написания постов, плагинов и тем</li>\n<li>Как опубликовать свою тему в директорию на WordPress.org</li>\n<li>Чем может быть полезен стек Elasticsearch, Logstash и Kibana</li>\n<li>Как держать потребление памяти в WordPress под контролем</li>\n<li>Что такое A/B тестирование и как его проводить в WordPress</li>\n<li>и многое другое</li>\n</ul>\n<p>В перерывах между докладами можно будет пообщаться с коллегами, задать вопросы опытным специалистам и поделиться своими идеями.</p>\n<p>Приобрести билет можно на <a href=\"https://2016.moscow.wordcamp.org/tickets/\">сайте конференции</a> кредитной или дебетовой картой через PayPal, или при помощи системы Яндекс.Деньги.</p>\n<p>После мероприятия всех ждёт afterparty, где участники смогут пообщаться в местном баре в неформальной обстановке. Ну и, конечно же, каждый из гостей получит футболку с символикой WordPress и унесет с собой столько наклеек и значков, сколько влезет в карманы.</p>\n<p><a href=\"https://2016.moscow.wordcamp.org/tickets/\">Зарегистрироваться</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Russia 2015\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2015/07/wordcamp-russia-2015/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Jul 2015 10:08:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1660\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:282:\"Конференция WordCamp Russia 2015 пройдет в субботу, 15 августа в центре Digital October в Москве. Это третья официальная конференция посвященная самой популярной в мире CMS.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2883:\"<p>Конференция <a href=\"https://russia.wordcamp.org/2015/\">WordCamp Russia 2015</a> пройдет в субботу, 15 августа в центре Digital October в Москве. Это третья официальная конференция посвященная самой популярной в мире CMS.</p>\n<p><img src=\"https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-1024x683.jpg\" alt=\"WordCamp Russia\" width=\"692\" height=\"462\" class=\"alignnone size-large wp-image-1662\" srcset=\"https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-1024x683.jpg 1024w, https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-300x200.jpg 300w, https://ru.wordpress.org/files/2015/07/wordcamp-russia-2.jpg 1200w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>В этом году на WordCamp вы сможете послушать интересные доклады от ведущих специалистов по WordPress в России, познакомиться с единомышленниками и поделиться своими идеями. Доклады разделены на два потока для пользователей и разработчиков WordPress, и охватывают дизайн, маркетинг, программирование, безопасность, производительность и поисковую оптимизацию.</p>\n<h2>Программа</h2>\n<p>На WordCamp Russia 2015 вы узнаете:</p>\n<ul>\n<li>Как создавать эффективные лендинги с помощью WordPress</li>\n<li>Что такое поведенческие факторы и как они измеряются</li>\n<li>Как создавать многоязычные сайты на WordPress</li>\n<li>Самые распространенные причины медленных сайтов на WordPress</li>\n<li>Как взламываются сайты на WordPress (на практике)</li>\n<li>Что такое фильтры и события в WordPress</li>\n<li>Чего ожидать от REST API в WordPress и как с ним работать</li>\n<li>Почему следует участвовать в разработке ядра WordPress</li>\n<li><a href=\"https://russia.wordcamp.org/2015/schedule/\">и многое другое</a></li>\n</ul>\n<p>Стоимость билета – $20. Сюда входит участие в конференции, обед и напитки, футболка с символикой мероприятия, значки, наклейки, подарки от спонсоров и целый день хорошего настроения.</p>\n<p>Подробности и регистрация <a href=\"https://russia.wordcamp.org/2015/\">на сайте конференции &rarr;</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 4.2.1 на русском\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ru.wordpress.org/news/2015/04/wordpress-4-2-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Apr 2015 16:54:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1636\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:766:\"Доступен WordPress 4.2.1. Это критическое обновление безопасности для всех предыдущих версий, и мы настоятельно рекомендуем вам обновить все свои сайты как можно скорее. Несколько часов назад команде WordPress стало известно об уязвимости межсайтового скриптинга, которая позволяла авторам комментариев получить доступ к сайту. Уязвимость обнаружил Йоуко Пиннонен. WordPress 4.2.1 уже устанавливается в фоновом режиме на сайты, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Sergey Biryukov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1558:\"<p>Доступен WordPress 4.2.1. Это <strong>критическое обновление безопасности</strong> для всех предыдущих версий, и мы настоятельно рекомендуем вам обновить все свои сайты как можно скорее.</p>\n<p>Несколько часов назад команде WordPress стало известно об уязвимости межсайтового скриптинга, которая позволяла авторам комментариев получить доступ к сайту. Уязвимость обнаружил <a href=\"http://klikki.fi/\">Йоуко Пиннонен</a>.</p>\n<p>WordPress 4.2.1 уже устанавливается в фоновом режиме на сайты, которые <a href=\"http://https://wordpress.org/plugins/background-update-tester/\">поддерживают</a> автоматические фоновые обновления.</p>\n<p>Дополнительную информацию можно найти в <a href=\"https://codex.wordpress.org/Version_4.2.1\">заметке о релизе</a> или в <a href=\"https://core.trac.wordpress.org/log/branches/4.2?rev=32311&amp;stop_rev=32300\">списке изменений</a>.</p>\n<p><a href=\"https://ru.wordpress.org/releases/\">Скачайте версию 4.2.1</a> или перейдите в меню «Консоль» → «Обновления» и нажмите кнопку «Обновить сейчас».</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Russia 2014\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2014/07/wordcamp-russia-2014/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Jul 2014 09:37:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://ru.wordpress.org/?p=1588\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:356:\"Конференция WordCamp Russia 2014 пройдет 9 августа в Москве. На мероприятии вы сможете пообщаться с профессионалами в сфере WordPress, поделиться своим опытом и узнать что-то новое о самой популярной в мире CMS.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1919:\"<p>Конференция <a href=\"http://2014.russia.wordcamp.org/\">WordCamp Russia 2014</a> пройдет 9 августа в Москве. На мероприятии вы сможете пообщаться с профессионалами в сфере WordPress, поделиться своим опытом и узнать что-то новое о самой популярной в мире CMS.</p>\n<p>В этом году на WordCamp Russia планируется два отдельных потока для пользователей и разработчиков. С докладами на конференции выступят специалисты WordPress из России и из-за рубежа, включая разработчиков ядра WordPress. Среди подтвержденных докладов:</p>\n<ul>\n<li>Основы поисковой оптимизации WordPress</li>\n<li>WordPress под нагрузкой: масштабирование и отказоустойчивость</li>\n<li>Сайт глазами контентера: какой должна быть идеальная &#171;админка&#187;</li>\n<li>Как не сойти с ума при разработке крупных проектов на WordPress</li>\n<li>WordPress под прицелом хакеров. Что нужно знать, и как избежать проблем.</li>\n<li>Все что вы хотели знать о WP_Query</li>\n<li>Моделирование контента в WordPress: сильно больше, чем &#171;просто блог&#187;</li>\n<li>Малоизвестные функции в ядре WordPress</li>\n<li>Профилирование кода в WordPress</li>\n</ul>\n<p>Подробности и регистрация <a href=\"http://2014.russia.wordcamp.org/\">на сайте конференции &rarr;</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"WordPress 3.9 «Смит»\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://ru.wordpress.org/news/2014/04/3-9-smith/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Apr 2014 19:56:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://ru.wordpress.org/?p=1516\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:710:\"Русская версия WordPress 3.9 &#171;Смит&#187; доступна для скачивания. Если вы уже используете WordPress, то вы можете выполнить обновление через панель администрирования в разделе «Консоль» → «Обновления». Это займет всего несколько секунд! Медиа и редактор В новой версии WordPress мы обновили визуальный редактор, который стал еще быстрее и надежнее, а также более удобным на мобильных устройствах. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5339:\"<p>Русская версия WordPress 3.9 &#171;Смит&#187; доступна для скачивания. Если вы уже используете WordPress, то вы можете выполнить обновление через панель администрирования в разделе «Консоль» → «Обновления». Это займет всего несколько секунд!</p>\n<h3>Медиа и редактор</h3>\n<p><img src=\"//wordpress.org/news/files/2014/04/editor1-300x233.jpg\" alt=\"editor\" width=\"228\" height=\"177\" /><img src=\"//wordpress.org/news/files/2014/04/image1-300x233.jpg\" alt=\"image\" width=\"228\" height=\"178\" /><img src=\"//wordpress.org/news/files/2014/04/dragdrop1-300x233.jpg\" alt=\"dragdrop\" width=\"228\" height=\"178\" /></p>\n<p>В новой версии WordPress мы обновили визуальный редактор, который стал еще быстрее и надежнее, а также более удобным на мобильных устройствах. Вы теперь можете вставлять текст из таких программ, как Microsoft Word, и редактор автоматически преобразует их в чистую разметку.</p>\n<p>Редактировать изображения (повернуть, перевернуть, обрезать) в медиатеке стало еще быстрее и приятнее в новой версии, а изменять размер вставленных изображений вы теперь можете прямо в самом редакторе.</p>\n<p>Загружать новые файлы в библиотеку файлов также стало намного легче &#8212; теперь их достаточно просто перетащить с вашего компьютера (например, с рабочего стола) прямо в редактор WordPress.</p>\n<p>При вставке галерей в визуальный редактор версии 3.9 вы теперь увидите полноценное превью ваших изображений. Предварительный просмотр элементов в редакторе также доступен для аудио, видео и плей-листов.</p>\n<h3>Аудио и видео</h3>\n<p>В WordPress 3.9 улучшена встроенная поддержка аудио- и видеофайлов. Мы обновили медиаплеер, а также добавили возможность легко создавать плей-листы для аудио и видео:</p>\n<p><img class=\"alignnone size-large wp-image-1534\" src=\"//ru.wordpress.org/files/2014/04/wordpress-audio-playlist1.png\" alt=\"wordpress-audio-playlist\" width=\"641\" height=\"254\" srcset=\"https://ru.wordpress.org/files/2014/04/wordpress-audio-playlist1.png 641w, https://ru.wordpress.org/files/2014/04/wordpress-audio-playlist1-300x118.png 300w\" sizes=\"(max-width: 641px) 100vw, 641px\" /></p>\n<h3>Работа с виджетами</h3>\n<p>Виджетами теперь легко управлять прямо из конфигуратора тем WordPress. Для запуска конфигуратора зайдите в раздел «Внешний вид» → «Настроить». Любые изменения в этом режиме вступят в силу только после сохранения, так что не бойтесь экспериментировать!</p>\n<p><img class=\"alignnone size-full wp-image-1536\" src=\"//ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen.png\" alt=\"wordpress-3-9-widgets-screen\" srcset=\"https://ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen.png 700w, https://ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen-300x120.png 300w\" sizes=\"(max-width: 700px) 100vw, 700px\" /></p>\n<h3>Поиск и установка тем</h3>\n<p>В версии 3.9 изменился интерфейс для поиска и установки тем из официального каталога WordPress.org. Он стал чище, приятнее и намного быстрее:</p>\n<p><img class=\"alignnone size-large wp-image-1539\" src=\"//ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install.png\" alt=\"wordpress-3-9-themes-install\" srcset=\"https://ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install.png 700w, https://ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install-300x113.png 300w\" sizes=\"(max-width: 700px) 100vw, 700px\" /></p>\n<p>В новой версии также произошло большое количество внутренних изменений, которые сделали WordPress 3.9 еще быстрее и надежнее. В разработке новой версии WordPress приняло участие более 250 человек из разных стран мира. Мы надеемся, что вам понравится данное обновление.</p>\n<p>Если у вас возникнут проблемы с новой версией, обратитесь на <a href=\"https://ru.forums.wordpress.org/\">форум поддержки</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://ru.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 19 Aug 2018 20:59:57 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Sun, 19 Aug 2018 20:52:53 GMT\";s:4:\"link\";s:61:\"<https://ru.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20130911000210\";}', 'no'),
(1158, '_transient_timeout_feed_mod_126d1ca39d75da07beec8b892738427b', '1534755609', 'no'),
(1159, '_transient_feed_mod_126d1ca39d75da07beec8b892738427b', '1534712409', 'no'),
(1160, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1534755610', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1161, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"WPTavern: My Gutenberg Experience: Part Three\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83102\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wptavern.com/my-gutenberg-experience-part-three\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4815:\"<p>It&#8217;s been about four months since the last time I <a href=\"https://wptavern.com/an-update-to-my-gutenberg-experience\">shared my experience</a> with Gutenberg. In that time, there have been sixteen releases. The more I use Gutenberg, the more nuances I encounter.</p>\n\n<h3>Disruptive Writing Flow</h3>\n\n<p>When writing a post, I press the enter key at the end of a paragraph. This creates a new paragraph block automatically. Sometimes however, I want the next block to be an Image block. The paragraph block does not have an option to be converted into another block.</p>\n\n<img />No Option to Convert to Another Block\n\n<p>I end up having to remove the paragraph block, look for the add block icon, and add the image block. This process of rearranging blocks disrupts the flow of writing. </p>\n\n<p>There are a few ways to get around this issue. The first is to not press enter at the end of a paragraph so I can add the block that I want. </p>\n\n<p>The second is to type /image inside the paragraph block which will automatically convert it to an image block. This is convenient but it&#8217;s a power user shortcut that&#8217;s difficult to discover without someone telling you about it. It&#8217;s weird that using a shortcut can convert a paragraph block to an image block but the user interface option to convert it doesn&#8217;t exist.</p>\n\n<h3>Icons Not Associated With a Block Floating in Empty Space<br /></h3>\n\n<p>In the image below is a CloudUp embed block that has a video and below it are three icons. I sometimes think these icons are related to the block above it but instead, these icons are part of the add block placeholder UI. </p>\n\n<img />Block Icons Look Like They&#8217;re For Another Block\n\n<p>Granted, a list, image, and quote icon has nothing to do with embedding videos. At-a-glance, seeing these icons can lead to a bit of confusion. I don&#8217;t want to see those icons floating in empty space when I&#8217;m working on a block they&#8217;re not attached too. <br /></p>\n\n<h3>Losing Content Due to Autosave Disconnecting<br /></h3>\n\n<p>While writing a post working remotely, I noticed the Autosave button in Gutenberg was continuously flashing. I&#8217;ve experienced something similar in the classic editor and suspected that a connection issue must have happened although I was browsing the internet without a problem.</p>\n\n<p>I finished writing the post, added meta data, and a featured image. I copied all of the content on the post, refreshed the page, and confirmed I wanted to leave the page. It turns out, my suspicion was right. </p>\n\n<p>At some point, the autosave process stopped working and I lost half the post, including the meta data. I was able to paste the lost content into the editor and go about my day. </p>\n\n<p>The current editor has fail-safes in place to prevent the loss of content, such as using a browser&#8217;s local storage. I&#8217;m unsure if Gutenberg has the same fail-safes in place. So far, this has been the only time where I&#8217;ve lost content in Gutenberg due to autosave not working correctly. </p>\n\n<h3>Digging Through the Junk Drawer</h3>\n\n<p>In the classic editor, the tool bar stays in constant view. In Gutenberg, there are multiple areas on the screen where UI elements appear and disappear depending on where the cursor is. </p>\n\n<p>If you want to see the code version of the editor, you need to click the ellipsis on the top right corner and select it from a drop-down menu. To add a new block, you have to click the + symbol and either search or select from a menu. </p>\n\n<p>The combination of visiting different parts of the editor, browsing through menus, and selecting from multiple things sometimes feels like I&#8217;m going through the junk drawer in the kitchen looking for a utensil. This feeling occurs multiple times depending on the length of a post. </p>\n\n<h3>There&#8217;s Still a Ways to Go</h3>\n\n<p>I&#8217;ve been able to get used to the block concept and actually prefer it over the classic editor. However, there are certain tasks that are easier and faster to accomplish in the classic editor versus Gutenberg. </p>\n\n<p>For example, if you want to create a heading using existing text in Gutenberg, you have to select the text, click the Paragraph icon, select the heading block, and choose which heading you want. In the Classic editor, you select the text, click the preferred heading from an always visible drop-down menu and continue writing. </p>\n\n<p>These nuances to the writing flow, the user interface, and the experience of looking around for things is where I believe Gutenberg needs the most improvement. The bar has been set by the Classic editor but it has more than 10 years of iteration behind it. Hopefully, Gutenberg can reach or exceed that bar before it&#8217;s merged into core. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Aug 2018 22:32:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WPTavern: Gutenberg 3.6 Adds New Icons for All Core Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83242\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wptavern.com/gutenberg-3-6-adds-new-icons-for-all-core-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5014:\"<p><a href=\"https://make.wordpress.org/core/2018/08/17/whats-new-in-gutenberg-17th-august/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg 3.6</a> was released today, featuring a <a href=\"https://github.com/WordPress/gutenberg/pull/8916\" rel=\"noopener noreferrer\" target=\"_blank\">design overhaul for the core icons</a> in the block inserter. The blocks now use <a href=\"https://material.io/tools/icons/\" rel=\"noopener noreferrer\" target=\"_blank\">Material icons</a>, which offer more options than the Dashicons. This update also improves the icons for the core embeds, which now display the corresponding icon for each embed service.</p>\n<p>Gutenberg testers <a href=\"https://github.com/WordPress/gutenberg/issues/3736\" rel=\"noopener noreferrer\" target=\"_blank\">logged an issue</a> regarding the limitations of Dashicons last year, citing the small number available, the inadequacy of their size, and the generic substitutions for embed service icons. The Gutenberg team <a href=\"https://github.com/WordPress/gutenberg/issues/3736#issuecomment-355267596\" rel=\"noopener noreferrer\" target=\"_blank\">closed the ticket</a>, saying there was no sign in testing that showed the icons to be a problem and that potential contributors would need to &#8220;revisit with evidence&#8221; if they wanted to re-open the issue.</p>\n<p>It&#8217;s not clear whether the team received the evidence or testing required to make this change but the icons become problematic in other ways. As the community started extending Gutenberg, block icon duplication became a problem, due to the limited number of Dashicons available.</p>\n<p>&#8220;We really need block icons to move away from using dashicons as soon as possible,&#8221; Gutenberg technical lead Matías Ventura said in another discussion on a proposed solution. &#8220;We are already seeing plugins adding blocks where the icon overlap is very high just because of the limited icons set, which reduces clarity for users very drastically.&#8221;</p>\n<p><a href=\"https://github.com/WordPress/gutenberg/issues/8719\" rel=\"noopener noreferrer\" target=\"_blank\">Switching to Material icons</a> solves this problem, ensuring there are unique icons for each block. The inserter design has also been updated as part of this overhaul. Previously, icons appeared with a grey background, as seen below:</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-17-at-12.51.51-PM.png?ssl=1\"><img /></a></p>\n<p>The old design suddenly looks rather dated in comparison to Gutenberg&#8217;s 3.6 update, which allows for more whitespace around the icons:</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-17-at-12.53.39-PM.png?ssl=1\"><img /></a></p>\n<p>The new embed icons are also greatly improved from previous versions of the plugin:</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-17-at-4.09.01-PM.png?ssl=1\"><img /></a></p>\n<p>&#8220;The new icons aim to encourage people creating their own blocks to supply their own SVG,&#8221; Ventura said. &#8220;The hope is to make sure we can avoid multiple cases of duplicated icons diminishing the overall ability to quickly scan blocks.&#8221;</p>\n<p>Ventura said Gutenberg will retain the ability to specify a Dashicon slug in the Block API but he encourages developers to &#8220;supply custom SVGs (or draw from the material icon pool) as much as possible.&#8221;</p>\n<p>Gutenberg 3.6 also <a href=\"https://github.com/WordPress/gutenberg/pull/8279\" rel=\"noopener noreferrer\" target=\"_blank\">adds several new keyboard shortcuts</a>, including inserting a new block before/after the current block, toggling the inspector settings, removing a block, and displaying a <a href=\"https://github.com/WordPress/gutenberg/pull/8316\" rel=\"noopener noreferrer\" target=\"_blank\">new modal help menu</a>. The modal can be launched from the Settings button at the top of the editor and users can scroll through all available shortcuts.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-17-at-4.16.53-PM.png?ssl=1\"><img /></a></p>\n<p>This release also fixes many bugs that users have reported. Gutenberg will now <a href=\"https://github.com/WordPress/gutenberg/pull/8446\" rel=\"noopener noreferrer\" target=\"_blank\">open a new preview window</a> if the prior window has been closed. It will also <a href=\"https://github.com/WordPress/gutenberg/pull/9015\" rel=\"noopener noreferrer\" target=\"_blank\">bring the preview tab to the front</a> when clicking the preview button. Version 3.6 <a href=\"https://github.com/WordPress/gutenberg/pull/9010\" rel=\"noopener noreferrer\" target=\"_blank\">fixes several usability issues</a> that testers found with the permalink UI. Check out the <a href=\"https://make.wordpress.org/core/2018/08/17/whats-new-in-gutenberg-17th-august/\" rel=\"noopener noreferrer\" target=\"_blank\">release post</a> for the full list of all the fixes and changes included in 3.6.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Aug 2018 21:31:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Donncha: WP Super Cache 1.6.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://odd.blog/?p=89502017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://odd.blog/2018/08/17/wp-super-cache-1-6-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4891:\"<p>WP Super Cache is a full page caching plugin for WordPress. When a page is cached almost all of WordPress is skipped and the page is sent to the browser with the minimum amount of code executed. This makes the page load much faster.</p>\n\n<p>1.6.3 is the latest release and is mostly a bugfix release but it also adds some new features.</p>\n\n<ul><li>Added cookie helper functions (<a href=\"https://github.com/Automattic/wp-super-cache/pull/580\">#580</a>)</li><li>Added plugin helper functions (<a href=\"https://github.com/Automattic/wp-super-cache/pull/574\">#574</a>)</li><li>Added actions to modify cookie and plugin lists. (<a href=\"https://github.com/Automattic/wp-super-cache/pull/582\">#582</a>)</li><li>Really disable garbage collection when timeout = 0 (<a href=\"https://github.com/Automattic/wp-super-cache/pull/571\">#571</a>)</li><li>Added warnings about DISABLE_WP_CRON (<a href=\"https://github.com/Automattic/wp-super-cache/pull/575\">#575</a>)</li><li>Don&#8217;t clean expired cache files after preload if garbage collection is disabled (<a href=\"https://github.com/Automattic/wp-super-cache/pull/572\">#572</a>)</li><li>On preload, if deleting a post don&#8217;t delete the sub directories if it&#8217;s the homepage. (<a href=\"https://github.com/Automattic/wp-super-cache/pull/573\">#573</a>)</li><li>Fix generation of semaphores when using WP CLI (<a href=\"https://github.com/Automattic/wp-super-cache/pull/576\">#576</a>)</li><li>Fix deleting from the admin bar (<a href=\"https://github.com/Automattic/wp-super-cache/pull/578\">#578</a>)</li><li>Avoid a strpos() warning. (<a href=\"https://github.com/Automattic/wp-super-cache/pull/579\">#579</a>)</li><li>Improve deleting of cache in edit/delete/publish actions (<a href=\"https://github.com/Automattic/wp-super-cache/pull/577\">#577</a>)</li><li>Fixes to headers code (<a href=\"https://github.com/Automattic/wp-super-cache/pull/496\">#496</a>)</li></ul>\n\n<p>This release makes it much easier for plugin developers to interact with WP Super Cache. In the past a file had to be placed in the &#8220;WP Super Cache plugins directory&#8221; so that it would be loaded correctly but in this release I&#8217;ve added new actions that will allow you to load code from other directories too.</p>\n\n<p>Use the <strong>wpsc_add_plugin</strong> action to add your plugin to a list loaded by WP Super Cache. Use it like this:<br /></p>\n\n<pre class=\"wp-block-preformatted\">do_action( \'wpsc_add_plugin\', WP_PLUGIN_DIR . \'/wpsc.php\' )</pre>\n\n<p>You can give it the full path, with or without ABSPATH. Use it after &#8220;init&#8221;. It only needs to be called once, but duplicates will not be stored.</p>\n\n<p>In a similar fashion, use <strong>wpsc_delete_plugin</strong> to remove a plugin.</p>\n\n<p>The release also makes it much simpler to modify the cookies used by WP Super Cache to identify &#8220;known users&#8221;. This is useful to identify particular types of pages such as translated pages that should only be shown to certain users. For example, visitors who have the English cookie will be shown cached pages in English. The German cookie will fetch German cached pages. The action <strong>wpsc_add_cookie</strong> makes this possible.</p>\n\n<pre class=\"wp-block-preformatted\">do_action( \'wpsc_add_cookie\', \'language\' );</pre>\n\n<p>Execute that in your plugin and WP Super Cache will watch out for the language cookie. The plugin will use the cookie name <em>and</em> value in determining what cached page to display. So &#8220;language = irish&#8221; will show a different page to &#8220;language = french&#8221;.</p>\n\n<p>Use <strong>wpsc_delete_cookie</strong> to remove a cookie. Cache files won&#8217;t be deleted. It&#8217;s doubtful they&#8217;d be served however because of the hashed key used to name the filenames.<br /></p>\n\n<pre class=\"wp-block-preformatted\">do_action( \'wpsc_delete_cookie\', \'language\' );</pre>\n\n<p>If you&#8217;re going to use either of the plugin or cookie actions here I recommend using <strong>Simple Caching</strong>. While the plugin will attempt to update mod_rewrite rules, it is much simpler to have PHP serve the files. Apart from that, any plugins loaded by WP Super Cache will be completely skipped if Expert mode is enabled.</p>\n\n<p><strong>Related Posts</strong><ul><li> <a href=\"https://odd.blog/2008/10/24/wp-super-cache-084-the-garbage-collector/\" rel=\"bookmark\" title=\"Permanent Link: WP Super Cache 0.8.4, the garbage collector\">WP Super Cache 0.8.4, the garbage collector</a></li><li> <a href=\"https://odd.blog/2009/01/09/wp-super-cache-087/\" rel=\"bookmark\" title=\"Permanent Link: WP Super Cache 0.8.7\">WP Super Cache 0.8.7</a></li><li> <a href=\"https://odd.blog/2010/02/08/wp-super-cache-099/\" rel=\"bookmark\" title=\"Permanent Link: WP Super Cache 0.9.9\">WP Super Cache 0.9.9</a></li></ul></p>\n<p><a href=\"https://odd.blog/2018/08/17/wp-super-cache-1-6-3/\" rel=\"nofollow\">Source</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Aug 2018 16:36:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Donncha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: WordPress for iOS 10.6 Adds A Detailed Site Activity Log\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83231\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wptavern.com/wordpress-for-ios-10-6-adds-a-detailed-site-activity-log\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3569:\"<p>In the past few months, the <a href=\"https://apps.wordpress.com/mobile/\">WordPress mobile application</a> for iOS has quietly received a steady round of improvements. Version 10.5 increased its compatibility with Gutenberg. <a href=\"https://wptavern.com/wordpress-for-ios-and-gutenberg-dont-get-along\">Earlier this year</a>, Gutenberg and the iOS app didn&#8217;t get along particularly well. </p>\n\n<p>About a month ago in 10.4, an activity log was added that allows users to see a detailed list of activities on their sites. In 10.6, the most recent version, the activity log is now available for free WordPress.com sites and those connected with Jetpack.</p>\n\n<img />WordPress for iOS Activity Log\n\n<p>As you can see in the screenshot above, comment activity, post and page activity, and generally all site activity shows up in the log. </p>\n\n<p>Selecting an activity displays detailed information such as who performed the action, their role, IP address, and other information depending on the activity. The log displays the last 20 activities performed on the site.</p>\n\n<p>It&#8217;s unclear exactly what data the activity log monitors, where or if it&#8217;s saved, how it&#8217;s generated, and how users can turn it off. Browsing around the mobile app, I was unable to find a way to disable the activity log.</p>\n\n<h2>The WordPress Mobile Team is Quiet But Busy</h2>\n\n<p>If it weren&#8217;t for the change logs on the iTunes Store, it would be difficult for users to know what&#8217;s going on with the app. The project&#8217;s <a href=\"https://github.com/wordpress-mobile/WordPress-iOS\">GitHub page</a> is buzzing with activity, but more public facing means of communication are not. <br /></p>\n\n<p>The WordPress for iOS app <a href=\"https://twitter.com/wordpressios?lang=en\">Twitter account</a> has been dormant since May. The <a href=\"https://apps.wordpress.com/blog/\">WordPress Mobile apps blog</a> hasn&#8217;t published a new post since 2016 and some of the posts that highlight new features are on the official <a href=\"https://en.blog.wordpress.com/\">WordPress.com blog</a>.</p>\n\n<p>Sure, not every release requires a full-featured post, but the activity log is a feature that I think warrants one. An explanation of why it was created, how it works, and how users not interested in it can disable it. </p>\n\n<p>The WordPress for iOS app is <a href=\"https://apps.wordpress.com/contribute/\">open source</a> and available for free from the <a href=\"https://search.itunes.apple.com/WebObjects/MZContentLink.woa/wa/link?mt=8&path=apps%2fWordPress\">Apple iTunes App Store</a>. You can also find links to the Android and Desktop apps on the <a href=\"https://apps.wordpress.com/\">WordPress.com Apps site</a>. </p>\n\n<h2>*Update*</h2>\n\n<p>After this article was published, I was given a <a href=\"https://jetpack.com/support/activity-log/\">link to a support document</a> on the Jetpack website that explains the activity log feature in more detail. The document <a href=\"https://jetpack.com/support/activity-log/#data-retention\">links to a list of activities</a> along with their retention periods which vary based on the plan attached to the user&#8217;s WordPress.com account. </p>\n\n<p>Only the most recent 1,000 events are displayed in the log. As noted at the end of the article, once the retention period ends for activity data, it&#8217;s moved to long-term storage where it is retained indefinitely. Data held in long-term storage is removed from the activity log.</p>\n\n<p>According to the document, there is no way to deactivate this feature. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Aug 2018 22:12:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:125:\"WPTavern: WordPress.com Boots Sandy Hook Conspiracy Theory Sites, Bans Malicious Publication of Unauthorized Images of Minors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83171\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:135:\"https://wptavern.com/wordpress-com-boots-sandy-hook-conspiracy-theory-sites-bans-malicious-publication-of-unauthorized-images-of-minors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:13585:\"<p>WordPress.com came under fire this week for hosting a site with conspiracy theories claiming the Sandy Hook Elementary School shooting was a hoax. The New York Times published an article titled &#8220;<a href=\"https://www.nytimes.com/2018/08/13/business/media/sandy-hook-conspiracies-leonard-pozner.html\" rel=\"noopener noreferrer\" target=\"_blank\">This Company Keeps Lies About Sandy Hook on the Web</a>,&#8221; setting off a hailstorm of angry posts on social media that demanded Automattic take action.</p>\n<p>“Posting conspiracy theories or untrue content is not banned from WordPress.com, and unfortunately this is one of those situations,” Automattic told the New York Times in a statement. “It is a truly awful situation, and we are sympathetic to the Pozner family.”</p>\n<p>Leonard Pozner, father of Sandy Hook Elementary shooting victim Noah Pozner, claims that images of his son were being misused on a WordPress.com-hosted site where the author denied the tragedy and called his son a crisis actor. He filed copyright infringement claims on the images used on the conspiracy site in an attempt to get the content removed.</p>\n<p>Automattic examined the images and determined that there was nothing illegal about their use on the site. The company sent Pozner a reply that said, &#8220;because we believe this to be fair use of the material, we will not be removing it at this time.&#8221;</p>\n<p>In the New York Times article, Automattic admits its insensitivity in handling the situation, apologizing to the family, but said the posts in question &#8220;are not violating any current user guidelines, or copyright law.&#8221;</p>\n<p>&#8220;The pain that the family has suffered is very real and if tied to the contents of sites we host, we want to have policies to address that,&#8221; Automattic told the New York Times.</p>\n<h3>WordPress.com Updates it Privacy Policy, Banning Malicious Publication of Unauthorized, Identifying Images of Minors</h3>\n<p>After consulting with the Internet Archive&#8217;s Wayback Machine, it appears WordPress.com has quietly updated its privacy policy, which now includes unauthorized images of minors on the list of things the platform considers private information. The <a href=\"https://web.archive.org/web/20180201091159/https://en.support.wordpress.com/private-information/\" rel=\"noopener noreferrer\" target=\"_blank\">previous policy</a> appears below:</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-16-at-8.29.14-AM.png?ssl=1\"><img /></a></p>\n<p>The <a href=\"https://en.support.wordpress.com/private-information/\" rel=\"noopener noreferrer\" target=\"_blank\">updated policy</a> adds &#8220;the malicious publication of unauthorized, identifying images of minors&#8221; to that list.</p>\n<p>Searching Twitter for discussion surrounding Sandy Hook conspiracy sites turns up a slew of tweets calling on people to boycott WordPress.com and other Automattic products. However, there are also responses on the other end of the spectrum, with Sandy Hook conspiracy theorist supporters retweeting a user who claims that WordPress.com has shut down his site.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Minutes ago this morning, I discovered that WordPress has unilaterally and without warning shut down Fellowship of the Minds for alleged violations of \"Terms of Service\". I will explore finding another server for FOTM. Please pray for America.</p>\n<p>&mdash; Eowyn (@DrEowyn) <a href=\"https://twitter.com/DrEowyn/status/1029338304376795136?ref_src=twsrc%5Etfw\">August 14, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">WordPress just suspended my interim blog The Fundamental Option as well. That blog has been active for only the past 2 days, so what possible \"terms of service\" could have have violated? It\'s war, folks. America is entering into very dark days. Be prepared.</p>\n<p>&mdash; Eowyn (@DrEowyn) <a href=\"https://twitter.com/DrEowyn/status/1029788566459625472?ref_src=twsrc%5Etfw\">August 15, 2018</a></p></blockquote>\n<p></p>\n<p>The site in question (fellowshipofminds.com) appears to have been removed, along with an interim site the author created following the first suspension. <a href=\"https://twitter.com/memoryholeblog/status/1029415973500137479\" rel=\"noopener noreferrer\" target=\"_blank\">A number of other related sites</a> have also recently been removed. These events are outlined in <a href=\"http://memoryholeblog.org/2018/08/14/wordpress-automattic-shuts-down-fellowshipoftheminds/\" rel=\"noopener noreferrer\" target=\"_blank\">a post on memoryholeblog.org</a>, a site maintained by James F. Tracy, a former professor of journalism and media who became known for his research questioning the Sandy Hook Elementary School massacre and Boston Marathon bombing. Tracy&#8217;s blog was also removed from WordPress.com in 2016 for violation of Automattic’s Terms of Service.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-16-at-8.48.40-AM.png?ssl=1\"><img /></a></p>\n<p>Automattic did not detail specific infractions in either case of removal. It&#8217;s not clear whether the site referenced in the New York Times article was removed for a new offense or a previous one. The removals seem to have coincided with WordPress.com&#8217;s updated privacy policy, but Automattic&#8217;s PR department has not responded to a request for comment on the matter.</p>\n<p>&#8220;As with Automattic’s treatment of MHB, FOTM’s disappearance strongly suggests how WordPress.com’s policies are being tailored to placate outside parties whose foremost interest is in stifling political speech on potential high crimes, and how in this instance such poorly-founded grounds for censorship have triumphed over free speech,&#8221; Tracy said.</p>\n<p>Historically, Automattic has been a stalwart defender of free speech on the web. It&#8217;s outlined as part of the <a href=\"https://en.support.wordpress.com/user-guidelines/\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress.com&#8217;s User Guidelines</a>:</p>\n<blockquote><p>WordPress.com strongly believes in freedom of speech. We have a vast audience spread across many cultures, countries and backgrounds with varying values and our service is designed to let users freely express any ideas and opinions without us censoring or endorsing them.</p></blockquote>\n<p>It&#8217;s not clear whether Automattic changed its policy in response to this situation or whether this situation revealed holes in it that the company wanted to improve. In either case, the policy change seems to have enabled Automattic to do what outraged onlookers wanted them to do, except outside of the emotional mandate issued by the New York Times.</p>\n<p>Without the new privacy policy in place, removal of a site based on offensive material constitutes censorship. Automattic had already determined that the post using the child&#8217;s image, while distasteful and offensive, was fair use for the material. The image had likely already been used thousands of times by news organizations with a different narrative attached to it that is more in alignment with the majority&#8217;s view of the tragedy.</p>\n<p>As it is a private company, Automattic&#8217;s terms of service do not have to reflect the full freedom of speech allowed by the law. However, the company has always upheld its reputation in the past as an uncompromising defender of its users when presented with requests for censorship.</p>\n<p>In a recent <a href=\"https://www.techdirt.com/articles/20180206/10271639166/why-allegedly-defamatory-content-wordpresscom-doesnt-come-down-without-court-order.shtml\" rel=\"noopener noreferrer\" target=\"_blank\">post on Techdirt</a>, Automattic general counsel Paul Sieminski and Holly Hogan detail how WordPress.com handles its role in managing intermediary liability when the company receives complaints regarding defamatory content:</p>\n<blockquote><p>Making online hosts and other intermediaries like WordPress.com liable for the allegedly defamatory content posted by users is often criticized for burdening hosts and stifling innovation. But intermediary liability isn&#8217;t just bad for online hosts. It&#8217;s also terrible for online speech. The looming possibility of writing a large check incentivizes hosts like Automattic to do one thing when we first receive a complaint about content: Remove it. That decision may legally protect the host, but it doesn&#8217;t protect users or their online speech.</p></blockquote>\n<p>That article explains the level of nuance involved in handling complaints and the costs associated with protecting its users&#8217; freedom of speech. Automattic&#8217;s counsel concludes with an observation that &#8220;leaving such important decisions to the discretion of Internet hosts is misplaced and tilts the balance in favor of silencing often legitimate voices.&#8221;</p>\n<h3>WordPress.com is a Host for Websites, Not a Social Media Silo</h3>\n<p>WordPress.com&#8217;s platform is distinct from social networks in that it is not a social media silo. It acts more as a host and cannot have one-off shutdowns of sites anytime there is a public outcry.</p>\n<p>&#8220;WordPress.com is much closer to being a common carrier than Facebook and other social media,&#8221; Dan Kennedy, associate professor at Northeastern University&#8217;s school of Journalism, <a href=\"https://twitter.com/dankennedy_nu/status/1029343514243616769\" rel=\"noopener noreferrer\" target=\"_blank\">said</a> in response to the NYT article. &#8220;That difference really doesn’t get highlighted here.&#8221;</p>\n<p>Self-hosted WordPress (.org) user and data journalist Matt Stiles also <a href=\"https://twitter.com/stiles/status/1029220655013609472\" rel=\"noopener noreferrer\" target=\"_blank\">commented on the distinction</a>, and followed up with me privately, identifying WordPress.com as &#8220;a free-speech sidewalk for the Internet.&#8221;</p>\n<p>&#8220;WordPress.com needs to make clear to the public that it&#8217;s a host, not a place that controls &#8212; through algorithms or other curation, and revenue — content,&#8221; Stiles said. &#8220;I am NOT a supporter of sites like this. I just want WordPress to thrive as an open-source tool and as an important paid host for web sites. I&#8217;m also worried about WordPress.com having to make arbitrary decisions about content. It&#8217;s tough to define hate speech. We know it when we see it, but I worry about censorship on private platforms.&#8221;</p>\n<p>Dave Winer also <a href=\"http://scripting.com/2018/08/16/132055.html\" rel=\"noopener noreferrer\" target=\"_blank\">commented</a> that the article failed to capture the distinction of WordPress.com as a host for websites:</p>\n<blockquote><p>WordPress.com isn&#8217;t like the others, it isn&#8217;t a silo, so banning him from that service will not necessarily have any affect on the presence of his site. He will be able to export his site, set up his own server, point the DNS entry at that server, and proceed on the open web and it will appear to outside viewers as if nothing happened. This will be the end of the discussion, unless the anti-speech advocates try to exert pressure on the open web. There they will find there is no CEO, no corporate headquarters, no shareholders afraid of losing value, none of the usual pressure points.</p></blockquote>\n<p>This particular situation regarding the Sandy Hook conspiracy site seems to have hit a nerve due to the fact that there are children involved. Despite WordPress.com&#8217;s quick privacy policy change in this instance, Automattic is still a rare outlier among publishing companies when it comes to support of free speech on the web. Media outlets and tech companies are increasingly clamoring for offensive content to be removed, instead of taking a principled stand against censorship.</p>\n<p>Today <a href=\"https://www.poynter.org/news/200-newspapers-will-write-pro-journalism-editorials-will-they-also-listen\" rel=\"noopener noreferrer\" target=\"_blank\">more than 200 newspapers</a>, including the New York Times, are coordinating to publish editorials calling out President Trump&#8217;s characterization of the press as the &#8220;enemy of the people.&#8221; Corporate-owned news media is ready to decry attacks on free speech, but do they really believe in it when it counts? That freedom isn&#8217;t predicated on whether the speech is true or unoffensive to readers.</p>\n<p>Calling out a free speech platform like WordPress.com, without any distinction for its vital role in enabling journalists across the globe, is a coercive attempt to exact a desired result. What WordPress.com has done is groundbreaking in democratizing publishing and enabling bloggers to break news on their own sites.</p>\n<p>The New York Times raking WordPress.com over the coals for its refusal to censor its users is an egregious double standard. A publication cannot call for free speech for itself while eating up the rights of everyone else they don&#8217;t agree with. Principles aren&#8217;t principles if they only serve you when they are convenient.</p>\n<p>Forcing the censorship of offensive speech may feel like swift justice in the short term, but it weakens the fabric of a free society. Let discerning readers make up their own minds when they come across sites disseminating conspiracy theories.  Although it may be an unpopular stance, the tragic nature of this particular offense cannot bypass the principles that underpin our basic freedoms.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Aug 2018 16:58:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"WPTavern: WPWeekly Episode 327 – Truth, Misinformation, and Good Ideas\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=83205&preview=true&preview_id=83205\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wptavern.com/wpweekly-episode-327-truth-misinformation-and-good-ideas\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2980:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss what&#8217;s new in the world of WordPress. First, we talk about Syed Balkhi&#8217;s growth accelerator fund and learn that Jacoby pitched a similar idea to Balkhi at WordCamp Miami 2017.</p>\n<p>We discuss the new feedback surrounding Gutenberg thanks to the call out in WordPress 4.9.8. Near the end of the show, we have a thoughtful conversation around misinformation, truth, and the fine line of allowing freedom of speech on private platforms.</p>\n<p>I apologize for the audio quality in this episode. During the Live hangout, there were no issues detected. However, once the video was encoded by YouTube, audio issues were present, the video was choppy, and the length of the show was shortened.</p>\n<p>Unfortunately, I&#8217;ve been complacent with Google Hangouts&#8217; reliability and have not been recording my audio locally. Beginning next week, Jacoby and I will record our audio locally so if this issue happens again, we&#8217;ll be able to combine the audio tracks. Although there are parts of this episode that are difficult to listen too, I believe there is enough good audio in the show to warrant its publication.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/syed-balkhi-launches-a-wordpress-focused-growth-accelerator-fund\">Syed Balkhi Launches A WordPress-focused Growth Accelerator Fund</a><br />\n<a href=\"https://wptavern.com/gutenberg-plugin-garners-mixed-reactions-from-new-wave-of-testers\">Gutenberg Plugin Garners Mixed Reactions from New Wave of Testers</a><br />\n<a href=\"https://wptavern.com/mythic-a-wordpress-starter-theme-by-justin-tadlock-now-in-open-beta\">Mythic: A WordPress Starter Theme by Justin Tadlock Now in Open Beta</a><br />\n<a href=\"https://wptavern.com/advanced-custom-fields-to-add-gutenberg-compatibility-in-version-5-0-slated-for-september\">Advanced Custom Fields to Add Gutenberg Compatibility in Version 5.0, Slated for September</a><br />\n<a href=\"https://wptavern.com/ephox-creators-of-tinymce-rebrand-to-tiny-technologies-inc\">Ephox, Creators of TinyMCE, Rebrand to Tiny Technologies Inc.</a><br />\n<a href=\"https://www.nytimes.com/2018/08/13/business/media/sandy-hook-conspiracies-leonard-pozner.html\">This Company Keeps Lies About Sandy Hook on the Web</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, August 22nd 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #327:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Aug 2018 23:07:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"HeroPress: India and HeroPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2604\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://heropress.com/india-and-heropress/#utm_source=rss&utm_medium=rss&utm_campaign=india-and-heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3554:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2017/08/082317-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Nothing is better than a girl who writes code.\" /><p>It&#8217;s no secret that HeroPress was greatly helped in its early days by people from India. Jeet, <a href=\"https://heropress.com/essays/ill-keep-looking-for-a-cms-unless-i-find-wordpress/\">Saurabh</a>, <a href=\"https://heropress.com/essays/wordpress-my-passport-to-open-source/\">Aditya</a>, <a href=\"https://heropress.com/essays/growing-wordpress-india/\">Alexander</a>, and <a href=\"https://heropress.com/?s=india\">many others</a> gave deep and meaningful advice on how I, as a white American male, should approach the task I had set before me. This is one of the reasons it makes me so happy when I hear stories of how WordPress changes lives there, especially for women.</p>\n<p>This week&#8217;s HeroPress replay is from Juhi Patel, from Gujarat, in northwestern India. As I recall, hers was also the very first HeroPress essay to be multi-lingual, something I&#8217;ve always wanted.</p>\n<p>Juhi&#8217;s culture isn&#8217;t too keen on women doing Professional work, a problem not all that uncommon throughout the world. Not only did she have the courage to move against that belief system, WordPress gave her the tools to practically make it happen, and thereby be an example to other women around her. There are still good things happening in the world, and Juhi is helping to make them happen.</p>\n<p>Check out her essay here:</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/wordpress-good-indian-women/\">Is WordPress Good for Indian Women?</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: India and HeroPress\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=India%20and%20HeroPress&via=heropress&url=https%3A%2F%2Fheropress.com%2Findia-and-heropress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: India and HeroPress\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Findia-and-heropress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Findia-and-heropress%2F&title=India+and+HeroPress\" rel=\"nofollow\" target=\"_blank\" title=\"Share: India and HeroPress\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/india-and-heropress/&media=https://heropress.com/wp-content/uploads/2017/08/082317-150x150.jpg&description=India and HeroPress\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: India and HeroPress\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/india-and-heropress/\" title=\"India and HeroPress\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/india-and-heropress/\">India and HeroPress</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Aug 2018 11:00:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"WPTavern: Yoast SEO 8.0 Introduces Gutenberg Sidebar Integration, Revamps Classic Editor Meta Box\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83162\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://wptavern.com/yoast-seo-8-0-introduces-gutenberg-sidebar-integration-revamps-classic-editor-meta-box\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3396:\"<p><a href=\"https://yoast.com/yoast-seo-8-0-introducing-the-yoast-seo-gutenberg-sidebar-a-revamped-meta-box/\" rel=\"noopener noreferrer\" target=\"_blank\">Yoast SEO 8.0</a>, featuring the plugin&#8217;s first pass at integrating with the Gutenberg interface. This major update also revamps the classic editor&#8217;s meta box for those who do not have the Gutenberg plugin installed.</p>\n<p>In the past, the Yoast SEO meta box was displayed below the post editor. In the Gutenberg UI, the meta box has been redesigned to fit in the sidebar. Those testing Gutenberg will also temporarily find an additional meta box below the post, as the Yoast team has not yet added all optimizations to both yet. In the future, users will have the option to choose between the two.</p>\n<p>The updated design displays individual optimizations in collapsible panels with colored smiley face indicators for feedback at a glance. The snippet preview and social previews feature can still be found in the meta box below the post editor. They will be integrated more tightly into the Gutenberg UI in a future round of updates.</p>\n<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/gutenberg-sidebar-yoast.jpg?ssl=1\"><img /></a>image credit: <a href=\"https://yoast.com/yoast-seo-8-0-introducing-the-yoast-seo-gutenberg-sidebar-a-revamped-meta-box/\">Yoast SEO</a>\n<p>Yoast SEO 8.0 also brings some of the meta box UI improvements to the one displayed in the classic editor. It organizes all of the Yoast SEO tools into collapsible panels for a look that is cleaner than the tabs found in the previous UI.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-14-at-1.04.17-PM.png?ssl=1\"><img /></a></p>\n<p>Version 8.0 is the first step towards Gutenberg integration. The Yoast SEO team is working on using modals to display previews for snippets and social posts from the sidebar so the interface isn&#8217;t split across two meta boxes. Users will eventually have the option to toggle either meta box display option into view, including those who are using the classic editor. The team is also working on allowing users to create blocks with the correct structured data automatically attached for things like books, recipes, products, and other specific content types.</p>\n<p>WordPress.org has a handful of popular SEO plugins and Yoast SEO is currently leading the pack when it comes to integration with the Gutenberg UI. In a recent support <a href=\"https://wordpress.org/support/topic/gutenberg-12/#post-10379255\" rel=\"noopener noreferrer\" target=\"_blank\">thread</a>, All in One SEO Pack creator Michael Torbert said his plugin is &#8220;compatible with Gutenberg and will be getting new features to work with it in time.&#8221; Torbert doesn&#8217;t have full <a href=\"https://github.com/semperfiwebdesign/all-in-one-seo-pack/issues/1122\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg integration</a> assigned to a milestone on GitHub yet.</p>\n<p>The SEO Framework, another SEO plugin growing in popularity, appears to be in the same boat if <a href=\"https://github.com/sybrew/the-seo-framework/issues/235\" rel=\"noopener noreferrer\" target=\"_blank\">GitHub activity</a> is any indication. The plugin&#8217;s author, Sybre Waaijer, has discussed the possibility of inserting the meta box into the Gutenberg sidebar, similar to the Yoast implementation.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Aug 2018 04:19:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: Syed Balkhi Launches A WordPress-focused Growth Accelerator Fund\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83179\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/syed-balkhi-launches-a-wordpress-focused-growth-accelerator-fund\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1716:\"<p>Syed Balkhi, founder of WPBeginner, has announced a <a href=\"https://www.wpbeginner.com/news/announcing-the-wpbeginner-growth-accelerator-fund/\">growth accelerator fund</a> aimed at helping companies focused on WordPress prosper. </p>\n\n<p>The fund will provide between $100K-500K to a small group of selected companies. In addition to the funding, selected companies will be able to take advantage of Awesome Motive&#8217;s media presence, network of business associates, and receive guidance.</p>\n\n<p>&#8220;The problem is that the WordPress market is not very well understood by investors,&#8221; Balkhi said. &#8220;And frankly, the majority of WordPress businesses are not large enough to meet their criteria.</p>\n\n<p>&#8220;But this doesn’t mean that WordPress businesses don’t have the potential. It’s quite the opposite – they have a lot of potential. There are tons of opportunities to grow in the WordPress ecosystem with the right playbook, and I want to help prove that.&#8221;</p>\n\n<p>Founders will be given a lot of advice although they won&#8217;t be required to act upon it. Backers of the growth fund will also maintain a hands-off approach, interfering as little as possible with day-to-day operations. </p>\n\n<p>Five companies will be hand-selected to receive funding. To be eligible for investments, WordPress-focused companies must be at least six months old. To apply, founders need to fill out the <a href=\"https://www.wpbeginner.com/news/announcing-the-wpbeginner-growth-accelerator-fund/#wpbfund\">following form</a>.</p>\n\n<p>The WPBeginner growth accelerator fund could be the jump start that gives a handful of companies the opportunity to take things to the next level. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Aug 2018 00:15:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WPTavern: Sami Keijonen’s Foxland Themes and Plugins are Now Available for Free\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82882\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://wptavern.com/sami-keijonens-foxland-themes-and-plugins-are-now-available-for-free\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3674:\"<p>WordPress theme designer and developer <a href=\"https://profiles.wordpress.org/samikeijonen\" rel=\"noopener noreferrer\" target=\"_blank\">Sami Keijonen</a> has made all of his theme and plugin products at Foxland <a href=\"https://foxland.fi/foxland-products-for-free/\" rel=\"noopener noreferrer\" target=\"_blank\">available for free</a>. Keijonen&#8217;s WordPress.org-hosted themes are active on more than 10,000 websites.</p>\n<p>During the past three years he began taking on more client work, which gave him less time for theme building and maintenance. Last month he accepted a front-end engineer position at 10up that is keeping him busy.</p>\n<p>Fans might remember Keijonen&#8217;s <a href=\"https://wptavern.com/the-mina-olen-free-wordpress-theme-experiment\" rel=\"noopener noreferrer\" target=\"_blank\">Mina Olen Free WordPress Theme Experiment</a> when he made the theme available for free on GitHub to see if potential customers would be inspired to purchase after being able to test drive the theme on their own sites. At that time he said he struggled to support his theme shop, because the business aspect of it wasn&#8217;t one of his strengths.</p>\n<p>It&#8217;s easy to get lost in all the competition in the WordPress theme industry, especially when major players have more money to drop on advertising and support staff. The days of building a beautiful theme and selling it without any kind of marketing are long gone. Prospective theme developers have to be ready to embrace the challenges of competing in a much wider market in 2018.</p>\n<p>&#8220;Foxland isn’t a gold mine,&#8221; Keijonen said in his announcement. &#8220;Foxland brings about 3,000 to 4,000 Euros per year, which is OK but my goal was 10,000 euros.&#8221;</p>\n<p>Customers appreciated Keijonen&#8217;s attention to detail, accessibility, and performance. Respected WordPress theme author <a href=\"https://tungdo.github.io/\" rel=\"noopener noreferrer\" target=\"_blank\">Tung Do</a> said Keijonen&#8217;s themes are &#8220;great examples of best practices.&#8221; Many of them also include support for popular plugins.</p>\n<p>For example, <a href=\"https://foxland.fi/downloads/checathlon/\" rel=\"noopener noreferrer\" target=\"_blank\">Checathlon</a>, one of his best works, is active on <a href=\"https://foxland.fi/\" target=\"_blank\" rel=\"noopener noreferrer\">foxland.fi</a>. It offers built-in styles for Easy Digital Downloads (including product and account pages), Custom Content Portfolio, and Jetpack (testimonials, portfolio, and email subscription widget).</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/04/checathlon.png?ssl=1\"><img /></a></p>\n<p>The <a href=\"https://foxland.fi/downloads/category/themes/\" rel=\"noopener noreferrer\" target=\"_blank\">Foxland collection</a> includes several beautiful minimalist free themes with previously-pro versions that enable additional Customizer settings, page templates, and widgets. All of Keijonen&#8217;s custom <a href=\"https://foxland.fi/downloads/category/plugins/\" rel=\"noopener noreferrer\" target=\"_blank\">plugins</a> (created to accompany the themes) are also available for free.</p>\n<p>The Foxland shop has cancelled all the recurring subscriptions but will continue to support existing purchases up to a year from the purchase date. Keijonen said he will maintain most of the old themes and plugins with small updates coming in the future but plans to deprecate some as well.</p>\n<p>The landscape of WordPress theming is about to change quite a bit when Gutenberg is merged into core. Keijonen said he plans to embrace these changes by creating new free themes with Gutenberg support, built on more modern code.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Aug 2018 23:46:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: New BackYourStack Tool Drives Financial Support for Open Source Projects\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83100\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/new-backyourstack-tool-drives-financial-support-for-open-source-projects\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2606:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-11-at-5.17.24-PM-e1534026554562.png?ssl=1\"><img /></a></p>\n<p><a href=\"https://opencollective.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Open Collective</a> launched in 2017 as a new organization that helps groups raise funds and manage them transparently. The service is now widely used by many open source projects. Webpack, one of the first major Open Collective success stories, was able to fund its first full-time developer through the service and is now <a href=\"https://opencollective.com/webpack\" rel=\"noopener noreferrer\" target=\"_blank\">operating on an estimated annual budget of $331,471</a>. The <a href=\"https://wptavern.com/how-the-san-francisco-wordpress-meetup-is-using-open-collective-to-fund-activities\" rel=\"noopener noreferrer\" target=\"_blank\">San Francisco WordPress meetup</a> (WPSFO) is one example of a WordPress group that successfully uses the service to <a href=\"https://opencollective.com/wordpress-sf\" rel=\"noopener noreferrer\" target=\"_blank\">receive sponsorships</a> that help cover expenses for events.</p>\n<p>Open Collective has launched a new tool called <a href=\"https://backyourstack.com/\" rel=\"noopener noreferrer\" target=\"_blank\">BackYourStack</a> that helps people and organizations become aware of projects they use that need funding. The tool scans GitHub accounts (for individuals and organizations) and identifies projects that have already set up accounts on Open Collective. The tool shows all detected dependencies and the repositories where they are used.</p>\n<p>Here are a few sample results you get from scanning the WordPress GitHub account:</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-13-at-11.36.42-AM.png?ssl=1\"><img /></a></p>\n<p>The results display where project is used, the number of full-time maintainers, progress to reach the next goal, and a few organizations that are already backing the project. Open Collective also allows backers to support multiple dependences in bulk via a lump sum as an alternative to backing each project individually.</p>\n<p>Not every open source project listed on Open Collective will have the need to fund salaries and events, but even a small yearly budget can reduce out-of-pocket costs for open source maintainers for things like hosting and promotional costs. Many widely used open source projects go without funding because users are not aware of their needs. BackYourStack helps people and organizations make a direct connection to the projects they depend on.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Aug 2018 17:38:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"WPTavern: Gutenberg 3.5.0 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83084\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wptavern.com/gutenberg-3-5-0-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1260:\"<p><a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg</a> 3.5.0 <a href=\"https://make.wordpress.org/core/2018/08/09/whats-new-in-gutenberg-9th-august/\">is available</a> for download and polishes existing features. This release adds an edit button to embed blocks that allows users to edit the source URL. </p>\n\n<img />Edit URL Button on Embed Blocks\n\n<p>The contrast has been increased for input fields and check boxes have visually more distinct states as the following video shows. </p>\n\n\n\nMore Distinct States for Check boxes\n\n<p>One notable change is the <a href=\"https://github.com/WordPress/gutenberg/pull/8640\">addition of a warning</a> that displays if Cloudflare blocks REST API requests. This issue <a href=\"https://github.com/WordPress/gutenberg/issues/2704\">was reported</a> last September and it turns out that the PUT request is sometimes blocked by Cloudflare.</p>\n\n<p>Gary Pendergast <a href=\"https://github.com/WordPress/gutenberg/issues/2704#issuecomment-410563259\">reached out</a> to Cloudflare and the company deployed a fix earlier this week. </p>\n\n<p>To see a full list of changes in this release, check out <a href=\"https://make.wordpress.org/core/2018/08/09/whats-new-in-gutenberg-9th-august/\">the changelog</a>. </p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 10 Aug 2018 21:16:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: Ephox, Creators of TinyMCE, Rebrand to Tiny Technologies Inc.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83078\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wptavern.com/ephox-creators-of-tinymce-rebrand-to-tiny-technologies-inc\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1948:\"<p>Ephox, the creators of the <a href=\"https://www.tiny.cloud/features/\">TinyMCE editor</a> library that&#8217;s been used by WordPress for more than 10 years, has <a href=\"https://go.tiny.cloud/blog/a-tiny-name-change/\">changed its company name</a> to Tiny Technologies Incorporated. </p>\n\n<p>The new name provides an at-a-glance view of what the company does and establishes a tighter relationship with its flagship product. </p>\n\n<blockquote class=\"wp-block-quote\"><p>To make it easier for you to understand who we are and what we are working on, we have decided to put all of our efforts behind the Tiny brand. Renaming our company to Tiny Technologies Inc. demonstrates the efforts we are making to have TinyMCE the best choice for online rich text editing.</p><cite>Andrew Roberts, CEO and Co-founder of Tiny<br /></cite></blockquote>\n\n<p>In addition to the name change, the company has migrated its web presence to a new domain, <a href=\"https://www.tiny.cloud/\">tiny.cloud</a>. The Cloud top-level domain is managed by Aruba PEC SpA, a wholly owned subsidiary of <a href=\"https://www.aruba.it/en/home.aspx\">Aruba S.p.A.</a>, one of the largest webhosting providers in Europe. </p>\n\n<p>According to Andrew Roberts, CEO and Co-founder of Tiny, existing customers and vendors of Ephox Corporation don&#8217;t need to do anything different since the company is registered to do business under both names. </p>\n\n<p>Roberts also shared insight into the work being done on <a href=\"https://textbox.io/\">Textbox.io</a>, the company&#8217;s mobile-first text editor. &#8220;We continue to support and release updates to our mobile-first online rich text editor, Textbox.io,&#8221; he said. &#8220;By the end of 2019, we do see both TinyMCE and Textbox.io coming together but for now, they are independent projects.&#8221;</p>\n\n<p>TinyMCE is an <a href=\"https://www.tiny.cloud/download/\">open source project</a> that is licensed under LGPL 2.1. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 09 Aug 2018 23:07:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"WPTavern: Yoast SEO Team is Testing Gutenberg Integration Coming in Version 8.0 Next Week\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83059\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://wptavern.com/yoast-seo-team-is-testing-gutenberg-integration-coming-in-version-8-0-next-week\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5899:\"<p>Joost de Valk tweeted a sneak peek of the Gutenberg integration the Yoast SEO team is currently testing. The <a href=\"https://wordpress.org/plugins/wordpress-seo/\" rel=\"noopener noreferrer\" target=\"_blank\">plugin</a> has more than 5 million active installations and is one that packs a lot into its wide meta box. Users have been curious about what compatibility with the new editor will look like for Yoast SEO. de Valk tweeted a preview of the plugin working inside the Gutenberg UI:</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Officially still on holiday&#8230; But, testing our <a href=\"https://twitter.com/yoast?ref_src=twsrc%5Etfw\">@yoast</a> SEO Gutenberg integration as the first real integration piece is due next week, this is making me happy (and extremely proud of our team):<a href=\"https://twitter.com/hashtag/gutenberg?src=hash&ref_src=twsrc%5Etfw\">#gutenberg</a> <a href=\"https://twitter.com/hashtag/wordpress?src=hash&ref_src=twsrc%5Etfw\">#wordpress</a> <a href=\"https://twitter.com/hashtag/yoast?src=hash&ref_src=twsrc%5Etfw\">#yoast</a> <a href=\"https://t.co/UHFAdH0wAt\">pic.twitter.com/UHFAdH0wAt</a></p>\n<p>&mdash; Joost de Valk (@jdevalk) <a href=\"https://twitter.com/jdevalk/status/1027284212511109131?ref_src=twsrc%5Etfw\">August 8, 2018</a></p></blockquote>\n<p></p>\n<p>For the past several months the team has been making progress on the plugin&#8217;s <a href=\"https://github.com/Yoast/wordpress-seo/issues/9189\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg integration roadmap</a>. Yoast SEO 8.0 is coming next week with the first round of compatibility in place.</p>\n<p>&#8220;8.0 is coming on Tuesday with most of it, some bits are relying on the integration of an annotations API in Gutenberg, which is not entirely under our control,&#8221; de Valk said. &#8220;We need that to do markings like we do in the classic editor to highlight where your errors are. Feature complete is quite a while off &#8211; we want to do a LOT. Gutenberg is opening a whole new playing field for us in terms of more in context, actionable feedback.&#8221;</p>\n<p>Future versions of Yoast SEO will offer more features inline, instead of housing them in a single meta box.</p>\n<p>&#8220;We started by breaking down all our features, and seeing where we could integrate them into Gutenberg,&#8221; de Valk said in a <a href=\"https://yoast.com/gutenberg-integration/\" rel=\"noopener noreferrer\" target=\"_blank\">post</a> outlining Yoast SEO&#8217;s planned approach back in October 2017. &#8220;We don’t think holding on to a single, massive box below the editor will best serve our customers. We’d much rather integrate right where the action happens, and Gutenberg offers us that chance.&#8221;</p>\n<p>For example, readability analysis can be shown on a per-block basis to provide more fine-grained feedback:</p>\n<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/readability-analysis.jpg?ssl=1\"><img /></a>image credit: <a href=\"https://yoast.com/gutenberg-integration/\">Yoast SEO</a>\n<p>&#8220;You’ll get actionable feedback in context,&#8221; de Valk said. &#8220;You don’t have to scroll down to a meta box to see the advice and scroll up again to the place where you should implement it. If we give feedback per block, you will get a better understanding of all the factors that influence SEO.&#8221;</p>\n<p>The Yoast SEO team has been enthusiastic about what the Gutenberg era will bring to WordPress. In a recent <a href=\"https://twitter.com/jdevalk/status/1026084237508788225\" rel=\"noopener noreferrer\" target=\"_blank\">Twitter thread</a>, de Valk summarized his thoughts on the project and described the direction the Yoast SEO plugin is headed:</p>\n<blockquote><p>[I&#8217;ve] been thinking about Gutenberg more lately, as discussion about it is growing now that it&#8217;s near to WordPress core inclusion. What is most important in what we&#8217;re doing is something I think most people don&#8217;t see yet: The new &#8216;blocks&#8217; that Gutenberg introduces allow us to, much more easily, make content items instead of web pages the smallest particle of the web.</p>\n<p>Questions and answers, how to&#8217;s, recipes, suddenly all of them can much more easily have metadata, and be reused. This is particularly important to SEOs: the search engines, driven by voice search requirements, are searching for answers, more than for &#8216;just&#8217; URLs to send traffic to, and blocks allow us to give them those answers, in a format both they and users can understand. While doing this, it allows us to keep the separation of content and design, something we definitely need to think more about.</p></blockquote>\n<p>With Gutenberg compatibility on its way from widely-used plugins like ACF and Yoast SEO, users can have confidence more plugins they depend on will follow suit. These major players are the first cracks in the ice across the ecosystem that will soon make Gutenberg-support the standard for any product that wants to compete.</p>\n<p>de Valk encouraged users to look at the advent of Gutenberg as a door to new opportunities during this transition time.</p>\n<p>&#8220;Gutenberg is not &#8216;done,\'&#8221; de Valk said. &#8220;I think it&#8217;s ready to ship, but I also think it opens up a world of new opportunities and discussions. It&#8217;s not all &#8216;right&#8217; yet either, so there will have to be changes as more people use it and get used to it. I do realize this is a drastic change in some ways. But it&#8217;s also not half as bad as people think it is. I have seen people use it for the first time, most people get used to it very quickly. Last but not least: you don&#8217;t have to switch now. The classic editor plugin exists for a reason. You can put off your switch for a year, or even two. But eventually I think everyone will see the power of the new editor and will switch.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 09 Aug 2018 21:54:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"WPTavern: Advanced Custom Fields to Add Gutenberg Compatibility in Version 5.0, Slated for September\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83016\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"https://wptavern.com/advanced-custom-fields-to-add-gutenberg-compatibility-in-version-5-0-slated-for-september\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4880:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-08-at-10.50.38-PM.png?ssl=1\"><img /></a></p>\n<p>The <a href=\"https://wordpress.org/plugins/advanced-custom-fields/\" rel=\"noopener noreferrer\" target=\"_blank\">Advanced Custom Fields</a> (ACF) team published an <a href=\"https://www.advancedcustomfields.com/blog/the-state-of-acf-in-a-gutenberg-world/\" rel=\"noopener noreferrer\" target=\"_blank\">announcement</a> today, assuring users that Gutenberg compatibility is in the works and will be available in version 5.0 of the free version in September 2018. The plugin, created by Elliot Condon, makes it easy for developers to add custom fields to WordPress edit screens, including posts, users, taxonomy terms, and media.</p>\n<p>ACF is widely used with more than a million active installations. Developers have been concerned about whether or not their custom fields would continue to work on their clients&#8217; websites after the new editor makes its debut in WordPress 5.0.</p>\n<p>Gutenberg treats legacy metaboxes as second class citizens in the interface, stuffed at the bottom of the new edit screen. Metaboxes should, however, continue to work as expected. The ACF announcement lets developers know what to expect for how their metaboxes will appear inside Gutenberg:</p>\n<blockquote><p>By default, our beloved metaboxes are pushed all the way to the bottom of the screen in an awkward attempt to retain compatibility. This placement feels very much like an afterthought from the Gutenberg developers and creates a disjointed editing experience for those of us (1+ million awesome ACF users) who extend the edit screens with extra fields.</p>\n<p>While this setup isn’t ideal, we will continue to work within the system to ensure that ACF is integrated into the Gutenberg UI to the fullest extent possible.</p></blockquote>\n<p>The free version of ACF will introduce Gutenberg compatibility in its version 5 release, which is slated for early September 2018. The compatibility update will only apply to version 5 and later, so the ACF team urges developers to running 4.x to upgrade to 5 as soon as it becomes available. Developers can also elect to upgrade early by turning on ACF&#8217;s <a href=\"https://www.advancedcustomfields.com/resources/upgrade-guide-version-5/\" rel=\"noopener noreferrer\" target=\"_blank\">Early Access</a> feature.</p>\n<p>The most surprising news is that ACF is introducing its own &#8220;ACF Blocks,&#8221; an <code>acf_register_block()</code> function that allows developers to register their own custom blocks without having to learn JavaScript.</p>\n<blockquote><p>One of the big selling points of Gutenberg is the ability for developers to create custom blocks. The challenge is that the process is very JavaScript-intensive and not so friendly to PHP developers. But never fear, because ACF Blocks is here to turn that narrative upside down!</p>\n<p>We have been hard at work building a PHP friendly game-changer for you to quickly create new block types using ACF fields to power PHP templates!</p></blockquote>\n<p>ACF Blocks may be an unexpected development for those using the plugin, as the ACF team&#8217;s recent tweets have frequently communicated their disappointment with Gutenberg.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Just spent the day working with <a href=\"https://twitter.com/hashtag/gutenberg?src=hash&ref_src=twsrc%5Etfw\">#gutenberg</a>&#8230; <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f915.png\" alt=\"🤕\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/11/72x72/1f624.png\" alt=\"😤\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/11/72x72/1f626.png\" alt=\"😦\" class=\"wp-smiley\" /> Frustrated, annoyed and surprised at how buggy the editing experience is.</p>\n<p>&mdash; Advanced Custom Fields (@wp_acf) <a href=\"https://twitter.com/wp_acf/status/1026724444327178240?ref_src=twsrc%5Etfw\">August 7, 2018</a></p></blockquote>\n<p></p>\n<p>The availability of the ACF Blocks function is a strategic move that continues to make ACF indispensable for users who may not have made the time to improve their technical skills with regards to extending Gutenberg.</p>\n<p>&#8220;Using ACF to make custom blocks was something I thought could happen, but not necessarily would happen,&#8221; WordPress developer Roy Sivan <a href=\"https://twitter.com/royboy789/status/1027199624669327360\" rel=\"noopener noreferrer\" target=\"_blank\">said</a>. &#8220;They proved me wrong, and its a big deal.&#8221;</p>\n<p>The news should come as a relief for developers who have used ACF liberally on client sites and feel under the gun with Gutenberg&#8217;s proposed time frame for inclusion in core. The ACF team is working to make sure developers&#8217; customizations continue to work as seamlessly as possible when WordPress 5.0 is released.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 09 Aug 2018 04:57:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: WPWeekly Episode 326 – Long Live the Fields API Project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=83037&preview=true&preview_id=83037\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/wpweekly-episode-326-long-live-the-fields-api-project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1687:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by <a href=\"https://www.scottkclark.com/\">Scott Kingsley Clark</a>, lead developer of the <a href=\"http://pods.io/\">Pods framework</a>. Clark describes what it was like to lead the Fields API project, the difficulties of working hard on a project and not getting core buy-in, and why building the Fields API into core first would have made the transition to Gutenberg easier for users and developers.</p>\n<p>He looks back and describes what he possibly could have done differently and provides an update on Pods Framework&#8217;s compatibility with Gutenberg. To wrap up the show, Clark played us a song on his electric ukulele. To hear more tunes from Clark, check out <a href=\"https://soundcloud.com/soft-charisma\">his channel on SoundCloud</a>.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/wordpress-core-fields-api-project-is-seeking-new-leadership\">WordPress Core Fields API Project is Seeking New Leadership</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, August 15th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #326:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 09 Aug 2018 02:34:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WPTavern: Mythic: A WordPress Starter Theme by Justin Tadlock Now in Open Beta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=83029\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wptavern.com/mythic-a-wordpress-starter-theme-by-justin-tadlock-now-in-open-beta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4765:\"<p><a href=\"http://justintadlock.com/\">Justin Tadlock</a>, founder of <a href=\"https://themehybrid.com/\">Theme Hybrid</a>, has <a href=\"https://themehybrid.com/weblog/mythic-your-new-starting-point-for-theme-design\">released Mythic</a>, a starter theme that provides modern tools to get theme developers started on the right foot. </p>\n\n<blockquote class=\"wp-block-quote  is-style-large\"><p>Theming in 2018 is much different than theming in 2008. Without the right tools, it can be overwhelming to simply get started building even the most basic theme.</p><cite>Justin Tadlock</cite></blockquote>\n\n<p>While starter themes are nothing new in the WordPress space, Mythic and <a href=\"https://wptavern.com/wp-rig-a-wordpress-starter-theme-and-build-process-in-one\">WP Rig</a> take things to the next level and relatively share the same goal of providing a modern foundation to develop on top of. </p>\n\n<p>Part of the inspiration to build Mythic began two years ago. In trying to revamp the <a href=\"https://wordpress.org/themes/news/\">News theme</a>, Tadlock became frustrated with how difficult it was to use old coding methods and dropped the project.<br />><br /><br /><br /><br /><br />&#8220;In a lot of ways, it was the catalyst that started me down this road toward Mythic,&#8221; Tadlock said. &#8220;I didn&#8217;t realize it at the time. But, that&#8217;s where some of my frustration began with modern theme building.&#8221;</p>\n\n<p>Mythic supports PHP 5.6+ although Tadlock is strongly pushing developers towards PHP 7+. &#8220;Anything earlier than 5.6 means for clunky code that’s just a headache to maintain,&#8221; he said. &#8220;WordPress, as a community, needs to be pushing people to update.&#8221;</p>\n\n<p>Support for SASS, LESS, CSS, and Stylus are built-in and developers can choose which language they prefer for builds. ES6+ was chosen for JavaScript and is commonly used for building Gutenberg blocks. </p>\n\n<p>Mythic comes with <a href=\"http://getbem.com/\">BEM</a> or Block-Element-Modifier. BEM is a methodology that enables developers to create reusable elements and sharing code in front-end environments. </p>\n\n<p>&#8220;BEM is a popular solution because it goes hand-in-hand with modern CSS pre-processors,&#8221; Tadlock said. &#8220;It also allows you to keep your styles flat and not get lost in <em>specificity hell</em>. This means smaller, faster stylesheets that are easier to override when you, a child theme author, or user need to do something custom.&#8221; The starter theme uses <a href=\"https://webpack.js.org/\">Webpack</a> in combination with <a href=\"https://github.com/JeffreyWay/laravel-mix\">Laravel Mix</a> to manage assets and modules.<br /></p>\n\n<p>Mythic has an <a href=\"https://themehybrid.com/weblog/working-with-the-view-class\">extended View class</a> that allows theme authors to use their preferred folder structure. Theme authors can also add custom data to theme templates. According to Tadlock, both features are not part of WordPress&#8217; native templating system. </p>\n\n<p>In addition to Mythic, Tadlock has continued to work on the <a href=\"https://themehybrid.com/hybrid-core\">Hybrid Core </a>framework. Hybrid Core is a required dependency that is added via Composer. </p>\n\n<p>Using Mythic with Hybrid Core exposes developers to features of the framework that they otherwise may not discover. &#8220;I rewrote nearly all of HC5 from scratch,&#8221; he said. &#8220;As a result, it’s leaner, more organized, and more cohesive.&#8221; The starter theme is also Gutenberg-ready.<br /></p>\n\n<h2>Tadlock Experiments with Sponsorship Pricing Model<br /></h2>\n\n<p>Mythic is in open beta and available for free via <a href=\"https://github.com/justintadlock/mythic\">GitHub</a>. The <a href=\"https://themehybrid.com/themes/mythic\">pricing model</a> is an honor system experiment. Tadlock is asking those who build projects for clients and generating a profit, to make a $99 sponsorship purchase. For commercially-sold themes, he is asking for $199. Both packages come with one year of support and access to the company&#8217;s Slack channel. <br /></p>\n\n<p>&#8220;I&#8217;m still taking feedback on the payment system,&#8221; Tadlock said. &#8220;It could change. There have been a few suggestions more of a lifetime/flat fee. I&#8217;d prefer to just get some generous sponsors and keep it all $free. We&#8217;ll see where that goes in this next month of the beta process.&#8221;</p>\n\n<p>Mythic&#8217;s beta ends on September 3rd in which he&#8217;ll release version 1.0. Until then, he is trying to get as much feedback as possible from developers. To file issues, submit feedback, and contribute, visit the <a href=\"https://github.com/justintadlock/mythic\">project&#8217;s GitHub page</a>. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 09 Aug 2018 00:40:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: Watch the Top 10 Sessions from WordCamp Europe 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82962\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wptavern.com/watch-the-top-10-sessions-from-wordcamp-europe-2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3937:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/WCEU-2018.jpg?ssl=1\"><img /></a>photo credit: <a href=\"https://www.flickr.com/photos/wceu/41176987410/\">Val Vesa</a>\n<p>The results of the <a href=\"https://2018.europe.wordcamp.org/2018/08/07/results-of-the-wceu-2018-attendee-survey/\" rel=\"noopener noreferrer\" target=\"_blank\">WCEU 2018 Attendee Survey</a> are in: 98% of the 566 respondents from 49 countries said they would recommend WCEU to a friend and 90% are very likely to attend the next event in Berlin. Of those who participated in the survey, 49% were attending WCEU for the first time and 37% of them were attending their first WordCamp. Overall, attendees reported overwhelmingly positive experiences, which is a big affirmation of the organizing team that continues to lift the bar higher for WordCamps around the world.</p>\n<p>If you missed out on the WordCamp, the good news is that you can catch all of the sessions on WordPress.tv. The top 10 sessions have been curated by attendees who responded to the survey. These sessions cover some of the most important topics for WordPress professionals in 2018 and beyond:</p>\n<ol>\n<li><a href=\"https://wordpress.tv/2018/07/04/matt-mullenweg-a-summertime-update-keynote-and-qa/\" rel=\"noopener noreferrer\" target=\"_blank\">Keynote and Q&#038;A</a> – Matt Mullenweg</li>\n<li><a href=\"https://wordpress.tv/2018/07/11/joost-de-valk-technical-seo-to-grow-your-wordpress-business/\" rel=\"noopener noreferrer\" target=\"_blank\">Technical SEO to grow your WordPress business</a> – Joost de Valk</li>\n<li><a href=\"https://wordpress.tv/2018/07/06/morten-rand-hendriksen-the-ethics-of-web-design/\" rel=\"noopener noreferrer\" target=\"_blank\">The Ethics of Web Design</a> – Morten Rand-Hendriksen</li>\n<li><a href=\"https://wordpress.tv/2018/07/09/matias-ventura-beyond-gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">Beyond Gutenberg</a> – Matías Ventura</li>\n<li><a href=\"https://wordpress.tv/2018/07/08/alberto-medina-thierry-muller-progressive-wordpress-themes/\" rel=\"noopener noreferrer\" target=\"_blank\">Progressive WordPress Themes</a> – Alberto Medina, Thierry Muller</li>\n<li><a href=\"https://wordpress.tv/2018/07/08/noel-tock-wordpress-in-2019/\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress in 2019</a> – Noel Tock</li>\n<li><a href=\"https://wordpress.tv/2018/07/05/maja-benke-accessible-design-3/\" rel=\"noopener noreferrer\" target=\"_blank\">Accessible Design</a> – Maja Benke</li>\n<li><a href=\"https://wordpress.tv/2018/07/09/adam-silverstein-javascript-apis-in-wordpress/\" rel=\"noopener noreferrer\" target=\"_blank\">JavaScript APIs in WordPress</a> – Adam Silverstein</li>\n<li><a href=\"https://wordpress.tv/2018/07/06/john-maeda-wordpress-and-inclusive-design-2/\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress and Inclusive Design</a> – John Maeda</li>\n<li><a href=\"https://wordpress.tv/2018/07/08/tammie-lister-anatomy-of-a-block-gutenberg-design-patterns/\" rel=\"noopener noreferrer\" target=\"_blank\">Anatomy of a block: Gutenberg design patterns</a> – Tammie Lister</li>\n</ol>\n<p>Attendees were also big fans of the workshops introduced at this event. 78% of respondents said they would like to see them again next year. A couple of the workshop recordings have yet to make it to WordPress.tv but may be available at a later time. The three most popular workshops attendees identified were all related to Gutenberg:</p>\n<ul>\n<li>(Gutenberg) Block Development with React – Zac Gordon, Julien Melissas</li>\n<li><a href=\"https://wordpress.tv/2018/08/07/lara-schenck-lets-build-a-gutenberg-block/\" rel=\"noopener noreferrer\" target=\"_blank\">Let’s Build a Gutenberg Block</a> – Lara Schenck</li>\n<li>Roundtable with the Gutenberg team – The Gutenberg Team</li>\n</ul>\n<p>WordCamp Europe 2019 organizers are working on providing a more efficient registration process for workshops, as well as a greater capacity for attendees.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 08 Aug 2018 18:33:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WPTavern: First Look at Live Demo of the Gutenberg Content Editor for Drupal 8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82899\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://wptavern.com/first-look-at-live-demo-of-the-gutenberg-content-editor-for-drupal-8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9601:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/08/drupal-gutenberg-project-e1533679727741.png?ssl=1\"><img /></a></p>\n<p><a href=\"https://www.drupaleurope.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Drupal Europe</a> has just announced its <a href=\"https://www.drupaleurope.org/program/sessions\" rel=\"noopener noreferrer\" target=\"_blank\">program</a> for the upcoming event in Darmstadt, Germany, September 10-14. The conference will host more than 1,600 Drupal professionals and enthusiasts for 162 hours of sessions and 9 in-depth workshops.</p>\n<p>Automattic is sponsoring the <a href=\"https://www.drupaleurope.org/program/open-web-lounge\" rel=\"noopener noreferrer\" target=\"_blank\">Open Web Lounge</a> networking space and Matt Mullenweg will be joining Dries Buytaert and Barb Palser on a panel discussing <a href=\"https://www.drupaleurope.org/session/future-open-web-and-open-source\" rel=\"noopener noreferrer\" target=\"_blank\">the future of the open web and open source</a>.</p>\n<p>One interesting WordPress-related session on the program is titled <a href=\"https://www.drupaleurope.org/session/introducing-gutenberg-content-editor-drupal-8\" rel=\"noopener noreferrer\" target=\"_blank\">Introducing the Gutenberg content editor for Drupal 8</a>. This new module ports WordPress&#8217; Gutenberg editor over to Drupal. It was created by Per André Rønsen and his team <a href=\"https://www.frontkom.no/\" rel=\"noopener noreferrer\" target=\"_blank\">Frontkom</a>, a digital services agency based in Norway.</p>\n<p>The <a href=\"https://drupalgutenberg.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Drupal Gutenberg</a> project aims to provide a new publishing experience based on WordPress&#8217; Gutenberg editor. The <a href=\"https://drupalgutenberg.org/demo\" rel=\"noopener noreferrer\" target=\"_blank\">live demo</a> on the site currently provides a frontend interactive implementation of Gutenberg inside Drupal, similar to WordPress&#8217; &#8220;Frontenberg&#8221; demo on <a href=\"https://wordpress.org/gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">wordpress.org/gutenberg</a>. The latest implementation of the module will appear there but Rønsen said it is currently being revamped, as lots of things have happened with Gutenberg in the past few weeks.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/08/drupal-gutenberg.png?ssl=1\"><img /></a></p>\n<h3>How the Drupal Gutenberg Project was Born</h3>\n<p>Rønsen told us he first saw Gutenberg in 2017 and was inspired to use it for one of Frontkom&#8217;s media clients.</p>\n<p>&#8220;The thought of forking it came mid-2017, as we explored using Gutenberg as a lib for making a front page builder sponsored by the Google Digital News Initiative,&#8221; Rønsen said. &#8220;We ended up using it, and the Drupal module is a natural spin off.&#8221;</p>\n<p>Frontkom tailored the Gutenberg-based page builder for the media industry. It adds extra functionality to Gutenberg that allows users to position and tweak articles for the front page of an online newspaper. Rønsen said the project went well and his team plans to open source it but it&#8217;s too early to share anything right now.</p>\n<p>Following this successful experience using Gutenberg for a client, Frontkom began work on the Drupal Gutenberg project in early January 2018.</p>\n<p>&#8220;The main part of the work was to make Gutenberg more CMS agnostic,&#8221; Rønsen said. &#8220;First we forked it and maintained a fork. Later we started using Gutenberg as a dependency, testing a more maintainable approach.&#8221;</p>\n<p>Rønsen opened a ticket on GitHub, requesting that the Gutenberg team consider <a href=\"https://github.com/WordPress/gutenberg/issues/2780\" rel=\"noopener noreferrer\" target=\"_blank\">structuring the project to be more CMS-agnostic</a>. The ticket was closed fairly soon with the <a href=\"https://github.com/WordPress/gutenberg/issues/2780#issuecomment-342569414\" rel=\"noopener noreferrer\" target=\"_blank\">explanation</a> that it &#8220;doesn&#8217;t relate directly to the work going on with the project and its goals.&#8221;</p>\n<p>&#8220;We have very little, if any, upstream commits so far, as the WP core interest has been to just cater to WP needs so far,&#8221; Rønsen said. &#8220;But that just changed.&#8221;</p>\n<p>Gutenberg is moving towards making it easier to use outside of WordPress. The team is working on <a href=\"https://github.com/WordPress/gutenberg/issues/3955\" rel=\"noopener noreferrer\" target=\"_blank\">publishing all the React modules as npm packages</a>. Rønsen said he anticipates that decreasing the number of globals needed to make Gutenberg work will be a huge help for other CMSs.</p>\n<p>So far the Drupal Gutenberg project has not been shared widely but Rønsen said his team has seen a lot of interest from the Drupal tech community.</p>\n<p>&#8220;We have a blog post coming in English with more detail; we kind of saved it for after holidays,&#8221; Rønsen said. &#8220;But then it blew up, and devs keep contacting us wanting to help out.&#8221;</p>\n<p>Frontkom has been involved in the Drupal community for more than 10 years and WordPress for the past three years. Rønsen and his team believe that Gutenberg fills a gap in the Drupal space.</p>\n<p>&#8220;Drupal doesn&#8217;t have all those fancy WordPress page builders,&#8221; he said. &#8220;So that is really more interesting than just a new post edit UI – we want a unified way to build complex layouts.&#8221;</p>\n<p>Drupal already has an initiative for revamping its admin UI using React, and Rønsen said he thinks Gutenberg might contribute to how this can happen in Drupal core. In an ideal world, many open source projects could greatly benefit from a CMS-agnostic Gutenberg, with all of them contributing together towards its improvement.</p>\n<p>&#8220;To us as a company, it is extremely interesting to build out front-ends that can easily be moved between CMSs,&#8221; Rønsen said. &#8220;For open source CMSs in general, I think there will be a lot to learn from the implementation process. For example, D8 has the concept of &#8216;everything is a block.&#8217; This has made it easy for us to make Drupal core blocks available in Gutenberg – we just need to do some magic to expose block settings.&#8221;</p>\n<p>The Frontkom team are not only enthusiastic fans of Gutenberg&#8217;s interface, but also appreciate the way the project is run. Rønsen hasn&#8217;t been following the <a href=\"https://wptavern.com/gutenberg-plugin-garners-mixed-reactions-from-new-wave-of-testers\" rel=\"noopener noreferrer\" target=\"_blank\">community reaction to the latest round of Gutenberg testing</a> but said he thinks WordPress users will love it long term, since &#8220;most of the page builders out there have issues.&#8221;</p>\n<p>&#8220;Drupal can learn a lot from WordPress, the way they actually built the Gutenberg project – a transparent design process, lots of collaboration, and still highly efficient,&#8221; Rønsen said. &#8220;So, WordPress is definitely ahead of Drupal with regards to their admin UI/JS work. Since there is already a lot of interest in the Drupal community to do something similar, it is very refreshing to see someone go through it and succeed (hopefully).&#8221;</p>\n<p><a href=\"https://twitter.com/stevector\" rel=\"noopener noreferrer\" target=\"_blank\">Steve Persch</a>, lead developer advocate at Pantheon, spoke at DrupalCon in Nashville 2018 about <a href=\"https://events.drupal.org/nashville2018/sessions/whats-possible-wordpress-50\" rel=\"noopener noreferrer\" target=\"_blank\">what&#8217;s possible with WordPress 5.0</a> and also gave a session at Twin Cities Drupal Camp titled &#8220;<a href=\"https://2018.tcdrupal.org/session/everything-block-how-wordpress-rewrote-wysiwyg\" rel=\"noopener noreferrer\" target=\"_blank\">Everything is a Block: How WordPress Rewrote the WYSIWYG</a>.&#8221; In response to buzz on Twitter about the Drupal Gutenberg session, Persch <a href=\"https://twitter.com/stevector/status/1026461967630983169\" rel=\"noopener noreferrer\" target=\"_blank\">said</a> Drupal needs an editorial UX improvement to stay competitive, but not necessarily by adopting Gutenberg.</p>\n<p>&#8220;We have in-progress initiatives toward that end,&#8221; Persch said. &#8220;Gutenberg itself could turn into a distraction from that work. In both [presentations] I also mentioned that Paragraphs or Layout Builder could be better data model starting points for Gutenberg-like functionality. Delivering exactly the same thing as WordPress would be self-defeating. Structured content is the heart of Drupal. I see Gutenberg (or something like it) as a better UI for the corner of the data model (the Paragraphs part) that Drupal sites have had for years.&#8221;</p>\n<p>It will be interesting to see how different open source communities approach Gutenberg and how more diverse feedback from outside of WordPress could impact the project.</p>\n<p>The <a href=\"https://www.drupal.org/sandbox/marcofernandes/2981601\" rel=\"noopener noreferrer\" target=\"_blank\">Drupal Gutenberg module</a> can be downloaded from the project page. It&#8217;s currently marked as an experimental module and is recommended for developer use only. The <a href=\"https://drupalgutenberg.org/demo\" rel=\"noopener noreferrer\" target=\"_blank\">live demo</a> for the project will soon be revamped to reflect the latest updates with Gutenberg. You can also <a href=\"https://github.com/front/drupal-gutenberg\" rel=\"noopener noreferrer\" target=\"_blank\">follow the project&#8217;s development on GitHub</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 07 Aug 2018 22:28:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WPTavern: Gutenberg Plugin Garners Mixed Reactions from New Wave of Testers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82891\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wptavern.com/gutenberg-plugin-garners-mixed-reactions-from-new-wave-of-testers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:15811:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/ship-bottle.jpg?ssl=1\"><img /></a>photo credit: KaylaKandzorra <a href=\"http://www.flickr.com/photos/48077358@N02/4952091078\">i miss you grampa.</a> &#8211; <a href=\"https://creativecommons.org/licenses/by/2.0/\">(license)</a>\n<p><a href=\"https://wptavern.com/wordpress-4-9-8-released\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress 4.9.8</a> was released as an automatic update last week, featuring the &#8220;Try Gutenberg&#8221; callout. The goal of the prompt is to get more users testing the new editor and to raise awareness. Within the first 72 hours of the prompt going into user dashboards, sites with Gutenberg installed have shot up to more than 80,000, a 300% increase. The plugin has been downloaded more than 147,000 times in the past week.</p>\n<p>Gutenberg feedback is pouring in from a wave of new testers, most of whom are finding out about the new editor for the first time. Reactions have varied widely across multiple social networks. The announcement on <a href=\"https://www.facebook.com/WordPress/posts/10156301634992911\" rel=\"noopener noreferrer\" target=\"_blank\">WordPress&#8217; official Facebook account</a> attracted many drive-by style comments that included negative reactions, confusion, and questions, with a few positive comments peppered in between.</p>\n<blockquote><p>Blocks aren’t doing it for me. Will classic continue to be available permanently? If I want a block visual editor I promise I will install one voluntarily.</p></blockquote>\n<blockquote><p>I’m hoping gutenberg will be totally optional.</p></blockquote>\n<blockquote><p>I see only few users who are exited from Gutenberg. The rest is for leaving as it is. Why the guys from WP still want to implement it in the core? Make it a plugin. Why not a plugin whyyyyyy?</p></blockquote>\n<p>Twitter users trying Gutenberg for the first time were more enthusiastic about the potential of the new editor.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Absolutely love the new Medium-like Gutenberg WordPress editor. <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f60d.png\" alt=\"😍\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/11/72x72/1f60d.png\" alt=\"😍\" class=\"wp-smiley\" /></p>\n<p>&mdash; Content Marketing Consultant (@Ebun_Oluwole) <a href=\"https://twitter.com/Ebun_Oluwole/status/1025827102401200128?ref_src=twsrc%5Etfw\">August 4, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"es\" dir=\"ltr\">me encantó Gutenberg, grande <a href=\"https://twitter.com/WordPress?ref_src=twsrc%5Etfw\">@WordPress</a> !!</p>\n<p>&mdash; Ale̶x̶ Zamorano (@alex_zamorano) <a href=\"https://twitter.com/alex_zamorano/status/1025752512593358848?ref_src=twsrc%5Etfw\">August 4, 2018</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Hey <a href=\"https://twitter.com/WordPress?ref_src=twsrc%5Etfw\">@WordPress</a> Gutenberg is dope I approve <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f44d-1f3fe.png\" alt=\"👍🏾\" class=\"wp-smiley\" /></p>\n<p>&mdash; Bodega Hive <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f3a8.png\" alt=\"🎨\" class=\"wp-smiley\" /> (@breezeSZN) <a href=\"https://twitter.com/breezeSZN/status/1025538848439394304?ref_src=twsrc%5Etfw\">August 4, 2018</a></p></blockquote>\n<p></p>\n<p>While some testers are quietly <a href=\"https://github.com/WordPress/gutenberg/issues\" rel=\"noopener noreferrer\" target=\"_blank\">reporting issues on GitHub</a>, others have written long missives in the plugin&#8217;s reviews, begging WordPress not to force the new editor on users. Gutenberg reviews are currently at a 2.4-star average, slipping from the 2.7-star average it held prior to the 4.9.8 release. Those who have written reviews tend to have reactions at both ends of the spectrum.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-06-at-3.26.57-PM.png?ssl=1\"><img /></a></p>\n<p>At this point in the testing phase, the reviews in the official directory paint a grim picture of WordPress dragging its users kicking and screaming into the Gutenberg era. However, there are many reasons why a tester might be motivated to write a negative review. Some may have ignored the advice not to use it in production, some may be testing it with incompatible plugins, some may not want any changes to their established workflow, and some may simply not like the interface.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-05-at-10.24.03-PM.png?ssl=1\"><img /></a></p>\n<p>While it may seem that the plugin has been widely panned by new testers, those who are the most critical tend to be more motivated to write a review. Those who are pleasantly surprised at something that works for them don&#8217;t tend to comment publicly. Reviews cannot possibly tell the whole tale, but they are important to monitor for feedback that could help Gutenberg succeed.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Month 14 of Gutenberg on <a href=\"https://t.co/zWh3po88LS\">https://t.co/zWh3po88LS</a> and I will keep the tradition of posting a summary of the reviews. Sadly neither time or quantity of reviews is not helping the score. Are the review biased? Is this something users like but admins hate? <a href=\"https://t.co/OMvIdUgfP4\">pic.twitter.com/OMvIdUgfP4</a></p>\n<p>&mdash; Andrew Roberts (@andrew_roberts) <a href=\"https://twitter.com/andrew_roberts/status/1025452116024807424?ref_src=twsrc%5Etfw\">August 3, 2018</a></p></blockquote>\n<p></p>\n<h2>&#8220;Try Gutenberg&#8221; Callout Succeeds at Bringing More Testers and Feedback</h2>\n<p>WordPress 4.9.8&#8217;s &#8220;Gutenprompt&#8221; is doing exactly what it was intended to do &#8211; bring out more testers. The invitation has already succeeded at pulling out some quality feedback if you can sort through all the casual, angry one-liners.</p>\n<p>Steven Peters opened a lengthy <a href=\"https://wordpress.org/support/topic/in-one-word-no-please-read-full-review/\" rel=\"noopener noreferrer\" target=\"_blank\">review</a> with the following observations about the more cumbersome and unintuitive aspects of Gutenberg&#8217;s interface:</p>\n<blockquote><p>The interface is not cohesive in its design. For example, To place a block of a paragraph, a heading, a subheading, a bullet list and every other block, the user must click the + sign every single time, making it that much harder to ‘go with the flow’ of writing, and is cumbersome and time-consuming. Time-consuming: a click for each block instead of just writing. More clicks equal wasted time.</p></blockquote>\n<p>In a review titled &#8220;<a href=\"https://wordpress.org/support/topic/lots-of-potential-but-too-soon-for-core/\" rel=\"noopener noreferrer\" target=\"_blank\">Lots of potential but too soon for core</a>,&#8221; Mark Wilkinson details several specific usability issues:</p>\n<blockquote><p>The interface I find confusing – I think it is because it is too minimal. I found that it was all too easy to add a block by mistake and then not knowing what the block was or why it was there.</p>\n<p>There is too much reliance on hover effects, with things appearing and disappearing all the time. I also find it hard to know where the focus is on the screen as it just uses a faint grey border.</p></blockquote>\n<p>Several reviewers were candid about their distaste for the concept of putting content into blocks. The Gutenberg team has readily communicated its vision for the block-based editor, but this tends to speak more to developers.</p>\n<p>&#8220;Why does every little thing have to be in a separate block?&#8221; one reviewer <a href=\"https://wordpress.org/support/topic/im-not-change-resistant-but-this-has-a-way-to-go/\" rel=\"noopener noreferrer\" target=\"_blank\">asked</a> before describing multiple usability issues with current block behavior. &#8220;That is a feature I think I actually detest. I do not want 50 zillion little fussy blocks on a page. I had entire blocks just disappear on me and a lot of the time, I was initially unsure of exactly what I did to make them disappear. This is bad. Some of the time it was placing a block, like an image block, and then deleting the image … the entire block went, which meant I had to go through the motions to add the block, then add an image block again, and then add my image again. Lame.&#8221;</p>\n<p>Multiple reviewers commented that previously simple tasks are much more complicated in Gutenberg. Others said after reading official replies to reviews, they felt that leaving specific feedback was a waste of time. Canned responses from the Gutenberg team gave some the impression that their feedback wasn&#8217;t heard or valued.</p>\n<blockquote><p>My feeling while reading the WordPress developer responses is that that they have no intention of either stopping or postponing Gutenberg no matter what bug or problem is given to their attention. &#8211; <a href=\"https://wordpress.org/support/topic/can-i-just-interject-here/\" rel=\"noopener noreferrer\" target=\"_blank\">@lauritasita</a></p></blockquote>\n<blockquote><p>I have read all the reviews (and also the Gutenberg-lovers’ replies) and it seems that it is not really a discussion. The question on what is missing in this editor is useless if people simply do not want such a feature in their install. All you do is trying to convince people that it would only take time to get used to a modern technology. In my eyes this is bullshit. I myself love new features – if they are useful. &#8211; <a href=\"https://wordpress.org/support/topic/time-to-respect-your-users-matt/\" rel=\"noopener noreferrer\" target=\"_blank\">@peg20</a></p></blockquote>\n<p>Based on the responses to reviews, it isn&#8217;t clear to testers whether the Gutenberg team is willing to make major changes to re-design features that are not easy to use or whether they are simply combing the reviews for feedback on bugs with the existing interface.</p>\n<h3>Classic Editor Plugin Installations are on the Rise as Users Prepare for WordPress 5.0</h3>\n<p>In the days following WordPress 4.9.8&#8217;s release, active installations of the <a href=\"https://wordpress.org/plugins/classic-editor/\" rel=\"noopener noreferrer\" target=\"_blank\">Classic Editor</a> plugin have jumped from 7,000 to 60,000, a 757% increase. However, none of these figures in isolation can tell the whole story of users&#8217; experience with the new editor.</p>\n<p>In <a href=\"https://www.facebook.com/groups/advancedwp/permalink/1986704551391749/?comment_id=1986914094704128&reply_comment_id=1986943451367859&comment_tracking=%7B%22tn%22%3A%22R9%22%7D\" rel=\"noopener noreferrer\" target=\"_blank\">response to criticism</a> on the Advanced WordPress Facebook group, Gutenberg contributor Gary Pendergast said he doesn&#8217;t see users installing the Classic Editor plugin as a negative reaction. &#8220;People ensuring that their site is ready for WordPress 5.0 is absolutely a good thing,&#8221; Pendergast said. &#8220;For a lot of sites, that means sticking with their current workflows for now.&#8221;</p>\n<p>Pendergast also said the growing number of Classic Editor installs is a good indication that WordPress users are &#8220;proactively maintaining their sites, and a reasonable indication that they intend to upgrade to WordPress 5.0.&#8221;</p>\n<p>&#8220;People certainly have strong feelings about it, and &#8216;fear of change&#8217; is absolutely a legitimate feeling: we need to provide the right tools to empower everyone who uses WordPress,&#8221; Pendergast said. &#8220;Some people will jump right into the brave new block-based world, some people will prefer to use the Classic Editor plugin as a way to keep their existing workflows. When WordPress 5.0 lands, neither way should be seen as the &#8216;correct&#8217; way &#8211; they&#8217;re both entirely legitimate.&#8221;</p>\n<p>One major theme in both positive and negative reviews of the plugin is the desire for Gutenberg to be opt-in for WordPress 5.0, instead of having it auto-enabled for all users.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">The \"Try Gutenberg\" callout in WordPress 4.9.8 looks great! Would love to see this be the official approach when WordPress 5.0 is released vs auto-enabling. Give the users time to check it out before forcing it on them. <a href=\"https://t.co/QBiPh7IROe\">pic.twitter.com/QBiPh7IROe</a></p>\n<p>&mdash; Brad Williams (@williamsba) <a href=\"https://twitter.com/williamsba/status/1025025636149157889?ref_src=twsrc%5Etfw\">August 2, 2018</a></p></blockquote>\n<p></p>\n<p>Developers and agencies are expected to control that experience for their clients by installing the <a href=\"https://wordpress.org/plugins/classic-editor/\" rel=\"noopener noreferrer\" target=\"_blank\">Classic Editor</a> or <a href=\"https://wordpress.org/plugins/gutenberg-ramp/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg Ramp</a> for installations that may have compatibility issues. For millions of other WordPress users without their own developers or engineering teams, discovering Gutenberg auto-enabled after updating to WordPress 5.0 will be a moment of reckoning. On the other hand, phasing the new editor in over time may severely limit adoption and extinguish the ecosystem&#8217;s impetus to offer Gutenberg-compatible products.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Not auto-enabling it should be strongly considered for 5.0 and also why setting a specific release number for it was a mistake. These reviews have been absolutely brutal and the uptick in 1 stars has been from average users and not disgruntled or vocal developers.</p>\n<p>&mdash; Carl Hancock <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f680.png\" alt=\"🚀\" class=\"wp-smiley\" /> (@carlhancock) <a href=\"https://twitter.com/carlhancock/status/1026542036936056832?ref_src=twsrc%5Etfw\">August 6, 2018</a></p></blockquote>\n<p></p>\n<p>The development community, along with thousands of WordPress users who now have Gutenberg on their radar, will be watching to see how the team evaluates feedback from this new wave of testing. Up until this point, only the most curious and motivated WordPress users have taken Gutenberg for a spin. Widespread testing has just begun and we&#8217;re not yet seeing a complete picture of how well the new editor will be received.</p>\n<p>My <a href=\"https://wptavern.com/wordpress-new-gutenberg-editor-now-available-as-a-plugin-for-testing\" rel=\"noopener noreferrer\" target=\"_blank\">initial impression</a>, after first trying it a year ago, was that Gutenberg is the most exciting thing to happen to WordPress in a long time. After reading hundreds of negative reviews, I still believe in the block concept but am convinced that Gutenberg needs to deliver a beautiful writing experience in order to win people over.</p>\n<p>If WordPress is my home for writing on the web, I want to feel at home in the interface. I don&#8217;t want to have to hunt for actions buried two-clicks deep. When I use the editor I want to have the feeling of &#8220;I love writing here.&#8221; Gutenberg doesn&#8217;t deliver that yet.</p>\n<p>WordPress has an opportunity to provide the best writing experience on the web, instead of relegating it to the <a href=\"https://wptavern.com/bear-app-users-want-wordpress-publishing-integration\" rel=\"noopener noreferrer\" target=\"_blank\">myriad of dedicated writing apps</a> that don&#8217;t have publishing capabilities. A supremely well-designed editor for writing posts, in recognition of the platform&#8217;s blogging roots, would be the promise that hooks users to willingly sign on for years of dealing with Gutenberg&#8217;s shortcomings as it matures into a full-fledged site builder.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 07 Aug 2018 03:23:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WPTavern: WordCamp Ann Arbor Cancelled, Organizers Set Sights on 2019 Event\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82921\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/wordcamp-ann-arbor-cancelled-organizers-set-sights-on-2019-event\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1284:\"<p><a href=\"https://2018.annarbor.wordcamp.org/\">WordCamp Ann Arbor MI</a>, is an annual Fall tradition that takes place each October. This year however, the event won&#8217;t be taking place. In an email sent out August 3rd, organizers explained why they cancelled this year&#8217;s event. </p>\n\n<blockquote class=\"wp-block-quote\"><p>Why did we decide to cancel WordCamp Ann Arbor this year? It&#8217;s a long story. The most significant factors involve issues with our venues. Then eventually finding ourselves with too little time to put together an event meeting the standards we strive for. None of us were interested in throwing together a last minute, half-baked event. So we made the call early and turned our attention to 2019.</p><cite>Kyle Maurer &#8211; Co-organizer of WordCamp Ann Arbor</cite></blockquote>\n\n<p>Organizers are already in the planning stages for WordCamp Ann Arbor 2019. Jackson, MI, about 45 minutes west of Ann Arbor is hosting a <a href=\"https://2018.jackson.wordcamp.org/\">WordCamp</a> this weekend. Tickets are $20 each with 35 remaining. </p>\n\n<p>For a detailed look into what it&#8217;s like to organize WordCamp Ann Arbor, check out <a href=\"http://kyleblog.net/2016/11/wordcamp-ann-arbor-2016-recap/\">Maurer&#8217;s post</a> from 2016. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 06 Aug 2018 21:01:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"Post Status: Considerations for eCommerce merchants, with Andrew Youderian of eCommerce Fuel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=46845\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"https://poststatus.com/considerations-for-ecommerce-merchants-with-andrew-youderian-of-ecommerce-fuel/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1768:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, I bring on <a href=\"https://twitter.com/youderian\">Andrew Youderian</a>. Andrew runs eCommerce Fuel &#8212; a great website geared toward eCommerce store owners, specifically those making high six figures or seven figures in revenue per year.</p>\n<p>Andrew keeps his ear low to the ground in the eCommerce landscape and carries no specific WordPress bias. If anything his experience is in other platforms &#8212; making a discussion with him both on platforms and also just eCommerce in general particularly valuable to me.</p>\n<p></p>\n<h3>Episode Links</h3>\n<ul>\n<li><a href=\"https://ecommercefuel.com\">eCommerce Fuel</a></li>\n<li><a href=\"https://www.ecommercefuel.com/ecommerce-report-2018/#info-anchor\">State of the merchant</a></li>\n</ul>\n<h3>Sponsor: SiteGround</h3>\n<p>Engineered for speed, built for security, crafted for WordPress. <a href=\"https://www.siteground.com/poststatus\">SiteGround</a> offers feature-rich managed WordPress hosting with premium support, and is officially recommended by WordPress.org. Thanks to <a href=\"https://www.siteground.com/poststatus\">SiteGround</a> for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Aug 2018 21:17:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"WPTavern: WordPress 4.9.8 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82870\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wptavern.com/wordpress-4-9-8-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1203:\"<p>WordPress 4.9.8 is <a href=\"https://wordpress.org/news/2018/08/wordpress-4-9-8-maintenance-release/\">available for download</a> and is a maintenance release. Headlining this version is the &#8220;Try Gutenberg&#8221; callout. Note that not everyone will see the callout. Its visibility is determined <a href=\"https://wptavern.com/wordpress-4-9-8-rc-3-released-limits-try-gutenberg-callout-visibility\">based on certain criteria.</a></p>\n\n<img />Gutenberg Callout in WordPress 4.9.8\n\n<p>WordPress 4.9.8 continues to improve the foundation set forth by the privacy improvements that went into core earlier this year. For example, the type of request that is being confirmed is now included in the subject line for privacy confirmation emails. </p>\n\n<p>In total, this release has 46 bug fixes from more than 50 contributors. It was lead by <a href=\"https://profiles.wordpress.org/pbiron\">Paul Biron</a> and <a href=\"https://profiles.wordpress.org/joshuawold\">Joshua Wold</a>. Since 4.9.8 is a maintenance release, sites that are able will update automatically. To see a full list of changes, check out the <a href=\"https://make.wordpress.org/core/2018/08/02/wordpress-4-9-8/\">detailed changelog</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 03 Aug 2018 00:12:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: WordPress.com Partners with Pexels to Offer Diverse, Free Stock Photo Library\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82856\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://wptavern.com/wordpress-com-partners-with-pexels-to-offer-diverse-free-stock-photo-library\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2952:\"<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/pexels-photo-1181618.jpeg?ssl=1\"><img /></a>image credit: <a href=\"https://www.pexels.com/photo/three-women-in-front-of-desk-1181618/\">Christina Morillo from Pexels</a>\n<p>WordPress.com has partnered with <a href=\"https://www.pexels.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Pexels</a>, a popular stock photo library, to offer convenient access to stock photos inside the post editor. Hundreds of high quality free stock photo sites have cropped up on the web over the past few years, but Pexels is differentiating itself with a commitment to hosting diversity-focused images and videos that represent a wide range of experiences. WordPress.com is working with them and other partners to <a href=\"https://wordpress.com/read/feeds/25823/posts/1945569908\" rel=\"noopener noreferrer\" target=\"_blank\">make more diverse images available to users</a>:</p>\n<blockquote><p>Stock-image libraries have historically struggled to represent all experiences, and often excluded photos of people of color, people with disabilities, or non-binary individuals. Pexels is working to change that, and since partnering with them we’ve helped incorporate diversity-focused libraries to their collection. Ultimately, we believe it’s on us to help find a solution to this problem, and avoid generic stock images that often perpetuate stereotypes.</p></blockquote>\n<p>WordPress.com users can access the images via the Add Media button. Self-hosted site owners with Jetpack-enabled sites can also access the library when composing new posts on WordPress.com. Automattic happiness engineer Anne McCarthy posted a demo of where to find the new images:</p>\n<p><a href=\"https://cloudup.com/c-ZzCzFS1Rn\"><img src=\"https://i2.wp.com/cldup.com/mJOr5iicyD.gif?resize=627%2C348&ssl=1\" alt=\"Media\" width=\"627\" height=\"348\" /></a></p>\n<p>More than 1,000 developers and companies are using the <a href=\"https://www.pexels.com/api/\" rel=\"noopener noreferrer\" target=\"_blank\">Pexels API</a>. The site regularly hosts diversity-focused photo <a href=\"https://www.pexels.com/challenges/\" rel=\"noopener noreferrer\" target=\"_blank\">challenges</a> with prizes for the best submissions. Photographers who are inspired to contribute can submit their work to the library but should be aware of its <a href=\"https://www.pexels.com/photo-license\" rel=\"noopener noreferrer\" target=\"_blank\">open license</a>.</p>\n<p>&#8220;I like the idea, and, as a photoblogger, I’m open to sharing my images,&#8221; one reader commented on the announcement. &#8220;But I [think] the license rules are too open (for me). I’m happy to share, attribution would be nice (not necessary), but editing of my photos seems a step too far.&#8221;</p>\n<p>Feedback on the library has been overwhelmingly positive so far and WordPress.com users have already downloaded more than 1 million images since the free stock image library was introduced.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2018 23:45:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Dev Blog: WordPress 4.9.8 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6165\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2018/08/wordpress-4-9-8-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9492:\"<p>We are pleased to announce the immediate availability of WordPress 4.9.8.  This maintenance release fixes 46 bugs, enhancements and blessed tasks, including updating the Twenty Seventeen bundled theme.</p>\n<p><span>Following are the highlights of what is now available.</span></p>\n<h2>“Try Gutenberg” callout</h2>\n<p><span>Most users will now be presented with a notice in their WordPress dashboard. This </span>“Try Gutenberg” is an opportunity for users to use the Gutenberg block editor before it is released in WordPress 5.0.</p>\n<p><img class=\"alignnone wp-image-6168 size-full\" src=\"https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?resize=632%2C392&ssl=1\" alt=\"\" width=\"632\" height=\"392\" /></p>\n<p>In WordPress 4.9.8, the callout will be shown to the following users:</p>\n<ul>\n<li>If Gutenberg <em>is not</em> installed or activated, the callout will be shown to Admin users on single sites, and Super Admin users on multisites.</li>\n<li>If Gutenberg <em>is</em> installed and activated, the callout will be shown to Contributor users and above.</li>\n<li>If the Classic Editor plugin is installed and activated, the callout will be hidden for all users.</li>\n</ul>\n<p class=\"entry-title\"><span>You can learn more by reading  </span><a href=\"https://make.wordpress.org/core/2018/08/02/try-gutenberg-callout-in-wordpress-4-9-8/\">“Try Gutenberg” Callout in WordPress 4.9.8</a>.</p>\n<h2>Privacy fixes/enhancements</h2>\n<p>This release includes 18 Privacy fixes focused on ensuring consistency and flexibility in the new personal data tools <span>that were </span>added in 4.9.6, including:</p>\n<ul>\n<li>The type of request being confirmed is now included in the subject line for all privacy confirmation emails.</li>\n<li>Improved consistency with site name being used for privacy emails in multisite.</li>\n<li>Pagination for Privacy request admin screens can now be adjusted.</li>\n<li>Increased the test coverage for several core privacy functions.</li>\n</ul>\n<p><a href=\"https://make.wordpress.org/core/2018/08/02/wordpress-4-9-8/\">This post has more information about all of the issues fixed in 4.9.8 if you&#8217;d like to learn more</a>.</p>\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.8</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates are already beginning to update automatically.</p>\n<p>Thank you to everyone who contributed to WordPress 4.9.8:</p>\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">Abdullah Ramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/andrewtaylor-1/\">Andrew Taylor</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/burhandodhy/\">Burhan Nasir</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/chrislema/\">Chris Lema</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/danieltj/\">Daniel James</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/dontstealmyfish/\">dontstealmyfish</a>, <a href=\"https://profiles.wordpress.org/dyrer/\">dyrer</a>, <a href=\"https://profiles.wordpress.org/felipeelia/\">Felipe Elia</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/fclaussen/\">Fernando Claussen</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/gm_alex/\">GM_Alex</a>, <a href=\"https://profiles.wordpress.org/idea15/\">Heather Burns</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jpry/\">Jeremy Pry</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">kjellr</a>, <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/leemon/\">leemon</a>, <a href=\"https://profiles.wordpress.org/macbookandrew/\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mensmaximus/\">mensmaximus</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/michelleweber/\">michelleweber</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/xpertone/\">Muhammad Kashif</a>, <a href=\"https://profiles.wordpress.org/nao/\">Naoko Takano</a>, <a href=\"https://profiles.wordpress.org/nathanatmoz/\">Nathan Johnson</a>, <a href=\"https://profiles.wordpress.org/ov3rfly/\">Ov3rfly</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/presstigers/\">PressTigers</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/rafsuntaskin/\">Rafsun Chowdhury</a>, <a href=\"https://profiles.wordpress.org/redcastor/\">redcastor</a>, <a href=\"https://profiles.wordpress.org/littlerchicken/\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/pross/\">Simon Prosser</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/spyderbytes/\">spyderbytes</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/sebastienserre/\">Sébastien SERRE</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tharsheblows/\">tharsheblows</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">Thomas Patrick Levy</a>, <a href=\"https://profiles.wordpress.org/timbowesohft/\">timbowesohft</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/usmankhalid/\">Usman Khalid</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, and <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2018 21:25:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Paul Biron\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"WPTavern: Official Gutenberg Information Site Updated with Interactive Frontend Demo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82821\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wptavern.com/official-gutenberg-information-site-updated-with-interactive-frontend-demo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2132:\"<p>The official <a href=\"https://wordpress.org/gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg information site</a> has been updated to feature an interactive demo that can be manipulated on the frontend. It is based on <a href=\"https://wptavern.com/frontenberg-lets-users-test-gutenberg-on-the-frontend\" rel=\"noopener noreferrer\" target=\"_blank\">Frontenberg</a>, a <a href=\"https://testgutenberg.com/\" rel=\"noopener noreferrer\" target=\"_blank\">site</a> created by Tom Nowell, VIP Wrangler at Automattic. It loads an instance of WordPress with Gutenberg on the frontend so visitors don&#8217;t have to login or create a test site to try it.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/gutenberg-demo.png?ssl=1\"><img /></a></p>\n<p>Gutenberg&#8217;s new demo <a href=\"https://web.archive.org/web/20180730083424/https://wordpress.org/gutenberg/\" rel=\"noopener noreferrer\" target=\"_blank\">replaces the walls of text that were there previously</a>, which described the vision and approach for the new editor and explained blocks in depth with screenshots. Instead, the updated page features shorter, more succinct explanations of the new editor as an interactive part of demo.</p>\n<p>The demo is also live on all Rosetta sites, like <a href=\"http://fr.wordpress.org/gutenberg\" rel=\"noopener noreferrer\" target=\"_blank\">fr.wordpress.org/gutenberg</a>, so WordPress users from around the world can view it in their own languages.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/gutenberg-demo-rosetta-sites.png?ssl=1\"><img /></a></p>\n<p>WordPress contributors are feverishly working to prepare for the &#8220;Try Gutenberg&#8221; callout that will ship with WordPress 4.9.8, which is scheduled for Thursday, August 2nd. It will be many users&#8217; first exposure to the new editor and the demo gives them a chance to experience it in a hands-on way before making a decision about installing it. Instead of dismissing Gutenberg out of hand based on a quick glance at the screenshots and text, users have the opportunity to test drive it without breaking anything.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2018 05:01:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: WPWeekly Episode 325 – A Different Facebook for Everyone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=82830&preview=true&preview_id=82830\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/wpweekly-episode-325-a-different-facebook-for-everyone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2387:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss what&#8217;s new in Gutenberg 3.4 and share our recent experiences with the editor. We talk about Facebook&#8217;s decision to shut down its API for apps to publish to user&#8217;s profiles on their behalf. This leads to a side rant of our user experience with Facebook and the history between it and Twitter.</p>\n<p>We talk about what&#8217;s new in WordPress 4.9.8 RC 3 and when you can expect a final release. Last but not least, we discuss Slack&#8217;s acquisition of HipChat and share our reasons for joining Twitter.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/gutenberg-3-4-adds-new-warning-to-classic-editor-when-editing-posts-containing-blocks\">Gutenberg 3.4 Adds New Warning to Classic Editor When Editing Posts Containing Blocks</a></p>\n<p><a href=\"https://wptavern.com/wordpress-4-9-8-rc-3-released-limits-try-gutenberg-callout-visibility\">WordPress 4.9.8 RC 3 Released, Limits ‘Try Gutenberg’ Callout Visibility</a></p>\n<p><a href=\"https://wptavern.com/facebook-shuts-down-api-for-publishing-to-user-timelines-impacts-jetpacks-publicize-feature\">Facebook Shuts Down API for Publishing to User Timelines, Impacts Jetpack’s Publicize Feature</a></p>\n<p><a href=\"https://wptavern.com/wordpress-coding-standards-1-0-0-released\">WordPress Coding Standards 1.0.0 Released</a></p>\n<p><a href=\"https://wptavern.com/woosesh-virtual-woocommerce-conference-to-be-held-october-18-19\">WooSesh Virtual WooCommerce Conference to be Held October 18-19</a></p>\n<p><a href=\"https://wptavern.com/slack-acquires-hipchat-moves-blog-from-medium-to-wordpress\">Slack Acquires HipChat, Moves Blog from Medium to WordPress</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, August 8th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #325:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2018 02:02:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: Easy Digital Downloads Substantially Reduces Prices for Extension Passes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82825\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/easy-digital-downloads-substantially-reduces-prices-for-extension-passes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3693:\"<p>Pippin Williamson, founder of <a href=\"https://wordpress.org/plugins/easy-digital-downloads/\">Easy Digital Downloads</a>, published <a href=\"https://easydigitaldownloads.com/blog/we-have-lowered-prices-for-extension-access-passes/?utm_source=Twitter&utm_medium=social&utm_term=we-have-lowered-prices-for-extension-access-passes&utm_content=0&utm_campaign=PostPromoterPro\">an apology</a> on the company&#8217;s blog today admitting that it made a mistake in its pricing model for extension passes. </p>\n\n<p>In mid-June, the <a href=\"https://easydigitaldownloads.com/blog/easy-digital-downloads-pricing-options/\">company introduced</a> a new set of pricing options or passes. The passes come with a single license that provide access to a group of extensions. The prices for each pass were as follows:</p>\n\n<ul><li>Personal Pass: $199</li><li>Extended Pass: $399</li><li>Professional Pass: $699</li><li>All Access Pass: $899</li></ul>\n\n<p>After six weeks, Williamson noticed that customers were continuing to purchase individual extensions instead of the passes. </p>\n\n<p>&#8220;Our expectation and intent in creating the passes was for store owners to be able to purchase access to multiple individual extensions in a more economical way, but that’s not what happened,&#8221; he said. </p>\n\n<p>&#8220;Instead, store owners continued to purchase only the individual extensions they needed because the price tags of the passes were still too high. It is clear that we made a mistake in our pass pricing, and so today we’d like to apologize for that and announce new, lower prices.&#8221;</p>\n\n<p>After two weeks of testing, the prices of each pass have been significantly reduced to the following amounts:</p>\n\n<ul><li>Personal Pass: <strong>$99</strong></li><li>Extended Pass: <strong>$199</strong></li><li>Professional Pass: <strong>$299</strong></li><li>All Access Pass: <strong>$499</strong><strong></strong><strong></strong></li></ul>\n\n<p>In addition to the pricing changes, customers who purchased a pass between June 1st and August 1st are eligible for a refund. The refund is equal to the difference of the purchased price and the new price. Customers have until August 15th, to <a href=\"https://easydigitaldownloads.com/support\">request a refund</a>. <br /></p>\n\n<p>Customers who purchased passes before the reduction will have their renewal amounts automatically changed to the lower price. </p>\n\n<p>Pricing WordPress products and services is tough and requires experimentation. There are numerous <a href=\"https://wordpress.tv/?s=pricing\">WordCamp sessions</a>, <a href=\"https://kinsta.com/blog/how-to-price-a-product-wordpress/\">articles</a>, and <a href=\"https://premium.wpmudev.org/blog/pricing-your-wordpress-services/\">in-depth guides</a> on the subject but there&#8217;s not one answer that&#8217;s best for every business. </p>\n\n<p>Publicly admitting to a pricing mistake is one thing, but offering refunds to try to get customers on equal footing is going the extra mile.</p>\n\n<p>The company could have handled things in a way that&#8217;s not as beneficial to customers, but they chose what I think is a commendable way. Williamson&#8217;s closing statement speaks about the way he leads his company and how he makes these types of decisions.</p>\n\n<blockquote class=\"wp-block-quote\"><p>While we are far from perfect, as this pricing mistake clearly indicates, we are dedicated to doing right by our customers. To each of you, we would like to extend our most sincere thanks for sticking with us as we work through these changes</p><cite>Pippin Williamson</cite></blockquote>\n\n<p>It&#8217;s a luxury to have business owners like Williamson in the WordPress economy. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2018 01:00:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"WPTavern: Gutenberg 3.4 Adds New Warning to Classic Editor When Editing Posts Containing Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82772\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"https://wptavern.com/gutenberg-3-4-adds-new-warning-to-classic-editor-when-editing-posts-containing-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2614:\"<p><a href=\"https://make.wordpress.org/core/2018/07/31/whats-new-in-gutenberg-30th-july/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg 3.4</a> was released yesterday with fixes intended to prepare the plugin for converting existing content to blocks. A wave of new users will soon be testing the new plugin as the result of the &#8220;Try Gutenberg&#8221; prompt in WordPress 4.9.8. The release date has been <a href=\"https://wptavern.com/wordpress-4-9-8-rc-3-released-limits-try-gutenberg-callout-visibility\" rel=\"noopener noreferrer\" target=\"_blank\">pushed back to Thursday, August 2nd</a>.</p>\n<p>In early July, the Gutenberg team froze new features on the plugin and shifted to focus on bugs, enhancements, compatibility, and API stability. An overview of the <a href=\"https://github.com/WordPress/gutenberg/issues/4894\" rel=\"noopener noreferrer\" target=\"_blank\">major functionality shipping in Gutenberg</a> is available as a list on GitHub. Gutenberg 3.4 continues refinements on these features.</p>\n<p>In preparation for users switching back and forth between the new and old editors, this release <a href=\"https://github.com/WordPress/gutenberg/pull/8247\" rel=\"noopener noreferrer\" target=\"_blank\">adds a warning in the classic editor</a> when users attempt to edit posts that contain blocks.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/Screen-Shot-2018-08-01-at-11.16.41-AM.png?ssl=1\"><img /></a></p>\n<p>Shared blocks have been renamed to &#8220;<a href=\"https://github.com/WordPress/gutenberg/pull/8123\" rel=\"noopener noreferrer\" target=\"_blank\">Reusable blocks</a>&#8221; to better convey their function.</p>\n<p>Theme developers can now <a href=\"https://github.com/WordPress/gutenberg/pull/6628\" rel=\"noopener noreferrer\" target=\"_blank\">configure font sizes</a> that show in the editor.</p>\n<p>This release also adds other little enhancements, including an <a href=\"https://github.com/WordPress/gutenberg/pull/8084\" rel=\"noopener noreferrer\" target=\"_blank\">edit button</a> for embed blocks, the ability to create a video block by <a href=\"https://github.com/WordPress/gutenberg/pull/8122\" rel=\"noopener noreferrer\" target=\"_blank\">dropping a video on an insertion point</a>, <a href=\"https://github.com/WordPress/gutenberg/pull/8187\" rel=\"noopener noreferrer\" target=\"_blank\">RTL CSS</a>, and accessibility improvements.</p>\n<p>Check out the release post for a full list of all the enhancements and bugs fixes in <a href=\"https://make.wordpress.org/core/2018/07/31/whats-new-in-gutenberg-30th-july/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg 3.4</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 Aug 2018 16:46:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Dev Blog: The Month in WordPress: July 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=6158\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2018/08/the-month-in-wordpress-july-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6410:\"<p>With WordPress 5.0 coming closer, there’s lots of work going on all across the project. Read on to learn about how we progressed in July.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Release of WordPress 4.9.7</h2>\n\n<p>On July 5, <a href=\"https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/\">WordPress 4.9.7 was released</a>,  fixing one security issue and 17 other bugs across the platform.<br /></p>\n\n<p>While this is a minor release, incremental fixes are essential to keep WordPress running smoothly. Everyone is encouraged to update as soon as possible and to make sure that automatic updates are switched on.<br /></p>\n\n<p>Would you like to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> and join the #core channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>The New WordPress Editor</h2>\n\n<p>In the upcoming minor release of WordPress, 4.9.8, a new section in the dashboard will feature Gutenberg, the upcoming content editor for WordPress.<br /></p>\n\n<p>While the official release of Gutenberg <a href=\"https://wordpress.org/news/2018/07/update-on-gutenberg/\">is scheduled</a> for the coming months, you can already install it as <a href=\"https://wordpress.org/plugins/gutenberg/\">a plugin</a> to test it out right now. Additionally, <a href=\"https://wordpress.org/gutenberg/\">a brand new demo page</a> is now available — play around with the many features the editor has to offer, without installing it on your own site.<br /></p>\n\n<p>Would you like to help build or test Gutenberg? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a> and join the #core-editor channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>Page Design Updates on WordPress.org</h2>\n\n<p>Bit by bit we’re refreshing the design of WordPress.org. The latest pages to get a new treatment have been <a href=\"https://wordpress.org/download/\">the Download page</a> and <a href=\"https://profiles.wordpress.org/matt/\">user profiles</a>.<br /></p>\n\n<p>The Meta and Design teams worked hard to make these new designs a reality, with notable contributions from <a href=\"https://profiles.wordpress.org/melchoyce/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>melchoyce</a>, <a href=\"https://profiles.wordpress.org/obenland/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>obenland</a>, <a href=\"https://profiles.wordpress.org/mapk/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>mapk</a>, and <a href=\"https://profiles.wordpress.org/kjellr/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>kjellr</a>. The new designs enhance the overall look of the site and provide more relevant information to those searching.<br /></p>\n\n<p>Would you like to get involved in the design refresh? Follow the <a href=\"https://make.wordpress.org/meta/\">Meta</a> and <a href=\"https://make.wordpress.org/design/\">Design</a> team blogs and join the #meta and #design channels in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<h2>The First WP-CLI Hack Day</h2>\n\n<p>On Friday July 20, the WP-CLI team <a href=\"https://make.wordpress.org/cli/2018/07/04/wp-cli-hack-day/\">held their first hack day</a> — a global event encouraging people to contribute to the official command line tool for WordPress.<br /></p>\n\n<p>Run by <a href=\"https://profiles.wordpress.org/schlessera/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>schlessera</a>, the event <a href=\"https://make.wordpress.org/cli/2018/07/21/wp-cli-hack-day-results/\"> was a great success</a>. Twelve pull requests were  merged and another 13 submitted. It also included a video chat to give all contributors a space to meet each other and connect directly.<br /></p>\n\n<p>Would  you like to get involved in contributing to WP-CLI? Follow <a href=\"https://make.wordpress.org/cli/\">the team blog</a> and join the #cli channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul><li>The WordPress Foundation is <a href=\"https://wordpressfoundation.org/2018/call-for-organizers-introduction-to-open-source-workshops-for-2018/\">looking for local community organizers to run introductory open-source workshops</a> in 2018.</li><li><a href=\"https://profiles.wordpress.org/chanthaboune/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>chanthaboune</a> compiled <a href=\"https://wordpress.org/news/2018/07/quarterly-updates-q2-2018/\">updates for the last quarter</a> from the contribution teams all across the WordPress project.</li><li>In a great move for internationalization, <a href=\"https://en.blog.wordpress.com/2018/03/29/the-wordpress-mobile-apps-now-support-right-to-left-languages/\">the WordPress Mobile Apps now support right-to-left languages</a>.</li><li><a href=\"https://make.wordpress.org/community/2018/07/10/stripe-is-now-available-to-all-wordcamps/\">WordCamp events can now accept payment via Stripe</a> — PayPal remains an alternative option.</li><li>The WP-CLI team will soon <a href=\"https://make.wordpress.org/cli/2018/07/19/details-on-the-upcoming-major-release/\">release v2.0</a> of the official WordPress command line tool.</li><li>The Fields API project in WordPress Core <a href=\"https://wptavern.com/wordpress-core-fields-api-project-is-seeking-new-leadership\">is looking for a new lead</a> to drive it forward.</li><li>In WordPress 4.9.8, <a href=\"https://make.wordpress.org/core/2018/07/27/registering-metadata-in-4-9-8/\">it will  be possible</a> for developers to fully register the meta fields used by their plugins and themes.</li><li>After many years of hard work, <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards\">v1.0.0 of the WordPress Coding Standards for PHP_CodeSniffer</a> has been released.</li><li>The Mobile team <a href=\"https://make.wordpress.org/mobile/2018/07/31/call-for-testing-wordpress-for-ios-10-6/\">is looking for people to help test</a> v10.6 of WordPress for iOS.</li></ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 Aug 2018 09:11:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"HeroPress: Begin at the Beginning\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2601\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://heropress.com/essays/begin-at-the-beginning/#utm_source=rss&utm_medium=rss&utm_campaign=begin-at-the-beginning\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10624:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/08/080118-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I owe it all to a little bit of gumption and to the amazing community of WordPressers who opened their world to me.\" /><p>With this story, as with most things in my life, I never really know where to start. Because of that strange sense of time and action I’ve always been quite fond of the quote from Lewis Carroll’s Alice in Wonderland</p>\n<p>“Begin at the beginning and go on till you come to the end: then stop.”<br />\nBut where, for this story, is the beginning?</p>\n<p>It was a lifetime of choices and serendipitous encounters that led me down the path to WordPress and eventually Automattic. And those same types of choices and encounters that keep me here.</p>\n<h2>Begin at the Beginning&#8230;</h2>\n<p>I was a youngish mother of a youngish child and a full time stay at home parent. I didn’t work outside the home; I was raising my kid. That was both a privilege and a problem. I realized that, as a mother consumed with caring for this new human, I was beginning to lose the very strong sense of identity that I’d always had.</p>\n<p>This was my first experience with not knowing who I was. I always knew who I was, even if I didn’t know who I wanted to be. As a mother though, most of who I am was sucked into caring for my family. Not sleeping. Not taking proper care of myself. Not taking time for my interests. Putting the others in my house before me and saying that it was what I wanted.</p>\n<p><em>Narrator: It wasn’t.</em></p>\n<p>There was a pivot point. A moment before my daughter turned three. When I realized that if she were to choose to become a mother I would not want her to go down the same path of self denial that I had. I would want her to be who she is first and a mother second so that she could be the best self and mother she could be.</p>\n<p>And I realized that was something I could only show by example. But how to start? I’d always been a writer. I often say that I only learned to read so that I could write. Journaling, short stories, poetry. Sometimes just long strings of thoughts and observations that wouldn’t leave my head until I wrote them down. I would write out long “stories” on MySpace about my experiences and realizations. I would scrawl poetry on scrap paper laying around the house. None of it was enough.</p>\n<p>Also, as I understand is fairly typical for a stay at home parent, I had no one to talk to most of the time except for my small child. And while she was super awesome and receptive to any conversation I may want to start, they all tended to transition to discussion of My Little Ponies or a request for ice cream or screen time. So I looked for something more. For a place to discuss the mommified version of myself with no one and everyone. I started a blog.</p>\n<p>But it wasn’t on WordPress.</p>\n<h2>Go On…</h2>\n<p>I wrote and I wrote and I wrote. My experiences, my kid’s experiences. Dreams and hopes and bad poetry. And I found a group of people who shared with me their struggles and dreams as they dove into mine. A web of women and men who got me. Who got what I was going through. Who got what I was doing. A community of individuals, not all like minded, but all understanding.</p>\n<p>And then one day I was asked to write for a city blog, and then another. And as my writing began to expand I found other communities. My sense of self was first preserved but then invigorated and it grew and I stretched my arms and I stretched my wings and I realized I was beginning to feel whole for the first time in a long while.</p>\n<p>But using multiple platforms for my blogging gave me the understanding that the platform I was using was restrictive and unsatisfying. Clunky.</p>\n<p>And that’s when a friend mentioned WordCamp Portland. It was this new thing. We were doing it for the first time. A bunch of bloggers getting together to talk about WordPress and blogging and stuff.</p>\n<p>I had no idea what WordPress was. But my friend said they needed some volunteers to help out, and I’m always one to support my friends, my community. So I asked what I needed to do to help.</p>\n<p>“Move your blog to WordPress”</p>\n<p>And so I did. And something clicked. Once I had moved to a WordPress site I found my passion for blogging was something more. I played with themes, I made headers that felt like art pieces, I helped others transfer their content, set up their sites. I introduced them to a community that I was just beginning to get to know.</p>\n<p>And then there was a cascade of activity. More blogs, podcasting, events, community, and every year there was WordCamp Portland. And I continued to learn and grow my skills as a writer, as a blogger, as a podcaster, and as a WordPresser. I continued to volunteer, and then to speak, and to help organize.</p>\n<h2>And on…</h2>\n<p>But life changes. Sometimes for the better sometimes for the worse. But change is hard. People change or stay the same. Relationships change. Life changes. Sometimes all of the above. So I ended a marriage and found myself stumped. I knew who I was, but who I happened to be was a stay at home mom who hadn’t worked outside the home in eight years and had no marketable skills that I could find that would also allow me to continue to be home for my kid.</p>\n<p>And I panicked and I procrastinated and then I found an opening. A small startup I knew through my interactions with the community needed a customer support person who also knew WordPress.</p>\n<p>A light went on. And I had a job for the first time in eight years. And I knew what I was doing. And I was good at it. And I continued to blog. A little. And I stuck to the little tiny fringes of the WordPress community I knew. Still not realizing how big the rest of it was.</p>\n<p>The Portland WordPress folks were like a river feeding into the ocean of the worldwide community. But I’d only ever stood on the shores of the river and dipped my toes in. All that was about to change.</p>\n<h2>Till You Come to the End…</h2>\n<p>But as I said at the beginning, it’s not that simple. There is no end. There is just more. More stories, more people, more learning, more community. And that’s where we begin the part of the story that tells us where I am today.</p>\n<p>This part begins with an email from a community friend with a link to a job posting. And a new beginning.</p>\n<p>I was working happily at that small startup, spreading my wings. But starting to feel a little bit like my passion wasn’t being put to use when that email arrived. A link to a job posting working as a sponsored volunteer within the WordPress community and question. It was a simple question. “Do you know anyone who would kick ass at this job?”</p>\n<p>DID I? I was reeling from the possibility and doubled over with imposter syndrome and fear. Fear that I wasn’t good enough. Fear that they wouldn’t like me. Fear that I’d be leaving my boss in the lurch.</p>\n<p>So I did what I always did at that time. And what I still do to this day. I procrastinated. I talked. I thought. I woke up in the middle of the night in a panic thinking I had forgotten something. Thinking I had done something wrong.</p>\n<p>But as I sat there one day tinkering on the startup’s site, scheduling posts, checking in on our customers all while getting my daughter ready for school that morning I realized that it was time to set aside those fears. To look that imposter syndrome right in the eye and say “not today” and I started putting together my resume and working on the cover email.</p>\n<p>No one was more surprised than I when I found myself two months later starting my first day at Automattic.</p>\n<p>It’s been about 5 and a half years since that email landed in my inbox. It’s been more than a decade since WordPress landed in my heart and I’m proud to make my living in the wide wonderful world of WordPress. As I write this story for all of you to read—not a cautionary tale I hope, but an inspirational one—I’m just a few days away from the end of my three-month sabbatical (a benefit that all Automatticians are eligible for after 5 years.)</p>\n<p>It’s been a time of rest, readjustment, relaxation. Of edification. But it’s also been a renewal. A time to look back at how I got where I am and remember how lucky I am to be here today. And I owe it all to a little bit of gumption and to the amazing community of WordPressers who opened their world to me. And also to everyone else who is willing to be a part of this great big community founded on open source. On WordPress.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Begin at the Beginning\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Begin%20at%20the%20Beginning&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbegin-at-the-beginning%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Begin at the Beginning\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fbegin-at-the-beginning%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbegin-at-the-beginning%2F&title=Begin+at+the+Beginning\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Begin at the Beginning\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/begin-at-the-beginning/&media=https://heropress.com/wp-content/uploads/2018/08/080118-150x150.jpg&description=Begin at the Beginning\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Begin at the Beginning\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/begin-at-the-beginning/\" title=\"Begin at the Beginning\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/begin-at-the-beginning/\">Begin at the Beginning</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 Aug 2018 08:00:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Cami Kaos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WPTavern: WordPress 4.9.8 RC 3 Released, Limits ‘Try Gutenberg’ Callout Visibility\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82803\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/wordpress-4-9-8-rc-3-released-limits-try-gutenberg-callout-visibility\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1701:\"<p>WordPress 4.9.8 Release Candidate 3 <a href=\"https://make.wordpress.org/core/2018/07/31/wordpress-4-9-8-release-candidate-3/\">is available</a> for testing. This version includes one important enhancement that limits the visibility of the <a href=\"https://wptavern.com/first-look-at-try-gutenberg-prompt-in-wordpress-4-9-8-beta-2\">&#8216;Try Gutenberg&#8217; callout</a>. </p>\n\n<p>If Gutenberg is not installed or activated on a site, the callout will be displayed to users with the <a href=\"https://codex.wordpress.org/Roles_and_Capabilities#install_plugins\">install_plugins</a> capability. If Gutenberg is activated, the callout will be shown to users with the <a href=\"https://codex.wordpress.org/Roles_and_Capabilities#edit_posts\">edit_posts</a> capability. </p>\n\n<p>Limiting the visibility of the callout to a specific subset of users will avoid inundating the WordPress.org support forums with Gutenberg support requests. A concern that was <a href=\"https://core.trac.wordpress.org/ticket/41316#comment:98\">expressed by</a> Daniel Bachhuber four months ago. </p>\n\n<p>&#8220;There&#8217;s a good amount of fit and finish to be desired before rolling out to a large number of unacquainted users,&#8221; Bachhuber said. &#8220;We&#8217;re not quite over the hump on the issues we do already know about. There&#8217;s not a ton of sense in having 10,000 users re-report them.&#8221;</p>\n\n<p>Other than this change, the <a href=\"https://make.wordpress.org/core/2018/07/24/wordpress-4-9-8-release-candidate-1/#change-log\">change log</a> from WordPress 4.9.8 RC 1 remains the same. WordPress 4.9.8 was originally scheduled to be released today, but has been rescheduled for Thursday, August 2nd. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 01 Aug 2018 00:14:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"WPTavern: Facebook Shuts Down API for Publishing to User Timelines, Impacts Jetpack’s Publicize Feature\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82768\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:112:\"https://wptavern.com/facebook-shuts-down-api-for-publishing-to-user-timelines-impacts-jetpacks-publicize-feature\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4690:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/logo-facebook-1600.png?ssl=1\"><img /></a></p>\n<p>In the aftermath of the <a href=\"https://en.wikipedia.org/wiki/Facebook%E2%80%93Cambridge_Analytica_data_scandal\" rel=\"noopener noreferrer\" target=\"_blank\">Cambridge Analytica data scandal</a>, Facebook is tightening its control on third-party applications and will no longer allow apps to post to user profiles. In April, the platform <a href=\"https://developers.facebook.com/blog/post/2018/04/24/new-facebook-platform-product-changes-policy-updates/\" rel=\"noopener noreferrer\" target=\"_blank\">announced</a> sweeping changes to the publish_actions permission, which allowed apps to publish to users&#8217; timeline on their behalf.</p>\n<blockquote><p>On August 1st, 2018, the Live API publish_actions permission, which allows an app to publish on behalf of its Users, will be reserved for approved partners. A new permission model that allows apps to publish Videos to their User&#8217;s Groups and Timeline will be created instead.</p>\n<p>Access to the Pages APIs requires re-submission of the application for review before August 1, 2018. This will be required to continue publishing live and VOD video to Pages, as well as reading insights.</p></blockquote>\n<p>Facebook is notorious for swiftly changing its APIs in ways that break apps (sometimes without warning), often sending developers scrambling. For a long time, apps auto-posting to user timelines was part of the wild west of app permissions granted without much oversight from Facebook. Users often unknowingly gave permission to apps that would collect data and spam their Facebook connections with posts made on their behalf.</p>\n<p>Those days are over, but an unfortunate byproduct of this restriction is that apps like WordPress.com and Jetpack&#8217;s Publicize feature can no longer automatically publish posts to user timelines. This change also adversely affects apps like Buffer and Hootsuite that allow users to schedule and publish posts to their social accounts.</p>\n<p><a href=\"https://jetpack.com/2018/07/30/jetpack-6-3-3-facebook-publicize/\" rel=\"noopener noreferrer\" target=\"_blank\">Jetpack 6.3.3</a> removes the ability for users to select Facebook Profile connections and displays a notice regarding existing connections, so users will be aware of which auto-posting connections they are losing. Besides Jetpack, this Facebook API change affects tens of thousands of users who have this functionality implemented through one of many other plugins on WordPress.org.</p>\n<p>Users are now required to manually share their posts to their timelines. They can no longer schedule content to be shared to Facebook at specific times for different audiences.</p>\n<p>Auto-posting to <a href=\"https://www.facebook.com/help/175644189234902/\" target=\"_blank\" rel=\"noopener noreferrer\">Facebook Pages</a> still works, and one option users have is to convert their Profile to a Page or set up a new page. This may not be a suitable alternative for bloggers and those whose writing is not attached to a business or an organization.</p>\n<p>In a recent <a href=\"https://ma.tt/2018/07/my-recode-decode-interview-with-kara-swisher/\" rel=\"noopener noreferrer\" target=\"_blank\">post</a> on his blog, Automattic CEO Matt Mullenweg commented on Facebook&#8217;s decision to turn off auto-posting to profiles.</p>\n<p>&#8220;As it turns out, Facebook also is turning off the ability for WordPress sites — and all websites — to post directly to users’ profile pages,&#8221; Mullenweg said. &#8220;The decision to shut down the API is ostensibly to fight propaganda and misinformation on the platform, but I think it’s a big step back for their embrace of the open web. I hope they change their minds.&#8221;</p>\n<p>If only a select few &#8220;approved partners&#8221; are allowed to automatically broadcast to user timelines, it puts smaller players at a disadvantage, requiring manual sharing each time they publish. Facebook is setting itself up as a gatekeeper that enables news from a small selection of partners to keep pumping through the platform on schedule. Individual voices on smaller websites are no longer able to syndicate to the Facebook platform unless they decide to create a Page.</p>\n<p>Put a different way, the only syndicated content allowed on Facebook will be through channels the company can monetize &#8211; business/organization Pages or partners who are approved to post to user timelines. Users who care about retaining their Facebook audiences will need to remember to manually post their content to the social network after August 1, 2018, when the API changes go into effect.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Jul 2018 22:11:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Matt: My Recode Decode Interview with Kara Swisher\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48262\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://ma.tt/2018/07/my-recode-decode-interview-with-kara-swisher/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1780:\"<blockquote class=\"wp-block-quote\"><p>&#8220;We want to make the best tools in the world, and we want to do it for decades to come. I&#8217;ve been doing WordPress for 15 years, I want to do it the rest of my life.&#8221; <br /></p></blockquote>\n\n<p>The last time I chatted with <a href=\"https://twitter.com/karaswisher?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor\">Kara</a> was in 2013 <a href=\"https://www.wsj.com/video/wordpress-mullenweg-on-the-future-of-blogging/51B2A49C-EE8D-42EC-911D-370064A4829F.html\">in the back of a pedicab in Austin</a>. This time I got to <a href=\"https://art19.com/shows/recode-decode/episodes/3d56208e-a4b9-4c74-861e-8fec105a4ee8\">sit in the red chair</a> at Vox headquarters in San Francisco, and per usual Kara was thoughtful, thorough and to the point: we talked about WordPress and the future of the open web, the moral imperative of user privacy, and how it all relates to what&#8217;s going on at Facebook. </p>\n\n<p>(As it turns out, Facebook also is <a href=\"https://en.blog.wordpress.com/2018/07/23/sharing-options-from-wordpress-com-to-facebook-are-changing/\">turning off the ability for WordPress sites &#8212; and all websites</a> &#8212; to post directly to users&#8217; profile pages. The decision to shut down the API is ostensibly to fight propaganda and misinformation on the platform, but I think it&#8217;s a big step back for their embrace of the open web. I hope they change their minds.)<br /></p>\n\n<p>Kara and I also talked about distributed work, Automattic&#8217;s <a href=\"https://ma.tt/2018/06/atavist-automattic/\">acquisition of Atavist</a> and <a href=\"https://longreads.com/\">Longreads</a>, and why every tech company should have an editorial team. Thanks again to Kara and the Recode team for having me.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Jul 2018 08:31:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: WordPress Coding Standards 1.0.0 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82761\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/wordpress-coding-standards-1-0-0-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2215:\"<p>After nine years <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards#project-history\">since the project began</a>, version 1.0.0 of the <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards\">WordPress Coding Standards</a> is available for download. The WordPress Coding Standards is a collection of <a href=\"https://github.com/squizlabs/PHP_CodeSniffer\">PHP_CodeSniffer</a> rules or sniffs to validate code developed for WordPress. It ensures code quality and adherence to coding conventions, including the official <a href=\"https://make.wordpress.org/core/handbook/best-practices/coding-standards/\">WordPress Coding Standards</a>.</p>\n\n<p>In addition to being a big milestone, 1.0.0 contains breaking changes. &#8220;A number of sniffs have been moved between categories and the old sniff names have been deprecated,&#8221; <a href=\"https://github.com/jrfnl\">Juliette Reinders Folmer</a>, a significant contributor to the project, said. </p>\n\n<p>&#8220;If you selectively include any of these sniffs in your custom ruleset or set custom property values for these sniffs, your custom ruleset will need to be updated.&#8221;</p>\n\n<p>The WordPress-VIP ruleset has been deprecated as well. &#8220;This ruleset has not been valid for some time, as we have <a href=\"https://github.com/Automattic/VIP-Coding-Standards\">our own VIP coding standards</a>, available for public use,&#8221; David Artiss, a member of the WordPress.com VIP support team, said.</p>\n\n<p>&#8220;If you are a VIP client and you are not using the alternative rulesets, then we would strongly recommend switching to these. If you used the WordPress-VIP ruleset for any other reason, you should use WordPress-Extra or WordPress instead.&#8221;</p>\n\n<p>Those who use the WordPress Coding Standards Sniffs are strongly encouraged to read the <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/releases/tag/1.0.0\">changelog</a> before updating. WordPress Coding Standards is a free, open source project, that&#8217;s <a href=\"https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards\">available on GitHub</a> where contributions are welcomed.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Jul 2018 23:43:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"WPTavern: David Needham Chats about Venturing Outside WordCamp to Visit Other Open Source Communities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82750\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:112:\"https://wptavern.com/david-needham-chats-about-venturing-outside-wordcamp-to-visit-other-open-source-communities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1439:\"<p>While at WordCamp Europe I had the chance to chat with <a href=\"http://davidneedham.me\" rel=\"noopener noreferrer\" target=\"_blank\">David Needham</a>, a developer advocate at Pantheon, about his session titled &#8220;<a href=\"https://davidneedham.me/wceu2018/\" rel=\"noopener noreferrer\" target=\"_blank\">Intro to Drupal for WordPress Folks</a>.&#8221; Needham frequently travels between the WordPress and Drupal communities, representing his company as a developer liaison. He has spoken at various Drupal camps and WordCamps and is also one of the organizers for WordCamp US 2018 in Nashville.</p>\n<p>During our chat, Needham discussed some of the more notable differences between the WordPress and Drupal communities and how the two can inspire each other in various ways. He encouraged attendees at his session to venture outside of WordCamps and said he hopes to see more collaboration across the platforms in the future. From his unique vantage point, Needham said he doesn&#8217;t think CMS rivalries are as big of a deal as they used to be.</p>\n<p>&#8220;We&#8217;re realizing that we&#8217;re really not competing,&#8221; Needham said. &#8220;The internet is a big place and there&#8217;s plenty of room for all of our communities to work together &#8211; especially since our values are so closely aligned already. If there is a rivalry, it feels a little bit more like a friendly sibling rivalry than anything.&#8221;</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Jul 2018 21:50:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: WordPress Developers: Learn How to Convert Shortcodes to Gutenberg Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82737\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/wordpress-developers-learn-how-to-convert-shortcodes-to-gutenberg-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2208:\"<p>Gutenberg contributor <a href=\"http://pento.net\" rel=\"noopener noreferrer\" target=\"_blank\">Gary Pendergast</a> has published a handy <a href=\"https://gist.github.com/pento/cf38fd73ce0f13fcf0f0ae7d6c4b685d\" rel=\"noopener noreferrer\" target=\"_blank\">sample plugin</a> that demonstrates how to convert shortcode functionality to a Gutenberg block.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Do you have a bunch of shortcodes that you’d like to really easily turn into blocks? Here’s a sample plugin showing how to re-use your exisiting shortcode functionality in a block!<a href=\"https://t.co/bppHcumBlB\">https://t.co/bppHcumBlB</a></p>\n<p>&mdash; Gary (@GaryPendergast) <a href=\"https://twitter.com/GaryPendergast/status/1023560781617487872?ref_src=twsrc%5Etfw\">July 29, 2018</a></p></blockquote>\n<p></p>\n<p>The first file shows a basic example of how to register a block with JavaScript and add block inspector controls to the sidebar. The second file is the PHP code for the plugin that converts the existing shortcode logic into a block that will work inside the new editor.</p>\n<p>&#8220;This sample uses the ServerSideRender element,&#8221; Pendergast said. &#8220;It’s critical to remember that ServerSideRender is a stepping stone to a full block editing experience: having to call back to the server to re-render is a worse UX than native JS rendering. Use ServerSideRender to get your existing functionality ready for WordPress 5.0 now, and plan to phase it out over time.&#8221;</p>\n<p>With WordPress 4.9.8&#8217;s <a href=\"https://wptavern.com/first-look-at-try-gutenberg-prompt-in-wordpress-4-9-8-beta-2\" rel=\"noopener noreferrer\" target=\"_blank\">&#8220;Try Gutenberg&#8221; callout</a> just around the corner, this sample plugin may be helpful for developers who have created custom shortcode plugins for clients. If you&#8217;re not sure where to start, Pendergast&#8217;s sample plugin makes Gutenberg block creation more approachable. The <a href=\"https://wordpress.org/gutenberg/handbook/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenberg handbook</a> has more in-depth documentation for developers who want to improve their blocks beyond this basic example.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Jul 2018 13:47:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WPTavern: Plugin Review: Theme Support for Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82710\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/plugin-review-theme-support-for-gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2655:\"<p>As Gutenberg nears a merge with WordPress, Theme Authors are running out of time to ensure that their themes are compatible. The Gutenberg handbook has an <a href=\"https://wordpress.org/gutenberg/handbook/extensibility/theme-support/\">excellent article</a> on how to opt-in and add support for enhanced features.</p>\n\n<p>Most themes will present the default blocks without any issues as the blocks themselves provide their own styles. If you use a theme that does not fully support Gutenberg such as the Wide or Full Block Alignment options, the <a href=\"https://wordpress.org/plugins/theme-support-for-gutenberg/\">Theme Support for Gutenberg</a> plugin may be for you. </p>\n\n<p>Created by <a href=\"https://weavertheme.com/about/\">Weweaver</a>, Theme Support for Gutenberg claims to allow most WordPress themes to be compatible with Gutenberg. In addition to theme support, the plugin adds a Classic Editor button to the admin bar to easily switch between Gutenberg and the Classic Editor.</p>\n\n<p>Since a default WordPress theme is used to show how this plugin is beneficial, I decided to try it for myself. I installed the plugin on a fresh install of WordPress 4.9.7, Gutenberg 3.3, and the latest version of Twenty Sixteen. I published a Gutenberg Demo post which uses many of the default blocks.<br /></p>\n\n<h2>Twenty Sixteen Looks Better Without It<br /></h2>\n\n<p>Here is what the Gallery block looks like in Twenty Sixteen with the plugin disabled. The content looks good and fits within the content column.</p>\n\n<img />Theme Support for Gutenberg Disabled\n\n<p>When the plugin is enabled, the images are so large, a horizontal scroll bar appears. </p>\n\n<img />Theme Support for Gutenberg Enabled\n\n<p>The plugin includes additional styling for default blocks. One block that doesn&#8217;t benefit from the enhanced styles is the Video block. With the plugin disabled, the video block appears normally. </p>\n\n<img />Video Block With The Plugin Disabled<br />\n\n<p>With the plugin enabled, the video block overflows the content column and breaches into the left sidebar.</p>\n\n<img />Video Block With The Plugin Enabled \n\n<p>Although the plugin initially shipped with no options, version 0.2 includes new settings that provide better compatibility for some themes. I checked the box to disable Fitvids support which solved the video block issue. However, the other options had no effect on the oversized image blocks. <br /></p>\n\n<img />Theme Support Options\n\n<p>Twenty Sixteen and Twenty Seventeen do not work well with this plugin. There may be themes, particularly older ones that benefit, but more modern themes will likely be ok without it. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Jul 2018 22:42:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WPTavern: WooSesh Virtual WooCommerce Conference to be Held October 18-19\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82508\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wptavern.com/woosesh-virtual-woocommerce-conference-to-be-held-october-18-19\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4964:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/woosesh-2018.png?ssl=1\"><img /></a></p>\n<p><a href=\"https://woosesh.com/\" rel=\"noopener noreferrer\" target=\"_blank\">WooSesh</a>, a new two-day virtual conference focused on WooCommerce topics, will be held October 18-19. While wrapping up another successful edition of WordSesh, Brian Richards announced WooSesh as the next event coming under the WordSesh brand. On Wednesday, nearly 500 attendees joined WordSesh. People tuned in from around the world, although the audience was heavily US-based due to the time the event was scheduled.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/wordsesh-july-2018.png?ssl=1\"><img /></a></p>\n<p>Since WooConf is not happening this year, WooSesh is an exciting alternative that will be accessible to anyone in the world. Co-organizers Brian Richards and Patrick Rauland will be hosting eight presentations each day, so the event will last between 8-10 hours both days, including breaks and announcements.</p>\n<p>&#8220;Once we learned that WooConf wouldn’t be taking place this year we reached out to our friends at Automattic to see if we could work with them as well to still provide a high-quality event but for a much more global audience,&#8221; Richards said.</p>\n<p>WooCommerce is sponsoring the entire event, making it free for all live attendees. Richards said they are working with other prominent companies in the WooCommerce space who are lending their knowledgeable staff as presenters, as well as providing the event with digital swag for attendees.</p>\n<p>WooSesh organizers are employing an interesting concept for encouraging attendance and engagement. The conference will have a $200 ticket price for those who do not attend live. Those who register in advance and attend live will receive the $200 ticket for free.</p>\n<p>&#8220;That means if a person joins the mailing list and shows up for the event, they’ll be able to experience the whole thing at no cost to them,&#8221; Richards said. &#8220;Similar to WordSesh, a ticket grants attendees access to the entire broadcast, chat, recordings, real-time transcriptions, and some cool digital swag. But with WooSesh they’ll also get some targeted follow-up content, and perhaps a private community, to further help them succeed and increase the impact of this conference.</p>\n<p>&#8220;And I think it’s in everyone’s best interest to register and attend live – at least trying to make it to one of the sessions across the two days – so they can get all of that for free.&#8221;</p>\n<p>Richards said recordings may still make it out there for people to view afterwards but none of the other perks and follow-ups will be available without purchasing a ticket or attending live.</p>\n<p>&#8220;We talked about asking people for a credit card up front and building a mechanism that would either charge them after the fact (like a pre-order) or charge them up-front but then refund them after the fact,&#8221; Richards said. &#8220;Instead we’re going with the simpler route and asking only for a person’s name and email address up-front. If they come to the live event they’ll be able to access all of the content afterwards just as if they had paid, and if they don’t attend live they’ll instead be greeted with a payment form.&#8221;</p>\n<p>Building on their collective knowledge of organizing successful in-person and virtual conferences, Richards said he and his co-organizer wanted to reduce the friction as much as possible for people getting into their seats and engaged with the speakers and other attendees.</p>\n<p>&#8220;Making it a virtual event already knocks down a ton of barriers,&#8221; Richard said. &#8220;Making the content available for free eliminates even more. Except that, people will often discredit free things and we didn’t want anyone to think of this content as any less valuable or serious than it really is.&#8221;</p>\n<p>WooSesh organizers plan to host compelling case studies, as well as talks about SEO, security, tips for building different kinds of e-commerce stores, and share advice from others’ hard-earned lessons. The event will also host sessions for developers that delve into WooCommerce architecture, performance, how to build and support custom extensions, and how to expand service offerings to better support e-commerce projects.</p>\n<p>&#8220;Our biggest goal with WooSesh is that it will help store builders as well as coders to have more impact with what they build,&#8221; Richards said. &#8220;Specifically, we’d like to see them make some measurable progress in their own goals, whether that’s more sales, better customer experiences, greater depth of knowledge, or otherwise. We’re also hoping that some of these talks will inspire attendees to do more than they originally thought possible – either for their own e-commerce stores or for their customers/clients.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Jul 2018 22:34:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Slack Acquires HipChat, Moves Blog from Medium to WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82681\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wptavern.com/slack-acquires-hipchat-moves-blog-from-medium-to-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2732:\"<p>Slack <a href=\"https://slackhq.com/atlassian-and-slack-partnership\" rel=\"noopener noreferrer\" target=\"_blank\">announced</a> today that it has acquired HipChat from Atlassian. The friendly rivalry between the two competing group chat platforms will be laid to rest as Slack plans to retire HipChat and Stride. Atlassian will receive a stake in Slack&#8217;s business in exchange for shutting down its chat collaboration services and migrating all of its customers over.</p>\n<p><a href=\"https://www.atlassian.com/blog/archives/press-release-atlassian-acquires-hipcha\" rel=\"noopener noreferrer\" target=\"_blank\">Atlassian acquired HipChat in 2012</a> with the intention of scaling the business but found a formidable challenge in taking on the well-funded, market-dominating Slack app. As of May 2018, <a href=\"https://slackhq.com/from-tokyo-to-tallahassee-target-to-ticketmaster-slack-is-where-work-happens\" rel=\"noopener noreferrer\" target=\"_blank\">Slack reported 8 million daily active users</a> and 70,000 paid teams. More than half of the app&#8217;s users are outside the U.S. and 65% of companies in the Fortune 100 pay to use Slack.</p>\n<p>Atlassian and Slack are now joining forces to compete against Microsoft, who jumped into the enterprise collaboration market in 2016 with its Teams product. Teams&#8217; free tier offers support for up to 300 people, with unlimited chat messages and search, and is aimed squarely at competing with Slack.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/slack-blog-e1532659145946.png?ssl=1\"><img /></a></p>\n<p>The news was announced on &#8220;<a href=\"https://slackhq.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Several People Are Typing</a>,&#8221; the official Slack blog, which has just <a href=\"https://medium.com/several-people-are-typing/weve-moved-9cf5941a66fe\" rel=\"noopener noreferrer\" target=\"_blank\">moved from Medium to WordPress</a>. It is being hosted on the WordPress.com VIP platform.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\"><img src=\"https://s.w.org/images/core/emoji/11/72x72/1f485.png\" alt=\"💅\" class=\"wp-smiley\" /> I can’t really answer the question (bias, yada yada), but it sure is good to be hosting the Slack blog at <a href=\"https://twitter.com/WordPressVIP?ref_src=twsrc%5Etfw\">@WordPressVIP</a> <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f60e.png\" alt=\"😎\" class=\"wp-smiley\" /> <a href=\"https://t.co/86aQQ5Pkaz\">https://t.co/86aQQ5Pkaz</a></p>\n<p>&mdash; Simon Wheatley (@simonwheatley) <a href=\"https://twitter.com/simonwheatley/status/1022360132053807104?ref_src=twsrc%5Etfw\">July 26, 2018</a></p></blockquote>\n<p></p>\n<p>The answer to that question, by the way, is &#8216;yes.&#8217;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Jul 2018 02:55:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: How to Create A Gutenberg Block Attributes Glossary\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82684\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wptavern.com/how-to-create-a-gutenberg-block-attributes-glossary\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1242:\"<p>If you want to see what Gutenberg blocks are available on a site along with their attributes, check out the <a href=\"https://github.com/OIT-Design/block-attributes-glossary\">Block Attributes Glossary</a> plugin by <a href=\"https://design.oit.ncsu.edu/\">NC State&#8217;s Office of Information Technology and Design</a>.</p>\n\n<img />Block Attributes Glossary Index\n\n<p>The plugin adds a Glossary Attributes Block to Gutenberg that when added to a post or page, displays an index of blocks that are available. Clicking on a block name will display its attributes. </p>\n\n<img />Atomic Blocks Drop Cap Block Attributes\n\n<p>This is especially useful for creating block templates. Note that if you install plugins that add new blocks, you&#8217;ll need to visit the post or page that has the glossary, remove the Glossary block, and re-add it. </p>\n\n<p>You can see a live demo of this plugin in action by visiting <a href=\"https://design.oit.ncsu.edu/docs/gutenberg/block-attributes/\">NC State&#8217;s OIT Block Attributes Glossary</a>. The plugin is not available from the WordPress plugin directory but you can download it for free from the <a href=\"https://github.com/OIT-Design/block-attributes-glossary\">project&#8217;s Github page</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Jul 2018 20:47:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: Font Awesome 5.2 Adds 372 New Icons, Introduces Automotive and Education Categories\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82617\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/font-awesome-5-2-adds-372-new-icons-introduces-automotive-and-education-categories\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3091:\"<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/07/Screen-Shot-2018-07-25-at-5.15.52-PM.png?ssl=1\"><img /></a>image credit: <a href=\"https://fontawesome.com/\">Font Awesome</a>\n<p><a href=\"https://blog.fontawesome.com/font-awesome-5-2-372-new-icons-adfb42c6c35\" rel=\"noopener noreferrer\" target=\"_blank\">Font Awesome</a> 5.2 was released yesterday with two new categories and 372 new icons, bringing the total number of free icons to 1,295. The open source vector icon font is used on more than <a href=\"https://trends.builtwith.com/widgets/Font-Awesome\" rel=\"noopener noreferrer\" target=\"_blank\">22 million sites</a> across the internet. It&#8217;s also a popular icon font with WordPress theme and plugin developers.</p>\n<p>Version 5.2 introduces automotive and education categories, which should be useful to fill the gaps for designers and developers creating sites around these subjects. The release also adds 66 new and updated icons to the Medical category and 126 new and updated Maps icons.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/medical.png?ssl=1\"><img /></a></p>\n<p>Font Awesome, originally created by Dave Gandy, is an SIL OFL-licensed icon font, with the code under the MIT License. Thanks to its GPL-friendly license, the icon font is widely used in WordPress&#8217; theme and plugin ecosystem in both commercial and free products. Font Awesome&#8217;s <a href=\"https://github.com/FortAwesome/Font-Awesome/issues?utf8=%E2%9C%93&q=is%3Aissue+is%3Aopen+wordpress\" rel=\"noopener noreferrer\" target=\"_blank\">Github issues queue</a> is also loaded with icon requests that would be used in niche WordPress themes, as well as icons for WordPress-related company logos.</p>\n<p>Two years ago, Font Awesome announced the <a href=\"https://wptavern.com/font-awesome-cdn-now-in-beta-loads-icons-asynchronously-with-automatic-accessibility-best-practices\" rel=\"noopener noreferrer\" target=\"_blank\">beta release of its new CDN</a>, which allows developers to implement it using a single line of code to bring the icons and CSS toolkit into their projects. At that time, Font Awesome was used by more than 300 plugins on WordPress.org. In 2018, searching the official plugin directory turns up more than 800 plugins that make use of the icon font in some way. Thousands of free and commercial themes also use it to provide users with easy customization options.</p>\n<p>Font Awesome support for Gutenberg is going to be fairly important, as hundreds of thousands of websites are using plugins like <a href=\"https://wordpress.org/plugins/better-font-awesome/\" target=\"_blank\" rel=\"noopener noreferrer\">Better Font Awesome</a>, <a href=\"https://wordpress.org/plugins/font-awesome-shortcodes/\" target=\"_blank\" rel=\"noopener noreferrer\">Font Awesome Shortcodes</a>, and <a href=\"https://wordpress.org/plugins/font-awesome-4-menus/\" target=\"_blank\" rel=\"noopener noreferrer\">Font Awesome for Menus</a> to allow users to add icons to content and menus. Currently there are no Gutenberg-compatible plugins for adding Font Awesome icons to content.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Jul 2018 18:08:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WPTavern: WPWeekly Episode 324 – Getting NC State Gutenready\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=82650&preview=true&preview_id=82650\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wptavern.com/wpweekly-episode-324-getting-nc-state-gutenready\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1804:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I are joined by <a href=\"https://design.oit.ncsu.edu/people/jmriehle/\">Jen McFarland</a>, Web Services Coordinator at NC state&#8217;s Office of Information and Technology. McFarland describes how the campus is using WordPress, what they&#8217;re doing to prepare students and staff for Gutenberg, and what they&#8217;ve experienced thus far in the transition.</p>\n<p>Near the end of the show, we cover WordPress 4.9.8 RC 1 and provide an update on WP-CLI Hack Day.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/gutenberg-3-3-released-adds-archives-and-recent-comments-blocks\">Gutenberg 3.3 Released, Adds Archives and Recent Comments Blocks</a><br />\n<a href=\"https://make.wordpress.org/core/2018/07/24/wordpress-4-9-8-release-candidate-1/\">WordPress 4.9.8 RC 1 Released</a><br />\n<a href=\"https://wptavern.com/wp-cli-hack-day-is-a-success\">WP-CLI Hack Day Is A Success</a><br />\n<a href=\"https://wptavern.com/google-chrome-rolls-out-not-secure-warning-for-plain-http-sites\">Google Chrome Rolls Out “Not Secure” Warning for Plain HTTP Sites</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, August 1st 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #324:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Jul 2018 01:01:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: Frontenberg Lets Users Test Gutenberg on the Frontend\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82526\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/frontenberg-lets-users-test-gutenberg-on-the-frontend\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2733:\"<p>WordPress 5.0 will bring the world a brand new editor that is currently code-named Gutenberg. If you have been hearing the buzz around Gutenberg but have yet to try it, <a href=\"https://testgutenberg.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Frontenberg</a> (<a href=\"https://testgutenberg.com/\" rel=\"noopener noreferrer\" target=\"_blank\">testgutenberg.com</a>) is the easiest way to check it out.</p>\n<p>Frontenberg allows visitors to try Gutenberg without having to set up a separate test site of their own. It loads an instance of WordPress plus the Gutenberg plugin on the frontend so visitors don&#8217;t have to log in to play around with the new editor.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/07/frontenberg-e1532540010736.png?ssl=1\"><img /></a></p>\n<p>Frontenberg has a limited range of capabilities for testing purposes. Users have access to a pre-populated media library but cannot upload images to the test site. It&#8217;s also not possible to create shared blocks or save the post. Attempting to save an action will trigger an &#8220;updating failed&#8221; notice. Apart from those few limitations, Frontenberg allows users to test nearly all of Gutenberg&#8217;s features.</p>\n<p>The tool was created by <a href=\"https://tomjn.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Tom Nowell</a>, VIP Wrangler at <a href=\"https://automattic.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Automattic</a>. He launched the frontend testing instance on his own website at <a href=\"https://frontenberg.tomjn.com/\" rel=\"noopener noreferrer\" target=\"_blank\">frontenberg.tomjn.com</a> and the WordPress VIP team built its own version to handle more traffic. Frontenberg contains links to numerous Gutenberg resources, including <a href=\"http://vipgutenberg.com\" rel=\"noopener noreferrer\" target=\"_blank\">vipgutenberg.com</a>, which has some free training videos the team created for VIP clients.</p>\n<p>Nowell has written a post called <a href=\"https://tomjn.com/2018/01/22/how-frontenberg-works/\" rel=\"noopener noreferrer\" target=\"_blank\">How Frontenberg Works</a> for developers who are interested in the tech behind the tool. In it he describes the challenges he encountered in building Frontenberg and the solutions he wrote to make it work.</p>\n<p>The <a href=\"https://wptavern.com/first-look-at-try-gutenberg-prompt-in-wordpress-4-9-8-beta-2\" rel=\"noopener noreferrer\" target=\"_blank\">&#8220;Try Gutenberg&#8221; prompt</a> will soon be going out to millions of users in WordPress 4.9.8. Those who conservatively opt to use the Classic Editor plugin can still give Gutenberg a try using the Frontenberg tool or install it on a test site to see how interacts with themes and plugins.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Jul 2018 19:59:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: WordPress Core Fields API Project is Seeking New Leadership\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82602\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/wordpress-core-fields-api-project-is-seeking-new-leadership\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10702:\"<p>In 2014, <a href=\"https://pods.io/\">Pods</a> lead developer, Scott Kingsley Clark, <a href=\"https://make.wordpress.org/core/2014/02/25/metadata-project-update/\">took over</a> the primary lead role for the Metadata UI project. In 2015, the Metadata UI project <a href=\"https://make.wordpress.org/core/2015/05/27/metadata-api-project-reborn-the-new-fields-api-project/\">was reborn</a> as the <a href=\"https://github.com/sc0ttkclark/wordpress-fields-api\">Fields API</a>.</p>\n\n<p>The Fields API was developed to allow registering fields to different screens in the admin area through a single API. New meta boxes and fields within them could be added to posts while new sections and fields could be added to the profile screen.</p>\n\n<p>The goal of the API is to integrate with all of the various admin screens including, Posts, Terms, Users, Media, and Comments and provide standardization.</p>\n\n<p>Clark has been leading the project for three years and despite seeing <a href=\"https://wptavern.com/wordpress-core-fields-api-project-sees-renewed-interest\">renewed interest</a> last year, <a href=\"https://wordpress.slack.com/messages/C04MWK7PZ/\">announced</a> in the project&#8217;s Slack channel that he is stepping down. <br /></p>\n\n<blockquote class=\"wp-block-quote\"><p>It is with a heavy heart that I must pass the torch on this project. After hundreds of hours of my time, I no longer believe I can effect change within WordPress core. </p><p>The Fields API vision was too big, too much of an undertaking for any one person. I believe so deeply that WordPress needs a Fields API, but the journey to where we are at with the Fields API has been long and arduous. </p><p>The truth is, I burned out years ago while building the first and second prototypes. Not everyone agreed on how to architect the code, it went through many revisions based on core contributor feedback. I just couldn&#8217;t get enough people excited about it, I couldn&#8217;t get enough companies and people interested in supporting it.</p><p>I need to let someone else have their chance, I am dragging it down. If someone steps up to lead in the future, then I would be happy to assist where I am able to. But I am unable to continue leading the Fields API proposal/project. I am sorry, please accept my apology and I hope you can forgive me for failing to take this project over the finish line. I still believe to be such a vital part of WordPress&#8217; future success.</p><cite>Scott Kingsley Clark</cite></blockquote>\n\n<h2>The Trials and Tribulations of Leading an Open Source Project</h2>\n\n<p>In the following interview, Clark explains why he feels personally responsible for the project&#8217;s lack of progress, why the API is important for WordPress&#8217; future, and reflects on what he could have done differently.</p>\n\n<p><strong>Are you looking to pass the torch on to anyone in particular?</strong><br /><br /></p>\n\n<p>No, I&#8217;m not sure who would have the drive and the clout to see the project through. It&#8217;s a large scale project that should be approached with a long-term vision but in small enough increments to make it into WordPress core. It&#8217;s a lot to ask of somebody, it&#8217;s also not a priority for people right now since they are distracted by Gutenberg being released in the near future.<br /></p>\n\n<p><strong>Why is the Fields API a vital part of WordPress&#8217; future?</strong><br /><br /></p>\n\n<p>People look at WordPress today and wonder how they ever survived without the REST API. Well, at least I know I do! The same thing can be said about the Fields API even though it&#8217;s not there yet. There are so many cases where it&#8217;s frustrating to build solutions for WordPress across all of the different hooks.<br /></p>\n\n<p>For consistency, it&#8217;s the wild west out there. You get a meta box registered and you fill it with whatever you want. You need your own CSS to style the form fields and everyone has their own idea of how this interface should look. You are in charge of your own responsive layouts that are mobile-friendly, there&#8217;s just so much you have to handle on your own. You should be able to customize appearances, but every place you want to add a field or form to should really have a proper API.<br /></p>\n\n<p>Long-term, imagine registering fields to WordPress like you register post types. Imagine fields and their configurations being available to the REST API and accessible through the WordPress App or other custom apps. </p>\n\n<p>The whole world opens up because you have a consistent API, the whole world make sense because you have a consistent interface for those fields across the various edit screens. Posts, terms, comments, users, media, even the Customizer would all have the same underlying API to add groups, panels, and fields to their screens.<br /></p>\n\n<p>If Gutenberg was done after the Fields API was in, migration for folks wouldn&#8217;t have been as difficult. Gutenberg could have automatically shown all of the Fields API interfaces like it does for the meta box backward compatibility. It would have looked so much nicer too.<br /></p>\n\n<p><strong>Taking some time to reflect, what could you have done differently to get more core contributors to buy into the project and turn it into a higher priority?</strong><br /><br /></p>\n\n<p>I&#8217;m not sure, it&#8217;s a delicate balance of taking input and being confident in the end result. At first, the feedback was about how the API was foreign for WordPress, they asked if it could be similar in structure to other APIs such as the Customizer. </p>\n\n<p>We scrapped the code and rebuilt from the ground up as a fork of the Customizer, it even supported having the Customizer utilizing the Fields API too. At the height of development, we had all areas of the Fields API implemented.<br /></p>\n\n<p>Core releases were moving pretty fast, there was a lot of code changes from WordPress release to release that we had to keep up with because we had essentially created a project that was a giant patch for WordPress. </p>\n\n<p>There weren&#8217;t enough hooks in place to do what we needed to do, and many sections were not extensible because of code decisions that marked themselves as &#8216;final&#8217;, which means you can&#8217;t extend a specific class to customize how it works.<br /></p>\n\n<p>I wish I could have been at all the big WordCamps in the US and Europe, essentially lobbying for this feature. Gathering supporters and such, it feels like politics in a way. I hung around in Core dev meetings, trying to bring it up. I tried to legitimize the feature by having a dedicated channel in the official WordPress Slack, posting updates on<a href=\"https://make.wordpress.org/core/\"> https://make.wordpress.org/core/</a>, and holding weekly meetings.<br /></p>\n\n<p>Ultimately, I prioritized my time for development over the time to gather the troops. That was the downfall, I began to burn out quickly after the first few rewrites as I had many other responsibilities elsewhere on top of Fields API.</p>\n\n<p>It’s not like companies will easily want to pay you to work on a project like this indefinitely, even though both WebDevStudios and 10up gave me time to push it forward. It wasn’t a blank check, at some point I had to get back to billable work. From then on, it was all in my free time and that was difficult to manage during times of financial stress and house selling/buying.<br /></p>\n\n<p><strong>There&#8217;s demand for a Fields API in core but not enough hands to build it. Why do you think that is?</strong><br /><br /></p>\n\n<p>Everyone is focused elsewhere. There’s a lot of areas of WordPress that need people’s attention. There are things like Accessibility that deserve a lot more attention than it gets. But the focus to me, seems to be on Gutenberg and REST API. </p>\n\n<p>Gutenberg especially has been a huge time sink for people contributing and people implementing. It’s a really large feature. It’s definitely larger in scale than Fields API, it’s like a whole new app that lives in WordPress. Integration with it has required a lot of education and trial/error. People’s focus is where it needs to be right now. It’s just unfortunate that Gutenberg came before Fields API in terms of priority and interest level.<br /></p>\n\n<p><strong>What advice would you give to the next Fields API project leader?</strong><br /><br /></p>\n\n<p>This is a big project, everyone will want to say it should be a certain way. You have to evaluate the options and put forth something bite sized for core to start with. Build upon that, but never lose sight of the long-term goal of integration across all of the WordPress screens. Even the front-end comment forms could thrive with the Fields API.<br /></p>\n\n<p><strong>Why do you feel personally responsible for the project not being a core priority?</strong><br /><br /></p>\n\n<p>At one point, we had momentum. We had at least three to four people who were active. It fell apart because I ran out of time. It’s my shortsightedness, it’s my fault. I spent hundreds of hours developing the project over a couple of years. I should have left myself much more time for organizing the feature proposal text and keeping the fires burning in our contributors’ hearts.<br /></p>\n\n<p><strong>Considering the time and effort you&#8217;ve put into the project the last few years, do you feel any sense of relief passing the torch on?</strong><br /><br /></p>\n\n<p>If the torch gets passed or picked up, I will feel a ton better. The main relief is that it’s officially not a weight I have to carry alone any longer. It’s okay to try and fail, it’s still sad though. </p>\n\n<p>I hope that someone or some company steps up and puts time into this. They could even reignite the fire in my own heart that burned itself out. For now, I have one less major to-do item. I still have a hefty plate but it’s no longer as heavy of a burden.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>While the immediate future of the project is unclear, those interested in taking it over are encouraged to read posts marked with the <a href=\"https://make.wordpress.org/core/tag/fields-api/\">Fields API tag</a> on <a href=\"https://make.wordpress.org/core\">Make.WordPress.Core</a> to learn about its history. You can also check out the <a href=\"https://github.com/sc0ttkclark/wordpress-fields-api\">project&#8217;s Github page</a>. </p>\n\n<p>If you&#8217;re interested in taking over the project, you can contact Clark on <a href=\"https://twitter.com/scottkclark\">Twitter</a>, <a href=\"https://wordpress.slack.com/team/U02RSB1LH\">Slack</a>, or through <a href=\"https://www.scottkclark.com/\">his website</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Jul 2018 16:53:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"HeroPress: Global Unity\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2596\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://heropress.com/global-unity/#utm_source=rss&utm_medium=rss&utm_campaign=global-unity\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3268:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2017/04/041217-min-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I am quite lucky to wake up every morning and work, all on my own, in a country where 54% of the population are unemployed and over 70% are youth.\" /><p>One of the things I&#8217;ve loved most about HeroPress is getting to know people far away. It&#8217;s getting harder and harder to name a country where I can&#8217;t say &#8220;Hey, I have a friend there!&#8221;.  This week I&#8217;m in Australia for WordCamp Sydney, and I&#8217;m crazy excited about all the people I&#8217;m going to meet. The global unity of the WordPress community is exhilarating.</p>\n<p>The replay essay I picked for this week is titled &#8220;<strong>A Bottomless World of Possibilities</strong>&#8221; by Jamaal Jaamac in Mogadishu, Somalia. His world is so completely different from mine that sometimes I even have a hard time asking the right questions to find out what it&#8217;s like.</p>\n<p>Jamaal doesn&#8217;t live in a place where good work comes easy or often. It&#8217;s chiseled out of society with labor and love. There&#8217;s a stereotype that people in poor countries are lazy, but I think they have to be stronger and work harder just to make it. Jamaal is one of my heroes.</p>\n<p>Check out his essay.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/bottomless-world-possibilities/\">A Bottomless World of Possibilities</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Global Unity\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Global%20Unity&via=heropress&url=https%3A%2F%2Fheropress.com%2Fglobal-unity%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Global Unity\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fglobal-unity%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fglobal-unity%2F&title=Global+Unity\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Global Unity\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/global-unity/&media=https://heropress.com/wp-content/uploads/2017/04/041217-min-150x150.jpg&description=Global Unity\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Global Unity\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/global-unity/\" title=\"Global Unity\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/global-unity/\">Global Unity</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Jul 2018 10:52:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: Google Chrome Rolls Out “Not Secure” Warning for Plain HTTP Sites\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82489\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wptavern.com/google-chrome-rolls-out-not-secure-warning-for-plain-http-sites\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7926:\"<p>As part of a long term plan to push the web to adopt HTTPS encryption, <a href=\"https://www.blog.google/products/chrome/milestone-chrome-security-marking-http-not-secure/\" rel=\"noopener noreferrer\" target=\"_blank\">Google Chrome is now marking all plain HTTP sites as &#8220;not secure,&#8221;</a> as of July 24, 2018, with the release of <a href=\"https://chromereleases.googleblog.com/2018/07/stable-channel-update-for-desktop.html\" rel=\"noopener noreferrer\" target=\"_blank\">Chrome 68</a>. Previously, the &#8220;not secure&#8221; warning was hidden behind the security indicator in the URL bar as shown below.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/Screen-Shot-2018-07-23-at-8.51.52-PM.png?ssl=1\"><img /></a></p>\n<p>That warning has become more prominent with the release of Chrome 68. The browser now immediately displays the &#8220;Not secure&#8221; message in the omnibox for all HTTP pages.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/warning-update.jpg?ssl=1\"><img /></a></p>\n<p>Today Google announced a time frame for eventually marking HTTP sites with a red &#8220;not secure&#8221; warning:</p>\n<blockquote><p>Eventually, our goal is to make it so that the only markings you see in Chrome are when a site is not secure, and the default unmarked state is secure. We will roll this out over time, starting by removing the “Secure” wording in September 2018. And in October 2018, we’ll start showing a red “not secure” warning when users enter data on HTTP pages.</p></blockquote>\n<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/not-secure-eventual-warning.png?ssl=1\"><img /></a>image source: <a href=\"https://security.googleblog.com/2016/09/moving-towards-more-secure-web.html\">Google Security Blog</a>\n<p>Google Chrome currently captures <a href=\"http://gs.statcounter.com/browser-market-share\" rel=\"noopener noreferrer\" target=\"_blank\">60% of the browser marketshare worldwide</a>, making it one of the company&#8217;s most effective vehicles for driving HTTPS adoption. <a href=\"https://letsencrypt.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Let&#8217;s Encrypt</a>, the free and open certificate authority (of which Chrome is a platinum sponsor), has also been a key player in precipitating the rise in secure traffic over the past few years. Firefox Telemetry shows that HTTPS traffic is at 81% for US users and 73% for all users.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2018/07/Screen-Shot-2018-07-24-at-10.20.50-AM.png?ssl=1\"><img /></a></p>\n<p><a href=\"https://transparencyreport.google.com/https/overview?hl=en\" rel=\"noopener noreferrer\" target=\"_blank\">Google&#8217;s Transparency report</a> shows similar numbers for percentage of pages loaded over HTTPS in Chrome. 84% of US traffic is encrypted by HTTPS.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2018/07/Screen-Shot-2018-07-24-at-10.40.02-AM-e1532446916438.png?ssl=1\"><img /></a></p>\n<p>Google has even more weapons in its arsenal for compelling website owners to switch to HTTPS. Even before Chrome began flagging unencrypted sites, the search engine added <a href=\"https://webmasters.googleblog.com/2014/08/https-as-ranking-signal.html\" rel=\"noopener noreferrer\" target=\"_blank\">HTTPS as a ranking signal in 2014</a>. It started as a lightweight signal that affected fewer than 1% of global queries. Google has also indicated that <a href=\"https://searchengineland.com/googles-gary-illyes-https-may-break-ties-between-two-equal-search-results-230691\" rel=\"noopener noreferrer\" target=\"_blank\">HTTPS may break ties between two equal search results</a>, making a difference for competitive niches. With more sites adopting HTTPS as the norm, the company may choose to strengthen the signal in the future.</p>\n<p>Not everyone is comfortable with a for-profit company making an aggressive push to require websites to deliver content over HTTPS. Some fear that prioritizing encryption in search results, while also using Chrome to cast doubt on websites&#8217; security, is just the beginning.</p>\n<p>Dave Winer, one of Google&#8217;s most vocal critics regarding this initiative, sees the push towards HTTPS as <a href=\"http://this.how/googleAndHttp/\" rel=\"noopener noreferrer\" target=\"_blank\">the company&#8217;s attempt to take control of the open web</a>. His concern is that if Google succeeds, it might &#8220;make a lot of the web&#8217;s history inaccessible.&#8221;</p>\n<p>&#8220;Google makes a popular browser and is a tech industry leader,&#8221; Winer said. &#8220;They can, they believe, encircle the web, and at first warn users as they access HTTP content. Very likely they will do more, requiring the user to consent to open a page, and then to block the pages outright.&#8221;</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">BTW, if I had to guess, the *real* reason Google hates HTTP has to do with Google\'s ad revenue, and not wanting Verizon and Comcast to remove their ads and replace them with their own. <img src=\"https://s.w.org/images/core/emoji/11/72x72/1f61c.png\" alt=\"😜\" class=\"wp-smiley\" /></p>\n<p>&mdash; scripting.com (@davewiner) <a href=\"https://twitter.com/davewiner/status/1021500417241427968?ref_src=twsrc%5Etfw\">July 23, 2018</a></p></blockquote>\n<p></p>\n<p>Others have speculated that another driving factor behind Google&#8217;s push for HTTPS adoption may be its investment in <a href=\"https://www.i-programmer.info/news/87-web-development/11367-google-starts-its-push-to-progressive-web-apps-bye-bye-chrome-apps.html\" rel=\"noopener noreferrer\" target=\"_blank\">advancing PWA technologies</a>, which require HTTPS to be enabled. Last year <a href=\"https://www.zdnet.com/article/google-removes-chrome-apps-from-chrome-web-store/\" rel=\"noopener noreferrer\" target=\"_blank\">Google dumped Chrome apps from the Chrome Web Store</a> in favor of building PWAs that can be installed on the desktop. HTTPS is a requirement for the permission workflows, new features, and updated APIs that the company is using to build its future products.</p>\n<p>It&#8217;s easy to see how HTTPS is critical for e-commerce, banking, and other sites that collect highly sensitive data from users, but many wonder if it is necessary for simple blogs and content websites. Google contends that <a href=\"https://developers.google.com/web/fundamentals/security/encrypt-in-transit/why-https\" rel=\"noopener noreferrer\" target=\"_blank\">all websites need HTTPS protection</a> to prevent intruders from injecting ads or exploits.</p>\n<p>Few would dispute the value of HTTPS but critics are wary of Google establishing itself as the arbiter of safe browsing on the web.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">My blog, <a href=\"https://t.co/gPQ9VPYOLB\">https://t.co/gPQ9VPYOLB</a>, is not “not secure.” It uses the standard protocol of the web, HTTP.  It will not hurt you.</p>\n<p>&mdash; scripting.com (@davewiner) <a href=\"https://twitter.com/davewiner/status/1021713459380187136?ref_src=twsrc%5Etfw\">July 24, 2018</a></p></blockquote>\n<p></p>\n<p>For the moment, Winer seems to be committed to using HTTP to deliver his content. In Google&#8217;s feverish quest to push the entire web to adopt HTTPS, sites that are holding fast to HTTP on principle now appear as a sort of protest.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/Screen-Shot-2018-07-24-at-5.49.33-PM.png?ssl=1\"><img /></a></p>\n<p>&#8220;This blog and all my other sites use HTTP,&#8221; Winer said. &#8220;I don&#8217;t see that changing. I expect this will make writing for the web more of a chore. That&#8217;s life I guess. I don&#8217;t want Google to be able to mold the web to its needs. I never signed on to being a Google developer, and never would. Basic rule: Google is a guest on the web, as we all are, and guests don&#8217;t make the rules.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Jul 2018 23:07:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Mark Jaquith: Page Links To v3.0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"http://markjaquith.wordpress.com/?p=5675\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://markjaquith.wordpress.com/2018/07/23/page-links-to/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2482:\"<p>Today I pushed an update to my redirect and repointing plugin, <a href=\"https://wordpress.org/plugins/page-links-to/\">Page Links To</a>. Tomorrow, this plugin will have been in the WordPress.org Plugin Directory for 13 years (it was the 339th plugin in the WordPress plugin repository; there are now over 75,000!).</p>\n<p>To celebrate its transition to a teenager, I&#8217;ve added some new features and UI enhancements.</p>\n<p>Last month, I received survey responses from over 800 Page Links To users and learned a lot about how it&#8217;s being put to work. One of the most interesting things I found was how many people are using it for URL redirects. For example, they might have a really long URL on their own site or someone else&#8217;s site that they want to be nice. <em>example.com/summer-sale</em> instead of <em>example.com/store/specials.aspx?season=summer&amp;_utm_source=internal</em>. But in order to create these redirects, you have to go through the cluttered and sometimes slow post creation screen. All you really need to create a redirect is a title, a destination URL, and a local short URL.</p>\n<p>You&#8217;ll now find a menu item &#8220;Add Page Link&#8221; that will allow you to quickly add a redirected Page without having to wait for the entire WordPress post editing interface to load. It&#8217;s <em>super</em> fast, and it doesn&#8217;t redirect you away from the screen you&#8217;re on.</p>\n<p><img /></p>\n<p>Since short URLs are better for sharing (and remembering), the UI will give you a little push to shorten the URL if the one generated from your title is too long. From there, you can Save Draft or Publish.</p>\n<img />Hey, that URL is getting a bit long\n<img />Custom slug, for a better short URL\n<p>Additionally, this release includes a &#8220;link&#8221; indicator on post and page list screens, so you can easily see what items have been re-pointed with Page Links To. When hovered, the link icon will reveal the destination URL for a quick view.</p>\n<img />The &#8220;link&#8221; icon means that this item has been pointed elsewhere.\n<p>If you want to grab the &#8220;local&#8221; short URL (which will be redirected to your chosen URL when someone visits it), just click &#8220;Copy Short URL&#8221; from the actions, and it&#8217;ll be in your clipboard.</p>\n<img />Hover the &#8220;link&#8221; icon to see where it&#8217;s pointing.\n<p>That&#8217;s it for version 3.0, but I&#8217;ll have more to announce soon — stay tuned!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Jul 2018 22:02:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mark Jaquith\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WPTavern: Thoughts From Two Founders Who Recently Sold Their WordPress Businesses\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82531\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wptavern.com/thoughts-from-two-founders-who-recently-sold-their-wordpress-businesses\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2299:\"<p>Last month, <a href=\"https://wptavern.com/wp-engine-acquires-studiopress\">WP Engine acquired StudioPress</a>. Brian Gardner, founder of StudioPress, recently <a href=\"https://authentik.com/sell/\">shared his thoughts</a> on why he didn&#8217;t want to sell the business, but did. </p>\n\n<blockquote class=\"wp-block-quote\"><p>Making a decision that not only affects your livelihood, the livelihood of your partners and employees, and the livelihood of an entire community isn’t for the faint of heart. It certainly wasn’t a responsibility I took lightly and spent quite a bit of time wrestling with.</p><p>The fact of the matter is this: When you make a decision that affects thousands of people, you <em>have</em> to wrestle with it. And then wrestle with it some more.</p><cite>Brian Gardner</cite></blockquote>\n\n<p>I appreciate Gardner&#8217;s down-to-earth perspective on how he reached the decision to sell. </p>\n\n<p>Ryan Sullivan, founder of WP Site Care, <a href=\"https://www.wpsitecare.com/wp-site-care-joins-forces-with-southern-web/\">sold his WordPress maintenance and support business</a> to Southern Web. On his personal site, <a href=\"https://www.ryandsullivan.com/changes/\">Sullivan describes</a> what it has been like to run a business the last seven years and drifting away from the reason he created the business in the first place. </p>\n\n<blockquote class=\"wp-block-quote\"><p>As the team grew, I slowly moved further and further away from the reason I started my business in the first place. It’s a trend that’s talked about extensively in the E-Myth. </p><p>People start a business because they love what they do, but then the growth of the business, management of people, and demands of administrivia become too much, and the person who started the business finds themselves in a totally foreign land with no roadmap for how to get back to the thing they once loved.</p><cite>Ryan Sullivan</cite></blockquote>\n\n<p>Merging with Southern Web allows Sullivan to get back to what he enjoys doing most, helping people and businesses with their sites. Sullivan also shared a great piece of advice, &#8220;Ask for help before you think you need it.&#8221;</p>\n\n<p>Both articles are great reads and provide insight into the tough decisions founders inevitably have to make. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Jul 2018 21:08:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"WPTavern: WP-CLI Hack Day Is A Success\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=82458\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wptavern.com/wp-cli-hack-day-is-a-success\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2239:\"<p>Alain Schlesser hosted the first <a href=\"https://wptavern.com/wp-cli-hack-day-friday-july-20th\">WP-CLI Hack Day</a> last Friday and by all accounts, it was a smashing success.</p>\n\n<p>The main goal was to merge 20 pull requests during the event but due to technical issues with <a href=\"https://travis-ci.org/\">Travis CI</a>, only 12 were merged. Travis CI is open source software used to perform automated testing. </p>\n\n<p>In addition to the 12 pull requests that were merged, 13 more were submitted. The last two hours of the event featured a video call where contributors could talk through issues or receive help on submitting pull requests. </p>\n\n<p>&#8220;We peaked at 13 participants to that video chat,&#8221; Schlesser said. &#8220;It allowed for people to make a more personal connection, which added another dimension to the act of contributing.&#8221;</p>\n\n<p>Despite not reaching the goal, Schlesser is pleased with how it turned out.</p>\n\n<p>&#8220;The event was also an experiment, to see whether a more direct, interactive form of contribution would attract more contributors,&#8221; he said. &#8220;I think it did succeed in doing so, and I think it was a positive experience for the participants.&#8221;</p>\n\n<p><a href=\"https://make.wordpress.org/cli/2018/07/21/wp-cli-hack-day-results/\">Feedback from participants</a> is positive and folks enjoyed having Schlesser available to answer questions and walk them through how to set up an environment for testing. </p>\n\n<blockquote class=\"wp-block-quote\"><p>Though we fell a little short of that goal, it was heartening to be a part of the communal experience, learn how to write my first Behat test (something that has been on my to-do list for a long time!), and get immediate feedback on my submitted pull request. And, of course, getting that PR merged was a thrill as well, as I can now say that I’ve contributed back to the project.</p><cite><a href=\"https://make.wordpress.org/cli/2018/07/21/wp-cli-hack-day-results/#comment-133\">Jeremy Ward</a></cite></blockquote>\n\n<p>You can find links to all of the merged and submitted pull requests on the <a href=\"https://make.wordpress.org/cli/2018/07/21/wp-cli-hack-day-results/\">WP-CLI Hack Day summary page</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Jul 2018 19:43:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 19 Aug 2018 20:59:59 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Sun, 19 Aug 2018 20:45:30 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20130911000210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1162, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1534755610', 'no'),
(1163, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1534712410', 'no'),
(1164, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1534755610', 'no'),
(1165, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ru.wordpress.org/news/2018/07/wordcamp-moscow2018/\'>Конференция WordCamp Москва 2018</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/my-gutenberg-experience-part-three\'>WPTavern: My Gutenberg Experience: Part Three</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/gutenberg-3-6-adds-new-icons-for-all-core-blocks\'>WPTavern: Gutenberg 3.6 Adds New Icons for All Core Blocks</a></li><li><a class=\'rsswidget\' href=\'https://odd.blog/2018/08/17/wp-super-cache-1-6-3/\'>Donncha: WP Super Cache 1.6.3</a></li></ul></div>', 'no'),
(1171, '_transient_timeout_wc_shipping_method_count_0_1534670181', '1537307557', 'no'),
(1172, '_transient_wc_shipping_method_count_0_1534670181', '2', 'no'),
(1178, '_site_transient_timeout_available_translations', '1534729993', 'no'),
(1179, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-18 03:20:46\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-23 07:27:43\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-26 07:51:00\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-25 04:47:06\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 08:58:57\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-27 10:53:54\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-07-06 08:46:24\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 00:30:25\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:47:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-13 13:32:08\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:48:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-08 13:56:55\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-24 23:12:03\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-24 21:31:15\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-30 17:20:26\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-31 14:47:16\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-16 14:33:05\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-01 16:09:29\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-25 19:18:20\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-26 13:11:18\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 20:43:09\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-18 01:54:29\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-09 15:53:36\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 12:18:54\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-18 07:44:40\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-06 16:13:32\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-25 14:30:50\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-02-14 06:16:04\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.7/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-15 08:49:46\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-14 10:04:37\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 10:29:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-07 11:57:55\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-01 00:55:38\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-08 06:01:48\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 22:24:38\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-04 12:57:46\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 09:42:27\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 08:05:19\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 07:24:43\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-29 11:28:05\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-06 12:43:59\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-15 06:55:24\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-13 11:47:22\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-12 12:14:24\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-24 16:20:30\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-09 13:28:31\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-19 09:09:45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 12:07:46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-26 09:20:25\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-24 22:24:39\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 20:59:54\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-24 18:15:31\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 21:09:54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-05 13:55:11\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-06-20 11:37:47\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 10:37:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 15:34:53\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no'),
(1181, '_transient_is_multi_author', '0', 'yes'),
(1182, '_transient_timeout_wc_product_loop3d7d1534719989', '1537312119', 'no'),
(1183, '_transient_wc_product_loop3d7d1534719989', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:74;i:1;i:60;i:2;i:35;i:3;i:54;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(1186, '_transient_timeout_jetpack_idc_allowed', '1534724783', 'no'),
(1187, '_transient_jetpack_idc_allowed', '1', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1534669838:1'),
(4, 10, '_wc_review_count', '0'),
(5, 10, '_wc_rating_count', 'a:0:{}'),
(6, 10, '_wc_average_rating', '0'),
(7, 11, '_wc_review_count', '0'),
(8, 11, '_wc_rating_count', 'a:0:{}'),
(9, 11, '_wc_average_rating', '0'),
(10, 11, '_edit_last', '1'),
(11, 11, '_edit_lock', '1534719846:1'),
(12, 11, '_sku', '1'),
(15, 11, '_sale_price_dates_from', ''),
(16, 11, '_sale_price_dates_to', ''),
(17, 11, 'total_sales', '0'),
(18, 11, '_tax_status', 'taxable'),
(19, 11, '_tax_class', ''),
(20, 11, '_manage_stock', 'no'),
(21, 11, '_backorders', 'no'),
(22, 11, '_sold_individually', 'no'),
(23, 11, '_weight', ''),
(24, 11, '_length', ''),
(25, 11, '_width', ''),
(26, 11, '_height', ''),
(27, 11, '_upsell_ids', 'a:0:{}'),
(28, 11, '_crosssell_ids', 'a:0:{}'),
(29, 11, '_purchase_note', ''),
(30, 11, '_default_attributes', 'a:0:{}'),
(31, 11, '_virtual', 'no'),
(32, 11, '_downloadable', 'no'),
(33, 11, '_product_image_gallery', ''),
(34, 11, '_download_limit', '-1'),
(35, 11, '_download_expiry', '-1'),
(36, 11, '_stock', NULL),
(37, 11, '_stock_status', 'instock'),
(38, 11, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(39, 11, '_product_version', '3.4.4'),
(40, 12, '_wp_attached_file', '2018/08/black.jpg'),
(41, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2018/08/black.jpg\";s:5:\"sizes\";a:23:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"black-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"black-175x300.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"black-597x1024.jpg\";s:5:\"width\";i:597;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:18:\"black-700x1200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"black-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"black-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"black-350x600.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"black-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"black-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"black-350x600.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"black-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:17:\"black-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:17:\"black-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:17:\"black-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x280\";a:4:{s:4:\"file\";s:17:\"black-700x280.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x248\";a:4:{s:4:\"file\";s:17:\"black-620x248.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x160\";a:4:{s:4:\"file\";s:17:\"black-400x160.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x190\";a:4:{s:4:\"file\";s:17:\"black-700x190.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x168\";a:4:{s:4:\"file\";s:17:\"black-620x168.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x109\";a:4:{s:4:\"file\";s:17:\"black-400x109.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x147\";a:4:{s:4:\"file\";s:17:\"black-700x147.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x130\";a:4:{s:4:\"file\";s:17:\"black-620x130.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-400x84\";a:4:{s:4:\"file\";s:16:\"black-400x84.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 13, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю: название: Hermes; цена: 1500 р; характеристики: Украина, цвет – черный, ткань – плащевка, утеплитель – силикон 100; плюсы: качественные, стильные; минусы: короткие.'),
(43, 13, '_sku', ''),
(44, 13, '_regular_price', '345'),
(45, 13, '_sale_price', '225'),
(46, 13, '_sale_price_dates_from', ''),
(47, 13, '_sale_price_dates_to', ''),
(48, 13, 'total_sales', '0'),
(49, 13, '_tax_status', 'taxable'),
(50, 13, '_tax_class', 'parent'),
(51, 13, '_manage_stock', 'no'),
(52, 13, '_backorders', 'no'),
(53, 13, '_sold_individually', 'no'),
(54, 13, '_weight', ''),
(55, 13, '_length', ''),
(56, 13, '_width', ''),
(57, 13, '_height', ''),
(58, 13, '_upsell_ids', 'a:0:{}'),
(59, 13, '_crosssell_ids', 'a:0:{}'),
(60, 13, '_purchase_note', ''),
(61, 13, '_default_attributes', 'a:0:{}'),
(62, 13, '_virtual', 'no'),
(63, 13, '_downloadable', 'no'),
(64, 13, '_product_image_gallery', ''),
(65, 13, '_download_limit', '-1'),
(66, 13, '_download_expiry', '-1'),
(67, 13, '_stock', NULL),
(68, 13, '_stock_status', 'instock'),
(69, 13, '_wc_average_rating', '0'),
(70, 13, '_wc_rating_count', 'a:0:{}'),
(71, 13, '_wc_review_count', '0'),
(72, 13, '_downloadable_files', 'a:0:{}'),
(73, 13, 'attribute_pa_size', 'x'),
(74, 13, 'attribute_pa_color', 'black'),
(75, 13, '_price', '225'),
(76, 13, '_product_version', '3.4.4'),
(79, 11, '_thumbnail_id', '12'),
(89, 14, '_wc_review_count', '0'),
(90, 14, '_wc_rating_count', 'a:0:{}'),
(91, 14, '_wc_average_rating', '0'),
(92, 15, '_wc_review_count', '0'),
(93, 15, '_wc_rating_count', 'a:0:{}'),
(94, 15, '_wc_average_rating', '0'),
(95, 15, '_edit_last', '1'),
(96, 15, '_edit_lock', '1534688385:1'),
(97, 15, '_sku', ''),
(100, 15, '_sale_price_dates_from', ''),
(101, 15, '_sale_price_dates_to', ''),
(102, 15, 'total_sales', '0'),
(103, 15, '_tax_status', 'taxable'),
(104, 15, '_tax_class', ''),
(105, 15, '_manage_stock', 'no'),
(106, 15, '_backorders', 'no'),
(107, 15, '_sold_individually', 'no'),
(108, 15, '_weight', ''),
(109, 15, '_length', ''),
(110, 15, '_width', ''),
(111, 15, '_height', ''),
(112, 15, '_upsell_ids', 'a:0:{}'),
(113, 15, '_crosssell_ids', 'a:0:{}'),
(114, 15, '_purchase_note', ''),
(115, 15, '_default_attributes', 'a:0:{}'),
(116, 15, '_virtual', 'no'),
(117, 15, '_downloadable', 'no'),
(118, 15, '_product_image_gallery', '12,34'),
(119, 15, '_download_limit', '-1'),
(120, 15, '_download_expiry', '-1'),
(121, 15, '_stock', NULL),
(122, 15, '_stock_status', 'instock'),
(123, 15, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(124, 15, '_product_version', '3.4.4'),
(126, 16, '_wp_attached_file', '2018/08/white.jpg'),
(127, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:183;s:6:\"height\";i:275;s:4:\"file\";s:17:\"2018/08/white.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"white-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"white-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"white-183x250.jpg\";s:5:\"width\";i:183;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"white-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"white-183x250.jpg\";s:5:\"width\";i:183;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"white-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 17, '_variation_description', ''),
(129, 17, '_sku', '2'),
(130, 17, '_regular_price', '990'),
(131, 17, '_sale_price', '789'),
(132, 17, '_sale_price_dates_from', ''),
(133, 17, '_sale_price_dates_to', ''),
(134, 17, 'total_sales', '0'),
(135, 17, '_tax_status', 'taxable'),
(136, 17, '_tax_class', 'parent'),
(137, 17, '_manage_stock', 'no'),
(138, 17, '_backorders', 'no'),
(139, 17, '_sold_individually', 'no'),
(140, 17, '_weight', ''),
(141, 17, '_length', ''),
(142, 17, '_width', ''),
(143, 17, '_height', ''),
(144, 17, '_upsell_ids', 'a:0:{}'),
(145, 17, '_crosssell_ids', 'a:0:{}'),
(146, 17, '_purchase_note', ''),
(147, 17, '_default_attributes', 'a:0:{}'),
(148, 17, '_virtual', 'no'),
(149, 17, '_downloadable', 'no'),
(150, 17, '_product_image_gallery', ''),
(151, 17, '_download_limit', '-1'),
(152, 17, '_download_expiry', '-1'),
(153, 17, '_stock', NULL),
(154, 17, '_stock_status', 'instock'),
(155, 17, '_wc_average_rating', '0'),
(156, 17, '_wc_rating_count', 'a:0:{}'),
(157, 17, '_wc_review_count', '0'),
(158, 17, '_downloadable_files', 'a:0:{}'),
(159, 17, '_price', '789'),
(160, 17, '_product_version', '3.4.4'),
(163, 15, '_price', '789'),
(164, 15, '_regular_price', ''),
(165, 15, '_sale_price', ''),
(167, 18, '_wc_review_count', '0'),
(168, 18, '_wc_rating_count', 'a:0:{}'),
(169, 18, '_wc_average_rating', '0'),
(170, 18, '_edit_last', '1'),
(171, 18, '_edit_lock', '1534677863:1'),
(172, 18, '_sku', ''),
(175, 18, '_sale_price_dates_from', ''),
(176, 18, '_sale_price_dates_to', ''),
(177, 18, 'total_sales', '0'),
(178, 18, '_tax_status', 'taxable'),
(179, 18, '_tax_class', ''),
(180, 18, '_manage_stock', 'no'),
(181, 18, '_backorders', 'no'),
(182, 18, '_sold_individually', 'no'),
(183, 18, '_weight', ''),
(184, 18, '_length', ''),
(185, 18, '_width', ''),
(186, 18, '_height', ''),
(187, 18, '_upsell_ids', 'a:0:{}'),
(188, 18, '_crosssell_ids', 'a:0:{}'),
(189, 18, '_purchase_note', ''),
(190, 18, '_default_attributes', 'a:0:{}'),
(191, 18, '_virtual', 'no'),
(192, 18, '_downloadable', 'no'),
(193, 18, '_product_image_gallery', ''),
(194, 18, '_download_limit', '-1'),
(195, 18, '_download_expiry', '-1'),
(196, 18, '_stock', NULL),
(197, 18, '_stock_status', 'instock'),
(198, 18, '_product_attributes', 'a:2:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(199, 18, '_product_version', '3.4.4'),
(201, 19, '_wp_attached_file', '2018/08/red.jpg'),
(202, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:15:\"2018/08/red.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"red-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"red-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"red-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"red-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:16:\"red-800x1200.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"red-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"red-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"red-350x525.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"red-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"red-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"red-350x525.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"red-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 18, '_thumbnail_id', '19'),
(204, 20, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(205, 20, '_sku', '3'),
(206, 20, '_regular_price', '433'),
(207, 20, '_sale_price', ''),
(208, 20, '_sale_price_dates_from', ''),
(209, 20, '_sale_price_dates_to', ''),
(210, 20, 'total_sales', '0'),
(211, 20, '_tax_status', 'taxable'),
(212, 20, '_tax_class', 'parent'),
(213, 20, '_manage_stock', 'no'),
(214, 20, '_backorders', 'no'),
(215, 20, '_sold_individually', 'no'),
(216, 20, '_weight', ''),
(217, 20, '_length', ''),
(218, 20, '_width', ''),
(219, 20, '_height', ''),
(220, 20, '_upsell_ids', 'a:0:{}'),
(221, 20, '_crosssell_ids', 'a:0:{}'),
(222, 20, '_purchase_note', ''),
(223, 20, '_default_attributes', 'a:0:{}'),
(224, 20, '_virtual', 'no'),
(225, 20, '_downloadable', 'no'),
(226, 20, '_product_image_gallery', ''),
(227, 20, '_download_limit', '-1'),
(228, 20, '_download_expiry', '-1'),
(229, 20, '_stock', NULL),
(230, 20, '_stock_status', 'instock'),
(231, 20, '_wc_average_rating', '0'),
(232, 20, '_wc_rating_count', 'a:0:{}'),
(233, 20, '_wc_review_count', '0'),
(234, 20, '_downloadable_files', 'a:0:{}'),
(235, 20, '_price', '433'),
(236, 20, '_product_version', '3.4.4'),
(247, 18, '_price', '433'),
(248, 18, '_regular_price', ''),
(249, 18, '_sale_price', ''),
(250, 21, '_wc_review_count', '0'),
(251, 21, '_wc_rating_count', 'a:0:{}'),
(252, 21, '_wc_average_rating', '0'),
(253, 21, '_edit_last', '1'),
(254, 21, '_edit_lock', '1534688326:1'),
(255, 21, '_sku', ''),
(258, 21, '_sale_price_dates_from', ''),
(259, 21, '_sale_price_dates_to', ''),
(260, 21, 'total_sales', '0'),
(261, 21, '_tax_status', 'taxable'),
(262, 21, '_tax_class', ''),
(263, 21, '_manage_stock', 'no'),
(264, 21, '_backorders', 'no'),
(265, 21, '_sold_individually', 'no'),
(266, 21, '_weight', ''),
(267, 21, '_length', ''),
(268, 21, '_width', ''),
(269, 21, '_height', ''),
(270, 21, '_upsell_ids', 'a:0:{}'),
(271, 21, '_crosssell_ids', 'a:0:{}'),
(272, 21, '_purchase_note', ''),
(273, 21, '_default_attributes', 'a:0:{}'),
(274, 21, '_virtual', 'no'),
(275, 21, '_downloadable', 'no'),
(276, 21, '_product_image_gallery', '34,16,12,19'),
(277, 21, '_download_limit', '-1'),
(278, 21, '_download_expiry', '-1'),
(279, 21, '_stock', NULL),
(280, 21, '_stock_status', 'instock'),
(281, 21, '_product_version', '3.4.4'),
(282, 21, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(283, 22, '_variation_description', ''),
(284, 22, '_sku', '4'),
(285, 22, '_regular_price', '400'),
(286, 22, '_sale_price', '222'),
(287, 22, '_sale_price_dates_from', ''),
(288, 22, '_sale_price_dates_to', ''),
(289, 22, 'total_sales', '0'),
(290, 22, '_tax_status', 'taxable'),
(291, 22, '_tax_class', 'parent'),
(292, 22, '_manage_stock', 'no'),
(293, 22, '_backorders', 'no'),
(294, 22, '_sold_individually', 'no'),
(295, 22, '_weight', ''),
(296, 22, '_length', ''),
(297, 22, '_width', ''),
(298, 22, '_height', ''),
(299, 22, '_upsell_ids', 'a:0:{}'),
(300, 22, '_crosssell_ids', 'a:0:{}'),
(301, 22, '_purchase_note', ''),
(302, 22, '_default_attributes', 'a:0:{}'),
(303, 22, '_virtual', 'no'),
(304, 22, '_downloadable', 'no'),
(305, 22, '_product_image_gallery', ''),
(306, 22, '_download_limit', '-1'),
(307, 22, '_download_expiry', '-1'),
(308, 22, '_stock', NULL),
(309, 22, '_stock_status', 'instock'),
(310, 22, '_wc_average_rating', '0'),
(311, 22, '_wc_rating_count', 'a:0:{}'),
(312, 22, '_wc_review_count', '0'),
(313, 22, '_downloadable_files', 'a:0:{}'),
(314, 22, 'attribute_pa_size', 'x'),
(315, 22, 'attribute_pa_color', 'black'),
(316, 22, '_price', '222'),
(317, 22, '_product_version', '3.4.4'),
(318, 23, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:'),
(319, 23, '_sku', '5'),
(320, 23, '_regular_price', '322'),
(321, 23, '_sale_price', ''),
(322, 23, '_sale_price_dates_from', ''),
(323, 23, '_sale_price_dates_to', ''),
(324, 23, 'total_sales', '0'),
(325, 23, '_tax_status', 'taxable'),
(326, 23, '_tax_class', 'parent'),
(327, 23, '_manage_stock', 'no'),
(328, 23, '_backorders', 'no'),
(329, 23, '_sold_individually', 'no'),
(330, 23, '_weight', ''),
(331, 23, '_length', ''),
(332, 23, '_width', ''),
(333, 23, '_height', ''),
(334, 23, '_upsell_ids', 'a:0:{}'),
(335, 23, '_crosssell_ids', 'a:0:{}'),
(336, 23, '_purchase_note', ''),
(337, 23, '_default_attributes', 'a:0:{}'),
(338, 23, '_virtual', 'no'),
(339, 23, '_downloadable', 'no'),
(340, 23, '_product_image_gallery', ''),
(341, 23, '_download_limit', '-1'),
(342, 23, '_download_expiry', '-1'),
(343, 23, '_stock', NULL),
(344, 23, '_stock_status', 'instock'),
(345, 23, '_wc_average_rating', '0'),
(346, 23, '_wc_rating_count', 'a:0:{}'),
(347, 23, '_wc_review_count', '0'),
(348, 23, '_downloadable_files', 'a:0:{}'),
(349, 23, 'attribute_pa_size', 'xl'),
(350, 23, 'attribute_pa_color', 'black'),
(351, 23, '_price', '322'),
(352, 23, '_product_version', '3.4.4'),
(353, 24, '_variation_description', ''),
(354, 24, '_sku', '6'),
(355, 24, '_regular_price', '233'),
(356, 24, '_sale_price', ''),
(357, 24, '_sale_price_dates_from', ''),
(358, 24, '_sale_price_dates_to', ''),
(359, 24, 'total_sales', '0'),
(360, 24, '_tax_status', 'taxable'),
(361, 24, '_tax_class', 'parent'),
(362, 24, '_manage_stock', 'no'),
(363, 24, '_backorders', 'no'),
(364, 24, '_sold_individually', 'no'),
(365, 24, '_weight', ''),
(366, 24, '_length', ''),
(367, 24, '_width', ''),
(368, 24, '_height', ''),
(369, 24, '_upsell_ids', 'a:0:{}'),
(370, 24, '_crosssell_ids', 'a:0:{}'),
(371, 24, '_purchase_note', ''),
(372, 24, '_default_attributes', 'a:0:{}'),
(373, 24, '_virtual', 'no'),
(374, 24, '_downloadable', 'no'),
(375, 24, '_product_image_gallery', ''),
(376, 24, '_download_limit', '-1'),
(377, 24, '_download_expiry', '-1'),
(378, 24, '_stock', NULL),
(379, 24, '_stock_status', 'instock'),
(380, 24, '_wc_average_rating', '0'),
(381, 24, '_wc_rating_count', 'a:0:{}'),
(382, 24, '_wc_review_count', '0'),
(383, 24, '_downloadable_files', 'a:0:{}'),
(384, 24, 'attribute_pa_size', 'xxl'),
(385, 24, 'attribute_pa_color', 'black'),
(386, 24, '_price', '233'),
(387, 24, '_product_version', '3.4.4'),
(388, 25, '_variation_description', ''),
(389, 25, '_sku', '7'),
(390, 25, '_regular_price', '233'),
(391, 25, '_sale_price', ''),
(392, 25, '_sale_price_dates_from', ''),
(393, 25, '_sale_price_dates_to', ''),
(394, 25, 'total_sales', '0'),
(395, 25, '_tax_status', 'taxable'),
(396, 25, '_tax_class', 'parent'),
(397, 25, '_manage_stock', 'no'),
(398, 25, '_backorders', 'no'),
(399, 25, '_sold_individually', 'no'),
(400, 25, '_weight', ''),
(401, 25, '_length', ''),
(402, 25, '_width', ''),
(403, 25, '_height', ''),
(404, 25, '_upsell_ids', 'a:0:{}'),
(405, 25, '_crosssell_ids', 'a:0:{}'),
(406, 25, '_purchase_note', ''),
(407, 25, '_default_attributes', 'a:0:{}'),
(408, 25, '_virtual', 'no'),
(409, 25, '_downloadable', 'no'),
(410, 25, '_product_image_gallery', ''),
(411, 25, '_download_limit', '-1'),
(412, 25, '_download_expiry', '-1'),
(413, 25, '_stock', NULL),
(414, 25, '_stock_status', 'instock'),
(415, 25, '_wc_average_rating', '0'),
(416, 25, '_wc_rating_count', 'a:0:{}'),
(417, 25, '_wc_review_count', '0'),
(418, 25, '_downloadable_files', 'a:0:{}'),
(419, 25, 'attribute_pa_size', 'x'),
(420, 25, 'attribute_pa_color', 'orange'),
(421, 25, '_price', '233'),
(422, 25, '_product_version', '3.4.4'),
(423, 26, '_variation_description', ''),
(424, 26, '_sku', '8'),
(425, 26, '_regular_price', '256'),
(426, 26, '_sale_price', ''),
(427, 26, '_sale_price_dates_from', ''),
(428, 26, '_sale_price_dates_to', ''),
(429, 26, 'total_sales', '0'),
(430, 26, '_tax_status', 'taxable'),
(431, 26, '_tax_class', 'parent'),
(432, 26, '_manage_stock', 'no'),
(433, 26, '_backorders', 'no'),
(434, 26, '_sold_individually', 'no'),
(435, 26, '_weight', ''),
(436, 26, '_length', ''),
(437, 26, '_width', ''),
(438, 26, '_height', ''),
(439, 26, '_upsell_ids', 'a:0:{}'),
(440, 26, '_crosssell_ids', 'a:0:{}'),
(441, 26, '_purchase_note', ''),
(442, 26, '_default_attributes', 'a:0:{}'),
(443, 26, '_virtual', 'no'),
(444, 26, '_downloadable', 'no'),
(445, 26, '_product_image_gallery', ''),
(446, 26, '_download_limit', '-1'),
(447, 26, '_download_expiry', '-1'),
(448, 26, '_stock', NULL),
(449, 26, '_stock_status', 'instock'),
(450, 26, '_wc_average_rating', '0'),
(451, 26, '_wc_rating_count', 'a:0:{}'),
(452, 26, '_wc_review_count', '0'),
(453, 26, '_downloadable_files', 'a:0:{}'),
(454, 26, 'attribute_pa_size', 'xl'),
(455, 26, 'attribute_pa_color', 'orange'),
(456, 26, '_price', '256'),
(457, 26, '_product_version', '3.4.4'),
(458, 27, '_variation_description', ''),
(459, 27, '_sku', '9'),
(460, 27, '_regular_price', '276'),
(461, 27, '_sale_price', ''),
(462, 27, '_sale_price_dates_from', ''),
(463, 27, '_sale_price_dates_to', ''),
(464, 27, 'total_sales', '0'),
(465, 27, '_tax_status', 'taxable'),
(466, 27, '_tax_class', 'parent'),
(467, 27, '_manage_stock', 'no'),
(468, 27, '_backorders', 'no'),
(469, 27, '_sold_individually', 'no'),
(470, 27, '_weight', ''),
(471, 27, '_length', ''),
(472, 27, '_width', ''),
(473, 27, '_height', ''),
(474, 27, '_upsell_ids', 'a:0:{}'),
(475, 27, '_crosssell_ids', 'a:0:{}'),
(476, 27, '_purchase_note', ''),
(477, 27, '_default_attributes', 'a:0:{}'),
(478, 27, '_virtual', 'no'),
(479, 27, '_downloadable', 'no'),
(480, 27, '_product_image_gallery', ''),
(481, 27, '_download_limit', '-1'),
(482, 27, '_download_expiry', '-1'),
(483, 27, '_stock', NULL),
(484, 27, '_stock_status', 'instock'),
(485, 27, '_wc_average_rating', '0'),
(486, 27, '_wc_rating_count', 'a:0:{}'),
(487, 27, '_wc_review_count', '0'),
(488, 27, '_downloadable_files', 'a:0:{}'),
(489, 27, 'attribute_pa_size', 'xxl'),
(490, 27, 'attribute_pa_color', 'orange'),
(491, 27, '_price', '276'),
(492, 27, '_product_version', '3.4.4'),
(493, 28, '_variation_description', ''),
(494, 28, '_sku', '10'),
(495, 28, '_regular_price', '278'),
(496, 28, '_sale_price', ''),
(497, 28, '_sale_price_dates_from', ''),
(498, 28, '_sale_price_dates_to', ''),
(499, 28, 'total_sales', '0'),
(500, 28, '_tax_status', 'taxable'),
(501, 28, '_tax_class', 'parent'),
(502, 28, '_manage_stock', 'no'),
(503, 28, '_backorders', 'no'),
(504, 28, '_sold_individually', 'no'),
(505, 28, '_weight', ''),
(506, 28, '_length', ''),
(507, 28, '_width', ''),
(508, 28, '_height', ''),
(509, 28, '_upsell_ids', 'a:0:{}'),
(510, 28, '_crosssell_ids', 'a:0:{}'),
(511, 28, '_purchase_note', ''),
(512, 28, '_default_attributes', 'a:0:{}'),
(513, 28, '_virtual', 'no'),
(514, 28, '_downloadable', 'no'),
(515, 28, '_product_image_gallery', ''),
(516, 28, '_download_limit', '-1'),
(517, 28, '_download_expiry', '-1'),
(518, 28, '_stock', NULL),
(519, 28, '_stock_status', 'instock'),
(520, 28, '_wc_average_rating', '0'),
(521, 28, '_wc_rating_count', 'a:0:{}'),
(522, 28, '_wc_review_count', '0'),
(523, 28, '_downloadable_files', 'a:0:{}'),
(524, 28, 'attribute_pa_size', 'x'),
(525, 28, 'attribute_pa_color', 'red'),
(526, 28, '_price', '278'),
(527, 28, '_product_version', '3.4.4'),
(528, 29, '_variation_description', ''),
(529, 29, '_sku', '11'),
(530, 29, '_regular_price', '300'),
(531, 29, '_sale_price', ''),
(532, 29, '_sale_price_dates_from', ''),
(533, 29, '_sale_price_dates_to', ''),
(534, 29, 'total_sales', '0'),
(535, 29, '_tax_status', 'taxable'),
(536, 29, '_tax_class', 'parent'),
(537, 29, '_manage_stock', 'no'),
(538, 29, '_backorders', 'no'),
(539, 29, '_sold_individually', 'no'),
(540, 29, '_weight', ''),
(541, 29, '_length', ''),
(542, 29, '_width', ''),
(543, 29, '_height', ''),
(544, 29, '_upsell_ids', 'a:0:{}'),
(545, 29, '_crosssell_ids', 'a:0:{}'),
(546, 29, '_purchase_note', ''),
(547, 29, '_default_attributes', 'a:0:{}'),
(548, 29, '_virtual', 'no'),
(549, 29, '_downloadable', 'no'),
(550, 29, '_product_image_gallery', ''),
(551, 29, '_download_limit', '-1'),
(552, 29, '_download_expiry', '-1'),
(553, 29, '_stock', NULL),
(554, 29, '_stock_status', 'instock'),
(555, 29, '_wc_average_rating', '0'),
(556, 29, '_wc_rating_count', 'a:0:{}'),
(557, 29, '_wc_review_count', '0'),
(558, 29, '_downloadable_files', 'a:0:{}'),
(559, 29, 'attribute_pa_size', 'xl'),
(560, 29, 'attribute_pa_color', 'red'),
(561, 29, '_price', '300'),
(562, 29, '_product_version', '3.4.4'),
(563, 30, '_variation_description', ''),
(564, 30, '_sku', '12'),
(565, 30, '_regular_price', '309'),
(566, 30, '_sale_price', ''),
(567, 30, '_sale_price_dates_from', ''),
(568, 30, '_sale_price_dates_to', ''),
(569, 30, 'total_sales', '0'),
(570, 30, '_tax_status', 'taxable'),
(571, 30, '_tax_class', 'parent'),
(572, 30, '_manage_stock', 'no'),
(573, 30, '_backorders', 'no'),
(574, 30, '_sold_individually', 'no'),
(575, 30, '_weight', ''),
(576, 30, '_length', ''),
(577, 30, '_width', ''),
(578, 30, '_height', ''),
(579, 30, '_upsell_ids', 'a:0:{}'),
(580, 30, '_crosssell_ids', 'a:0:{}'),
(581, 30, '_purchase_note', ''),
(582, 30, '_default_attributes', 'a:0:{}'),
(583, 30, '_virtual', 'no'),
(584, 30, '_downloadable', 'no'),
(585, 30, '_product_image_gallery', ''),
(586, 30, '_download_limit', '-1'),
(587, 30, '_download_expiry', '-1'),
(588, 30, '_stock', NULL),
(589, 30, '_stock_status', 'instock'),
(590, 30, '_wc_average_rating', '0'),
(591, 30, '_wc_rating_count', 'a:0:{}'),
(592, 30, '_wc_review_count', '0'),
(593, 30, '_downloadable_files', 'a:0:{}'),
(594, 30, 'attribute_pa_size', 'xxl'),
(595, 30, 'attribute_pa_color', 'red'),
(596, 30, '_price', '309'),
(597, 30, '_product_version', '3.4.4'),
(598, 31, '_variation_description', ''),
(599, 31, '_sku', '13'),
(600, 31, '_regular_price', '266'),
(601, 31, '_sale_price', ''),
(602, 31, '_sale_price_dates_from', ''),
(603, 31, '_sale_price_dates_to', ''),
(604, 31, 'total_sales', '0'),
(605, 31, '_tax_status', 'taxable'),
(606, 31, '_tax_class', 'parent'),
(607, 31, '_manage_stock', 'no'),
(608, 31, '_backorders', 'no'),
(609, 31, '_sold_individually', 'no'),
(610, 31, '_weight', ''),
(611, 31, '_length', ''),
(612, 31, '_width', ''),
(613, 31, '_height', ''),
(614, 31, '_upsell_ids', 'a:0:{}'),
(615, 31, '_crosssell_ids', 'a:0:{}'),
(616, 31, '_purchase_note', ''),
(617, 31, '_default_attributes', 'a:0:{}'),
(618, 31, '_virtual', 'no'),
(619, 31, '_downloadable', 'no'),
(620, 31, '_product_image_gallery', ''),
(621, 31, '_download_limit', '-1'),
(622, 31, '_download_expiry', '-1'),
(623, 31, '_stock', NULL),
(624, 31, '_stock_status', 'instock'),
(625, 31, '_wc_average_rating', '0'),
(626, 31, '_wc_rating_count', 'a:0:{}'),
(627, 31, '_wc_review_count', '0'),
(628, 31, '_downloadable_files', 'a:0:{}'),
(629, 31, 'attribute_pa_size', 'x'),
(630, 31, 'attribute_pa_color', 'white'),
(631, 31, '_price', '266'),
(632, 31, '_product_version', '3.4.4'),
(633, 32, '_variation_description', ''),
(634, 32, '_sku', '14'),
(635, 32, '_regular_price', '225'),
(636, 32, '_sale_price', ''),
(637, 32, '_sale_price_dates_from', ''),
(638, 32, '_sale_price_dates_to', ''),
(639, 32, 'total_sales', '0'),
(640, 32, '_tax_status', 'taxable'),
(641, 32, '_tax_class', 'parent'),
(642, 32, '_manage_stock', 'no'),
(643, 32, '_backorders', 'no'),
(644, 32, '_sold_individually', 'no'),
(645, 32, '_weight', ''),
(646, 32, '_length', ''),
(647, 32, '_width', ''),
(648, 32, '_height', ''),
(649, 32, '_upsell_ids', 'a:0:{}'),
(650, 32, '_crosssell_ids', 'a:0:{}'),
(651, 32, '_purchase_note', ''),
(652, 32, '_default_attributes', 'a:0:{}'),
(653, 32, '_virtual', 'no'),
(654, 32, '_downloadable', 'no'),
(655, 32, '_product_image_gallery', ''),
(656, 32, '_download_limit', '-1'),
(657, 32, '_download_expiry', '-1'),
(658, 32, '_stock', NULL),
(659, 32, '_stock_status', 'instock'),
(660, 32, '_wc_average_rating', '0'),
(661, 32, '_wc_rating_count', 'a:0:{}'),
(662, 32, '_wc_review_count', '0'),
(663, 32, '_downloadable_files', 'a:0:{}'),
(664, 32, 'attribute_pa_size', 'xl'),
(665, 32, 'attribute_pa_color', 'white'),
(666, 32, '_price', '225'),
(667, 32, '_product_version', '3.4.4'),
(668, 33, '_variation_description', ''),
(669, 33, '_sku', '15'),
(670, 33, '_regular_price', '222'),
(671, 33, '_sale_price', ''),
(672, 33, '_sale_price_dates_from', ''),
(673, 33, '_sale_price_dates_to', ''),
(674, 33, 'total_sales', '0'),
(675, 33, '_tax_status', 'taxable'),
(676, 33, '_tax_class', 'parent'),
(677, 33, '_manage_stock', 'no'),
(678, 33, '_backorders', 'no'),
(679, 33, '_sold_individually', 'no'),
(680, 33, '_weight', ''),
(681, 33, '_length', ''),
(682, 33, '_width', ''),
(683, 33, '_height', ''),
(684, 33, '_upsell_ids', 'a:0:{}'),
(685, 33, '_crosssell_ids', 'a:0:{}'),
(686, 33, '_purchase_note', ''),
(687, 33, '_default_attributes', 'a:0:{}'),
(688, 33, '_virtual', 'no'),
(689, 33, '_downloadable', 'no'),
(690, 33, '_product_image_gallery', ''),
(691, 33, '_download_limit', '-1'),
(692, 33, '_download_expiry', '-1'),
(693, 33, '_stock', NULL),
(694, 33, '_stock_status', 'instock'),
(695, 33, '_wc_average_rating', '0'),
(696, 33, '_wc_rating_count', 'a:0:{}'),
(697, 33, '_wc_review_count', '0'),
(698, 33, '_downloadable_files', 'a:0:{}'),
(699, 33, 'attribute_pa_size', 'xxl'),
(700, 33, 'attribute_pa_color', 'white'),
(701, 33, '_price', '222'),
(702, 33, '_product_version', '3.4.4'),
(705, 34, '_wp_attached_file', '2018/08/red2.jpg'),
(706, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:1200;s:4:\"file\";s:16:\"2018/08/red2.jpg\";s:5:\"sizes\";a:23:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"red2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"red2-175x300.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"red2-597x1024.jpg\";s:5:\"width\";i:597;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:17:\"red2-700x1200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:16:\"red2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"red2-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"red2-350x600.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"red2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:16:\"red2-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"red2-350x600.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"red2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:16:\"red2-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:16:\"red2-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:16:\"red2-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x280\";a:4:{s:4:\"file\";s:16:\"red2-700x280.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x248\";a:4:{s:4:\"file\";s:16:\"red2-620x248.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x160\";a:4:{s:4:\"file\";s:16:\"red2-400x160.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x190\";a:4:{s:4:\"file\";s:16:\"red2-700x190.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x168\";a:4:{s:4:\"file\";s:16:\"red2-620x168.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x109\";a:4:{s:4:\"file\";s:16:\"red2-400x109.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x147\";a:4:{s:4:\"file\";s:16:\"red2-700x147.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x130\";a:4:{s:4:\"file\";s:16:\"red2-620x130.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-400x84\";a:4:{s:4:\"file\";s:15:\"red2-400x84.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(719, 21, '_thumbnail_id', '34'),
(720, 35, '_wc_review_count', '0'),
(721, 35, '_wc_rating_count', 'a:0:{}'),
(722, 35, '_wc_average_rating', '0'),
(723, 35, '_edit_last', '1'),
(724, 35, '_edit_lock', '1534680214:1'),
(725, 35, '_sku', ''),
(728, 35, '_sale_price_dates_from', ''),
(729, 35, '_sale_price_dates_to', ''),
(730, 35, 'total_sales', '0'),
(731, 35, '_tax_status', 'taxable'),
(732, 35, '_tax_class', ''),
(733, 35, '_manage_stock', 'no'),
(734, 35, '_backorders', 'no'),
(735, 35, '_sold_individually', 'no'),
(736, 35, '_weight', ''),
(737, 35, '_length', ''),
(738, 35, '_width', ''),
(739, 35, '_height', ''),
(740, 35, '_upsell_ids', 'a:0:{}'),
(741, 35, '_crosssell_ids', 'a:0:{}'),
(742, 35, '_purchase_note', ''),
(743, 35, '_default_attributes', 'a:0:{}'),
(744, 35, '_virtual', 'no'),
(745, 35, '_downloadable', 'no'),
(746, 35, '_product_image_gallery', '34,12'),
(747, 35, '_download_limit', '-1'),
(748, 35, '_download_expiry', '-1'),
(749, 35, '_stock', NULL),
(750, 35, '_stock_status', 'instock'),
(751, 35, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(752, 35, '_product_version', '3.4.4'),
(799, 37, '_wc_review_count', '0'),
(800, 37, '_wc_rating_count', 'a:0:{}'),
(801, 37, '_wc_average_rating', '0'),
(1224, 50, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1225, 50, '_sku', '50'),
(1226, 50, '_regular_price', '200'),
(1227, 50, '_sale_price', ''),
(1228, 50, '_sale_price_dates_from', ''),
(1229, 50, '_sale_price_dates_to', ''),
(1230, 50, 'total_sales', '0'),
(1231, 50, '_tax_status', 'taxable'),
(1232, 50, '_tax_class', 'parent'),
(1233, 50, '_manage_stock', 'no'),
(1234, 50, '_backorders', 'no'),
(1235, 50, '_sold_individually', 'no'),
(1236, 50, '_weight', ''),
(1237, 50, '_length', ''),
(1238, 50, '_width', ''),
(1239, 50, '_height', ''),
(1240, 50, '_upsell_ids', 'a:0:{}'),
(1241, 50, '_crosssell_ids', 'a:0:{}'),
(1242, 50, '_purchase_note', ''),
(1243, 50, '_default_attributes', 'a:0:{}'),
(1244, 50, '_virtual', 'no'),
(1245, 50, '_downloadable', 'no'),
(1246, 50, '_product_image_gallery', ''),
(1247, 50, '_download_limit', '-1'),
(1248, 50, '_download_expiry', '-1'),
(1249, 50, '_stock', NULL),
(1250, 50, '_stock_status', 'instock'),
(1251, 50, '_wc_average_rating', '0'),
(1252, 50, '_wc_rating_count', 'a:0:{}'),
(1253, 50, '_wc_review_count', '0'),
(1254, 50, '_downloadable_files', 'a:0:{}'),
(1255, 50, '_price', '200'),
(1256, 50, '_product_version', '3.4.4'),
(1259, 51, '_variation_description', ''),
(1260, 51, '_sku', '51'),
(1261, 51, '_regular_price', '210'),
(1262, 51, '_sale_price', ''),
(1263, 51, '_sale_price_dates_from', ''),
(1264, 51, '_sale_price_dates_to', ''),
(1265, 51, 'total_sales', '0'),
(1266, 51, '_tax_status', 'taxable'),
(1267, 51, '_tax_class', 'parent'),
(1268, 51, '_manage_stock', 'no'),
(1269, 51, '_backorders', 'no'),
(1270, 51, '_sold_individually', 'no'),
(1271, 51, '_weight', ''),
(1272, 51, '_length', ''),
(1273, 51, '_width', ''),
(1274, 51, '_height', ''),
(1275, 51, '_upsell_ids', 'a:0:{}'),
(1276, 51, '_crosssell_ids', 'a:0:{}'),
(1277, 51, '_purchase_note', ''),
(1278, 51, '_default_attributes', 'a:0:{}'),
(1279, 51, '_virtual', 'no'),
(1280, 51, '_downloadable', 'no'),
(1281, 51, '_product_image_gallery', ''),
(1282, 51, '_download_limit', '-1'),
(1283, 51, '_download_expiry', '-1'),
(1284, 51, '_stock', NULL),
(1285, 51, '_stock_status', 'instock'),
(1286, 51, '_wc_average_rating', '0'),
(1287, 51, '_wc_rating_count', 'a:0:{}'),
(1288, 51, '_wc_review_count', '0'),
(1289, 51, '_downloadable_files', 'a:0:{}'),
(1290, 51, 'attribute_pa_color', 'red'),
(1291, 51, 'attribute_pa_size', 'xxl'),
(1292, 51, '_price', '210'),
(1293, 51, '_product_version', '3.4.4'),
(1296, 52, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1297, 52, '_sku', ''),
(1298, 52, '_regular_price', '210'),
(1299, 52, '_sale_price', '195'),
(1300, 52, '_sale_price_dates_from', ''),
(1301, 52, '_sale_price_dates_to', ''),
(1302, 52, 'total_sales', '0'),
(1303, 52, '_tax_status', 'taxable'),
(1304, 52, '_tax_class', 'parent'),
(1305, 52, '_manage_stock', 'no'),
(1306, 52, '_backorders', 'no'),
(1307, 52, '_sold_individually', 'no'),
(1308, 52, '_weight', ''),
(1309, 52, '_length', ''),
(1310, 52, '_width', ''),
(1311, 52, '_height', ''),
(1312, 52, '_upsell_ids', 'a:0:{}'),
(1313, 52, '_crosssell_ids', 'a:0:{}'),
(1314, 52, '_purchase_note', ''),
(1315, 52, '_default_attributes', 'a:0:{}'),
(1316, 52, '_virtual', 'no'),
(1317, 52, '_downloadable', 'no'),
(1318, 52, '_product_image_gallery', ''),
(1319, 52, '_download_limit', '-1'),
(1320, 52, '_download_expiry', '-1'),
(1321, 52, '_stock', NULL),
(1322, 52, '_stock_status', 'instock'),
(1323, 52, '_wc_average_rating', '0'),
(1324, 52, '_wc_rating_count', 'a:0:{}'),
(1325, 52, '_wc_review_count', '0'),
(1326, 52, '_downloadable_files', 'a:0:{}'),
(1327, 52, 'attribute_pa_color', 'black'),
(1328, 52, 'attribute_pa_size', 'xxl'),
(1329, 52, '_price', '195'),
(1330, 52, '_product_version', '3.4.4'),
(1333, 53, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1334, 53, '_sku', '53'),
(1335, 53, '_regular_price', '210'),
(1336, 53, '_sale_price', '195'),
(1337, 53, '_sale_price_dates_from', ''),
(1338, 53, '_sale_price_dates_to', ''),
(1339, 53, 'total_sales', '0'),
(1340, 53, '_tax_status', 'taxable'),
(1341, 53, '_tax_class', 'parent'),
(1342, 53, '_manage_stock', 'no'),
(1343, 53, '_backorders', 'no'),
(1344, 53, '_sold_individually', 'no'),
(1345, 53, '_weight', ''),
(1346, 53, '_length', ''),
(1347, 53, '_width', ''),
(1348, 53, '_height', ''),
(1349, 53, '_upsell_ids', 'a:0:{}'),
(1350, 53, '_crosssell_ids', 'a:0:{}'),
(1351, 53, '_purchase_note', ''),
(1352, 53, '_default_attributes', 'a:0:{}'),
(1353, 53, '_virtual', 'no'),
(1354, 53, '_downloadable', 'no'),
(1355, 53, '_product_image_gallery', ''),
(1356, 53, '_download_limit', '-1'),
(1357, 53, '_download_expiry', '-1'),
(1358, 53, '_stock', NULL),
(1359, 53, '_stock_status', 'instock'),
(1360, 53, '_wc_average_rating', '0'),
(1361, 53, '_wc_rating_count', 'a:0:{}'),
(1362, 53, '_wc_review_count', '0'),
(1363, 53, '_downloadable_files', 'a:0:{}'),
(1364, 53, 'attribute_pa_color', 'red'),
(1365, 53, 'attribute_pa_size', 'xl'),
(1366, 53, '_price', '195'),
(1367, 53, '_product_version', '3.4.4'),
(1370, 50, 'attribute_pa_color', 'black'),
(1371, 50, 'attribute_pa_size', 'xl'),
(1372, 35, '_price', '195'),
(1373, 35, '_price', '200'),
(1374, 35, '_price', '210'),
(1375, 35, '_regular_price', ''),
(1376, 35, '_sale_price', ''),
(1377, 35, '_thumbnail_id', '12'),
(1378, 15, '_thumbnail_id', '12'),
(1379, 54, '_wc_review_count', '0'),
(1380, 54, '_wc_rating_count', 'a:0:{}'),
(1381, 54, '_wc_average_rating', '0'),
(1382, 54, '_edit_last', '1'),
(1383, 54, '_edit_lock', '1534680717:1'),
(1384, 54, '_sku', ''),
(1387, 54, '_sale_price_dates_from', ''),
(1388, 54, '_sale_price_dates_to', ''),
(1389, 54, 'total_sales', '0'),
(1390, 54, '_tax_status', 'taxable'),
(1391, 54, '_tax_class', ''),
(1392, 54, '_manage_stock', 'no'),
(1393, 54, '_backorders', 'no'),
(1394, 54, '_sold_individually', 'no'),
(1395, 54, '_weight', ''),
(1396, 54, '_length', ''),
(1397, 54, '_width', ''),
(1398, 54, '_height', ''),
(1399, 54, '_upsell_ids', 'a:0:{}'),
(1400, 54, '_crosssell_ids', 'a:0:{}'),
(1401, 54, '_purchase_note', ''),
(1402, 54, '_default_attributes', 'a:0:{}'),
(1403, 54, '_virtual', 'no'),
(1404, 54, '_downloadable', 'no'),
(1405, 54, '_product_image_gallery', '12'),
(1406, 54, '_download_limit', '-1'),
(1407, 54, '_download_expiry', '-1'),
(1408, 54, '_stock', NULL),
(1409, 54, '_stock_status', 'instock'),
(1410, 54, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(1411, 54, '_product_version', '3.4.4'),
(1412, 55, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:'),
(1413, 55, '_sku', '55'),
(1414, 55, '_regular_price', '250'),
(1415, 55, '_sale_price', ''),
(1416, 55, '_sale_price_dates_from', ''),
(1417, 55, '_sale_price_dates_to', ''),
(1418, 55, 'total_sales', '0'),
(1419, 55, '_tax_status', 'taxable'),
(1420, 55, '_tax_class', 'parent'),
(1421, 55, '_manage_stock', 'no'),
(1422, 55, '_backorders', 'no'),
(1423, 55, '_sold_individually', 'no'),
(1424, 55, '_weight', ''),
(1425, 55, '_length', ''),
(1426, 55, '_width', ''),
(1427, 55, '_height', ''),
(1428, 55, '_upsell_ids', 'a:0:{}'),
(1429, 55, '_crosssell_ids', 'a:0:{}'),
(1430, 55, '_purchase_note', ''),
(1431, 55, '_default_attributes', 'a:0:{}'),
(1432, 55, '_virtual', 'no'),
(1433, 55, '_downloadable', 'no'),
(1434, 55, '_product_image_gallery', ''),
(1435, 55, '_download_limit', '-1'),
(1436, 55, '_download_expiry', '-1'),
(1437, 55, '_stock', NULL),
(1438, 55, '_stock_status', 'instock'),
(1439, 55, '_wc_average_rating', '0'),
(1440, 55, '_wc_rating_count', 'a:0:{}'),
(1441, 55, '_wc_review_count', '0'),
(1442, 55, '_downloadable_files', 'a:0:{}'),
(1443, 55, '_price', '250'),
(1444, 55, '_product_version', '3.4.4'),
(1447, 56, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1448, 56, '_sku', '56'),
(1449, 56, '_regular_price', '250'),
(1450, 56, '_sale_price', ''),
(1451, 56, '_sale_price_dates_from', ''),
(1452, 56, '_sale_price_dates_to', ''),
(1453, 56, 'total_sales', '0'),
(1454, 56, '_tax_status', 'taxable'),
(1455, 56, '_tax_class', 'parent'),
(1456, 56, '_manage_stock', 'no'),
(1457, 56, '_backorders', 'no'),
(1458, 56, '_sold_individually', 'no'),
(1459, 56, '_weight', ''),
(1460, 56, '_length', ''),
(1461, 56, '_width', ''),
(1462, 56, '_height', ''),
(1463, 56, '_upsell_ids', 'a:0:{}'),
(1464, 56, '_crosssell_ids', 'a:0:{}'),
(1465, 56, '_purchase_note', ''),
(1466, 56, '_default_attributes', 'a:0:{}'),
(1467, 56, '_virtual', 'no'),
(1468, 56, '_downloadable', 'no'),
(1469, 56, '_product_image_gallery', ''),
(1470, 56, '_download_limit', '-1'),
(1471, 56, '_download_expiry', '-1'),
(1472, 56, '_stock', NULL),
(1473, 56, '_stock_status', 'instock'),
(1474, 56, '_wc_average_rating', '0'),
(1475, 56, '_wc_rating_count', 'a:0:{}'),
(1476, 56, '_wc_review_count', '0'),
(1477, 56, '_downloadable_files', 'a:0:{}'),
(1478, 56, 'attribute_pa_color', 'black'),
(1479, 56, 'attribute_pa_size', 'xl'),
(1480, 56, '_price', '250'),
(1481, 56, '_product_version', '3.4.4'),
(1484, 57, '_variation_description', ''),
(1485, 57, '_sku', '57'),
(1486, 57, '_regular_price', '200'),
(1487, 57, '_sale_price', ''),
(1488, 57, '_sale_price_dates_from', ''),
(1489, 57, '_sale_price_dates_to', ''),
(1490, 57, 'total_sales', '0'),
(1491, 57, '_tax_status', 'taxable'),
(1492, 57, '_tax_class', 'parent'),
(1493, 57, '_manage_stock', 'no'),
(1494, 57, '_backorders', 'no'),
(1495, 57, '_sold_individually', 'no'),
(1496, 57, '_weight', ''),
(1497, 57, '_length', ''),
(1498, 57, '_width', ''),
(1499, 57, '_height', ''),
(1500, 57, '_upsell_ids', 'a:0:{}'),
(1501, 57, '_crosssell_ids', 'a:0:{}'),
(1502, 57, '_purchase_note', ''),
(1503, 57, '_default_attributes', 'a:0:{}'),
(1504, 57, '_virtual', 'no'),
(1505, 57, '_downloadable', 'no'),
(1506, 57, '_product_image_gallery', ''),
(1507, 57, '_download_limit', '-1'),
(1508, 57, '_download_expiry', '-1'),
(1509, 57, '_stock', NULL),
(1510, 57, '_stock_status', 'instock'),
(1511, 57, '_wc_average_rating', '0'),
(1512, 57, '_wc_rating_count', 'a:0:{}'),
(1513, 57, '_wc_review_count', '0'),
(1514, 57, '_downloadable_files', 'a:0:{}'),
(1515, 57, 'attribute_pa_color', 'white'),
(1516, 57, 'attribute_pa_size', 'x'),
(1517, 57, '_price', '200'),
(1518, 57, '_product_version', '3.4.4'),
(1521, 58, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:'),
(1522, 58, '_sku', '58'),
(1523, 58, '_regular_price', '200'),
(1524, 58, '_sale_price', ''),
(1525, 58, '_sale_price_dates_from', ''),
(1526, 58, '_sale_price_dates_to', ''),
(1527, 58, 'total_sales', '0'),
(1528, 58, '_tax_status', 'taxable'),
(1529, 58, '_tax_class', 'parent'),
(1530, 58, '_manage_stock', 'no'),
(1531, 58, '_backorders', 'no'),
(1532, 58, '_sold_individually', 'no'),
(1533, 58, '_weight', ''),
(1534, 58, '_length', ''),
(1535, 58, '_width', ''),
(1536, 58, '_height', ''),
(1537, 58, '_upsell_ids', 'a:0:{}'),
(1538, 58, '_crosssell_ids', 'a:0:{}'),
(1539, 58, '_purchase_note', ''),
(1540, 58, '_default_attributes', 'a:0:{}'),
(1541, 58, '_virtual', 'no'),
(1542, 58, '_downloadable', 'no'),
(1543, 58, '_product_image_gallery', ''),
(1544, 58, '_download_limit', '-1'),
(1545, 58, '_download_expiry', '-1'),
(1546, 58, '_stock', NULL),
(1547, 58, '_stock_status', 'instock'),
(1548, 58, '_wc_average_rating', '0'),
(1549, 58, '_wc_rating_count', 'a:0:{}'),
(1550, 58, '_wc_review_count', '0'),
(1551, 58, '_downloadable_files', 'a:0:{}'),
(1552, 58, 'attribute_pa_color', 'black'),
(1553, 58, 'attribute_pa_size', 'x'),
(1554, 58, '_price', '200'),
(1555, 58, '_product_version', '3.4.4'),
(1558, 55, 'attribute_pa_color', 'white'),
(1559, 55, 'attribute_pa_size', 'xl'),
(1560, 54, '_price', '200'),
(1561, 54, '_price', '250'),
(1562, 54, '_regular_price', ''),
(1563, 54, '_sale_price', ''),
(1564, 54, '_thumbnail_id', '59'),
(1565, 59, '_wp_attached_file', '2018/08/a2268c1ebcdb4831104ebc3cb7907a84.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1566, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1800;s:4:\"file\";s:44:\"2018/08/a2268c1ebcdb4831104ebc3cb7907a84.jpg\";s:5:\"sizes\";a:24:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"a2268c1ebcdb4831104ebc3cb7907a84-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"a2268c1ebcdb4831104ebc3cb7907a84-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:46:\"a2268c1ebcdb4831104ebc3cb7907a84-1200x1200.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-350x525.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-350x525.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-750x300\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-750x300.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x248\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-620x248.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x160\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-400x160.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1100x300\";a:4:{s:4:\"file\";s:45:\"a2268c1ebcdb4831104ebc3cb7907a84-1100x300.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x169\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-620x169.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x109\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-400x109.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x252\";a:4:{s:4:\"file\";s:45:\"a2268c1ebcdb4831104ebc3cb7907a84-1200x252.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x130\";a:4:{s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-620x130.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"meta-slider-resized-400x84\";a:4:{s:4:\"file\";s:43:\"a2268c1ebcdb4831104ebc3cb7907a84-400x84.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1567, 60, '_wc_review_count', '0'),
(1568, 60, '_wc_rating_count', 'a:0:{}'),
(1569, 60, '_wc_average_rating', '0'),
(1570, 60, '_edit_last', '1'),
(1571, 60, '_edit_lock', '1534681224:1'),
(1572, 60, '_sku', ''),
(1575, 60, '_sale_price_dates_from', ''),
(1576, 60, '_sale_price_dates_to', ''),
(1577, 60, 'total_sales', '0'),
(1578, 60, '_tax_status', 'taxable'),
(1579, 60, '_tax_class', ''),
(1580, 60, '_manage_stock', 'no'),
(1581, 60, '_backorders', 'no'),
(1582, 60, '_sold_individually', 'no'),
(1583, 60, '_weight', ''),
(1584, 60, '_length', ''),
(1585, 60, '_width', ''),
(1586, 60, '_height', ''),
(1587, 60, '_upsell_ids', 'a:0:{}'),
(1588, 60, '_crosssell_ids', 'a:0:{}'),
(1589, 60, '_purchase_note', ''),
(1590, 60, '_default_attributes', 'a:0:{}'),
(1591, 60, '_virtual', 'no'),
(1592, 60, '_downloadable', 'no'),
(1593, 60, '_product_image_gallery', '34,19,59'),
(1594, 60, '_download_limit', '-1'),
(1595, 60, '_download_expiry', '-1'),
(1596, 60, '_stock', NULL),
(1597, 60, '_stock_status', 'instock'),
(1598, 60, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(1599, 60, '_product_version', '3.4.4'),
(1600, 61, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1601, 61, '_sku', '61'),
(1602, 61, '_regular_price', '100'),
(1603, 61, '_sale_price', ''),
(1604, 61, '_sale_price_dates_from', ''),
(1605, 61, '_sale_price_dates_to', ''),
(1606, 61, 'total_sales', '0'),
(1607, 61, '_tax_status', 'taxable'),
(1608, 61, '_tax_class', 'parent'),
(1609, 61, '_manage_stock', 'no'),
(1610, 61, '_backorders', 'no'),
(1611, 61, '_sold_individually', 'no'),
(1612, 61, '_weight', ''),
(1613, 61, '_length', ''),
(1614, 61, '_width', ''),
(1615, 61, '_height', ''),
(1616, 61, '_upsell_ids', 'a:0:{}'),
(1617, 61, '_crosssell_ids', 'a:0:{}'),
(1618, 61, '_purchase_note', ''),
(1619, 61, '_default_attributes', 'a:0:{}'),
(1620, 61, '_virtual', 'no'),
(1621, 61, '_downloadable', 'no'),
(1622, 61, '_product_image_gallery', ''),
(1623, 61, '_download_limit', '-1'),
(1624, 61, '_download_expiry', '-1'),
(1625, 61, '_stock', NULL),
(1626, 61, '_stock_status', 'instock'),
(1627, 61, '_wc_average_rating', '0'),
(1628, 61, '_wc_rating_count', 'a:0:{}'),
(1629, 61, '_wc_review_count', '0'),
(1630, 61, '_downloadable_files', 'a:0:{}'),
(1631, 61, 'attribute_pa_size', 'x'),
(1632, 61, 'attribute_pa_color', 'black'),
(1633, 61, '_price', '100'),
(1634, 61, '_product_version', '3.4.4'),
(1635, 62, '_variation_description', ''),
(1636, 62, '_sku', '62'),
(1637, 62, '_regular_price', '100'),
(1638, 62, '_sale_price', ''),
(1639, 62, '_sale_price_dates_from', ''),
(1640, 62, '_sale_price_dates_to', ''),
(1641, 62, 'total_sales', '0'),
(1642, 62, '_tax_status', 'taxable'),
(1643, 62, '_tax_class', 'parent'),
(1644, 62, '_manage_stock', 'no'),
(1645, 62, '_backorders', 'no'),
(1646, 62, '_sold_individually', 'no'),
(1647, 62, '_weight', ''),
(1648, 62, '_length', ''),
(1649, 62, '_width', ''),
(1650, 62, '_height', ''),
(1651, 62, '_upsell_ids', 'a:0:{}'),
(1652, 62, '_crosssell_ids', 'a:0:{}'),
(1653, 62, '_purchase_note', ''),
(1654, 62, '_default_attributes', 'a:0:{}'),
(1655, 62, '_virtual', 'no'),
(1656, 62, '_downloadable', 'no'),
(1657, 62, '_product_image_gallery', ''),
(1658, 62, '_download_limit', '-1'),
(1659, 62, '_download_expiry', '-1'),
(1660, 62, '_stock', NULL),
(1661, 62, '_stock_status', 'instock'),
(1662, 62, '_wc_average_rating', '0'),
(1663, 62, '_wc_rating_count', 'a:0:{}'),
(1664, 62, '_wc_review_count', '0'),
(1665, 62, '_downloadable_files', 'a:0:{}'),
(1666, 62, 'attribute_pa_size', 'x'),
(1667, 62, 'attribute_pa_color', 'orange'),
(1668, 62, '_price', '100'),
(1669, 62, '_product_version', '3.4.4'),
(1670, 63, '_variation_description', ''),
(1671, 63, '_sku', '63'),
(1672, 63, '_regular_price', '100'),
(1673, 63, '_sale_price', ''),
(1674, 63, '_sale_price_dates_from', ''),
(1675, 63, '_sale_price_dates_to', ''),
(1676, 63, 'total_sales', '0'),
(1677, 63, '_tax_status', 'taxable'),
(1678, 63, '_tax_class', 'parent'),
(1679, 63, '_manage_stock', 'no'),
(1680, 63, '_backorders', 'no'),
(1681, 63, '_sold_individually', 'no'),
(1682, 63, '_weight', ''),
(1683, 63, '_length', ''),
(1684, 63, '_width', ''),
(1685, 63, '_height', ''),
(1686, 63, '_upsell_ids', 'a:0:{}'),
(1687, 63, '_crosssell_ids', 'a:0:{}'),
(1688, 63, '_purchase_note', ''),
(1689, 63, '_default_attributes', 'a:0:{}'),
(1690, 63, '_virtual', 'no'),
(1691, 63, '_downloadable', 'no'),
(1692, 63, '_product_image_gallery', ''),
(1693, 63, '_download_limit', '-1'),
(1694, 63, '_download_expiry', '-1'),
(1695, 63, '_stock', NULL),
(1696, 63, '_stock_status', 'instock'),
(1697, 63, '_wc_average_rating', '0'),
(1698, 63, '_wc_rating_count', 'a:0:{}'),
(1699, 63, '_wc_review_count', '0'),
(1700, 63, '_downloadable_files', 'a:0:{}'),
(1701, 63, 'attribute_pa_size', 'x'),
(1702, 63, 'attribute_pa_color', 'red'),
(1703, 63, '_price', '100'),
(1704, 63, '_product_version', '3.4.4'),
(1705, 64, '_variation_description', ''),
(1706, 64, '_sku', '64'),
(1707, 64, '_regular_price', '100'),
(1708, 64, '_sale_price', ''),
(1709, 64, '_sale_price_dates_from', ''),
(1710, 64, '_sale_price_dates_to', ''),
(1711, 64, 'total_sales', '0'),
(1712, 64, '_tax_status', 'taxable'),
(1713, 64, '_tax_class', 'parent'),
(1714, 64, '_manage_stock', 'no'),
(1715, 64, '_backorders', 'no'),
(1716, 64, '_sold_individually', 'no'),
(1717, 64, '_weight', ''),
(1718, 64, '_length', ''),
(1719, 64, '_width', ''),
(1720, 64, '_height', ''),
(1721, 64, '_upsell_ids', 'a:0:{}'),
(1722, 64, '_crosssell_ids', 'a:0:{}'),
(1723, 64, '_purchase_note', ''),
(1724, 64, '_default_attributes', 'a:0:{}'),
(1725, 64, '_virtual', 'no'),
(1726, 64, '_downloadable', 'no'),
(1727, 64, '_product_image_gallery', ''),
(1728, 64, '_download_limit', '-1'),
(1729, 64, '_download_expiry', '-1'),
(1730, 64, '_stock', NULL),
(1731, 64, '_stock_status', 'instock'),
(1732, 64, '_wc_average_rating', '0'),
(1733, 64, '_wc_rating_count', 'a:0:{}'),
(1734, 64, '_wc_review_count', '0'),
(1735, 64, '_downloadable_files', 'a:0:{}'),
(1736, 64, 'attribute_pa_size', 'x'),
(1737, 64, 'attribute_pa_color', 'white'),
(1738, 64, '_price', '100'),
(1739, 64, '_product_version', '3.4.4'),
(1740, 65, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1741, 65, '_sku', '65'),
(1742, 65, '_regular_price', '150'),
(1743, 65, '_sale_price', ''),
(1744, 65, '_sale_price_dates_from', ''),
(1745, 65, '_sale_price_dates_to', ''),
(1746, 65, 'total_sales', '0'),
(1747, 65, '_tax_status', 'taxable'),
(1748, 65, '_tax_class', 'parent'),
(1749, 65, '_manage_stock', 'no'),
(1750, 65, '_backorders', 'no'),
(1751, 65, '_sold_individually', 'no'),
(1752, 65, '_weight', ''),
(1753, 65, '_length', ''),
(1754, 65, '_width', ''),
(1755, 65, '_height', ''),
(1756, 65, '_upsell_ids', 'a:0:{}'),
(1757, 65, '_crosssell_ids', 'a:0:{}'),
(1758, 65, '_purchase_note', ''),
(1759, 65, '_default_attributes', 'a:0:{}'),
(1760, 65, '_virtual', 'no'),
(1761, 65, '_downloadable', 'no'),
(1762, 65, '_product_image_gallery', ''),
(1763, 65, '_download_limit', '-1'),
(1764, 65, '_download_expiry', '-1'),
(1765, 65, '_stock', NULL),
(1766, 65, '_stock_status', 'instock'),
(1767, 65, '_wc_average_rating', '0'),
(1768, 65, '_wc_rating_count', 'a:0:{}'),
(1769, 65, '_wc_review_count', '0'),
(1770, 65, '_downloadable_files', 'a:0:{}'),
(1771, 65, 'attribute_pa_size', 'xl'),
(1772, 65, 'attribute_pa_color', 'black'),
(1773, 65, '_price', '150'),
(1774, 65, '_product_version', '3.4.4'),
(1775, 66, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:'),
(1776, 66, '_sku', '66'),
(1777, 66, '_regular_price', '150'),
(1778, 66, '_sale_price', ''),
(1779, 66, '_sale_price_dates_from', ''),
(1780, 66, '_sale_price_dates_to', ''),
(1781, 66, 'total_sales', '0'),
(1782, 66, '_tax_status', 'taxable'),
(1783, 66, '_tax_class', 'parent'),
(1784, 66, '_manage_stock', 'no'),
(1785, 66, '_backorders', 'no'),
(1786, 66, '_sold_individually', 'no'),
(1787, 66, '_weight', ''),
(1788, 66, '_length', ''),
(1789, 66, '_width', ''),
(1790, 66, '_height', ''),
(1791, 66, '_upsell_ids', 'a:0:{}'),
(1792, 66, '_crosssell_ids', 'a:0:{}'),
(1793, 66, '_purchase_note', ''),
(1794, 66, '_default_attributes', 'a:0:{}'),
(1795, 66, '_virtual', 'no'),
(1796, 66, '_downloadable', 'no'),
(1797, 66, '_product_image_gallery', ''),
(1798, 66, '_download_limit', '-1'),
(1799, 66, '_download_expiry', '-1'),
(1800, 66, '_stock', NULL),
(1801, 66, '_stock_status', 'instock'),
(1802, 66, '_wc_average_rating', '0'),
(1803, 66, '_wc_rating_count', 'a:0:{}'),
(1804, 66, '_wc_review_count', '0'),
(1805, 66, '_downloadable_files', 'a:0:{}'),
(1806, 66, 'attribute_pa_size', 'xl'),
(1807, 66, 'attribute_pa_color', 'orange'),
(1808, 66, '_price', '150'),
(1809, 66, '_product_version', '3.4.4'),
(1810, 67, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1811, 67, '_sku', '67'),
(1812, 67, '_regular_price', '150'),
(1813, 67, '_sale_price', '130'),
(1814, 67, '_sale_price_dates_from', ''),
(1815, 67, '_sale_price_dates_to', ''),
(1816, 67, 'total_sales', '0'),
(1817, 67, '_tax_status', 'taxable'),
(1818, 67, '_tax_class', 'parent'),
(1819, 67, '_manage_stock', 'no'),
(1820, 67, '_backorders', 'no'),
(1821, 67, '_sold_individually', 'no'),
(1822, 67, '_weight', ''),
(1823, 67, '_length', ''),
(1824, 67, '_width', ''),
(1825, 67, '_height', ''),
(1826, 67, '_upsell_ids', 'a:0:{}'),
(1827, 67, '_crosssell_ids', 'a:0:{}'),
(1828, 67, '_purchase_note', ''),
(1829, 67, '_default_attributes', 'a:0:{}'),
(1830, 67, '_virtual', 'no'),
(1831, 67, '_downloadable', 'no'),
(1832, 67, '_product_image_gallery', ''),
(1833, 67, '_download_limit', '-1'),
(1834, 67, '_download_expiry', '-1'),
(1835, 67, '_stock', NULL),
(1836, 67, '_stock_status', 'instock'),
(1837, 67, '_wc_average_rating', '0'),
(1838, 67, '_wc_rating_count', 'a:0:{}'),
(1839, 67, '_wc_review_count', '0'),
(1840, 67, '_downloadable_files', 'a:0:{}'),
(1841, 67, 'attribute_pa_size', 'xl'),
(1842, 67, 'attribute_pa_color', 'red'),
(1843, 67, '_price', '130'),
(1844, 67, '_product_version', '3.4.4'),
(1845, 68, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1846, 68, '_sku', '68'),
(1847, 68, '_regular_price', '150'),
(1848, 68, '_sale_price', ''),
(1849, 68, '_sale_price_dates_from', ''),
(1850, 68, '_sale_price_dates_to', ''),
(1851, 68, 'total_sales', '0'),
(1852, 68, '_tax_status', 'taxable'),
(1853, 68, '_tax_class', 'parent'),
(1854, 68, '_manage_stock', 'no'),
(1855, 68, '_backorders', 'no'),
(1856, 68, '_sold_individually', 'no'),
(1857, 68, '_weight', ''),
(1858, 68, '_length', ''),
(1859, 68, '_width', ''),
(1860, 68, '_height', ''),
(1861, 68, '_upsell_ids', 'a:0:{}'),
(1862, 68, '_crosssell_ids', 'a:0:{}'),
(1863, 68, '_purchase_note', ''),
(1864, 68, '_default_attributes', 'a:0:{}'),
(1865, 68, '_virtual', 'no'),
(1866, 68, '_downloadable', 'no'),
(1867, 68, '_product_image_gallery', ''),
(1868, 68, '_download_limit', '-1'),
(1869, 68, '_download_expiry', '-1'),
(1870, 68, '_stock', NULL),
(1871, 68, '_stock_status', 'instock'),
(1872, 68, '_wc_average_rating', '0'),
(1873, 68, '_wc_rating_count', 'a:0:{}'),
(1874, 68, '_wc_review_count', '0'),
(1875, 68, '_downloadable_files', 'a:0:{}'),
(1876, 68, 'attribute_pa_size', 'xl'),
(1877, 68, 'attribute_pa_color', 'white'),
(1878, 68, '_price', '150'),
(1879, 68, '_product_version', '3.4.4'),
(1880, 69, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1881, 69, '_sku', '69'),
(1882, 69, '_regular_price', '200'),
(1883, 69, '_sale_price', '195'),
(1884, 69, '_sale_price_dates_from', ''),
(1885, 69, '_sale_price_dates_to', ''),
(1886, 69, 'total_sales', '0'),
(1887, 69, '_tax_status', 'taxable'),
(1888, 69, '_tax_class', 'parent'),
(1889, 69, '_manage_stock', 'no'),
(1890, 69, '_backorders', 'no'),
(1891, 69, '_sold_individually', 'no'),
(1892, 69, '_weight', ''),
(1893, 69, '_length', ''),
(1894, 69, '_width', ''),
(1895, 69, '_height', ''),
(1896, 69, '_upsell_ids', 'a:0:{}'),
(1897, 69, '_crosssell_ids', 'a:0:{}'),
(1898, 69, '_purchase_note', ''),
(1899, 69, '_default_attributes', 'a:0:{}'),
(1900, 69, '_virtual', 'no'),
(1901, 69, '_downloadable', 'no'),
(1902, 69, '_product_image_gallery', ''),
(1903, 69, '_download_limit', '-1'),
(1904, 69, '_download_expiry', '-1'),
(1905, 69, '_stock', NULL),
(1906, 69, '_stock_status', 'instock'),
(1907, 69, '_wc_average_rating', '0'),
(1908, 69, '_wc_rating_count', 'a:0:{}'),
(1909, 69, '_wc_review_count', '0'),
(1910, 69, '_downloadable_files', 'a:0:{}'),
(1911, 69, 'attribute_pa_size', 'xxl'),
(1912, 69, 'attribute_pa_color', 'black'),
(1913, 69, '_price', '195'),
(1914, 69, '_product_version', '3.4.4'),
(1915, 70, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1916, 70, '_sku', '70'),
(1917, 70, '_regular_price', '200'),
(1918, 70, '_sale_price', ''),
(1919, 70, '_sale_price_dates_from', ''),
(1920, 70, '_sale_price_dates_to', ''),
(1921, 70, 'total_sales', '0'),
(1922, 70, '_tax_status', 'taxable'),
(1923, 70, '_tax_class', 'parent'),
(1924, 70, '_manage_stock', 'no'),
(1925, 70, '_backorders', 'no'),
(1926, 70, '_sold_individually', 'no'),
(1927, 70, '_weight', ''),
(1928, 70, '_length', ''),
(1929, 70, '_width', ''),
(1930, 70, '_height', ''),
(1931, 70, '_upsell_ids', 'a:0:{}'),
(1932, 70, '_crosssell_ids', 'a:0:{}'),
(1933, 70, '_purchase_note', ''),
(1934, 70, '_default_attributes', 'a:0:{}'),
(1935, 70, '_virtual', 'no'),
(1936, 70, '_downloadable', 'no'),
(1937, 70, '_product_image_gallery', ''),
(1938, 70, '_download_limit', '-1'),
(1939, 70, '_download_expiry', '-1'),
(1940, 70, '_stock', NULL),
(1941, 70, '_stock_status', 'instock'),
(1942, 70, '_wc_average_rating', '0'),
(1943, 70, '_wc_rating_count', 'a:0:{}'),
(1944, 70, '_wc_review_count', '0'),
(1945, 70, '_downloadable_files', 'a:0:{}'),
(1946, 70, 'attribute_pa_size', 'xxl'),
(1947, 70, 'attribute_pa_color', 'orange'),
(1948, 70, '_price', '200'),
(1949, 70, '_product_version', '3.4.4'),
(1950, 71, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1951, 71, '_sku', '71'),
(1952, 71, '_regular_price', '200'),
(1953, 71, '_sale_price', ''),
(1954, 71, '_sale_price_dates_from', ''),
(1955, 71, '_sale_price_dates_to', ''),
(1956, 71, 'total_sales', '0'),
(1957, 71, '_tax_status', 'taxable'),
(1958, 71, '_tax_class', 'parent'),
(1959, 71, '_manage_stock', 'no'),
(1960, 71, '_backorders', 'no'),
(1961, 71, '_sold_individually', 'no'),
(1962, 71, '_weight', ''),
(1963, 71, '_length', ''),
(1964, 71, '_width', ''),
(1965, 71, '_height', ''),
(1966, 71, '_upsell_ids', 'a:0:{}'),
(1967, 71, '_crosssell_ids', 'a:0:{}'),
(1968, 71, '_purchase_note', ''),
(1969, 71, '_default_attributes', 'a:0:{}'),
(1970, 71, '_virtual', 'no'),
(1971, 71, '_downloadable', 'no'),
(1972, 71, '_product_image_gallery', ''),
(1973, 71, '_download_limit', '-1'),
(1974, 71, '_download_expiry', '-1'),
(1975, 71, '_stock', NULL),
(1976, 71, '_stock_status', 'instock'),
(1977, 71, '_wc_average_rating', '0'),
(1978, 71, '_wc_rating_count', 'a:0:{}'),
(1979, 71, '_wc_review_count', '0'),
(1980, 71, '_downloadable_files', 'a:0:{}'),
(1981, 71, 'attribute_pa_size', 'xxl'),
(1982, 71, 'attribute_pa_color', 'red'),
(1983, 71, '_price', '200'),
(1984, 71, '_product_version', '3.4.4'),
(1985, 72, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(1986, 72, '_sku', ''),
(1987, 72, '_regular_price', '225'),
(1988, 72, '_sale_price', '195'),
(1989, 72, '_sale_price_dates_from', ''),
(1990, 72, '_sale_price_dates_to', ''),
(1991, 72, 'total_sales', '0'),
(1992, 72, '_tax_status', 'taxable'),
(1993, 72, '_tax_class', 'parent'),
(1994, 72, '_manage_stock', 'no'),
(1995, 72, '_backorders', 'no'),
(1996, 72, '_sold_individually', 'no'),
(1997, 72, '_weight', ''),
(1998, 72, '_length', ''),
(1999, 72, '_width', ''),
(2000, 72, '_height', ''),
(2001, 72, '_upsell_ids', 'a:0:{}'),
(2002, 72, '_crosssell_ids', 'a:0:{}'),
(2003, 72, '_purchase_note', ''),
(2004, 72, '_default_attributes', 'a:0:{}'),
(2005, 72, '_virtual', 'no'),
(2006, 72, '_downloadable', 'no'),
(2007, 72, '_product_image_gallery', ''),
(2008, 72, '_download_limit', '-1'),
(2009, 72, '_download_expiry', '-1'),
(2010, 72, '_stock', NULL),
(2011, 72, '_stock_status', 'instock'),
(2012, 72, '_wc_average_rating', '0'),
(2013, 72, '_wc_rating_count', 'a:0:{}'),
(2014, 72, '_wc_review_count', '0'),
(2015, 72, '_downloadable_files', 'a:0:{}'),
(2016, 72, 'attribute_pa_size', 'xxl'),
(2017, 72, 'attribute_pa_color', 'white'),
(2018, 72, '_price', '195'),
(2019, 72, '_product_version', '3.4.4'),
(2022, 60, '_price', '100'),
(2023, 60, '_price', '130'),
(2024, 60, '_price', '150'),
(2025, 60, '_price', '195'),
(2026, 60, '_price', '200'),
(2027, 60, '_regular_price', ''),
(2028, 60, '_sale_price', ''),
(2029, 60, '_thumbnail_id', '12'),
(2030, 73, '_wc_review_count', '0'),
(2031, 73, '_wc_rating_count', 'a:0:{}'),
(2032, 73, '_wc_average_rating', '0'),
(2033, 73, '_edit_last', '1'),
(2034, 73, '_edit_lock', '1534688226:1'),
(2035, 73, '_thumbnail_id', '12'),
(2036, 73, '_sku', ''),
(2039, 73, '_sale_price_dates_from', ''),
(2040, 73, '_sale_price_dates_to', ''),
(2041, 73, 'total_sales', '0'),
(2042, 73, '_tax_status', 'taxable'),
(2043, 73, '_tax_class', ''),
(2044, 73, '_manage_stock', 'no'),
(2045, 73, '_backorders', 'no'),
(2046, 73, '_sold_individually', 'no'),
(2047, 73, '_weight', ''),
(2048, 73, '_length', ''),
(2049, 73, '_width', ''),
(2050, 73, '_height', ''),
(2051, 73, '_upsell_ids', 'a:0:{}'),
(2052, 73, '_crosssell_ids', 'a:0:{}'),
(2053, 73, '_purchase_note', ''),
(2054, 73, '_default_attributes', 'a:2:{s:8:\"pa_color\";s:6:\"orange\";s:7:\"pa_size\";s:1:\"x\";}'),
(2055, 73, '_virtual', 'no'),
(2056, 73, '_downloadable', 'no'),
(2057, 73, '_product_image_gallery', '19,34,59'),
(2058, 73, '_download_limit', '-1'),
(2059, 73, '_download_expiry', '-1'),
(2060, 73, '_stock', NULL),
(2061, 73, '_stock_status', 'instock'),
(2062, 73, '_product_version', '3.4.4'),
(2064, 74, '_wc_review_count', '0'),
(2065, 74, '_wc_rating_count', 'a:0:{}'),
(2066, 74, '_wc_average_rating', '0'),
(2067, 74, '_edit_last', '1'),
(2068, 74, '_edit_lock', '1534681998:1'),
(2069, 74, '_sku', ''),
(2072, 74, '_sale_price_dates_from', ''),
(2073, 74, '_sale_price_dates_to', ''),
(2074, 74, 'total_sales', '0'),
(2075, 74, '_tax_status', 'taxable'),
(2076, 74, '_tax_class', ''),
(2077, 74, '_manage_stock', 'no'),
(2078, 74, '_backorders', 'no'),
(2079, 74, '_sold_individually', 'no'),
(2080, 74, '_weight', ''),
(2081, 74, '_length', ''),
(2082, 74, '_width', ''),
(2083, 74, '_height', ''),
(2084, 74, '_upsell_ids', 'a:0:{}'),
(2085, 74, '_crosssell_ids', 'a:0:{}'),
(2086, 74, '_purchase_note', ''),
(2087, 74, '_default_attributes', 'a:0:{}'),
(2088, 74, '_virtual', 'no'),
(2089, 74, '_downloadable', 'no'),
(2090, 74, '_product_image_gallery', ''),
(2091, 74, '_download_limit', '-1'),
(2092, 74, '_download_expiry', '-1'),
(2093, 74, '_stock', NULL),
(2094, 74, '_stock_status', 'instock'),
(2095, 74, '_product_version', '3.4.4'),
(2097, 74, '_thumbnail_id', '34'),
(2098, 75, '_wc_review_count', '0'),
(2099, 75, '_wc_rating_count', 'a:0:{}'),
(2100, 75, '_wc_average_rating', '0'),
(2101, 75, '_edit_last', '1'),
(2102, 75, '_edit_lock', '1534681574:1'),
(2103, 75, '_thumbnail_id', '12'),
(2104, 75, '_sku', ''),
(2105, 75, '_regular_price', ''),
(2106, 75, '_sale_price', ''),
(2107, 75, '_sale_price_dates_from', ''),
(2108, 75, '_sale_price_dates_to', ''),
(2109, 75, 'total_sales', '0'),
(2110, 75, '_tax_status', 'taxable'),
(2111, 75, '_tax_class', ''),
(2112, 75, '_manage_stock', 'no'),
(2113, 75, '_backorders', 'no'),
(2114, 75, '_sold_individually', 'no'),
(2115, 75, '_weight', ''),
(2116, 75, '_length', ''),
(2117, 75, '_width', ''),
(2118, 75, '_height', ''),
(2119, 75, '_upsell_ids', 'a:0:{}'),
(2120, 75, '_crosssell_ids', 'a:0:{}'),
(2121, 75, '_purchase_note', ''),
(2122, 75, '_default_attributes', 'a:0:{}'),
(2123, 75, '_virtual', 'no'),
(2124, 75, '_downloadable', 'no'),
(2125, 75, '_product_image_gallery', ''),
(2126, 75, '_download_limit', '-1'),
(2127, 75, '_download_expiry', '-1'),
(2128, 75, '_stock', NULL),
(2129, 75, '_stock_status', 'instock'),
(2130, 75, '_product_version', '3.4.4'),
(2131, 75, '_price', ''),
(2132, 75, '_wp_trash_meta_status', 'publish'),
(2133, 75, '_wp_trash_meta_time', '1534681714'),
(2134, 75, '_wp_desired_post_slug', '%d1%88%d0%be%d1%80%d1%82%d1%8b-10'),
(2135, 76, '_wc_review_count', '0'),
(2136, 76, '_wc_rating_count', 'a:0:{}'),
(2137, 76, '_wc_average_rating', '0'),
(2138, 76, '_edit_last', '1'),
(2139, 76, '_edit_lock', '1534712658:1'),
(2140, 76, '_sku', ''),
(2143, 76, '_sale_price_dates_from', ''),
(2144, 76, '_sale_price_dates_to', ''),
(2145, 76, 'total_sales', '0'),
(2146, 76, '_tax_status', 'taxable'),
(2147, 76, '_tax_class', ''),
(2148, 76, '_manage_stock', 'no'),
(2149, 76, '_backorders', 'no'),
(2150, 76, '_sold_individually', 'no'),
(2151, 76, '_weight', ''),
(2152, 76, '_length', ''),
(2153, 76, '_width', ''),
(2154, 76, '_height', ''),
(2155, 76, '_upsell_ids', 'a:0:{}'),
(2156, 76, '_crosssell_ids', 'a:0:{}'),
(2157, 76, '_purchase_note', ''),
(2158, 76, '_default_attributes', 'a:0:{}'),
(2159, 76, '_virtual', 'no'),
(2160, 76, '_downloadable', 'no'),
(2161, 76, '_product_image_gallery', '59'),
(2162, 76, '_download_limit', '-1'),
(2163, 76, '_download_expiry', '-1'),
(2164, 76, '_stock', NULL),
(2165, 76, '_stock_status', 'instock'),
(2166, 76, '_product_version', '3.4.4'),
(2168, 76, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(2169, 77, '_variation_description', ''),
(2170, 77, '_sku', ''),
(2171, 77, '_regular_price', '450'),
(2172, 77, '_sale_price', ''),
(2173, 77, '_sale_price_dates_from', ''),
(2174, 77, '_sale_price_dates_to', ''),
(2175, 77, 'total_sales', '0'),
(2176, 77, '_tax_status', 'taxable'),
(2177, 77, '_tax_class', 'parent'),
(2178, 77, '_manage_stock', 'no'),
(2179, 77, '_backorders', 'no'),
(2180, 77, '_sold_individually', 'no'),
(2181, 77, '_weight', ''),
(2182, 77, '_length', ''),
(2183, 77, '_width', ''),
(2184, 77, '_height', ''),
(2185, 77, '_upsell_ids', 'a:0:{}'),
(2186, 77, '_crosssell_ids', 'a:0:{}'),
(2187, 77, '_purchase_note', ''),
(2188, 77, '_default_attributes', 'a:0:{}'),
(2189, 77, '_virtual', 'no'),
(2190, 77, '_downloadable', 'no'),
(2191, 77, '_product_image_gallery', ''),
(2192, 77, '_download_limit', '-1'),
(2193, 77, '_download_expiry', '-1'),
(2194, 77, '_stock', NULL),
(2195, 77, '_stock_status', 'instock'),
(2196, 77, '_wc_average_rating', '0'),
(2197, 77, '_wc_rating_count', 'a:0:{}'),
(2198, 77, '_wc_review_count', '0'),
(2199, 77, '_downloadable_files', 'a:0:{}'),
(2200, 77, '_price', '450'),
(2201, 77, '_product_version', '3.4.4'),
(2204, 78, '_variation_description', ''),
(2205, 78, '_sku', ''),
(2206, 78, '_regular_price', '450'),
(2207, 78, '_sale_price', ''),
(2208, 78, '_sale_price_dates_from', ''),
(2209, 78, '_sale_price_dates_to', ''),
(2210, 78, 'total_sales', '0'),
(2211, 78, '_tax_status', 'taxable'),
(2212, 78, '_tax_class', 'parent'),
(2213, 78, '_manage_stock', 'no'),
(2214, 78, '_backorders', 'no'),
(2215, 78, '_sold_individually', 'no'),
(2216, 78, '_weight', ''),
(2217, 78, '_length', ''),
(2218, 78, '_width', ''),
(2219, 78, '_height', ''),
(2220, 78, '_upsell_ids', 'a:0:{}'),
(2221, 78, '_crosssell_ids', 'a:0:{}'),
(2222, 78, '_purchase_note', ''),
(2223, 78, '_default_attributes', 'a:0:{}'),
(2224, 78, '_virtual', 'no'),
(2225, 78, '_downloadable', 'no'),
(2226, 78, '_product_image_gallery', ''),
(2227, 78, '_download_limit', '-1'),
(2228, 78, '_download_expiry', '-1'),
(2229, 78, '_stock', NULL),
(2230, 78, '_stock_status', 'instock'),
(2231, 78, '_wc_average_rating', '0'),
(2232, 78, '_wc_rating_count', 'a:0:{}'),
(2233, 78, '_wc_review_count', '0'),
(2234, 78, '_downloadable_files', 'a:0:{}'),
(2235, 78, 'attribute_pa_color', 'black'),
(2236, 78, 'attribute_pa_size', 'xl'),
(2237, 78, '_price', '450'),
(2238, 78, '_product_version', '3.4.4'),
(2241, 79, '_variation_description', ''),
(2242, 79, '_sku', ''),
(2243, 79, '_regular_price', '400'),
(2244, 79, '_sale_price', ''),
(2245, 79, '_sale_price_dates_from', ''),
(2246, 79, '_sale_price_dates_to', ''),
(2247, 79, 'total_sales', '0'),
(2248, 79, '_tax_status', 'taxable'),
(2249, 79, '_tax_class', 'parent'),
(2250, 79, '_manage_stock', 'no'),
(2251, 79, '_backorders', 'no'),
(2252, 79, '_sold_individually', 'no'),
(2253, 79, '_weight', ''),
(2254, 79, '_length', ''),
(2255, 79, '_width', ''),
(2256, 79, '_height', ''),
(2257, 79, '_upsell_ids', 'a:0:{}'),
(2258, 79, '_crosssell_ids', 'a:0:{}'),
(2259, 79, '_purchase_note', ''),
(2260, 79, '_default_attributes', 'a:0:{}'),
(2261, 79, '_virtual', 'no'),
(2262, 79, '_downloadable', 'no'),
(2263, 79, '_product_image_gallery', ''),
(2264, 79, '_download_limit', '-1'),
(2265, 79, '_download_expiry', '-1'),
(2266, 79, '_stock', NULL),
(2267, 79, '_stock_status', 'instock'),
(2268, 79, '_wc_average_rating', '0'),
(2269, 79, '_wc_rating_count', 'a:0:{}'),
(2270, 79, '_wc_review_count', '0'),
(2271, 79, '_downloadable_files', 'a:0:{}'),
(2272, 79, 'attribute_pa_color', 'white'),
(2273, 79, 'attribute_pa_size', 'x'),
(2274, 79, '_price', '400'),
(2275, 79, '_product_version', '3.4.4'),
(2278, 80, '_variation_description', ''),
(2279, 80, '_sku', ''),
(2280, 80, '_regular_price', '400'),
(2281, 80, '_sale_price', ''),
(2282, 80, '_sale_price_dates_from', ''),
(2283, 80, '_sale_price_dates_to', ''),
(2284, 80, 'total_sales', '0'),
(2285, 80, '_tax_status', 'taxable'),
(2286, 80, '_tax_class', 'parent'),
(2287, 80, '_manage_stock', 'no'),
(2288, 80, '_backorders', 'no'),
(2289, 80, '_sold_individually', 'no'),
(2290, 80, '_weight', ''),
(2291, 80, '_length', ''),
(2292, 80, '_width', ''),
(2293, 80, '_height', ''),
(2294, 80, '_upsell_ids', 'a:0:{}'),
(2295, 80, '_crosssell_ids', 'a:0:{}'),
(2296, 80, '_purchase_note', ''),
(2297, 80, '_default_attributes', 'a:0:{}'),
(2298, 80, '_virtual', 'no'),
(2299, 80, '_downloadable', 'no'),
(2300, 80, '_product_image_gallery', ''),
(2301, 80, '_download_limit', '-1'),
(2302, 80, '_download_expiry', '-1'),
(2303, 80, '_stock', NULL),
(2304, 80, '_stock_status', 'instock'),
(2305, 80, '_wc_average_rating', '0'),
(2306, 80, '_wc_rating_count', 'a:0:{}'),
(2307, 80, '_wc_review_count', '0'),
(2308, 80, '_downloadable_files', 'a:0:{}'),
(2309, 80, 'attribute_pa_color', 'black'),
(2310, 80, 'attribute_pa_size', 'x'),
(2311, 80, '_price', '400'),
(2312, 80, '_product_version', '3.4.4'),
(2315, 77, 'attribute_pa_color', 'white'),
(2316, 77, 'attribute_pa_size', 'xl'),
(2317, 76, '_price', '400'),
(2318, 76, '_price', '450'),
(2319, 76, '_regular_price', ''),
(2320, 76, '_sale_price', ''),
(2321, 76, '_thumbnail_id', '12'),
(2322, 74, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(2323, 81, '_variation_description', ''),
(2324, 81, '_sku', ''),
(2325, 81, '_regular_price', '110'),
(2326, 81, '_sale_price', ''),
(2327, 81, '_sale_price_dates_from', ''),
(2328, 81, '_sale_price_dates_to', ''),
(2329, 81, 'total_sales', '0'),
(2330, 81, '_tax_status', 'taxable'),
(2331, 81, '_tax_class', 'parent'),
(2332, 81, '_manage_stock', 'no'),
(2333, 81, '_backorders', 'no'),
(2334, 81, '_sold_individually', 'no'),
(2335, 81, '_weight', ''),
(2336, 81, '_length', ''),
(2337, 81, '_width', ''),
(2338, 81, '_height', ''),
(2339, 81, '_upsell_ids', 'a:0:{}'),
(2340, 81, '_crosssell_ids', 'a:0:{}'),
(2341, 81, '_purchase_note', ''),
(2342, 81, '_default_attributes', 'a:0:{}'),
(2343, 81, '_virtual', 'no'),
(2344, 81, '_downloadable', 'no'),
(2345, 81, '_product_image_gallery', ''),
(2346, 81, '_download_limit', '-1'),
(2347, 81, '_download_expiry', '-1'),
(2348, 81, '_stock', NULL),
(2349, 81, '_stock_status', 'instock'),
(2350, 81, '_wc_average_rating', '0'),
(2351, 81, '_wc_rating_count', 'a:0:{}'),
(2352, 81, '_wc_review_count', '0'),
(2353, 81, '_downloadable_files', 'a:0:{}'),
(2354, 81, '_price', '110'),
(2355, 81, '_product_version', '3.4.4'),
(2358, 82, '_variation_description', ''),
(2359, 82, '_sku', ''),
(2360, 82, '_regular_price', '110'),
(2361, 82, '_sale_price', ''),
(2362, 82, '_sale_price_dates_from', ''),
(2363, 82, '_sale_price_dates_to', ''),
(2364, 82, 'total_sales', '0'),
(2365, 82, '_tax_status', 'taxable'),
(2366, 82, '_tax_class', 'parent'),
(2367, 82, '_manage_stock', 'no'),
(2368, 82, '_backorders', 'no'),
(2369, 82, '_sold_individually', 'no'),
(2370, 82, '_weight', ''),
(2371, 82, '_length', ''),
(2372, 82, '_width', ''),
(2373, 82, '_height', ''),
(2374, 82, '_upsell_ids', 'a:0:{}'),
(2375, 82, '_crosssell_ids', 'a:0:{}'),
(2376, 82, '_purchase_note', ''),
(2377, 82, '_default_attributes', 'a:0:{}'),
(2378, 82, '_virtual', 'no'),
(2379, 82, '_downloadable', 'no'),
(2380, 82, '_product_image_gallery', ''),
(2381, 82, '_download_limit', '-1'),
(2382, 82, '_download_expiry', '-1'),
(2383, 82, '_stock', NULL),
(2384, 82, '_stock_status', 'instock'),
(2385, 82, '_wc_average_rating', '0'),
(2386, 82, '_wc_rating_count', 'a:0:{}'),
(2387, 82, '_wc_review_count', '0'),
(2388, 82, '_downloadable_files', 'a:0:{}'),
(2389, 82, 'attribute_pa_color', 'orange'),
(2390, 82, 'attribute_pa_size', 'xxl'),
(2391, 82, '_price', '110'),
(2392, 82, '_product_version', '3.4.4'),
(2395, 83, '_variation_description', ''),
(2396, 83, '_sku', ''),
(2397, 83, '_regular_price', '99'),
(2398, 83, '_sale_price', ''),
(2399, 83, '_sale_price_dates_from', ''),
(2400, 83, '_sale_price_dates_to', ''),
(2401, 83, 'total_sales', '0'),
(2402, 83, '_tax_status', 'taxable'),
(2403, 83, '_tax_class', 'parent'),
(2404, 83, '_manage_stock', 'no'),
(2405, 83, '_backorders', 'no'),
(2406, 83, '_sold_individually', 'no'),
(2407, 83, '_weight', ''),
(2408, 83, '_length', ''),
(2409, 83, '_width', ''),
(2410, 83, '_height', ''),
(2411, 83, '_upsell_ids', 'a:0:{}'),
(2412, 83, '_crosssell_ids', 'a:0:{}'),
(2413, 83, '_purchase_note', ''),
(2414, 83, '_default_attributes', 'a:0:{}'),
(2415, 83, '_virtual', 'no'),
(2416, 83, '_downloadable', 'no'),
(2417, 83, '_product_image_gallery', ''),
(2418, 83, '_download_limit', '-1'),
(2419, 83, '_download_expiry', '-1'),
(2420, 83, '_stock', NULL),
(2421, 83, '_stock_status', 'instock'),
(2422, 83, '_wc_average_rating', '0'),
(2423, 83, '_wc_rating_count', 'a:0:{}'),
(2424, 83, '_wc_review_count', '0'),
(2425, 83, '_downloadable_files', 'a:0:{}'),
(2426, 83, 'attribute_pa_color', 'red'),
(2427, 83, 'attribute_pa_size', 'xl'),
(2428, 83, '_price', '99'),
(2429, 83, '_product_version', '3.4.4'),
(2432, 84, '_variation_description', ''),
(2433, 84, '_sku', ''),
(2434, 84, '_regular_price', '99'),
(2435, 84, '_sale_price', ''),
(2436, 84, '_sale_price_dates_from', ''),
(2437, 84, '_sale_price_dates_to', ''),
(2438, 84, 'total_sales', '0'),
(2439, 84, '_tax_status', 'taxable'),
(2440, 84, '_tax_class', 'parent'),
(2441, 84, '_manage_stock', 'no'),
(2442, 84, '_backorders', 'no'),
(2443, 84, '_sold_individually', 'no'),
(2444, 84, '_weight', ''),
(2445, 84, '_length', ''),
(2446, 84, '_width', ''),
(2447, 84, '_height', ''),
(2448, 84, '_upsell_ids', 'a:0:{}'),
(2449, 84, '_crosssell_ids', 'a:0:{}'),
(2450, 84, '_purchase_note', ''),
(2451, 84, '_default_attributes', 'a:0:{}'),
(2452, 84, '_virtual', 'no'),
(2453, 84, '_downloadable', 'no'),
(2454, 84, '_product_image_gallery', ''),
(2455, 84, '_download_limit', '-1'),
(2456, 84, '_download_expiry', '-1'),
(2457, 84, '_stock', NULL),
(2458, 84, '_stock_status', 'instock'),
(2459, 84, '_wc_average_rating', '0'),
(2460, 84, '_wc_rating_count', 'a:0:{}'),
(2461, 84, '_wc_review_count', '0'),
(2462, 84, '_downloadable_files', 'a:0:{}'),
(2463, 84, 'attribute_pa_color', 'orange'),
(2464, 84, 'attribute_pa_size', 'xl'),
(2465, 84, '_price', '99'),
(2466, 84, '_product_version', '3.4.4'),
(2469, 81, 'attribute_pa_color', 'red'),
(2470, 81, 'attribute_pa_size', 'xxl'),
(2471, 74, '_price', '99'),
(2472, 74, '_price', '110'),
(2473, 74, '_regular_price', ''),
(2474, 74, '_sale_price', ''),
(2475, 73, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(2476, 85, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(2477, 85, '_sku', '85'),
(2478, 85, '_regular_price', '1450'),
(2479, 85, '_sale_price', '1225'),
(2480, 85, '_sale_price_dates_from', ''),
(2481, 85, '_sale_price_dates_to', ''),
(2482, 85, 'total_sales', '0'),
(2483, 85, '_tax_status', 'taxable'),
(2484, 85, '_tax_class', 'parent'),
(2485, 85, '_manage_stock', 'no'),
(2486, 85, '_backorders', 'no'),
(2487, 85, '_sold_individually', 'no'),
(2488, 85, '_weight', ''),
(2489, 85, '_length', ''),
(2490, 85, '_width', ''),
(2491, 85, '_height', ''),
(2492, 85, '_upsell_ids', 'a:0:{}'),
(2493, 85, '_crosssell_ids', 'a:0:{}'),
(2494, 85, '_purchase_note', ''),
(2495, 85, '_default_attributes', 'a:0:{}'),
(2496, 85, '_virtual', 'no'),
(2497, 85, '_downloadable', 'no'),
(2498, 85, '_product_image_gallery', ''),
(2499, 85, '_download_limit', '-1'),
(2500, 85, '_download_expiry', '-1'),
(2501, 85, '_stock', NULL),
(2502, 85, '_stock_status', 'instock'),
(2503, 85, '_wc_average_rating', '0'),
(2504, 85, '_wc_rating_count', 'a:0:{}'),
(2505, 85, '_wc_review_count', '0'),
(2506, 85, '_downloadable_files', 'a:0:{}'),
(2507, 85, '_price', '1225'),
(2508, 85, '_product_version', '3.4.4'),
(2511, 86, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(2512, 86, '_sku', '86'),
(2513, 86, '_regular_price', '1450'),
(2514, 86, '_sale_price', '1225'),
(2515, 86, '_sale_price_dates_from', ''),
(2516, 86, '_sale_price_dates_to', ''),
(2517, 86, 'total_sales', '0'),
(2518, 86, '_tax_status', 'taxable'),
(2519, 86, '_tax_class', 'parent'),
(2520, 86, '_manage_stock', 'no'),
(2521, 86, '_backorders', 'no'),
(2522, 86, '_sold_individually', 'no'),
(2523, 86, '_weight', ''),
(2524, 86, '_length', ''),
(2525, 86, '_width', ''),
(2526, 86, '_height', ''),
(2527, 86, '_upsell_ids', 'a:0:{}'),
(2528, 86, '_crosssell_ids', 'a:0:{}'),
(2529, 86, '_purchase_note', ''),
(2530, 86, '_default_attributes', 'a:0:{}'),
(2531, 86, '_virtual', 'no'),
(2532, 86, '_downloadable', 'no'),
(2533, 86, '_product_image_gallery', ''),
(2534, 86, '_download_limit', '-1'),
(2535, 86, '_download_expiry', '-1'),
(2536, 86, '_stock', NULL),
(2537, 86, '_stock_status', 'instock'),
(2538, 86, '_wc_average_rating', '0'),
(2539, 86, '_wc_rating_count', 'a:0:{}'),
(2540, 86, '_wc_review_count', '0'),
(2541, 86, '_downloadable_files', 'a:0:{}'),
(2542, 86, 'attribute_pa_color', 'orange'),
(2543, 86, 'attribute_pa_size', 'xxl'),
(2544, 86, '_price', '1225'),
(2545, 86, '_product_version', '3.4.4'),
(2548, 87, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(2549, 87, '_sku', '87'),
(2550, 87, '_regular_price', '900'),
(2551, 87, '_sale_price', ''),
(2552, 87, '_sale_price_dates_from', ''),
(2553, 87, '_sale_price_dates_to', ''),
(2554, 87, 'total_sales', '0'),
(2555, 87, '_tax_status', 'taxable'),
(2556, 87, '_tax_class', 'parent'),
(2557, 87, '_manage_stock', 'no'),
(2558, 87, '_backorders', 'no'),
(2559, 87, '_sold_individually', 'no'),
(2560, 87, '_weight', ''),
(2561, 87, '_length', ''),
(2562, 87, '_width', ''),
(2563, 87, '_height', ''),
(2564, 87, '_upsell_ids', 'a:0:{}'),
(2565, 87, '_crosssell_ids', 'a:0:{}'),
(2566, 87, '_purchase_note', ''),
(2567, 87, '_default_attributes', 'a:0:{}'),
(2568, 87, '_virtual', 'no'),
(2569, 87, '_downloadable', 'no'),
(2570, 87, '_product_image_gallery', ''),
(2571, 87, '_download_limit', '-1'),
(2572, 87, '_download_expiry', '-1'),
(2573, 87, '_stock', NULL),
(2574, 87, '_stock_status', 'instock'),
(2575, 87, '_wc_average_rating', '0'),
(2576, 87, '_wc_rating_count', 'a:0:{}'),
(2577, 87, '_wc_review_count', '0'),
(2578, 87, '_downloadable_files', 'a:0:{}'),
(2579, 87, 'attribute_pa_color', 'white'),
(2580, 87, 'attribute_pa_size', 'x'),
(2581, 87, '_price', '900'),
(2582, 87, '_product_version', '3.4.4'),
(2585, 88, '_variation_description', 'Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n'),
(2586, 88, '_sku', '88'),
(2587, 88, '_regular_price', '900'),
(2588, 88, '_sale_price', ''),
(2589, 88, '_sale_price_dates_from', ''),
(2590, 88, '_sale_price_dates_to', ''),
(2591, 88, 'total_sales', '0'),
(2592, 88, '_tax_status', 'taxable'),
(2593, 88, '_tax_class', 'parent'),
(2594, 88, '_manage_stock', 'no'),
(2595, 88, '_backorders', 'no'),
(2596, 88, '_sold_individually', 'no'),
(2597, 88, '_weight', ''),
(2598, 88, '_length', ''),
(2599, 88, '_width', ''),
(2600, 88, '_height', ''),
(2601, 88, '_upsell_ids', 'a:0:{}'),
(2602, 88, '_crosssell_ids', 'a:0:{}'),
(2603, 88, '_purchase_note', ''),
(2604, 88, '_default_attributes', 'a:0:{}'),
(2605, 88, '_virtual', 'no'),
(2606, 88, '_downloadable', 'no'),
(2607, 88, '_product_image_gallery', ''),
(2608, 88, '_download_limit', '-1'),
(2609, 88, '_download_expiry', '-1'),
(2610, 88, '_stock', NULL),
(2611, 88, '_stock_status', 'instock'),
(2612, 88, '_wc_average_rating', '0'),
(2613, 88, '_wc_rating_count', 'a:0:{}'),
(2614, 88, '_wc_review_count', '0'),
(2615, 88, '_downloadable_files', 'a:0:{}'),
(2616, 88, 'attribute_pa_color', 'orange'),
(2617, 88, 'attribute_pa_size', 'x'),
(2618, 88, '_price', '900'),
(2619, 88, '_product_version', '3.4.4'),
(2622, 85, 'attribute_pa_color', 'white'),
(2623, 85, 'attribute_pa_size', 'xxl'),
(2624, 73, '_price', '900'),
(2625, 73, '_price', '1225'),
(2626, 73, '_regular_price', ''),
(2627, 73, '_sale_price', ''),
(2628, 21, '_price', '222'),
(2629, 21, '_price', '225'),
(2630, 21, '_price', '233'),
(2631, 21, '_price', '256'),
(2632, 21, '_price', '266'),
(2633, 21, '_price', '276'),
(2634, 21, '_price', '278'),
(2635, 21, '_price', '300'),
(2636, 21, '_price', '309'),
(2637, 21, '_price', '322'),
(2638, 21, '_regular_price', ''),
(2639, 21, '_sale_price', ''),
(2640, 11, '_price', '225'),
(2641, 11, '_regular_price', ''),
(2642, 11, '_sale_price', ''),
(2643, 1, '_wp_trash_meta_status', 'publish'),
(2644, 1, '_wp_trash_meta_time', '1534692488'),
(2645, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(2646, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(2647, 90, '_edit_lock', '1534697768:1'),
(2648, 90, '_wp_trash_meta_status', 'publish'),
(2649, 90, '_wp_trash_meta_time', '1534697793'),
(2650, 91, '_edit_lock', '1534697931:1'),
(2651, 91, '_wp_trash_meta_status', 'publish'),
(2652, 91, '_wp_trash_meta_time', '1534697933'),
(2653, 92, '_wp_trash_meta_status', 'publish'),
(2654, 92, '_wp_trash_meta_time', '1534697957'),
(2655, 93, 'ml-slider_settings', 'a:36:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:4:\"1300\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";s:2:\"30\";s:7:\"opacity\";s:1:\"0\";s:10:\"titleSpeed\";s:3:\"500\";s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:16:\"firstSlideFadeIn\";s:4:\"true\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:5:\"false\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(2656, 94, '_thumbnail_id', '34'),
(2657, 94, 'ml-slider_type', 'image'),
(2658, 94, 'ml-slider_inherit_image_caption', '1'),
(2659, 94, 'ml-slider_inherit_image_title', '1'),
(2660, 94, 'ml-slider_inherit_image_alt', '1'),
(2661, 95, '_thumbnail_id', '12'),
(2662, 95, 'ml-slider_type', 'image'),
(2663, 95, 'ml-slider_inherit_image_caption', '1'),
(2664, 95, 'ml-slider_inherit_image_title', '1'),
(2665, 95, 'ml-slider_inherit_image_alt', '1'),
(2666, 96, '_thumbnail_id', '59'),
(2667, 96, 'ml-slider_type', 'image'),
(2668, 96, 'ml-slider_inherit_image_caption', '1'),
(2669, 96, 'ml-slider_inherit_image_title', '1'),
(2670, 96, 'ml-slider_inherit_image_alt', '1'),
(2671, 34, '_wp_attachment_backup_sizes', 'a:12:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-700x300.jpg\";s:4:\"file\";s:16:\"red2-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-620x266.jpg\";s:4:\"file\";s:16:\"red2-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-400x171.jpg\";s:4:\"file\";s:16:\"red2-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x280\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-700x280.jpg\";s:4:\"file\";s:16:\"red2-700x280.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x248\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-620x248.jpg\";s:4:\"file\";s:16:\"red2-620x248.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x160\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-400x160.jpg\";s:4:\"file\";s:16:\"red2-400x160.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x190\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-700x190.jpg\";s:4:\"file\";s:16:\"red2-700x190.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x168\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-620x168.jpg\";s:4:\"file\";s:16:\"red2-620x168.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x109\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-400x109.jpg\";s:4:\"file\";s:16:\"red2-400x109.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x147\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-700x147.jpg\";s:4:\"file\";s:16:\"red2-700x147.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x130\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-620x130.jpg\";s:4:\"file\";s:16:\"red2-620x130.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-400x84\";a:5:{s:4:\"path\";s:69:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/red2-400x84.jpg\";s:4:\"file\";s:15:\"red2-400x84.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2672, 12, '_wp_attachment_backup_sizes', 'a:12:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-700x300.jpg\";s:4:\"file\";s:17:\"black-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-620x266.jpg\";s:4:\"file\";s:17:\"black-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-400x171.jpg\";s:4:\"file\";s:17:\"black-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x280\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-700x280.jpg\";s:4:\"file\";s:17:\"black-700x280.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x248\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-620x248.jpg\";s:4:\"file\";s:17:\"black-620x248.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x160\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-400x160.jpg\";s:4:\"file\";s:17:\"black-400x160.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x190\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-700x190.jpg\";s:4:\"file\";s:17:\"black-700x190.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x168\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-620x168.jpg\";s:4:\"file\";s:17:\"black-620x168.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x109\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-400x109.jpg\";s:4:\"file\";s:17:\"black-400x109.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x147\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-700x147.jpg\";s:4:\"file\";s:17:\"black-700x147.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x130\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-620x130.jpg\";s:4:\"file\";s:17:\"black-620x130.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-400x84\";a:5:{s:4:\"path\";s:70:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/black-400x84.jpg\";s:4:\"file\";s:16:\"black-400x84.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(2673, 59, '_wp_attachment_backup_sizes', 'a:12:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:98:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-700x300.jpg\";s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:98:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-620x266.jpg\";s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:98:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-400x171.jpg\";s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-750x300\";a:5:{s:4:\"path\";s:98:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-750x300.jpg\";s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-750x300.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x248\";a:5:{s:4:\"path\";s:98:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-620x248.jpg\";s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-620x248.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:248;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x160\";a:5:{s:4:\"path\";s:98:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-400x160.jpg\";s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-400x160.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1100x300\";a:5:{s:4:\"path\";s:99:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-1100x300.jpg\";s:4:\"file\";s:45:\"a2268c1ebcdb4831104ebc3cb7907a84-1100x300.jpg\";s:5:\"width\";i:1100;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x169\";a:5:{s:4:\"path\";s:98:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-620x169.jpg\";s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-620x169.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x109\";a:5:{s:4:\"path\";s:98:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-400x109.jpg\";s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-400x109.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x252\";a:5:{s:4:\"path\";s:99:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-1200x252.jpg\";s:4:\"file\";s:45:\"a2268c1ebcdb4831104ebc3cb7907a84-1200x252.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x130\";a:5:{s:4:\"path\";s:98:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-620x130.jpg\";s:4:\"file\";s:44:\"a2268c1ebcdb4831104ebc3cb7907a84-620x130.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resized-400x84\";a:5:{s:4:\"path\";s:97:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84-400x84.jpg\";s:4:\"file\";s:43:\"a2268c1ebcdb4831104ebc3cb7907a84-400x84.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(2674, 94, 'ml-slider_crop_position', 'center-center'),
(2675, 94, '_wp_attachment_image_alt', ''),
(2676, 95, 'ml-slider_crop_position', 'center-center'),
(2677, 95, '_wp_attachment_image_alt', ''),
(2678, 96, 'ml-slider_crop_position', 'center-center'),
(2679, 96, '_wp_attachment_image_alt', ''),
(2680, 94, '_wp_desired_post_slug', 'slider-93-image'),
(2681, 95, '_wp_desired_post_slug', 'slider-93-image-2'),
(2682, 96, '_wp_desired_post_slug', 'slider-93-image-3'),
(2690, 100, 'ml-slider_type', 'image'),
(2691, 100, 'ml-slider_inherit_image_caption', '1'),
(2692, 100, 'ml-slider_inherit_image_title', '1'),
(2693, 100, 'ml-slider_inherit_image_alt', '1'),
(2695, 101, 'ml-slider_type', 'image'),
(2696, 101, 'ml-slider_inherit_image_caption', '1'),
(2697, 101, 'ml-slider_inherit_image_title', '1'),
(2698, 101, 'ml-slider_inherit_image_alt', '1'),
(2700, 102, 'ml-slider_type', 'image'),
(2701, 102, 'ml-slider_inherit_image_caption', '1'),
(2702, 102, 'ml-slider_inherit_image_title', '1'),
(2703, 102, 'ml-slider_inherit_image_alt', '1'),
(2707, 100, 'ml-slider_crop_position', 'center-center'),
(2708, 100, '_wp_attachment_image_alt', ''),
(2709, 101, 'ml-slider_crop_position', 'center-center'),
(2710, 101, '_wp_attachment_image_alt', ''),
(2711, 102, 'ml-slider_crop_position', 'center-center'),
(2712, 102, '_wp_attachment_image_alt', ''),
(2713, 100, '_wp_desired_post_slug', 'slider-93-image'),
(2714, 101, '_wp_desired_post_slug', 'slider-93-image-2'),
(2715, 102, '_wp_desired_post_slug', 'slider-93-image-3'),
(2723, 106, 'ml-slider_type', 'image'),
(2724, 106, 'ml-slider_inherit_image_caption', ''),
(2725, 106, 'ml-slider_inherit_image_title', '1'),
(2726, 106, 'ml-slider_inherit_image_alt', '1'),
(2728, 107, 'ml-slider_type', 'image'),
(2729, 107, 'ml-slider_inherit_image_caption', '1'),
(2730, 107, 'ml-slider_inherit_image_title', '1'),
(2731, 107, 'ml-slider_inherit_image_alt', '1'),
(2733, 108, 'ml-slider_type', 'image'),
(2734, 108, 'ml-slider_inherit_image_caption', '1'),
(2735, 108, 'ml-slider_inherit_image_title', '1'),
(2736, 108, 'ml-slider_inherit_image_alt', '1'),
(2740, 106, 'ml-slider_crop_position', 'center-center'),
(2741, 106, '_wp_attachment_image_alt', ''),
(2742, 107, 'ml-slider_crop_position', 'center-center'),
(2743, 107, '_wp_attachment_image_alt', ''),
(2744, 108, 'ml-slider_crop_position', 'center-center'),
(2745, 108, '_wp_attachment_image_alt', ''),
(2746, 106, '_wp_desired_post_slug', 'slider-93-image'),
(2747, 108, '_wp_desired_post_slug', 'slider-93-image-3'),
(2748, 107, '_wp_desired_post_slug', 'slider-93-image-2'),
(2749, 109, '_wp_attached_file', '2018/08/test2.jpg'),
(2750, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2018/08/test2.jpg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"test2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"test2-300x69.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"test2-768x177.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"test2-1024x236.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:236;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"test2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"test2-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"test2-350x81.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:81;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"test2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"test2-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"test2-350x81.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:81;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"test2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-853x300\";a:4:{s:4:\"file\";s:17:\"test2-853x300.jpg\";s:5:\"width\";i:853;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x218\";a:4:{s:4:\"file\";s:17:\"test2-620x218.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x141\";a:4:{s:4:\"file\";s:17:\"test2-400x141.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2751, 110, '_wp_attached_file', '2018/08/test3.jpg'),
(2752, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2018/08/test3.jpg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"test3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"test3-300x69.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"test3-768x177.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"test3-1024x236.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:236;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"test3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"test3-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"test3-350x81.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:81;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"test3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"test3-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"test3-350x81.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:81;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"test3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-853x300\";a:4:{s:4:\"file\";s:17:\"test3-853x300.jpg\";s:5:\"width\";i:853;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x218\";a:4:{s:4:\"file\";s:17:\"test3-620x218.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x141\";a:4:{s:4:\"file\";s:17:\"test3-400x141.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2753, 111, '_wp_attached_file', '2018/08/test4.png'),
(2754, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2018/08/test4.png\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"test4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"test4-300x69.png\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"test4-768x177.png\";s:5:\"width\";i:768;s:6:\"height\";i:177;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"test4-1024x236.png\";s:5:\"width\";i:1024;s:6:\"height\";i:236;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"test4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"test4-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"test4-350x81.png\";s:5:\"width\";i:350;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"test4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"test4-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"test4-350x81.png\";s:5:\"width\";i:350;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"test4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-853x300\";a:4:{s:4:\"file\";s:17:\"test4-853x300.png\";s:5:\"width\";i:853;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-620x218\";a:4:{s:4:\"file\";s:17:\"test4-620x218.png\";s:5:\"width\";i:620;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-400x141\";a:4:{s:4:\"file\";s:17:\"test4-400x141.png\";s:5:\"width\";i:400;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2755, 112, '_thumbnail_id', '109'),
(2756, 112, 'ml-slider_type', 'image'),
(2757, 112, 'ml-slider_inherit_image_caption', '1'),
(2758, 112, 'ml-slider_inherit_image_title', '1'),
(2759, 112, 'ml-slider_inherit_image_alt', '1'),
(2760, 113, '_thumbnail_id', '110'),
(2761, 113, 'ml-slider_type', 'image'),
(2762, 113, 'ml-slider_inherit_image_caption', '1'),
(2763, 113, 'ml-slider_inherit_image_title', '1'),
(2764, 113, 'ml-slider_inherit_image_alt', '1'),
(2765, 114, '_thumbnail_id', '111'),
(2766, 114, 'ml-slider_type', 'image'),
(2767, 114, 'ml-slider_inherit_image_caption', '1'),
(2768, 114, 'ml-slider_inherit_image_title', '1'),
(2769, 114, 'ml-slider_inherit_image_alt', '1'),
(2770, 109, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-853x300\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/test2-853x300.jpg\";s:4:\"file\";s:17:\"test2-853x300.jpg\";s:5:\"width\";i:853;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x218\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/test2-620x218.jpg\";s:4:\"file\";s:17:\"test2-620x218.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x141\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/test2-400x141.jpg\";s:4:\"file\";s:17:\"test2-400x141.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(2771, 110, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-853x300\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/test3-853x300.jpg\";s:4:\"file\";s:17:\"test3-853x300.jpg\";s:5:\"width\";i:853;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x218\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/test3-620x218.jpg\";s:4:\"file\";s:17:\"test3-620x218.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x141\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/test3-400x141.jpg\";s:4:\"file\";s:17:\"test3-400x141.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(2772, 111, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-853x300\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/test4-853x300.png\";s:4:\"file\";s:17:\"test4-853x300.png\";s:5:\"width\";i:853;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-620x218\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/test4-620x218.png\";s:4:\"file\";s:17:\"test4-620x218.png\";s:5:\"width\";i:620;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"resized-400x141\";a:5:{s:4:\"path\";s:71:\"C:OpenServerdomainsillusix/wp-content/uploads/2018/08/test4-400x141.png\";s:4:\"file\";s:17:\"test4-400x141.png\";s:5:\"width\";i:400;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(2773, 112, '_wp_desired_post_slug', 'slider-93-image'),
(2774, 115, '_thumbnail_id', '109'),
(2775, 115, 'ml-slider_type', 'image'),
(2776, 115, 'ml-slider_inherit_image_caption', '1'),
(2777, 115, 'ml-slider_inherit_image_title', '1'),
(2778, 115, 'ml-slider_inherit_image_alt', '1'),
(2779, 112, 'ml-slider_crop_position', 'center-center'),
(2780, 112, '_wp_attachment_image_alt', ''),
(2781, 113, 'ml-slider_crop_position', 'center-center'),
(2782, 113, '_wp_attachment_image_alt', ''),
(2783, 114, 'ml-slider_crop_position', 'center-center'),
(2784, 114, '_wp_attachment_image_alt', ''),
(2785, 115, 'ml-slider_crop_position', 'center-center'),
(2786, 115, '_wp_attachment_image_alt', ''),
(2787, 2, '_edit_lock', '1534707647:1'),
(2788, 116, '_edit_last', '1'),
(2789, 116, '_edit_lock', '1534712074:1'),
(2790, 118, '_menu_item_type', 'post_type'),
(2791, 118, '_menu_item_menu_item_parent', '0'),
(2792, 118, '_menu_item_object_id', '116'),
(2793, 118, '_menu_item_object', 'page'),
(2794, 118, '_menu_item_target', ''),
(2795, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2796, 118, '_menu_item_xfn', ''),
(2797, 118, '_menu_item_url', ''),
(2799, 119, '_menu_item_type', 'post_type'),
(2800, 119, '_menu_item_menu_item_parent', '0'),
(2801, 119, '_menu_item_object_id', '6'),
(2802, 119, '_menu_item_object', 'page'),
(2803, 119, '_menu_item_target', ''),
(2804, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2805, 119, '_menu_item_xfn', ''),
(2806, 119, '_menu_item_url', ''),
(2808, 120, '_edit_last', '1'),
(2809, 120, '_edit_lock', '1534707874:1'),
(2819, 123, '_menu_item_type', 'custom'),
(2820, 123, '_menu_item_menu_item_parent', '0'),
(2821, 123, '_menu_item_object_id', '123'),
(2822, 123, '_menu_item_object', 'custom'),
(2823, 123, '_menu_item_target', ''),
(2824, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2825, 123, '_menu_item_xfn', ''),
(2826, 123, '_menu_item_url', 'http://illusix/'),
(2828, 120, '_wp_trash_meta_status', 'publish'),
(2829, 120, '_wp_trash_meta_time', '1534708140'),
(2830, 120, '_wp_desired_post_slug', 'home'),
(2831, 116, '_wp_page_template', 'page-sale.php'),
(2832, 124, '_wc_review_count', '0'),
(2833, 124, '_wc_rating_count', 'a:0:{}'),
(2834, 124, '_wc_average_rating', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-19 11:31:19', '2018-08-19 08:31:19', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2018-08-19 18:28:08', '2018-08-19 15:28:08', '', 0, 'http://illusix/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-19 11:31:19', '2018-08-19 08:31:19', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://illusix/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-08-19 11:31:19', '2018-08-19 08:31:19', '', 0, 'http://illusix/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-19 11:31:19', '2018-08-19 08:31:19', '<h2>Кто мы</h2><p>Наш адрес сайта: http://illusix.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-19 11:31:19', '2018-08-19 08:31:19', '', 0, 'http://illusix/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-08-19 11:31:33', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-19 11:31:33', '0000-00-00 00:00:00', '', 0, 'http://illusix/?p=4', 0, 'post', '', 0),
(5, 1, '2018-08-19 12:13:01', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-19 12:13:01', '0000-00-00 00:00:00', '', 0, 'http://illusix/?p=5', 0, 'post', '', 0),
(6, 1, '2018-08-19 12:15:38', '2018-08-19 09:15:38', '', 'Магазин', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-08-19 12:15:38', '2018-08-19 09:15:38', '', 0, 'http://illusix/shop/', 0, 'page', '', 0),
(7, 1, '2018-08-19 12:15:38', '2018-08-19 09:15:38', '[woocommerce_cart]', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-08-19 12:15:38', '2018-08-19 09:15:38', '', 0, 'http://illusix/cart/', 0, 'page', '', 0),
(8, 1, '2018-08-19 12:15:38', '2018-08-19 09:15:38', '[woocommerce_checkout]', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-08-19 12:15:38', '2018-08-19 09:15:38', '', 0, 'http://illusix/checkout/', 0, 'page', '', 0),
(9, 1, '2018-08-19 12:15:38', '2018-08-19 09:15:38', '[woocommerce_my_account]', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-08-19 12:15:38', '2018-08-19 09:15:38', '', 0, 'http://illusix/my-account/', 0, 'page', '', 0),
(10, 1, '2018-08-19 12:18:05', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-08-19 12:18:05', '0000-00-00 00:00:00', '', 0, 'http://illusix/?post_type=product&p=10', 0, 'product', '', 0),
(11, 1, '2018-08-19 13:23:59', '2018-08-19 10:23:59', '<div>Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:</div>', 'Шорты 1', '<div>Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:</div>', 'publish', 'open', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-%d0%b6%d0%b5%d0%bd%d1%81%d0%ba%d0%b8%d0%b5', '', '', '2018-08-19 17:22:44', '2018-08-19 14:22:44', '', 0, 'http://illusix/?post_type=product&#038;p=11', 0, 'product', '', 0),
(12, 1, '2018-08-19 13:22:40', '2018-08-19 10:22:40', '', 'black', '', 'inherit', 'open', 'closed', '', 'black', '', '', '2018-08-19 13:22:40', '2018-08-19 10:22:40', '', 11, 'http://illusix/wp-content/uploads/2018/08/black.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-08-19 13:23:06', '2018-08-19 10:23:06', '', 'Шорты 1 - Black, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-%d0%b6%d0%b5%d0%bd%d1%81%d0%ba%d0%b8%d0%b5-x-black', '', '', '2018-08-19 17:22:44', '2018-08-19 14:22:44', '', 11, 'http://illusix/?post_type=product&p=11', 1, 'product_variation', '', 0),
(14, 1, '2018-08-19 14:07:36', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-08-19 14:07:36', '0000-00-00 00:00:00', '', 0, 'http://illusix/?post_type=product&p=14', 0, 'product', '', 0),
(15, 1, '2018-08-19 14:16:29', '2018-08-19 11:16:29', '<div>Отличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:</div>', 'Шорты 2', '<div>\r\n\r\nОтличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n\r\n</div>', 'publish', 'open', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-2', '', '', '2018-08-19 15:07:35', '2018-08-19 12:07:35', '', 0, 'http://illusix/?post_type=product&#038;p=15', 0, 'product', '', 0),
(16, 1, '2018-08-19 14:13:00', '2018-08-19 11:13:00', '', 'white', '', 'inherit', 'open', 'closed', '', 'white', '', '', '2018-08-19 14:13:00', '2018-08-19 11:13:00', '', 15, 'http://illusix/wp-content/uploads/2018/08/white.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-08-19 14:13:30', '2018-08-19 11:13:30', '', 'Шорты 2', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-2', '', '', '2018-08-19 14:14:19', '2018-08-19 11:14:19', '', 15, 'http://illusix/?post_type=product&#038;p=15', 0, 'product_variation', '', 0),
(18, 1, '2018-08-19 14:22:09', '2018-08-19 11:22:09', '<div>\r\n\r\nОтличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n\r\n</div>', 'Шорты 3', '<div>\r\n\r\nОтличные зимние шорты предлагает компания Hermes. Они короткие, но очень теплые. Хорошо смотрятся на красивых ногах, подойдут даже к спортивному стилю:\r\n\r\n</div>', 'publish', 'open', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-3', '', '', '2018-08-19 14:25:43', '2018-08-19 11:25:43', '', 0, 'http://illusix/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2018-08-19 14:20:29', '2018-08-19 11:20:29', '', 'red', '', 'inherit', 'open', 'closed', '', 'red', '', '', '2018-08-19 14:20:29', '2018-08-19 11:20:29', '', 18, 'http://illusix/wp-content/uploads/2018/08/red.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-08-19 14:24:28', '2018-08-19 11:24:28', '', 'Шорты 3', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-3', '', '', '2018-08-19 14:25:38', '2018-08-19 11:25:38', '', 18, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-3/', 0, 'product_variation', '', 0),
(21, 1, '2018-08-19 14:32:07', '2018-08-19 11:32:07', '', 'Шорты 4', '', 'publish', 'open', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4', '', '', '2018-08-19 17:20:37', '2018-08-19 14:20:37', '', 0, 'http://illusix/?post_type=product&#038;p=21', 0, 'product', '', 0),
(22, 1, '2018-08-19 14:28:06', '2018-08-19 11:28:06', '', 'Шорты 4 - Black, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-x-black', '', '', '2018-08-19 17:20:37', '2018-08-19 14:20:37', '', 21, 'http://illusix/?post_type=product&p=21', 1, 'product_variation', '', 0),
(23, 1, '2018-08-19 14:28:06', '2018-08-19 11:28:06', '', 'Шорты 4 - Black, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-xl-black', '', '', '2018-08-19 14:31:17', '2018-08-19 11:31:17', '', 21, 'http://illusix/?post_type=product&p=21', 2, 'product_variation', '', 0),
(24, 1, '2018-08-19 14:28:06', '2018-08-19 11:28:06', '', 'Шорты 4 - Black, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-xxl-black', '', '', '2018-08-19 14:31:17', '2018-08-19 11:31:17', '', 21, 'http://illusix/?post_type=product&p=21', 3, 'product_variation', '', 0),
(25, 1, '2018-08-19 14:28:06', '2018-08-19 11:28:06', '', 'Шорты 4 - Orange, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-x-orange', '', '', '2018-08-19 14:31:18', '2018-08-19 11:31:18', '', 21, 'http://illusix/?post_type=product&p=21', 4, 'product_variation', '', 0),
(26, 1, '2018-08-19 14:28:07', '2018-08-19 11:28:07', '', 'Шорты 4 - Orange, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-xl-orange', '', '', '2018-08-19 14:31:18', '2018-08-19 11:31:18', '', 21, 'http://illusix/?post_type=product&p=21', 5, 'product_variation', '', 0),
(27, 1, '2018-08-19 14:28:07', '2018-08-19 11:28:07', '', 'Шорты 4 - Orange, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-xxl-orange', '', '', '2018-08-19 14:31:18', '2018-08-19 11:31:18', '', 21, 'http://illusix/?post_type=product&p=21', 6, 'product_variation', '', 0),
(28, 1, '2018-08-19 14:28:07', '2018-08-19 11:28:07', '', 'Шорты 4 - Red, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-x-red', '', '', '2018-08-19 14:31:18', '2018-08-19 11:31:18', '', 21, 'http://illusix/?post_type=product&p=21', 7, 'product_variation', '', 0),
(29, 1, '2018-08-19 14:28:07', '2018-08-19 11:28:07', '', 'Шорты 4 - Red, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-xl-red', '', '', '2018-08-19 14:31:18', '2018-08-19 11:31:18', '', 21, 'http://illusix/?post_type=product&p=21', 8, 'product_variation', '', 0),
(30, 1, '2018-08-19 14:28:08', '2018-08-19 11:28:08', '', 'Шорты 4 - Red, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-xxl-red', '', '', '2018-08-19 14:31:18', '2018-08-19 11:31:18', '', 21, 'http://illusix/?post_type=product&p=21', 9, 'product_variation', '', 0),
(31, 1, '2018-08-19 14:28:08', '2018-08-19 11:28:08', '', 'Шорты 4 - White, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-x-white', '', '', '2018-08-19 14:31:19', '2018-08-19 11:31:19', '', 21, 'http://illusix/?post_type=product&p=21', 10, 'product_variation', '', 0),
(32, 1, '2018-08-19 14:28:08', '2018-08-19 11:28:08', '', 'Шорты 4 - White, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-xl-white', '', '', '2018-08-19 14:31:19', '2018-08-19 11:31:19', '', 21, 'http://illusix/?post_type=product&p=21', 11, 'product_variation', '', 0),
(33, 1, '2018-08-19 14:28:09', '2018-08-19 11:28:09', '', 'Шорты 4 - White, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-4-xxl-white', '', '', '2018-08-19 14:31:19', '2018-08-19 11:31:19', '', 21, 'http://illusix/?post_type=product&p=21', 12, 'product_variation', '', 0),
(34, 1, '2018-08-19 14:28:48', '2018-08-19 11:28:48', '', 'red2', '', 'inherit', 'open', 'closed', '', 'red2', '', '', '2018-08-19 14:28:48', '2018-08-19 11:28:48', '', 21, 'http://illusix/wp-content/uploads/2018/08/red2.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-08-19 15:05:18', '2018-08-19 12:05:18', '', 'Шорты 5', '', 'publish', 'open', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-5', '', '', '2018-08-19 15:05:18', '2018-08-19 12:05:18', '', 0, 'http://illusix/?post_type=product&#038;p=35', 0, 'product', '', 0),
(37, 1, '2018-08-19 14:56:45', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-08-19 14:56:45', '0000-00-00 00:00:00', '', 0, 'http://illusix/?post_type=product&p=37', 0, 'product', '', 0),
(50, 1, '2018-08-19 15:01:03', '2018-08-19 12:01:03', '', 'Шорты 5 - Black, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-5', '', '', '2018-08-19 15:04:31', '2018-08-19 12:04:31', '', 35, 'http://illusix/?post_type=product&#038;p=35', 0, 'product_variation', '', 0),
(51, 1, '2018-08-19 15:02:06', '2018-08-19 12:02:06', '', 'Шорты 5 - Red, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-5-2', '', '', '2018-08-19 15:04:31', '2018-08-19 12:04:31', '', 35, 'http://illusix/?post_type=product&#038;p=35', 0, 'product_variation', '', 0),
(52, 1, '2018-08-19 15:02:52', '2018-08-19 12:02:52', '', 'Шорты 5 - Black, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-5-3', '', '', '2018-08-19 15:04:31', '2018-08-19 12:04:31', '', 35, 'http://illusix/?post_type=product&#038;p=35', 0, 'product_variation', '', 0),
(53, 1, '2018-08-19 15:02:55', '2018-08-19 12:02:55', '', 'Шорты 5 - Red, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-5-4', '', '', '2018-08-19 15:04:32', '2018-08-19 12:04:32', '', 35, 'http://illusix/?post_type=product&#038;p=35', 0, 'product_variation', '', 0),
(54, 1, '2018-08-19 15:11:33', '2018-08-19 12:11:33', '', 'Шорты 6', '', 'publish', 'open', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-6', '', '', '2018-08-19 15:13:03', '2018-08-19 12:13:03', '', 0, 'http://illusix/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2018-08-19 15:09:30', '2018-08-19 12:09:30', '', 'Шорты 6 - White, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-6', '', '', '2018-08-19 15:11:24', '2018-08-19 12:11:24', '', 54, 'http://illusix/?post_type=product&#038;p=54', 0, 'product_variation', '', 0),
(56, 1, '2018-08-19 15:09:46', '2018-08-19 12:09:46', '', 'Шорты 6 - Black, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-6-2', '', '', '2018-08-19 15:11:24', '2018-08-19 12:11:24', '', 54, 'http://illusix/?post_type=product&#038;p=54', 0, 'product_variation', '', 0),
(57, 1, '2018-08-19 15:09:48', '2018-08-19 12:09:48', '', 'Шорты 6 - White, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-6-3', '', '', '2018-08-19 15:11:24', '2018-08-19 12:11:24', '', 54, 'http://illusix/?post_type=product&#038;p=54', 0, 'product_variation', '', 0),
(58, 1, '2018-08-19 15:09:53', '2018-08-19 12:09:53', '', 'Шорты 6 - Black, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-6-4', '', '', '2018-08-19 15:11:24', '2018-08-19 12:11:24', '', 54, 'http://illusix/?post_type=product&#038;p=54', 0, 'product_variation', '', 0),
(59, 1, '2018-08-19 15:12:44', '2018-08-19 12:12:44', '', '', '', 'inherit', 'open', 'closed', '', 'a2268c1ebcdb4831104ebc3cb7907a84', '', '', '2018-08-19 15:12:57', '2018-08-19 12:12:57', '', 54, 'http://illusix/wp-content/uploads/2018/08/a2268c1ebcdb4831104ebc3cb7907a84.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-08-19 15:21:57', '2018-08-19 12:21:57', '', 'Шорты 7', '', 'publish', 'open', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7', '', '', '2018-08-19 15:21:58', '2018-08-19 12:21:58', '', 0, 'http://illusix/?post_type=product&#038;p=60', 0, 'product', '', 0),
(61, 1, '2018-08-19 15:15:58', '2018-08-19 12:15:58', '', 'Шорты 7 - Black, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-x-black', '', '', '2018-08-19 15:21:48', '2018-08-19 12:21:48', '', 60, 'http://illusix/?post_type=product&p=60', 1, 'product_variation', '', 0),
(62, 1, '2018-08-19 15:15:58', '2018-08-19 12:15:58', '', 'Шорты 7 - Orange, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-xl-black', '', '', '2018-08-19 15:21:48', '2018-08-19 12:21:48', '', 60, 'http://illusix/?post_type=product&#038;p=60', 2, 'product_variation', '', 0),
(63, 1, '2018-08-19 15:15:58', '2018-08-19 12:15:58', '', 'Шорты 7 - Red, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-xxl-black', '', '', '2018-08-19 15:21:48', '2018-08-19 12:21:48', '', 60, 'http://illusix/?post_type=product&#038;p=60', 3, 'product_variation', '', 0),
(64, 1, '2018-08-19 15:15:58', '2018-08-19 12:15:58', '', 'Шорты 7 - White, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-x-orange', '', '', '2018-08-19 15:21:48', '2018-08-19 12:21:48', '', 60, 'http://illusix/?post_type=product&#038;p=60', 4, 'product_variation', '', 0),
(65, 1, '2018-08-19 15:15:59', '2018-08-19 12:15:59', '', 'Шорты 7 - Black, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-xl-orange', '', '', '2018-08-19 15:21:48', '2018-08-19 12:21:48', '', 60, 'http://illusix/?post_type=product&#038;p=60', 5, 'product_variation', '', 0),
(66, 1, '2018-08-19 15:15:59', '2018-08-19 12:15:59', '', 'Шорты 7 - Orange, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-xxl-orange', '', '', '2018-08-19 15:21:48', '2018-08-19 12:21:48', '', 60, 'http://illusix/?post_type=product&#038;p=60', 6, 'product_variation', '', 0),
(67, 1, '2018-08-19 15:15:59', '2018-08-19 12:15:59', '', 'Шорты 7 - Red, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-x-red', '', '', '2018-08-19 15:21:48', '2018-08-19 12:21:48', '', 60, 'http://illusix/?post_type=product&#038;p=60', 7, 'product_variation', '', 0),
(68, 1, '2018-08-19 15:15:59', '2018-08-19 12:15:59', '', 'Шорты 7 - White, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-xl-red', '', '', '2018-08-19 15:21:48', '2018-08-19 12:21:48', '', 60, 'http://illusix/?post_type=product&#038;p=60', 8, 'product_variation', '', 0),
(69, 1, '2018-08-19 15:16:00', '2018-08-19 12:16:00', '', 'Шорты 7 - Black, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-xxl-red', '', '', '2018-08-19 15:21:49', '2018-08-19 12:21:49', '', 60, 'http://illusix/?post_type=product&#038;p=60', 9, 'product_variation', '', 0),
(70, 1, '2018-08-19 15:16:00', '2018-08-19 12:16:00', '', 'Шорты 7 - Orange, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-x-white', '', '', '2018-08-19 15:21:49', '2018-08-19 12:21:49', '', 60, 'http://illusix/?post_type=product&#038;p=60', 10, 'product_variation', '', 0),
(71, 1, '2018-08-19 15:16:00', '2018-08-19 12:16:00', '', 'Шорты 7 - Red, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-xl-white', '', '', '2018-08-19 15:21:49', '2018-08-19 12:21:49', '', 60, 'http://illusix/?post_type=product&#038;p=60', 11, 'product_variation', '', 0),
(72, 1, '2018-08-19 15:16:00', '2018-08-19 12:16:00', '', 'Шорты 7 - White, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-7-xxl-white', '', '', '2018-08-19 15:21:49', '2018-08-19 12:21:49', '', 60, 'http://illusix/?post_type=product&p=60', 12, 'product_variation', '', 0),
(73, 1, '2018-08-19 15:23:02', '2018-08-19 12:23:02', '', 'Шорты 8', '', 'publish', 'open', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-8', '', '', '2018-08-19 15:38:45', '2018-08-19 12:38:45', '', 0, 'http://illusix/?post_type=product&#038;p=73', 0, 'product', '', 0),
(74, 1, '2018-08-19 15:23:26', '2018-08-19 12:23:26', '', 'Шорты 9', '', 'publish', 'open', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-9', '', '', '2018-08-19 15:35:23', '2018-08-19 12:35:23', '', 0, 'http://illusix/?post_type=product&#038;p=74', 0, 'product', '', 0),
(75, 1, '2018-08-19 15:24:16', '2018-08-19 12:24:16', '', 'Шорты 10', '', 'trash', 'open', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-10__trashed', '', '', '2018-08-19 15:28:34', '2018-08-19 12:28:34', '', 0, 'http://illusix/?post_type=product&#038;p=75', 0, 'product', '', 0),
(76, 1, '2018-08-19 15:29:13', '2018-08-19 12:29:13', '', 'Шорты 10', '', 'publish', 'open', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-10', '', '', '2018-08-19 15:32:14', '2018-08-19 12:32:14', '', 0, 'http://illusix/?post_type=product&#038;p=76', 0, 'product', '', 0),
(77, 1, '2018-08-19 15:30:51', '2018-08-19 12:30:51', '', 'Шорты 10 - White, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-10', '', '', '2018-08-19 15:32:11', '2018-08-19 12:32:11', '', 76, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-10/', 0, 'product_variation', '', 0),
(78, 1, '2018-08-19 15:30:55', '2018-08-19 12:30:55', '', 'Шорты 10 - Black, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-10-2', '', '', '2018-08-19 15:32:11', '2018-08-19 12:32:11', '', 76, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-10/', 0, 'product_variation', '', 0),
(79, 1, '2018-08-19 15:30:59', '2018-08-19 12:30:59', '', 'Шорты 10 - White, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-10-3', '', '', '2018-08-19 15:32:11', '2018-08-19 12:32:11', '', 76, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-10/', 0, 'product_variation', '', 0),
(80, 1, '2018-08-19 15:31:02', '2018-08-19 12:31:02', '', 'Шорты 10 - Black, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-10-4', '', '', '2018-08-19 15:32:12', '2018-08-19 12:32:12', '', 76, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-10/', 0, 'product_variation', '', 0),
(81, 1, '2018-08-19 15:34:08', '2018-08-19 12:34:08', '', 'Шорты 9 - Red, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-9', '', '', '2018-08-19 15:35:18', '2018-08-19 12:35:18', '', 74, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-9/', 0, 'product_variation', '', 0),
(82, 1, '2018-08-19 15:34:12', '2018-08-19 12:34:12', '', 'Шорты 9 - Orange, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-9-2', '', '', '2018-08-19 15:35:18', '2018-08-19 12:35:18', '', 74, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-9/', 0, 'product_variation', '', 0),
(83, 1, '2018-08-19 15:34:15', '2018-08-19 12:34:15', '', 'Шорты 9 - Red, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-9-3', '', '', '2018-08-19 15:35:18', '2018-08-19 12:35:18', '', 74, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-9/', 0, 'product_variation', '', 0),
(84, 1, '2018-08-19 15:34:25', '2018-08-19 12:34:25', '', 'Шорты 9 - Orange, XL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-9-4', '', '', '2018-08-19 15:35:18', '2018-08-19 12:35:18', '', 74, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-9/', 0, 'product_variation', '', 0),
(85, 1, '2018-08-19 15:36:32', '2018-08-19 12:36:32', '', 'Шорты 8 - White, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-8', '', '', '2018-08-19 15:38:21', '2018-08-19 12:38:21', '', 73, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-8/', 0, 'product_variation', '', 0),
(86, 1, '2018-08-19 15:36:36', '2018-08-19 12:36:36', '', 'Шорты 8 - Orange, XXL', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-8-2', '', '', '2018-08-19 15:38:21', '2018-08-19 12:38:21', '', 73, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-8/', 0, 'product_variation', '', 0),
(87, 1, '2018-08-19 15:36:39', '2018-08-19 12:36:39', '', 'Шорты 8 - White, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-8-3', '', '', '2018-08-19 15:38:21', '2018-08-19 12:38:21', '', 73, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-8/', 0, 'product_variation', '', 0),
(88, 1, '2018-08-19 15:36:42', '2018-08-19 12:36:42', '', 'Шорты 8 - Orange, X', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%be%d1%80%d1%82%d1%8b-8-4', '', '', '2018-08-19 15:38:21', '2018-08-19 12:38:21', '', 73, 'http://illusix/product/%d1%88%d0%be%d1%80%d1%82%d1%8b-8/', 0, 'product_variation', '', 0),
(89, 1, '2018-08-19 18:28:08', '2018-08-19 15:28:08', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-19 18:28:08', '2018-08-19 15:28:08', '', 1, 'http://illusix/2018/08/19/1-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-08-19 19:56:32', '2018-08-19 16:56:32', '{\n    \"woocommerce_default_catalog_orderby\": {\n        \"value\": \"price-desc\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-19 16:56:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '28b92fb5-75cc-4e18-821a-9467f2dee47b', '', '', '2018-08-19 19:56:32', '2018-08-19 16:56:32', '', 0, 'http://illusix/?p=90', 0, 'customize_changeset', '', 0),
(91, 1, '2018-08-19 19:58:53', '2018-08-19 16:58:53', '{\n    \"woocommerce_default_catalog_orderby\": {\n        \"value\": \"price\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-19 16:58:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '58dfef2a-433b-4069-84ea-6514211fa6e0', '', '', '2018-08-19 19:58:53', '2018-08-19 16:58:53', '', 0, 'http://illusix/?p=91', 0, 'customize_changeset', '', 0),
(92, 1, '2018-08-19 19:59:17', '2018-08-19 16:59:17', '{\n    \"woocommerce_default_catalog_orderby\": {\n        \"value\": \"price-desc\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-19 16:59:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e6ffe660-6643-4412-883b-3ed7c5c6265a', '', '', '2018-08-19 19:59:17', '2018-08-19 16:59:17', '', 0, 'http://illusix/2018/08/19/e6ffe660-6643-4412-883b-3ed7c5c6265a/', 0, 'customize_changeset', '', 0),
(93, 1, '2018-08-19 20:42:38', '2018-08-19 17:42:38', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2018-08-19 21:18:50', '2018-08-19 18:18:50', '', 0, 'http://illusix/?post_type=ml-slider&#038;p=93', 0, 'ml-slider', '', 0),
(94, 1, '2018-08-19 20:43:02', '2018-08-19 17:43:02', '', 'Slider 93 - image', '', 'trash', 'closed', 'closed', '', 'slider-93-image__trashed', '', '', '2018-08-19 20:47:31', '2018-08-19 17:47:31', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=94', 0, 'ml-slide', '', 0),
(95, 1, '2018-08-19 20:43:02', '2018-08-19 17:43:02', '', 'Slider 93 - image', '', 'trash', 'closed', 'closed', '', 'slider-93-image-2__trashed', '', '', '2018-08-19 20:47:35', '2018-08-19 17:47:35', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=95', 1, 'ml-slide', '', 0),
(96, 1, '2018-08-19 20:43:02', '2018-08-19 17:43:02', '', 'Slider 93 - image', '', 'trash', 'closed', 'closed', '', 'slider-93-image-3__trashed', '', '', '2018-08-19 20:47:39', '2018-08-19 17:47:39', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=96', 2, 'ml-slide', '', 0),
(100, 1, '2018-08-19 20:50:58', '2018-08-19 17:50:58', '', 'Slider 93 - image', '', 'trash', 'closed', 'closed', '', 'slider-93-image__trashed-2', '', '', '2018-08-19 20:52:15', '2018-08-19 17:52:15', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=100', 0, 'ml-slide', '', 0),
(101, 1, '2018-08-19 20:50:58', '2018-08-19 17:50:58', '', 'Slider 93 - image', '', 'trash', 'closed', 'closed', '', 'slider-93-image-2__trashed-2', '', '', '2018-08-19 20:52:20', '2018-08-19 17:52:20', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=101', 1, 'ml-slide', '', 0),
(102, 1, '2018-08-19 20:50:58', '2018-08-19 17:50:58', '', 'Slider 93 - image', '', 'trash', 'closed', 'closed', '', 'slider-93-image-3__trashed-2', '', '', '2018-08-19 20:52:21', '2018-08-19 17:52:21', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=102', 2, 'ml-slide', '', 0),
(106, 1, '2018-08-19 21:12:42', '2018-08-19 18:12:42', '', 'Slider 93 - image', '', 'trash', 'closed', 'closed', '', 'slider-93-image__trashed-3', '', '', '2018-08-19 21:18:50', '2018-08-19 18:18:50', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=106', 0, 'ml-slide', '', 0),
(107, 1, '2018-08-19 21:12:42', '2018-08-19 18:12:42', '', 'Slider 93 - image', '', 'trash', 'closed', 'closed', '', 'slider-93-image-2__trashed-3', '', '', '2018-08-19 21:18:50', '2018-08-19 18:18:50', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=107', 1, 'ml-slide', '', 0),
(108, 1, '2018-08-19 21:12:42', '2018-08-19 18:12:42', '', 'Slider 93 - image', '', 'trash', 'closed', 'closed', '', 'slider-93-image-3__trashed-3', '', '', '2018-08-19 21:18:50', '2018-08-19 18:18:50', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=108', 2, 'ml-slide', '', 0),
(109, 1, '2018-08-19 21:17:08', '2018-08-19 18:17:08', '', 'test2', '', 'inherit', 'open', 'closed', '', 'test2', '', '', '2018-08-19 21:17:08', '2018-08-19 18:17:08', '', 0, 'http://illusix/wp-content/uploads/2018/08/test2.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-08-19 21:17:10', '2018-08-19 18:17:10', '', 'test3', '', 'inherit', 'open', 'closed', '', 'test3', '', '', '2018-08-19 21:17:10', '2018-08-19 18:17:10', '', 0, 'http://illusix/wp-content/uploads/2018/08/test3.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2018-08-19 21:17:13', '2018-08-19 18:17:13', '', 'test4', '', 'inherit', 'open', 'closed', '', 'test4', '', '', '2018-08-19 21:17:13', '2018-08-19 18:17:13', '', 0, 'http://illusix/wp-content/uploads/2018/08/test4.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2018-08-19 21:17:30', '2018-08-19 18:17:30', '', 'Slider 93 - image', '', 'trash', 'closed', 'closed', '', 'slider-93-image__trashed-4', '', '', '2018-08-19 21:18:50', '2018-08-19 18:18:50', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=112', 3, 'ml-slide', '', 0),
(113, 1, '2018-08-19 21:17:30', '2018-08-19 18:17:30', '', 'Slider 93 - image', '', 'publish', 'closed', 'closed', '', 'slider-93-image-2', '', '', '2018-08-19 21:18:50', '2018-08-19 18:18:50', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=113', 4, 'ml-slide', '', 0),
(114, 1, '2018-08-19 21:17:30', '2018-08-19 18:17:30', '', 'Slider 93 - image', '', 'publish', 'closed', 'closed', '', 'slider-93-image-3', '', '', '2018-08-19 21:18:50', '2018-08-19 18:18:50', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=114', 5, 'ml-slide', '', 0),
(115, 1, '2018-08-19 21:18:04', '2018-08-19 18:18:04', '', 'Slider 93 - image', '', 'publish', 'closed', 'closed', '', 'slider-93-image', '', '', '2018-08-19 21:18:50', '2018-08-19 18:18:50', '', 0, 'http://illusix/?post_type=ml-slide&#038;p=115', 6, 'ml-slide', '', 0),
(116, 1, '2018-08-19 22:43:26', '2018-08-19 19:43:26', '', 'Sale', '', 'publish', 'closed', 'closed', '', 'sale', '', '', '2018-08-19 23:13:00', '2018-08-19 20:13:00', '', 0, 'http://illusix/?page_id=116', 0, 'page', '', 0),
(117, 1, '2018-08-19 22:43:26', '2018-08-19 19:43:26', '', 'Sale', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-08-19 22:43:26', '2018-08-19 19:43:26', '', 116, 'http://illusix/2018/08/19/116-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-08-19 22:45:35', '2018-08-19 19:45:35', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2018-08-19 22:48:37', '2018-08-19 19:48:37', '', 0, 'http://illusix/?p=118', 3, 'nav_menu_item', '', 0),
(119, 1, '2018-08-19 22:45:35', '2018-08-19 19:45:35', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2018-08-19 22:48:37', '2018-08-19 19:48:37', '', 0, 'http://illusix/?p=119', 2, 'nav_menu_item', '', 0),
(120, 1, '2018-08-19 22:46:43', '2018-08-19 19:46:43', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2018-08-19 22:49:01', '2018-08-19 19:49:01', '', 0, 'http://illusix/?page_id=120', 0, 'page', '', 0),
(121, 1, '2018-08-19 22:46:43', '2018-08-19 19:46:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2018-08-19 22:46:43', '2018-08-19 19:46:43', '', 120, 'http://illusix/2018/08/19/120-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-08-19 22:48:37', '2018-08-19 19:48:37', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-19 22:48:37', '2018-08-19 19:48:37', '', 0, 'http://illusix/?p=123', 1, 'nav_menu_item', '', 0),
(124, 1, '2018-08-20 02:06:28', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-08-20 02:06:28', '0000-00-00 00:00:00', '', 0, 'http://illusix/?post_type=product&p=124', 0, 'product', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order_pa_size', '0'),
(2, 17, 'order_pa_size', '0'),
(3, 18, 'order_pa_size', '0'),
(4, 19, 'order_pa_color', '0'),
(5, 20, 'order_pa_color', '0'),
(6, 21, 'order_pa_color', '0'),
(7, 22, 'order_pa_color', '0'),
(8, 15, 'product_count_product_cat', '10'),
(9, 15, 'display_type', ''),
(10, 15, 'thumbnail_id', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'shorts', 'shorts', 0),
(16, 'X', 'x', 0),
(17, 'XL', 'xl', 0),
(18, 'XXL', 'xxl', 0),
(19, 'Red', 'red', 0),
(20, 'Black', 'black', 0),
(21, 'Orange', 'orange', 0),
(22, 'White', 'white', 0),
(23, '93', '93', 0),
(24, 'main-menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 4, 0),
(11, 15, 0),
(11, 16, 0),
(11, 20, 0),
(15, 4, 0),
(15, 15, 0),
(15, 17, 0),
(15, 18, 0),
(15, 20, 0),
(15, 22, 0),
(18, 4, 0),
(18, 15, 0),
(18, 16, 0),
(18, 17, 0),
(18, 18, 0),
(18, 19, 0),
(18, 21, 0),
(18, 22, 0),
(21, 4, 0),
(21, 15, 0),
(21, 16, 0),
(21, 17, 0),
(21, 18, 0),
(21, 19, 0),
(21, 20, 0),
(21, 21, 0),
(21, 22, 0),
(35, 4, 0),
(35, 15, 0),
(35, 17, 0),
(35, 18, 0),
(35, 19, 0),
(35, 20, 0),
(54, 4, 0),
(54, 15, 0),
(54, 16, 0),
(54, 17, 0),
(54, 20, 0),
(54, 22, 0),
(60, 4, 0),
(60, 15, 0),
(60, 16, 0),
(60, 17, 0),
(60, 18, 0),
(60, 19, 0),
(60, 20, 0),
(60, 21, 0),
(60, 22, 0),
(73, 4, 0),
(73, 15, 0),
(73, 16, 0),
(73, 18, 0),
(73, 21, 0),
(73, 22, 0),
(74, 4, 0),
(74, 15, 0),
(74, 17, 0),
(74, 18, 0),
(74, 19, 0),
(74, 21, 0),
(75, 2, 0),
(75, 15, 0),
(76, 4, 0),
(76, 15, 0),
(76, 16, 0),
(76, 17, 0),
(76, 20, 0),
(76, 22, 0),
(94, 23, 0),
(95, 23, 0),
(96, 23, 0),
(100, 23, 0),
(101, 23, 0),
(102, 23, 0),
(106, 23, 0),
(107, 23, 0),
(108, 23, 0),
(112, 23, 0),
(113, 23, 0),
(114, 23, 0),
(115, 23, 0),
(118, 24, 0),
(119, 24, 0),
(123, 24, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 10),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 10),
(16, 16, 'pa_size', '', 0, 7),
(17, 17, 'pa_size', '', 0, 8),
(18, 18, 'pa_size', '', 0, 7),
(19, 19, 'pa_color', '', 0, 5),
(20, 20, 'pa_color', '', 0, 7),
(21, 21, 'pa_color', '', 0, 5),
(22, 22, 'pa_color', '', 0, 7),
(23, 23, 'ml-slider', '', 0, 3),
(24, 24, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'illusix'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"abf14fe76585fa19ca593a82e006fa1fa994b09a2f6eade7483484a05f8ce8ec\";a:4:{s:10:\"expiration\";i:1535877089;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:65:\"Mozilla/5.0 (Windows NT 6.3; rv:61.0) Gecko/20100101 Firefox/61.0\";s:5:\"login\";i:1534667489;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'jetpack_tracks_anon_id', 'jetpack:eID5+MVq67wEDMldYhU5hXQl'),
(20, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(21, 1, 'wc_last_active', '1534723200'),
(22, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:56:\"postcustom,woocommerce-product-data,,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'screen_layout_product', '2'),
(24, 1, 'wp_user-settings', 'libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1534674236'),
(26, 1, 'closedpostboxes_product', 'a:1:{i:0;s:24:\"woocommerce-product-data\";}'),
(27, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:2;s:7:\"slugdiv\";}'),
(28, 1, 'dismissed_no_secure_connection_notice', '1'),
(29, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(30, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}'),
(31, 1, 'nav_menu_recently_edited', '24'),
(32, 1, 'closedpostboxes_page', 'a:1:{i:0;s:12:\"postimagediv\";}'),
(33, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'illusix', '$P$Bi7qDqM3.eK70mrDUGMkG4nbRRIxg0.', 'illusix', 'alexkurgan19927@gmail.com', '', '2018-08-19 08:31:19', '', 0, 'illusix');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(2, 'color', 'Color', 'select', 'menu_order', 0),
(3, 'size', 'The Size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2, '1', 'a:9:{s:22:\"mailchimp_landing_site\";s:38:\"http://illusix/wp-admin/admin-ajax.php\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:715:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:1:\"*\";s:7:\"country\";s:2:\"UA\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:1:\"*\";s:16:\"shipping_country\";s:2:\"UA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:25:\"alexkurgan19927@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:0:\"\";}', 1534870626);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Украина', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'UA', 'country');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1189;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2835;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT для таблицы `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
