-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 01, 2017 at 12:53 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `markethub`
--

-- --------------------------------------------------------

--
-- Table structure for table `register_users`
--

CREATE TABLE IF NOT EXISTS `register_users` (
  `u_id` double NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobileno` bigint(10) NOT NULL,
  `created_date` datetime NOT NULL,
  `last_logintime` datetime NOT NULL,
  `last_updatetime` datetime NOT NULL,
  `ipaddress` varchar(25) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `status` enum('a','d') DEFAULT 'd' COMMENT 'a=active,d=deactive',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `register_users`
--

INSERT INTO `register_users` (`u_id`, `username`, `email`, `password`, `mobileno`, `created_date`, `last_logintime`, `last_updatetime`, `ipaddress`, `oauth_provider`, `oauth_uid`, `status`) VALUES
(1, 'jay parmar', 'jay@gmail.com', 'd338ab0e48864e762820ec4ef6cd4811', 9741458745, '2017-02-20 17:41:35', '2017-04-01 15:11:15', '2017-03-01 18:41:46', '127.0.0.1', '', '', 'a'),
(3, 'Punit', 'p@gmail.com', 'd338ab0e48864e762820ec4ef6cd4811', 1234567890, '2017-03-02 18:23:55', '2017-03-06 13:27:02', '0000-00-00 00:00:00', '192.168.1.130', '', '', 'a'),
(4, 'kushal', 'kushal@gmail.com', 'd338ab0e48864e762820ec4ef6cd4811', 7600779534, '2017-03-03 14:48:08', '2017-03-29 16:37:56', '0000-00-00 00:00:00', '127.0.0.1', '', '', 'd'),
(6, 'test', 'test@markethub.com', 'f1c6fc3f6317b26e26d0fe17a5e05c84', 9850066650, '2017-03-07 15:55:10', '2017-03-07 15:55:21', '0000-00-00 00:00:00', '192.168.1.124', '', '', 'a'),
(7, 'brijesh', 'b@gmail.com', 'd338ab0e48864e762820ec4ef6cd4811', 9988774475, '2017-03-07 18:13:17', '2017-03-07 18:13:31', '0000-00-00 00:00:00', '127.0.0.1', '', '', 'a'),
(8, 'Android', 'android@gmail.com', '39e26bf629a5a3f457aa14b6efc1de91', 9850066650, '2017-03-08 13:21:33', '2017-03-28 16:39:48', '0000-00-00 00:00:00', '192.168.1.124', '', '', 'a'),
(9, 'Kushal Patadia', 'kushalpatadia@gmail.com', '', 0, '2017-03-09 10:55:54', '2017-03-09 11:25:45', '0000-00-00 00:00:00', '127.0.0.1', 'Facebook', '1123829201059642', 'a'),
(10, 'katto kp', 'katto.kp@gmail.com', '', 0, '2017-03-09 10:59:49', '2017-03-15 10:09:15', '0000-00-00 00:00:00', '127.0.0.1', 'Google', '117930195195908012366', 'a'),
(11, 'Mansuri Javed', 'javedmansuri128@gmail.com', '', 0, '2017-03-09 11:08:17', '2017-03-09 16:07:52', '0000-00-00 00:00:00', '127.0.0.1', 'Facebook', '837412699743973', 'a'),
(12, 'kushalfromregister', 'kushalpatadia@gmail.com', 'd338ab0e48864e762820ec4ef6cd4811', 9865321478, '2017-03-09 11:22:02', '2017-03-09 11:25:45', '0000-00-00 00:00:00', '127.0.0.1', '', '', 'a'),
(13, 'Javed', 'javedmansuri128@gmail.com', 'd338ab0e48864e762820ec4ef6cd4811', 7451241178, '2017-03-09 16:07:43', '2017-03-09 16:07:52', '2017-03-09 16:10:24', '127.0.0.1', '', '', 'a'),
(14, 'jay parmar', 'jayp2866@gmail.com', '', 0, '2017-03-15 15:58:46', '2017-03-21 11:18:49', '0000-00-00 00:00:00', '127.0.0.1', 'Google', '111108085168615201486', 'a'),
(15, 'Jay Parmar', 'jayparmar2711@gmail.com', '', 0, '2017-03-20 16:15:19', '2017-03-22 16:15:50', '0000-00-00 00:00:00', '127.0.0.1', 'Facebook', '1876915889259487', 'a'),
(18, 'Pritesh', 'pritesh.vadhiya@ncrypted.com', 'd338ab0e48864e762820ec4ef6cd4811', 9998887774, '2017-03-30 10:13:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '127.0.0.1', '', '', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` double NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` enum('a','d') NOT NULL DEFAULT 'd' COMMENT 'a=active,d=disactive',
  `priority` enum('f','s','t') NOT NULL DEFAULT 't' COMMENT 'f=first,s=second,t=third',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `status`, `priority`) VALUES
(1, 'kushal', 'admin123', 'a', 'f'),
(2, 'jay', 'admin@12345', 'a', 'f'),
(3, 'tester', '123456', 'a', 's'),
(4, 'tester2', '123456', 'a', 's'),
(5, 'pritesh', 'pritesh', 'a', 't');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `brand_id` double NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(35) NOT NULL,
  `status` enum('a','d') NOT NULL DEFAULT 'a' COMMENT 'a=active,d=disactive',
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `status`) VALUES
(1, 'Samsung', 'a'),
(2, 'Micromax', 'a'),
(3, 'Apple', 'a'),
(4, 'Motorola', 'a'),
(6, 'Sony', 'a'),
(7, 'Asus', 'a'),
(8, 'Lenovo', 'a'),
(9, 'Hp', 'a'),
(10, 'Dell', 'a'),
(11, 'Acer', 'a'),
(12, 'MI', 'a'),
(13, 'Provogue', 'a'),
(14, 'Kraasa', 'a'),
(15, 'Bata', 'a'),
(16, 'BRUTON', 'a'),
(17, 'Aeropower', 'a'),
(18, 'test111', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `w_id` double NOT NULL AUTO_INCREMENT,
  `p_id` double NOT NULL,
  `u_id` double NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`w_id`),
  KEY `fk_register_users_tbl_cart` (`u_id`),
  KEY `p_id` (`p_id`),
  KEY `p_id_2` (`p_id`),
  KEY `p_id_3` (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`w_id`, `p_id`, `u_id`, `qty`) VALUES
(1, 35, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `cat_id` double NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(35) NOT NULL,
  `status` enum('a','d') NOT NULL DEFAULT 'a' COMMENT 'a=active,d=disactive',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`, `status`) VALUES
(1, 'Electronics', 'a'),
(2, 'Appliances', 'a'),
(3, 'Men', 'a'),
(4, 'Women', 'a'),
(5, 'Kids', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_confirm`
--

CREATE TABLE IF NOT EXISTS `tbl_confirm` (
  `c_id` double NOT NULL AUTO_INCREMENT,
  `u_id` double NOT NULL,
  `c_rand` text NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_confirm`
--

INSERT INTO `tbl_confirm` (`c_id`, `u_id`, `c_rand`) VALUES
(1, 0, '1282086141'),
(2, 18, '131557878'),
(3, 19, '1396614738');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_us`
--

CREATE TABLE IF NOT EXISTS `tbl_contact_us` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(64) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `email` varchar(128) NOT NULL,
  `message` text NOT NULL,
  `replyMessage` text NOT NULL,
  `createdDate` datetime NOT NULL,
  `ipAddress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_contact_us`
--

INSERT INTO `tbl_contact_us` (`id`, `firstName`, `subject`, `email`, `message`, `replyMessage`, `createdDate`, `ipAddress`) VALUES
(1, 'Kushal', 'About Your Web', 'kushal@gmail.com', 'Hey I like your Web and i want work at your development team please give me proper contact', 'ohhhh that''s good so meet me tomorrow at shapat hexa B-704 at 2:00pm sharp.', '2017-03-10 12:43:23', '127.0.0.1'),
(2, 'Javed', 'Reply Me ', 'javed.mansuri@ncrypted.com', 'Reply me', '', '2017-03-30 16:57:06', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE IF NOT EXISTS `tbl_notifications` (
  `n_id` double NOT NULL AUTO_INCREMENT,
  `u_id` double NOT NULL,
  `p_id` double NOT NULL,
  `message` text NOT NULL,
  `n_date` datetime NOT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_notifications`
--

INSERT INTO `tbl_notifications` (`n_id`, `u_id`, `p_id`, `message`, `n_date`) VALUES
(9, 1, 29, 'is approved. So please update with you order status.', '2017-03-27 16:44:37'),
(10, 1, 33, 'is approved. So please update with you order status.', '2017-03-27 16:55:46'),
(11, 1, 34, 'is approved. So please update with you order status.', '2017-03-28 15:46:08'),
(12, 1, 34, 'is approved. So please update with you order status.', '2017-03-28 16:17:43'),
(13, 1, 35, 'is approved. So please update with you order status.', '2017-03-30 16:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE IF NOT EXISTS `tbl_order_details` (
  `id` double NOT NULL AUTO_INCREMENT,
  `address_id` double NOT NULL,
  `order_id` varchar(25) NOT NULL,
  `p_id` double NOT NULL,
  `u_id` double NOT NULL,
  `qty` int(11) NOT NULL,
  `status` enum('v','b','d','c') NOT NULL DEFAULT 'v' COMMENT 'v=view,b=purchased,d=deliverd,c=cancle',
  `purchase_date` datetime NOT NULL,
  `ip` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`id`, `address_id`, `order_id`, `p_id`, `u_id`, `qty`, `status`, `purchase_date`, `ip`) VALUES
(1, 6, '611610466', 20, 10, 1, 'b', '2017-03-15 11:14:25', '127.0.0.1'),
(2, 6, '611610466', 11, 10, 1, 'b', '2017-03-15 11:14:25', '127.0.0.1'),
(3, 8, '13611585', 21, 1, 1, 'b', '2017-03-15 17:48:10', '127.0.0.1'),
(4, 8, '36061182', 2, 1, 1, 'b', '2017-03-21 10:30:10', '127.0.0.1'),
(5, 8, '85671573', 33, 1, 23, 'b', '2017-03-30 16:18:01', '127.0.0.1'),
(6, 8, '85671573', 29, 1, 11, 'b', '2017-03-30 16:18:01', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE IF NOT EXISTS `tbl_products` (
  `id` double NOT NULL AUTO_INCREMENT,
  `imageName` text NOT NULL,
  `image2` text NOT NULL,
  `image3` text NOT NULL,
  `title` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `qty_available` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `reviews` varchar(250) NOT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(25) NOT NULL,
  `shortDescription` tinytext NOT NULL,
  `specification` text NOT NULL,
  `additionalinfo` text NOT NULL,
  `purchased` double NOT NULL DEFAULT '0',
  `isActive` enum('y','n','u') NOT NULL DEFAULT 'n' COMMENT 'y=yes;n=no;u=updated',
  `upload_by` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `imageName`, `image2`, `image3`, `title`, `category`, `subcategory`, `brand`, `price`, `qty_available`, `rating`, `reviews`, `size`, `color`, `shortDescription`, `specification`, `additionalinfo`, `purchased`, `isActive`, `upload_by`) VALUES
(1, 'mi-redmi-3s-prime-na-original-imaeh6beckzjqeza.jpeg', 'mi-redmi-3s-prime-na-original-imaeh6beysanfhyr.jpeg', 'mi-redmi-3s-prime-na-original-imaeh7y7e968kajk.jpeg', 'Redmi 3S Prime (Gold, 32 GB)', 'Electronics', 'Mobiles', 'MI', 8999, 5, 0, '', '5 inch', 'Gold', '    3 GB RAM | 32 GB ROM | Expandable Upto 128 GB\r\n    5 inch HD Display\r\n    13MP Primary Camera | 5MP Front\r\n    4100 mAh Li-Ion Polymer Battery\r\n    Qualcomm Snapdragon 430 64-bit Processor', 'testing', 'sss', 0, 'y', ''),
(2, 'samsung-galaxy-j2-dual-sim-black-j200g-original-imaebfn9vnxnvzhd  price-7850.jpeg', 'samsung-galaxy-j2-dual-sim-black-j200g-original-imaebfn9jxuzuxbh.jpeg', 'samsung-galaxy-j2-dual-sim-black-j200g-original-imaebfn9f49xzwve.jpeg', 'SAMSUNG Galaxy J2 (Black, 8 GB)', 'Electronics', 'Mobiles', 'Samsung', 8999, 3, 0, '', '4.7 inch', 'Black', 'SAMSUNG Galaxy J2 - 2016 Smartphone | Key Features include Android Marshmallow 6, Quad Core Processor, mAh\r\n', '<ul>\r\n<li>Sales Package: Handset, Battery, Travel Adapter, Stereo Headset</li>\r\n<li>Model Number:SM-J200GZKDINS/SM-J200GZKHINS</li>\r\n<li>Model Name: Galaxy J2</li>\r\n<li>Color :Black</li>\r\n<li>Browse Type:Smartphones</li>\r\n<li>SIM Type:Dual Sim</li>\r\n<li>Hybrid Sim Slot:No</li>\r\n<li>Touchscreen:Yes</li>\r\n<li>OTG Compatible:No</li>\r\n</ul>\r\n', '1 Year Manufacturer Warranty\r\n10 Days Replacement Policy\r\nCash on Delivery available', 14, 'y', ''),
(3, 'mi-mi-4i-mzb4430in-original-imaebagndxhhvnyk.jpeg', 'mi-mi-4i-mzb4430in-original-imaebagzafwdh6mh.jpeg', 'mi-mi-4i-mzb4430in-original-imaebagzvzcagadg.jpeg', 'Mi 4i (Blue, 16 GB)', 'Electronics', 'Mobiles', 'MI', 11999, 5, 0, '', '5 inch', 'Blue', 'To achieve flagship status, a phone must have more than a 1080p resolution. Instead, the Mi 4i comes with a 12.7 cm (5) Sharp / JDI display, with up to 95% of colors from the NTSC palette. It is also powered by an octa-core Qualcomm Snapdragon 615 process', '    2 GB RAM | 16 GB ROM |\r\n    5 inch Full HD Display\r\n    13MP Primary Camera | 5MP Front\r\n    3030 mAh Li-ion Polymer Battery\r\n    2nd-gen Snapdragon 615 64-bit octa-core Processor', 'Powered by a 64-bit, 2nd Gen Qualcomm Snapdragon 615 octa-core processor, the Mi 4i is not only the leader for quality smartphones, but also the benchmark for extreme performance. It has 4 performance cores clocking at 1.7 GHz and 4 power-saving cores at 1.1 GHz to ensure quicker multitasking between applications.\r\n', 0, 'y', ''),
(4, 'samsung-galaxy-on7-sm-g600f-original-imaecqkgzeuz9ebn price-7490.jpeg', 'samsung-galaxy-on5-sm-g550fzddins-original-imaecjy92yrm4mfr.jpeg', 'samsung-galaxy-on5-sm-g550fzddins-original-imaecjy9jkpzuxvn.jpeg', 'SAMSUNG Galaxy On5(White, 8 GB)', 'Electronics', 'Mobiles', 'Samsung', 7490, 5, 0, '', '5 Inch', 'White', '    1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB\r\n    5 inch HD Display\r\n    8MP Primary Camera | 5MP Front\r\n    2600 mAh Li-Ion Battery\r\n    Exynos 3475 Processor', '<ul>\r\n<li>Sales Package:    Handset, Stereo Headset, Travel Adaptor, Data Cable, Product User Guide, Battery</li>\r\n<li>Model Number:    SM-G550FZKDINS/SM-G550FZDDINS</li>\r\n<li>Model Name:    Galaxy On5</li>\r\n<li>Color:    Gold</li>\r\n<li>Browse Type:Smartphones</li>\r\n<li>SIM Type:Dual Sim</li>\r\n<li>Hybrid Sim Slot:	No</li>\r\n<li>Touchscreen:	Yes</li>\r\n<li>OTG Compatible:	 Yes</li>\r\n<li>Sound Enhancements:   Integrated Hands-free Speakers, Noise Cancellation</li>\r\n</ul>', '1 Year Manufacturer Warranty\r\n10 Days Replacement Policy\r\nCash on Delivery available', 1, 'y', ''),
(5, 'mi-5-na-original-imaejfhg2fjszfs5.jpeg', 'mi-5-na-original-imaejfhggbuhdtmz.jpeg', 'mi-5-na-original-imaejfhghhxnrgyj.jpeg', 'Mi 5 (White, 32 GB)', 'Electronics', 'Mobiles', 'MI', 22999, 5, 0, '', '5.15 inch', 'white', 'Featuring a sharp profile and a lightweight body and powered by the Snapdragon 820 processor, the MI 5 is perfect for your fast lifestyle. Now you can game even faster with the Adreno 530 graphics processor.\r\n If you are on a lookout for an insanely fast ', '       3 GB RAM | 32 GB ROM |\r\n    5.15 inch Full HD Display\r\n    16MP Primary Camera | 4MP Front\r\n    3000 mAh Li-Ion Polymer Battery\r\n    Snapdragon 820 Kryo Processor', 'test', 0, 'y', ''),
(6, 'micromax-canvas-6-e485-na-original-imaeghswtheyvry7.jpeg', 'micromax-canvas-6-e485-na-original-imaeghswwjrswkzb.jpeg', 'micromax-canvas-6-e485-na-original-imaegnwqcfhbdsm9â‚¹9,499.jpeg', 'Micromax Canvas 6 (Champagne, 32 GB)', 'Electronics', 'Mobiles', 'Micromax', 9499, 5, 0, '', '5.5 inch', 'Champagne', ' With a slim metal body, the Micromax Canvas 6 has a stylish look. Designed with a fingerprint scanner, the phone helps you keep all your personal data secure. If you are someone who needs to multitask, this phone comes with an octa core processor to let ', '    3 GB RAM | 32 GB ROM | Expandable Upto 128 GB\r\n    5.5 inch Full HD Display\r\n    13MP Primary Camera | 8MP Front\r\n    3000 mAh Li-Polymer Battery\r\n    MT6753 Processor', 'test', 0, 'y', ''),
(7, 'dell-inspiron-15-notebook-original-imaeg7gngszhszj6â‚¹26,990.jpeg', 'dell-inspiron-15-notebook-original-imaemgnwq6zhhbrdâ‚¹26,990.jpeg', 'dell-inspiron-15-notebook-original-imaemgzbjaepeuwe.jpeg', 'Dell Inspiron Core i3 5th Gen', 'Electronics', 'Laptops', 'Dell', 26490, 5, 0, '', '15.6 inch Display', 'Black', '    Sales Package\r\n        Laptop, Battery, Power Adaptor, User Guide and Warranty Document\r\n    Model Number\r\n        3558\r\n    Part Number\r\n        Z565155HIN9/Z565155UIN9\r\n    Model Name\r\n        Inspiron 15\r\n    Series\r\n        Inspiron\r\n    Color\r\n  ', '    Intel Core i3 Processor ( 5th Gen )\r\n    4 GB DDR3 RAM\r\n    64 bit Linux/Ubuntu Operating System\r\n    1 TB HDD\r\n    15.6 inch Display', 'test', 0, 'y', ''),
(8, 'mi-redmi-note-3-na-original-imaegcryhxs4vteu.jpeg', 'mi-redmi-note-3-na-original-imaegcrftpz4hahj.jpeg', 'mi-redmi-note-3-na-original-imaegcrfahfzsvgp.jpeg', 'Redmi Note 3 (Dark Grey, 16 GB)', 'Electronics', 'Mobiles', 'MI', 9999, 5, 0, '', '5.5 inch', 'Dark Grey', ' The Redmi 3 mobile phone is designed for millennials. Its high-speed performance lets you switch between apps without any fuss, supports fluid movements so your online gaming experience is enhanced, and supports fingerprint sensor so your sense of privac', '    2 GB RAM | 16 GB ROM | Expandable Upto 32 GB\r\n    5.5 inch Full HD Display\r\n    16MP Primary Camera | 5MP Front\r\n    4050 mAh Li-Polymer Battery Battery\r\n    Qualcomm Snapdragon 650 64-bit Processor', 'test', 0, 'y', ''),
(9, 'mi-redmi-note-4-na-original-imaeqdxgrdhxgkcx.jpeg', 'mi-redmi-note-4-na-original-imaeqdxzsw54nyuf.jpeg', 'mi-redmi-note-4-mzb5298in-original-imaery4rn5pwdmxn.jpeg', 'Redmi Note 4 (Gold, 64 GB)  (With 4 GB RAM)', 'Electronics', 'Mobiles', 'MI', 12999, 5, 0, '', '5.5 inch', 'white', 'Upgrade to the Redmi Note 4 and experience power like never before. The Redmi Note 4 offers high-speed performance along with a long battery life. ', '    4 GB RAM | 64 GB ROM | Expandable Upto 128 GB\r\n    5.5 inch Full HD Display\r\n    13MP Primary Camera | 5MP Front\r\n    4100 mAh Li-Polymer Battery\r\n    Qualcomm Snapdragon 625 64-bit Processor', 'Switching between apps or launching apps wonâ€™t take forever with the Redmi Note 4, thanks to the octa-core Snapdragon 625 processor. To add more power to you, the Redmi Note 4 is 20% more power efficient than the Redmi Note 3.', 0, 'y', ''),
(10, 'micromax-canvas-6-pro-e484-original-imaeg59pf9q8ypv4.jpeg', 'micromax-canvas-6-pro-e484-original-imaeg59pnjzddkb4â‚¹10,440.jpeg', 'micromax-canvas-6-pro-e484-original-imaeg64jh8npf87eâ‚¹10,440.jpeg', 'Micromax Canvas 6 Pro (Black, 16 GB)', 'Electronics', 'Mobiles', 'Micromax', 10440, 5, 0, '', '5.5 inch', 'Black', ' The Micromax Canvas 6 Pro is powered by a 2.0GHz Helio x10 Octa Core processor to let you enjoy a smooth and fast performance. If you are the kind that enjoys action packed games, this phone gives you an immersive experience. With a 4GB RAM, this phone l', '    4 GB RAM | 16 GB ROM | Expandable Upto 64 GB\r\n    5.5 inch Full HD Display\r\n    13MP Primary Camera | 5MP Front\r\n    3000 mAh Li-Polymer Battery\r\n    MT6795M Processor', '1 Year Manufacturer Warranty', 0, 'y', ''),
(11, 'micromax-canvas-knight-2-canvas-knight-2-e471-original-imaepz9t8jyngjez.jpeg', 'micromax-canvas-knight-2-canvas-knight-2-e471-original-imaeppnmsv7fc6uzâ‚¹7,499.jpeg', 'micromax-canvas-knight-2-canvas-knight-2-e471-original-imaepphwzz2hkbpuâ‚¹7,499.jpeg', 'Micromax Canvas Knight 2 (White & Silver, 16 GB)', 'Electronics', 'Mobiles', 'Micromax', 7499, 4, 0, '', '5 inch', 'White & Silver', 'The Micromax Canvas Knight 2 is your source of entertainment and style. Carry this Android smartphone with you wherever you go and kick boredom out in style. ', '    2 GB RAM | 16 GB ROM | Expandable Upto 32 GB\r\n    5 inch HD Display\r\n    13MP Primary Camera | 5MP Front\r\n    2280 mAh Battery', '1 Year Manufacturer Warranty', 9, 'y', ''),
(12, 'hp-notebook-original-imaem34tdkryayb6  price-25490.jpeg', 'hp-notebook-original-imaem34tyzqvpmgu.jpeg', 'hp-notebook-original-imaem34tjbebgruz.jpeg', 'HP APU Quad Core A8', 'Electronics', 'Laptops', 'HP', 25490, 5, 0, '', '15.6 inch Display', 'Black', '    AMD APU Quad Core A8 Processor ( 6th Gen )\r\n    4 GB DDR3 RAM\r\n    64 bit Windows 10 Operating System\r\n    1 TB HDD\r\n    15.6 inch Display', 'Testing', '1 Year Onsite Warranty\r\n10 Days Replacement Policy\r\nCash on Delivery available', 0, 'y', ''),
(13, 'hp-notebook-original-imaemw4tq9v2pfwy.jpeg', 'hp-notebook-original-imaem34tvsgbvzf8.jpeg', 'hp-notebook-original-imaem34tjbebgruz.jpeg', 'HP APU Quad Core E2', 'Electronics', 'Laptops', 'HP', 20980, 5, 0, '', '15.6 inch Display', 'Black', '     AMD APU Quad Core E2 Processor ( 6th Gen )\r\n    4 GB DDR3 RAM\r\n    64 bit DOS Operating System\r\n    500 GB HDD\r\n    15.6 inch Display', 'Testing', '1 Year Onsite Warranty\r\n10 Days Replacement Policy\r\nCash on Delivery available', 0, 'y', ''),
(14, 'hp-notebook-original-imaeprzxabum9r6j.jpeg', 'hp-notebook-original-imaeprzvja5wszz2  price-30990.jpeg', 'hp-notebook-original-imaeprzr3zkjng64.jpeg', 'HP Core i3 5th Gen  X5Q18PA#ACJ 15-BE006TU Noteboo', 'Electronics', 'Laptops', 'HP', 29990, 5, 0, '', '15.6 inch Display', 'Black', '    Intel Core i3 Processor ( 5th Gen )\r\n    4 GB DDR3 RAM\r\n    64 bit Windows 10 Operating System\r\n    1 TB HDD\r\n    15.6 inch Display', 'Testing', '1 Year Onsite Warranty\r\n10 Days Replacement Policy\r\nCash on Delivery available', 0, 'y', ''),
(15, 'hp-notebook-original-imaequgyqvnrzccd  price-30990.jpeg', 'hp-notebook-original-imaequg4wzdutwra.jpeg', 'hp-notebook-original-imaequg4tdwsphzs.jpeg', 'HP Core i3 6th Gen  1DF78PA#ACJ BE015TU Notebook  ', 'Electronics', 'Laptops', 'HP', 30990, 5, 0, '', '15.6 inch Display', 'Black', '    Intel Core i3 Processor ( 6th Gen )\r\n    8 GB DDR4 RAM\r\n    DOS Operating System\r\n    1 TB HDD\r\n    15.6 inch Display', 'Testing', '1 Year Onsite Warranty\r\n10 Days Replacement Policy\r\nCash on Delivery available', 0, 'y', ''),
(16, 'samsung-galaxy-j1-ace-sm-j110hzwdins-original-imaektngxhuvzhek.jpeg', 'samsung-galaxy-j1-ace-sm-j110hzwdins-original-imaektnhhyzffxg2 price-5189.jpeg', 'samsung-galaxy-j1-ace-sm-j110hzwdins-original-imaektnhhyzffxg2 price-5189.jpeg', 'SAMSUNG Galaxy J1 Ace (White, 4 GB)', 'Electronics', 'Mobiles', 'Samsung', 5190, 5, 0, '', '4.3 Inch', 'White', '    512 MB RAM | 4 GB ROM | Expandable Upto 128 GB\r\n    4.3 inch WVGA Display\r\n    5MP Primary Camera | 2MP Front\r\n    1800 mAh Li-Ion Battery', '<li>Sales Package:    Handset, Stereo Headset, Charger, Product User Guide, Battery</li>\r\n<li>Model Number:    SM-J110HZWDINS</li>\r\n<li>Model Name:Galaxy J1 Ace</li>\r\n<li>Color:White</li>\r\n<li>Browse Type:Smartphones</li>\r\n<li>SIM Type:Dual Sim</li>\r\n<li>Hybrid Sim Slot:No</li>\r\n<li>Touchscreen:Yes</li>\r\n<li>Additional Content:microSD</li>\r\n</ul>', '1 Year Manufacturer Warranty\r\n10 Days Replacement Policy\r\nCash on Delivery available', 0, 'y', ''),
(17, 'hp-pavilion-notebook-original-imaemqnah4yv8vy6  price 15490.jpeg', 'hp-pavilion-notebook-original-imaemqnauauzsm88.jpeg', 'hp-pavilion-original-imaeg59gydguax9b.jpeg', 'HP Pavilion Celeron Dual Core-W0H99PA 11-S003TU', 'Electronics', 'Laptops', 'HP', 15490, 5, 0, '', '15.6 inch Display', 'Black', '    Intel Celeron Dual Core Processor \r\n    2 GB DDR3 RAM\r\n    DOS Operating System\r\n    500 GB HDD\r\n    11.6 inch Display', 'Testing', '1 Year Onsite Warranty\r\n10 Days Replacement Policy\r\nCash on Delivery available', 0, 'y', ''),
(18, 'samsung-galaxy-j7-prime-sm-g610fzddins-original-imaemsff7bqnsgm9 price 16900.jpeg', 'samsung-galaxy-j7-prime-sm-g610fzddins-original-imaemsff2czfvf7r.jpeg', 'samsung-galaxy-j7-prime-sm-g610fzddins-original-imaemsfepzhsungt.jpeg', 'SAMSUNG Galaxy J7 Prime (Black, 16 GB)', 'Electronics', 'Mobiles', 'Samsung', 16900, 5, 0, '', '5.5 Inch', 'Black', '    3 GB RAM | 16 GB ROM | Expandable Upto 256 GB\r\n    5.5 inch Full HD Display\r\n    13MP Primary Camera | 8MP Front\r\n    3300 mAh Battery\r\n    Exynos 7870 Processor', '<ul>\r\n<li>Sales Package:Handset, Charger, Data Cable, Earphone, Ejector Pin</li>\r\n<li>Model Number:SM-G610FZDDINS</li>\r\n<li>Model Name: Galaxy J7 Prime</li>\r\n<li>Color :Black</li>\r\n<li>Browse Type:Smartphones</li>\r\n<li>SIM Type:Dual Sim</li>\r\n<li>Hybrid Sim Slot:No</li>\r\n<li>Touchscreen:Yes</li>\r\n<li>OTG Compatible:Yes</li>\r\n</ul>', '1 Year Manufacturer Warranty\r\n10 Days Replacement Policy\r\nCash on Delivery available', 0, 'y', ''),
(19, 'black-orange-ai110-aero-8-original-imaemvf3ra5xrkhj.jpeg', 'black-orange-ai110-aero-9-original-imaehg2tqqerfhna.jpeg', 'black-orange-ai110-aero-9-original-imaehg2tsxcrbkbh.jpeg', 'Aero Power Play Running Shoes  (Black, Orange)', 'Men', 'Sport Shoes', 'Aeropower', 474, 5, 0, '', '6', 'Black, Orange', 'Testing', 'Testing', 'Testing', 2, 'y', ''),
(20, 'blue-ai110-aero-7-original-imaeavxdkzagp2s3.jpeg', 'blue-ai110-aero-7-original-imaeavxdw5frbjcz.jpeg', 'blue-ai110-aero-7-original-imaeavxdhypzb2hy.jpeg', 'Aero Power Play Running Shoes  (Blue)', 'Men', 'Sport Shoes', 'Aeropower', 464, 4, 0, '', '9', 'Blue', 'Testing', 'Testing', 'Testing', 5, 'y', ''),
(21, 'bruton-4g-1-10-bruton-multi-color-original-imaequka7cgceznc.jpeg', 'bruton-4g-1-10-bruton-multi-color-original-imaequk9x7jweysz.jpeg', 'aircum-4g-1-8-aircum-multi-color-original-imaequkbuwsqtsrz.jpeg', 'BRUTON 4G-1 Running Shoes  (Black, Blue)', 'Men', 'Sport Shoes', 'BRUTON', 389, 2, 0, '', '9', 'Blue', 'Testing', 'Testing', 'Testing', 17, 'y', ''),
(22, 'black-821933-bata-9-original-imaez2hqxsfebbzn.jpeg', 'black-821933-bata-9-original-imaez2hqsczeergh.jpeg', 'black-821933-bata-9-original-imaez2hqdgmeafbm.jpeg', 'Bata SANATH Lace Up Shoes', 'Men', 'Formal Shoes', 'Bata', 768, 3, 0, '', '9', 'Black', 'Testing', 'Testing', 'Testing', 0, 'y', ''),
(23, 'black-k-914-kraasa-6-original-imaemwjkmrkzbzrb.jpeg', 'black-k-914-kraasa-7-original-imaeax7v6uvq5yww.jpeg', 'black-k-914-kraasa-9-original-imaeax7v2nkvyys2.jpeg', 'Kraasa High Ankle Lace Up Shoes  (Black)', 'Men', 'Formal Shoes', 'Kraasa', 799, 3, 0, '', ' 7 , 8 , 9', 'Black', 'Testing', 'Testing', 'Testing', 9, 'y', ''),
(24, 'brown-supf00001-mr-cl-8-original-imaeppvzayzzw5hx.jpeg', 'brown-supf00001-mr-cl-8-original-imaeppu5btnhpzrt.jpeg', 'brown-supf00001-mr-cl-8-original-imaeppvzayzzw5hx.jpeg', 'Provogue Lace up shoes  (Brown)', 'Men', 'Formal Shoes', 'Provogue', 999, 5, 0, '', ' 7 , 9 , 10', 'Brown', 'Testing', 'Testing', 'Testing', 3, 'y', ''),
(29, 'coolpad note 5.jpg', '', '', 'Coolpad Note Pro', 'Electronics', 'Mobiles', 'Micromax', 5999, 4, 0, '', '5 Inch', 'Black', '<li>8 Gb Ram\n</li><br> <li>35 Gb Internal Memory\n</li><br> <li>16.25 Cm Hd Screen\n</li><br> <li>quad-core Processor</li><br> ', '', '<li>Test1\r</li><br> <li>Test2\r</li><br> <li>Test3\r</li><br> <li>Test4\r</li><br> <li>Test5\r</li><br> <li>Test6</li><br>', 15, 'y', 'U1'),
(33, 'apple-iphone-7.jpg', '', '', 'just checking', 'Others', 'Others', 'Others', 1500, 832, 0, '', '5', 'Black', '<li>1\r</li><br> <li>2\r</li><br> <li>3\r</li><br> <li>4</li><br>', '<li>8\r</li><br> <li>9\r</li><br> <li>10</li><br>', '<li>4\r</li><br> <li>5\r</li><br> <li>6\r</li><br> <li>7</li><br>', 855, 'y', 'U1'),
(34, 'Infocus M370i.jpg', '', '', 'helloowwwworld', 'Appliances', 'Clothing', 'Asus', 58888, 588, 0, '', '6 ', 'Black', '<li>Hello\r</li> <li>World\r</li> <li>Best\r</li> <li>Mobile \r</li> <li>ever\r</li> <li>in\r</li> <li>Markethub</li>', '<li>Hello\r</li> <li>World\r</li> <li>Best\r</li> <li>Mobile \r</li> <li>ever\r</li> <li>in\r</li> <li>Markethub</li>', '<li>Hello\r</li> <li>World\r</li> <li>Best\r</li> <li>Mobile \r</li> <li>ever\r</li> <li>in\r</li> <li>Markethub</li>', 0, 'n', 'U1'),
(35, 'client-128.png', '', '', 'Last', 'Electronics', 'Accessories', 'Acer', 100, 1, 0, '', '10', 'White', '<li>last</li><br>', '<li>aaa</li><br>', '<li>llll</li><br>', 0, 'y', 'U1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_details`
--

CREATE TABLE IF NOT EXISTS `tbl_shipping_details` (
  `id` double NOT NULL AUTO_INCREMENT,
  `u_id` double NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `addressline1` varchar(50) NOT NULL,
  `addressline2` varchar(50) NOT NULL,
  `area` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincode` int(6) NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `mobilenumber` bigint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_shipping_details`
--

INSERT INTO `tbl_shipping_details` (`id`, `u_id`, `username`, `email`, `addressline1`, `addressline2`, `area`, `city`, `pincode`, `state`, `country`, `mobilenumber`) VALUES
(1, 4, 'kushalpatadia', 'kushal@gmail.com', '1/6 Ami Appartment', 'Nr. Naranpura Telephone Exchange', 'Naranpura', 'Ahmedabad', 380063, 'Gujrat', 'India', 7600779534),
(2, 4, 'jay', 'jay@gmail.com', 'A-105 Aditya Appartment', 'New C.G Road', 'Chandkheda', 'Ahmedabad', 382424, 'Gujrat', 'India', 7445458212),
(3, 7, 'Brijesh', 'b1@gmail.com', 'ncrypted', 'sola road', 'Sola', 'Ahmedabad', 380013, 'Gujrat', 'India', 7845120215),
(4, 8, 'Android', 'android@gmail.com', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 0, 'assdasd', 'asdasd', 9850066650),
(5, 10, 'KATTO', 'katto.kp@gmail.com', 'B-66, Katto Banglow', 'Katta Gali', 'Don', 'Ahmedabad', 991105, 'Gujrat', 'India', 7878282945),
(6, 10, 'Tipendra', 'tipendratapu@gmail.com', 'Gokuldham society', 'Nr. Power Gali', 'Thane', 'Mumbai', 766150, 'Maharastra', 'India', 8810324578),
(7, 13, 'Javed', 'javedmansuri128@gmail.com', 'A-105 Aditya Appartment', 'New C.G Road', 'Chandkheda', 'Ahmedabad', 382424, 'Gujrat', 'India', 7600779545),
(8, 1, 'Jay', 'jay@gmail.com', 'A-105,Aditya Appartment', 'New C.G Road', 'Chandkheda', 'Ahmedabad', 382424, 'Gujarat', 'India', 8941475685);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site`
--

CREATE TABLE IF NOT EXISTS `tbl_site` (
  `s_id` double NOT NULL AUTO_INCREMENT,
  `site_name` varchar(25) NOT NULL,
  `site_tagline` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` varchar(25) NOT NULL,
  `fb_link` varchar(100) NOT NULL,
  `pinterest_link` varchar(100) NOT NULL,
  `linkedin_link` varchar(100) NOT NULL,
  `behance_link` varchar(100) NOT NULL,
  `youtube_link` varchar(100) NOT NULL,
  `vimeo_link` varchar(100) NOT NULL,
  `map` text NOT NULL,
  `contact_address` varchar(250) NOT NULL,
  `contact_officeno` varchar(25) NOT NULL,
  `contact_mob` varchar(25) NOT NULL,
  `contact_mail1` varchar(50) NOT NULL,
  `contact_mail2` varchar(50) NOT NULL,
  `site_copyrights` varchar(50) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_site`
--

INSERT INTO `tbl_site` (`s_id`, `site_name`, `site_tagline`, `email`, `phoneno`, `fb_link`, `pinterest_link`, `linkedin_link`, `behance_link`, `youtube_link`, `vimeo_link`, `map`, `contact_address`, `contact_officeno`, `contact_mob`, `contact_mail1`, `contact_mail2`, `site_copyrights`) VALUES
(1, 'Market Hub', 'Youngistan''s First Choice', 'info@ncrypted.com', '079-40397001', 'https://www.facebook.com/ncryptedtechnologies/', 'https://www.ncrypted.net/pinterest-clone', 'https://www.linkedin.com/company/ncrypted-technologies', 'https://www.behance.net/', 'https://www.youtube.com/channel/UCVFm7I5BU9yojamjRA0l-GA', 'https://vimeo.com/channels/ncryptedtechnologies', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14681.330223857065!2d72.5235874!3d23.084919!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x70ba63ac3c15564e!2sNCrypted+Technologies+Pvt.+Ltd.!5e0!3m2!1sen!2sin!4v1486041650026', 'B-704, Shapath Hexa, Opposite Gujarat High Court, Sola Road, S G Highway, Ahmedabad, 380060', '079-40397001', '+91 281 3918880', 'info@ncrypted.com', 'job@ncrypted.com', '2017 Market Hub . All rights reserved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id` double NOT NULL AUTO_INCREMENT,
  `imageName` text NOT NULL,
  `title` varchar(20) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `isUpDown` enum('u','d') NOT NULL DEFAULT 'd' COMMENT 'u=up,d=down',
  `description` text NOT NULL,
  `isActive` enum('a','d') NOT NULL DEFAULT 'd' COMMENT 'a=active,d=deactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `imageName`, `title`, `discount`, `isUpDown`, `description`, `isActive`) VALUES
(1, 'b1.png', 'my first ', '-30%', 'u', 'test123', 'd'),
(2, 'b2.png', 'my second', '-25%', 'u', 'test', 'd'),
(3, 'b3.png', '', '-32%', 'u', '', 'd'),
(4, 't1.png', '', 'FLAT', 'd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus, justo ac volutpat vestibulum, dolor massa pharetra nunc, nec facilisis lectus nulla a tortor. Duis ultrices nunc a nisi malesuada suscipit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam eu bibendum felis. Sed viverra dapibus tincidunt.', 'a'),
(5, 't2.png', '', 'FLAT 25% OFF', 'd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus, justo ac volutpat vestibulum, dolor massa pharetra nunc, nec facilisis lectus nulla a tortor. Duis ultrices nunc a nisi malesuada suscipit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam eu bibendum felis. Sed viverra dapibus tincidunt.', 'a'),
(6, 't3.png', '', 'FLAT 35% OFF', 'd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus, justo ac volutpat vestibulum, dolor massa pharetra nunc, nec facilisis lectus nulla a tortor. Duis ultrices nunc a nisi malesuada suscipit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam eu bibendum felis. Sed viverra dapibus tincidunt.', 'a'),
(7, 't4.png', '', 'FLAT 25% OFF', 'd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus, justo ac volutpat vestibulum, dolor massa pharetra nunc, nec facilisis lectus nulla a tortor. Duis ultrices nunc a nisi malesuada suscipit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam eu bibendum felis. Sed viverra dapibus tincidunt.', 'a'),
(8, 'cvarwwwclientsclient1web2tmpphp40mc2E.png', 'Sony-USB-Pen-Drive', '5%', 'u', '', 'a'),
(9, 'cvarwwwclientsclient1web2tmpphp9SZYg6.jpg', 'helicopter', '10%', 'u', '', 'a'),
(10, 'cvarwwwclientsclient1web2tmpphpCBXkbT.jpg', 'watches', '15%', 'u', '', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE IF NOT EXISTS `tbl_subcategory` (
  `subcat_id` double NOT NULL AUTO_INCREMENT,
  `cat_id` double NOT NULL,
  `subcat_name` varchar(35) NOT NULL,
  `status` enum('a','d') NOT NULL DEFAULT 'a' COMMENT 'a=active,d=disactive',
  PRIMARY KEY (`subcat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcat_id`, `cat_id`, `subcat_name`, `status`) VALUES
(1, 1, 'Mobiles', 'a'),
(2, 1, 'Laptops', 'a'),
(3, 1, 'Mobile Accessories', 'a'),
(5, 1, 'Computer Accessories', 'a'),
(6, 1, 'Tv', 'a'),
(7, 1, 'Washing Machine', 'a'),
(8, 1, 'Air Conditioners', 'a'),
(9, 1, 'Refrigerators', 'a'),
(10, 3, 'FootWear', 'a'),
(11, 3, 'Clothing', 'a'),
(12, 3, 'Watches', 'a'),
(13, 3, 'Accessories', 'a'),
(14, 3, 'Sport Shoes', 'a'),
(15, 3, 'Formal Shoes', 'a'),
(16, 3, 'Jeans', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_todo_list`
--

CREATE TABLE IF NOT EXISTS `tbl_todo_list` (
  `td_id` double NOT NULL AUTO_INCREMENT,
  `u_id` double NOT NULL,
  `message` varchar(35) NOT NULL,
  PRIMARY KEY (`td_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `tbl_todo_list`
--

INSERT INTO `tbl_todo_list` (`td_id`, `u_id`, `message`) VALUES
(1, 2, 'Add Kids Products Before 6 pm'),
(2, 2, 'OK..bye'),
(3, 2, 'OK..bye'),
(4, 2, 'Hello'),
(5, 2, 'hii'),
(6, 1, 'hello'),
(7, 2, 'Good evening..'),
(8, 1, 'hey android avyo k nai???'),
(9, 5, 'hello boys'),
(10, 1, 'hey taru id nathi rah jo'),
(11, 5, 'ok'),
(12, 5, 'thx jay'),
(13, 2, 'Bye..'),
(14, 5, 'android is best'),
(15, 5, 'android is best'),
(16, 1, 'su maja avi k nai???'),
(17, 5, 'android is best'),
(18, 5, 'thodo problem 6e'),
(19, 1, 'without PHP you are nothing'),
(20, 2, 'Bye..'),
(21, 1, 'without PHP you are nothing'),
(22, 1, 'without PHP you are nothing'),
(23, 5, '.'),
(24, 5, 'ok kushal'),
(25, 2, 'Type 15 words only..'),
(26, 1, 'k'),
(27, 5, 'where is jaylo'),
(28, 2, 'aa rahyo'),
(29, 5, '.'),
(30, 2, 'aa rahyo'),
(31, 1, ':)~~~~`'),
(32, 2, ':-)'),
(33, 5, 'ok ok good work both of you'),
(34, 2, 'ty'),
(35, 1, 'k bye see you'),
(36, 1, 'tata'),
(37, 2, 'bye..timesheet mokli dau'),
(38, 5, '5 star(*****)'),
(39, 2, 'bye..timesheet mokli dau'),
(40, 5, 'ha fast'),
(41, 2, 'bye..timesheet mokli dau'),
(42, 5, 'hiii'),
(43, 2, 'Hello...How r u Guyz?'),
(45, 2, 'Good Afternoon..'),
(46, 2, 'hiii'),
(47, 1, 'be band kar'),
(49, 1, 'hmmmmmmm'),
(50, 1, ':)~~~~`'),
(51, 2, 'haha'),
(52, 1, 'yaaaaa hoooooooooooo'),
(53, 1, 'chahe koi muje jangali kahe'),
(54, 1, 'yaahoooooooooooooooooooooo'),
(55, 2, 'chalo 1:35 thai gai'),
(56, 5, 'hey buddy!!!!!!!!!!!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE IF NOT EXISTS `tbl_wishlist` (
  `c_id` double NOT NULL AUTO_INCREMENT,
  `p_id` double NOT NULL,
  `u_id` double NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `fk_register_users_tbl_cart` (`u_id`),
  KEY `p_id` (`p_id`),
  KEY `p_id_2` (`p_id`),
  KEY `p_id_3` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `fk_register_users_tbl_cart` FOREIGN KEY (`u_id`) REFERENCES `register_users` (`u_id`),
  ADD CONSTRAINT `fk_tbl_products_tbl_cart` FOREIGN KEY (`p_id`) REFERENCES `tbl_products` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
