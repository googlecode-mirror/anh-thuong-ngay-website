-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 22, 2012 at 11:44 SA
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kenhthietkeweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE IF NOT EXISTS `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `action`
--


-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `intro_text` text COLLATE utf8_unicode_ci NOT NULL,
  `full_text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL,
  `language` int(11) NOT NULL DEFAULT '0',
  `catergory` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `user` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `hit` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `name`, `alias`, `intro_text`, `full_text`, `created_date`, `modified_date`, `language`, `catergory`, `image`, `user`, `description`, `hit`, `status`) VALUES
(1, 'Test 1', 'Test 1', 'Test 2222', '<p>\r\n	Test</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '2012-09-20 23:25:54', NULL, 0, 1, '418465_3229228777482_1436115210_n.jpg', 6, 'Test', 0, 1),
(2, 'Test 1', 'Test 1', 'AAAAAAAAAA', '<p>\r\n	Test</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '2012-09-21 15:40:32', NULL, 0, 1, NULL, 6, 'Test 2', 0, 1),
(3, 'Test 3', 'Test 3', 'sagahasfas', '<p>\r\n	2462afagahasga</p>\r\n', '2012-09-21 15:46:46', NULL, 0, 1, NULL, 6, 'sagahahdas', 0, 1),
(4, 'Test image', 'Test image', 'sahas', '<p>\r\n	sagasss</p>\r\n', '2012-09-22 11:05:05', NULL, 0, 1, '418856_3229244457874_1346609199_n.jpg', 6, 'sagah', 0, 1),
(5, '', '', '', '', '2012-09-22 11:28:22', NULL, 0, 1, '', 6, '', 0, 1),
(6, '', '', '', '', '2012-09-22 11:31:36', NULL, 0, 1, '', 6, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `article_cat`
--

CREATE TABLE IF NOT EXISTS `article_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `language` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `article_cat`
--

INSERT INTO `article_cat` (`id`, `alias`, `name`, `image`, `language`, `created_date`, `description`, `status`) VALUES
(1, 'default', 'Default', NULL, 0, '2012-09-20 16:33:49', NULL, 1),
(2, 'bai-viet', 'Bài viết', NULL, 0, '2012-09-20 17:41:09', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `article_cat_display`
--

CREATE TABLE IF NOT EXISTS `article_cat_display` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_cat_id` int(11) NOT NULL DEFAULT '0',
  `show_sub_article_cat` tinyint(1) NOT NULL DEFAULT '0',
  `show_display_style` int(11) NOT NULL DEFAULT '1',
  `number_items_display` int(11) NOT NULL DEFAULT '10',
  `order_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `article_cat_display`
--

INSERT INTO `article_cat_display` (`id`, `article_cat_id`, `show_sub_article_cat`, `show_display_style`, `number_items_display`, `order_type`) VALUES
(1, 0, 0, 1, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `article_display`
--

CREATE TABLE IF NOT EXISTS `article_display` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `show_user` tinyint(1) NOT NULL DEFAULT '0',
  `show_related` tinyint(1) NOT NULL DEFAULT '0',
  `show_created_date` tinyint(1) NOT NULL DEFAULT '1',
  `show_modified_date` tinyint(1) NOT NULL DEFAULT '0',
  `show_hit` int(11) NOT NULL DEFAULT '0',
  `show_catergory` tinyint(1) NOT NULL DEFAULT '0',
  `article_id` int(11) NOT NULL DEFAULT '0',
  `page_type` int(11) NOT NULL DEFAULT '0',
  `show_print_icon` tinyint(1) NOT NULL DEFAULT '0',
  `show_email_icon` tinyint(1) NOT NULL DEFAULT '0',
  `show_social_icon` tinyint(1) NOT NULL DEFAULT '0',
  `show_aticle_image` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `article_display`
--

INSERT INTO `article_display` (`id`, `show_user`, `show_related`, `show_created_date`, `show_modified_date`, `show_hit`, `show_catergory`, `article_id`, `page_type`, `show_print_icon`, `show_email_icon`, `show_social_icon`, `show_aticle_image`) VALUES
(0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

CREATE TABLE IF NOT EXISTS `article_tag` (
  `id_tag` int(11) NOT NULL,
  `id_aticle` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `article_tag`
--


-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE IF NOT EXISTS `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(11) NOT NULL DEFAULT '1',
  `language` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `block`
--


-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `map` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `diachi`, `email`, `website`, `mobile`, `phone`, `fax`, `image`, `map`, `description`, `status`) VALUES
(6, 'Consulate General of the State of Kuwait ', '24 Phung Khac Khoan Street, Da Kao Ward, District 1 Ho Chi Minh City', 'info@kuwaitconsulate-hochiminh.com', 'www.kuwaitconsulate-hochiminh.com  ', '(84.8) 3827 0555', '(84.8) 3827 0555', '(84.8) 3827 0111', '23c058ebda54c9fdf85640b322ca3ce2map.png', '<iframe width="420" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Kuwait+Ho+Chi+Minh&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=38.963048,86.572266&amp;ie=UTF8&amp;hq=Kuwait&amp;hnear=Ho+Chi+Minh+City,+Vietnam&amp;ll=10.785969,106.696882&amp;spn=0.002956,0.005284&amp;t=m&amp;z=14&amp;iwloc=A&amp;cid=2943518634105356536&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Kuwait+Ho+Chi+Minh&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=38.963048,86.572266&amp;ie=UTF8&amp;hq=Kuwait&amp;hnear=Ho+Chi+Minh+City,+Vietnam&amp;ll=10.785969,106.696882&amp;spn=0.002956,0.005284&amp;t=m&amp;z=14&amp;iwloc=A&amp;cid=2943518634105356536" style="color:#0000FF;text-align:left">View Larger Map</a></small>', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `controller`
--

CREATE TABLE IF NOT EXISTS `controller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(11) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `controller`
--


-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `alias`, `name`, `status`) VALUES
(0, 'default', 'Default', 1),
(1, 'en', 'English', 0),
(2, 'vi', 'Tiếng Việt', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `home` tinyint(1) NOT NULL DEFAULT '0',
  `link` text COLLATE utf8_unicode_ci,
  `catergory` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `menu_cat`
--

CREATE TABLE IF NOT EXISTS `menu_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `language` int(11) NOT NULL DEFAULT '0',
  `descripton` text COLLATE utf8_unicode_ci,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `menu_cat`
--


-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`) VALUES
(1, 'Default', NULL),
(2, 'Administrator', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plugin`
--

CREATE TABLE IF NOT EXISTS `plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `plugin`
--

INSERT INTO `plugin` (`id`, `name`, `created_date`, `description`, `status`) VALUES
(1, 'AdministratorTopButtons', '2012-09-20 11:56:08', 'Top Buttons on Administrator Pages', 1);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `template` int(11) NOT NULL,
  `block` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `position`
--


-- --------------------------------------------------------

--
-- Table structure for table `site_info`
--

CREATE TABLE IF NOT EXISTS `site_info` (
  `sitename` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `siteoffline` int(11) NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offnotice` text COLLATE utf8_unicode_ci,
  `multi_language` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `site_info`
--

INSERT INTO `site_info` (`sitename`, `id`, `meta`, `description`, `email`, `website`, `fax`, `phone`, `mobile`, `address`, `siteoffline`, `google`, `offnotice`, `multi_language`, `status`) VALUES
('Consulate General of the State of Kuwait in Ho Chi Minh City', 1, 'Consulate General of the State of Kuwait in Ho Chi Minh City', 'Consulate General of the State of Kuwait in Ho Chi Minh City', 'info@kuwaitconsulate-hochiminh.com', 'www.kuwaitconsulate-hochiminh.com', '(84.8) 3827 0555', '(84.8) 3827 0111', '', '24 Phung Khac Khoan Street, Da Kao Ward, District 1 Ho Chi Minh City', 1, '', '<div align="center">\r\n<h1>\r\nUNDER\r\n<br/>\r\nCONSTRUCTION\r\n</h1>\r\n<h3>Come back soon</h3>\r\n<span class="style4" style="color:#009344;font-weight:bold;">CÔNG TY TNHH CÔNG NGHỆ VIETINCOM</span>\r\n<strong>\r\n<br/>\r\n<strong class="style2" style="color:#FF5416;">Tel :</strong>\r\n<span class="style1">(08) 54 456 667</span>\r\n<br/>\r\n<strong class="style2" style="color:#FF5416;">Email :</strong>\r\n<span class="style1">info@vietincom.com</span>\r\n<strong>\r\n<br/>\r\n<span class="style2" style="color:#FF5416;">Hotline :</span>\r\n</strong>\r\n<span class="style1">093 305 2012</span>\r\n</strong>\r\n</div>', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tag`
--


-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE IF NOT EXISTS `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `module` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1',
  `descripton` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `template`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` int(11) NOT NULL DEFAULT '0',
  `address` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `image` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `name`, `birthday`, `gender`, `address`, `phone`, `type`, `image`, `created_date`, `status`) VALUES
(1, 'administrator', 'be1ae277599f261d0d769e1e9c46ddab', 'nguyenxvn@gmail.com', 'Nguyễn Viết Nguyên', '1989-08-10', 0, '', '0126 500 2743', 1, '698ae6c3d871f44c02c40860da3820b1images.jpg', NULL, 1),
(2, 'nguyen0180', '0548285f0782698da567b4cc9a26a60e', 'nguyennv@vietincom.com', 'Vietincom | Nguyễn Viết Nguyên', '1989-08-10', 0, 'thu duc', '0989 726 017', 2, '7cb18271fa634d7dd54a83debe45609ddia nhac_2.jpg', NULL, 1),
(5, 'conght', 'e10adc3949ba59abbe56e057f20f883e', 'conght@vietincom.com', 'Huỳnh Thanh Công', '0000-00-00', 0, '41,43 Trần Cao Vân P6, Q3, TP HCM', '0933052012', 2, '', NULL, 1),
(6, 'quangtx', '160f1a14754da5dd6c16d62ff2df8912', 'QuangTX@vietincom.com', 'Trần Xuân Quang', '1989-02-02', 0, '167/6A Bùi Đình Túy, quận Bình Thạnh, tp HCM', '0935889220', 1, '', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `name`, `description`) VALUES
(1, 'Super Administrator', NULL),
(2, 'Administrator', NULL),
(3, 'Moderator', NULL),
(4, 'Member', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
