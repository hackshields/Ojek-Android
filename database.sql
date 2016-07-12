-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 03, 2015 at 08:35 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test_taxi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` float(8,2) NOT NULL,
  `longitude` float(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `remember_token`, `created_at`, `updated_at`, `address`, `latitude`, `longitude`) VALUES
(2, 'admin@instanttaxi.com', '$2y$10$VmDAYLqO2jmcp4OQSusgteZVYrLm/8hqbfS/PejT1F.6YXki.eR4W', 'qEIfmXJmqXglfkeZy1VnVilByLTCw5JhyGmDt6LcVloiSSGsEeX8Lpx4VKGU', '2015-11-06 00:37:05', '2015-11-30 10:43:13', '', 28.61, 77.38);

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE IF NOT EXISTS `cash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` float(8,2) NOT NULL,
  `expiry` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE IF NOT EXISTS `certificates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_type` int(11) NOT NULL,
  `file_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Driving Licence', '2015-07-29 00:26:34', '2015-07-29 01:27:16'),
(2, 'Car Papers', '2015-07-29 01:27:26', '2015-07-29 01:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `dog`
--

CREATE TABLE IF NOT EXISTS `dog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `likes` text COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `dog_name_index` (`name`),
  KEY `dog_owner_id_index` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `generic_keywords`
--

CREATE TABLE IF NOT EXISTS `generic_keywords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `generic_keywords`
--

INSERT INTO `generic_keywords` (`id`, `keyword`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Provider', 'Provider', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(2, 'User', 'User', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(3, 'Taxi', 'Taxi', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(4, 'Trip', 'Trip', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(5, '$', 'Currency', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(6, 'total_trip', '1', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(7, 'cancelled_trip', '2', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(8, 'total_payment', '3', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(9, 'completed_trip', '4', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(10, 'card_payment', '5', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(11, 'credit_payment', '6', '2015-07-29 00:26:34', '2015-07-29 00:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE IF NOT EXISTS `icons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `icon_name`, `icon_code`, `icon_type`, `created_at`, `updated_at`) VALUES
(1, 'Road', '&#xf018;', 'fa', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(2, 'Star', '&#xf005;', 'fa', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(3, 'Remove', '&#xf00d;', 'fa', '2015-07-29 00:26:34', '2015-07-29 00:26:34'),
(4, 'Ok', '&#xf00c;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(5, 'Money', '&#xf0d6;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(6, 'Credit Card', '&#xf09d;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(7, 'Inbox', '&#xf01c;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(8, 'Flag', '&#xf024;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(9, 'Plus', '&#xf067;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(10, 'Minus', '&#xf068;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(11, 'Thumbs Up', '&#xf087;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(12, 'Smile', '&#xf118;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(13, 'Wine Glass', '&#xf000;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(14, 'Music', '&#xf001;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(15, 'Home', '&#xf015;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(16, 'Lock', '&#xf023;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(17, 'Book', '&#xf02D;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(18, 'Printer', '&#xf02F;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(19, 'Camera', '&#xf030;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(20, 'Map Pin', '&#xf041;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(21, 'Gift Sign', '&#xf06B;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(22, 'Aeroplane', '&#xf072;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(23, 'Cart', '&#xf07A;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(24, 'Key', '&#xf084;', 'fa', '2015-07-29 00:26:35', '2015-07-29 00:26:35'),
(25, 'Gears', '&#xf085;', 'fa', '2015-07-29 00:26:36', '2015-07-29 00:26:36'),
(26, 'Settings', '&#xf0AD;', 'fa', '2015-07-29 00:26:36', '2015-07-29 00:26:36'),
(27, 'Doctor', '&#xf0f0;', 'fa', '2015-07-29 00:26:36', '2015-07-29 00:26:36'),
(28, 'Stethoscope', '&#xf0f1;', 'fa', '2015-07-29 00:26:36', '2015-07-29 00:26:36'),
(29, 'Tempo', '&#xf0D1;', 'fa', '2015-07-29 00:26:36', '2015-07-29 00:26:36'),
(30, 'Ambulance', '&#xf0F9;', 'fa', '2015-07-29 00:26:36', '2015-07-29 00:26:36'),
(31, 'Computer', '&#xf108;', 'fa', '2015-07-29 00:26:36', '2015-07-29 00:26:36'),
(32, 'Phone', '&#xf10B;', 'fa', '2015-07-29 00:26:36', '2015-07-29 00:26:36'),
(33, 'Fire Brigade', '&#xf134;', 'fa', '2015-07-29 00:26:36', '2015-07-29 00:26:36'),
(34, 'Car', '&#xf1B9;', 'fa', '2015-07-29 00:26:36', '2015-07-29 00:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE IF NOT EXISTS `information` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumblob,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ledger`
--

CREATE TABLE IF NOT EXISTS `ledger` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) unsigned NOT NULL,
  `referral_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `total_referrals` int(11) NOT NULL,
  `amount_earned` float(8,2) NOT NULL,
  `amount_spent` float(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `ledger_owner_id_foreign` (`owner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ledger`
--

INSERT INTO `ledger` (`id`, `owner_id`, `referral_code`, `total_referrals`, `amount_earned`, `amount_spent`, `created_at`, `updated_at`) VALUES
(1, 1, 'CT0000000001', 0, 0.00, 0.00, '2015-11-06 01:24:23', '2015-11-06 01:24:23'),
(2, 2, 'c7x@HM', 0, 0.00, 0.00, '2015-11-06 01:49:46', '2015-11-06 01:49:46'),
(3, 3, 'CT0000000003', 0, 0.00, 0.00, '2015-11-06 02:41:14', '2015-11-06 02:41:14'),
(4, 4, 'z4d@HM', 0, 0.00, 0.00, '2015-11-06 21:58:46', '2015-11-06 21:58:46'),
(5, 5, 'ATh3n@', 0, 0.00, 0.00, '2015-11-06 23:35:53', '2015-11-06 23:35:53'),
(6, 6, '9s$EMt', 0, 0.00, 0.00, '2015-11-16 18:20:11', '2015-11-16 18:20:11'),
(7, 7, '$PAk1j', 0, 0.00, 0.00, '2015-11-20 03:30:21', '2015-11-20 03:30:21'),
(8, 8, '9o@QAs', 0, 0.00, 0.00, '2015-11-21 20:31:22', '2015-11-21 20:31:22'),
(9, 9, 'IT0000000009', 0, 0.00, 0.00, '2015-11-23 15:44:04', '2015-11-23 15:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_09_25_044324_create_owners_table', 1),
('2014_09_25_060804_create_dogs_table', 1),
('2014_09_30_014129_create_walker_table', 1),
('2014_10_07_113949_create_review_dog_table', 1),
('2014_10_07_114245_create_review_walker_table', 1),
('2014_10_07_114415_create_walk_location_table', 1),
('2014_10_07_114726_create_walk_table', 1),
('2014_10_07_115301_create_schedule_table', 1),
('2014_10_07_115554_create_schedule_meta_table', 1),
('2014_10_10_025736_create_payment_table', 1),
('2014_10_11_144202_add_note_to_walk_table', 1),
('2014_10_13_024755_add_picture_to_walker_table', 1),
('2014_10_14_052816_add_walker_id_to_schedules_table', 1),
('2014_10_14_142220_add_fields_to_owner', 1),
('2014_10_14_142558_add_fields_to_walker', 1),
('2014_10_15_114904_add_lat_long_to_walker_table', 1),
('2014_10_15_115120_add_endson_seeding_to_meta_table', 1),
('2014_10_17_131510_add_is_confirmed_to_schedules_table', 1),
('2014_10_17_152616_add_meta_id_in_walk', 1),
('2014_10_18_051813_add_owner_id_to_payment', 1),
('2014_10_19_070302_create_request_table', 1),
('2014_10_19_070310_create_request_meta_table', 1),
('2014_10_20_084102_add_availability_on_job', 1),
('2014_10_20_084141_add_lat_long', 1),
('2014_10_20_085531_remove_schedule_id', 1),
('2014_10_20_102804_add_status_flags', 1),
('2014_10_21_013919_replace_walk_id_to_request_id', 1),
('2014_10_21_021438_replace_walk_id_to_reques_id_review_walker_table', 1),
('2014_10_21_021816_add_is_rated_in_walk', 1),
('2014_10_21_023844_replace_walk_id_to_reques_id_walk_location_table', 1),
('2014_10_23_033257_create_settings_table', 1),
('2014_10_24_050705_add_payment_fileds_to_request', 1),
('2014_10_27_112457_change_lat_long_data_type', 1),
('2014_10_27_112629_change_lat_long_data_type_walk_location', 1),
('2014_10_27_112915_add_lat_long_data_type_walker', 1),
('2014_10_27_112953_add_lat_long_data_type', 1),
('2014_11_01_015046_create_admin_table', 1),
('2014_11_01_015258_add_is_approved_to_walker', 1),
('2014_11_09_154756_add_information_table', 1),
('2014_11_09_181432_add_referal_data_to_owner', 1),
('2014_11_09_181525_add_ledger_table', 1),
('2014_11_10_035803_add_walker_type_table', 1),
('2014_11_10_040329_add_type_to_walker', 1),
('2014_11_13_064410_add_icon_to_type', 1),
('2014_11_13_064452_add_icon_to_info', 1),
('2014_11_17_052356_add_customerid', 1),
('2014_11_17_134313_add_paymen_split', 1),
('2014_11_18_111038_add_distance_walk_location', 1),
('2014_11_19_001415_change_value_datatype', 1),
('2014_11_19_001841_add_value_datatype', 1),
('2014_11_21_115919_remove_dog_id', 1),
('2014_11_21_115930_remove_dog_id_review', 1),
('2014_11_21_130810_add_is_cancelled_request', 1),
('2014_11_21_131108_add_is_cancelled', 1),
('2014_11_25_112910_add_tip_page', 1),
('2014_11_26_025409_add_last_four', 1),
('2014_12_03_170427_add_foreign_key_dog', 1),
('2014_12_03_171436_add_foreign_key_ledger', 1),
('2014_12_03_171732_add_foreign_key_payment', 1),
('2014_12_03_172008_add_foreign_key_request', 1),
('2014_12_03_172703_add_foreign_key_request_meta', 1),
('2014_12_03_172949_add_foreign_key_review_dog', 1),
('2014_12_03_173126_add_foreign_key_review_dog_2', 1),
('2014_12_03_173221_add_foreign_key_review_dog_3', 1),
('2014_12_03_174014_add_foreign_key_review_walker', 1),
('2014_12_03_174427_add_foreign_key_walk_location', 1),
('2014_12_08_121851_add_documents_table', 1),
('2014_12_08_130512_add_document_type_table', 1),
('2014_12_14_114805_add_type_to_request', 1),
('2014_12_17_132347_update_walker_table', 1),
('2014_12_26_111728_create_walker_services_table', 1),
('2014_12_26_115353_create_request_services_table', 1),
('2014_12_26_115511_remove_fields_from_walker_type_table', 1),
('2014_12_27_023550_add_fields_to_walker_services_table', 1),
('2014_12_27_045844_add_payment_fields_to_request_services_table', 1),
('2014_12_27_050208_delete_payment_fields_from_request_table', 1),
('2014_12_27_142242_delete_type_and_add_refund_request_table', 1),
('2014_12_27_150623_create_theme_table', 1),
('2014_12_29_124126_update_theme_table', 1),
('2014_12_31_172311_add_card_token_to_payment', 1),
('2015_01_02_125640_add_card_id_to_walker', 1),
('2015_01_10_110711_create_installation_settings_table', 1),
('2015_01_22_113756_add_transfer_to_request', 1),
('2015_02_02_114411_add_is_default_to_payment', 1),
('2015_02_09_192206_add__debt_to_owner', 1),
('2015_02_10_100336_create_provider_availability', 1),
('2015_02_18_095619_add_later_in_request', 1),
('2015_02_19_121041_index_owener_table', 1),
('2015_02_19_123457_index_dog_table', 1),
('2015_02_19_124305_index_walker_table', 1),
('2015_02_19_124904_index_request_table', 1),
('2015_02_19_134856_index_requestServices_table', 1),
('2015_02_19_135324_index_walkerServices_table', 1),
('2015_02_26_104212_addDestinationToRequests', 1),
('2015_02_26_110951_add_cod_to_request_table', 1),
('2015_03_02_123731_alter_fields_in_cod_to_payment_mode_in_request', 1),
('2015_03_03_071753_add_payment_id_to_request_table', 1),
('2015_03_12_060741_add_new_field_in_walker', 1),
('2015_03_16_101246_alter_datatype_for_payment_id', 1),
('2015_03_19_072803_add_promo_code_to_request_table', 1),
('2015_03_19_074736_add_promo_codes_table', 1),
('2015_03_20_065250_add_walker_table_default_value', 1),
('2015_03_20_065758_alter_walker_table_banking_details', 1),
('2015_03_20_092439_add_field_activation_provider', 1),
('2015_03_23_120633_add_timezone_to_user_table', 1),
('2015_03_23_121121_add_timezone_to_provider_table', 1),
('2015_03_27_140947_add_generic_keywords_table', 1),
('2015_03_31_194143_add_delete_to_walker_table', 1),
('2015_03_31_195348_add_soft_delete_to_owner_table', 1),
('2015_04_01_093144_add_alter_datatype_information_content', 1),
('2015_04_02_123726_create_icons_table', 1),
('2015_04_06_175511_create_certificates_table', 1),
('2015_04_06_183013_add_user_to_certificates_table', 1),
('2015_04_07_105412_add_file_type_to_certifcates', 1),
('2015_04_12_170912_add_default_to_certificates', 1),
('2015_04_14_192343_alter_security_key_datatype_in_request_table', 1),
('2015_04_15_110351_create_promo_history_table', 1),
('2015_04_29_103838_makeNewCashtable', 1),
('2015_05_05_124752_addLocationToAdmin', 1),
('2015_06_11_072126_create_users_table', 1),
('2015_06_17_112953_add_oldlat_oldlong_bearing_data_type', 1),
('2015_06_17_192206_add_rate_ratecount_to_owner', 1),
('2015_06_17_192207_add_rate_ratecount_to_provider_table', 1),
('2015_06_22_052212_user_promo_used', 1),
('2015_06_22_060917_add_foreign_key_user_promo_used', 1),
('2015_07_04_055500_add_fields_to_type', 1),
('2015_07_04_062035_add_base_distence_to_type', 1),
('2015_07_29_054843_testing_of_migration', 2),
('2015_07_29_061714_testing_of_migration_two', 3);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE IF NOT EXISTS `owner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dog_id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_expiry` int(11) NOT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `latitude` double(15,8) NOT NULL,
  `longitude` double(15,8) NOT NULL,
  `referred_by` int(11) NOT NULL,
  `debt` float(8,2) NOT NULL DEFAULT '0.00',
  `timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UTC',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `rate` float(5,2) NOT NULL DEFAULT '0.00',
  `rate_count` bigint(20) NOT NULL DEFAULT '0',
  `promo_count` bigint(20) NOT NULL DEFAULT '0',
  `is_referee` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_email_index` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `first_name`, `last_name`, `phone`, `email`, `picture`, `bio`, `address`, `state`, `country`, `zipcode`, `dog_id`, `password`, `token`, `token_expiry`, `device_token`, `device_type`, `login_by`, `social_unique_id`, `created_at`, `updated_at`, `latitude`, `longitude`, `referred_by`, `debt`, `timezone`, `deleted_at`, `rate`, `rate_count`, `promo_count`, `is_referee`) VALUES
(1, 'Amit', 'choyal', '9717274997', 'amit.choyal@amigainformatics.com', 'http://localhost/taxi/android/newtaxi/public/uploads/33f522f5a23ef87fb1d3885be833e3022014dcf2.png', '', '', '', '', '', 0, '$2y$10$NUgaQxhI2jI3l6Owwo2yGO7FVKSBeNTWX/CR7SEQutbWC1zcyjXDy', '2y105dyHzoQ1zOoANnRh9p0uwP0vwGtlXjTn5ERkIDpKh8GP7Bj19du', 1451467055, 'APA91bFGHTkMUUbpUDOXJbC5GOPDhH0rRwCKTZgRS9MjcvhM9QlXpP_ftpyl9POPCi0Yi_HgrnXfRE-70Y0W8VfuW3F5aIZCB5UGvvB9TSrk51sXHetlCaXw-rCORKt_QBhIb8aBxFdC', 'android', 'manual', '', '2015-11-06 01:24:23', '2015-11-28 06:10:57', 28.62664120, 77.38480310, 0, 0.00, 'US/Mountain', NULL, 0.00, 0, 0, 1),
(2, 'Krishna', 'Singh', '+919555558424', 'krishnapratap10@gmail.com', '', '', '', '', '', '0', 0, '$2y$10$ScVxn/a/texy505jQbw0gu8g78GiWNY2caCEZq4d49D33E/WjuRqG', '2y10jtLP2XGLDlCOV9hCOhzf9eElC82CDhdWRh3Pw73U4V2ed6ka3x6Ky', 1451375821, '0', 'android', 'manual', '', '2015-11-06 01:49:46', '2015-11-19 18:12:46', 0.00000000, 0.00000000, 0, 0.00, 'UTC', NULL, 0.00, 0, 0, 1),
(3, 'mohammed', 'alotaibi', '00966550681870', 'mmalotaibi@ut.edu.sa', '', '', '', '', '', '', 0, '$2y$10$i3EqbxqBL.RiOUePYYb3vOO.60QlgburMoh3Dlkz4Tm25cKPOISam', '2y10F0FdYM1xPl8G07BDnCHkujusDw3HQUwyoSIMMWWQIaDyFZiqXai6', 1450352474, '', 'android', 'manual', '', '2015-11-06 02:41:14', '2015-11-06 02:41:14', 0.00000000, 0.00000000, 0, 0.00, 'UTC', NULL, 0.00, 0, 0, 0),
(4, 'Krishna', 'Singh', '+441111111111', 'abc@gmail.com', '', '', '', '', '', '0', 0, '$2y$10$SqR7qWgNa/ZrQtN0.i0p3.9i1mYI3uz4Xe.DeYgV9oPLbwgrrsJYW', '2y10XNgjnHZj2qDzncSCfU88KufuoPuvRWkocxc7RucLecowA3Vasy', 1450421926, 'APA91bHYHKDEsF04e-Yt1cQB5mMQnPfCQ1_tfUpeFAQQI_o7duVqEfbf-pODVeTNzW0H_QQ7fxTKPw_aKxa8f4YVMB0kLXpdXU1eRwyJ_KiYDNZetjbIMMptIdFBif5aJKeN9fxeMXrZ', 'android', 'manual', '', '2015-11-06 21:58:46', '2015-11-06 21:58:52', 0.00000000, 0.00000000, 0, 0.00, 'UTC', NULL, 0.00, 0, 0, 1),
(5, 'Krishna', 'Singh', '+445555555555', 'abcd@gmail.com', '', '', '', '', '', '0', 0, '$2y$10$/fVV7B3XhfX75peCTevIDO0zpJ9oZtcIPj.CvrXBhqVSLG3k8SZKW', '2y10IlBu9AKNpMqWntxen3mqerYr2dwU0TYDhZJ694qdb5StQBUYaRLS', 1450427753, 'APA91bH67FYgz0LTw7Ec-EfJD-xoxvi8mHQFAz31DNSb4H2V0i16qaVmdOgG0G1xcnNaDIc4B37T0F0hnD1ZYoS2yRyXkOZM9Q0WGrPalbbsiyC1GkQH12ZxNBM9cstmKwHc7-vlcNud', 'android', 'manual', '', '2015-11-06 23:35:53', '2015-11-06 23:35:59', 0.00000000, 0.00000000, 0, 0.00, 'UTC', NULL, 0.00, 0, 0, 1),
(6, 'Krishna', 'Singh', '+449555558424', 'krishnapratap101@gmail.com', '', '', '', '', '', '0', 0, '$2y$10$ChzEyYAAPabvZe3IklD0gOfWMyBze8H9pYSw9qCzSRz9jqtlihjSi', '2y102oSvUybk4eceKkHoZPXq7eVZTGMfA4UkUgX3G7ibqcSqcNRGrrMi', 1451866436, 'APA91bEl-B1ntQm9Srgrtx3bA7xLO28UhBi8g1_nYZUzTswS2QKQgXYUU59EXlbu5avId2Xmjyv6tyZ-N8UWVbFawqAGOiB2Lb9QFyS4dF4e2TDj3WmH6G1L9kKGXgW-UVRt8vifxPfL', 'android', 'manual', '', '2015-11-16 18:20:11', '2015-11-23 15:59:30', 28.62310915, 77.38520019, 0, 0.00, 'UTC', NULL, 4.45, 9, 0, 1),
(7, 'Krishna', 'Moorthy', '+6591472143', 'krishnamoorthy73@gmail.com', '', '', '', '', '', '0', 0, '', '2y1080UvwrXzyfQyasPh3ZTi8uOwjp0Yiu2tnBjdFrlDUJLhQXt8rxO', 1451565021, 'APA91bF_kli91hoOHZMhMBVNyXYUVFf7zu5IoYRhKIIyd5Qp96f1ThopaGVg7PBmEksYfkvDXRQVlH1VpToSguwFjgOpyoFLfYxDyv4iCK6SxmiqhTzdqfGnGU8knNP81WNEHKlRe247', 'android', 'facebook', '10204851970251870', '2015-11-20 03:30:21', '2015-11-20 03:30:44', 0.00000000, 0.00000000, 0, 0.00, 'UTC', NULL, 0.00, 0, 0, 1),
(8, 'Ajay', 'Kumar', '+441234567890', 'rkgajay@gmail.com', 'http://amigatesting.com/android/newtaxi/public/uploads/8a0d70ebb0a877a2208279975a9fdc8a84942ece.', '', '', '', '', '0', 0, '$2y$10$tkon082Z2Iqyg5kV4aMYkuaq40YWqbkK6sWs6HRyTJ7i7S0Iko1aC', '2y10QPQQQiS8sOHeYM6mlP4GulA9pgg8frWZn7xl78BFl6jRNrIfzqy', 1451713492, 'APA91bGxpvXy8H8sCLsa_17oYXNXvjCzY9zSyKDtojz6gGTaiKHTzCe2iyZAEFxwHnBAh9wj96PH8zF6AyObE3OyUia_mk5uaObrQToR1KmBYKAyrHFca9nVEyWxItBdVsc7btVZ0-54', 'android', 'manual', '', '2015-11-21 20:31:22', '2015-11-21 20:44:52', 0.00000000, 0.00000000, 0, 0.00, 'UTC', NULL, 0.00, 0, 0, 1),
(9, 'Manjeet', 'Patel', '9990050330', 'manjeet.patel@amigainformatics.com', 'http://amigatesting.com/android/newtaxi/public/uploads/80d027438c2b1c3a16babb267538e4ba237c920a.png', '', '', '', '', '', 0, '$2y$10$ch35pfRDuHcyyxQTI2n.GOVV/yMvqbu4omaQdNXaqgLs366XKFZti', '2y10WIhXGDs9BnuBvoVKRZXnNsArfpDrNWcMKj9tUmJV6RqklzuEm4m', 1451868244, '', 'android', 'manual', '', '2015-11-23 15:44:04', '2015-11-23 15:49:43', 28.61393910, 77.20902120, 0, 0.00, 'Asia/Calcutta', NULL, 0.00, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner_id` int(10) unsigned NOT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `payment_owner_id_foreign` (`owner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `card_type`, `created_at`, `updated_at`, `owner_id`, `customer_id`, `last_four`, `card_token`, `is_default`) VALUES
(1, 'VISA', '2015-11-09 16:51:11', '2015-11-09 16:51:11', 2, 'cus_7JpyE7KrlHVqTi', '4242', 'card_175CIrFZNNWvW0BCEENXRsJy', 1),
(2, 'VISA', '2015-11-20 17:45:10', '2015-11-20 17:45:10', 6, 'cus_7NyKwRImVGQDor', '1111', 'card_179CO7FZNNWvW0BCYyw6UgBe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE IF NOT EXISTS `promo_codes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `value` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `uses` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `expiry` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `promo_history`
--

CREATE TABLE IF NOT EXISTS `promo_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount_earned` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `provider_availability`
--

CREATE TABLE IF NOT EXISTS `provider_availability` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `confirmed_walker` int(11) NOT NULL,
  `current_walker` int(11) NOT NULL,
  `request_start_time` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_walker_started` int(11) NOT NULL,
  `is_walker_arrived` int(11) NOT NULL,
  `is_started` int(11) NOT NULL,
  `is_completed` int(11) NOT NULL,
  `is_dog_rated` int(11) NOT NULL,
  `is_walker_rated` int(11) NOT NULL,
  `distance` float(8,2) NOT NULL,
  `time` float(8,2) NOT NULL,
  `total` float(8,2) NOT NULL,
  `is_paid` int(11) NOT NULL,
  `card_payment` float(8,2) NOT NULL,
  `ledger_payment` float(8,2) NOT NULL,
  `is_cancelled` int(11) NOT NULL,
  `refund` float(8,2) NOT NULL DEFAULT '0.00',
  `transfer_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `later` tinyint(1) NOT NULL DEFAULT '0',
  `D_latitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `D_longitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `security_key` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` int(11) NOT NULL DEFAULT '0',
  `payment_id` text COLLATE utf8_unicode_ci,
  `promo_payment` float(8,2) NOT NULL DEFAULT '0.00',
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `request_owner_id_foreign` (`owner_id`),
  KEY `request_is_walker_started_index` (`is_walker_started`),
  KEY `request_is_walker_arrived_index` (`is_walker_arrived`),
  KEY `request_is_started_index` (`is_started`),
  KEY `request_is_completed_index` (`is_completed`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `owner_id`, `status`, `confirmed_walker`, `current_walker`, `request_start_time`, `created_at`, `updated_at`, `is_walker_started`, `is_walker_arrived`, `is_started`, `is_completed`, `is_dog_rated`, `is_walker_rated`, `distance`, `time`, `total`, `is_paid`, `card_payment`, `ledger_payment`, `is_cancelled`, `refund`, `transfer_amount`, `later`, `D_latitude`, `D_longitude`, `security_key`, `payment_mode`, `payment_id`, `promo_payment`, `promo_code`, `promo_id`) VALUES
(1, 1, 0, 0, 0, '2015-11-05 11:51:48', '2015-11-06 01:51:48', '2015-11-06 02:55:32', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 48.05458980, 24.21289430, NULL, 1, NULL, 0.00, '', 0),
(2, 1, 0, 0, 3, '2015-11-05 12:56:53', '2015-11-06 02:56:53', '2015-11-06 02:59:12', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 28.61393910, 77.20902120, NULL, 1, NULL, 0.00, '', 0),
(3, 1, 0, 0, 0, '2015-11-05 12:57:15', '2015-11-06 02:57:15', '2015-11-06 02:58:55', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(4, 1, 0, 0, 3, '2015-11-05 12:59:44', '2015-11-06 02:59:44', '2015-11-06 02:59:44', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, '0', 0, 28.61393910, 77.20902120, NULL, 1, NULL, 0.00, '', 0),
(5, 1, 0, 0, 0, '2015-11-05 13:00:17', '2015-11-06 03:00:17', '2015-11-06 03:00:17', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, '0', 0, 28.38350790, 36.56619080, NULL, 1, NULL, 0.00, '', 0),
(6, 2, 0, 0, 3, '2015-11-06 15:04:19', '2015-11-06 22:04:19', '2015-11-06 22:04:19', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(7, 1, 0, 0, 0, '2015-11-11 04:43:58', '2015-11-11 18:43:58', '2015-11-11 18:49:29', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 28.38350790, 36.56619080, NULL, 1, NULL, 0.00, '', 0),
(8, 1, 0, 0, 2, '2015-11-11 04:50:09', '2015-11-11 18:50:09', '2015-11-11 18:50:09', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, '0', 0, 44.23117170, -76.48595440, NULL, 1, NULL, 0.00, '', 0),
(9, 6, 0, 0, 3, '2015-11-16 12:03:53', '2015-11-16 19:03:53', '2015-11-16 19:06:43', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(10, 1, 0, 0, 0, '2015-11-17 03:29:30', '2015-11-17 17:29:30', '2015-11-17 17:33:21', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 27.17667010, 78.00807450, NULL, 1, NULL, 0.00, '', 0),
(11, 1, 0, 0, 3, '2015-11-17 03:34:04', '2015-11-17 17:34:04', '2015-11-17 17:34:04', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, '0', 0, 19.07627180, 72.91050490, NULL, 1, NULL, 0.00, '', 0),
(12, 6, 0, 0, 3, '2015-11-19 12:55:02', '2015-11-19 19:55:02', '2015-11-19 19:56:43', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(13, 6, 0, 0, 3, '2015-11-19 12:56:53', '2015-11-19 19:56:53', '2015-11-19 19:58:10', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(14, 6, 0, 0, 3, '2015-11-19 13:01:45', '2015-11-19 20:01:45', '2015-11-19 20:01:53', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(15, 6, 0, 0, 3, '2015-11-19 13:07:03', '2015-11-19 20:07:03', '2015-11-19 20:08:13', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(16, 6, 1, 3, 3, '2015-11-19 14:15:29', '2015-11-19 21:14:46', '2015-11-20 20:11:34', 1, 1, 1, 1, 1, 1, 0.00, 0.00, 20.00, 1, 20.00, 0.00, 0, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(17, 6, 0, 0, 2, '2015-11-19 15:57:25', '2015-11-19 22:57:25', '2015-11-19 22:57:34', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(18, 6, 0, 0, 3, '2015-11-20 10:45:28', '2015-11-20 17:45:28', '2015-11-20 17:45:37', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(19, 6, 1, 10, 10, '2015-11-20 13:18:07', '2015-11-20 20:17:43', '2015-11-20 20:20:49', 1, 1, 1, 1, 1, 1, 0.01, 0.00, 1.00, 1, 1.00, 0.00, 0, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(20, 6, 0, 0, 2, '2015-11-20 13:22:05', '2015-11-20 20:22:05', '2015-11-20 20:22:49', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(21, 6, 1, 10, 10, '2015-11-20 13:23:16', '2015-11-20 20:23:02', '2015-11-20 20:26:27', 1, 1, 1, 1, 1, 1, 0.01, 0.00, 1.00, 1, 1.00, 0.00, 0, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(22, 6, 1, 10, 10, '2015-11-20 13:26:30', '2015-11-20 20:26:12', '2015-11-20 20:29:01', 1, 1, 1, 1, 1, 1, 0.00, 0.00, 1.00, 1, 1.00, 0.00, 0, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(23, 6, 0, 0, 2, '2015-11-20 15:19:38', '2015-11-20 22:19:38', '2015-11-20 22:19:42', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(24, 6, 0, 0, 2, '2015-11-20 15:21:19', '2015-11-20 22:21:19', '2015-11-20 22:21:21', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(25, 6, 0, 0, 2, '2015-11-21 08:36:26', '2015-11-21 15:36:26', '2015-11-21 15:36:40', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(26, 6, 1, 10, 10, '2015-11-21 08:38:34', '2015-11-21 15:38:24', '2015-11-21 15:39:36', 1, 1, 1, 1, 1, 1, 0.00, 0.00, 1.00, 1, 1.00, 0.00, 0, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(27, 6, 1, 10, 10, '2015-11-21 08:40:52', '2015-11-21 15:40:47', '2015-11-21 15:42:27', 1, 1, 1, 1, 1, 1, 0.00, 0.00, 1.00, 1, 1.00, 0.00, 0, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(28, 6, 0, 0, 0, '2015-11-21 09:49:56', '2015-11-21 16:49:56', '2015-11-21 16:49:56', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 1, NULL, 0.00, '', 0),
(29, 6, 0, 0, 10, '2015-11-21 09:50:12', '2015-11-21 16:50:12', '2015-11-21 16:50:28', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(30, 6, 1, 10, 10, '2015-11-21 10:33:57', '2015-11-21 17:33:36', '2015-11-21 18:48:50', 1, 1, 1, 1, 1, 1, 0.11, 3.66, 4.60, 1, 4.60, 0.00, 0, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(31, 6, 0, 0, 2, '2015-11-21 11:39:52', '2015-11-21 18:39:52', '2015-11-21 18:39:59', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(32, 6, 1, 10, 10, '2015-11-21 11:49:06', '2015-11-21 18:48:58', '2015-11-21 18:52:25', 1, 1, 1, 1, 1, 1, 0.01, 0.98, 1.92, 1, 1.92, 0.00, 0, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(33, 6, 1, 10, 10, '2015-11-23 08:16:27', '2015-11-23 15:16:15', '2015-11-23 15:20:00', 1, 1, 1, 1, 1, 1, 0.08, 0.15, 1.13, 1, 1.13, 0.00, 0, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(34, 9, 0, 0, 0, '2015-11-23 14:19:43', '2015-11-23 15:49:43', '2015-11-23 15:49:43', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0, 0.00, '0', 0, 27.13399130, 81.96189680, NULL, 1, NULL, 0.00, '', 0),
(35, 6, 0, 0, 10, '2015-11-23 08:59:30', '2015-11-23 15:59:30', '2015-11-23 15:59:46', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 0.00000000, 0.00000000, NULL, 0, NULL, 0.00, '', 0),
(36, 1, 0, 0, 10, '2015-11-28 04:40:57', '2015-11-28 06:10:57', '2015-11-28 06:12:05', 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 1, 0.00, '0', 0, 28.65478220, 77.44599910, NULL, 1, NULL, 0.00, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE IF NOT EXISTS `request_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(10) unsigned NOT NULL,
  `walker_id` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_cancelled` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `request_meta_request_id_foreign` (`request_id`),
  KEY `request_meta_walker_id_foreign` (`walker_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

--
-- Dumping data for table `request_meta`
--

INSERT INTO `request_meta` (`id`, `request_id`, `walker_id`, `status`, `created_at`, `updated_at`, `is_cancelled`) VALUES
(1, 2, 3, 0, '2015-11-06 02:56:53', '2015-11-06 02:59:12', 1),
(2, 4, 3, 0, '2015-11-06 02:59:44', '2015-11-06 02:59:44', 0),
(3, 6, 3, 0, '2015-11-06 22:04:19', '2015-11-06 22:04:19', 0),
(4, 8, 2, 0, '2015-11-11 18:50:09', '2015-11-11 18:50:09', 0),
(5, 9, 3, 0, '2015-11-16 19:03:54', '2015-11-16 19:06:43', 1),
(6, 9, 2, 0, '2015-11-16 19:03:54', '2015-11-16 19:06:43', 1),
(7, 11, 3, 0, '2015-11-17 17:34:04', '2015-11-17 17:34:04', 0),
(8, 11, 2, 0, '2015-11-17 17:34:04', '2015-11-17 17:34:04', 0),
(9, 12, 3, 0, '2015-11-19 19:55:02', '2015-11-19 19:56:43', 1),
(10, 13, 3, 0, '2015-11-19 19:56:53', '2015-11-19 19:58:10', 1),
(11, 14, 3, 0, '2015-11-19 20:01:45', '2015-11-19 20:01:53', 1),
(12, 15, 3, 0, '2015-11-19 20:07:03', '2015-11-19 20:08:13', 1),
(13, 15, 2, 0, '2015-11-19 20:07:03', '2015-11-19 20:08:13', 1),
(14, 16, 3, 1, '2015-11-19 21:14:46', '2015-11-19 21:15:29', 0),
(16, 17, 2, 0, '2015-11-19 22:57:25', '2015-11-19 22:57:34', 1),
(17, 17, 3, 0, '2015-11-19 22:57:25', '2015-11-19 22:57:34', 1),
(18, 18, 3, 0, '2015-11-20 17:45:28', '2015-11-20 17:45:37', 1),
(19, 18, 2, 0, '2015-11-20 17:45:28', '2015-11-20 17:45:37', 1),
(20, 19, 10, 1, '2015-11-20 20:17:43', '2015-11-20 20:18:07', 0),
(22, 20, 2, 0, '2015-11-20 20:22:05', '2015-11-20 20:22:49', 1),
(23, 20, 10, 0, '2015-11-20 20:22:05', '2015-11-20 20:22:49', 1),
(24, 21, 10, 1, '2015-11-20 20:23:02', '2015-11-20 20:23:16', 0),
(26, 22, 10, 1, '2015-11-20 20:26:12', '2015-11-20 20:26:30', 0),
(28, 23, 2, 0, '2015-11-20 22:19:38', '2015-11-20 22:19:42', 1),
(29, 24, 2, 0, '2015-11-20 22:21:19', '2015-11-20 22:21:21', 1),
(30, 25, 2, 0, '2015-11-21 15:36:26', '2015-11-21 15:36:40', 1),
(31, 26, 10, 1, '2015-11-21 15:38:24', '2015-11-21 15:38:34', 0),
(33, 27, 10, 1, '2015-11-21 15:40:47', '2015-11-21 15:40:52', 0),
(35, 29, 10, 0, '2015-11-21 16:50:12', '2015-11-21 16:50:28', 1),
(36, 29, 2, 0, '2015-11-21 16:50:12', '2015-11-21 16:50:28', 1),
(37, 30, 10, 1, '2015-11-21 17:33:36', '2015-11-21 17:33:57', 0),
(39, 31, 2, 0, '2015-11-21 18:39:52', '2015-11-21 18:39:59', 1),
(40, 31, 10, 0, '2015-11-21 18:39:52', '2015-11-21 18:39:59', 1),
(41, 32, 10, 1, '2015-11-21 18:48:58', '2015-11-21 18:49:06', 0),
(43, 33, 10, 1, '2015-11-23 15:16:15', '2015-11-23 15:16:27', 0),
(45, 35, 10, 0, '2015-11-23 15:59:30', '2015-11-23 15:59:46', 1),
(46, 35, 2, 0, '2015-11-23 15:59:30', '2015-11-23 15:59:46', 1),
(47, 36, 10, 0, '2015-11-28 06:10:58', '2015-11-28 06:12:06', 1),
(48, 36, 2, 0, '2015-11-28 06:10:58', '2015-11-28 06:12:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `request_services`
--

CREATE TABLE IF NOT EXISTS `request_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `base_price` float(8,2) NOT NULL DEFAULT '0.00',
  `distance_cost` float(8,2) NOT NULL DEFAULT '0.00',
  `time_cost` float(8,2) NOT NULL DEFAULT '0.00',
  `total` float(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `request_services_request_id_index` (`request_id`),
  KEY `request_services_type_index` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `request_services`
--

INSERT INTO `request_services` (`id`, `request_id`, `type`, `created_at`, `updated_at`, `base_price`, `distance_cost`, `time_cost`, `total`) VALUES
(1, '1', '3', '2015-11-06 01:51:48', '2015-11-06 01:51:48', 0.00, 0.00, 0.00, 0.00),
(2, '2', '3', '2015-11-06 02:56:53', '2015-11-06 02:56:53', 0.00, 0.00, 0.00, 0.00),
(3, '3', '3', '2015-11-06 02:57:15', '2015-11-06 02:57:15', 0.00, 0.00, 0.00, 0.00),
(4, '4', '3', '2015-11-06 02:59:44', '2015-11-06 02:59:44', 0.00, 0.00, 0.00, 0.00),
(5, '5', '3', '2015-11-06 03:00:17', '2015-11-06 03:00:17', 0.00, 0.00, 0.00, 0.00),
(6, '6', '3', '2015-11-06 22:04:19', '2015-11-06 22:04:19', 0.00, 0.00, 0.00, 0.00),
(7, '7', '3', '2015-11-11 18:43:58', '2015-11-11 18:43:58', 0.00, 0.00, 0.00, 0.00),
(8, '8', '3', '2015-11-11 18:50:09', '2015-11-11 18:50:09', 0.00, 0.00, 0.00, 0.00),
(9, '9', '3', '2015-11-16 19:03:54', '2015-11-16 19:03:54', 0.00, 0.00, 0.00, 0.00),
(10, '10', '3', '2015-11-17 17:29:30', '2015-11-17 17:29:30', 0.00, 0.00, 0.00, 0.00),
(11, '11', '3', '2015-11-17 17:34:04', '2015-11-17 17:34:04', 0.00, 0.00, 0.00, 0.00),
(12, '12', '3', '2015-11-19 19:55:02', '2015-11-19 19:55:02', 0.00, 0.00, 0.00, 0.00),
(13, '13', '3', '2015-11-19 19:56:53', '2015-11-19 19:56:53', 0.00, 0.00, 0.00, 0.00),
(14, '14', '3', '2015-11-19 20:01:45', '2015-11-19 20:01:45', 0.00, 0.00, 0.00, 0.00),
(15, '15', '3', '2015-11-19 20:07:03', '2015-11-19 20:07:03', 0.00, 0.00, 0.00, 0.00),
(16, '16', '3', '2015-11-19 21:14:46', '2015-11-19 21:17:38', 20.00, 0.00, 0.00, 20.00),
(17, '17', '3', '2015-11-19 22:57:25', '2015-11-19 22:57:25', 0.00, 0.00, 0.00, 0.00),
(18, '18', '3', '2015-11-20 17:45:28', '2015-11-20 17:45:28', 0.00, 0.00, 0.00, 0.00),
(19, '19', '3', '2015-11-20 20:17:43', '2015-11-20 20:20:24', 1.00, 0.00, 0.00, 1.00),
(20, '20', '3', '2015-11-20 20:22:05', '2015-11-20 20:22:05', 0.00, 0.00, 0.00, 0.00),
(21, '21', '3', '2015-11-20 20:23:02', '2015-11-20 20:24:34', 1.00, 0.00, 0.00, 1.00),
(22, '22', '3', '2015-11-20 20:26:12', '2015-11-20 20:28:43', 1.00, 0.00, 0.00, 1.00),
(23, '23', '3', '2015-11-20 22:19:38', '2015-11-20 22:19:38', 0.00, 0.00, 0.00, 0.00),
(24, '24', '3', '2015-11-20 22:21:19', '2015-11-20 22:21:19', 0.00, 0.00, 0.00, 0.00),
(25, '25', '3', '2015-11-21 15:36:26', '2015-11-21 15:36:26', 0.00, 0.00, 0.00, 0.00),
(26, '26', '3', '2015-11-21 15:38:24', '2015-11-21 15:39:15', 1.00, 0.00, 0.00, 1.00),
(27, '27', '3', '2015-11-21 15:40:47', '2015-11-21 15:42:19', 1.00, 0.00, 0.00, 1.00),
(28, '28', '3', '2015-11-21 16:49:56', '2015-11-21 16:49:56', 0.00, 0.00, 0.00, 0.00),
(29, '29', '3', '2015-11-21 16:50:12', '2015-11-21 16:50:12', 0.00, 0.00, 0.00, 0.00),
(30, '30', '3', '2015-11-21 17:33:36', '2015-11-21 17:38:21', 1.00, 0.00, 3.60, 4.60),
(31, '31', '3', '2015-11-21 18:39:52', '2015-11-21 18:39:52', 0.00, 0.00, 0.00, 0.00),
(32, '32', '3', '2015-11-21 18:48:58', '2015-11-21 18:51:43', 1.00, 0.00, 0.92, 1.92),
(33, '33', '3', '2015-11-23 15:16:15', '2015-11-23 15:18:56', 1.00, 0.00, 0.13, 1.13),
(34, '34', '3', '2015-11-23 15:49:43', '2015-11-23 15:49:43', 0.00, 0.00, 0.00, 0.00),
(35, '35', '3', '2015-11-23 15:59:30', '2015-11-23 15:59:30', 0.00, 0.00, 0.00, 0.00),
(36, '36', '3', '2015-11-28 06:10:58', '2015-11-28 06:10:58', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `review_dog`
--

CREATE TABLE IF NOT EXISTS `review_dog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `walker_id` int(10) unsigned NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `request_id` int(10) unsigned NOT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `review_dog_owner_id_foreign` (`owner_id`),
  KEY `review_dog_walker_id_foreign` (`walker_id`),
  KEY `review_dog_request_id_foreign` (`request_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `review_dog`
--

INSERT INTO `review_dog` (`id`, `walker_id`, `rating`, `comment`, `created_at`, `updated_at`, `request_id`, `owner_id`) VALUES
(1, 3, 5, 'nice service.', '2015-11-20 20:11:34', '2015-11-20 20:11:34', 16, 6),
(2, 10, 5, '', '2015-11-20 20:20:39', '2015-11-20 20:20:39', 19, 6),
(3, 10, 4, '', '2015-11-20 20:26:27', '2015-11-20 20:26:27', 21, 6),
(4, 10, 5, '', '2015-11-20 20:28:55', '2015-11-20 20:28:55', 22, 6),
(5, 10, 4, '', '2015-11-21 15:39:26', '2015-11-21 15:39:26', 26, 6),
(6, 10, 5, '', '2015-11-21 15:42:27', '2015-11-21 15:42:27', 27, 6),
(7, 10, 5, '', '2015-11-21 18:48:50', '2015-11-21 18:48:50', 30, 6),
(8, 10, 4, '', '2015-11-21 18:52:25', '2015-11-21 18:52:25', 32, 6),
(9, 10, 5, '', '2015-11-23 15:20:00', '2015-11-23 15:20:00', 33, 6);

-- --------------------------------------------------------

--
-- Table structure for table `review_walker`
--

CREATE TABLE IF NOT EXISTS `review_walker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `walker_id` int(10) unsigned NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `request_id` int(10) unsigned NOT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `review_walker_owner_id_foreign` (`owner_id`),
  KEY `review_walker_walker_id_foreign` (`walker_id`),
  KEY `review_walker_request_id_foreign` (`request_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `review_walker`
--

INSERT INTO `review_walker` (`id`, `walker_id`, `rating`, `comment`, `created_at`, `updated_at`, `request_id`, `owner_id`) VALUES
(1, 3, 4, '', '2015-11-19 21:18:17', '2015-11-19 21:18:17', 16, 6),
(2, 10, 4, '', '2015-11-20 20:20:49', '2015-11-20 20:20:49', 19, 6),
(3, 10, 3, '', '2015-11-20 20:24:55', '2015-11-20 20:24:55', 21, 6),
(4, 10, 5, '', '2015-11-20 20:29:01', '2015-11-20 20:29:01', 22, 6),
(5, 10, 5, '', '2015-11-21 15:39:36', '2015-11-21 15:39:36', 26, 6),
(6, 10, 5, '', '2015-11-21 15:42:24', '2015-11-21 15:42:24', 27, 6),
(7, 10, 3, '', '2015-11-21 17:38:39', '2015-11-21 17:38:39', 30, 6),
(8, 10, 4, '', '2015-11-21 18:52:17', '2015-11-21 18:52:17', 32, 6);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE IF NOT EXISTS `schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dog_id` int(11) NOT NULL,
  `lockbox_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_recurring` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `walker_id` int(11) NOT NULL,
  `is_confirmed` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_meta`
--

CREATE TABLE IF NOT EXISTS `schedule_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `ends_on` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `started_on` float(8,2) NOT NULL,
  `seeding_status` float(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tool_tip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=54 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `created_at`, `updated_at`, `value`, `tool_tip`, `page`) VALUES
(1, 'default_distance_unit', '2015-07-29 00:26:31', '2015-07-29 00:26:31', '0', 'This is the default unit of distance', 1),
(2, 'default_charging_method_for_users', '2015-07-29 00:26:31', '2015-07-29 00:26:31', '1', 'Default Changing method for users', 1),
(3, 'base_price', '2015-07-29 00:26:31', '2015-07-29 00:26:31', '50', 'Incase of Fixed price payment, Base price is the total amount thats charged to users', 1),
(4, 'price_per_unit_distance', '2015-07-29 00:26:31', '2015-07-29 00:26:31', '10', 'Needed only incase of time and distance based payment', 1),
(5, 'price_per_unit_time', '2015-07-29 00:26:31', '2015-07-29 00:26:31', '8', 'Needed only incase of time and distance based payment', 1),
(6, 'provider_timeout', '2015-07-29 00:26:31', '2015-07-29 00:26:31', '60', 'Maximum time for provider to respond for a request', 1),
(7, 'sms_notification', '2015-07-29 00:26:31', '2015-07-29 00:26:31', '0', 'Send SMS Notifications', 1),
(8, 'email_notification', '2015-07-29 00:26:31', '2015-07-29 00:26:31', '1', 'Send Email Notifications', 1),
(9, 'push_notification', '2015-07-29 00:26:31', '2015-07-29 00:26:31', '1', 'Send Push Notifications', 1),
(10, 'referral_code_activation', '2015-07-29 00:26:31', '2015-07-29 00:26:31', '1', 'User can get amount thru the referral code', 1),
(11, 'get_referral_profit_on_card_payment', '2015-07-29 00:26:32', '2015-07-29 00:26:32', '1', 'Referral bonus can be cut while cash payment', 1),
(12, 'get_referral_profit_on_cash_payment', '2015-07-29 00:26:32', '2015-07-29 00:26:32', '1', 'Referral bonus can be cut while card payment', 1),
(13, 'default_referral_bonus_to_refered_user', '2015-07-29 00:26:32', '2015-07-29 00:26:32', '7', 'Bonus credit that should be added to old registered user incase if user refers another', 1),
(14, 'default_referral_bonus_to_refereel', '2015-07-29 00:26:32', '2015-07-29 00:26:32', '3', 'Bonus credit that should be added to new registered user incase if user refers another', 1),
(15, 'promotional_code_activation', '2015-07-29 00:26:32', '2015-07-29 00:26:32', '1', 'User can get amount thru the promotional code', 1),
(16, 'get_promotional_profit_on_card_payment', '2015-07-29 00:26:32', '2015-07-29 00:26:32', '1', 'Promotional bonus can be cut while cash payment', 1),
(17, 'get_promotional_profit_on_cash_payment', '2015-07-29 00:26:32', '2015-07-29 00:26:32', '1', 'Promotional bonus can be cut while card payment', 1),
(19, 'admin_phone_number', '2015-07-29 00:26:32', '2015-11-06 01:09:25', '+918527059496', 'This mobile number will get SMS notifications about requests', 1),
(20, 'admin_email_address', '2015-07-29 00:26:32', '2015-11-06 01:09:25', 'ratan.singh@amigainformatics.com', 'This address will get Email notifications about requests', 1),
(21, 'sms_walker_approve', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Hello..., %name%. You are approved as a Service Provider.', 'This Template will be used for approve sms to provider', 2),
(22, 'sms_walker_decline', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Sorry..., %name%. You are Decline as a Service Provider.', 'This Template will be used for decline sms to provider', 2),
(23, 'sms_when_provider_accepts', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Hi %user%, Your request is accepted by %driver%. You can reach him by %driver_mobile%', 'This Template will be used to notify user by SMS when a provider the accepts request', 2),
(24, 'sms_when_provider_arrives', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Hi %user%, The %driver% has arrived at your location.You can reach user by %driver_mobile%', 'This Template will be used to notify user by SMS when a provider the arrives', 2),
(25, 'sms_when_provider_completes_job', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Hi %user%, Your request is successfully completed by %driver%. Your Bill amount id %amount%', 'This Template will be used to notify user by SMS when a provider the completes the service', 2),
(26, 'sms_request_created', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Request id %id% is created by %user%, You can reach him by %user_mobile%', 'This Template will be used to notify admin by SMS when a new request is created', 2),
(27, 'sms_request_unanswered', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Request id %id% created by %user% is left unanswered, You can reach user by %user_mobile%', 'This Template will be used to notify admin by SMS when a request remains unanswered by all providers', 2),
(28, 'sms_request_completed', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Request id %id% created by %user% is completed, You can reach user by %user_mobile%', 'This Template will be used to notify admin by SMS when a request is completed', 2),
(29, 'sms_payment_generated', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Payment for Request id %id% is generated.', 'This Template will be used to notify admin by SMS when payment is generated for a request', 2),
(30, 'email_walker_approve', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Welcome on Board %name% to Taxi Now. You are approved as a Service Provider. Should you have any complaints or problems contact our support team: deep@elluminati.in', 'This Template will be used for approve mail to provider', 3),
(31, 'email_walker_decline', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Sorry...,  %name%. You are Declined as a Service Provider. Should you have any complaints or problems contact our support team: deep@elluminati.in', 'This Template will be used for decline mail to provider', 3),
(32, 'email_forgot_password', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Your New Password is %password%. Please dont forget to change the password once you log in next time.', 'This Template will be used to notify users and providers by email when they reset their password', 3),
(33, 'email_walker_new_registration', '2015-07-29 00:26:32', '2015-07-29 00:26:32', 'Welcome on Board %name% , After Logged in to your account Upload your documents to get approve from the admin side , Please Activation your Email here %link% . Upload your documents and someone will look into your application and get back.', 'This Template will be used for welcome mail to provider', 3),
(34, 'email_owner_new_registration', '2015-07-29 00:26:33', '2015-07-29 00:26:33', 'Welcome on Board %name%', 'This Template will be used for welcome mail to user', 3),
(35, 'email_new_request', '2015-07-29 00:26:33', '2015-07-29 00:26:33', 'New Request %id% is created. Follow the request through %url%', 'This Template will be used notify admin by email when a new request is created', 3),
(36, 'email_request_unanswered', '2015-07-29 00:26:33', '2015-07-29 00:26:33', 'Request %id% has beed declined by all providers. Follow the request through %url%', 'This Template will be used notify admin by email when a request remains unanswerd by all providers', 3),
(37, 'email_request_finished', '2015-07-29 00:26:33', '2015-07-29 00:26:33', 'Request %id% is finished. Follow the request through %url%', 'This Template will be used notify admin by email when a request is completed', 3),
(38, 'email_payment_charged', '2015-07-29 00:26:33', '2015-07-29 00:26:33', 'Request %id% is finished. Follow the request through %url%', 'This Template will be used notify admin by email when a client is charged for a request', 3),
(39, 'email_invoice_generated_user', '2015-07-29 00:26:33', '2015-07-29 00:26:33', 'invoice for Request id %id% is generated. Total amount is %amount%', 'This Template will be used notify user by email when invoice is generated', 3),
(40, 'email_invoice_generated_provider', '2015-07-29 00:26:33', '2015-07-29 00:26:33', 'invoice for Request id %id% is generated. Total amount is %amount%', 'This Template will be used notify provider by email when invoice is generated', 3),
(41, 'map_center_latitude', '2015-07-29 00:26:33', '2015-07-29 00:26:33', '0', 'This is latitude for the map center', 1),
(42, 'map_center_longitude', '2015-07-29 00:26:33', '2015-07-29 00:26:33', '0', 'This is longitude for the map center', 1),
(43, 'default_search_radius', '2015-07-29 00:26:33', '2015-07-29 00:26:33', '5', 'Defalt search radius to look for providers', 1),
(44, 'provider_selection', '2015-07-29 00:26:33', '2015-07-29 00:26:33', '1', 'Automatically assign provider or manually select from a displayed list of all providers', 4),
(45, 'service_fee', '2015-07-29 00:26:33', '2015-07-29 00:26:33', '10', 'Service Fee Amount', 4),
(46, 'payment_made_client', '2015-07-29 00:26:33', '2015-07-29 00:26:33', 'Payment has been made for Request id %id%. Total amount is %amount%', 'This Template will be used notify provider by email when payment has been made', 3),
(47, 'transfer', '2015-07-29 00:26:33', '2015-11-06 01:09:25', '1', 'Transfer', 7),
(49, 'cod', '2015-07-29 00:26:33', '2015-07-29 00:26:33', '1', 'Pay by Cash', 8),
(50, 'paypal', '2015-07-29 00:26:34', '2015-07-29 00:26:34', '0', 'Pay by Paypal', 8),
(51, 'promo_code', '2015-07-29 00:26:34', '2015-07-29 00:26:34', '0', 'Promo Code Allowed', 8),
(52, 'get_destination', '2015-07-29 00:26:34', '2015-07-29 00:26:34', '1', 'Allow or not to get Destination', 3),
(53, 'allow_multiple_service', '2015-07-29 00:26:34', '2015-07-29 00:26:34', '0', 'Enable/Disable multiple service select', 3);

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE IF NOT EXISTS `theme` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `primary_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secondary_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hover_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `theme_color`, `primary_color`, `secondary_color`, `hover_color`, `logo`, `favicon`, `created_at`, `updated_at`, `active_color`) VALUES
(1, '#', '#', '#', '#', '1447684304415139046.png', '14476843041704837834icon.png', '2015-11-06 01:09:50', '2015-11-16 21:31:44', '#');

-- --------------------------------------------------------

--
-- Table structure for table `user_promo_used`
--

CREATE TABLE IF NOT EXISTS `user_promo_used` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_promo_used_code_id_foreign` (`code_id`),
  KEY `user_promo_used_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `walk`
--

CREATE TABLE IF NOT EXISTS `walk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` int(11) NOT NULL,
  `dog_id` int(11) NOT NULL,
  `walker_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `is_walker_rated` int(11) NOT NULL,
  `is_dog_rated` int(11) NOT NULL,
  `is_confirmed` int(11) NOT NULL,
  `is_started` int(11) NOT NULL,
  `is_completed` int(11) NOT NULL,
  `is_cancelled` int(11) NOT NULL,
  `distance` float(8,2) NOT NULL,
  `time` int(11) NOT NULL,
  `is_poo` int(11) NOT NULL,
  `is_pee` int(11) NOT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `walker`
--

CREATE TABLE IF NOT EXISTS `walker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_activation` int(11) NOT NULL,
  `token_expiry` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` int(11) NOT NULL,
  `is_available` int(11) DEFAULT '1',
  `latitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `longitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `is_approved` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `merchant_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` text COLLATE utf8_unicode_ci,
  `last_4` text COLLATE utf8_unicode_ci,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UTC',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `old_latitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `old_longitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `bearing` double(15,8) NOT NULL DEFAULT '0.00000000',
  `car_model` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `car_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `rate` float(5,2) NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `walker_email_index` (`email`),
  KEY `walker_first_name_index` (`first_name`),
  KEY `walker_last_name_index` (`last_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `walker`
--

INSERT INTO `walker` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`, `picture`, `bio`, `address`, `state`, `country`, `zipcode`, `device_token`, `device_type`, `login_by`, `social_unique_id`, `token`, `email_activation`, `token_expiry`, `created_at`, `updated_at`, `is_active`, `is_available`, `latitude`, `longitude`, `is_approved`, `type`, `merchant_id`, `account_id`, `last_4`, `activation_code`, `timezone`, `deleted_at`, `old_latitude`, `old_longitude`, `bearing`, `car_model`, `car_number`, `rate`, `rate_count`) VALUES
(2, 'Ratan', 'Singh', '8527059496', 'ratan11.singh@amigainformatics.com', '$2y$10$QpiRuvWK6wY5lAgnApwX7ek3Sg7LogFJbrNVmJJgLiyE8JAwFmaDa', 'http://localhost/taxi/android/newtaxi/public/uploads/8e8a13ab316a36f1de7c6047f1aac52794dfb4a5.png', '', 'Noida', '', '', '', '0', 'android', 'manual', '', '2y10AqgoxROgyHXAa0h1MdmeaPyLirBYaNe9Duqg5D9qlE2OK6cVflq', 1, 1451538403, '2015-11-06 01:38:37', '2015-11-28 06:22:53', 1, 1, 28.61047120, 77.38410850, 1, 3, '', NULL, NULL, '563ba22cd6d4b', 'Asia/Kolkata', NULL, 28.61047120, 77.38410850, 0.00000000, 'CRO', 'ADFD', 0.00, 0),
(3, 'Amit', 'choyal', '9717274997', 'choyalamit1432@gmail.com', '$2y$10$I4UCH9aoxc42MvCReoG9t.NjGIEqGDAVNWVwR4YHZBM/fMUe.DpcC', 'http://amigatesting.com/android/newtaxi/public/uploads/7af1b22619a5b91d5578d7ff9ac6441e34862584.jpg', '', '', '', '', '', '0', 'android', 'manual', '', '2y100HmAmrEAosneHn7YlQSZOlguMO98sDYGVPzFeH4XfV1A446zXS', 1, 1451542470, '2015-11-06 01:42:53', '2015-11-20 20:30:47', 0, 1, 28.61123950, 77.38372390, 1, 3, '', NULL, NULL, '563ba32d24f43', 'UTC', NULL, 28.61127990, 77.38374680, 0.00000000, '0', '0', 4.00, 1),
(4, 'mohammed', 'alotaibi', '9717274997', 'motoa444@hotmail.com', '$2y$10$14ciV1Es/6v1PwJIgVQ5yeLOe1/UUD.DHqq8T0c9JUVLrveDwNcLK', '', '', '', '', '', '', '', 'android', 'manual', '', '2y10qqr1K4PMsnz2D1IFy4mxa3rn3cC7KsM7xYjeXAbRNczAfIRv2yu', 0, 1450353884, '2015-11-06 03:04:44', '2015-11-06 03:07:28', 0, 1, 0.00000000, 0.00000000, 1, 3, '', NULL, NULL, '563bb65beb6e8', 'UTC', NULL, 0.00000000, 0.00000000, 0.00000000, '0', '0', 0.00, 0),
(5, 'Vivek', 'Paliwal', '+919873915839', 'vivekplwl@gmail.com', '$2y$10$hkiD50TovTX9dsLQOkAUyuKCDhcaJ2F5oO3muewIkextYKbUQC/De', '', 'bio', 'Noida', '', '', '201301', '11111', 'ios', 'manual', '', '2y109ChrpLu1cQPxHwTJJ4BCZOh1PLdqkTPCSSf3SU7Dw49jpWSgXER4', 0, 1450415578, '2015-11-06 20:12:58', '2015-11-11 18:46:51', 0, 1, 0.00000000, 0.00000000, 1, 3, '', NULL, NULL, '563ca75a8ad13', 'UTC', NULL, 0.00000000, 0.00000000, 0.00000000, '2009', 'up16k1234', 0.00, 0),
(6, 'Vivek', 'Paliwal', '+919873915839', 'iosdev.vivek@gmail.com', '', 'http://amigatesting.com/android/newtaxi/public/uploads/205e8173b72c772b6807f639cda189d257f9596e.jpg', '', 'Noida', '', '', '201301', '11111', 'ios', 'facebook', '10150573163964996', '2y10lNeXpyCVz8B6HEZhGD9y4zRAqE2WW6vAqHRiuzMCDzpFmOlxEna', 0, 1450415926, '2015-11-06 20:14:48', '2015-11-11 18:46:55', 0, 1, 0.00000000, 0.00000000, 1, 3, '', NULL, NULL, '563ca7c83d440', 'UTC', NULL, 0.00000000, 0.00000000, 0.00000000, '2009', '1234', 0.00, 0),
(7, 'shaquan', 'winters', '', 'shaquanwinters@hotmail.com', '$2y$10$KrpH/hN5.QnD5cUvbQFJLuKZ9QHYKJjNKQ3ial3wMcMezxZwfFB5.', '', '', '', '', '', '', '', 'android', 'manual', '', '2y10XzI05qs36bv2qLvqL1F7FzQWhzkQ5H9VTyWmA96sAUzvuCd4Rem', 0, 1451321531, '2015-11-17 07:52:11', '2015-11-17 07:52:11', 0, 1, 0.00000000, 0.00000000, 0, 3, '', NULL, NULL, '564a7a3b59b83', 'Canada/Atlantic', NULL, 0.00000000, 0.00000000, 0.00000000, '0', '0', 0.00, 0),
(8, 'Shaquan', 'Winters', '8527059496', 'shaquan60@gmail.com', '$2y$10$Xdf/Zzt1n7XmKayVdjewyuzRT.18D7SiR88Pq6DWlFWwKzUp/.Gyu', '', '', '', '', '', '', '', 'android', 'manual', '', '2y10WfUKuS8FHySzMrR0ODaA0eViePtbEXiHoKJxyEZ4AuZy9tCt8Fl', 0, 1451361079, '2015-11-17 18:51:19', '2015-11-17 18:51:19', 0, 1, 0.00000000, 0.00000000, 0, 3, '', NULL, NULL, '564b14b746239', 'Canada/Atlantic', NULL, 0.00000000, 0.00000000, 0.00000000, '0', '0', 0.00, 0),
(9, 'ratan2222', 'singh', '8527059496', 'xipixel2015@gmail.com', '$2y$10$bw.NtQCkHm0dJjTqYM53N.rF3V/.5FMLFGE0iS6B2ZaeHRUlgwMOu', '', '', '', '', '', '', '', 'android', 'manual', '', '2y10MtK1YEMbvPEaNjLpf4untu4M31ob4p9gtv55229omGIC7NFbCk6', 0, 1451361257, '2015-11-17 18:54:17', '2015-11-17 19:07:13', 0, 1, 0.00000000, 0.00000000, 1, 3, '', NULL, NULL, '564b1568c9421', 'America/Noronha', NULL, 0.00000000, 0.00000000, 0.00000000, '0', '0', 0.00, 0),
(10, 'Krish', 'Singh', '+11452369870', 'amigainformatics2015@gmail.com', '$2y$10$7VBEG/EeEPBen2uSHga.P.FmLU/3/V84Glm.xqIuATKVhuohF7aBW', '', 'unknown', 'Noida', '', '', '201301', '0', 'android', 'manual', '', '2y10H0uCASqFklUWiKgQVYmPu0W6Gd8E5teRzdgCwQtvaY8i0dtYNtK', 0, 1451695086, '2015-11-19 17:52:01', '2015-11-23 15:28:12', 1, 1, 28.61127120, 77.38380270, 1, 3, '', NULL, NULL, '564da9d122b57', 'UTC', NULL, 28.61127120, 77.38380270, 0.00000000, 'Innova', 'UP16 TF5692', 4.26, 8),
(11, 'Krishna', 'Moorthy', '+6591472143', 'krishnamoorthy73@gmail.com', '', 'http://amigatesting.com/android/newtaxi/public/uploads/2182562850280888ceaec215cfd65a32593d4916.', '', 'Blk 445 Hougang', '', '', '530445', 'APA91bH4rfgNqX6_SPjfj_olgM0RdPY_sc5FxsB-JcGeKrV1P98e8EnXm96mK4E3kncaW0F5vUhOQd7PAyUcA6D_G3EVgFRo6QdlIsByQVtO-so3wIroc3YnjPJIJmgxsKJRCm3jSL--', 'android', 'facebook', '10204853193962462', '2y10kGy7TWg23lqSMGPKj7gRumKm0m2g6xyrmVwSbJBwvEWlTeQqORGu', 0, 1451572339, '2015-11-20 05:32:10', '2015-11-22 19:47:58', 0, 1, 1.37901000, 103.89456260, 0, 3, '', NULL, NULL, '564e4dea95182', 'UTC', NULL, 1.37901000, 103.89456260, 0.00000000, 'Motorcycle', 'FBB9262S', 0.00, 0),
(12, 'manjeet', 'Gupta', '343434343', 'manjeet.amiga@gmail.com', '$2y$10$ofcoabjK/GsKphiqUxOjNOJVQmRMX5PeaxNQri49kt9ILi3F9oEKS', '', '', '', '', '', '', '', 'android', 'manual', '', '2y10Huzaqd5uw4Rz462J4R2fyqPYpYmBq2A55mWstuFAbexIblAnG', 0, 1451868653, '2015-11-23 15:50:53', '2015-11-23 15:53:52', 0, 1, 0.00000000, 0.00000000, 1, 3, '', NULL, NULL, '5652d36d72578', 'Asia/Calcutta', NULL, 0.00000000, 0.00000000, 0.00000000, '0', '0', 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `walker_documents`
--

CREATE TABLE IF NOT EXISTS `walker_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `walker_id` int(11) NOT NULL,
  `document_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `walker_documents`
--

INSERT INTO `walker_documents` (`id`, `walker_id`, `document_id`, `url`, `created_at`, `updated_at`) VALUES
(1, 2, '1', 'http://localhost/taxi/android/newtaxi/public/uploads/c83ce682666dc756b8dba12c49cdfa9c445d92dd.png', '2015-11-28 06:22:07', '2015-11-28 06:22:07'),
(2, 2, '2', 'http://localhost/taxi/android/newtaxi/public/uploads/1dacd1845e6d24c134032e90350dd5e5398eabb1.png', '2015-11-28 06:22:07', '2015-11-28 06:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `walker_services`
--

CREATE TABLE IF NOT EXISTS `walker_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price_per_unit_distance` float(8,2) NOT NULL DEFAULT '0.00',
  `price_per_unit_time` float(8,2) NOT NULL DEFAULT '0.00',
  `base_price` float(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `walker_services_provider_id_index` (`provider_id`),
  KEY `walker_services_type_index` (`type`),
  KEY `walker_services_price_per_unit_distance_index` (`price_per_unit_distance`),
  KEY `walker_services_price_per_unit_time_index` (`price_per_unit_time`),
  KEY `walker_services_base_price_index` (`base_price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `walker_services`
--

INSERT INTO `walker_services` (`id`, `provider_id`, `type`, `created_at`, `updated_at`, `price_per_unit_distance`, `price_per_unit_time`, `base_price`) VALUES
(6, '4', '3', '2015-11-06 03:04:44', '2015-11-06 03:04:44', 0.00, 0.00, 0.00),
(7, '5', '3', '2015-11-06 20:12:58', '2015-11-06 20:12:58', 0.00, 0.00, 0.00),
(8, '6', '3', '2015-11-06 20:14:48', '2015-11-06 20:14:48', 0.00, 0.00, 0.00),
(9, '7', '3', '2015-11-17 07:52:11', '2015-11-17 07:52:11', 0.00, 0.00, 0.00),
(12, '3', '3', '2015-11-17 17:36:55', '2015-11-17 17:36:55', 10.00, 10.00, 20.00),
(13, '8', '3', '2015-11-17 18:51:19', '2015-11-17 18:51:19', 0.00, 0.00, 0.00),
(14, '9', '3', '2015-11-17 18:54:17', '2015-11-17 18:54:17', 0.00, 0.00, 0.00),
(15, '10', '3', '2015-11-19 17:52:01', '2015-11-19 17:52:01', 0.00, 0.00, 0.00),
(16, '11', '3', '2015-11-20 05:32:10', '2015-11-20 05:32:10', 0.00, 0.00, 0.00),
(17, '12', '3', '2015-11-23 15:50:53', '2015-11-23 15:50:53', 0.00, 0.00, 0.00),
(19, '2', '3', '2015-11-28 06:21:56', '2015-11-28 06:21:56', 0.00, 0.00, 12.00);

-- --------------------------------------------------------

--
-- Table structure for table `walker_type`
--

CREATE TABLE IF NOT EXISTS `walker_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `max_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_default` int(11) NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price_per_unit_distance` double(12,2) NOT NULL DEFAULT '0.00',
  `price_per_unit_time` double(12,2) NOT NULL DEFAULT '0.00',
  `base_price` double(15,2) NOT NULL DEFAULT '0.00',
  `base_distance` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `walker_type`
--

INSERT INTO `walker_type` (`id`, `name`, `max_size`, `is_default`, `is_visible`, `created_at`, `updated_at`, `icon`, `price_per_unit_distance`, `price_per_unit_time`, `base_price`, `base_distance`) VALUES
(3, 'Cab', '4', 1, 1, '2015-11-06 01:38:09', '2015-11-06 01:38:09', 'http://amigatesting.com/android/newtaxi/public/uploads/14467486891767702363.jpg', 1.00, 1.00, 1.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `walk_location`
--

CREATE TABLE IF NOT EXISTS `walk_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `request_id` int(10) unsigned NOT NULL,
  `latitude` double(15,8) NOT NULL,
  `longitude` double(15,8) NOT NULL,
  `distance` float(8,3) NOT NULL,
  `bearing` double(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`id`),
  KEY `walk_location_request_id_foreign` (`request_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=474 ;

--
-- Dumping data for table `walk_location`
--

INSERT INTO `walk_location` (`id`, `created_at`, `updated_at`, `request_id`, `latitude`, `longitude`, `distance`, `bearing`) VALUES
(1, '2015-11-19 21:17:34', '2015-11-19 21:17:34', 16, 28.61123170, 77.38374850, 0.000, 0.00004465),
(2, '2015-11-19 21:17:39', '2015-11-19 21:17:39', 16, 28.61123090, 77.38374810, 0.000, 0.00006037),
(3, '2015-11-20 20:19:52', '2015-11-20 20:19:52', 19, 28.61126810, 77.38374630, 0.000, 0.00000000),
(4, '2015-11-20 20:19:54', '2015-11-20 20:19:54', 19, 28.61126810, 77.38374630, 0.000, 0.00000000),
(5, '2015-11-20 20:19:56', '2015-11-20 20:19:56', 19, 28.61126720, 77.38374540, 0.133, 0.00000000),
(6, '2015-11-20 20:19:57', '2015-11-20 20:19:57', 19, 28.61126720, 77.38374540, 0.133, 0.00000000),
(7, '2015-11-20 20:19:59', '2015-11-20 20:19:59', 19, 28.61126720, 77.38374540, 0.133, 0.00000000),
(8, '2015-11-20 20:20:01', '2015-11-20 20:20:01', 19, 28.61126640, 77.38374450, 0.258, 0.00000000),
(9, '2015-11-20 20:20:02', '2015-11-20 20:20:02', 19, 28.61126640, 77.38374450, 0.258, 0.00000000),
(10, '2015-11-20 20:20:04', '2015-11-20 20:20:04', 19, 28.61126640, 77.38374450, 0.258, 0.00000000),
(11, '2015-11-20 20:20:05', '2015-11-20 20:20:05', 19, 28.61126590, 77.38374380, 0.346, 0.00000000),
(12, '2015-11-20 20:20:07', '2015-11-20 20:20:07', 19, 28.61126590, 77.38374380, 0.346, 0.00000000),
(13, '2015-11-20 20:20:09', '2015-11-20 20:20:09', 19, 28.61126500, 77.38374280, 0.486, 0.00000000),
(14, '2015-11-20 20:20:10', '2015-11-20 20:20:10', 19, 28.61126400, 77.38374170, 0.641, 0.00000000),
(15, '2015-11-20 20:20:12', '2015-11-20 20:20:12', 19, 28.61126400, 77.38374170, 0.641, 0.00000000),
(16, '2015-11-20 20:20:13', '2015-11-20 20:20:13', 19, 28.61126400, 77.38374170, 0.641, 0.00000000),
(17, '2015-11-20 20:20:15', '2015-11-20 20:20:15', 19, 28.61126320, 77.38374090, 0.759, 0.00000000),
(18, '2015-11-20 20:20:16', '2015-11-20 20:20:16', 19, 28.61126320, 77.38374090, 0.759, 0.00000000),
(19, '2015-11-20 20:20:18', '2015-11-20 20:20:18', 19, 28.61126320, 77.38374090, 0.759, 0.00000000),
(20, '2015-11-20 20:20:20', '2015-11-20 20:20:20', 19, 28.61126250, 77.38374020, 0.863, 0.00000000),
(21, '2015-11-20 20:20:21', '2015-11-20 20:20:21', 19, 28.61126250, 77.38374020, 0.863, 0.00000000),
(22, '2015-11-20 20:20:23', '2015-11-20 20:20:23', 19, 28.61126250, 77.38374020, 0.863, 0.00000000),
(23, '2015-11-20 20:20:26', '2015-11-20 20:20:26', 19, 28.61126170, 77.38373940, 0.981, 0.00000000),
(24, '2015-11-20 20:20:26', '2015-11-20 20:20:26', 19, 28.61126170, 77.38373940, 0.007, 0.00000000),
(25, '2015-11-20 20:24:05', '2015-11-20 20:24:05', 21, 28.61127000, 77.38374340, 0.000, 0.00000000),
(26, '2015-11-20 20:24:06', '2015-11-20 20:24:06', 21, 28.61127000, 77.38374340, 0.000, 0.00000000),
(27, '2015-11-20 20:24:08', '2015-11-20 20:24:08', 21, 28.61127000, 77.38374340, 0.000, 0.00000000),
(28, '2015-11-20 20:24:09', '2015-11-20 20:24:09', 21, 28.61126860, 77.38374260, 0.174, 0.00000000),
(29, '2015-11-20 20:24:11', '2015-11-20 20:24:11', 21, 28.61126860, 77.38374260, 0.174, 0.00000000),
(30, '2015-11-20 20:24:14', '2015-11-20 20:24:14', 21, 28.61126860, 77.38374260, 0.174, 0.00000000),
(31, '2015-11-20 20:24:16', '2015-11-20 20:24:16', 21, 28.61126820, 77.38374270, 0.220, 0.00000000),
(32, '2015-11-20 20:24:17', '2015-11-20 20:24:17', 21, 28.61126820, 77.38374270, 0.220, 0.00000000),
(33, '2015-11-20 20:24:19', '2015-11-20 20:24:19', 21, 28.61126740, 77.38374260, 0.309, 0.00000000),
(34, '2015-11-20 20:24:21', '2015-11-20 20:24:21', 21, 28.61126740, 77.38374260, 0.309, 0.00000000),
(35, '2015-11-20 20:24:22', '2015-11-20 20:24:22', 21, 28.61126740, 77.38374260, 0.309, 0.00000000),
(36, '2015-11-20 20:24:24', '2015-11-20 20:24:24', 21, 28.61126650, 77.38374230, 0.413, 0.00000000),
(37, '2015-11-20 20:24:25', '2015-11-20 20:24:25', 21, 28.61126650, 77.38374230, 0.413, 0.00000000),
(38, '2015-11-20 20:24:27', '2015-11-20 20:24:27', 21, 28.61126650, 77.38374230, 0.413, 0.00000000),
(39, '2015-11-20 20:24:29', '2015-11-20 20:24:29', 21, 28.61126540, 77.38374150, 0.558, 0.00000000),
(40, '2015-11-20 20:24:30', '2015-11-20 20:24:30', 21, 28.61126540, 77.38374150, 0.558, 0.00000000),
(41, '2015-11-20 20:24:32', '2015-11-20 20:24:32', 21, 28.61126540, 77.38374150, 0.558, 0.00000000),
(42, '2015-11-20 20:24:33', '2015-11-20 20:24:33', 21, 28.61126540, 77.38374150, 0.558, 0.00000000),
(43, '2015-11-20 20:24:36', '2015-11-20 20:24:36', 21, 28.61126490, 77.38374150, 0.614, 0.00000000),
(44, '2015-11-20 20:24:36', '2015-11-20 20:24:36', 21, 28.61126490, 77.38374150, 0.007, 0.00000000),
(45, '2015-11-20 20:28:21', '2015-11-20 20:28:21', 22, 28.61124640, 77.38372670, 0.000, 0.00000000),
(46, '2015-11-20 20:28:22', '2015-11-20 20:28:22', 22, 28.61124640, 77.38372670, 0.000, 0.00000000),
(47, '2015-11-20 20:28:23', '2015-11-20 20:28:23', 22, 28.61124640, 77.38372670, 0.000, 0.00000000),
(48, '2015-11-20 20:28:25', '2015-11-20 20:28:25', 22, 28.61124520, 77.38372740, 0.150, 0.00000000),
(49, '2015-11-20 20:28:27', '2015-11-20 20:28:27', 22, 28.61124520, 77.38372740, 0.150, 0.00000000),
(50, '2015-11-20 20:28:29', '2015-11-20 20:28:29', 22, 28.61124520, 77.38372740, 0.150, 0.00000000),
(51, '2015-11-20 20:28:31', '2015-11-20 20:28:31', 22, 28.61124450, 77.38372700, 0.237, 0.00000000),
(52, '2015-11-20 20:28:33', '2015-11-20 20:28:33', 22, 28.61124450, 77.38372700, 0.237, 0.00000000),
(53, '2015-11-20 20:28:34', '2015-11-20 20:28:34', 22, 28.61124350, 77.38372610, 0.379, 0.00000000),
(54, '2015-11-20 20:28:35', '2015-11-20 20:28:35', 22, 28.61124350, 77.38372610, 0.379, 0.00000000),
(55, '2015-11-20 20:28:38', '2015-11-20 20:28:38', 22, 28.61124350, 77.38372610, 0.379, 0.00000000),
(56, '2015-11-20 20:28:39', '2015-11-20 20:28:39', 22, 28.61124350, 77.38372610, 0.379, 0.00000000),
(57, '2015-11-20 20:28:41', '2015-11-20 20:28:41', 22, 28.61124320, 77.38372580, 0.423, 0.00000000),
(58, '2015-11-20 20:28:42', '2015-11-20 20:28:42', 22, 28.61124320, 77.38372580, 0.423, 0.00000000),
(59, '2015-11-20 20:28:44', '2015-11-20 20:28:44', 22, 28.61124320, 77.38372580, 0.423, 0.00000000),
(60, '2015-11-20 20:28:46', '2015-11-20 20:28:46', 22, 28.61124320, 77.38372580, 0.001, 0.00000000),
(61, '2015-11-21 15:39:00', '2015-11-21 15:39:00', 26, 28.61125960, 77.38375400, 0.000, 0.00002830),
(62, '2015-11-21 15:39:01', '2015-11-21 15:39:01', 26, 28.61125960, 77.38375400, 0.000, 0.00000000),
(63, '2015-11-21 15:39:03', '2015-11-21 15:39:03', 26, 28.61125960, 77.38375400, 0.000, 0.00000000),
(64, '2015-11-21 15:39:04', '2015-11-21 15:39:04', 26, 28.61125940, 77.38375360, 0.045, 0.00000000),
(65, '2015-11-21 15:39:08', '2015-11-21 15:39:08', 26, 28.61125940, 77.38375360, 0.045, 0.00000000),
(66, '2015-11-21 15:39:11', '2015-11-21 15:39:11', 26, 28.61125950, 77.38375340, 0.067, 0.00000000),
(67, '2015-11-21 15:39:13', '2015-11-21 15:39:13', 26, 28.61125920, 77.38375230, 0.179, 0.00000000),
(68, '2015-11-21 15:39:14', '2015-11-21 15:39:14', 26, 28.61125970, 77.38375230, 0.235, 0.00000000),
(69, '2015-11-21 15:39:16', '2015-11-21 15:39:16', 26, 28.61125970, 77.38375230, 0.235, 0.00000000),
(70, '2015-11-21 15:39:18', '2015-11-21 15:39:18', 26, 28.61125970, 77.38375230, 0.000, 0.00000000),
(71, '2015-11-21 15:41:41', '2015-11-21 15:41:41', 27, 28.61125910, 77.38374820, 0.000, 0.00000000),
(72, '2015-11-21 15:41:43', '2015-11-21 15:41:43', 27, 28.61125910, 77.38374820, 0.000, 0.00000000),
(73, '2015-11-21 15:41:45', '2015-11-21 15:41:45', 27, 28.61125880, 77.38374800, 0.039, 0.00000000),
(74, '2015-11-21 15:41:48', '2015-11-21 15:41:48', 27, 28.61125880, 77.38374800, 0.039, 0.00000000),
(75, '2015-11-21 15:41:49', '2015-11-21 15:41:49', 27, 28.61125830, 77.38374770, 0.102, 0.00000000),
(76, '2015-11-21 15:41:56', '2015-11-21 15:41:56', 27, 28.61125830, 77.38374770, 0.102, 0.00000000),
(77, '2015-11-21 15:41:57', '2015-11-21 15:41:57', 27, 28.61125790, 77.38374720, 0.168, 0.00000000),
(78, '2015-11-21 15:41:59', '2015-11-21 15:41:59', 27, 28.61125790, 77.38374720, 0.168, 0.00000000),
(79, '2015-11-21 15:42:00', '2015-11-21 15:42:00', 27, 28.61125750, 77.38374680, 0.227, 0.00000000),
(80, '2015-11-21 15:42:03', '2015-11-21 15:42:03', 27, 28.61125750, 77.38374680, 0.227, 0.00000000),
(81, '2015-11-21 15:42:06', '2015-11-21 15:42:06', 27, 28.61125720, 77.38374640, 0.278, 0.00000000),
(82, '2015-11-21 15:42:08', '2015-11-21 15:42:08', 27, 28.61125720, 77.38374640, 0.278, 0.00000000),
(83, '2015-11-21 15:42:10', '2015-11-21 15:42:10', 27, 28.61125680, 77.38374590, 0.344, 0.00000000),
(84, '2015-11-21 15:42:13', '2015-11-21 15:42:13', 27, 28.61125680, 77.38374590, 0.344, 0.00000000),
(85, '2015-11-21 15:42:15', '2015-11-21 15:42:15', 27, 28.61125660, 77.38374550, 0.389, 0.00000000),
(86, '2015-11-21 15:42:18', '2015-11-21 15:42:18', 27, 28.61125660, 77.38374550, 0.389, 0.00000000),
(87, '2015-11-21 15:42:19', '2015-11-21 15:42:19', 27, 28.61125660, 77.38374540, 0.000, 0.00000607),
(88, '2015-11-21 17:34:15', '2015-11-21 17:34:15', 30, 28.61124390, 77.38375100, 0.000, 0.00000000),
(89, '2015-11-21 17:34:35', '2015-11-21 17:34:35', 30, 28.61124220, 77.38375530, 0.460, 0.00000000),
(90, '2015-11-21 17:34:37', '2015-11-21 17:34:37', 30, 28.61123100, 77.38382720, 7.587, 0.00000000),
(91, '2015-11-21 17:34:38', '2015-11-21 17:34:38', 30, 28.61121090, 77.38380020, 11.042, 0.00000000),
(92, '2015-11-21 17:34:39', '2015-11-21 17:34:39', 30, 28.61121090, 77.38380020, 11.042, 0.00000000),
(93, '2015-11-21 17:34:41', '2015-11-21 17:34:41', 30, 28.61121090, 77.38380020, 11.042, 0.00000000),
(94, '2015-11-21 17:34:42', '2015-11-21 17:34:42', 30, 28.61121090, 77.38380020, 11.042, 0.00000000),
(95, '2015-11-21 17:34:43', '2015-11-21 17:34:43', 30, 28.61120620, 77.38382360, 13.385, 0.00000000),
(96, '2015-11-21 17:34:45', '2015-11-21 17:34:45', 30, 28.61120620, 77.38382360, 13.385, 0.00000000),
(97, '2015-11-21 17:34:46', '2015-11-21 17:34:46', 30, 28.61120620, 77.38382360, 13.385, 0.00000000),
(98, '2015-11-21 17:34:47', '2015-11-21 17:34:47', 30, 28.61120620, 77.38382360, 13.385, 0.00000000),
(99, '2015-11-21 17:34:48', '2015-11-21 17:34:48', 30, 28.61121170, 77.38376010, 19.612, 0.00000000),
(100, '2015-11-21 17:34:50', '2015-11-21 17:34:50', 30, 28.61121170, 77.38376010, 19.612, 0.00000000),
(101, '2015-11-21 17:34:51', '2015-11-21 17:34:51', 30, 28.61121170, 77.38376010, 19.612, 0.00000000),
(102, '2015-11-21 17:34:52', '2015-11-21 17:34:52', 30, 28.61121170, 77.38376010, 19.612, 0.00000000),
(103, '2015-11-21 17:34:53', '2015-11-21 17:34:53', 30, 28.61121080, 77.38376160, 19.789, 0.00000000),
(104, '2015-11-21 17:34:54', '2015-11-21 17:34:54', 30, 28.61126080, 77.38373860, 25.784, 0.00000000),
(105, '2015-11-21 17:34:56', '2015-11-21 17:34:56', 30, 28.61126080, 77.38373860, 25.784, 0.00000000),
(106, '2015-11-21 17:34:57', '2015-11-21 17:34:57', 30, 28.61126080, 77.38373860, 25.784, 0.00000000),
(107, '2015-11-21 17:34:58', '2015-11-21 17:34:58', 30, 28.61123440, 77.38379420, 31.953, 0.00000000),
(108, '2015-11-21 17:34:59', '2015-11-21 17:34:59', 30, 28.61123440, 77.38379420, 31.953, 0.00000000),
(109, '2015-11-21 17:35:00', '2015-11-21 17:35:00', 30, 28.61123440, 77.38379420, 31.953, 0.00000000),
(110, '2015-11-21 17:35:02', '2015-11-21 17:35:02', 30, 28.61123440, 77.38379420, 31.953, 0.00000000),
(111, '2015-11-21 17:35:03', '2015-11-21 17:35:03', 30, 28.61123440, 77.38379420, 31.953, 0.00000000),
(112, '2015-11-21 17:35:04', '2015-11-21 17:35:04', 30, 28.61120830, 77.38377330, 35.500, 0.00000000),
(113, '2015-11-21 17:35:05', '2015-11-21 17:35:05', 30, 28.61120830, 77.38377330, 35.500, 0.00000000),
(114, '2015-11-21 17:35:07', '2015-11-21 17:35:07', 30, 28.61120830, 77.38377330, 35.500, 0.00000000),
(115, '2015-11-21 17:35:08', '2015-11-21 17:35:08', 30, 28.61120830, 77.38377330, 35.500, 0.00000000),
(116, '2015-11-21 17:35:09', '2015-11-21 17:35:09', 30, 28.61123970, 77.38372210, 41.595, 0.00000000),
(117, '2015-11-21 17:35:10', '2015-11-21 17:35:10', 30, 28.61123970, 77.38372210, 41.595, 0.00000000),
(118, '2015-11-21 17:35:12', '2015-11-21 17:35:12', 30, 28.61123970, 77.38372210, 41.595, 0.00000000),
(119, '2015-11-21 17:35:14', '2015-11-21 17:35:14', 30, 28.61123340, 77.38371520, 42.567, 0.00000000),
(120, '2015-11-21 17:35:15', '2015-11-21 17:35:15', 30, 28.61123340, 77.38371520, 42.567, 0.00000000),
(121, '2015-11-21 17:35:16', '2015-11-21 17:35:16', 30, 28.61123340, 77.38371520, 42.567, 0.00000000),
(122, '2015-11-21 17:35:17', '2015-11-21 17:35:17', 30, 28.61123340, 77.38371520, 42.567, 0.00000000),
(123, '2015-11-21 17:35:17', '2015-11-21 17:35:17', 30, 28.61123340, 77.38371520, 42.567, 0.00000000),
(124, '2015-11-21 17:35:18', '2015-11-21 17:35:18', 30, 28.61121620, 77.38371190, 44.506, 0.00000000),
(125, '2015-11-21 17:35:19', '2015-11-21 17:35:19', 30, 28.61121620, 77.38371190, 44.506, 0.00000000),
(126, '2015-11-21 17:35:20', '2015-11-21 17:35:20', 30, 28.61121620, 77.38371190, 44.506, 0.00000000),
(127, '2015-11-21 17:35:20', '2015-11-21 17:35:20', 30, 28.61121620, 77.38371190, 44.506, 0.00000000),
(128, '2015-11-21 17:35:21', '2015-11-21 17:35:21', 30, 28.61121620, 77.38371190, 44.506, 0.00000000),
(129, '2015-11-21 17:35:22', '2015-11-21 17:35:22', 30, 28.61121620, 77.38371190, 44.506, 0.00000000),
(130, '2015-11-21 17:35:23', '2015-11-21 17:35:23', 30, 28.61121620, 77.38371190, 44.506, 0.00000000),
(131, '2015-11-21 17:35:23', '2015-11-21 17:35:23', 30, 28.61122140, 77.38377170, 50.371, 0.00000000),
(132, '2015-11-21 17:35:24', '2015-11-21 17:35:24', 30, 28.61122140, 77.38377170, 50.371, 0.00000000),
(133, '2015-11-21 17:35:25', '2015-11-21 17:35:25', 30, 28.61122140, 77.38377170, 50.371, 0.00000000),
(134, '2015-11-21 17:35:26', '2015-11-21 17:35:26', 30, 28.61122140, 77.38377170, 50.371, 0.00000000),
(135, '2015-11-21 17:35:27', '2015-11-21 17:35:27', 30, 28.61122140, 77.38377170, 50.371, 0.00000000),
(136, '2015-11-21 17:35:28', '2015-11-21 17:35:28', 30, 28.61122140, 77.38377170, 50.371, 0.00000000),
(137, '2015-11-21 17:35:28', '2015-11-21 17:35:28', 30, 28.61122620, 77.38377050, 50.917, 0.00000000),
(138, '2015-11-21 17:35:29', '2015-11-21 17:35:29', 30, 28.61122620, 77.38377050, 50.917, 0.00000000),
(139, '2015-11-21 17:35:30', '2015-11-21 17:35:30', 30, 28.61122620, 77.38377050, 50.917, 0.00000000),
(140, '2015-11-21 17:35:31', '2015-11-21 17:35:31', 30, 28.61122620, 77.38377050, 50.917, 0.00000000),
(141, '2015-11-21 17:35:31', '2015-11-21 17:35:31', 30, 28.61122620, 77.38377050, 50.917, 0.00000000),
(142, '2015-11-21 17:35:32', '2015-11-21 17:35:32', 30, 28.61122620, 77.38377050, 50.917, 0.00000000),
(143, '2015-11-21 17:35:33', '2015-11-21 17:35:33', 30, 28.61122620, 77.38377050, 50.917, 0.00000000),
(144, '2015-11-21 17:35:33', '2015-11-21 17:35:33', 30, 28.61122620, 77.38377050, 50.917, 0.00000000),
(145, '2015-11-21 17:35:34', '2015-11-21 17:35:34', 30, 28.61121470, 77.38375150, 53.169, 0.00000000),
(146, '2015-11-21 17:35:35', '2015-11-21 17:35:35', 30, 28.61121470, 77.38375150, 53.169, 0.00000000),
(147, '2015-11-21 17:35:36', '2015-11-21 17:35:36', 30, 28.61121470, 77.38375150, 53.169, 0.00000000),
(148, '2015-11-21 17:35:36', '2015-11-21 17:35:36', 30, 28.61121470, 77.38375150, 53.169, 0.00000000),
(149, '2015-11-21 17:35:37', '2015-11-21 17:35:37', 30, 28.61121470, 77.38375150, 53.169, 0.00000000),
(150, '2015-11-21 17:35:39', '2015-11-21 17:35:39', 30, 28.61121470, 77.38375150, 53.169, 0.00000000),
(151, '2015-11-21 17:35:40', '2015-11-21 17:35:40', 30, 28.61121640, 77.38376260, 54.269, 0.00000000),
(152, '2015-11-21 17:35:41', '2015-11-21 17:35:41', 30, 28.61121640, 77.38376260, 54.269, 0.00000000),
(153, '2015-11-21 17:35:41', '2015-11-21 17:35:41', 30, 28.61121640, 77.38376260, 54.269, 0.00000000),
(154, '2015-11-21 17:35:42', '2015-11-21 17:35:42', 30, 28.61121640, 77.38376260, 54.269, 0.00000000),
(155, '2015-11-21 17:35:43', '2015-11-21 17:35:43', 30, 28.61121640, 77.38376260, 54.269, 0.00000000),
(156, '2015-11-21 17:35:44', '2015-11-21 17:35:44', 30, 28.61124250, 77.38372410, 59.016, 0.00000000),
(157, '2015-11-21 17:35:45', '2015-11-21 17:35:45', 30, 28.61124250, 77.38372410, 59.016, 0.00000000),
(158, '2015-11-21 17:35:46', '2015-11-21 17:35:46', 30, 28.61124250, 77.38372410, 59.016, 0.00000000),
(159, '2015-11-21 17:35:47', '2015-11-21 17:35:47', 30, 28.61124250, 77.38372410, 59.016, 0.00000000),
(160, '2015-11-21 17:35:48', '2015-11-21 17:35:48', 30, 28.61124250, 77.38372410, 59.016, 0.00000000),
(161, '2015-11-21 17:35:48', '2015-11-21 17:35:48', 30, 28.61124760, 77.38372560, 59.602, 0.00000000),
(162, '2015-11-21 17:35:49', '2015-11-21 17:35:49', 30, 28.61124760, 77.38372560, 59.602, 0.00000000),
(163, '2015-11-21 17:35:50', '2015-11-21 17:35:50', 30, 28.61124760, 77.38372560, 59.602, 0.00000000),
(164, '2015-11-21 17:35:51', '2015-11-21 17:35:51', 30, 28.61124760, 77.38372560, 59.602, 0.00000000),
(165, '2015-11-21 17:35:52', '2015-11-21 17:35:52', 30, 28.61124760, 77.38372560, 59.602, 0.00000000),
(166, '2015-11-21 17:35:52', '2015-11-21 17:35:52', 30, 28.61124760, 77.38372560, 59.602, 0.00000000),
(167, '2015-11-21 17:35:53', '2015-11-21 17:35:53', 30, 28.61124760, 77.38372560, 59.602, 0.00000000),
(168, '2015-11-21 17:35:55', '2015-11-21 17:35:55', 30, 28.61124290, 77.38373090, 60.337, 0.00000000),
(169, '2015-11-21 17:35:57', '2015-11-21 17:35:57', 30, 28.61124290, 77.38373090, 60.337, 0.00000000),
(170, '2015-11-21 17:35:58', '2015-11-21 17:35:58', 30, 28.61124290, 77.38373090, 60.337, 0.00000000),
(171, '2015-11-21 17:35:58', '2015-11-21 17:35:58', 30, 28.61124290, 77.38373090, 60.337, 0.00000000),
(172, '2015-11-21 17:35:59', '2015-11-21 17:35:59', 30, 28.61122760, 77.38371850, 62.425, 0.00000000),
(173, '2015-11-21 17:36:00', '2015-11-21 17:36:00', 30, 28.61122760, 77.38371850, 62.425, 0.00000000),
(174, '2015-11-21 17:36:01', '2015-11-21 17:36:01', 30, 28.61122760, 77.38371850, 62.425, 0.00000000),
(175, '2015-11-21 17:36:02', '2015-11-21 17:36:02', 30, 28.61122760, 77.38371850, 62.425, 0.00000000),
(176, '2015-11-21 17:36:02', '2015-11-21 17:36:02', 30, 28.61122760, 77.38371850, 62.425, 0.00000000),
(177, '2015-11-21 17:36:03', '2015-11-21 17:36:03', 30, 28.61122760, 77.38371850, 62.425, 0.00000000),
(178, '2015-11-21 17:36:04', '2015-11-21 17:36:04', 30, 28.61122760, 77.38371850, 62.425, 0.00000000),
(179, '2015-11-21 17:36:05', '2015-11-21 17:36:05', 30, 28.61123870, 77.38373170, 64.209, 0.00000000),
(180, '2015-11-21 17:36:06', '2015-11-21 17:36:06', 30, 28.61123870, 77.38373170, 64.209, 0.00000000),
(181, '2015-11-21 17:36:07', '2015-11-21 17:36:07', 30, 28.61123870, 77.38373170, 64.209, 0.00000000),
(182, '2015-11-21 17:36:08', '2015-11-21 17:36:08', 30, 28.61123870, 77.38373170, 64.209, 0.00000000),
(183, '2015-11-21 17:36:08', '2015-11-21 17:36:08', 30, 28.61123870, 77.38373170, 64.209, 0.00000000),
(184, '2015-11-21 17:36:09', '2015-11-21 17:36:09', 30, 28.61124450, 77.38372670, 65.018, 0.00000000),
(185, '2015-11-21 17:36:10', '2015-11-21 17:36:10', 30, 28.61124450, 77.38372670, 65.018, 0.00000000),
(186, '2015-11-21 17:36:11', '2015-11-21 17:36:11', 30, 28.61124450, 77.38372670, 65.018, 0.00000000),
(187, '2015-11-21 17:36:13', '2015-11-21 17:36:13', 30, 28.61124450, 77.38372670, 65.018, 0.00000000),
(188, '2015-11-21 17:36:13', '2015-11-21 17:36:13', 30, 28.61124450, 77.38372670, 65.018, 0.00000000),
(189, '2015-11-21 17:36:14', '2015-11-21 17:36:14', 30, 28.61124310, 77.38372240, 65.466, 0.00000000),
(190, '2015-11-21 17:36:16', '2015-11-21 17:36:16', 30, 28.61124310, 77.38372240, 65.466, 0.00000000),
(191, '2015-11-21 17:36:17', '2015-11-21 17:36:17', 30, 28.61124310, 77.38372240, 65.466, 0.00000000),
(192, '2015-11-21 17:36:18', '2015-11-21 17:36:18', 30, 28.61124310, 77.38372240, 65.466, 0.00000000),
(193, '2015-11-21 17:36:18', '2015-11-21 17:36:18', 30, 28.61124310, 77.38372240, 65.466, 0.00000000),
(194, '2015-11-21 17:36:19', '2015-11-21 17:36:19', 30, 28.61129850, 77.38375920, 72.596, 0.00000000),
(195, '2015-11-21 17:36:20', '2015-11-21 17:36:20', 30, 28.61129850, 77.38375920, 72.596, 0.00000000),
(196, '2015-11-21 17:36:21', '2015-11-21 17:36:21', 30, 28.61129850, 77.38375920, 72.596, 0.00000000),
(197, '2015-11-21 17:36:22', '2015-11-21 17:36:22', 30, 28.61129850, 77.38375920, 72.596, 0.00000000),
(198, '2015-11-21 17:36:23', '2015-11-21 17:36:23', 30, 28.61129850, 77.38375920, 72.596, 0.00000000),
(199, '2015-11-21 17:36:23', '2015-11-21 17:36:23', 30, 28.61129850, 77.38375920, 72.596, 0.00000000),
(200, '2015-11-21 17:36:25', '2015-11-21 17:36:25', 30, 28.61129430, 77.38376820, 73.591, 0.00000000),
(201, '2015-11-21 17:36:26', '2015-11-21 17:36:26', 30, 28.61129430, 77.38376820, 73.591, 0.00000000),
(202, '2015-11-21 17:36:27', '2015-11-21 17:36:27', 30, 28.61129430, 77.38376820, 73.591, 0.00000000),
(203, '2015-11-21 17:36:28', '2015-11-21 17:36:28', 30, 28.61129430, 77.38376820, 73.591, 0.00000000),
(204, '2015-11-21 17:36:28', '2015-11-21 17:36:28', 30, 28.61129430, 77.38376820, 73.591, 0.00000000),
(205, '2015-11-21 17:36:29', '2015-11-21 17:36:29', 30, 28.61129250, 77.38377890, 74.654, 0.00000000),
(206, '2015-11-21 17:36:30', '2015-11-21 17:36:30', 30, 28.61129250, 77.38377890, 74.654, 0.00000000),
(207, '2015-11-21 17:36:31', '2015-11-21 17:36:31', 30, 28.61129250, 77.38377890, 74.654, 0.00000000),
(208, '2015-11-21 17:36:31', '2015-11-21 17:36:31', 30, 28.61129250, 77.38377890, 74.654, 0.00000000),
(209, '2015-11-21 17:36:32', '2015-11-21 17:36:32', 30, 28.61129250, 77.38377890, 74.654, 0.00000000),
(210, '2015-11-21 17:36:33', '2015-11-21 17:36:33', 30, 28.61129250, 77.38377890, 74.654, 0.00000000),
(211, '2015-11-21 17:36:34', '2015-11-21 17:36:34', 30, 28.61129250, 77.38377890, 74.654, 0.00000000),
(212, '2015-11-21 17:36:35', '2015-11-21 17:36:35', 30, 28.61128980, 77.38377800, 74.967, 0.00000000),
(213, '2015-11-21 17:36:35', '2015-11-21 17:36:35', 30, 28.61128980, 77.38377800, 74.967, 0.00000000),
(214, '2015-11-21 17:36:36', '2015-11-21 17:36:36', 30, 28.61128980, 77.38377800, 74.967, 0.00000000),
(215, '2015-11-21 17:36:37', '2015-11-21 17:36:37', 30, 28.61128980, 77.38377800, 74.967, 0.00000000),
(216, '2015-11-21 17:36:38', '2015-11-21 17:36:38', 30, 28.61128980, 77.38377800, 74.967, 0.00000000),
(217, '2015-11-21 17:36:39', '2015-11-21 17:36:39', 30, 28.61123190, 77.38372710, 83.098, 0.00000000),
(218, '2015-11-21 17:36:40', '2015-11-21 17:36:40', 30, 28.61123190, 77.38372710, 83.098, 0.00000000),
(219, '2015-11-21 17:36:42', '2015-11-21 17:36:42', 30, 28.61123190, 77.38372710, 83.098, 0.00000000),
(220, '2015-11-21 17:36:43', '2015-11-21 17:36:43', 30, 28.61123190, 77.38372710, 83.098, 0.00000000),
(221, '2015-11-21 17:36:43', '2015-11-21 17:36:43', 30, 28.61123190, 77.38372710, 83.098, 0.00000000),
(222, '2015-11-21 17:36:44', '2015-11-21 17:36:44', 30, 28.61123190, 77.38372710, 83.098, 0.00000000),
(223, '2015-11-21 17:36:45', '2015-11-21 17:36:45', 30, 28.61123710, 77.38373110, 83.796, 0.00000000),
(224, '2015-11-21 17:36:46', '2015-11-21 17:36:46', 30, 28.61123710, 77.38373110, 83.796, 0.00000000),
(225, '2015-11-21 17:36:47', '2015-11-21 17:36:47', 30, 28.61123710, 77.38373110, 83.796, 0.00000000),
(226, '2015-11-21 17:36:47', '2015-11-21 17:36:47', 30, 28.61123710, 77.38373110, 83.796, 0.00000000),
(227, '2015-11-21 17:36:48', '2015-11-21 17:36:48', 30, 28.61123710, 77.38373110, 83.796, 0.00000000),
(228, '2015-11-21 17:36:49', '2015-11-21 17:36:49', 30, 28.61123710, 77.38373110, 83.796, 0.00000000),
(229, '2015-11-21 17:36:51', '2015-11-21 17:36:51', 30, 28.61122980, 77.38371740, 85.360, 0.00000000),
(230, '2015-11-21 17:36:52', '2015-11-21 17:36:52', 30, 28.61122980, 77.38371740, 85.360, 0.00000000),
(231, '2015-11-21 17:36:53', '2015-11-21 17:36:53', 30, 28.61122980, 77.38371740, 85.360, 0.00000000),
(232, '2015-11-21 17:36:53', '2015-11-21 17:36:53', 30, 28.61122980, 77.38371740, 85.360, 0.00000000),
(233, '2015-11-21 17:36:54', '2015-11-21 17:36:54', 30, 28.61122240, 77.38372920, 86.775, 0.00000000),
(234, '2015-11-21 17:36:55', '2015-11-21 17:36:55', 30, 28.61122240, 77.38372920, 86.775, 0.00000000),
(235, '2015-11-21 17:36:56', '2015-11-21 17:36:56', 30, 28.61122240, 77.38372920, 86.775, 0.00000000),
(236, '2015-11-21 17:36:56', '2015-11-21 17:36:56', 30, 28.61122240, 77.38372920, 86.775, 0.00000000),
(237, '2015-11-21 17:36:57', '2015-11-21 17:36:57', 30, 28.61122240, 77.38372920, 86.775, 0.00000000),
(238, '2015-11-21 17:36:58', '2015-11-21 17:36:58', 30, 28.61122240, 77.38372920, 86.775, 0.00000000),
(239, '2015-11-21 17:36:59', '2015-11-21 17:36:59', 30, 28.61122240, 77.38372920, 86.775, 0.00000000),
(240, '2015-11-21 17:36:59', '2015-11-21 17:36:59', 30, 28.61123610, 77.38373570, 88.425, 0.00000000),
(241, '2015-11-21 17:37:00', '2015-11-21 17:37:00', 30, 28.61123610, 77.38373570, 88.425, 0.00000000),
(242, '2015-11-21 17:37:01', '2015-11-21 17:37:01', 30, 28.61123610, 77.38373570, 88.425, 0.00000000),
(243, '2015-11-21 17:37:02', '2015-11-21 17:37:02', 30, 28.61123610, 77.38373570, 88.425, 0.00000000),
(244, '2015-11-21 17:37:02', '2015-11-21 17:37:02', 30, 28.61123610, 77.38373570, 88.425, 0.00000000),
(245, '2015-11-21 17:37:03', '2015-11-21 17:37:03', 30, 28.61123610, 77.38373570, 88.425, 0.00000000),
(246, '2015-11-21 17:37:04', '2015-11-21 17:37:04', 30, 28.61123610, 77.38373570, 88.425, 0.00000000),
(247, '2015-11-21 17:37:05', '2015-11-21 17:37:05', 30, 28.61122220, 77.38373000, 90.067, 0.00000000),
(248, '2015-11-21 17:37:05', '2015-11-21 17:37:05', 30, 28.61122220, 77.38373000, 90.067, 0.00000000),
(249, '2015-11-21 17:37:06', '2015-11-21 17:37:06', 30, 28.61122220, 77.38373000, 90.067, 0.00000000),
(250, '2015-11-21 17:37:07', '2015-11-21 17:37:07', 30, 28.61122220, 77.38373000, 90.067, 0.00000000),
(251, '2015-11-21 17:37:08', '2015-11-21 17:37:08', 30, 28.61122220, 77.38373000, 90.067, 0.00000000),
(252, '2015-11-21 17:37:09', '2015-11-21 17:37:09', 30, 28.61122220, 77.38373000, 90.067, 0.00000000),
(253, '2015-11-21 17:37:11', '2015-11-21 17:37:11', 30, 28.61122220, 77.38373000, 90.067, 0.00000000),
(254, '2015-11-21 17:37:11', '2015-11-21 17:37:11', 30, 28.61122620, 77.38373520, 90.742, 0.00000000),
(255, '2015-11-21 17:37:12', '2015-11-21 17:37:12', 30, 28.61122620, 77.38373520, 90.742, 0.00000000),
(256, '2015-11-21 17:37:13', '2015-11-21 17:37:13', 30, 28.61122620, 77.38373520, 90.742, 0.00000000),
(257, '2015-11-21 17:37:14', '2015-11-21 17:37:14', 30, 28.61122620, 77.38373520, 90.742, 0.00000000),
(258, '2015-11-21 17:37:15', '2015-11-21 17:37:15', 30, 28.61123690, 77.38371440, 93.095, 0.00000000),
(259, '2015-11-21 17:37:15', '2015-11-21 17:37:15', 30, 28.61123690, 77.38371440, 93.095, 0.00000000),
(260, '2015-11-21 17:37:16', '2015-11-21 17:37:16', 30, 28.61123690, 77.38371440, 93.095, 0.00000000),
(261, '2015-11-21 17:37:17', '2015-11-21 17:37:17', 30, 28.61123690, 77.38371440, 93.095, 0.00000000),
(262, '2015-11-21 17:37:18', '2015-11-21 17:37:18', 30, 28.61123690, 77.38371440, 93.095, 0.00000000),
(263, '2015-11-21 17:37:18', '2015-11-21 17:37:18', 30, 28.61123690, 77.38371440, 93.095, 0.00000000),
(264, '2015-11-21 17:37:19', '2015-11-21 17:37:19', 30, 28.61123690, 77.38371440, 93.095, 0.00000000),
(265, '2015-11-21 17:37:20', '2015-11-21 17:37:20', 30, 28.61123060, 77.38370440, 94.296, 0.00000000),
(266, '2015-11-21 17:37:21', '2015-11-21 17:37:21', 30, 28.61123060, 77.38370440, 94.296, 0.00000000),
(267, '2015-11-21 17:37:21', '2015-11-21 17:37:21', 30, 28.61123060, 77.38370440, 94.296, 0.00000000),
(268, '2015-11-21 17:37:22', '2015-11-21 17:37:22', 30, 28.61123060, 77.38370440, 94.296, 0.00000000),
(269, '2015-11-21 17:37:23', '2015-11-21 17:37:23', 30, 28.61123060, 77.38370440, 94.296, 0.00000000),
(270, '2015-11-21 17:37:24', '2015-11-21 17:37:24', 30, 28.61123060, 77.38370440, 94.296, 0.00000000),
(271, '2015-11-21 17:37:24', '2015-11-21 17:37:24', 30, 28.61123060, 77.38370440, 94.296, 0.00000000),
(272, '2015-11-21 17:37:25', '2015-11-21 17:37:25', 30, 28.61123350, 77.38372180, 96.024, 0.00000000),
(273, '2015-11-21 17:37:26', '2015-11-21 17:37:26', 30, 28.61123350, 77.38372180, 96.024, 0.00000000),
(274, '2015-11-21 17:37:27', '2015-11-21 17:37:27', 30, 28.61123350, 77.38372180, 96.024, 0.00000000),
(275, '2015-11-21 17:37:27', '2015-11-21 17:37:27', 30, 28.61123350, 77.38372180, 96.024, 0.00000000),
(276, '2015-11-21 17:37:28', '2015-11-21 17:37:28', 30, 28.61123350, 77.38372180, 96.024, 0.00000000),
(277, '2015-11-21 17:37:29', '2015-11-21 17:37:29', 30, 28.61123350, 77.38372180, 96.024, 0.00000000),
(278, '2015-11-21 17:37:30', '2015-11-21 17:37:30', 30, 28.61123040, 77.38371530, 96.746, 0.00000000),
(279, '2015-11-21 17:37:30', '2015-11-21 17:37:30', 30, 28.61123040, 77.38371530, 96.746, 0.00000000),
(280, '2015-11-21 17:37:31', '2015-11-21 17:37:31', 30, 28.61123040, 77.38371530, 96.746, 0.00000000),
(281, '2015-11-21 17:37:32', '2015-11-21 17:37:32', 30, 28.61123040, 77.38371530, 96.746, 0.00000000),
(282, '2015-11-21 17:37:33', '2015-11-21 17:37:33', 30, 28.61123040, 77.38371530, 96.746, 0.00000000),
(283, '2015-11-21 17:37:33', '2015-11-21 17:37:33', 30, 28.61123040, 77.38371530, 96.746, 0.00000000),
(284, '2015-11-21 17:37:34', '2015-11-21 17:37:34', 30, 28.61123040, 77.38371530, 96.746, 0.00000000),
(285, '2015-11-21 17:37:35', '2015-11-21 17:37:35', 30, 28.61122900, 77.38375140, 100.273, 0.00000000),
(286, '2015-11-21 17:37:36', '2015-11-21 17:37:36', 30, 28.61122900, 77.38375140, 100.273, 0.00000000),
(287, '2015-11-21 17:37:37', '2015-11-21 17:37:37', 30, 28.61122900, 77.38375140, 100.273, 0.00000000),
(288, '2015-11-21 17:37:38', '2015-11-21 17:37:38', 30, 28.61122900, 77.38375140, 100.273, 0.00000000),
(289, '2015-11-21 17:37:39', '2015-11-21 17:37:39', 30, 28.61122900, 77.38375140, 100.273, 0.00000000),
(290, '2015-11-21 17:37:39', '2015-11-21 17:37:39', 30, 28.61123420, 77.38375290, 100.869, 0.00000000),
(291, '2015-11-21 17:37:40', '2015-11-21 17:37:40', 30, 28.61123420, 77.38375290, 100.869, 0.00000000),
(292, '2015-11-21 17:37:41', '2015-11-21 17:37:41', 30, 28.61123420, 77.38375290, 100.869, 0.00000000),
(293, '2015-11-21 17:37:42', '2015-11-21 17:37:42', 30, 28.61123420, 77.38375290, 100.869, 0.00000000),
(294, '2015-11-21 17:37:43', '2015-11-21 17:37:43', 30, 28.61123420, 77.38375290, 100.869, 0.00000000),
(295, '2015-11-21 17:37:44', '2015-11-21 17:37:44', 30, 28.61123420, 77.38375290, 100.869, 0.00000000),
(296, '2015-11-21 17:37:45', '2015-11-21 17:37:45', 30, 28.61123420, 77.38375290, 100.869, 0.00000000),
(297, '2015-11-21 17:37:46', '2015-11-21 17:37:46', 30, 28.61121580, 77.38373780, 103.390, 0.00000000),
(298, '2015-11-21 17:37:48', '2015-11-21 17:37:48', 30, 28.61121580, 77.38373780, 103.390, 0.00000000),
(299, '2015-11-21 17:37:49', '2015-11-21 17:37:49', 30, 28.61121580, 77.38373780, 103.390, 0.00000000),
(300, '2015-11-21 17:37:50', '2015-11-21 17:37:50', 30, 28.61121680, 77.38374240, 103.853, 0.00000000),
(301, '2015-11-21 17:37:50', '2015-11-21 17:37:50', 30, 28.61121680, 77.38374240, 103.853, 0.00000000),
(302, '2015-11-21 17:37:51', '2015-11-21 17:37:51', 30, 28.61121680, 77.38374240, 103.853, 0.00000000),
(303, '2015-11-21 17:37:52', '2015-11-21 17:37:52', 30, 28.61121680, 77.38374240, 103.853, 0.00000000),
(304, '2015-11-21 17:37:53', '2015-11-21 17:37:53', 30, 28.61121680, 77.38374240, 103.853, 0.00000000),
(305, '2015-11-21 17:37:54', '2015-11-21 17:37:54', 30, 28.61121680, 77.38374240, 103.853, 0.00000000),
(306, '2015-11-21 17:37:54', '2015-11-21 17:37:54', 30, 28.61121680, 77.38374240, 103.853, 0.00000000),
(307, '2015-11-21 17:37:55', '2015-11-21 17:37:55', 30, 28.61123460, 77.38371230, 107.395, 0.00000000),
(308, '2015-11-21 17:37:57', '2015-11-21 17:37:57', 30, 28.61123460, 77.38371230, 107.395, 0.00000000),
(309, '2015-11-21 17:37:58', '2015-11-21 17:37:58', 30, 28.61123460, 77.38371230, 107.395, 0.00000000),
(310, '2015-11-21 17:37:59', '2015-11-21 17:37:59', 30, 28.61123460, 77.38371230, 107.395, 0.00000000),
(311, '2015-11-21 17:38:00', '2015-11-21 17:38:00', 30, 28.61123460, 77.38371230, 107.395, 0.00000000),
(312, '2015-11-21 17:38:01', '2015-11-21 17:38:01', 30, 28.61122920, 77.38371170, 107.998, 0.00000000),
(313, '2015-11-21 17:38:02', '2015-11-21 17:38:02', 30, 28.61122920, 77.38371170, 107.998, 0.00000000),
(314, '2015-11-21 17:38:02', '2015-11-21 17:38:02', 30, 28.61122920, 77.38371170, 107.998, 0.00000000),
(315, '2015-11-21 17:38:04', '2015-11-21 17:38:04', 30, 28.61122920, 77.38371170, 107.998, 0.00000000),
(316, '2015-11-21 17:38:04', '2015-11-21 17:38:04', 30, 28.61122920, 77.38371170, 107.998, 0.00000000),
(317, '2015-11-21 17:38:05', '2015-11-21 17:38:05', 30, 28.61123250, 77.38372350, 109.207, 0.00000000),
(318, '2015-11-21 17:38:06', '2015-11-21 17:38:06', 30, 28.61123250, 77.38372350, 109.207, 0.00000000),
(319, '2015-11-21 17:38:07', '2015-11-21 17:38:07', 30, 28.61123250, 77.38372350, 109.207, 0.00000000),
(320, '2015-11-21 17:38:08', '2015-11-21 17:38:08', 30, 28.61123250, 77.38372350, 109.207, 0.00000000),
(321, '2015-11-21 17:38:09', '2015-11-21 17:38:09', 30, 28.61123250, 77.38372350, 109.207, 0.00000000),
(322, '2015-11-21 17:38:10', '2015-11-21 17:38:10', 30, 28.61121330, 77.38371340, 111.558, 0.00000000),
(323, '2015-11-21 17:38:10', '2015-11-21 17:38:10', 30, 28.61121330, 77.38371340, 111.558, 0.00000000),
(324, '2015-11-21 17:38:11', '2015-11-21 17:38:11', 30, 28.61121330, 77.38371340, 111.558, 0.00000000),
(325, '2015-11-21 17:38:12', '2015-11-21 17:38:12', 30, 28.61121330, 77.38371340, 111.558, 0.00000000),
(326, '2015-11-21 17:38:12', '2015-11-21 17:38:12', 30, 28.61121330, 77.38371340, 111.558, 0.00000000),
(327, '2015-11-21 17:38:13', '2015-11-21 17:38:13', 30, 28.61121330, 77.38371340, 111.558, 0.00000000),
(328, '2015-11-21 17:38:14', '2015-11-21 17:38:14', 30, 28.61121330, 77.38371340, 111.558, 0.00000000),
(329, '2015-11-21 17:38:15', '2015-11-21 17:38:15', 30, 28.61121330, 77.38371340, 111.558, 0.00000000),
(330, '2015-11-21 17:38:16', '2015-11-21 17:38:16', 30, 28.61121330, 77.38371340, 111.558, 0.00000000),
(331, '2015-11-21 17:38:17', '2015-11-21 17:38:17', 30, 28.61121790, 77.38371500, 112.093, 0.00000000),
(332, '2015-11-21 17:38:18', '2015-11-21 17:38:18', 30, 28.61121790, 77.38371500, 112.093, 0.00000000),
(333, '2015-11-21 17:38:18', '2015-11-21 17:38:18', 30, 28.61121790, 77.38371500, 112.093, 0.00000000),
(334, '2015-11-21 17:38:19', '2015-11-21 17:38:19', 30, 28.61121790, 77.38371500, 112.093, 0.00000000),
(335, '2015-11-21 17:38:20', '2015-11-21 17:38:20', 30, 28.61121790, 77.38371500, 112.093, 0.00000000),
(336, '2015-11-21 17:38:21', '2015-11-21 17:38:21', 30, 28.61121070, 77.38370230, 113.568, 0.00000000),
(337, '2015-11-21 17:38:21', '2015-11-21 17:38:21', 30, 28.61121070, 77.38370230, 113.568, 0.00000000),
(338, '2015-11-21 17:38:22', '2015-11-21 17:38:22', 30, 28.61121070, 77.38370230, 113.568, 0.00000000),
(339, '2015-11-21 17:38:23', '2015-11-21 17:38:23', 30, 28.61121070, 77.38370230, 113.568, 0.00000000),
(340, '2015-11-21 17:38:23', '2015-11-21 17:38:23', 30, 28.61121070, 77.38370230, 0.112, 0.00000000),
(341, '2015-11-21 18:49:56', '2015-11-21 18:49:56', 32, 28.61128560, 77.38377880, 0.000, 0.00000000),
(342, '2015-11-21 18:49:57', '2015-11-21 18:49:57', 32, 28.61128560, 77.38377880, 0.000, 0.00000000),
(343, '2015-11-21 18:49:58', '2015-11-21 18:49:58', 32, 28.61128560, 77.38377850, 0.029, 0.00000000),
(344, '2015-11-21 18:49:59', '2015-11-21 18:49:59', 32, 28.61128560, 77.38377850, 0.029, 0.00000000),
(345, '2015-11-21 18:50:01', '2015-11-21 18:50:01', 32, 28.61128560, 77.38377850, 0.029, 0.00000000),
(346, '2015-11-21 18:50:03', '2015-11-21 18:50:03', 32, 28.61128560, 77.38377850, 0.029, 0.00000000),
(347, '2015-11-21 18:50:04', '2015-11-21 18:50:04', 32, 28.61128490, 77.38378030, 0.221, 0.00000000),
(348, '2015-11-21 18:50:05', '2015-11-21 18:50:05', 32, 28.61128490, 77.38378030, 0.221, 0.00000000),
(349, '2015-11-21 18:50:07', '2015-11-21 18:50:07', 32, 28.61128490, 77.38378030, 0.221, 0.00000000),
(350, '2015-11-21 18:50:08', '2015-11-21 18:50:08', 32, 28.61128300, 77.38378130, 0.454, 0.00000000),
(351, '2015-11-21 18:50:10', '2015-11-21 18:50:10', 32, 28.61128300, 77.38378130, 0.454, 0.00000000),
(352, '2015-11-21 18:50:11', '2015-11-21 18:50:11', 32, 28.61128300, 77.38378130, 0.454, 0.00000000),
(353, '2015-11-21 18:50:12', '2015-11-21 18:50:12', 32, 28.61128300, 77.38378130, 0.454, 0.00000000),
(354, '2015-11-21 18:50:14', '2015-11-21 18:50:14', 32, 28.61128110, 77.38378250, 0.696, 0.00000000),
(355, '2015-11-21 18:50:15', '2015-11-21 18:50:15', 32, 28.61128110, 77.38378250, 0.696, 0.00000000),
(356, '2015-11-21 18:50:16', '2015-11-21 18:50:16', 32, 28.61128110, 77.38378250, 0.696, 0.00000000),
(357, '2015-11-21 18:50:18', '2015-11-21 18:50:18', 32, 28.61128110, 77.38378250, 0.696, 0.00000000),
(358, '2015-11-21 18:50:19', '2015-11-21 18:50:19', 32, 28.61127720, 77.38378440, 1.168, 0.00000000),
(359, '2015-11-21 18:50:20', '2015-11-21 18:50:20', 32, 28.61127720, 77.38378440, 1.168, 0.00000000),
(360, '2015-11-21 18:50:22', '2015-11-21 18:50:22', 32, 28.61127720, 77.38378440, 1.168, 0.00000000),
(361, '2015-11-21 18:50:23', '2015-11-21 18:50:23', 32, 28.61127720, 77.38378440, 1.168, 0.00000000),
(362, '2015-11-21 18:50:24', '2015-11-21 18:50:24', 32, 28.61127500, 77.38377970, 1.688, 0.00000000),
(363, '2015-11-21 18:50:25', '2015-11-21 18:50:25', 32, 28.61127500, 77.38377970, 1.688, 0.00000000),
(364, '2015-11-21 18:50:27', '2015-11-21 18:50:27', 32, 28.61127500, 77.38377970, 1.688, 0.00000000),
(365, '2015-11-21 18:50:29', '2015-11-21 18:50:29', 32, 28.61127350, 77.38377580, 2.104, 0.00000000),
(366, '2015-11-21 18:50:31', '2015-11-21 18:50:31', 32, 28.61127350, 77.38377580, 2.104, 0.00000000),
(367, '2015-11-21 18:50:32', '2015-11-21 18:50:32', 32, 28.61127350, 77.38377580, 2.104, 0.00000000),
(368, '2015-11-21 18:50:34', '2015-11-21 18:50:34', 32, 28.61127270, 77.38377330, 2.364, 0.00000000),
(369, '2015-11-21 18:50:35', '2015-11-21 18:50:35', 32, 28.61127270, 77.38377330, 2.364, 0.00000000),
(370, '2015-11-21 18:50:36', '2015-11-21 18:50:36', 32, 28.61127270, 77.38377330, 2.364, 0.00000000),
(371, '2015-11-21 18:50:38', '2015-11-21 18:50:38', 32, 28.61127230, 77.38377160, 2.536, 0.00000000),
(372, '2015-11-21 18:50:39', '2015-11-21 18:50:39', 32, 28.61127230, 77.38377160, 2.536, 0.00000000),
(373, '2015-11-21 18:50:40', '2015-11-21 18:50:40', 32, 28.61127230, 77.38377160, 2.536, 0.00000000),
(374, '2015-11-21 18:50:42', '2015-11-21 18:50:42', 32, 28.61127230, 77.38377160, 2.536, 0.00000000),
(375, '2015-11-21 18:50:43', '2015-11-21 18:50:43', 32, 28.61127250, 77.38377000, 2.694, 0.00000000),
(376, '2015-11-21 18:50:45', '2015-11-21 18:50:45', 32, 28.61127250, 77.38377000, 2.694, 0.00000000),
(377, '2015-11-21 18:50:46', '2015-11-21 18:50:46', 32, 28.61127250, 77.38377000, 2.694, 0.00000000),
(378, '2015-11-21 18:50:47', '2015-11-21 18:50:47', 32, 28.61127250, 77.38377000, 2.694, 0.00000000),
(379, '2015-11-21 18:50:49', '2015-11-21 18:50:49', 32, 28.61126820, 77.38376330, 3.504, 0.00000000),
(380, '2015-11-21 18:50:50', '2015-11-21 18:50:50', 32, 28.61126820, 77.38376330, 3.504, 0.00000000),
(381, '2015-11-21 18:50:51', '2015-11-21 18:50:51', 32, 28.61126820, 77.38376330, 3.504, 0.00000000),
(382, '2015-11-21 18:50:52', '2015-11-21 18:50:52', 32, 28.61126820, 77.38376330, 3.504, 0.00000000),
(383, '2015-11-21 18:50:54', '2015-11-21 18:50:54', 32, 28.61126320, 77.38376150, 4.087, 0.00000000),
(384, '2015-11-21 18:50:55', '2015-11-21 18:50:55', 32, 28.61126320, 77.38376150, 4.087, 0.00000000),
(385, '2015-11-21 18:50:56', '2015-11-21 18:50:56', 32, 28.61126320, 77.38376150, 4.087, 0.00000000),
(386, '2015-11-21 18:50:57', '2015-11-21 18:50:57', 32, 28.61126320, 77.38376150, 4.087, 0.00000000),
(387, '2015-11-21 18:50:58', '2015-11-21 18:50:58', 32, 28.61125980, 77.38376390, 4.532, 0.00000000),
(388, '2015-11-21 18:50:59', '2015-11-21 18:50:59', 32, 28.61125980, 77.38376390, 4.532, 0.00000000),
(389, '2015-11-21 18:51:00', '2015-11-21 18:51:00', 32, 28.61125980, 77.38376390, 4.532, 0.00000000),
(390, '2015-11-21 18:51:00', '2015-11-21 18:51:00', 32, 28.61125980, 77.38376390, 4.532, 0.00000000),
(391, '2015-11-21 18:51:01', '2015-11-21 18:51:01', 32, 28.61125980, 77.38376390, 4.532, 0.00000000),
(392, '2015-11-21 18:51:02', '2015-11-21 18:51:02', 32, 28.61125980, 77.38376390, 4.532, 0.00000000),
(393, '2015-11-21 18:51:03', '2015-11-21 18:51:03', 32, 28.61126540, 77.38376940, 5.354, 0.00000000),
(394, '2015-11-21 18:51:04', '2015-11-21 18:51:04', 32, 28.61126540, 77.38376940, 5.354, 0.00000000),
(395, '2015-11-21 18:51:05', '2015-11-21 18:51:05', 32, 28.61126540, 77.38376940, 5.354, 0.00000000),
(396, '2015-11-21 18:51:06', '2015-11-21 18:51:06', 32, 28.61126540, 77.38376940, 5.354, 0.00000000),
(397, '2015-11-21 18:51:07', '2015-11-21 18:51:07', 32, 28.61126540, 77.38376940, 5.354, 0.00000000),
(398, '2015-11-21 18:51:07', '2015-11-21 18:51:07', 32, 28.61126540, 77.38376940, 5.354, 0.00000000),
(399, '2015-11-21 18:51:08', '2015-11-21 18:51:08', 32, 28.61126750, 77.38377290, 5.768, 0.00000000),
(400, '2015-11-21 18:51:09', '2015-11-21 18:51:09', 32, 28.61126750, 77.38377290, 5.768, 0.00000000),
(401, '2015-11-21 18:51:10', '2015-11-21 18:51:10', 32, 28.61126750, 77.38377290, 5.768, 0.00000000),
(402, '2015-11-21 18:51:11', '2015-11-21 18:51:11', 32, 28.61126750, 77.38377290, 5.768, 0.00000000),
(403, '2015-11-21 18:51:13', '2015-11-21 18:51:13', 32, 28.61126750, 77.38377290, 5.768, 0.00000000),
(404, '2015-11-21 18:51:13', '2015-11-21 18:51:13', 32, 28.61126520, 77.38377490, 6.090, 0.00000000),
(405, '2015-11-21 18:51:14', '2015-11-21 18:51:14', 32, 28.61126520, 77.38377490, 6.090, 0.00000000),
(406, '2015-11-21 18:51:15', '2015-11-21 18:51:15', 32, 28.61126520, 77.38377490, 6.090, 0.00000000),
(407, '2015-11-21 18:51:16', '2015-11-21 18:51:16', 32, 28.61126520, 77.38377490, 6.090, 0.00000000),
(408, '2015-11-21 18:51:17', '2015-11-21 18:51:17', 32, 28.61126520, 77.38377490, 6.090, 0.00000000),
(409, '2015-11-21 18:51:18', '2015-11-21 18:51:18', 32, 28.61126520, 77.38377490, 6.090, 0.00000000),
(410, '2015-11-21 18:51:19', '2015-11-21 18:51:19', 32, 28.61126380, 77.38377190, 6.422, 0.00000000),
(411, '2015-11-21 18:51:19', '2015-11-21 18:51:19', 32, 28.61126380, 77.38377190, 6.422, 0.00000000),
(412, '2015-11-21 18:51:20', '2015-11-21 18:51:20', 32, 28.61126380, 77.38377190, 6.422, 0.00000000),
(413, '2015-11-21 18:51:21', '2015-11-21 18:51:21', 32, 28.61126380, 77.38377190, 6.422, 0.00000000),
(414, '2015-11-21 18:51:22', '2015-11-21 18:51:22', 32, 28.61126380, 77.38377190, 6.422, 0.00000000),
(415, '2015-11-21 18:51:23', '2015-11-21 18:51:23', 32, 28.61126360, 77.38377040, 6.570, 0.00000000),
(416, '2015-11-21 18:51:24', '2015-11-21 18:51:24', 32, 28.61126360, 77.38377040, 6.570, 0.00000000),
(417, '2015-11-21 18:51:24', '2015-11-21 18:51:24', 32, 28.61126360, 77.38377040, 6.570, 0.00000000),
(418, '2015-11-21 18:51:26', '2015-11-21 18:51:26', 32, 28.61126360, 77.38377040, 6.570, 0.00000000),
(419, '2015-11-21 18:51:27', '2015-11-21 18:51:27', 32, 28.61126360, 77.38377040, 6.570, 0.00000000),
(420, '2015-11-21 18:51:28', '2015-11-21 18:51:28', 32, 28.61126130, 77.38377190, 6.865, 0.00000000),
(421, '2015-11-21 18:51:29', '2015-11-21 18:51:29', 32, 28.61126130, 77.38377190, 6.865, 0.00000000),
(422, '2015-11-21 18:51:30', '2015-11-21 18:51:30', 32, 28.61126130, 77.38377190, 6.865, 0.00000000),
(423, '2015-11-21 18:51:31', '2015-11-21 18:51:31', 32, 28.61126130, 77.38377190, 6.865, 0.00000000),
(424, '2015-11-21 18:51:33', '2015-11-21 18:51:33', 32, 28.61126130, 77.38377190, 6.865, 0.00000000),
(425, '2015-11-21 18:51:33', '2015-11-21 18:51:33', 32, 28.61126060, 77.38377360, 7.048, 0.00000000),
(426, '2015-11-21 18:51:34', '2015-11-21 18:51:34', 32, 28.61126060, 77.38377360, 7.048, 0.00000000),
(427, '2015-11-21 18:51:35', '2015-11-21 18:51:35', 32, 28.61126060, 77.38377360, 7.048, 0.00000000),
(428, '2015-11-21 18:51:36', '2015-11-21 18:51:36', 32, 28.61126060, 77.38377360, 7.048, 0.00000000),
(429, '2015-11-21 18:51:37', '2015-11-21 18:51:37', 32, 28.61126060, 77.38377360, 7.048, 0.00000000),
(430, '2015-11-21 18:51:38', '2015-11-21 18:51:38', 32, 28.61126060, 77.38377360, 7.048, 0.00000000),
(431, '2015-11-21 18:51:40', '2015-11-21 18:51:40', 32, 28.61125990, 77.38377490, 7.197, 0.00000000),
(432, '2015-11-21 18:51:41', '2015-11-21 18:51:41', 32, 28.61125990, 77.38377490, 7.197, 0.00000000),
(433, '2015-11-21 18:51:41', '2015-11-21 18:51:41', 32, 28.61125990, 77.38377490, 7.197, 0.00000000),
(434, '2015-11-21 18:51:42', '2015-11-21 18:51:42', 32, 28.61125990, 77.38377490, 7.197, 0.00000000),
(435, '2015-11-21 18:51:43', '2015-11-21 18:51:43', 32, 28.61125900, 77.38377610, 7.351, 0.00000000),
(436, '2015-11-21 18:51:44', '2015-11-21 18:51:44', 32, 28.61125900, 77.38377610, 7.351, 0.00000000),
(437, '2015-11-21 18:51:45', '2015-11-21 18:51:45', 32, 28.61125900, 77.38377610, 7.351, 0.00000000),
(438, '2015-11-21 18:51:46', '2015-11-21 18:51:46', 32, 28.61125900, 77.38377610, 7.351, 0.00000000),
(439, '2015-11-21 18:51:46', '2015-11-21 18:51:46', 32, 28.61125900, 77.38377610, 0.007, 0.00000000),
(440, '2015-11-23 15:17:48', '2015-11-23 15:17:48', 33, 28.61130020, 77.38372790, 0.000, 0.00000000),
(441, '2015-11-23 15:17:51', '2015-11-23 15:17:51', 33, 28.61121760, 77.38377130, 10.113, 0.00000000),
(442, '2015-11-23 15:17:52', '2015-11-23 15:17:52', 33, 28.61128770, 77.38376130, 17.967, 0.00000000),
(443, '2015-11-23 15:17:54', '2015-11-23 15:17:54', 33, 28.61128770, 77.38376130, 17.967, 0.00000000),
(444, '2015-11-23 15:17:56', '2015-11-23 15:17:56', 33, 28.61128770, 77.38376130, 17.967, 0.00000000),
(445, '2015-11-23 15:17:58', '2015-11-23 15:17:58', 33, 28.61128470, 77.38375410, 18.745, 0.00000000),
(446, '2015-11-23 15:18:00', '2015-11-23 15:18:00', 33, 28.61128470, 77.38375410, 18.745, 0.00000000),
(447, '2015-11-23 15:18:01', '2015-11-23 15:18:01', 33, 28.61130700, 77.38370730, 23.942, 0.00000000),
(448, '2015-11-23 15:18:05', '2015-11-23 15:18:05', 33, 28.61130700, 77.38370730, 23.942, 0.00000000),
(449, '2015-11-23 15:18:07', '2015-11-23 15:18:07', 33, 28.61130920, 77.38372890, 26.064, 0.00000000),
(450, '2015-11-23 15:18:10', '2015-11-23 15:18:10', 33, 28.61124630, 77.38372530, 33.065, 0.00000000),
(451, '2015-11-23 15:18:11', '2015-11-23 15:18:11', 33, 28.61129810, 77.38373210, 38.862, 0.00000000),
(452, '2015-11-23 15:18:13', '2015-11-23 15:18:13', 33, 28.61129810, 77.38373210, 38.862, 0.00000000),
(453, '2015-11-23 15:18:15', '2015-11-23 15:18:15', 33, 28.61129810, 77.38373210, 38.862, 0.00000000),
(454, '2015-11-23 15:18:16', '2015-11-23 15:18:16', 33, 28.61130170, 77.38371190, 40.874, 0.00000000),
(455, '2015-11-23 15:18:22', '2015-11-23 15:18:22', 33, 28.61130170, 77.38371190, 40.874, 0.00000000),
(456, '2015-11-23 15:18:23', '2015-11-23 15:18:23', 33, 28.61131560, 77.38367520, 44.775, 0.00000000),
(457, '2015-11-23 15:18:25', '2015-11-23 15:18:25', 33, 28.61131560, 77.38367520, 44.775, 0.00000000),
(458, '2015-11-23 15:18:26', '2015-11-23 15:18:26', 33, 28.61130940, 77.38369720, 47.030, 0.00000000),
(459, '2015-11-23 15:18:30', '2015-11-23 15:18:30', 33, 28.61124420, 77.38373120, 55.002, 0.00000000),
(460, '2015-11-23 15:18:32', '2015-11-23 15:18:32', 33, 28.61131220, 77.38368030, 64.048, 0.00000000),
(461, '2015-11-23 15:18:33', '2015-11-23 15:18:33', 33, 28.61131220, 77.38368030, 64.048, 0.00000000),
(462, '2015-11-23 15:18:35', '2015-11-23 15:18:35', 33, 28.61131220, 77.38368030, 64.048, 0.00000000),
(463, '2015-11-23 15:18:37', '2015-11-23 15:18:37', 33, 28.61130320, 77.38370810, 66.940, 0.00000000),
(464, '2015-11-23 15:18:41', '2015-11-23 15:18:41', 33, 28.61130320, 77.38370810, 66.940, 0.00000000),
(465, '2015-11-23 15:18:43', '2015-11-23 15:18:43', 33, 28.61130200, 77.38370140, 67.607, 0.00000000),
(466, '2015-11-23 15:18:45', '2015-11-23 15:18:45', 33, 28.61130200, 77.38370140, 67.607, 0.00000000),
(467, '2015-11-23 15:18:47', '2015-11-23 15:18:47', 33, 28.61130000, 77.38370960, 68.438, 0.00000000),
(468, '2015-11-23 15:18:50', '2015-11-23 15:18:50', 33, 28.61123500, 77.38373060, 75.949, 0.00000000),
(469, '2015-11-23 15:18:51', '2015-11-23 15:18:51', 33, 28.61123500, 77.38373060, 75.949, 0.00000000),
(470, '2015-11-23 15:18:53', '2015-11-23 15:18:53', 33, 28.61130360, 77.38368100, 84.982, 0.00000000),
(471, '2015-11-23 15:18:55', '2015-11-23 15:18:55', 33, 28.61130360, 77.38368100, 84.982, 0.00000000),
(472, '2015-11-23 15:18:56', '2015-11-23 15:18:56', 33, 28.61130160, 77.38364150, 88.843, 0.00000000),
(473, '2015-11-23 15:18:59', '2015-11-23 15:18:59', 33, 28.61130160, 77.38364150, 0.085, 0.00000000);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dog`
--
ALTER TABLE `dog`
  ADD CONSTRAINT `dog_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ledger`
--
ALTER TABLE `ledger`
  ADD CONSTRAINT `ledger_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_meta_walker_id_foreign` FOREIGN KEY (`walker_id`) REFERENCES `walker` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review_dog`
--
ALTER TABLE `review_dog`
  ADD CONSTRAINT `review_dog_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_dog_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_dog_walker_id_foreign` FOREIGN KEY (`walker_id`) REFERENCES `walker` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review_walker`
--
ALTER TABLE `review_walker`
  ADD CONSTRAINT `review_walker_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_walker_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_walker_walker_id_foreign` FOREIGN KEY (`walker_id`) REFERENCES `walker` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_promo_used`
--
ALTER TABLE `user_promo_used`
  ADD CONSTRAINT `user_promo_used_code_id_foreign` FOREIGN KEY (`code_id`) REFERENCES `promo_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_promo_used_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `walk_location`
--
ALTER TABLE `walk_location`
  ADD CONSTRAINT `walk_location_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
