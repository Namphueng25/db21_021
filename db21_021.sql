-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2021 at 12:06 PM
-- Server version: 5.7.33-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db21_021`
--

-- --------------------------------------------------------

--
-- Table structure for table `close_order`
--

CREATE TABLE `close_order` (
  `co_id` int(20) NOT NULL,
  `co_date` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `close_order`
--

INSERT INTO `close_order` (`co_id`, `co_date`) VALUES
(11006, '3 ส.ค 64'),
(11007, '2 ส.ค. 64'),
(11010, '2 ส.ค. 64');

-- --------------------------------------------------------

--
-- Table structure for table `ColorProduct`
--

CREATE TABLE `ColorProduct` (
  `cp_id` varchar(10) NOT NULL,
  `cp_color` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `cp_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ColorProduct`
--

INSERT INTO `ColorProduct` (`cp_id`, `cp_color`, `cp_code`) VALUES
('CL001', 'เทา-น้ำตาล', 'PR001'),
('CL002', 'น้ำตาล-น้ำตาล', 'PR001'),
('CL003', 'น้ำตาล', 'PR002'),
('CL004', 'เทา', 'PR003'),
('CL005', 'แดง', 'PR004'),
('CL006', 'ส้ม', 'PR004'),
('CL007', 'เขียว', 'PR004'),
('CL008', 'ฟ้า', 'PR005'),
('CL009', 'แดง', 'PR005'),
('CL010', 'ฟ้า', 'PR006'),
('CL011', 'เขียว', 'PR006');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` varchar(11) CHARACTER SET latin1 NOT NULL,
  `c_Fname` varchar(20) COLLATE tis620_bin NOT NULL,
  `c_address` varchar(200) COLLATE tis620_bin NOT NULL,
  `c_phone` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_Fname`, `c_address`, `c_phone`) VALUES
('C01', 'คุณแก้ว', 'กำแพงแสน', '081321654'),
('C02', 'คุณอุดร', 'บางเลน', '082568986'),
('C03', 'คุณพิพัฒน์', 'ดอนตูม', '087996554'),
('C04', 'คุณน้ำใส', 'สามพราน', '0855888855');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id_order` int(11) NOT NULL,
  `date` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `condition` int(11) NOT NULL,
  `id_cus` varchar(11) NOT NULL,
  `Staff_id` varchar(20) NOT NULL,
  `เงื่อนไข` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id_order`, `date`, `condition`, `id_cus`, `Staff_id`, `เงื่อนไข`) VALUES
(11001, '11 ก.ค. 2021', 40, 'C01', 'S11', '์NULL'),
(11002, '12 ก.ค. 2021', 0, 'C02', 'S12', 'NULL'),
(11003, '13 ก.ค. 2021', 30, 'C03', 'S13', 'NULL'),
(11004, '14 ก.ค. 2021', 0, 'C04', 'S11', 'รออนุมัติ'),
(11005, '15 ก.ค. 64', 0, 'C01', 'S12', 'อนุมัติ'),
(11006, '16 ก.ค. 2021', 40, 'C02', 'S13', 'อนุมัติ'),
(11007, '17 ก.ค. 2021', 30, 'C03', 'S11', 'รออนุมัติ'),
(11008, '18 ก.ค. 2021', 40, 'C04', 'S12', 'รออนุมัติ'),
(11009, '19 ก.ค. 64', 0, 'C01', 'S13', 'อนุมัติ'),
(11010, '20 ก.ค. 2021', 50, 'C02', 'S11', 'อนุมัติ');

-- --------------------------------------------------------

--
-- Table structure for table `Deliverry_product`
--

CREATE TABLE `Deliverry_product` (
  `Dp_id` varchar(10) NOT NULL,
  `Dp_no1` int(11) NOT NULL,
  `Dp_date` varchar(30) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `Dp_detail` varchar(30) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `ชำระเงิน` varchar(30) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Deliverry_product`
--

INSERT INTO `Deliverry_product` (`Dp_id`, `Dp_no1`, `Dp_date`, `Dp_detail`, `ชำระเงิน`) VALUES
('D001', 11005, '20 ส.ค. 64', 'จัดส่งแล้ว', 'ครบแล้ว'),
('D002', 11006, '22 ส.ค. 64', 'จัดส่งแล้ว', 'ไม่ครบ'),
('D003', 11009, '23 ส.ค. 64', 'ยังไม่ได้ส่งแล้ว', '');

-- --------------------------------------------------------

--
-- Table structure for table `detailOrder`
--

CREATE TABLE `detailOrder` (
  `or_id` varchar(11) NOT NULL,
  `d_code` varchar(20) NOT NULL,
  `or_color` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `or_quantityAll` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailOrder`
--

INSERT INTO `detailOrder` (`or_id`, `d_code`, `or_color`, `or_quantityAll`) VALUES
('01', 'PR001', 'เทา-น้ำตาล', 500),
('02', 'PR001', 'น้ำตาล-น้ำตาล', 1000),
('03', 'PR003', 'เทา', 700),
('04', 'PR004', 'ส้ม', 300),
('05', 'PR005', 'ฟ้า', 1000),
('06', 'PR001', 'น้ำตาล-น้ำตาล', 600),
('07', 'PR003', 'เทา', 300),
('08', 'PR004', 'แดง', 1000),
('09', 'PR001', 'น้ำตาล-น้ำตาล', 400),
('10', 'PR002', 'น้ำตาล', 500),
('11', 'PR005', 'ฟ้า', 500),
('12', 'PR005', 'แดง', 1000),
('13', 'PR006', 'ฟ้า', 0),
('14', 'PR006', 'เขียว', 0),
('15', 'PR004', 'เขียว', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `PA_id` varchar(10) NOT NULL,
  `PA_no` int(20) NOT NULL,
  `PA_date` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `PM_percent` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`PA_id`, `PA_no`, `PA_date`, `PM_percent`) VALUES
('PA001', 11006, '2 ส.ค. 64', '40'),
('PA002', 11010, '2 ส.ค. 64', '50'),
('PA003', 11007, '5 ส.ค. 64', '30'),
('PA004', 11005, '22 ส.ค. 64', '40'),
('PA005', 11006, '25 ส.ค. 64', '40'),
('PA006', 11005, '30 ส.ค. 64', '60');

-- --------------------------------------------------------

--
-- Table structure for table `procurment`
--

CREATE TABLE `procurment` (
  `procur_id` varchar(10) NOT NULL,
  `procur_n_pid` varchar(20) NOT NULL,
  `procur_color` varchar(20) NOT NULL,
  `procur_addQty` int(10) NOT NULL,
  `procur_qty` int(20) NOT NULL COMMENT 'จำนวนสินค้าเข้าคลัง+สั่งซื้อเพิ่ม',
  `procur_status` int(11) NOT NULL,
  `stock_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `procurment`
--

INSERT INTO `procurment` (`procur_id`, `procur_n_pid`, `procur_color`, `procur_addQty`, `procur_qty`, `procur_status`, `stock_id`) VALUES
('PRO001', 'PR001', '', 0, 500, 1, 'STK001'),
('PRO002', 'PR001', '', 0, 1000, 1, 'STK002'),
('PRO003', 'PR001', '', 0, 600, 1, 'STK002'),
('PRO004', 'PR001', '', 0, 400, 1, 'STK002'),
('PRO005', 'PR002', '', 0, 500, 1, 'STK003'),
('PRO006', 'PR003', '', 0, 700, 1, 'STK004'),
('PRO007', 'PR003', '', 0, 300, 1, 'STK004'),
('PRO008', 'PR004', '', 0, 1000, 1, 'STK005'),
('PRO009', 'PR004', '', 1000, 1000, 1, 'STK005'),
('PRO010', 'PR004', '', 0, 300, 1, 'STK004'),
('PRO011', 'PR004', '', 1200, 1200, 1, 'STK006'),
('PRO012', 'PR005', '', 0, 1000, 1, 'STK008'),
('PRO013', 'PR005', '', 0, 500, 1, 'STK009'),
('PRO014', 'PR005', '', 0, 1000, 1, 'STK008'),
('PRO015', 'PR006', '', 800, 800, 0, 'STK011');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `p_id` varchar(11) NOT NULL,
  `p_type` varchar(300) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `p_name` varchar(300) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `p_qty` varchar(20) NOT NULL,
  `p_type1` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`p_id`, `p_type`, `p_name`, `p_qty`, `p_type1`) VALUES
('PR001', 'ชุดเครื่องเขียน "Back to Nature"', 'ดินสอ ปากกา กระดาษ ยางลบ ไม้บรรทัด ไม้ไผ่ ไฮไลท์ กบเหลาไม้ Eco Bag', '800', 'หมวดเครื่องเขียน'),
('PR002', '"Leaf Message" memo box กล่องกระดาษโน็ต ดินสอ', 'กระดาษโน็ต 150 แผ่น ดินสอ 3.5 นิ้ว', '600', 'หมวดเครื่องเขียน'),
('PR003', 'Natural Post it', 'Post it 3x3" และ 1x3" อย่างละ 50 แผ่น', '400', 'หมวดเครื่องเขียน'),
('PR004', 'recycle pen ปากการีไซเคิล', 'ปากกาแบบกด ด้ามท่าจากกระดาษรีไซเคิลม้วนเป็นโรล หมึกสีน้่าเงิน', '300', 'หมวดเครื่องเขียน'),
('PR005', 'พัดลมมือถือเด็กอ้วน', 'พัดลมมือถือรูปเด็กอ้วน ขนาดกะทัดรัด', '200', 'หมวดพัดลมมือถือ'),
('PR006', 'พัดลมมือถือcool', 'พัดลมมือถือสีใส ปุ่มเปิดด้านข้าง', '0', 'หมวดพัดลมมือถือ');

-- --------------------------------------------------------

--
-- Table structure for table `ProductDetail`
--

CREATE TABLE `ProductDetail` (
  `pd_id` int(10) NOT NULL,
  `pd_Price` int(10) NOT NULL,
  `pd_Qty` int(10) NOT NULL,
  `pd_screen` int(10) NOT NULL,
  `pd_code` varchar(10) NOT NULL,
  `Min_qty` int(10) NOT NULL,
  `Max_qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ProductDetail`
--

INSERT INTO `ProductDetail` (`pd_id`, `pd_Price`, `pd_Qty`, `pd_screen`, `pd_code`, `Min_qty`, `Max_qty`) VALUES
(1, 150, 50, 18, 'PR001', 0, 50),
(2, 120, 100, 15, 'PR001', 51, 100),
(3, 98, 200, 12, 'PR001', 101, 200),
(4, 90, 400, 10, 'PR001', 201, 400),
(5, 86, 600, 9, 'PR001', 401, 600),
(6, 83, 800, 8, 'PR001', 601, 800),
(7, 81, 9999, 7, 'PR001', 801, 9999),
(8, 69, 100, 9, 'PR002', 0, 100),
(9, 63, 200, 7, 'PR002', 101, 200),
(10, 56, 300, 6, 'PR002', 201, 300),
(11, 50, 500, 6, 'PR002', 301, 500),
(12, 49, 800, 5, 'PR002', 501, 800),
(13, 48, 9999, 5, 'PR002', 801, 9999),
(14, 57, 100, 9, 'PR003', 0, 100),
(15, 50, 200, 8, 'PR003', 101, 200),
(16, 45, 300, 8, 'PR003', 201, 300),
(17, 39, 500, 6, 'PR003', 301, 500),
(18, 37, 800, 5, 'PR003', 501, 800),
(19, 34, 9999, 5, 'PR003', 801, 9999),
(20, 30, 50, 9, 'PR004', 0, 50),
(21, 20, 100, 8, 'PR004', 51, 100),
(22, 18, 200, 7, 'PR004', 101, 200),
(23, 15, 300, 8, 'PR004', 201, 300),
(24, 12, 500, 6, 'PR004', 301, 500),
(25, 10, 800, 5, 'PR004', 501, 800),
(26, 8, 801, 4, 'PR004', 0, 0),
(27, 80, 50, 20, 'PR005', 0, 0),
(28, 75, 100, 18, 'PR005', 0, 0),
(29, 68, 200, 14, 'PR005', 0, 0),
(30, 64, 500, 12, 'PR005', 0, 0),
(31, 60, 800, 10, 'PR005', 0, 0),
(32, 58, 801, 9, 'PR005', 0, 0),
(33, 75, 100, 25, 'PR006', 0, 0),
(34, 70, 300, 22, 'PR006', 0, 0),
(35, 64, 500, 20, 'PR006', 0, 0),
(36, 62, 700, 16, 'PR006', 0, 0),
(37, 55, 800, 15, 'PR006', 0, 0),
(38, 52, 801, 12, 'PR006', 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q01`
--
CREATE TABLE `Q01` (
`s_id` varchar(3)
,`s_name` varchar(20)
,`s_rank` varchar(30)
,`s_password` varchar(7)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q02`
--
CREATE TABLE `Q02` (
`s_rank` varchar(30)
,`COUNT(s_rank)` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q03`
--
CREATE TABLE `Q03` (
`c_id` varchar(11)
,`c_Fname` varchar(20)
,`c_address` varchar(200)
,`c_phone` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q04`
--
CREATE TABLE `Q04` (
`p_id` varchar(11)
,`Product` varchar(300)
,`Unit_Price` bigint(14)
,`Amount` bigint(17)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05`
--
CREATE TABLE `Q05` (
`p_id` varchar(11)
,`p_type` varchar(300)
,`Price_unite` bigint(12)
,`Price_sum` bigint(13)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_2`
--
CREATE TABLE `Q05_2` (
`p_id` varchar(11)
,`p_type` varchar(300)
,`Price_unite` bigint(13)
,`Price_sum` bigint(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_3`
--
CREATE TABLE `Q05_3` (
`p_id` varchar(11)
,`p_type` varchar(300)
,`Price_unite` bigint(13)
,`Price_sum` bigint(16)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_4`
--
CREATE TABLE `Q05_4` (
`p_id` varchar(11)
,`p_type` varchar(300)
,`Price_unite` bigint(12)
,`Price_sum` bigint(16)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_5`
--
CREATE TABLE `Q05_5` (
`p_id` varchar(11)
,`p_type` varchar(300)
,`Price_unite` bigint(13)
,`Price_sum` bigint(17)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q06_1`
--
CREATE TABLE `Q06_1` (
`d_code` varchar(20)
,`p_type` varchar(300)
,`or_color` varchar(20)
,`p_type1` varchar(20)
,`p_qty` varchar(20)
,`round` bigint(21)
,`total` decimal(65,0)
,`add_more` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q07_1`
--
CREATE TABLE `Q07_1` (
`p_id` varchar(11)
,`p_type` varchar(300)
,`p_type1` varchar(20)
,`ColorTotal` bigint(21)
,`Total` decimal(65,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q08`
--
CREATE TABLE `Q08` (
`d_code` varchar(20)
,`p_type` varchar(300)
,`or_color` varchar(20)
,`p_qty` varchar(20)
,`total` decimal(65,0)
,`add_more` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q09`
--
CREATE TABLE `Q09` (
`no1` int(20)
,`cp_code` varchar(10)
,`n_pcolor` varchar(20)
,`n_pจำนวน` int(20)
,`ราคาต่อชิ้นรวมสกรีน` bigint(32)
,`Total` bigint(51)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q10`
--
CREATE TABLE `Q10` (
`d_code` varchar(20)
,`p_type` varchar(300)
,`or_color` varchar(20)
,`total` decimal(65,0)
,`รวมใบเสนอ` decimal(41,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q11`
--
CREATE TABLE `Q11` (
`id_order` int(11)
,`วันที่` varchar(20)
,`ชื่อลูกค้า` varchar(20)
,`ราคารวม` decimal(65,0)
,`ราคารวมvat` decimal(65,2)
,`เงินมัดจำ` decimal(65,6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q12`
--
CREATE TABLE `Q12` (
`s_name` varchar(20)
,`จำนวนใบเสนอราคา` bigint(21)
,`ยอดขายรวม` decimal(65,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q13`
--
CREATE TABLE `Q13` (
`name_st_c` varchar(30)
,`รายการสถานะ` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q14`
--
CREATE TABLE `Q14` (
`id_ordercus` int(10)
,`date_track` varchar(20)
,`name_st_c` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q15`
--
CREATE TABLE `Q15` (
`id_ordercus` int(10)
,`date_track` varchar(20)
,`name_st_c` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q16`
--
CREATE TABLE `Q16` (
`id_order` int(11)
,`ยอดชำระ` decimal(65,2)
,`ยอดค้างชำระ` decimal(65,6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q17`
--
CREATE TABLE `Q17` (
`no1` int(20)
,`cp_code` varchar(10)
,`p_type` varchar(300)
,`n_pcolor` varchar(20)
,`n_pจำนวน` int(20)
,`จำนวนที่ผลิต` decimal(16,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q18`
--
CREATE TABLE `Q18` (
`p_id` varchar(11)
,`p_type` varchar(300)
,`cp_color` varchar(20)
,`จำนวนคงเหลือ` decimal(42,0)
,`จำนวนระหว่างสั่งซื้อ` bigint(20)
,`จำนวนที่ผลิต` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q19`
--
CREATE TABLE `Q19` (
`p_id` varchar(11)
,`p_type` varchar(300)
,`cp_color` varchar(20)
,`จำนวนที่ต้องสั่งเพิ่ม` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q20_1`
--
CREATE TABLE `Q20_1` (
`PA_no` int(20)
,`PA_date` varchar(20)
,`ยอดชำระทั้งหมด` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q21`
--
CREATE TABLE `Q21` (
`cp_code` varchar(10)
,`p_type` varchar(300)
,`จำนวนที่ผลิตเสร็จทั้งหมด` decimal(38,0)
,`จำนวนที่จัดส่ง` decimal(38,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q22`
--
CREATE TABLE `Q22` (
`id_order` int(11)
,`ราคารวมvat` decimal(65,2)
,`ยอดชำระแล้ว` double
,`ยอดค้างจ่าย` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q23`
--
CREATE TABLE `Q23` (
`no1` int(20)
,`p_id` varchar(11)
,`p_type` varchar(300)
,`จำนวนขาย` decimal(41,0)
,`จำนวนเผื่อ` decimal(55,4)
,`ราคาขายรวม` decimal(65,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `requotation`
--

CREATE TABLE `requotation` (
  `RQ_id` varchar(20) NOT NULL,
  `RQ_no` int(10) NOT NULL,
  `RQ_date` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `RQ_qty` int(11) NOT NULL,
  `RQ_n_pid` varchar(10) NOT NULL,
  `ใบเสนอ_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requotation`
--

INSERT INTO `requotation` (`RQ_id`, `RQ_no`, `RQ_date`, `RQ_qty`, `RQ_n_pid`, `ใบเสนอ_id`) VALUES
('PQ001', 11005, '15  ส.ค. 64', 505, 'PR004', 15),
('PQ002', 11005, '15 ส.ค. 64', 808, 'PR004', 14),
('PQ003', 11005, '15  ส.ค. 64', 202, 'PR005', 13),
('PQ004', 11005, '15 ส.ค. 64', 1515, 'PR006', 12),
('PQ005', 11006, '15  ส.ค. 64', 182, 'PR004', 11),
('PQ006', 11006, '15 ส.ค. 64', 404, 'PR004', 1),
('PQ007', 11006, '15  ส.ค. 64', 606, 'PR005', 9),
('PQ008', 11009, '15 ส.ค. 64', 449, 'PR004', 6),
('PQ009', 11009, '15  ส.ค. 64', 867, 'PR005', 5),
('PQ010', 11010, '15 ส.ค. 64', 204, 'PR004', 4);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `s_id` varchar(3) CHARACTER SET latin1 NOT NULL,
  `s_name` varchar(20) COLLATE tis620_bin NOT NULL,
  `s_rank` varchar(30) COLLATE tis620_bin NOT NULL,
  `s_password` varchar(7) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`s_id`, `s_name`, `s_rank`, `s_password`) VALUES
('S11', 'นายสมชาย', 'ฝ่ายขาย', 'S111111'),
('S12', 'นายสมศักดิ์', 'ฝ่ายขาย', 'S121111'),
('S13', 'นางสมสมร', 'ฝ่ายขาย', 'S131111'),
('S21', 'นางสาวพรศรี', 'ฝ่ายจัดซื้อ', 'S211111'),
('S22', 'นางพรพรรณ', 'ฝ่ายจัดซื้อ', 'S221111'),
('S31', 'นายยิ่งยง', 'ฝ่ายผลิต', 'S311111'),
('S32', 'นายบัวขาว', 'ฝ่ายผลิต', 'S321111'),
('S41', 'นายนิมิต', 'ผู้จัดการ', 'S411111'),
('S42', 'นางประนอม', 'ผู้จัดการ', 'S421111');

-- --------------------------------------------------------

--
-- Table structure for table `Stastus_track`
--

CREATE TABLE `Stastus_track` (
  `id_track` varchar(10) NOT NULL,
  `date_track` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `id_st_c` varchar(20) NOT NULL,
  `id_ordercus` int(10) NOT NULL,
  `เงื่อนไข` varchar(11) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Stastus_track`
--

INSERT INTO `Stastus_track` (`id_track`, `date_track`, `id_st_c`, `id_ordercus`, `เงื่อนไข`) VALUES
('ST01', '27 ก.ค. 2021', 'DC', 11001, 'ไม่ชำระ'),
('ST02', '27 ก.ค. 2021', 'CC', 11002, 'ไม่ชำระ'),
('ST03', '27 ก.ค. 2021', 'DC', 11003, 'ไม่ชำระ'),
('ST04', '27 ก.ค. 2021', 'DC', 11004, 'ไม่ชำระ'),
('ST05', '27 ก.ค. 2021', 'CF', 11005, 'ไม่ชำระ'),
('ST06', '27 ก.ค. 2021', 'CF', 11006, 'ชำระแล้ว'),
('ST07', '27 ก.ค. 2021', 'CF', 11007, 'ชำระแล้ว'),
('ST08', '27 ก.ค. 2021', 'CF', 11008, 'รอชำระ'),
('ST09', '27 ก.ค. 2021', 'CF', 11009, 'ไม่ชำระ'),
('ST10', '27 ก.ค. 2021', 'DC', 11010, 'ไม่ชำระ'),
('ST11', '30 ก.ค. 2021', 'CC', 11001, 'ไม่ชำระ'),
('ST12', '30 ก.ค. 2021', 'DC', 11003, 'ไม่ชำระ'),
('ST13', '30 ก.ค. 2021', 'CF', 11004, 'ไม่ชำระ'),
('ST14', '30 ก.ค. 2021', 'DC', 11010, 'ไม่ชำระ'),
('ST15', '31 ก.ค. 2021', 'CF', 11010, 'ชำระแล้ว');

-- --------------------------------------------------------

--
-- Table structure for table `Stastus_track_detail`
--

CREATE TABLE `Stastus_track_detail` (
  `status_id` int(20) NOT NULL,
  `STA_date` varchar(20) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `s_id` varchar(20) NOT NULL,
  `STA_status` varchar(30) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `STA_Percent` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Stastus_track_detail`
--

INSERT INTO `Stastus_track_detail` (`status_id`, `STA_date`, `s_id`, `STA_status`, `STA_Percent`) VALUES
(11005, '3 ส.ค. 2564', 'S41', 'อนุมัติ', 1),
(11006, '3 ส.ค. 2564', 'S42', 'อนุมัติ', 1),
(11009, '3 ส.ค. 2564', 'S41', 'อนุมัติ', 2),
(11010, '3 ส.ค. 2564', 'S41', 'อนุมัติ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `status_conform`
--

CREATE TABLE `status_conform` (
  `id_st_c` varchar(20) NOT NULL,
  `name_st_c` varchar(30) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_conform`
--

INSERT INTO `status_conform` (`id_st_c`, `name_st_c`) VALUES
('CC', 'ยกเลิก'),
('CF', 'ตกลงที่เสนอราคา'),
('DC', 'ลูกค้ายังไม่ตัดสินใจ');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` varchar(20) NOT NULL,
  `stock_qty` int(20) NOT NULL,
  `stock_color` varchar(20) NOT NULL,
  `stock_pid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `stock_qty`, `stock_color`, `stock_pid`) VALUES
('STK001', 800, 'CL001', 'PR001'),
('STK002', 800, 'CL002', 'PR001'),
('STK003', 600, 'CL003', 'PR002'),
('STK004', 400, 'CL004', 'PR003'),
('STK005', 300, 'CL006', 'PR004'),
('STK006', 300, 'CL007', 'PR004'),
('STK007', 300, 'CL005', 'PR004'),
('STK008', 200, 'CL008', 'PR005'),
('STK009', 200, 'CL009', 'PR005'),
('STK010', 0, 'CL010', 'PR006'),
('STK011', 0, 'CL011', 'PR006');

-- --------------------------------------------------------

--
-- Table structure for table `ใบเสนอ`
--

CREATE TABLE `ใบเสนอ` (
  `no_id` int(20) NOT NULL,
  `date` varchar(20) COLLATE tis620_bin NOT NULL,
  `con_payment` int(20) NOT NULL,
  `เงื่อนไข` varchar(20) COLLATE tis620_bin NOT NULL,
  `stock_id1` varchar(20) CHARACTER SET latin1 NOT NULL,
  `n_staff` varchar(20) CHARACTER SET latin1 NOT NULL,
  `n_customer` varchar(20) CHARACTER SET latin1 NOT NULL,
  `n_pid` varchar(20) CHARACTER SET latin1 NOT NULL,
  `n_pcolor` varchar(20) COLLATE tis620_bin NOT NULL,
  `n_pจำนวน` int(20) NOT NULL,
  `n_pscreen` int(20) NOT NULL,
  `no1` int(20) NOT NULL,
  `sumscreen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_bin;

--
-- Dumping data for table `ใบเสนอ`
--

INSERT INTO `ใบเสนอ` (`no_id`, `date`, `con_payment`, `เงื่อนไข`, `stock_id1`, `n_staff`, `n_customer`, `n_pid`, `n_pcolor`, `n_pจำนวน`, `n_pscreen`, `no1`, `sumscreen`) VALUES
(1, '16 ก.ค. 64', 40, 'มัดจำ', 'STK005', 'S13', 'C02', 'PR004', 'ส้ม', 400, 2, 11006, 6),
(2, '20 ก.ค. 64', 50, 'มัดจำ', 'STK011', 'S11', 'C02', 'PR006', 'ฟ้า', 900, 2, 11010, 12),
(3, '20 ก.ค. 64', 50, 'มัดจำ', 'STK005', 'S11', 'C02', 'PR004', 'แดง', 670, 1, 11010, 0),
(4, '20 ก.ค. 64', 50, 'มัดจำ', 'STK006', 'S11', 'C02', 'PR004', 'ส้ม', 200, 2, 11010, 7),
(5, '19 ก.ค. 64', 0, 'เครดิต', 'STK009', 'S13', 'C01', 'PR005', 'ฟ้า', 850, 1, 11009, 0),
(6, '19 ก.ค. 64', 0, 'เครดิต 30 วัน', 'STK007', 'S13', 'C01', 'PR004', 'เขียว', 440, 1, 11009, 0),
(7, '18 ก.ค. 64', 40, 'มัดจำ', 'STK004', 'S12', 'C04', 'PR003', 'เทา', 600, 1, 11008, 0),
(8, '17 ก.ค. 64', 30, 'มัดจำ', 'STK003', 'S11', 'C03', 'PR002', 'น้ำตาล', 200, 3, 11007, 14),
(9, '16 ก.ค. 64', 40, 'มัดจำ', 'STK009', 'S13', 'C02', 'PR005', 'ฟ้า', 600, 2, 11006, 10),
(10, '11 ก.ค. 64', 40, 'มัดจำ', 'STK005', 'S11', 'C01', 'PR004', 'แดง', 450, 2, 11001, 6),
(11, '16 ก.ค. 64', 40, 'มัดจำ', 'STK005', 'S13', 'C02', 'PR004', 'แดง', 180, 2, 11006, 7),
(12, '15 ก.ค. 64', 0, 'เครดิต 30 วัน', 'STK010', 'S12', 'C01', 'PR006', 'เขียว', 1500, 1, 11005, 0),
(13, '15 ก.ค. 64', 0, 'เครดิต 30 วัน', 'STK009', 'S12', 'C01', 'PR005', 'ฟ้า', 200, 2, 11005, 5),
(14, '15 ก.ค. 64', 0, 'เครดิต 30 วัน', 'STK006', 'S12', 'C01', 'PR004', 'ส้ม', 800, 2, 11005, 5),
(15, '15 ก.ค. 64', 0, 'เครดิต 30 วัน', 'STK005', 'S12', 'C01', 'PR004', 'แดง', 500, 2, 11005, 6),
(16, '14 ก.ค. 64', 0, 'เครดิต 30 วัน', 'STK010', 'S11', 'C04', 'PR006', 'ฟ้า', 1500, 1, 11004, 0),
(17, '13 ก.ค. 64', 30, 'มัดจำ', 'STK009', 'S13', 'C03', 'PR005', 'ฟ้า', 1200, 2, 11003, 9),
(18, '12 ก.ค. 64', 0, 'เครดิต 30 วัน', 'STK006', 'S12', 'C02', 'PR004', 'ส้ม', 580, 1, 11002, 0);

-- --------------------------------------------------------

--
-- Structure for view `Q01`
--
DROP TABLE IF EXISTS `Q01`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q01`  AS  select `staff`.`s_id` AS `s_id`,`staff`.`s_name` AS `s_name`,`staff`.`s_rank` AS `s_rank`,`staff`.`s_password` AS `s_password` from `staff` ;

-- --------------------------------------------------------

--
-- Structure for view `Q02`
--
DROP TABLE IF EXISTS `Q02`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q02`  AS  select `staff`.`s_rank` AS `s_rank`,count(`staff`.`s_rank`) AS `COUNT(s_rank)` from `staff` group by `staff`.`s_rank` ;

-- --------------------------------------------------------

--
-- Structure for view `Q03`
--
DROP TABLE IF EXISTS `Q03`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q03`  AS  select `customer`.`c_id` AS `c_id`,`customer`.`c_Fname` AS `c_Fname`,`customer`.`c_address` AS `c_address`,`customer`.`c_phone` AS `c_phone` from `customer` ;

-- --------------------------------------------------------

--
-- Structure for view `Q04`
--
DROP TABLE IF EXISTS `Q04`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q04`  AS  select `Product`.`p_id` AS `p_id`,`Product`.`p_type` AS `Product`,(`ProductDetail`.`pd_Price` + (`ProductDetail`.`pd_screen` * (2 - 1))) AS `Unit_Price`,(150 * (`ProductDetail`.`pd_Price` + (`ProductDetail`.`pd_screen` * (2 - 1)))) AS `Amount` from (`Product` join `ProductDetail` on((`ProductDetail`.`pd_code` = `Product`.`p_id`))) where ((`ProductDetail`.`pd_code` = 'PR001') and (`ProductDetail`.`pd_Qty` = '200')) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05`
--
DROP TABLE IF EXISTS `Q05`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q05`  AS  select `Product`.`p_id` AS `p_id`,`Product`.`p_type` AS `p_type`,max((`ProductDetail`.`pd_Price` * 1)) AS `Price_unite`,max((`ProductDetail`.`pd_Price` * 50)) AS `Price_sum` from (`Product` join `ProductDetail` on((`Product`.`p_id` = `ProductDetail`.`pd_code`))) where (`ProductDetail`.`pd_Qty` <= 100) group by `Product`.`p_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_2`
--
DROP TABLE IF EXISTS `Q05_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q05_2`  AS  select `Product`.`p_id` AS `p_id`,`Product`.`p_type` AS `p_type`,max((`ProductDetail`.`pd_Price` + (`ProductDetail`.`pd_screen` * 2))) AS `Price_unite`,max(((`ProductDetail`.`pd_Price` + (`ProductDetail`.`pd_screen` * 2)) * 50)) AS `Price_sum` from (`Product` join `ProductDetail` on((`Product`.`p_id` = `ProductDetail`.`pd_code`))) where (`ProductDetail`.`pd_Qty` <= 100) group by `Product`.`p_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_3`
--
DROP TABLE IF EXISTS `Q05_3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q05_3`  AS  select `Product`.`p_id` AS `p_id`,`Product`.`p_type` AS `p_type`,max((`ProductDetail`.`pd_Price` + (`ProductDetail`.`pd_screen` * 3))) AS `Price_unite`,max(((`ProductDetail`.`pd_Price` + (`ProductDetail`.`pd_screen` * 3)) * 400)) AS `Price_sum` from (`Product` join `ProductDetail` on((`Product`.`p_id` = `ProductDetail`.`pd_code`))) where (`ProductDetail`.`pd_Qty` = 500) group by `Product`.`p_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_4`
--
DROP TABLE IF EXISTS `Q05_4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q05_4`  AS  select `Product`.`p_id` AS `p_id`,`Product`.`p_type` AS `p_type`,max((`ProductDetail`.`pd_Price` * 1)) AS `Price_unite`,max(((`ProductDetail`.`pd_Price` * 1) * 1000)) AS `Price_sum` from (`Product` join `ProductDetail` on((`Product`.`p_id` = `ProductDetail`.`pd_code`))) where (`ProductDetail`.`pd_Qty` > 800) group by `Product`.`p_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_5`
--
DROP TABLE IF EXISTS `Q05_5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q05_5`  AS  select `Product`.`p_id` AS `p_id`,`Product`.`p_type` AS `p_type`,max((`ProductDetail`.`pd_Price` + (`ProductDetail`.`pd_screen` * 2))) AS `Price_unite`,max(((`ProductDetail`.`pd_Price` + (`ProductDetail`.`pd_screen` * 2)) * 1000)) AS `Price_sum` from (`Product` join `ProductDetail` on((`Product`.`p_id` = `ProductDetail`.`pd_code`))) where (`ProductDetail`.`pd_Qty` > 800) group by `Product`.`p_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q06_1`
--
DROP TABLE IF EXISTS `Q06_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q06_1`  AS  select `detailOrder`.`d_code` AS `d_code`,`Product`.`p_type` AS `p_type`,`detailOrder`.`or_color` AS `or_color`,`Product`.`p_type1` AS `p_type1`,`Product`.`p_qty` AS `p_qty`,count(`detailOrder`.`d_code`) AS `round`,sum(`detailOrder`.`or_quantityAll`) AS `total`,if(((sum(`detailOrder`.`or_quantityAll`) - `Product`.`p_qty`) < 0),0,(sum(`detailOrder`.`or_quantityAll`) - `Product`.`p_qty`)) AS `add_more` from (`detailOrder` join `Product` on((`detailOrder`.`d_code` = `Product`.`p_id`))) group by `detailOrder`.`d_code`,`detailOrder`.`or_color` ;

-- --------------------------------------------------------

--
-- Structure for view `Q07_1`
--
DROP TABLE IF EXISTS `Q07_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q07_1`  AS  select `Product`.`p_id` AS `p_id`,`Product`.`p_type` AS `p_type`,`Product`.`p_type1` AS `p_type1`,count(`detailOrder`.`d_code`) AS `ColorTotal`,if(isnull(sum(`detailOrder`.`or_quantityAll`)),0,sum(`detailOrder`.`or_quantityAll`)) AS `Total` from (`Product` join `detailOrder` on((`Product`.`p_id` = `detailOrder`.`d_code`))) group by `Product`.`p_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q08`
--
DROP TABLE IF EXISTS `Q08`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q08`  AS  select `Q06_1`.`d_code` AS `d_code`,`Q06_1`.`p_type` AS `p_type`,`Q06_1`.`or_color` AS `or_color`,`Q06_1`.`p_qty` AS `p_qty`,`Q06_1`.`total` AS `total`,`Q06_1`.`add_more` AS `add_more` from `Q06_1` ;

-- --------------------------------------------------------

--
-- Structure for view `Q09`
--
DROP TABLE IF EXISTS `Q09`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q09`  AS  select `ใบเสนอ`.`no1` AS `no1`,`ColorProduct`.`cp_code` AS `cp_code`,`ใบเสนอ`.`n_pcolor` AS `n_pcolor`,`ใบเสนอ`.`n_pจำนวน` AS `n_pจำนวน`,max((`ProductDetail`.`pd_Price` + ((`ใบเสนอ`.`n_pscreen` - 1) * `ProductDetail`.`pd_screen`))) AS `ราคาต่อชิ้นรวมสกรีน`,max(((`ProductDetail`.`pd_Price` * `ใบเสนอ`.`n_pจำนวน`) + ((`ใบเสนอ`.`n_pจำนวน` * (`ใบเสนอ`.`n_pscreen` - 1)) * `ProductDetail`.`pd_screen`))) AS `Total` from ((`ใบเสนอ` join `ColorProduct` on((`ใบเสนอ`.`n_pid` = `ColorProduct`.`cp_code`))) join `ProductDetail` on((`ProductDetail`.`pd_code` = `ColorProduct`.`cp_code`))) where ((`ProductDetail`.`pd_Qty` >= `ใบเสนอ`.`n_pจำนวน`) or (`ProductDetail`.`pd_Qty` > 800)) group by `ใบเสนอ`.`no1`,`ColorProduct`.`cp_code`,`ใบเสนอ`.`n_pจำนวน`,`ใบเสนอ`.`n_pcolor` ;

-- --------------------------------------------------------

--
-- Structure for view `Q10`
--
DROP TABLE IF EXISTS `Q10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q10`  AS  select `Q06_1`.`d_code` AS `d_code`,`Q06_1`.`p_type` AS `p_type`,`Q06_1`.`or_color` AS `or_color`,`Q06_1`.`total` AS `total`,if(isnull(sum(`ใบเสนอ`.`n_pจำนวน`)),0,sum(`ใบเสนอ`.`n_pจำนวน`)) AS `รวมใบเสนอ` from (`Q06_1` left join `ใบเสนอ` on((`ใบเสนอ`.`n_pid` = `Q06_1`.`d_code`))) group by `Q06_1`.`d_code`,`Q06_1`.`p_type`,`Q06_1`.`or_color` ;

-- --------------------------------------------------------

--
-- Structure for view `Q11`
--
DROP TABLE IF EXISTS `Q11`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q11`  AS  select `customer_order`.`id_order` AS `id_order`,`customer_order`.`date` AS `วันที่`,`customer`.`c_Fname` AS `ชื่อลูกค้า`,sum(`Q09`.`Total`) AS `ราคารวม`,(sum(`Q09`.`Total`) * 1.07) AS `ราคารวมvat`,((sum(`Q09`.`Total`) * 1.07) * (`customer_order`.`condition` / 100)) AS `เงินมัดจำ` from ((`customer_order` left join `customer` on((`customer`.`c_id` = `customer_order`.`id_cus`))) left join `Q09` on((`Q09`.`no1` = `customer_order`.`id_order`))) group by `customer_order`.`id_order`,`customer_order`.`date`,`customer`.`c_Fname`,`customer_order`.`condition` ;

-- --------------------------------------------------------

--
-- Structure for view `Q12`
--
DROP TABLE IF EXISTS `Q12`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q12`  AS  select `staff`.`s_name` AS `s_name`,count(`Q11`.`id_order`) AS `จำนวนใบเสนอราคา`,sum(`Q11`.`ราคารวม`) AS `ยอดขายรวม` from ((`staff` join `customer_order` on((`customer_order`.`Staff_id` = `staff`.`s_id`))) join `Q11` on((`customer_order`.`id_order` = `Q11`.`id_order`))) group by `customer_order`.`Staff_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q13`
--
DROP TABLE IF EXISTS `Q13`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q13`  AS  select `status_conform`.`name_st_c` AS `name_st_c`,count(`status_conform`.`id_st_c`) AS `รายการสถานะ` from ((`Stastus_track` join (select `Stastus_track`.`id_ordercus` AS `id_ordercus`,max(`Stastus_track`.`date_track`) AS `status_date` from `Stastus_track` group by `Stastus_track`.`id_ordercus`) `tracking` on(((`Stastus_track`.`id_ordercus` = `tracking`.`id_ordercus`) and (`Stastus_track`.`date_track` = `tracking`.`status_date`)))) join `status_conform` on((`Stastus_track`.`id_st_c` = `status_conform`.`id_st_c`))) group by `status_conform`.`name_st_c` ;

-- --------------------------------------------------------

--
-- Structure for view `Q14`
--
DROP TABLE IF EXISTS `Q14`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q14`  AS  select `Stastus_track`.`id_ordercus` AS `id_ordercus`,`Stastus_track`.`date_track` AS `date_track`,`status_conform`.`name_st_c` AS `name_st_c` from (`Stastus_track` join `status_conform` on((`Stastus_track`.`id_st_c` = `status_conform`.`id_st_c`))) order by `Stastus_track`.`id_ordercus`,`Stastus_track`.`date_track` ;

-- --------------------------------------------------------

--
-- Structure for view `Q15`
--
DROP TABLE IF EXISTS `Q15`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q15`  AS  select `Stastus_track`.`id_ordercus` AS `id_ordercus`,`Stastus_track`.`date_track` AS `date_track`,`status_conform`.`name_st_c` AS `name_st_c` from ((`Stastus_track` join (select `Stastus_track`.`id_ordercus` AS `id_ordercus`,max(`Stastus_track`.`date_track`) AS `status_date` from `Stastus_track` group by `Stastus_track`.`id_ordercus`) `tracking` on(((`Stastus_track`.`id_ordercus` = `tracking`.`id_ordercus`) and (`Stastus_track`.`date_track` = `tracking`.`status_date`)))) join `status_conform` on((`Stastus_track`.`id_st_c` = `status_conform`.`id_st_c`))) order by `Stastus_track`.`id_ordercus` ;

-- --------------------------------------------------------

--
-- Structure for view `Q16`
--
DROP TABLE IF EXISTS `Q16`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q16`  AS  select `Q11`.`id_order` AS `id_order`,`Q11`.`ราคารวมvat` AS `ยอดชำระ`,(`Q11`.`ราคารวมvat` - `Q11`.`เงินมัดจำ`) AS `ยอดค้างชำระ` from (`Q11` join `close_order` on((`close_order`.`co_id` = `Q11`.`id_order`))) group by `Q11`.`id_order` ;

-- --------------------------------------------------------

--
-- Structure for view `Q17`
--
DROP TABLE IF EXISTS `Q17`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q17`  AS  select `Q09`.`no1` AS `no1`,`Q09`.`cp_code` AS `cp_code`,`Product`.`p_type` AS `p_type`,`Q09`.`n_pcolor` AS `n_pcolor`,`Q09`.`n_pจำนวน` AS `n_pจำนวน`,ceiling((((100 + `Stastus_track_detail`.`STA_Percent`) * `Q09`.`n_pจำนวน`) / 100)) AS `จำนวนที่ผลิต` from ((`Q09` join `Product` on((`Q09`.`cp_code` = `Product`.`p_id`))) join `Stastus_track_detail` on((`Q09`.`no1` = `Stastus_track_detail`.`status_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `Q18`
--
DROP TABLE IF EXISTS `Q18`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q18`  AS  select `Product`.`p_id` AS `p_id`,`Product`.`p_type` AS `p_type`,`ColorProduct`.`cp_color` AS `cp_color`,(ifnull(sum(`Qty`.`AA`),0) - ifnull(`C`.`A`,0)) AS `จำนวนคงเหลือ`,ifnull(`Qty1`.`BB`,0) AS `จำนวนระหว่างสั่งซื้อ`,ifnull(`C`.`A`,0) AS `จำนวนที่ผลิต` from (((((`stock` join `Product` on((`stock`.`stock_pid` = `Product`.`p_id`))) join `ColorProduct` on((`ColorProduct`.`cp_id` = `stock`.`stock_color`))) left join (select `procurment`.`stock_id` AS `stock_id`,`procurment`.`procur_qty` AS `AA` from `procurment` where (`procurment`.`procur_status` = 1)) `Qty` on((`Qty`.`stock_id` = `stock`.`stock_id`))) left join (select `procurment`.`stock_id` AS `stock_id`,`procurment`.`procur_qty` AS `BB` from `procurment` where (`procurment`.`procur_status` = 0)) `Qty1` on((`Qty1`.`stock_id` = `stock`.`stock_id`))) left join (select `stock`.`stock_id` AS `stock_id`,sum(`requotation`.`RQ_qty`) AS `A` from ((`stock` left join `ใบเสนอ` on((`ใบเสนอ`.`stock_id1` = `stock`.`stock_id`))) left join `requotation` on((`requotation`.`ใบเสนอ_id` = `ใบเสนอ`.`no_id`))) group by `stock`.`stock_id`) `C` on((`C`.`stock_id` = `stock`.`stock_id`))) group by `stock`.`stock_pid`,`Product`.`p_type`,`ColorProduct`.`cp_color`,`Qty1`.`BB`,`C`.`A` ;

-- --------------------------------------------------------

--
-- Structure for view `Q19`
--
DROP TABLE IF EXISTS `Q19`;
-- in use(#1046 - No database selected)

-- --------------------------------------------------------

--
-- Structure for view `Q20_1`
--
DROP TABLE IF EXISTS `Q20_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q20_1`  AS  select `Payment`.`PA_no` AS `PA_no`,`Payment`.`PA_date` AS `PA_date`,((`Q11`.`ราคารวมvat` * `Payment`.`PM_percent`) / 100) AS `ยอดชำระทั้งหมด` from (`Payment` join `Q11` on((`Q11`.`id_order` = `Payment`.`PA_no`))) order by `Payment`.`PA_no` ;

-- --------------------------------------------------------

--
-- Structure for view `Q21`
--
DROP TABLE IF EXISTS `Q21`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q21`  AS  select `Q17`.`cp_code` AS `cp_code`,`Q17`.`p_type` AS `p_type`,sum(`Q17`.`จำนวนที่ผลิต`) AS `จำนวนที่ผลิตเสร็จทั้งหมด`,`Q`.`A` AS `จำนวนที่จัดส่ง` from ((`Q17` join `Deliverry_product` on((`Deliverry_product`.`Dp_no1` = `Q17`.`no1`))) join (select `Q17`.`cp_code` AS `cp_code`,`Q17`.`p_type` AS `p_type`,sum(`Q17`.`จำนวนที่ผลิต`) AS `A` from (`Q17` join `Deliverry_product` on((`Deliverry_product`.`Dp_no1` = `Q17`.`no1`))) where (`Deliverry_product`.`Dp_detail` = 'จัดส่งแล้ว') group by `Q17`.`cp_code`,`Q17`.`p_type`) `Q` on((`Q17`.`cp_code` = `Q`.`cp_code`))) group by `Q17`.`cp_code`,`Q17`.`p_type` ;

-- --------------------------------------------------------

--
-- Structure for view `Q22`
--
DROP TABLE IF EXISTS `Q22`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q22`  AS  select `Q11`.`id_order` AS `id_order`,`Q11`.`ราคารวมvat` AS `ราคารวมvat`,ifnull(sum(((`Q11`.`ราคารวมvat` * `Payment`.`PA_date`) / 100)),0) AS `ยอดชำระแล้ว`,(`Q11`.`ราคารวมvat` - round(ifnull(sum(((`Q11`.`ราคารวมvat` * `Payment`.`PM_percent`) / 100)),0),2)) AS `ยอดค้างจ่าย` from ((`Q11` join `customer_order` on((`customer_order`.`id_order` = `Q11`.`id_order`))) left join `Payment` on((`Payment`.`PA_no` = `customer_order`.`id_order`))) where (`customer_order`.`เงื่อนไข` = 'อนุมัติ') group by `Q11`.`id_order` ;

-- --------------------------------------------------------

--
-- Structure for view `Q23`
--
DROP TABLE IF EXISTS `Q23`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_021`@`%` SQL SECURITY DEFINER VIEW `Q23`  AS  select `Q09`.`no1` AS `no1`,`Product`.`p_id` AS `p_id`,`Product`.`p_type` AS `p_type`,sum(`Q09`.`n_pจำนวน`) AS `จำนวนขาย`,sum(((`Q09`.`n_pจำนวน` * `Stastus_track_detail`.`STA_Percent`) / 100)) AS `จำนวนเผื่อ`,sum(`Q09`.`Total`) AS `ราคาขายรวม` from (((`Q09` join `Product` on((`Q09`.`cp_code` = `Product`.`p_id`))) join `Stastus_track_detail` on((`Q09`.`no1` = `Stastus_track_detail`.`status_id`))) join `Deliverry_product` on((`Deliverry_product`.`Dp_no1` = `Q09`.`no1`))) where (`Deliverry_product`.`ชำระเงิน` = 'ครบแล้ว') group by `Q09`.`no1`,`Product`.`p_id`,`Product`.`p_type` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `close_order`
--
ALTER TABLE `close_order`
  ADD PRIMARY KEY (`co_id`),
  ADD KEY `co_id` (`co_id`);

--
-- Indexes for table `ColorProduct`
--
ALTER TABLE `ColorProduct`
  ADD PRIMARY KEY (`cp_id`),
  ADD KEY `cp_code` (`cp_code`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_cus` (`id_cus`),
  ADD KEY `Staff_id` (`Staff_id`);

--
-- Indexes for table `Deliverry_product`
--
ALTER TABLE `Deliverry_product`
  ADD PRIMARY KEY (`Dp_id`),
  ADD KEY `Dp_no1` (`Dp_no1`);

--
-- Indexes for table `detailOrder`
--
ALTER TABLE `detailOrder`
  ADD PRIMARY KEY (`or_id`),
  ADD KEY `d_code` (`d_code`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`PA_id`),
  ADD KEY `PA_no` (`PA_no`);

--
-- Indexes for table `procurment`
--
ALTER TABLE `procurment`
  ADD PRIMARY KEY (`procur_id`),
  ADD KEY `procur_n_pid` (`procur_n_pid`),
  ADD KEY `procur_color` (`procur_color`),
  ADD KEY `stock_id` (`stock_id`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `ProductDetail`
--
ALTER TABLE `ProductDetail`
  ADD PRIMARY KEY (`pd_id`),
  ADD KEY `pd_code` (`pd_code`),
  ADD KEY `Max_qty` (`Max_qty`);

--
-- Indexes for table `requotation`
--
ALTER TABLE `requotation`
  ADD PRIMARY KEY (`RQ_id`),
  ADD KEY `RQ_no` (`RQ_no`),
  ADD KEY `RQ_n_pid` (`RQ_n_pid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `Stastus_track`
--
ALTER TABLE `Stastus_track`
  ADD PRIMARY KEY (`id_track`),
  ADD KEY `id_ordercus` (`id_ordercus`),
  ADD KEY `id_st_c` (`id_st_c`);

--
-- Indexes for table `Stastus_track_detail`
--
ALTER TABLE `Stastus_track_detail`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `status_conform`
--
ALTER TABLE `status_conform`
  ADD PRIMARY KEY (`id_st_c`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `stock_pid` (`stock_pid`),
  ADD KEY `stock_color` (`stock_color`);

--
-- Indexes for table `ใบเสนอ`
--
ALTER TABLE `ใบเสนอ`
  ADD PRIMARY KEY (`no_id`),
  ADD KEY `n_staff` (`n_staff`),
  ADD KEY `n_customer` (`n_customer`),
  ADD KEY `no1` (`no1`),
  ADD KEY `no1_2` (`no1`),
  ADD KEY `n_customer_2` (`n_customer`),
  ADD KEY `n_staff_2` (`n_staff`),
  ADD KEY `n_pid` (`n_pid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `close_order`
--
ALTER TABLE `close_order`
  ADD CONSTRAINT `Close` FOREIGN KEY (`co_id`) REFERENCES `customer_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ColorProduct`
--
ALTER TABLE `ColorProduct`
  ADD CONSTRAINT `ColorProduct_ibfk_1` FOREIGN KEY (`cp_code`) REFERENCES `Product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`id_cus`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Deliverry_product`
--
ALTER TABLE `Deliverry_product`
  ADD CONSTRAINT `Delivery` FOREIGN KEY (`Dp_no1`) REFERENCES `customer_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detailOrder`
--
ALTER TABLE `detailOrder`
  ADD CONSTRAINT `detailOrder_ibfk_1` FOREIGN KEY (`d_code`) REFERENCES `Product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `Payment` FOREIGN KEY (`PA_no`) REFERENCES `customer_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `procurment`
--
ALTER TABLE `procurment`
  ADD CONSTRAINT `procurment` FOREIGN KEY (`procur_n_pid`) REFERENCES `Product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ProductDetail`
--
ALTER TABLE `ProductDetail`
  ADD CONSTRAINT `ProductDetail_ibfk_1` FOREIGN KEY (`pd_code`) REFERENCES `Product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `requotation`
--
ALTER TABLE `requotation`
  ADD CONSTRAINT `requotation` FOREIGN KEY (`RQ_no`) REFERENCES `customer_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `requotation2` FOREIGN KEY (`RQ_n_pid`) REFERENCES `Product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Stastus_track`
--
ALTER TABLE `Stastus_track`
  ADD CONSTRAINT `Stastus_track_ibfk_1` FOREIGN KEY (`id_ordercus`) REFERENCES `customer_order` (`id_order`),
  ADD CONSTRAINT `Stastus_track_ibfk_2` FOREIGN KEY (`id_st_c`) REFERENCES `status_conform` (`id_st_c`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Stastus_track_detail`
--
ALTER TABLE `Stastus_track_detail`
  ADD CONSTRAINT `Stastus_track_detail_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `customer_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Stastus_track_detail_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `staff` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock` FOREIGN KEY (`stock_color`) REFERENCES `ColorProduct` (`cp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock2` FOREIGN KEY (`stock_pid`) REFERENCES `Product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ใบเสนอ`
--
ALTER TABLE `ใบเสนอ`
  ADD CONSTRAINT `ใบเสนอ_ibfk_1` FOREIGN KEY (`n_customer`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ใบเสนอ_ibfk_2` FOREIGN KEY (`no1`) REFERENCES `customer_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ใบเสนอ_ibfk_3` FOREIGN KEY (`n_pid`) REFERENCES `Product` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ใบเสนอ_ibfk_4` FOREIGN KEY (`n_staff`) REFERENCES `staff` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
