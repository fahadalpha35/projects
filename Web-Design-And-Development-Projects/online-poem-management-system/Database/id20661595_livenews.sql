-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2023 at 08:23 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20661595_livenews`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1= active. 0= Deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `title`, `bio`, `status`) VALUES
(1, 'cpr', '<p style=\"text-align: center;\"> CopyRight by <a href=\"https://www.youtube.com/@codecampbdofficial\">Code Camp BD</a> Design and Developer <a href=\"https://developerrony.com\">MH RONY</a> All Resalve\n                <?php echo \"20\".date(\"y\"); ?></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'jahir', '999600eb275cc7196161261972daa59b', 'fahadahmedsam@gmail.com', 1, '2023-04-27 16:59:30', '2023-04-27 17:45:56'),
(2, 'admin', '999600eb275cc7196161261972daa59b', 'fahadahmedsam@gmail.com', 1, '2022-12-12 18:30:00', '2023-04-27 17:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(8, 'ক', 'ক', '2023-04-25 19:43:59', '2023-04-25 20:20:45', 1),
(9, 'খ', 'খ', '2023-04-25 20:21:46', NULL, 1),
(10, 'গ', 'গ', '2023-04-26 10:03:58', NULL, 1),
(11, 'ঘ', 'ঘ', '2023-04-26 10:04:09', NULL, 1),
(12, 'ঙ', 'ঙ', '2023-04-26 10:04:36', NULL, 1),
(13, 'চ', 'চ', '2023-04-26 10:04:52', NULL, 1),
(14, 'ছ', 'ছ', '2023-04-26 10:05:03', NULL, 1),
(15, 'জ', 'জ', '2023-04-26 10:05:13', NULL, 1),
(16, 'ঝ', 'ঝ', '2023-04-26 10:05:24', NULL, 1),
(17, 'ঞ', 'ঞ', '2023-04-26 10:05:34', NULL, 1),
(18, 'Others', 'Others', '2023-04-26 10:34:31', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PageTitle` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Poet', '<p>কবি মোহাম্মদ জহির উদ্দিনের সৃষ্টি জগৎ নানা বৈশিষ্ট্যে বিশাল। তবে তা কেবল সংখ্যাতত্ত্বে নয়, গুণতত্ত্বের চেতনাসিদ্ধ বৈচিত্র্যে অনন্য। এ অনন্য সাহিত্য ভাণ্ডার এর মূল্যায়ন-বিশ্লেষণ, গুরুত্ব অর্থতত্ত্বে বা পাঠক পরিমাপে যথেষ্ট উদ্দীপকের ভূমিকা রাখে। শুধু ভালোলাগা থেকে কবিতা নয়- কবিতা থেকেও কবির ভালোলাগা হয়েছে। তারই সমর্থনে যুক্তি প্রদান তার কবিতাগুলোতে গণমাত্রা তৈরি করেছে। কবিতাগুলোতে বাইরের জিনিসকে অন্তরে এবং তার রসায়নই যে তার নির্যাস তা তার চিত্তের উচ্ছ্বাস থেকেই বোঝা যায়। কবি যেন গ্রহীতা আর প্রকৃতি হচ্ছে দাতা । প্রকৃতির অকৃপণ দান কবি আনন্দচিত্তে গ্রহণ করেছেন।</p><p><span style=\"font-size: 14px;\"><br></span></p><p>কবি স্বপ্ন দেখতে ভালোবাসেন। সব মানুষই দেখে থাকে, দেখতে হয়। তাকে দেখতে হয়েছে আরও বেশি করে। কবিদের দেখতে হয়। তার কবিতাগুলোতে স্বপ্নের আলোছায়ায় চিত্রল বর্ণসম্পাত ঘটেছে। সেই স্বপ্ন আর ইচ্ছার পাখায় উড়ার বাসনায় তার লেখনি। কবি হৃদয়ে স্তরে স্তরে যে বিষাদের আচ্ছাদন ছিল তা ভেদ করে তার ভেতরটাতে বিশ্বের আলোক যেন বিচ্ছুরিত হয়ে পড়েছে। কবি সত্যে আত্মবিশ্বাসী সৃষ্টিশীল সাহসী উৎফুল্ল চেতনায় অস্থির।</p><p><br></p><p>এ কাব্যগ্রন্থের কবিতাগুলোতে কবির কয়েকটি অনুভূতি স্পষ্ট হয়েছে যেমন অভিভূত হওয়া, বিমুগ্ধতা, জাগরণ, গতিবাদ, প্রথাবিরোধিতা, প্রকৃতি-স্তুতি, বিদ্রোহ এবং জীবন প্রকৃতির অন্বয়। দৃষ্টিতে যে সুন্দর, তার ছোঁয়ায় মন- প্রাণে আসে শিহরণ এবং সৃজন। সেই সৃজন কবি মনের। কবি কবিতার স্বার্থে নিরপেক্ষ থেকে জেগে উঠেছেন সৃজনের শক্তিতে। কবির মনের খবর কেউ রাখেনা, তা থাকে জীবন যাপনের আবরণে ঢাকা। এ কাব্য গ্রন্থটি কবির দীর্ঘদিনের অপেক্ষার ফল।</p>', '2021-06-29 18:30:00', '2023-04-28 09:28:47'),
(2, 'contactus', 'Contact Details', '<p style=\"text-align: center;\"><br></p><p style=\"text-align: center; \"><b>Name:&nbsp; Mohammad Jahir Uddin</b></p><p style=\"text-align: center; \"></p><p style=\"text-align: center; \"><b>Address :&nbsp; 44, Nilambarshaha Road, Hazaribagh Park, Dhaka - 1205, Bangladesh.</b></p><div style=\"text-align: center;\"><b>Phone Number : +880 1729061501</b></div><p></p><p style=\"text-align: center;\"><b>Email -id : @gmail.com</b></p>', '2021-06-29 18:30:00', '2023-04-25 19:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(11) DEFAULT NULL,
  `PostUrl` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(16, 'স্বপ্ন যেন কাগজের বিমান', 8, 15, '<p><font color=\"#050505\" face=\"Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15px; white-space: pre-wrap;\">বিষন্ন সুন্দর স্বপ্নগুলো ধীরেধীরে হচ্ছে আকাশ সমান,\r\nহৃদয়ের কূল ভেঙ্গে তা যেন আজ কাগজের বিমান।\r\nস্বপ্ন ছিল স্বপ্ন দেখার, স্বপ্নের মাঝে দিচ্ছি ডুবসাতার,\r\nস্বপ্ন গুলো স্বপ্ন হয়ে আকাশ আমার ঘন অন্ধকার।\r\nস্বপ্ন সেতো স্বপ্ন নয় মনে হয় মৃত‌্যুর ভিতর পথ চলছি,\r\nনির্বোধ আমি বুঝিনা, ক্লান্ত নীল হতাশায় শুধু জ্বলছি।\r\nস্বপ্ন কাঁদায়, স্বপ্ন হাসায়, স্বপ্ন ভাবায় নানান ছলে,\r\nআঁধার ভরা মনের ঘরে, স্বপ্ন প্রদীপ ক্ষণে জ্বলে।\r\nমন কাঁদে নির্জনে, স্বপ্ন ভঙ্গের কষ্ট কেন যে কাঁদায়?\r\nকে জানে, কিসের টানে, কখন অজান্তে বুক ভাসায়।\r\nস্বপ্ন আমায় পিছু ডাকে, স্বপ্ন আমায় বাঁচতে শেখায়,\r\nস্বপ্ন জোগায় মুখের ভাষা,স্বপ্ন আমায় হাঁটতে শেখায়।\r\nস্বপ্ন ছুটে স্বপ্ন টুটে, তার পিছনে ছুটে আমার জীবন,\r\nস্বপ্ন দেখায় পথের দিশা, স্বপ্ন কাঠির ছোঁয়ায় মরণ।\r\nঅভিলাষে জেগে থেকে মন, স্বপ্ন হঠাৎ বাঁচতে শেখায়,\r\nপ্রবল উচ্ছ্বাসে মন জাগে তাই স্বপ্ন ছোঁয়ার প্রতিক্ষায়।\r\nচুপিচুপি কে যেন বলছে আমায় হারাইনা যেন বিশ্বাস,\r\nনিবিড় অন্ধকারে না ফেলি যেন স্বপ্ন ভাঙ্গার দীর্ঘশ্বাস।\r\nস্বপ্ন অনেক হাতছানি দেয়, জীবনের সময় বাকি অল্প,\r\nতবুও স্বপ্ন জীবনের নেশা,স্বপ্ন জীবনের অবিরাম গল্প।</span></font><br></p>', '2023-04-25 20:31:35', '2023-04-26 17:06:41', 1, 'স্বপ্ন-যেন-কাগজের-বিমান', 'dea0df353fcc369128b6bd7ae161bec5.jpg', 14, 'admin', 'admin'),
(18, 'মসজিদ', 9, 16, '<p>মুয়াযযিনের মধুর আযান ধ্বনিতে ইথারে ভেসে আসে আল্লাহু আকবর,</p><p>বেহেশতের ঐ গুলবাগিচা মুক্তির সুনিশ্চিত সাধন সে তো আল্লাহর ঘর।</p><p>আযানের ডাকে আল্লাহর গুনগান গাইতে ছুটে আসে মোমিন মুসলমান,</p><p>দিবস-‌নিশিথে সিক্ত মন-প্রাণে তেলওয়াত হয় পবিত্র আল-‌কোরআন।</p><p>ঐশী প্রেমের পবিত্র স্থান যেথা কাতারে কাতারে মোমিনের হয় মিলন,</p><p>আত্মিক প্রশান্তির পূর্ণ আলোয় হেথা প্রতিনিয়ত চলে সত্যের দিকদর্শন।</p><p>শেষ বিচারের নিদানের তরে নামাজ কায়েমে হেথা দলে দলে সবে ছুঁটে আসে,</p><p>ধনী দূর্জন কত সুজন ভেদাভেদ ভুলে কাঁধে কাঁধ রেখে দাঁড়ায় সবার পাশে।</p><p>আল্লাহর তরে শির লুটায়ে হেথা মুসলিম উম্মাহর জীবন হয় সফল,</p><p>ঈমামের পিছে কাতারে দাঁড়ায়ে নিরবে নিভৃতে বুনে আখেরের ফসল।</p><p>কোরআনের বাণীর মধুর তানে মর্মে মর্মে ঢেউ উঠে ভক্তির তুফানে,</p><p>প্রাণের শোণিত ধারে রক্ত ঝরিয়ে হেথা আবাদ হয় মোহ মুগ্ধমনে।</p>', '2023-04-26 10:40:54', '2023-04-27 09:18:43', 1, 'মসজিদ', 'dea0df353fcc369128b6bd7ae161bec5.jpg', 4, 'admin', NULL),
(19, 'আবার আসিবো ফিরে', 10, 17, '<p>যেদিন অন্ধকারে রশ্মিছটা অসিমের বাতায়ন তলে</p><p>প্রদীপ শিখার মত কমলা রঙে নিভুনিভু করিয়া জ্বলে,</p><p>যখন খুলিবে নীরবের দ্বার বীণার তারে সুর তুলে</p><p>সেদিন সেই শতদলে গন্ধ ছড়াবো আমি সব কষ্ট ভুলে।</p><p>যেদিন নিঃশব্দ সংকেতে প্রাণে জাগিবে তীব্র উদ্দেশ</p><p>সাগর সঙ্গমে মহিসোপানে থাকিবেনা মধুরিমার রেশ,</p><p>যখন সুন্দরের শেষ অর্চ্চনা ধীরে ধীবে হইবে নিঃশেষ</p><p>সেদিন মানস সরসে মনের হরষে গাইব গান অবশেষ।</p><p>যেদিন গোলাপের স্বপ্ন বেদনা বিবশে ঝরিবে মুকুলে</p><p>আতরের সুরভী-মধুর সুগন্ধ ছড়াবেনা একরাশ চুলে,</p><p>যখন কবিতা-বিহগী মন বাতায়নে জাগিবেনা দুলে</p><p>সেদিন আবার আসিবো ফিরে দখিনা বাতায়ন খুলে।</p>', '2023-04-26 10:42:07', '2023-04-27 08:16:23', 1, 'আবার-আসিবো-ফিরে', 'dea0df353fcc369128b6bd7ae161bec5.jpg', 8, 'admin', NULL),
(20, 'সর্বনাশা অবুঝ মন', 11, 18, '<p>রিনি‌ঝিনি চুড়ি, ছন্দের তালে বাজে রুম ঝুম নুপুর,</p><p>পাগল করে আমায়, হিয়ার মাঝে বাজে অচেনা সুর।</p><p>নোটন খোঁপায় বাঁধো যখন ঝুমকো জবার শত ফুল,</p><p>মন ময়ূরী দোলে,এলিয়ে রাখ যখন মেঘ কালো চুল।</p><p>কর্ণে যখন ঝুমকো দোলে,তোমার রূপের নহর সাজে,</p><p>ইচ্ছে করে থমকে দাড়াই, মন বসেনা আপন কাজে।</p><p>তোমার অতো বড় চোখ,দীর্ঘশ্বাস,বুকের উষ্ণ নিঃশ্বাস,</p><p>উদাস হিয়া দোলায় আমায়, জাগায় মনে প্রেম বিশ্বাস।</p><p>সর্বনাশা ঐ চোখে যখন দেখি কাজলের চিকন টান,</p><p>ভালবাসার টানে মন আমার উত্তেজনায় করে স্নান।</p><p>মনের পলিতে বৃষ্টি ঝরায়, তোমার মুচকী মিষ্টি হাসি,</p><p>সোনাবরণ ঐ গালে টোল, চাঁদ বদন বড্ড ভালবাসি।</p><p>লাজুক রাঙা বাঁকা চাহনি কি জানি কি বলতে চায়,</p><p>প্রণয় নীলিমায় প্রেম আবেশে মন আমার হারিয়ে যায়।</p><p>ঐ চাঁদ মুখের কালো তিলে মলিন হয় আকাশের তারা,</p><p>কি অপরূপ গন্ধমূষিক বাম গালের তিলের ধারা।</p><p>বেশ লাগে তোমার প্রিয় নথ ও নাকের ছোট্ট নোলক,</p><p>মন মজেছে,প্রাণ পড়েছে শিহরণে,পড়েনা কোন পলক।</p><p>লাল আবরণ যখন দেখি ঐ রক্ত জবা গোলাপ ঠোঁটে।</p><p>লাল আবিরের মিছে অধিকার যেন কারো না জোটে।</p><p>মিষ্টি মধুর চাঁদ কথন চপলা চঞ্চল উদাসী হও যখন,</p><p>কেমনে বলি তুমি প্রিয়জন, তোমায় খোঁজে অবুঝ মন।</p>', '2023-04-26 10:44:15', '2023-04-27 20:45:44', 1, 'সর্বনাশা-অবুঝ-মন', 'dea0df353fcc369128b6bd7ae161bec5.jpg', 4, 'admin', NULL),
(21, 'হারিয়েছে আত্মতুষ্টির পেলবতা', 12, 19, '<p>নীল আকাশ ঢেকে দিয়েছে আকাশ ছোঁয়া অট্টালিকার সারি,</p><p>আলোক ধাঁধায় হারিয়ে গিয়েছে ছায়া সুনিবিড় ছোট্ট টিনের বাড়ি।</p><p>রাত্রির কোলাহলে সুউচ্চ অট্টালিকা যান্ত্রিকরূপে হয়েছে আঁকা,</p><p>সুবিশাল গার্ডেন সিটির আন্তরিকতা কৃত্রিমতায় পড়েছে ঢাকা।</p><p>কোথায় সে ভুবন ভূলানো হাসি, তাল-পাখার বাতাসের আনন্দ,</p><p>হারিয়ে গেছে সেই ছায়া দেয়া গাছ, শ‌্যামল মাটির সোঁদা গন্ধ।</p><p>বিলীন হয়েছে প্রকৃতি প্রদত্ত সহজাত প্রবৃত্তি আদর সোহাগ মাখা স্নেহ,</p><p>ছিন্ন গোলপাতার ঘরে মাছের ঝোলের স্বাদ, কৃষকের ক্লান্ত দেহ।</p><p>নেই হেথা জোনাকীর ঝিঁ ঝিঁ ডাক, জোছনা জড়ানো ফুরফুরে চাঁদ,</p><p>এখানে যত আলো তত অন্ধকার, বড় বড় দালান রক্তের দাগ।</p><p>কোথায় হারালো সুবাসিত স্নিগ্ধ হাওয়ায় সোনালী ফসলের ছোঁয়া,</p><p>শুধুই বিষাক্ততায় ভরা নিয়ন আলো, ধূসর আকাশ, কালো ধোঁয়া।</p><p>হারিয়ে গিয়েছে অরণ্যের ওপারে ডুবন্ত সূর্য, আম জামের গাছ,&nbsp;</p><p>মাচা ভরা সীম লাউ কুমড়ার ফুল সেই সাথে সবুজ দূর্বা ঘাস।</p><p>হারিয়ে গিয়েছে ঘাস ফড়িং মধু মাছি প্রজাপতি, খাল বিলের তরঙ্গ,</p><p>ভুলে গিয়েছি কেমন করে টুনটুনি ঠোটের চোটে ধরে কীট পতঙ্গ।</p><p>তপ্ত নগরী ধূ ধূ প্রান্তর, হেথা নেই কোন সবুজের সজীবতা,</p><p>ক্লান্তি শেষে এক বুক আক্ষেপ, এখানে নেই সুখের পেলবতা।</p><p>১লা রমজান ১৪৪৪ হি:</p>', '2023-04-26 10:45:13', '2023-04-26 17:11:58', 1, 'হারিয়েছে-আত্মতুষ্টির-পেলবতা', 'dea0df353fcc369128b6bd7ae161bec5.jpg', 7, 'admin', NULL),
(22, 'চঞ্চল মন', 13, 20, '<p>চঞ্চল মন ক্ষণে ক্ষণে হায় দোলা দিয়ে যায়,</p><p>দখিনা সমীরে অন্তর দোলায় চঞ্চল হাওয়ায়।</p><p>উতলা প্রাণ করে আনচান চঞ্চল পুলকরাশি,</p><p>ভ্রমরগুঞ্জনে কল্পনায় আসি করে অবগাহি।</p><p>দিশেহারা মন আজিকে শোনেনা কোন কথা,</p><p>যতই বাঁধিতে চাই তারে বাড়ে তার চঞ্চলতা।</p><p>অচেতন চিতে গুনগুন গীতে বাড়ায় স্হবিরতা,</p><p>পলকে, আলোকে জাগরণে জাগে অস্থিরতা।</p><p>বাঁধিতে চাহি তারে বারে বারে কোথা বাঁধি তারে?</p><p>না মানে শাসন, না শুনে বারণ কেবা ধরতে পারে?</p><p>দুরন্ত দূর্বার, নাহি ভয় হারাবার, ছিন্ন মায়ার বাঁধন,</p><p>অবিরত ছুটে চলে, নীলাকাশে ওড়ে পাখি যেমন।</p><p>রঙিন স্বপন নিমগ্ন মন চপলা চঞ্চল সারাক্ষণ,</p><p>নানা আঙিনায় চঞ্চল মনে কত রূপের শিহরণ।</p><p>ছুটন্ত নদী, ছুটন্ত ঝরনার মতন করে আলিঙ্গন,</p><p>সুখাদোরে করি যতন, ওহে আমার চঞ্চল মন।</p>', '2023-04-26 10:46:22', '2023-04-28 14:27:26', 1, 'চঞ্চল-মন', 'dea0df353fcc369128b6bd7ae161bec5.jpg', 5, 'admin', NULL),
(23, 'শ্রাবণের মেঘ', 14, 21, '<p>শ্রাবণের মেঘগুলি আকাশে লুুকোচুরী খেলায়,</p><p>কত রূপে সাজে কালো মেঘ বেলা অবেলায়।</p><p>আকাশের বুকে ক্ষণে ক্ষণে কত রঙ বদলায়,</p><p>আঁধার কালো মেঘ ভর করে মনের ছোঁয়ায়।</p><p>বলাকারা উড়ে যায় মেঘের পানে, হাওয়ার তালে,</p><p>ওদের মত ছুঁয়ে যেতে চায় মন মেঘের কোলে।</p><p>ঘোর বরিষণে মেঘের আঁচলে বৃষ্টির দৌড়াদোড়ি,</p><p>অন্তহীন আকাশে ব‌্যাকুলচিত্তে মেঘের উড়াউড়ি,</p><p>আকাশ ফুঁড়ে সহসা নামে অঝর ধারায় বৃষ্টি,</p><p>দুষ্ট বাতাসে মেঘের দলে মিশে যায় অবাক দৃষ্টি।</p><p>হারিয়ে যেতে ইচ্ছে করে রিমঝিম বৃষ্টির মূর্ছনায়,</p><p>সে মধুর সুরের ঢেউ খেলে যায় ফোঁটায় ফোঁটায়।</p><p>বৃষ্টির ছন্দে জলতরঙ্গে মনে জাগে হিমেল কাঁপন,</p><p>কেমন করে ঘর ছেড়ে জানায় ভেজার আমন্ত্রণ।</p><p>এমন দিনে এক ঝাঁক স্বপ্ন উড়ে শ্রাবণের আকাশে,</p><p>তন্বী দেহে যেন নুপুর বাজে কোমলতার আবেশে।</p>', '2023-04-26 10:47:28', '2023-04-26 19:03:47', 1, 'শ্রাবণের-মেঘ', 'dea0df353fcc369128b6bd7ae161bec5.jpg', 3, 'admin', NULL),
(24, 'কুসংস্কার', 15, 22, '<p>কত সহস্র কুসংস্কারে দেশটা আছে যে ভাই ছেঁয়ে,</p><p>বিজ্ঞানের যুগে এখনও আছি আঁধারের দিকে চেয়ে।</p><p>চুলকালে ডান হাতের তালু কাড়িকাড়ি আসে টাকা,</p><p>বাম হাতের তালু চুলকানিতে পকেট হয়ে যায় ফাঁকা।</p><p>পেঁচা ডাকলে যখন তখন আসতে পারে মহা আপদ,</p><p>ভাঙ্গা আয়নায় মুখ দেখলে আসে বড় বড় বিপদ।</p><p>বেজোড় শালিক দেখা মন্দ এটা মিথ‌্যা নয় একরত্তি,</p><p>ভোর বেলা স্বপ্ন দেখলে সেটা হয়ে যায় একদম সত্যি।</p><p>ডিম খেয়ে পরীক্ষা দেয়া মুরুব্বীদের একেবারে মানা,</p><p>দুঃখ আসে বাম চোখ কাঁপলে এ কথা সবার জানা।</p><p>সন্ধ‌্যাবেলা কালো কাকের ডাক যত বিপদের কারণ,</p><p>হঠাৎ করে শকুন ডাকলে আপন জনের হয় মরণ।</p><p>বৃষ্টির সাথে রোদ উঠলে শিয়াল মামার হয় যে বিয়ে,</p><p>ভর দুপুরে পাখি ডাকলে কুটুম আসে মিষ্টি নিয়ে।</p><p>সত‌্য কথার যাচাই হয় টিকটিকির টিক টিক ডাকে,</p><p>বউ পাগল হয় সেই ছেলে ঘাম যদি ঝরে তার নাকে।</p><p>উল্টো জুতো বসত বাড়িতে রাখা একেবারেই বারণ,</p><p>জেনে রাখো কালো বিড়াল দর্শন সব বিপদের কারণ।</p><p>রাতের বেলায় ঘর ঝাড়ু দিলে আসবে নেমে অভাব,</p><p>ফল ভালো হবেনা রাতে যদি থাকে লেনদেনের স্বভাব।</p><p>যমজ সন্তান জন্মায় খায় যদি কেউ জোড়া কলা,</p><p>মুখে নিলে স্বমীর নাম পূর্ণ হয় অমঙ্গলের ষোলকলা।</p>', '2023-04-26 10:48:20', '2023-04-27 21:51:26', 1, 'কুসংস্কার', 'dea0df353fcc369128b6bd7ae161bec5.jpg', 15, 'admin', NULL),
(25, 'পরচর্চা', 16, 23, '<p>রোদ চশমা চোখে দিয়ে মশাই</p><p>শুধু পরের দোষই খোঁজে,</p><p>নেইকো মোটেই লাজ লজ্জা&nbsp;</p><p>পরনিন্দা তোমার সর্ব কাজে।।</p><p><br></p><p>হীণ মনেতে, বেশি ধনেতে&nbsp;</p><p>গর্ব সদাই ‌কেন তোমার তাতে?</p><p>দৈন‌্য বেসে অকপটে বলো&nbsp;</p><p>পরনিন্দা নেই তোমার ধাতে।।</p><p><br></p><p>লাভ কি বলো করে কলরব&nbsp;</p><p>নিন্দুকের মান অতি জঘন‌্য,</p><p>সময় থাকতে পাল্টাও নিজেকে&nbsp;</p><p>পরনিন্দা করো পাপগণ‌্য।।</p><p><br></p><p>পরনিন্দা-পরচর্চা অঙ্গারসম&nbsp;</p><p>সমাজের কঠিন এক ব‌্যাধি,</p><p>কঠিন ফাঁদে সহসা পড়বে&nbsp;&nbsp;</p><p>বিরত না হও এখনও যদি।।</p><p><br></p><p>যতই তুমি পরচর্চা করো,&nbsp;</p><p>ভেতর থেকে ততই হবে নষ্ট,</p><p>পরনিন্দা দেয়না কখনো মুক্তি,&nbsp;</p><p>আঁকড়ে ধরে বাড়ায় অন্ত কষ্ট।।</p><p><br></p><p>গরলচিত্তে মহত্ত্বকে পদে পদে&nbsp;</p><p>কেন মাড়িয়ে চলো নিন্দার কাঁটা?</p><p>পরচর্চা অবিরত সহচর হয়ে,&nbsp;</p><p>জীবন তোমার করছে সাদামাটা।।</p>', '2023-04-26 10:49:24', '2023-04-28 15:21:23', 1, 'পরচর্চা', 'dea0df353fcc369128b6bd7ae161bec5.jpg', 6, 'admin', NULL),
(26, 'পাপ', 17, 24, '<p>জীবনে ভেসে চলে পাপ পূণ্যের স্রোত,</p><p>ঢেউ এসে ধুয়ে কখনো করে দায় শোধ!</p><p>ক্ষণে অযাযিত বৃষ্টি পড়ে মনের ভিতর,</p><p>তবুও চোখের জল জানেনা বৃষ্টির খবর।</p><p>প্রতিনিয়ত করছি ছোট বড় কাজ কত,</p><p>জেনে না জেনে করছি পাপ শত শত।</p><p>মাঝে মাঝে প্রেম দিয়ে মোরা পাপ কাটি,</p><p>কিংবা পাপ দিয়ে প্রেম করি দৃশ‌্যত খাটি।</p><p>চলার পথে রৌদ্র ঔজ্জ্বল‌্য তানে-তাপে,</p><p>ডুবে থাকা প্রেম জাগে প্রগাঢ় শত পাপে।</p><p>কিছু কিছু পাপে ফোটে ক্ষণিকের ফুল,</p><p>কিছু পাপে হয় জীবনের বড় বড় ভুল।</p><p>আবার কিছু পাপে আসে ক্ষণিক বসন্ত,</p><p>বিনিদ্র খেয়ালে জেগেও থাকে ঘুমন্ত।</p><p>ফুল আর ভুলে কাটে ছোট্ট এ জীবন,</p><p>এভাবেই একদিন জীবন সূর্যের পতন।</p><p>সুন্দর এ ধরা তল শুধুই ‌কি অভিশাপ?</p><p>পার পেয়ে যায় ধরায়, পাপী করে পাপ।</p><p>পাপ অ-পাপের হিসেব প্রভু যদি চায়,</p><p>কি হবে জানিনা হায়! মোদের উপায়।</p>', '2023-04-26 10:50:22', '2023-04-28 17:35:24', 1, 'পাপ', 'dea0df353fcc369128b6bd7ae161bec5.jpg', 9, 'admin', NULL),
(29, 'দাও মুক্ত আকাশ-সিন্গ্ধ বাতাস', 17, 24, '<p>এ বিশ্বকে গড়ে তুলো যদি শিশু বান্ধব নিরাপদ স্থান,</p><p>তবেই‌বিকশিত হবে শিশুর কোমলমতি নিষ্পাপ প্রাণ।</p><p>যদি দিতে পার সামর্থ‌্য ও শক্তির স্বাভাবিক বিকাশ,</p><p>তবে শিশুর হবে স্বপ্রণোদিত স্বতঃস্ফূর্ত আত্মবিকাশ।</p><p>ভয়হীন, আকর্ষণীয় শিখনের দাও যদি তার অধিকার,</p><p>জঞ্জাল সরিয়ে নিরাপদ করতে থাকুক দৃঢ় অঙ্গীকার।</p><p>সুষম বিকাশে দাও যদি মুক্ত আকাশ-সিন্গ্ধ বাতাস,</p><p>তবে মেধা ও মনন দিয়ে বিশ্ব দ্বারে গড়বে সে ইতিহাস।</p><p>শিশুর সাথে শিশুর তরে নবরূপে বিশ্বকে যদি গড়ো,</p><p>নগন‌্য নয় অগন‌্য এ শিশু কখনও হবে না জড়সড়ো।</p><p>যদি নিগ্রহ রোধে শৈশবকে রক্ষা করার দাও অধিকার,</p><p>তবে সংহত হবে অধিকার, আইন থাকবেনা নির্বিকার।</p><p>যদি দ্বিধা-দ্বন্দ্ব ভুলে জাগাও বিবেক সুপ্ত যত আবেগ,</p><p>কাগজের অধিকার ধূলায় লুটিয়ে ফেলবে তার প্রভাব।</p><p>যদি পবিত্রতায় শিশুকে গড়ো অপূর্ব, নির্মল, নিষ্পাপ,</p><p>তবে প্রাপ‌্য অধিকারে বিধাতার নাহি রবে অভিশাপ।</p>', '2023-04-27 06:00:10', '2023-04-30 19:15:58', 1, 'দাও-মুক্ত-আকাশ-সিন্গ্ধ-বাতাস', '1a18217e42ba5a0a955c074be11c216d.jpg', 20, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SubCatDescription` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(15, 8, 'প্রকৃতি', 'প্রকৃতি', '2023-04-25 20:29:35', NULL, 1),
(16, 9, 'দিবস', 'দিবস', '2023-04-25 20:35:54', '2023-04-26 10:07:43', 1),
(17, 10, 'অসঙ্গতি', 'অসঙ্গতি', '2023-04-26 10:08:27', NULL, 1),
(18, 11, 'অনুপ্রেরণা', 'অনুপ্রেরণা', '2023-04-26 10:08:58', NULL, 1),
(19, 12, 'অমোঘ বিধান', 'অমোঘ বিধান', '2023-04-26 10:10:28', NULL, 1),
(20, 13, 'প্রেম বিরহ কথা', 'প্রেম বিরহ কথা', '2023-04-26 10:11:45', NULL, 1),
(21, 14, 'মা মাটি দেশ', 'মা মাটি দেশ', '2023-04-26 10:12:39', NULL, 1),
(22, 15, 'বিচলিত মন', 'বিচলিত মন', '2023-04-26 10:30:25', NULL, 1),
(23, 16, 'অপরিমেয় বন্ধন', 'অপরিমেয় বন্ধন', '2023-04-26 10:31:53', NULL, 1),
(24, 17, 'বিবিধ', 'বিবিধ', '2023-04-26 10:32:23', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`);

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`),
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`),
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`);

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
