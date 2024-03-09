-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 11:26 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(3, 'Pawan', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(59, 4, 5, 'Smartphone - SAMSUNG Galaxy S22', 799, 1, 'samsung-s22-1.png'),
(62, 5, 4, 'TV', 169, 1, 'tv-01.png'),
(63, 6, 4, 'TV', 169, 1, 'tv-01.png'),
(66, 7, 11, 'Mouse', 29, 1, 'mouse-1.png'),
(67, 7, 5, 'Smartphone - SAMSUNG Galaxy S22', 799, 3, 'samsung-s22-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 0, 'Pawan', 'pawan1@gmail.com', '4578963215', 'how are you?'),
(2, 1, 'Pawan', 'pawan1@gmail.com', '7798254623', 'I can&#39;t place my order.'),
(3, 3, 'Pravin', 'pravin@gmail.com', '8830566620', 'Can&#39;t proceed the payment.'),
(4, 5, 'Suraj', 'suraj@gmail.com', '4578521100', 'hello'),
(5, 1, 'Taiseen', 'hello@gmail.com', '7798031544', 'how'),
(6, 1, 'Pawan', 'pawan1@gmail.com', '5555663323', 'What is your name'),
(7, 10, 'Arayan', 'arayan@gmail.com', '7798031522', 'I&#39;m having a problem with viewing the product.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(3, 1, 'Pawan', '7798254623', 'pawan1@gmail.com', 'paytm', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 413004', 'tv (169 x 1) - laptop (459 x 1) - mouse (29 x 1) - ', 657, '2023-03-21', 'completed'),
(4, 1, 'Pawan', '7798035244', 'pawan1@gmail.com', 'paytm', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 413003', 'Smartphone - SAMSUNG Galaxy S22 (799 x 3) - ', 2397, '2023-03-22', 'completed'),
(5, 1, 'Pawan', '7798883056', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 41, kanna chowk, soalpur, maharashtra, India - 428225', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - TV (169 x 1) - ', 968, '2023-03-24', 'pending'),
(6, 3, 'pravin', '5245252552', 'pravin@gmail.com', 'cash on delivery', 'flat no. 44, tilask chowk, solapur, maharashtra, India - 524534', 'TV (169 x 2) - ', 338, '2023-03-27', 'completed'),
(7, 3, 'Pravin', '8830566620', 'pravin@gmail.com', 'cash on delivery', 'flat no. 20, tilak chowk, Solapur, Maharashtra, India - 432002', 'TV (169 x 3) - Laptop (459 x 1) - Apple iPhone 14 (999 x 1) - ', 1965, '2023-03-28', 'completed'),
(8, 3, 'Prav', '7798035622', 'pravin@gmail.com', 'cash on delivery', 'flat no. 20, tilak chowk, Solapur, Maharashtra, India - 413668', 'Watch (149 x 1) - ', 149, '2023-03-28', 'pending'),
(9, 3, 'pravin', '7798523660', 'pravin@gmail.com', 'cash on delivery', 'flat no. 28, tilak chowk, Solapur, Maharashtra, India - 498821', 'Camera (279 x 1) - ', 279, '2023-03-28', 'pending'),
(10, 3, 'Pravin', '7798356600', 'pravin@gmail.com', 'cash on delivery', 'flat no. 29, tilak chowk, Solapur, Maharashtra, India - 154499', 'Mixer (129 x 1) - ', 129, '2023-03-28', 'pending'),
(11, 1, 'Pawan', '7798552266', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(12, 1, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Watch (149 x 1) - ', 149, '2023-03-28', 'pending'),
(13, 1, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Mouse (29 x 1) - ', 29, '2023-03-28', 'pending'),
(14, 1, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Fridge (789 x 1) - ', 789, '2023-03-28', 'pending'),
(15, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Apple iPhone 14 (999 x 1) - ', 999, '2023-03-28', 'pending'),
(16, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Watch (149 x 1) - ', 149, '2023-03-28', 'pending'),
(17, 3, 'Pravin', '7896532098', 'pravin@gmail.com', 'cash on delivery', 'flat no. 23, tilak chowk, Solapur, Maharashtra, India - 413562', 'Watch (149 x 1) - ', 149, '2023-03-28', 'pending'),
(18, 3, 'Pravin', '7899652097', 'pawan92@gmail.com', 'cash on delivery', 'flat no. 23, tilak chowk, Solapur, Maharashtra, India - 789632', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(19, 3, 'Pravin', '7986531656', 'pravin@gmail.com', 'cash on delivery', 'flat no. 23, tilak chowk, Solapur, Maharashtra, India - 789653', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(20, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'TV (169 x 1) - ', 169, '2023-03-28', 'pending'),
(21, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(22, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Fridge (789 x 1) - ', 789, '2023-03-28', 'pending'),
(23, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(24, 3, 'Pawan', '8787121242', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Watch (149 x 1) - ', 149, '2023-03-28', 'pending'),
(25, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(26, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Washing Machine (199 x 1) - ', 199, '2023-03-28', 'pending'),
(27, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'TV (169 x 1) - ', 169, '2023-03-28', 'pending'),
(28, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Watch (149 x 1) - ', 149, '2023-03-28', 'pending'),
(29, 3, 'Pawan', '7798523002', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(30, 3, 'Pravin', '7798256300', 'pravin@gmail.com', 'cash on delivery', 'flat no. 23, tilak chowk, Solapur, Maharashtra, India - 786332', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(31, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(32, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Watch (149 x 1) - ', 149, '2023-03-28', 'pending'),
(33, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Camera (279 x 1) - ', 279, '2023-03-28', 'pending'),
(34, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Apple iPhone 14 (999 x 1) - ', 999, '2023-03-28', 'pending'),
(35, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Watch (149 x 1) - ', 149, '2023-03-28', 'pending'),
(36, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Mixer (129 x 1) - ', 129, '2023-03-28', 'pending'),
(37, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(38, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Watch (149 x 1) - ', 149, '2023-03-28', 'pending'),
(39, 3, 'Pravin', '7798526311', 'pravin@gmail.com', 'cash on delivery', 'flat no. 26, tilak chowk, Solapur, Maharashtra, India - 785632', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(40, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Watch (149 x 1) - ', 149, '2023-03-28', 'pending'),
(41, 3, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Watch (149 x 1) - ', 149, '2023-03-28', 'pending'),
(42, 3, 'Pravin', '5522441166', 'pravin@gmail.com', 'cash on delivery', 'flat no. 29, tilak chowk, Solapur, Maharashtra, India - 555555', 'Camera (279 x 1) - ', 279, '2023-03-28', 'pending'),
(43, 3, 'Pravin', '5578554222', 'pravin@gmail.com', 'cash on delivery', 'flat no. 23, tilak chowk, Solapur, Maharashtra, India - 451332', 'TV (169 x 1) - ', 169, '2023-03-28', 'pending'),
(44, 4, 'Taiseen', '5577899666', 'taiseen@gmail.com', 'cash on delivery', 'flat no. 29, tilak chowk, Solapur, Maharashtra, India - 451330', 'Watch (149 x 1) - Camera (279 x 1) - ', 428, '2023-03-28', 'pending'),
(45, 5, 'Suraj', '7798034522', 'suraj@gmail.com', 'cash on delivery', 'flat no. 45, tilak chowk, Solapur, Maharashtra, India - 254555', 'TV (169 x 3) - ', 507, '2023-03-28', 'completed'),
(46, 5, 'Pawan', '7030683086', 'pravin@gmail.com', 'credit card', 'flat no. 29, tilak chowk, Solapur, Maharashtra, India - 413004', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 799, '2023-03-28', 'pending'),
(47, 7, 'om', '7798034500', 'om@gmail.com', 'cash on delivery', 'flat no. 21, tilak chowk, Solapur, Maharashtra, India - 413004', 'Laptop (459 x 1) - ', 459, '2023-04-04', 'completed'),
(48, 1, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - TV (169 x 1) - ', 968, '2023-05-02', 'pending'),
(49, 3, 'Pravin vaggu ', '5599668866', 'vaggupravin903@gmail.com', 'cash on delivery', 'flat no. 27, Tilak Nagar , Mumbai , Mh, Ind - 415004', 'TV (169 x 1) - Smartphone - SAMSUNG Galaxy S22 (799 x 1) - ', 968, '2023-05-11', 'pending'),
(50, 1, 'Pawan', '0779855226', 'pawan1@gmail.com', 'cash on delivery', 'flat no. 42, tilak chowk, solapur, maharashtra, India - 889966', 'Smartphone - SAMSUNG Galaxy S22 (799 x 1) - Laptop (459 x 1) - Apple iPhone 14 (999 x 1) - ', 2257, '2023-05-12', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(4, 'TV', 'Resolution: HD Ready (1366x768) | Refresh Rate: 60 hertz\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 2 USB ports to connect hard drives and other USB devices, Dimensions(TV With Stand) - 71.3cm*20cm*46.9cm, VESA Hole Pitch - 20cm*20cm\r\nSound : 20 Watts Output | Dolby Audio\r\nSmart TV Features: Android TV 9.0 | OnePlus Connect | Google Assistant | Play Store | Chromecast | Shared Album | Supported Apps : Netflix, YouTube, Prime video | Content Calendar | O', 169, 'tv-01.png', 'tv-02.png', 'tv-03.png'),
(5, 'Smartphone - SAMSUNG Galaxy S22', 'Display: 6.1 inches (15.39 cm), AMOLED, 120 Hz Refresh Rate\r\nMemory: 8GB RAM, 256GB ROM\r\nProcessor: Qualcomm Snapdragon, Octa Core, 2.4 GHz\r\nCamera: 12 MP + 50 MP + 10 MP Triple Rear & 10 MP Front Camera\r\nBattery: 3700 mAh with 25W Fast Charging\r\nSecurity (Lock): Password | Pattern | PIN | Fingerprint Sensor | Face Unlock', 799, 'samsung-s22-1.png', 'samsung-s22-2.png', 'samsung-s22-3.png'),
(6, 'Watch', 'Dial Color: Blue, Case Shape: Round; Watch Movement Type: Quartz, Watch Display Type: Analog\r\nBand Color: Blue, Band Material: Alloy+AM12\r\nCase Material: Alloy, Case Diameter: 35 millimeters\r\n6 months manufacturer warranty on manufacturing defects\r\nDial Window Material Type: Acrylic; Warranty Type: Contact Seller Of Record; Bezel Function: No Bezel Available; Case Material Type: Alloy Steel', 149, 'watch-1.png', 'watch-2.png', 'watch-3.png'),
(7, 'Camera', 'Sensor: APS-C CMOS Sensor with 24.1 MP (high resolution for large prints and image cropping). Transmission frequency (central frequency):Frequency: 2 412 to 2 462MHz. Standard diopter :-2.5 - +0.5m-1 (dpt);ISO: 100-6400 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: DIGIC 4+ with 9 autofocus points (important for speed and accuracy of autofocus and burst photography);Video Resolution: Full HD video with fully manual control and selectabl', 279, 'camera-1.png', 'camera-2.png', 'camera-3.png'),
(8, 'Laptop', 'Processor: 4th Gen Intel celeron N4020 | Speed: 1.1 GHz (Base) - 2.8 GHz (Max) | 2 Cores | 4 MB Cache\r\nDisplay: 15.6&#34; HD (1366x768)| TN Technology | 220Nits Brightness Anti Glare\r\nMemory and Storage: 8GB RAM DDR4-2400 | 256 GB SSD\r\nOS and Software: Windows 11 Home 64 | Office Home and Student 2021 | Xbox GamePass Ultimate 3-month subscription*\r\nDesign: 1.99 cm Thin and 1.7 kg Light, Narrow Bezel, Battery Life: 11 Hours, Rapid Charge (Up to 80% in 1 Hour)\r\nCamera (Built-in): 720 MP with Priva', 459, 'laptop-1.png', 'laptop-2.png', 'laptop-3.png'),
(9, 'Mixer', 'Grinds Faster. Grinds in Larger Quantity; Easy Mix; Easy to clean Single leaf blades\r\nTECHNICAL SPECIFICATIONS: Wattage: 800 W; Operating voltage: 220-240 V; Jar sizes: 0.5L, 1L and 1.5L.Non-slip Feet : Yes\r\nSUPERIOR COMPONENTS: Heavy duty Powertron Motor, Ergonomic knob and Firm cushion pads\r\nDESIGN: Ergonomic handle design for firm grip, leak-proof lids, flow breaker jars and motor vent-X technology for enhanced air circulation', 129, 'mixer-1.png', 'mixer-2.jpeg', 'mixer-3.jpeg'),
(10, 'Fridge', 'The star rating changes are as per BEE guidelines on or before 1st Jan 2023\r\nPrecise Temperature and Humidity Control with Adaptive Intelligence Technology - Equipped with Microprocessors and multiple Intellisensors, the revolutionary adaptive intelligence technology continuously analyses data based on load, frequent door opening, day and night temperature change, and weather pattern to ensure optimum cooling and long lasting freshness\r\nConvertible 10 in 1 modes - This next generation Convertibl', 789, 'fridge-1.png', 'fridge-2.png', 'fridge-3.png'),
(11, 'Mouse', 'Movement Detection: Optical, Resolution : 1000dpi;Cable Length : 1.8 meter, Interface Type : USB\r\nColour : Black, Weight : 413 Grams\r\nGreat Aesthetics, Usage ideal for office, education sectors, designing, basic gaming etc\r\nComfortable for use in longer periods with performance; Warranty : 3 Year\r\nHardware Platform: Pc', 29, 'mouse-1.png', 'mouse-2.png', 'mouse-3.png'),
(12, 'Washing Machine', 'Semi-automatic washing Machine: Economical, Low water and energy consumption, involves manual effort; Has both washing and drying functions\r\nCapacity 7.0 kg (wash): Suitable for families with 3 to 4 members\r\n5 Star: Best in class efficiency\r\nManufacturer Warranty: 2 Years Comprehensive & 5 years on Motor T&C\r\n1300 RPM: higher spin speeds helps in faster drying', 199, 'washing machine-1.png', 'washing machine-2.png', 'washing machine-3.png'),
(14, 'Apple iPhone 14', 'Display: 6.1 inches (15.40 cm) OLED Display\r\nMemory: 512GB ROM\r\nProcessor: A15 Bionic Chip, Hexa Core\r\nCamera: 12 MP + 12 MP Dual Rear & 12 MP Front Camera\r\nBattery: Qi Wireless Charging Up to 7.5W\r\nSecurity (Lock): Facial Lock', 999, 'Iphone-1.png', 'Iphone-2.png', 'Iphone-3.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Pawan', 'pawan1@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(3, 'Pravin', 'pravin@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(4, 'Taiseen', 'taiseen@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(5, 'Suraj', 'suraj@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(6, 'Ratikant', 'ratikant@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(7, 'om', 'om@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(8, 'Rahul', 'rahul@gail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(9, 'Yash', 'yash@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(10, 'Arayan', 'arayan@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(11, 'Navin', 'navin123@gmail.com', 'a0d04378f37973ffa3b2aa8b3e27a3f0a98de06d'),
(12, '123', '123@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(8, 5, 7, 'Camera', 279, 'camera-1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
