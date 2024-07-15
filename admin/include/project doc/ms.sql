-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2024 at 11:21 PM
-- Server version: 10.6.18-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weebpbih_pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `name`, `email`, `contact`, `photo`, `username`, `password`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Kamal Uddin', 'kamal@yahoo.com', NULL, NULL, 'kamal', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, '2024-06-11 06:01:07', NULL, NULL, NULL, NULL),
(2, NULL, 'jhraj963@gmail.com', NULL, NULL, 'jhraj963', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, '2024-07-04 05:13:45', NULL, NULL, NULL, NULL),
(3, NULL, 'admin@admin.com', NULL, NULL, 'Mamun', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, '2024-07-04 05:22:03', NULL, NULL, NULL, NULL),
(4, NULL, 'fahim@gmail.com', NULL, NULL, 'fahim', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, '2024-07-04 05:26:05', NULL, NULL, NULL, NULL),
(5, NULL, '', NULL, NULL, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, '2024-07-04 08:23:08', NULL, NULL, NULL, NULL),
(6, NULL, 'mohammedtushar63@gmail.com', NULL, NULL, 'Tushar ', '5ac7330503386cd93115dfbc633694bfda954794', NULL, '2024-07-04 08:50:47', NULL, NULL, NULL, NULL),
(7, 'fahim', 'fahim@gmail.com', '4444', NULL, '', NULL, NULL, '2024-07-12 19:22:22', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `due` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `contact`, `status`, `due`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'kamal', '016', NULL, 500.00, '2024-06-09 09:43:27', 1, '2024-06-09 09:53:24', 1, '2024-06-10 06:35:38'),
(2, 'jamal', '057', NULL, 500.00, '2024-06-09 09:45:39', 1, '2024-06-09 09:53:39', 1, '2024-07-06 19:20:51'),
(3, 'Messrs. Bangladesh Medical Store', '01863-226025', NULL, 0.00, '2024-07-06 19:21:17', 1, NULL, NULL, NULL),
(4, 'RX MEDIMART', '01979-626868', NULL, 0.00, '2024-07-06 19:21:37', 1, NULL, NULL, NULL),
(5, 'Tamanna Pharmacy', '01912-000676', NULL, 0.00, '2024-07-06 19:21:59', 1, NULL, NULL, NULL),
(6, 'ZR Medicine Shop Online', '01608-426477', NULL, 0.00, '2024-07-06 19:22:21', 1, NULL, NULL, NULL),
(7, 'Nahar Medico', '01866-277777', NULL, 0.00, '2024-07-06 19:23:56', 1, NULL, NULL, NULL),
(8, 'MediMart', '01841-161718', NULL, 0.00, '2024-07-06 19:24:15', 1, NULL, NULL, NULL),
(9, 'Bismillah Medicine Shop', '01888-629293', NULL, 0.00, '2024-07-06 19:24:49', 1, NULL, NULL, NULL),
(10, 'M/S Panacea Pharma', '01706-199145', NULL, 0.00, '2024-07-06 19:25:19', 1, NULL, NULL, NULL),
(11, 'Shopnil Medicine Corner', '01700-843096', NULL, 0.00, '2024-07-06 19:25:38', 1, NULL, NULL, NULL),
(12, 'Lazz Pharma Sylhet', '01764-305082', NULL, 0.00, '2024-07-06 19:26:01', 1, NULL, NULL, NULL),
(13, 'Abdul Al Mamun', '01675437902', NULL, 0.00, '2024-07-07 07:49:45', 1, NULL, 1, '2024-07-07 07:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `generic_name` varchar(255) DEFAULT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `type_id` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `brand_name`, `generic_name`, `dose`, `price`, `type_id`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Napa', 'Paracetamol', '500 mg', 2.00, 1, 1, '2024-06-13 06:34:02', 1, '2024-06-13 07:12:13', 1, NULL),
(2, 'Rabnil MUPS ', 'Rabeprazole Sodium', '20 mg', 10.00, 1, 1, '2024-06-13 07:05:31', 1, '2024-06-13 07:12:35', 1, '2024-07-07 06:28:15'),
(3, 'Sugel', 'Aluminium Hydroxide + Magnesium Hydroxide', '(175 mg+225 mg)/5 ml', 55.00, 3, 1, '2024-06-13 07:07:20', 1, '2024-06-13 07:12:56', 1, NULL),
(4, 'Abex', 'Pseudoephedrine', '100 ml', 35.00, 4, 1, '2024-07-06 18:48:00', 2, '2024-07-06 18:48:20', 1, NULL),
(5, 'Ace', 'Paracetamol', '500 mg', 12.00, 1, 1, '2024-07-06 18:49:52', 2, NULL, NULL, NULL),
(6, 'Acetor', 'Captopril', '25 mg', 35.00, 1, 1, '2024-07-06 18:51:07', 2, NULL, NULL, NULL),
(7, 'Actizen', 'Cetirizine Hydrochloride', '10 mg', 2.03, 1, 1, '2024-07-06 18:52:15', 2, NULL, NULL, NULL),
(8, 'Acyvir', 'Acyclovir', '3%', 125.00, 5, 1, '2024-07-06 18:54:35', 2, NULL, NULL, NULL),
(9, 'Adam 33', 'Prednisolone', '5 mg', 17.30, 1, 1, '2024-07-06 18:55:31', 2, NULL, NULL, NULL),
(10, 'Adexim', 'Cefixime Trihydrate', '200 mg', 30.00, 2, 1, '2024-07-06 18:59:19', 2, NULL, NULL, NULL),
(11, 'Adiron', 'Ferric Maltol', '30 mg', 66.00, 2, 1, '2024-07-06 19:00:05', 2, NULL, NULL, NULL),
(12, 'Bdflox', 'Flucloxacillin Sodium', '125 mg/5 ml', 60.00, 4, 1, '2024-07-06 19:01:17', 2, NULL, NULL, NULL),
(13, 'Beclovan', 'Baclofen', '10 mg', 80.00, 1, 1, '2024-07-06 19:02:13', 2, NULL, NULL, NULL),
(14, 'Benda DS', 'Albendazole', '400 mg', 3.50, 1, 1, '2024-07-06 19:03:48', 2, NULL, NULL, NULL),
(15, 'Calpin', 'Amlodipine Besilate', '5 mg', 45.00, 1, 1, '2024-07-06 19:04:46', 2, NULL, NULL, NULL),
(16, 'Daomin XR', 'Metformin Hydrochloride', '500 mg', 70.00, 1, 1, '2024-07-06 19:05:55', 2, NULL, NULL, NULL),
(17, 'Deconil', 'Butamirate Citrate', '7.5 mg/5 ml', 80.24, 4, 1, '2024-07-06 19:06:50', 2, NULL, NULL, NULL),
(18, 'Delpino', 'Ivabradine', '7.5 mg', 350.00, 1, 1, '2024-07-06 19:07:30', 2, NULL, NULL, NULL),
(19, 'Dermicon', 'Fluconazole', '150 mg', 22.00, 2, 1, '2024-07-06 19:08:14', 2, NULL, NULL, NULL),
(20, 'Editoren', 'Cefditoren', '400 mg', 1.00, 1, 1, '2024-07-06 19:09:03', 2, NULL, NULL, NULL),
(21, 'Edysta', 'Tadalafil', '2.5 mg', 100.00, 1, 1, '2024-07-08 17:33:13', 2, NULL, NULL, NULL),
(22, 'Edvila M', 'Vildagliptin + Metformin Hydrochloride', '50 mg+500 mg', 154.00, 1, 1, '2024-07-08 17:35:09', 2, NULL, NULL, NULL),
(23, 'Eflam', 'Etoricoxib', '60 mg', 70.00, 1, 1, '2024-07-08 17:35:53', 2, '2024-07-08 17:36:45', 1, NULL),
(24, 'Eflucin', 'Flucloxacillin Sodium', '500 mg', 40.00, 1, 1, '2024-07-08 17:37:34', 2, NULL, NULL, NULL),
(25, 'Eggcal-D', 'Eggshell Calcium + Vitamin D3', '500 mg+200 IU', 100.00, 1, 1, '2024-07-08 17:40:35', 2, '2024-07-08 17:41:16', 1, NULL),
(26, 'Facid', 'Sodium Fusidate', '250 mg', 650.00, 1, 1, '2024-07-08 17:42:16', 2, NULL, NULL, NULL),
(27, 'Famiclav', 'Cefuroxime Axetil + Clavulanic Acid', '250 mg+62.5 mg', 245.00, 1, 1, '2024-07-08 17:43:03', 2, NULL, NULL, NULL),
(28, 'Famotin', 'Famotidine', '20 mg', 142.00, 1, 1, '2024-07-08 17:43:57', 2, NULL, NULL, NULL),
(29, 'Fastact', 'Fexofenadine Hydrochloride', '120 mg', 6.50, 1, 1, '2024-07-08 17:45:03', 2, NULL, NULL, NULL),
(30, 'Favigan', 'Favipiravir', '200 mg', 400.00, 1, 1, '2024-07-08 17:45:45', 2, NULL, NULL, NULL),
(31, 'G-Antihistamine', 'Chlorpheniramine Maleate', '2 mg/5 ml', 20.00, 4, 1, '2024-07-08 17:47:24', 2, NULL, NULL, NULL),
(32, 'G-Atorvast', 'Atorvastatin Calcium', '10 mg', 80.50, 1, 1, '2024-07-08 17:48:23', 2, NULL, NULL, NULL),
(33, 'G-Cipro', 'Ciprofloxacin', '500 mg', 48.00, 1, 1, '2024-07-08 17:48:59', 2, NULL, NULL, NULL),
(34, 'G-Iron Folic acid', 'Ferrous Fumarate + Folic acid', '308 mg+350 mcg', 0.20, 1, 1, '2024-07-08 17:50:25', 2, NULL, NULL, NULL),
(35, 'G-Prazosin', 'Prazosin Hydrochloride', '2 mg', 3.00, 1, 1, '2024-07-08 17:51:22', 2, NULL, NULL, NULL),
(36, 'Halocort', 'Halobetasol Propionate', '0.05%', 130.00, 5, 1, '2024-07-08 17:52:23', 2, NULL, NULL, NULL),
(37, 'Ibandron', 'Ibandronic Acid', '150 mg', 1.00, 1, 1, '2024-07-08 17:53:12', 2, NULL, NULL, NULL),
(38, 'Iconal', 'Itraconazole', '100 mg', 15.04, 2, 1, '2024-07-08 17:54:09', 2, NULL, NULL, NULL),
(39, 'Imatin', 'Imatinib Mesylate', '100 mg', 100.00, 1, 1, '2024-07-08 17:55:03', 2, NULL, NULL, NULL),
(40, 'Imaceva', 'Imatinib Mesylate', '100 mg', 100.00, 1, 1, '2024-07-08 17:55:40', 2, NULL, NULL, NULL),
(41, 'Inco SR', 'Indapamide', '1.5 mg', 5.00, 1, 1, '2024-07-08 17:56:37', 2, NULL, NULL, NULL),
(42, 'Janmet XR', 'Sitagliptin + Metformin Hydrochloride', '50 mg+500 mg', 20.00, 1, 1, '2024-07-08 17:57:10', 2, NULL, NULL, NULL),
(43, 'Jardiance', 'Empagliflozin', '25 mg', 84.00, 1, 1, '2024-07-08 17:57:44', 2, NULL, NULL, NULL),
(44, 'Jefenac TR', 'Diclofenac Sodium', '100 mg', 3.00, 2, 1, '2024-07-08 17:58:20', 2, NULL, NULL, NULL),
(45, 'Kalcoral-DX', 'Coral Calcium + Vitamin D3', '600 mg+400 IU', 15.00, 1, 1, '2024-07-08 17:59:05', 2, NULL, NULL, NULL),
(46, 'Kanaquine', 'Quinine Sulfate', '300 mg', 6.40, 1, 1, '2024-07-08 17:59:42', 2, NULL, NULL, NULL),
(47, 'Kanopas', 'Finerenone', '10 mg', 65.00, 1, 1, '2024-07-08 18:00:12', 2, NULL, NULL, NULL),
(48, 'Ketoalfa', 'Amino Acid Ketoanalogues', '600 mg', 40.00, 1, 1, '2024-07-08 18:01:15', 2, NULL, NULL, NULL),
(49, 'Ketoprix', 'Ketorolac Tromethamine', '30 mg/ml', 55.17, 6, 1, '2024-07-08 18:02:21', 2, NULL, NULL, NULL),
(50, 'Ketorin', 'Ketorolac Tromethamine', '30 mg/ml', 55.16, 6, 1, '2024-07-08 18:02:51', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sub_amount` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `supplier_id`, `purchase_date`, `qty`, `sub_amount`, `discount`, `vat`, `total_amount`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 1, '2024-06-13', 0, 1110.00, 65.00, 55.50, 1100.00, '2024-06-13 09:28:24', 1, NULL, NULL, NULL),
(2, 1, '2024-06-23', 165, 3685.00, 0.00, 0.00, 3685.00, '2024-06-23 05:29:13', 2, NULL, NULL, NULL),
(3, 5, '2024-07-06', 2000, 24000.00, 4.00, 1200.00, 25196.00, '2024-07-06 19:26:39', 2, NULL, NULL, NULL),
(4, 2, '2024-07-07', 20, 240.00, 10.00, 12.00, 242.00, '2024-07-07 07:52:07', 3, NULL, NULL, NULL),
(5, 3, '2024-07-10', 50, 6250.00, 0.00, 0.00, 6250.00, '2024-07-10 03:17:38', 2, NULL, NULL, NULL),
(6, 4, '2024-07-10', 50, 1750.00, 555.00, 87.50, 1282.00, '2024-07-10 03:18:18', 2, NULL, NULL, NULL),
(7, 6, '2024-07-10', 600, 390000.00, 10.00, 19500.00, 409490.00, '2024-07-10 03:26:47', 2, NULL, NULL, NULL),
(8, 3, '2024-07-12', 10, 450.00, 10.00, 22.50, 462.00, '2024-07-12 12:26:55', 3, NULL, NULL, NULL),
(9, 11, '2024-07-12', 20, 2840.00, 0.00, 142.00, 2982.00, '2024-07-12 12:27:59', 3, NULL, NULL, NULL),
(10, 2, '2024-07-12', 1000, 12000.00, 100.00, 600.00, 12500.00, '2024-07-12 12:29:27', 3, NULL, NULL, NULL),
(11, 2, '2024-07-12', 1000, 2000.00, 100.00, 100.00, 2000.00, '2024-07-12 12:33:52', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchase_id`, `purchase_date`, `medicine_id`, `qty`, `price`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 1, '2024-06-13', 1, 55.00, 2.00, '2024-06-13 09:28:24', 1, NULL, NULL, NULL),
(2, 1, '2024-06-13', 2, 100.00, 10.00, '2024-06-13 09:28:24', 1, NULL, NULL, NULL),
(3, 2, '2024-06-23', 1, 55.00, 2.00, '2024-06-23 05:29:14', 2, NULL, NULL, NULL),
(4, 2, '2024-06-23', 2, 55.00, 10.00, '2024-06-23 05:29:14', 2, NULL, NULL, NULL),
(5, 2, '2024-06-23', 3, 55.00, 55.00, '2024-06-23 05:29:14', 2, NULL, NULL, NULL),
(6, 3, '2024-07-06', 5, 2000.00, 12.00, '2024-07-06 19:26:39', 2, NULL, NULL, NULL),
(7, 4, '2024-07-07', 5, 20.00, 12.00, '2024-07-07 07:52:07', 3, NULL, NULL, NULL),
(8, 5, '2024-07-10', 8, 50.00, 125.00, '2024-07-10 03:17:38', 2, NULL, NULL, NULL),
(9, 6, '2024-07-10', 6, 50.00, 35.00, '2024-07-10 03:18:18', 2, NULL, NULL, NULL),
(10, 7, '2024-07-10', 26, 600.00, 650.00, '2024-07-10 03:26:47', 2, NULL, NULL, NULL),
(11, 8, '2024-07-12', 15, 10.00, 45.00, '2024-07-12 12:26:55', 3, NULL, NULL, NULL),
(12, 9, '2024-07-12', 28, 20.00, 142.00, '2024-07-12 12:27:59', 3, NULL, NULL, NULL),
(13, 10, '2024-07-12', 5, 1000.00, 12.00, '2024-07-12 12:29:27', 3, NULL, NULL, NULL),
(14, 11, '2024-07-12', 1, 1000.00, 2.00, '2024-07-12 12:33:52', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE `purchase_return` (
  `id` int(11) NOT NULL,
  `ref` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `purchase_return_date` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sub_amount` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_return`
--

INSERT INTO `purchase_return` (`id`, `ref`, `supplier_id`, `purchase_return_date`, `qty`, `sub_amount`, `discount`, `vat`, `total_amount`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 0, 1, '2024-07-03', 5, 10.00, 0.00, 0.00, 10.00, '2024-07-03 07:48:53', 1, NULL, NULL, NULL),
(2, 0, 1, '2024-07-03', 5, 10.00, 0.00, 0.00, 10.00, '2024-07-03 07:49:19', 1, NULL, NULL, NULL),
(3, 0, 6, '2024-07-10', 90, 58500.00, 0.00, 5850.00, 64350.00, '2024-07-10 03:33:44', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` int(11) NOT NULL,
  `purchase_return_id` int(11) DEFAULT NULL,
  `purchase_return_date` date DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_return_details`
--

INSERT INTO `purchase_return_details` (`id`, `purchase_return_id`, `purchase_return_date`, `medicine_id`, `qty`, `price`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 2, '2024-07-03', 1, 5.00, 2.00, '2024-07-03 07:49:19', 1, NULL, NULL, NULL),
(2, 3, '2024-07-10', 26, 90.00, 650.00, '2024-07-10 03:33:44', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sub_amount` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `sales_date`, `qty`, `sub_amount`, `discount`, `vat`, `total_amount`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 2, '2024-06-23', 90, 500.00, 0.00, 0.00, 500.00, '2024-06-23 06:10:26', 2, NULL, NULL, NULL),
(2, 9, '2024-07-06', 720, 8640.00, 1.00, 432.00, 9071.00, '2024-07-06 19:27:43', 2, NULL, NULL, NULL),
(3, 12, '2024-07-07', 20, 240.00, 10.00, 12.00, 242.00, '2024-07-07 07:52:44', 3, NULL, NULL, NULL),
(4, 10, '2024-07-10', 500, 325000.00, 3.00, 32500.00, 357497.00, '2024-07-10 03:28:36', 2, NULL, NULL, NULL),
(5, 4, '2024-07-12', 50, 100.00, 0.00, 5.00, 105.00, '2024-07-12 12:34:50', 3, NULL, NULL, NULL),
(6, 7, '2024-07-12', 20, 40.00, 5.00, 2.00, 37.00, '2024-07-12 12:36:36', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`id`, `sales_id`, `sales_date`, `medicine_id`, `qty`, `price`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 1, '2024-06-23', 1, 50.00, 2.00, '2024-06-23 06:10:26', 2, NULL, NULL, NULL),
(2, 1, '2024-06-23', 2, 40.00, 10.00, '2024-06-23 06:10:26', 2, NULL, NULL, NULL),
(3, 2, '2024-07-06', 5, 720.00, 12.00, '2024-07-06 19:27:43', 2, NULL, NULL, NULL),
(4, 3, '2024-07-07', 5, 20.00, 12.00, '2024-07-07 07:52:44', 3, NULL, NULL, NULL),
(5, 4, '2024-07-10', 26, 500.00, 650.00, '2024-07-10 03:28:36', 2, NULL, NULL, NULL),
(6, 5, '2024-07-12', 1, 50.00, 2.00, '2024-07-12 12:34:50', 3, NULL, NULL, NULL),
(7, 6, '2024-07-12', 1, 20.00, 2.00, '2024-07-12 12:36:36', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

CREATE TABLE `sales_return` (
  `id` int(11) NOT NULL,
  `ref` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `sales_return_date` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sub_amount` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_return`
--

INSERT INTO `sales_return` (`id`, `ref`, `customer_id`, `sales_return_date`, `qty`, `sub_amount`, `discount`, `vat`, `total_amount`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 0, 2, '2024-07-03', 55, 550.00, 5.00, 27.50, 572.00, '2024-07-03 07:51:25', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_details`
--

CREATE TABLE `sales_return_details` (
  `id` int(11) NOT NULL,
  `sales_return_id` int(11) DEFAULT NULL,
  `sales_return_date` date DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_return_details`
--

INSERT INTO `sales_return_details` (`id`, `sales_return_id`, `sales_return_date`, `medicine_id`, `qty`, `price`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 1, '2024-07-03', 2, 55.00, 10.00, '2024-07-03 07:51:25', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `purchase_return_id` int(11) DEFAULT NULL,
  `sales_return_id` int(11) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `purchase_id`, `sales_id`, `purchase_return_id`, `sales_return_id`, `medicine_id`, `qty`, `price`, `stock_date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 2, NULL, NULL, NULL, 1, 55.00, 2.00, '2024-06-23', '2024-06-23 05:29:14', 2, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL, 2, 55.00, 10.00, '2024-06-23', '2024-06-23 05:29:14', 2, NULL, NULL, NULL),
(3, 2, NULL, NULL, NULL, 3, 55.00, 55.00, '2024-06-23', '2024-06-23 05:29:14', 2, NULL, NULL, NULL),
(4, NULL, 1, NULL, NULL, 1, -50.00, 2.00, '0000-00-00', '2024-06-23 06:10:26', 2, NULL, NULL, NULL),
(5, NULL, 1, NULL, NULL, 2, -40.00, 10.00, '0000-00-00', '2024-06-23 06:10:26', 2, NULL, NULL, NULL),
(6, NULL, NULL, 2, NULL, 1, -5.00, 2.00, '2024-07-03', '2024-07-03 07:49:19', 1, NULL, NULL, NULL),
(7, NULL, NULL, NULL, 1, 2, 55.00, 10.00, '2024-07-03', '2024-07-03 07:51:25', 1, NULL, NULL, NULL),
(8, 3, NULL, NULL, NULL, 5, 2000.00, 12.00, '2024-07-06', '2024-07-06 19:26:39', 2, NULL, NULL, NULL),
(9, NULL, 2, NULL, NULL, 5, -720.00, 12.00, '0000-00-00', '2024-07-06 19:27:43', 2, NULL, NULL, NULL),
(10, 4, NULL, NULL, NULL, 5, 20.00, 12.00, '2024-07-07', '2024-07-07 07:52:07', 3, NULL, NULL, NULL),
(11, NULL, 3, NULL, NULL, 5, -20.00, 12.00, '0000-00-00', '2024-07-07 07:52:44', 3, NULL, NULL, NULL),
(12, 5, NULL, NULL, NULL, 8, 50.00, 125.00, '2024-07-10', '2024-07-10 03:17:38', 2, NULL, NULL, NULL),
(13, 6, NULL, NULL, NULL, 6, 50.00, 35.00, '2024-07-10', '2024-07-10 03:18:18', 2, NULL, NULL, NULL),
(14, 7, NULL, NULL, NULL, 26, 600.00, 650.00, '2024-07-10', '2024-07-10 03:26:47', 2, NULL, NULL, NULL),
(15, NULL, 4, NULL, NULL, 26, -500.00, 650.00, '0000-00-00', '2024-07-10 03:28:36', 2, NULL, NULL, NULL),
(16, NULL, NULL, 3, NULL, 26, -90.00, 650.00, '2024-07-10', '2024-07-10 03:33:44', 2, NULL, NULL, NULL),
(17, 8, NULL, NULL, NULL, 15, 10.00, 45.00, '2024-07-12', '2024-07-12 12:26:55', 3, NULL, NULL, NULL),
(18, 9, NULL, NULL, NULL, 28, 20.00, 142.00, '2024-07-12', '2024-07-12 12:27:59', 3, NULL, NULL, NULL),
(19, 10, NULL, NULL, NULL, 5, 1000.00, 12.00, '2024-07-12', '2024-07-12 12:29:27', 3, NULL, NULL, NULL),
(20, 11, NULL, NULL, NULL, 1, 1000.00, 2.00, '2024-07-12', '2024-07-12 12:33:52', 3, NULL, NULL, NULL),
(21, NULL, 5, NULL, NULL, 1, -50.00, 2.00, '0000-00-00', '2024-07-12 12:34:50', 3, NULL, NULL, NULL),
(22, NULL, 6, NULL, NULL, 1, -20.00, 2.00, '0000-00-00', '2024-07-12 12:36:36', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `due` decimal(10,2) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `contact`, `due`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'kamal Store', '015', 0.00, NULL, '2024-06-13 09:14:15', 1, NULL, 1, '2024-07-06 19:10:49'),
(2, 'Apollo Pharmaceutical Ltd.', '01711-697995', 0.00, NULL, '2024-07-06 19:11:28', 1, NULL, NULL, NULL),
(3, 'Bengal drugs Ltd.', '01743-217085', 0.00, NULL, '2024-07-06 19:12:00', 1, NULL, NULL, NULL),
(4, 'DBL Pharmaceuticals Ltd.', '01821-337232', 0.00, NULL, '2024-07-06 19:12:59', 1, NULL, NULL, NULL),
(5, 'Desh Pharmaceuticals Ltd.', '01715-015776', 0.00, NULL, '2024-07-06 19:13:29', 1, NULL, NULL, NULL),
(6, 'Beximco Pharmaceuticals Ltd.', '+880-2-58614601', 0.00, NULL, '2024-07-06 19:15:42', 1, NULL, NULL, NULL),
(7, 'Concord Pharmaceuticals Ltd.', '01991-146559', 0.00, NULL, '2024-07-06 19:16:18', 1, NULL, NULL, NULL),
(8, 'Drug International Ltd.', '02-9662611', 0.00, NULL, '2024-07-06 19:16:50', 1, NULL, NULL, NULL),
(9, 'GSK Bangladesh Limited', '02-9862741', 0.00, NULL, '2024-07-06 19:17:30', 1, NULL, NULL, NULL),
(10, 'Ibn Sina Pharmaceuticals Ltd.', '+8802-41022150', 0.00, NULL, '2024-07-06 19:18:43', 1, NULL, NULL, NULL),
(11, 'Labaid Pharma Ltd.', '01321-112665', 0.00, NULL, '2024-07-06 19:19:14', 1, NULL, NULL, NULL),
(12, 'Abdul Al Mamun', '01675437902', 0.00, NULL, '2024-07-07 07:50:23', 1, NULL, 1, '2024-07-07 07:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `type`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Tab', '2024-06-13 06:21:50', 1, '2024-06-13 06:30:39', 1, NULL),
(2, 'Cap', '2024-06-13 06:36:08', 1, NULL, NULL, NULL),
(3, 'Oral Suspension', '2024-06-13 07:06:56', 1, NULL, NULL, NULL),
(4, 'Syrup', '2024-07-06 18:46:56', 2, NULL, NULL, NULL),
(5, 'Ointment', '2024-07-06 18:54:04', 2, NULL, NULL, NULL),
(6, 'Injection', '2024-07-08 18:01:56', 2, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales_return`
--
ALTER TABLE `sales_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
