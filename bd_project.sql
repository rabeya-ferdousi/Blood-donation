-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2022 at 04:44 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `blood_bank_id` int(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone_Number` int(200) NOT NULL,
  `E-mail` varchar(200) NOT NULL,
  `Website` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`blood_bank_id`, `Name`, `Address`, `Phone_Number`, `E-mail`, `Website`) VALUES
(21101, 'Bangladesh Red Crescent Blood Bank', '7/5, Aurangzeb Road, Mohammadpur,\r\nDhaka', 29116563, 'bangladeshRedcrescent1234@gmail.com', 'www.Bangladesh Red Crescent.com'),
(21102, 'Police Blood Bank', 'Central Police Hospital, Rajarbag, Dhaka', 1713398386, 'policebloodbank@gmail.com', 'www.policebloodbank.gov.bd'),
(21103, 'Thalassemia Blood Bank', '30 Chamelibag, 1st Lane, Dhaka 1217', 28332481, 'thals23@gmail.com', 'http://www.thals.org'),
(21104, 'Quantum Blood Bank Lab', '31/V Shilpacharya Zainul Abedin Sarak,\r\nShantinagar, Dhaka 1217', 29351365, 'quantummethod@gmail.com', 'http://quantummethod.org/blood-donation'),
(21105, 'Badhan Blood Bank', 'Central Office, T.S.C(Ground Floor),University of Dhaka,Dhaka-1000', 1534982674, 'badhan@gmail.com', 'www.badhan.org'),
(21106, 'Oriental Blood bank', 'Green Center, 2B/30, Green Road, Dhanmondi, Dhaka', 1812700053, 'orientalbloodbank@gmail.com', 'www.orientalbloodbank.com'),
(21107, 'Islami Bank Hospital Blood Bank', 'Dhaka, Bangladesh', 28321495, 'islamicbloodbank@gmail.com', 'www.islamicbloodbank.com'),
(21108, 'Mukti Blood Bank', '54 (1st Floor), Bir-Uttam A.M. Shafiullah Road, Free School Street, Dhaka-1207', 28624249, 'mbd@gmail.com', 'www.muktibloodbank.com'),
(21109, 'Creative Blood Bank And Transfusion Center', '83, Nazimuddin Road, Chalkbazar, Dhaka 1211', 1771234567, 'creativebloodbank@gmail.com', 'www.creativebloodbank.com'),
(21110, 'Ideal Blood Bank', '53 Naya Paltan, Dhaka', 1936273296, 'idealbloodbank@gmail.com', 'www.idealbloodbank.com');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor_information`
--

CREATE TABLE `blood_donor_information` (
  `D_ID` int(100) NOT NULL,
  `D_name` varchar(100) NOT NULL,
  `D_Gender` char(100) NOT NULL,
  `D_age` int(100) NOT NULL,
  `Blood_Group` varchar(100) NOT NULL,
  `hospital_id` varchar(20) NOT NULL,
  `Number` bigint(100) NOT NULL,
  `E-mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_donor_information`
--

INSERT INTO `blood_donor_information` (`D_ID`, `D_name`, `D_Gender`, `D_age`, `Blood_Group`, `hospital_id`, `Number`, `E-mail`) VALUES
(2101, 'Mr.Bean', 'Male', 60, 'O+', '11101', 1822224512, 'bean23@gmail.com'),
(2102, 'karim ', 'Male', 31, 'AB-', '11102', 1782222451, 'karim@gmail.com'),
(2103, 'Toufiq Shawon ', 'Male', 30, 'A+', '11103', 1922224012, 'shawon89@gmail.com'),
(2104, 'Ashika Amin', 'Female', 24, 'AB+', '11104', 1821324512, 'ashika90@gmail.com'),
(2105, 'Samiha Monowara', 'Female', 23, 'B-', '11105', 1820324511, 'samiha@gmail.com'),
(2106, 'Mr.Mamun ', 'Male', 30, 'A-', '11106', 1804324590, 'mamun78@gmail.com'),
(2107, 'Ishita Akter', 'Female', 30, 'O+', '11107', 1720324510, 'akterishita23@gmail.com'),
(2108, 'Yasin Polok', 'Male', 25, 'AB+', '11108', 1672132451, 'polok12@gmail.com'),
(2109, 'Riazul Hasan', 'Male', 27, 'B+', '11109', 1822451210, 'riazul90@hmail.com'),
(2110, 'Mr.Kuddus ', 'Male', 25, 'A+', '11110', 1321324512, 'kuddus23@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `blood_stock`
--

CREATE TABLE `blood_stock` (
  `S_ID` int(100) NOT NULL,
  `Blood_Groups` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Best_Before_Date` date NOT NULL,
  `blood_bank_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_stock`
--

INSERT INTO `blood_stock` (`S_ID`, `Blood_Groups`, `Status`, `Quantity`, `Best_Before_Date`, `blood_bank_id`) VALUES
(1201, 'A+', 'AVAILABLE ', 20, '2022-05-24', '21101'),
(1202, 'A-', 'NOT AVAILABLE ', 0, '0000-00-00', '21102'),
(1203, 'B+', 'AVAILABLE ', 16, '2022-04-30', '21103'),
(1204, 'B-', 'AVAILABLE ', 10, '2022-04-26', '21104'),
(1205, 'AB+', 'AVAILABLE ', 12, '2022-05-25', '21105'),
(1206, 'AB-', 'AVAILABLE ', 5, '2022-05-31', '21106'),
(1207, 'O+', 'AVAILABLE ', 17, '2022-05-28', '21107'),
(1208, 'O-', 'NOT AVAILABLE ', 0, '0000-00-00', '21108');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` int(20) NOT NULL,
  `Hospital_Name` varchar(100) NOT NULL,
  `Required_blood` varchar(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone_Number` int(100) NOT NULL,
  `blood_bank_id` varchar(20) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `E-mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `Hospital_Name`, `Required_blood`, `Quantity`, `Address`, `Phone_Number`, `blood_bank_id`, `Website`, `E-mail`) VALUES
(11101, 'Dhaka Community Hospital\r\n', 'AB+', 2, '190/1, Baro Moghbazar, Wireless Railgate, Dhaka-1217, Bangladesh.', 1936273296, '', 'www.dchtrust.org', 'dchtrust@gmail.com'),
(11102, 'Square Hospital', 'A+', 10, '18F, Bir Uttam Qazi Nuruzzaman Sarak, West Panthapath, Dhaka 1205.', 1923456789, '', 'www.squarehospital.com', 'squarehospital@gmail.com'),
(11103, 'United hospital', 'B+', 5, 'Plot 15, Road 71,Plot 15, Road 71,  \r\nGulshan, Dhaka-1212Gulshan, Dhaka-1212\r\nBangladesh\r\n', 28836444, '', 'www.uhlbd.com', 'info@uhlbd.com'),
(11104, 'Anwar khan Modern Hospital', 'O-', 2, 'House #17, Road #08,Dhanmondi, 1205Dhanmondi, Dhaka-1205', 258616074, '', 'www.comwww.akmmch.com', 'infoakmmch@gmail.com'),
(11105, 'Apollo Hospital Dhaka', 'O+', 8, 'Dhaka EDhaka Plot No 81, Block EBashundhara Bashundhara R/A, Dhaka 1229', 298916612, '', 'www.apollohospitals.com', 'infospsapollo@gmail.com'),
(11106, 'Bangabandhu Sheikh Mujib Medical University', 'A+', 5, 'Shahbag, Dhaka-1000', 29691065, '21106', 'www.bsmmu.com', 'infobsmmu@gmail.com'),
(11107, 'Bangladesh Medical College', 'A-', 10, 'House # 34, Road # 14/A, Dhanmondi R/A, Dhaka - 1209, Bangladesh.', 1923456789, '21107', 'www.bmc-bd.org', 'bmc-bd9@gmail.com'),
(11108, 'Greenland Hospital Ltd', 'B+', 2, 'House # 112 Rd 13, Dhaka 1230', 1716623627, '21108', 'https://generalhospitaluttara.business.site/', 'greenland@gmail.com'),
(11109, 'BIRDEM General Hospital', 'AB-', 1, 'Dhaka', 1923456789, '21109', 'www.birdem.com', 'birdem12@gmail.com'),
(11110, 'DR. AZMAL HOSPITAL LTD', 'O-', 4, 'Plot 5 Rd No. 4, Dhaka 1216', 961230430, '21110', 'http://azmalhospital.com/', 'azmalhospital@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `seeker_information`
--

CREATE TABLE `seeker_information` (
  `Seeker_ID` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Blood_Group` varchar(100) NOT NULL,
  `Phone_Number` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Reg_Date` date NOT NULL,
  `hospital_id` varchar(20) NOT NULL,
  `blood_bank_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seeker_information`
--

INSERT INTO `seeker_information` (`Seeker_ID`, `Name`, `Age`, `Gender`, `Blood_Group`, `Phone_Number`, `City`, `Reg_Date`, `hospital_id`, `blood_bank_id`) VALUES
(1108, 'Bidita Diba', 57, 'Female', 'A-', '01611111122', 'Farmgate ', '2022-04-05', '11101', '21101'),
(1109, 'Rahima Akter Bithi', 30, 'Female', 'B+', '01911223344', 'Dhanmondi', '2022-04-08', '11102', '21102'),
(1110, 'Shimin Afroz ', 34, 'Female ', 'A+', '01511223343', 'Motijheel', '2022-04-10', '11103', '21103'),
(1111, 'Ahmed Samir', 60, 'Male', 'O+', '0178899112', 'Banani', '2022-04-11', '11104', '21104'),
(1112, 'Mehedi Hasan', 45, 'Male', 'O-', '0178899119', 'Mirpur-1 ', '2022-04-11', '11105', '21105'),
(1113, 'Mahmudur Rahman ', 57, 'Male', 'AB+', '0178899115', 'Wari', '2022-04-12', '11106', '21106'),
(1114, 'Plabon Datta', 67, 'Male', 'AB+', '0178899113', 'Paltan', '2022-04-12', '11107', '21107'),
(1115, 'Abu Bakar Mahi', 51, 'Male', 'A+', '0177899112', 'Shahbagh', '2022-04-13', '11108', '21108'),
(1116, 'Kuddus Ali', 60, 'Male', 'O+', '0178899110', 'Shympur', '2022-04-13', '11109', '21109'),
(1117, 'Kapil Sharma', 45, 'Male', 'AB+', '0178899120', 'Mohammadpur', '2022-04-15', '11110', '21110');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`blood_bank_id`),
  ADD UNIQUE KEY `E-mail` (`E-mail`),
  ADD UNIQUE KEY `Phone_Number` (`Phone_Number`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `blood_donor_information`
--
ALTER TABLE `blood_donor_information`
  ADD PRIMARY KEY (`D_ID`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `blood_stock`
--
ALTER TABLE `blood_stock`
  ADD PRIMARY KEY (`S_ID`),
  ADD KEY `blood_bank_id` (`blood_bank_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`),
  ADD KEY `blood_bank_id` (`blood_bank_id`);

--
-- Indexes for table `seeker_information`
--
ALTER TABLE `seeker_information`
  ADD PRIMARY KEY (`Seeker_ID`),
  ADD KEY `hospital_id` (`hospital_id`),
  ADD KEY `blood_bank_id` (`blood_bank_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
