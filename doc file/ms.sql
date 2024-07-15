-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2024 at 08:12 AM
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
(2, NULL, 'dfff@gmail.com', NULL, NULL, 'fahim', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, '2024-07-10 09:41:43', NULL, NULL, NULL, NULL);

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
(2, 'jamal', '057', NULL, 500.00, '2024-06-09 09:45:39', 1, '2024-06-09 09:53:39', 1, NULL);

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
(2, 'Rabnil MUPS ', 'Rabeprazole Sodium', '20 mg', 10.00, 1, 1, '2024-06-13 07:05:31', 1, '2024-06-13 07:12:35', 1, NULL),
(3, 'Sugel', 'Aluminium Hydroxide + Magnesium Hydroxide', '(175 mg+225 mg)/5 ml', 55.00, 3, 1, '2024-06-13 07:07:20', 1, '2024-06-13 07:12:56', 1, NULL);

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
  `payment_method` varchar(255) DEFAULT NULL,
  `shiping_charge` decimal(10,2) NOT NULL DEFAULT 0.00,
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

INSERT INTO `orders` (`id`, `bill_country`, `ship_country`, `bill_first_name`, `ship_first_name`, `bill_last_name`, `ship_last_name`, `bill_company_name`, `ship_company_name`, `bill_address`, `ship_address`, `bill_state`, `ship_state`, `bill_post`, `ship_post`, `bill_email`, `ship_email`, `bill_phone`, `ship_phone`, `total_amount`, `discount`, `total_qty`, `cart_data`, `coupon_code`, `payment_method`, `shiping_charge`, `notes`, `created_at`, `created_by`, `updated_by`, `updated_at`, `deleted_at`) VALUES
(21, '2', '1', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'eee@gmail', '', 0, 0, 200.00, 0.00, 2, 'eyJpdGVtIjp7IjgiOnsicHJvZHVjdF9uYW1lIjoiVGFibGUiLCJwaG90byI6IjE3MjA1OTEyNzgyNjczLmpwZyIsInByaWNlIjoiMTAwLjAwIiwicXR5IjoxfSwiNyI6eyJwcm9kdWN0X25hbWUiOiJDaGFpciIsInBob3RvIjoiMTcyMDU5MTIzNTUzMzUuanBnIiwicHJpY2UiOiIxMDAuMDAiLCJxdHkiOjF9fSwidG90YWwiOjIwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5IjoyfQ==', '', NULL, 0.00, '', '2024-07-10', 1, NULL, NULL, NULL),
(22, '2', '2', 'Md', 'Md', 'kamal', 'kamal', 'Fuji Film', 'Fuji Film', 'Chittahong', 'Chittahong', 'Khagrachari', 'Khagrachari', 'Ramgarh', 'Ramgarh', 'kamal@gmail.com', 'kamal@gmail.com', 0, 0, 300.00, 30.00, 3, 'eyJpdGVtIjp7IjciOnsicHJvZHVjdF9uYW1lIjoiQ2hhaXIiLCJwaG90byI6IjE3MjA1OTEyMzU1MzM1LmpwZyIsInByaWNlIjoiMTAwLjAwIiwicXR5IjoyfSwiOCI6eyJwcm9kdWN0X25hbWUiOiJUYWJsZSIsInBob3RvIjoiMTcyMDU5MTI3ODI2NzMuanBnIiwicHJpY2UiOiIxMDAuMDAiLCJxdHkiOjF9fSwidG90YWwiOjMwMCwiZGlzY291bnQiOjMwLCJjdXBvbiI6InI1OSIsInRvdGFsX3F0eSI6M30=', 'r59', 'Online Payment', 0.00, '', '2024-07-11', 1, NULL, NULL, NULL),
(23, '2', '2', 'Md', 'Md', 'kamal', 'kamal', 'Fuji Film', 'Fuji Film', 'Khagrachari', 'Khagrachari', 'Ramgarh', 'Ramgarh', 'Ramgarh', 'Ramgarh', 'kamal@gmil.com', 'kamal@gmil.com', 1559075906, 1559075906, 400.00, 0.00, 4, 'eyJpdGVtIjp7IjciOnsicHJvZHVjdF9uYW1lIjoiQ2hhaXIiLCJwaG90byI6IjE3MjA1OTEyMzU1MzM1LmpwZyIsInByaWNlIjoiMTAwLjAwIiwicXR5IjoyfSwiOCI6eyJwcm9kdWN0X25hbWUiOiJUYWJsZSIsInBob3RvIjoiMTcyMDU5MTI3ODI2NzMuanBnIiwicHJpY2UiOiIxMDAuMDAiLCJxdHkiOjJ9fSwidG90YWwiOjQwMCwiZGlzY291bnQiOjAsImN1cG9uIjoiIiwidG90YWxfcXR5Ijo0fQ==', '', 'Online Payment', 0.00, '', '2024-07-11', 1, NULL, NULL, NULL);

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
(2, 1, '2024-06-23', 165, 3685.00, 0.00, 0.00, 3685.00, '2024-06-23 05:29:13', 2, NULL, NULL, NULL);

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
(5, 2, '2024-06-23', 3, 55.00, 55.00, '2024-06-23 05:29:14', 2, NULL, NULL, NULL);

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
(2, 0, 1, '2024-07-03', 5, 10.00, 0.00, 0.00, 10.00, '2024-07-03 07:49:19', 1, NULL, NULL, NULL);

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
(1, 2, '2024-07-03', 1, 5.00, 2.00, '2024-07-03 07:49:19', 1, NULL, NULL, NULL);

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
(1, 2, '2024-06-23', 90, 500.00, 0.00, 0.00, 500.00, '2024-06-23 06:10:26', 2, NULL, NULL, NULL);

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
(2, 1, '2024-06-23', 2, 40.00, 10.00, '2024-06-23 06:10:26', 2, NULL, NULL, NULL);

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
(7, NULL, NULL, NULL, 1, 2, 55.00, 10.00, '2024-07-03', '2024-07-03 07:51:25', 1, NULL, NULL, NULL);

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
(1, 'kamal Store', '015', 0.00, NULL, '2024-06-13 09:14:15', 1, NULL, NULL, NULL);

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
(3, 'Oral Suspension', '2024-06-13 07:06:56', 1, NULL, NULL, NULL);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ship_email` (`ship_email`),
  ADD UNIQUE KEY `bill_email` (`bill_email`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
