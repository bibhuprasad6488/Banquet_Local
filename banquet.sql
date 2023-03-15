-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 02:50 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banquet`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `amenity_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `user_id`, `business_id`, `amenity_name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 'AC', '<i class=\"fa fa-snowflake-o\" aria-hidden=\"true\"></i>', 1, '2023-01-18 10:20:55', '2023-03-11 18:41:11'),
(2, 5, NULL, 'Free Wifi', '<i class=\"fa fa-wifi\" aria-hidden=\"true\"></i>', 1, '2023-01-19 09:57:20', '2023-01-19 09:57:44'),
(3, 5, NULL, 'Parking', '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>', 1, '2023-01-19 10:08:09', '2023-02-09 18:26:03'),
(4, 5, NULL, 'King Size Bed', '<i class=\"fa-solid fa-bed\"></i>', 1, '2023-02-09 12:37:10', '2023-02-09 12:37:10'),
(5, 5, NULL, 'Tv', '<i class=\"fa-solid fa-tv\"></i>', 1, '2023-02-09 12:40:37', '2023-02-09 12:41:01'),
(6, 5, NULL, 'Power Backup', '<i class=\"fa fa-power-off\" aria-hidden=\"true\"></i>', 1, '2023-02-09 12:52:11', '2023-02-09 18:26:58'),
(7, 5, NULL, 'Resturant & Bar', '<i class=\"fa fa-cutlery\" aria-hidden=\"true\"></i>', 1, '2023-02-09 12:53:35', '2023-02-09 18:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `bank` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank`) VALUES
(1, 'Bank of Baroda'),
(2, 'Bank of India'),
(3, 'Bank of Maharashtra'),
(4, 'Canara Bank'),
(5, 'Central Bank of India'),
(6, 'Corporation Bank'),
(7, 'Dena Bank'),
(8, 'Indian Bank'),
(9, 'Indian Overseas Bank'),
(10, 'IDBI Bank'),
(11, 'Oriental Bank of Commerce'),
(12, 'Punjab & Sindh Bank'),
(13, 'Punjab National Bank'),
(14, 'State Bank of India'),
(15, 'Syndicate Bank'),
(16, 'UCO Bank'),
(17, 'Union Bank of India'),
(18, 'United Bank of India'),
(19, 'Vijaya Bank'),
(20, 'Axis Bank'),
(21, 'Bandhan Bank'),
(22, 'Catholic Syrian Bank'),
(23, 'City Union Bank'),
(24, 'DCB Bank'),
(25, 'Dhanlaxmi Bank'),
(26, 'Federal Bank'),
(27, 'HDFC Bank'),
(28, 'ICICI Bank'),
(29, 'IDFC Bank'),
(30, 'IndusInd Bank'),
(31, 'Jammu and Kashmir Bank'),
(32, 'Karnataka Bank'),
(33, 'Karur Vysya Bank'),
(34, 'Kotak Mahindra Bank'),
(35, 'Lakshmi Vilas Bank'),
(36, 'Nainital Bank'),
(37, 'RBL Bank'),
(38, 'South Indian Bank'),
(39, 'Tamilnad Mercantile Bank'),
(40, 'YES Bank'),
(41, 'A U Small Finance Bank'),
(42, 'Equitas Small Finance Bank'),
(43, 'Ujjivan Small Finance Bank'),
(44, 'Utkarsh Small Finance Bank'),
(45, 'Janalakshmi Small Finance Bank'),
(46, 'Capital Lab Small Finance Bank'),
(47, 'Disha Small Finance Bank'),
(48, 'ESAF Small Finance Bank'),
(49, 'RGVN Small Finance Bank'),
(50, 'Suryoday Small Finance Bank'),
(51, 'Coastal Local Area Bank Limited'),
(53, 'Subhadra Local Area Bank Limited'),
(54, 'India Post Payments Bank'),
(55, 'Fino Payment Bank'),
(56, 'Airtel Payments Bank'),
(57, 'Paytm Payments Bank'),
(58, 'Andhra Pradesh Grameena Vikas Bank'),
(59, 'Chaitanya Godavari Grameena Bank'),
(60, 'Saptagiri Grameena Bank'),
(61, 'Assam Gramin Vikash Bank'),
(62, 'Langpi Dehangi Rural Bank'),
(63, 'Arunachal Pradesh Rural Bank'),
(64, 'Uttar Bihar Gramin Bank'),
(65, 'Madhya Bihar Gramin Bank'),
(66, 'Bihar Gramin Bank'),
(67, 'Chhattisgarh Rajya Gramin Bank'),
(68, 'Dena Gujarat Gramin Bank'),
(69, 'Baroda Gujarat Gramin Bank'),
(70, 'Saurashtra Gramin Bank'),
(71, 'Sarva Haryana Gramin Bank'),
(72, 'Himachal Pradesh Gramin Bank'),
(73, 'Jharkhand Gramin Bank'),
(74, 'Vananchal Gramin Bank'),
(75, 'Jammu And Kashmir Grameen Bank'),
(76, 'Ellaquai Dehati Bank'),
(77, 'Kaveri Grameena Bank'),
(78, 'Karnataka Vikas Grameena Bank'),
(79, 'Pragathi Krishna Gramin Bank'),
(80, 'Kerala Gramin Bank'),
(81, 'Narmada Jhabua Gramin Bank'),
(82, 'Central Madhya Pradesh Gramin Bank'),
(83, 'Madhyanchal Gramin Bank'),
(84, 'Maharashtra Gramin Bank'),
(85, 'Vidarbha Kokan Gramin Bank'),
(86, 'Manipur Rural Bank'),
(87, 'Meghalaya Rural Bank'),
(88, 'Mizoram Rural Bank'),
(89, 'Nagaland Rural Bank'),
(90, 'Odisha Gramya Bank'),
(91, 'Utkal Grameen Bank'),
(92, 'Punjab Gramin Bank'),
(93, 'Malwa Gramin Bank'),
(94, 'Sutlej Gramin Bank'),
(95, 'Puduvai Bharathiar Grama Bank'),
(96, 'Baroda Rajasthan Kshetriya Gramin Bank'),
(97, 'Marudhara Rajasthan Gramin Bank'),
(98, 'Pandyan Grama Bank'),
(99, 'Pallavan Grama Bank'),
(100, 'Telangana Grameena Bank'),
(101, 'Tripura Gramin Bank'),
(102, 'Sarva UP Gramin Bank'),
(103, 'Prathama Bank'),
(104, 'Allahabad UP Gramin Bank'),
(105, 'Baroda UP Gramin Bank'),
(106, 'Gramin Bank Of Aryavrat'),
(107, 'Kashi Gomti Samyukt Gramin Bank'),
(108, 'Purvanchal Bank'),
(109, 'Uttarakhand Gramin Bank'),
(110, 'Bangiya Gramin Vikash Bank'),
(111, 'Paschim Banga Gramin Bank'),
(112, 'Uttarbanga Kshetriya Gramin Bank'),
(114, 'Andhra Pradesh State Co-operative Bank Ltd.'),
(116, 'Assam Co-operative Apex Bank Ltd.'),
(117, 'Bihar State Co-operative Bank Ltd.'),
(118, 'Chandigarh State Co-operative Bank Ltd.'),
(119, 'Delhi State Co-operative Bank Ltd.'),
(120, 'Goa State Co-operative Bank Ltd.'),
(121, 'Gujarat State Co-operative Bank Ltd.'),
(122, 'Haryana State Co-opertive Apex Bank Ltd.'),
(123, 'Himachal Pradesh State Co-operative Bank Ltd.'),
(125, 'Karnataka State Co-operative Apex Bank Ltd.'),
(126, 'Kerala State Co-operative Bank Ltd.'),
(127, 'Madhya Pradesh Rajya Sahakari Bank Maryadit'),
(128, 'Maharashtra State Co-operative Bank Ltd.'),
(129, 'Manipur State Co-operative Bank Ltd.'),
(130, 'Meghalaya Co-operative Apex Bank Ltd.'),
(131, 'Mizoram Co-operative Apex Bank Ltd.'),
(132, 'Nagaland State Co-operative Bank Ltd.'),
(133, 'Orissa State Co-operative Bank Ltd.'),
(134, 'Pondichery State Co-opertive Bank Ltd.'),
(135, 'Punjab State Co-operative Bank Ltd.'),
(136, 'Rajasthan State Co-operative Bank Ltd.'),
(137, 'Sikkim State Co-operative Bank Ltd.'),
(138, 'Tamil Nadu State Apex Co-operative Bank Ltd.'),
(139, 'Tripura State Co-operative Bank Ltd.'),
(140, 'Uttar Pradesh Co-operative Bank Ltd.'),
(141, 'West Bengal State Co-operative Bank Ltd.'),
(142, 'Chhattisgarh RajyaSahakari Bank Maryadit'),
(143, 'Uttarakhand State Co-operative Bank Ltd.');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `booking_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `book_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`book_data`)),
  `total_amount` decimal(10,2) DEFAULT NULL,
  `booking_datetime` date DEFAULT NULL,
  `booked_date` date DEFAULT NULL,
  `status` enum('pending','completed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer_id`, `business_id`, `booking_no`, `venue_id`, `package_id`, `book_data`, `total_amount`, `booking_datetime`, `booked_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, NULL, '167757747118953645762', 2, 1, '{\"24\": [\"94\", \"95\", \"96\", \"97\", \"98\", \"99\"], \"27\": [\"4\", \"5\"], \"31\": [\"214\", \"217\"]}', '2686.00', '2023-02-28', NULL, 'completed', '2023-02-28 15:14:31', '2023-03-15 11:55:50'),
(5, 3, NULL, '167757914323', 3, 2, '{\"22\": {\"3\": \"251\", \"6\": \"257\", \"7\": \"260\", \"8\": \"261\"}, \"24\": [\"78\"]}', '3112.00', '2023-02-28', NULL, 'pending', '2023-02-28 15:42:23', '2023-03-15 12:16:14'),
(6, 2, NULL, '167835879922', 3, 2, '{\"22\": [\"251\", \"252\", \"253\", \"254\"], \"24\": [\"95\", \"96\", \"94\"]}', '2456.00', '2023-03-09', NULL, 'completed', '2023-03-09 16:16:39', '2023-03-09 16:44:27'),
(7, 2, NULL, '167887853032', 3, 2, '{\"22\":[\"251\",\"252\",\"254\",\"255\"],\"24\":[\"94\",\"95\",\"96\",\"97\",\"98\",\"101\"]}', '1599.00', '2023-03-15', NULL, 'completed', '2023-03-15 11:08:50', '2023-03-15 11:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `brand_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `is_default` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `user_id`, `business_id`, `department_id`, `brand_name`, `status`, `is_default`, `created_at`, `updated_at`) VALUES
(4, 5, NULL, NULL, 'Amul', 'active', 'no', NULL, NULL),
(5, 5, NULL, NULL, 'Milk Moo', 'active', 'no', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `business_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_contact` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondary_contact` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avg_for` int(11) DEFAULT NULL,
  `avg_price` int(11) DEFAULT NULL,
  `open_time` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_time` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amenity` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`amenity`)),
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `business_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`others`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `user_id`, `vendor_id`, `business_name`, `primary_contact`, `secondary_contact`, `admin_email`, `staff_email`, `state`, `city`, `avg_for`, `avg_price`, `open_time`, `close_time`, `amenity`, `slug`, `status`, `created_at`, `updated_at`, `business_address`, `description`, `others`) VALUES
(5, 5, 9, 'test', '1546779785', '5585862556', 'test@gmail.com', 'busi@gmail.com', '17', '366', 5, 350, '10:00 AM', '6:00 PM', '[\"6\"]', 'test', 1, '2023-03-03 16:06:15', '2023-03-03 17:42:43', 'testing', 'tttt', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `businessphotos`
--

CREATE TABLE `businessphotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `businessphotos`
--

INSERT INTO `businessphotos` (`id`, `user_id`, `business_id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 'business', '1677840360.jpg', '2023-03-03 16:16:00', '2023-03-03 16:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `cuisines_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cuisines_id`)),
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_percent` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `business_id`, `cuisines_id`, `category_name`, `type`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`, `tax_type`, `tax_percent`, `price`) VALUES
(21, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\", \"21\": \"Desserts\"}', 'Extras', 'food', 'extras', 1, '2023-02-08 17:40:30', '2023-02-09 17:53:24', NULL, 'gst', '5', NULL),
(22, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\", \"21\": \"Desserts\"}', 'Desserts', 'food', 'desserts', 1, '2023-02-08 17:40:55', '2023-02-14 11:03:00', NULL, 'vat', '12', NULL),
(23, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\", \"21\": \"Desserts\"}', 'Breads', 'food', 'breads', 1, '2023-02-08 17:41:27', '2023-02-14 11:02:45', NULL, 'gst', '5', NULL),
(24, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\", \"21\": \"Desserts\"}', 'Main Course', 'food', 'main-course', 1, '2023-02-08 17:41:51', '2023-02-14 11:02:24', NULL, 'vat', '12', NULL),
(25, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\", \"21\": \"Desserts\"}', 'Raita', 'food', 'raita', 1, '2023-02-08 17:42:21', '2023-03-11 19:03:32', NULL, 'gst', '5', NULL),
(26, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\", \"21\": \"Desserts\"}', 'Salads', 'food', 'salads', 1, '2023-02-08 17:42:49', '2023-02-14 11:01:44', NULL, 'vat', '12', NULL),
(27, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\", \"21\": \"Desserts\"}', 'Soups', 'food', 'soups', 1, '2023-02-08 17:43:16', '2023-02-14 11:01:31', NULL, 'gst', '5', NULL),
(28, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\"}', 'Starters', 'food', 'starters', 1, '2023-02-08 17:43:49', '2023-03-11 19:05:31', NULL, 'gst', '5', NULL),
(29, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\", \"21\": \"Desserts\"}', 'Drinks', 'alcoholic', 'drinks', 1, '2023-02-08 17:44:18', '2023-02-14 11:01:01', NULL, 'gst', '18', NULL),
(30, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\", \"21\": \"Desserts\"}', 'Rice', 'food', 'rice', 1, '2023-02-14 10:57:10', '2023-02-14 11:03:27', NULL, 'gst', '12', NULL),
(31, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\", \"21\": \"Desserts\"}', 'Noodles', 'food', 'noodles', 1, '2023-02-14 10:57:56', '2023-02-14 10:57:56', NULL, 'gst', '5', NULL),
(32, 5, NULL, '{\"18\": \"Indian\", \"19\": \"Chinese\", \"20\": \"Continental\", \"21\": \"Desserts\"}', 'Appetizer', 'food', 'appetizer', 1, '2023-02-14 10:58:49', '2023-02-14 10:58:49', NULL, '5', '18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `cityshortcode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `state_id`, `cityshortcode`, `created_at`, `updated_at`) VALUES
(1, 'Alipur', 1, 101, NULL, NULL),
(2, 'Andaman Island', 1, 102, NULL, NULL),
(3, 'Anderson Island', 1, 103, NULL, NULL),
(4, 'Arainj-Laka-Punga', 1, 104, NULL, NULL),
(5, 'Austinabad', 1, 105, NULL, NULL),
(6, 'Bamboo Flat', 1, 106, NULL, NULL),
(7, 'Barren Island', 1, 107, NULL, NULL),
(8, 'Beadonabad', 1, 108, NULL, NULL),
(9, 'Betapur', 1, 109, NULL, NULL),
(10, 'Bindraban', 1, 110, NULL, NULL),
(11, 'Bonington', 1, 111, NULL, NULL),
(12, 'Brookesabad', 1, 112, NULL, NULL),
(13, 'Cadell Point', 1, 113, NULL, NULL),
(14, 'Calicut', 1, 114, NULL, NULL),
(15, 'Chetamale', 1, 115, NULL, NULL),
(16, 'Cinque Islands', 1, 116, NULL, NULL),
(17, 'Defence Island', 1, 117, NULL, NULL),
(18, 'Digilpur', 1, 118, NULL, NULL),
(19, 'Dolyganj', 1, 119, NULL, NULL),
(20, 'Flat Island', 1, 120, NULL, NULL),
(21, 'Geinyale', 1, 121, NULL, NULL),
(22, 'Great Coco Island', 1, 122, NULL, NULL),
(23, 'Haddo', 1, 123, NULL, NULL),
(24, 'Havelock Island', 1, 124, NULL, NULL),
(25, 'Henry Lawrence Island', 1, 125, NULL, NULL),
(26, 'Herbertabad', 1, 126, NULL, NULL),
(27, 'Hobdaypur', 1, 127, NULL, NULL),
(28, 'Ilichar', 1, 128, NULL, NULL),
(29, 'Ingoie', 1, 128, NULL, NULL),
(30, 'Inteview Island', 1, 130, NULL, NULL),
(31, 'Jangli Ghat', 1, 131, NULL, NULL),
(32, 'Jhon Lawrence Island', 1, 132, NULL, NULL),
(33, 'Karen', 1, 133, NULL, NULL),
(34, 'Kartara', 1, 134, NULL, NULL),
(35, 'KYD Islannd', 1, 135, NULL, NULL),
(36, 'Landfall Island', 1, 136, NULL, NULL),
(37, 'Little Andmand', 1, 137, NULL, NULL),
(38, 'Little Coco Island', 1, 138, NULL, NULL),
(39, 'Long Island', 1, 138, NULL, NULL),
(40, 'Maimyo', 1, 140, NULL, NULL),
(41, 'Malappuram', 1, 141, NULL, NULL),
(42, 'Manglutan', 1, 142, NULL, NULL),
(43, 'Manpur', 1, 143, NULL, NULL),
(44, 'Mitha Khari', 1, 144, NULL, NULL),
(45, 'Neill Island', 1, 145, NULL, NULL),
(46, 'Nicobar Island', 1, 146, NULL, NULL),
(47, 'North Brother Island', 1, 147, NULL, NULL),
(48, 'North Passage Island', 1, 148, NULL, NULL),
(49, 'North Sentinel Island', 1, 149, NULL, NULL),
(50, 'Nothen Reef Island', 1, 150, NULL, NULL),
(51, 'Outram Island', 1, 151, NULL, NULL),
(52, 'Pahlagaon', 1, 152, NULL, NULL),
(53, 'Palalankwe', 1, 153, NULL, NULL),
(54, 'Passage Island', 1, 154, NULL, NULL),
(55, 'Phaiapong', 1, 155, NULL, NULL),
(56, 'Phoenix Island', 1, 156, NULL, NULL),
(57, 'Port Blair', 1, 157, NULL, NULL),
(58, 'Preparis Island', 1, 158, NULL, NULL),
(59, 'Protheroepur', 1, 159, NULL, NULL),
(60, 'Rangachang', 1, 160, NULL, NULL),
(61, 'Rongat', 1, 161, NULL, NULL),
(62, 'Rutland Island', 1, 162, NULL, NULL),
(63, 'Sabari', 1, 163, NULL, NULL),
(64, 'Saddle Peak', 1, 164, NULL, NULL),
(65, 'Shadipur', 1, 165, NULL, NULL),
(66, 'Smith Island', 1, 166, NULL, NULL),
(67, 'Sound Island', 1, 167, NULL, NULL),
(68, 'South Sentinel Island', 1, 168, NULL, NULL),
(69, 'Spike Island', 1, 169, NULL, NULL),
(70, 'Tarmugli Island', 1, 170, NULL, NULL),
(71, 'Taylerabad', 1, 171, NULL, NULL),
(72, 'Titaije', 1, 172, NULL, NULL),
(73, 'Toibalawe', 1, 173, NULL, NULL),
(74, 'Tusonabad', 1, 174, NULL, NULL),
(75, 'West Island', 1, 175, NULL, NULL),
(76, 'Wimberleyganj', 1, 176, NULL, NULL),
(77, 'Yadita', 1, 177, NULL, NULL),
(78, 'Adilabad', 2, 201, NULL, NULL),
(79, 'Anantapur', 2, 201, NULL, NULL),
(80, 'Chittoor', 2, 203, NULL, NULL),
(81, 'Cuddapah', 2, 204, NULL, NULL),
(82, 'East Godavari', 2, 205, NULL, NULL),
(83, 'Guntur', 2, 206, NULL, NULL),
(84, 'Hyderabad', 2, 207, NULL, NULL),
(85, 'Karimnagar', 2, 208, NULL, NULL),
(86, 'Khammam', 2, 209, NULL, NULL),
(87, 'Krishna', 2, 210, NULL, NULL),
(88, 'Kurnool', 2, 211, NULL, NULL),
(89, 'Mahabubnagar', 2, 212, NULL, NULL),
(90, 'Medak', 2, 213, NULL, NULL),
(91, 'Nalgonda', 2, 214, NULL, NULL),
(92, 'Nellore', 2, 215, NULL, NULL),
(93, 'Nizamabad', 2, 216, NULL, NULL),
(94, 'Prakasam', 2, 217, NULL, NULL),
(95, 'Rangareddy', 2, 218, NULL, NULL),
(96, 'Srikakulam', 2, 219, NULL, NULL),
(97, 'Visakhapatnam', 2, 220, NULL, NULL),
(98, 'Vizianagaram', 2, 221, NULL, NULL),
(99, 'Warangal', 2, 222, NULL, NULL),
(100, 'West Godavari', 2, 223, NULL, NULL),
(101, 'Anjaw', 3, 301, NULL, NULL),
(102, 'Changlang', 3, 302, NULL, NULL),
(103, 'Dibang Valley', 3, 303, NULL, NULL),
(104, 'East Kameng', 3, 304, NULL, NULL),
(105, 'East Siang', 3, 305, NULL, NULL),
(106, 'Itanagar', 3, 306, NULL, NULL),
(107, 'Kurung Kumey', 3, 307, NULL, NULL),
(108, 'Lohit', 3, 308, NULL, NULL),
(109, 'Lower Dibang Valley', 3, 309, NULL, NULL),
(110, 'Lower Subansiri', 3, 310, NULL, NULL),
(111, 'Papum Pare', 3, 311, NULL, NULL),
(112, 'Tawang', 3, 312, NULL, NULL),
(113, 'Tirap', 3, 313, NULL, NULL),
(114, 'Upper Siang', 3, 314, NULL, NULL),
(115, 'Upper Subansiri', 3, 315, NULL, NULL),
(116, 'West Kameng', 3, 316, NULL, NULL),
(117, 'West Siang', 3, 317, NULL, NULL),
(118, 'Barpeta', 4, 401, NULL, NULL),
(119, 'Bongaigaon', 4, 402, NULL, NULL),
(120, 'Cachar', 4, 403, NULL, NULL),
(121, 'Darrang', 4, 404, NULL, NULL),
(122, 'Dhemaji', 4, 405, NULL, NULL),
(123, 'Dhubri', 4, 406, NULL, NULL),
(124, 'Dibrugarh', 4, 407, NULL, NULL),
(125, 'Goalpara', 4, 408, NULL, NULL),
(126, 'Golaghat', 4, 409, NULL, NULL),
(127, 'Guwahati', 4, 410, NULL, NULL),
(128, 'Hailakandi', 4, 411, NULL, NULL),
(129, 'Jorhat', 4, 412, NULL, NULL),
(130, 'Kamrup', 4, 413, NULL, NULL),
(131, 'Karbi Anglong', 4, 414, NULL, NULL),
(132, 'Karimganj', 4, 415, NULL, NULL),
(133, 'Kokrajhar', 4, 416, NULL, NULL),
(134, 'Lakhimpur', 4, 417, NULL, NULL),
(135, 'Marigaon', 4, 418, NULL, NULL),
(136, 'Nagaon', 4, 419, NULL, NULL),
(137, 'Nalbari', 4, 420, NULL, NULL),
(138, 'North Cachar Hills', 4, 421, NULL, NULL),
(139, 'Silchar', 4, 422, NULL, NULL),
(140, 'Sivasagar', 4, 423, NULL, NULL),
(141, 'Sonitpur', 4, 424, NULL, NULL),
(142, 'Tinsukia', 4, 425, NULL, NULL),
(143, 'Udalguri', 4, 426, NULL, NULL),
(144, 'Araria', 5, 501, NULL, NULL),
(145, 'Aurangabad', 5, 502, NULL, NULL),
(146, 'Banka', 5, 503, NULL, NULL),
(147, 'Begusarai', 5, 504, NULL, NULL),
(148, 'Bhagalpur', 5, 505, NULL, NULL),
(149, 'Bhojpur', 5, 506, NULL, NULL),
(150, 'Buxar', 5, 507, NULL, NULL),
(151, 'Darbhanga', 5, 508, NULL, NULL),
(152, 'East Champaran', 5, 509, NULL, NULL),
(153, 'Gaya', 5, 510, NULL, NULL),
(154, 'Gopalganj', 5, 511, NULL, NULL),
(155, 'Jamshedpur', 5, 512, NULL, NULL),
(156, 'Jamui', 5, 513, NULL, NULL),
(157, 'Jehanabad', 5, 514, NULL, NULL),
(158, 'Kaimur (Bhabua)', 5, 515, NULL, NULL),
(159, 'Katihar', 5, 516, NULL, NULL),
(160, 'Khagaria', 5, 517, NULL, NULL),
(161, 'Kishanganj', 5, 518, NULL, NULL),
(162, 'Lakhisarai', 5, 519, NULL, NULL),
(163, 'Madhepura', 5, 520, NULL, NULL),
(164, 'Madhubani', 5, 521, NULL, NULL),
(165, 'Munger', 5, 522, NULL, NULL),
(166, 'Muzaffarpur', 5, 523, NULL, NULL),
(167, 'Nalanda', 5, 524, NULL, NULL),
(168, 'Nawada', 5, 525, NULL, NULL),
(169, 'Patna', 5, 526, NULL, NULL),
(170, 'Purnia', 5, 527, NULL, NULL),
(171, 'Rohtas', 5, 528, NULL, NULL),
(172, 'Saharsa', 5, 529, NULL, NULL),
(173, 'Samastipur', 5, 530, NULL, NULL),
(174, 'Saran', 5, 531, NULL, NULL),
(175, 'Sheikhpura', 5, 532, NULL, NULL),
(176, 'Sheohar', 5, 533, NULL, NULL),
(177, 'Sitamarhi', 5, 534, NULL, NULL),
(178, 'Siwan', 5, 535, NULL, NULL),
(179, 'Supaul', 5, 536, NULL, NULL),
(180, 'Vaishali', 5, 537, NULL, NULL),
(181, 'West Champaran', 5, 538, NULL, NULL),
(182, 'Chandigarh', 6, 601, NULL, NULL),
(183, 'Mani Marja', 6, 602, NULL, NULL),
(184, 'Bastar', 7, 701, NULL, NULL),
(185, 'Bhilai', 7, 702, NULL, NULL),
(186, 'Bijapur', 7, 703, NULL, NULL),
(187, 'Bilaspur', 7, 704, NULL, NULL),
(188, 'Dhamtari', 7, 705, NULL, NULL),
(189, 'Durg', 7, 706, NULL, NULL),
(190, 'Janjgir-Champa', 7, 707, NULL, NULL),
(191, 'Jashpur', 7, 708, NULL, NULL),
(192, 'Kabirdham-Kawardha', 7, 709, NULL, NULL),
(193, 'Korba', 7, 710, NULL, NULL),
(194, 'Korea', 7, 711, NULL, NULL),
(195, 'Mahasamund', 7, 712, NULL, NULL),
(196, 'Narayanpur', 7, 713, NULL, NULL),
(197, 'Norh Bastar-Kanker', 7, 714, NULL, NULL),
(198, 'Raigarh', 7, 715, NULL, NULL),
(199, 'Raipur', 7, 716, NULL, NULL),
(200, 'Rajnandgaon', 7, 717, NULL, NULL),
(201, 'South Bastar-Dantewada', 7, 718, NULL, NULL),
(202, 'Surguja', 7, 719, NULL, NULL),
(203, 'Amal', 8, 801, NULL, NULL),
(204, 'Amli', 8, 802, NULL, NULL),
(205, 'Bedpa', 8, 803, NULL, NULL),
(206, 'Chikhli', 8, 804, NULL, NULL),
(207, 'Dadra & Nagar Haveli', 8, 805, NULL, NULL),
(208, 'Dahikhed', 8, 806, NULL, NULL),
(209, 'Dolara', 8, 807, NULL, NULL),
(210, 'Galonda', 8, 808, NULL, NULL),
(211, 'Kanadi', 8, 809, NULL, NULL),
(212, 'Karchond', 8, 810, NULL, NULL),
(213, 'Khadoli', 8, 811, NULL, NULL),
(214, 'Kharadpada', 8, 812, NULL, NULL),
(215, 'Kherabari', 8, 813, NULL, NULL),
(216, 'Kherdi', 8, 814, NULL, NULL),
(217, 'Kothar', 8, 815, NULL, NULL),
(218, 'Luari', 8, 816, NULL, NULL),
(219, 'Mashat', 8, 817, NULL, NULL),
(220, 'Rakholi', 8, 818, NULL, NULL),
(221, 'Rudana', 8, 819, NULL, NULL),
(222, 'Saili', 8, 820, NULL, NULL),
(223, 'Sili', 8, 821, NULL, NULL),
(224, 'Silvassa', 8, 822, NULL, NULL),
(225, 'Sindavni', 8, 823, NULL, NULL),
(226, 'Udva', 8, 824, NULL, NULL),
(227, 'Umbarkoi', 8, 825, NULL, NULL),
(228, 'Vansda', 8, 826, NULL, NULL),
(229, 'Vasona', 8, 827, NULL, NULL),
(230, 'Velugam', 8, 828, NULL, NULL),
(231, 'Brancavare', 9, 901, NULL, NULL),
(232, 'Dagasi', 9, 902, NULL, NULL),
(233, 'Daman', 9, 903, NULL, NULL),
(234, 'Diu', 9, 904, NULL, NULL),
(235, 'Magarvara', 9, 905, NULL, NULL),
(236, 'Nagwa', 9, 906, NULL, NULL),
(237, 'Pariali', 9, 907, NULL, NULL),
(238, 'Passo Covo', 9, 908, NULL, NULL),
(239, 'Central Delhi', 10, 1001, NULL, NULL),
(240, 'East Delhi', 10, 1002, NULL, NULL),
(241, 'New Delhi', 10, 1003, NULL, NULL),
(242, 'North Delhi', 10, 1004, NULL, NULL),
(243, 'North East Delhi', 10, 1005, NULL, NULL),
(244, 'North West Delhi', 10, 1006, NULL, NULL),
(245, 'Old Delhi', 10, 1007, NULL, NULL),
(246, 'South Delhi', 10, 1008, NULL, NULL),
(247, 'South West Delhi', 10, 1009, NULL, NULL),
(248, 'West Delhi', 10, 1010, NULL, NULL),
(249, 'Canacona', 11, 1101, NULL, NULL),
(250, 'Candolim', 11, 1102, NULL, NULL),
(251, 'Chinchinim', 11, 1103, NULL, NULL),
(252, 'Cortalim', 11, 1104, NULL, NULL),
(253, 'Goa', 11, 1105, NULL, NULL),
(254, 'Jua', 11, 1106, NULL, NULL),
(255, 'Madgaon', 11, 1107, NULL, NULL),
(256, 'Mahem', 11, 1108, NULL, NULL),
(257, 'Mapuca', 11, 1109, NULL, NULL),
(258, 'Marmagao', 11, 1110, NULL, NULL),
(259, 'Panji', 11, 1111, NULL, NULL),
(260, 'Ponda', 11, 1112, NULL, NULL),
(261, 'Sanvordem', 11, 1113, NULL, NULL),
(262, 'Terekhol', 11, 1114, NULL, NULL),
(263, 'Ahmedabad', 12, 1201, NULL, NULL),
(264, 'Amreli', 12, 1202, NULL, NULL),
(265, 'Anand', 12, 1203, NULL, NULL),
(266, 'Banaskantha', 12, 1204, NULL, NULL),
(267, 'Baroda', 12, 1205, NULL, NULL),
(268, 'Bharuch', 12, 1206, NULL, NULL),
(269, 'Bhavnagar', 12, 1207, NULL, NULL),
(270, 'Dahod', 12, 1208, NULL, NULL),
(271, 'Dang', 12, 1209, NULL, NULL),
(272, 'Dwarka', 12, 1210, NULL, NULL),
(273, 'Gandhinagar', 12, 1211, NULL, NULL),
(274, 'Jamnagar', 12, 1212, NULL, NULL),
(275, 'Junagadh', 12, 1213, NULL, NULL),
(276, 'Kheda', 12, 1214, NULL, NULL),
(277, 'Kutch', 12, 1215, NULL, NULL),
(278, 'Mehsana', 12, 1216, NULL, NULL),
(279, 'Nadiad', 12, 1217, NULL, NULL),
(280, 'Narmada', 12, 1218, NULL, NULL),
(281, 'Navsari', 12, 1219, NULL, NULL),
(282, 'Panchmahals', 12, 1220, NULL, NULL),
(283, 'Patan', 12, 1221, NULL, NULL),
(284, 'Porbandar', 12, 1222, NULL, NULL),
(285, 'Rajkot', 12, 1223, NULL, NULL),
(286, 'Sabarkantha', 12, 1224, NULL, NULL),
(287, 'Surat', 12, 1225, NULL, NULL),
(288, 'Surendranagar', 12, 1226, NULL, NULL),
(289, 'Vadodara', 12, 1227, NULL, NULL),
(290, 'Valsad', 12, 1228, NULL, NULL),
(291, 'Vapi', 12, 1229, NULL, NULL),
(292, 'Ambala', 13, 1301, NULL, NULL),
(293, 'Bhiwani', 13, 1302, NULL, NULL),
(294, 'Faridabad', 13, 1303, NULL, NULL),
(295, 'Fatehabad', 13, 1304, NULL, NULL),
(296, 'Gurgaon', 13, 1305, NULL, NULL),
(297, 'Hisar', 13, 1306, NULL, NULL),
(298, 'Jhajjar', 13, 1307, NULL, NULL),
(299, 'Jind', 13, 1308, NULL, NULL),
(300, 'Kaithal', 13, 1309, NULL, NULL),
(301, 'Karnal', 13, 1310, NULL, NULL),
(302, 'Kurukshetra', 13, 1311, NULL, NULL),
(303, 'Mahendragarh', 13, 1312, NULL, NULL),
(304, 'Mewat', 13, 1313, NULL, NULL),
(305, 'Panchkula', 13, 1314, NULL, NULL),
(306, 'Panipat', 13, 1315, NULL, NULL),
(307, 'Rewari', 13, 1316, NULL, NULL),
(308, 'Rohtak', 13, 1317, NULL, NULL),
(309, 'Sirsa', 13, 1318, NULL, NULL),
(310, 'Sonipat', 13, 1319, NULL, NULL),
(311, 'Yamunanagar', 13, 1320, NULL, NULL),
(312, 'Bilaspur', 14, 1401, NULL, NULL),
(313, 'Chamba', 14, 1402, NULL, NULL),
(314, 'Dalhousie', 14, 1403, NULL, NULL),
(315, 'Hamirpur', 14, 1404, NULL, NULL),
(316, 'Kangra', 14, 1405, NULL, NULL),
(317, 'Kinnaur', 14, 1406, NULL, NULL),
(318, 'Kullu', 14, 1407, NULL, NULL),
(319, 'Lahaul & Spiti', 14, 1408, NULL, NULL),
(320, 'Mandi', 14, 1409, NULL, NULL),
(321, 'Shimla', 14, 1410, NULL, NULL),
(322, 'Sirmaur', 14, 1411, NULL, NULL),
(323, 'Solan', 14, 1412, NULL, NULL),
(324, 'Una', 14, 1413, NULL, NULL),
(325, 'Anantnag', 15, 1501, NULL, NULL),
(326, 'Baramulla', 15, 1502, NULL, NULL),
(327, 'Budgam', 15, 1503, NULL, NULL),
(328, 'Doda', 15, 1504, NULL, NULL),
(329, 'Jammu', 15, 1505, NULL, NULL),
(330, 'Kargil', 15, 1506, NULL, NULL),
(331, 'Kathua', 15, 1507, NULL, NULL),
(332, 'Kupwara', 15, 1508, NULL, NULL),
(333, 'Leh', 15, 1509, NULL, NULL),
(334, 'Poonch', 15, 1510, NULL, NULL),
(335, 'Pulwama', 15, 1511, NULL, NULL),
(336, 'Rajauri', 15, 1512, NULL, NULL),
(337, 'Srinagar', 15, 1513, NULL, NULL),
(338, 'Udhampur', 15, 1514, NULL, NULL),
(339, 'Bokaro', 16, 1601, NULL, NULL),
(340, 'Chatra', 16, 1602, NULL, NULL),
(341, 'Deoghar', 16, 1603, NULL, NULL),
(342, 'Dhanbad', 16, 1604, NULL, NULL),
(343, 'Dumka', 16, 1605, NULL, NULL),
(344, 'East Singhbhum', 16, 1606, NULL, NULL),
(345, 'Garhwa', 16, 1607, NULL, NULL),
(346, 'Giridih', 16, 1608, NULL, NULL),
(347, 'Godda', 16, 1609, NULL, NULL),
(348, 'Gumla', 16, 1610, NULL, NULL),
(349, 'Hazaribag', 16, 1611, NULL, NULL),
(350, 'Jamtara', 16, 1612, NULL, NULL),
(351, 'Koderma', 16, 1613, NULL, NULL),
(352, 'Latehar', 16, 1614, NULL, NULL),
(353, 'Lohardaga', 16, 1615, NULL, NULL),
(354, 'Pakur', 16, 1616, NULL, NULL),
(355, 'Palamu', 16, 1617, NULL, NULL),
(356, 'Ranchi', 16, 1618, NULL, NULL),
(357, 'Sahibganj', 16, 1619, NULL, NULL),
(358, 'Seraikela', 16, 1620, NULL, NULL),
(359, 'Simdega', 16, 1621, NULL, NULL),
(360, 'West Singhbhum', 16, 1622, NULL, NULL),
(361, 'Bagalkot', 17, 1701, NULL, NULL),
(362, 'Bangalore', 17, 1702, NULL, NULL),
(363, 'Bangalore Rural', 17, 1703, NULL, NULL),
(364, 'Belgaum', 17, 1704, NULL, NULL),
(365, 'Bellary', 17, 1705, NULL, NULL),
(366, 'Bhatkal', 17, 1706, NULL, NULL),
(367, 'Bidar', 17, 1707, NULL, NULL),
(368, 'Bijapur', 17, 1708, NULL, NULL),
(369, 'Chamrajnagar', 17, 1709, NULL, NULL),
(370, 'Chickmagalur', 17, 1710, NULL, NULL),
(371, 'Chikballapur', 17, 1711, NULL, NULL),
(372, 'Chitradurga', 17, 1712, NULL, NULL),
(373, 'Dakshina Kannada', 17, 1713, NULL, NULL),
(374, 'Davanagere', 17, 1714, NULL, NULL),
(375, 'Dharwad', 17, 1715, NULL, NULL),
(376, 'Gadag', 17, 1716, NULL, NULL),
(377, 'Gulbarga', 17, 1717, NULL, NULL),
(378, 'Hampi', 17, 1718, NULL, NULL),
(379, 'Hassan', 17, 1719, NULL, NULL),
(380, 'Haveri', 17, 1720, NULL, NULL),
(381, 'Hospet', 17, 1721, NULL, NULL),
(382, 'Karwar', 17, 1722, NULL, NULL),
(383, 'Kodagu', 17, 1723, NULL, NULL),
(384, 'Kolar', 17, 1724, NULL, NULL),
(385, 'Koppal', 17, 1725, NULL, NULL),
(386, 'Madikeri', 17, 1726, NULL, NULL),
(387, 'Mandya', 17, 1727, NULL, NULL),
(388, 'Mangalore', 17, 1728, NULL, NULL),
(389, 'Manipal', 17, 1729, NULL, NULL),
(390, 'Mysore', 17, 1730, NULL, NULL),
(391, 'Raichur', 17, 1731, NULL, NULL),
(392, 'Shimoga', 17, 1732, NULL, NULL),
(393, 'Sirsi', 17, 1733, NULL, NULL),
(394, 'Sringeri', 17, 1734, NULL, NULL),
(395, 'Srirangapatna', 17, 1735, NULL, NULL),
(396, 'Tumkur', 17, 1736, NULL, NULL),
(397, 'Udupi', 17, 1737, NULL, NULL),
(398, 'Uttara Kannada', 17, 1738, NULL, NULL),
(399, 'Alappuzha', 18, 1801, NULL, NULL),
(400, 'Alleppey', 18, 1802, NULL, NULL),
(401, 'Alwaye', 18, 1803, NULL, NULL),
(402, 'Ernakulam', 18, 1804, NULL, NULL),
(403, 'Idukki', 18, 1805, NULL, NULL),
(404, 'Kannur', 18, 1806, NULL, NULL),
(405, 'Kasargod', 18, 1807, NULL, NULL),
(406, 'Kochi', 18, 1808, NULL, NULL),
(407, 'Kollam', 18, 1809, NULL, NULL),
(408, 'Kottayam', 18, 1810, NULL, NULL),
(409, 'Kovalam', 18, 1811, NULL, NULL),
(410, 'Kozhikode', 18, 1812, NULL, NULL),
(411, 'Malappuram', 18, 1813, NULL, NULL),
(412, 'Palakkad', 18, 1814, NULL, NULL),
(413, 'Pathanamthitta', 18, 1815, NULL, NULL),
(414, 'Perumbavoor', 18, 1816, NULL, NULL),
(415, 'Thiruvananthapuram', 18, 1817, NULL, NULL),
(416, 'Thrissur', 18, 1818, NULL, NULL),
(417, 'Trichur', 18, 1819, NULL, NULL),
(418, 'Trivandrum', 18, 1820, NULL, NULL),
(419, 'Wayanad', 18, 1821, NULL, NULL),
(420, 'Agatti Island', 19, 1901, NULL, NULL),
(421, 'Bingaram Island', 19, 1902, NULL, NULL),
(422, 'Bitra Island', 19, 1903, NULL, NULL),
(423, 'Chetlat Island', 19, 1904, NULL, NULL),
(424, 'Kadmat Island', 19, 1905, NULL, NULL),
(425, 'Kalpeni Island', 19, 1906, NULL, NULL),
(426, 'Kavaratti Island', 19, 1907, NULL, NULL),
(427, 'Kiltan Island', 19, 1908, NULL, NULL),
(428, 'Lakshadweep Sea', 19, 1909, NULL, NULL),
(429, 'Minicoy Island', 19, 1910, NULL, NULL),
(430, 'North Island', 19, 1911, NULL, NULL),
(431, 'South Island', 19, 1912, NULL, NULL),
(432, 'Anuppur', 20, 2001, NULL, NULL),
(433, 'Ashoknagar', 20, 2002, NULL, NULL),
(434, 'Balaghat', 20, 2003, NULL, NULL),
(435, 'Barwani', 20, 2004, NULL, NULL),
(436, 'Betul', 20, 2005, NULL, NULL),
(437, 'Bhind', 20, 2006, NULL, NULL),
(438, 'Bhopal', 20, 2007, NULL, NULL),
(439, 'Burhanpur', 20, 2008, NULL, NULL),
(440, 'Chhatarpur', 20, 2009, NULL, NULL),
(441, 'Chhindwara', 20, 2010, NULL, NULL),
(442, 'Damoh', 20, 2011, NULL, NULL),
(443, 'Datia', 20, 2012, NULL, NULL),
(444, 'Dewas', 20, 2013, NULL, NULL),
(445, 'Dhar', 20, 2014, NULL, NULL),
(446, 'Dindori', 20, 2015, NULL, NULL),
(447, 'Guna', 20, 2016, NULL, NULL),
(448, 'Gwalior', 20, 2017, NULL, NULL),
(449, 'Harda', 20, 2018, NULL, NULL),
(450, 'Hoshangabad', 20, 2019, NULL, NULL),
(451, 'Indore', 20, 2020, NULL, NULL),
(452, 'Jabalpur', 20, 2021, NULL, NULL),
(453, 'Jagdalpur', 20, 2022, NULL, NULL),
(454, 'Jhabua', 20, 2023, NULL, NULL),
(455, 'Katni', 20, 2024, NULL, NULL),
(456, 'Khandwa', 20, 2025, NULL, NULL),
(457, 'Khargone', 20, 2026, NULL, NULL),
(458, 'Mandla', 20, 2027, NULL, NULL),
(459, 'Mandsaur', 20, 2028, NULL, NULL),
(460, 'Morena', 20, 2029, NULL, NULL),
(461, 'Narsinghpur', 20, 2030, NULL, NULL),
(462, 'Neemuch', 20, 2031, NULL, NULL),
(463, 'Panna', 20, 2032, NULL, NULL),
(464, 'Raisen', 20, 2033, NULL, NULL),
(465, 'Rajgarh', 20, 2034, NULL, NULL),
(466, 'Ratlam', 20, 2035, NULL, NULL),
(467, 'Rewa', 20, 2036, NULL, NULL),
(468, 'Sagar', 20, 2037, NULL, NULL),
(469, 'Satna', 20, 2038, NULL, NULL),
(470, 'Sehore', 20, 2039, NULL, NULL),
(471, 'Seoni', 20, 2040, NULL, NULL),
(472, 'Shahdol', 20, 2041, NULL, NULL),
(473, 'Shajapur', 20, 2042, NULL, NULL),
(474, 'Sheopur', 20, 2043, NULL, NULL),
(475, 'Shivpuri', 20, 2044, NULL, NULL),
(476, 'Sidhi', 20, 2045, NULL, NULL),
(477, 'Tikamgarh', 20, 2046, NULL, NULL),
(478, 'Ujjain', 20, 2047, NULL, NULL),
(479, 'Umaria', 20, 2048, NULL, NULL),
(480, 'Vidisha', 20, 2049, NULL, NULL),
(481, 'Ahmednagar', 21, 2101, NULL, NULL),
(482, 'Akola', 21, 2102, NULL, NULL),
(483, 'Amravati', 21, 2103, NULL, NULL),
(484, 'Aurangabad', 21, 2104, NULL, NULL),
(485, 'Beed', 21, 2105, NULL, NULL),
(486, 'Bhandara', 21, 2106, NULL, NULL),
(487, 'Buldhana', 21, 2107, NULL, NULL),
(488, 'Chandrapur', 21, 2108, NULL, NULL),
(489, 'Dhule', 21, 2109, NULL, NULL),
(490, 'Gadchiroli', 21, 2110, NULL, NULL),
(491, 'Gondia', 21, 2111, NULL, NULL),
(492, 'Hingoli', 21, 2112, NULL, NULL),
(493, 'Jalgaon', 21, 2113, NULL, NULL),
(494, 'Jalna', 21, 2114, NULL, NULL),
(495, 'Kolhapur', 21, 2115, NULL, NULL),
(496, 'Latur', 21, 2116, NULL, NULL),
(497, 'Mahabaleshwar', 21, 2117, NULL, NULL),
(498, 'Mumbai', 21, 2118, NULL, NULL),
(499, 'Mumbai City', 21, 2119, NULL, NULL),
(500, 'Mumbai Suburban', 21, 2120, NULL, NULL),
(501, 'Nagpur', 21, 2121, NULL, NULL),
(502, 'Nanded', 21, 2122, NULL, NULL),
(503, 'Nandurbar', 21, 2123, NULL, NULL),
(504, 'Nashik', 21, 2124, NULL, NULL),
(505, 'Osmanabad', 21, 2125, NULL, NULL),
(506, 'Parbhani', 21, 2126, NULL, NULL),
(507, 'Pune', 21, 2127, NULL, NULL),
(508, 'Raigad', 21, 2128, NULL, NULL),
(509, 'Ratnagiri', 21, 2129, NULL, NULL),
(510, 'Sangli', 21, 2130, NULL, NULL),
(511, 'Satara', 21, 2131, NULL, NULL),
(512, 'Sholapur', 21, 2132, NULL, NULL),
(513, 'Sindhudurg', 21, 2133, NULL, NULL),
(514, 'Thane', 21, 2134, NULL, NULL),
(515, 'Wardha', 21, 2135, NULL, NULL),
(516, 'Washim', 21, 2136, NULL, NULL),
(517, 'Yavatmal', 21, 2137, NULL, NULL),
(518, 'Bishnupur', 22, 2201, NULL, NULL),
(519, 'Chandel', 22, 2202, NULL, NULL),
(520, 'Churachandpur', 22, 2203, NULL, NULL),
(521, 'Imphal East', 22, 2204, NULL, NULL),
(522, 'Imphal West', 22, 2205, NULL, NULL),
(523, 'Senapati', 22, 2206, NULL, NULL),
(524, 'Tamenglong', 22, 2207, NULL, NULL),
(525, 'Thoubal', 22, 2208, NULL, NULL),
(526, 'Ukhrul', 22, 2209, NULL, NULL),
(527, 'East Garo Hills', 23, 2301, NULL, NULL),
(528, 'East Khasi Hills', 23, 2302, NULL, NULL),
(529, 'Jaintia Hills', 23, 2303, NULL, NULL),
(530, 'Ri Bhoi', 23, 2304, NULL, NULL),
(531, 'Shillong', 23, 2305, NULL, NULL),
(532, 'South Garo Hills', 23, 2306, NULL, NULL),
(533, 'West Garo Hills', 23, 2307, NULL, NULL),
(534, 'West Khasi Hills', 23, 2308, NULL, NULL),
(535, 'Aizawl', 24, 2401, NULL, NULL),
(536, 'Champhai', 24, 2402, NULL, NULL),
(537, 'Kolasib', 24, 2403, NULL, NULL),
(538, 'Lawngtlai', 24, 2404, NULL, NULL),
(539, 'Lunglei', 24, 2405, NULL, NULL),
(540, 'Mamit', 24, 2406, NULL, NULL),
(541, 'Saiha', 24, 2407, NULL, NULL),
(542, 'Serchhip', 24, 2408, NULL, NULL),
(543, 'Dimapur', 25, 2501, NULL, NULL),
(544, 'Kohima', 25, 2502, NULL, NULL),
(545, 'Mokokchung', 25, 2503, NULL, NULL),
(546, 'Mon', 25, 2504, NULL, NULL),
(547, 'Phek', 25, 2505, NULL, NULL),
(548, 'Tuensang', 25, 2506, NULL, NULL),
(549, 'Wokha', 25, 2507, NULL, NULL),
(550, 'Zunheboto', 25, 2508, NULL, NULL),
(551, 'Angul', 26, 2601, NULL, NULL),
(552, 'Balangir', 26, 2602, NULL, NULL),
(553, 'Balasore', 26, 2603, NULL, NULL),
(554, 'Baleswar', 26, 2604, NULL, NULL),
(555, 'Bargarh', 26, 2605, NULL, NULL),
(556, 'Berhampur', 26, 2606, NULL, NULL),
(557, 'Bhadrak', 26, 2607, NULL, NULL),
(558, 'Bhubaneswar', 26, 2608, NULL, NULL),
(559, 'Boudh', 26, 2609, NULL, NULL),
(560, 'Cuttack', 26, 2610, NULL, NULL),
(561, 'Deogarh', 26, 2611, NULL, NULL),
(562, 'Dhenkanal', 26, 2612, NULL, NULL),
(563, 'Gajapati', 26, 2613, NULL, NULL),
(564, 'Ganjam', 26, 2614, NULL, NULL),
(565, 'Jagatsinghapur', 26, 2615, NULL, NULL),
(566, 'Jajpur', 26, 2616, NULL, NULL),
(567, 'Jharsuguda', 26, 2617, NULL, NULL),
(568, 'Kalahandi', 26, 2618, NULL, NULL),
(569, 'Kandhamal', 26, 2619, NULL, NULL),
(570, 'Kendrapara', 26, 2620, NULL, NULL),
(571, 'Kendujhar', 26, 2621, NULL, NULL),
(572, 'Khordha', 26, 2622, NULL, NULL),
(573, 'Koraput', 26, 2623, NULL, NULL),
(574, 'Malkangiri', 26, 2624, NULL, NULL),
(575, 'Mayurbhanj', 26, 2625, NULL, NULL),
(576, 'Nabarangapur', 26, 2626, NULL, NULL),
(577, 'Nayagarh', 26, 2627, NULL, NULL),
(578, 'Nuapada', 26, 2628, NULL, NULL),
(579, 'Puri', 26, 2629, NULL, NULL),
(580, 'Rayagada', 26, 2630, NULL, NULL),
(581, 'Rourkela', 26, 2631, NULL, NULL),
(582, 'Sambalpur', 26, 2632, NULL, NULL),
(583, 'Subarnapur', 26, 2633, NULL, NULL),
(584, 'Sundergarh', 26, 2634, NULL, NULL),
(585, 'Bahur', 27, 2701, NULL, NULL),
(586, 'Karaikal', 27, 2701, NULL, NULL),
(587, 'Mahe', 27, 2701, NULL, NULL),
(588, 'Pondicherry', 27, 2701, NULL, NULL),
(589, 'Purnankuppam', 27, 2701, NULL, NULL),
(590, 'Valudavur', 27, 2701, NULL, NULL),
(591, 'Villianur', 27, 2701, NULL, NULL),
(592, 'Yanam', 27, 2701, NULL, NULL),
(593, 'Amritsar', 28, 2801, NULL, NULL),
(594, 'Barnala', 28, 2801, NULL, NULL),
(595, 'Bathinda', 28, 2801, NULL, NULL),
(596, 'Faridkot', 28, 2801, NULL, NULL),
(597, 'Fatehgarh Sahib', 28, 2801, NULL, NULL),
(598, 'Ferozepur', 28, 2801, NULL, NULL),
(599, 'Gurdaspur', 28, 2801, NULL, NULL),
(600, 'Hoshiarpur', 28, 2801, NULL, NULL),
(601, 'Jalandhar', 28, 2801, NULL, NULL),
(602, 'Kapurthala', 28, 2801, NULL, NULL),
(603, 'Ludhiana', 28, 2801, NULL, NULL),
(604, 'Mansa', 28, 2801, NULL, NULL),
(605, 'Moga', 28, 2801, NULL, NULL),
(606, 'Muktsar', 28, 2801, NULL, NULL),
(607, 'Nawanshahr', 28, 2801, NULL, NULL),
(608, 'Pathankot', 28, 2801, NULL, NULL),
(609, 'Patiala', 28, 2801, NULL, NULL),
(610, 'Rupnagar', 28, 2801, NULL, NULL),
(611, 'Sangrur', 28, 2801, NULL, NULL),
(612, 'Mohali', 28, 2801, NULL, NULL),
(613, 'Tarn Taran', 28, 2801, NULL, NULL),
(614, 'Ajmer', 29, 2901, NULL, NULL),
(615, 'Alwar', 29, 2902, NULL, NULL),
(616, 'Banswara', 29, 2903, NULL, NULL),
(617, 'Baran', 29, 2904, NULL, NULL),
(618, 'Barmer', 29, 2905, NULL, NULL),
(619, 'Bharatpur', 29, 2906, NULL, NULL),
(620, 'Bhilwara', 29, 2907, NULL, NULL),
(621, 'Bikaner', 29, 2908, NULL, NULL),
(622, 'Bundi', 29, 2909, NULL, NULL),
(623, 'Chittorgarh', 29, 2910, NULL, NULL),
(624, 'Churu', 29, 2911, NULL, NULL),
(625, 'Dausa', 29, 2912, NULL, NULL),
(626, 'Dholpur', 29, 2913, NULL, NULL),
(627, 'Dungarpur', 29, 2914, NULL, NULL),
(628, 'Hanumangarh', 29, 2915, NULL, NULL),
(629, 'Jaipur', 29, 2916, NULL, NULL),
(630, 'Jaisalmer', 29, 2917, NULL, NULL),
(631, 'Jalore', 29, 2918, NULL, NULL),
(632, 'Jhalawar', 29, 2919, NULL, NULL),
(633, 'Jhunjhunu', 29, 2920, NULL, NULL),
(634, 'Jodhpur', 29, 2921, NULL, NULL),
(635, 'Karauli', 29, 2922, NULL, NULL),
(636, 'Kota', 29, 2923, NULL, NULL),
(637, 'Nagaur', 29, 2924, NULL, NULL),
(638, 'Pali', 29, 2925, NULL, NULL),
(639, 'Pilani', 29, 2926, NULL, NULL),
(640, 'Rajsamand', 29, 2927, NULL, NULL),
(641, 'Sawai Madhopur', 29, 2928, NULL, NULL),
(642, 'Sikar', 29, 2929, NULL, NULL),
(643, 'Sirohi', 29, 2930, NULL, NULL),
(644, 'Sri Ganganagar', 29, 2931, NULL, NULL),
(645, 'Tonk', 29, 2932, NULL, NULL),
(646, 'Udaipur', 29, 2933, NULL, NULL),
(647, 'Barmiak', 30, 3001, NULL, NULL),
(648, 'Be', 30, 3002, NULL, NULL),
(649, 'Bhurtuk', 30, 3003, NULL, NULL),
(650, 'Chhubakha', 30, 3004, NULL, NULL),
(651, 'Chidam', 30, 3005, NULL, NULL),
(652, 'Chubha', 30, 3006, NULL, NULL),
(653, 'Chumikteng', 30, 3007, NULL, NULL),
(654, 'Dentam', 30, 3008, NULL, NULL),
(655, 'Dikchu', 30, 3009, NULL, NULL),
(656, 'Dzongri', 30, 3010, NULL, NULL),
(657, 'Gangtok', 30, 3011, NULL, NULL),
(658, 'Gauzing', 30, 3012, NULL, NULL),
(659, 'Gyalshing', 30, 3013, NULL, NULL),
(660, 'Hema', 30, 3014, NULL, NULL),
(661, 'Kerung', 30, 3015, NULL, NULL),
(662, 'Lachen', 30, 3016, NULL, NULL),
(663, 'Lachung', 30, 3017, NULL, NULL),
(664, 'Lema', 30, 3018, NULL, NULL),
(665, 'Lingtam', 30, 3019, NULL, NULL),
(666, 'Lungthu', 30, 3020, NULL, NULL),
(667, 'Mangan', 30, 3021, NULL, NULL),
(668, 'Namchi', 30, 3022, NULL, NULL),
(669, 'Namthang', 30, 3023, NULL, NULL),
(670, 'Nanga', 30, 3024, NULL, NULL),
(671, 'Nantang', 30, 3025, NULL, NULL),
(672, 'Naya Bazar', 30, 3026, NULL, NULL),
(673, 'Padamachen', 30, 3027, NULL, NULL),
(674, 'Pakhyong', 30, 3028, NULL, NULL),
(675, 'Pemayangtse', 30, 3029, NULL, NULL),
(676, 'Phensang', 30, 3030, NULL, NULL),
(677, 'Rangli', 30, 3031, NULL, NULL),
(678, 'Rinchingpong', 30, 3032, NULL, NULL),
(679, 'Sakyong', 30, 3033, NULL, NULL),
(680, 'Samdong', 30, 3034, NULL, NULL),
(681, 'Singtam', 30, 3035, NULL, NULL),
(682, 'Siniolchu', 30, 3035, NULL, NULL),
(683, 'Sombari', 30, 3036, NULL, NULL),
(684, 'Soreng', 30, 3037, NULL, NULL),
(685, 'Sosing', 30, 3038, NULL, NULL),
(686, 'Tekhug', 30, 3039, NULL, NULL),
(687, 'Temi', 30, 3040, NULL, NULL),
(688, 'Tsetang', 30, 3041, NULL, NULL),
(689, 'Tsomgo', 30, 3042, NULL, NULL),
(690, 'Tumlong', 30, 3043, NULL, NULL),
(691, 'Yangang', 30, 3044, NULL, NULL),
(692, 'Yumtang', 30, 3045, NULL, NULL),
(693, 'Chennai', 31, 3101, NULL, NULL),
(694, 'Chidambaram', 31, 3102, NULL, NULL),
(695, 'Chingleput', 31, 3103, NULL, NULL),
(696, 'Coimbatore', 31, 3104, NULL, NULL),
(697, 'Courtallam', 31, 3105, NULL, NULL),
(698, 'Cuddalore', 31, 3106, NULL, NULL),
(699, 'Dharmapuri', 31, 3107, NULL, NULL),
(700, 'Dindigul', 31, 3108, NULL, NULL),
(701, 'Erode', 31, 3109, NULL, NULL),
(702, 'Hosur', 31, 3110, NULL, NULL),
(703, 'Kanchipuram', 31, 3111, NULL, NULL),
(704, 'Kanyakumari', 31, 3112, NULL, NULL),
(705, 'Karaikudi', 31, 3113, NULL, NULL),
(706, 'Karur', 31, 3114, NULL, NULL),
(707, 'Kodaikanal', 31, 3115, NULL, NULL),
(708, 'Kovilpatti', 31, 3116, NULL, NULL),
(709, 'Krishnagiri', 31, 3117, NULL, NULL),
(710, 'Kumbakonam', 31, 3118, NULL, NULL),
(711, 'Madurai', 31, 3119, NULL, NULL),
(712, 'Mayiladuthurai', 31, 3120, NULL, NULL),
(713, 'Nagapattinam', 31, 3121, NULL, NULL),
(714, 'Nagarcoil', 31, 3122, NULL, NULL),
(715, 'Namakkal', 31, 3123, NULL, NULL),
(716, 'Neyveli', 31, 3124, NULL, NULL),
(717, 'Nilgiris', 31, 3125, NULL, NULL),
(718, 'Ooty', 31, 3126, NULL, NULL),
(719, 'Palani', 31, 3127, NULL, NULL),
(720, 'Perambalur', 31, 3128, NULL, NULL),
(721, 'Pollachi', 31, 3129, NULL, NULL),
(722, 'Pudukkottai', 31, 3130, NULL, NULL),
(723, 'Rajapalayam', 31, 3131, NULL, NULL),
(724, 'Ramanathapuram', 31, 3132, NULL, NULL),
(725, 'Salem', 31, 3133, NULL, NULL),
(726, 'Sivaganga', 31, 3134, NULL, NULL),
(727, 'Sivakasi', 31, 3135, NULL, NULL),
(728, 'Thanjavur', 31, 3136, NULL, NULL),
(729, 'Theni', 31, 3137, NULL, NULL),
(730, 'Thoothukudi', 31, 3138, NULL, NULL),
(731, 'Tiruchirappalli', 31, 3139, NULL, NULL),
(732, 'Tirunelveli', 31, 3140, NULL, NULL),
(733, 'Tirupur', 31, 3141, NULL, NULL),
(734, 'Tiruvallur', 31, 3142, NULL, NULL),
(735, 'Tiruvannamalai', 31, 3143, NULL, NULL),
(736, 'Tiruvarur', 31, 3144, NULL, NULL),
(737, 'Trichy', 31, 3145, NULL, NULL),
(738, 'Tuticorin', 31, 3146, NULL, NULL),
(739, 'Vellore', 31, 3147, NULL, NULL),
(740, 'Villupuram', 31, 3148, NULL, NULL),
(741, 'Virudhunagar', 31, 3149, NULL, NULL),
(742, 'Yercaud', 31, 3150, NULL, NULL),
(743, 'Agartala', 32, 3201, NULL, NULL),
(744, 'Ambasa', 32, 3202, NULL, NULL),
(745, 'Bampurbari', 32, 3203, NULL, NULL),
(746, 'Belonia', 32, 3204, NULL, NULL),
(747, 'Dhalai', 32, 3205, NULL, NULL),
(748, 'Dharam Nagar', 32, 3206, NULL, NULL),
(749, 'Kailashahar', 32, 3207, NULL, NULL),
(750, 'Kamal Krishnabari', 32, 3208, NULL, NULL),
(751, 'Khopaiyapara', 32, 3209, NULL, NULL),
(752, 'Khowai', 32, 3210, NULL, NULL),
(753, 'Phuldungsei', 32, 3211, NULL, NULL),
(754, 'Radha Kishore Pur', 32, 3212, NULL, NULL),
(755, 'Tripura', 32, 3213, NULL, NULL),
(756, 'Zirakpur', 28, 3213, NULL, NULL),
(758, 'Kharar', 28, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_management`
--

CREATE TABLE `content_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `others` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_management`
--

INSERT INTO `content_management` (`id`, `user_id`, `business_id`, `page_id`, `others`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 1, 'home', '\"<p><span style=\"color: rgb(51, 51, 51); font-family: Raleway, sans-serif; font-size: 14px; letter-spacing: 1px; text-align: center;\">The Altius a Boutique Hotel in Chandigarh is a landmark in the landscape of the City Beautiful. Stylish and individualized, Marked by art, music, cuisine/ and all that\'s uplifting and edgy in-between is surely a discreet designer haven providing the finest home-away-from-home experience.</span></p><p style=\"color: rgb(51, 51, 51);\"><span style=\"font-family: Raleway, sans-serif; font-size: 14px; letter-spacing: 1px; text-align: center;\">The Altius a Boutique Hotel in Chandigarh is a landmark in the landscape of the City Beautiful. Stylish and individualized, Marked by art, music, cuisine/ and all that\'s uplifting and edgy in-between is surely a discreet designer haven providing the finest home-away-from-home experience.</span></p><p style=\"color: rgb(51, 51, 51);\"><span style=\"font-family: Raleway, sans-serif; font-size: 14px; letter-spacing: 1px; text-align: center;\">The Altius a Boutique Hotel in Chandigarh is a landmark in the landscape of the City Beautiful. Stylish and individualized, Marked by art, music, cuisine/ and all that\'s uplifting and edgy in-between is surely a discreet designer haven providing the finest home-away-from-home experience.</span></p>\"', '1677305170.JPG', '2023-02-09 15:38:24', '2023-02-25 11:36:10'),
(2, 5, NULL, 3, 'all-venues', '.', '1677305212.webp', '2023-02-09 15:41:58', '2023-02-25 11:38:24'),
(3, 5, NULL, 4, 'packages', '<p>ok</p>', '1675947804.jpg', '2023-02-09 18:33:24', '2023-02-25 11:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `cuisine_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisines`
--

INSERT INTO `cuisines` (`id`, `user_id`, `business_id`, `cuisine_name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(18, 8, NULL, 'Indian', 'indian', 1, '2022-02-16 11:27:55', '2022-02-16 11:27:55'),
(19, 8, NULL, 'Chinese', 'chinese', 1, '2022-02-16 11:27:59', '2022-02-16 11:27:59'),
(20, 8, NULL, 'Continental', 'continental', 1, '2022-02-16 11:28:04', '2022-02-16 11:28:04'),
(21, 8, NULL, 'Desserts', 'desserts', 1, '2022-02-18 12:56:31', '2022-02-18 12:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `customer_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_used` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `business_id`, `customer_name`, `email_id`, `mobile`, `otp`, `status`, `created_at`, `updated_at`, `password`, `is_used`) VALUES
(2, NULL, 'Bibhu Prasad', 'bibhu@gmail.com', '8926049402', 8641, 'active', '2023-01-21 13:12:36', '2023-03-15 11:06:05', NULL, 1),
(3, NULL, 'Ranjit kumar', 'rk@gmail.com', '6372158676', 7173, 'active', '2023-01-21 17:27:37', '2023-02-28 15:41:28', NULL, 1),
(4, NULL, 'Philip Frazier', 'nazy@gmail.com', '123456789', NULL, 'active', '2023-01-30 19:01:38', '2023-01-30 19:01:38', NULL, 0),
(5, NULL, 'Ravinderjit Kaur', 'ginnychawla0440@gmail.com', '9872168000', 3870, 'active', '2023-01-31 15:53:04', '2023-03-11 19:06:48', NULL, 1),
(6, NULL, 'Jags', 'abc@gmail.com', '9915664000', NULL, 'active', '2023-01-31 18:39:07', '2023-01-31 18:39:07', NULL, 0),
(8, NULL, 'Priyanka Das', 'daspriyankaa01@gmail.com', '9348953776', 3753, 'active', '2023-02-13 11:09:22', '2023-02-23 19:53:29', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_experiences`
--

CREATE TABLE `customer_experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `customer_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `anniversary` date DEFAULT NULL,
  `staff` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vibe` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cleanliness` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food_quality` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delight_or_disapoint` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_altius` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_service_exp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custompackages`
--

CREATE TABLE `custompackages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`items`)),
  `total_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `department_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `user_id`, `business_id`, `department_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 'House Keeping', 'active', '2022-10-18 16:15:53', '2022-10-18 16:15:53'),
(2, 5, NULL, 'Front Office', 'active', '2022-10-18 16:15:53', '2022-10-18 16:15:53'),
(3, 5, NULL, 'Kitchen', 'active', '2022-10-21 09:34:23', '2022-11-23 07:37:30'),
(7, 5, NULL, 'Banquet', 'active', '2023-03-11 18:29:23', '2023-03-11 18:29:23'),
(8, 5, NULL, 'Restaurant', 'active', '2023-03-11 18:29:31', '2023-03-11 18:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `department_requests`
--

CREATE TABLE `department_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `brands` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`brands`)),
  `qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_requests`
--

INSERT INTO `department_requests` (`id`, `user_id`, `business_id`, `department_id`, `cat_id`, `item_id`, `brands`, `qty`, `created_at`, `updated_at`) VALUES
(1, 20, NULL, 3, 1, 1, '[\"3\"]', 5, '2023-01-19 12:10:10', '2023-01-19 12:10:10'),
(2, 20, NULL, 3, 2, 2, '[\"4\"]', 50, '2023-03-03 15:14:55', '2023-03-03 15:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `start_time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_of_gathering` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `venue_or_hall` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advance_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`advance_details`)),
  `followup_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`followup_details`)),
  `event_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `customer_id`, `business_id`, `event_date`, `start_time`, `end_time`, `amount_of_gathering`, `price`, `venue_or_hall`, `type`, `advance_details`, `followup_details`, `event_status`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, '2023-01-30', '3:00 PM', NULL, '20', '694.00', 'Hall', '1', NULL, NULL, NULL, '2023-01-30 19:01:38', '2023-01-30 19:01:38'),
(2, 5, NULL, '2024-12-20', '17:54', NULL, '100', NULL, NULL, '2', NULL, NULL, NULL, '2023-01-31 15:53:04', '2023-01-31 15:53:04'),
(3, 6, NULL, '2023-02-15', '08:00', NULL, '50', NULL, NULL, '21', NULL, NULL, NULL, '2023-01-31 18:39:07', '2023-01-31 18:39:07'),
(5, 8, NULL, '2023-02-13', '11:00', '13:30', '20', NULL, NULL, '2', NULL, NULL, NULL, '2023-02-13 11:09:22', '2023-02-13 11:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `business_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(3, NULL, 'What are the payment methods available?', 'We accept all cards, UPI and net-banking methods.&nbsp;', '2023-01-23 17:05:08', '2023-03-11 18:17:45'),
(4, NULL, 'What are the terms regarding cancellation of booking?', 'Bookings cannot be cancelled or postponed within 48 hours of the event date as the hotel has already bought the items as per the menu.', '2023-01-23 17:05:37', '2023-03-11 18:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_categories`
--

CREATE TABLE `ingredient_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredient_categories`
--

INSERT INTO `ingredient_categories` (`id`, `user_id`, `business_id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(2, 5, NULL, 'Ice cream', 'active', '2023-02-24 18:54:52', '2023-02-24 18:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_items`
--

CREATE TABLE `ingredient_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `ingredient_cat_id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`department_id`)),
  `brand` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`brand`)),
  `price` decimal(10,2) DEFAULT NULL,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`custom_fields`)),
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredient_items`
--

INSERT INTO `ingredient_items` (`id`, `user_id`, `business_id`, `supplier_id`, `ingredient_cat_id`, `item_name`, `unit`, `department_id`, `brand`, `price`, `custom_fields`, `status`, `created_at`, `updated_at`) VALUES
(2, 5, NULL, NULL, 2, 'Vanila', 'KG', '[\"3\"]', '[\"4\"]', '250.00', '{\"default_brand\": [\"4\"]}', 'active', '2023-03-03 15:14:06', '2023-03-03 15:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(57, 'App\\Models\\Menu', 5, '9e32c80c-c555-49c6-9395-05dda51e3e3f', 'menu', 'LEMON CORIANDER SOUP', 'LEMON-CORIANDER-SOUP.jpg', 'image/jpeg', 'public', 'public', 70481, '[]', '[]', '[]', '[]', 36, '2022-02-21 11:00:07', '2022-02-21 11:00:07'),
(58, 'App\\Models\\Menu', 6, '21b3caff-6ee3-474a-bc2a-fccfae52dca8', 'menu', 'VEG TOM YUM SOUP', 'VEG-TOM-YUM-SOUP.jpg', 'image/jpeg', 'public', 'public', 60604, '[]', '[]', '[]', '[]', 37, '2022-02-21 11:51:00', '2022-02-21 11:51:00'),
(59, 'App\\Models\\Menu', 7, '119e2e45-a7d6-4a41-9301-6f0c1b5917f8', 'menu', 'VEG MANCHW SOUP', 'VEG-MANCHW-SOUP.jpg', 'image/jpeg', 'public', 'public', 74383, '[]', '[]', '[]', '[]', 38, '2022-02-21 11:51:52', '2022-02-21 11:51:52'),
(60, 'App\\Models\\Menu', 8, 'dacd2b78-4b55-455c-9ad4-1564059c6556', 'menu', 'GREEK SALAD', 'GREEK-SALAD.jpg', 'image/jpeg', 'public', 'public', 123975, '[]', '[]', '[]', '[]', 39, '2022-02-21 11:53:52', '2022-02-21 11:53:52'),
(61, 'App\\Models\\Menu', 9, '988adf21-bf0f-484f-9f1c-8301e44c38f1', 'menu', 'CAESAR SALAD', 'CAESAR-SALAD.jpg', 'image/jpeg', 'public', 'public', 107959, '[]', '[]', '[]', '[]', 40, '2022-02-21 11:55:23', '2022-02-21 11:55:23'),
(62, 'App\\Models\\Menu', 10, 'd0db62c8-1ea2-42a3-9006-9aa46d8f575f', 'menu', 'HOT N` SOUR SOUP', 'HOT-N`-SOUR-SOUP.jpg', 'image/jpeg', 'public', 'public', 71321, '[]', '[]', '[]', '[]', 41, '2022-02-21 12:00:55', '2022-02-21 12:00:55'),
(63, 'App\\Models\\Menu', 11, 'a57fbf0d-e06e-4a9f-b040-6192171a2f6d', 'menu', 'VEG SWEET CORN SOUP', 'VEG-SWEET-CORN-SOUP.jpg', 'image/jpeg', 'public', 'public', 20597, '[]', '[]', '[]', '[]', 42, '2022-02-21 12:02:12', '2022-02-21 12:02:12'),
(64, 'App\\Models\\Menu', 12, 'b01be128-55b4-41a0-a0d3-593ec98e06e5', 'menu', 'kachumber salad', 'kachumber-salad.jpg', 'image/jpeg', 'public', 'public', 103170, '[]', '[]', '[]', '[]', 43, '2022-02-21 12:03:10', '2022-02-21 12:03:10'),
(65, 'App\\Models\\Menu', 13, 'd22718b5-0125-4ea2-b3ca-ba02ca6d3aa3', 'menu', 'MASALA PEANUT', 'MASALA-PEANUT.jpg', 'image/jpeg', 'public', 'public', 54348, '[]', '[]', '[]', '[]', 44, '2022-02-21 12:04:35', '2022-02-21 12:04:35'),
(66, 'App\\Models\\Menu', 14, 'fd8d160a-1447-4378-9681-4ff959f6004a', 'menu', 'MASALA PAPAD', 'MASALA-PAPAD.jpg', 'image/jpeg', 'public', 'public', 117166, '[]', '[]', '[]', '[]', 45, '2022-02-21 12:05:08', '2022-02-21 12:05:08'),
(68, 'App\\Models\\Menu', 16, '191559f3-2e77-48d3-b8d6-e666eb7cfd42', 'menu', 'ASIAN SESAME CHICKEN SALAD', 'ASIAN-SESAME-CHICKEN-SALAD.jpg', 'image/jpeg', 'public', 'public', 75831, '[]', '[]', '[]', '[]', 47, '2022-02-21 12:11:06', '2022-02-21 12:11:06'),
(70, 'App\\Models\\Menu', 18, '95daaac2-1040-4dbe-b6dc-6cfd3a6c9d04', 'menu', 'water chestnut salad', 'water-chestnut-salad.jpg', 'image/jpeg', 'public', 'public', 87843, '[]', '[]', '[]', '[]', 49, '2022-02-21 12:14:13', '2022-02-21 12:14:13'),
(71, 'App\\Models\\Menu', 19, '5c156c4a-a039-4280-b56e-4822a58ef555', 'menu', 'BHARWAN GOLGAPPA', 'BHARWAN-GOLGAPPA.jpg', 'image/jpeg', 'public', 'public', 62166, '[]', '[]', '[]', '[]', 50, '2022-02-21 15:54:18', '2022-02-21 15:54:18'),
(72, 'App\\Models\\Menu', 20, 'f240a6db-0c7a-472f-8e49-864420eed16f', 'menu', 'ALOO CHANNA CHAAT', 'ALOO-CHANNA-CHAAT.jpg', 'image/jpeg', 'public', 'public', 68642, '[]', '[]', '[]', '[]', 51, '2022-02-21 15:55:45', '2022-02-21 15:55:45'),
(73, 'App\\Models\\Menu', 21, 'eb78a5df-a689-4aef-9a86-9d6eca64c7e9', 'menu', 'PALAK PAKORA', 'PALAK-PAKORA.jpg', 'image/jpeg', 'public', 'public', 82898, '[]', '[]', '[]', '[]', 52, '2022-02-21 15:58:54', '2022-02-21 15:58:54'),
(74, 'App\\Models\\Menu', 22, '83765104-b8eb-4a3c-82be-16c336e7218d', 'menu', 'MUSHROOM KI GALOUTI', 'MUSHROOM-KI-GALOUTI.jpg', 'image/jpeg', 'public', 'public', 116222, '[]', '[]', '[]', '[]', 53, '2022-02-21 15:59:48', '2022-02-21 15:59:48'),
(75, 'App\\Models\\Menu', 23, '98e59c7b-e61e-4e27-9d7d-b8af01e25060', 'menu', 'ROYAL VALVET PANEER', 'ROYAL-VALVET-PANEER.jpg', 'image/jpeg', 'public', 'public', 66751, '[]', '[]', '[]', '[]', 54, '2022-02-22 12:01:50', '2022-02-22 12:01:50'),
(76, 'App\\Models\\Menu', 24, '6ecc4c63-6d3f-4bf6-948c-72ebcf36cf96', 'menu', 'VEG MAKHMALI SEEKH', 'VEG-MAKHMALI-SEEKH.jpg', 'image/jpeg', 'public', 'public', 52136, '[]', '[]', '[]', '[]', 55, '2022-02-22 12:03:31', '2022-02-22 12:03:31'),
(79, 'App\\Models\\Menu', 25, '830a7be9-34ac-4aa5-8559-6a9a7526c362', 'menu', 'RAJSTHANI PANEER KE  SOOLE', 'RAJSTHANI-PANEER-KE--SOOLE.jpg', 'image/jpeg', 'public', 'public', 70603, '[]', '[]', '[]', '[]', 56, '2022-02-23 07:47:17', '2022-02-23 07:47:17'),
(80, 'App\\Models\\Menu', 47, '3e6191a9-7908-465e-9de5-2be8dd091a31', 'menu', 'ZAMINDARI DAHI KE KHATTE ALOO', 'ZAMINDARI-DAHI-KE-KHATTE-ALOO.jpg', 'image/jpeg', 'public', 'public', 72268, '[]', '[]', '[]', '[]', 57, '2022-03-01 09:12:53', '2022-03-01 09:12:53'),
(81, 'App\\Models\\Menu', 59, '554b2d4c-2712-4a2b-915f-753a3b5ca405', 'menu', 'HARA BHARA KEBAB', 'HARA-BHARA-KEBAB.jpg', 'image/jpeg', 'public', 'public', 70896, '[]', '[]', '[]', '[]', 58, '2022-03-01 09:23:57', '2022-03-01 09:23:57'),
(82, 'App\\Models\\Menu', 58, '354435dc-d71a-490c-90ab-44cebf9d48b3', 'menu', 'DAHI KE KEBAB', 'DAHI-KE-KEBAB.jpg', 'image/jpeg', 'public', 'public', 44794, '[]', '[]', '[]', '[]', 59, '2022-03-01 09:25:14', '2022-03-01 09:25:14'),
(83, 'App\\Models\\Menu', 53, '681952ff-b4e5-4b1b-bb01-3d418baab79f', 'menu', 'CHOWNK KI TIKKI', 'CHOWNK-KI-TIKKI.jpg', 'image/jpeg', 'public', 'public', 50521, '[]', '[]', '[]', '[]', 60, '2022-03-01 09:26:27', '2022-03-01 09:26:27'),
(84, 'App\\Models\\Menu', 52, '040c18aa-6035-4653-a232-5b48fec316b0', 'menu', 'MUSHROOM GALOUTI KEBAB', 'MUSHROOM-GALOUTI-KEBAB.jpg', 'image/jpeg', 'public', 'public', 116222, '[]', '[]', '[]', '[]', 61, '2022-03-01 09:27:11', '2022-03-01 09:27:11'),
(85, 'App\\Models\\Menu', 87, '57f39df6-8654-4b18-9ece-3b6ed5b622a9', 'menu', 'NASILA JINGHA 1', 'NASILA-JINGHA-1.jpg', 'image/jpeg', 'public', 'public', 85893, '[]', '[]', '[]', '[]', 62, '2022-03-02 07:32:29', '2022-03-02 07:32:29'),
(87, 'App\\Models\\Menu', 85, 'f7626f99-5b71-4745-95fd-8e63650e8327', 'menu', 'AMRITSARI MACCHI', 'AMRITSARI-MACCHI.jpg', 'image/jpeg', 'public', 'public', 83299, '[]', '[]', '[]', '[]', 64, '2022-03-02 08:25:14', '2022-03-02 08:25:14'),
(88, 'App\\Models\\Menu', 81, 'bd6d5daa-7e28-4b87-8aa3-2d016531939b', 'menu', 'FISH LAL MASALA', 'FISH-LAL-MASALA.jpg', 'image/jpeg', 'public', 'public', 59883, '[]', '[]', '[]', '[]', 65, '2022-03-02 08:26:04', '2022-03-02 08:26:04'),
(89, 'App\\Models\\Menu', 78, 'ab8eaa07-7cc3-42a5-9e47-f4ed36451f89', 'menu', 'LAL BURRAH', 'LAL-BURRAH.jpg', 'image/jpeg', 'public', 'public', 68798, '[]', '[]', '[]', '[]', 66, '2022-03-02 08:27:48', '2022-03-02 08:27:48'),
(90, 'App\\Models\\Menu', 77, 'e5f2a973-5203-4ef3-9d18-3020d23613be', 'menu', 'BALUCHI BOTI KEBAB', 'BALUCHI-BOTI-KEBAB.jpg', 'image/jpeg', 'public', 'public', 87578, '[]', '[]', '[]', '[]', 67, '2022-03-02 08:29:52', '2022-03-02 08:29:52'),
(91, 'App\\Models\\Menu', 75, '08d8e73d-cd5a-4dc1-9400-eb614e54cab4', 'menu', 'BALUCHI BOTI KEBAB', 'BALUCHI-BOTI-KEBAB.jpg', 'image/jpeg', 'public', 'public', 87578, '[]', '[]', '[]', '[]', 68, '2022-03-02 08:31:27', '2022-03-02 08:31:27'),
(92, 'App\\Models\\Menu', 74, 'a23a7105-d917-4434-a945-bdd515975d93', 'menu', 'PATHAR KA GOSHT', 'PATHAR-KA-GOSHT.jpg', 'image/jpeg', 'public', 'public', 73379, '[]', '[]', '[]', '[]', 69, '2022-03-02 08:32:13', '2022-03-02 08:32:13'),
(93, 'App\\Models\\Menu', 73, '5b4edba7-e79e-41dd-96a1-c44e177ec5db', 'menu', 'THE CLASSIC GALOUTI', 'THE-CLASSIC-GALOUTI.jpg', 'image/jpeg', 'public', 'public', 118912, '[]', '[]', '[]', '[]', 70, '2022-03-02 08:33:31', '2022-03-02 08:33:31'),
(94, 'App\\Models\\Menu', 72, 'bc32fa44-d4d6-45e5-b82e-46515574b0e9', 'menu', 'SHAH JAHAN KI MAN PASAND SEEKH', 'SHAH-JAHAN-KI-MAN-PASAND-SEEKH.jpg', 'image/jpeg', 'public', 'public', 57839, '[]', '[]', '[]', '[]', 71, '2022-03-02 08:34:26', '2022-03-02 08:34:26'),
(96, 'App\\Models\\Menu', 67, '526737d2-95ec-4c59-9f22-adfd8fc451d3', 'menu', 'KHATTA MURG', 'KHATTA-MURG.jpg', 'image/jpeg', 'public', 'public', 79852, '[]', '[]', '[]', '[]', 73, '2022-03-02 08:36:22', '2022-03-02 08:36:22'),
(97, 'App\\Models\\Menu', 88, '47248208-e6a0-4488-ad3d-524aa8c4c430', 'menu', 'PRAWN BALLAIKA', 'PRAWN-BALLAIKA.jpg', 'image/jpeg', 'public', 'public', 110563, '[]', '[]', '[]', '[]', 74, '2022-03-02 11:24:20', '2022-03-02 11:24:20'),
(98, 'App\\Models\\Menu', 17, 'ff27f0d4-6f46-45a6-8e0a-9a23685d3ffa', 'menu', 'SMOKED GRILLED CHICKEN SALAD', 'SMOKED-GRILLED-CHICKEN-SALAD.jpg', 'image/jpeg', 'public', 'public', 62037, '[]', '[]', '[]', '[]', 75, '2022-03-02 11:27:47', '2022-03-02 11:27:47'),
(99, 'App\\Models\\Menu', 4, 'e8c421b9-d281-432a-864a-b752a092c88c', 'menu', 'CREAM OF MUSHROOM SOUP', 'CREAM-OF-MUSHROOM-SOUP.jpg', 'image/jpeg', 'public', 'public', 82792, '[]', '[]', '[]', '[]', 76, '2022-03-02 11:30:56', '2022-03-02 11:30:56'),
(100, 'App\\Models\\Menu', 95, '6ba0f44c-af15-4838-865a-67cf5b6f5cdd', 'menu', 'MURG awadhi', 'MURG-awadhi.jpg', 'image/jpeg', 'public', 'public', 77267, '[]', '[]', '[]', '[]', 77, '2022-03-02 16:30:48', '2022-03-02 16:30:48'),
(101, 'App\\Models\\Menu', 96, '0eaed0be-3e4b-4d92-a1ca-5e211a6e5304', 'menu', 'MURG SAAGWALA', 'MURG-SAAGWALA.jpg', 'image/jpeg', 'public', 'public', 75418, '[]', '[]', '[]', '[]', 78, '2022-03-02 16:36:43', '2022-03-02 16:36:43'),
(102, 'App\\Models\\Menu', 102, '96817809-91ef-405a-944e-401b83ae5048', 'menu', 'MUTTON ROGANJOSH 1', 'MUTTON-ROGANJOSH-1.jpg', 'image/jpeg', 'public', 'public', 65252, '[]', '[]', '[]', '[]', 79, '2022-03-02 16:40:44', '2022-03-02 16:40:44'),
(103, 'App\\Models\\Menu', 103, 'dbe8f793-d05e-48ee-8a22-31b8e885cb46', 'menu', 'LAAL MAANS (2)', 'LAAL-MAANS-(2).jpg', 'image/jpeg', 'public', 'public', 85270, '[]', '[]', '[]', '[]', 80, '2022-03-02 16:42:15', '2022-03-02 16:42:15'),
(104, 'App\\Models\\Menu', 104, '57c1be30-e3dc-4a4a-afd1-fcdf472b26f3', 'menu', 'KEEMA HARI MIRCH DO PYAZA', 'KEEMA-HARI-MIRCH-DO-PYAZA.jpg', 'image/jpeg', 'public', 'public', 93319, '[]', '[]', '[]', '[]', 81, '2022-03-02 16:43:04', '2022-03-02 16:43:04'),
(105, 'App\\Models\\Menu', 92, 'c2aa4669-8bf6-4c13-a977-fb4639a53619', 'menu', 'BUTTER CHICKEN', 'BUTTER-CHICKEN.jpg', 'image/jpeg', 'public', 'public', 83533, '[]', '[]', '[]', '[]', 82, '2022-03-02 16:47:45', '2022-03-02 16:47:45'),
(106, 'App\\Models\\Menu', 93, '9f892002-386d-46de-aa37-21956b285622', 'menu', 'KADHAI CHICKEN', 'KADHAI-CHICKEN.jpg', 'image/jpeg', 'public', 'public', 94716, '[]', '[]', '[]', '[]', 83, '2022-03-02 16:48:49', '2022-03-02 16:48:49'),
(107, 'App\\Models\\Menu', 108, '6e417e03-ceaa-4a43-af71-e6aaa25729e6', 'menu', 'PRAWN CURRY', 'PRAWN-CURRY.jpg', 'image/jpeg', 'public', 'public', 102644, '[]', '[]', '[]', '[]', 84, '2022-03-02 16:51:48', '2022-03-02 16:51:48'),
(108, 'App\\Models\\Menu', 110, '5073d6ed-15e4-4470-858e-7c8c1fb3c298', 'menu', 'EGG CURRY (2)', 'EGG-CURRY-(2).jpg', 'image/jpeg', 'public', 'public', 56635, '[]', '[]', '[]', '[]', 85, '2022-03-04 08:46:27', '2022-03-04 08:46:27'),
(109, 'App\\Models\\Menu', 111, '6d3bdb6b-3f55-416a-a911-8a17c80ae21e', 'menu', 'EGG BUTTER MASALA 1', 'EGG-BUTTER-MASALA-1.jpg', 'image/jpeg', 'public', 'public', 68897, '[]', '[]', '[]', '[]', 86, '2022-03-04 08:47:57', '2022-03-04 08:47:57'),
(110, 'App\\Models\\Menu', 112, '4ff1e998-454d-4bc7-980d-ffb79514b2e2', 'menu', 'HARI FOOLGOBHI MASALEDAR', 'HARI-FOOLGOBHI-MASALEDAR.jpg', 'image/jpeg', 'public', 'public', 114639, '[]', '[]', '[]', '[]', 87, '2022-03-04 08:51:12', '2022-03-04 08:51:12'),
(111, 'App\\Models\\Menu', 113, '73b28b29-8e81-4497-b36a-005947805f6b', 'menu', 'PINDI CHANNA', 'PINDI-CHANNA.jpg', 'image/jpeg', 'public', 'public', 82110, '[]', '[]', '[]', '[]', 88, '2022-03-04 08:52:12', '2022-03-04 08:52:12'),
(112, 'App\\Models\\Menu', 114, '7cfe6872-5ad6-4be3-8db8-0f864c741d38', 'menu', 'BHARTHA JALANDHRI 2', 'BHARTHA-JALANDHRI-2.jpg', 'image/jpeg', 'public', 'public', 101030, '[]', '[]', '[]', '[]', 89, '2022-03-04 08:53:58', '2022-03-04 08:53:58'),
(113, 'App\\Models\\Menu', 115, '40e8c97a-445d-489f-a177-848e6ecbf04a', 'menu', 'LOVELY LADYFINGER 1', 'LOVELY-LADYFINGER-1.jpg', 'image/jpeg', 'public', 'public', 81342, '[]', '[]', '[]', '[]', 90, '2022-03-04 08:56:05', '2022-03-04 08:56:05'),
(114, 'App\\Models\\Menu', 116, '6f0e5fbb-ef65-4f5e-9b7b-0678c87328c1', 'menu', 'BHINDI CHATPATI 1', 'BHINDI-CHATPATI-1.jpg', 'image/jpeg', 'public', 'public', 64752, '[]', '[]', '[]', '[]', 91, '2022-03-04 08:57:08', '2022-03-04 08:57:08'),
(115, 'App\\Models\\Menu', 117, '4b44cad9-5de6-40de-9f8a-39359856eb39', 'menu', 'JEERA ALOO MASALEDAR', 'JEERA-ALOO-MASALEDAR.jpg', 'image/jpeg', 'public', 'public', 82430, '[]', '[]', '[]', '[]', 92, '2022-03-04 08:58:47', '2022-03-04 08:58:47'),
(116, 'App\\Models\\Menu', 121, '5db2998f-dbc0-4111-bc83-5a7adb61e9a2', 'menu', 'KHUSH RANG PANEER', 'KHUSH-RANG-PANEER.jpg', 'image/jpeg', 'public', 'public', 140489, '[]', '[]', '[]', '[]', 93, '2022-03-04 10:27:27', '2022-03-04 10:27:27'),
(118, 'App\\Models\\Menu', 120, '3d45be44-72cb-429b-9e2c-0ed0b7389451', 'menu', 'paneer makhani masala', 'paneer-makhani-masala.jpg', 'image/jpeg', 'public', 'public', 76496, '[]', '[]', '[]', '[]', 94, '2022-03-04 11:15:55', '2022-03-04 11:15:55'),
(119, 'App\\Models\\Menu', 119, '7e7deaa8-2cb8-425e-b9c5-303f73a6eca0', 'menu', 'LAHORI PANEER TIKKA RARRA MASALA', 'LAHORI-PANEER-TIKKA-RARRA-MASALA.jpg', 'image/jpeg', 'public', 'public', 65483, '[]', '[]', '[]', '[]', 95, '2022-03-04 11:16:24', '2022-03-04 11:16:24'),
(120, 'App\\Models\\Menu', 122, 'af8e3a07-0e80-4799-b633-d02f4fa842b1', 'menu', 'PANEER SEEKH MASALA', 'PANEER-SEEKH-MASALA.jpg', 'image/jpeg', 'public', 'public', 17719, '[]', '[]', '[]', '[]', 96, '2022-03-04 11:18:07', '2022-03-04 11:18:07'),
(121, 'App\\Models\\Menu', 124, '418a8dad-2f77-4e3b-9c5d-0c22195f8b95', 'menu', 'PANEER KASOORI KI BHURJI', 'PANEER-KASOORI-KI-BHURJI.jpg', 'image/jpeg', 'public', 'public', 76806, '[]', '[]', '[]', '[]', 97, '2022-03-04 11:21:11', '2022-03-04 11:21:11'),
(122, 'App\\Models\\Menu', 125, '0f86e516-75a5-4107-9f72-055c1d2596d1', 'menu', 'LIPTA MUSHROOM MASALA', 'LIPTA-MUSHROOM-MASALA.jpg', 'image/jpeg', 'public', 'public', 87135, '[]', '[]', '[]', '[]', 98, '2022-03-04 11:22:52', '2022-03-04 11:22:52'),
(123, 'App\\Models\\Menu', 126, 'f35f320f-2aac-4c41-9e6d-bcaddf1362e8', 'menu', 'PALAK PANEER', 'PALAK-PANEER.jpg', 'image/jpeg', 'public', 'public', 51996, '[]', '[]', '[]', '[]', 99, '2022-03-04 11:23:44', '2022-03-04 11:23:44'),
(125, 'App\\Models\\Menu', 128, 'f9b024de-0cff-4c3b-80e1-b921ce4f992e', 'menu', 'VEGETABLE CHATPATI', 'VEGETABLE-CHATPATI.jpg', 'image/jpeg', 'public', 'public', 74241, '[]', '[]', '[]', '[]', 101, '2022-03-04 11:28:00', '2022-03-04 11:28:00'),
(126, 'App\\Models\\Menu', 129, '1cf2b674-825c-4eb0-b8d0-2d86eb1d0f9d', 'menu', 'SAHI PANEER BADAMI', 'SAHI-PANEER-BADAMI.jpg', 'image/jpeg', 'public', 'public', 58863, '[]', '[]', '[]', '[]', 102, '2022-03-04 11:29:05', '2022-03-04 11:29:05'),
(128, 'App\\Models\\Menu', 127, 'f45d2908-5998-4e3a-99ed-dab048332a08', 'menu', 'NARGISI KOFTA', 'NARGISI-KOFTA.jpg', 'image/jpeg', 'public', 'public', 45871, '[]', '[]', '[]', '[]', 103, '2022-03-04 11:40:12', '2022-03-04 11:40:12'),
(129, 'App\\Models\\Menu', 130, '4a6006a8-3c44-4756-89b1-7710b2af8b86', 'menu', 'DAL MAKHANI', 'DAL-MAKHANI.jpg', 'image/jpeg', 'public', 'public', 53262, '[]', '[]', '[]', '[]', 104, '2022-03-04 14:18:15', '2022-03-04 14:18:15'),
(130, 'App\\Models\\Menu', 132, '6d56bec5-1ed6-468b-b1b7-3ca4f7f5fa1e', 'menu', 'DOUBLE DAL TADKA', 'DOUBLE-DAL-TADKA.jpg', 'image/jpeg', 'public', 'public', 94879, '[]', '[]', '[]', '[]', 105, '2022-03-04 14:19:42', '2022-03-04 14:19:42'),
(131, 'App\\Models\\Menu', 133, '4df11ba1-5fb4-4334-8c1d-4dfe79d8f2a5', 'menu', 'BOONDI RAITA', 'BOONDI-RAITA.jpg', 'image/jpeg', 'public', 'public', 54468, '[]', '[]', '[]', '[]', 106, '2022-03-04 14:21:02', '2022-03-04 14:21:02'),
(132, 'App\\Models\\Menu', 134, 'd4fdd9f0-97d9-4572-b6eb-deb00197c68a', 'menu', 'BOONDI RAITA', 'BOONDI-RAITA.jpg', 'image/jpeg', 'public', 'public', 54468, '[]', '[]', '[]', '[]', 107, '2022-03-04 14:25:59', '2022-03-04 14:25:59'),
(133, 'App\\Models\\Menu', 135, 'e1519cb2-306f-4725-89b9-ed314cc0c37c', 'menu', 'MIX VEG RAITA', 'MIX-VEG-RAITA.jpg', 'image/jpeg', 'public', 'public', 75683, '[]', '[]', '[]', '[]', 108, '2022-03-04 14:27:11', '2022-03-04 14:27:11'),
(134, 'App\\Models\\Menu', 136, 'f531856f-fa18-4c90-bef7-92cd161a5f54', 'menu', 'BURANI RAITA', 'BURANI-RAITA.jpg', 'image/jpeg', 'public', 'public', 44450, '[]', '[]', '[]', '[]', 109, '2022-03-04 14:27:47', '2022-03-04 14:27:47'),
(135, 'App\\Models\\Menu', 138, '8feb1c60-3588-4ecd-b21d-a9ffb9f367ea', 'menu', 'PINEAPPLE RAITA', 'PINEAPPLE-RAITA.jpg', 'image/jpeg', 'public', 'public', 61978, '[]', '[]', '[]', '[]', 110, '2022-03-04 14:29:03', '2022-03-04 14:29:03'),
(136, 'App\\Models\\Menu', 139, '0ebc7521-54f1-4b0a-a249-f6ee860b8469', 'menu', 'DAHI BHALLA', 'DAHI-BHALLA.jpg', 'image/jpeg', 'public', 'public', 65427, '[]', '[]', '[]', '[]', 111, '2022-03-04 14:29:35', '2022-03-04 14:29:35'),
(137, 'App\\Models\\Menu', 140, 'c0364b9f-e28f-40cb-a5c4-6e2439cc3ec1', 'menu', 'STEAMED RICE', 'STEAMED-RICE.jpg', 'image/jpeg', 'public', 'public', 24407, '[]', '[]', '[]', '[]', 112, '2022-03-04 14:30:23', '2022-03-04 14:30:23'),
(138, 'App\\Models\\Menu', 141, '7d619c75-dbca-4de4-a80f-1a20614dc911', 'menu', 'JEERA RICE', 'JEERA-RICE.jpg', 'image/jpeg', 'public', 'public', 103898, '[]', '[]', '[]', '[]', 113, '2022-03-04 14:30:58', '2022-03-04 14:30:58'),
(140, 'App\\Models\\Menu', 143, '1584d5b5-d6fe-496d-877b-274a2d4c6b5e', 'menu', 'corn methi pulao', 'corn-methi-pulao.jpg', 'image/jpeg', 'public', 'public', 72444, '[]', '[]', '[]', '[]', 115, '2022-03-04 14:35:08', '2022-03-04 14:35:08'),
(141, 'App\\Models\\Menu', 142, 'bd26b7f4-1245-4a41-8715-85002dda2b02', 'menu', 'PEAS PULAO', 'PEAS-PULAO.jpg', 'image/jpeg', 'public', 'public', 75561, '[]', '[]', '[]', '[]', 116, '2022-03-04 14:35:44', '2022-03-04 14:35:44'),
(142, 'App\\Models\\Menu', 146, '8fdaa71f-fd9b-4a0c-9eae-35b56ac8b9cb', 'menu', 'KEEMA FRIED RICE', 'KEEMA-FRIED-RICE.jpg', 'image/jpeg', 'public', 'public', 96071, '[]', '[]', '[]', '[]', 117, '2022-03-06 07:55:02', '2022-03-06 07:55:02'),
(143, 'App\\Models\\Menu', 149, '44218f8c-3f4e-4cb3-9f54-d757e1221d63', 'menu', 'HYDERABADI MUTTO BIRYABI', 'HYDERABADI-MUTTO-BIRYABI.jpg', 'image/jpeg', 'public', 'public', 104918, '[]', '[]', '[]', '[]', 118, '2022-03-06 07:57:47', '2022-03-06 07:57:47'),
(144, 'App\\Models\\Menu', 163, '53953b31-a7e4-41a2-8c6c-578223f1cfde', 'menu', 'honey chilli bbq chicken', 'honey-chilli-bbq-chicken.jpg', 'image/jpeg', 'public', 'public', 134296, '[]', '[]', '[]', '[]', 119, '2022-03-07 08:29:25', '2022-03-07 08:29:25'),
(145, 'App\\Models\\Menu', 164, '1bf3f9cc-90a3-4be4-825e-3c5fe38dc4e5', 'menu', 'SHREDED CHICKEN TRIPEPPER SAUCE', 'SHREDED-CHICKEN-TRIPEPPER-SAUCE.jpg', 'image/jpeg', 'public', 'public', 79358, '[]', '[]', '[]', '[]', 120, '2022-03-07 08:30:12', '2022-03-07 08:30:12'),
(146, 'App\\Models\\Menu', 165, '7cc6a3e2-1144-45e4-b022-bd689a1e24a8', 'menu', 'CHILLI CHICKEN', 'CHILLI-CHICKEN.jpg', 'image/jpeg', 'public', 'public', 65793, '[]', '[]', '[]', '[]', 121, '2022-03-07 08:31:21', '2022-03-07 08:31:21'),
(147, 'App\\Models\\Menu', 166, 'cc52dd1f-236e-4729-838e-3e5d842855ad', 'menu', 'CHICKEN SPRING ROLLS', 'CHICKEN-SPRING-ROLLS.jpg', 'image/jpeg', 'public', 'public', 60202, '[]', '[]', '[]', '[]', 122, '2022-03-07 08:31:57', '2022-03-07 08:31:57'),
(148, 'App\\Models\\Menu', 167, '1c3a2240-aade-4ba4-bb76-89ebf9046233', 'menu', 'shredded chicken with red pepper 1', 'shredded-chicken-with-red-pepper-1.jpg', 'image/jpeg', 'public', 'public', 145393, '[]', '[]', '[]', '[]', 123, '2022-03-14 09:09:10', '2022-03-14 09:09:10'),
(149, 'App\\Models\\Menu', 168, '5902b7bd-860f-490f-91fe-0ad686e008db', 'menu', 'ROASTED CHICKEN CHILLI GARLIC SAUCE', 'ROASTED-CHICKEN-CHILLI-GARLIC-SAUCE.jpg', 'image/jpeg', 'public', 'public', 79073, '[]', '[]', '[]', '[]', 124, '2022-03-14 09:10:02', '2022-03-14 09:10:02'),
(150, 'App\\Models\\Menu', 169, 'd88fbc9f-8d98-43f3-bb7f-068804ff56e9', 'menu', 'sichuan roasted lamb', 'sichuan-roasted-lamb.jpg', 'image/jpeg', 'public', 'public', 80245, '[]', '[]', '[]', '[]', 125, '2022-03-14 09:10:48', '2022-03-14 09:10:48'),
(151, 'App\\Models\\Menu', 170, '5e575de7-fb04-4bdd-b0b0-54c0cc3331e0', 'menu', 'MUTTON CHILLI', 'MUTTON-CHILLI.jpg', 'image/jpeg', 'public', 'public', 60442, '[]', '[]', '[]', '[]', 126, '2022-03-14 09:11:30', '2022-03-14 09:11:30'),
(153, 'App\\Models\\Menu', 174, 'e09ca7f9-939d-4a7b-b9d5-672c4bec3a2b', 'menu', 'SINGAPORE PRAWNS', 'SINGAPORE-PRAWNS.jpg', 'image/jpeg', 'public', 'public', 68735, '[]', '[]', '[]', '[]', 128, '2022-03-14 09:15:34', '2022-03-14 09:15:34'),
(154, 'App\\Models\\Menu', 175, '7437180d-24cb-45e4-8b8e-db724a704f90', 'menu', 'GOLDEN FRIED PRAWNS (2)', 'GOLDEN-FRIED-PRAWNS-(2).jpg', 'image/jpeg', 'public', 'public', 55930, '[]', '[]', '[]', '[]', 129, '2022-03-14 09:23:07', '2022-03-14 09:23:07'),
(155, 'App\\Models\\Menu', 172, 'ac451a58-d49a-4467-92fc-b080052cfd23', 'menu', 'RED CHILLI FISH', 'RED-CHILLI-FISH.jpg', 'image/jpeg', 'public', 'public', 81164, '[]', '[]', '[]', '[]', 130, '2022-03-14 09:30:10', '2022-03-14 09:30:10'),
(156, 'App\\Models\\Menu', 240, '2638d042-2e99-464e-a1d4-095c70d94ede', 'menu', 'AMERICAN STYLE CRISPY CHICKEN 1', 'AMERICAN-STYLE-CRISPY-CHICKEN-1.jpg', 'image/jpeg', 'public', 'public', 92302, '[]', '[]', '[]', '[]', 131, '2022-04-05 10:34:36', '2022-04-05 10:34:36'),
(157, 'App\\Models\\Menu', 241, '3008e5a0-f0e1-4308-8e93-2ef80b0efcce', 'menu', 'CHICKEN WINGS IN BUCKET', 'CHICKEN-WINGS-IN-BUCKET.jpg', 'image/jpeg', 'public', 'public', 105492, '[]', '[]', '[]', '[]', 132, '2022-04-05 10:36:24', '2022-04-05 10:36:24'),
(158, 'App\\Models\\Menu', 148, '6b5ce9bc-858b-449d-88e6-651f3cd0a04c', 'menu', 'CHICKEN BIRYANI', 'CHICKEN-BIRYANI.jpg', 'image/jpeg', 'public', 'public', 62002, '[]', '[]', '[]', '[]', 133, '2022-04-05 11:47:51', '2022-04-05 11:47:51'),
(159, 'App\\Models\\Menu', 147, 'bdfbee90-7b4e-46a8-9109-0a0734508352', 'menu', 'VEG BIRYANI', 'VEG-BIRYANI.jpg', 'image/jpeg', 'public', 'public', 24219, '[]', '[]', '[]', '[]', 134, '2022-04-05 12:24:42', '2022-04-05 12:24:42'),
(160, 'App\\Models\\Menu', 246, 'd3e8a267-9cea-4b2f-b948-6ddc385a600c', 'menu', 'VEG NACHOS', 'VEG-NACHOS.jpg', 'image/jpeg', 'public', 'public', 98682, '[]', '[]', '[]', '[]', 135, '2022-04-05 12:40:48', '2022-04-05 12:40:48'),
(162, 'App\\Models\\Menu', 245, '2aa1fd8b-ae3a-45fe-a320-d87970f9aea0', 'menu', 'CHEESE CHILLI GARLIC TOAST', 'CHEESE-CHILLI-GARLIC-TOAST.jpg', 'image/jpeg', 'public', 'public', 91940, '[]', '[]', '[]', '[]', 136, '2022-04-05 12:47:33', '2022-04-05 12:47:33'),
(163, 'App\\Models\\Menu', 243, '4e27f25b-901c-44a8-b943-5130bdb4ae44', 'menu', 'FISH FINGER', 'FISH-FINGER.jpg', 'image/jpeg', 'public', 'public', 71112, '[]', '[]', '[]', '[]', 137, '2022-04-15 07:44:15', '2022-04-15 07:44:15'),
(164, 'App\\Models\\Menu', 242, 'f94001c3-3fdf-44b8-bda2-9af65647d075', 'menu', 'FISH FINGERS', 'FISH-FINGERS.jpg', 'image/jpeg', 'public', 'public', 87811, '[]', '[]', '[]', '[]', 138, '2022-04-15 07:45:19', '2022-04-15 07:45:19'),
(165, 'App\\Models\\Menu', 244, 'b4abbe76-6e25-4c7a-87fb-2252c1104d64', 'menu', 'CHEESE CHILLI GARLIC TOAST', 'CHEESE-CHILLI-GARLIC-TOAST.jpg', 'image/jpeg', 'public', 'public', 91940, '[]', '[]', '[]', '[]', 139, '2022-04-15 07:46:02', '2022-04-15 07:46:02'),
(166, 'App\\Models\\Menu', 226, '537e9912-c90e-40cc-bc64-6f9d62c1b201', 'menu', 'PRAWN FRIED RICE', 'PRAWN-FRIED-RICE.jpg', 'image/jpeg', 'public', 'public', 119601, '[]', '[]', '[]', '[]', 140, '2022-04-15 07:50:46', '2022-04-15 07:50:46'),
(167, 'App\\Models\\Menu', 225, 'faad3666-313f-407e-b05f-383cd6e674bd', 'menu', 'CHICKEN FRIED RICE', 'CHICKEN-FRIED-RICE.jpg', 'image/jpeg', 'public', 'public', 98499, '[]', '[]', '[]', '[]', 141, '2022-04-15 07:51:24', '2022-04-15 07:51:24'),
(168, 'App\\Models\\Menu', 224, 'd8dc3075-9e00-40f8-bf52-639184d8cfd8', 'menu', 'VEG FRIED RICE', 'VEG-FRIED-RICE.jpg', 'image/jpeg', 'public', 'public', 102926, '[]', '[]', '[]', '[]', 142, '2022-04-15 07:52:03', '2022-04-15 07:52:03'),
(169, 'App\\Models\\Menu', 131, '96299931-225a-4981-900b-b2f365fd2f7e', 'menu', 'dal palak double tadka 1 ', 'dal-palak-double-tadka-1-.jpg', 'image/jpeg', 'public', 'public', 100300, '[]', '[]', '[]', '[]', 143, '2022-04-15 07:54:33', '2022-04-15 07:54:33'),
(170, 'App\\Models\\Menu', 247, 'd6400ce7-44be-48e8-8d39-e490a96d72e9', 'menu', 'cottage cheese finger', 'cottage-cheese-finger.jpg', 'image/jpeg', 'public', 'public', 63325, '[]', '[]', '[]', '[]', 144, '2022-04-15 07:57:07', '2022-04-15 07:57:07'),
(172, 'App\\Models\\Menu', 239, 'e226a836-7376-4010-a321-204d4938c59f', 'menu', 'veg nachos', 'veg-nachos.jpg', 'image/jpeg', 'public', 'public', 98682, '[]', '[]', '[]', '[]', 146, '2022-04-15 08:01:58', '2022-04-15 08:01:58'),
(173, 'App\\Models\\Menu', 235, 'f8219f9d-7d09-4e8b-8b6a-551a48202b06', 'menu', 'CHILLI GARLIC PRAWN NOODLES', 'CHILLI-GARLIC-PRAWN-NOODLES.jpg', 'image/jpeg', 'public', 'public', 104701, '[]', '[]', '[]', '[]', 147, '2022-04-15 08:39:26', '2022-04-15 08:39:26'),
(174, 'App\\Models\\Menu', 233, 'c626837b-18f8-4a30-9b18-9881f3b03a31', 'menu', 'CHILLI GARLIC NOODLES', 'CHILLI-GARLIC-NOODLES.jpg', 'image/jpeg', 'public', 'public', 60968, '[]', '[]', '[]', '[]', 148, '2022-04-15 08:42:35', '2022-04-15 08:42:35'),
(175, 'App\\Models\\Menu', 223, '1e340fda-1ad5-4f44-a568-365f969e44dc', 'menu', 'AMERICAN CHICKEN CHOP SUEY', 'AMERICAN-CHICKEN-CHOP-SUEY.jpg', 'image/jpeg', 'public', 'public', 133784, '[]', '[]', '[]', '[]', 149, '2022-04-15 08:56:03', '2022-04-15 08:56:03'),
(176, 'App\\Models\\Menu', 227, 'd7fc976e-ada9-4276-a0ff-dd251ec4fecc', 'menu', 'VEG HAKKA NOODLES', 'VEG-HAKKA-NOODLES.jpg', 'image/jpeg', 'public', 'public', 39453, '[]', '[]', '[]', '[]', 150, '2022-04-19 09:06:37', '2022-04-19 09:06:37'),
(177, 'App\\Models\\Menu', 234, 'b86e3299-dad3-4573-8319-ba44b70b51ac', 'menu', 'CHICKEN CHILLI GARLIC NOODLES', 'CHICKEN-CHILLI-GARLIC-NOODLES.jpg', 'image/jpeg', 'public', 'public', 85987, '[]', '[]', '[]', '[]', 151, '2022-04-22 09:52:22', '2022-04-22 09:52:22'),
(178, 'App\\Models\\Menu', 232, 'adbd0c89-3ffe-4ee9-870d-e09d76f6fc4c', 'menu', 'PRAWN SCHEZWAN NOODLES', 'PRAWN-SCHEZWAN-NOODLES.jpg', 'image/jpeg', 'public', 'public', 80249, '[]', '[]', '[]', '[]', 152, '2022-04-22 09:58:48', '2022-04-22 09:58:48'),
(179, 'App\\Models\\Menu', 231, '466f9ac9-eab6-4d81-bc97-5af201dd08c2', 'menu', 'SCHEZWAN CHICKEN NOODLES', 'SCHEZWAN-CHICKEN-NOODLES.jpg', 'image/jpeg', 'public', 'public', 84100, '[]', '[]', '[]', '[]', 153, '2022-04-22 10:00:15', '2022-04-22 10:00:15'),
(180, 'App\\Models\\Menu', 230, 'af4728fe-42d2-4aaa-9f53-42f1589efcb7', 'menu', 'VEG SCHEZWAN NOODLES', 'VEG-SCHEZWAN-NOODLES.jpg', 'image/jpeg', 'public', 'public', 79326, '[]', '[]', '[]', '[]', 154, '2022-04-22 10:57:05', '2022-04-22 10:57:05'),
(181, 'App\\Models\\Menu', 228, 'f3bb14ac-38cf-4410-9dc6-c38479a6d285', 'menu', 'CHICKEN HAKKA NOODLES 1', 'CHICKEN-HAKKA-NOODLES-1.jpg', 'image/jpeg', 'public', 'public', 96772, '[]', '[]', '[]', '[]', 155, '2022-04-22 11:01:15', '2022-04-22 11:01:15'),
(182, 'App\\Models\\Menu', 229, '3f64ac33-fe31-4d73-88b8-7dce3a579613', 'menu', 'HAKKA NOODLES PRAWN', 'HAKKA-NOODLES-PRAWN.jpg', 'image/jpeg', 'public', 'public', 85346, '[]', '[]', '[]', '[]', 156, '2022-04-22 11:03:53', '2022-04-22 11:03:53'),
(183, 'App\\Models\\Menu', 222, 'c6ee72ca-dc08-43a9-a805-018013b14845', 'menu', 'AMERICAN CHOP SUEY VEG', 'AMERICAN-CHOP-SUEY-VEG.jpg', 'image/jpeg', 'public', 'public', 63558, '[]', '[]', '[]', '[]', 157, '2022-04-22 11:05:09', '2022-04-22 11:05:09'),
(184, 'App\\Models\\Menu', 206, 'bd65b57e-3475-44a8-b2ba-8f47a3f09fd7', 'menu', 'THAI CHICKEN RED CURRY', 'THAI-CHICKEN-RED-CURRY.jpg', 'image/jpeg', 'public', 'public', 91929, '[]', '[]', '[]', '[]', 158, '2022-04-22 11:06:54', '2022-04-22 11:06:54'),
(187, 'App\\Models\\Menu', 217, 'c557f09c-495c-42f6-8330-a645c89140b2', 'menu', 'ORIENTAL STIR FRIED VEGETABLE', 'ORIENTAL-STIR-FRIED-VEGETABLE.jpg', 'image/jpeg', 'public', 'public', 108284, '[]', '[]', '[]', '[]', 159, '2022-04-26 15:04:02', '2022-04-26 15:04:02'),
(189, 'App\\Models\\Menu', 215, 'b8a7cca3-fa70-4403-8e85-dafd39447210', 'menu', 'ASSORTED VEGETABLE IN BLACK BEAN SAUCE', 'ASSORTED-VEGETABLE-IN-BLACK-BEAN-SAUCE.jpg', 'image/jpeg', 'public', 'public', 60875, '[]', '[]', '[]', '[]', 160, '2022-04-26 15:12:43', '2022-04-26 15:12:43'),
(190, 'App\\Models\\Menu', 214, 'b297cc9f-980a-47ee-ba0c-991802b21f30', 'menu', 'CHILLI MUSHROOM GRAVEY', 'CHILLI-MUSHROOM-GRAVEY.jpg', 'image/jpeg', 'public', 'public', 37419, '[]', '[]', '[]', '[]', 161, '2022-04-26 15:21:43', '2022-04-26 15:21:43'),
(191, 'App\\Models\\Menu', 213, '25d0a44d-ea2a-4063-b814-e427dd4783c0', 'menu', 'CHILLI PANEER GRAVEY', 'CHILLI-PANEER-GRAVEY.jpg', 'image/jpeg', 'public', 'public', 62124, '[]', '[]', '[]', '[]', 162, '2022-04-26 15:25:42', '2022-04-26 15:25:42'),
(192, 'App\\Models\\Menu', 211, '6ca5bb6c-41c1-46c6-934d-85a12af57bdf', 'menu', 'veg manchurian gravey', 'veg-manchurian-gravey.jpg', 'image/jpeg', 'public', 'public', 85617, '[]', '[]', '[]', '[]', 163, '2022-04-27 09:25:48', '2022-04-27 09:25:48'),
(193, 'App\\Models\\Menu', 212, 'f53ba214-6d46-4b3e-86fd-e954f8c1affa', 'menu', 'SWEET & SOUR VEGETABLE', 'SWEET-&-SOUR-VEGETABLE.jpg', 'image/jpeg', 'public', 'public', 94625, '[]', '[]', '[]', '[]', 164, '2022-04-27 09:26:40', '2022-04-27 09:26:40'),
(194, 'App\\Models\\Menu', 210, 'af0e2851-1924-4ed1-9780-9977ac8c271c', 'menu', 'PRAWN IN KUNG PAO SAUCE', 'PRAWN-IN-KUNG-PAO-SAUCE.jpg', 'image/jpeg', 'public', 'public', 95753, '[]', '[]', '[]', '[]', 165, '2022-04-27 09:30:09', '2022-04-27 09:30:09'),
(195, 'App\\Models\\Menu', 209, '800c995f-65e6-4eb8-b0e3-202360c53555', 'menu', 'ORIENTAL PRAWN SIZZLER', 'ORIENTAL-PRAWN-SIZZLER.jpg', 'image/jpeg', 'public', 'public', 58696, '[]', '[]', '[]', '[]', 166, '2022-04-27 09:33:40', '2022-04-27 09:33:40'),
(196, 'App\\Models\\Menu', 208, 'c14ec36a-ef84-4a23-887f-39d1e4552bce', 'menu', 'ORIENTAL CHICKEN SIZZLER', 'ORIENTAL-CHICKEN-SIZZLER.jpg', 'image/jpeg', 'public', 'public', 67253, '[]', '[]', '[]', '[]', 167, '2022-04-27 09:37:46', '2022-04-27 09:37:46'),
(197, 'App\\Models\\Menu', 207, '21e926fb-4a5e-4ff6-9e66-c613ccb6b51c', 'menu', 'THAI PRAWN YELLOW  CURRY', 'THAI-PRAWN-YELLOW--CURRY.jpg', 'image/jpeg', 'public', 'public', 49065, '[]', '[]', '[]', '[]', 168, '2022-04-27 09:39:09', '2022-04-27 09:39:09'),
(198, 'App\\Models\\Menu', 205, 'ed487625-fea5-465c-94b3-a22b7c5217a5', 'menu', 'veg thai red curry', 'veg-thai-red-curry.jpg', 'image/jpeg', 'public', 'public', 52086, '[]', '[]', '[]', '[]', 169, '2022-04-27 09:40:11', '2022-04-27 09:40:11'),
(199, 'App\\Models\\Menu', 204, 'd7e3a096-2ff3-4225-8e84-8ee89de7dd01', 'menu', 'CHILLI FISH DRY', 'CHILLI-FISH-DRY.jpg', 'image/jpeg', 'public', 'public', 18252, '[]', '[]', '[]', '[]', 170, '2022-04-27 09:48:37', '2022-04-27 09:48:37'),
(200, 'App\\Models\\Menu', 203, 'fb403dcb-6229-485b-93ad-9ecb9b340e56', 'menu', 'CHILLI FISH DRY', 'CHILLI-FISH-DRY.jpg', 'image/jpeg', 'public', 'public', 18252, '[]', '[]', '[]', '[]', 171, '2022-04-27 09:49:16', '2022-04-27 09:49:16'),
(201, 'App\\Models\\Menu', 199, '1a886b73-f7d9-4ca8-8d80-6242d6a1cfdd', 'menu', 'DICED SCHEZWAN CHICKEN GRAVEY', 'DICED-SCHEZWAN-CHICKEN-GRAVEY.jpg', 'image/jpeg', 'public', 'public', 80999, '[]', '[]', '[]', '[]', 172, '2022-04-27 10:32:50', '2022-04-27 10:32:50'),
(202, 'App\\Models\\Menu', 198, '131273dd-60f5-476f-a49f-9acf76f4e915', 'menu', 'CHICKEN MANCHURIAN GRAVY', 'CHICKEN-MANCHURIAN-GRAVY.jpg', 'image/jpeg', 'public', 'public', 81214, '[]', '[]', '[]', '[]', 173, '2022-04-27 10:39:02', '2022-04-27 10:39:02'),
(203, 'App\\Models\\Menu', 196, 'fdc71799-4379-4200-bf19-28f44bd01b53', 'menu', 'CHILLI CHICKEN GRAVEY', 'CHILLI-CHICKEN-GRAVEY.jpg', 'image/jpeg', 'public', 'public', 128223, '[]', '[]', '[]', '[]', 174, '2022-04-27 10:40:05', '2022-04-27 10:40:05'),
(204, 'App\\Models\\Menu', 195, '9ed5548a-7b3c-43d7-8699-e3fb2ce95971', 'menu', 'CHICKEN DIMSUM', 'CHICKEN-DIMSUM.jpg', 'image/jpeg', 'public', 'public', 19944, '[]', '[]', '[]', '[]', 175, '2022-04-27 11:29:00', '2022-04-27 11:29:00'),
(205, 'App\\Models\\Menu', 194, '6d66dff6-df59-414f-8703-9cd240f92beb', 'menu', 'VEG DIMSUM', 'VEG-DIMSUM.jpg', 'image/jpeg', 'public', 'public', 24515, '[]', '[]', '[]', '[]', 176, '2022-04-27 11:29:58', '2022-04-27 11:29:58'),
(206, 'App\\Models\\Menu', 190, 'd5f032ee-a017-4687-b57c-f633682f36de', 'menu', 'CRISPY COTTAGE CHEESE', 'CRISPY-COTTAGE-CHEESE.jpg', 'image/jpeg', 'public', 'public', 80041, '[]', '[]', '[]', '[]', 177, '2022-04-27 11:31:00', '2022-04-27 11:31:00'),
(207, 'App\\Models\\Menu', 180, '37e147f7-336e-439c-a191-0ae3e6e6e552', 'menu', 'VEG SALT N PEPPER', 'VEG-SALT-N-PEPPER.jpg', 'image/jpeg', 'public', 'public', 33881, '[]', '[]', '[]', '[]', 178, '2022-04-27 11:36:44', '2022-04-27 11:36:44'),
(208, 'App\\Models\\Menu', 181, '468210ee-b3e9-4bd8-80d0-90b79945ca33', 'menu', 'VEG SPRING ROLLS', 'VEG-SPRING-ROLLS.jpg', 'image/jpeg', 'public', 'public', 55905, '[]', '[]', '[]', '[]', 179, '2022-04-27 11:37:37', '2022-04-27 11:37:37'),
(209, 'App\\Models\\Menu', 185, 'dce368d9-b0ee-40f7-943a-b162c95759e7', 'menu', 'CRISPY CORN SALT N` PEPPER', 'CRISPY-CORN-SALT-N`-PEPPER.jpg', 'image/jpeg', 'public', 'public', 69580, '[]', '[]', '[]', '[]', 180, '2022-04-27 11:38:48', '2022-04-27 11:38:48'),
(210, 'App\\Models\\Menu', 178, '5aef11d6-05ad-46f3-836b-d0d2f81b19ac', 'menu', 'HONEY CHILLI POTATOES', 'HONEY-CHILLI-POTATOES.jpg', 'image/jpeg', 'public', 'public', 93430, '[]', '[]', '[]', '[]', 181, '2022-04-27 11:39:39', '2022-04-27 11:39:39'),
(212, 'App\\Models\\Menu', 107, '7169284c-b662-4dd8-b154-0bb7e0595ede', 'menu', 'PRAWN RARA MASALA', 'PRAWN-RARA-MASALA.jpg', 'image/jpeg', 'public', 'public', 86094, '[]', '[]', '[]', '[]', 183, '2022-04-27 12:22:55', '2022-04-27 12:22:55'),
(213, 'App\\Models\\Menu', 101, 'b1133450-3646-469c-a649-b66425a028f9', 'menu', 'mutton rara gosht', 'mutton-rara-gosht.jpg', 'image/jpeg', 'public', 'public', 25994, '[]', '[]', '[]', '[]', 184, '2022-04-27 12:27:49', '2022-04-27 12:27:49'),
(214, 'App\\Models\\Menu', 100, '1f572c16-c7ba-4db0-833f-14d298fd64ac', 'menu', 'PATIALA HANDI MUTTON', 'PATIALA-HANDI-MUTTON.jpg', 'image/jpeg', 'public', 'public', 76869, '[]', '[]', '[]', '[]', 185, '2022-04-27 12:36:13', '2022-04-27 12:36:13'),
(215, 'App\\Models\\Menu', 99, 'f8ff2fec-48ad-4e5c-86a5-edfbfa8c3f91', 'menu', 'MAKHMALI MURG TIKKA MASALA', 'MAKHMALI-MURG-TIKKA-MASALA.jpg', 'image/jpeg', 'public', 'public', 59960, '[]', '[]', '[]', '[]', 186, '2022-04-27 12:41:11', '2022-04-27 12:41:11'),
(216, 'App\\Models\\Menu', 98, '3d505122-3143-4938-a52c-a104f21c28ae', 'menu', 'MARTVAN KA MURH', 'MARTVAN-KA-MURH.jpg', 'image/jpeg', 'public', 'public', 80052, '[]', '[]', '[]', '[]', 187, '2022-04-27 12:43:11', '2022-04-27 12:43:11'),
(217, 'App\\Models\\Menu', 97, 'df1e788a-7350-4f39-b41b-40469cf0242c', 'menu', 'MURG MUMTAAZ', 'MURG-MUMTAAZ.jpg', 'image/jpeg', 'public', 'public', 50278, '[]', '[]', '[]', '[]', 188, '2022-04-27 12:46:41', '2022-04-27 12:46:41'),
(219, 'App\\Models\\Menu', 109, '8b67b9e3-961c-4277-a4d1-f595902bb979', 'menu', 'EGG AKURI', 'EGG-AKURI.jpg', 'image/jpeg', 'public', 'public', 111354, '[]', '[]', '[]', '[]', 189, '2022-04-27 12:51:33', '2022-04-27 12:51:33'),
(220, 'App\\Models\\Menu', 105, '5a98453c-5c94-4460-9b7a-f0a63cadd696', 'menu', 'FISH TAWA MASALA', 'FISH-TAWA-MASALA.jpg', 'image/jpeg', 'public', 'public', 90808, '[]', '[]', '[]', '[]', 190, '2022-04-27 13:03:52', '2022-04-27 13:03:52'),
(221, 'App\\Models\\Menu', 220, '8b3029e9-b690-4126-947d-d1d128731e64', 'menu', 'ORIENTAL VEG SIZZLER', 'ORIENTAL-VEG-SIZZLER.jpg', 'image/jpeg', 'public', 'public', 98693, '[]', '[]', '[]', '[]', 191, '2022-04-29 07:39:03', '2022-04-29 07:39:03'),
(222, 'App\\Models\\Menu', 200, '2c6328e0-fe1f-48fb-9b9e-79b6f2537fb7', 'menu', 'SHREDED CHICKEN BLACK BEAN SAUCE', 'SHREDED-CHICKEN-BLACK-BEAN-SAUCE.jpg', 'image/jpeg', 'public', 'public', 87064, '[]', '[]', '[]', '[]', 192, '2022-04-29 07:42:38', '2022-04-29 07:42:38'),
(223, 'App\\Models\\Menu', 218, '55fcf35c-09f2-4cc4-9f44-e4054b8fd752', 'menu', 'COTTAGE CHEESE IN KUNG PAO SAUCE', 'COTTAGE-CHEESE-IN-KUNG-PAO-SAUCE.jpg', 'image/jpeg', 'public', 'public', 100625, '[]', '[]', '[]', '[]', 193, '2022-04-29 08:00:36', '2022-04-29 08:00:36'),
(224, 'App\\Models\\Menu', 216, '9f551145-e356-4ee3-b5a4-a2b5004af0bb', 'menu', 'SICHUAN SHREDDED POTATO', 'SICHUAN-SHREDDED-POTATO.jpg', 'image/jpeg', 'public', 'public', 83117, '[]', '[]', '[]', '[]', 194, '2022-04-29 08:27:48', '2022-04-29 08:27:48'),
(225, 'App\\Models\\Menu', 189, '8828e103-75c4-4aba-9631-b09c28f31bb9', 'menu', 'COTTAGE CHEESE IN KUNG PAO SAUCE', 'COTTAGE-CHEESE-IN-KUNG-PAO-SAUCE.jpg', 'image/jpeg', 'public', 'public', 100625, '[]', '[]', '[]', '[]', 195, '2022-04-29 09:48:47', '2022-04-29 09:48:47'),
(226, 'App\\Models\\Menu', 187, '5ff5b30e-6cc7-48b7-914d-8dc1c4fb880a', 'menu', 'SICHUAN VEG PLATTER', 'SICHUAN-VEG-PLATTER.jpg', 'image/jpeg', 'public', 'public', 102626, '[]', '[]', '[]', '[]', 196, '2022-04-29 11:13:44', '2022-04-29 11:13:44'),
(227, 'App\\Models\\Menu', 186, '72332216-8b5d-4d9c-8086-4290fd53970f', 'menu', 'TRI PEPPER MUSHROOM WITH GREEN CHILLI', 'TRI-PEPPER-MUSHROOM-WITH-GREEN-CHILLI.jpg', 'image/jpeg', 'public', 'public', 98370, '[]', '[]', '[]', '[]', 197, '2022-04-29 11:14:53', '2022-04-29 11:14:53'),
(228, 'App\\Models\\Menu', 182, 'a9b6fc44-a128-47da-995f-391bff27d77d', 'menu', 'HONEY CHILLI CAULIFLOWER', 'HONEY-CHILLI-CAULIFLOWER.jpg', 'image/jpeg', 'public', 'public', 93351, '[]', '[]', '[]', '[]', 198, '2022-04-29 11:32:10', '2022-04-29 11:32:10'),
(229, 'App\\Models\\Menu', 183, '1578c5ce-8873-45f3-a097-8beae60bd8e5', 'menu', 'BABY CORN BROCCOLI & MUSHROOM GARLIC SAUCE', 'BABY-CORN-BROCCOLI-&-MUSHROOM-GARLIC-SAUCE.jpg', 'image/jpeg', 'public', 'public', 146043, '[]', '[]', '[]', '[]', 199, '2022-04-29 11:37:23', '2022-04-29 11:37:23'),
(230, 'App\\Models\\Menu', 188, '942a2f05-9f35-46d1-92b5-2961b256d87b', 'menu', 'COTTAGE CHEESE SICHUAN SAUCE', 'COTTAGE-CHEESE-SICHUAN-SAUCE.jpg', 'image/jpeg', 'public', 'public', 92816, '[]', '[]', '[]', '[]', 200, '2022-04-29 11:38:57', '2022-04-29 11:38:57'),
(231, 'App\\Models\\Menu', 173, '9ad0aac0-e6ce-4fbe-8943-ae1f03b9498b', 'menu', 'BANANA LEAF FISH', 'BANANA-LEAF-FISH.jpg', 'image/jpeg', 'public', 'public', 87107, '[]', '[]', '[]', '[]', 201, '2022-04-29 12:20:43', '2022-04-29 12:20:43'),
(233, 'App\\Models\\Menu', 144, 'e272d23c-816e-4a39-9b3f-ed06ed5d78a5', 'menu', 'DAL CHAWAL ACHARI RISSOTTO', 'DAL-CHAWAL-ACHARI-RISSOTTO.jpg', 'image/jpeg', 'public', 'public', 89766, '[]', '[]', '[]', '[]', 203, '2022-05-01 09:40:51', '2022-05-01 09:40:51'),
(234, 'App\\Models\\Menu', 145, '38c66212-3391-4402-9eac-46a1eb97aaf5', 'menu', 'CHICKEN RISSOTTO', 'CHICKEN-RISSOTTO.jpg', 'image/jpeg', 'public', 'public', 151384, '[]', '[]', '[]', '[]', 204, '2022-05-01 09:49:16', '2022-05-01 09:49:16'),
(235, 'App\\Models\\Menu', 123, '8680fa4b-64a0-48d7-a33f-fa7e7024b03a', 'menu', 'MARTVAN KA PANEER', 'MARTVAN-KA-PANEER.jpg', 'image/jpeg', 'public', 'public', 97006, '[]', '[]', '[]', '[]', 205, '2022-05-01 09:50:41', '2022-05-01 09:50:41'),
(237, 'App\\Models\\Menu', 89, '3280b545-5781-43d1-beb1-beaae13928e6', 'menu', 'ALTIUS NON VEG PLATTER', 'ALTIUS-NON-VEG-PLATTER.jpg', 'image/jpeg', 'public', 'public', 29684, '[]', '[]', '[]', '[]', 207, '2022-05-01 10:05:54', '2022-05-01 10:05:54'),
(238, 'App\\Models\\Menu', 27, '368d60c5-cab1-4c25-9649-f68f7be83fde', 'menu', 'NOODLE BROTH SOUP', 'NOODLE-BROTH-SOUP.jpg', 'image/jpeg', 'public', 'public', 78533, '[]', '[]', '[]', '[]', 208, '2022-05-04 08:52:52', '2022-05-04 08:52:52'),
(239, 'App\\Models\\Menu', 26, '249b0694-7d9e-424d-8afe-05a95a232865', 'menu', 'SPINACH CLEAR SOUP', 'SPINACH-CLEAR-SOUP.jpg', 'image/jpeg', 'public', 'public', 64692, '[]', '[]', '[]', '[]', 209, '2022-05-04 08:54:16', '2022-05-04 08:54:16'),
(240, 'App\\Models\\Menu', 28, '1e105b9f-f910-47e8-8ad6-348ebf01f60e', 'menu', 'VEG TALUMEIN SOUP', 'VEG-TALUMEIN-SOUP.jpg', 'image/jpeg', 'public', 'public', 47539, '[]', '[]', '[]', '[]', 210, '2022-05-04 09:25:47', '2022-05-04 09:25:47'),
(241, 'App\\Models\\Menu', 29, 'c68e07ce-a7eb-4c39-b3c6-2c9fed8d54f6', 'menu', 'CHICKEN TALUMIEN SOUP', 'CHICKEN-TALUMIEN-SOUP.jpg', 'image/jpeg', 'public', 'public', 19682, '[]', '[]', '[]', '[]', 211, '2022-05-04 09:39:05', '2022-05-04 09:39:05'),
(242, 'App\\Models\\Menu', 34, 'cac0d5ee-0596-4435-b478-5c47b711a7b5', 'menu', 'CHICKEN CLEAR SOUP', 'CHICKEN-CLEAR-SOUP.jpg', 'image/jpeg', 'public', 'public', 62356, '[]', '[]', '[]', '[]', 212, '2022-05-04 09:45:43', '2022-05-04 09:45:43'),
(243, 'App\\Models\\Menu', 33, '62cfe700-40a5-4391-b0bd-b57ad5d71d3b', 'menu', 'VEG CLEAR SOUP', 'VEG-CLEAR-SOUP.jpg', 'image/jpeg', 'public', 'public', 24739, '[]', '[]', '[]', '[]', 213, '2022-05-04 09:46:10', '2022-05-04 09:46:10'),
(244, 'App\\Models\\Menu', 42, 'fb2d8217-f4c3-4d20-9b33-41a973c3b282', 'menu', 'RUSSIAN SALAD', 'RUSSIAN-SALAD.jpg', 'image/jpeg', 'public', 'public', 86175, '[]', '[]', '[]', '[]', 214, '2022-05-04 15:10:14', '2022-05-04 15:10:14'),
(245, 'App\\Models\\Menu', 46, '049c84bb-ad70-4458-9bee-d0d32b33ada1', 'menu', 'KURKURI CHIPS', 'KURKURI-CHIPS.jpg', 'image/jpeg', 'public', 'public', 90227, '[]', '[]', '[]', '[]', 215, '2022-05-04 15:11:30', '2022-05-04 15:11:30'),
(246, 'App\\Models\\Menu', 40, 'fb956aa3-caf5-4d7d-8ebd-fbaeaad31613', 'menu', 'CORN JALAPENO CHEESE SALAD', 'CORN-JALAPENO-CHEESE-SALAD.jpg', 'image/jpeg', 'public', 'public', 69079, '[]', '[]', '[]', '[]', 216, '2022-05-04 15:18:35', '2022-05-04 15:18:35'),
(248, 'App\\Models\\Menu', 50, 'f8296b04-26c3-4c91-9a71-b5aa3a3392ea', 'menu', 'KASHMIR KI KALI', 'KASHMIR-KI-KALI.jpg', 'image/jpeg', 'public', 'public', 81861, '[]', '[]', '[]', '[]', 218, '2022-05-04 16:13:07', '2022-05-04 16:13:07'),
(249, 'App\\Models\\Menu', 49, '4e36a66e-6fff-492a-a485-92d9655cb9b9', 'menu', 'NAZAKAT SE BHARE MUSHROOM', 'NAZAKAT-SE-BHARE-MUSHROOM.jpg', 'image/jpeg', 'public', 'public', 64081, '[]', '[]', '[]', '[]', 219, '2022-05-04 16:18:40', '2022-05-04 16:18:40'),
(254, 'App\\Models\\Menu', 65, '72e4f93d-29fc-4d2a-9866-2caddd9e63bb', 'menu', 'PURANI DILLI KA BHATTI KA MURG', 'PURANI-DILLI-KA-BHATTI-KA-MURG.jpg', 'image/jpeg', 'public', 'public', 96615, '[]', '[]', '[]', '[]', 221, '2022-05-07 09:22:03', '2022-05-07 09:22:03'),
(255, 'App\\Models\\Menu', 64, '0c477c1c-9c96-4473-a0e1-d6a896ac7bb5', 'menu', 'CHANDANI MURG MALAI TIKKA', 'CHANDANI-MURG-MALAI-TIKKA.jpg', 'image/jpeg', 'public', 'public', 61269, '[]', '[]', '[]', '[]', 222, '2022-05-07 09:24:27', '2022-05-07 09:24:27'),
(256, 'App\\Models\\Menu', 63, '2ebeaf8c-d8f5-432d-9076-d7c1c3b5a4c0', 'menu', 'rajsthani murg ka soola', 'rajsthani-murg-ka-soola.jpg', 'image/jpeg', 'public', 'public', 67977, '[]', '[]', '[]', '[]', 223, '2022-05-07 09:25:06', '2022-05-07 09:25:06'),
(257, 'App\\Models\\Menu', 54, '6a008cc2-3933-4f4f-a1d8-642fb57f1998', 'menu', 'PANEER DUM ROLLS', 'PANEER-DUM-ROLLS.jpg', 'image/jpeg', 'public', 'public', 38648, '[]', '[]', '[]', '[]', 224, '2022-05-07 13:01:35', '2022-05-07 13:01:35'),
(258, 'App\\Models\\Menu', 62, '384103c0-f04d-43f3-846f-644f4a6a7fa2', 'menu', 'ALTIUS SPECIAL ATTA CHICKEN', 'ALTIUS-SPECIAL-ATTA-CHICKEN.jpg', 'image/jpeg', 'public', 'public', 323776, '[]', '[]', '[]', '[]', 225, '2022-05-07 13:10:44', '2022-05-07 13:10:44'),
(260, 'App\\Models\\Menu', 57, '01de8768-36b1-4863-aec7-abf88cf3de9b', 'menu', 'BHUTTA METHI KI SEEKH', 'BHUTTA-METHI-KI-SEEKH.jpg', 'image/jpeg', 'public', 'public', 64212, '[]', '[]', '[]', '[]', 226, '2022-05-09 12:06:28', '2022-05-09 12:06:28'),
(261, 'App\\Models\\Menu', 55, 'dfee0baa-902f-46f3-a51e-fee978be969f', 'menu', 'TANDOORI MUSHROOM & BABYCORN', 'TANDOORI-MUSHROOM-&-BABYCORN.jpg', 'image/jpeg', 'public', 'public', 63925, '[]', '[]', '[]', '[]', 227, '2022-05-15 11:33:17', '2022-05-15 11:33:17'),
(262, 'App\\Models\\Menu', 71, '64b93235-097b-408f-ac2f-a2349c8bc0e2', 'menu', 'SABUTA CHUZA', 'SABUTA-CHUZA.jpg', 'image/jpeg', 'public', 'public', 89756, '[]', '[]', '[]', '[]', 228, '2022-05-15 11:34:34', '2022-05-15 11:34:34'),
(263, 'App\\Models\\Menu', 70, 'a2c9508a-a354-4af7-aa72-5b5414a6ca2a', 'menu', 'AAM PAPAD CHICKEN WINGS 1', 'AAM-PAPAD-CHICKEN-WINGS-1.jpg', 'image/jpeg', 'public', 'public', 67246, '[]', '[]', '[]', '[]', 229, '2022-05-15 11:35:24', '2022-05-15 11:35:24'),
(264, 'App\\Models\\Menu', 238, '654ea403-c4e0-4a25-a0c2-8a002d599139', 'menu', 'pan fried prawn noodles', 'pan-fried-prawn-noodles.jpg', 'image/jpeg', 'public', 'public', 101304, '[]', '[]', '[]', '[]', 230, '2022-05-16 11:51:14', '2022-05-16 11:51:14'),
(265, 'App\\Models\\Menu', 236, '465e6102-689d-4c72-a7d9-13efefc296da', 'menu', 'pan fried noodles veg', 'pan-fried-noodles-veg.jpg', 'image/jpeg', 'public', 'public', 49272, '[]', '[]', '[]', '[]', 231, '2022-05-16 11:52:05', '2022-05-16 11:52:05'),
(266, 'App\\Models\\Menu', 221, '3837ed27-67c0-479f-b619-f790d18dd2e6', 'menu', 'BAMBOO CHICKEN RICE', 'BAMBOO-CHICKEN-RICE.jpg', 'image/jpeg', 'public', 'public', 94201, '[]', '[]', '[]', '[]', 232, '2022-05-16 11:54:18', '2022-05-16 11:54:18'),
(268, 'App\\Models\\Menu', 76, '7343a5a7-6b5f-4073-9805-2754881d47e8', 'menu', 'gosht ke pasande', 'gosht-ke-pasande.jpg', 'image/jpeg', 'public', 'public', 37621, '[]', '[]', '[]', '[]', 233, '2022-05-16 14:37:07', '2022-05-16 14:37:07'),
(269, 'App\\Models\\Menu', 86, 'de5eccb4-9317-4c0f-8316-126e14cb1c2f', 'menu', 'tandoori prawns', 'tandoori-prawns.jpg', 'image/jpeg', 'public', 'public', 68670, '[]', '[]', '[]', '[]', 234, '2022-05-16 14:43:35', '2022-05-16 14:43:35'),
(271, 'App\\Models\\Menu', 83, '5f46eb12-3f15-4773-b4ce-e2d53f39b6d2', 'menu', 'tulsi mahi tikka', 'tulsi-mahi-tikka.jpg', 'image/jpeg', 'public', 'public', 22196, '[]', '[]', '[]', '[]', 235, '2022-05-16 14:50:28', '2022-05-16 14:50:28'),
(272, 'App\\Models\\Menu', 56, '4a3b6e28-431d-4612-adf6-16f9d0742198', 'menu', 'TANDOORI ALOO', 'TANDOORI-ALOO.jpg', 'image/jpeg', 'public', 'public', 64072, '[]', '[]', '[]', '[]', 236, '2022-05-18 08:09:53', '2022-05-18 08:09:53'),
(273, 'App\\Models\\Menu', 237, '281424dd-e5a7-4410-8219-aad05da85960', 'menu', 'pan fried chicken noodle', 'pan-fried-chicken-noodle.jpeg', 'image/jpeg', 'public', 'public', 56327, '[]', '[]', '[]', '[]', 237, '2022-05-20 08:58:01', '2022-05-20 08:58:01'),
(276, 'App\\Models\\Menu', 184, '924184c8-b7aa-427b-8be0-1aba5db42b9e', 'menu', 'CRISPY VEGETABLE', 'CRISPY-VEGETABLE.jpg', 'image/jpeg', 'public', 'public', 71577, '[]', '[]', '[]', '[]', 238, '2022-05-20 09:57:25', '2022-05-20 09:57:25'),
(277, 'App\\Models\\Menu', 219, 'bf258f1a-70ac-419a-a448-a58d53bda849', 'menu', 'CRISPY VEGETABLE', 'CRISPY-VEGETABLE.jpg', 'image/jpeg', 'public', 'public', 71577, '[]', '[]', '[]', '[]', 239, '2022-05-20 09:58:21', '2022-05-20 09:58:21'),
(278, 'App\\Models\\Menu', 159, 'f6cc9e47-e5a7-40a5-9412-25d56423b7e6', 'menu', 'ROOMALI ROTI', 'ROOMALI-ROTI.jpg', 'image/jpeg', 'public', 'public', 32278, '[]', '[]', '[]', '[]', 240, '2022-05-22 09:24:22', '2022-05-22 09:24:22'),
(280, 'App\\Models\\Menu', 158, '9a89462e-6c0c-400b-9beb-720fe15f17e5', 'menu', 'GARLIC NAAN 1', 'GARLIC-NAAN-1.jpg', 'image/jpeg', 'public', 'public', 40342, '[]', '[]', '[]', '[]', 241, '2022-05-22 09:28:03', '2022-05-22 09:28:03'),
(281, 'App\\Models\\Menu', 157, '97f36783-4d53-4258-b411-0b1363f62d85', 'menu', 'khasta roti', 'khasta-roti.jpg', 'image/jpeg', 'public', 'public', 41872, '[]', '[]', '[]', '[]', 242, '2022-05-22 09:31:20', '2022-05-22 09:31:20'),
(282, 'App\\Models\\Menu', 156, 'b76e772c-0c08-4a0a-a82f-5459ee9482b9', 'menu', 'lachha prantha', 'lachha-prantha.jpg', 'image/jpeg', 'public', 'public', 76068, '[]', '[]', '[]', '[]', 243, '2022-05-22 09:37:42', '2022-05-22 09:37:42'),
(283, 'App\\Models\\Menu', 155, '5dca3b27-643e-4452-99f4-187b1156778c', 'menu', 'missi roti', 'missi-roti.jpg', 'image/jpeg', 'public', 'public', 82364, '[]', '[]', '[]', '[]', 244, '2022-05-22 09:39:14', '2022-05-22 09:39:14'),
(285, 'App\\Models\\Menu', 151, '17644362-5468-4179-b26d-1b14b2d166ca', 'menu', 'tandoori butter roti', 'tandoori-butter-roti.jpg', 'image/jpeg', 'public', 'public', 42483, '[]', '[]', '[]', '[]', 246, '2022-05-22 09:41:45', '2022-05-22 09:41:45'),
(286, 'App\\Models\\Menu', 153, '63adbb1b-2ac6-4e98-baa8-12bc54bb7277', 'menu', 'plain naan', 'plain-naan.jpg', 'image/jpeg', 'public', 'public', 29140, '[]', '[]', '[]', '[]', 247, '2022-05-22 09:46:50', '2022-05-22 09:46:50'),
(287, 'App\\Models\\Menu', 152, '1f277de2-97c4-4c8e-b413-9af4118236d1', 'menu', 'choori prantha', 'choori-prantha.jpg', 'image/jpeg', 'public', 'public', 79671, '[]', '[]', '[]', '[]', 248, '2022-05-22 09:47:35', '2022-05-22 09:47:35'),
(288, 'App\\Models\\Menu', 36, '9f6acd7a-af57-4c15-b513-a8349fb52559', 'menu', 'garden green salad', 'garden-green-salad.jpg', 'image/jpeg', 'public', 'public', 74017, '[]', '[]', '[]', '[]', 249, '2022-05-22 13:42:28', '2022-05-22 13:42:28'),
(289, 'App\\Models\\Menu', 197, '7b692339-ad97-4af0-97a8-5839eef8e1c8', 'menu', 'SLICE CHICKEN HOT GARLIC SAUCE 1', 'SLICE-CHICKEN-HOT-GARLIC-SAUCE-1.jpg', 'image/jpeg', 'public', 'public', 451062, '[]', '[]', '[]', '[]', 250, '2022-05-23 08:41:22', '2022-05-23 08:41:22'),
(290, 'App\\Models\\Menu', 177, '565d33a1-ba5a-4cb7-b933-dc185d4725cb', 'menu', 'SANGHAI VEGETABLE', 'SANGHAI-VEGETABLE.jpg', 'image/jpeg', 'public', 'public', 52218, '[]', '[]', '[]', '[]', 251, '2022-05-23 09:37:20', '2022-05-23 09:37:20'),
(291, 'App\\Models\\Menu', 150, 'ff73701e-2f31-44d2-a560-239d21cc6bf5', 'menu', 'tandoori butter roti', 'tandoori-butter-roti.jpg', 'image/jpeg', 'public', 'public', 42483, '[]', '[]', '[]', '[]', 252, '2022-05-24 11:39:12', '2022-05-24 11:39:12');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(292, 'App\\Models\\Menu', 90, '6dde37a1-992a-48cd-bb51-f949693b35a0', 'menu', 'ALTIUS NON VEG PLATTER FULL', 'ALTIUS-NON-VEG-PLATTER-FULL.jpg', 'image/jpeg', 'public', 'public', 47507, '[]', '[]', '[]', '[]', 253, '2022-05-24 11:53:07', '2022-05-24 11:53:07'),
(293, 'App\\Models\\Menu', 69, 'a216d60f-4437-4ab7-9fb9-69d2a564e7bd', 'menu', 'PREETY LEGS AFGANI TANGRI 1', 'PREETY-LEGS-AFGANI-TANGRI-1.jpg', 'image/jpeg', 'public', 'public', 41188, '[]', '[]', '[]', '[]', 254, '2022-05-24 11:53:49', '2022-05-24 11:53:49'),
(294, 'App\\Models\\Menu', 82, '3233a913-e48f-436b-9463-716130fbbe6f', 'menu', 'SAHIBI MAHI TIKKA', 'SAHIBI-MAHI-TIKKA.jpg', 'image/jpeg', 'public', 'public', 19236, '[]', '[]', '[]', '[]', 255, '2022-05-24 11:57:04', '2022-05-24 11:57:04'),
(295, 'App\\Models\\Menu', 61, 'bb750074-78a5-4ff3-a5ae-760f29640fcb', 'menu', 'ALTIUS SUBZ PLATTER HALF', 'ALTIUS-SUBZ-PLATTER-HALF.jpg', 'image/jpeg', 'public', 'public', 85929, '[]', '[]', '[]', '[]', 256, '2022-05-24 12:13:10', '2022-05-24 12:13:10'),
(297, 'App\\Models\\Menu', 251, '53549444-e517-4ae6-8d96-ff8010e2cfa3', 'menu', 'coconutmilk_pulao', 'coconutmilk_pulao.jpg', 'image/jpeg', 'public', 'public', 482938, '[]', '[]', '[]', '[]', 258, '2022-11-11 12:23:23', '2022-11-11 12:23:23'),
(306, 'App\\Models\\Menu', 250, 'e648be4c-7eaa-4df7-88c7-3c11cfc68a62', 'menu', '1638351540.AP0015', '1638351540.AP0015.jpeg', 'image/jpeg', 'public', 'public', 193585, '[]', '[]', '[]', '[]', 259, '2022-11-23 07:57:56', '2022-11-23 07:57:56'),
(310, 'App\\Models\\Menu', 248, 'cf8d4953-7be4-4b53-b84e-e06edb1fbbb5', 'menu', 'slice fish', 'slice-fish.jpg', 'image/jpeg', 'public', 'public', 103225, '[]', '[]', '[]', '[]', 261, '2023-01-18 11:04:25', '2023-01-18 11:04:25'),
(316, 'App\\Models\\Menu', 249, '37763f34-3667-4560-b81d-c3a6d55f2bb9', 'menu', 'kali mirchi', 'kali-mirchi.jpg', 'image/jpeg', 'public', 'public', 124804, '[]', '[]', '[]', '[]', 265, '2023-01-19 12:49:24', '2023-01-19 12:49:24'),
(323, 'App\\Models\\ContentManagement', 2, '19ea9d75-133a-4432-90c7-3f2eb0a74a08', 'contents', 'bg', 'bg.jpg', 'image/jpeg', 'public', 'public', 394762, '[]', '[]', '[]', '[]', 267, '2023-01-23 12:50:23', '2023-01-23 12:50:23'),
(324, 'App\\Models\\ContentManagement', 3, '25ff9af3-51aa-47b1-a064-2b8c87beb787', 'contents', 'food', 'food.jpg', 'image/jpeg', 'public', 'public', 45206, '[]', '[]', '[]', '[]', 268, '2023-01-23 14:48:54', '2023-01-23 14:48:54'),
(328, 'App\\Models\\ContentManagement', 1, 'ce9fa506-7ef4-453c-ac0e-9c544c39bf2d', 'contents', 'banquet', 'banquet.JPG', 'image/jpeg', 'public', 'public', 365645, '[]', '[]', '[]', '[]', 270, '2023-01-23 19:44:34', '2023-01-23 19:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuisine_id` int(11) DEFAULT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `menu_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` int(11) DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `user_id`, `business_id`, `category_id`, `name`, `cuisine_id`, `subcategory_id`, `menu_type`, `image`, `description`, `price`, `gst`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(4, 5, NULL, 27, 'CREAM OF TOMATO', 18, NULL, 'Veg', '1676355635.jpg', 'Slow simmered sweet tomato,topped with savory swiss cheese and granished with croutons.', '265', NULL, 'cream-of-tomato', 1, '2023-02-14 11:50:35', '2023-02-14 12:36:50'),
(5, 5, NULL, 27, 'CLEAR SPINACH', 18, NULL, 'Veg', '1676355769.jpg', 'Slow simmered sweet spinach,topped with savory swiss cheese and granished with croutons.', '260', NULL, 'clear-spinach', 1, '2023-02-14 11:52:49', '2023-02-14 11:52:49'),
(6, 5, NULL, 27, 'NOODLES BROTH', 18, NULL, 'Veg', '1676355937.jpg', 'Slow simmered sweet noodles,topped with savory swiss cheese and granished with croutons.', '215', NULL, 'noodles-broth', 1, '2023-02-14 11:55:37', '2023-02-14 11:55:37'),
(7, 5, NULL, 27, 'WONTON NOODLE CLEAR', 18, NULL, 'Non-veg', '1676356110.jpg', 'Slow simmered sweet wonton noodle,topped with savory swiss cheese and granished with croutons.', '265', NULL, 'wonton-noodle-clear', 1, '2023-02-14 11:58:30', '2023-02-14 11:58:30'),
(8, 5, NULL, 27, 'LEMON CORRIENDER VEG', 18, NULL, 'Veg', '1676356210.jpg', 'Slow simmered lemon corriender,topped with savory swiss cheese and granished with croutons.', '235', NULL, 'lemon-corriender-veg', 1, '2023-02-14 12:00:10', '2023-02-14 12:32:07'),
(9, 5, NULL, 27, 'SWEET CORN VEG', 18, NULL, 'Veg', '1676356317.jpg', 'Slow simmered sweet corn \r\nwith savory swiss cheese and granished with croutons.', '235', NULL, 'sweet-corn-veg', 1, '2023-02-14 12:01:57', '2023-02-14 12:28:11'),
(10, 5, NULL, 27, 'HOT N SOUR NON VEG', 18, NULL, 'Non-veg', '1676356432.jpg', 'Slow simmered hot n sour swiss cheese and granished with croutons.', '215', NULL, 'hot-n-sour-non-veg', 1, '2023-02-14 12:03:52', '2023-02-14 12:25:32'),
(11, 5, NULL, 27, 'MANCHOW VEG', 18, NULL, 'Veg', '1676356598.jpg', 'Slow simmered manchow soup,topped with savory swiss cheese and granished with croutons.', '205', NULL, 'manchow-veg', 1, '2023-02-14 12:06:38', '2023-02-14 12:24:08'),
(12, 5, NULL, 27, 'TALUMEIN', 18, NULL, 'Non-veg', '1676356750.jpg', 'Slow simmered talumein,topped with savory swiss cheese and granished with croutons.', '235', NULL, 'talumein', 1, '2023-02-14 12:09:10', '2023-02-14 12:09:10'),
(13, 5, NULL, 27, 'GOLDEN GARLIC VEG', 18, NULL, 'Veg', '1676357008.jpg', 'Slow simmered golden garlic,topped with savory swiss cheese and granished with croutons.', '225', NULL, 'golden-garlic-veg', 1, '2023-02-14 12:13:28', '2023-02-14 12:22:31'),
(14, 5, NULL, 27, 'CLEAR NONVEG', 18, NULL, 'Non-veg', '1676357141.jpg', 'Slow simmered ,topped with savory swiss cheese and granished with croutons.', '205', NULL, 'clear-nonveg', 1, '2023-02-14 12:15:41', '2023-02-14 12:20:39'),
(16, 5, NULL, 27, 'CLEAR VEG', 18, NULL, 'Veg', '1676357509.jpg', 'Slow simmered clear veg,topped with savory swiss cheese and granished with croutons.', '195', NULL, 'clear-veg', 1, '2023-02-14 12:21:49', '2023-02-14 12:21:49'),
(17, 5, NULL, 27, 'GOLDEN GARLIC', 18, NULL, 'Non-veg', '1676359175.jpg', 'Slow simmered golden garlic,topped with savory swiss cheese and granished with croutons.', '245', NULL, 'golden-garlic', 1, '2023-02-14 12:23:45', '2023-02-14 12:49:35'),
(18, 5, NULL, 27, 'MANCHOW NON VEG', 18, NULL, 'Non-veg', '1676357701.jpg', 'Slow simmered manchow ,topped with savory swiss cheese and granished with croutons.', '235', NULL, 'manchow-non-veg', 1, '2023-02-14 12:25:01', '2023-02-14 12:25:01'),
(19, 5, NULL, 27, 'HOT N SOUR VEG', 18, NULL, 'Veg', '1676357863.jpg', 'Slow simmered hot n sour veg,topped with savory swiss cheese and granished with croutons.', '195', NULL, 'hot-n-sour-veg', 1, '2023-02-14 12:27:43', '2023-02-14 12:29:52'),
(20, 5, NULL, 27, 'SWEET CORN NON VEG', 18, NULL, 'Non-veg', '1676357955.jpg', 'Slow simmered sweet corn ,topped with savory swiss cheese and granished with croutons.', '285', NULL, 'sweet-corn-non-veg', 1, '2023-02-14 12:29:15', '2023-02-14 12:29:15'),
(21, 5, NULL, 27, 'LEMON CORRIENDER NON VEG', 18, NULL, 'Non-veg', '1676358341.jpg', 'Slow simmered lemon corriender,topped with savory swiss cheese and granished with croutons.', '275', NULL, 'lemon-corriender-non-veg', 1, '2023-02-14 12:35:41', '2023-02-14 12:35:41'),
(22, 5, NULL, 27, 'CREAM OF MUSHROOM', 18, NULL, 'Veg', '1676358712.jpg', 'Slow simmered cream of mushroom,topped with savory swiss cheese and granished with croutons.', '265', NULL, 'cream-of-mushroom', 1, '2023-02-14 12:38:26', '2023-02-14 12:41:52'),
(23, 5, NULL, 32, 'ALTIUS KA ATTA CHICKEN', 18, NULL, 'Non-veg', '1676359612.jpg', 'Slow simmered altius ka atta chicken,topped with savory swiss cheese and granished with croutons.', '1199', NULL, 'altius-ka-atta-chicken', 1, '2023-02-14 12:56:52', '2023-02-14 12:56:52'),
(24, 5, NULL, 32, 'TANDOORI MURG HALF', 18, NULL, 'Non-veg', '1676359796.jpg', 'Slow simmered tandoori murg and granished with croutons.', '575', NULL, 'tandoori-murg-half', 1, '2023-02-14 12:59:56', '2023-02-14 12:59:56'),
(25, 5, NULL, 32, 'TANDOORI MURG FULL', 18, NULL, 'Non-veg', '1676360260.jpg', 'Slow simmered tandoori murg and granished with croutons.', '885', NULL, 'tandoori-murg-full', 1, '2023-02-14 13:07:40', '2023-02-14 13:07:40'),
(26, 5, NULL, 32, 'RAJASTHANI MURG KA SHOOLA', 18, NULL, 'Non-veg', '1676360376.jpg', 'Slow simmered rajasthani murg and granished with croutons.', '645', NULL, 'rajasthani-murg-ka-shoola', 1, '2023-02-14 13:09:36', '2023-02-14 13:12:24'),
(27, 5, NULL, 32, 'CHANDANI MURG MALAI', 18, NULL, 'Non-veg', '1676360480.jpg', 'Slow simmered chandani  murg and granished with croutons.', '625', NULL, 'chandani-murg-malai', 1, '2023-02-14 13:11:20', '2023-02-14 13:11:55'),
(28, 5, NULL, 32, 'BHATTI KA MURG', 18, NULL, 'Non-veg', '1676360667.jpg', 'Slow simmered bhatti ka murg and garnished with croutons.', '625', NULL, 'bhatti-ka-murg', 1, '2023-02-14 13:14:27', '2023-02-14 14:46:40'),
(29, 5, NULL, 32, 'KHATTA MURG', 18, NULL, 'Non-veg', '1676360784.jpg', 'Slow simmered khatta murg and granished with croutons.', '625', NULL, 'khatta-murg', 1, '2023-02-14 13:16:24', '2023-02-14 13:16:24'),
(30, 5, NULL, 31, 'MURG TIKKA PATIALA', 18, NULL, 'Non-veg', '1676360899.jpg', 'Slow simmered murg tikka patiala and granished with croutons.', '625', NULL, 'murg-tikka-patiala', 1, '2023-02-14 13:18:19', '2023-02-14 13:18:19'),
(31, 5, NULL, 32, 'AFGANI TANGRI', 18, NULL, 'Non-veg', '1676366609.jpg', 'Slow simmered afgani tangri and granished with croutons.', '675', NULL, 'afgani-tangri', 1, '2023-02-14 14:53:29', '2023-03-11 18:55:12'),
(32, 5, NULL, 32, 'CHICKEN WINGS', 18, NULL, 'Non-veg', '1676366681.jpg', 'Slow simmered chicken wings and granished with croutons.', '595', NULL, 'chicken-wings', 1, '2023-02-14 14:54:41', '2023-02-14 14:54:41'),
(33, 5, NULL, 32, 'SHAH JAHAN KI MAN PASAND SEEKH', 18, NULL, 'Non-veg', '1676366826.jpg', 'Slow simmered shah jahan ki man pasand seekh with croutons.', '675', NULL, 'shah-jahan-ki-man-pasand-seekh', 1, '2023-02-14 14:57:06', '2023-02-14 14:57:06'),
(34, 5, NULL, 32, 'THE CLASSIC GALOUTI', 18, NULL, 'Veg', '1676366967.jpg', 'Slow simmered the classic galouti croutons.', '645', NULL, 'the-classic-galouti', 1, '2023-02-14 14:59:27', '2023-02-14 14:59:27'),
(35, 5, NULL, 32, 'PATHAR KA GHOST', 18, NULL, 'Non-veg', '1676367144.jpg', 'Slow simmered pathar ka ghost with croutons.', '645', NULL, 'pathar-ka-ghost', 1, '2023-02-14 15:02:24', '2023-02-14 15:02:24'),
(36, 5, NULL, 32, 'BALUCHI BOTI KEBAB', 18, NULL, 'Veg', '1676367228.jpg', 'Slow simmered baluchi and granished with croutons.', '665', NULL, 'baluchi-boti-kebab', 1, '2023-02-14 15:03:48', '2023-02-14 15:03:48'),
(37, 5, NULL, 32, 'GOSHT KE PASANDE', 18, NULL, 'Non-veg', '1676367380.jpg', 'Slow simmered gosht ke pasande and granished with croutons.', '645', NULL, 'gosht-ke-pasande', 1, '2023-02-14 15:06:20', '2023-02-14 15:06:20'),
(38, 5, NULL, 32, 'LAWRENCE ROAD KI TIKKI', 18, NULL, 'Non-veg', '1676367567.jpg', 'Slow simmered lawrence and granished with croutons.', '645', NULL, 'lawrence-road-ki-tikki', 1, '2023-02-14 15:09:27', '2023-02-14 15:09:27'),
(39, 5, NULL, 32, 'LAL BARRAH', 18, NULL, 'Non-veg', '1676367750.jpg', 'Slow simmered lal barrah and granished with croutons.', '645', NULL, 'lal-barrah', 1, '2023-02-14 15:12:30', '2023-02-14 15:12:30'),
(40, 5, NULL, 32, 'FISH LAL MASALA', 18, NULL, 'Non-veg', '1676367877.jpg', 'Slow simmered fish lal masala and granished with croutons.', '350', NULL, 'fish-lal-masala', 1, '2023-02-14 15:14:37', '2023-02-14 15:14:37'),
(41, 5, NULL, 32, 'SINGHARA', 18, NULL, 'Veg', '1676368130.jpg', 'Slow simmered singhara and granished with croutons.', '775', NULL, 'singhara', 1, '2023-02-14 15:18:50', '2023-02-14 15:18:50'),
(42, 5, NULL, 32, 'SOLE', 18, NULL, 'Non-veg', '1676368234.jpg', 'Slow simmered Sole and granished with croutons.', '1065', NULL, 'sole', 1, '2023-02-14 15:20:34', '2023-02-14 15:20:34'),
(43, 5, NULL, 32, 'TULSI MAHI TIKKA', 18, NULL, 'Non-veg', '1676368322.jpg', 'Slow simmered tulsi mahi tikka and granished with croutons.', '650', NULL, 'tulsi-mahi-tikka', 1, '2023-02-14 15:22:02', '2023-02-14 15:22:02'),
(44, 5, NULL, 32, 'KALI MIRCH MAHI TIKKA', 18, NULL, 'Non-veg', '1676368455.jpg', 'Slow simmered kali mirch mahi tikka and granished with croutons.', '635', NULL, 'kali-mirch-mahi-tikka', 1, '2023-02-14 15:24:15', '2023-02-14 15:24:15'),
(45, 5, NULL, 32, 'AMRITSARI FISH', 18, NULL, 'Non-veg', '1676368569.jpg', 'Slow simmered amritsari and granished with croutons.', '467', NULL, 'amritsari-fish', 1, '2023-02-14 15:26:09', '2023-02-14 15:26:09'),
(46, 5, NULL, 32, 'TANDOORI PRAWNS', 18, NULL, 'Non-veg', '1676368631.jpg', 'Slow simmered tandoori prawnsand granished with croutons.', '1095', NULL, 'tandoori-prawns', 1, '2023-02-14 15:27:11', '2023-02-14 15:27:11'),
(47, 5, NULL, 32, 'SARABI JHINGA', 18, NULL, 'Non-veg', '1676368818.jpg', 'Slow simmered sarabi jhinga and granished with croutons.', '1195', NULL, 'sarabi-jhinga', 1, '2023-02-14 15:30:18', '2023-02-14 15:30:18'),
(48, 5, NULL, 32, 'JHINGA BALAAIKA', 18, NULL, 'Non-veg', '1676368917.jpg', 'Slow simmered jhinga balaaika and granished with croutons.', '1165', NULL, 'jhinga-balaaika', 1, '2023-02-14 15:31:57', '2023-02-14 15:31:57'),
(49, 5, NULL, 32, 'ALTIUS NON VEG PLATTER HALF', 18, NULL, 'Non-veg', '1676369013.jpg', 'Slow simmered altius non veg and granished with croutons.', '1045', NULL, 'altius-non-veg-platter-half', 1, '2023-02-14 15:33:33', '2023-02-14 15:33:57'),
(50, 5, NULL, 32, 'ALTIUS NON VEG PLATTER FULL', 18, NULL, 'Non-veg', '1676369092.jpg', 'Slow simmered altius non veg and granished with croutons.', '1750', NULL, 'altius-non-veg-platter-full', 1, '2023-02-14 15:34:52', '2023-02-14 15:34:52'),
(51, 5, NULL, 32, 'BHARWA GOLE GAPPA', 18, NULL, 'Non-veg', '1676369164.jpg', 'Slow simmered bharwa gole  and granished with croutons.', '285', NULL, 'bharwa-gole-gappa', 1, '2023-02-14 15:36:04', '2023-02-14 15:36:04'),
(52, 5, NULL, 32, 'GOVERNOR SAHIB  KI PASAND', 18, NULL, 'Non-veg', '1676369356.jpg', 'Slow simmered governor sahib ki pasand and granished with croutons.', '345', NULL, 'governor-sahib--ki-pasand', 1, '2023-02-14 15:39:16', '2023-02-14 15:39:16'),
(53, 5, NULL, 32, 'MEMSAHEB KA KARARA GUSSA', 18, NULL, 'Non-veg', '1676369500.jpg', 'Slow simmered memsaheb ka karara and granished with croutons.', '325', NULL, 'memsaheb-ka-karara-gussa', 1, '2023-02-14 15:41:40', '2023-02-14 15:41:40'),
(54, 5, NULL, 32, 'GENERAL DAYER KA FARMAN', 19, NULL, 'Non-veg', '1676369675.jpg', 'Slow simmered general dayer ka farman and granished with croutons.', '535', NULL, 'general-dayer-ka-farman', 1, '2023-02-14 15:44:35', '2023-02-14 15:44:35'),
(55, 5, NULL, 32, 'ROYAL VELVET PANEER', 18, NULL, 'Veg', '1676369773.jpg', 'Slow simmered Royal velvet paneer and granished with croutons.', '535', NULL, 'royal-velvet-paneer', 1, '2023-02-14 15:46:13', '2023-02-14 15:46:13'),
(56, 5, NULL, 32, 'RAJASTHANI PANEER KA SHOOLA', 18, NULL, 'Veg', '1676369857.jpg', 'Slow simmered Rajasthani paneer  with croutons.', '535', NULL, 'rajasthani-paneer-ka-shoola', 1, '2023-02-14 15:47:37', '2023-02-14 15:47:37'),
(57, 5, NULL, 32, 'MAKHMALI SEEKH', 18, NULL, 'Veg', '1676369963.jpg', 'Slow simmered makhmali seekh and granished with croutons.', '495', NULL, 'makhmali-seekh', 1, '2023-02-14 15:49:23', '2023-02-14 15:49:23'),
(58, 5, NULL, 32, 'ZAMINDARI DAHI KE KHATE ALOO', 18, NULL, 'Veg', '1676370043.jpg', 'Slow simmered Zamindari and granished with croutons.', '485', NULL, 'zamindari-dahi-ke-khate-aloo', 1, '2023-02-14 15:50:43', '2023-02-14 15:50:43'),
(59, 5, NULL, 32, 'VEG TANDOORI CHAT', 18, NULL, 'Veg', '1676370138.jpg', 'Slow simmered veg tandoori chat and granished with croutons.', '525', NULL, 'veg-tandoori-chat', 1, '2023-02-14 15:52:18', '2023-02-14 15:52:18'),
(60, 5, NULL, 32, 'NAZAKAT SE BHARE MUSHROOM', 18, NULL, 'Veg', '1676370205.jpg', 'Slow simmered nazakat se bhare mushroom and granished with croutons.', '565', NULL, 'nazakat-se-bhare-mushroom', 1, '2023-02-14 15:53:25', '2023-02-14 15:53:25'),
(61, 5, NULL, 32, 'KASHMIR KI KALI', 18, NULL, 'Veg', '1676370359.jpg', 'Slow simmered kashmir ki kaliand granished with croutons.', '565', NULL, 'kashmir-ki-kali', 1, '2023-02-14 15:55:59', '2023-02-14 15:55:59'),
(62, 5, NULL, 32, 'MILJUL KURKURI', 18, NULL, 'Veg', '1676370455.jpg', 'Slow simmered miljul kurkuri and granished with croutons.', '495', NULL, 'miljul-kurkuri', 1, '2023-02-14 15:57:35', '2023-02-14 15:57:35'),
(63, 5, NULL, 32, 'MUSHROOM KI GULAUTI', 18, NULL, 'Veg', '1676370585.jpg', 'Slow simmered mushroom ki gulauti and croutons.', '575', NULL, 'mushroom-ki-gulauti', 1, '2023-02-14 15:59:45', '2023-02-14 15:59:45'),
(64, 5, NULL, 32, 'CHOWNKH KI TIKKI', 18, NULL, 'Veg', '1676370688.jpg', 'Slow simmered chownkh and granished with croutons.', '565', NULL, 'chownkh-ki-tikki', 1, '2023-02-14 16:01:28', '2023-02-14 16:01:28'),
(65, 5, NULL, 32, 'PANEER DUM ROLL', 18, NULL, 'Veg', '1676370851.jpg', 'Slow simmered paneer dum roll and granished with croutons.', '5335', NULL, 'paneer-dum-roll', 1, '2023-02-14 16:04:11', '2023-02-14 16:04:11'),
(66, 5, NULL, 32, 'TANDOORI MUSHROOM & BABY CORN', 18, NULL, 'Veg', '1676371009.jpg', 'Slow simmered tandoori mushroom and granished with croutons.', '575', NULL, 'tandoori-mushroom-&-baby-corn', 1, '2023-02-14 16:06:49', '2023-02-14 16:06:49'),
(67, 5, NULL, 32, 'ATTISH E ALOO', 18, NULL, 'Veg', '1676371115.jpg', 'Slow simmered attish e aloo and granished with croutons.', '525', NULL, 'attish-e-aloo', 1, '2023-02-14 16:08:35', '2023-02-14 16:08:35'),
(68, 5, NULL, 32, 'BHUTTA MEATHI KI SEEKH', 18, NULL, 'Veg', '1676371184.jpg', 'Slow simmered bhutta meathi ki seekh and granished with croutons.', '525', NULL, 'bhutta-meathi-ki-seekh', 1, '2023-02-14 16:09:44', '2023-02-14 16:09:44'),
(69, 5, NULL, 32, 'DAHI KE KEBAB', 18, NULL, 'Veg', '1676371238.jpg', 'Slow simmered dahi ke kebab and granished with croutons.', '545', NULL, 'dahi-ke-kebab', 1, '2023-02-14 16:10:38', '2023-02-14 16:10:38'),
(70, 5, NULL, 32, 'HARA BHARA KEBAB', 18, NULL, 'Veg', '1676371282.jpg', 'Slow simmered hara bhara kebab and granished with croutons.', '525', NULL, 'hara-bhara-kebab', 1, '2023-02-14 16:11:22', '2023-02-14 16:11:58'),
(71, 5, NULL, 32, 'ALTIUS SABZ PLATTER HALF', 18, NULL, 'Veg', '1676372552.jpg', 'Slow simmered altius sabz and granished with croutons.', '945', NULL, 'altius-sabz-platter-half', 1, '2023-02-14 16:32:32', '2023-02-14 16:32:32'),
(72, 5, NULL, 24, 'MURG SHAHI PATIALA', 18, NULL, 'Non-veg', '1676372746.jpg', 'Slow simmered murg shahi and granished with croutons.', '585', NULL, 'murg-shahi-patiala', 1, '2023-02-14 16:35:46', '2023-02-14 16:35:46'),
(73, 5, NULL, 32, 'ALTIUS SABZ PLATTER FULL', 18, NULL, 'Veg', '1676372851.jpg', 'Slow simmered altius sabz and granished with croutons.', '1045', NULL, 'altius-sabz-platter-full', 1, '2023-02-14 16:37:31', '2023-02-14 16:37:31'),
(74, 5, NULL, 24, 'BUTTER CHICKEN', 18, NULL, 'Non-veg', '1676372966.jpg', 'Slow simmered butter chicken and granished with croutons.', '625', NULL, 'butter-chicken', 1, '2023-02-14 16:39:26', '2023-02-14 16:39:26'),
(75, 5, NULL, 24, 'KADHAI CHICKEN', 18, NULL, 'Non-veg', '1676373070.jpg', 'Slow simmered kadhai chicken and granished with croutons.', '625', NULL, 'kadhai-chicken', 1, '2023-02-14 16:41:10', '2023-02-14 16:41:10'),
(76, 5, NULL, 24, 'ALTIUS KA MURG', 18, NULL, 'Non-veg', '1676373243.jpg', 'Slow simmered altius ka murg and granished with croutons.', '585', NULL, 'altius-ka-murg', 1, '2023-02-14 16:44:03', '2023-02-14 16:44:03'),
(77, 5, NULL, 32, 'MURG AWADHI', 18, NULL, 'Non-veg', '1676373300.jpg', 'Slow simmered murg awadhi and granished with croutons.', '625', NULL, 'murg-awadhi', 1, '2023-02-14 16:45:00', '2023-02-14 16:45:00'),
(78, 5, NULL, 24, 'SPINACH CHICKEN PUNJABI STYLE', 18, NULL, 'Non-veg', '1676373420.jpg', 'Slow simmered spinch chicken and granished with croutons.', '585', NULL, 'spinach-chicken-punjabi-style', 1, '2023-02-14 16:47:00', '2023-02-14 16:47:00'),
(79, 5, NULL, 24, 'MURG MUMTAAZ', 18, NULL, 'Non-veg', '1676373524.jpg', 'Slow simmered murg mumtaaz and granished with croutons.', '625', NULL, 'murg-mumtaaz', 1, '2023-02-14 16:48:44', '2023-02-14 16:48:44'),
(80, 5, NULL, 24, 'MARTABAN KA MURG', 18, NULL, 'Non-veg', '1676373599.jpg', 'Slow simmered martaban ka murg  and granished with croutons.', '625', NULL, 'martaban-ka-murg', 1, '2023-02-14 16:49:59', '2023-02-14 16:49:59'),
(81, 5, NULL, 24, 'MAKHMALI MURG TIKKA MASALA', 18, NULL, 'Non-veg', '1676373692.jpg', 'Slow simmered makhmali murg and granished with croutons.', '625', NULL, 'makhmali-murg-tikka-masala', 1, '2023-02-14 16:51:32', '2023-02-14 16:51:32'),
(82, 5, NULL, 24, 'PATIALA HANDI MUTTON', 18, NULL, 'Non-veg', '1676373806.jpg', 'Slow simmered patiala handi mutton and granished with croutons.', '675', NULL, 'patiala-handi-mutton', 1, '2023-02-14 16:53:26', '2023-02-14 16:53:26'),
(83, 5, NULL, 24, 'MUTTON RARRA MASALA', 18, NULL, 'Non-veg', '1676438574.jpg', 'Slow simmered  mutton and granished with croutons.', '695', NULL, 'mutton-rarra-masala', 1, '2023-02-15 10:52:54', '2023-02-15 10:53:21'),
(84, 5, NULL, 24, 'MUTTON ROGAN JOSH', 18, NULL, 'Non-veg', '1676438864.jpg', 'Slow simmered  mutton and granished with croutons.', '695', NULL, 'mutton-rogan-josh', 1, '2023-02-15 10:57:44', '2023-02-15 10:57:44'),
(85, 5, NULL, 24, 'LAL MAAS', 18, NULL, 'Non-veg', '1676439010.jpg', 'Slow simmered lal maas and granished with croutons.', '695', NULL, 'lal-maas', 1, '2023-02-15 11:00:10', '2023-02-15 11:00:10'),
(86, 5, NULL, 24, 'KEEMA HARI MIRCH DO PYAAZA', 18, NULL, 'Non-veg', '1676439067.jpg', 'Slow simmered keema hari mirchi  and granished with croutons.', '695', NULL, 'keema-hari-mirch-do-pyaaza', 1, '2023-02-15 11:01:07', '2023-02-15 11:01:07'),
(87, 5, NULL, 24, 'FISH TAWA MASALA  BASA', 18, NULL, 'Non-veg', '1676439135.jpg', 'Slow fish tawa masala and granished with croutons.', '695', NULL, 'fish-tawa-masala--basa', 1, '2023-02-15 11:02:15', '2023-02-15 11:02:15'),
(88, 5, NULL, 24, 'MACCHI MALAI METHI', 18, NULL, 'Non-veg', '1676439509.jpg', 'Slow simmered macchi malai methi and granished with croutons.', '658', NULL, 'macchi-malai-methi', 1, '2023-02-15 11:08:29', '2023-02-15 11:08:29'),
(89, 5, NULL, 24, 'JHINGA RARRA MASALA', 18, NULL, 'Non-veg', '1676439669.jpg', 'Slow simmered jhinga rarra masala and granished with croutons.', '1094', NULL, 'jhinga-rarra-masala', 1, '2023-02-15 11:11:09', '2023-02-15 11:11:09'),
(90, 5, NULL, 24, 'PRAWN CURRY', 18, NULL, 'Non-veg', '1676439800.jpg', 'Slow simmered Prawn curry and granished with croutons.', '1095', NULL, 'prawn-curry', 1, '2023-02-15 11:13:20', '2023-02-15 11:13:20'),
(91, 5, NULL, 24, 'EGG AKURI', 18, NULL, 'Non-veg', '1676439868.jpg', 'Slow simmered Egg akuri and granished with croutons.', '375', NULL, 'egg-akuri', 1, '2023-02-15 11:14:28', '2023-02-15 11:14:28'),
(92, 5, NULL, 24, 'EGG CURRY', 18, NULL, 'Non-veg', '1676439966.jpg', 'Slow simmered Egg curry and granished with croutons.', '395', NULL, 'egg-curry', 1, '2023-02-15 11:16:06', '2023-02-15 11:16:06'),
(93, 5, NULL, 24, 'EGG BUTTER MASALA', 18, NULL, 'Non-veg', '1676440025.jpg', 'Slow simmered egg butter  masala and granished with croutons.', '395', NULL, 'egg-butter-masala', 1, '2023-02-15 11:17:05', '2023-02-15 11:17:05'),
(94, 5, NULL, 24, 'HARI PHOOL GOBHI MASALEDAAR', 18, NULL, 'Veg', '1676440118.jpg', 'Slow simmered hari phool gobhi and granished with croutons.', '495', NULL, 'hari-phool-gobhi-masaledaar', 1, '2023-02-15 11:18:38', '2023-02-15 11:18:38'),
(95, 5, NULL, 24, 'PINDI CHANNA', 18, NULL, 'Veg', '1676440171.jpg', 'Slow simmered Pindi channa and granished with croutons.', '475', NULL, 'pindi-channa', 1, '2023-02-15 11:19:31', '2023-02-15 11:19:31'),
(96, 5, NULL, 24, 'BHARTA JALANDHARI', 18, NULL, 'Veg', '1676440227.jpg', 'Slow simmered bharta jalandhari and granished with croutons.', '485', NULL, 'bharta-jalandhari', 1, '2023-02-15 11:20:27', '2023-02-15 11:20:27'),
(97, 5, NULL, 24, 'LOVELY LADY FINGER', 18, NULL, 'Veg', '1676440289.jpg', 'Slow simmered lovely lady finger and granished with croutons.', '525', NULL, 'lovely-lady-finger', 1, '2023-02-15 11:21:29', '2023-02-15 11:21:29'),
(98, 5, NULL, 24, 'BHINDI CHATPATI', 18, NULL, 'Veg', '1676440343.jpg', 'Slow simmered bhindi chatpati and granished with croutons.', '485', NULL, 'bhindi-chatpati', 1, '2023-02-15 11:22:23', '2023-02-15 11:22:23'),
(99, 5, NULL, 24, 'ZEERA ALOO MASALEDAAR', 18, NULL, 'Veg', '1676440445.jpg', 'Slow simmered Zeera aloo and granished with croutons.', '475', NULL, 'zeera-aloo-masaledaar', 1, '2023-02-15 11:24:05', '2023-02-15 11:24:05'),
(100, 5, NULL, 24, 'CHAPPLI MASALA', 18, NULL, 'Veg', '1676440576.jpeg', 'Slow simmeredchappli Masala and granished with croutons.', '525', NULL, 'chappli-masala', 1, '2023-02-15 11:26:16', '2023-02-15 11:26:16'),
(101, 5, NULL, 24, 'LAHORI PANEER TIKKA RARA MASALA', 18, NULL, 'Veg', '1676440642.jpg', 'Slow simmered lahori paneer and granished with croutons.', '565', NULL, 'lahori-paneer-tikka-rara-masala', 1, '2023-02-15 11:27:22', '2023-02-15 11:27:22'),
(102, 5, NULL, 24, 'PANEER MAKHANI MASALA', 18, NULL, 'Veg', '1676440729.jpg', 'Slow simmered paneer makhani masala and granished with croutons.', '565', NULL, 'paneer-makhani-masala', 1, '2023-02-15 11:28:49', '2023-02-15 11:28:49'),
(103, 5, NULL, 24, 'KHUSH RANG PANEER', 18, NULL, 'Veg', '1676440792.jpg', 'Slow simmered Khush rang paneer and granished with croutons.', '585', NULL, 'khush-rang-paneer', 1, '2023-02-15 11:29:52', '2023-02-15 11:29:52'),
(104, 5, NULL, 24, 'PANEER SEEKH MASALA', 18, NULL, 'Veg', '1676440849.jpg', 'Slow simmered paneer seekh masala and granished with croutons.', '565', NULL, 'paneer-seekh-masala', 1, '2023-02-15 11:30:49', '2023-02-15 11:30:49'),
(105, 5, NULL, 24, 'MARTABAN KA PANEER', 18, NULL, 'Veg', '1676440920.jpg', 'Slow simmered martaban ka paneer and granished with croutons.', '565', NULL, 'martaban-ka-paneer', 1, '2023-02-15 11:32:00', '2023-02-15 11:32:00'),
(106, 5, NULL, 24, 'PANEER KASOORI KI BHURJI', 18, NULL, 'Veg', '1676440980.jpg', 'Slow simmered paneer kasoori ki bhurji and granished with croutons.', '545', NULL, 'paneer-kasoori-ki-bhurji', 1, '2023-02-15 11:33:00', '2023-02-15 11:33:00'),
(107, 5, NULL, 24, 'LIPTA MUSHROOM MASALA', 18, NULL, 'Veg', '1676441053.jpg', 'Slow simmered lipta mushroom masala and granished with croutons.', '585', NULL, 'lipta-mushroom-masala', 1, '2023-02-15 11:34:13', '2023-02-15 11:34:13'),
(108, 5, NULL, 24, 'PALAK PANEER', 18, NULL, 'Veg', '1676441114.jpg', 'Slow simmered palak paneer and granished with croutons.', '565', NULL, 'palak-paneer', 1, '2023-02-15 11:35:14', '2023-02-15 11:35:14'),
(109, 5, NULL, 24, 'NARGISI KOFTA', 18, NULL, 'Veg', '1676441178.jpg', 'Slow simmered nargisi kofta and granished with croutons.', '575', NULL, 'nargisi-kofta', 1, '2023-02-15 11:36:18', '2023-02-15 11:36:18'),
(110, 5, NULL, 24, 'EXOTIC VEG CHATPATI', 18, NULL, 'Veg', '1676441279.jpg', 'Slow simmered Exotic veg chapati and granished with croutons.', '565', NULL, 'exotic-veg-chatpati', 1, '2023-02-15 11:37:59', '2023-02-15 11:37:59'),
(111, 5, NULL, 24, 'SAHI PANEER BADAMI', 18, NULL, 'Veg', '1676441389.jpg', 'Slow simmered sahi paneer badami and granished with croutons.', '595', NULL, 'sahi-paneer-badami', 1, '2023-02-15 11:39:49', '2023-02-15 11:39:49'),
(112, 5, NULL, 24, 'ALTIUS KI DAL', 18, NULL, 'Veg', '1676441513.jpg', 'Slow simmered Altius ki Dal and granished with croutons.', '525', NULL, 'altius-ki-dal', 1, '2023-02-15 11:41:53', '2023-02-15 11:41:53'),
(113, 5, NULL, 24, 'KAHANI GHAR GHAR KI', 18, NULL, 'Veg', '1676441557.jpg', 'Slow simmered kahani ghr  and granished with croutons.', '495', NULL, 'kahani-ghar-ghar-ki', 1, '2023-02-15 11:42:37', '2023-02-15 11:42:37'),
(114, 5, NULL, 24, 'DAL PALAK DBL TADKA', 18, NULL, 'Veg', '1676441624.jpg', 'Slow simmered dal palak dbl Tadka and granished with croutons.', '495', NULL, 'dal-palak-dbl-tadka', 1, '2023-02-15 11:43:44', '2023-02-15 11:43:44'),
(115, 5, NULL, 24, 'BOONDI RAITA', 18, NULL, 'Veg', '1676441671.jpg', 'Slow simmered boondi raita and granished with croutons.', '225', NULL, 'boondi-raita', 1, '2023-02-15 11:44:31', '2023-02-15 11:44:31'),
(116, 5, NULL, 24, 'MIX VEG RAITA', 18, NULL, 'Veg', '1676441723.jpg', 'Slow simmered MIX veg raita and granished with croutons.', '245', NULL, 'mix-veg-raita', 1, '2023-02-15 11:45:23', '2023-02-15 11:45:23'),
(117, 5, NULL, 24, 'BURANI RAITA', 18, NULL, 'Veg', '1676441785.jpg', 'Slow simmered burani raita and granished with croutons.', '245', NULL, 'burani-raita', 1, '2023-02-15 11:46:25', '2023-02-15 11:46:25'),
(118, 5, NULL, 24, 'ALOO SEV PAPADI RAITA', 18, NULL, 'Veg', '1676441884.jpg', 'Slow simmered aloo sev papdi raita and granished with croutons.', '245', NULL, 'aloo-sev-papadi-raita', 1, '2023-02-15 11:48:04', '2023-02-15 11:48:04'),
(119, 5, NULL, 24, 'PINEAPPLE RAITA', 18, NULL, 'Veg', '1676441963.jpg', 'Slow simmered pineapple raita and granished with croutons.', '275', NULL, 'pineapple-raita', 1, '2023-02-15 11:49:23', '2023-02-15 11:49:23'),
(120, 5, NULL, 24, 'DAHI BHALLA', 18, NULL, 'Veg', '1676442056.jpg', 'Slow simmeredDahi bhalla and granished with croutons.', '295', NULL, 'dahi-bhalla', 1, '2023-02-15 11:50:56', '2023-02-15 11:50:56'),
(121, 5, NULL, 24, 'STEAM RICE', 18, NULL, 'Veg', '1676442121.jpg', 'Slow simmered steam rice and granished with croutons.', '345', NULL, 'steam-rice', 1, '2023-02-15 11:52:01', '2023-02-15 11:52:01'),
(122, 5, NULL, 24, 'ZEERA RICE', 18, NULL, 'Veg', '1676442173.jpg', 'Slow simmered ZEERA RICE and granished with croutons.', '365', NULL, 'zeera-rice', 1, '2023-02-15 11:52:53', '2023-02-15 11:52:53'),
(123, 5, NULL, 24, 'PEAS PULAO', 18, NULL, 'Veg', '1676442229.jpg', 'Slow simmered peas pulao and granished with croutons.', '385', NULL, 'peas-pulao', 1, '2023-02-15 11:53:49', '2023-02-15 11:53:49'),
(124, 5, NULL, 24, 'CORN METHI PULAO', 18, NULL, 'Veg', '1676442306.jpg', 'Slow simmered corn methi pulao and granished with croutons.', '435', NULL, 'corn-methi-pulao', 1, '2023-02-15 11:55:06', '2023-02-15 11:55:06'),
(125, 5, NULL, 24, 'DAL CHAWAL ACHARI RISOTTO VEG', 18, NULL, 'Veg', '1676442415.jpg', 'Slow simmered Dal chawal acharirisotto and granished with croutons.', '445', NULL, 'dal-chawal-achari-risotto-veg', 1, '2023-02-15 11:56:55', '2023-02-15 11:56:55'),
(126, 5, NULL, 24, 'DAL CHAWAL ACHARI RISOTTO NONVEG', 18, NULL, 'Veg', '1676442516.jpg', 'Slow simmered Dal chawal achari risotto and granished with croutons.', '485', NULL, 'dal-chawal-achari-risotto-nonveg', 1, '2023-02-15 11:58:36', '2023-02-15 11:58:36'),
(127, 5, NULL, 24, 'KEEMA FRIED RICE', 18, NULL, 'Veg', '1676442571.jpg', 'Slow simmered Keema fried rice and granished with croutons.', '745', NULL, 'keema-fried-rice', 1, '2023-02-15 11:59:31', '2023-02-15 11:59:31'),
(128, 5, NULL, 24, 'HYDERABADI BIRYANI VEG', 18, NULL, 'Veg', '1676442680.jpg', 'Slow simmered hyderabadi biriyani and granished with croutons.', '530', NULL, 'hyderabadi-biryani-veg', 1, '2023-02-15 12:01:20', '2023-02-15 12:01:20'),
(129, 5, NULL, 24, 'HYDERABADI MUTTON BIRYANI', 18, NULL, 'Non-veg', '1676442807.jpg', 'Slow simmered  mutton biriyani and granished with croutons.', '685', NULL, 'hyderabadi-mutton-biryani', 1, '2023-02-15 12:03:27', '2023-02-15 12:03:27'),
(130, 5, NULL, 24, 'HYDERABADI BIRYANI CHICKEN', 18, NULL, 'Non-veg', '1676443412.jpg', 'Slow simmered  chicken biriyani and granished with croutons.', '615', NULL, 'hyderabadi-biryani-chicken', 1, '2023-02-15 12:13:32', '2023-02-15 12:14:17'),
(131, 5, NULL, 24, 'TANDOORI ROTI', 18, NULL, 'Veg', '1676443588.jpg', 'Slow simmered  tandoori roti and granished with croutons.', '70', NULL, 'tandoori-roti', 1, '2023-02-15 12:16:28', '2023-02-15 12:16:28'),
(132, 5, NULL, 24, 'BUTTER ROTI', 18, NULL, 'Veg', '1676443720.jpg', 'Slow simmered  Butter roti and granished with croutons.', '75', NULL, 'butter-roti', 1, '2023-02-15 12:18:40', '2023-02-15 12:18:40'),
(133, 5, NULL, 24, 'CHURI PARANTHA', 18, NULL, 'Veg', '1676443812.jpg', 'Slow simmered  churi parantha and granished with croutons.', '145', NULL, 'churi-parantha', 1, '2023-02-15 12:20:12', '2023-02-15 12:20:12'),
(134, 5, NULL, 24, 'PLAIN NAAN', 18, NULL, 'Veg', '1676443881.jpg', 'Slow simmered  plain naan and croutons.', '110', NULL, 'plain-naan', 1, '2023-02-15 12:21:21', '2023-02-15 12:21:21'),
(135, 5, NULL, 24, 'LAL/HARI MIRCH KA PARANTHA', 18, NULL, 'Veg', '1676444034.jpg', 'Slow simmered  lal hari mirch ka parantha with croutons.', '175', NULL, 'lal-hari-mirch-ka-parantha', 1, '2023-02-15 12:23:54', '2023-02-15 12:23:54'),
(136, 5, NULL, 24, 'MISSI ROTI', 18, NULL, 'Veg', '1676444131.jpg', 'Slow simmered  missi roti croutons.', '145', NULL, 'missi-roti', 1, '2023-02-15 12:25:31', '2023-02-15 12:25:31'),
(137, 5, NULL, 24, 'LACHA PARANTHA', 18, NULL, 'Veg', '1676444209.jpg', 'Slow simmered  Lacha parantha and granished with croutons.', '145', NULL, 'lacha-parantha', 1, '2023-02-15 12:26:49', '2023-02-15 12:26:49'),
(138, 5, NULL, 24, 'PUDINA PARANTHA', 18, NULL, 'Veg', '1676444334.jpg', 'Slow simmered  pudina parantha and granished with croutons.', '145', NULL, 'pudina-parantha', 1, '2023-02-15 12:28:54', '2023-02-15 12:28:54'),
(139, 5, NULL, 24, 'KHASTA ROTI', 18, NULL, 'Veg', '1676445194.jpg', 'Slow simmered khasta roti and granished with croutons.', '145', NULL, 'khasta-roti', 1, '2023-02-15 12:43:14', '2023-02-15 12:43:14'),
(140, 5, NULL, 24, 'BUTTER  NAAN', 18, NULL, 'Veg', '1676445393.jpg', 'Slow simmered butter naan and granished with croutons.', '145', NULL, 'butter--naan', 1, '2023-02-15 12:46:33', '2023-02-15 12:46:33'),
(141, 5, NULL, 24, 'GALIC NAAN', 18, NULL, 'Veg', '1676445480.jpg', 'Slow simmered  garlic naan and granished with croutons.', '145', NULL, 'galic-naan', 1, '2023-02-15 12:48:00', '2023-02-15 12:48:00'),
(142, 5, NULL, 24, 'KULCHA', 18, NULL, 'Veg', '1676445565.jpg', 'Slow simmered  kulcha and granished with croutons.', '175', NULL, 'kulcha', 1, '2023-02-15 12:49:25', '2023-02-15 12:49:25'),
(143, 5, NULL, 24, 'CHEESE OLIVE KULCHA', 18, NULL, 'Veg', '1676445660.jpg', 'Slow simmered  cheese olive and granished with croutons.', '245', NULL, 'cheese-olive-kulcha', 1, '2023-02-15 12:51:00', '2023-02-15 12:51:00'),
(144, 5, NULL, 24, 'KEEMA NAAN WITH GRAVY', 18, NULL, 'Veg', '1676445749.jpg', 'Slow simmered  keema naan with gravy and granished with croutons.', '595', NULL, 'keema-naan-with-gravy', 1, '2023-02-15 12:52:29', '2023-02-15 12:52:29'),
(145, 5, NULL, 24, 'ROMALI ROTI', 18, NULL, 'Veg', '1676445818.jpg', 'Slow simmered  romali roti and granished with croutons.', '75', NULL, 'romali-roti', 1, '2023-02-15 12:53:38', '2023-02-15 12:53:38'),
(146, 5, NULL, 24, 'BUTTER ROMALI', 18, NULL, 'Veg', '1676445913.jpg', 'Slow simmered butter romali and granished with croutons.', '95', NULL, 'butter-romali', 1, '2023-02-15 12:55:13', '2023-02-15 12:55:13'),
(147, 5, NULL, 24, 'HONEY CHILLY BBQ CHICKEN', 19, NULL, 'Non-veg', '1676446173.jpg', 'Slow simmered  honey chilly bbQ chicken  with croutons.', '545', NULL, 'honey-chilly-bbq-chicken', 1, '2023-02-15 12:59:33', '2023-02-15 13:16:05'),
(148, 5, NULL, 24, 'SHREDDED CHICKEN WITH TRI-PEPPER SAUCE', 19, NULL, 'Non-veg', '1676446286.jpg', 'Slow simmered  tri-pepper sauce and granished with croutons.', '545', NULL, 'shredded-chicken-with-tri-pepper-sauce', 1, '2023-02-15 13:01:26', '2023-02-15 13:01:26'),
(149, 5, NULL, 24, 'CHILLY CHICKEN', 19, NULL, 'Non-veg', '1676446347.jpg', 'Slow simmered  chilly chicken with croutons.', '565', NULL, 'chilly-chicken', 1, '2023-02-15 13:02:27', '2023-02-15 13:02:27'),
(150, 5, NULL, 24, 'CHICKEN SPRING ROLL', 19, NULL, 'Non-veg', '1676446405.jpg', 'Slow simmered  chicken spring roll with croutons.', '545', NULL, 'chicken-spring-roll', 1, '2023-02-15 13:03:25', '2023-02-15 13:03:25'),
(151, 5, NULL, 24, 'SHREDDED CHICKEN WITH RED PEPPER', 19, NULL, 'Non-veg', '1676446633.jpg', 'Slow simmered  shredded chicken and granished with croutons.', '565', NULL, 'shredded-chicken-with-red-pepper', 1, '2023-02-15 13:07:13', '2023-02-15 13:07:13'),
(152, 5, NULL, 24, 'ROAST CHICKEN IN CHILLY GARLIC SAUCE', 19, NULL, 'Non-veg', '1676446719.jpg', 'Slow simmered  roast chicken in chilly garlic sauce and granished with croutons.', '595', NULL, 'roast-chicken-in-chilly-garlic-sauce', 1, '2023-02-15 13:08:39', '2023-02-15 13:08:39'),
(153, 5, NULL, 24, 'SICHUAN ROAST LAMB', 19, NULL, 'Non-veg', '1676446795.jpg', 'Slow simmered sichuan roast lamb and granished with croutons.', '645', NULL, 'sichuan-roast-lamb', 1, '2023-02-15 13:09:55', '2023-02-15 13:09:55'),
(154, 5, NULL, 24, 'MUTTON CHILLY', 19, NULL, 'Non-veg', '1676446867.jpg', 'Slow simmered  mutton Chilly  with croutons.', '645', NULL, 'mutton-chilly', 1, '2023-02-15 13:11:07', '2023-02-15 13:11:07'),
(155, 5, NULL, 24, 'KANJI LAMB', 19, NULL, 'Non-veg', '1676446995.jpg', 'Slow simmered  kanji lamb with croutons.', '675', NULL, 'kanji-lamb', 1, '2023-02-15 13:13:15', '2023-02-15 13:13:15'),
(156, 5, NULL, 24, 'RED CHILLY FISH BASA', 19, NULL, 'Non-veg', '1676447150.jpg', 'Slow simmered  red chilly fish basa and granished with croutons.', '694', NULL, 'red-chilly-fish-basa', 1, '2023-02-15 13:15:50', '2023-02-15 13:15:50'),
(157, 5, NULL, 24, 'STEAM FISH IN BANANA LEAVES', 19, NULL, 'Non-veg', '1676447269.jpg', 'Slow simmered  steam fish in banana and granished with croutons.', '845', NULL, 'steam-fish-in-banana-leaves', 1, '2023-02-15 13:17:49', '2023-02-15 13:17:49'),
(158, 5, NULL, 24, 'SINGAPORE  PRAWNS', 19, NULL, 'Non-veg', '1676447362.jpg', 'Slow simmered  Singapore prawns and croutons.', '1095', NULL, 'singapore--prawns', 1, '2023-02-15 13:19:22', '2023-02-15 13:19:22'),
(159, 5, NULL, 24, 'GOLDEN FRIED PRAWNS', 19, NULL, 'Non-veg', '1676447527.jpg', 'Slow simmered golden fried prawns and granished with croutons.', '1165', NULL, 'golden-fried-prawns', 1, '2023-02-15 13:22:07', '2023-02-15 13:22:07'),
(160, 5, NULL, 24, 'ALTIUS NON VEG SICHUAN PLATTER HALF', 19, NULL, 'Non-veg', '1676452386.jpg', 'Slow simmered altius non veg sichuan and granished with croutons.', '856', NULL, 'altius-non-veg-sichuan-platter-half', 1, '2023-02-15 14:43:06', '2023-02-15 14:43:06'),
(161, 5, NULL, 24, 'ALTIUS NON VEG SICHUAN PLATTER FULL', 19, NULL, 'Non-veg', '1676452499.jpg', 'Slow simmered  ALTIUS NON VEG SICHUAN PLATTER with croutons.', '985', NULL, 'altius-non-veg-sichuan-platter-full', 1, '2023-02-15 14:44:59', '2023-02-15 14:44:59'),
(162, 5, NULL, 24, 'SHANGAI VEGETABLE', 19, NULL, 'Veg', '1676452593.jpg', 'Slow simmered  SHANGAI VEGETABLE and granished with croutons.', '495', NULL, 'shangai-vegetable', 1, '2023-02-15 14:46:33', '2023-02-15 14:46:33'),
(163, 5, NULL, 24, 'CRISPY FRIED CHILLI POTATO', 19, NULL, 'Veg', '1676452713.jpg', 'Slow simmered CRISPY FRIED CHILLI POTATO with croutons', '495', NULL, 'crispy-fried-chilli-potato', 1, '2023-02-15 14:48:33', '2023-02-15 14:48:33'),
(164, 5, NULL, 24, 'DICED VEGETABLE  WITH CASHEWNUT', 19, NULL, 'Veg', '1676452820.jpg', 'Slow simmered  DICED VEGETABLE WITH CASHEWNUT with croutons.', '525', NULL, 'diced-vegetable--with-cashewnut', 1, '2023-02-15 14:50:20', '2023-02-15 14:50:20'),
(165, 5, NULL, 24, 'VEG SALT n PEPPER', 19, NULL, 'Veg', '1676452919.jpg', 'Slow simmered VEG SALT N PEPPER and granished with croutons.', '495', NULL, 'veg-salt-n-pepper', 1, '2023-02-15 14:51:59', '2023-02-15 14:51:59'),
(166, 5, NULL, 24, 'VEG SPRING ROLL', 19, NULL, 'Veg', '1676452978.jpg', 'Slow simmered  VEG SPRING ROLL with croutons.', '495', NULL, 'veg-spring-roll', 1, '2023-02-15 14:52:58', '2023-02-15 14:52:58'),
(167, 5, NULL, 24, 'SPINACH CORN CHEESE ROLL', 19, NULL, 'Veg', '1676453307.jpg', 'Slow simmered  SPINACH CORN CHEESE ROLL with croutons.', '525', NULL, 'spinach-corn-cheese-roll', 1, '2023-02-15 14:58:27', '2023-02-15 14:58:27'),
(168, 5, NULL, 24, 'HONEY CHILLI CAULIFLOWER', 19, NULL, 'Veg', '1676453412.jpg', 'Slow simmered HONEY CHILLI CAULIFLOWER with croutons', '495', NULL, 'honey-chilli-cauliflower', 1, '2023-02-15 15:00:12', '2023-02-15 15:00:12'),
(169, 5, NULL, 24, 'BABY CORN BROCOLI', 19, NULL, 'Veg', '1676453532.jpg', 'Slow simmered  BABY CORN BROCOLI with croutons.', '575', NULL, 'baby-corn-brocoli', 1, '2023-02-15 15:02:12', '2023-02-15 15:02:12'),
(170, 5, NULL, 24, 'CRISPY STIR FRIED VEG IN CHILLI GARLIC', 19, NULL, 'Veg', '1676453800.jpg', 'Slow simmered CRISPY STIR FRIED VEG IN CHILLI GARLIC with croutons.', '545', NULL, 'crispy-stir-fried-veg-in-chilli-garlic', 1, '2023-02-15 15:06:40', '2023-02-15 15:06:40'),
(171, 5, NULL, 24, 'CRISPY SALT N PEPPER CORN', 19, NULL, 'Veg', '1676453998.jpg', 'Slow simmered  crispy salt n pepper corn  with croutons.', '495', NULL, 'crispy-salt-n-pepper-corn', 1, '2023-02-15 15:09:58', '2023-02-15 15:09:58'),
(172, 5, NULL, 24, 'TRI PEPPER MUSHROOM WITH GREEN CHILLI', 19, NULL, 'Veg', '1676454116.jpg', 'Slow simmered  tri pepper mushroom with green chilli with croutons.', '595', NULL, 'tri-pepper-mushroom-with-green-chilli', 1, '2023-02-15 15:11:56', '2023-02-15 15:11:56'),
(173, 5, NULL, 24, 'ALTIUS SCHEZWAN VEGETABLE', 19, NULL, 'Veg', '1676454286.jpg', 'Slow simmered altius schezwan vegetable with croutons.', '565', NULL, 'altius-schezwan-vegetable', 1, '2023-02-15 15:14:46', '2023-02-15 15:14:46'),
(174, 5, NULL, 24, 'COTTAGE CHEESE IN KUNG PAO SAUCE', 19, NULL, 'Veg', '1676454383.jpg', 'Slow simmered  cottage cheese in kung pao sauce with croutons.', '575', NULL, 'cottage-cheese-in-kung-pao-sauce', 1, '2023-02-15 15:16:23', '2023-02-15 15:16:23'),
(175, 5, NULL, 24, 'STIR FRIED CAPSICUM AND COTTAGE CHEESE', 19, NULL, 'Veg', '1676454514.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '595', NULL, 'stir-fried-capsicum-and-cottage-cheese', 1, '2023-02-15 15:18:34', '2023-02-15 15:18:34'),
(176, 5, NULL, 24, 'CRISPY COTTAGE CHEESE SALT n PEPPER', 19, NULL, 'Veg', '1676454619.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '565', NULL, 'crispy-cottage-cheese-salt-n-pepper', 1, '2023-02-15 15:20:19', '2023-02-15 15:20:42'),
(177, 5, NULL, 24, 'KANJI MUSHROOM', 19, NULL, 'Veg', '1676454819.jpg', 'Slow simmered kanji mushroom with croutons.', '595', NULL, 'kanji-mushroom', 1, '2023-02-15 15:23:39', '2023-02-15 15:23:39'),
(178, 5, NULL, 24, 'ALTIUS VEG PLATTER HALF', 19, NULL, 'Veg', '1676454927.jpg', 'Slow simmered altius veg platter  with croutons.', '940', NULL, 'altius-veg-platter-half', 1, '2023-02-15 15:25:27', '2023-02-15 15:25:27'),
(179, 5, NULL, 24, 'ALTIUS VEG PLATTER FULL', 19, NULL, 'Veg', '1676455027.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '1590', NULL, 'altius-veg-platter-full', 1, '2023-02-15 15:27:07', '2023-02-15 15:27:07'),
(180, 5, NULL, 24, 'VEG DIM SIM', 19, NULL, 'Veg', '1676455098.jpg', 'Slow simmered veg dim sim   with croutons.', '395', NULL, 'veg-dim-sim', 1, '2023-02-15 15:28:18', '2023-02-15 15:28:18'),
(181, 5, NULL, 24, 'CHICKEN DIM SIM', 19, NULL, 'Non-veg', '1676455228.jpg', 'Slow simmered chicken dim sim  with croutons.', '465', NULL, 'chicken-dim-sim', 1, '2023-02-15 15:30:28', '2023-02-15 16:07:21'),
(182, 5, NULL, 24, 'CHILLI CHICKEN', 18, NULL, 'Non-veg', '1676456233.jpg', 'Slow simmered chill chicken  with croutons.', '575', NULL, 'chilli-chicken', 1, '2023-02-15 15:47:13', '2023-02-15 15:47:13'),
(183, 5, NULL, 24, 'SLICE CHICKEN IN HOT GARLIC', 18, NULL, 'Non-veg', '1676456334.jpg', 'Slow simmered slice chicken in hot garlic and cottage cheese  with croutons.', '595', NULL, 'slice-chicken-in-hot-garlic', 1, '2023-02-15 15:48:54', '2023-02-15 16:07:32'),
(184, 5, NULL, 24, 'CHICKEN MANCHURIAN', 18, NULL, 'Non-veg', '1676456446.jpg', 'Slow simmered chicken manchurian and cottage cheese  with croutons.', '575', NULL, 'chicken-manchurian', 1, '2023-02-15 15:50:46', '2023-02-15 16:07:43'),
(185, 5, NULL, 24, 'DICED CHICKEN IN SCHEZWAN SAUCE', 18, NULL, 'Non-veg', '1676456501.jpg', 'Slow simmered diced chicken and cottage cheese  with croutons.', '595', NULL, 'diced-chicken-in-schezwan-sauce', 1, '2023-02-15 15:51:41', '2023-02-15 16:08:15'),
(186, 5, NULL, 24, 'SHREDDED CHICKEN WITH BLACK BEAN SAUCE', 18, NULL, 'Non-veg', '1676456580.jpg', 'Slow simmered shredded chicken and cottage cheese  with croutons.', '625', NULL, 'shredded-chicken-with-black-bean-sauce', 1, '2023-02-15 15:53:00', '2023-02-15 16:08:27'),
(187, 5, NULL, 24, 'SLICED FISH IN SHANGAI SAUCE   BASA', 18, NULL, 'Non-veg', '1676456646.jpg', 'Slow simmered sliced fish shangai and cottage cheese  with croutons.', '695', NULL, 'sliced-fish-in-shangai-sauce---basa', 1, '2023-02-15 15:54:06', '2023-02-15 16:08:39'),
(188, 5, NULL, 24, 'THAI CURRY RED', 18, NULL, 'Non-veg', '1676456758.jpg', 'Slow simmered thai curry red and cottage cheese  with croutons.', '545', NULL, 'thai-curry-red', 1, '2023-02-15 15:55:58', '2023-02-15 16:08:49'),
(189, 5, NULL, 24, 'THAI CURRY GREEN', 18, NULL, NULL, '1676456836.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '595', NULL, 'thai-curry-green', 1, '2023-02-15 15:57:16', '2023-02-15 16:08:04'),
(190, 5, NULL, 24, 'THAI CURRY YELLOW', 18, NULL, 'Non-veg', '1676456914.jpg', 'Slow simmered thai curry and cottage cheese  with croutons.', '1065', NULL, 'thai-curry-yellow', 1, '2023-02-15 15:58:34', '2023-02-15 16:07:54'),
(191, 5, NULL, 24, 'ORIENTAL SIZZLER CHICKEN', 18, NULL, 'Non-veg', '1676457059.jpg', 'Slow simmered oriental sizzler chicken and cottage cheese  with croutons.', '1050', NULL, 'oriental-sizzler-chicken', 1, '2023-02-15 16:00:59', '2023-02-15 16:07:02'),
(192, 5, NULL, 24, 'ORIENTAL SIZZLER PRAWANS', 18, NULL, 'Non-veg', '1676457170.jpg', 'Slow simmered oriental sizzler and cottage cheese  with croutons.', '1395', NULL, 'oriental-sizzler-prawans', 1, '2023-02-15 16:02:50', '2023-02-15 16:06:51'),
(193, 5, NULL, 24, 'PRAWNS IN KUNG PAO SAUCE', 18, NULL, 'Non-veg', '1676457277.jpg', 'Slow simmered prawns in kung pao sauce and cottage cheese  with croutons.', '1395', NULL, 'prawns-in-kung-pao-sauce', 1, '2023-02-15 16:04:37', '2023-02-15 16:06:41'),
(194, 5, NULL, 24, 'VEG MANCHURIAN', 18, NULL, 'Veg', '1676457393.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '445', NULL, 'veg-manchurian', 1, '2023-02-15 16:06:33', '2023-02-15 16:06:33'),
(195, 5, NULL, 24, 'VEG SWEET n SAUR', 18, NULL, 'Veg', '1676457676.jpg', 'Slow simmered veg sweet n saur and cottage cheese  with croutons.', '445', NULL, 'veg-sweet-n-saur', 1, '2023-02-15 16:11:16', '2023-02-15 16:11:16'),
(196, 5, NULL, 24, 'CHILLY PANEER', 18, NULL, 'Veg', '1676457751.jpg', 'Slow simmered chilly paneer and cottage cheese  with croutons.', '495', NULL, 'chilly-paneer', 1, '2023-02-15 16:12:31', '2023-02-15 16:12:31'),
(197, 5, NULL, 24, 'CHILLY MUSHROOM', 18, NULL, 'Veg', '1676457803.jpg', 'Slow simmered chilly mushroom and cottage cheese  with croutons.', '545', NULL, 'chilly-mushroom', 1, '2023-02-15 16:13:23', '2023-02-15 16:13:23'),
(198, 5, NULL, 24, 'ASSORTED VEG IN BLACK BEAN SAUCE', 18, NULL, 'Veg', '1676457904.jpg', 'Slow simmered assorted veg and cottage cheese  with croutons.', '445', NULL, 'assorted-veg-in-black-bean-sauce', 1, '2023-02-15 16:15:04', '2023-02-15 16:15:04'),
(199, 5, NULL, 24, 'SHARREDED POTATO IN SICHUAN PEPPER SAUCE', 18, NULL, 'Veg', '1676458023.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '445', NULL, 'sharreded-potato-in-sichuan-pepper-sauce', 1, '2023-02-15 16:17:03', '2023-02-15 16:17:03'),
(200, 5, NULL, 24, 'ORIENTAL STIR FRIED VEG', 18, NULL, 'Veg', '1676458155.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '475', NULL, 'oriental-stir-fried-veg', 1, '2023-02-15 16:19:15', '2023-02-15 16:19:15'),
(201, 5, NULL, 24, 'COTTAGE CHEESE IN KUNG PAO SAUCE MUSHROOM', 18, NULL, 'Veg', '1676458325.jpg', 'Slow simmered cottage cheese in kung and cottage cheese  with croutons.', '575', NULL, 'cottage-cheese-in-kung-pao-sauce-mushroom', 1, '2023-02-15 16:22:05', '2023-02-15 16:22:05'),
(202, 5, NULL, 24, 'COTTAGE CHEESE', 18, NULL, 'Veg', '1676459764.jpg', 'Slow simmered cottage cheese and cottage cheese  with croutons.', '575', NULL, 'cottage-cheese', 1, '2023-02-15 16:46:04', '2023-02-15 16:46:04'),
(203, 5, NULL, 24, 'CRISPY VEG IN CHINEESE PARSLY SAUCE', 18, NULL, 'Veg', '1676459872.jpg', 'Slow simmered crispy veg and cottage cheese  with croutons.', '545', NULL, 'crispy-veg-in-chineese-parsly-sauce', 1, '2023-02-15 16:47:52', '2023-02-15 16:47:52'),
(204, 5, NULL, 24, 'VEG ORIENTAL SIZZLER', 18, NULL, 'Veg', '1676460230.jpg', 'Slow simmered veg oriental sizzler and cottage cheese  with croutons.', '975', NULL, 'veg-oriental-sizzler', 1, '2023-02-15 16:53:50', '2023-02-15 16:53:50'),
(205, 5, NULL, 30, 'CHICKEN BAMBOO RICE', 18, NULL, 'Non-veg', '1676460410.jpg', 'Slow simmered chicken bamboo rice and cottage cheese  with croutons.', '495', NULL, 'chicken-bamboo-rice', 1, '2023-02-15 16:56:50', '2023-02-15 16:57:23'),
(206, 5, NULL, 30, 'AMERICAN CHOPSEY VEG', 18, NULL, 'Veg', '1676460561.jpg', 'Slow simmered american chopsey veg and cottage cheese  with croutons.', '465', NULL, 'american-chopsey-veg', 1, '2023-02-15 16:59:21', '2023-02-15 16:59:21'),
(207, 5, NULL, 30, 'AMERICAN CHOPSEY NON VEG', 18, NULL, 'Non-veg', '1676460774.jpg', 'Slow simmered american chopsey and cottage cheese  with croutons.', '495', NULL, 'american-chopsey-non-veg', 1, '2023-02-15 17:02:54', '2023-02-15 17:02:54'),
(208, 5, NULL, 30, 'FRIED RICE VEG', 18, NULL, 'Veg', '1676465880.jpg', 'Slow simmered fried rice veg and cottage cheese  with croutons.', '445', NULL, 'fried-rice-veg', 1, '2023-02-15 18:27:59', '2023-02-15 18:28:00'),
(209, 5, NULL, 30, 'FRIED RICE PRAWN', 18, NULL, 'Non-veg', '1676465969.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '545', NULL, 'fried-rice-prawn', 1, '2023-02-15 18:29:29', '2023-02-15 18:29:29'),
(210, 5, NULL, 30, 'FRIED RICE CHICKEN', 18, NULL, 'Non-veg', '1676466065.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '495', NULL, 'fried-rice-chicken', 1, '2023-02-15 18:31:05', '2023-02-15 18:31:05'),
(211, 5, NULL, 30, 'HAKKA NOODLE VEG', 18, NULL, 'Veg', '1676466635.jpg', 'Slow simmered  HAKKA NOODLE VEG and cottage cheese  with croutons.', '445', NULL, 'hakka-noodle-veg', 1, '2023-02-15 18:34:03', '2023-02-15 18:40:35'),
(212, 5, NULL, 31, 'HAKKA NOODLE CHICKEN', 18, NULL, 'Non-veg', '1676466611.jpg', 'Slow simmered HAKKA NOODLE CHICKEN and cottage cheese  with croutons.', '495', NULL, 'hakka-noodle-chicken', 1, '2023-02-15 18:40:11', '2023-02-15 18:40:11'),
(213, 5, NULL, 31, 'HAKKA NOODLE PRAWN', 18, NULL, 'Veg', '1676466818.jpg', 'Slow simmered  HAKKA NOODLE PRAWN and cottage cheese  with croutons.', '545', NULL, 'hakka-noodle-prawn', 1, '2023-02-15 18:43:38', '2023-02-15 18:43:38'),
(214, 5, NULL, 31, 'SCHEZWAN NOODLES VEG', 18, NULL, 'Veg', '1676529986.jpg', 'Slow simmered SCHEAWAN NOODLES VEG and cottage cheese  with croutons.', '454', NULL, 'schezwan-noodles-veg', 1, '2023-02-15 18:52:03', '2023-02-16 12:16:26'),
(215, 5, NULL, 31, 'SCHEZWAN NOODLES CHICKEN', 18, NULL, 'Non-veg', '1676467589.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '495', NULL, 'schezwan-noodles-chicken', 1, '2023-02-15 18:56:29', '2023-02-15 18:56:29'),
(216, 5, NULL, 31, 'SCHEZWAN NOODLES  PRAWN', 18, NULL, 'Non-veg', '1676467797.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '545', NULL, 'schezwan-noodles--prawn', 1, '2023-02-15 18:59:57', '2023-02-15 18:59:57'),
(217, 5, NULL, 31, 'CHILLY GARLIC NOODLES VEG', 18, NULL, 'Veg', '1676468044.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '445', NULL, 'chilly-garlic-noodles-veg', 1, '2023-02-15 19:04:04', '2023-02-15 19:04:04'),
(218, 5, NULL, 31, 'CHILLY GARLIC NOODLES CHICKEN', 18, NULL, 'Non-veg', '1676468172.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '495', NULL, 'chilly-garlic-noodles-chicken', 1, '2023-02-15 19:06:12', '2023-02-15 19:06:12'),
(219, 5, NULL, 31, 'CHILLY GARLIC NOODLES PRAWN', 18, NULL, 'Non-veg', '1676468468.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '545', NULL, 'chilly-garlic-noodles-prawn', 1, '2023-02-15 19:11:08', '2023-02-15 19:11:08'),
(220, 5, NULL, 31, 'PAN FRIED NOODLES VEG', 18, NULL, 'Veg', '1676468720.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '445', NULL, 'pan-fried-noodles-veg', 1, '2023-02-15 19:15:20', '2023-02-15 19:15:20'),
(221, 5, NULL, 31, 'PAN FRIED NOODLES CHICKEN', 18, NULL, 'Non-veg', '1676468833.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '495', NULL, 'pan-fried-noodles-chicken', 1, '2023-02-15 19:17:13', '2023-02-15 19:17:13'),
(222, 5, NULL, 31, 'PAN FRIED NOODLES PRAWN', 18, NULL, 'Non-veg', '1676468931.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '545', NULL, 'pan-fried-noodles-prawn', 1, '2023-02-15 19:18:51', '2023-02-15 19:18:51');
INSERT INTO `menus` (`id`, `user_id`, `business_id`, `category_id`, `name`, `cuisine_id`, `subcategory_id`, `menu_type`, `image`, `description`, `price`, `gst`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(223, 5, NULL, 24, 'NACHOS NON VEG', 20, NULL, 'Non-veg', '1676469238.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '495', NULL, 'nachos-non-veg', 1, '2023-02-15 19:23:58', '2023-02-15 19:23:58'),
(224, 5, NULL, 24, 'AMERICAN STYLE CRISPY CHICKEN', 18, NULL, 'Non-veg', '1676469419.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '625', NULL, 'american-style-crispy-chicken', 1, '2023-02-15 19:26:59', '2023-02-15 19:26:59'),
(225, 5, NULL, 24, 'CHICKEN WINGS IN BUCKET', 18, NULL, 'Non-veg', '1676469505.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '625', NULL, 'chicken-wings-in-bucket', 1, '2023-02-15 19:28:25', '2023-02-15 19:28:25'),
(226, 5, NULL, 24, 'GARLIC TOAST', 20, NULL, 'Veg', '1676469711.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '245', NULL, 'garlic-toast', 1, '2023-02-15 19:31:51', '2023-02-15 19:31:51'),
(227, 5, NULL, 24, 'CHEESE CHILLI GARLIC TOAST', 20, NULL, 'Veg', '1676469939.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '290', NULL, 'cheese-chilli-garlic-toast', 1, '2023-02-15 19:35:39', '2023-02-15 19:35:39'),
(228, 5, NULL, 24, 'VEG NACHOS', 20, NULL, 'Veg', '1676470176.jpg', 'Slow simmered stir fried capsicum and cottage cheese  with croutons.', '445', NULL, 'veg-nachos', 1, '2023-02-15 19:39:36', '2023-02-15 19:39:36'),
(229, 5, NULL, 24, 'COTTAGE CHEESE FINGER', 20, NULL, 'Veg', '1676525208.jpg', 'Slow simmered COTTAGE CHEESE FINGER and cottage cheese  with croutons.', '475', NULL, 'cottage-cheese-finger', 1, '2023-02-16 10:56:48', '2023-02-16 10:57:11'),
(230, 5, NULL, 24, 'MEZZE PLATTER', 20, NULL, 'Veg', '1676525341.jpg', 'Slow simmered meze platter and cottage cheese  with croutons.', '480', NULL, 'mezze-platter', 1, '2023-02-16 10:59:01', '2023-02-16 10:59:01'),
(231, 5, NULL, 24, 'FRESH FRUIT PLATTER', 20, NULL, 'Veg', '1676525396.jpg', 'Slow simmered fresh fruit platter and cottage cheese  with croutons.', '525', NULL, 'fresh-fruit-platter', 1, '2023-02-16 10:59:56', '2023-02-16 10:59:56'),
(232, 5, NULL, 24, 'VEG COMBO PLATTER', 20, NULL, 'Veg', '1676525491.jpg', 'Slow simmered veg combo platter and cottage cheese  with croutons.', '560', NULL, 'veg-combo-platter', 1, '2023-02-16 11:01:31', '2023-02-16 11:01:31'),
(233, 5, NULL, 24, 'LASAGNE VEG', 18, NULL, 'Veg', '1676525732.jpg', 'Slow simmered Lasagne veg and cottage cheese  with croutons.', '525', NULL, 'lasagne-veg', 1, '2023-02-16 11:05:32', '2023-02-16 11:05:32'),
(234, 5, NULL, 24, 'LASAGNE  CHICKEN', 18, NULL, 'Non-veg', '1676525782.jpg', 'Slow simmered lasagne chicken and cottage cheese  with croutons.', '565', NULL, 'lasagne--chicken', 1, '2023-02-16 11:06:22', '2023-02-16 11:06:22'),
(235, 5, NULL, 24, 'PASTA ALFRADO VEG', 18, NULL, 'Veg', '1676525884.jpg', 'Slow simmered pasta alfrado veg and cottage cheese  with croutons.', '525', NULL, 'pasta-alfrado-veg', 1, '2023-02-16 11:08:04', '2023-02-16 11:08:04'),
(236, 5, NULL, 24, 'PASTA ALFRADO CHICKEN', 18, NULL, 'Non-veg', '1676525950.jpg', 'Slow simmered PASTA ALFRADO and cottage cheese  with croutons.', '565', NULL, 'pasta-alfrado-chicken', 1, '2023-02-16 11:09:10', '2023-02-16 11:09:10'),
(237, 5, NULL, 24, 'PASTA ARABITA VEG', 18, NULL, 'Veg', '1676525998.jpg', 'Slow simmered PASTA ARABITA VEG and cottage cheese  with croutons.', '525', NULL, 'pasta-arabita-veg', 1, '2023-02-16 11:09:58', '2023-02-16 11:09:58'),
(238, 5, NULL, 24, 'PASTA ARABITA CHICKEN', 18, NULL, 'Non-veg', '1676526047.jpg', 'Slow simmered PASTA ARABITA CHICKENand cottage cheese  with croutons.', '565', NULL, 'pasta-arabita-chicken', 1, '2023-02-16 11:10:47', '2023-02-16 11:10:47'),
(239, 5, NULL, 24, 'PASTA ROSE VEG', 18, NULL, 'Veg', '1676526112.jpg', 'Slow simmered PASTA ROSE VEG and cottage cheese  with croutons.', '525', NULL, 'pasta-rose-veg', 1, '2023-02-16 11:11:52', '2023-02-16 11:11:52'),
(240, 5, NULL, 24, 'PASTA ROSE CHICKEN', 18, NULL, 'Non-veg', '1676526150.jpg', 'Slow simmered PASTA ROSE CHICKEN with croutons.', '565', NULL, 'pasta-rose-chicken', 1, '2023-02-16 11:12:30', '2023-02-16 11:12:30'),
(241, 5, NULL, 24, 'CHICKEN WHOPPER BURGER', 18, NULL, 'Non-veg', '1676526241.jpg', 'Slow simmered chicken whopper burger and cottage cheese  with croutons.', '495', NULL, 'chicken-whopper-burger', 1, '2023-02-16 11:14:01', '2023-02-16 11:14:01'),
(242, 5, NULL, 24, 'OLD FASHIONED FRIED CHIC n CHIPS', 18, NULL, 'Non-veg', '1676526345.jpg', 'Slow simmered old fashioned fried chic and cottage cheese  with croutons.', '625', NULL, 'old-fashioned-fried-chic-n-chips', 1, '2023-02-16 11:15:45', '2023-02-16 11:15:45'),
(243, 5, NULL, 24, 'CHICKEN PRINCESS', 18, NULL, 'Non-veg', '1676526410.jpg', 'Slow simmered chicken princess and cottage cheese  with croutons.', '625', NULL, 'chicken-princess', 1, '2023-02-16 11:16:50', '2023-02-16 11:16:50'),
(244, 5, NULL, 24, 'CHICKEN STROGANOFF', 18, NULL, 'Non-veg', '1676526464.jpg', 'Slow simmered chicken stroganoff and cottage cheese  with croutons.', '625', NULL, 'chicken-stroganoff', 1, '2023-02-16 11:17:44', '2023-02-16 11:17:44'),
(245, 5, NULL, 24, 'LAMB GRAVY BURGER', 18, NULL, 'Veg', '1676526552.jpg', 'Slow simmered lamb gravy burger and cottage cheese  with croutons.', '675', NULL, 'lamb-gravy-burger', 1, '2023-02-16 11:19:12', '2023-02-16 11:19:12'),
(246, 5, NULL, 24, 'LAMB STICK WITH RED WINE SAUCE', 18, NULL, 'Veg', '1676526612.jpg', 'Slow simmered lamb stick with red wine sauce and cottage cheese  with croutons.', '695', NULL, 'lamb-stick-with-red-wine-sauce', 1, '2023-02-16 11:20:12', '2023-02-16 11:20:12'),
(247, 5, NULL, 24, 'FISH n CHIPS  BASA', 18, NULL, 'Non-veg', '1676526684.jpg', 'Slow simmered fish n chips basa and cottage cheese  with croutons.', '755', NULL, 'fish-n-chips--basa', 1, '2023-02-16 11:21:24', '2023-02-16 11:21:24'),
(248, 5, NULL, 24, 'FISH n CHIPS SOLE', 18, NULL, 'Non-veg', '1676526748.jpg', 'Slow simmered fish n chips sole and cottage cheese  with croutons.', '975', NULL, 'fish-n-chips-sole', 1, '2023-02-16 11:22:28', '2023-02-16 11:22:28'),
(249, 5, NULL, 24, 'FLOWER MAGGI', 18, NULL, 'Veg', '1676526812.jpg', 'Slow simmered flower maggi and cottage cheese  with croutons.', '525', NULL, 'flower-maggi', 1, '2023-02-16 11:23:32', '2023-02-16 12:15:20'),
(250, 5, NULL, 24, 'GRILLED FISH LEMON BUTTER SAUCE', 18, NULL, 'Non-veg', '1676526872.jpg', 'Slow simmered grilled fish lemon butter sauce and cottage cheese  with croutons.', '975', NULL, 'grilled-fish-lemon-butter-sauce', 1, '2023-02-16 11:24:32', '2023-02-16 11:24:32'),
(251, 5, NULL, 22, 'CHOCOLATE GULAB JAMUN', 18, NULL, 'Veg', '1676526924.png', 'Slow simmered chocolate gulab jamun and cottage cheese  with croutons.', '190', NULL, 'chocolate-gulab-jamun', 1, '2023-02-16 11:25:24', '2023-02-16 11:25:24'),
(252, 5, NULL, 22, 'GAJJAR/MOONG DAL HALWA', 18, NULL, 'Veg', '1676527009.jpg', 'Slow simmered gajar moong dal halwa and cottage cheese  with croutons.', '265', NULL, 'gajjar-moong-dal-halwa', 1, '2023-02-16 11:26:49', '2023-02-16 11:26:49'),
(253, 5, NULL, 22, 'HEER KI KHEER', 18, NULL, 'Veg', '1676527098.jpg', 'Slow simmered heer ki kheer and cottage cheese  with croutons.', '265', NULL, 'heer-ki-kheer', 1, '2023-02-16 11:28:18', '2023-02-16 11:28:18'),
(254, 5, NULL, 22, 'SAMIYA WITH RABRI', 18, NULL, 'Veg', '1676527150.jpg', 'Slow simmered samiya with rabbi and cottage cheese  with croutons.', '235', NULL, 'samiya-with-rabri', 1, '2023-02-16 11:29:10', '2023-02-16 12:15:03'),
(255, 5, NULL, 22, 'KULFI FALUDA', 18, NULL, 'Veg', '1676527244.jpg', 'Slow simmered kulfi faluda and cottage cheese  with croutons.', '250', NULL, 'kulfi-faluda', 1, '2023-02-16 11:30:44', '2023-02-16 11:30:44'),
(256, 5, NULL, 22, 'GULKANDA RASMALAI', 18, NULL, 'Veg', '1676527310.jpg', 'Slow simmered gulkanda rasmalai and cottage cheese  with croutons.', '250', NULL, 'gulkanda-rasmalai', 1, '2023-02-16 11:31:50', '2023-02-16 12:14:49'),
(257, 5, NULL, 22, 'FRIED ICE CREAM', 18, NULL, 'Veg', '1676527416.jpg', 'Slow simmered fried ice cream and cottage cheese  with croutons.', '245', NULL, 'fried-ice-cream', 1, '2023-02-16 11:33:36', '2023-02-16 11:33:36'),
(258, 5, NULL, 24, 'CHEF SPL ICE CREAM FALUDA', 18, NULL, 'Veg', '1676527485.jpg', 'Slow simmered chef spcl ice cream faluda and cottage cheese  with croutons.', '295', NULL, 'chef-spl-ice-cream-faluda', 1, '2023-02-16 11:34:45', '2023-02-16 11:34:45'),
(259, 5, NULL, 24, 'TUTTI FRUTTY', 18, NULL, 'Veg', '1676527625.jpg', 'Slow simmered tutti frutty and cottage cheese  with croutons.', '290', NULL, 'tutti-frutty', 1, '2023-02-16 11:37:05', '2023-02-16 11:37:05'),
(260, 5, NULL, 22, 'TUFFLE PUDDING', 18, NULL, 'Veg', '1676527735.jpg', 'Slow simmered tuffle pudding and cottage cheese  with croutons.', '290', NULL, 'tuffle-pudding', 1, '2023-02-16 11:38:55', '2023-02-16 11:38:55'),
(261, 5, NULL, 22, 'BAKED BLUE BERRY CHEESE CAKE', 18, NULL, 'Veg', '1676527821.jpg', 'Slow simmered baked blue berry cheese cake and cottage cheese  with croutons.', '335', NULL, 'baked-blue-berry-cheese-cake', 1, '2023-02-16 11:40:21', '2023-02-16 12:14:31'),
(262, 5, NULL, 24, 'TIRAMISU', 18, NULL, 'Veg', '1676527915.jpg', 'Slow simmered tiramisu and cottage cheese  with croutons.', '320', NULL, 'tiramisu', 1, '2023-02-16 11:41:55', '2023-02-16 12:14:18'),
(263, 5, NULL, 29, 'TEA', 18, NULL, 'Veg', '1676528068.jpg', 'Slow simmered tea and cottage cheese  with croutons.', '95', NULL, 'tea', 1, '2023-02-16 11:44:28', '2023-02-16 11:44:28'),
(264, 5, NULL, 29, 'HOT CHOCOLATE', 18, NULL, 'Veg', '1676528144.jpg', 'Slow simmered hot chacolate and cottage cheese  with croutons.', '150', NULL, 'hot-chocolate', 1, '2023-02-16 11:45:44', '2023-02-16 11:45:44'),
(265, 5, NULL, 29, 'EXPRESSO', 18, NULL, 'Veg', '1676528211.jpg', 'Slow simmered expresso  with croutons.', '140', NULL, 'expresso', 1, '2023-02-16 11:46:50', '2023-02-16 11:46:51'),
(266, 5, NULL, 29, 'GREEN TEA', 18, NULL, 'Veg', '1676528270.jpg', 'Slow simmered green tea  with croutons.', '125', NULL, 'green-tea', 1, '2023-02-16 11:47:50', '2023-02-16 11:47:50'),
(267, 5, NULL, 29, 'CAPPUCCINO', 18, NULL, 'Veg', '1676528331.jpg', 'Slow simmered cappuccino with croutons.', '190', NULL, 'cappuccino', 1, '2023-02-16 11:48:51', '2023-02-16 11:48:51'),
(268, 5, NULL, 29, 'MOCHA', 18, NULL, 'Veg', '1676528382.jpg', 'Slow simmered mocha  with croutons.', '185', NULL, 'mocha', 1, '2023-02-16 11:49:42', '2023-02-16 11:49:42'),
(269, 5, NULL, 29, 'CAFÉ LATTE', 18, NULL, 'Veg', '1676528452.jpg', 'Slow simmered cafe latte with croutons.', '185', NULL, 'cafÉ-latte', 1, '2023-02-16 11:50:52', '2023-02-16 11:50:52'),
(270, 5, NULL, 29, 'BOTTLE WATER', 18, NULL, 'Veg', '1676528534.jpg', 'Slow simmered bottle water and cottage cheese  with croutons.', '90', NULL, 'bottle-water', 1, '2023-02-16 11:52:14', '2023-02-16 11:52:14'),
(271, 5, NULL, 29, 'AERATED DRINK', 18, NULL, 'Veg', '1676528602.jpg', 'Slow simmered  aerated drink  with croutons.', '95', NULL, 'aerated-drink', 1, '2023-02-16 11:53:22', '2023-02-16 11:53:22'),
(272, 5, NULL, 29, 'DIET SOFT DRINK', 18, NULL, 'Veg', '1676528684.jpg', 'Slow simmered diet soft drink and cottage cheese  with croutons.', '130', NULL, 'diet-soft-drink', 1, '2023-02-16 11:54:44', '2023-02-16 12:01:10'),
(273, 5, NULL, 29, 'CANNED JUICE', 18, NULL, 'Veg', '1676528746.jpg', 'Slow simmered canned juice and cottage cheese  with croutons.', '125', NULL, 'canned-juice', 1, '2023-02-16 11:55:46', '2023-02-16 11:55:46'),
(274, 5, NULL, 29, 'FRESH LIME SODA WATER MASALA', 18, NULL, 'Veg', '1676528798.jpg', 'Slow simmered fresh lime soda water masala  with croutons.', '125', NULL, 'fresh-lime-soda-water-masala', 1, '2023-02-16 11:56:38', '2023-02-16 12:00:57'),
(275, 5, NULL, 29, 'CHOICE OF LASSI', 18, NULL, 'Veg', '1676528861.jpg', 'Slow simmered choice of lassi  with croutons.', '165', NULL, 'choice-of-lassi', 1, '2023-02-16 11:57:41', '2023-02-16 11:57:41'),
(276, 5, NULL, 29, 'COLD COFFEE', 18, NULL, 'Veg', '1676528913.jpg', 'Slow simmered cold coffee  with croutons.', '240', NULL, 'cold-coffee', 1, '2023-02-16 11:58:32', '2023-02-16 11:58:33'),
(277, 5, NULL, 29, 'RED BULL', 18, NULL, 'Veg', '1676554568.png', 'Red Bull', '300', NULL, 'red-bull', 1, '2023-02-16 11:59:26', '2023-03-11 19:01:39'),
(278, 5, NULL, 29, 'COLD COFFEE WITH ICE CREAM', 18, NULL, 'Veg', '1676529041.jpg', 'Cold coffee with ice cream', '295', NULL, 'cold-coffee-with-ice-cream', 1, '2023-02-16 12:00:41', '2023-03-11 19:01:24'),
(279, 5, NULL, 28, 'CHICKEN KABAB', 18, NULL, 'Non-veg', '1676550060.jpg', 'Slow simmered CHICKEN KABAB and cottage cheese  with croutons.', '754', NULL, 'chicken-kabab', 1, '2023-02-16 17:51:00', '2023-02-16 17:51:00'),
(280, 5, NULL, 28, 'CHICKEN HARABHARA', 18, NULL, 'Non-veg', '1676550120.jpg', 'Slow simmered CHICKEN HARABHARA and cottage cheese  with croutons.', '565', NULL, 'chicken-harabhara', 1, '2023-02-16 17:52:00', '2023-02-16 17:52:00'),
(281, 5, NULL, 28, 'CHICKEN TIKKA', 18, NULL, 'Non-veg', '1676550174.jpg', 'Slow simmered CHICKEN TIKKA and cottage cheese  with croutons.', '450', NULL, 'chicken-tikka', 1, '2023-02-16 17:52:54', '2023-02-16 17:52:54'),
(282, 5, NULL, 28, 'AMERICAN CORN', 18, NULL, 'Veg', '1676550229.jpg', 'Slow simmered AMERICAN CORN and cottage cheese  with croutons.', '350', NULL, 'american-corn', 1, '2023-02-16 17:53:49', '2023-02-16 17:53:49'),
(283, 5, NULL, 28, 'BABY CORN', 18, NULL, 'Veg', '1676550839.jpg', 'Slow simmered BABY CORN and cottage cheese  with croutons.', '452', NULL, 'baby-corn', 1, '2023-02-16 18:03:59', '2023-02-16 18:03:59'),
(284, 5, NULL, 28, 'PANEER TIKKA', 18, NULL, 'Veg', '1676550920.jpg', 'Slow simmered PANEER TIKKA and cottage cheese  with croutons.', '564', NULL, 'paneer-tikka', 1, '2023-02-16 18:05:20', '2023-02-16 18:05:20'),
(285, 5, NULL, 28, 'MUSHROOM 65', 18, NULL, 'Veg', '1676550987.jpg', 'Slow simmered MUSHROOM 65 capsicum and cottage cheese  with croutons.', '650', NULL, 'mushroom-65', 1, '2023-02-16 18:06:27', '2023-02-16 18:06:27'),
(293, 22, NULL, 28, 'DRUMS OF HEAVEN', 19, NULL, 'Non-veg', '1678541209.JPG', 'Drums of Heaven Description', '575', NULL, 'drums-of-heaven', 1, '2023-03-11 18:56:49', '2023-03-11 18:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_for_items`
--

CREATE TABLE `menu_for_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `price` double(8,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `venue_type` int(11) DEFAULT NULL,
  `menu_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_for_items`
--

INSERT INTO `menu_for_items` (`id`, `user_id`, `business_id`, `title`, `items`, `price`, `status`, `created_at`, `updated_at`, `venue_type`, `menu_type`) VALUES
(3, 5, NULL, 'Chef Choice Per Head Veg', '[\"185\", \"4\", \"5\", \"6\", \"210\", \"212\"]', NULL, 1, '2023-02-16 12:27:33', '2023-02-16 17:59:01', 1, 'Per Person'),
(4, 5, NULL, 'Chef Choice Per Head Non Veg', '[\"205\", \"63\", \"64\", \"71\"]', NULL, 1, '2023-02-16 12:28:31', '2023-02-16 17:38:18', 1, 'Per Person'),
(5, 5, NULL, 'R2 Ala Carte', '[\"253\", \"145\", \"279\", \"280\", \"282\"]', NULL, 1, '2023-02-16 12:31:13', '2023-02-16 17:54:55', 2, 'A La Carte'),
(6, 5, NULL, 'High Tea Menu', '[\"263\", \"264\", \"265\", \"268\"]', NULL, 1, '2023-02-16 12:35:50', '2023-03-11 18:40:54', NULL, 'Per Person'),
(8, 22, NULL, 'Indoor Per Head Veg Menu', '[\"102\"]', NULL, 1, '2023-03-11 19:00:15', '2023-03-11 19:14:32', NULL, 'Per Person');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_09_112826_create_permission_tables', 1),
(6, '2021_11_09_113058_create_media_table', 1),
(31, '2021_11_22_115239_menus', 2),
(32, '2021_11_22_115717_menus_table', 2),
(33, '2021_11_23_111733_categories_table', 2),
(34, '2021_11_25_100115_venues_table', 2),
(35, '2021_11_25_112821_packages_table', 2),
(36, '2021_11_30_083727_subcategories_table', 2),
(37, '2021_12_04_084502_cuisines_table', 2),
(38, '2021_12_09_092752_profiles_table', 2),
(39, '2021_12_13_082434_add_deleted_at_to_users', 3),
(40, '2021_12_13_091220_add_deleted_at_to_categories', 4),
(41, '2021_12_16_064755_create_customers_table', 5),
(42, '2021_12_16_071733_create_custompackages_table', 5),
(43, '2021_12_20_054931_add_type_and_tax_type_and_tax_percent_to_categories', 6),
(44, '2021_12_20_075130_create_menu_for_items_table', 7),
(45, '2021_12_22_133758_add_menu_id_to_packages', 8),
(46, '2022_01_08_131741_create_venuetypes_table', 9),
(47, '2022_01_17_055558_create_amenities_table', 10),
(48, '2022_01_17_090323_create_business_table', 11),
(49, '2022_01_17_112827_create_states_table', 11),
(50, '2022_01_17_112837_create_cities_table', 11),
(51, '2022_01_28_120816_create_businessphotos_table', 12),
(52, '2022_01_31_101503_add_others_to_business', 13),
(53, '2022_09_06_061323_add_password_to_customers', 14),
(54, '2022_09_06_103309_add_is_used_to_customers', 15),
(55, '2022_09_07_123432_add_max_people_to_venues', 16),
(56, '2022_10_05_062729_create_events_table', 17),
(57, '2022_10_07_074503_create_ingredient_categories_table', 18),
(58, '2022_10_10_085115_create_ingredient_items_table', 18),
(59, '2022_10_10_085319_create_suppliers_table', 18),
(60, '2022_10_11_100724_add_custom_fields_to_ingredient_items_table', 19),
(61, '2022_10_11_161259_create_parties_table', 20),
(62, '2022_10_12_120417_create_supplier_price_charts_table', 21),
(63, '2022_10_12_130519_add_category_id_to_supplier_price_charts_table', 22),
(64, '2022_10_18_123007_create_brands_table', 23),
(65, '2022_10_18_151204_create_departments_table', 24),
(66, '2022_10_19_110448_add_cat_id_to_brands_table', 25),
(67, '2022_10_19_123435_create_brands_table', 26),
(68, '2022_10_21_104427_add_is_default_to_brands', 27),
(69, '2022_10_21_120550_add_is_default_to_brands', 28),
(70, '2022_10_25_102824_add_department_id_to_ingredient_items', 29),
(71, '2022_10_26_060619_create_tax_categories_table', 30),
(72, '2022_10_26_132109_create_tax_sub_categories_table', 31),
(73, '2022_10_28_055954_add_department_id_to_users', 32),
(74, '2022_10_31_095726_create_department_requests_table', 33),
(75, '2022_11_01_102628_add_user_id_to_department_requests', 34),
(76, '2022_11_01_114445_add_cat_id_to_suppliers', 35),
(77, '2022_11_02_073511_add_validity_to_suppliers', 36),
(78, '2022_11_07_092714_add_additional_data_to_supplier_price_charts', 37),
(79, '2022_11_21_061432_add_department_id_to_supplier_price_charts', 38),
(80, '2023_01_18_120916_create_venue_images_table', 39),
(81, '2023_01_19_064325_create_faqs_table', 40),
(82, '2023_01_21_113855_create_content_management_table', 40),
(83, '2023_01_21_115628_create_pages_table', 41),
(84, '2023_01_23_161626_create_customer_experiences_table', 42);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 22),
(7, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 15),
(8, 'App\\Models\\User', 13),
(11, 'App\\Models\\User', 20),
(11, 'App\\Models\\User', 21);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `category_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`category_id`)),
  `package_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `items` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`no_of_items`)),
  `extra_price_item` float DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `venue_type` int(11) DEFAULT NULL,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`custom_fields`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `business_id`, `category_id`, `package_name`, `package_type`, `price`, `items`, `no_of_items`, `extra_price_item`, `slug`, `status`, `created_at`, `updated_at`, `menu_id`, `venue_type`, `custom_fields`) VALUES
(1, 5, NULL, NULL, 'Gold package', NULL, 1000, NULL, '{\"24\": \"4\", \"27\": \"2\", \"31\": \"1\"}', NULL, 'gold-package', 1, '2023-02-16 13:45:35', '2023-02-16 17:47:01', 3, 1, '{\"24\": {\"qty\": \"2\", \"price\": \"365\"}, \"27\": {\"qty\": \"2\", \"price\": \"956\"}, \"31\": {\"qty\": \"1\", \"price\": \"956\"}}'),
(2, 5, NULL, NULL, 'Silver Package', NULL, 1299, NULL, '{\"22\": \"1\", \"24\": \"3\"}', NULL, 'silver-package', 1, '2023-02-16 13:47:29', '2023-03-11 19:18:34', 5, 1, '{\"22\": {\"qty\": \"3\", \"price\": \"50\"}, \"24\": {\"qty\": \"5\", \"price\": \"50\"}}'),
(3, 5, NULL, NULL, 'Chef\'s special', NULL, 950, NULL, '{\"24\": \"4\"}', NULL, 'chef\'s-special', 1, '2023-02-16 13:49:09', '2023-02-16 13:49:09', 4, 2, '{\"24\": {\"qty\": \"4\", \"price\": \"950\"}}'),
(4, 5, NULL, NULL, 'Platinum Package', NULL, 1150, NULL, '{\"22\": \"1\", \"28\": \"1\"}', NULL, 'platinum-package', 1, '2023-02-16 13:50:24', '2023-03-11 18:21:01', 5, 1, '{\"22\": {\"qty\": \"3\", \"price\": \"250\"}, \"28\": {\"qty\": \"3\", \"price\": \"440\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `user_id`, `business_id`, `page_name`, `others`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 'Home', 'home', '2023-01-23 06:18:16', '2023-02-25 11:40:27'),
(2, 5, NULL, 'Dinning', 'dinning', '2023-01-23 06:18:16', '2023-02-25 11:40:54'),
(3, 5, NULL, 'All Venue', 'all-venues', '2023-01-23 12:29:13', '2023-02-25 11:40:44'),
(4, 5, NULL, 'Packages', 'packages', '2023-01-23 14:47:42', '2023-02-25 11:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `party_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `business_id`, `party_name`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Marriage Party', 5, '1', '2022-10-11 17:11:19', '2022-10-11 17:16:02'),
(2, NULL, 'Birthday Party', 5, 'active', '2022-10-11 17:11:19', '2022-10-26 06:00:38'),
(3, NULL, 'Kids Birthday Party', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(4, NULL, 'Engagement', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(5, NULL, 'Pre Wedding Mehndi Party', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(6, NULL, 'Wedding Anniversary', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(7, NULL, 'Family Function', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(8, NULL, 'Baby Shower', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(9, NULL, 'Ring Ceremony', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(10, NULL, 'Bridal Shower', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(11, NULL, 'Naming Ceremony', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(12, NULL, 'Corporate Event', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(13, NULL, 'Engagement', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(14, NULL, 'Family Get Together', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(15, NULL, 'Sangeet Ceremony', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(16, NULL, 'Friends Get Together', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(17, NULL, 'Wedding Reception', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(18, NULL, 'Wedding', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(19, NULL, 'Corporate Party', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(20, NULL, 'Product Launch', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(21, NULL, 'Brand Promotion', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(22, NULL, 'Stage Event', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(23, NULL, 'Kitty Party', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(24, NULL, 'Conference', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(25, NULL, 'Business Dinner', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(26, NULL, 'Exhibition', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(27, NULL, 'Dealers Meet', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(28, NULL, 'Freshers Party', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(29, NULL, 'Farewell Party', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(30, NULL, 'Meeting', 5, 'active', '2022-10-29 05:18:21', '2022-10-29 05:18:21'),
(31, NULL, 'Training', 5, 'active', '2022-10-29 05:18:21', '2022-11-01 13:01:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'categories.read', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(2, 'categories.write', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(3, 'categories.delete', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(4, 'sub_categories.read', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(5, 'sub_categories.write', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(6, 'sub_categories.delete', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(7, 'venues.read', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(8, 'venues.write', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(9, 'venues.delete', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(10, 'items.read', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(11, 'items.write', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(12, 'items.delete', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(13, 'packages.read', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(14, 'packages.write', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(15, 'packages.delete', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(16, 'cuisine.read', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(17, 'cuisine.write', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(18, 'cuisine.delete', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(19, 'staff.read', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(20, 'staff.write', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(21, 'staff.delete', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(22, 'vendor_list.read', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(23, 'vendor_list.write', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(24, 'vendor_list.delete', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(25, 'role.read', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(26, 'role.write', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(27, 'role.delete', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(28, 'menu.read', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(29, 'menu.write', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(30, 'menu.delete', 'web', '2022-01-07 11:51:31', '2022-01-07 11:51:31'),
(31, 'venue_type.read', 'web', '2022-01-11 07:18:23', '2022-01-11 07:18:23'),
(32, 'venue_type.write', 'web', '2022-01-11 07:18:23', '2022-01-11 07:18:23'),
(33, 'venue_type.delete', 'web', '2022-01-11 07:18:23', '2022-01-11 07:18:23'),
(34, 'event_booking.read', 'web', '2022-01-11 07:18:23', '2022-01-11 07:18:23'),
(35, 'event_booking.write', 'web', NULL, NULL),
(36, 'event_booking.delete', 'web', NULL, NULL),
(37, 'amenity.read', 'web', NULL, NULL),
(38, 'amenity.write', 'web', NULL, NULL),
(39, 'amenity.delete', 'web', NULL, NULL),
(40, 'manage_business.read', 'web', NULL, NULL),
(41, 'manage_business.write', 'web', NULL, NULL),
(42, 'manage_business.delete', 'web', NULL, NULL),
(43, 'brand.read', 'web', NULL, NULL),
(44, 'brand.write', 'web', NULL, NULL),
(45, 'brand.delete', 'web', NULL, NULL),
(46, 'ingredient_item.read', 'web', NULL, NULL),
(47, 'ingredient_item.write', 'web', NULL, NULL),
(48, 'ingredient_item.delete', 'web', NULL, NULL),
(49, 'ingredient_category.read', 'web', NULL, NULL),
(50, 'ingredient_category.write', 'web', NULL, NULL),
(51, 'ingredient_category.delete', 'web', NULL, NULL),
(52, 'supplier.read', 'web', NULL, NULL),
(53, 'supplier.write', 'web', NULL, NULL),
(54, 'supplier.delete', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `business_id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Vendor', 'web', NULL, NULL),
(3, NULL, 'Super Admin', 'web', NULL, NULL),
(4, NULL, 'Manager', 'web', '2022-01-04 09:51:23', '2022-01-04 09:51:23'),
(7, NULL, 'Supervisor', 'web', '2022-01-04 10:53:45', '2022-01-04 10:53:45'),
(8, NULL, 'Assistance Supervisor', 'web', '2022-01-04 10:54:02', '2022-01-07 09:32:03'),
(11, NULL, 'Chef', 'web', '2023-01-17 11:31:27', '2023-01-17 11:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `business_id`, `role_id`) VALUES
(1, NULL, 1),
(1, NULL, 3),
(1, NULL, 7),
(2, NULL, 3),
(2, NULL, 7),
(3, NULL, 3),
(3, NULL, 7),
(4, NULL, 1),
(4, NULL, 3),
(5, NULL, 3),
(6, NULL, 3),
(7, NULL, 1),
(7, NULL, 3),
(7, NULL, 8),
(8, NULL, 3),
(8, NULL, 8),
(9, NULL, 3),
(10, NULL, 1),
(10, NULL, 3),
(10, NULL, 7),
(11, NULL, 3),
(11, NULL, 7),
(12, NULL, 3),
(12, NULL, 7),
(13, NULL, 3),
(14, NULL, 3),
(15, NULL, 3),
(16, NULL, 3),
(17, NULL, 3),
(18, NULL, 3),
(19, NULL, 3),
(20, NULL, 3),
(21, NULL, 3),
(22, NULL, 3),
(23, NULL, 3),
(24, NULL, 3),
(25, NULL, 3),
(26, NULL, 3),
(27, NULL, 3),
(28, NULL, 3),
(29, NULL, 3),
(30, NULL, 3),
(31, NULL, 3),
(32, NULL, 3),
(33, NULL, 3),
(34, NULL, 3),
(35, NULL, 3),
(36, NULL, 3),
(37, NULL, 3),
(38, NULL, 3),
(39, NULL, 3),
(40, NULL, 3),
(41, NULL, 3),
(42, NULL, 3),
(43, NULL, 3),
(43, NULL, 4),
(43, NULL, 11),
(44, NULL, 3),
(44, NULL, 4),
(44, NULL, 11),
(45, NULL, 3),
(45, NULL, 4),
(46, NULL, 3),
(46, NULL, 4),
(46, NULL, 11),
(47, NULL, 3),
(47, NULL, 4),
(47, NULL, 11),
(48, NULL, 3),
(48, NULL, 4),
(49, NULL, 3),
(49, NULL, 4),
(49, NULL, 11),
(50, NULL, 3),
(50, NULL, 4),
(50, NULL, 11),
(51, NULL, 3),
(51, NULL, 4),
(52, NULL, 3),
(52, NULL, 4),
(52, NULL, 8),
(53, NULL, 3),
(53, NULL, 4),
(53, NULL, 8),
(54, NULL, 3),
(54, NULL, 4),
(54, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Andaman & Nicobar [AN]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(2, 'Andhra Pradesh [AP]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(3, 'Arunachal Pradesh [AR]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(4, 'Assam [AS]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(5, 'Bihar [BH]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(6, 'Chandigarh [CH]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(7, 'Chhattisgarh [CG]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(8, 'Dadra & Nagar Haveli [DN]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(9, 'Daman & Diu [DD]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(10, 'Delhi [DL]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(11, 'Goa [GO]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(12, 'Gujarat [GU]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(13, 'Haryana [HR]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(14, 'Himachal Pradesh [HP]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(15, 'Jammu & Kashmir [JK]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(16, 'Jharkhand [JH]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(17, 'Karnataka [KR]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(18, ' Kerala [KL]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(19, 'Lakshadweep [LD]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(20, 'Madhya Pradesh [MP]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(21, 'Maharashtra [MH]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(22, 'Manipur [MN]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(23, 'Meghalaya [ML]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(24, 'Mizoram [MM]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(25, 'Nagaland [NL]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(26, 'Odisha [OD]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(27, 'Pondicherry [PC]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(28, 'Punjab [PJ]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(29, 'Rajasthan [RJ]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(30, 'Sikkim [SK]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(31, 'Tamil Nadu [TN]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(32, 'Tripura [TR]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(33, 'Uttar Pradesh [UP]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(34, 'Uttaranchal [UT]', '2022-01-17 12:02:29', '2022-01-17 12:02:29'),
(35, ' West Bengal [WB]', '2022-01-17 12:02:29', '2022-01-17 12:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `user_id`, `business_id`, `category_id`, `subcategory_name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, 1, 'Vegetarian Starters', 'vegetarian-starters', 1, '2022-02-18 12:29:41', '2022-02-18 12:29:41'),
(2, 8, NULL, 1, 'Non Vegetarian Starters', 'non-vegetarian-starters', 1, '2022-02-18 12:29:50', '2022-02-18 12:29:50'),
(3, 8, NULL, 3, 'Indian local theme', 'indian-local-theme', 1, '2022-02-18 12:57:54', '2022-09-07 06:59:30'),
(4, 8, NULL, 2, 'Vegetarian  Starters', 'vegetarian--starters', 1, '2022-02-18 13:37:38', '2022-02-18 13:42:00'),
(5, 8, NULL, 2, 'Non Vegetarian Starters', 'non-vegetarian-starters', 1, '2022-02-18 13:38:23', '2022-02-18 13:39:27'),
(6, 8, NULL, 4, 'Vegetarian starters', 'vegetarian-starters', 1, '2022-02-19 05:50:16', '2022-02-19 05:50:16'),
(7, 8, NULL, 4, 'Non Vegetarian starters', 'non-vegetarian-starters', 1, '2022-02-19 05:50:41', '2022-02-19 05:50:41'),
(8, 8, NULL, 5, 'Vegetarian', 'vegetarian', 1, '2022-02-19 05:50:57', '2022-02-19 05:50:57'),
(9, 8, NULL, 5, 'Non Vegetarian', 'non-vegetarian', 1, '2022-02-19 05:51:14', '2022-02-19 05:51:14'),
(10, 8, NULL, 6, 'Vegetarian', 'vegetarian', 1, '2022-02-19 05:51:33', '2022-02-19 05:51:33'),
(11, 8, NULL, 6, 'Non Vegetarian', 'non-vegetarian', 1, '2022-02-19 05:51:48', '2022-02-19 05:51:48'),
(12, 8, NULL, 7, 'Vegetarian', 'vegetarian', 1, '2022-02-19 05:52:07', '2022-02-19 05:52:07'),
(13, 8, NULL, 7, 'Non Vegetarian', 'non-vegetarian', 1, '2022-02-19 05:52:19', '2022-02-19 05:52:19'),
(14, 8, NULL, 8, 'Vegetarian', 'vegetarian', 1, '2022-02-19 11:53:29', '2022-02-19 11:53:29'),
(15, 8, NULL, 8, 'Non Vegetarian', 'non-vegetarian', 1, '2022-02-19 11:54:23', '2022-02-19 11:54:23'),
(16, 8, NULL, 13, 'Veg Soup', 'veg-soup', 1, '2022-02-21 10:46:02', '2022-02-21 10:46:02'),
(17, 8, NULL, 13, 'Non Veg Soup', 'non-veg-soup', 1, '2022-02-21 10:46:19', '2022-02-21 10:46:19'),
(18, 8, NULL, 10, 'Veg Soup', 'veg-soup', 1, '2022-02-21 10:55:54', '2022-02-21 10:55:54'),
(19, 8, NULL, 10, 'Non Veg Soup', 'non-veg-soup', 1, '2022-02-21 10:56:07', '2022-02-21 10:56:07'),
(20, 8, NULL, 14, 'Veg Salad', 'veg-salad', 1, '2022-02-21 12:09:38', '2022-02-21 12:09:38'),
(21, 8, NULL, 14, 'Non Veg Salad', 'non-veg-salad', 1, '2022-02-21 12:09:52', '2022-02-21 12:09:52'),
(22, 8, NULL, 11, 'veg', 'veg', 1, '2022-03-04 14:24:58', '2022-03-04 14:24:58'),
(23, 8, NULL, 12, 'veg', 'veg', 1, '2022-03-07 07:39:40', '2022-03-07 07:39:40'),
(24, 8, NULL, 12, 'Non Veg', 'non-veg', 1, '2022-03-07 07:39:49', '2022-03-07 07:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `cat_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cat_id`)),
  `supplier_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`bank_details`)),
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `user_id`, `business_id`, `cat_id`, `supplier_name`, `contact_no`, `email`, `address`, `bank_details`, `status`, `created_at`, `updated_at`, `valid_from`, `valid_to`) VALUES
(1, 5, NULL, '[\"2\"]', 'tset', '7899466133', 'test@gmail.com', 'tesing', '{\"gstin\": \"89552fhgvghfgh\", \"bank_name\": \"testy\", \"ifsc_code\": \"ok\", \"account_no\": \"8758754511551584\", \"supplier_url\": \"http://venuetomenu.com/supplier/price-chart/eyJpdiI6InA5Vm5Gc3RENWQ5aXBERXlCSmZMTHc9PSIsInZhbHVlIjoiZmNmTjRNRnJxNnlOU0FWZ20yb2s5Zz09IiwibWFjIjoiYmZkZThiZGY0ZmQ2ZjhkOTFmZDA3NmNjMzQ3MjFlYTQzYjMxMWMyZmRkNjdlZTcyNTIzMDM1NWI4YjUzMjA3MSIsInRhZyI6IiJ9\"}', 'active', '2023-01-18 07:00:40', '2023-03-03 11:39:57', '2023-01-18', '2023-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_price_charts`
--

CREATE TABLE `supplier_price_charts` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mrp` decimal(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `is_submit` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories`
--

CREATE TABLE `tax_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `category_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_categories`
--

INSERT INTO `tax_categories` (`id`, `user_id`, `business_id`, `category_name`, `created_at`, `updated_at`) VALUES
(5, 5, NULL, 'VAT', '2022-10-26 07:38:14', '2023-03-11 18:37:35'),
(7, 5, NULL, 'GST', '2022-10-28 05:04:23', '2023-03-11 18:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `tax_sub_categories`
--

CREATE TABLE `tax_sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcat` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_sub_categories`
--

INSERT INTO `tax_sub_categories` (`id`, `user_id`, `business_id`, `category`, `subcat`, `status`, `created_at`, `updated_at`) VALUES
(10, 22, NULL, 5, '12', 'active', '2022-10-27 13:40:56', '2023-03-11 18:37:19'),
(12, 22, NULL, 7, '5', 'active', '2022-10-28 04:57:12', '2023-03-13 11:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `business_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `department_id`, `created_at`, `updated_at`, `deleted_at`, `mobile`) VALUES
(5, NULL, 'Ranjit', 'rk@gmail.com', NULL, '$2y$10$j6i6kIkhV1ddzBYpmkjHb.J9/igSD1XWBdF/xy1Ba2PRlW.QiQvgq', NULL, NULL, '2022-01-08 12:39:42', '2022-10-06 05:14:56', NULL, '1234567898'),
(8, NULL, 'Pradeep Yadav', 'fandbmgr@thealtius.com', NULL, '$2y$10$d15ipcozHJsw6XUjGYQvM.CMXR9/mJEOY6qEuOiX4AwHcS0w0uuyK', NULL, 2, '2022-02-16 10:32:08', '2023-03-11 18:32:56', '2023-03-11 18:32:56', '8872718100'),
(9, NULL, 'Ginny Chawla', 'md@thealtius.com', NULL, '$2y$10$d15ipcozHJsw6XUjGYQvM.CMXR9/mJEOY6qEuOiX4AwHcS0w0uuyK', NULL, NULL, '2022-02-16 11:20:15', '2022-02-16 11:25:20', NULL, '9872168000'),
(11, NULL, 'The Altius GM', 'gm@thealtius.com', NULL, '$2y$10$j6i6kIkhV1ddzBYpmkjHb.J9/igSD1XWBdF/xy1Ba2PRlW.QiQvgq', NULL, NULL, '2022-10-06 10:38:46', '2022-10-06 10:38:46', NULL, '9872168000'),
(20, NULL, 'Amrit', 'exechef@thealtius.com', NULL, '$2y$10$ZkG9N4cQNf50IAdYqNQYguU0cpW5tXPReWxR.Yqb8NND4NiKI/N0.', NULL, 3, '2023-01-17 11:31:11', '2023-01-19 12:02:46', NULL, '8872716500'),
(21, NULL, 'testing', 'test@gmail.com', NULL, '$2y$10$UcF.MDHie1EFU1FbfXRCOu/fFI8AFasvLrHDE2axQo6/Bswol9.1i', NULL, 3, '2023-01-18 09:34:33', '2023-01-19 13:28:11', '2023-01-19 13:28:11', '7857895895'),
(22, NULL, 'Pradeep Yadav', 'pradeep@thealtius.com', NULL, '$2y$10$2QC8IXjHHH4gXuG2OyEHf.cW.5as.x.GLhZ99jyJelE13YLOHP3yi', NULL, 8, '2023-03-11 18:35:34', '2023-03-11 18:35:50', NULL, '8872718100');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `package_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`package_id`)),
  `venue_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `venue_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`custom_fields`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `user_id`, `business_id`, `package_id`, `venue_name`, `price`, `venue_type`, `slug`, `max_people`, `status`, `created_at`, `updated_at`, `image`, `custom_fields`) VALUES
(1, 5, NULL, '[\"4\", \"3\"]', 'The Altius Lawn', NULL, '2', 'the-altius-lawn', 1000, 1, '2023-02-09 18:15:28', '2023-03-11 16:22:23', NULL, '{\"address\": \"Outdoor\", \"amenity\": [\"6\", \"3\"], \"setting\": \"400\", \"floating\": \"400\"}'),
(2, 5, NULL, '[\"4\", \"1\"]', 'Pasha', NULL, '1', 'pasha', 3, 1, '2023-02-13 19:32:31', '2023-03-11 16:17:41', NULL, '{\"address\": \"Ground Floor\", \"amenity\": [\"5\", \"3\", \"2\"], \"setting\": \"40\", \"floating\": \"40\"}'),
(3, 5, NULL, '[\"4\", \"2\"]', 'Aurus', NULL, '1', 'aurus', 8, 1, '2023-02-16 14:46:36', '2023-03-11 16:18:37', NULL, '{\"address\": \"First Floor\", \"amenity\": [\"7\", \"6\", \"5\", \"4\"], \"setting\": \"75\", \"floating\": \"75\"}'),
(6, 5, NULL, '[\"4\", \"2\", \"1\"]', 'Blue Velvet', NULL, '1', 'blue-velvet', 35, 1, '2023-03-11 17:23:40', '2023-03-11 17:23:40', NULL, '{\"address\": \"First Floor\", \"amenity\": [\"5\", \"3\", \"2\", \"1\"], \"setting\": \"35\", \"floating\": \"35\"}'),
(7, 5, NULL, '[\"4\", \"2\", \"1\"]', 'Quorom', NULL, '1', 'quorom', 25, 1, '2023-03-11 17:28:49', '2023-03-11 17:33:21', NULL, '{\"address\": \"Second Floor\", \"amenity\": [\"5\", \"3\", \"2\", \"1\"], \"setting\": \"25\", \"floating\": \"25\"}');

-- --------------------------------------------------------

--
-- Table structure for table `venuetypes`
--

CREATE TABLE `venuetypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `venue_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venuetypes`
--

INSERT INTO `venuetypes` (`id`, `user_id`, `business_id`, `venue_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, 'Indoor', 1, '2022-02-18 12:31:31', '2023-01-18 06:19:43'),
(2, 8, NULL, 'Outdoor', 1, '2022-02-18 12:31:35', '2022-11-11 13:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `venue_images`
--

CREATE TABLE `venue_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `venue_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venue_images`
--

INSERT INTO `venue_images` (`id`, `user_id`, `business_id`, `venue_id`, `image`, `created_at`, `updated_at`) VALUES
(18, 5, NULL, 3, '1678531341485738656.JPG', '2023-03-11 16:12:21', '2023-03-11 16:12:21'),
(20, 5, NULL, 2, '1678531661391321.JPG', '2023-03-11 16:17:41', '2023-03-11 16:17:41'),
(22, 5, NULL, 1, '1678531943764089590.JPG', '2023-03-11 16:22:23', '2023-03-11 16:22:23'),
(23, 5, NULL, 6, '16785356201725137387.JPG', '2023-03-11 17:23:40', '2023-03-11 17:23:40'),
(25, 5, NULL, 7, '1678536201652244119.JPG', '2023-03-11 17:33:21', '2023-03-11 17:33:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businessphotos`
--
ALTER TABLE `businessphotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_management`
--
ALTER TABLE `content_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_experiences`
--
ALTER TABLE `customer_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custompackages`
--
ALTER TABLE `custompackages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_requests`
--
ALTER TABLE `department_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredient_categories`
--
ALTER TABLE `ingredient_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredient_items`
--
ALTER TABLE `ingredient_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_for_items`
--
ALTER TABLE `menu_for_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_price_charts`
--
ALTER TABLE `supplier_price_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_categories`
--
ALTER TABLE `tax_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_sub_categories`
--
ALTER TABLE `tax_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venuetypes`
--
ALTER TABLE `venuetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_images`
--
ALTER TABLE `venue_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `businessphotos`
--
ALTER TABLE `businessphotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=759;

--
-- AUTO_INCREMENT for table `content_management`
--
ALTER TABLE `content_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_experiences`
--
ALTER TABLE `customer_experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custompackages`
--
ALTER TABLE `custompackages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `department_requests`
--
ALTER TABLE `department_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ingredient_categories`
--
ALTER TABLE `ingredient_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ingredient_items`
--
ALTER TABLE `ingredient_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `menu_for_items`
--
ALTER TABLE `menu_for_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_price_charts`
--
ALTER TABLE `supplier_price_charts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tax_categories`
--
ALTER TABLE `tax_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tax_sub_categories`
--
ALTER TABLE `tax_sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `venuetypes`
--
ALTER TABLE `venuetypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `venue_images`
--
ALTER TABLE `venue_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
