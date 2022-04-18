
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `advertisments` (
  `AdsID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Status` int(1) NOT NULL,
  `Details` varchar(200) COLLATE utf8_bin NOT NULL,
  `Price` int(6) NOT NULL,
  `Image` varchar(150) CHARACTER SET utf8 NOT NULL,
  `Title` varchar(50) COLLATE utf8_bin NOT NULL,
  `UserID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `advertisments`
--

INSERT INTO `advertisments` (`AdsID`, `Date`, `Status`, `Details`, `Price`, `Image`, `Title`, `UserID`, `CategoryID`) VALUES
(82, '2022-04-15', 1, 'Swift in good condition, 5 years old.\r\nIt has a max speed of 200 kmph.\r\n300l boot space\r\nGiving a mileage of 15km/l.\r\n', 3000, 'car 1.jfif', 'Maruti Suzuki Swift', 18, 3),
(83, '2022-04-15', 1, 'Bolero in good condition, 8 years old. It is giving mileage of 14km/l. It has travelled 50000km. It also provides a roof top goods carrier.', 1500, 'car 3.jpeg', 'Mahindra Bolero', 19, 3),
(84, '2022-04-15', 1, 'Baleno of blue color in good condition, 2 years old. It has a max speed of 200kmph and giving a mileage of 20km/l. It has travelled 20000km. It also provides a boot space of 300l,', 4000, 'car 2.jfif', 'Suzuki Baleno (Nexa)', 21, 3),
(85, '2022-04-15', 1, 'Macbook (15in). Apple MacBook pro (MGN93HN/A) M1 Chip macOS Big Sur Laptop (8GB RAM, 256GB SSD, Apple M1 GPU, 33.78cm, Silver).It is in good condition.', 1000, 'e27.png', 'Macbook pro ', 22, 5),
(86, '2022-04-15', 1, 'Samsung refrigerator 253L Convertible Freezer Double Door Refrigerator RT28T3922R8. It is 4 years old and it is in good condition.', 600, 'e8.png', 'Samsung Refrigerator', 20, 5),
(87, '2022-04-15', 1, 'Hp desktop 11th Gen Intel Core™ i5-11500T (12 MB cache, 6 cores, 12 threads, 1.50 to 3.90 GHz Turbo, 35W)laptop Windows 10 Pro', 1000, 'e11.png', 'Hp Desktop', 23, 5),
(88, '2022-04-15', 1, 'Since 1996 JavaScript: The Definitive Guide has been the bible for JavaScript programmersâ€”a programmer is guide and comprehensive reference to the core language and to the client-side JavaScript API', 50, '15539837652089918113_51CxDZt9xWL._SX260_.jpg', 'JavaScript: The Definitive Guide: Activate Your We', 24, 4),
(89, '2022-04-15', 1, 'Sony PlayStation 4 Slim delivers the best in graphical interface and gaming experience. This PS 4 features 1TB Hard Disk, 1 Controller, and 5GHz WiFi connectivity.Go on fantastical adventures and get ', 250, '15539838971535297312_item_XL_11671718_17792472.jpg', 'Sony PlayStation 4 Slim - 1TB, 1 Controller, Black', 2, 5),
(90, '2022-04-15', 1, 'Get one step closer to innovation with the Samsung QLED Smart TV. With its massive 75inch QLED display and 4K picture resolution. It is in good condition.', 800, '1553984700876699826_item_XL_36454179_143094954.jpg', 'Samsung 75 Inch QLED 4K Smart TV - 75Q7FNA', 22, 5),
(91, '2022-04-15', 0, 'sx', 22, '1557503944265784482_download (1).png', 'sx', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `areaID` int(11) NOT NULL,
  `areaName` varchar(20) COLLATE utf8_bin NOT NULL,
  `cityID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`areaID`, `areaName`, `cityID`) VALUES
(1, 'New Delhi', 1),
(2, 'Mumbai', 2),
(3, 'Bhubaneswar', 2),
(4, 'Surat', 3),
(5, 'Indore', 1),
(6, 'Pune', 1),
(7, 'Mandi', 1),
(8, 'Noida', 1),
(9, 'Gangtok', 2),
(10, 'Kolkata', 2),
(11, 'Chennai', 2),
(12, 'Bangluru', 3),
(13, 'Hyderabad', 3),
(14, 'Faridabad', 3),
(15, 'Chandigarh', 4),
(16, 'Kota', 4),
(17, 'Jhansi', 5),
(18, 'Puri', 5);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`) VALUES
(3, 'car'),
(4, 'Books'),
(5, 'Electronics'),
(6, 'Fashion'),
(7, 'Pets'),
(8, 'Mobile Phones & Accessories'),
(9, 'Furniture'),
(10, 'Real Estate');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `cityID` int(11) NOT NULL,
  `cityName` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`cityID`, `cityName`) VALUES
(1, ''),
(2, ''),
(3, ''),
(4, ''),
(5, '');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Status` int(1) NOT NULL,
  `Details` varchar(100) COLLATE utf8_bin NOT NULL,
  `UserID` int(11) NOT NULL,
  `AdsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `Date`, `Status`, `Details`, `UserID`, `AdsID`) VALUES
(5, '2022-04-15', 1, 'nice', 2, 89),
(18, '2022-04-15', 1, 'nice', 2, 90),
(19, '2022-04-15', 1, 'sx', 2, 82),
(20, '2022-04-15', 1, 'scsc', 2, 82);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `UserID` int(11) NOT NULL,
  `AdsID` int(11) NOT NULL,
  `details` varchar(100) COLLATE utf8_bin NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`UserID`, `AdsID`, `details`, `Date`) VALUES
(2, 85, 'bad', '2019-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(20) COLLATE utf8_bin NOT NULL,
  `Email` varchar(40) COLLATE utf8_bin NOT NULL,
  `Password` varchar(20) COLLATE utf8_bin NOT NULL,
  `Phone` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `Status` int(1) DEFAULT NULL,
  `areaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `Email`, `Password`, `Phone`, `type`, `Status`, `areaID`) VALUES
(0, 'Admin', 'Admin@Admin', '11', 1, 1, 2, 1),
(2, 'Ramesh', 'ramesh@gmail.com', '11', 3434, 1, 1, 1),
(18, 'Sailesh', 'sailesh@gmail.com', '11', 123456, 1, 1, 4),
(19, 'Aditya', 'aditya@gmail.com', '11', 12345, 1, 1, 3),
(20, 'Benedict', 'benedict@gmail.com', '11', 123, 1, 1, 13),
(21, 'Harry', 'harry@gmail.com', '11', 12, 2, 1, 9),
(22, 'Aman', 'aman@gmail.com', '11', 32, 1, 1, 16),
(23, 'Ashit', 'ashit@gmail.com', '11', 11, 1, 1, 18),
(24, 'Bell', 'bell@gmail.com', '11', 12332, 1, 1, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisments`
--
ALTER TABLE `advertisments`
  ADD PRIMARY KEY (`AdsID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`areaID`),
  ADD KEY `cityID` (`cityID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cityID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `AdsID` (`AdsID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`UserID`,`AdsID`),
  ADD KEY `adsidFK` (`AdsID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD KEY `areaID` (`areaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisments`
--
ALTER TABLE `advertisments`
  MODIFY `AdsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `areaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `cityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisments`
--
ALTER TABLE `advertisments`
  ADD CONSTRAINT `catidFK` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  ADD CONSTRAINT `useridFK` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `cityidFK` FOREIGN KEY (`cityID`) REFERENCES `cities` (`cityID`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `AdsFK` FOREIGN KEY (`AdsID`) REFERENCES `advertisments` (`AdsID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userFK` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `Userridfk` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `adsidFK` FOREIGN KEY (`AdsID`) REFERENCES `advertisments` (`AdsID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `areaidFK` FOREIGN KEY (`areaID`) REFERENCES `areas` (`areaID`);
COMMIT;

