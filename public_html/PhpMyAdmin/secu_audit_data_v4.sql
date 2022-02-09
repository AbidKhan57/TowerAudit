-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 07, 2022 at 06:41 PM
-- Server version: 10.1.48-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.3.31-1+bionic

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secu_audit_data_v4`
--

-- --------------------------------------------------------

--
-- Table structure for table `0-1-engineer_details`
--

CREATE TABLE `0-1-engineer_details` (
  `id` int(11) NOT NULL,
  `system_datetime_of_last_change` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `engineering_audit_team_id` varchar(12) DEFAULT NULL,
  `last_changed_by` varchar(12) NOT NULL,
  `assigned_to_audit_company` int(11) DEFAULT NULL,
  `assigned_to_project_id` int(4) DEFAULT NULL,
  `engineer_status` enum('Active','Disabled','Standby','Training','Unknown') NOT NULL DEFAULT 'Unknown',
  `works_for_company_prefix` varchar(6) DEFAULT NULL,
  `engineering_team_number` varchar(6) NOT NULL,
  `engineer_name` varchar(90) NOT NULL,
  `engineer_mobile_number` varchar(60) NOT NULL,
  `engineer_email_address` varchar(60) NOT NULL,
  `location_managed_from` varchar(30) NOT NULL,
  `engineer_skills` varchar(255) DEFAULT NULL,
  `engineer_certifications` varchar(255) DEFAULT NULL,
  `engineer_tools_carried` varchar(255) DEFAULT NULL,
  `password` varchar(12) NOT NULL,
  `engineer_id_copy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `0-1-engineer_details`
--

INSERT INTO `0-1-engineer_details` (`id`, `system_datetime_of_last_change`, `engineering_audit_team_id`, `last_changed_by`, `assigned_to_audit_company`, `assigned_to_project_id`, `engineer_status`, `works_for_company_prefix`, `engineering_team_number`, `engineer_name`, `engineer_mobile_number`, `engineer_email_address`, `location_managed_from`, `engineer_skills`, `engineer_certifications`, `engineer_tools_carried`, `password`, `engineer_id_copy`) VALUES
(1, '2016-07-08 15:20:22', 'NEJ001', 'ADM001', 1, 1, 'Active', 'NEJ', '001', 'RahmadiG', '+6287880191291', 'RahmadiG@opco.systems', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PAS001NEX', '/some_drive/some_folder/some_image.jpg'),
(2, '2018-03-30 15:20:22', 'TCS001', 'ADM001', 4, 2, 'Active', 'TCS', '001', 'TCS1-Engdev1 Smith', '+6287880191291', 'engdev001@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS001TCS', '/some_drive/some_folder/some_image.jpg'),
(3, '2018-03-30 15:20:22', 'TCS002', 'ADM001', 4, 2, 'Active', 'TCS', '002', 'TCS2-Engdev2 Smith', '+6287880191291', 'engdev002@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS002TCS', '/some_drive/some_folder/some_image.jpg'),
(4, '2018-03-30 15:20:22', 'NEN001', 'ADM001', 5, 3, 'Active', 'NEN', '001', 'NEN1-Engdev3 Smith', '+6287880191291', 'engdev003@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS003NEX', '/some_drive/some_folder/some_image.jpg'),
(5, '2016-07-08 15:20:22', 'NEJ002', 'ADM001', 1, 1, 'Active', 'NEJ', '002', 'NEJ2-RahmadiG', '+6287880191291', 'RahmadiG@opco.systems', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PAS002NEX', '/some_drive/some_folder/some_image.jpg'),
(6, '2018-03-30 15:20:22', 'NEN002', 'ADM001', 5, 3, 'Active', 'NEN', '004', 'NEN2-Engdev3 Smith', '+6287880191291', 'engdev003@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS004NEX', '/some_drive/some_folder/some_image.jpg'),
(7, '2018-03-30 15:20:22', 'GDM001', 'ADM001', 9, 3, 'Active', 'GDM', '001', 'GDM1-Engdev3 Smith', '+6287880191291', 'engdev003@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS004NEX', '/some_drive/some_folder/some_image.jpg'),
(8, '2018-03-30 15:20:22', 'GDM002', 'ADM001', 9, NULL, 'Active', 'GDM', '002', 'GDM2-Engdev3 Smith', '+6287880191291', 'engdev003@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS004NEX', '/some_drive/some_folder/some_image.jpg'),
(9, '2018-03-30 15:20:22', 'GDS001', 'ADM001', 12, 3, 'Active', 'GDS', '001', 'GDS1-Engdev3 Smith', '+6287880191291', 'engdev003@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS004NEX', '/some_drive/some_folder/some_image.jpg'),
(10, '2018-03-30 15:20:22', 'GDS002', 'ADM001', 12, 3, 'Active', 'GDS', '002', 'GDS2-Engdev3 Smith', '+6287880191291', 'engdev003@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS004NEX', '/some_drive/some_folder/some_image.jpg'),
(11, '2021-11-11 10:10:00', 'GBJ001', 'ADM001', 39, 4, 'Active', 'GBJ', '001', 'atif', '+923232323', 'atif@gmail.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS001GBJ', '/some_drive/some_folder/some_image.jpg'),
(12, '2018-05-02 15:05:12', 'GBJ002', 'ADM001', 39, 4, 'Active', 'GBJ', '002', 'Arron Smithson', '+6287880191003', 'as02@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS002GBJ', '/some_drive/some_folder/some_image.jpg'),
(13, '2018-05-02 15:05:12', 'GBJ003', 'ADM001', 39, 4, 'Active', 'GBJ', '003', 'Berty Smith', '+6287880191003', 'bs01@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS003GBJ', '/some_drive/some_folder/some_image.jpg'),
(14, '2018-05-02 15:05:12', 'GBJ004', 'ADM001', 39, 4, 'Active', 'GBJ', '004', 'Carl Smith', '+6287880191004', 'cs01@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS004GBJ', '/some_drive/some_folder/some_image.jpg'),
(15, '2018-05-02 15:05:12', 'GBN001', 'ADM001', 40, 4, 'Active', 'GBN', '001', 'Albert Bendal', '+6287880191011', 'ab01@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS001GBN', '/some_drive/some_folder/some_image.jpg'),
(16, '2018-05-02 15:05:12', 'GBN002', 'ADM001', 40, 4, 'Active', 'GBN', '002', 'Arron Bendal', '+6287880191012', 'ab02@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS002GBN', '/some_drive/some_folder/some_image.jpg'),
(17, '2018-05-02 15:05:12', 'GBN003', 'ADM001', 40, 4, 'Active', 'GBN', '003', 'Berty Bendal', '+6287880191013', 'bb01@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS003GBN', '/some_drive/some_folder/some_image.jpg'),
(18, '2018-05-02 15:05:12', 'GBN004', 'ADM001', 40, 4, 'Active', 'GBN', '004', 'Carl Bendal', '+6287880191014', 'cb01@opcoservices.com', 'Jakarta', 'Software Solutions', '30 Years experience', 'Laptop', 'PASS004GBN', '/some_drive/some_folder/some_image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `0-2-site_details`
--

CREATE TABLE `0-2-site_details` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `row_id_of_audit_team` int(11) NOT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `site_reference_name` varchar(60) DEFAULT NULL,
  `site_operator` varchar(60) DEFAULT NULL,
  `site_location_region` varchar(60) DEFAULT NULL,
  `site_location_sub_region` varchar(60) DEFAULT NULL,
  `site_belongs_to_cluster` varchar(60) DEFAULT NULL,
  `site_keeper_name` varchar(60) DEFAULT NULL,
  `site_keeper_phone_number` varchar(20) DEFAULT NULL,
  `site_physical_type` varchar(60) DEFAULT NULL,
  `site_longitude` double DEFAULT NULL,
  `site_latitude` double DEFAULT NULL,
  `site_altitude_above_sea_level` float DEFAULT NULL,
  `site_local_datetime_survey_start` datetime DEFAULT NULL,
  `site_photo_from_main_entrance` varchar(90) DEFAULT NULL,
  `site_external_temperature` float DEFAULT NULL,
  `site_audit_weather_conditions` varchar(60) DEFAULT NULL,
  `site_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `site_additional_notes_1` varchar(255) DEFAULT NULL,
  `site_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `site_additional_notes_2` varchar(255) DEFAULT NULL,
  `site_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `site_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `0-2-site_details`
--

INSERT INTO `0-2-site_details` (`id`, `system_datetime_of_insert`, `internal_project_id`, `row_id_of_audit_team`, `site_reference_id`, `site_reference_name`, `site_operator`, `site_location_region`, `site_location_sub_region`, `site_belongs_to_cluster`, `site_keeper_name`, `site_keeper_phone_number`, `site_physical_type`, `site_longitude`, `site_latitude`, `site_altitude_above_sea_level`, `site_local_datetime_survey_start`, `site_photo_from_main_entrance`, `site_external_temperature`, `site_audit_weather_conditions`, `site_additional_photo_1_name`, `site_additional_notes_1`, `site_additional_photo_2_name`, `site_additional_notes_2`, `site_additional_photo_3_name`, `site_additional_notes_3`) VALUES
(1, '2016-06-24 11:11:00', 4, 11, '01JV0001', 'JL-Lumpr3', 'Indosat', 'Java', 'Central', 'JVCE001', 'Jati', '+94123456789', 'OUTDOOR', 80.221481, 9.672825, 4.6, '2017-08-21 11:09:34', '/images/v4/1/JR_NR_003/0-2/1_JR-NR-003_NEX001_0-2_0-2-15_2017-08-21_11-15.jpg', 29.6, 'SUNNY', '/images/v4/1/JR_NR_003/0-2/1_JR-NR-003_NEX001_0-2_0-2-18_2017-08-21_11-15.jpg', 'High level of grass', '/images/v4/1/JR_NR_003/0-2/1_JR-NR-003_NEX001_0-2_0-2-20_2017-08-21_11-15.jpg', 'Photo of main shelters', '/images/v4/1/JR_NR_003/0-2/1_JR-NR-003_NEX001_0-2_0-2-22_2017-08-21_11-16.jpg', 'Main door photo');

-- --------------------------------------------------------

--
-- Table structure for table `1-1-antenna_rooftop`
--

CREATE TABLE `1-1-antenna_rooftop` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `support_structure_type` varchar(30) DEFAULT NULL,
  `height_in_meters` float DEFAULT NULL,
  `photo_name_antenna` varchar(90) DEFAULT NULL,
  `additional_photo_1_name` varchar(90) DEFAULT NULL,
  `additional_notes_1` varchar(255) DEFAULT NULL,
  `additional_photo_2_name` varchar(90) DEFAULT NULL,
  `additional_notes_2` varchar(255) DEFAULT NULL,
  `additional_photo_3_name` varchar(90) DEFAULT NULL,
  `additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `1-1-antenna_rooftop`
--

INSERT INTO `1-1-antenna_rooftop` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `support_structure_type`, `height_in_meters`, `photo_name_antenna`, `additional_photo_1_name`, `additional_notes_1`, `additional_photo_2_name`, `additional_notes_2`, `additional_photo_3_name`, `additional_notes_3`) VALUES
(1, '2021-08-03 03:06:07', 4, 1, '01JV0001', 'Rooftop', 11.8, '/4/01JV0001/4_01JV0001_GBJ001_1-1-03_2021-06--23_13-24-12.jpg', '/4/01JV0001/4_01JV0001_GBJ001_1-1-04_2021-06-23_13-25-22.jpg', 'Notes for the additional image typed by the engineer.....', '/4/01JV0001/4_01JV0001_GBJ001_1-1-06_2021-06-23_13-26-28.jpg', 'Notes for the additional image typed by the engineer.....', '/4/01JV0001/4_01JV0001_GBJ001_1-1-08_2021-06-23_13-28-11.jpg', 'Notes for the additional image typed by the engineer.....');

-- --------------------------------------------------------

--
-- Table structure for table `1-2-antenna_roadside`
--

CREATE TABLE `1-2-antenna_roadside` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `support_structure_type` varchar(30) DEFAULT NULL,
  `height_in_meters` float DEFAULT NULL,
  `photo_name_antenna` varchar(90) DEFAULT NULL,
  `additional_photo_1_name` varchar(90) DEFAULT NULL,
  `additional_notes_1` varchar(255) DEFAULT NULL,
  `additional_photo_2_name` varchar(90) DEFAULT NULL,
  `additional_notes_2` varchar(255) DEFAULT NULL,
  `additional_photo_3_name` varchar(90) DEFAULT NULL,
  `additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `1-2-antenna_roadside`
--

INSERT INTO `1-2-antenna_roadside` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `support_structure_type`, `height_in_meters`, `photo_name_antenna`, `additional_photo_1_name`, `additional_notes_1`, `additional_photo_2_name`, `additional_notes_2`, `additional_photo_3_name`, `additional_notes_3`) VALUES
(1, '2016-08-03 03:06:07', 4, 1, 'JR_NR_003', 'Pole', 11.8, '/images/SLT001-TESTING/JR_NR_003/antenna-roadside_2016-08-03_11:12:02.jpg', '/images/SLT001-TESTING/JR_NR_003/antenna-roadside_2016-08-03_11:12:02.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/antenna-roadside_2016-08-03_11:13:02.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/antenna-roadside_2016-08-03_11:14:02.jpg', 'Notes for the additional image typed by the engineer.....');

-- --------------------------------------------------------

--
-- Table structure for table `1-3-antenna_greenfield`
--

CREATE TABLE `1-3-antenna_greenfield` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `support_structure_type` varchar(30) DEFAULT NULL,
  `height_in_meters` float DEFAULT NULL,
  `photo_name_antenna` varchar(90) DEFAULT NULL,
  `additional_photo_1_name` varchar(90) DEFAULT NULL,
  `additional_notes_1` varchar(255) DEFAULT NULL,
  `additional_photo_2_name` varchar(90) DEFAULT NULL,
  `additional_notes_2` varchar(255) DEFAULT NULL,
  `additional_photo_3_name` varchar(90) DEFAULT NULL,
  `additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `1-3-antenna_greenfield`
--

INSERT INTO `1-3-antenna_greenfield` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `support_structure_type`, `height_in_meters`, `photo_name_antenna`, `additional_photo_1_name`, `additional_notes_1`, `additional_photo_2_name`, `additional_notes_2`, `additional_photo_3_name`, `additional_notes_3`) VALUES
(1, '2016-08-03 03:06:07', 4, 1, 'JR_NR_003', 'Guyed Mast', 11.8, '/images/SLT001-TESTING/JR_NR_003/antenna-greenfield_2016-08-03_11:12:02.jpg', '/images/SLT001-TESTING/JR_NR_003/antenna-greenfield_2016-08-03_11:12:02.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/antenna-greenfield_2016-08-03_11:13:02.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/antenna-greenfield_2016-08-03_11:14:02.jpg', 'Notes for the additional image typed by the engineer.....');

-- --------------------------------------------------------

--
-- Table structure for table `2-1-housing_shelter`
--

CREATE TABLE `2-1-housing_shelter` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `shelter_type` varchar(30) DEFAULT NULL,
  `shelter_height_meters` float DEFAULT NULL,
  `shelter_width_meters` float DEFAULT NULL,
  `shelter_depth_meters` float DEFAULT NULL,
  `shelter_photo_name` varchar(90) DEFAULT NULL,
  `shelter_lock_type` varchar(30) DEFAULT NULL,
  `shelter_lock_condition` varchar(30) DEFAULT NULL,
  `shelter_lock_photo_name` varchar(90) DEFAULT NULL,
  `shelter_door_seal_condition` varchar(30) DEFAULT NULL,
  `shelter_door_seal_photo_name` varchar(90) DEFAULT NULL,
  `shelter_inlet_cable_condition` varchar(30) DEFAULT NULL,
  `shelter_inlet_cable_photo_name` varchar(90) DEFAULT NULL,
  `shelter_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `shelter_additional_notes_1` varchar(255) DEFAULT NULL,
  `shelter_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `shelter_additional_notes_2` varchar(255) DEFAULT NULL,
  `shelter_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `shelter_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2-1-housing_shelter`
--

INSERT INTO `2-1-housing_shelter` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `shelter_type`, `shelter_height_meters`, `shelter_width_meters`, `shelter_depth_meters`, `shelter_photo_name`, `shelter_lock_type`, `shelter_lock_condition`, `shelter_lock_photo_name`, `shelter_door_seal_condition`, `shelter_door_seal_photo_name`, `shelter_inlet_cable_condition`, `shelter_inlet_cable_photo_name`, `shelter_additional_photo_1_name`, `shelter_additional_notes_1`, `shelter_additional_photo_2_name`, `shelter_additional_notes_2`, `shelter_additional_photo_3_name`, `shelter_additional_notes_3`) VALUES
(1, '2016-08-03 00:07:11', 1, 1, 'JR_NR_003', 'Container', 2.1, 3.9, 2.85, '/images/SLT001-TESTING/JR_NR_003/housing-shelter_2016-08-03_11:22:02.jpg', 'Electronic', 'Good', '/images/SLT001-TESTING/JR_NR_003/housing-shelter_2016-08-03_11:22:02.jpg', 'Good', '/images/SLT001-TESTING/JR_NR_003/housing-shelter_2016-08-03_11:22:02.jpg', 'Good', '/images/SLT001-TESTING/JR_NR_003/housing-shelter_2016-08-03_11:22:02.jpg', '/images/SLT001-TESTING/JR_NR_003/housing-shelter_2016-08-03_11:22:02.jpg', 'Notes for the........', '/images/SLT001-TESTING/JR_NR_003/housing-shelter_2016-08-03_11:22:02.jpg', 'Notes for the........', '/images/SLT001-TESTING/JR_NR_003/housing-shelter_2016-08-03_11:22:02.jpg', 'Notes for the........');

-- --------------------------------------------------------

--
-- Table structure for table `2-2-housing_outdoor`
--

CREATE TABLE `2-2-housing_outdoor` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `outdoor_manufacturer` varchar(30) DEFAULT NULL,
  `outdoor_model` varchar(30) DEFAULT NULL,
  `outdoor_cabinet_photo_name` varchar(90) DEFAULT NULL,
  `outdoor_door_seal_condition` varchar(30) DEFAULT NULL,
  `outdoor_door_seal_photo_name` varchar(90) DEFAULT NULL,
  `outdoor_lock_type` varchar(30) DEFAULT NULL,
  `outdoor_lock_condition` varchar(30) DEFAULT NULL,
  `outdoor_lock_photo_name` varchar(90) DEFAULT NULL,
  `outdoor_inlet_cable_condition` varchar(30) DEFAULT NULL,
  `outdoor_inlet_cable_photo_name` varchar(90) DEFAULT NULL,
  `outdoor_cooling_type` varchar(30) DEFAULT NULL,
  `outdoor_cooling_manufacturer` varchar(30) DEFAULT NULL,
  `outdoor_cooling_model` varchar(30) DEFAULT NULL,
  `outdoor_cooling_condition` varchar(30) DEFAULT NULL,
  `outdoor_cooling_photo_name` varchar(90) DEFAULT NULL,
  `outdoor_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `outdoor_additional_notes_1` varchar(255) DEFAULT NULL,
  `outdoor_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `outdoor_additional_notes_2` varchar(255) DEFAULT NULL,
  `outdoor_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `outdoor_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2-2-housing_outdoor`
--

INSERT INTO `2-2-housing_outdoor` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `outdoor_manufacturer`, `outdoor_model`, `outdoor_cabinet_photo_name`, `outdoor_door_seal_condition`, `outdoor_door_seal_photo_name`, `outdoor_lock_type`, `outdoor_lock_condition`, `outdoor_lock_photo_name`, `outdoor_inlet_cable_condition`, `outdoor_inlet_cable_photo_name`, `outdoor_cooling_type`, `outdoor_cooling_manufacturer`, `outdoor_cooling_model`, `outdoor_cooling_condition`, `outdoor_cooling_photo_name`, `outdoor_additional_photo_1_name`, `outdoor_additional_notes_1`, `outdoor_additional_photo_2_name`, `outdoor_additional_notes_2`, `outdoor_additional_photo_3_name`, `outdoor_additional_notes_3`) VALUES
(1, '2016-08-03 00:08:00', 1, 1, 'JR_NR_003', 'NVIDICON', 'NV01-07', '/images/SLT001-TESTING/JR_NR_003/housing-outdoor_2016-08-03_11:22:02.jpg', 'Good', '/images/SLT001-TESTING/JR_NR_003/housing-outdoor_2016-08-03_11:22:02.jpg', 'Electronic', 'Good', '/images/SLT001-TESTING/JR_NR_003/housing-outdoor_2016-08-03_11:22:02.jpg', 'Good', '/images/SLT001-TESTING/JR_NR_003/housing-outdoor_2016-08-03_11:22:02.jpg', 'FAN', 'Panasonic', 'PN001', 'Good', '/images/SLT001-TESTING/JR_NR_003/housing-outdoor_2016-08-03_11:22:02.jpg', '/images/SLT001-TESTING/JR_NR_003/housing-outdoor_2016-08-03_11:22:02.jpg', 'To be entered by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/housing-outdoor_2016-08-03_11:22:02.jpg', 'To be entered by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/housing-outdoor_2016-08-03_11:22:02.jpg', 'To be entered by the engineer.....');

-- --------------------------------------------------------

--
-- Table structure for table `3-1-radio_bscrnc`
--

CREATE TABLE `3-1-radio_bscrnc` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `bscrnc_manufacturer` varchar(30) DEFAULT NULL,
  `bscrnc_model` varchar(30) DEFAULT NULL,
  `bscrnc_photo_name` varchar(90) DEFAULT NULL,
  `bscrnc_equipment_voltage` enum('24','48','110','240','Other') DEFAULT NULL,
  `bscrnc_equipment_load_amps` float DEFAULT NULL,
  `bscrnc_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `bscrnc_additional_notes_1` varchar(255) DEFAULT NULL,
  `bscrnc_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `bscrnc_additional_notes_2` varchar(255) DEFAULT NULL,
  `bscrnc_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `bscrnc_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `3-1-radio_bscrnc`
--

INSERT INTO `3-1-radio_bscrnc` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `bscrnc_manufacturer`, `bscrnc_model`, `bscrnc_photo_name`, `bscrnc_equipment_voltage`, `bscrnc_equipment_load_amps`, `bscrnc_additional_photo_1_name`, `bscrnc_additional_notes_1`, `bscrnc_additional_photo_2_name`, `bscrnc_additional_notes_2`, `bscrnc_additional_photo_3_name`, `bscrnc_additional_notes_3`) VALUES
(1, '2016-08-05 04:08:00', 1, 1, 'JR_NR_003', 'Ericsson', 'RBS6401', '/images/SLT001-TESTING/JR_NR_003/ran-bsc_2016-08-05_11:22:02.jpg', NULL, NULL, '/images/SLT001-TESTING/JR_NR_003/ran-bsc_2016-08-05_11:22:06.jpg', 'To be entered by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/ran-bsc_2016-08-05_11:22:07.jpg', 'To be entered by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/ran-bsc_2016-08-05_11:22:08.jpg', 'To be entered by the engineer.....');

-- --------------------------------------------------------

--
-- Table structure for table `3-2-radio_btsnodeb`
--

CREATE TABLE `3-2-radio_btsnodeb` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `btsnodeb_manufacturer` varchar(30) DEFAULT NULL,
  `btsnodeb_model` varchar(30) DEFAULT NULL,
  `btsnodeb_photo_name` varchar(90) DEFAULT NULL,
  `btsnodeb_equipment_voltage` enum('24','48','110','240','Other') DEFAULT NULL,
  `btsnodeb_equipment_load_amps` float DEFAULT NULL,
  `btsnodeb_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `btsnodeb_additional_notes_1` varchar(255) DEFAULT NULL,
  `btsnodeb_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `btsnodeb_additional_notes_2` varchar(255) DEFAULT NULL,
  `btsnodeb_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `btsnodeb_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `3-2-radio_btsnodeb`
--

INSERT INTO `3-2-radio_btsnodeb` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `btsnodeb_manufacturer`, `btsnodeb_model`, `btsnodeb_photo_name`, `btsnodeb_equipment_voltage`, `btsnodeb_equipment_load_amps`, `btsnodeb_additional_photo_1_name`, `btsnodeb_additional_notes_1`, `btsnodeb_additional_photo_2_name`, `btsnodeb_additional_notes_2`, `btsnodeb_additional_photo_3_name`, `btsnodeb_additional_notes_3`) VALUES
(1, '2016-08-05 04:08:00', 1, 1, 'JR_NR_003', 'Ericsson', 'RBS6401', '/images/SLT001-TESTING/JR_NR_003/ran-btsnodeb_2016-08-05_11:22:02.jpg', NULL, NULL, '/images/SLT001-TESTING/JR_NR_003/ran-btsnodeb_2016-08-05_11:22:06.jpg', 'To be entered by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/ran-btsnodeb_2016-08-05_11:22:07.jpg', 'To be entered by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/ran-btsnodeb_2016-08-05_11:22:08.jpg', 'To be entered by the engineer.....');

-- --------------------------------------------------------

--
-- Table structure for table `3-3-radio_gsmant`
--

CREATE TABLE `3-3-radio_gsmant` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `gsmant_manufacturer` varchar(30) DEFAULT NULL,
  `gsmant_model` varchar(30) DEFAULT NULL,
  `gsmant_photo_name` varchar(90) DEFAULT NULL,
  `gsmant_equipment_voltage` enum('24','48','110','240','Other') DEFAULT NULL,
  `gsmant_equipment_load_amps` float DEFAULT NULL,
  `gsmant_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `gsmant_additional_notes_1` varchar(255) DEFAULT NULL,
  `gsmant_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `gsmant_additional_notes_2` varchar(255) DEFAULT NULL,
  `gsmant_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `gsmant_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `3-3-radio_gsmant`
--

INSERT INTO `3-3-radio_gsmant` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `gsmant_manufacturer`, `gsmant_model`, `gsmant_photo_name`, `gsmant_equipment_voltage`, `gsmant_equipment_load_amps`, `gsmant_additional_photo_1_name`, `gsmant_additional_notes_1`, `gsmant_additional_photo_2_name`, `gsmant_additional_notes_2`, `gsmant_additional_photo_3_name`, `gsmant_additional_notes_3`) VALUES
(1, '2016-08-05 04:08:00', 1, 1, 'JR_NR_003', 'Huawei', 'HU6767-DBS', '/images/SLT001-TESTING/JR_NR_003/ran-gsmant_2016-08-05_11:22:02.jpg', NULL, NULL, '/images/SLT001-TESTING/JR_NR_003/ran-gsmant_2016-08-05_11:22:06.jpg', 'To be entered by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/ran-gsmant_2016-08-05_11:22:07.jpg', 'To be entered by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/ran-gsmant_2016-08-05_11:22:08.jpg', 'To be entered by the engineer.....');

-- --------------------------------------------------------

--
-- Table structure for table `4-1-trans_microwave`
--

CREATE TABLE `4-1-trans_microwave` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `microwave_manufacturer` varchar(30) DEFAULT NULL,
  `microwave_indoor_unit_model` varchar(30) DEFAULT NULL,
  `microwave_indoor_unit_photo_name` varchar(90) DEFAULT NULL,
  `microwave_equipment_voltage` enum('24','48','110','240','Other') DEFAULT NULL,
  `microwave_equipment_load_amps` float DEFAULT NULL,
  `microwave_dish_model` varchar(30) DEFAULT NULL,
  `microwave_dish_photo_name` varchar(90) DEFAULT NULL,
  `microwave_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `microwave_additional_notes_1` varchar(255) DEFAULT NULL,
  `microwave_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `microwave_additional_notes_2` varchar(255) DEFAULT NULL,
  `microwave_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `microwave_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `4-2-trans_ip`
--

CREATE TABLE `4-2-trans_ip` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `ip_manufacturer` varchar(30) DEFAULT NULL,
  `ip_model` varchar(30) DEFAULT NULL,
  `ip_photo_name` varchar(90) DEFAULT NULL,
  `ip_equipment_voltage` enum('24','48','110','240','Other') DEFAULT NULL,
  `ip_equipment_load_amps` float DEFAULT NULL,
  `ip_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `ip_additional_notes_1` varchar(255) DEFAULT NULL,
  `ip_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `ip_additional_notes_2` varchar(255) DEFAULT NULL,
  `ip_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `ip_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `4-3-trans_dwdm`
--

CREATE TABLE `4-3-trans_dwdm` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `dwdm_manufacturer` varchar(30) DEFAULT NULL,
  `dwdm_model` varchar(30) DEFAULT NULL,
  `dwdm_photo_name` varchar(90) DEFAULT NULL,
  `dwdm_equipment_voltage` enum('24','48','110','240','Other') DEFAULT NULL,
  `dwdm_equipment_load_amps` float DEFAULT NULL,
  `dwdm_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `dwdm_additional_notes_1` varchar(255) DEFAULT NULL,
  `dwdm_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `dwdm_additional_notes_2` varchar(255) DEFAULT NULL,
  `dwdm_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `dwdm_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `4-4-trans_gpon`
--

CREATE TABLE `4-4-trans_gpon` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `gpon_manufacturer` varchar(30) DEFAULT NULL,
  `gpon_model` varchar(30) DEFAULT NULL,
  `gpon_photo_name` varchar(90) DEFAULT NULL,
  `gpon_equipment_voltage` enum('24','48','110','240','Other') DEFAULT NULL,
  `gpon_equipment_load_amps` float DEFAULT NULL,
  `gpon_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `gpon_additional_notes_1` varchar(255) DEFAULT NULL,
  `gpon_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `gpon_additional_notes_2` varchar(255) DEFAULT NULL,
  `gpon_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `gpon_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `4-5-trans_midi`
--

CREATE TABLE `4-5-trans_midi` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `midi_manufacturer` varchar(30) DEFAULT NULL,
  `midi_model` varchar(30) DEFAULT NULL,
  `midi_photo_name` varchar(90) DEFAULT NULL,
  `midi_equipment_voltage` enum('24','48','110','240','Other') DEFAULT NULL,
  `midi_equipment_load_amps` float DEFAULT NULL,
  `midi_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `midi_additional_notes_1` varchar(255) DEFAULT NULL,
  `midi_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `midi_additional_notes_2` varchar(255) DEFAULT NULL,
  `midi_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `midi_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `4-7-trans_superwifi`
--

CREATE TABLE `4-7-trans_superwifi` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `superwifi_manufacturer` varchar(30) DEFAULT NULL,
  `superwifi_model` varchar(30) DEFAULT NULL,
  `superwifi_photo_name` varchar(90) DEFAULT NULL,
  `superwifi_equipment_voltage` enum('24','48','110','240','Other') DEFAULT NULL,
  `superwifi_equipment_load_amps` float DEFAULT NULL,
  `superwifi_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `superwifi_additional_notes_1` varchar(255) DEFAULT NULL,
  `superwifi_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `superwifi_additional_notes_2` varchar(255) DEFAULT NULL,
  `superwifi_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `superwifi_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `4-8-trans_vsat`
--

CREATE TABLE `4-8-trans_vsat` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `vsat_manufacturer` varchar(30) DEFAULT NULL,
  `vsat_model` varchar(30) DEFAULT NULL,
  `vsat_photo_name` varchar(90) DEFAULT NULL,
  `vsat_equipment_voltage` enum('24','48','110','240','Other') DEFAULT NULL,
  `vsat_equipment_load_amps` float DEFAULT NULL,
  `vsat_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `vsat_additional_notes_1` varchar(255) DEFAULT NULL,
  `vsat_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `vsat_additional_notes_2` varchar(255) DEFAULT NULL,
  `vsat_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `vsat_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `5-1-ac_power-mains_grid`
--

CREATE TABLE `5-1-ac_power-mains_grid` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `grid_supplier` varchar(30) DEFAULT NULL,
  `grid_account_id` varchar(30) DEFAULT NULL,
  `grid_phase_type` varchar(10) DEFAULT NULL,
  `grid_kva_rating` int(11) DEFAULT NULL,
  `grid_daya_breaker_rating` int(4) DEFAULT NULL,
  `grid_daya_breaker_photo_name` varchar(90) DEFAULT NULL,
  `grid_meter_type` varchar(10) DEFAULT NULL,
  `grid_meter_manufacturer` varchar(30) DEFAULT NULL,
  `grid_meter_model` varchar(30) DEFAULT NULL,
  `grid_meter_condition` varchar(30) DEFAULT NULL,
  `grid_meter_reading` float DEFAULT NULL,
  `grid_meter_photo_name` varchar(90) DEFAULT NULL,
  `grid_ac_l1_load` float DEFAULT NULL,
  `grid_ac_l1_photo_name` varchar(90) DEFAULT NULL,
  `grid_ac_l2_load` float DEFAULT NULL,
  `grid_ac_l2_photo_name` varchar(90) DEFAULT NULL,
  `grid_ac_l3_load` float DEFAULT NULL,
  `grid_ac_l3_photo_name` varchar(90) DEFAULT NULL,
  `grid_distance_to_grid_pole` float DEFAULT NULL,
  `grid_distance_to_dc_equip` float DEFAULT NULL,
  `grid_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `grid_additional_notes_1` varchar(255) DEFAULT NULL,
  `grid_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `grid_additional_notes_2` varchar(255) DEFAULT NULL,
  `grid_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `grid_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `5-2-ac_power-genset`
--

CREATE TABLE `5-2-ac_power-genset` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `genset_manufacturer` varchar(30) DEFAULT NULL,
  `genset_model` varchar(30) DEFAULT NULL,
  `genset_general_photo_name` varchar(90) DEFAULT NULL,
  `genset_phase` varchar(10) DEFAULT NULL,
  `genset_remote_start_yes_no` varchar(10) DEFAULT NULL,
  `genset_prime_rating_kva` float DEFAULT NULL,
  `genset_standby_rating_kva` float DEFAULT NULL,
  `genset_speed_rpm` varchar(10) DEFAULT NULL,
  `genset_frequency_hz` varchar(10) DEFAULT NULL,
  `genset_output_voltage` varchar(10) DEFAULT NULL,
  `genset_l1_phase_connection` varchar(90) DEFAULT NULL,
  `genset_l2_phase_connection` varchar(90) DEFAULT NULL,
  `genset_l3_phase_connection` varchar(90) DEFAULT NULL,
  `genset_l1_load_running` float DEFAULT NULL,
  `genset_l1_load_value_photo` varchar(90) DEFAULT NULL,
  `genset_l2_load_running` float DEFAULT NULL,
  `genset_l2_load_value_photo` varchar(90) DEFAULT NULL,
  `genset_l3_load_running` float DEFAULT NULL,
  `genset_l3_load_value_photo` varchar(90) DEFAULT NULL,
  `genset_running_hours` float DEFAULT NULL,
  `genset_general_condition` varchar(30) DEFAULT NULL,
  `genset_engine_manufacturer` varchar(30) DEFAULT NULL,
  `genset_engine_model` varchar(30) DEFAULT NULL,
  `genset_alternator_manufacturer` varchar(30) DEFAULT NULL,
  `genset_alternator_model` varchar(30) DEFAULT NULL,
  `genset_alternator_spec_plate_photo_name` varchar(90) DEFAULT NULL,
  `genset_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `genset_additional_notes_1` varchar(255) DEFAULT NULL,
  `genset_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `genset_additional_notes_2` varchar(255) DEFAULT NULL,
  `genset_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `genset_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `5-3-ac_power-genset_starter_battery`
--

CREATE TABLE `5-3-ac_power-genset_starter_battery` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `starter_battery_manufacturer` varchar(30) DEFAULT NULL,
  `starter_battery_type_model` varchar(30) DEFAULT NULL,
  `starter_battery_voltage` varchar(30) DEFAULT NULL,
  `starter_battery_condition` varchar(30) DEFAULT NULL,
  `starter_battery_photo_name` varchar(90) DEFAULT NULL,
  `starter_battery_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `starter_battery_additional_notes_1` varchar(255) DEFAULT NULL,
  `starter_battery_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `starter_battery_additional_notes_2` varchar(255) DEFAULT NULL,
  `starter_battery_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `starter_battery_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `5-4-ac_power-genset_controller`
--

CREATE TABLE `5-4-ac_power-genset_controller` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `genset_controller_manufacturer` varchar(30) DEFAULT NULL,
  `genset_controller_type_model` varchar(30) DEFAULT NULL,
  `genset_controller_condition` varchar(30) DEFAULT NULL,
  `genset_controller_photo_name` varchar(90) DEFAULT NULL,
  `genset_controller_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `genset_controller_additional_notes_1` varchar(255) DEFAULT NULL,
  `genset_controller_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `genset_controller_additional_notes_2` varchar(255) DEFAULT NULL,
  `genset_controller_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `genset_controller_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `5-5-ac_power-ats`
--

CREATE TABLE `5-5-ac_power-ats` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `ats_manufacturer` varchar(30) DEFAULT NULL,
  `ats_type_model` varchar(30) DEFAULT NULL,
  `ats_condition` varchar(30) DEFAULT NULL,
  `ats_photo_name` varchar(90) DEFAULT NULL,
  `ats_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `ats_additional_notes_1` varchar(255) DEFAULT NULL,
  `ats_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `ats_additional_notes_2` varchar(255) DEFAULT NULL,
  `ats_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `ats_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `5-5-ac_power-ats`
--

INSERT INTO `5-5-ac_power-ats` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `ats_manufacturer`, `ats_type_model`, `ats_condition`, `ats_photo_name`, `ats_additional_photo_1_name`, `ats_additional_notes_1`, `ats_additional_photo_2_name`, `ats_additional_notes_2`, `ats_additional_photo_3_name`, `ats_additional_notes_3`) VALUES
(1, '2016-07-30 04:11:10', 1, 1, 'JR_NR_003', 'ATScoUK', 'BigBlue50-002', 'Good', '/images/SLT001-TESTING/JR_NR_003/ats_2016-07-30_11:46:34.jpg', '/images/SLT001-TESTING/JR_NR_003/ats_2016-07-30_11:45:01.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/ats_2016-07-30_11:46:45.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/ats_2016-07-30_11:47:12.jpg', 'Notes for the additional image typed by the engineer.....');

-- --------------------------------------------------------

--
-- Table structure for table `5-6-ac_power-amf`
--

CREATE TABLE `5-6-ac_power-amf` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `amf_manufacturer` varchar(30) DEFAULT NULL,
  `amf_type_model` varchar(30) DEFAULT NULL,
  `amf_condition` varchar(30) DEFAULT NULL,
  `amf_photo_name` varchar(90) DEFAULT NULL,
  `amf_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `amf_additional_notes_1` varchar(255) DEFAULT NULL,
  `amf_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `amf_additional_notes_2` varchar(255) DEFAULT NULL,
  `amf_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `amf_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `5-6-ac_power-amf`
--

INSERT INTO `5-6-ac_power-amf` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `amf_manufacturer`, `amf_type_model`, `amf_condition`, `amf_photo_name`, `amf_additional_photo_1_name`, `amf_additional_notes_1`, `amf_additional_photo_2_name`, `amf_additional_notes_2`, `amf_additional_photo_3_name`, `amf_additional_notes_3`) VALUES
(1, '2016-07-30 04:11:10', 1, 1, 'JR_NR_003', 'DEEPSEA', 'DPS-9001', 'Good', '/images/SLT001-TESTING/JR_NR_003/amf_2016-07-30_11:46:34.jpg', '/images/SLT001-TESTING/JR_NR_003/amf_2016-07-30_11:45:01.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/amf_2016-07-30_11:46:45.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/amf_2016-07-30_11:47:12.jpg', 'Notes for the additional image typed by the engineer.....');

-- --------------------------------------------------------

--
-- Table structure for table `5-7-ac_power-external_fuel_tank`
--

CREATE TABLE `5-7-ac_power-external_fuel_tank` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `fuel_tank_manufacturer` varchar(30) DEFAULT NULL,
  `fuel_tank_type_model` varchar(30) DEFAULT NULL,
  `fuel_tank_capacity_litres` int(11) DEFAULT NULL,
  `fuel_tank_condition` varchar(30) DEFAULT NULL,
  `fuel_tank_photo_name` varchar(90) DEFAULT NULL,
  `fuel_tank_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `fuel_tank_additional_notes_1` varchar(255) DEFAULT NULL,
  `fuel_tank_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `fuel_tank_additional_notes_2` varchar(255) DEFAULT NULL,
  `fuel_tank_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `fuel_tank_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `5-8-ac_power-external_fuel_probe`
--

CREATE TABLE `5-8-ac_power-external_fuel_probe` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `fuel_tank_probe_manufacturer` varchar(30) DEFAULT NULL,
  `fuel_tank_probe_type_model` varchar(30) DEFAULT NULL,
  `fuel_tank_probe_condition` varchar(30) DEFAULT NULL,
  `fuel_tank_probe_photo_name` varchar(90) DEFAULT NULL,
  `fuel_tank_probe_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `fuel_tank_probe_additional_notes_1` varchar(255) DEFAULT NULL,
  `fuel_tank_probe_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `fuel_tank_probe_additional_notes_2` varchar(255) DEFAULT NULL,
  `fuel_tank_probe_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `fuel_tank_probe_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `6-1-dc_power-rectifier_rack`
--

CREATE TABLE `6-1-dc_power-rectifier_rack` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `rect_location` varchar(30) DEFAULT NULL,
  `rect_manufacturer` varchar(30) DEFAULT NULL,
  `rect_model` varchar(30) DEFAULT NULL,
  `rect_controller_model` varchar(30) DEFAULT NULL,
  `rect_dc_load_amps` float DEFAULT NULL,
  `rect_controller_photo_name` varchar(90) DEFAULT NULL,
  `rect_module_model` varchar(30) DEFAULT NULL,
  `rect_output_rating_amps` int(11) DEFAULT NULL,
  `rect_installed_module_qty` int(11) DEFAULT NULL,
  `rect_spare_slots_qty` int(11) DEFAULT NULL,
  `rect_modules_photo_name` varchar(90) DEFAULT NULL,
  `rect_spd_type` varchar(30) DEFAULT NULL,
  `rect_spd_photo_name` varchar(90) DEFAULT NULL,
  `rect_ac_breaker_type` varchar(30) DEFAULT NULL,
  `rect_ac_breaker_rating_amps` int(11) DEFAULT NULL,
  `rect_ac_breaker_photo_name` varchar(90) DEFAULT NULL,
  `rect_dc_breaker_photo_name` varchar(90) DEFAULT NULL,
  `rect_dc_breaker_1_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_1_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_1_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_2_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_2_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_2_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_3_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_3_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_3_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_4_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_4_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_4_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_5_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_5_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_5_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_6_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_6_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_6_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_7_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_7_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_7_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_8_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_8_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_8_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_9_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_9_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_9_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_10_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_10_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_10_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_11_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_11_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_11_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_12_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_12_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_12_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_13_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_13_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_13_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_14_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_14_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_14_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_15_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_15_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_15_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_16_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_16_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_16_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_17_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_17_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_17_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_18_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_18_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_18_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_19_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_19_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_19_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_20_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_20_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_20_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_21_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_21_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_21_load_amps` float DEFAULT NULL,
  `rect_dc_breaker_22_rating_amps` int(11) DEFAULT NULL,
  `rect_dc_breaker_22_name` varchar(30) DEFAULT NULL,
  `rect_dc_breaker_22_load_amps` float DEFAULT NULL,
  `rect_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `rect_additional_notes_1` varchar(255) DEFAULT NULL,
  `rect_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `rect_additional_notes_2` varchar(255) DEFAULT NULL,
  `rect_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `rect_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `6-2-dc_power-battery`
--

CREATE TABLE `6-2-dc_power-battery` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `battery_manufacturer` varchar(30) DEFAULT NULL,
  `battery_model_number` varchar(30) DEFAULT NULL,
  `battery_design_voltage` int(4) DEFAULT NULL,
  `number_of_blocks_in_bank` int(4) DEFAULT NULL,
  `bank_capacity_ah` int(4) DEFAULT NULL,
  `bank_voltage_disconnected` float DEFAULT NULL,
  `battery_temperature` float DEFAULT NULL,
  `battery_condition` varchar(30) DEFAULT NULL,
  `battery_bank_photo_name` varchar(30) DEFAULT NULL,
  `battery_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `battery_additional_notes_1` varchar(255) DEFAULT NULL,
  `battery_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `battery_additional_notes_2` varchar(255) DEFAULT NULL,
  `battery_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `battery_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `6-2-dc_power-battery`
--

INSERT INTO `6-2-dc_power-battery` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `battery_manufacturer`, `battery_model_number`, `battery_design_voltage`, `number_of_blocks_in_bank`, `bank_capacity_ah`, `bank_voltage_disconnected`, `battery_temperature`, `battery_condition`, `battery_bank_photo_name`, `battery_additional_photo_1_name`, `battery_additional_notes_1`, `battery_additional_photo_2_name`, `battery_additional_notes_2`, `battery_additional_photo_3_name`, `battery_additional_notes_3`) VALUES
(1, '2016-07-31 11:06:07', 1, 1, 'JR_NR_003', 'Shoto', 'LM170-93A', 12, 4, 170, 53.9, 26.8, 'Good', '/images/SLT001-TESTING/JR_NR_0', '/images/SLT001-TESTING/JR_NR_003/battery_2016-07-31_11:45:01.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/battery_2016-07-31_11:46:45.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/battery_2016-07-31_11:47:12.jpg', 'Notes for the additional image typed by the engineer.....');

-- --------------------------------------------------------

--
-- Table structure for table `7-1-cme-indoor_cooling`
--

CREATE TABLE `7-1-cme-indoor_cooling` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `indoor_cooling_manufacturer` varchar(30) DEFAULT NULL,
  `indoor_cooling_type_model` varchar(30) DEFAULT NULL,
  `indoor_cooling_btu_rating` int(11) DEFAULT NULL,
  `indoor_cooling_ac_load` float DEFAULT NULL,
  `indoor_cooling_condition` varchar(30) DEFAULT NULL,
  `indoor_cooling_photo_name` varchar(30) DEFAULT NULL,
  `indoor_cooling_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `indoor_cooling_additional_notes_1` varchar(255) DEFAULT NULL,
  `indoor_cooling_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `indoor_cooling_additional_notes_2` varchar(255) DEFAULT NULL,
  `indoor_cooling_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `indoor_cooling_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `7-2-cme-ac_breakers`
--

CREATE TABLE `7-2-cme-ac_breakers` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `ac_breaker_photo_name` varchar(90) DEFAULT NULL,
  `ac_breaker_1_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_1_name` varchar(30) DEFAULT NULL,
  `ac_breaker_1_load_amps` float DEFAULT NULL,
  `ac_breaker_2_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_2_name` varchar(30) DEFAULT NULL,
  `ac_breaker_2_load_amps` float DEFAULT NULL,
  `ac_breaker_3_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_3_name` varchar(30) DEFAULT NULL,
  `ac_breaker_3_load_amps` float DEFAULT NULL,
  `ac_breaker_4_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_4_name` varchar(30) DEFAULT NULL,
  `ac_breaker_4_load_amps` float DEFAULT NULL,
  `ac_breaker_5_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_5_name` varchar(30) DEFAULT NULL,
  `ac_breaker_5_load_amps` float DEFAULT NULL,
  `ac_breaker_6_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_6_name` varchar(30) DEFAULT NULL,
  `ac_breaker_6_load_amps` float DEFAULT NULL,
  `ac_breaker_7_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_7_name` varchar(30) DEFAULT NULL,
  `ac_breaker_7_load_amps` float DEFAULT NULL,
  `ac_breaker_8_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_8_name` varchar(30) DEFAULT NULL,
  `ac_breaker_8_load_amps` float DEFAULT NULL,
  `ac_breaker_9_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_9_name` varchar(30) DEFAULT NULL,
  `ac_breaker_9_load_amps` float DEFAULT NULL,
  `ac_breaker_10_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_10_name` varchar(30) DEFAULT NULL,
  `ac_breaker_10_load_amps` float DEFAULT NULL,
  `ac_breaker_11_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_11_name` varchar(30) DEFAULT NULL,
  `ac_breaker_11_load_amps` float DEFAULT NULL,
  `ac_breaker_12_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_12_name` varchar(30) DEFAULT NULL,
  `ac_breaker_12_load_amps` float DEFAULT NULL,
  `ac_breaker_13_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_13_name` varchar(30) DEFAULT NULL,
  `ac_breaker_13_load_amps` float DEFAULT NULL,
  `ac_breaker_14_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_14_name` varchar(30) DEFAULT NULL,
  `ac_breaker_14_load_amps` float DEFAULT NULL,
  `ac_breaker_15_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_15_name` varchar(30) DEFAULT NULL,
  `ac_breaker_15_load_amps` float DEFAULT NULL,
  `ac_breaker_16_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_16_name` varchar(30) DEFAULT NULL,
  `ac_breaker_16_load_amps` float DEFAULT NULL,
  `ac_breaker_17_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_17_name` varchar(30) DEFAULT NULL,
  `ac_breaker_17_load_amps` float DEFAULT NULL,
  `ac_breaker_18_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_18_name` varchar(30) DEFAULT NULL,
  `ac_breaker_18_load_amps` float DEFAULT NULL,
  `ac_breaker_19_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_19_name` varchar(30) DEFAULT NULL,
  `ac_breaker_19_load_amps` float DEFAULT NULL,
  `ac_breaker_20_rating_amps` int(11) DEFAULT NULL,
  `ac_breaker_20_name` varchar(30) DEFAULT NULL,
  `ac_breaker_20_load_amps` float DEFAULT NULL,
  `ac_breaker_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `ac_breaker_additional_notes_1` varchar(255) DEFAULT NULL,
  `ac_breaker_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `ac_breaker_additional_notes_2` varchar(255) DEFAULT NULL,
  `ac_breaker_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `ac_breaker_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `7-3-cme-spd`
--

CREATE TABLE `7-3-cme-spd` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `spd_manufacturer` varchar(30) DEFAULT NULL,
  `spd_type_model` varchar(30) DEFAULT NULL,
  `spd_condition` varchar(30) DEFAULT NULL,
  `spd_photo_name` varchar(90) DEFAULT NULL,
  `spd_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `spd_additional_notes_1` varchar(255) DEFAULT NULL,
  `spd_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `spd_additional_notes_2` varchar(255) DEFAULT NULL,
  `spd_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `spd_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `7-3-cme-spd`
--

INSERT INTO `7-3-cme-spd` (`id`, `system_datetime_of_insert`, `internal_project_id`, `system_audit_id`, `site_reference_id`, `spd_manufacturer`, `spd_type_model`, `spd_condition`, `spd_photo_name`, `spd_additional_photo_1_name`, `spd_additional_notes_1`, `spd_additional_photo_2_name`, `spd_additional_notes_2`, `spd_additional_photo_3_name`, `spd_additional_notes_3`) VALUES
(1, '2016-07-30 04:10:10', 1, 1, 'JR_NR_003', 'Monroe', 'DP-32A-1', 'Good', '/images/SLT001-TESTING/JR_NR_003/spd_2016-07-30_11:30:24.jpg', '/images/SLT001-TESTING/JR_NR_003/spd_2016-07-30_11:31:01.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/spd_2016-07-30_11:32:45.jpg', 'Notes for the additional image typed by the engineer.....', '/images/SLT001-TESTING/JR_NR_003/spd_2016-07-30_11:33:12.jpg', 'Notes for the additional image typed by the engineer.....');

-- --------------------------------------------------------

--
-- Table structure for table `7-4-cme-earth_ground`
--

CREATE TABLE `7-4-cme-earth_ground` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `earth_earth_pit_1_photo` varchar(90) DEFAULT NULL,
  `earth_earth_pit_2_photo` varchar(90) DEFAULT NULL,
  `earth_external_bus_bars_condition` varchar(30) DEFAULT NULL,
  `earth_external_bus_bars_photo_name` varchar(90) DEFAULT NULL,
  `earth_internal_bus_bars_condition` varchar(30) DEFAULT NULL,
  `earth_internal_bus_bars_photo_1_name` varchar(90) DEFAULT NULL,
  `earth_internal_bus_bars_photo_2_name` varchar(90) DEFAULT NULL,
  `earth_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `earth_additional_notes_1` varchar(255) DEFAULT NULL,
  `earth_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `earth_additional_notes_2` varchar(255) DEFAULT NULL,
  `earth_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `earth_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `7-5-cme-awl`
--

CREATE TABLE `7-5-cme-awl` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `awl_power_type` varchar(30) DEFAULT NULL,
  `awl_operation_type` varchar(30) DEFAULT NULL,
  `awl_condition` varchar(30) DEFAULT NULL,
  `awl_photo_name` varchar(90) DEFAULT NULL,
  `awl_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `awl_additional_notes_1` varchar(255) DEFAULT NULL,
  `awl_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `awl_additional_notes_2` varchar(255) DEFAULT NULL,
  `awl_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `awl_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `7-6-cme-lighting`
--

CREATE TABLE `7-6-cme-lighting` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `lighting_interior_power_type` varchar(30) DEFAULT NULL,
  `lighting_interior_type` varchar(30) DEFAULT NULL,
  `lighting_interior_condition` varchar(30) DEFAULT NULL,
  `lighting_interior_photo_name` varchar(90) DEFAULT NULL,
  `lighting_external_power_type` varchar(30) DEFAULT NULL,
  `lighting_external_type` varchar(30) DEFAULT NULL,
  `lighting_external_condition` varchar(30) DEFAULT NULL,
  `lighting_external_photo_name` varchar(90) DEFAULT NULL,
  `lighting_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `lighting_additional_notes_1` varchar(255) DEFAULT NULL,
  `lighting_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `lighting_additional_notes_2` varchar(255) DEFAULT NULL,
  `lighting_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `lighting_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `7-7-cme-foundations`
--

CREATE TABLE `7-7-cme-foundations` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `foundation_antenna_condition` varchar(30) DEFAULT NULL,
  `foundation_antenna_photo_name` varchar(90) DEFAULT NULL,
  `foundation_equipment_1_condition` varchar(30) DEFAULT NULL,
  `foundation_equipment_1_photo_name` varchar(90) DEFAULT NULL,
  `foundation_equipment_2_condition` varchar(30) DEFAULT NULL,
  `foundation_equipment_2_photo_name` varchar(90) DEFAULT NULL,
  `foundation_equipment_3_condition` varchar(30) DEFAULT NULL,
  `foundation_equipment_3_photo_name` varchar(90) DEFAULT NULL,
  `foundation_equipment_4_condition` varchar(30) DEFAULT NULL,
  `foundation_equipment_4_photo_name` varchar(90) DEFAULT NULL,
  `foundation_generator_1_condition` varchar(30) DEFAULT NULL,
  `foundation_generator_1_photo_name` varchar(90) DEFAULT NULL,
  `foundation_generator_2_condition` varchar(30) DEFAULT NULL,
  `foundation_generator_2_photo_name` varchar(90) DEFAULT NULL,
  `foundation_generator_3_condition` varchar(30) DEFAULT NULL,
  `foundation_generator_3_photo_name` varchar(90) DEFAULT NULL,
  `foundation_generator_4_condition` varchar(30) DEFAULT NULL,
  `foundation_generator_4_photo_name` varchar(90) DEFAULT NULL,
  `foundation_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `foundation_additional_notes_1` varchar(255) DEFAULT NULL,
  `foundation_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `foundation_additional_notes_2` varchar(255) DEFAULT NULL,
  `foundation_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `foundation_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `7-8-cme-perimeter`
--

CREATE TABLE `7-8-cme-perimeter` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `perimeter_type` varchar(30) DEFAULT NULL,
  `perimeter_condition` varchar(30) DEFAULT NULL,
  `perimeter_photo_name` varchar(90) DEFAULT NULL,
  `perimeter_entrance_type` varchar(30) DEFAULT NULL,
  `perimeter_entrance_condition` varchar(30) DEFAULT NULL,
  `perimeter_entrance_photo_name` varchar(90) DEFAULT NULL,
  `perimeter_locking_mechanism` varchar(30) DEFAULT NULL,
  `perimeter_locking_mechanism_condition` varchar(30) DEFAULT NULL,
  `perimeter_locking_mechanism_photo_name` varchar(90) DEFAULT NULL,
  `perimeter_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `perimeter_additional_notes_1` varchar(255) DEFAULT NULL,
  `perimeter_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `perimeter_additional_notes_2` varchar(255) DEFAULT NULL,
  `perimeter_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `perimeter_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `7-9-cme-flooring`
--

CREATE TABLE `7-9-cme-flooring` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `flooring_type` varchar(30) DEFAULT NULL,
  `flooring_condition` varchar(30) DEFAULT NULL,
  `flooring_photo_name` varchar(90) DEFAULT NULL,
  `flooring_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `flooring_additional_notes_1` varchar(255) DEFAULT NULL,
  `flooring_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `flooring_additional_notes_2` varchar(255) DEFAULT NULL,
  `flooring_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `flooring_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `8-1-security-fire`
--

CREATE TABLE `8-1-security-fire` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `smoke_detector_type` varchar(30) DEFAULT NULL,
  `smoke_detector_condition` varchar(30) DEFAULT NULL,
  `smoke_detector_photo_name` varchar(90) DEFAULT NULL,
  `extinguisher_1_type` varchar(30) DEFAULT NULL,
  `extinguisher_1_condition` varchar(30) DEFAULT NULL,
  `extinguisher_1_photo_name` varchar(90) DEFAULT NULL,
  `extinguisher_2_type` varchar(30) DEFAULT NULL,
  `extinguisher_2_condition` varchar(30) DEFAULT NULL,
  `extinguisher_2_photo_name` varchar(90) DEFAULT NULL,
  `extinguisher_3_type` varchar(30) DEFAULT NULL,
  `extinguisher_3_condition` varchar(30) DEFAULT NULL,
  `extinguisher_3_photo_name` varchar(90) DEFAULT NULL,
  `extinguisher_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `extinguisher_additional_notes_1` varchar(255) DEFAULT NULL,
  `extinguisher_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `extinguisher_additional_notes_2` varchar(255) DEFAULT NULL,
  `extinguisher_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `extinguisher_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `8-2-security-intruder`
--

CREATE TABLE `8-2-security-intruder` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `cctv_manufacturer` varchar(30) DEFAULT NULL,
  `cctv_condition` varchar(30) DEFAULT NULL,
  `cctv_photo_name` varchar(90) DEFAULT NULL,
  `motion_detector_manufacturer` varchar(30) DEFAULT NULL,
  `motion_detector_condition` varchar(30) DEFAULT NULL,
  `motion_detector_photo_name` varchar(90) DEFAULT NULL,
  `intruder_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `intruder_additional_notes_1` varchar(255) DEFAULT NULL,
  `intruder_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `intruder_additional_notes_2` varchar(255) DEFAULT NULL,
  `intruder_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `intruder_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `9-1-other-active`
--

CREATE TABLE `9-1-other-active` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `other_active_technology_type` varchar(30) DEFAULT NULL,
  `other_active_manufacturer` varchar(30) DEFAULT NULL,
  `other_active_model` varchar(30) DEFAULT NULL,
  `other_active_location` varchar(30) DEFAULT NULL,
  `other_active_notes` varchar(255) DEFAULT NULL,
  `other_active_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `other_active_additional_notes_1` varchar(255) DEFAULT NULL,
  `other_active_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `other_active_additional_notes_2` varchar(255) DEFAULT NULL,
  `other_active_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `other_active_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `10-1-other-passive`
--

CREATE TABLE `10-1-other-passive` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `other_passive_technology_type` varchar(30) DEFAULT NULL,
  `other_passive_manufacturer` varchar(30) DEFAULT NULL,
  `other_passive_model` varchar(30) DEFAULT NULL,
  `other_passive_location` varchar(30) DEFAULT NULL,
  `other_passive_notes` varchar(255) DEFAULT NULL,
  `other_passive_additional_photo_1_name` varchar(90) DEFAULT NULL,
  `other_passive_additional_notes_1` varchar(255) DEFAULT NULL,
  `other_passive_additional_photo_2_name` varchar(90) DEFAULT NULL,
  `other_passive_additional_notes_2` varchar(255) DEFAULT NULL,
  `other_passive_additional_photo_3_name` varchar(90) DEFAULT NULL,
  `other_passive_additional_notes_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `11-1-additional-info`
--

CREATE TABLE `11-1-additional-info` (
  `id` int(11) NOT NULL,
  `system_datetime_of_insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `internal_project_id` int(11) DEFAULT NULL,
  `system_audit_id` int(11) DEFAULT NULL,
  `site_reference_id` varchar(60) NOT NULL,
  `additional_photo_1_name` varchar(90) DEFAULT NULL,
  `additional_notes_1` varchar(255) DEFAULT NULL,
  `additional_photo_2_name` varchar(90) DEFAULT NULL,
  `additional_notes_2` varchar(255) DEFAULT NULL,
  `additional_photo_3_name` varchar(90) DEFAULT NULL,
  `additional_notes_3` varchar(255) DEFAULT NULL,
  `additional_photo_4_name` varchar(90) DEFAULT NULL,
  `additional_notes_4` varchar(255) DEFAULT NULL,
  `additional_photo_5_name` varchar(90) DEFAULT NULL,
  `additional_notes_5` varchar(255) DEFAULT NULL,
  `additional_photo_6_name` varchar(90) DEFAULT NULL,
  `additional_notes_6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data_dropdown_list_dual_level`
--

CREATE TABLE `data_dropdown_list_dual_level` (
  `id` int(11) NOT NULL,
  `system_datetime_of_last_change` datetime NOT NULL,
  `last_changed_by` varchar(12) NOT NULL,
  `internal_project_name` varchar(30) DEFAULT NULL,
  `internal_project_id` int(11) NOT NULL DEFAULT '1',
  `field_id` varchar(12) DEFAULT NULL,
  `ref_key_name` varchar(16) DEFAULT NULL,
  `ref_field_id` varchar(16) DEFAULT NULL,
  `item_1` varchar(16) DEFAULT NULL,
  `item_2` varchar(16) DEFAULT NULL,
  `item_3` varchar(16) DEFAULT NULL,
  `item_4` varchar(16) DEFAULT NULL,
  `item_5` varchar(16) DEFAULT NULL,
  `item_6` varchar(16) DEFAULT NULL,
  `item_7` varchar(16) DEFAULT NULL,
  `item_8` varchar(16) DEFAULT NULL,
  `item_9` varchar(16) DEFAULT NULL,
  `item_10` varchar(16) DEFAULT NULL,
  `item_11` varchar(16) DEFAULT NULL,
  `item_12` varchar(16) DEFAULT NULL,
  `item_13` varchar(16) DEFAULT NULL,
  `item_14` varchar(16) DEFAULT NULL,
  `item_15` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_dropdown_list_dual_level`
--

INSERT INTO `data_dropdown_list_dual_level` (`id`, `system_datetime_of_last_change`, `last_changed_by`, `internal_project_name`, `internal_project_id`, `field_id`, `ref_key_name`, `ref_field_id`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`, `item_9`, `item_10`, `item_11`, `item_12`, `item_13`, `item_14`, `item_15`) VALUES
(1, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', 'Alcatel Lucent', 'BNCALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', 'Ericsson', 'BNCERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', 'Huawei', 'BNCHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', 'NSN', 'BNCNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', 'ZTE', 'BNCZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', 'Alcatel Lucent', 'BTSALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', 'Ericsson', 'BTSERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', 'Huawei', 'BTSHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', 'NSN', 'BTSNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', 'ZTE', 'BTSZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', 'Alcatel Lucent', 'GSMALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', 'Ericsson', 'GSMERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', 'Huawei', 'GSMHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', 'NSN', 'GSMNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', 'ZTE', 'GSMZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', 'Alcatel Lucent', 'MWALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', 'Ericsson', 'MWERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', 'Huawei', 'MWHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', 'NSN', 'MWNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', 'ZTE', 'MWZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', 'Alcatel Lucent', 'IPALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', 'Ericsson', 'IPERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', 'Huawei', 'IPHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', 'NSN', 'IPNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', 'ZTE', 'IPZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', 'Alcatel Lucent', 'GPALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', 'Ericsson', 'GPERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', 'Huawei', 'GPHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', 'NSN', 'GPNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', 'ZTE', 'GPZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', 'Alcatel Lucent', 'MIALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', 'Ericsson', 'MIERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', 'Huawei', 'MIHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', 'NSN', 'MINSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', 'ZTE', 'MIZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', 'Alcatel Lucent', 'MPALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', 'Ericsson', 'MPERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', 'Huawei', 'MPHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', 'NSN', 'MPNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', 'ZTE', 'MPZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', 'Alcatel Lucent', 'SUALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', 'Ericsson', 'SUERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', 'Huawei', 'SUHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', 'NSN', 'SUNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', 'ZTE', 'SUZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', 'Alcatel Lucent', 'VSALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', 'Ericsson', 'VSERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', 'Huawei', 'VSHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', 'NSN', 'VSNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', 'ZTE', 'VSZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-08', NULL, NULL, 'MeterMan01', 'MeterMan02', 'MeterMan03', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', 'MeterMan01', 'Mod-1', 'Mod-2', 'Mod-3', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', 'MeterMan02', 'Mod-1', 'Mod-2', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', 'MeterMan03', 'Mod-1', 'Mod-2', 'Mod-3', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-01', NULL, NULL, 'Perkin', 'Catapillar', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', 'Perkin', 'PER01', 'PER02', 'PER03', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', 'Catapillar', 'CAT01', 'CAT02', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-22', NULL, NULL, 'Perkin', 'Catapillar', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', 'Perkin', 'PER01', 'PER02', 'PER03', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', 'Catapillar', 'CAT01', 'CAT02', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-24', NULL, NULL, 'Perkin', 'Catapillar', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', 'Perkin', 'PER01', 'PER02', 'PER03', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', 'Catapillar', 'CAT01', 'CAT02', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-01', NULL, NULL, 'Shoto', 'BlueStar', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', 'Shoto', '170AH12', '210AH12', '110AH6', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', 'BlueStar', '210AH12', '110AH6', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-01', NULL, NULL, 'GenStart', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', 'GenStart', 'GEN01-01', 'GEN01-03', '1GEN01-0410AH6', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-01', NULL, NULL, 'ATS Corp', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', 'ATS Corp', 'AT001-AB', 'AT001-AG', 'AT001-AH', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-01', NULL, NULL, 'AMF Corp', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', 'AMF Corp', 'AM001-AB', 'AM001-AG', 'AM001-AH', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-01', NULL, NULL, 'Global Fuel', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `data_dropdown_list_dual_level` (`id`, `system_datetime_of_last_change`, `last_changed_by`, `internal_project_name`, `internal_project_id`, `field_id`, `ref_key_name`, `ref_field_id`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`, `item_9`, `item_10`, `item_11`, `item_12`, `item_13`, `item_14`, `item_15`) VALUES
(290, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', 'Global Fuel', 'EXT500-A', 'EXT600-A', 'INT450-B', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-01', NULL, NULL, 'Global Fuel', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', 'Global Fuel', 'PB004', 'PB005', 'PB008', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-02', NULL, NULL, 'Eltek', 'Delta', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', 'Eltek', 'ELK2000', 'ELK3000', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', 'Delta', 'DPS6000', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-02', NULL, NULL, 'Eltek', 'Delta', 'OTHER', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(338, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', 'Eltek', 'CT1000', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', 'Delta', 'CTR2500', 'CTR2600', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-01', NULL, NULL, 'Shoto', 'NorthStar', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', 'Shoto', '170AH12', '210AH12', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', 'NorthStar', '240AH12V', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-01', NULL, NULL, 'Panasonic', 'Hitachi', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', 'Panasonic', '1200BTU-78', '1500BTU-79', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', 'Hitachi', 'HT01-AIR-034', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-01', NULL, NULL, 'Pano', 'Hitac', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', 'Pano', 'SPD001-T6', 'SPD004-T9', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', 'Hitac', 'HIYSP03-AH', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1793, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1794, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', 'Alcatel Lucent', 'BNCALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1795, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', 'Ericsson', 'BNCERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1796, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', 'Huawei', 'BNCHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1797, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', 'NSN', 'BNCNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1798, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', 'ZTE', 'BNCZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1799, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1800, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1801, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1802, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1803, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1804, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1805, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1806, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1807, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1808, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-1-02', '3-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1809, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1810, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', 'Alcatel Lucent', 'BTSALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1811, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', 'Ericsson', 'BTSERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1812, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', 'Huawei', 'BTSHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1813, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', 'NSN', 'BTSNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1814, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', 'ZTE', 'BTSZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1815, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1816, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1817, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1818, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1819, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1820, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1821, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1822, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1823, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1824, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-2-02', '3-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1825, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1826, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', 'Alcatel Lucent', 'GSMALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1827, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', 'Ericsson', 'GSMERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1828, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', 'Huawei', 'GSMHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1829, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', 'NSN', 'GSMNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1830, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', 'ZTE', 'GSMZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1831, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1832, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1833, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1834, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1835, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1836, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1837, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1838, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1839, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1840, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '3-3-02', '3-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1841, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1842, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', 'Alcatel Lucent', 'MWALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1843, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', 'Ericsson', 'MWERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1844, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', 'Huawei', 'MWHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1845, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', 'NSN', 'MWNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1846, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', 'ZTE', 'MWZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1847, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1848, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1849, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1850, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1851, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1852, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1853, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1854, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1855, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1856, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-1-02', '4-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1857, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1858, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', 'Alcatel Lucent', 'IPALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1859, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', 'Ericsson', 'IPERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1860, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', 'Huawei', 'IPHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1861, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', 'NSN', 'IPNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1862, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', 'ZTE', 'IPZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1863, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1864, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1865, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1866, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1867, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1868, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1869, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1870, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1871, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1872, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-2-02', '4-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1873, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1874, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', 'Alcatel Lucent', 'GPALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1875, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', 'Ericsson', 'GPERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1876, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', 'Huawei', 'GPHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1877, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', 'NSN', 'GPNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1878, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', 'ZTE', 'GPZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1879, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1880, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1881, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1882, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1883, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1884, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1885, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1886, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1887, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1888, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-4-02', '4-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1889, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1890, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', 'Alcatel Lucent', 'MIALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1891, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', 'Ericsson', 'MIERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1892, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', 'Huawei', 'MIHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1893, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', 'NSN', 'MINSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1894, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', 'ZTE', 'MIZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1895, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1896, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1897, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1898, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1899, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1900, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1901, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1902, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1903, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1904, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-5-02', '4-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1905, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1906, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', 'Alcatel Lucent', 'MPALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1907, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', 'Ericsson', 'MPERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1908, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', 'Huawei', 'MPHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1909, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', 'NSN', 'MPNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1910, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', 'ZTE', 'MPZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1911, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1912, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1913, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1914, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1915, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1916, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1917, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1918, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1919, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1920, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-6-02', '4-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1921, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1922, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', 'Alcatel Lucent', 'SUALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1923, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', 'Ericsson', 'SUERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1924, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', 'Huawei', 'SUHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1925, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', 'NSN', 'SUNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1926, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', 'ZTE', 'SUZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1927, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1928, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1929, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1930, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1931, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1932, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1933, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1934, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1935, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1936, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-7-02', '4-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1937, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-01', NULL, NULL, 'Alcatel Lucent', 'Ericsson', 'Huawei', 'NSN', 'ZTE', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1938, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', 'Alcatel Lucent', 'VSALU1288', 'ALU1378', 'ALU3445', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1939, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', 'Ericsson', 'VSERC1122', 'ERC1133', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1940, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', 'Huawei', 'VSHW123', 'HW234', 'HW345', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1941, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', 'NSN', 'VSNSN001', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1942, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', 'ZTE', 'VSZT004', 'ZT005', 'ZT006', 'ZT007', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1943, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1944, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1945, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1946, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1947, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1948, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1949, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1950, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1951, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1952, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '4-8-02', '4-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1953, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-08', NULL, NULL, 'MeterMan01', 'MeterMan02', 'MeterMan03', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1954, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', 'MeterMan01', 'Mod-1', 'Mod-2', 'Mod-3', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1955, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', 'MeterMan02', 'Mod-1', 'Mod-2', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1956, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', 'MeterMan03', 'Mod-1', 'Mod-2', 'Mod-3', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1957, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1958, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1959, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1960, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1961, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1962, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1963, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1964, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1965, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1966, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1967, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1968, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-1-09', '5-1-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `data_dropdown_list_dual_level` (`id`, `system_datetime_of_last_change`, `last_changed_by`, `internal_project_name`, `internal_project_id`, `field_id`, `ref_key_name`, `ref_field_id`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`, `item_9`, `item_10`, `item_11`, `item_12`, `item_13`, `item_14`, `item_15`) VALUES
(1969, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-01', NULL, NULL, 'Perkin', 'Catapillar', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1970, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', 'Perkin', 'PER01', 'PER02', 'PER03', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1971, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', 'Catapillar', 'CAT01', 'CAT02', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1972, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1973, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1974, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1975, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1976, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1977, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1978, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1979, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1980, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1981, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1982, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1983, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1984, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-02', '5-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1985, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-22', NULL, NULL, 'Perkin', 'Catapillar', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1986, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', 'Perkin', 'PER01', 'PER02', 'PER03', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1987, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', 'Catapillar', 'CAT01', 'CAT02', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1988, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1989, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1990, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1991, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1992, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1993, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1994, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1995, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1996, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1997, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1998, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1999, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-23', '5-2-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2001, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-24', NULL, NULL, 'Perkin', 'Catapillar', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2002, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', 'Perkin', 'PER01', 'PER02', 'PER03', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2003, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', 'Catapillar', 'CAT01', 'CAT02', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2004, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2005, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2006, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2007, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2008, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2009, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2010, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2011, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2012, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2013, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2014, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2015, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2016, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-2-25', '5-2-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2017, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-01', NULL, NULL, 'Shoto', 'BlueStar', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2018, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', 'Shoto', '170AH12', '210AH12', '110AH6', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2019, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', 'BlueStar', '210AH12', '110AH6', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2020, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2021, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2022, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2023, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2024, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2025, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2026, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2027, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2028, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2029, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2030, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2031, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2032, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-3-02', '5-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2033, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-01', NULL, NULL, 'GenStart', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2034, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', 'GenStart', 'GEN01-01', 'GEN01-03', '1GEN01-0410AH6', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2035, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2036, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2037, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2038, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2039, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2040, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2041, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2042, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2043, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2044, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2045, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2046, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2047, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2048, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-4-02', '5-4-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2049, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-01', NULL, NULL, 'ATS Corp', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2050, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', 'ATS Corp', 'AT001-AB', 'AT001-AG', 'AT001-AH', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2051, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2052, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2053, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2054, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2055, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2056, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2057, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2058, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2059, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2060, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2061, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2062, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2063, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2064, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-5-02', '5-5-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2065, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-01', NULL, NULL, 'AMF Corp', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2066, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', 'AMF Corp', 'AM001-AB', 'AM001-AG', 'AM001-AH', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2067, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2068, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2069, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2070, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2071, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2072, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2073, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2074, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2075, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2076, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2077, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2078, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2079, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2080, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-6-02', '5-6-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2081, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-01', NULL, NULL, 'Global Fuel', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2082, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', 'Global Fuel', 'EXT500-A', 'EXT600-A', 'INT450-B', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2083, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2084, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2085, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2086, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2087, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2088, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2089, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2090, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2091, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2092, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2093, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2094, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2095, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2096, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-7-02', '5-7-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2097, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-01', NULL, NULL, 'Global Fuel', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2098, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', 'Global Fuel', 'PB004', 'PB005', 'PB008', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2099, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2100, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2101, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2102, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2103, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2104, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2105, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2106, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2107, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2108, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2109, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2110, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2111, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2112, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '5-8-02', '5-8-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2113, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-02', NULL, NULL, 'Eltek', 'Delta', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2114, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', 'Eltek', 'ELK2000', 'ELK3000', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2115, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', 'Delta', 'DPS6000', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2116, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2117, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2118, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2119, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2120, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2121, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2122, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2123, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2124, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2125, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2126, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2127, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2128, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-03', '6-1-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2129, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-02', NULL, NULL, 'Eltek', 'Delta', 'OTHER', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2130, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', 'Eltek', 'CT1000', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2131, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', 'Delta', 'CTR2500', 'CTR2600', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2132, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2133, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2134, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2135, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2136, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2137, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2138, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2139, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2140, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2141, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2142, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2143, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2144, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-1-04', '6-1-02', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2145, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-01', NULL, NULL, 'Shoto', 'NorthStar', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2146, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', 'Shoto', '170AH12', '210AH12', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2147, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', 'NorthStar', '240AH12V', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2148, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2149, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2150, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2151, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2152, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2153, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2154, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2155, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2156, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2157, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2158, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2159, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2160, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '6-2-02', '6-2-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2161, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-01', NULL, NULL, 'Panasonic', 'Hitachi', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2162, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', 'Panasonic', '1200BTU-78', '1500BTU-79', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2163, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', 'Hitachi', 'HT01-AIR-034', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2164, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2165, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2166, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2167, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2168, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2169, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2170, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2171, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2172, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2173, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2174, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2175, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2176, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-1-02', '7-1-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2177, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-01', NULL, NULL, 'Pano', 'Hitac', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2178, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', 'Pano', 'SPD001-T6', 'SPD004-T9', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2179, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', 'Hitac', 'HIYSP03-AH', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2180, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', 'OTHER', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2181, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2182, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2183, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2184, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2185, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2186, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2187, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2188, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2189, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2190, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2191, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2192, '2018-07-17 10:34:19', 'ADM001', 'TA004', 4, '7-3-02', '7-3-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_dropdown_list_single_level`
--

CREATE TABLE `data_dropdown_list_single_level` (
  `id` int(11) NOT NULL,
  `system_datetime_of_last_change` datetime NOT NULL,
  `last_changed_by` varchar(12) NOT NULL,
  `internal_project_name` varchar(32) DEFAULT NULL,
  `internal_project_id` int(11) NOT NULL DEFAULT '1',
  `field_id` varchar(12) DEFAULT NULL,
  `item_1` varchar(16) DEFAULT NULL,
  `item_2` varchar(16) DEFAULT NULL,
  `item_3` varchar(16) DEFAULT NULL,
  `item_4` varchar(16) DEFAULT NULL,
  `item_5` varchar(16) DEFAULT NULL,
  `item_6` varchar(16) DEFAULT NULL,
  `item_7` varchar(16) DEFAULT NULL,
  `item_8` varchar(16) DEFAULT NULL,
  `item_9` varchar(16) DEFAULT NULL,
  `item_10` varchar(16) DEFAULT NULL,
  `item_11` varchar(16) DEFAULT NULL,
  `item_12` varchar(16) DEFAULT NULL,
  `item_13` varchar(16) DEFAULT NULL,
  `item_14` varchar(16) DEFAULT NULL,
  `item_15` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_dropdown_list_single_level`
--

INSERT INTO `data_dropdown_list_single_level` (`id`, `system_datetime_of_last_change`, `last_changed_by`, `internal_project_name`, `internal_project_id`, `field_id`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`, `item_9`, `item_10`, `item_11`, `item_12`, `item_13`, `item_14`, `item_15`) VALUES
(1, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '0-2-10', 'Indoor', 'Outdoor', 'Mixed', 'RoofTopSite', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '0-2-17', 'Sunny', 'Cloudy', 'Raining', 'Windy', 'Storm', 'Freezing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '1-1-01', '3 Leg Tower', '4 Leg Tower', 'Guyed Mast', 'Pole', 'Tripod', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '1-2-01', 'Lamp Post', 'Monopole', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '1-3-01', '3 Leg Tower', '4 Leg Tower', 'Guyed Mast', 'Pole', 'Tripod', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '2-1-01', 'Room', 'Concrete', 'Prefab', 'Container', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '2-1-06', 'Electronic', 'Key', 'Padlock', 'Pin Pad', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '2-1-07', 'Good', 'Damaged', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '2-1-09', 'Good', 'Damaged', 'Missing', 'Perished', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '2-1-11', 'Good', 'Damaged', 'Not Sealed', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '2-2-04', 'Good', 'Damaged', 'Missing', 'Perished', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '2-2-06', 'Electronic', 'Key', 'Padlock', 'Pin Pad', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '2-2-07', 'Good', 'Damaged', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '2-2-09', 'Good', 'Damaged', 'Not Sealed', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '2-2-11', 'DC Fan', 'AC Aircon', 'DC Aircon', 'DC Free Cool', 'Heat Exch', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '2-2-14', 'Good', 'Damaged', 'Blocked', 'Dirty', 'Leaking', 'Failed', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-1-10', 'Good', 'Poor', 'Damaged', 'Cracked', 'Bypassed', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-2-21', 'Good', 'Poor', 'Damaged', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-3-04', 'Good', 'Poor', 'Damaged', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-4-03', 'Good', 'Poor', 'Damaged', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-5-03', 'Good', 'Poor', 'Damaged', 'Cracked', 'Bypassed', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-6-03', 'Good', 'Poor', 'Damaged', 'Cracked', 'Bypassed', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-03', '50', '75', '100', '150', '200', '250', '300', '350', '400', 'OTHER', NULL, NULL, NULL, NULL, NULL),
(24, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-7-04', 'Good', 'Poor', 'Damaged', 'Leaking', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '5-8-03', 'Good', 'Poor', 'Damaged', 'Disconnected', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-1-01', 'Top', 'Middle', 'Bottom', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '6-2-08', 'Good', 'Poor', 'Damaged', 'Missing', 'Perished', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-1-05', 'Good', 'Poor', 'Damaged', 'Missing', 'Perished', 'Leaking', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-3-03', 'Good', 'Poor', 'Damaged', 'Missing', 'Perished', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-4-03', 'Good', 'Poor', 'Damaged', 'Missing', 'Bad/Rusty', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-4-05', 'Good', 'Poor', 'Damaged', 'Missing', 'Bad/Rusty', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-5-01', 'AC', 'DC', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-5-02', 'Always ON', 'Night ON', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-5-03', 'Good', 'Poor', 'Replace', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-6-01', 'AC 220V', 'AC 110V', 'DC 6V', 'DC 12V', 'DC 24V', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-6-02', 'Incandescent', 'Fluorescent', 'LED', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-6-03', 'Good', 'Poor', 'Replace', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-6-05', 'AC 220V', 'AC 110V', 'DC 6V', 'DC 12V', 'DC 24V', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-6-06', 'Pole Mounted', 'Wall Mounted', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-6-07', 'Good', 'Poor', 'Replace', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-7-01', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-7-03', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-7-05', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-7-07', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-7-09', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-7-11', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-7-13', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-7-15', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-7-17', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-8-01', 'Rigid Fence', 'Wire Fence', 'Wall', 'Open', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-8-02', 'Good', 'Poor', 'Repair', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-8-04', 'Solid Gate', 'Slatted Gate', 'Door', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-8-05', 'Good', 'Poor', 'Repair', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-8-07', 'Electronic', 'Key', 'Padlock', 'Pin Pad', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-8-08', 'Good', 'Poor', 'Repair', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-9-01', 'Rooftop', 'Concrete', 'Precast Concrete', 'Gravel', 'Soil', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '7-9-02', 'Good', 'Poor', 'Need Repair', 'Need Gardening', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-1-01', 'Smoke', 'Partical', 'Infrared', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-1-02', 'Good', 'Poor', 'Battery Missing', 'Need Repair', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-1-04', 'Auto Gas', 'Handheld Foam', 'Handheld Water', 'Blanket', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-1-05', 'Good', 'Poor', 'Empty', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-1-07', 'Auto Gas', 'Handheld Foam', 'Handheld Water', 'Blanket', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-1-08', 'Good', 'Poor', 'Empty', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-1-10', 'Auto Gas', 'Handheld Foam', 'Handheld Water', 'Blanket', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-1-11', 'Good', 'Poor', 'Empty', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-2-01', 'Logitec', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-2-02', 'Working', 'Faulty', 'Poor Quality', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-2-04', 'Logitec', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2017-11-21 11:34:29', 'ADM001', 'TA001', 1, '8-2-05', 'Working', 'Faulty', 'Poor Quality', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '0-2-10', 'Indoor', 'Outdoor', 'Mixed', 'Rooftop', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '0-2-17', 'Sunny', 'Cloudy', 'Raining', 'Windy', 'Storm', 'Freezing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '1-1-01', '3 Leg Tower', '4 Leg Tower', 'Guyed Mast', 'Pole', 'Tripod', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '1-2-01', 'Lamp Post', 'Monopole', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '1-3-01', '3 Leg Tower', '4 Leg Tower', 'Guyed Mast', 'Pole', 'Tripod', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '2-1-01', 'Room', 'Concrete', 'Prefab', 'Container', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '2-1-06', 'Electronic', 'Key', 'Padlock', 'Pin Pad', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '2-1-07', 'Good', 'Damaged', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '2-1-09', 'Good', 'Damaged', 'Missing', 'Perished', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '2-1-11', 'Good', 'Damaged', 'Not Sealed', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '2-2-04', 'Good', 'Damaged', 'Missing', 'Perished', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '2-2-06', 'Electronic', 'Key', 'Padlock', 'Pin Pad', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '2-2-07', 'Good', 'Damaged', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '2-2-09', 'Good', 'Damaged', 'Not Sealed', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '2-2-11', 'DC Fan', 'AC Aircon', 'DC Aircon', 'DC Free Cool', 'Heat Exch', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '2-2-14', 'Good', 'Damaged', 'Blocked', 'Dirty', 'Leaking', 'Failed', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '5-1-10', 'Good', 'Poor', 'Damaged', 'Cracked', 'Bypassed', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '5-2-21', 'Good', 'Poor', 'Damaged', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '5-3-04', 'Good', 'Poor', 'Damaged', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '5-4-03', 'Good', 'Poor', 'Damaged', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '5-5-03', 'Good', 'Poor', 'Damaged', 'Cracked', 'Bypassed', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '5-6-03', 'Good', 'Poor', 'Damaged', 'Cracked', 'Bypassed', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '5-7-03', '50', '75', '100', '150', '200', '250', '300', '350', '400', 'OTHER', NULL, NULL, NULL, NULL, NULL),
(93, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '5-7-04', 'Good', 'Poor', 'Damaged', 'Leaking', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '5-8-03', 'Good', 'Poor', 'Damaged', 'Disconnected', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '6-1-01', 'Top', 'Middle', 'Bottom', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '6-2-08', 'Good', 'Poor', 'Damaged', 'Missing', 'Perished', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-1-05', 'Good', 'Poor', 'Damaged', 'Missing', 'Perished', 'Leaking', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-3-03', 'Good', 'Poor', 'Damaged', 'Missing', 'Perished', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-4-03', 'Good', 'Poor', 'Damaged', 'Missing', 'Bad/Rusty', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-4-05', 'Good', 'Poor', 'Damaged', 'Missing', 'Bad/Rusty', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-5-01', 'AC', 'DC', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-5-02', 'Always ON', 'Night ON', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-5-03', 'Good', 'Poor', 'Replace', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-6-01', 'AC 220V', 'AC 110V', 'DC 6V', 'DC 12V', 'DC 24V', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-6-02', 'Incandescent', 'Fluorescent', 'LED', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-6-03', 'Good', 'Poor', 'Replace', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-6-05', 'AC 220V', 'AC 110V', 'DC 6V', 'DC 12V', 'DC 24V', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-6-06', 'Pole Mounted', 'Wall Mounted', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-6-07', 'Good', 'Poor', 'Replace', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-7-01', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-7-03', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-7-05', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-7-07', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-7-09', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-7-11', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-7-13', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-7-15', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-7-17', 'Good', 'Poor', 'Damaged', 'Repair', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-8-01', 'Rigid Fence', 'Wire Fence', 'Wall', 'Open', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-8-02', 'Good', 'Poor', 'Repair', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-8-04', 'Solid Gate', 'Slatted Gate', 'Door', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-8-05', 'Good', 'Poor', 'Repair', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-8-07', 'Electronic', 'Key', 'Padlock', 'Pin Pad', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-8-08', 'Good', 'Poor', 'Repair', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-9-01', 'Rooftop', 'Concrete', 'Precast Concrete', 'Gravel', 'Soil', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '7-9-02', 'Good', 'Poor', 'Need Repair', 'Need Gardening', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-1-01', 'Smoke', 'Partical', 'Infrared', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-1-02', 'Good', 'Poor', 'Battery Missing', 'Need Repair', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-1-04', 'Auto Gas', 'Handheld Foam', 'Handheld Water', 'Blanket', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-1-05', 'Good', 'Poor', 'Empty', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-1-07', 'Auto Gas', 'Handheld Foam', 'Handheld Water', 'Blanket', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-1-08', 'Good', 'Poor', 'Empty', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-1-10', 'Auto Gas', 'Handheld Foam', 'Handheld Water', 'Blanket', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-1-11', 'Good', 'Poor', 'Empty', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-2-01', 'Logitec', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-2-02', 'Working', 'Faulty', 'Poor Quality', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-2-04', 'Logitec', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '2018-07-17 10:14:23', 'ADM001', 'TA004', 4, '8-2-05', 'Working', 'Faulty', 'Poor Quality', 'Missing', 'OTHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_projects`
--

CREATE TABLE `data_projects` (
  `id` int(11) NOT NULL,
  `system_datetime_of_last_change` datetime NOT NULL,
  `app_project_name` varchar(32) DEFAULT NULL,
  `project_status` enum('NEW','Discussion','Quoted','Accepted','Started','Completed','Closed','On-Hold') DEFAULT 'NEW',
  `app_menu_id` varchar(12) NOT NULL DEFAULT '0-2-01',
  `cust_id` int(11) DEFAULT NULL,
  `cust_name_prefix` varchar(10) DEFAULT NULL,
  `internal_project_short_name` varchar(30) NOT NULL,
  `internal_project_long_name` varchar(90) NOT NULL,
  `project_planned_start` date NOT NULL,
  `project_planned_end` date NOT NULL,
  `client_project_short_name` varchar(30) NOT NULL,
  `client_project_long_name` varchar(90) NOT NULL,
  `client_project_description` varchar(255) NOT NULL,
  `client_company_name` varchar(60) NOT NULL,
  `client_contact_name` varchar(60) NOT NULL,
  `client_contact_phone` varchar(60) NOT NULL,
  `client_contact_email` varchar(60) NOT NULL,
  `internal_project_owner` varchar(60) NOT NULL,
  `internal_project_owner_phone` varchar(60) NOT NULL,
  `internal_project_owner_email` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_projects`
--

INSERT INTO `data_projects` (`id`, `system_datetime_of_last_change`, `app_project_name`, `project_status`, `app_menu_id`, `cust_id`, `cust_name_prefix`, `internal_project_short_name`, `internal_project_long_name`, `project_planned_start`, `project_planned_end`, `client_project_short_name`, `client_project_long_name`, `client_project_description`, `client_company_name`, `client_contact_name`, `client_contact_phone`, `client_contact_email`, `internal_project_owner`, `internal_project_owner_phone`, `internal_project_owner_email`, `created_at`, `updated_at`) VALUES
(1, '2021-09-27 04:11:10', 'Dev Project 1', 'Started', '0-2-01', 1, 'OPC', 'TA001', 'Test Audit 001', '2021-11-15', '2021-12-15', 'PC0456-3G', '3G Audit project relating to SoW PC0456-3G', 'Test project TA001 for APP and WEB Development ', 'OpCo Systems', 'Martin Grays', '0123456789', '0123@testproject.com', 'Martin Hardy', '0345678912', 'MH@opco.systems', '2021-12-11 14:20:51', '2021-12-11 14:20:51'),
(2, '2021-09-28 05:11:10', 'Dev Project 2', 'Started', '0-2-01', 2, 'EDC', 'TA002', 'Test Audit 002', '2021-11-16', '2021-12-16', 'PC0123-3G', '3G Audit project relating to SoW PC0123-3G', 'Test project TA002 for APP and WEB Development ', 'EdotCo', 'Martin Whites', '0123456789', '0123@testproject.com', 'Martin Hardy', '0345678912', 'MH@opco.systems', '2021-12-11 14:20:51', '2021-12-11 14:20:51'),
(3, '2021-09-29 06:11:10', 'Dev Project 3', 'Accepted', '0-2-01', 3, 'DIGJAM', 'TA003', 'Test Audit 003', '2021-11-17', '2021-12-17', 'PC0345-3G', '3G Audit project relating to SoW PC0345-3G', 'Test project TA003 for APP and WEB Development', 'DigicelCom', 'Martin Greens', '0123456789', '0123@testproject.com', 'Martin Greens', '0345678912', 'MG@opco.systems', '2021-12-11 14:20:51', '2021-12-17 15:06:15'),
(4, '2021-09-30 07:11:10', 'Dev Project 4', 'Quoted', '0-2-01', 4, 'XANTEC', 'TA004', 'Test Audit 004 Next Gen', '2021-11-18', '2021-12-18', 'PC0678-3G', '3G Audit project relating to SoW PC0678-3G', 'Test project TA004 for APP and WEB Development', 'Xanadoo', 'Martin Blues', '0123456789', '0123@testproject.com', 'Martin Hardy', '0345678912', 'MH@opco.systems', '2021-12-11 14:20:51', '2021-12-11 14:21:34'),
(5, '2021-12-11 14:27:00', '3G Project Audit', 'NEW', '0-2-01', 5, 'DIGHAI', 'TA005', 'TA005 test Audit for DIGHAI', '2021-12-18', '2022-01-29', '3g Upgrade (South)', '3g Upgrade (South) for all sites', 'This will be a description......', 'Digicell Haiti Ltd', 'bob', '121212', 'bob@myTest.com', 'Martin', '43434343', 'martin@mytest.com', '2021-12-11 14:31:21', '2021-12-11 14:31:21'),
(6, '2021-12-12 08:16:00', '4G Upgrade DIGHAI', 'NEW', '0-2-01', 5, 'DIGHAI', '4G Upgrade for DIGHAI', '4G Upgrade for DIGHAI for the southern region', '2021-12-14', '2022-01-27', 'Upgrade 4G for DIGHAI', 'Updated 4G Upgrade for DIGHAI for the southern region', 'This will be a description......', 'Digicell Haiti Ltd', 'bobby', '12121212', 'bobby@mytest.com', 'Martin', '323232323', 'martin.t@mytest.com', '2021-12-12 08:19:56', '2022-01-05 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `data_radial_lists`
--

CREATE TABLE `data_radial_lists` (
  `id` int(11) NOT NULL,
  `system_datetime_of_last_change` datetime NOT NULL,
  `last_changed_by` varchar(12) NOT NULL,
  `internal_project_name` varchar(32) DEFAULT NULL,
  `internal_project_id` int(11) NOT NULL DEFAULT '1',
  `field_id` varchar(12) DEFAULT NULL,
  `item_1_app_label` varchar(16) DEFAULT NULL,
  `item_1_db_insert_value` varchar(16) DEFAULT NULL,
  `item_2_app_label` varchar(16) DEFAULT NULL,
  `item_2_db_insert_value` varchar(16) DEFAULT NULL,
  `item_3_app_label` varchar(16) DEFAULT NULL,
  `item_3_db_insert_value` varchar(16) DEFAULT NULL,
  `item_4_app_label` varchar(16) DEFAULT NULL,
  `item_4_db_insert_value` varchar(16) DEFAULT NULL,
  `item_5_app_label` varchar(16) DEFAULT NULL,
  `item_5_db_insert_value` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_radial_lists`
--

INSERT INTO `data_radial_lists` (`id`, `system_datetime_of_last_change`, `last_changed_by`, `internal_project_name`, `internal_project_id`, `field_id`, `item_1_app_label`, `item_1_db_insert_value`, `item_2_app_label`, `item_2_db_insert_value`, `item_3_app_label`, `item_3_db_insert_value`, `item_4_app_label`, `item_4_db_insert_value`, `item_5_app_label`, `item_5_db_insert_value`) VALUES
(1, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '3-1-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(2, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '3-2-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(3, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '3-3-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(4, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '4-1-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(5, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '4-2-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(6, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '4-3-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(7, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '4-4-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(8, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '4-5-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(9, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '4-6-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(10, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '4-7-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(11, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '4-8-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(12, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '5-1-03', 'Single Phase', '1', 'Three Phase', '3', NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '5-1-07', 'Analogue', 'Analogue', 'Digital', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '5-2-04', 'Single Phase', '1', 'Three Phase', '3', NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '5-2-05', 'Yes', 'Yes', 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '5-2-08', '1500 RPM', '1500', '1800 RPM', '1800', NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '5-2-09', '50 Hz', '50', '60 Hz', '60', NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '5-2-10', '110/120V', '110', '220/240V', '220', NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2017-11-17 11:34:29', 'ADM001', 'TA001', 1, '6-2-03', '2V', '2', '6V', '6', '12V', '12', '24V', '24', '48V', '48'),
(20, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '3-1-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(21, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '3-2-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(22, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '3-3-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(23, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '4-1-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(24, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '4-2-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(25, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '4-3-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(26, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '4-4-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(27, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '4-5-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(28, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '4-6-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(29, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '4-7-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(30, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '4-8-04', '12V DC', '12', '24V DC', '24', '48V DC', '48', '110V AC', '110', '220V AC', '220'),
(31, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '5-1-03', 'Single Phase', '1', 'Three Phase', '3', NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '5-1-07', 'Analogue', 'Analogue', 'Digital', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '5-2-04', 'Single Phase', '1', 'Three Phase', '3', NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '5-2-05', 'Yes', 'Yes', 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '5-2-08', '1500 RPM', '1500', '1800 RPM', '1800', NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '5-2-09', '50 Hz', '50', '60 Hz', '60', NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '5-2-10', '110/120V', '110', '220/240V', '220', NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2018-07-17 09:34:34', 'ADM001', 'TA004', 4, '6-2-03', '2V', '2', '6V', '6', '12V', '12', '24V', '24', '48V', '48');

-- --------------------------------------------------------

--
-- Table structure for table `data_site_id_name`
--

CREATE TABLE `data_site_id_name` (
  `id` int(11) NOT NULL,
  `system_datetime_of_last_change` datetime NOT NULL,
  `last_changed_by` varchar(12) NOT NULL,
  `internal_project_id` int(11) DEFAULT NULL,
  `internal_project_name` varchar(30) DEFAULT NULL,
  `operator_name` varchar(32) DEFAULT NULL,
  `region_name` varchar(32) DEFAULT NULL,
  `sub_region_name` varchar(32) DEFAULT NULL,
  `cluster_id` varchar(12) DEFAULT NULL,
  `site_id` varchar(12) DEFAULT NULL,
  `site_name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_site_id_name`
--

INSERT INTO `data_site_id_name` (`id`, `system_datetime_of_last_change`, `last_changed_by`, `internal_project_id`, `internal_project_name`, `operator_name`, `region_name`, `sub_region_name`, `cluster_id`, `site_id`, `site_name`) VALUES
(1, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'Central', 'JVCE001', '01JV0001', 'JL-Lumpur3'),
(2, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'Central', 'JVCE001', '01JV0002', 'JL-Lumpur6'),
(3, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'Central', 'JVCE001', '01JV0003', 'TebetHotel-Central'),
(4, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'Central', 'JVCE002', '01JV0106', 'Highway9-004'),
(5, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'Central', 'JVCE002', '01JV0109', 'Highway9-005'),
(6, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'Central', 'JVCE002', '01JV0123', 'Highway9-006'),
(7, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'West', 'JVWE001', '02JV0003', 'Kanpung01-09'),
(8, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'West', 'JVWE001', '02JV0004', 'Kanpung01-10'),
(9, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'West', 'JVWE001', '02JV0009', 'Kanpung01-11'),
(10, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'West', 'JVWE002', '02JV0103', 'CentralCity011'),
(11, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'West', 'JVWE002', '02JV0104', 'CentralCity012'),
(12, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'ISAT', 'Java', 'West', 'JVWE002', '02JV0111', 'CentralCity021'),
(13, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'TCELL', 'Bali Nusra', 'Dempasar', 'BNDE001', '06BN0912', 'Airport-01-03'),
(14, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'TCELL', 'Bali Nusra', 'Dempasar', 'BNDE002', '06BN0913', 'Airport-01-04'),
(15, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'TCELL', 'Bali Nusra', 'Lombok', 'BNLK001', '06BN4011', 'JL-Listing_3'),
(16, '2017-11-21 11:34:29', 'ADM001', 1, 'TA001', 'TCELL', 'Bali Nusra', 'Lombok', 'BNLK002', '06BN4016', 'JL-Listing_7'),
(17, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Java', 'Central', 'JVCE001', '01JV0001', 'JL-Lumpur3'),
(18, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Java', 'Central', 'JVCE001', '01JV0002', 'JL-Lumpur6'),
(19, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Sumatra', 'Southern', 'SUCE001', '01SU0001', 'TebetHotel-Central'),
(20, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Sumatra', 'Southern', 'SUCE001', '01SU0102', 'Central Place'),
(21, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Java', 'Central', 'JVCE002', '01JV0109', 'Highway9-005'),
(22, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Java', 'Central', 'JVCE002', '01JV0123', 'Highway9-006'),
(23, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Java', 'West', 'JVWE001', '02JV0003', 'Kanpung01-09'),
(24, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Java', 'West', 'JVWE001', '02JV0004', 'Kanpung01-10'),
(25, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Java', 'West', 'JVWE001', '02JV0009', 'Kanpung01-11'),
(26, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Java', 'West', 'JVWE002', '02JV0103', 'CentralCity011'),
(27, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Java', 'West', 'JVWE002', '02JV0104', 'CentralCity012'),
(28, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Indosat', 'Java', 'West', 'JVWE002', '02JV0111', 'CentralCity021'),
(29, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Telkomsel', 'Bali Nusra', 'Dempasar', 'BNDE001', '06BN0912', 'Airport-01-03'),
(30, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Telkomsel', 'Bali Nusra', 'Dempasar', 'BNDE002', '06BN0913', 'Airport-01-04'),
(31, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Telkomsel', 'Bali Nusra', 'Lombok', 'BNLK001', '06BN4011', 'JL-Listing_3'),
(32, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'Telkomsel', 'Bali Nusra', 'Lombok', 'BNLK002', '06BN4016', 'JL-Listing_7'),
(33, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'StarPhone', 'Berkshire', 'Reading', 'RG001', '02RG001', 'HofHouse'),
(34, '2018-05-02 14:34:34', 'ADM001', 4, 'TA004', 'StarPhone', 'Berkshire', 'Reading', 'RG001', '02RG002', 'BrewHouse');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sikndarabbas27@gmail.com', '$2y$10$WzGMNk73OeYTQV0mdfw.leQ0hy0QBeQfGhwztEZAV/rOKnGnj48Bq', '2021-12-17 20:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 11, 'accessToken', '307374ee3cde3f97b5c2ca30d671863d450ea4c36fd428a2aaeb75a76ca7848b', '[\"*\"]', NULL, '2021-11-08 16:36:50', '2021-11-08 16:36:50'),
(2, 'App\\Models\\User', 11, 'accessToken', '0689dcda24b459ee6a5477299c264d6e0f610a7bedf0a127e75367c4ad393b6b', '[\"*\"]', NULL, '2021-11-08 16:38:57', '2021-11-08 16:38:57'),
(3, 'App\\Models\\User', 11, 'accessToken', '3aee92af2e11f28bab9c8af07f6367bedb6e1de7e3b045afb2b6abe373e8bd5b', '[\"*\"]', '2021-11-08 16:45:12', '2021-11-08 16:44:46', '2021-11-08 16:45:12'),
(4, 'App\\Models\\User', 11, 'accessToken', '987cf8fae8eba7529f7890c8910d5e27cdb9b4b559f29c1720c3df063f3129fe', '[\"*\"]', NULL, '2021-11-08 17:23:50', '2021-11-08 17:23:50'),
(5, 'App\\Models\\User', 11, 'accessToken', '7eb095fc4acf3fe071f92a25d98088449ccb105dbf23b932991900545e31ea11', '[\"*\"]', NULL, '2021-11-08 17:26:16', '2021-11-08 17:26:16'),
(6, 'App\\Models\\User', 11, 'accessToken', '3b8ff9b544c92699cac8e2bc0286d4c8eab3bdcc9ea8d1662b3fcd91cb450772', '[\"*\"]', NULL, '2021-11-09 07:44:05', '2021-11-09 07:44:05'),
(7, 'App\\Models\\User', 11, 'accessToken', '3e723873c9c9d31d0c1b44088c99c244ffdbf0f446bd63a1da6db1b9e04f80b1', '[\"*\"]', NULL, '2021-11-09 07:44:52', '2021-11-09 07:44:52'),
(8, 'App\\Models\\User', 11, 'accessToken', 'a9a5461cf5277aae7a6b657d79f0adc38be49be93c742d4ce787d1c853f1f619', '[\"*\"]', NULL, '2021-11-09 07:52:22', '2021-11-09 07:52:22'),
(9, 'App\\Models\\User', 11, 'accessToken', '6e2ce508cf113016e94f65d4582cfb2c1efb9bd7acf46695ef9fa93bb7473793', '[\"*\"]', NULL, '2021-11-09 08:24:30', '2021-11-09 08:24:30'),
(10, 'App\\Models\\User', 11, 'accessToken', '36b48999c591c73386a606e3b95238f29b35dc99a8ef98a38101456626b408be', '[\"*\"]', NULL, '2021-11-09 08:26:25', '2021-11-09 08:26:25'),
(11, 'App\\Models\\User', 11, 'accessToken', 'a8c4db94b15e57e5916a62d857462014ccb117cf9008b1fa0c20e9a15cb464f3', '[\"*\"]', NULL, '2021-11-09 10:54:25', '2021-11-09 10:54:25'),
(12, 'App\\Models\\User', 11, 'accessToken', '90d9caf7020549718edd918c0f5fabfb53a8de9af021155a4d2dd66de7a65c20', '[\"*\"]', NULL, '2021-11-09 10:57:23', '2021-11-09 10:57:23'),
(13, 'App\\Models\\User', 11, 'accessToken', '759e00ccef4449be8ff382dd499f10476113a942019082f376e2e8216091aee5', '[\"*\"]', NULL, '2021-11-09 10:58:26', '2021-11-09 10:58:26'),
(14, 'App\\Models\\User', 11, 'accessToken', '7cf4836e8e6a393267efd5d00a46d7bcfba95b21c760fe1530817657df20d9d6', '[\"*\"]', NULL, '2021-11-09 11:01:03', '2021-11-09 11:01:03'),
(15, 'App\\Models\\User', 11, 'accessToken', '713efb9238d0b730b8391061d3125c2ba33f84a3e7b3333e7d2d0796be6d4f88', '[\"*\"]', NULL, '2021-11-09 11:44:10', '2021-11-09 11:44:10'),
(16, 'App\\Models\\User', 11, 'accessToken', 'da242c2da5b461d8c2b9f688b2eee2797a58833b7d1c561ffeac0e8c839e2119', '[\"*\"]', NULL, '2021-11-09 11:46:00', '2021-11-09 11:46:00'),
(17, 'App\\Models\\User', 11, 'accessToken', '9fcd7c874b7165a826159531ddb2db6dc4e99d31231e06c1fbb94263708676a5', '[\"*\"]', NULL, '2021-11-09 11:54:34', '2021-11-09 11:54:34'),
(18, 'App\\Models\\User', 11, 'accessToken', 'f384c33471c05d8f89065c6ff6339b61215defc192f8586c680eaced7c008c7f', '[\"*\"]', NULL, '2021-11-09 11:56:35', '2021-11-09 11:56:35'),
(19, 'App\\Models\\User', 11, 'accessToken', 'f20d7496f9389d211705ce25fdfc8af339625024a5a2b945b2dee31864180a87', '[\"*\"]', NULL, '2021-11-09 13:35:30', '2021-11-09 13:35:30'),
(20, 'App\\Models\\User', 11, 'accessToken', 'afb6c7c0d8f13b48189d18bf814521807f29586efd39e8f63292578480e556ac', '[\"*\"]', NULL, '2021-11-09 13:39:24', '2021-11-09 13:39:24'),
(21, 'App\\Models\\User', 11, 'accessToken', '91b47a8c291d4d7389369810290e295fe8e8dea01bfab59caa85dfd6ff3620ac', '[\"*\"]', NULL, '2021-11-09 13:43:38', '2021-11-09 13:43:38'),
(22, 'App\\Models\\User', 11, 'accessToken', '80d3aa2def883130a056f4260e206c130982ff513fbac4c45b745e3a5e4a33d8', '[\"*\"]', NULL, '2021-11-09 14:04:47', '2021-11-09 14:04:47'),
(23, 'App\\Models\\User', 11, 'accessToken', '27519414b8426c23746b61798a236da378e72160f2d964f2653927f36a4b40cc', '[\"*\"]', NULL, '2021-11-09 14:10:19', '2021-11-09 14:10:19'),
(24, 'App\\Models\\User', 11, 'accessToken', '5776f4db8ceb52182ad25d2a727dfa89e29583427715e33a081a5dc6aca716e0', '[\"*\"]', NULL, '2021-11-09 15:00:16', '2021-11-09 15:00:16'),
(25, 'App\\Models\\User', 11, 'accessToken', '758142fbd6cc781a52007d6b692c7956dab9ef2fa9ca0901ce66a9ef7c183eb1', '[\"*\"]', NULL, '2021-11-09 15:00:46', '2021-11-09 15:00:46'),
(26, 'App\\Models\\User', 11, 'accessToken', '8d52cba45c169e8dd040cdd5842e8a6ca2e8745be2529460bdf1fb2fb6f9ca17', '[\"*\"]', NULL, '2021-11-09 15:08:11', '2021-11-09 15:08:11'),
(27, 'App\\Models\\User', 11, 'accessToken', '890ad3a698e34c6010868e2835f81f98591056ca59a3081de82a94545c9c69e0', '[\"*\"]', NULL, '2021-11-09 15:14:14', '2021-11-09 15:14:14'),
(28, 'App\\Models\\User', 11, 'accessToken', '4a75372f1d7c5e6f05d2c4abb254077eb6b50e45558cb049700e13b3f774cdb2', '[\"*\"]', NULL, '2021-11-09 15:16:30', '2021-11-09 15:16:30'),
(29, 'App\\Models\\User', 11, 'accessToken', '38ed1e97623ac57226ba7f679d4ad65df594a07cc82102e1d4a6512c758ea3e0', '[\"*\"]', NULL, '2021-11-09 15:19:00', '2021-11-09 15:19:00'),
(30, 'App\\Models\\User', 11, 'accessToken', 'f8b96c958bf31384ca25e68f1c241d1074d03ee0218dfbd5104bec7f0e948702', '[\"*\"]', NULL, '2021-11-10 04:49:37', '2021-11-10 04:49:37'),
(31, 'App\\Models\\User', 11, 'accessToken', 'a01cdf42a9b328b979c0c51a975bba21a8f8a68c2cf537ad024daac9a9d7d472', '[\"*\"]', NULL, '2021-11-10 04:58:21', '2021-11-10 04:58:21'),
(32, 'App\\Models\\User', 11, 'accessToken', '6b246f74063482a3867b42799efc13706f7c5f7caf8c30c151d3861dfd630573', '[\"*\"]', NULL, '2021-11-10 05:01:53', '2021-11-10 05:01:53'),
(33, 'App\\Models\\User', 11, 'accessToken', '7bac84721ffe74f38dbc8ab1ebc94123717b833f000514f4259cce248cb8b1b4', '[\"*\"]', NULL, '2021-11-10 05:09:12', '2021-11-10 05:09:12'),
(34, 'App\\Models\\User', 11, 'accessToken', 'f27f9ca9c992bb5454afebc2a2d0a8729d3749413bebd83229e51d6f826c6f5e', '[\"*\"]', NULL, '2021-11-10 05:22:18', '2021-11-10 05:22:18'),
(35, 'App\\Models\\User', 11, 'accessToken', '0f9769db1e2bc5261757ac2991b6eff64f6622a9eeae3784e2a331978acbc59e', '[\"*\"]', '2021-11-17 18:18:47', '2021-11-10 19:34:14', '2021-11-17 18:18:47'),
(36, 'App\\Models\\User', 11, 'accessToken', '291e8203ad6afa2c6f9c3ca1bf512f475a6009279b697770aaa71c85ac7cd0d3', '[\"*\"]', NULL, '2021-11-11 05:05:40', '2021-11-11 05:05:40'),
(37, 'App\\Models\\User', 11, 'accessToken', '8e3d7d7937120378b3668338d94c947ff9224efb2a5f1ad049ea4d1410b0eb59', '[\"*\"]', NULL, '2021-11-11 05:09:07', '2021-11-11 05:09:07'),
(38, 'App\\Models\\User', 11, 'accessToken', '77a0f4f4d9e8ed940621a022f569c2ac48dd79f38f4a608dee8d13afa03bf60f', '[\"*\"]', NULL, '2021-11-11 05:43:37', '2021-11-11 05:43:37'),
(39, 'App\\Models\\User', 11, 'accessToken', 'b204825e87b005273de8cc65b07e2fcd712be072885c761b2739030b90107f89', '[\"*\"]', NULL, '2021-11-11 05:44:48', '2021-11-11 05:44:48'),
(40, 'App\\Models\\User', 11, 'accessToken', '18efdf4e6fb420aa8c4bd31964e9c384c9730efe7141488e09a5c38615773f71', '[\"*\"]', NULL, '2021-11-11 05:59:57', '2021-11-11 05:59:57'),
(41, 'App\\Models\\User', 11, 'accessToken', 'ee5c3278f8ae75e5b93ee96006139ea7380710083b2bb7a9a9bf5ce525cf083a', '[\"*\"]', NULL, '2021-11-11 07:19:25', '2021-11-11 07:19:25'),
(42, 'App\\Models\\User', 11, 'accessToken', '55cd82d3820cbf62b238e70f8469d7a8e119c793f5511f0693d9e5897adee293', '[\"*\"]', NULL, '2021-11-11 07:45:00', '2021-11-11 07:45:00'),
(43, 'App\\Models\\User', 11, 'accessToken', '50d4fe040948d0e189d329ff339f0aae2742fdfadafc7b436768976f326144c3', '[\"*\"]', NULL, '2021-11-11 07:49:55', '2021-11-11 07:49:55'),
(44, 'App\\Models\\User', 11, 'accessToken', 'f39d0a7be5dbb6bcff6cc93bb83dd30d19ffa1637bd94a385f201d501f50a89a', '[\"*\"]', NULL, '2021-11-11 07:54:04', '2021-11-11 07:54:04'),
(45, 'App\\Models\\User', 11, 'accessToken', '6fcdec88eb1d2a85cfc840ebf4aea29899172497e1d36b032d608933f3aa8cc1', '[\"*\"]', NULL, '2021-11-11 08:01:00', '2021-11-11 08:01:00'),
(46, 'App\\Models\\User', 11, 'accessToken', 'f89b96038c031041d6eacb0bac07459e4f943b000d16e78403adab874a0f5a7c', '[\"*\"]', NULL, '2021-11-11 08:20:38', '2021-11-11 08:20:38'),
(47, 'App\\Models\\User', 11, 'accessToken', '98b597ace5f245d52b63b3c56e527f021f74762d8f17e336121a36a55bd5b012', '[\"*\"]', NULL, '2021-11-11 08:26:19', '2021-11-11 08:26:19'),
(48, 'App\\Models\\User', 11, 'accessToken', 'd44a4616a94c178d7f3853029db2fdf2e8c8945bc4376725f7dd7ebb4b872d36', '[\"*\"]', NULL, '2021-11-11 08:26:19', '2021-11-11 08:26:19'),
(49, 'App\\Models\\User', 11, 'accessToken', '6da9736f7c08a3977eecd4642df828266b7e8a61374f74c948e3afbb1121e980', '[\"*\"]', NULL, '2021-11-11 08:31:31', '2021-11-11 08:31:31'),
(50, 'App\\Models\\User', 11, 'accessToken', '920b56ec68a5a013d04800bb71ff9957795999ad1b56a36a51c10bdde0903dd7', '[\"*\"]', NULL, '2021-11-11 08:34:02', '2021-11-11 08:34:02'),
(51, 'App\\Models\\User', 11, 'accessToken', '1a68145a9a03932ad6ca770305de1557af3b31266aa3f43aab4a824882f3b091', '[\"*\"]', NULL, '2021-11-11 08:45:46', '2021-11-11 08:45:46'),
(52, 'App\\Models\\User', 11, 'accessToken', 'd4126501fb4de49c9fb1092aa2a4ad5f8359985f539b67fc523333a6c267506b', '[\"*\"]', NULL, '2021-11-11 09:01:26', '2021-11-11 09:01:26'),
(53, 'App\\Models\\User', 11, 'accessToken', '98a444f12f58b52c7d50079c0b5b15b772e6e2b0bccbb9e40570f1c62039b597', '[\"*\"]', NULL, '2021-11-11 09:56:11', '2021-11-11 09:56:11'),
(54, 'App\\Models\\User', 11, 'accessToken', 'b9a7a648f1e5cc7674d590db96343df949a618312a0294e8096fc8f528b260f0', '[\"*\"]', NULL, '2021-11-11 10:00:28', '2021-11-11 10:00:28'),
(55, 'App\\Models\\User', 11, 'accessToken', '391f6e7a42a3b50edb521973a95ed4bd9017d63ddb24b6ed6317f91b213234b4', '[\"*\"]', '2021-11-11 10:10:00', '2021-11-11 10:09:16', '2021-11-11 10:10:00'),
(56, 'App\\Models\\User', 11, 'accessToken', 'b3b44dfae4a0d7c0bd7d0b0f2979271c9a5f9d6619572dc46b41460ccee79e1c', '[\"*\"]', NULL, '2021-11-11 10:26:39', '2021-11-11 10:26:39'),
(57, 'App\\Models\\User', 11, 'accessToken', '843db876ae6bf8eeb738c98f9c932e3d48442d7c7b47a88f675a33768a83b841', '[\"*\"]', NULL, '2021-11-11 11:59:17', '2021-11-11 11:59:17'),
(58, 'App\\Models\\User', 11, 'accessToken', '98f94b9e7322aecb8ec9d96d4df3b9c672e9e8877c654724dc07fc9fdca656e2', '[\"*\"]', NULL, '2021-11-11 12:23:44', '2021-11-11 12:23:44'),
(59, 'App\\Models\\User', 11, 'accessToken', 'f97988441fc94f6b10dac677f47c5d158030d848df2c17c9ab437f5929eb0cbd', '[\"*\"]', NULL, '2021-11-11 12:29:03', '2021-11-11 12:29:03'),
(60, 'App\\Models\\User', 11, 'accessToken', 'b01477414eb250e407bcae820d72af81a7cd6262ea5fb41b9e29b9229f6f61ba', '[\"*\"]', NULL, '2021-11-11 12:31:12', '2021-11-11 12:31:12'),
(61, 'App\\Models\\User', 11, 'accessToken', '14606367edfafa66c9a5da264c469ee40fe56b91ae749b61e091b4f1f618e7a7', '[\"*\"]', NULL, '2021-11-11 13:01:39', '2021-11-11 13:01:39'),
(62, 'App\\Models\\User', 11, 'accessToken', '6ceb10cefe4b52fe177f3f34a9cdd8e86a29bdcec41f8ea4594647fe65925bdf', '[\"*\"]', NULL, '2021-11-12 17:24:34', '2021-11-12 17:24:34'),
(63, 'App\\Models\\User', 11, 'accessToken', '0c64529f55a3680de0bc11942a658ccbd874ebcb2b6ffee1e881f683e12e06c8', '[\"*\"]', NULL, '2021-11-12 17:33:03', '2021-11-12 17:33:03'),
(64, 'App\\Models\\User', 11, 'accessToken', '6b96daf90dc6632f3ba1fecc60484168b60a1b3f88be18bc5cb004db753eaf6b', '[\"*\"]', NULL, '2021-11-12 17:35:01', '2021-11-12 17:35:01'),
(65, 'App\\Models\\User', 11, 'accessToken', '51178a24a39ea1dffe0f9df90e5d440ff159317297dcbd80bc96fc1289901310', '[\"*\"]', NULL, '2021-11-12 18:02:05', '2021-11-12 18:02:05'),
(66, 'App\\Models\\User', 11, 'accessToken', 'de417a7e152ff8e40541b5876e7a8d1d5b137dc89e2a96f42e034935c52b1004', '[\"*\"]', NULL, '2021-11-12 18:51:59', '2021-11-12 18:51:59'),
(67, 'App\\Models\\User', 11, 'accessToken', '5a1c530ed77376c648d6c5b643ac98463fed2b049b6ff079119c8fd698b802ac', '[\"*\"]', NULL, '2021-11-14 13:25:56', '2021-11-14 13:25:56'),
(68, 'App\\Models\\User', 11, 'accessToken', '433cdb416c0ec0062ad9be7f0353ca8df46a8271d43b744b41007e857de0cf80', '[\"*\"]', NULL, '2021-11-17 17:11:08', '2021-11-17 17:11:08'),
(69, 'App\\Models\\User', 11, 'accessToken', '42f47999d028b32b84222dccc336421feef6f122cdec9e8586f32695b9b04c3b', '[\"*\"]', '2021-11-18 15:13:19', '2021-11-17 18:31:15', '2021-11-18 15:13:19'),
(70, 'App\\Models\\User', 11, 'accessToken', '4bee0eaa9120835ec8e21258402ebf260519d51ec2febf03fe46904a555c2e93', '[\"*\"]', NULL, '2021-11-22 15:47:49', '2021-11-22 15:47:49'),
(71, 'App\\Models\\User', 11, 'accessToken', '1c3d9d3d4e1e80ef12a9a695aaee0507596717609db47ee1e6ff16bafa7cd7b7', '[\"*\"]', NULL, '2021-11-22 15:50:19', '2021-11-22 15:50:19'),
(72, 'App\\Models\\User', 11, 'accessToken', 'aab80b8d335a13b6ed8e6b1e203582b6e4771d25c5d33996cf844337d8bae4de', '[\"*\"]', NULL, '2021-11-22 16:03:50', '2021-11-22 16:03:50'),
(73, 'App\\Models\\User', 11, 'accessToken', 'c73ad1fc23deff954848f2dd42db005ab5670dc48c613df193463b3123d10183', '[\"*\"]', NULL, '2021-11-22 17:03:16', '2021-11-22 17:03:16'),
(74, 'App\\Models\\User', 11, 'accessToken', '7d980e882f95eeacd22665cf51b7f1c59bfee9e50c95a81ef0354464c34ae6e8', '[\"*\"]', NULL, '2021-11-22 17:23:41', '2021-11-22 17:23:41'),
(75, 'App\\Models\\User', 11, 'accessToken', 'c8963f719e4494f7b4d7dbf9c082c35e446219d59dc52fa26e512e2bd8d5746e', '[\"*\"]', NULL, '2021-11-22 17:24:09', '2021-11-22 17:24:09'),
(76, 'App\\Models\\User', 11, 'accessToken', '002ad527ef0ded3dc2dfc4d795c082b2be363fd13ea2774899035dfa590b2244', '[\"*\"]', NULL, '2021-11-22 17:28:24', '2021-11-22 17:28:24'),
(77, 'App\\Models\\User', 11, 'accessToken', 'e9ef590ded3226cce3d9b1a92f4e4cb398468565d0cea62811610a1264849636', '[\"*\"]', NULL, '2021-11-22 17:50:28', '2021-11-22 17:50:28'),
(78, 'App\\Models\\User', 11, 'accessToken', 'dc149f5816c1df249c25fd6b07299dc0f3edce3cc3920fb607ca39ff721a2bda', '[\"*\"]', NULL, '2021-11-22 17:50:48', '2021-11-22 17:50:48'),
(79, 'App\\Models\\User', 11, 'accessToken', '9ac2957cbd70b148264f628bdf437e5131aaeb4cbd82b7c5b3ef175c45b4d01a', '[\"*\"]', NULL, '2021-11-22 17:51:28', '2021-11-22 17:51:28'),
(80, 'App\\Models\\User', 11, 'accessToken', 'f58299b963c51bdc700c2e1eb0febbdcdd286e637850aa074c07634b475cf2d6', '[\"*\"]', NULL, '2021-11-22 17:57:00', '2021-11-22 17:57:00'),
(81, 'App\\Models\\User', 11, 'accessToken', '9e88e7956e9443b1bf90d7c7b28c254f6f23f6b4a454b16ca997f0fda42a86ce', '[\"*\"]', NULL, '2021-11-22 18:23:03', '2021-11-22 18:23:03'),
(82, 'App\\Models\\User', 11, 'accessToken', 'd47050195c822fccb823c9faac7da6e3ec574144d213a6b79aab84fbe569f1ac', '[\"*\"]', NULL, '2021-11-22 19:15:18', '2021-11-22 19:15:18'),
(83, 'App\\Models\\User', 11, 'accessToken', '263b83d25a2865d4c418f86c47d73ccdd6ef0e4d5cafdc3418bc0b10085c6e24', '[\"*\"]', NULL, '2021-11-22 19:18:22', '2021-11-22 19:18:22'),
(84, 'App\\Models\\User', 11, 'accessToken', 'a7fa79e15d607903d88b494cbe1d36dfcba9b15ed4c74e7f01bf8dcdf2dc668e', '[\"*\"]', NULL, '2021-11-22 19:23:34', '2021-11-22 19:23:34'),
(85, 'App\\Models\\User', 11, 'accessToken', 'bcc6746f001e31541b7dc5985162413852a5cb5ca20340bd8656169e01bd71b5', '[\"*\"]', NULL, '2021-11-22 19:27:10', '2021-11-22 19:27:10'),
(86, 'App\\Models\\User', 11, 'accessToken', 'c8bf8c545ed8c2c85e3223aa1c7ef68b429f49139247afac18c91bde7d7347d5', '[\"*\"]', NULL, '2021-11-22 19:29:15', '2021-11-22 19:29:15'),
(87, 'App\\Models\\User', 11, 'accessToken', 'ed09b08835ed310412b0792bbac0fb00c31bd4972673add6a6e07c748fb83f4d', '[\"*\"]', NULL, '2021-11-22 19:30:58', '2021-11-22 19:30:58'),
(88, 'App\\Models\\User', 11, 'accessToken', 'fb2f944261574e387cf1f23490955a2c1edfd7cafc7ddaa592629857686efddc', '[\"*\"]', '2021-11-23 12:31:26', '2021-11-23 06:10:33', '2021-11-23 12:31:26'),
(89, 'App\\Models\\User', 11, 'accessToken', '1870a2c3df95650a4094336eb60ab9b71568e95c4ffd85ebf53d8d06efbd4db8', '[\"*\"]', NULL, '2021-11-23 11:03:10', '2021-11-23 11:03:10'),
(90, 'App\\Models\\User', 11, 'accessToken', 'a03d761a52a110b9d7f41e3f408deb2e08635dfdfce25ccce396e15935456e4e', '[\"*\"]', NULL, '2021-11-23 12:12:09', '2021-11-23 12:12:09'),
(91, 'App\\Models\\User', 11, 'accessToken', '27d5267c1a68b646478e928d2a09586afd5550d68e8ccca9f514caa682830f00', '[\"*\"]', NULL, '2021-11-23 12:12:09', '2021-11-23 12:12:09'),
(92, 'App\\Models\\User', 11, 'accessToken', '25e0a0d0d5b24574c4a95ed1979cb42de1e87c93c39df7c32834b96197b1288f', '[\"*\"]', NULL, '2021-11-23 12:12:09', '2021-11-23 12:12:09'),
(93, 'App\\Models\\User', 11, 'accessToken', '53845ad4d90835d5cfd2b48858cb3cb1e81a2b744be4ad63f61e7ed25e701e1c', '[\"*\"]', NULL, '2021-11-23 12:12:09', '2021-11-23 12:12:09'),
(94, 'App\\Models\\User', 11, 'accessToken', 'e0076b94d79bbc0d28a6a2c1ee2e9e99b99a1f02f55736c61ecf3747b38a0255', '[\"*\"]', NULL, '2021-11-23 12:12:09', '2021-11-23 12:12:09'),
(95, 'App\\Models\\User', 11, 'accessToken', 'dd373b0383a36cf93a877f74c818e803012a293c38189b3f27f7fd0f80b1d676', '[\"*\"]', NULL, '2021-11-23 12:15:42', '2021-11-23 12:15:42'),
(96, 'App\\Models\\User', 11, 'accessToken', '6dc5110503407257c162f972acf243d98aba9df31e0596b4441369fd8dda97dc', '[\"*\"]', '2021-11-23 13:16:49', '2021-11-23 12:27:56', '2021-11-23 13:16:49'),
(97, 'App\\Models\\User', 11, 'accessToken', '084c856c06499b55d7872474c089ab0f08b62b5d1ad3e7dff37d49e854aa2ead', '[\"*\"]', NULL, '2021-11-23 12:40:03', '2021-11-23 12:40:03'),
(98, 'App\\Models\\User', 11, 'accessToken', '541cbf7ccb2642067eef295541ff0124c379428c1017c692ee3de9a930dc74e6', '[\"*\"]', '2021-11-23 15:47:11', '2021-11-23 13:33:37', '2021-11-23 15:47:11'),
(99, 'App\\Models\\User', 11, 'accessToken', 'dcbf00cbf67606908ab2c0b0bec4821f441565340c9cf2dcb3900b981f9fea80', '[\"*\"]', '2021-11-23 16:51:16', '2021-11-23 16:40:53', '2021-11-23 16:51:16'),
(100, 'App\\Models\\User', 11, 'accessToken', '6cc64bd1a265687b1976d7b178e5310bd10359e0854892b3c1c9ca1798d56f85', '[\"*\"]', NULL, '2021-11-25 05:41:44', '2021-11-25 05:41:44'),
(101, 'App\\Models\\User', 11, 'accessToken', '7d8f16f30d7e2625cba12d53fce3989d2fa9b32a2618a0894e0ca86f3595e614', '[\"*\"]', NULL, '2021-11-26 17:44:12', '2021-11-26 17:44:12'),
(102, 'App\\Models\\User', 11, 'accessToken', '62421ef172da2474c3401035044fa9ba6b4356251e849103d02ba8b2ac31c86e', '[\"*\"]', '2021-11-27 21:52:29', '2021-11-26 17:46:46', '2021-11-27 21:52:29'),
(103, 'App\\Models\\User', 11, 'accessToken', '057e8a31646f2ae2ecdf254bf1c1aebd85342e075ed7725ed0b43222b07399e9', '[\"*\"]', NULL, '2021-11-30 08:49:05', '2021-11-30 08:49:05'),
(104, 'App\\Models\\User', 11, 'accessToken', 'f750e36b8f81de0d29603ba7573676a36c85bafb20f9b779fb0abbb7f2d5c7e2', '[\"*\"]', NULL, '2021-12-01 06:01:34', '2021-12-01 06:01:34'),
(105, 'App\\Models\\User', 11, 'accessToken', 'f788b668a171de8fd710be791d7ccc3988f350066aab3742d5cefd9b509c8a21', '[\"*\"]', NULL, '2021-12-01 06:02:33', '2021-12-01 06:02:33'),
(106, 'App\\Models\\User', 11, 'accessToken', 'd14b61d5db71b0f76a2fc03d84328ebd2444fbd7b032b6c78125b106dd0b2e19', '[\"*\"]', NULL, '2021-12-01 06:15:07', '2021-12-01 06:15:07'),
(107, 'App\\Models\\User', 11, 'accessToken', '734f88f229fc6652a2aad0724db12155e7b415152f92703161a4a59cffa1e370', '[\"*\"]', NULL, '2021-12-01 06:53:17', '2021-12-01 06:53:17'),
(108, 'App\\Models\\User', 12, 'accessToken', '13b9ecbb05081576e70db60e7ebe8ac4d13bf284794b64b6ecf8d29efc160967', '[\"*\"]', NULL, '2021-12-01 13:43:44', '2021-12-01 13:43:44'),
(109, 'App\\Models\\User', 11, 'accessToken', '529971ef22e7bdf162904df48aea7070c2b1e54aca21e7998676eb30f494e8d0', '[\"*\"]', NULL, '2021-12-01 13:46:50', '2021-12-01 13:46:50'),
(110, 'App\\Models\\User', 11, 'accessToken', '9653933c84abcc39170a5f6de4fbaf7f7736e29e2b6039f08169dc688b223964', '[\"*\"]', NULL, '2021-12-01 17:31:05', '2021-12-01 17:31:05'),
(111, 'App\\Models\\User', 11, 'accessToken', '783009d1f0f5fe5140ddc56df1edcf9c7846c7c07960ded5e7f97993411d0de5', '[\"*\"]', NULL, '2021-12-01 17:48:10', '2021-12-01 17:48:10'),
(112, 'App\\Models\\User', 11, 'accessToken', '40c0cbd62fdcc3a6d22989171a5e776aeb28b9fa8d58dae3f284f357f78e2ef1', '[\"*\"]', '2021-12-01 17:51:20', '2021-12-01 17:50:54', '2021-12-01 17:51:20'),
(113, 'App\\Models\\User', 11, 'accessToken', '28ea42ce9275eec21a8a8c537ca499ee04da98bb1837489a4bcdc8d2fef84118', '[\"*\"]', NULL, '2021-12-01 18:03:03', '2021-12-01 18:03:03'),
(114, 'App\\Models\\User', 11, 'accessToken', '406d72706c090828f2b1deed68555cf7d9eadbbd5874f7747762c0797aa9e7eb', '[\"*\"]', NULL, '2021-12-01 18:21:26', '2021-12-01 18:21:26'),
(115, 'App\\Models\\User', 11, 'accessToken', 'd2380216622337e9c969495edd7531b31d9887e3e510a3b5286be113acbb908f', '[\"*\"]', NULL, '2021-12-01 18:58:54', '2021-12-01 18:58:54'),
(116, 'App\\Models\\User', 11, 'accessToken', '779dd042fc1c9a2f2c077c28d3571f879b29325c104d35b83a08d5af6fe2c732', '[\"*\"]', NULL, '2021-12-01 19:27:02', '2021-12-01 19:27:02'),
(117, 'App\\Models\\User', 11, 'accessToken', 'ed02c5f4b4c4a9877eaa801d6327b36ab789a01d18401cd627616d633e0fbc46', '[\"*\"]', '2021-12-03 20:46:20', '2021-12-03 20:45:08', '2021-12-03 20:46:20'),
(118, 'App\\Models\\User', 1, 'accessToken', '94760fa5b49638b0f3c7a6245e63ff56814b816a4b710540324621493643be16', '[\"*\"]', '2021-12-03 20:52:08', '2021-12-03 20:47:51', '2021-12-03 20:52:08'),
(119, 'App\\Models\\User', 11, 'accessToken', 'd2ee969411536fccb28bc232d1b27816537327b81a2d43b5031f741f49893eef', '[\"*\"]', '2021-12-09 17:18:33', '2021-12-09 17:12:46', '2021-12-09 17:18:33'),
(120, 'App\\Models\\User', 11, 'accessToken', 'f6e79c80d86ef2c09c4ae0e987d7535b57fd337aca424e4da54e664f55b77ced', '[\"*\"]', NULL, '2021-12-11 11:11:23', '2021-12-11 11:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `portal_audit_company_table`
--

CREATE TABLE `portal_audit_company_table` (
  `id` int(11) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `assigned_to_project_id` int(11) DEFAULT NULL,
  `supplier_name_prefix` varchar(6) DEFAULT NULL,
  `supplier_name_full` varchar(90) NOT NULL,
  `address_region` varchar(60) NOT NULL,
  `address_country` varchar(60) NOT NULL,
  `address_zip` varchar(10) NOT NULL,
  `address_area` varchar(60) NOT NULL,
  `address_city` varchar(60) NOT NULL,
  `address_1` varchar(60) NOT NULL,
  `address_2` varchar(60) NOT NULL,
  `address_3` varchar(60) NOT NULL,
  `phone_main` varchar(30) NOT NULL,
  `contact_name` varchar(60) NOT NULL,
  `contact_position` varchar(60) NOT NULL,
  `contact_mobile` varchar(60) NOT NULL,
  `contact_email` varchar(60) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_audit_company_table`
--

INSERT INTO `portal_audit_company_table` (`id`, `cust_id`, `assigned_to_project_id`, `supplier_name_prefix`, `supplier_name_full`, `address_region`, `address_country`, `address_zip`, `address_area`, `address_city`, `address_1`, `address_2`, `address_3`, `phone_main`, `contact_name`, `contact_position`, `contact_mobile`, `contact_email`, `updated_at`, `created_at`) VALUES
(1, 1, 1, 'NEJ', 'NextWave (Java)', 'Asia', 'Indonesia', '110117', 'Java', 'Jakarta', 'Mente', 'Jl. Surdinam Kav. 34', 'Chase Tower', '+62 21 345 6789', 'Eddy Smith', 'Sales Director', '+62 818 991889898988', 'eddy@nextwave.com77', '2022-01-11 07:20:37', '2022-01-10 10:18:12'),
(4, 1, 1, 'TCS', 'TATA', 'Asia', 'Indonesia', '110123', 'Java', 'Jakarta', 'Mentang', 'Jl. Tertal Kav. 13', '', '+62 21 341 4432', 'John Smith', 'Sales Director', '+62 818 9918898', 'js@tcs-global.com', '2022-01-10 10:18:12', '2022-01-10 10:18:12'),
(5, 2, 2, 'NEN', 'NextWave (Nusra)', 'Asia', 'Indonesia', '23056', 'Bali Nusra', 'Denpasar', 'Sea Front House', 'Ocean Drive', '', '+62 21 345 1123', 'Eddy Waldo', 'Sales Director', '+62 818 43531232', 'waldo.e@nextwave.com', '2022-01-10 10:18:12', '2022-01-10 10:18:12'),
(9, 2, 3, 'GBM', 'GBD (Malaysia) Pv', 'Asia', 'Malaysia', '66221', 'KL', 'Kuala Lumpur', 'St James High Road', 'Building 12A', '', '+65 44 342 334265', 'Frank Jones', 'Senior Director', '+65 342 989 6756', 'f.jones@gbd.net', '2022-01-10 10:18:12', '2022-01-10 10:18:12'),
(12, 2, 3, 'GBS', 'GBD (Singapore) Ltd', 'Asia', 'Singapore', '32776', 'Singapore', 'Singapore', 'Bolton Street', 'Building 1', '', '+65 44 342 334265', 'Frank Jones', 'Senior Sales Director', '+65 342 989 6756', 'f.jones@gbd.net', '2022-01-10 10:18:12', '2022-01-10 10:18:12'),
(39, 4, 4, 'GBJ', 'GBD (Indonesia) Ltd', 'Asia', 'Indonesia', '32776', 'Java', 'Jakarta', 'Ocean Road', 'Building 1', '...', '+65 44 342 334265', 'Frank Jones', 'Senior Sales Director', '+65 342 989 6756', 'f.jones@gbd.net883', '2022-01-10 19:40:21', '2022-01-10 10:18:12'),
(40, 4, 4, 'GBN', 'GBD (Bali) Ltd', 'Asia', 'Indonesia', '32776', 'Bali Nusra', 'Denpasar', 'Ocean Front', 'Building 10', '', '+65 44 342 334265', 'Frank Jones', 'Senior Sales Director', '+65 342 989 6756', 'f.jones@gbd.net', '2022-01-10 10:18:12', '2022-01-10 10:18:12'),
(47, 1, NULL, 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '2022-01-11 07:21:28', '2022-01-11 07:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `portal_customer_site_table`
--

CREATE TABLE `portal_customer_site_table` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `internal_project_id` int(11) DEFAULT NULL,
  `internal_project_name` varchar(30) DEFAULT NULL,
  `internal_project_team_id` int(11) DEFAULT NULL,
  `audit_company_id` int(11) DEFAULT NULL,
  `audit_team_id` int(11) DEFAULT NULL,
  `audit_status` enum('Not Required','No Planned Date','Planned','In Progress','Completed - Not Checked','Checked','Accepted','Rejected') NOT NULL DEFAULT 'No Planned Date',
  `audit_date` date DEFAULT NULL,
  `site_id` varchar(90) NOT NULL,
  `site_name` varchar(60) NOT NULL,
  `cust_site_class` varchar(30) DEFAULT NULL,
  `site_region` varchar(60) NOT NULL,
  `site_sub_region` varchar(60) DEFAULT NULL,
  `site_cluster_id` varchar(60) NOT NULL,
  `site_sub_cluster_id` varchar(60) DEFAULT NULL,
  `site_lon` float DEFAULT NULL,
  `site_lat` float DEFAULT NULL,
  `site_ownership` enum('Unknown','Owned','Leased','Shared','TowerCo') NOT NULL DEFAULT 'Unknown',
  `address_region` varchar(60) DEFAULT NULL,
  `address_country` varchar(60) DEFAULT NULL,
  `address_zip` varchar(10) DEFAULT NULL,
  `address_area` varchar(60) DEFAULT NULL,
  `address_city` varchar(60) DEFAULT NULL,
  `address_1` varchar(60) DEFAULT NULL,
  `address_2` varchar(60) DEFAULT NULL,
  `address_3` varchar(60) DEFAULT NULL,
  `approver_1` enum('Not Checked','Approved','Rejected') DEFAULT 'Not Checked',
  `approver_1_comments` varchar(255) DEFAULT 'No Comments Given',
  `approver_1_id` varchar(12) DEFAULT NULL,
  `approver_1_datetime` datetime DEFAULT NULL,
  `approver_2` enum('Not Checked','Approved','Rejected') DEFAULT 'Not Checked',
  `approver_2_comments` varchar(255) DEFAULT 'No Comments Given	',
  `approver_2_id` varchar(12) DEFAULT NULL,
  `approver_2_datetime` datetime DEFAULT NULL,
  `approver_3` enum('Not Checked','Approved','Rejected') DEFAULT 'Not Checked',
  `approver_3_comments` varchar(255) DEFAULT 'No Comments Given	',
  `approver_3_id` varchar(12) DEFAULT NULL,
  `approver_3_datetime` datetime DEFAULT NULL,
  `approver_4` enum('Not Checked','Approved','Rejected') DEFAULT 'Not Checked',
  `approver_4_comments` varchar(255) DEFAULT 'No Comments Given	',
  `approver_4_id` varchar(12) DEFAULT NULL,
  `approver_4_datetime` datetime DEFAULT NULL,
  `approver_5` enum('Not Checked','Approved','Rejected') DEFAULT 'Not Checked',
  `approver_5_comments` varchar(255) DEFAULT 'No Comments Given	',
  `approver_5_id` varchar(12) DEFAULT NULL,
  `approver_5_datetime` datetime DEFAULT NULL,
  `audit_overall_status` enum('Unknown','Planned','Approved','Failed') NOT NULL DEFAULT 'Unknown'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_customer_site_table`
--

INSERT INTO `portal_customer_site_table` (`id`, `customer_id`, `internal_project_id`, `internal_project_name`, `internal_project_team_id`, `audit_company_id`, `audit_team_id`, `audit_status`, `audit_date`, `site_id`, `site_name`, `cust_site_class`, `site_region`, `site_sub_region`, `site_cluster_id`, `site_sub_cluster_id`, `site_lon`, `site_lat`, `site_ownership`, `address_region`, `address_country`, `address_zip`, `address_area`, `address_city`, `address_1`, `address_2`, `address_3`, `approver_1`, `approver_1_comments`, `approver_1_id`, `approver_1_datetime`, `approver_2`, `approver_2_comments`, `approver_2_id`, `approver_2_datetime`, `approver_3`, `approver_3_comments`, `approver_3_id`, `approver_3_datetime`, `approver_4`, `approver_4_comments`, `approver_4_id`, `approver_4_datetime`, `approver_5`, `approver_5_comments`, `approver_5_id`, `approver_5_datetime`, `audit_overall_status`) VALUES
(1, 2, 2, 'TESTAUDIT001', 2, 4, 1, 'Planned', '2018-04-28', 'JR_NR_003', 'HARCOMAS_MANGGA2A_IND', 'BRONZE', 'EJBN', 'BALI NUSRA', 'NUSRA', 'KUPANG', 120.666, -9.88311, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(2, 2, 2, 'TESTAUDIT001', 2, 4, 1, 'Planned', '2017-08-22', '01JKP621', 'HARCOMAS_MANGGA2_IND', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.823, -6.13767, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(3, 2, 2, 'TESTAUDIT001', 5, 4, 2, 'Planned', '2017-08-23', '01JKU150', 'STA_TJPRIOK_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.881, -6.11025, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(4, 2, 2, 'TESTAUDIT001', 5, 4, 1, 'No Planned Date', NULL, '20BTU173', 'TEGALREJOMLG', 'BRONZE', 'EJBN', 'EAST JAVA', 'JEMBER', 'LUMAJANG', 112.95, -8.33746, 'Leased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(5, 2, 2, 'TESTAUDIT001', 2, 1, 3, 'No Planned Date', NULL, '02TGR130', 'JIAC2_MIC', 'GOLD', 'JBRO', 'BOTABEK', 'TANGERANG', 'TANGERANG_A', 106.653, -6.12203, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(6, 2, 2, 'TESTAUDIT001', 2, 4, 1, 'No Planned Date', NULL, '01JKP447', 'KANTOR_POS_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.835, -6.16872, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(7, 2, 2, 'TESTAUDIT001', 4, 4, 1, 'No Planned Date', NULL, '01JKS772', 'HALTE_BLOKM_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA SELATAN', 'JAKARTA SELATAN', 106.798, -6.24425, 'Leased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(8, 2, 2, 'TESTAUDIT001', 4, 4, 1, 'No Planned Date', NULL, '01JKS604', 'PLZ_SENAYAN_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA SELATAN', 'JAKARTA SELATAN', 106.798, -6.21869, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(9, 2, 2, 'TESTAUDIT001', 4, 4, 3, 'No Planned Date', NULL, '01JKP766', 'BUND_IMB_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.823, -6.17958, 'Leased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(10, 2, 2, 'TESTAUDIT001', 4, 5, 3, 'No Planned Date', NULL, '01JKP444', 'JL_SUNDA_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.825, -6.18823, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(11, 2, 2, 'TESTAUDIT001', 2, 5, 3, 'No Planned Date', NULL, '01JKB028', 'MAKRO_MERUYA_IND', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA BARAT', 'JAKARTA BARAT', 106.734, -6.19324, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(12, 2, 2, 'TESTAUDIT001', 2, 5, 2, 'Planned', '2018-04-30', '01JKT354', 'HALTE_PGC_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA TIMUR', 'JAKARTA TIMUR', 106.866, -6.26292, 'Leased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(13, 2, 2, 'TESTAUDIT001', 2, 5, 1, 'No Planned Date', NULL, '22RTG002', 'MBORONG', 'BRONZE', 'EJBN', 'BALI NUSRA', 'NUSRA', 'KUPANG', 120.612, -8.81022, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(14, 2, 2, 'TESTAUDIT001', 2, 5, 2, 'Planned', '2018-04-29', '01JKP685', 'CIKINI_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.838, -6.197, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(15, 2, 2, 'TESTAUDIT001', 2, 5, 3, 'No Planned Date', NULL, '20SMP062', 'TALAGASMPPL', 'BRONZE', 'EJBN', 'EAST JAVA', 'MADURA', 'MADURA_2', 114.31, -7.06615, 'Leased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(16, 2, 2, 'TESTAUDIT001', 2, 5, 1, 'No Planned Date', NULL, '01JKP275', 'NUGRASANTANA_WISMA_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.821, -6.20869, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(17, 2, 2, 'TESTAUDIT001', 4, 5, 2, 'No Planned Date', NULL, '01JKP725', 'KBN_SIRIH_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.827, -6.18225, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(18, 2, 2, 'TESTAUDIT001', 4, 5, 3, 'No Planned Date', NULL, '01JKP737', 'PSR_CEMPAKA_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.863, -6.17224, 'Leased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(19, 2, 2, 'TESTAUDIT001', 4, 5, 2, 'No Planned Date', NULL, '01JKS667', 'WMONGONSIDI_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA SELATAN', 'JAKARTA SELATAN', 106.815, -6.23869, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(20, 2, 3, 'TESTAUDIT002', 5, 4, NULL, 'No Planned Date', NULL, 'JR_NR_003', 'HARCOMAS_MANGGA2A_IND', 'BRONZE', 'EJBN', 'BALI NUSRA', 'NUSRA', 'KUPANG', 120.666, -9.88311, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(21, 2, 3, 'TESTAUDIT002', 5, 4, NULL, 'No Planned Date', NULL, '01JKP621', 'HARCOMAS_MANGGA2_IND', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.823, -6.13767, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(22, 2, 3, 'TESTAUDIT002', 5, 4, NULL, 'No Planned Date', NULL, '01JKU150', 'STA_TJPRIOK_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.881, -6.11025, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(23, 2, 3, 'TESTAUDIT002', 5, 4, NULL, 'No Planned Date', NULL, '20BTU173', 'TEGALREJOMLG', 'BRONZE', 'EJBN', 'EAST JAVA', 'JEMBER', 'LUMAJANG', 112.95, -8.33746, 'Leased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(24, 2, 3, 'TESTAUDIT002', 5, 1, NULL, 'No Planned Date', NULL, '02TGR130', 'JIAC2_MIC', 'GOLD', 'JBRO', 'BOTABEK', 'TANGERANG', 'TANGERANG_A', 106.653, -6.12203, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(25, 2, 3, 'TESTAUDIT002', 5, 4, NULL, 'No Planned Date', NULL, '01JKP447', 'KANTOR_POS_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.835, -6.16872, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(26, 2, 3, 'TESTAUDIT002', 5, 4, NULL, 'No Planned Date', NULL, '01JKS772', 'HALTE_BLOKM_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA SELATAN', 'JAKARTA SELATAN', 106.798, -6.24425, 'Leased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(27, 2, 3, 'TESTAUDIT002', 5, 4, NULL, 'No Planned Date', NULL, '01JKS604', 'PLZ_SENAYAN_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA SELATAN', 'JAKARTA SELATAN', 106.798, -6.21869, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(28, 1, 1, 'TESTAUDIT', 1, 1, NULL, 'Planned', '2018-04-20', '02TGR130', 'JIAC2_MIC', 'GOLD', 'JBRO', 'BOTABEK', 'TANGERANG', 'TANGERANG_A', 106.653, -6.12203, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(29, 1, 1, 'TESTAUDIT', 1, 4, NULL, 'Planned', '2018-04-29', '01JKP447', 'KANTOR_POS_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA PUSAT & UTARA', 'JAKARTA PUSAT & UTARA', 106.835, -6.16872, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(30, 1, 1, 'TESTAUDIT', 1, 4, NULL, 'Planned', '2018-04-29', '01JKS772', 'HALTE_BLOKM_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA SELATAN', 'JAKARTA SELATAN', 106.798, -6.24425, 'Leased', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown'),
(31, 1, 1, 'TESTAUDIT', 1, 4, NULL, 'Planned', '2018-04-29', '01JKS604', 'PLZ_SENAYAN_MIC', 'GOLD', 'JBRO', 'JAKARTA', 'JAKARTA SELATAN', 'JAKARTA SELATAN', 106.798, -6.21869, 'Owned', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Not Checked', 'No Comments Given', NULL, NULL, 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `portal_customer_table`
--

CREATE TABLE `portal_customer_table` (
  `id` int(11) NOT NULL,
  `cust_name_prefix` varchar(10) DEFAULT NULL,
  `cust_type` enum('direct','direct_via_reseller','partner','partner_cust','admin') DEFAULT NULL,
  `cust_status` enum('active','archived','deleted','pending','suspended') DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `cust_belongs_to` int(11) DEFAULT NULL,
  `cust_name_full` varchar(90) NOT NULL,
  `address_region` varchar(60) NOT NULL,
  `address_country` varchar(60) NOT NULL,
  `address_zip` varchar(10) NOT NULL,
  `address_area` varchar(60) NOT NULL,
  `address_city` varchar(60) NOT NULL,
  `address_1` varchar(60) NOT NULL,
  `address_2` varchar(60) NOT NULL,
  `address_3` varchar(60) NOT NULL,
  `phone_main` varchar(30) NOT NULL,
  `contact_name` varchar(60) NOT NULL,
  `contact_position` varchar(60) NOT NULL,
  `contact_mobile` varchar(60) NOT NULL,
  `contact_email` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_customer_table`
--

INSERT INTO `portal_customer_table` (`id`, `cust_name_prefix`, `cust_type`, `cust_status`, `cust_id`, `cust_belongs_to`, `cust_name_full`, `address_region`, `address_country`, `address_zip`, `address_area`, `address_city`, `address_1`, `address_2`, `address_3`, `phone_main`, `contact_name`, `contact_position`, `contact_mobile`, `contact_email`, `created_at`, `updated_at`) VALUES
(1, 'OPC', 'admin', 'active', 1, 1, 'OpCo Systems', 'Asia', 'Asia', '110123', 'Java', 'Jakarta', 'Kokas', 'Jl. Puri Cas', 'Cattleya 35-08', '+62 818 990 117', 'Stephen Starr', 'Stephen Starr', '+62 818 990 117', 'steve@opco.systemsmmm339933', '2021-12-11 14:18:25', '2022-01-10 18:55:10'),
(2, 'EDC', 'partner', 'active', 2, 1, 'PT eDotCo Solutionss', 'Asia', 'Malaysia', '6672', 'KL', 'Kualar Lumpur', 'Downtown', 'Jl. Kasablanca', 'Floor 4', '+64 45 345 6747', 'Peter Smithson', 'Operations Director', '+62 818 991 9911', 'p.smithson@edotco.com', '2021-12-11 14:18:25', '2021-12-11 14:18:25'),
(3, 'DIGJAM', 'partner_cust', 'active', 3, 2, 'Digicel Group Jamaica', 'Caribbean', 'Caribbean', 'K1', 'Kingston', 'Kingston', '14 Ocean Blvd', 'Change', 'Change', 'Change', 'Mr A Dean', 'Mr A Dean', '+1 876 446 7867', 'a.m.dean@digicelgroup.com', '2021-12-11 14:18:25', '2022-01-05 10:05:21'),
(4, 'XANTEC', 'direct', 'active', 4, 1, 'XantaTech', 'Asia', 'Asia', 'K2323', 'Dehli', 'Nodia', 'aaa', 'bbb', 'ccc', '23232323', 'Ankit Kumar', 'Ankit Kumar', '+91', 'ankit.kumar@xanta-tech.com', '2021-12-11 14:18:25', '2021-12-11 14:25:12'),
(5, 'DIGHAI', 'partner_cust', 'active', 5, 2, 'Digicell Group Haiti', 'Caribbean', 'Haiti', '34342', 'Main City', 'Big City', 'aaa', 'bbb', 'ccc', '23232323', 'John', 'Boss', '45454545', 'john@myTest.com', '2021-12-11 14:24:02', '2021-12-11 14:24:02'),
(11, 'DIGCUBA', 'partner_cust', 'active', NULL, 2, 'Digicel Group Cuba', 'Caribbean', 'Caribbean', '9934342', 'Havana', 'Havana', '1 King Blv', '.', '.', '12121212', 'Bobby Johns', 'Bobby Johns', '3434343434', 'bobby@mytest.com', '2021-12-17 11:29:56', '2021-12-17 11:57:36'),
(13, 'aaa', 'direct', 'pending', NULL, 1, 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '2022-01-10 16:56:37', '2022-01-10 16:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `portal_project_team_table`
--

CREATE TABLE `portal_project_team_table` (
  `id` int(11) NOT NULL,
  `belongs_to_cust_id` int(11) DEFAULT NULL,
  `project_table_ref_id` int(11) DEFAULT NULL,
  `internal_project_team_name` varchar(30) NOT NULL,
  `pm_name` varchar(30) NOT NULL,
  `pm_mobile` varchar(30) NOT NULL,
  `pm_email` varchar(60) NOT NULL,
  `engineer_name` varchar(30) DEFAULT NULL,
  `engineer_mobile` varchar(30) DEFAULT NULL,
  `engineer_email` varchar(60) DEFAULT NULL,
  `senior_engineer_name` varchar(30) DEFAULT NULL,
  `senior_engineer_mobile` varchar(30) DEFAULT NULL,
  `senior_engineer_email` varchar(60) DEFAULT NULL,
  `data_reviewer_name` varchar(30) DEFAULT NULL,
  `data_reviewer_mobile` varchar(30) DEFAULT NULL,
  `data_reviewer_email` varchar(60) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portal_project_team_table`
--

INSERT INTO `portal_project_team_table` (`id`, `belongs_to_cust_id`, `project_table_ref_id`, `internal_project_team_name`, `pm_name`, `pm_mobile`, `pm_email`, `engineer_name`, `engineer_mobile`, `engineer_email`, `senior_engineer_name`, `senior_engineer_mobile`, `senior_engineer_email`, `data_reviewer_name`, `data_reviewer_mobile`, `data_reviewer_email`, `updated_at`, `created_at`) VALUES
(1, 1, 1, 'OPC Team01', 'Rahmadi Budi', '+628159953699', 'rahmadib@imb.com', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '2022-01-11 10:32:51', '2022-01-11 08:14:30'),
(2, 2, 2, 'EDC PM Team01', 'Hadi Gun', '+6281310630699', 'hadig@imb.com', '', '', '', '', '', '', '', '', '', '2022-01-11 08:14:30', '2022-01-11 08:14:30'),
(4, 2, 2, 'EDC PM Team02', 'Hadi Smithson', '+6281310630699', 'hadigsimb.com', '', '', '', '', '', '', '', '', '', '2022-01-11 08:14:30', '2022-01-11 08:14:30'),
(5, 2, 3, 'EDC PM Team03', 'Martin Bell', '+6281310630699', 'martinbimb.com', '', '', '', '', '', '', '', '', '', '2022-01-11 08:14:30', '2022-01-11 08:14:30'),
(6, 2, 1, 'demo', 'demo', '+628159953699', 'demo@imb.com', '', '', '', '', '', '', '', '', '', '2022-01-11 08:14:30', '2022-01-11 08:14:30'),
(7, 1, 1, 'aaa', 'aaa', 'aaa', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-11 09:49:10', '2022-01-11 09:49:10'),
(8, 2, 2, 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', '2022-01-11 09:50:07', '2022-01-11 09:50:07'),
(9, 1, 1, 'ccc', 'ccc', 'ccc', 'ccc', 'test', 'test', 'test', 'ccc', 'ccc', 'ccc', NULL, NULL, 'ddd', '2022-02-04 15:33:02', '2022-01-11 10:33:55'),
(10, 1, 1, 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', 'ddd', '2022-02-04 15:34:09', '2022-02-04 15:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `structure_level_one_menu`
--

CREATE TABLE `structure_level_one_menu` (
  `id` int(11) NOT NULL,
  `icon_name` varchar(30) DEFAULT NULL,
  `icon_displayed_label` varchar(30) DEFAULT NULL,
  `icon_help_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structure_level_one_menu`
--

INSERT INTO `structure_level_one_menu` (`id`, `icon_name`, `icon_displayed_label`, `icon_help_text`) VALUES
(1, 'lev1_antenna_structure', 'Antenna Support Structure', NULL),
(2, 'lev1_equipment_housing', 'Equipment Housing', NULL),
(3, 'lev1_radio_access', 'Radio Access (RAN)', NULL),
(4, 'lev1_tx_transport', 'Transmission / Transport', NULL),
(5, 'lev1_power_ac', 'AC Power', NULL),
(6, 'lev1_power_dc', 'DC Power', NULL),
(7, 'lev1_site_cme', 'Site CME', NULL),
(8, 'lev1_security', 'Site Security', NULL),
(9, 'lev1_other_active', 'Other Active', NULL),
(10, 'lev1_other_passive', 'Other Passive', NULL),
(11, 'lev1_additional_info', 'Additional Info - Site', NULL),
(12, 'lev1_unused_1', 'Unused 1', NULL),
(13, 'lev1_unused_2', 'Unused 2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `structure_level_two_menu`
--

CREATE TABLE `structure_level_two_menu` (
  `id` int(11) NOT NULL,
  `icon_belongs_too_level_one_item` int(11) DEFAULT NULL,
  `icon_name` varchar(30) DEFAULT NULL,
  `icon_displayed_label` varchar(30) DEFAULT NULL,
  `icon_help_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structure_level_two_menu`
--

INSERT INTO `structure_level_two_menu` (`id`, `icon_belongs_too_level_one_item`, `icon_name`, `icon_displayed_label`, `icon_help_text`) VALUES
(1, 1, 'lev2_rooftop', 'Rooftop', NULL),
(2, 1, 'lev2_roadside', 'Roadside', NULL),
(3, 1, 'lev2_greenfield', 'Greenfield', NULL),
(4, 2, 'lev2_shelter_room', 'Shelter / Room', NULL),
(5, 2, 'lev2_outdoor_cab', 'Outdoor Cabinet', NULL),
(6, 3, 'lev2_bsc_rnc', 'BSC / RNC', NULL),
(7, 3, 'lev2_ran_bts_nodeb', 'RAN (BTS / Node B)', NULL),
(8, 3, 'lev2_gsm_antennas', 'GSM Antennas', NULL),
(9, 4, 'lev2_microwave', 'Microwave Radio', NULL),
(10, 4, 'lev2_ip', 'IP', NULL),
(11, 4, 'lev2_dwdm', 'DWDM', NULL),
(12, 4, 'lev2_gpon', 'GPON', NULL),
(13, 4, 'lev2_midi', 'MIDI', NULL),
(14, 4, 'lev2_mpls', 'MPLS', NULL),
(15, 4, 'lev2_super_wifi', 'Super WiFi', NULL),
(16, 4, 'lev2_vsat', 'VSAT', NULL),
(17, 5, 'lev2_grid', 'Grid Mains Supply', NULL),
(18, 5, 'lev2_diesel_gen', 'Diesel Generator', NULL),
(19, 5, 'lev2_ats', 'Auto Transfer Switch', NULL),
(20, 5, 'lev2_amf', 'Auto Main Fail', NULL),
(21, 5, 'lev2_ext_fuel_tank', 'External Fuel Tank', NULL),
(22, 5, 'lev2_fuel_probe', 'External Fuel Tank Probe', NULL),
(23, 6, 'lev2_rect_rack', 'Rectifier Rack', NULL),
(24, 6, 'lev2_battery_bank', 'Battery Bank', NULL),
(25, 7, 'lev2_indoor_cooling', 'Indoor Cooling', NULL),
(26, 7, 'lev2_ac_dist', 'AC Distribution Box', NULL),
(27, 7, 'lev2_spd', 'Surge Protection Device', NULL),
(28, 7, 'lev2_earth_ground', 'Earth and Grounding', NULL),
(29, 7, 'lev2_aircraft_lights', 'Aircraft Warning Lights', NULL),
(30, 7, 'lev2_lighting', 'Lighting', NULL),
(31, 7, 'lev2_plinths_foundation', 'Plinths and Foundations', NULL),
(32, 7, 'lev2_site_perimeter', 'Site Perimeter', NULL),
(33, 7, 'lev2_site_flooring', 'Site Flooring', NULL),
(34, 8, 'lev2_fire_fight', 'Fire Fighting Equipment', NULL),
(35, 8, 'lev2_intruder_detect', 'Intruder System', NULL),
(36, 9, 'lev2_active_other', 'Add Other Active Items', NULL),
(37, 10, 'lev2_passive_other', 'Add Other Passive Items', NULL),
(38, 10, 'lev2_additional_info', 'Additional Info - Site', NULL),
(39, 11, 'lev2_unused_1', 'Not Used in this APP Version', NULL),
(40, 12, 'lev2_unused_2', 'Not Used in this APP Version', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_role` enum('project_administrator','project_manager','data_analyst') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_status` enum('pending','active','disabled','deleted') COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_belongs_to_cust_id` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `granted_user_type` enum('none','admin','direct','direct_via_reller','partner','partner_cust') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `granted_user_role` enum('Sys-Admin','Cust-Admin','Cust-PM','Cust-Analyst') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `name`, `mobile_no`, `email`, `email_verified_at`, `password`, `requested_role`, `user_status`, `company_name`, `user_belongs_to_cust_id`, `remember_token`, `created_at`, `updated_at`, `granted_user_type`, `granted_user_role`) VALUES
(10, 'muhammad', 'fahad', 'muhammad fahad', '03446617577', 'sikndarabbas27@gmail.com', NULL, '$2y$10$DFVp3EiQKPUy3uE6DTnfY.xKyX.lJpssqEEjGbBkuwYzdIOMUWDVm', 'data_analyst', 'active', 'new ads', 0, NULL, '2021-11-12 20:03:52', '2021-11-12 20:03:52', 'none', NULL),
(4, 'SecureSiteAudit', 'SecureSiteAudit', 'SecureSiteAudit', '034446671577', 'registration@SecureSiteAudit.com', NULL, '$2y$10$378.p/Nub11jB4MmikzR3uVmmCmUnHLFQlMIjrNLQrhAUJsPPKO2K', 'project_administrator', 'active', 'SecureSiteAudit', 0, NULL, '2021-11-11 16:37:02', '2021-11-11 16:37:02', 'none', NULL),
(7, 'Steve', 'Starr', 'Steve SYS-ADMIN', '971553136577', 'steve@opco.systems', NULL, '$2y$10$iUzvAj8.Mlg/v3A4jOlkNeTt0jrmZ5hjjJDABEtRT/8fstqIFSYVi', 'project_administrator', 'active', 'OpcoServices', 1, 'KYLO9XPMjjyTGNH1vLD0ZG6fuEAdi0TrwogpOwYc1MIzY7sJyA8HMukjUEjZ', '2021-11-12 17:06:28', '2021-11-13 18:00:15', 'admin', 'Sys-Admin'),
(8, 'Steve', 'Starr', 'Testing2', '44565656568', 'steve1@opcoservices.com', NULL, '$2y$10$8i/rrEOBgnBGBH7hcJarL.AUeisavjTV9yvNpGJSj9SOlIhDWDT2.', 'project_administrator', 'deleted', 'MyTest', 0, NULL, '2021-11-12 18:57:38', '2021-11-12 18:57:38', 'none', NULL),
(11, 'Steve', 'DataAnalyst', 'Steve DataAnalyst', '971553136577', 'data-analyst@opco.systems', NULL, '$2y$10$zcX8rYVHhKMbLBNzQQ1oae85d7jKftopwv9m1XXEyFiI4puaYd6Qa', 'data_analyst', 'active', 'OpCo Services', 1, 'uOjnMpCyNQbSzXgAtmQytCiHEFnAKCkcva5777b2oF4kKq1HPTyzdk5cYQh1', '2021-11-13 12:15:21', '2021-11-13 12:41:50', 'direct', 'Cust-Analyst'),
(12, 'Steve', 'ProjectManager', 'Steve ProjectManager', '971553135677', 'project-manager@opco.systems', NULL, '$2y$10$LVdMA4mmmWR736EWL4WbBOkxSIDETKeeqapMQR7kejtlUO7b2f7Fi', 'project_manager', 'active', 'OpCo Systems', 1, NULL, '2021-11-13 12:44:36', '2021-11-13 12:44:36', 'direct', 'Cust-PM'),
(13, 'Steve', 'ProjectAdmin', 'Steve ProjectAdmin', '971553136577', 'project-admin@opco.systems', NULL, '$2y$10$V6U60wzUX05mg3fuZBZrPe3.RhsSTd1oQtsqGlKlcBYkws9rJXF7K', 'project_administrator', 'active', 'OpCo Systems', 1, NULL, '2021-11-13 12:46:29', '2021-11-13 12:46:29', 'direct', 'Cust-Admin'),
(14, 'Fahad', 'Shah', 'Fahad Shah', '03210000000', 'fahadshah707211@gmail.com', NULL, '$2y$10$u3rpNWwoSjBIQFYYyZb/M..8JxPKaQ.ugZaLvLvSBZ0OHp1pYANly', 'project_administrator', 'active', 'Sample', 0, NULL, '2021-11-13 18:48:59', '2021-11-13 18:48:59', 'none', 'Cust-Admin'),
(15, 'fahad', 'developer', 'fahad developer', '232323', 'fahaddevelopertest@gmail.com', NULL, '$2y$10$Ghvq5yaL7pTGyHb8N3kwe.9Uth5ItVmexTmCmHelRJsG9GwCzRrei', 'project_administrator', 'active', 'sample', 0, NULL, '2021-11-15 22:58:34', '2021-11-15 22:58:34', 'none', 'Sys-Admin'),
(16, 'EDC', 'ADMIN', 'EDC ADMIN', '123456789', 'edotco-admin@opco.systems', NULL, '$2y$10$eQGVgs4YJLPrWSgiHNbtSOXAthCUHHx8xM5TPKsC3kQl7nbR6/4kK', 'project_administrator', 'active', 'eDotCo', 2, NULL, '2021-11-28 19:56:06', '2021-11-28 19:56:06', 'partner', 'Cust-Admin'),
(17, 'EDC', 'PM', 'EDC PM', '123456789', 'edotco-pm@opco.systems', NULL, '$2y$10$KHmRyHZFNL180v47avQCDumsaPwUuJbe.S2/CpjV8wQCofra6v.7e', 'project_manager', 'active', 'eDotCo', 2, NULL, '2021-11-28 19:58:10', '2021-11-28 19:58:10', 'partner', 'Cust-PM'),
(18, 'EDC', 'ANALYST', 'EDC ANALYST', '123456789', 'edotco-analyst@opco.systems', NULL, '$2y$10$t3FeAWRffcPE2CuInu59nOEy5LyEZzwgsUxamyvJL7N8UXDl34Bim', 'data_analyst', 'active', 'eDotCo', 2, NULL, '2021-11-28 19:59:28', '2021-11-28 19:59:28', 'partner', 'Cust-Analyst'),
(19, 'XAN', 'ADMIN', 'XAN ADMIN', '123456789', 'xan-admin@opco.systems', NULL, '$2y$10$4Fv5IRgZH3QKzlbxFVy9KuSuPkzv98qcT9UJZ6yF6zsJoNAYFrmGm', 'project_administrator', 'active', 'XAN Systems', 4, NULL, '2021-11-28 20:07:49', '2021-11-28 20:07:49', 'direct', 'Cust-Admin'),
(20, 'XAN', 'PM', 'XAN PM', '123456789', 'xan-pm@opco.systems', NULL, '$2y$10$ZVyNFX5GshooaXhUtG8DZuJ6AmO4HbeeGNwL/70nOrvYNOrMEV7be', 'project_manager', 'active', 'XAN Systems', 4, NULL, '2021-11-28 20:09:04', '2021-11-28 20:09:04', 'direct', 'Cust-PM'),
(21, 'XAN', 'ANALYST', 'XAN ANALYST', '123456789', 'xan-analyst@opco.systems', NULL, '$2y$10$1FCaTgbVMre6Mtrp3QHOPO3XLTNMguiH6JhGpQ4lzElSFBjGH6xou', 'data_analyst', 'active', 'XAN Systems', 4, NULL, '2021-11-28 20:10:05', '2021-11-28 20:10:05', 'direct', 'Cust-Analyst'),
(22, 'Abidkan', 'AliLogics', 'Abidkan AliLogics', '11111111', 'abidkhatak5757@gmail.com', NULL, '$2y$10$6qQ9X6Q1WLtzLZUNUUxhw.xT79TZjjLAtreT3wPacgHL0chZlrJ0m', 'project_administrator', 'active', 'OpCo Systems', 1, 'pam0IsKDfNfrmbu6EStnHGB6pWhcKnCJBXJVJS3sMfddP5HU4wzFTekvSYIU', '2022-02-05 12:00:38', '2022-02-05 12:00:38', 'admin', 'Sys-Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `0-1-engineer_details`
--
ALTER TABLE `0-1-engineer_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `engineer_details_ibfk_1` (`assigned_to_audit_company`) USING BTREE,
  ADD KEY `engineer_details_ibfk_2` (`assigned_to_project_id`,`works_for_company_prefix`) USING BTREE;

--
-- Indexes for table `0-2-site_details`
--
ALTER TABLE `0-2-site_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`internal_project_id`),
  ADD KEY `audit_team_id` (`row_id_of_audit_team`);

--
-- Indexes for table `1-1-antenna_rooftop`
--
ALTER TABLE `1-1-antenna_rooftop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1-1_project_id` (`internal_project_id`) USING BTREE,
  ADD KEY `1-1_audit_id` (`system_audit_id`);

--
-- Indexes for table `1-2-antenna_roadside`
--
ALTER TABLE `1-2-antenna_roadside`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1-2_project_id` (`internal_project_id`),
  ADD KEY `1-2_audit_team_id` (`system_audit_id`);

--
-- Indexes for table `1-3-antenna_greenfield`
--
ALTER TABLE `1-3-antenna_greenfield`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `1-3_audit_id` (`system_audit_id`),
  ADD KEY `1-3_project_id` (`internal_project_id`);

--
-- Indexes for table `2-1-housing_shelter`
--
ALTER TABLE `2-1-housing_shelter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `2-1_project_id` (`internal_project_id`),
  ADD KEY `2-1_audit_id` (`system_audit_id`);

--
-- Indexes for table `2-2-housing_outdoor`
--
ALTER TABLE `2-2-housing_outdoor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `2-2_project_id` (`internal_project_id`),
  ADD KEY `2-2_audit_id` (`system_audit_id`);

--
-- Indexes for table `3-1-radio_bscrnc`
--
ALTER TABLE `3-1-radio_bscrnc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `3-1_project_id` (`internal_project_id`),
  ADD KEY `3-1_audit_id` (`system_audit_id`);

--
-- Indexes for table `3-2-radio_btsnodeb`
--
ALTER TABLE `3-2-radio_btsnodeb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `3-2_audit_id` (`system_audit_id`),
  ADD KEY `3-2_project_id` (`internal_project_id`) USING BTREE;

--
-- Indexes for table `3-3-radio_gsmant`
--
ALTER TABLE `3-3-radio_gsmant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `3-3_project_id` (`internal_project_id`),
  ADD KEY `3-3+audit_id` (`system_audit_id`);

--
-- Indexes for table `4-1-trans_microwave`
--
ALTER TABLE `4-1-trans_microwave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `4-1_project_id` (`internal_project_id`),
  ADD KEY `4-1_audit_id` (`system_audit_id`);

--
-- Indexes for table `4-2-trans_ip`
--
ALTER TABLE `4-2-trans_ip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `4-2_project_id` (`internal_project_id`),
  ADD KEY `4-2_audit_id` (`system_audit_id`);

--
-- Indexes for table `4-3-trans_dwdm`
--
ALTER TABLE `4-3-trans_dwdm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `4-3_project_id` (`internal_project_id`),
  ADD KEY `4-3_audit_id` (`system_audit_id`);

--
-- Indexes for table `4-4-trans_gpon`
--
ALTER TABLE `4-4-trans_gpon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `4-4_project_id` (`internal_project_id`),
  ADD KEY `4-4_audit_id` (`system_audit_id`);

--
-- Indexes for table `4-5-trans_midi`
--
ALTER TABLE `4-5-trans_midi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `4-5_project_id` (`internal_project_id`),
  ADD KEY `4-5_audit_id` (`system_audit_id`);

--
-- Indexes for table `4-7-trans_superwifi`
--
ALTER TABLE `4-7-trans_superwifi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `4-7_audit_id` (`system_audit_id`) USING BTREE,
  ADD KEY `4-7_project_id` (`internal_project_id`) USING BTREE;

--
-- Indexes for table `4-8-trans_vsat`
--
ALTER TABLE `4-8-trans_vsat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `4-8-trans_vsat_ibfk_1` (`system_audit_id`),
  ADD KEY `4-8-trans_vsat_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `5-1-ac_power-mains_grid`
--
ALTER TABLE `5-1-ac_power-mains_grid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `5-1-ac_power-mains_grid_ibfk_1` (`system_audit_id`),
  ADD KEY `5-1-ac_power-mains_grid_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `5-2-ac_power-genset`
--
ALTER TABLE `5-2-ac_power-genset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `5-2-ac_power-genset_ibfk_1` (`system_audit_id`),
  ADD KEY `5-2-ac_power-genset_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `5-3-ac_power-genset_starter_battery`
--
ALTER TABLE `5-3-ac_power-genset_starter_battery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `5-3-ac_power-genset_starter_battery_ibfk_1` (`system_audit_id`),
  ADD KEY `5-3-ac_power-genset_starter_battery_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `5-4-ac_power-genset_controller`
--
ALTER TABLE `5-4-ac_power-genset_controller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `5-4-ac_power-genset_controller_ibfk_1` (`system_audit_id`),
  ADD KEY `5-4-ac_power-genset_controller_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `5-5-ac_power-ats`
--
ALTER TABLE `5-5-ac_power-ats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `5-5-ac_power-ats_ibfk_1` (`system_audit_id`),
  ADD KEY `5-5-ac_power-ats_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `5-6-ac_power-amf`
--
ALTER TABLE `5-6-ac_power-amf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `5-6-ac_power-amf_ibfk_1` (`system_audit_id`),
  ADD KEY `5-6-ac_power-amf_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `5-7-ac_power-external_fuel_tank`
--
ALTER TABLE `5-7-ac_power-external_fuel_tank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `5-7-ac_power-external_fuel_tank_ibfk_1` (`system_audit_id`),
  ADD KEY `5-7-ac_power-external_fuel_tank_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `5-8-ac_power-external_fuel_probe`
--
ALTER TABLE `5-8-ac_power-external_fuel_probe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `5-8-ac_power-external_fuel_probe_ibfk_1` (`system_audit_id`),
  ADD KEY `5-8-ac_power-external_fuel_probe_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `6-1-dc_power-rectifier_rack`
--
ALTER TABLE `6-1-dc_power-rectifier_rack`
  ADD PRIMARY KEY (`id`),
  ADD KEY `6-1-dc_power-rectifier_rack_ibfk_1` (`system_audit_id`),
  ADD KEY `6-1-dc_power-rectifier_rack_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `6-2-dc_power-battery`
--
ALTER TABLE `6-2-dc_power-battery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `6-2-dc_power-battery_ibfk_1` (`system_audit_id`),
  ADD KEY `6-2-dc_power-battery_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `7-1-cme-indoor_cooling`
--
ALTER TABLE `7-1-cme-indoor_cooling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `7-1-cme-indoor_cooling_ibfk_1` (`system_audit_id`),
  ADD KEY `7-1-cme-indoor_cooling_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `7-2-cme-ac_breakers`
--
ALTER TABLE `7-2-cme-ac_breakers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `7-2-cme-ac_breakers_ibfk_1` (`system_audit_id`),
  ADD KEY `7-2-cme-ac_breakers_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `7-3-cme-spd`
--
ALTER TABLE `7-3-cme-spd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `7-3-cme-spd_ibfk_1` (`system_audit_id`),
  ADD KEY `7-3-cme-spd_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `7-4-cme-earth_ground`
--
ALTER TABLE `7-4-cme-earth_ground`
  ADD PRIMARY KEY (`id`),
  ADD KEY `7-4-cme-earth_ground_ibfk_1` (`system_audit_id`),
  ADD KEY `7-4-cme-earth_ground_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `7-5-cme-awl`
--
ALTER TABLE `7-5-cme-awl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `7-5-cme-awl_ibfk_1` (`system_audit_id`),
  ADD KEY `7-5-cme-awl_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `7-6-cme-lighting`
--
ALTER TABLE `7-6-cme-lighting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `7-6-cme-lighting_ibfk_1` (`system_audit_id`),
  ADD KEY `7-6-cme-lighting_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `7-7-cme-foundations`
--
ALTER TABLE `7-7-cme-foundations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `7-7-cme-foundations_ibfk_1` (`system_audit_id`),
  ADD KEY `7-7-cme-foundations_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `7-8-cme-perimeter`
--
ALTER TABLE `7-8-cme-perimeter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `7-8-cme-perimeter_ibfk_1` (`system_audit_id`),
  ADD KEY `7-8-cme-perimeter_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `7-9-cme-flooring`
--
ALTER TABLE `7-9-cme-flooring`
  ADD PRIMARY KEY (`id`),
  ADD KEY `7-9-cme-flooring_ibfk_1` (`system_audit_id`),
  ADD KEY `7-9-cme-flooring_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `8-1-security-fire`
--
ALTER TABLE `8-1-security-fire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `8-1-security-fire_ibfk_1` (`system_audit_id`),
  ADD KEY `8-1-security-fire_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `8-2-security-intruder`
--
ALTER TABLE `8-2-security-intruder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `8-2-security-intruder_ibfk_1` (`system_audit_id`),
  ADD KEY `8-2-security-intruder_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `9-1-other-active`
--
ALTER TABLE `9-1-other-active`
  ADD PRIMARY KEY (`id`),
  ADD KEY `9-1-other-active_ibfk_1` (`system_audit_id`),
  ADD KEY `9-1-other-active_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `10-1-other-passive`
--
ALTER TABLE `10-1-other-passive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `10-1-other-passive_ibfk_1` (`system_audit_id`),
  ADD KEY `10-1-other-passive_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `11-1-additional-info`
--
ALTER TABLE `11-1-additional-info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `11-1-additional-info_ibfk_1` (`system_audit_id`),
  ADD KEY `11-1-additional-info_ibfk_2` (`internal_project_id`);

--
-- Indexes for table `data_dropdown_list_dual_level`
--
ALTER TABLE `data_dropdown_list_dual_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dd-dual_project_id` (`internal_project_id`);

--
-- Indexes for table `data_dropdown_list_single_level`
--
ALTER TABLE `data_dropdown_list_single_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dd-single_project_id` (`internal_project_id`);

--
-- Indexes for table `data_projects`
--
ALTER TABLE `data_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data-projects_project-short-name` (`internal_project_short_name`) USING BTREE,
  ADD KEY `project-customer_name_prefix` (`cust_name_prefix`),
  ADD KEY `project-customer_id` (`cust_id`);

--
-- Indexes for table `data_radial_lists`
--
ALTER TABLE `data_radial_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `radial_projecy_id` (`internal_project_id`);

--
-- Indexes for table `data_site_id_name`
--
ALTER TABLE `data_site_id_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data-site-id-name_1` (`internal_project_id`,`internal_project_name`),
  ADD KEY `data-site-id-name_2` (`internal_project_name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portal_audit_company_table`
--
ALTER TABLE `portal_audit_company_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_audit_company_table_ibfk_2` (`assigned_to_project_id`),
  ADD KEY `portal_audit_company_table_ibfk_1` (`cust_id`) USING BTREE,
  ADD KEY `portal_audit_company_table_ibfk_3` (`supplier_name_prefix`);

--
-- Indexes for table `portal_customer_site_table`
--
ALTER TABLE `portal_customer_site_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_customer_site_table_ibfk_1` (`internal_project_team_id`),
  ADD KEY `portal_customer_site_table_ibfk_2` (`audit_company_id`),
  ADD KEY `portal_customer_site_table_ibfk_3` (`audit_team_id`),
  ADD KEY `portal_customer_site_table_ibfk_4` (`customer_id`),
  ADD KEY `portal_customer_site_table_ibfk_5` (`internal_project_id`);

--
-- Indexes for table `portal_customer_table`
--
ALTER TABLE `portal_customer_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_cust_id` (`cust_id`) USING BTREE,
  ADD KEY `customer_name-prefix` (`cust_name_prefix`);

--
-- Indexes for table `portal_project_team_table`
--
ALTER TABLE `portal_project_team_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_project_team_table_ibfk_1` (`belongs_to_cust_id`),
  ADD KEY `portal_project_team_table_ibfk_2` (`project_table_ref_id`);

--
-- Indexes for table `structure_level_one_menu`
--
ALTER TABLE `structure_level_one_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `structure_level_two_menu`
--
ALTER TABLE `structure_level_two_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `0-2-site_details`
--
ALTER TABLE `0-2-site_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `1-1-antenna_rooftop`
--
ALTER TABLE `1-1-antenna_rooftop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `1-2-antenna_roadside`
--
ALTER TABLE `1-2-antenna_roadside`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `1-3-antenna_greenfield`
--
ALTER TABLE `1-3-antenna_greenfield`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `2-1-housing_shelter`
--
ALTER TABLE `2-1-housing_shelter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `2-2-housing_outdoor`
--
ALTER TABLE `2-2-housing_outdoor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `3-1-radio_bscrnc`
--
ALTER TABLE `3-1-radio_bscrnc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `3-2-radio_btsnodeb`
--
ALTER TABLE `3-2-radio_btsnodeb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `3-3-radio_gsmant`
--
ALTER TABLE `3-3-radio_gsmant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `4-1-trans_microwave`
--
ALTER TABLE `4-1-trans_microwave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `4-2-trans_ip`
--
ALTER TABLE `4-2-trans_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `4-3-trans_dwdm`
--
ALTER TABLE `4-3-trans_dwdm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `4-4-trans_gpon`
--
ALTER TABLE `4-4-trans_gpon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `4-5-trans_midi`
--
ALTER TABLE `4-5-trans_midi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `4-7-trans_superwifi`
--
ALTER TABLE `4-7-trans_superwifi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `4-8-trans_vsat`
--
ALTER TABLE `4-8-trans_vsat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `5-1-ac_power-mains_grid`
--
ALTER TABLE `5-1-ac_power-mains_grid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `5-2-ac_power-genset`
--
ALTER TABLE `5-2-ac_power-genset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `5-3-ac_power-genset_starter_battery`
--
ALTER TABLE `5-3-ac_power-genset_starter_battery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `5-4-ac_power-genset_controller`
--
ALTER TABLE `5-4-ac_power-genset_controller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `5-5-ac_power-ats`
--
ALTER TABLE `5-5-ac_power-ats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `5-6-ac_power-amf`
--
ALTER TABLE `5-6-ac_power-amf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `5-7-ac_power-external_fuel_tank`
--
ALTER TABLE `5-7-ac_power-external_fuel_tank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `5-8-ac_power-external_fuel_probe`
--
ALTER TABLE `5-8-ac_power-external_fuel_probe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `6-1-dc_power-rectifier_rack`
--
ALTER TABLE `6-1-dc_power-rectifier_rack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `6-2-dc_power-battery`
--
ALTER TABLE `6-2-dc_power-battery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `7-1-cme-indoor_cooling`
--
ALTER TABLE `7-1-cme-indoor_cooling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `7-2-cme-ac_breakers`
--
ALTER TABLE `7-2-cme-ac_breakers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `7-3-cme-spd`
--
ALTER TABLE `7-3-cme-spd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `7-4-cme-earth_ground`
--
ALTER TABLE `7-4-cme-earth_ground`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `7-5-cme-awl`
--
ALTER TABLE `7-5-cme-awl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `7-6-cme-lighting`
--
ALTER TABLE `7-6-cme-lighting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `7-7-cme-foundations`
--
ALTER TABLE `7-7-cme-foundations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `7-8-cme-perimeter`
--
ALTER TABLE `7-8-cme-perimeter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `7-9-cme-flooring`
--
ALTER TABLE `7-9-cme-flooring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `8-1-security-fire`
--
ALTER TABLE `8-1-security-fire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `8-2-security-intruder`
--
ALTER TABLE `8-2-security-intruder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `9-1-other-active`
--
ALTER TABLE `9-1-other-active`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `10-1-other-passive`
--
ALTER TABLE `10-1-other-passive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `11-1-additional-info`
--
ALTER TABLE `11-1-additional-info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_dropdown_list_dual_level`
--
ALTER TABLE `data_dropdown_list_dual_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2193;

--
-- AUTO_INCREMENT for table `data_dropdown_list_single_level`
--
ALTER TABLE `data_dropdown_list_single_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `data_projects`
--
ALTER TABLE `data_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_radial_lists`
--
ALTER TABLE `data_radial_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `data_site_id_name`
--
ALTER TABLE `data_site_id_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `portal_audit_company_table`
--
ALTER TABLE `portal_audit_company_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `portal_customer_site_table`
--
ALTER TABLE `portal_customer_site_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `portal_customer_table`
--
ALTER TABLE `portal_customer_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `portal_project_team_table`
--
ALTER TABLE `portal_project_team_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `structure_level_one_menu`
--
ALTER TABLE `structure_level_one_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `structure_level_two_menu`
--
ALTER TABLE `structure_level_two_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `0-1-engineer_details`
--
ALTER TABLE `0-1-engineer_details`
  ADD CONSTRAINT `0-1_audit_company_id` FOREIGN KEY (`assigned_to_audit_company`) REFERENCES `portal_audit_company_table` (`id`),
  ADD CONSTRAINT `0-1_project_id` FOREIGN KEY (`assigned_to_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `0-2-site_details`
--
ALTER TABLE `0-2-site_details`
  ADD CONSTRAINT `0-2_audit_team` FOREIGN KEY (`row_id_of_audit_team`) REFERENCES `0-1-engineer_details` (`id`),
  ADD CONSTRAINT `0-2_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `1-1-antenna_rooftop`
--
ALTER TABLE `1-1-antenna_rooftop`
  ADD CONSTRAINT `1-1_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `1-1_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `1-2-antenna_roadside`
--
ALTER TABLE `1-2-antenna_roadside`
  ADD CONSTRAINT `1-2_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `1-2_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `1-3-antenna_greenfield`
--
ALTER TABLE `1-3-antenna_greenfield`
  ADD CONSTRAINT `1-3_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `1-3_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `2-1-housing_shelter`
--
ALTER TABLE `2-1-housing_shelter`
  ADD CONSTRAINT `2-1_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `2-1_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `2-2-housing_outdoor`
--
ALTER TABLE `2-2-housing_outdoor`
  ADD CONSTRAINT `2-2_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `2-2_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `3-1-radio_bscrnc`
--
ALTER TABLE `3-1-radio_bscrnc`
  ADD CONSTRAINT `3-1_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `3-1_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `3-2-radio_btsnodeb`
--
ALTER TABLE `3-2-radio_btsnodeb`
  ADD CONSTRAINT `3-2_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `3-2_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `3-3-radio_gsmant`
--
ALTER TABLE `3-3-radio_gsmant`
  ADD CONSTRAINT `3-3_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `3-3_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `4-1-trans_microwave`
--
ALTER TABLE `4-1-trans_microwave`
  ADD CONSTRAINT `4-1_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `4-1_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `4-2-trans_ip`
--
ALTER TABLE `4-2-trans_ip`
  ADD CONSTRAINT `4-2_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `4-2_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `4-3-trans_dwdm`
--
ALTER TABLE `4-3-trans_dwdm`
  ADD CONSTRAINT `4-3_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `4-3_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `4-5-trans_midi`
--
ALTER TABLE `4-5-trans_midi`
  ADD CONSTRAINT `4-5_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `4-5_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `4-7-trans_superwifi`
--
ALTER TABLE `4-7-trans_superwifi`
  ADD CONSTRAINT `4-7_audit_id` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `4-7_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `4-8-trans_vsat`
--
ALTER TABLE `4-8-trans_vsat`
  ADD CONSTRAINT `4-8-trans_vsat_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `4-8-trans_vsat_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `5-1-ac_power-mains_grid`
--
ALTER TABLE `5-1-ac_power-mains_grid`
  ADD CONSTRAINT `5-1-ac_power-mains_grid_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `5-1-ac_power-mains_grid_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `5-2-ac_power-genset`
--
ALTER TABLE `5-2-ac_power-genset`
  ADD CONSTRAINT `5-2-ac_power-genset_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `5-2-ac_power-genset_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `5-3-ac_power-genset_starter_battery`
--
ALTER TABLE `5-3-ac_power-genset_starter_battery`
  ADD CONSTRAINT `5-3-ac_power-genset_starter_battery_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `5-3-ac_power-genset_starter_battery_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `5-4-ac_power-genset_controller`
--
ALTER TABLE `5-4-ac_power-genset_controller`
  ADD CONSTRAINT `5-4-ac_power-genset_controller_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `5-4-ac_power-genset_controller_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `5-5-ac_power-ats`
--
ALTER TABLE `5-5-ac_power-ats`
  ADD CONSTRAINT `5-5-ac_power-ats_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `5-5-ac_power-ats_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `5-6-ac_power-amf`
--
ALTER TABLE `5-6-ac_power-amf`
  ADD CONSTRAINT `5-6-ac_power-amf_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `5-6-ac_power-amf_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `5-7-ac_power-external_fuel_tank`
--
ALTER TABLE `5-7-ac_power-external_fuel_tank`
  ADD CONSTRAINT `5-7-ac_power-external_fuel_tank_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `5-7-ac_power-external_fuel_tank_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `5-8-ac_power-external_fuel_probe`
--
ALTER TABLE `5-8-ac_power-external_fuel_probe`
  ADD CONSTRAINT `5-8-ac_power-external_fuel_probe_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `5-8-ac_power-external_fuel_probe_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `6-1-dc_power-rectifier_rack`
--
ALTER TABLE `6-1-dc_power-rectifier_rack`
  ADD CONSTRAINT `6-1-dc_power-rectifier_rack_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `6-1-dc_power-rectifier_rack_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `6-2-dc_power-battery`
--
ALTER TABLE `6-2-dc_power-battery`
  ADD CONSTRAINT `6-2-dc_power-battery_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `6-2-dc_power-battery_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `7-1-cme-indoor_cooling`
--
ALTER TABLE `7-1-cme-indoor_cooling`
  ADD CONSTRAINT `7-1-cme-indoor_cooling_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `7-1-cme-indoor_cooling_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `7-2-cme-ac_breakers`
--
ALTER TABLE `7-2-cme-ac_breakers`
  ADD CONSTRAINT `7-2-cme-ac_breakers_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `7-2-cme-ac_breakers_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `7-3-cme-spd`
--
ALTER TABLE `7-3-cme-spd`
  ADD CONSTRAINT `7-3-cme-spd_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `7-3-cme-spd_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `7-4-cme-earth_ground`
--
ALTER TABLE `7-4-cme-earth_ground`
  ADD CONSTRAINT `7-4-cme-earth_ground_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `7-4-cme-earth_ground_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `7-5-cme-awl`
--
ALTER TABLE `7-5-cme-awl`
  ADD CONSTRAINT `7-5-cme-awl_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `7-5-cme-awl_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `7-6-cme-lighting`
--
ALTER TABLE `7-6-cme-lighting`
  ADD CONSTRAINT `7-6-cme-lighting_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `7-6-cme-lighting_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `7-7-cme-foundations`
--
ALTER TABLE `7-7-cme-foundations`
  ADD CONSTRAINT `7-7-cme-foundations_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `7-7-cme-foundations_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `7-8-cme-perimeter`
--
ALTER TABLE `7-8-cme-perimeter`
  ADD CONSTRAINT `7-8-cme-perimeter_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `7-8-cme-perimeter_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `7-9-cme-flooring`
--
ALTER TABLE `7-9-cme-flooring`
  ADD CONSTRAINT `7-9-cme-flooring_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `7-9-cme-flooring_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `8-1-security-fire`
--
ALTER TABLE `8-1-security-fire`
  ADD CONSTRAINT `8-1-security-fire_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `8-1-security-fire_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `8-2-security-intruder`
--
ALTER TABLE `8-2-security-intruder`
  ADD CONSTRAINT `8-2-security-intruder_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `8-2-security-intruder_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `9-1-other-active`
--
ALTER TABLE `9-1-other-active`
  ADD CONSTRAINT `9-1-other-active_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `9-1-other-active_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `10-1-other-passive`
--
ALTER TABLE `10-1-other-passive`
  ADD CONSTRAINT `10-1-other-passive_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `10-1-other-passive_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `11-1-additional-info`
--
ALTER TABLE `11-1-additional-info`
  ADD CONSTRAINT `11-1-additional-info_ibfk_1` FOREIGN KEY (`system_audit_id`) REFERENCES `0-2-site_details` (`id`),
  ADD CONSTRAINT `11-1-additional-info_ibfk_2` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `data_dropdown_list_dual_level`
--
ALTER TABLE `data_dropdown_list_dual_level`
  ADD CONSTRAINT `dd-dual_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `data_dropdown_list_single_level`
--
ALTER TABLE `data_dropdown_list_single_level`
  ADD CONSTRAINT `dd-single_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `data_projects`
--
ALTER TABLE `data_projects`
  ADD CONSTRAINT `project-customer_id` FOREIGN KEY (`cust_id`) REFERENCES `portal_customer_table` (`id`),
  ADD CONSTRAINT `project-customer_name_prefix` FOREIGN KEY (`cust_name_prefix`) REFERENCES `portal_customer_table` (`cust_name_prefix`);

--
-- Constraints for table `data_radial_lists`
--
ALTER TABLE `data_radial_lists`
  ADD CONSTRAINT `radial_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `data_site_id_name`
--
ALTER TABLE `data_site_id_name`
  ADD CONSTRAINT `data-site-id-name_1` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`),
  ADD CONSTRAINT `data-site-id-name_2` FOREIGN KEY (`internal_project_name`) REFERENCES `data_projects` (`internal_project_short_name`);

--
-- Constraints for table `portal_audit_company_table`
--
ALTER TABLE `portal_audit_company_table`
  ADD CONSTRAINT `portal-audit-company_project_id` FOREIGN KEY (`assigned_to_project_id`) REFERENCES `data_projects` (`id`),
  ADD CONSTRAINT `portal_audit_company_cust_id` FOREIGN KEY (`cust_id`) REFERENCES `portal_customer_table` (`id`);

--
-- Constraints for table `portal_customer_site_table`
--
ALTER TABLE `portal_customer_site_table`
  ADD CONSTRAINT `portal-customer-site-table_audit_company_id` FOREIGN KEY (`audit_company_id`) REFERENCES `portal_audit_company_table` (`id`),
  ADD CONSTRAINT `portal-customer-site-table_audit_team_id` FOREIGN KEY (`audit_team_id`) REFERENCES `0-1-engineer_details` (`id`),
  ADD CONSTRAINT `portal-customer-site-table_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `portal_customer_table` (`id`),
  ADD CONSTRAINT `portal-customer-site-table_internal_project_team_id` FOREIGN KEY (`internal_project_team_id`) REFERENCES `portal_project_team_table` (`id`),
  ADD CONSTRAINT `portal-customer-site-table_project_id` FOREIGN KEY (`internal_project_id`) REFERENCES `data_projects` (`id`);

--
-- Constraints for table `portal_project_team_table`
--
ALTER TABLE `portal_project_team_table`
  ADD CONSTRAINT `project-team_cust_id` FOREIGN KEY (`belongs_to_cust_id`) REFERENCES `portal_customer_table` (`id`),
  ADD CONSTRAINT `project-team_project_id` FOREIGN KEY (`project_table_ref_id`) REFERENCES `data_projects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
