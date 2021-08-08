-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2021 at 09:57 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(0, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(2, 'Fruits', 1),
(3, 'Bakery', 1),
(5, 'Local products', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(9, 'Sybil Albert', 'sepuzepiq@mailinator.com', 'zeqored@mailina', 'Cupidatat ex omnis e', '2020-12-20 04:13:10'),
(10, 'shankar bc', 'super@admin.com', '9848758455', 'i m poor', '2020-12-26 09:11:18'),
(11, 'cake', 'super@admin.com', '989848754', 'fewfewfefewfew', '2021-02-04 12:43:05'),
(12, 'Felix Charles', 'zydij@mailinator.com', 'lorykumig@maili', 'Velit labore duis ip', '2021-04-10 06:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Receivername` varchar(255) NOT NULL,
  `Phonenumber` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `Receivername`, `Phonenumber`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `added_on`) VALUES
(8, 8, '', '', 'maitidevi kathmandu', 'kathmandu', 44605, 'COD', 350, 'pending', 3, '2020-12-26 02:01:12'),
(9, 8, '', '', 'kohalpur', 'nepalgunj', 14000, 'COD', 300, 'pending', 1, '2021-01-11 01:46:18'),
(10, 8, '', '', 'kohalpur', 'newroad', 8848, 'COD', 600, 'pending', 2, '2021-01-12 08:47:16'),
(11, 8, '', '', 'kohalpur', 'newroad', 45745415, 'COD', 600, 'pending', 2, '2021-01-13 07:25:59'),
(12, 17, 'shankar bc', '9844877591', 'maitidevi kathmandu', 'kathmandu', 44605, 'COD', 80, 'pending', 3, '2021-04-09 10:34:04'),
(14, 8, 'madan bhandari', '9844877591', 'maitidevi kathmandu', 'kathmandu', 44605, 'COD', 100, 'pending', 2, '2021-04-10 05:32:01'),
(15, 8, 'madan bhandari', '9844877591', 'maitidevi kathmandu', 'kathmandu', 44605, 'COD', 20, 'pending', 2, '2021-08-04 12:29:04'),
(16, 8, 'shankar bc', '9844877591', 'maitidevi kathmandu', 'kathmandu', 44605, 'COD', 100, 'pending', 1, '2021-08-04 12:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `added_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Cancelled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(9, 2, 'Maxine Barnett', 150, 120, 1, '360120005_green3.jpg', 'Dolore eligendi veri', 'A esse natus distin', 'Corporis aliquid et', '', 'Dolorem qui laboris', 1),
(10, 3, 'Egg-less Cake', 80, 50, 1, '452988860_photo-1578985545062-69928b1d9587.jpg', 'Egg-less cake', '100% organic products.', '', '', '', 1),
(11, 2, 'Banana', 120, 100, 1, '389858450_istockphoto-1184345169-612x612.jpg', 'Banana from Tikapur', 'organic products ...', '', '', '', 1),
(12, 5, 'Saag', 25, 20, 1, '497396165_images (1).jpg', 'vaaji ko saag ..', 'saag', '', '', '', 1),
(13, 5, 'Mushroom(chyaau)', 100, 80, 1, '224518652_mushrooms.jpg', '100% organic', 'Fruits and veggies are at the core of SNAP-Ed. Many SNAP-Ed programs work in Farmers\' Markets and promote produce. Nutrition educators do food demonstrations and hand out recipes. SNAP-Ed also partners with others to bring EBT to more markets. This supports local agriculture and makes produce more available in communities. SNAP-Ed nutrition education classes also teach kids and adults how to eat veggies.', '', '', '', 1),
(14, 3, 'Donot', 25, 20, 1, '905370970_unnamed.jpg', 'chemical free products', 'very tasty products..', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(120) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `added_on`) VALUES
(8, 'shankar bc', 'super@admin.com', '9844877591', 'admin123', '2020-12-20 04:22:52'),
(9, 'cake', 'zsnkr@yahoo.com', '1245151515', '@facebook', '2021-02-04 12:51:23'),
(10, 'cake', 'zsnkr1@yahoo.com', '1245151515', '@facebook', '2021-02-04 12:52:40'),
(11, 'super', 'zsnkr12@yahoo.com', '87785454', '343453453', '2021-02-04 12:53:54'),
(12, 'kamal', 'kamal1@gmail.com', '98748757', 'dasdadada', '2021-02-04 12:58:29'),
(13, 'kamal', 'kamal3@gmail.com', '98748757', 'dasdadada', '2021-02-04 01:01:23'),
(14, 'sailesh', 'sailesh@gmail.com', '9848032149', '9848032149', '2021-02-04 01:08:10'),
(15, 'sailesh', 'sailesh4@gmail.com', '9848032149', '9848032149', '2021-02-04 01:13:10'),
(16, 'sailesh', 'sailesh5@gmail.com', '9848032149', '9848032149', '2021-02-04 01:15:12'),
(17, 'madan', 'madan@gmail.com', '9865774215', '@password', '2021-04-09 10:25:47'),
(18, 'shankar b.c.', 'baba@gmail.com', '9844877591', '@123456', '2021-04-10 06:29:17'),
(19, 'Rhiannon Patton', 'quduqojal@mailinator.com', 'Qui mollit vita', 'Pa$$w0rd!', '2021-04-10 06:29:37'),
(20, 'Sandra Peterson', 'supajow@mailinator.com', 'Cumque ut rerum', 'Pa$$w0rd!', '2021-04-10 06:30:15'),
(21, 'Lynn Hughes', 'jofosobiv@mailinator.com', 'Voluptatem Volu', 'Pa$$w0rd!', '2021-04-10 06:39:32'),
(22, 'Shelley Gallagher', 'belupo@mailinator.com', 'Est culpa simil', 'Pa$$w0rd!', '2021-04-10 06:44:00'),
(23, 'Wilma Miles', 'wylyly@mailinator.com', 'Iure amet exped', 'Pa$$w0rd!', '2021-04-10 06:44:24'),
(24, 'Perry Mcguire', 'tinerime@mailinator.com', 'Voluptas dolore', 'Pa$$w0rd!', '2021-04-10 06:47:32'),
(25, 'Signe Ingram', 'dugibo@mailinator.com', 'Consequatur off', 'Pa$$w0rd!', '2021-04-10 07:02:23'),
(26, 'Aurora Berry', 'ziramu@mailinator.com', 'Itaque modi vol', 'Pa$$w0rd!', '2021-04-10 07:06:15'),
(27, 'Preston Alexander', 'detedew@mailinator.com', 'Possimus amet v', 'Pa$$w0rd!', '2021-04-10 09:44:29'),
(28, 'Graiden Lindsay', 'hojuj@mailinator.com', 'Aut ullamco vol', 'Pa$$w0rd!', '2021-04-10 09:46:11'),
(29, 'Madaline Cook', 'qoxij@mailinator.com', 'Anim aute autem', 'Pa$$w0rd!', '2021-04-10 09:47:33'),
(30, 'Inez Tyson', 'bomyjised@mailinator.com', 'Ipsa non repudi', 'Pa$$w0rd!', '2021-04-10 05:29:04'),
(31, 'Paloma Montgomery', 'bililufyzo@mailinator.com', 'Exercitationem ', 'Pa$$w0rd!', '2021-04-10 05:53:48'),
(32, 'Mannix Heath', 'sytisova@mailinator.com', 'Sed quidem qui ', 'Pa$$w0rd!', '2021-04-10 06:14:14'),
(33, 'Giacomo Vasquez', 'jivi@mailinator.com', 'Odio voluptas u', 'Pa$$w0rd!', '2021-04-10 06:16:25'),
(34, 'Emi Sutton', 'botagehab@mailinator.com', 'Odit dignissimo', 'Pa$$w0rd!', '2021-04-11 08:25:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id` (`categories_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
