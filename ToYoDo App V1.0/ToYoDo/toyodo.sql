-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 19, 2021 at 12:39 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toyodo`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gst_number` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pincode` int(6) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `gst_number`, `address`, `city`, `email`, `phone`, `pincode`) VALUES
('C00101', 'Raya Chawla', '22AAAAA0000A1Z5', '64, Janpath', 'Delhi', 'raya.chawla@gmail.com', '7878777701', 110001),
('C00102', 'Shally Roy', '07FFFFF0000B2Z9', '2nd Floor, Cosmos Avenue', 'Mumbai', 'roy.shally@gmail.com', '9967026046', 400601),
('C00103', 'Aryan Singh', '07AAECR2970C1Z8', 'DB-18, Salt Lake', 'Kolkata', 'aryan.singh@gmail.com', '6012224783', 700064);

-- --------------------------------------------------------

--
-- Table structure for table `customer_login_credential`
--

DROP TABLE IF EXISTS `customer_login_credential`;
CREATE TABLE IF NOT EXISTS `customer_login_credential` (
  `customer_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_login_credential`
--

INSERT INTO `customer_login_credential` (`customer_id`, `name`, `password`) VALUES
('C00101', 'Raya Chawla', 'qwert'),
('C00102', 'Shally Roy', 'asdfg'),
('C00103', 'Aryan Singh', 'zxcvb');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `password`) VALUES
('E00201', 'Reema Shetty', 'mnbvc'),
('E00202', 'Mayank Roy', 'lkjhg');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(50) NOT NULL,
  `invoice_date` date NOT NULL,
  `order_details` varchar(50) NOT NULL,
  `customer_details` varchar(50) NOT NULL,
  `list_of_products_with_gst` varchar(50) NOT NULL,
  `type_of_gst` varchar(11) NOT NULL,
  `total_gst_amount` double NOT NULL,
  `total_invoice_value` double NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `last_login_datetime`
--

DROP TABLE IF EXISTS `last_login_datetime`;
CREATE TABLE IF NOT EXISTS `last_login_datetime` (
  `login_id` int(50) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `customer_shipping_address` varchar(50) NOT NULL,
  `list_of_products` varchar(50) NOT NULL,
  `total_order_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `shipping_agency` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `order_date`, `customer_id`, `customer_shipping_address`, `list_of_products`, `total_order_value`, `shipping_cost`, `shipping_agency`, `status`) VALUES
('OD1001', '2021-09-01', 'C00101', '64, Janpath, Delhi', 'XXX', 30000, 150, 'BlueDart', 'Pending'),
('OD1002', '2021-09-06', 'C00103', 'DB-18, Salt Lake, Kolkata', 'YYY', 12000, 100, 'BlueDart', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `category`) VALUES
('P00101', 'Sony MHC V82D', 54000, 'Level 3'),
('P00102', 'Apple 13\'\' MacBook', 92900, 'Level 3'),
('P00103', 'Baseball Tricot Track Suit', 2469, 'Level 2'),
('P00104', 'Popcorn Kernels', 129, 'Level 1'),
('P00105', 'Allen Solly Navy Suit', 6900, 'Level 2'),
('P00106', 'Denim Coat', 1820, 'Level 2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
