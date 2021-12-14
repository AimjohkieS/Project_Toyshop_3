-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 03:44 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `d_id` int(11) NOT NULL,
  `o_id` int(10) NOT NULL,
  `d_value` int(11) NOT NULL,
  `d_subtotal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`d_id`, `o_id`, `d_value`, `d_subtotal`) VALUES
(26, 111, 1, 6000),
(27, 111, 1, 6000),
(28, 111, 1, 6000),
(29, 112, 1, 6000),
(30, 112, 1, 6000),
(31, 112, 1, 6000),
(32, 112, 1, 6000),
(33, 113, 1, 6000),
(34, 113, 1, 6000),
(35, 113, 1, 6000),
(36, 113, 1, 6000),
(37, 114, 1, 3100),
(38, 114, 1, 3100),
(39, 115, 1, 1500),
(40, 117, 1, 1500),
(41, 118, 10, 15000),
(42, 119, 10, 15000),
(43, 120, 1, 1500),
(44, 121, 1, 1500),
(45, 122, 1, 3100),
(46, 122, 1, 3100),
(47, 123, 1, 3100),
(48, 123, 1, 3100),
(49, 124, 1, 1500),
(50, 125, 1, 1500),
(51, 126, 1, 1600),
(52, 127, 1, 1500),
(53, 128, 1, 1500),
(54, 129, 1, 1600),
(55, 130, 1, 1500),
(56, 131, 1, 1500),
(57, 133, 1, 1500),
(58, 135, 1, 1500),
(59, 139, 1, 1500),
(60, 142, 1, 1500),
(61, 146, 1, 1500),
(62, 147, 1, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `order_head`
--

CREATE TABLE `order_head` (
  `o_id` int(10) NOT NULL,
  `m_id` int(11) NOT NULL COMMENT 'ไอดีสมาชิก',
  `p_id` int(11) NOT NULL,
  `o_dttm` datetime NOT NULL,
  `o_name` varchar(255) NOT NULL,
  `o_address` varchar(255) NOT NULL,
  `o_email` varchar(50) NOT NULL,
  `o_total` float NOT NULL,
  `o_status` int(1) NOT NULL COMMENT 'สถานะ 0=รอชำระเงิน 1=ชำระสินค้า 2=ตรวจสอบเลข EMS 3=ยกเลิก',
  `b_id` int(11) NOT NULL DEFAULT 0 COMMENT 'บัญชีธนาคาร',
  `o_goal` int(1) NOT NULL COMMENT '0=โอนบัญชี 1=เก็บบัญชีปลายทาง',
  `o_slip` varchar(50) DEFAULT NULL,
  `o_slip_date` date NOT NULL,
  `o_slip_total` float(10,2) NOT NULL DEFAULT 0.00,
  `o_ems` varchar(30) DEFAULT NULL,
  `o_ems_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_head`
--

INSERT INTO `order_head` (`o_id`, `m_id`, `p_id`, `o_dttm`, `o_name`, `o_address`, `o_email`, `o_total`, `o_status`, `b_id`, `o_goal`, `o_slip`, `o_slip_date`, `o_slip_total`, `o_ems`, `o_ems_date`) VALUES
(122, 1, 3, '2021-12-14 02:29:50', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 3100, 2, 0, 0, '', '2021-12-30', 31000.00, 'DR5555588521', '0000-00-00 00:00:00'),
(123, 1, 3, '2021-12-14 05:50:52', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 3100, 2, 0, 0, '', '2021-12-30', 1500.00, '', '0000-00-00 00:00:00'),
(124, 1, 3, '2021-12-14 05:51:05', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 1, 0, 0, '', '2021-12-31', 1000.00, '', '0000-00-00 00:00:00'),
(125, 1, 3, '2021-12-14 05:57:05', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 1, 1, 0, '', '2022-01-01', 2000.00, '', '0000-00-00 00:00:00'),
(126, 1, 3, '2021-12-14 05:59:49', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1600, 1, 1, 0, 'slip23289027020211214_063527.jpg', '2021-12-31', 3000.00, '', '0000-00-00 00:00:00'),
(127, 1, 3, '2021-12-14 06:22:22', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 1, 1, 0, 'slip200760101720211214_062237.png', '2022-01-05', 20000.00, '', '0000-00-00 00:00:00'),
(128, 1, 3, '2021-12-14 06:50:59', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 1, 1, 0, 'slip5912982920211214_071543.png', '2021-12-31', 1000.00, '', '0000-00-00 00:00:00'),
(129, 1, 3, '2021-12-14 07:22:52', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1600, 1, 1, 0, 'slip189844295020211214_073638.jpg', '2021-12-31', 5.00, 'TH585412545525', '0000-00-00 00:00:00'),
(130, 1, 3, '2021-12-14 08:46:07', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 0, 0, 0, '', '0000-00-00', 0.00, '', '0000-00-00 00:00:00'),
(131, 1, 3, '2021-12-14 09:08:34', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 0, 0, 0, '', '0000-00-00', 0.00, '', '0000-00-00 00:00:00'),
(133, 1, 3, '2021-12-14 09:11:03', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 0, 0, 0, '', '0000-00-00', 0.00, '', '0000-00-00 00:00:00'),
(135, 1, 3, '2021-12-14 09:11:28', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 0, 0, 0, '', '0000-00-00', 0.00, '', '0000-00-00 00:00:00'),
(139, 1, 3, '2021-12-14 09:13:13', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 0, 0, 0, '', '0000-00-00', 0.00, '', '0000-00-00 00:00:00'),
(142, 1, 3, '2021-12-14 09:13:48', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 0, 0, 0, '', '0000-00-00', 0.00, '', '0000-00-00 00:00:00'),
(146, 1, 3, '2021-12-14 09:15:06', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 0, 0, 0, '', '0000-00-00', 0.00, '', '0000-00-00 00:00:00'),
(147, 1, 3, '2021-12-14 09:15:54', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 'admin@2222.com', 1500, 0, 0, 0, '', '0000-00-00', 0.00, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `m_id` int(11) NOT NULL,
  `m_user` varchar(20) NOT NULL,
  `m_pass` varchar(20) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `m_address` varchar(255) NOT NULL,
  `m_tel` int(10) NOT NULL,
  `m_email` varchar(50) NOT NULL,
  `m_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`m_id`, `m_user`, `m_pass`, `m_name`, `m_address`, `m_tel`, `m_email`, `m_status`) VALUES
(1, 'u025', 'xxx', 'dsasa', 'ถ.สุขุมวิท ต.แพร่ง อ.พลา จ.แพร่ 1580', 89999999, 'admin@2222.com', 'Admin'),
(9, 'dsadsadsadsa', 'dsaxzxzzxzx', 'ddsa', '', 0, '', ''),
(10, 'dsadsa', 'dsadsa', 'dsasa', '', 0, '', ''),
(11, 'huyhuj', 'xxxx', 'dsasa', '', 0, '', ''),
(12, 'test', 'test', 'test', '', 0, '', 'Member'),
(13, 'zzz', 'zzz', 'zzz', 'zzz', 0, 'zzz', 'Member'),
(14, 'zzz', 'ผผผ', 'zzz', 'zzz', 0, 'zzz', 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `b_number` varchar(120) NOT NULL,
  `b_offset` varchar(150) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`b_id`, `b_name`, `b_number`, `b_offset`) VALUES
(1, 'ธรรมธัช สุขสถิตย์', '6211011660025', 'ธนาคารกรุงไทย'),
(2, 'ธนกร คือสูงเนิน', '6211011660006', 'ธนาคารกรุงไทย');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(20) NOT NULL,
  `member_user` varchar(20) NOT NULL,
  `member_pass` varchar(20) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `member_email` varchar(100) NOT NULL,
  `member_tel` int(10) NOT NULL,
  `member_address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `member_user`, `member_pass`, `member_name`, `member_email`, `member_tel`, `member_address`) VALUES
(1, '1', '1', 'dsadsasasdad', 'dsadas@dsadsa.coxzzxm', 0, ''),
(2201, 'test', 'x', 'ซ่า ซี่', 'savase@admin.com', 0, '85/5 ถ.วิสัยทัศน์ ต.ท่าบรรทุก อ.เมือง จ.สมุทรปราการ ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `p_price` float NOT NULL,
  `p_detail` text NOT NULL,
  `p_img` varchar(200) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `type_id`, `p_price`, `p_detail`, `p_img`, `datesave`) VALUES
(3, 'Nissan Skyline GT-R R34', 2, 1500, 'รหัสสินค้า : 001\r\nอัตราส่วน 1:24', 'p_img68449970220211116_220901.jpg', '2021-11-16 15:09:01'),
(4, 'Honda S200', 1, 1600, '????โมเดลรถเหล็ก กล่องใหม่ล่าสุด ราคาโปรโมชั่น????', 'p_img27632471520211117_010417.jpg', '2021-11-16 18:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`) VALUES
(1, 'โปรโมชั่น'),
(2, 'ของเล่น');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `o_id` (`o_id`);

--
-- Indexes for table `order_head`
--
ALTER TABLE `order_head`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `m_id` (`m_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `order_head`
--
ALTER TABLE `order_head`
  MODIFY `o_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2203;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_head`
--
ALTER TABLE `order_head`
  ADD CONSTRAINT `m_id` FOREIGN KEY (`m_id`) REFERENCES `tbl_admin` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `p_id` FOREIGN KEY (`p_id`) REFERENCES `tbl_product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
