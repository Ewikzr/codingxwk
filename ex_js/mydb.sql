-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2024 at 09:26 AM
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
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'เครื่องแต่งกาย'),
(2, 'เครื่องประดับ'),
(3, 'เครื่องใช้ไฟฟ้าและอิเล็กทรอนิกส์'),
(4, 'เฟอร์นิเจอร์และของตกแต่งบ้าน'),
(5, 'ของเล่นและของสะสม');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(15) NOT NULL,
  `total_price` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `image` text NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_date`, `user_id`, `category_id`, `product_name`, `price`, `image`, `description`) VALUES
(1, '2024-07-31', 1, 1, 'เสื้อเชิ้ตแขนสั้น', 120, 'http://localhost:3000/images/clothes_01.jpg', 'เสื้อเชิ้ตแขนสั้น ทรงหลวม ขนาดใหญ่ สีน้ําตาล สไตล์วินเทจ สําหรับผู้ชาย'),
(2, '2024-07-31', 1, 2, 'สร้อยคอผู้หญิง', 179, 'http://localhost:3000/images/necklace_01.jpg', 'สร้อยคอ แฟชั่น สไตล์พังก์เท่ห์ เครื่องประดับ แฟชั่น สำหรับผู้หญิง'),
(3, '2024-07-31', 1, 1, 'หมวกเบสบอล', 3480, 'http://localhost:3000/images/cap_01.jpg', 'หมวกเบสบอล แบบนิ่ม ปักNOTHING มี8สี คุณภาพสู สไตล์เกาหลี'),
(4, '2024-07-31', 1, 1, 'เสื้อครอป', 79, 'http://localhost:3000/images/clothes_02.jpg', 'เสื้อครอปเเขนสั้นสีนวลลายดอกไม้ สไตล์เกาหลี'),
(5, '2024-07-31', 1, 1, 'เสื้อกันแดดแขนยาว', 349, 'http://localhost:3000/images/clothes_03.jpg', 'เสื้อกันแดดแขนยาวสีขาว ผูกเน็คไทฝรั่งเศส'),
(6, '2024-07-31', 1, 1, 'เสื้อยืดแขนสั้น', 150, 'http://localhost:3000/images/clothes_04.jpg', 'CLIFF เสื้อยืดแขนสั้น ผ้าเรยอน ผ้าตาข่าย สไตล์อเมริกัน สตรีท สําหรับผู้ชาย'),
(7, '2024-07-31', 1, 1, 'หมวกแก๊ป', 87, 'http://localhost:3000/images/cap_02.jpg', 'หมวกแก๊ปสไตล์วินเทจ ปัก Los Angeles มี 6 สี'),
(8, '2024-07-31', 1, 2, 'สร้อยคอพร้อมจี้แหวน', 199, 'http://localhost:3000/images/necklace_02.jpg', 'เครื่องประดับ สร้อยคอพร้อมจี้แหวน สไตล์ฮิปฮอป ฮาราจูกุ สําหรับผู้ชาย และผู้หญิง'),
(9, '2024-07-31', 1, 3, 'เซียมซีอิเล็กทรอนิกส์', 425, 'http://localhost:3000/images/electronic_01.jpg', 'FutureKit FK190 เซียมซีอิเล็กทรอนิกส์'),
(10, '2024-07-31', 1, 3, 'ชุดซ่อมเฉพาะทาง', 425, 'http://localhost:3000/images/electronic_02.jpg', 'ชุดซ่อม DIY อุปกรณ์อิเล็กทรอนิกส์เฉพาะทาง(ชุดใหญ่)'),
(11, '2024-07-31', 1, 3, 'โถแก้วหม้ออบลมร้อน', 239, 'http://localhost:3000/images/electronic_03.jpg', 'อะไหล่โถแก้วหม้ออบลมร้อนขนาด12ลิตร'),
(12, '2024-07-31', 1, 4, 'ตู้เตาผิงมินิมอล', 979, 'http://localhost:3000/images/furniture_01.jpg', 'ตู้เตาผิงมินิมอลตกแต่งบ้าน(ขนาด80×80×25)'),
(13, '2024-07-31', 1, 5, 'โมเดลฟิกเกอร์', 1270, 'http://localhost:3000/images/toy_01.jpg', 'Boloni1 โมเดลฟิกเกอร์ PVC รูปดาบพิฆาตอสูร ของเล่น ของสะสม ของขวัญวันเกิด สําหรับตกแต่งเค้ก'),
(14, '2024-07-31', 1, 5, 'อาวุธเกมมายคราฟ', 470, 'http://localhost:3000/images/toy_02.jpg', 'อาวุธ มายคราฟ ดาบ พลั่ว Game Minecraft ของเล่นสะสม เท่มากก');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profile_picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `phone_number`, `username`, `password`, `profile_picture`) VALUES
(1, '0931751587', 'somporn', 'somporn777', 'http://localhost:3000/images/user_images/somporn.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_category` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
