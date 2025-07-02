-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2025 at 08:30 PM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accused`
--

CREATE TABLE `accused` (
  `accused_ID` varchar(100) NOT NULL,
  `accused_name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `A_phnum` bigint(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `case_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accused`
--

INSERT INTO `accused` (`accused_ID`, `accused_name`, `address`, `A_phnum`, `DOB`, `case_id`) VALUES
('A01', 'Mark Abene', 'Hazratganj,Lucknow', 9274662894, '1988-05-25', 'CA03'),
('A02', 'Julian Paul', ' Ganga Path,Patna', 8974655442, '1982-02-08', 'CA01'),
('A03', 'David Amato', 'Heritage street,Amritsar', 7838656783, '1994-10-16', 'CA04'),
('A04', 'Richard Jones', 'Sandalpur Road,Bihar', 9776366377, '1999-06-20', 'CA02');

-- --------------------------------------------------------

--
-- Table structure for table `a_phonenumber`
--

CREATE TABLE `a_phonenumber` (
  `accused_ID` varchar(20) NOT NULL,
  `a_phonenumber` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `a_phonenumber`
--

INSERT INTO `a_phonenumber` (`accused_ID`, `a_phonenumber`) VALUES
('A01', 7665432165),
('A02', 9076643275),
('A02', 9876643275);

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `case_id` varchar(100) NOT NULL,
  `registered_date` date DEFAULT NULL,
  `crime_name` varchar(200) DEFAULT NULL,
  `purpose` varchar(200) DEFAULT NULL,
  `evidence` varchar(200) DEFAULT NULL,
  `closed_date` date DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`case_id`, `registered_date`, `crime_name`, `purpose`, `evidence`, `closed_date`, `pincode`) VALUES
('CA01', '2000-09-02', 'Debit/Credit card fraud', 'financial needs', 'Money cutdown from the bank', '2000-09-12', 800008),
('CA02', '2016-05-28', 'Online job fraud', 'financial benefits', 'Job postings and correspondance', '2016-07-01', 123401),
('CA03', '2019-10-20', 'Cyber bullying', 'personal revenge', 'Tracking IP address', '2019-10-25', 226001),
('CA04', '2014-07-30', 'Sim swap scam', 'authentication to get acces to bank accounts', 'Location data', '2014-08-10', 143104);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `pincode` int(11) NOT NULL,
  `state_name` varchar(100) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`pincode`, `state_name`, `city_name`) VALUES
(123401, 'Haryana', 'Gurgaon'),
(143104, 'Punjab', 'Amritsar'),
(226001, 'Uttar Pradesh', 'Lucknow'),
(800008, 'Bihar', 'Patna');

-- --------------------------------------------------------

--
-- Table structure for table `cybercrime`
--

CREATE TABLE `cybercrime` (
  `crime_id` varchar(100) NOT NULL,
  `crime_name` varchar(100) DEFAULT NULL,
  `motive_name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `accused_ID` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cybercrime`
--

INSERT INTO `cybercrime` (`crime_id`, `crime_name`, `motive_name`, `description`, `accused_ID`, `user_id`) VALUES
('C01', 'Credit/Debit card fraud', 'financial needs', 'unauthorized use of anothers credit or debit card information', 'A01', 'U001'),
('C02', 'Online job fraud', 'financial benefits', 'defraud people who are in need of employment', 'A02', 'U002'),
('C03', 'Cyber bullying', 'persoonal revenge', ' A form of harassment or bullying inflicted through the use of mobile,laptop etc.,', 'A03', 'U003'),
('C04', 'SIM swap scam', 'authentication to get acces to bank accounts', 'Getting a new SIM card against a registered mobile number fraudulently is known as SIM Swap.', 'A04', 'U004');

-- --------------------------------------------------------

--
-- Table structure for table `investigator`
--

CREATE TABLE `investigator` (
  `i_id` varchar(20) NOT NULL,
  `i_name` varchar(20) NOT NULL,
  `i_email_id` varchar(20) DEFAULT NULL,
  `dept` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investigator`
--

INSERT INTO `investigator` (`i_id`, `i_name`, `i_email_id`, `dept`, `designation`) VALUES
('I01', 'Priya', 'Priya@gmail.com', 'Forensic.dept', 'SP(CID)'),
('I02', 'Hemanth', 'hemanth@gmail.com', 'Network security', 'DSP'),
('I03', 'Sneha', 'sneha@gmail.com', 'Cyber intelligence', 'DGP'),
('I04', 'Prem', 'prem@gmail.com', 'Cyber defence', 'SP');

-- --------------------------------------------------------

--
-- Table structure for table `refers`
--

CREATE TABLE `refers` (
  `user_id` varchar(20) NOT NULL,
  `s_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refers`
--

INSERT INTO `refers` (`user_id`, `s_id`) VALUES
('U001', 'S01'),
('U001', 'S02'),
('U002', 'S01'),
('U003', 'S01'),
('U003', 'S03'),
('U003', 'S04'),
('U004', 'S03');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `s_id` varchar(20) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `no_of_incidents` int(11) DEFAULT NULL,
  `total_victims` int(11) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`s_id`, `year`, `no_of_incidents`, `total_victims`, `pincode`) VALUES
('S01', 2016, 6, 3, 800008),
('S02', 2010, 10, 6, 123401),
('S03', 2000, 14, 9, 226001),
('S04', 2019, 9, 4, 143104);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(20) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `email_id` varchar(20) DEFAULT NULL,
  `user_type` varchar(20) NOT NULL,
  `passwords` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email_id`, `user_type`, `passwords`) VALUES
('U001', 'Dev', 'dev@gmail.com', 'O', 'dev01'),
('U002', 'Ram', 'ram@gmail.com', 'P', 'ram01'),
('U003', 'Ravi', 'ravi@gmail.com', 'O', 'ravi01'),
('U004', 'Krishna', 'krishna@gmail.com', 'P', 'krish01');

-- --------------------------------------------------------

--
-- Table structure for table `victim`
--

CREATE TABLE `victim` (
  `victim_ID` varchar(100) NOT NULL,
  `victim_name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `crime_id` varchar(100) DEFAULT NULL,
  `i_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `victim`
--

INSERT INTO `victim` (`victim_ID`, `victim_name`, `address`, `DOB`, `crime_id`, `i_id`) VALUES
('V01', ' Harsh', ' KhRoad,Gandhinagar,Gujarat', '1994-08-12', 'C01', 'I01'),
('V02', 'Kishore', ' Park Street,Kolkata', '1992-04-08', 'C02', 'I02'),
('V03', 'Carol', 'Tilak Marg,Delhi', '1996-09-11', 'C03', 'I03'),
('V04', 'Suresh', 'Hill Road,Mumbai', '1990-05-28', 'C04', 'I04');

-- --------------------------------------------------------

--
-- Table structure for table `v_phonenumber`
--

CREATE TABLE `v_phonenumber` (
  `victim_ID` varchar(20) NOT NULL,
  `v_phonenumber` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `v_phonenumber`
--

INSERT INTO `v_phonenumber` (`victim_ID`, `v_phonenumber`) VALUES
('V01', 7345675678),
('V01', 7654321234),
('V02', 8967453434);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accused`
--
ALTER TABLE `accused`
  ADD PRIMARY KEY (`accused_ID`),
  ADD KEY `case_id` (`case_id`);

--
-- Indexes for table `a_phonenumber`
--
ALTER TABLE `a_phonenumber`
  ADD PRIMARY KEY (`accused_ID`,`a_phonenumber`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `pincode` (`pincode`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`pincode`);

--
-- Indexes for table `cybercrime`
--
ALTER TABLE `cybercrime`
  ADD PRIMARY KEY (`crime_id`),
  ADD KEY `accused_ID` (`accused_ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `investigator`
--
ALTER TABLE `investigator`
  ADD PRIMARY KEY (`i_id`),
  ADD UNIQUE KEY `i_email_id` (`i_email_id`);

--
-- Indexes for table `refers`
--
ALTER TABLE `refers`
  ADD PRIMARY KEY (`user_id`,`s_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `pincode` (`pincode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `victim`
--
ALTER TABLE `victim`
  ADD PRIMARY KEY (`victim_ID`),
  ADD KEY `crime_id` (`crime_id`),
  ADD KEY `i_id` (`i_id`);

--
-- Indexes for table `v_phonenumber`
--
ALTER TABLE `v_phonenumber`
  ADD PRIMARY KEY (`victim_ID`,`v_phonenumber`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accused`
--
ALTER TABLE `accused`
  ADD CONSTRAINT `accused_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `cases` (`case_id`);

--
-- Constraints for table `a_phonenumber`
--
ALTER TABLE `a_phonenumber`
  ADD CONSTRAINT `a_phonenumber_ibfk_1` FOREIGN KEY (`accused_ID`) REFERENCES `accused` (`accused_ID`);

--
-- Constraints for table `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `cases_ibfk_1` FOREIGN KEY (`pincode`) REFERENCES `city` (`pincode`);

--
-- Constraints for table `cybercrime`
--
ALTER TABLE `cybercrime`
  ADD CONSTRAINT `cybercrime_ibfk_1` FOREIGN KEY (`accused_ID`) REFERENCES `accused` (`accused_ID`),
  ADD CONSTRAINT `cybercrime_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `refers`
--
ALTER TABLE `refers`
  ADD CONSTRAINT `refers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `refers_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `statistics` (`s_id`);

--
-- Constraints for table `statistics`
--
ALTER TABLE `statistics`
  ADD CONSTRAINT `statistics_ibfk_1` FOREIGN KEY (`pincode`) REFERENCES `city` (`pincode`);

--
-- Constraints for table `victim`
--
ALTER TABLE `victim`
  ADD CONSTRAINT `victim_ibfk_1` FOREIGN KEY (`crime_id`) REFERENCES `cybercrime` (`crime_id`),
  ADD CONSTRAINT `victim_ibfk_2` FOREIGN KEY (`i_id`) REFERENCES `investigator` (`i_id`);

--
-- Constraints for table `v_phonenumber`
--
ALTER TABLE `v_phonenumber`
  ADD CONSTRAINT `v_phonenumber_ibfk_1` FOREIGN KEY (`victim_ID`) REFERENCES `victim` (`victim_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
