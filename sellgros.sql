-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 12:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sellgros`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `bill_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `order_id`, `bill_date`) VALUES
('84xin20cv7', 'UlzcQN9VaD', '2022-07-12 23:12:54.000000'),
('bsUb0Ekn30', 'DqPO1LBzpW', '2022-07-12 23:09:41.000000'),
('D5XYxgbB5e', 'DqPO1LBzpW', '2022-07-12 23:09:47.000000'),
('ggiaDbcNxC', 'dlEaXkgrnf', '2022-07-12 23:09:36.000000'),
('JITOAO4BmL', 'dlEaXkgrnf', '2022-07-12 23:08:16.000000'),
('NRCqq8oRgS', 'BobKBZ4g5e', '2022-07-19 23:39:29.000000'),
('TJzNf5OLxX', 'Lmw9AC7JmX', '2022-08-04 12:15:52.000000'),
('uIU9Gmbgld', 'iz98Bua1G9', '2022-07-12 23:09:49.000000');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `bill_id` varchar(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`bill_id`, `product_id`, `quantity`, `price`) VALUES
('bsUb0Ekn30', 5066813, 2, 69),
('D5XYxgbB5e', 5066813, 2, 69),
('uIU9Gmbgld', 5066813, 1, 69),
('84xin20cv7', 5066813, 1, 69),
('NRCqq8oRgS', 3000477, 1, 70);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` int(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `region_id` varchar(100) NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `address`, `region_id`, `phone_no`, `username`, `password`, `full_name`) VALUES
('9HyEOocHx1', 'kundapur', 'UcuJilo220', '9019889049', 'nitesh', '388c6df5ce99c934d9c5f0bf29d758e4', 'nitesh'),
('Q13sTq2ZtI', 'kollor', '5D8adSi9ok', '7894561230', 'skanda', '4b0a0736be0cf5251fbcf4b19ce8de0d', 'skanda'),
('qgHnBEidu4', 'shankarnarayana', 'NPSqrS2YVz', '1234567890', 'vidya', '4dc13c8aa6371cbcb715d66f351ca293', 'VidyaB'),
('rQVL3SmWzg', 'kumta', 'RNssiKmr9y', '9739073123', 'saru', '98770eee7beefcb6c19bd2bf9e146f90', 'saru'),
('x3b20FEfPe', 'kumta', 'RNssiKmr9y', '9113909398', 'sarvesh', '9452f266332bbb5008b1321beff0ecf9', 'sarvesh');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `username` varchar(100) NOT NULL,
  `dealer_id` varchar(100) NOT NULL,
  `licence_id` varchar(100) NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `region_id` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dealer_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`username`, `dealer_id`, `licence_id`, `phone_no`, `address`, `region_id`, `status`, `dealer_name`, `password`) VALUES
('sarvesh', 'C6bQk6BfGx', '4gfdghfh', 'gh45y5456', '546546', 'RNssiKmr9y', 'approve', '5465465', '3edf7bcfc0c8b215c82e54d4d3f2b805'),
('vidya', 'e5wnbU5tB8', 'vidya1234', '8310707884', 'kundapur', 'UcuJilo220', 'pending', 'vidya', '4dc13c8aa6371cbcb715d66f351ca293'),
('adarsh', 'FwXdmTjI4W', 'abcd', '9113908112', 'dmeklrmdkslmelkm', 'RNssiKmr9y', 'reject', 'mklsdmfkdmslkfsd', '97d9de758e20f8e5a74c21ba389fb562'),
('dealer', 'ZsROPWB4rl', 'dealer', '933939393', 'dealeraddr', 'RNssiKmr9y', 'approve', 'dealer', '040ec1ee950ffc53291f6df0ffc30325');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` varchar(100) NOT NULL,
  `feedback` varchar(1000) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `feedback_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback`, `customer_id`, `order_id`, `feedback_date`) VALUES
('GjZc5Ddde9', '4545', 'x3b20FEfPe', 'BobKBZ4g5e', '2022-07-24 10:17:26.000000'),
('WBjRkS6mCD', 'super', 'x3b20FEfPe', 'dlEaXkgrnf', '2022-07-29 16:07:08.000000'),
('Zi7JHdtMD3', 'ok very bad product 0/10', 'x3b20FEfPe', 'DqPO1LBzpW', '2022-07-19 23:56:04.000000');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `dealer_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `order_date`, `order_status`, `dealer_id`) VALUES
('BobKBZ4g5e', 'x3b20FEfPe', '2022-07-19 23:38:12.000000', 'processed', 'SymBYdexGu'),
('dlEaXkgrnf', 'x3b20FEfPe', '2022-07-07 00:03:53.000000', 'processed', 'ZsROPWB4rl'),
('DqPO1LBzpW', 'x3b20FEfPe', '2022-07-06 23:47:36.000000', 'processed', 'ZsROPWB4rl'),
('iz98Bua1G9', 'x3b20FEfPe', '2022-07-10 16:58:14.000000', 'processed', 'ZsROPWB4rl'),
('UlzcQN9VaD', 'x3b20FEfPe', '2022-07-12 23:12:38.000000', 'processed', 'ZsROPWB4rl'),
('zuwbZu7ZwZ', 'x3b20FEfPe', '2022-08-07 19:39:49.000000', 'pending', 'ZsROPWB4rl');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` varchar(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`, `price`) VALUES
('DqPO1LBzpW', 5066813, 2, 69),
('DqPO1LBzpW', 1184576, 1, 999),
('dlEaXkgrnf', 1184576, 1, 999),
('iz98Bua1G9', 1184576, 1, 999),
('iz98Bua1G9', 3, 1, 100),
('iz98Bua1G9', 5066813, 1, 69),
('UlzcQN9VaD', 5066813, 1, 69),
('BobKBZ4g5e', 3000477, 1, 70),
('zuwbZu7ZwZ', 2375929, 3, 80);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `stock` int(100) NOT NULL,
  `product_description` varchar(1000) NOT NULL,
  `product_unit` varchar(100) NOT NULL,
  `product_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price`, `stock`, `product_description`, `product_unit`, `product_status`) VALUES
(1, 'Thick Poha', 30, 500, 'Enjoy a deliciously wholesome and healthy snack with thick poha, High in fiber and Source of protein', '500g', 'inactive'),
(1323789, 'Red Label Tea', 250, 102, 'Blend of a tea rich in taste. Taste of togetherness and processed in the unique Brooke Bond Tea Excellence Center. The taste of Brooke Bond Red Label tea helps you spread warmth and cheer in your family.', '500g', 'active'),
(2289737, 'Urad Dal', 130, 500, 'Low fat and cholesterol\r\nRich in iron\r\nHelps lower sugar levels\r\nEasy to digest\r\nCountry of Origin: India', '1kg', 'active'),
(2375929, 'Basmati Rice ', 80, 50, 'basmati rice is a fine variety of basmati that you can relish every day. Specially aged to help every grain of basmati become long and fluffy. ', '1kg', 'active'),
(2689288, 'Bru Coffee', 160, 500, 'Bru Instant Coffee is a perfect mix of 70% coffee and 30% chicory.', '200g', 'active'),
(2700098, 'Turmeric Powder', 20, 500, 'HIGH IN CURCUMIN: Catch Turmeric Powder has a distinct colour, flavour and is high in curcumin content.\r\nSTRONG AROMA: Enrich your dishes with a strong aroma.', '200g', 'active'),
(2922695, 'Almond', 500, 500, '100% PURE CALIFORNIA ALMONDS (Whole): Choicest selection from California, handpicked nuts in every pack.', '500g', 'active'),
(3000477, 'Sunflower Oil', 190, 500, 'Good for the heart. Light and healthy that is easy to digest.', '1L', 'active'),
(3009489, 'Surf Excel', 150, 500, 'Its X-tra cleaning particles, combine the power of lemon& bleach to make it a perfect wash\r\nFor tough stains, pre-soak the garment in a solution of Surf excel Quick Wash for 30 mins\r\nRemoves various tough stains such as chocolate, oil, rasam, curry, soup, ketchup, and beverages', '1kg', 'active'),
(3763453, 'Ragi Flour', 70, 100, 'Rich in dietary fibre, source of protein and naturally gluten-free', '1kg', 'active'),
(3968707, 'Wheat flour', 65, 500, 'Atta is made using the 4-step advantage process which ensures 100% pure and natural whole wheat atta and retention of its natural dietary fibres and nutrients.', '1kg', 'active'),
(4232740, 'Cashews', 250, 500, '100% PURE PREMIUM CASHEWS (Whole): Choicest selection, handpicked nuts in every pack.', '200g', 'active'),
(4436867, 'Chilli Powder', 20, 500, 'Chilli Powder is made using the 4-step advantage process which ensures a high-quality chilli powder.', '100g', 'active'),
(4554679, 'Brown Channa ', 100, 100, 'Naturally Sourced and Processed and premium Quality Kala Chana/ Bengal Gram', '1kg', 'active'),
(4912298, 'Sona Masoori Rice', 30, 500, 'Hygienically packed in facility meeting food safety standards. Consistency in quality across the year. Processed and graded from aged paddy', '1kg', 'active'),
(4960505, 'Sugar', 50, 500, 'Enjoy the sweetness of traditional sugar with 50% less calories. This healthy alternative for normal sugar can be used for all kinds of food preparations.', '1kg', 'active'),
(5066813, 'Badam mix ', 120, 500, 'With real badam bits and real Kesar. Use with hot or cold milk', '100g', 'active'),
(5122848, 'Roasted Vermicelli', 20, 500, 'To prepare a creamy sweet kheer, a savory upma or vegetable pulao\r\nAll from 100 percent suji vermicelli', '200g', 'active'),
(5407698, 'Moong Dal', 120, 100, 'Cook a lip-smacking curry or experiment with a range of homemade dal recipes by bringing home the protein-rich Tata Sampann moong dal (Split). Unpolished and all-natural, this moong dal is a wholesome staple in the Indian diet that is quick to prepare and serve for a healthy meal at any time.', '1kg', 'active'),
(5797611, 'White Peas', 90, 100, 'Organic White peas. Eat Natural Live Healthy. Natureland’s White Peas are also known as vatana in some parts of India, mainly grown and harvested from Noth India and some parts of West India.', '500g', 'active'),
(6221213, 'Green Peas', 120, 500, '100% Naturally grown Daily Need Products For A Healthy And Energetic Life.', '500g', 'active'),
(6836788, 'Rice Flour', 50, 500, 'Premium-quality rice flour. Highly Versatile Suits Dosa, Appam and 100% Fresh & Hygienic', '1kg', 'active'),
(7158493, 'Maggi', 10, 500, 'Your favorite Maggi noodles are now loaded with the goodness of wheat flour (atta)\r\nMasala taste made using 20 spices and herbs roasted to perfection\r\nA source of iron and fiber, Maggi Nutri-Licious masala veg atta noodles is nutritious and delicious', '1Pack', 'active'),
(7421540, 'Toor Dal', 120, 500, '100% Organic, Unadulterated & Unpolished and rich in protein content. Organically grown without the use of any pesticides or fertilizers. Has a natural aroma and delicious taste when cooked', '1kg', 'active'),
(7803055, 'Paneer', 100, 500, 'Rich in Fibers and nutrients\r\nNo added preservatives | High in protein\r\n15 Months shelf life | Farm Food\r\nSufficient for 4 people', '450g', 'active'),
(8084999, 'American Sweet Corn', 70, 500, 'Freshness locked and nutrients retained at -18 degrees c\r\nIndividual quick freezing technology\r\nReady to cook\r\n', '500g', 'active'),
(8162933, 'Maida', 100, 500, 'Organic Food. Eat Natural Live Healthy. Natureland Organic Wheat Maida is a finely milled refined and bleached wheat flour, closely resembling cake flour.', '1kg', 'active'),
(8480001, 'Salt', 22, 100, 'Refined, iodized and potassium enriched, Aashirvaad Salt Proactive is a sodium-reduced salt that provides 15% lesser sodium than regular salt.', '1kg', 'active'),
(8562909, 'Chana Besan', 110, 50, 'The highest grade of chana daal is used for grinding Fortune Besan to ensure the finest taste of any recipe.', '1kg', 'active'),
(9090336, 'Mustard', 55, 500, ' 100% Vegan | Certified Organic | NO Additives\r\nNO Artificial Colors | NO Preservatives | Fresh, Clean, and sorted High-Quality', '200g', 'active'),
(9154566, 'Cumin Seeds', 30, 500, 'Rich and hearty, earthy and warm, with an edge of citrus, Cumin adds instant depth to any dish.', '100g', 'active'),
(9238222, 'Ghee', 500, 500, ' 100 % Pure Cow Ghee has the goodness of Vitamin A and helps boost immunity. Organic : No', '1L', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` varchar(100) NOT NULL,
  `region_name` varchar(100) NOT NULL,
  `pincode` int(6) NOT NULL,
  `region_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `pincode`, `region_status`) VALUES
('5D8adSi9ok', 'Shiroor', 576228, 'active'),
('DItpkKnWBa', 'Bhatkal', 581320, 'active'),
('FHVIQ5wctg', 'Bramavara', 576213, 'active'),
('NPSqrS2YVz', 'Udupi', 576102, 'active'),
('RNssiKmr9y', 'Kumta', 581343, 'active'),
('tu0lC1Je3a', 'Byndoor', 576214, 'active'),
('UcuJilo220', 'Kundapur', 576201, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `fk5` (`bill_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `fk` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`dealer_id`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `dealer_id` (`dealer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `fk5` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk6` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dealer`
--
ALTER TABLE `dealer`
  ADD CONSTRAINT `dealer_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk7` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk8` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
