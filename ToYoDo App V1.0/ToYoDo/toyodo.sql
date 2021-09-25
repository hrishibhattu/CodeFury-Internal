-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 25, 2021 at 10:13 AM
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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `company_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `gst_number` varchar(15) NOT NULL,
  PRIMARY KEY (`company_name`,`gst_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_name`, `address`, `city`, `gst_number`) VALUES
('Blue Dart Express', 'Opp Passport Office, Mahmoorganj', 'Varanasi', '27AAACB0446L2ZR'),
('Amazon Seller Services Pvt. Ltd.', 'Sri Kanteshwara Nagar, Mahalakshmi Layout', 'Bengaluru', '29AAICA3918J1ZE');

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
  `invoice_id` int(50) NOT NULL AUTO_INCREMENT,
  `invoice_date` date NOT NULL,
  `order_datetime` datetime NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `list_of_products` varchar(50) NOT NULL,
  `gst` double NOT NULL,
  `type_of_gst` varchar(11) NOT NULL,
  `total_gst_amount` double NOT NULL,
  `total_invoice_value` double NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11022025 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_date`, `order_datetime`, `customer_id`, `customer_name`, `list_of_products`, `gst`, `type_of_gst`, `total_gst_amount`, `total_invoice_value`, `status`) VALUES
(11022001, '2021-09-23', '2021-09-23 01:00:00', '', 'Test User', '', 32, 'inter-state', 2424, 43443, 'Pending'),
(11022002, '2021-09-24', '2021-09-23 12:14:08', 'Test USER 2', '', 'P00101 . P00104 . ', 12.9, 'inter-state', 5412.9, 5641.9, 'Pending'),
(11022024, '2021-09-26', '2021-09-25 12:01:46', '', 'xcvxc', 'P00103  P00104  ', 1.29, 'inter-state', 25.98, 191.38, 'Pending'),
(11022023, '2021-09-25', '2021-09-24 22:39:18', '', 'Test User', 'P00102  P00103  P00104  ', 1.29, 'inter-state', 954.98, 1120.38, 'Pending'),
(11022022, '2021-09-25', '2021-09-24 22:38:25', '', 'Test User', 'P00103  P00104  ', 1.29, 'inter-state', 25.98, 191.38, 'Pending'),
(11022021, '2021-09-22', '2021-09-21 20:18:19', '', 'Testing', 'P00103 . P00104 . P00106 . ', 18.2, 'inter-state', 44.18, 1900.5800000000002, 'Approved'),
(11022020, '2021-09-24', '2021-09-22 23:06:40', '', 'x', 'P00103 . P00104 . ', 1.29, 'inter-state', 25.98, 191.38, 'Approved'),
(11022018, '2021-09-24', '2021-09-23 22:53:40', '', 'ASDFG', 'P00103 . P00104 . ', 1.29, 'inter-state', 25.98, 191.38, 'Pending'),
(11022019, '2021-09-24', '2021-09-23 22:53:43', '', 'ASDFG', 'P00103 . P00104 . ', 1.29, 'inter-state', 25.98, 191.38, 'Pending');

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
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `order_datetime` datetime NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_shipping_address` varchar(50) NOT NULL,
  `list_of_products` varchar(100) NOT NULL,
  `total_order_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `shipping_agency` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35800009 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `order_date`, `order_datetime`, `customer_id`, `customer_name`, `customer_shipping_address`, `list_of_products`, `total_order_value`, `shipping_cost`, `shipping_agency`, `status`) VALUES
(35800001, '2021-09-22', '2021-09-22 00:00:11', 'C00101', NULL, 'J10/11 Janpat', 'P00101', 52000, 150, '', 'Pending'),
(35800002, '2021-09-22', '2021-09-23 03:18:00', 'C00102', NULL, '5th Floor, GenX', 'P00101 . P00102', 542000, 150, '', 'Approved'),
(35800003, '2021-09-24', '2021-09-23 22:53:43', '', 'ASDFG', 'CK 65/262', 'P00103 . P00104 . ', 2892.4, 36.4, 'Blue Dart', 'Pending'),
(35800004, '2021-09-23', '2021-09-22 23:06:40', '', 'x', 'xcvb', 'P00103 . P00104 . ', 7572.4, 36.4, 'fvtg', 'Approved'),
(35800005, '2021-09-21', '2021-09-21 20:18:19', '', 'Testing', 'XX Shipping Address', 'P00103 . P00104 . P00106 . ', 6923.4, 36.4, 'Amazon', 'Approved'),
(35800006, '2021-09-24', '2021-09-24 22:38:25', '', 'Test User', '10/20 ZXCVB', 'P00103  P00104  ', 2763.4, 36.4, 'AMazon', 'Pending'),
(35800007, '2021-09-24', '2021-09-24 22:39:18', '', 'Test User', 'ASASAS', 'P00102  P00103  P00104  ', 98003.4, 36.4, 'Amazon', 'Pending'),
(35800008, '2021-09-24', '2021-09-25 12:01:46', '', 'xcvxc', 'bsdbs', 'P00103  P00104  ', 2763.4, 36.4, 'asdf', 'Pending');

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

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

DROP TABLE IF EXISTS `quote`;
CREATE TABLE IF NOT EXISTS `quote` (
  `serial_no` int(10) NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_gst_no` varchar(15) NOT NULL,
  `customer_shipping_address` varchar(50) NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_phone_number` varchar(10) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_pincode` int(6) NOT NULL,
  `shipping_cost` double NOT NULL,
  `total_order_value` double NOT NULL,
  `status` varchar(8) NOT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`serial_no`, `order_date`, `customer_id`, `customer_name`, `customer_gst_no`, `customer_shipping_address`, `customer_city`, `customer_phone_number`, `customer_email`, `customer_pincode`, `shipping_cost`, `total_order_value`, `status`) VALUES
(101, '2021-09-21', 'ertwert', 'wertwert', 'wwww333333rrrr4', '', '', '', '', 555555, 545, 4545, 'Pending'),
(102, '2021-09-21', '', 'dfga', 'asdfa33322', 'asdfasdfa', 'asd', '8787878787', 'dfasf@gmail.com', 888888, 6786778, 75857587, 'Pending'),
(103, '2021-09-21', 'C00104', '', 'asdfasdfa3423', 'adfgadf', 'gadfgadf', '6786787865', 'sfhdfg@gmail.com', 877777, 56756, 6746, 'Pending'),
(104, '2021-09-21', 'C00104', '', 'qqqq1111oeoeddd', 'dsfgsdfg', 'sdfgsdg', '8888888888', 'sdfgsdf@sdf', 888888, 5674567, 4567467, 'Pending'),
(105, '2021-09-21', 'C00104', '', 'qqqq1111oeoeddd', 'dsfgsdfg', 'sdfgsdg', '8888888888', 'sdfgsdf@sdf', 888888, 5674567, 4567467, 'Pending'),
(106, '2021-09-22', '', 'sdfg', 'sdfgsdf345df', 'sdfgsdfg', 'sdfg', '9999999999', 'sdfg@hmsfg', 777777, 678678, 678678, 'Pending'),
(107, '2021-09-22', '', 'sdfg', 'sdfgsdf345df', 'sdfgsdfg', 'sdfg', '9999999999', 'sdfg@hmsfg', 777777, 678678, 678678, 'Pending'),
(108, '2021-09-22', '', 'sdfg', 'sdfgsdf345df', 'sdfgsdfg', 'sdfg', '9999999999', 'sdfg@hmsfg', 777777, 678678, 678678, 'Pending'),
(109, '2021-09-10', '3456', '', 'dfghdfgh', 'dfgh', 'dfgh', '9898989898', 'sdfg@gmail', 888888, 56875, 678, 'Pending'),
(110, '2021-09-10', '3456', '', 'dfghdfgh', 'dfgh', 'dfgh', '9898989898', 'sdfg@gmail', 888888, 56875, 678, 'Pending'),
(111, '2021-09-03', '', 'ghf', 'fdhgd456456', 'fghdf', 'dfgh', '9999999999', 'dhdfgs@gmail', 565650, 567, 567567, 'Pending'),
(140, '2021-09-23', 'C00102', '', '10ASDDDDOE12Z12', 'B12/16', 'Odissa', '7845462532', 'cs@gmail.com', 874210, 36.4, 2763.4, 'Pending'),
(139, '2021-09-23', 'C00101', '', '10ASASDDDD201Z2', 'M10/122', 'Gaya', '7878996541', 'cz@gmail.com', 120120, 36.4, 54294.4, 'Pending'),
(138, '2021-09-23', 'C00101', '', '10ASASDDDD201Z2', 'M10/122', 'Gaya', '7878996541', 'cz@gmail.com', 120120, 36.4, 54294.4, 'Pending'),
(137, '2021-09-23', 'C00101', '', '10ASASDDDD201Z2', 'M10/122', 'Gaya', '7878996541', 'cz@gmail.com', 120120, 36.4, 54294.4, 'Pending'),
(136, '2021-09-23', 'C00101', '', '10ZASIEEO21Z1Z2', 'J10/20', 'Gaya', '7845451232', 'cz@gmail.com', 124544, 36.4, 58325.4, 'Pending'),
(135, '2021-09-23', 'C00101', '', '10ZASIEEO21Z1Z2', 'J10/20', 'Gaya', '7845451232', 'cz@gmail.com', 124544, 36.4, 58325.4, 'Pending'),
(134, '2021-09-23', 'C00101', '', '10ZASIEEO21Z1Z2', 'J10/20', 'Gaya', '7845451232', 'cz@gmail.com', 124544, 36.4, 58325.4, 'Pending'),
(133, '2021-09-23', 'C00101', '', '10ZAEEEI120X1Z2', 'J10/20', 'Indore', '7511236547', 'cz@gmail.com', 522010, 36.4, 95534.4, 'Pending'),
(132, '2021-09-23', 'C00101', '', '10ZAEEEI120X1Z2', 'J10/20', 'Indore', '7511236547', 'cz@gmail.com', 522010, 36.4, 95534.4, 'Pending'),
(131, '2021-09-23', 'C00101', '', '10ZAEEEI120X1Z2', 'J10/20', 'Indore', '7511236547', 'cz@gmail.com', 522010, 36.4, 95534.4, 'Pending'),
(126, '2021-09-22', '', 'fgsdfg', 'sdfgsdf', 'sdfgsdf', 'sdfg', '8888888888', 'dfghdf@gmail.vom', 888888, 658, 74567, 'Pending'),
(127, '2021-09-22', '', 'fgsdfg', 'sdfgsdf', 'sdfgsdf', 'sdfg', '8888888888', 'dfghdf@gmail.vom', 888888, 658, 74567, 'Pending'),
(128, '2021-09-22', '', 'fgsdfg', 'sdfgsdf', 'sdfgsdf', 'sdfg', '8888888888', 'dfghdf@gmail.vom', 888888, 658, 74567, 'Pending'),
(129, '2021-09-21', '', 'sdfgsdfg', 'sdfgsdfgsdfg34', 'sfgsdfg', 'sdfgsdf', '7777777777', 'adsfgsdfg@sdfg', 545454, 3456345, 35356, 'Pending'),
(130, '2021-09-23', 'Test USER 2', '', '19HFHFKKK101Z2', 'J12/10 M.V. Road', 'Jaipur', '7575444401', 'user@gmail.com', 250111, 100, 54129, 'Pending'),
(141, '2021-09-23', 'C00102', '', '10ASDDDDOE12Z12', 'B12/16', 'Odissa', '7845462532', 'cs@gmail.com', 874210, 36.4, 2763.4, 'Pending'),
(142, '2021-09-23', 'C00102', '', '10ASDDDDOE12Z12', 'B12/16', 'Odissa', '7845462532', 'cs@gmail.com', 874210, 36.4, 2763.4, 'Pending'),
(143, '2021-09-23', '', 'QWERT', '10HSFADJDF123Z4', 'C10/12', 'Odissa', '7654120303', 'qwert@gmail.com', 101012, 36.4, 2763.4, 'Pending'),
(144, '2021-09-24', '', 'ASDFG', '19ASASII82AS1Z2', 'CK 65/262', 'Jaipur', '9922030310', 'cz@gmail.com', 121200, 36.4, 2892.4, 'Pending'),
(145, '2021-09-24', '', 'ASDFG', '19ASASII82AS1Z2', 'CK 65/262', 'Jaipur', '9922030310', 'cz@gmail.com', 121200, 36.4, 2892.4, 'Pending'),
(146, '2021-09-24', '', 'ASDFG', '19ASASII82AS1Z2', 'CK 65/262', 'Jaipur', '9922030310', 'cz@gmail.com', 121200, 36.4, 2892.4, 'Pending'),
(147, '2021-09-24', '', 'ASDFG', '19ASASII82AS1Z2', 'CK 65/262', 'Jaipur', '9922030310', 'cz@gmail.com', 121200, 36.4, 2892.4, 'Pending'),
(148, '2021-09-23', '', 'x', 'bxcvb', 'xcvb', 'xcvb', '7778877777', 'xcvw@sdf', 121211, 36.4, 7572.4, 'Pending'),
(149, '2021-09-22', '', 'Testing', '109ANVBCNNN21Z2', 'XX Shipping Address', 'XX City', '8787555544', 'test@gmail.com', 121212, 36.4, 6923.4, 'Pending'),
(150, '2021-09-24', '', 'Test User', '1ASASASS22SA1Z1', 'ASASAS', 'ASASAS', '7878787878', 'as@gmail.com', 101010, 36.4, 98003.4, 'Pending'),
(151, '2021-09-24', '', 'xcvxc', 'sfdgdfsgdfs', 'bsdbs', 'vbsdf', '8787878787', 'sdf@sdfg', 333333, 36.4, 2763.4, 'Pending');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
