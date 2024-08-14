-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2024 at 09:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ms`
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
(2, NULL, 'jhraj963@gmail.com', NULL, NULL, 'jhraj963', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, '2024-06-13 21:26:52', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Football', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `cupon_code` varchar(100) NOT NULL,
  `discount` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `finish_date` date NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `cupon_code`, `discount`, `start_date`, `finish_date`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_at`) VALUES
(1, 'DD5XIF', 52, '2024-07-01', '2024-07-30', '1', '2024-07-03', '1', '2024-07-01', NULL),
(2, 'DD5XIF', 50, '2024-07-01', '2024-07-22', '1', '2024-07-01', '1', '0000-00-00', NULL),
(3, '', 0, '0000-00-00', '0000-00-00', '1', '2024-07-02', '1', '2024-07-02', '2024-07-02'),
(4, 'sdfsd', 74, '2024-07-10', '2024-07-24', '1', '2024-07-02', '1', '2024-07-02', '2024-07-02'),
(5, 'r59', 5, '2024-07-02', '2024-07-04', '1', '2024-07-02', '1', '2024-07-02', '0000-00-00'),
(6, 'r59', 10, '2024-07-05', '2024-07-09', '1', '2024-07-07', '', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `due` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `contact`, `status`, `due`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `country`, `first_name`, `last_name`, `photo`, `password`, `company_name`, `address`, `email`, `state`, `post`, `phone`) VALUES
(1, 'kamal', '016', '0', 500.00, '2024-06-09 09:43:27', 1, '2024-06-09 09:53:24', 1, '2024-06-10 06:35:38', '', '', '', '', '', '', '', '', '', '', 0),
(2, 'jamal', '057', '0', 500.00, '2024-06-09 09:45:39', 1, '2024-06-09 09:53:39', 1, NULL, '', '', '', '', '', '', '', '', '', '', 0),
(3, '', '', '', NULL, '2024-08-14 18:35:12', NULL, NULL, NULL, NULL, '2', 'Julfiqur', 'Haidar', '17236533123899.jpg', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Hifs', 'Chattogram', 'jhraj963@gmail.com', 'Hathazari', 'Fatahabad', 54737);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `catagory_id` int(11) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `product_name`, `details`, `photo`, `price`, `catagory_id`, `company_name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, '', '', NULL, 0.00, 0, '', '2024-07-02 17:31:55', 1, NULL, NULL, NULL),
(2, 'Football', 'fgfg', '17199343318545.jpg', 40.00, 1, 'DEER', '2024-07-02 17:32:11', 1, '2024-07-02 17:32:16', 1, '2024-07-02 17:32:19'),
(3, 'Football', 'sdfsd', '17199343871191.jpg', 40.00, 1, 'DEER', '2024-07-02 17:33:07', 1, NULL, 1, '2024-07-07 19:31:24'),
(4, 'sdfsd', 'sdfsd', '17199344151536.jpg', 2.00, 1, 'sdfsd', '2024-07-02 17:33:35', 1, '2024-07-07 19:31:28', 1, '2024-07-07 19:31:30'),
(5, 'Chair', 'Funrichar', '17204126173719.jpg', 100.00, 1, 'Bd Publice Service', '2024-07-08 06:23:37', 1, NULL, NULL, NULL),
(6, 'Table', 'Funrichar', '17204126368731.jpg', 100.00, 1, 'Bd Publice Service', '2024-07-08 06:23:56', 1, NULL, NULL, NULL),
(7, 'Cycle', '', NULL, 5000.00, 1, '', '2024-08-12 20:34:04', 1, NULL, NULL, NULL),
(8, 'Motor', 'gaga', '17234891996230.jpg', 5000.00, 1, '', '2024-08-12 20:59:59', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `generic_name` varchar(255) DEFAULT NULL,
  `dose` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type_id` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `brand_name`, `generic_name`, `dose`, `photo`, `type_id`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `price`) VALUES
(1, 'Napa Extend', 'Flucloxacillin Sodium', '25 mg', '17235746266189.jpg', 1, 1, '2024-07-15 22:29:21', 2, '2024-08-13 20:43:46', 1, NULL, '2'),
(2, 'Napa Extend', 'Flucloxacillin Sodium', '25 mg', '300-300(New).jpg', 1, 1, '2024-07-15 22:36:08', 2, NULL, NULL, NULL, '2'),
(3, 'Napa Extend', 'Flucloxacillin Sodium', '5 mg', '300-300.jpg', 1, 1, '2024-07-15 22:39:52', 2, NULL, NULL, NULL, '2000'),
(4, 'Abex', 'Flucloxacillin Sodium', '5 mg', '300-80.jpg', 1, 1, '2024-07-15 22:42:38', 2, NULL, NULL, NULL, '2000'),
(5, 'Ace', 'Flucloxacillin Sodium', '100 mg', '300-300(New).jpg', 1, 1, '2024-07-15 22:48:05', 2, NULL, NULL, NULL, '5000'),
(6, 'Ace', 'Paracetamol', '200 mg', '300-300(New).jpg', 1, 1, '2024-07-15 22:55:22', 2, NULL, NULL, NULL, '8000'),
(7, 'Ace', 'Flucloxacillin Sodium', '200 mg', '120-150.jpg', 1, 1, '2024-07-15 22:57:55', 2, NULL, NULL, NULL, '2000'),
(8, '', '', '', '120-150.jpg', 1, 1, '2024-07-15 23:02:40', 2, NULL, NULL, NULL, ''),
(9, 'Actizen', 'Flucloxacillin Sodium', '5 mg', '120-150.jpg', 1, 1, '2024-07-15 23:07:00', 2, NULL, NULL, NULL, '8000'),
(10, 'Napa Extend', 'Flucloxacillin Sodium', '500 mg', '', 1, 1, '2024-07-18 20:50:39', 2, NULL, NULL, NULL, '2000');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_country` varchar(50) NOT NULL,
  `ship_country` varchar(50) NOT NULL,
  `bill_first_name` varchar(50) NOT NULL,
  `ship_first_name` varchar(50) NOT NULL,
  `bill_last_name` varchar(50) NOT NULL,
  `ship_last_name` varchar(50) NOT NULL,
  `bill_company_name` varchar(100) NOT NULL,
  `ship_company_name` varchar(100) NOT NULL,
  `bill_address` varchar(100) NOT NULL,
  `ship_address` varchar(100) NOT NULL,
  `bill_state` varchar(50) NOT NULL,
  `ship_state` varchar(50) NOT NULL,
  `bill_post` varchar(50) NOT NULL,
  `ship_post` varchar(50) NOT NULL,
  `bill_email` varchar(50) NOT NULL,
  `ship_email` varchar(50) NOT NULL,
  `bill_phone` int(15) NOT NULL,
  `ship_phone` int(15) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `cart_data` text NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `notes` varchar(500) NOT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_country`, `ship_country`, `bill_first_name`, `ship_first_name`, `bill_last_name`, `ship_last_name`, `bill_company_name`, `ship_company_name`, `bill_address`, `ship_address`, `bill_state`, `ship_state`, `bill_post`, `ship_post`, `bill_email`, `ship_email`, `bill_phone`, `ship_phone`, `total_amount`, `discount`, `total_qty`, `cart_data`, `coupon_code`, `notes`, `created_at`, `created_by`, `updated_by`, `updated_at`, `deleted_at`) VALUES
(1, '2', '1', 'Ibrahim', '', 'khalil', '', 'WDPF-IT', '', '2no Gate', '', 'asdf', '', '4100', '', 'asdf@yahoo.com', '', 156669998, 0, 40.00, 20.00, 1, 'eyJpdGVtIjp7IjMiOnsicHJvZHVjdF9uYW1lIjoiRm9vdGJhbGwiLCJwaG90byI6IjE3MTk5MzQzODcxMTkxLmpwZyIsInByaWNlIjoiNDAuMDAiLCJxdHkiOjF9fSwidG90YWwiOjQwLCJkaXNjb3VudCI6MjAsImN1cG9uIjoiREQ1WElGIiwidG90YWxfcXR5IjoxfQ==', 'DD5XIF', 'sadf', '2024-07-07', 1, 1, NULL, '2024-07-07'),
(2, '0', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0.00, 0.00, 0, 'bnVsbA==', '', '', '2024-07-07', 1, 1, NULL, '2024-07-07'),
(3, '0', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0.00, 0.00, 0, 'bnVsbA==', '', '', '2024-07-07', 1, 1, NULL, '2024-07-07'),
(4, '2', '1', 'Md', '', 'Ramzan', '', 'Bd Public Service', '', 'Khagrachari', '', 'Patachara', '', '4440', '', 'mdakash906431@gmail.com', '', 1559075906, 0, 82.00, 8.20, 3, 'eyJpdGVtIjp7IjMiOnsicHJvZHVjdF9uYW1lIjoiRm9vdGJhbGwiLCJwaG90byI6IjE3MTk5MzQzODcxMTkxLmpwZyIsInByaWNlIjoiNDAuMDAiLCJxdHkiOjJ9LCI0Ijp7InByb2R1Y3RfbmFtZSI6InNkZnNkIiwicGhvdG8iOiIxNzE5OTM0NDE1MTUzNi5qcGciLCJwcmljZSI6IjIuMDAiLCJxdHkiOjF9fSwidG90YWwiOjgyLCJkaXNjb3VudCI6OC4yMDAwMDAwMDAwMDAwMDEsImN1cG9uIjoicjU5IiwidG90YWxfcXR5IjozfQ==', 'r59', '', '2024-07-07', 1, 1, NULL, '2024-07-08'),
(5, '2', '1', 'df', '', 'dfdd', '', 'fdd', '', 'dfd', '', 'dfd', '', 'df', '', 'df', '', 15, 0, 300.00, 30.00, 3, 'eyJpdGVtIjp7IjUiOnsicHJvZHVjdF9uYW1lIjoiQ2hhaXIiLCJwaG90byI6IjE3MjA0MTI2MTczNzE5LmpwZyIsInByaWNlIjoiMTAwLjAwIiwicXR5IjoyfSwiNiI6eyJwcm9kdWN0X25hbWUiOiJUYWJsZSIsInBob3RvIjoiMTcyMDQxMjYzNjg3MzEuanBnIiwicHJpY2UiOiIxMDAuMDAiLCJxdHkiOjF9fSwidG90YWwiOjMwMCwiZGlzY291bnQiOjMwLCJjdXBvbiI6InI1OSIsInRvdGFsX3F0eSI6M30=', 'r59', '', '2024-07-08', 1, 1, NULL, '2024-07-08'),
(6, '2', '1', 'df', '', 'dfdd', '', 'fdd', '', 'dfd', '', 'dfd', '', 'df', '', 'df', '', 15, 0, 400.00, 40.00, 4, 'eyJpdGVtIjp7IjUiOnsicHJvZHVjdF9uYW1lIjoiQ2hhaXIiLCJwaG90byI6IjE3MjA0MTI2MTczNzE5LmpwZyIsInByaWNlIjoiMTAwLjAwIiwicXR5IjoyfSwiNiI6eyJwcm9kdWN0X25hbWUiOiJUYWJsZSIsInBob3RvIjoiMTcyMDQxMjYzNjg3MzEuanBnIiwicHJpY2UiOiIxMDAuMDAiLCJxdHkiOjJ9fSwidG90YWwiOjQwMCwiZGlzY291bnQiOjQwLCJjdXBvbiI6InI1OSIsInRvdGFsX3F0eSI6NH0=', 'r59', 'sss', '2024-07-08', 1, 1, NULL, '2024-07-08'),
(7, '2', '2', 'df', ' vbbvnhqq', 'dfdd', '', 'fdd', 'f', 'dfd', '', 'dfd', 'n', 'df', 'n', 'df', 'nbnh', 15, 0, 300.00, 0.00, 3, 'eyJpdGVtIjp7IjYiOnsicHJvZHVjdF9uYW1lIjoiVGFibGUiLCJwaG90byI6IjE3MjA0MTI2MzY4NzMxLmpwZyIsInByaWNlIjoiMTAwLjAwIiwicXR5IjozfX0sInRvdGFsIjozMDAsImRpc2NvdW50IjowLCJjdXBvbiI6IiIsInRvdGFsX3F0eSI6M30=', '', 'n', '2024-07-09', 1, NULL, NULL, NULL),
(8, '0', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 400.00, 0.00, 4, 'eyJpdGVtIjp7IjUiOnsicHJvZHVjdF9uYW1lIjoiQ2hhaXIiLCJwaG90byI6IjE3MjA0MTI2MTczNzE5LmpwZyIsInByaWNlIjoiMTAwLjAwIiwicXR5IjoyfSwiNiI6eyJwcm9kdWN0X25hbWUiOiJUYWJsZSIsInBob3RvIjoiMTcyMDQxMjYzNjg3MzEuanBnIiwicHJpY2UiOiIxMDAuMDAiLCJxdHkiOjJ9fSwidG90YWwiOjQwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5Ijo0fQ==', '', '', '2024-07-09', 1, NULL, NULL, NULL),
(9, '0', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 400.00, 0.00, 4, 'eyJpdGVtIjp7IjUiOnsicHJvZHVjdF9uYW1lIjoiQ2hhaXIiLCJwaG90byI6IjE3MjA0MTI2MTczNzE5LmpwZyIsInByaWNlIjoiMTAwLjAwIiwicXR5IjoyfSwiNiI6eyJwcm9kdWN0X25hbWUiOiJUYWJsZSIsInBob3RvIjoiMTcyMDQxMjYzNjg3MzEuanBnIiwicHJpY2UiOiIxMDAuMDAiLCJxdHkiOjJ9fSwidG90YWwiOjQwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5Ijo0fQ==', '', '', '2024-07-09', 1, NULL, NULL, NULL),
(10, '3', '1', 'df', '', 'fff', '', 'ff', '', 'ff', '', 'ff', '', 'ff', '', 'ff', '', 0, 0, 300.00, 0.00, 3, 'eyJpdGVtIjp7IjUiOnsicHJvZHVjdF9uYW1lIjoiQ2hhaXIiLCJwaG90byI6IjE3MjA0MTI2MTczNzE5LmpwZyIsInByaWNlIjoiMTAwLjAwIiwicXR5IjozfX0sInRvdGFsIjozMDAsImRpc2NvdW50IjowLCJjdXBvbiI6IiIsInRvdGFsX3F0eSI6M30=', '', 'ff', '2024-07-09', 1, NULL, NULL, NULL),
(11, '2', '1', 'df', '', 'fd', '', 'fd', '', 'fd', '', 'dfd', '', 'dfd', '', 'dfdf', '', 0, 0, 500.00, 0.00, 5, 'eyJpdGVtIjp7IjUiOnsicHJvZHVjdF9uYW1lIjoiQ2hhaXIiLCJwaG90byI6IjE3MjA0MTI2MTczNzE5LmpwZyIsInByaWNlIjoiMTAwLjAwIiwicXR5Ijo1fX0sInRvdGFsIjo1MDAsImRpc2NvdW50IjowLCJjdXBvbiI6IiIsInRvdGFsX3F0eSI6NX0=', '', '', '2024-07-09', 1, NULL, NULL, NULL),
(12, '2', '1', 'aa', '', 'aa', '', 'aa', '', 'aa', '', 'aa', '', 'aa', '', 'aa', '', 0, 0, 400.00, 0.00, 4, 'eyJpdGVtIjp7IjUiOnsicHJvZHVjdF9uYW1lIjoiQ2hhaXIiLCJwaG90byI6IjE3MjA0MTI2MTczNzE5LmpwZyIsInByaWNlIjoiMTAwLjAwIiwicXR5Ijo0fX0sInRvdGFsIjo0MDAsImRpc2NvdW50IjowLCJjdXBvbiI6IiIsInRvdGFsX3F0eSI6NH0=', '', '', '2024-07-09', 1, NULL, NULL, NULL);

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
(1, 1, '2024-06-13', 10000, 20000.00, 5000.00, 1000.00, 16000.00, '2024-06-13 21:21:16', 1, NULL, NULL, NULL),
(2, 1, '2024-06-19', 10000654, 20001308.00, 5000000.00, 2000130.80, 17001438.00, '2024-06-19 19:00:30', 2, NULL, NULL, NULL),
(3, 1, '2024-06-22', 10000, 20000.00, 5.00, 1000.00, 20995.00, '2024-06-22 15:58:55', 2, NULL, NULL, NULL);

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
(1, 1, '2024-06-13', 1, 10000.00, 2.00, '2024-06-13 21:21:16', 1, NULL, NULL, NULL),
(2, 2, '2024-06-19', 1, 10000654.00, 2.00, '2024-06-19 19:00:30', 2, NULL, NULL, NULL),
(3, 3, '2024-06-22', 1, 10000.00, 2.00, '2024-06-22 15:58:55', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `bill_country` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_country` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bill_first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bill_last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bill_company_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_company_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bill_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bill_state` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_state` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bill_post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bill_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bill_phone` int(15) NOT NULL,
  `ship_phone` int(15) NOT NULL,
  `cart_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
  `deleted_at` datetime DEFAULT NULL,
  `total_qty` int(11) NOT NULL,
  `coupon_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notes` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payment_method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_id` int(100) NOT NULL,
  `currency` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `bill_country`, `ship_country`, `bill_first_name`, `ship_first_name`, `bill_last_name`, `ship_last_name`, `bill_company_name`, `ship_company_name`, `bill_address`, `ship_address`, `bill_state`, `ship_state`, `bill_post`, `ship_post`, `bill_email`, `ship_email`, `bill_phone`, `ship_phone`, `cart_data`, `customer_id`, `sales_date`, `qty`, `sub_amount`, `discount`, `vat`, `total_amount`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `total_qty`, `coupon_code`, `notes`, `payment_method`, `transaction_id`, `item_id`, `currency`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', 2, '2024-06-22', 10000, 20000.00, 5000.00, 1000.00, 16000.00, '2024-06-22 15:59:27', 2, NULL, NULL, NULL, 0, '', '', '', '', 0, ''),
(2, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjEiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIxNzIzNTc0NjI2NjE4OS5qcGciLCJwcmljZSI6IjIiLCJxdHkiOjF9LCIzIjp7ImJyYW5kX25hbWUiOiJOYXBhIEV4dGVuZCIsInBob3RvIjoiMzAwLTMwMC5qcGciLCJwcmljZSI6IjIwMDAiLCJxdHkiOjF9fSwidG90YWwiOjIwMDIsImRpc2NvdW50IjowLCJjdXBvbiI6IiIsInRvdGFsX3F0eSI6Mn0=', NULL, NULL, NULL, NULL, 0.00, NULL, 2002.00, '2024-08-14 19:47:09', 1, NULL, NULL, NULL, 2, '', '', 'Online Payment', 'SSLCZ_TEST_66bced9d2a2d5', 0, ''),
(3, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjEiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIxNzIzNTc0NjI2NjE4OS5qcGciLCJwcmljZSI6IjIiLCJxdHkiOjF9LCIzIjp7ImJyYW5kX25hbWUiOiJOYXBhIEV4dGVuZCIsInBob3RvIjoiMzAwLTMwMC5qcGciLCJwcmljZSI6IjIwMDAiLCJxdHkiOjF9fSwidG90YWwiOjIwMDIsImRpc2NvdW50IjowLCJjdXBvbiI6IiIsInRvdGFsX3F0eSI6Mn0=', NULL, NULL, NULL, NULL, 0.00, NULL, 2002.00, '2024-08-14 19:48:43', 1, NULL, NULL, NULL, 2, '', '', 'Online Payment', 'SSLCZ_TEST_66bcedfbb946e', 0, ''),
(4, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjEiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIxNzIzNTc0NjI2NjE4OS5qcGciLCJwcmljZSI6IjIiLCJxdHkiOjF9LCIzIjp7ImJyYW5kX25hbWUiOiJOYXBhIEV4dGVuZCIsInBob3RvIjoiMzAwLTMwMC5qcGciLCJwcmljZSI6IjIwMDAiLCJxdHkiOjF9fSwidG90YWwiOjIwMDIsImRpc2NvdW50IjowLCJjdXBvbiI6IiIsInRvdGFsX3F0eSI6Mn0=', NULL, NULL, NULL, NULL, 0.00, NULL, 2002.00, '2024-08-14 19:48:52', 1, NULL, NULL, NULL, 2, '', '', 'Online Payment', 'SSLCZ_TEST_66bcee042cdc7', 0, ''),
(5, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjEiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIxNzIzNTc0NjI2NjE4OS5qcGciLCJwcmljZSI6IjIiLCJxdHkiOjF9LCIzIjp7ImJyYW5kX25hbWUiOiJOYXBhIEV4dGVuZCIsInBob3RvIjoiMzAwLTMwMC5qcGciLCJwcmljZSI6IjIwMDAiLCJxdHkiOjF9fSwidG90YWwiOjIwMDIsImRpc2NvdW50IjowLCJjdXBvbiI6IiIsInRvdGFsX3F0eSI6Mn0=', NULL, NULL, NULL, NULL, 0.00, NULL, 2002.00, '2024-08-14 19:48:55', 1, NULL, NULL, NULL, 2, '', '', 'Online Payment', 'SSLCZ_TEST_66bcee072f0ba', 0, ''),
(6, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjEiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIxNzIzNTc0NjI2NjE4OS5qcGciLCJwcmljZSI6IjIiLCJxdHkiOjF9LCIzIjp7ImJyYW5kX25hbWUiOiJOYXBhIEV4dGVuZCIsInBob3RvIjoiMzAwLTMwMC5qcGciLCJwcmljZSI6IjIwMDAiLCJxdHkiOjF9fSwidG90YWwiOjIwMDIsImRpc2NvdW50IjowLCJjdXBvbiI6IiIsInRvdGFsX3F0eSI6Mn0=', NULL, NULL, NULL, NULL, 0.00, NULL, 2002.00, '2024-08-14 19:49:33', 1, NULL, NULL, NULL, 2, '', '', 'Online Payment', 'SSLCZ_TEST_66bcee2d755fa', 0, ''),
(7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'bnVsbA==', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, '2024-08-14 19:52:37', 1, NULL, NULL, NULL, 0, '', '', '', 'SSLCZ_TEST_66bceee566850', 0, ''),
(8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'bnVsbA==', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, '2024-08-14 19:52:38', 1, NULL, NULL, NULL, 0, '', '', '', 'SSLCZ_TEST_66bceee68e4ff', 0, ''),
(9, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjEiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIxNzIzNTc0NjI2NjE4OS5qcGciLCJwcmljZSI6IjIiLCJxdHkiOjEwfX0sInRvdGFsIjoyMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5IjoxMH0=', NULL, NULL, NULL, NULL, 0.00, NULL, 20.00, '2024-08-14 19:53:08', 1, NULL, NULL, NULL, 10, '', '', 'Online Payment', 'SSLCZ_TEST_66bcef0454a4f', 0, ''),
(10, '0', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'eyJpdGVtIjp7IjMiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIzMDAtMzAwLmpwZyIsInByaWNlIjoiMjAwMCIsInF0eSI6MX19LCJ0b3RhbCI6MjAwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5IjoxfQ==', NULL, NULL, NULL, NULL, 0.00, NULL, 2000.00, '2024-08-14 20:27:41', 1, NULL, NULL, NULL, 1, '', '', 'Online Payment', 'SSLCZ_TEST_66bcf71d79ca3', 0, ''),
(11, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjMiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIzMDAtMzAwLmpwZyIsInByaWNlIjoiMjAwMCIsInF0eSI6MX19LCJ0b3RhbCI6MjAwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5IjoxfQ==', NULL, NULL, NULL, NULL, 0.00, NULL, 2000.00, '2024-08-14 20:28:43', 1, NULL, NULL, NULL, 1, '', '', 'Online Payment', 'SSLCZ_TEST_66bcf75b67f02', 0, ''),
(12, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjMiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIzMDAtMzAwLmpwZyIsInByaWNlIjoiMjAwMCIsInF0eSI6MX19LCJ0b3RhbCI6MjAwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5IjoxfQ==', NULL, NULL, NULL, NULL, 0.00, NULL, 2000.00, '2024-08-14 20:32:02', 1, NULL, NULL, NULL, 1, '', '', 'Online Payment', 'SSLCZ_TEST_66bcf822cd38b', 0, ''),
(13, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjMiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIzMDAtMzAwLmpwZyIsInByaWNlIjoiMjAwMCIsInF0eSI6MX19LCJ0b3RhbCI6MjAwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5IjoxfQ==', NULL, NULL, NULL, NULL, 0.00, NULL, 2000.00, '2024-08-14 20:36:03', 1, NULL, NULL, NULL, 1, '', '', 'Online Payment', 'SSLCZ_TEST_66bcf913dde81', 0, ''),
(14, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjMiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIzMDAtMzAwLmpwZyIsInByaWNlIjoiMjAwMCIsInF0eSI6MX19LCJ0b3RhbCI6MjAwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5IjoxfQ==', NULL, NULL, NULL, NULL, 0.00, NULL, 2000.00, '2024-08-14 20:39:00', 1, NULL, NULL, NULL, 1, '', '', 'Online Payment', 'SSLCZ_TEST_66bcf9c431130', 0, ''),
(15, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjMiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIzMDAtMzAwLmpwZyIsInByaWNlIjoiMjAwMCIsInF0eSI6MX19LCJ0b3RhbCI6MjAwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5IjoxfQ==', NULL, NULL, NULL, NULL, 0.00, NULL, 2000.00, '2024-08-14 21:26:49', 1, NULL, NULL, NULL, 1, '', '', 'Online Payment', 'SSLCZ_TEST_66bd04f9b0f37', 0, ''),
(16, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjMiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIzMDAtMzAwLmpwZyIsInByaWNlIjoiMjAwMCIsInF0eSI6MX19LCJ0b3RhbCI6MjAwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5IjoxfQ==', NULL, NULL, NULL, NULL, 0.00, NULL, 2000.00, '2024-08-14 21:34:09', 1, NULL, NULL, NULL, 1, '', '', 'Online Payment', 'SSLCZ_TEST_66bd06b1e3279', 0, ''),
(17, '2', '2', 'Julfiqur', 'Julfiqur', 'Haidar', 'Haidar', 'Hifs', 'Hifs', 'Chattogram', 'Chattogram', 'Hathazari', 'Hathazari', 'Fatahabad', 'Fatahabad', 'jhraj963@gmail.com', 'jhraj963@gmail.com', 54737, 54737, 'eyJpdGVtIjp7IjMiOnsiYnJhbmRfbmFtZSI6Ik5hcGEgRXh0ZW5kIiwicGhvdG8iOiIzMDAtMzAwLmpwZyIsInByaWNlIjoiMjAwMCIsInF0eSI6MX19LCJ0b3RhbCI6MjAwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5IjoxfQ==', NULL, NULL, NULL, NULL, 0.00, NULL, 2000.00, '2024-08-14 21:51:20', 1, NULL, NULL, NULL, 1, '', '', 'Online Payment', 'SSLCZ_TEST_66bd0ab836bf4', 0, '');

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
(1, 1, '2024-06-22', 1, 10000.00, 2.00, '2024-06-22 15:59:27', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sales_id` int(11) DEFAULT NULL,
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

INSERT INTO `stock` (`id`, `purchase_id`, `sales_id`, `medicine_id`, `qty`, `price`, `stock_date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, NULL, 12, 3, -1.00, 2000.00, '2024-08-14', '2024-08-14 20:32:02', 1, NULL, NULL, NULL),
(2, NULL, 13, 3, -1.00, 2000.00, '2024-08-14', '2024-08-14 20:36:03', 1, NULL, NULL, NULL),
(3, NULL, 14, 3, -1.00, 2000.00, '2024-08-14', '2024-08-14 20:39:00', 1, NULL, NULL, NULL),
(4, NULL, 15, 3, -1.00, 2000.00, '2024-08-14', '2024-08-14 21:26:49', 1, NULL, NULL, NULL),
(5, NULL, 16, 3, -1.00, 2000.00, '2024-08-14', '2024-08-14 21:34:09', 1, NULL, NULL, NULL),
(6, NULL, 17, 3, -1.00, 2000.00, '2024-08-14', '2024-08-14 21:51:20', 1, NULL, NULL, NULL);

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
(1, 'Bismillah Enterperise', '017716897579', 0.00, NULL, '2024-06-13 21:20:25', 1, NULL, NULL, NULL);

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
(1, 'Tablet', '2024-06-13 06:21:50', 1, '2024-06-13 21:12:53', 1, NULL),
(2, 'Capsule', '2024-06-13 21:12:43', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
