-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2024 at 09:47 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jbothwell06`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `job_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `application_status` varchar(50) DEFAULT 'Pending',
  `application_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`job_id`, `candidate_id`, `application_status`, `application_date`) VALUES
(1, 23, 'Pending', '2024-02-16 08:45:23'),
(1, 49, 'Accepted', '2024-02-16 16:22:10'),
(2, 12, 'Rejected', '2024-02-17 12:31:45'),
(3, 6, 'Accepted', '2024-02-18 14:12:40'),
(3, 8, 'Rejected', '2024-02-17 09:18:30'),
(3, 42, 'Pending', '2024-02-18 18:50:05'),
(4, 17, 'Rejected', '2024-02-19 10:28:22'),
(4, 35, 'Pending', '2024-02-19 21:03:15'),
(5, 33, 'Accepted', '2024-02-20 05:15:17'),
(6, 15, 'Pending', '2024-02-21 19:07:33'),
(6, 29, 'Accepted', '2024-02-20 23:48:55'),
(6, 48, 'Rejected', '2024-02-22 03:56:48'),
(7, 21, 'Pending', '2024-02-22 07:39:01'),
(8, 4, 'Rejected', '2024-02-23 13:14:29'),
(8, 10, 'Pending', '2024-02-24 16:36:14'),
(8, 37, 'Accepted', '2024-02-23 22:59:40'),
(9, 7, 'Rejected', '2024-02-25 08:03:49'),
(9, 30, 'Pending', '2024-02-24 11:25:27'),
(10, 46, 'Accepted', '2024-02-25 04:49:02'),
(11, 14, 'Rejected', '2024-02-26 20:20:18'),
(11, 31, 'Accepted', '2024-02-26 08:45:23'),
(12, 11, 'Pending', '2024-02-27 16:22:10'),
(12, 18, 'Accepted', '2024-02-27 12:31:45'),
(13, 45, 'Rejected', '2024-02-28 09:18:30'),
(14, 3, 'Accepted', '2024-02-29 21:03:15'),
(14, 27, 'Rejected', '2024-02-28 18:50:05'),
(14, 38, 'Pending', '2024-02-29 14:12:40'),
(15, 16, 'Pending', '2024-03-01 10:28:22'),
(16, 24, 'Accepted', '2024-03-01 05:15:17'),
(17, 44, 'Rejected', '2024-03-02 23:48:55'),
(18, 9, 'Rejected', '2024-03-02 19:07:33'),
(18, 22, 'Pending', '2024-03-03 03:56:48'),
(19, 50, 'Accepted', '2024-03-03 07:39:01'),
(20, 28, 'Pending', '2024-03-04 13:14:29'),
(21, 13, 'Rejected', '2024-03-05 16:36:14'),
(21, 20, 'Accepted', '2024-03-04 22:59:40'),
(22, 36, 'Accepted', '2024-03-05 11:25:27'),
(23, 2, 'Pending', '2024-03-06 04:49:02'),
(23, 25, 'Pending', '2024-03-06 08:03:49'),
(23, 47, 'Rejected', '2024-03-07 20:20:18'),
(24, 19, 'Rejected', '2024-03-07 08:45:23'),
(25, 41, 'Accepted', '2024-03-08 16:22:10'),
(26, 34, 'Accepted', '2024-03-08 12:31:45'),
(27, 1, 'Pending', '2024-03-09 09:18:30'),
(27, 5, 'Pending', '2024-03-09 18:50:05'),
(28, 26, 'Rejected', '2024-03-10 14:12:40'),
(29, 39, 'Accepted', '2024-03-10 21:03:15'),
(29, 40, 'Rejected', '2024-03-11 10:28:22'),
(30, 43, 'Pending', '2024-03-11 05:15:17'),
(31, 32, 'Accepted', '2024-03-12 23:48:55'),
(32, 7, 'Accepted', '2024-03-12 19:07:33'),
(33, 48, 'Pending', '2024-03-13 03:56:48'),
(34, 16, 'Rejected', '2024-03-13 07:39:01'),
(35, 25, 'Rejected', '2024-03-14 13:14:29'),
(36, 2, 'Pending', '2024-03-14 22:59:40'),
(37, 13, 'Rejected', '2024-03-15 11:25:27'),
(37, 45, 'Accepted', '2024-03-15 16:36:14'),
(38, 33, 'Accepted', '2024-03-16 08:03:49'),
(39, 14, 'Rejected', '2024-03-16 04:49:02'),
(40, 36, 'Pending', '2024-03-17 20:20:18'),
(41, 49, 'Pending', '2024-03-17 08:45:23'),
(42, 46, 'Accepted', '2024-03-18 16:22:10'),
(43, 10, 'Rejected', '2024-03-18 12:31:45'),
(44, 23, 'Accepted', '2024-03-19 09:18:30'),
(45, 41, 'Rejected', '2024-03-19 18:50:05'),
(46, 9, 'Accepted', '2024-03-20 14:12:40'),
(46, 30, 'Rejected', '2024-03-20 21:03:15'),
(47, 38, 'Pending', '2024-03-21 10:28:22'),
(48, 19, 'Accepted', '2024-03-21 05:15:17'),
(49, 21, 'Rejected', '2024-03-22 23:48:55');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address_line` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(7) NOT NULL,
  `country` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `registration_date` timestamp NULL DEFAULT current_timestamp(),
  `currently_seeking` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `first_name`, `last_name`, `address_line`, `city`, `postal_code`, `country`, `email`, `contact_number`, `date_of_birth`, `registration_date`, `currently_seeking`) VALUES
(1, 'Olivia', 'Smith', '1 Highland Street', 'Edinburgh', 'EH11SG', 'Scotland', 'oliviasmith@gmail.com', '07920574864', '1985-03-12', '2023-12-12 08:45:00', 1),
(2, 'Liam', 'Johnson', '23 Green Avenue', 'Cardiff', 'CF102EH', 'Wales', 'liamjohnson@gmail.com', '02890345678', '1990-08-22', '2023-12-13 16:22:00', 0),
(3, 'Ava', 'Williams', '15 Drewery Lane', 'Belfast', 'BT15GB', 'Northern Ireland', 'avawilliams@hotmail.com', '07896541234', '1988-11-05', '2023-12-14 12:31:00', 1),
(4, 'Noah', 'Jones', '42 Station Road', 'London', 'SW1A1AA', 'England', 'noahjones@hotmail.com', '07751234567', '1992-04-18', '2023-12-15 09:18:00', 1),
(5, 'Sophia', 'Brown', '7 Lochside Drive', 'Glasgow', 'G14LZ', 'Scotland', 'sophiabrown@yahoo.com', '02871234567', '1987-09-30', '2023-12-16 18:50:00', 0),
(6, 'Jackson', 'Davis', '30 Howlers Street', 'Derry', 'BT487LQ', 'Northern Ireland', 'jacksondavis@hotmail.com', '07820983456', '1995-06-14', '2023-12-17 14:12:00', 1),
(7, 'Isabella', 'Miller', '10 White Street', 'Swansea', 'SA13RP', 'Wales', 'isabellamiller@gmail.com', '07987654321', '1986-02-08', '2023-12-18 21:03:00', 0),
(8, 'Lucas', 'Wilson', '55 Old Town Road', 'Manchester', 'M12PF', 'England', 'lucaswilson@yahoo.com', '07539746825', '1993-12-25', '2023-12-19 10:28:00', 0),
(9, 'Mia', 'Moore', '8 Graceland Avenue', 'Newport', 'NP201TG', 'Wales', 'miamoore@gmail.com', '02886543210', '1989-07-03', '2023-12-20 05:15:00', 1),
(10, 'Aiden', 'Taylor', '12 Meadowlane Road', 'Lisburn', 'BT281XJ', 'Northern Ireland', 'aidentaylor@gmail.com', '07762340194', '1998-10-11', '2023-12-21 23:48:00', 0),
(11, 'Amelia', 'Anderson', '5 Glenview Terrace', 'Aberdeen', 'AB101BX', 'Scotland', 'ameliaanderson@yahoo.com', '07894567823', '1991-01-28', '2023-12-22 19:07:00', 1),
(12, 'Elijah', 'Thomas', '20 Glass Lane', 'Birmingham', 'B11AA', 'England', 'elijahthomas@hotmail.com', '02879456123', '1997-09-20', '2023-12-23 03:56:00', 1),
(13, 'Harper', 'Jackson', '3 High Street', 'Liverpool', 'L18JQ', 'England', 'harperjackson@hotmail.com', '07984321567', '1984-05-07', '2023-12-24 07:39:00', 1),
(14, 'Logan', 'White', '14 Acradia Bay', 'Cardiff', 'CF105LR', 'Wales', 'loganwhite@yahoo.com', '07569034281', '1996-02-19', '2023-12-25 13:14:00', 0),
(15, 'Evelyn', 'Harris', '18 Downtown Boulevard', 'Derry', 'BT476DF', 'Northern Ireland', 'evelynharris@hotmail.com', '07487562301', '1983-12-02', '2023-12-26 22:59:00', 0),
(16, 'Oliver', 'Martin', '9 Highland Crescent', 'Inverness', 'IV11JU', 'Scotland', 'olivermartin@gmail.com', '07723456789', '1994-11-09', '2023-12-27 16:36:00', 1),
(17, 'Abigail', 'Thompson', '25 Timby Drive', 'Newry', 'BT356DF', 'Northern Ireland', 'abigailthompson@hotmail.com', '02875904823', '1982-08-15', '2023-12-28 11:25:00', 0),
(18, 'Ethan', 'Garcia', '35 Tottenham Street', 'London', 'SE19SG', 'England', 'ethangarcia@hotmail.com', '07856341290', '1999-04-28', '2023-12-29 08:03:00', 1),
(19, 'Emma', 'Martinez', '16 Inbetween Road', 'Swansea', 'SA20NP', 'Wales', 'emmamartinez@gmail.com', '07543210987', '1981-07-10', '2023-12-30 04:49:00', 0),
(20, 'Elijah', 'Robinson', '2 Loch Ness Avenue', 'Elgin', 'IV301HY', 'Scotland', 'elijahrobinson@gmail.com', '07928137654', '1991-11-15', '2023-12-31 20:20:00', 0),
(21, 'Scarlett', 'Clark', '28 Highlands Lane', 'Newport', 'NP202EH', 'Wales', 'scarlettclark@hotmail.com', '02876543210', '1980-03-23', '2024-01-01 07:25:00', 0),
(22, 'Carter', 'Rodriguez', '21 Carmel Street', 'Armagh', 'BT610AJ', 'Northern Ireland', 'carterrodriguez@gmail.com', '07758462390', '1997-08-05', '2024-01-02 12:30:00', 1),
(23, 'Lily', 'Lewis', '6 Sandy Lane', 'Manchester', 'M21GR', 'England', 'lilylewis@yahoo.com', '07896543210', '1985-01-17', '2024-01-03 18:20:00', 1),
(24, 'Alexander', 'Lee', '17 Derry Road', 'Omagh', 'BT781QR', 'Northern Ireland', 'alexanderlee@hotmail.com', '07501234567', '1993-06-26', '2024-01-04 00:55:00', 1),
(25, 'Aria', 'Walker', '11 Newport Street', 'Wrexham', 'LL111GR', 'Wales', 'ariawalker@gmail.com', '02876123456', '1988-09-13', '2024-01-05 08:10:00', 0),
(26, 'Benjamin', 'Hall', '4 Birmingham Road', 'Coventry', 'CV11BG', 'England', 'benjaminhall@yahoo.com', '07459381027', '1994-12-30', '2024-01-06 14:25:00', 1),
(27, 'Grace', 'Allen', '19 Highland Road', 'Perth', 'PH11AB', 'Scotland', 'graceallen@hotmail.com', '07654782309', '1987-04-06', '2024-01-07 20:40:00', 0),
(28, 'Henry', 'Young', '22 Highland Square', 'Stirling', 'FK81LO', 'Scotland', 'henryyoung@gmail.com', '02875632901', '1992-10-22', '2024-01-08 02:05:00', 1),
(29, 'Chloe', 'Hernandez', '13 Cardiff Park', 'Cardiff', 'CF111PL', 'Wales', 'chloehernandez@gmail.com', '07812345678', '1986-06-11', '2024-01-09 07:55:00', 0),
(30, 'Sebastian', 'King', '26 Belfast Close', 'Enniskillen', 'BT741GT', 'Northern Ireland', 'sebastianking@hotmail.com', '07567890123', '1990-02-14', '2024-01-10 11:20:00', 1),
(31, 'Zoey', 'Wright', '31 Arcade Lane', 'London', 'SW1P1QW', 'England', 'zoeywright@hotmail.com', '02868745201', '1989-05-01', '2024-01-11 17:35:00', 1),
(32, 'Samuel', 'Lopez', '24 Swansea Square', 'Swansea', 'SA41WR', 'Wales', 'samuellopez@yahoo.com', '02868901234', '1998-03-08', '2024-01-12 23:50:00', 0),
(33, 'Layla', 'Hill', '29 Lochside Avenue', 'Fort William', 'PH336NH', 'Scotland', 'laylahill@gmail.com', '07689012345', '1984-09-18', '2024-01-13 05:15:00', 1),
(34, 'Leo', 'Scott', '27 Parkland Crescent', 'Portadown', 'BT621VD', 'Northern Ireland', 'leoscott@gmail.com', '07812345678', '1996-01-02', '2024-01-14 10:45:00', 0),
(35, 'Aurora', 'Green', '32 Manchester Road', 'Liverpool', 'L21BG', 'England', 'auroragreen@yahoo.com', '07543219876', '1983-04-29', '2024-01-15 14:30:00', 0),
(36, 'Jack', 'Adams', '36 Cauldron Road', 'Oban', 'PA344VF', 'Scotland', 'jackadams@gmail.com', '07945678901', '1995-10-07', '2024-01-16 20:20:00', 1),
(37, 'Riley', 'Baker', '40 Newport Avenue', 'Newport', 'NP191ER', 'Wales', 'rileybaker@gmail.com', '02873421598', '1982-12-12', '2024-01-17 01:55:00', 1),
(38, 'Lucas', 'Gonzalez', '45 Portrush Lane', 'Coleraine', 'BT521BG', 'Northern Ireland', 'lucasgonzalez@hotmail.com', '07786543210', '1991-07-21', '2024-01-18 08:10:00', 0),
(39, 'Harper', 'Nelson', '50 Downing Street', 'Birmingham', 'B31TY', 'England', 'harpernelson@hotmail.com', '07819283746', '1981-02-04', '2024-01-19 12:25:00', 0),
(40, 'Caleb', 'Carter', '48 Seaview Drive', 'Derry', 'BT471CD', 'Northern Ireland', 'calebcarter@gmail.com', '07539468201', '1999-11-14', '2024-01-20 18:40:00', 1),
(41, 'Ellie', 'Mitchell', '55 Cardiff Street', 'Cardiff', 'CF101NH', 'Wales', 'elliemitchell@yahoo.com', '02876342890', '1980-08-27', '2024-01-21 00:05:00', 1),
(42, 'Daniel', 'Perez', '60 Highland Square', 'Inverness', 'IV21KU', 'Scotland', 'danielperez@hotmail.com', '07918765432', '1997-03-16', '2024-01-22 06:15:00', 1),
(43, 'Ava', 'Roberts', '68 Swansea Road', 'Swansea', 'SA61AQ', 'Wales', 'avaroberts@gmail.com', '07492038456', '1985-05-31', '2024-01-23 10:40:00', 0),
(44, 'Wyatt', 'Turner', '72 Belfast Park', 'Belfast', 'BT91GE', 'Northern Ireland', 'wyattturner@yahoo.com', '02876543210', '1993-09-09', '2024-01-24 16:55:00', 0),
(45, 'Sofia', 'Phillips', '80 London Lane', 'London', 'SE11LJ', 'England', 'sofiaphillips@hotmail.com', '07815346290', '1988-01-25', '2024-01-25 22:10:00', 1),
(46, 'Owen', 'Campbell', '88 Newport Avenue', 'Newport', 'NP201QW', 'Wales', 'owencampbell@hotmail.com', '07529038416', '1994-06-04', '2024-01-26 03:40:00', 0),
(47, 'Addison', 'Parker', '95 Loch Ness Crescent', 'Aberdeen', 'AB101DE', 'Scotland', 'addisonparker@yahoo.com', '07654321987', '1987-11-19', '2024-01-27 09:15:00', 1),
(48, 'Grayson', 'Evans', '100 Derry Road', 'Derry', 'BT471HA', 'Northern Ireland', 'grayson.evans@hotmail.com', '02875639210', '1992-04-03', '2024-01-28 12:00:00', 1),
(49, 'Lily', 'Edwards', '23 Highfield Road', 'Aberdeen', 'AB203BH', 'Scotland', 'lilyedwards@gmail.com', '07485639210', '1986-10-14', '2024-01-29 18:10:00', 0),
(50, 'Levi', 'Collins', '29 Sandhurst Drive', 'Belfast', 'BT92JF', 'Northern Ireland', 'levicollins@hotmail.com', '02872198345', '1997-03-17', '2024-01-30 23:25:00', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `candidates_application_status`
-- (See below for the actual view)
--
CREATE TABLE `candidates_application_status` (
`First Name` varchar(50)
,`Last Name` varchar(50)
,`Job Title` varchar(255)
,`Salary` decimal(10,2)
,`Sector` varchar(255)
,`Application Status` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `contract_id` int(11) NOT NULL,
  `contract_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`contract_id`, `contract_name`) VALUES
(7, 'Apprenticeship'),
(13, 'Commission-based'),
(5, 'Freelance'),
(2, 'Full-time'),
(6, 'Internship'),
(14, 'Job share'),
(3, 'Part-time'),
(1, 'Permanent'),
(9, 'Project-based'),
(10, 'Remote'),
(8, 'Seasonal'),
(4, 'Temporary'),
(12, 'Voluntary'),
(11, 'Zero-hours');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `employer_id` int(11) NOT NULL,
  `employer_name` varchar(255) NOT NULL,
  `employer_description` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(11) NOT NULL,
  `sector_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`employer_id`, `employer_name`, `employer_description`, `email`, `contact_number`, `sector_id`) VALUES
(1, 'Shell plc', 'Innovating sustainable energy solutions for a greener planet', 'help@shell.com', '02894795740', 28),
(2, 'HSBC', 'Empowering individuals and businesses with financial freedom and security', 'careers@hsbc.com', '02758963210', 4),
(3, 'BP', 'Leading the charge in offshore drilling technology for energy independence', 'jobs@bp.com', '02631478520', 28),
(4, 'Rio Tinto', 'Ethically sourcing rare minerals to drive technological advancements', 'careers@riotinto.com', '02987456320', 31),
(5, 'Lloyds Banking Group', 'Revolutionizing digital banking services for seamless transactions worldwide', 'jobs@lloydsbank.com', '02851236740', 4),
(6, 'British American Tobacco', 'Crafting premium consumer products for modern lifestyles', 'hr@bat-industries.com', '02748629510', 32),
(7, 'Unilever', 'Enhancing everyday experiences with innovative consumer goods solutions', 'opportunities@unilevergroup.com', '02693571420', 33),
(8, 'GlaxoSmithKline', 'Advancing healthcare with groundbreaking medicines and treatments', 'careers@gsk-pharma.com', '02974856340', 2),
(9, 'Barclays', 'Bridging financial gaps through accessible banking solutions for all', 'joinus@barclaysgroup.com', '02814795620', 4),
(10, 'Anglo American', 'Fostering sustainable mining practices to preserve natural resources', 'careers@angloamericanplc.com', '02763148510', 31),
(11, 'Linde', 'Innovating chemical solutions for diverse industrial applications worldwide', 'hr@lindegroup.com', '02685947230', 10),
(12, 'Legal & General', 'Providing comprehensive insurance coverage for peace of mind', 'jobs@legalgeneralgroup.com', '02937184620', 4),
(13, 'NatWest Group', 'Driving economic growth through strategic banking investments and services', 'careers@natwestgroup.com', '02896351470', 4),
(14, 'National Grid', 'Delivering essential utility services for communities\' sustainability and growth', 'hr@nationalgrid.com', '02721458960', 28),
(15, 'Diageo', 'Crafting refreshing and innovative beverage experiences for consumers', 'jobs@diageogroup.com', '02678534120', 34),
(16, 'LyondellBasell Industries', 'Leading the chemical industry with sustainable and eco-friendly solutions', 'careers@lyondellbasell.com', '02965487230', 10),
(17, 'Tesco', 'Redefining retail experiences with seamless shopping and delivery services', 'jobs@tesco-plc.com', '02834796150', 6),
(18, 'Standard Chartered', 'Empowering financial success through personalized financial planning and services', 'careers@standardchartered.com', '02714859230', 4),
(19, 'BAE Systems', 'Innovating aerospace technologies for national security and exploration', 'jobs@baesystems.com', '02675391480', 35),
(20, 'BT Group', 'Connecting the world through reliable and high-speed communication networks', 'careers@btgroupplc.com', '02948625710', 26),
(21, 'Imperial Brands', 'Enhancing lifestyles with a diverse range of consumer goods products', 'hr@imperialbrandsplc.com', '02829517340', 18),
(22, 'CNH Industrial', 'Providing integral solutions for industrial sectors\' efficiency and productivity', 'jobs@cnhindustrial.com', '02761489520', 10),
(23, 'AstraZeneca', 'Researching and developing life-saving pharmaceutical innovations for global health', 'opportunities@astrazenecagroup.com', '02684923710', 2),
(24, 'Vodafone', 'Revolutionizing communication networks for seamless connectivity', 'careers@vodafonegroup.com', '02953718640', 26),
(25, 'London Stock Exchange', 'Providing tailored financial solutions to meet diverse client needs', 'jobs@lseg.com', '02863157490', 36),
(26, 'Aviva', 'Offering comprehensive insurance packages for individuals and businesses', 'hr@avivagroup.com', '02742851960', 4),
(27, 'Prudential', 'Protecting against life\'s uncertainties with reliable insurance coverage', 'careers@prudentialplc.com', '02697284630', 4),
(28, 'Willis Towers Watson', 'Ensuring financial security through customizable insurance plans', 'jobs@willistowerswatson.com', '02936571480', 37),
(29, 'Liberty Global', 'Driving connectivity through cutting-edge telecommunications technology', 'hr@libertyglobalplc.com', '02881429560', 26),
(30, 'SSE', 'Leading the renewable energy revolution for a sustainable future', 'careers@sseplc.com', '02759386120', 28),
(31, 'Coca-Cola Europacific Partners', 'Quenching thirst with a diverse range of refreshing beverage options', 'jobs@cocacolaeuropacific.com', '02641758230', 34),
(32, 'RELX', 'Providing comprehensive services to meet diverse client needs with excellence', 'opportunities@relxgroup.com', '02974836510', 17),
(33, 'Ferguson', 'Supplying top-quality construction materials for infrastructure development', 'careers@fergusonplc.com', '02813659420', 6),
(34, 'Reckitt Benckiser', 'Innovating consumer goods solutions for modern living', 'jobs@reckittbenckiser.com', '02758231460', 2),
(35, 'WPP', 'Transforming brand narratives and consumer perceptions through innovative advertising', 'hr@wppgroup.com', '02624987350', 7),
(36, 'Phoenix Group', 'Safeguarding assets and investments with reliable insurance solutions', 'opportunities@phoenixgroupplc.com', '02971648520', 4),
(37, 'St James\'s Place', 'Offering peace of mind through customizable insurance policies', 'careers@sjpplc.com', '02895432170', 4),
(38, 'Segro', 'Building communities and enhancing lifestyles with premier real estate developments', 'jobs@segrogroup.com', '02736714850', 25),
(39, 'Compass Group', 'Offering specialized services to meet diverse client needs effectively', 'hr@compass-group.com', '02678593210', 11),
(40, 'Associated British Foods', 'Redefining retail experiences with personalized customer service and innovative offerings', 'opportunities@abfplc.com', '02954871630', 6),
(41, 'M&G', 'Providing comprehensive insurance coverage for all aspects of life', 'careers@mandg.com', '02823796510', 4),
(42, 'Amcor', 'Offering eco-friendly and innovative packaging solutions for sustainable packaging needs', 'jobs@amcor.com', '02769154820', 10),
(43, 'Centrica', 'Delivering essential utility services for communities\' growth and prosperity', 'hr@centricagroup.com', '02631485790', 28),
(44, 'Ashtead Group', 'Offering a wide range of services to enhance quality of life and productivity', 'opportunities@ashteadgroupplc.com', '02987456120', 14),
(45, 'Antofagasta plc', 'Ethically sourcing raw materials to support global infrastructure development', 'careers@antofagastaplc.com', '02851239470', 31),
(46, '3i Group', 'Empowering financial success through strategic investments and financial planning', 'jobs@3igroup.com', '02748625130', 4),
(47, 'Sainsbury\'s', 'Offering diverse retail experiences tailored to modern consumer needs', 'hr@sainsburysplc.com', '02693571460', 6),
(48, 'Evraz', 'Driving responsible mining practices for environmental sustainability', 'opportunities@evrazplc.com', '02974856390', 10),
(49, 'Rolls-Royce', 'Innovating aerospace technologies for national security and exploration', 'careers@rolls-roycegroup.com', '02814795680', 5),
(50, 'Kingfisher plc', 'Redefining retail experiences with innovative technology and customer-centric approaches', 'jobs@kingfisherplc.com', '02763148550', 6);

-- --------------------------------------------------------

--
-- Stand-in structure for view `information_technology_jobs`
-- (See below for the actual view)
--
CREATE TABLE `information_technology_jobs` (
`Job Title` varchar(255)
,`Job Description` varchar(255)
,`Salary` decimal(10,2)
,`Location` varchar(255)
,`Date Posted` date
,`Closing Date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_description` varchar(255) NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `date_posted` timestamp NULL DEFAULT current_timestamp(),
  `closing_date` date NOT NULL,
  `sector_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `job_title`, `job_description`, `salary`, `date_posted`, `closing_date`, `sector_id`, `employer_id`, `location_id`) VALUES
(1, 'Senior Sustainability Analyst', 'Analyze and enhance environmental impact.', 90000.00, '2024-02-01 08:45:23', '2024-03-01', 22, 7, 27),
(2, 'Digital Banking Innovator', 'Revolutionize digital banking solutions', 80000.00, '2024-02-01 16:22:10', '2024-03-01', 4, 2, 14),
(3, 'Renewable Energy Project Manager', 'Lead initiatives in sustainable energy projects', 85000.00, '2024-02-02 12:31:45', '2024-03-02', 28, 3, 8),
(4, 'Exploration Geologist', 'Discover new resource opportunities', 75000.00, '2024-02-02 09:18:30', '2024-03-02', 31, 4, 22),
(5, 'Cybersecurity Specialist', 'Safeguard digital assets', 78000.00, '2024-02-03 18:50:05', '2024-03-03', 1, 9, 3),
(6, 'Product Development Manager', 'Drive innovation in product development', 82000.00, '2024-02-03 14:12:40', '2024-03-03', 10, 16, 18),
(7, 'Sustainable Packaging Engineer', 'Design eco-friendly packaging solutions', 80000.00, '2024-02-04 21:03:15', '2024-03-04', 22, 42, 7),
(8, 'Pharmaceutical Research Scientist', 'Contribute to groundbreaking pharmaceutical research', 85000.00, '2024-02-04 10:28:22', '2024-03-04', 2, 8, 29),
(9, 'Blockchain Solutions Architect', 'Develop cutting-edge blockchain solutions', 90000.00, '2024-02-05 05:15:17', '2024-03-05', 1, 25, 12),
(10, 'Mining Operations Manager', 'Oversee efficient mining operations', 95000.00, '2024-02-05 23:48:55', '2024-03-05', 31, 10, 4),
(11, 'Industrial Gas Process Engineer', 'Optimize industrial gas processes', 85000.00, '2024-02-06 19:07:33', '2024-03-06', 5, 11, 25),
(12, 'AI-driven Investment Analyst', 'Utilize AI for investment strategies', 88000.00, '2024-02-07 03:56:48', '2024-03-07', 4, 28, 17),
(13, 'Digital Transformation Strategist', 'Drive digital transformation initiatives', 92000.00, '2024-02-07 07:39:01', '2024-03-07', 1, 24, 9),
(14, 'Renewable Energy Grid Engineer', 'Engineer sustainable energy grids', 87000.00, '2024-02-08 13:14:29', '2024-03-08', 28, 14, 28),
(15, 'Craft Brewmaster', 'Create unique craft brews', 78000.00, '2024-02-08 22:59:40', '2024-03-08', 34, 15, 20),
(16, 'Polymer Materials Chemist', 'Research innovative materials', 80000.00, '2024-02-09 16:36:14', '2024-03-09', 16, 16, 5),
(17, 'E-commerce Data Analyst', 'Analyze data for e-commerce strategies', 75000.00, '2024-02-09 11:25:27', '2024-03-09', 1, 17, 19),
(18, 'International Trade Finance Specialist', 'Facilitate trade finance solutions', 88000.00, '2024-02-10 08:03:49', '2024-03-10', 4, 18, 10),
(19, 'Aerospace Systems Engineer', 'Design cutting-edge aerospace systems', 95000.00, '2024-02-10 04:49:02', '2024-03-10', 5, 19, 26),
(20, '5G Network Architect', 'Lead 5G network architecture initiatives', 90000.00, '2024-02-11 20:20:18', '2024-03-11', 26, 20, 2),
(21, 'Tobacco Harm Reduction Scientist', 'Research harm reduction strategies', 82000.00, '2024-02-11 08:45:23', '2024-03-11', 2, 6, 23),
(22, 'Precision Agriculture Specialist', 'Implement precision agriculture', 80000.00, '2024-02-12 16:22:10', '2024-03-12', 15, 22, 16),
(23, 'Clinical Trials Project Manager', 'Manage clinical trials for pharmaceuticals', 92000.00, '2024-02-12 12:31:45', '2024-03-12', 2, 23, 30),
(24, 'Telecommunications Network Planner', 'Plan telecommunications network expansions', 85000.00, '2024-02-13 09:18:30', '2024-03-13', 26, 24, 11),
(25, 'Financial Market Data Analyst', 'Analyze financial market data', 88000.00, '2024-02-13 18:50:05', '2024-03-13', 4, 25, 6),
(26, 'Insurtech Innovation Manager', 'Drive innovation in insurtech', 90000.00, '2024-02-14 14:12:40', '2024-03-14', 4, 26, 21),
(27, 'Wealth Management Advisor', 'Advise clients on wealth management', 92000.00, '2024-02-14 21:03:15', '2024-03-14', 4, 37, 13),
(28, 'Employee Benefits Consultant', 'Consult on employee benefits', 95000.00, '2024-02-15 10:28:22', '2024-03-15', 8, 28, 1),
(29, 'Cable Broadband Network Engineer', 'Optimize cable broadband networks', 85000.00, '2024-02-15 05:15:17', '2024-03-15', 26, 29, 24),
(30, 'Renewable Energy Operations Manager', 'Manage renewable energy operations', 90000.00, '2024-02-16 23:48:55', '2024-03-16', 28, 30, 15),
(31, 'Sustainable Beverage Packaging Designer', 'Design sustainable beverage packaging', 80000.00, '2024-02-16 19:07:33', '2024-03-16', 22, 15, 30),
(32, 'Software Developer', 'Develop legal technology solutions', 92000.00, '2024-02-17 03:56:48', '2024-03-17', 21, 20, 2),
(33, 'Plumbing and HVAC Systems Engineer', 'Design innovative plumbing and HVAC systems', 85000.00, '2024-02-17 07:39:01', '2024-03-17', 5, 33, 29),
(34, 'Consumer Health Product Researcher', 'Research consumer health products', 78000.00, '2024-02-18 13:14:29', '2024-03-18', 2, 34, 7),
(35, 'Creative Director', 'Lead creative projects', 92000.00, '2024-02-18 22:59:40', '2024-03-18', 18, 35, 12),
(36, 'Actuarial Data Analyst', 'Analyze actuarial data', 88000.00, '2024-02-19 16:36:14', '2024-03-19', 4, 27, 19),
(37, 'Wealth Management Advisor', 'Advise clients on wealth management', 92000.00, '2024-02-19 11:25:27', '2024-03-19', 4, 37, 23),
(38, 'Sustainable Logistics Planner', 'Plan sustainable logistics', 85000.00, '2024-02-20 08:03:49', '2024-03-20', 13, 17, 9),
(39, 'Culinary Innovation Chef', 'Innovate culinary offerings', 80000.00, '2024-02-20 04:49:02', '2024-03-20', 34, 39, 18),
(40, 'Sustainable Agriculture Specialist', 'Implement sustainable agriculture practices', 87000.00, '2024-02-21 20:20:18', '2024-03-21', 15, 41, 14),
(41, 'ESG Investment Analyst', 'Analyze investments through an ESG lens', 88000.00, '2024-02-21 08:45:23', '2024-03-21', 4, 36, 5),
(42, 'Sustainable Packaging Designer', 'Design sustainable packaging solutions', 80000.00, '2024-02-22 16:22:10', '2024-03-22', 22, 42, 1),
(43, 'Renewable Energy Project Manager', 'Lead initiatives in sustainable energy projects', 85000.00, '2024-02-22 12:31:45', '2024-03-22', 28, 3, 27),
(44, 'Equipment Rental Operations Manager', 'Manage operations for equipment rental', 90000.00, '2024-02-23 09:18:30', '2024-03-23', 10, 44, 6),
(45, 'Mining Safety and Compliance Officer', 'Ensure mining safety and compliance', 82000.00, '2024-02-23 18:50:05', '2024-03-23', 3, 45, 26),
(46, 'Private Equity Investment Analyst', 'Analyze private equity investments', 92000.00, '2024-02-24 14:12:40', '2024-03-24', 4, 46, 8),
(47, 'Grocery Delivery Optimization Analyst', 'Optimize grocery delivery logistics', 78000.00, '2024-02-24 21:03:15', '2024-03-24', 6, 47, 21),
(48, 'Steel Production Process Engineer', 'Optimize steel production processes', 85000.00, '2024-02-25 10:28:22', '2024-03-25', 10, 48, 16),
(49, 'Aerospace Materials Engineer', 'Research aerospace materials', 90000.00, '2024-02-25 05:15:17', '2024-03-25', 5, 49, 11),
(50, 'Sustainable Home Improvement Advisor', 'Advise on sustainable home improvement', 92000.00, '2024-02-26 23:48:55', '2024-03-26', 22, 50, 25);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jobs_posted_in_last_30_days`
-- (See below for the actual view)
--
CREATE TABLE `jobs_posted_in_last_30_days` (
`Job Title` varchar(255)
,`Job Description` varchar(255)
,`Sector` varchar(255)
,`Salary` decimal(10,2)
,`Date Posted` date
,`Closing Date` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `job_application_count`
-- (See below for the actual view)
--
CREATE TABLE `job_application_count` (
`Employer` varchar(255)
,`Job` varchar(255)
,`Sector` varchar(255)
,`Salary` decimal(10,2)
,`Application Count` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `job_contract`
--

CREATE TABLE `job_contract` (
  `job_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_contract`
--

INSERT INTO `job_contract` (`job_id`, `contract_id`) VALUES
(1, 7),
(2, 12),
(3, 3),
(4, 8),
(5, 2),
(6, 5),
(6, 9),
(7, 4),
(8, 11),
(9, 14),
(10, 1),
(11, 6),
(12, 10),
(13, 13),
(14, 7),
(15, 3),
(15, 8),
(16, 1),
(17, 12),
(18, 5),
(19, 9),
(20, 4),
(21, 11),
(21, 14),
(22, 2),
(23, 10),
(24, 6),
(25, 13),
(26, 1),
(27, 3),
(28, 7),
(29, 12),
(29, 14),
(30, 9),
(31, 8),
(32, 2),
(33, 4),
(34, 5),
(35, 6),
(35, 11),
(36, 13),
(37, 10),
(38, 1),
(39, 3),
(40, 8),
(41, 7),
(42, 5),
(42, 9),
(43, 2),
(44, 4),
(45, 14),
(46, 6),
(47, 11),
(48, 12),
(49, 13),
(50, 1),
(50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`, `country`) VALUES
(1, 'Armagh', 'Northern Ireland'),
(2, 'Bangor', 'Northern Ireland'),
(3, 'Belfast', 'Northern Ireland'),
(4, 'Lisburn', 'Northern Ireland'),
(5, 'Londonderry', 'Northern Ireland'),
(6, 'Newry', 'Northern Ireland'),
(7, 'Aberdeen', 'Scotland'),
(8, 'Dundee', 'Scotland'),
(9, 'Dunfermline', 'Scotland'),
(10, 'Edinburgh', 'Scotland'),
(11, 'Glasgow', 'Scotland'),
(12, 'Inverness', 'Scotland'),
(13, 'Perth', 'Scotland'),
(14, 'Stirling', 'Scotland'),
(15, 'Bangor', 'Wales'),
(16, 'Cardiff', 'Wales'),
(17, 'Newport', 'Wales'),
(18, 'St Asaph', 'Wales'),
(19, 'St Davids', 'Wales'),
(20, 'Swansea', 'Wales'),
(21, 'Wrexham', 'Wales'),
(22, 'Bath', 'England'),
(23, 'Birmingham', 'England'),
(24, 'Bradford', 'England'),
(25, 'Brighton & Hove', 'England'),
(26, 'Bristol', 'England'),
(27, 'Cambridge', 'England'),
(28, 'Canterbury', 'England'),
(29, 'Carlisle', 'England'),
(30, 'Chelmsford', 'England'),
(31, 'Chester', 'England'),
(32, 'Chichester', 'England'),
(33, 'Colchester', 'England'),
(34, 'Coventry', 'England'),
(35, 'Derby', 'England'),
(36, 'Doncaster', 'England'),
(37, 'Durham', 'England'),
(38, 'Ely', 'England'),
(39, 'Exeter', 'England'),
(40, 'Gloucester', 'England'),
(41, 'Hereford', 'England'),
(42, 'Kingston-upon-Hull', 'England'),
(43, 'Lancaster', 'England'),
(44, 'Leeds', 'England'),
(45, 'Leicester', 'England'),
(46, 'Lichfield', 'England'),
(47, 'Lincoln', 'England'),
(48, 'Liverpool', 'England'),
(49, 'London', 'England'),
(50, 'Manchester', 'England'),
(51, 'Milton Keynes', 'England'),
(52, 'Newcastle-upon-Tyne', 'England'),
(53, 'Norwich', 'England'),
(54, 'Nottingham', 'England'),
(55, 'Oxford', 'England'),
(56, 'Peterborough', 'England'),
(57, 'Plymouth', 'England'),
(58, 'Portsmouth', 'England'),
(59, 'Preston', 'England'),
(60, 'Ripon', 'England'),
(61, 'Salford', 'England'),
(62, 'Salisbury', 'England'),
(63, 'Sheffield', 'England'),
(64, 'Southampton', 'England'),
(65, 'Southend-on-Sea', 'England'),
(66, 'St Albans', 'England'),
(67, 'Stoke on Trent', 'England'),
(68, 'Sunderland', 'England'),
(69, 'Truro', 'England'),
(70, 'Wakefield', 'England'),
(71, 'Wells', 'England'),
(72, 'Westminster', 'England'),
(73, 'Winchester', 'England'),
(74, 'Wolverhampton', 'England'),
(75, 'Worcester', 'England'),
(76, 'York', 'England');

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `sector_id` int(11) NOT NULL,
  `sector_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`sector_id`, `sector_name`) VALUES
(73, 'Accounting and Auditing'),
(70, 'Advertising'),
(71, 'Aerospace Defense'),
(61, 'Aerospace Engineering'),
(15, 'Agriculture'),
(78, 'Animal Welfare'),
(79, 'Archaeology'),
(30, 'Architecture and Design'),
(39, 'Artificial Intelligence'),
(18, 'Arts and Entertainment'),
(53, 'Augmented Reality'),
(27, 'Automotive'),
(86, 'Aviation'),
(40, 'Biomedical Engineering'),
(93, 'Biometrics'),
(48, 'Biopharmaceuticals'),
(76, 'Chemical Engineering'),
(14, 'Construction'),
(33, 'Consumer Goods'),
(83, 'Cosmetic Industry'),
(43, 'Cryptocurrency'),
(9, 'Customer Service'),
(52, 'Cybersecurity'),
(44, 'Data Analytics'),
(35, 'Defense'),
(41, 'E-commerce'),
(3, 'Education'),
(92, 'Elderly Care Services'),
(28, 'Energy'),
(5, 'Engineering'),
(22, 'Environmental'),
(50, 'Environmental Conservation'),
(58, 'Event Planning'),
(59, 'Fashion and Apparel'),
(68, 'Film and Cinematography'),
(4, 'Finance'),
(36, 'Financial Services'),
(97, 'Fitness and Wellness Industry'),
(34, 'Food and Beverage'),
(63, 'Forestry'),
(56, 'Gaming Industry'),
(75, 'Genetic Engineering'),
(94, 'Geothermal Energy'),
(20, 'Government'),
(2, 'Healthcare'),
(11, 'Hospitality'),
(8, 'Human Resources'),
(77, 'Humanitarian Aid'),
(88, 'Information Architecture'),
(38, 'Information Security'),
(1, 'Information Technology'),
(72, 'Insurance'),
(60, 'Interior Design'),
(21, 'Legal'),
(10, 'Manufacturing'),
(62, 'Maritime and Shipping'),
(7, 'Marketing'),
(17, 'Media and Communication'),
(80, 'Meteorology'),
(31, 'Mining'),
(45, 'Mobile App Development'),
(96, 'Mobile Payment Systems'),
(67, 'Music Production'),
(46, 'Nanotechnology'),
(19, 'Non-profit and Charity'),
(74, 'Pharmaceuticals Research'),
(37, 'Professional Services'),
(87, 'Public Relations'),
(69, 'Publishing'),
(91, 'Quantum Computing'),
(25, 'Real Estate'),
(51, 'Renewable Energy'),
(84, 'Renewable Materials'),
(23, 'Research and Development'),
(6, 'Retail'),
(55, 'Robotics'),
(12, 'Sales'),
(16, 'Science'),
(57, 'Social Media Management'),
(24, 'Social Services'),
(81, 'Space Exploration'),
(29, 'Sports and Recreation'),
(42, 'Supply Chain Management'),
(54, 'Sustainable Agriculture'),
(85, 'Sustainable Tourism'),
(26, 'Telecommunications'),
(89, 'Telecommunications Infrastructure'),
(49, 'Telemedicine'),
(32, 'Tobacco'),
(13, 'Transportation'),
(65, 'Urban Planning'),
(66, 'Veterinary Services'),
(47, 'Virtual Reality'),
(90, 'Waste Management'),
(64, 'Water Resources Management'),
(95, 'Wildlife Conservation'),
(82, 'Zoology');

-- --------------------------------------------------------

--
-- Structure for view `candidates_application_status`
--
DROP TABLE IF EXISTS `candidates_application_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`jbothwell06`@`localhost` SQL SECURITY DEFINER VIEW `candidates_application_status`  AS SELECT `candidate`.`first_name` AS `First Name`, `candidate`.`last_name` AS `Last Name`, `job`.`job_title` AS `Job Title`, `job`.`salary` AS `Salary`, `sector`.`sector_name` AS `Sector`, `application`.`application_status` AS `Application Status` FROM (((`job` join `application` on(`job`.`job_id` = `application`.`job_id`)) join `candidate` on(`application`.`candidate_id` = `candidate`.`candidate_id`)) join `sector` on(`job`.`sector_id` = `sector`.`sector_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `information_technology_jobs`
--
DROP TABLE IF EXISTS `information_technology_jobs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`jbothwell06`@`localhost` SQL SECURITY DEFINER VIEW `information_technology_jobs`  AS SELECT `job`.`job_title` AS `Job Title`, `job`.`job_description` AS `Job Description`, `job`.`salary` AS `Salary`, `location`.`location_name` AS `Location`, cast(`job`.`date_posted` as date) AS `Date Posted`, `job`.`closing_date` AS `Closing Date` FROM (`job` join `location` on(`job`.`location_id` = `location`.`location_id`)) WHERE `job`.`sector_id` = 1 AND `job`.`salary` between 60000 and 80000 ;

-- --------------------------------------------------------

--
-- Structure for view `jobs_posted_in_last_30_days`
--
DROP TABLE IF EXISTS `jobs_posted_in_last_30_days`;

CREATE ALGORITHM=UNDEFINED DEFINER=`jbothwell06`@`localhost` SQL SECURITY DEFINER VIEW `jobs_posted_in_last_30_days`  AS SELECT `job`.`job_title` AS `Job Title`, `job`.`job_description` AS `Job Description`, `sector`.`sector_name` AS `Sector`, `job`.`salary` AS `Salary`, cast(`job`.`date_posted` as date) AS `Date Posted`, `job`.`closing_date` AS `Closing Date` FROM (`job` join `sector` on(`job`.`sector_id` = `sector`.`sector_id`)) WHERE `job`.`date_posted` > current_timestamp() - interval 30 day AND `job`.`closing_date` > curdate() ORDER BY cast(`job`.`date_posted` as date) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `job_application_count`
--
DROP TABLE IF EXISTS `job_application_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`jbothwell06`@`localhost` SQL SECURITY DEFINER VIEW `job_application_count`  AS SELECT `employer`.`employer_name` AS `Employer`, `job`.`job_title` AS `Job`, `sector`.`sector_name` AS `Sector`, `job`.`salary` AS `Salary`, count(`application`.`job_id`) AS `Application Count` FROM (((`job` left join `application` on(`job`.`job_id` = `application`.`job_id`)) join `sector` on(`job`.`sector_id` = `sector`.`sector_id`)) join `employer` on(`job`.`employer_id` = `employer`.`employer_id`)) GROUP BY `job`.`job_id` ORDER BY count(0) DESC, `job`.`job_id` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`job_id`,`candidate_id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`contract_id`),
  ADD UNIQUE KEY `contract_name_2` (`contract_name`),
  ADD KEY `contract_name` (`contract_name`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`employer_id`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `employer_name` (`employer_name`),
  ADD KEY `email` (`email`),
  ADD KEY `sector_id` (`sector_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `job_title` (`job_title`),
  ADD KEY `salary` (`salary`),
  ADD KEY `sector_id` (`sector_id`),
  ADD KEY `employer_id` (`employer_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `job_contract`
--
ALTER TABLE `job_contract`
  ADD PRIMARY KEY (`job_id`,`contract_id`),
  ADD KEY `contract_id` (`contract_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_name` (`location_name`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`sector_id`),
  ADD UNIQUE KEY `sector_name_2` (`sector_name`),
  ADD KEY `sector_name` (`sector_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `contract_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `employer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `sector`
--
ALTER TABLE `sector`
  MODIFY `sector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `application_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`),
  ADD CONSTRAINT `application_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`);

--
-- Constraints for table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `employer_ibfk_1` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`sector_id`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`sector_id`),
  ADD CONSTRAINT `job_ibfk_2` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`),
  ADD CONSTRAINT `job_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `job_contract`
--
ALTER TABLE `job_contract`
  ADD CONSTRAINT `job_contract_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`),
  ADD CONSTRAINT `job_contract_ibfk_2` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`contract_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
