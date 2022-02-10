-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 05:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpi eps`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `department`, `description`, `date`) VALUES
(1, 'Additional Director General Office', '', '2022-01-17 13:50:23'),
(2, 'Central Provincial Office - Kandy', '', '2022-01-17 13:50:23'),
(3, 'Chairman Office', '', '2022-01-17 13:50:23'),
(4, 'Colombo Metro Region Division', '', '2022-01-17 13:50:23'),
(5, 'Consultancy Division', '', '2022-01-17 13:50:23'),
(6, 'Deputy Director General Planning Office', '', '2022-01-17 13:50:23'),
(7, 'Deputy Director General Project Office', '', '2022-01-17 13:50:23'),
(8, 'Design Project Management And Consultancy Division', '', '2022-01-17 13:50:23'),
(9, 'Director General Office', '', '2022-01-17 13:50:24'),
(10, 'Eastern Provincial Office - Trinco', '', '2022-01-17 13:50:24'),
(11, 'Engineering Consultancy Division', '', '2022-01-17 13:50:24'),
(12, 'Engineering Services Division', '', '2022-01-17 13:50:24'),
(13, 'Environment & Landscape Division', '', '2022-01-17 13:50:24'),
(14, 'Finance Division', '', '2022-01-17 13:50:24'),
(15, 'Geography Information System Division', '', '2022-01-17 13:50:24'),
(16, 'Government Audit Division', '', '2022-01-17 13:50:24'),
(17, 'Housing Division', '', '2022-01-17 13:50:24'),
(18, 'Human Resource Management Division', '', '2022-01-17 13:50:24'),
(19, 'Information Technology System Division', '', '2022-01-17 13:50:24'),
(20, 'Internal Audit Division', '', '2022-01-17 13:50:24'),
(21, 'Land Development And Management Division', '', '2022-01-17 13:50:24'),
(22, 'Legal Division', '', '2022-01-17 13:50:24'),
(23, 'North Central Provincial Office - Anuradhapura', '', '2022-01-17 13:50:24'),
(24, 'North Western Provincial Office - Kurunegala', '', '2022-01-17 13:50:24'),
(25, 'Northern Provincial Office - Jaffna', '', '2022-01-17 13:50:24'),
(26, 'PPM & Recoveries Division', '', '2022-01-17 13:50:24'),
(27, 'Project Management Division', '', '2022-01-17 13:50:24'),
(28, 'Real Estate Management Division', '', '2022-01-17 13:50:24'),
(29, 'Research And Development Division', '', '2022-01-17 13:50:24'),
(30, 'Sabaragamuwa Provincial Office - Rathnapura', '', '2022-01-17 13:50:25'),
(31, 'Southern Provincial Office - Galle', '', '2022-01-17 13:50:25'),
(32, 'Strategic Planning Division', '', '2022-01-17 13:50:25'),
(33, 'Temp Main Dept', '', '2022-01-17 13:50:25'),
(34, 'Uva Provincial Office - Badulla', '', '2022-01-17 13:50:25'),
(35, 'Western Province Division', '', '2022-01-17 13:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `designation_list`
--

CREATE TABLE `designation_list` (
  `id` int(11) NOT NULL,
  `designation` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation_list`
--

INSERT INTO `designation_list` (`id`, `designation`, `description`, `date`) VALUES
(1, 'Accountant', '', '2022-01-17 13:47:45'),
(2, 'Accounts Clerk', '', '2022-01-17 13:47:45'),
(3, 'Acting Administrative Officer', '', '2022-01-17 13:47:45'),
(4, 'Acting Director', '', '2022-01-17 13:47:45'),
(5, 'Additional Project Director', '', '2022-01-17 13:47:45'),
(6, 'Addl. Director General', '', '2022-01-17 13:47:45'),
(7, 'Administrative Officer', '', '2022-01-17 13:47:45'),
(8, 'Aircondition Technician', '', '2022-01-17 13:47:46'),
(9, 'Architect', '', '2022-01-17 13:47:46'),
(10, 'Architect (Trainee)', '', '2022-01-17 13:47:46'),
(11, 'Assist. Planning Officer', '', '2022-01-17 13:47:46'),
(12, 'Assistant Cook', '', '2022-01-17 13:47:46'),
(13, 'Assistant Coucher', '', '2022-01-17 13:47:46'),
(14, 'Assistant Director', '', '2022-01-17 13:47:46'),
(15, 'Assistant Engineer', '', '2022-01-17 13:47:46'),
(16, 'Assistant Environment Planning Officer', '', '2022-01-17 13:47:46'),
(17, 'Assistant Internal Auditor', '', '2022-01-17 13:47:46'),
(18, 'Assistant Librarian', '', '2022-01-17 13:47:46'),
(19, 'Assistant Manager', '', '2022-01-17 13:47:46'),
(20, 'Assistant Planing Officer', '', '2022-01-17 13:47:46'),
(21, 'Assistant Project Director', '', '2022-01-17 13:47:46'),
(22, 'Assistant Steward', '', '2022-01-17 13:47:46'),
(23, 'Asst. Bungalow Keeper', '', '2022-01-17 13:47:46'),
(24, 'Asst. Land Officer', '', '2022-01-17 13:47:47'),
(25, 'Asst. Landscape Architect', '', '2022-01-17 13:47:47'),
(26, 'Asst. Receptionist', '', '2022-01-17 13:47:47'),
(27, 'Asst. Security Officer', '', '2022-01-17 13:47:47'),
(28, 'Asst. Store Keeper', '', '2022-01-17 13:47:47'),
(29, 'Audio Visual Manager', '', '2022-01-17 13:47:47'),
(30, 'Audio Visual Operator', '', '2022-01-17 13:47:47'),
(31, 'Audio Visual Operator Aide', '', '2022-01-17 13:47:47'),
(32, 'Audit Assistant', '', '2022-01-17 13:47:47'),
(33, 'Audit Clerk', '', '2022-01-17 13:47:47'),
(34, 'Audit Officer', '', '2022-01-17 13:47:47'),
(35, 'Audit Trainee', '', '2022-01-17 13:47:47'),
(36, 'Badic of assigne', '', '2022-01-17 13:47:47'),
(37, 'Bar Keeper', '', '2022-01-17 13:47:47'),
(38, 'Bar Keeper Aide', '', '2022-01-17 13:47:47'),
(39, 'Board Of Management Assistant Secretary', '', '2022-01-17 13:47:47'),
(40, 'Cameraman', '', '2022-01-17 13:47:47'),
(41, 'Caretaker', '', '2022-01-17 13:47:47'),
(42, 'Caretaker /Actg. Office Aide', '', '2022-01-17 13:47:47'),
(43, 'Carpark Warden', '', '2022-01-17 13:47:47'),
(44, 'Carpenter', '', '2022-01-17 13:47:48'),
(45, 'Chairman', '', '2022-01-17 13:47:48'),
(46, 'Chief Internal Auditor', '', '2022-01-17 13:47:48'),
(47, 'Chief Security Officer', '', '2022-01-17 13:47:48'),
(48, 'Clerk', '', '2022-01-17 13:47:48'),
(49, 'Computer Operator', '', '2022-01-17 13:47:48'),
(50, 'Computer Operator (Trainee)', '', '2022-01-17 13:47:48'),
(51, 'Computer Programmer', '', '2022-01-17 13:47:48'),
(52, 'Confidential Secretary', '', '2022-01-17 13:47:48'),
(53, 'Confidential Secretary/Steno', '', '2022-01-17 13:47:48'),
(54, 'Consultant', '', '2022-01-17 13:47:48'),
(55, 'Cook', '', '2022-01-17 13:47:48'),
(56, 'Co-ordinating Officer', '', '2022-01-17 13:47:48'),
(57, 'Data Base Administrator', '', '2022-01-17 13:47:48'),
(58, 'Data Entry Operator', '', '2022-01-17 13:47:48'),
(59, 'Deputy Director', '', '2022-01-17 13:47:48'),
(60, 'Deputy Director General', '', '2022-01-17 13:47:48'),
(61, 'Development Regulation & Promotion Assistant', '', '2022-01-17 13:47:48'),
(62, 'Director', '', '2022-01-17 13:47:48'),
(63, 'Director General', '', '2022-01-17 13:47:48'),
(64, 'Draughtsman', '', '2022-01-17 13:47:48'),
(65, 'Driver', '', '2022-01-17 13:47:49'),
(66, 'Driver', '', '2022-01-17 13:47:49'),
(67, 'Dy. Chief Internal Auditor', '', '2022-01-17 13:47:49'),
(68, 'Economist', '', '2022-01-17 13:47:49'),
(69, 'Electrical Engineer', '', '2022-01-17 13:47:49'),
(70, 'Electrical Supevisor', '', '2022-01-17 13:47:49'),
(71, 'Electrician', '', '2022-01-17 13:47:49'),
(72, 'Enforcement Officer', '', '2022-01-17 13:47:49'),
(73, 'Enforcement Planner', '', '2022-01-17 13:47:49'),
(74, 'Engineer', '', '2022-01-17 13:47:49'),
(75, 'Environment Officer', '', '2022-01-17 13:47:49'),
(76, 'Environmental Planner', '', '2022-01-17 13:47:49'),
(77, 'Environmental Planning Assistant', '', '2022-01-17 13:47:49'),
(78, 'Environmental Planning Officer', '', '2022-01-17 13:47:49'),
(79, 'Exhibit Keeper', '', '2022-01-17 13:47:49'),
(80, 'Facility Manager', '', '2022-01-17 13:47:49'),
(81, 'Fax Machine Operator', '', '2022-01-17 13:47:49'),
(82, 'Field Assistant', '', '2022-01-17 13:47:49'),
(83, 'Field Officer', '', '2022-01-17 13:47:49'),
(84, 'Financial Assistant', '', '2022-01-17 13:47:49'),
(85, 'Garden Labourer', '', '2022-01-17 13:47:49'),
(86, 'Garden Superviser', '', '2022-01-17 13:47:50'),
(87, 'Geogrophy Information System Officer', '', '2022-01-17 13:47:50'),
(88, 'GIS Assistant', '', '2022-01-17 13:47:50'),
(89, 'GIS Technician', '', '2022-01-17 13:47:50'),
(90, 'Graduate Trainee - Assignment Basis', '', '2022-01-17 13:47:50'),
(91, 'Handyman', '', '2022-01-17 13:47:50'),
(92, 'Head Of Business Development', '', '2022-01-17 13:47:50'),
(93, 'Head Room Boy', '', '2022-01-17 13:47:50'),
(94, 'Helper', '', '2022-01-17 13:47:50'),
(95, 'Human Resource Officer', '', '2022-01-17 13:47:50'),
(96, 'Information Assistant', '', '2022-01-17 13:47:50'),
(97, 'Information System Officer', '', '2022-01-17 13:47:50'),
(98, 'Information Technologist', '', '2022-01-17 13:47:50'),
(99, 'Inspecting Officer', '', '2022-01-17 13:47:50'),
(100, 'Internal Auditor', '', '2022-01-17 13:47:50'),
(101, 'Investigation Officer', '', '2022-01-17 13:47:50'),
(102, 'Junior Architech', '', '2022-01-17 13:47:50'),
(103, 'Junior Legal Officer', '', '2022-01-17 13:47:50'),
(104, 'Kitchen Helper', '', '2022-01-17 13:47:50'),
(105, 'Labour Supervisor', '', '2022-01-17 13:47:50'),
(106, 'Labourer', '', '2022-01-17 13:47:51'),
(107, 'Lady Security Guard', '', '2022-01-17 13:47:51'),
(108, 'Lady Security Supervisor', '', '2022-01-17 13:47:51'),
(109, 'Land Officer', '', '2022-01-17 13:47:51'),
(110, 'Land Surveyor', '', '2022-01-17 13:47:51'),
(111, 'Landscape Architect', '', '2022-01-17 13:47:51'),
(112, 'Landscape Supervisor', '', '2022-01-17 13:47:51'),
(113, 'Legal Officer', '', '2022-01-17 13:47:51'),
(114, 'Lift Operator', '', '2022-01-17 13:47:51'),
(115, 'Lift Supervisor', '', '2022-01-17 13:47:51'),
(116, 'Lighting Technician', '', '2022-01-17 13:47:51'),
(117, 'Litho Printer', '', '2022-01-17 13:47:51'),
(118, 'Maintanance Tecnician', '', '2022-01-17 13:47:51'),
(119, 'Maintenance Assistant', '', '2022-01-17 13:47:51'),
(120, 'Management Assistant', '', '2022-01-17 13:47:51'),
(121, 'Management Trainee', '', '2022-01-17 13:47:51'),
(122, 'Manager', '', '2022-01-17 13:47:51'),
(123, 'Mason', '', '2022-01-17 13:47:51'),
(124, 'Meadia Manager', '', '2022-01-17 13:47:52'),
(125, 'Mechanical & Electrocal Engineer', '', '2022-01-17 13:47:52'),
(126, 'Media Aide', '', '2022-01-17 13:47:52'),
(127, 'Media Assistant', '', '2022-01-17 13:47:52'),
(128, 'Media Co-ordinator', '', '2022-01-17 13:47:52'),
(129, 'Media Field Assistant', '', '2022-01-17 13:47:52'),
(130, 'Messenger', '', '2022-01-17 13:47:52'),
(131, 'Moddler', '', '2022-01-17 13:47:52'),
(132, 'Office Aide', '', '2022-01-17 13:47:52'),
(133, 'Office in Charge', '', '2022-01-17 13:47:52'),
(134, 'Office Labourer', '', '2022-01-17 13:47:52'),
(135, 'Offset Machine Operator', '', '2022-01-17 13:47:52'),
(136, 'Perfomance Director', '', '2022-01-17 13:47:52'),
(137, 'Plan Printer', '', '2022-01-17 13:47:53'),
(138, 'Planning Assistant', '', '2022-01-17 13:47:53'),
(139, 'Planning Officer', '', '2022-01-17 13:47:53'),
(140, 'Plumber', '', '2022-01-17 13:47:53'),
(141, 'Printing Aide', '', '2022-01-17 13:47:53'),
(142, 'Printing Manager', '', '2022-01-17 13:47:53'),
(143, 'Printing Technician', '', '2022-01-17 13:47:53'),
(144, 'Project Manager', '', '2022-01-17 13:47:53'),
(145, 'Project Monitoring Officer', '', '2022-01-17 13:47:53'),
(146, 'Project Officer', '', '2022-01-17 13:47:53'),
(147, 'Prosecuting Officer', '', '2022-01-17 13:47:53'),
(148, 'Publicity Officer', '', '2022-01-17 13:47:53'),
(149, 'Quantity Surveyor', '', '2022-01-17 13:47:53'),
(150, 'Receptionist', '', '2022-01-17 13:47:53'),
(151, 'Receptionist/Telephone Operator', '', '2022-01-17 13:47:53'),
(152, 'Record Keeper', '', '2022-01-17 13:47:53'),
(153, 'Relocation & Social Marketing Asiistant', '', '2022-01-17 13:47:53'),
(154, 'Research Officer', '', '2022-01-17 13:47:54'),
(155, 'RESIGNE', '', '2022-01-17 13:47:54'),
(156, 'Restaurant Supervisor', '', '2022-01-17 13:47:54'),
(157, 'Restaurant Supervisor', '', '2022-01-17 13:47:54'),
(158, 'Riso Machnine Operator', '', '2022-01-17 13:47:54'),
(159, 'Ronio Machine Operator', '', '2022-01-17 13:47:54'),
(160, 'Room Boy', '', '2022-01-17 13:47:54'),
(161, 'Sanitory Labourer', '', '2022-01-17 13:47:54'),
(162, 'Secretary', '', '2022-01-17 13:47:54'),
(163, 'Secretary/ Stenographer (Eng./Sinhala)', '', '2022-01-17 13:47:54'),
(164, 'Security Guard', '', '2022-01-17 13:47:54'),
(165, 'Security Manager', '', '2022-01-17 13:47:54'),
(166, 'Security Officer', '', '2022-01-17 13:47:54'),
(167, 'Security Supervisor', '', '2022-01-17 13:47:54'),
(168, 'Senior Audit Officer', '', '2022-01-17 13:47:54'),
(169, 'Senior Internal Auditor', '', '2022-01-17 13:47:54'),
(170, 'Shroff', '', '2022-01-17 13:47:54'),
(171, 'Site Aide', '', '2022-01-17 13:47:54'),
(172, 'Site Engeenier', '', '2022-01-17 13:47:54'),
(173, 'Site Supervisor', '', '2022-01-17 13:47:54'),
(174, 'Snr. Draughtsman', '', '2022-01-17 13:47:55'),
(175, 'Snr. Prosecuting Officer', '', '2022-01-17 13:47:55'),
(176, 'Snr. System Analyst', '', '2022-01-17 13:47:55'),
(177, 'Snr. Typist', '', '2022-01-17 13:47:55'),
(178, 'Spatial Data', '', '2022-01-17 13:47:55'),
(179, 'Spatial Data Manager', '', '2022-01-17 13:47:55'),
(180, 'Staff Assistant', '', '2022-01-17 13:47:55'),
(181, 'Steno/Typist', '', '2022-01-17 13:47:55'),
(182, 'Stenographer (English)', '', '2022-01-17 13:47:55'),
(183, 'Stenographer (Sinhala)', '', '2022-01-17 13:47:55'),
(184, 'Still Photographer', '', '2022-01-17 13:47:55'),
(185, 'Store Keeper', '', '2022-01-17 13:47:55'),
(186, 'Storeman', '', '2022-01-17 13:47:55'),
(187, 'Stuward', '', '2022-01-17 13:47:55'),
(188, 'Supplies Officer', '', '2022-01-17 13:47:55'),
(189, 'Surveying Helper', '', '2022-01-17 13:47:55'),
(190, 'Surveyor', '', '2022-01-17 13:47:55'),
(191, 'System Analyst', '', '2022-01-17 13:47:56'),
(192, 'Technical Officer', '', '2022-01-17 13:47:56'),
(193, 'Telephone Operator', '', '2022-01-17 13:47:56'),
(194, 'Town Planner', '', '2022-01-17 13:47:56'),
(195, 'Trainee', '', '2022-01-17 13:47:56'),
(196, 'Translator', '', '2022-01-17 13:47:56'),
(197, 'Transport Aide', '', '2022-01-17 13:47:56'),
(198, 'Transport Assistant', '', '2022-01-17 13:47:56'),
(199, 'Transport Foreman', '', '2022-01-17 13:47:56'),
(200, 'Transport Supervisor', '', '2022-01-17 13:47:56'),
(201, 'Typist', '', '2022-01-17 13:47:56'),
(202, 'Typist English', '', '2022-01-17 13:47:56'),
(203, 'Typist Sinhala', '', '2022-01-17 13:47:56'),
(204, 'Typist Tamil', '', '2022-01-17 13:47:56'),
(205, 'Video Aide', '', '2022-01-17 13:47:56'),
(206, 'Video Cameraman', '', '2022-01-17 13:47:57'),
(207, 'Video Editor', '', '2022-01-17 13:47:57'),
(208, 'Video Recordist', '', '2022-01-17 13:47:57'),
(209, 'Watcher', '', '2022-01-17 13:47:57'),
(210, 'Work Site Supervis', '', '2022-01-17 13:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `duty_list`
--

CREATE TABLE `duty_list` (
  `id` int(11) NOT NULL,
  `empcode` int(11) NOT NULL,
  `noc` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `dutyfrm` varchar(100) NOT NULL,
  `tutq1` varchar(1000) NOT NULL,
  `progq1p` varchar(3) NOT NULL,
  `progq1l` varchar(3) NOT NULL,
  `tutq2` varchar(1000) NOT NULL,
  `progq2p` varchar(3) NOT NULL,
  `progq2l` varchar(3) NOT NULL,
  `tutq3` varchar(1000) NOT NULL,
  `progq3p` varchar(3) NOT NULL,
  `progq3l` varchar(3) NOT NULL,
  `created_date` int(11) NOT NULL DEFAULT current_timestamp(),
  `updated_date` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `duty_list`
--

INSERT INTO `duty_list` (`id`, `empcode`, `noc`, `desig`, `dutyfrm`, `tutq1`, `progq1p`, `progq1l`, `tutq2`, `progq2p`, `progq2l`, `tutq3`, `progq3p`, `progq3l`, `created_date`, `updated_date`) VALUES
(0, 779, 'K.D.S.Gunasekara', 'Computer Operator', 'Administration', '_', '90', '', '_', '90', '', '_', '90', '', 2022, 2147483647),
(0, 780, 'M.A.V.Manjitha', 'Computer Operator', 'Administration', 'make sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\n', '90', '', 'make sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\n', '90', '', 'make sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\n', '90', '', 2022, 2147483647),
(0, 814, 'K.W.R.Vihanga', 'Computer Operator', 'Administration / Legal', 'Ejectment Legal DocumentsNormal Letters Inter Office Memeo  for Attorney GeneralsMortion ', '100', '', 'Ejectment Legal DocumentsNormal Letters Inter Office Memeo  for Attorney GeneralsMortion ', '100', '', 'Ejectment Legal DocumentsNormal Letters Inter Office Memeo  for Attorney GeneralsMortion ', '100', '', 2022, 2147483647),
(10, 884, 'Mr. LC Bodaragama', 'IS Officer (Trainee)', 'ICT', 'Maintaining the housing application concerning the requirements from Housing Division.', '80', '', 'Maintaining the housing application concerning the requirements from Housing Division.', '80', '', 'Maintaining the housing application concerning the requirements from Housing Division.', '80', '', 2147483647, 2147483647),
(15, 907, 'Mr. BM Nilanga', 'Computer Operator(Trainee)', 'ICT', 'Recruited on October 2021', '', '', '', '', '', 'Letter typing(Sinhala/English)', '85', '', 2147483647, 2147483647),
(0, 1741, 'B.P.C.Baduge', 'Dy.Director', 'Legal', 'High Court Matters.MOUUNIDEP AgreementsTitle Report & PedigreeLetters of DemandLease/ Tenancy Agreement', '100', '', 'High Court Matters.MOUUNIDEP AgreementsTitle Report & PedigreeLetters of DemandLease/ Tenancy Agreement', '100', '', 'High Court Matters.MOUUNIDEP AgreementsTitle Report & PedigreeLetters of DemandLease/ Tenancy Agreement', '100', '', 2022, 2147483647),
(1, 1809, 'Mr. Manoj Perera', 'Director (ICT)', 'ICT', 'Preparation of software agreement and payment clearance for the external stakeholders to maintain the software sustainability. Provide guidance and training for the existing developers to meet the institutional deadlines. Identification and fixing of performance bugs remain in the UDA financial management system.', '85', '', 'Preparation of Terms of Reference (TOR\'s) and required technical specifications according to the UDA requirements. Administration and guidance of all software engineers for the facilitation of automated solutions to the UDA. Provision of an uninterrupted internet facility for the UDA and external stakeholders to access internet and UDA software applications.\r\n    Preparation of necessary technical agreements for the external stakeholders to maintain the software sustainability.\r\n    Management and administration of UDA website and official Facebook page. \r\n    Maintenance of the UDA exiting network and upgrading from time to time to meet the new user requirements. Design and development of a Housing Management System for the URPPC project.', '85', '', 'Preparation of Terms of Reference (TOR\'s) and required technical specifications according to the UDA requirements. Administration and guidance of all software engineers for the facilitation of automated solutions to the UDA. \r\n    Provision of an uninterrupted internet facility for the UDA and external stakeholders to access internet and UDA software applications.\r\n    Preparation of necessary technical agreements for the external stakeholders to maintain the software sustainability.\r\n    Management and administration of UDA website and official Facebook page. \r\n    Maintenance o the UDA exiting network and upgrading from time to time to meet the new user requirements. \r\n    Design and development of a Housing Management System for the URPPC project. \r\n    Provide technical facilitation for eliminating software bugs in the online document approval system.\r\n    Provision of backup facilities for all available software systems in the UDA.', '85', '', 2147483647, 2147483647),
(0, 1810, 'W.A.S. Sumanasooriya', 'Deputy Director General(HRM & Administration)', '', '', '100', '', '', '100', '', '', '100', '', 2022, 2147483647),
(0, 2168, 'R.M. A. L. Rajakaruna', 'Asst. Director (Lands) - Supervision of officers', 'Land', '1.Land Acquisition\\n2.Sec 44 Convert to 6 (1) Certificate\\n3.Land Vesting\\n4.Handling  Exsisting Acquisition and Vesting Files \\n5.Other Works\\n6.Special Works', '100', '', '1,2,3,4,5', '100', '', '1,2,3,4,5', '100', '', 2022, 2147483647),
(0, 2796, 'H M L R Herath', 'Confidential Secretary ', 'Administration ', ' Check email messages receive to DDG (Projects)  from Chairman, DG, other Diviisons, Provincial Offices and Ministry officials   Maintain DDG (Projects) Diary  giving appointments for  UDA  and Provincial Officers for meetings and site inspections                                                      ', '100', '', ' Check email messages receive to DDG (Projects)  from Chairman, DG, other Diviisons, Provincial Offices and Ministry officials   Maintain DDG (Projects) Diary  giving appointments for  UDA  and Provincial Officers for meetings and site inspections                                                      ', '100', '', ' Check email messages receive to DDG (Projects)  from Chairman, DG, other Diviisons, Provincial Offices and Ministry officials   Maintain DDG (Projects) Diary  giving appointments for  UDA  and Provincial Officers for meetings and site inspections                                                      ', '100', '', 2022, 2147483647),
(16, 3116, 'Mr. LS Wijerathne', 'Audio Visual Equipment Operator', 'ICT', 'Provide Audio-Visual equipment and facilitation of services concerning multimedia.', '80', '', 'Provide Audio-Visual equipment and facilitation of services concerning multimedia.', '80', '', 'Provide Audio-Visual equipment and facilitation of services concerning multimedia.', '80', '', 2147483647, 2147483647),
(0, 3161, 'K. Sivachandran', 'Office Aide', 'Administration', 'Assistance with DDG daily', '90', '', 'Assistance with DDG daily', '90', '', 'Assistance with DDG daily', '90', '', 2022, 2147483647),
(0, 3224, 'යූ.ඩබ්.ඊ. ප්‍රීති කුමාර', 'කාර්යාල කාර්යය සහයක', 'Land', 'අධ්‍යක්‍ෂතුමිය විසින් පවරන රාජකාරි \\nසාමාන්‍ය තැපැල්, ලියාපදිංචි තැපෑල, අනෙකුත් ලිපි මා.ස.ක. අංශයට යොමු කිරීම\\nලිපි ෆැක්ස් කිරීම\\nඉඩම් අත්පත් කිරීමේ සහතික පත් ගොනු කිරීම, අවශ්‍ය නිලධාරීන්ට ලබා දීම\\nඅධිකාරිය මඟින් ලබා ගන්නා රජයේ තක්සේරුවාර්තා ගොනු නිලධාරීන්ට අවශ්‍ය වේලාවන්ට ලබා දීම\\nතේ පිලියෙල කිරීම\\nපරිගණක ගත කල යුතු ලිපි සටහන් කර ලබා දීම - 1585\\n\\n', '95', '', 'අධ්‍යක්‍ෂතුමිය විසින් පවරන රාජකාරි \\nසාමාන්‍ය තැපැල්, ලියාපදිංචි තැපෑල, අනෙකුත් ලිපි මා.ස.ක. අංශයට යොමු කිරීම\\nලිපි ෆැක්ස් කිරීම\\nඉඩම් අත්පත් කිරීමේ සහතික පත් ගොනු කිරීම, අවශ්‍ය නිලධාරීන්ට ලබා දීම\\nඅධිකාරිය මඟින් ලබා ගන්නා රජයේ තක්සේරුවාර්තා ගොනු නිලධාරීන්ට අවශ්‍ය වේලාවන්ට ලබා දීම\\nතේ පිලියෙල කිරීම\\nපරිගණක ගත කල යුතු ලිපි සටහන් කර ලබා දීම - 1800', '95', '', 'අධ්‍යක්‍ෂතුමිය විසින් පවරන රාජකාරි \\nසාමාන්‍ය තැපැල්, ලියාපදිංචි තැපෑල, අනෙකුත් ලිපි මා.ස.ක. අංශයට යොමු කිරීම\\nලිපි ෆැක්ස් කිරීම\\nඉඩම් අත්පත් කිරීමේ සහතික පත් ගොනු කිරීම, අවශ්‍ය නිලධාරීන්ට ලබා දීම\\nඅධිකාරිය මඟින් ලබා ගන්නා රජයේ තක්සේරුවාර්තා ගොනු නිලධාරීන්ට අවශ්‍ය වේලාවන්ට ලබා දීම\\nතේ පිලියෙල කිරීම\\nපරිගණක ගත කල යුතු ලිපි සටහන් කර ලබා දීම - 1755', '95', '', 2022, 2147483647),
(0, 3258, 'ඊ.කේ.එන්. රෝහණ කරුණාරත්න', 'ක්ෂේත්‍ර නිලධාරි', 'Land', 'ක්ෂේත්‍ර සහකරුවයන්, රැකවල්කරුවන් අධීක්‍ෂණය\\nඅනවසර ඉදිකිරීම් පාලනය හා ඉවත් කිරීම\\nඉඩම් මැනුම් කටයුතු සඳහා සහයවීම\\nඅධිකාරියට පවරා ගත්/ අත්පත්කරගත් ඉඩම් ලියාපදිංචි කිරීම\\nවරිපනම් ගෙවීමේ කටයුතු\\nමිනින්දෝරු කටයුතු වලදී අදාළ ටෙන්ඩර් විවෘත කිරීමේ සහය ලබා දීම\\nදිස්ත්‍රික් සම්බන්ධිකරණ කම්ටු වලට සහභාගී වීම\\n80 ක්ලබ් මැනුම් කටයුතු\\n', '90', '', 'ක්ෂේත්‍ර සහකරුවයන්, රැකවල්කරුවන් අධීක්‍ෂණය\\nඅනවසර ඉදිකිරීම් පාලනය හා ඉවත් කිරීම\\nඉඩම් මැනුම් කටයුතු සඳහා සහයවීම\\nඅධිකාරියට පවරා ගත්/ අත්පත්කරගත් ඉඩම් ලියාපදිංචි කිරීම\\nවරිපනම් ගෙවීමේ කටයුතු\\nමිනින්දෝරු කටයුතු වලදී අදාළ ටෙන්ඩර් විවෘත කිරීමේ සහය ලබා දීම\\nදිස්ත්‍රික් සම්බන්ධිකරණ කම්ටු වලට සහභාගී වීම\\nකොම්පඤ්ඤවීදිය, අල්ටයාර්, මොකප් හවුස් නැවත භාර ගැනීමේ කටයුතු සිදු කිරීම\\n', '90', '', 'ක්ෂේත්‍ර සහකරුවයන්, රැකවල්කරුවන් අධීක්‍ෂණය\\nඅනවසර ඉදිකිරීම් පාලනය හා ඉවත් කිරීම\\nඉඩම් මැනුම් කටයුතු සඳහා සහයවීම\\nඅධිකාරියට පවරා ගත්/ අත්පත්කරගත් ඉඩම් ලියාපදිංචි කිරීම\\nවරිපනම් ගෙවීමේ කටයුතු\\nමිනින්දෝරු කටයුතු වලදී අදාළ ටෙන්ඩර් විවෘත කිරීමේ සහය ලබා දීම\\nදිස්ත්‍රික් සම්බන්ධිකරණ කම්ටු වලට සහභාගී වීම\\nහොරණ බස්නැවතුම් පළ බදුකරුවන්ට භාර දීම', '90', '', 2022, 2147483647),
(0, 3329, 'ඒ.ඒ.එල්. ප්‍රේමසිරි', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කළුතර, මතුගම අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කළුතර, මතුගම අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කළුතර, මතුගම අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 3348, 'එම්.ඩී. රත්නසිරි', 'ලේඛන භාරකරු', 'Land', 'ඉඩම් අංශයේ ලේඛනාගාරයේ ලිපිගොනු සම්බන්ධ රාජකාරී\\nපිඹුරුපත් හා සිතියම් නඩත්තු කිරීම\\nඅවශ්‍ය ලිපිගොනු ලබාදීම\\n\\n', '100', '', 'ඉඩම් අංශයේ ලේඛනාගාරයේ ලිපිගොනු සම්බන්ධ රාජකාරී\\nපිඹුරුපත් හා සිතියම් නඩත්තු කිරීම\\nඅවශ්‍ය ලිපිගොනු ලබාදීම\\n\\n', '100', '', 'ඉඩම් අංශයේ ලේඛනාගාරයේ ලිපිගොනු සම්බන්ධ රාජකාරී\\nපිඹුරුපත් හා සිතියම් නඩත්තු කිරීම\\nඅවශ්‍ය ලිපිගොනු ලබාදීම\\n\\n', '100', '', 2022, 2147483647),
(0, 3426, 'එස්.ඒ.ආර්. අබේසිරි', 'ඉඩම් නිලධාරී', 'Land', 'ඉඩම් අත්පත් කරගැනීම් යටතේ ගැසට් ප්‍රකාශයට පත්කිරීමේ කටයුතු\\nදීමනා පත්‍ර ලබා ගැනීම\\nමැනුම් කටයුතු වලට සහාය දීම\\nලිපිගොනු කටයුතු (ගොනු 60)', '75', '', 'ඉඩම් අත්පත් කරගැනීම් යටතේ ගැසට් ප්‍රකාශයට පත්කිරීමේ කටයුතු (මැනිං වෙළඳ පල)\\nදීමනා පත්‍ර ලබා ගැනීම\\nමැනුම් කටයුතු වලට සහාය දීම\\nලිපිගොනු කටයුතු (ගොනු 60)\\n\\n\\n\\n', '95', '', 'ඉඩම් අත්පත් කරගැනීම් යටතේ ගැසට් ප්‍රකාශයට පත්කිරීමේ කටයුතු (මැනිං වෙළඳ පල)\\nදීමනා පත්‍ර ලබා ගැනීම\\nමැනුම් කටයුතු වලට සහාය දීම\\nලිපිගොනු කටයුතු (ගොනු 60)\\n\\n\\n\\n', '95', '', 2022, 2147483647),
(0, 3473, 'එච්. උපාලි තිලකසිරි', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - බේරුවල, තලවිලවත්ත අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - බේරුවල, තලවිලවත්ත අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - බේරුවල, තලවිලවත්ත අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 3555, 'Mr P D P Mahinda', 'Driver ', 'Transport ', 'Driving  safely / maintain the vehicle and its cleanliness / arrive at destinations on schedule. ', '100', '', 'Driving  safely / maintain the vehicle and its cleanliness / arrive at destinations on schedule. ', '100', '', 'Driving  safely / maintain the vehicle and its cleanliness / arrive at destinations on schedule. ', '100', '', 2022, 2147483647),
(11, 3628, 'Mr. MGDP Lakmal', 'Cleark', 'ICT', 'Updating letter registry and KPI record book', '80', '', 'Maintaining Letter Receiving register, Division File System, Recording KPI File, and Coordinating with other divisions for ICT services as necessary.', '80', '', 'Maintaining Letter Receiving register, Division File System, Recording KPI File, and Coordinating with other divisions for ICT services as necessary.', '80', '', 2147483647, 2147483647),
(0, 3730, 'K.S.L. Perera', 'Assistant Director (HRM)', 'Administration', 'Identified the training needs of the UDA and implimentaion\\nResponse to the Audit Comment\\n100 completion of training Plan for the year\\n', '90', '', 'Identified the training needs of the UDA and implimentaion\\nResponse to the Audit Comment\\n100 completion of training Plan for the year\\n', '90', '', 'Identified the training needs of the UDA and implimentaion\\nResponse to the Audit Comment\\n100 completion of training Plan for the year\\n', '90', '', 2022, 2147483647),
(0, 3737, 'H.P.S De Silwa', 'Deputy Director (HRM/GA)', 'Land', 'Supervision of Human Resources and Administration Division\\nPreparing Board Papers for bonuses & medical leave \\nFor salary anomalies - Taking action to prepare board papers\\nDealing with the Annual Report\\nProviding data required for bank loans to public servants to banks and taking necessary steps to provide credit facilities.\\nTaking action to provide facilities requested by various division\\nMedical bill examination\\nSupervision of MM payroll report re-processing\\nHaving interviews for Q.S position\\nIssuing new duty lists to the transport unit\\nRecommendations for rental vehicles and telephone bills\\nGiving recommendations for all payments\\nGranting Allowances, Overtime, Dismissals of Officers of the Human Resource Management Division of Security Officers and Drivers\\nIssuing service certificates\\nCoordinating activities required for PCR\\nIssuing circulars as required\\nGoing to Labor Court to resolve industrial disputes\\nActivities related to Building / Equipment Committee\\nPrepari', '100', '', 'Supervision of Human Resources and Administration Division\\nTaking action to provide facilities requested by various sectors\\nRecommendations for telephone bills for rental vehicles\\nIssuing circulars as required\\nActivities related to Building / Equipment Committee\\nProviding data required for bank loans to public servants to banks and taking necessary steps to provide credit facilities.\\nMedical bill examination\\nGiving recommendations for all payments\\nCoordinating activities required for PCR\\nGoing to human rights cases\\nPreparation of documents required to be referred to Committee A (Directors\\\' House, Vehicle Maintenance)\\nPreparation of board papers\\nSupervision of computerization of all officers\\\' data\\nRecommending EPF cards of Millewawatta employees Issuing service certificates\\nGiving recommendations for annual salary increments\\nIssuing service certificates\\nGranting Allowances, Overtime, Dismissals of Officers of the Human Resource Management Division of Security Officers ', '95', '', 'Handing over old files to the receipt store\\nDivision Carrying out necessary activities for Sanitizer\\nTaking necessary action to provide PCR required employees in the division\\nRepair and supervision of acquisition and vesting  certificate\\nIssue of internal mamoes\\nDuty supervision related to mail\\n\\\"Issuing attendance time cycles and bringing in officers as per service requirements\\nGiving \\\"\\nGiving recommendations for administrative vouchers\\nGiving leave related recommendations\\nPreparation of TEC reports\\nPreparation of progress reports of the officers and submission to the Director\\nProviding necessary transport facilities for the officers\\nGather and provide the data required to prepare the annual report\\nGiving recommendations for annual salary increments\\n\\n\\n', '95', '', 2022, 2147483647),
(0, 3749, 'ටී. පත්මිකා කුමුදුනී සොයිසා', 'ජ්‍යෙ. යතුරු ලේඛිකා', 'Land', 'රාජකාරී ලිපි 609 ක් පරිගණක ගත කිරීම \\nනිවැරදි කිරීම් 700 ක් පමණවේ.\\n', '90', '', 'රාජකාරී ලිපි 609 ක් පරිගණක ගත කිරීම \\nනිවැරදි කිරීම් 700 ක් පමණවේ.\\n', '85', '', 'රාජකාරී ලිපි 398 ක් පරිගණක ගත කිරීම', '95', '', 2022, 2147483647),
(0, 3763, 'R.A.C. Lakmini', '', 'Administration', 'Director accomadate with the meeting shedules\\nmake sure all the  preparations before the  meeting\\nAssist with the HR department when required\\n', '90', '', 'Director accomadate with the meeting shedules\\nmake sure all the  preparations before the  meeting\\nAssist with the HR department when required\\n', '90', '', 'Director accomadate with the meeting shedules\\nmake sure all the  preparations before the  meeting\\nAssist with the HR department when required\\n', '90', '', 2022, 2147483647),
(0, 3779, 'T.A.N.Priyadarshani', 'Clerk', 'Legal', 'Attorney Generals Department and Private Lawyers Fees Bills Drafting Normal LettersPreparing Payment Vouchers', '100', '', 'Attorney Generals Department and Private Lawyers Fees Bills Drafting Normal LettersPreparing Payment Vouchers', '100', '', 'Attorney Generals Department and Private Lawyers Fees Bills Drafting Normal LettersPreparing Payment Vouchers', '100', '', 2022, 2147483647),
(0, 3833, 'Chamindi Sirimevan', 'Secretary', 'Land', 'Copying the Board of Management Minutes and other documents sent by the Director to the relevant officers.\\nDirecting incoming telephone calls to the Director and receiving necessary telephone calls. In addition, inquiring and contacting the relevant officers for incoming telephone calls.\\nComputerization of English and Sinhala letters provided by the Director and other officers.\\nSending emails to the Director and emails coming to the Land Division to the Director.\\nPrepare all the vouchers for receiving the payments and allowances of the Director and forward them to the relevant divisions.\\nMaintaining the files under the Director properly\\nPerforming all the duties assigned by the Director from time to time.\\nComputerization of Board Papers and Cabinet Papers.\\nDirecting outsiders to meet the Director.\\n', '90', '', 'Copying the Board of Management Minutes and other documents sent by the Director to the relevant officers\\nDirecting incoming telephone calls to the Director and receiving necessary telephone calls. In addition, inquiring and contacting the relevant officers for incoming telephone calls.\\nComputerization of English and Sinhala letters provided by the Director and other officers.\\nSending emails to the Director and emails coming to the Land Division to the Director.\\nPrepare all the vouchers for receiving the payments and allowances of the Director and forward them to the relevant divisions.\\nMaintaining the files under the Director properly\\nPerforming all the duties assigned by the Director from time to time.\\nSurveyors call for bids for Oakley Cottage land in Nuwara Eliya, Bogambara land in Kandy and two plots of land in Madiwela and open it on the relevant day and refer it to the relevant officers.\\nComputerization of Board Papers and Cabinet Papers.\\n', '90', '', 'Copying the Board of Management Minutes and other documents sent by the Director to the relevant officers\\nDirecting incoming telephone calls to the Director and receiving necessary telephone calls. In addition, inquiring and contacting the relevant officers for incoming telephone calls.\\nComputerization of English and Sinhala letters provided by the Director and other officers.\\nSending emails to the Director and emails coming to the Land Division to the Director.\\nPrepare all the vouchers for receiving the payments and allowances of the Director and forward them to the relevant divisions.\\nMaintaining the files under the Director properly\\nPerforming all the duties assigned by the Director from time to time.\\nSurveyors call for bids for Oakley Cottage land in Nuwara Eliya, Bogambara land in Kandy and two plots of land in Madiwela and open it on the relevant day and refer it to the relevant officers.\\nComputerization of Board Papers and Cabinet Papers.\\nDirecting outsiders to meet the', '95', '', 2022, 2147483647),
(0, 3835, 'W.A.D.S. Wickramasinghe', '', 'Administration', 'All the sinhala typing letters should be type and issue\\nAssistantce for deliver the letters from Thapol\\nSupport HR Officers to deliver the task on time\\n', '90', '', 'All the sinhala typing letters should be type and issue\\nAssistantce for deliver the letters from Thapol\\nSupport HR Officers to deliver the task on time\\n', '90', '', 'All the sinhala typing letters should be type and issue\\nAssistantce for deliver the letters from Thapol\\nSupport HR Officers to deliver the task on time\\n', '90', '', 2022, 2147483647),
(0, 3858, 'R.N.G. Samarasooriya', 'Motorcycle Orderly Messenger', 'Administration', 'Delivery letters by hand to the board member\\nHand delivery letters to the external parties\\nAssistance with the Internal Thapol\\n', '85', '', 'Delivery letters by hand to the board member\\nHand delivery letters to the external parties\\nAssistance with the Internal Thapol\\n', '85', '', 'Delivery letters by hand to the board member\\nHand delivery letters to the external parties\\nAssistance with the Internal Thapol\\n', '85', '', 2022, 2147483647),
(0, 3869, 'V. Selvarajan', 'Driver ', 'Transport', 'Transport Service on official duty for Director Maintenance of Vehicle (Cleaning & Etc.)(EP)', '100', '', 'Transport Service on official duty for Director Maintenance of Vehicle (Cleaning & Etc.)(EP)', '100', '', 'Transport Service on official duty for Director Maintenance of Vehicle (Cleaning & Etc.)(EP)', '100', '', 2022, 2147483647),
(0, 3897, 'A. G. R. A. Kumara           ', 'Room Boy / Steward', 'Administration', 'Delivery internal letters on time\\nNotice board should be update and maintain\\nMember of the internal Thapol tieam\\n', '90', '', 'Delivery internal letters on time\\nNotice board should be update and maintain\\nMember of the internal Thapol tieam\\n', '90', '', 'Delivery internal letters on time\\nNotice board should be update and maintain\\nMember of the internal Thapol tieam\\n', '90', '', 2022, 2147483647),
(0, 3927, 'N.A.C.I Narangoda', 'Adminstrative Officer', 'Administration', 'Division Mail ManagementObtaining  monthly Stationery. Prepation of Main Planning Committee Vouchers', '100', '', 'Division Mail ManagementObtaining  monthly Stationery. Prepation of Main Planning Committee Vouchers', '100', '', 'Division Mail ManagementObtaining  monthly Stationery. Prepation of Main Planning Committee Vouchers', '100', '', 2022, 2147483647),
(0, 3931, 'M.F.Z.Siddika', 'Administrative Officer', ' Administration / Legal', 'Coordinating with the Transport Division Lease AgreementDeeds (Transfer, Assignment, Modification, Cancellation etc.Sub Lease & Mortgages', '100', '', 'Coordinating with the Transport Division Lease AgreementDeeds (Transfer, Assignment, Modification, Cancellation etc.Sub Lease & Mortgages', '100', '', 'Coordinating with the Transport Division Lease AgreementDeeds (Transfer, Assignment, Modification, Cancellation etc.Sub Lease & Mortgages', '100', '', 2022, 2147483647),
(5, 3985, 'Ms. SL Wijeweera', 'IS Officer', 'ICT', 'Maintainance of software and address operating system-related issues. Preparation of computer specifications and providing recommendations on hardware maintenance. Assistance to the existing developers for the development of software solutions for the UDA. Troubleshooting on computer equipment. SPEC Preparation. Data backups (HR System).', '85', '', 'Troubleshooting on computer equipment. SPEC Preparation. Completion of the HR system.', '85', '', 'Troubleshooting on computer equipment. SPEC Preparation. Completion of the HR system. Data backups (HR System).', '80', '', 2147483647, 2147483647),
(0, 3986, 'K.M.P.G.D.K. Kekulandara', 'Director(Administration)', '', '', '100', '', '', '100', '', '', '100', '', 2022, 2147483647),
(0, 3989, 'A.R.Nilufar Jehan', 'Dy.Direcor', 'Administration / Legal', 'District Court MattersSupreme Court MattersCommercial Hihg CourtCivil Appeal High CourtUDA Act AmendmenMagistrate Court MattersSupporting to prepare the General Regulations', '100', '', 'District Court MattersSupreme Court MattersCommercial Hihg CourtCivil Appeal High CourtUDA Act AmendmenMagistrate Court MattersSupporting to prepare the General Regulations', '100', '', 'District Court MattersSupreme Court MattersCommercial Hihg CourtCivil Appeal High CourtUDA Act AmendmenMagistrate Court MattersSupporting to prepare the General Regulations', '100', '', 2022, 2147483647),
(0, 3993, 'M.M.M.Shireen ', 'Town Planner ', 'Amendment Zoning Plan for Trincomalee Metro Trincomalee Plan ', 'Amendement of Currently Practised Zoning Plan- Get the approval from MPC                                                Prepeartion of new maps   Adding the new permissibale activitie sfor each zone                                 Prepartion of Presentaion to get approval from MPC       ', '100', '', 'Amendement of Currently Practised Zoning Plan- Get the approval from MPC                                                Prepeartion of new maps   Adding the new permissibale activitie sfor each zone                                 Prepartion of Presentaion to get approval from MPC       ', '100', '', 'Amendement of Currently Practised Zoning Plan- Get the approval from MPC                                                Prepeartion of new maps   Adding the new permissibale activitie sfor each zone                                 Prepartion of Presentaion to get approval from MPC       ', '100', '', 2022, 2147483647),
(0, 4520, 'D.M.Kiriwattuduwa', 'Perf. Dy.Direcor', 'Administration / Legal /Planning/ Unauthorized/Enforcement', 'UDA Act AmendmentMagistrate Court Matters.MOUSupporting to prepare the General RegulationsAgreements (Lease/ Assignment/ Tenancy/UNIDEP & UDA)', '100', '', 'UDA Act AmendmentMagistrate Court Matters.MOUSupporting to prepare the General RegulationsAgreements (Lease/ Assignment/ Tenancy/UNIDEP & UDA)', '100', '', 'UDA Act AmendmentMagistrate Court Matters.MOUSupporting to prepare the General RegulationsAgreements (Lease/ Assignment/ Tenancy/UNIDEP & UDA)', '100', '', 2022, 2147483647),
(0, 4534, 'Mr D D N R Ariyasiril ', 'Office Assistance ', 'Administration ', 'Delivering of letters / preparing of tea/ delivering of messages/ sending mails.', '100', '', 'Delivering of letters / preparing of tea/ delivering of messages/ sending mails.', '100', '', 'Delivering of letters / preparing of tea/ delivering of messages/ sending mails.', '100', '', 2022, 2147483647),
(0, 4553, 'A.M.A. Nayana Lakmali ', 'Asst. Land Officer', 'Land', 'maternity leave', '', '', '', '', '', '', '', '', 2022, 2147483647),
(0, 4572, 'J.M.A.I.K. Jayalath', 'Real Estate Manager', 'Land', 'Collect Base Price from more than 10 Nos. of shops out of 16 Nos. of shops Resolve the legal issues related to 02 Shops After the completion of payment, taken over the physical possession of the old shops and Hand over the physical possession of the shops at new commercial complex to relevant parties.\\n\\nObtain the Board approval to allocate 30 Nos. of Lawyer offices to the affected parties.\\nHand over the physical possession of the alternative lawyers offices and shops. \\nForwards to the PPM Division to collect rentals.\\n\\nCollect fee for use from existing shops. \\nRefer to the Board of Management to provide alternative land to the occupant and call for valuation.\\n', '100', '', 'Recaour the base price from the tenant.\\nInform relevent parties and take their agreement.\\nForwards to the PPM Division to collect rent from allocated 04 Nos. of shops in previous quarter. \\nSolve legal issues related to the shop transfers and etc. \\nInitial data Collection.', '100', '', 'collect the Base price form the tenant\\nHand over the physical possession of the balance shops at new commercial complex to relevant parties.\\nObtain 18(1) certificate for the allocated shops for enter lease agreements.\\nForwards to the PPM Division to collect rent from allocated shops\\nObtaine 18(1) approval for allocated lawyer offices and shops.\\nPreparing relocation programme to provide alternative facilities to tenent who operates in wijemanna building.\\nPreparing relocation programme to provide alternative facilities to 04 Nos. of occupants in project site. \\nCalling for quotation to prepare sub-division plan.\\nPhysical data collection.\\n', '100', '', 2022, 2147483647),
(0, 4582, 'Sanjaya Lakmal Geeganage', 'Office Aide', 'Administration', 'Diliver the letters on time \\nmaintain the clearniness and the quality\\nCommunication channel should be maintain with the HR and the sub office\\n', '85', '', 'Diliver the letters on time \\nmaintain the clearniness and the quality\\nCommunication channel should be maintain with the HR and the sub office\\n', '85', '', 'Diliver the letters on time \\nmaintain the clearniness and the quality\\nCommunication channel should be maintain with the HR and the sub office\\n', '85', '', 2022, 2147483647),
(0, 4694, 'කේ.එල්.යූ. දුමින්ද පෙරේරා', 'ක්ෂේත්‍ර සහකාර', 'Land', ' .අනවසර ඉදිකිරීම් ඉවත් කිරීමරැකවල්කරුවන්ගේ අධීක්ෂණ කටයුතු\\nක්ෂේත්‍ර රාජකාරී කටයුතු\\nඅනවසර ඉදිකිරීම් නවතාලීම, ඉවත් කිරීම\\nමැනුම් කටයුතු වලට සහායදීම\\nපළාත් පාලන ආයතන සමග සම්බන්ධීකරණ කටයුතු\\nභුක්තිය භාරගැනීමේ කටයුතු වලට සහාය දීම\\n', '95', '', 'රැකවල්කරුවන්ගේ අධීක්ෂණ කටයුතු\\nක්ෂේත්‍ර රාජකාරී කටයුතු\\nඅනවසර ඉදිකිරීම් නවතාලීම, ඉවත් කිරීම\\nමැනුම් කටයුතු වලට සහායදීම\\nපළාත් පාලන ආයතන සමග සම්බන්ධීකරණ කටයුතු\\nභුක්තිය භාරගැනීමේ කටයුතු වලට සහාය දීම\\n', '95', '', 'රැකවල්කරුවන්ගේ අධීක්ෂණ කටයුතු\\nක්ෂේත්‍ර රාජකාරී කටයුතු\\nඅනවසර ඉදිකිරීම් නවතාලීම, ඉවත් කිරීම\\nමැනුම් කටයුතු වලට සහායදීම\\nපළාත් පාලන ආයතන සමග සම්බන්ධීකරණ කටයුතු\\nභුක්තිය භාරගැනීමේ කටයුතු වලට සහාය දීම\\n', '95', '', 2022, 2147483647),
(0, 4699, 'එච්.කේ. රොෂාන්', 'රැකවල්කරු', 'Land', ' අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කඩුවෙල, චන්ද්‍රිකා කුමාරතුංග මාවත, අරංගල, හල්බරාව, මාලඹේ පොල.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', ' අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කඩුවෙල, චන්ද්‍රිකා කුමාරතුංග මාවත, අරංගල, හල්බරාව, මාලඹේ පොල.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', ' අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කඩුවෙල, චන්ද්‍රිකා කුමාරතුංග මාවත, අරංගල, හල්බරාව, මාලඹේ පොල.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 4706, 'ඩී.එම්.එම්.වී. දිසානායක', 'කම්කරු', 'Land', 'ලිපි ගොනු බෙදා හැරීම\\nඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම\\nලිපිගොනු ගොනුගත කිරීම\\n\\n', '85', '', 'ලිපි ගොනු බෙදා හැරීම\\nඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම\\nලිපිගොනු ගොනුගත කිරීම\\n\\n', '80', '', 'ලිපි ගොනු බෙදා හැරීම\\nඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම\\nලිපිගොනු ගොනුගත කිරීම\\n\\n', '80', '', 2022, 2147483647),
(0, 4710, 'ඩබ්.ජී. ඉඳුනිල් බණ්ඩාර', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - URP ඉඩම්  .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - URP ඉඩම්  .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - URP ඉඩම්  .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 4799, 'L.G.E.S.K. Jayathisse', 'Land Officer', 'Land', '1.Land Acquisition\\n2.Sec 44 Convert to 6 (1) Certificate\\n3.Land Vesting\\n4.Handling  Exsisting Acquisition and Vesting Files 5.Other Works', '100', '', '1,2,3,4,5', '100', '', '1,2,3,4,5', '100', '', 2022, 2147483647),
(0, 4811, 'S.A. Weerasinghe', 'Office Aide', 'Administration', 'Timely delivery the refreshment for the Meeting/ programme/Training\\nmaintain the cleaniness and follow the meeting ethiquite \\nReduce the wastage and attendance sheet should be collect before the meeting\\n', '85', '', 'Timely delivery the refreshment for the Meeting/ programme/Training\\nmaintain the cleaniness and follow the meeting ethiquite \\nReduce the wastage and attendance sheet should be collect before the meeting\\n', '85', '', 'Timely delivery the refreshment for the Meeting/ programme/Training\\nmaintain the cleaniness and follow the meeting ethiquite \\nReduce the wastage and attendance sheet should be collect before the meeting\\n', '85', '', 2022, 2147483647),
(0, 4828, 'K.A.Sumith Lasantha', 'Clerk', 'Legal', 'Appearing Unauthorized Constructions CasesDeed Registration- Land Registry', '100', '', 'Appearing Unauthorized Constructions CasesDeed Registration- Land Registry', '100', '', 'Appearing Unauthorized Constructions CasesDeed Registration- Land Registry', '100', '', 2022, 2147483647),
(0, 4829, 'K.C.R.Serasundara', 'Record Keeper', 'Administration / Legal', 'Maintaing Files', '100', '', 'Maintaing Files', '100', '', 'Maintaing Files', '100', '', 2022, 2147483647),
(0, 4835, 'C. Jeyakanthan', 'Office Aide', 'Administration ', 'Cleaning Office,Maintenance of FilesOperating Fax & Photocopy Machine ', '100', '', 'Cleaning Office,Maintenance of FilesOperating Fax & Photocopy Machine ', '100', '', 'Cleaning Office,Maintenance of FilesOperating Fax & Photocopy Machine ', '100', '', 2022, 2147483647),
(0, 6042, 'එම්.ඒ. අරුණ වරුණජිත්', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කිඹුලාවල, දෙල්ගහවත්ත, මාදිවෙල. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කිඹුලාවල, දෙල්ගහවත්ත, මාදිවෙල. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කිඹුලාවල, දෙල්ගහවත්ත, මාදිවෙල. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 6054, 'චාමර විලබඩ', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කොට්ටාව, මහරගම, උඩහමුල්ල. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කොට්ටාව, මහරගම, උඩහමුල්ල. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කොට්ටාව, මහරගම, උඩහමුල්ල. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '85', '', 2022, 2147483647),
(0, 6059, 'නිෂාන්ත අරන්දර', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - අවිස්සාවේල්ල, මාදොල, හැරිපට්වත්ත, මාණික්කවත්ත. අනවසර ඉදිකිරීම් ඉවත් කිරීම  ', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - අවිස්සාවේල්ල, මාදොල, හැරිපට්වත්ත, මාණික්කවත්ත. අනවසර ඉදිකිරීම් ඉවත් කිරීම  ', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - අවිස්සාවේල්ල, මාදොල, හැරිපට්වත්ත, මාණික්කවත්ත. අනවසර ඉදිකිරීම් ඉවත් කිරීම  ', '85', '', 2022, 2147483647),
(0, 6060, 'එච්.සී.එස්. ප්‍රනාන්දු', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - පංචිකාවත්ත, අබේසිංහාරාම පාර .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - පංචිකාවත්ත, අබේසිංහාරාම පාර .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - පංචිකාවත්ත, අබේසිංහාරාම පාර .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 6061, 'පාලිත සමන් ලියනගේ', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - පිටකෝට්ටේ. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '95', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - පිටකෝට්ටේ. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '95', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - පිටකෝට්ටේ. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '95', '', 2022, 2147483647),
(0, 6062, 'ඒ.වී. තුෂාර චන්ද්‍රලාල්', 'ක්ෂේත්‍ර සහකාර', 'Land', 'රැකවල්කරුවන්ගේ අධීක්ෂණ කටයුතු\\nබොරැල්ල ප්‍රදේශයේ ක්ෂේත්‍ර රාජකාරී කටයුතු\\nඅනවසර ඉදිකිරීම් නවතාලීම, ඉවත් කිරීම\\nමැනුම් කටයුතු වලට සහායදීම\\nපළාත් පාලන ආයතන සමග සම්බන්ධීකරණ කටයුතු\\nභුක්තිය භාරගැනීමේ කටයුතු වලට සහාය දීම\\n\\n', '95', '', 'රැකවල්කරුවන්ගේ අධීක්ෂණ කටයුතු\\nබොරැල්ල ප්‍රදේශයේ ක්ෂේත්‍ර රාජකාරී කටයුතු\\nඅනවසර ඉදිකිරීම් නවතාලීම, ඉවත් කිරීම\\nමැනුම් කටයුතු වලට සහායදීම\\nපළාත් පාලන ආයතන සමග සම්බන්ධීකරණ කටයුතු\\nභුක්තිය භාරගැනීමේ කටයුතු වලට සහාය දීම\\n', '95', '', 'රැකවල්කරුවන්ගේ අධීක්ෂණ කටයුතු\\nබොරැල්ල ප්‍රදේශයේ ක්ෂේත්‍ර රාජකාරී කටයුතු\\nඅනවසර ඉදිකිරීම් නවතාලීම, ඉවත් කිරීම\\nමැනුම් කටයුතු වලට සහායදීම\\nපළාත් පාලන ආයතන සමග සම්බන්ධීකරණ කටයුතු\\nභුක්තිය භාරගැනීමේ කටයුතු වලට සහාය දීම\\n', '95', '', 2022, 2147483647),
(0, 6066, 'U.B.Sandanayaka', 'Computer Operator', ' Administration / Legal', 'ProxyTenancy AgrementsUNIDEP AgreementsLetters of Demand', '100', '', 'ProxyTenancy AgrementsUNIDEP AgreementsLetters of Demand', '100', '', 'ProxyTenancy AgrementsUNIDEP AgreementsLetters of Demand', '100', '', 2022, 2147483647),
(8, 6070, 'Mr. PJGM Piyatissa', 'IS Officer', 'ICT', 'Continuously updates the UDA web and attendance management system.\r\n    Perform necessary backup and documentation for the web and leave management system.\r\n    Continuously updates the UDA FaceBook page.', '82', '', 'Continuously updates the UDA web and attendance management system.\r\n    Perform necessary backup and documentation for the web and leave management system.\r\n    Continuously updates the UDA FaceBook page.', '80', '', 'Continuously updates the UDA web and attendance management system.\r\n    Perform necessary backup and documentation for the web and leave management system.\r\n    Continuously updates the UDA FaceBook page. To establish real-time connectivity with the UDA sub-office to the main leave management system.', '70', '', 2147483647, 2147483647),
(0, 6073, 'P.P.Athukorala', 'Office Aide', 'Administration / Legal', 'Delivering Interdision Letters & Files.Photo Copy', '100', '', 'Delivering Interdision Letters & Files.Photo Copy', '100', '', 'Delivering Interdision Letters & Files.Photo Copy', '100', '', 2022, 2147483647),
(0, 6221, 'A.N.S. Chandrathilake', 'Enforcement Officer', 'Progress ', 'Preparation of Action PlansPreparation of Weekly progress reportPreparation of Discloser Document', '100', '', 'Preparation of Weekly progress reportPreparation of Discloser Document', '100', '', 'Preparation of Weekly progress reportPreparation of Discloser Document', '100', '', 2022, 2147483647),
(0, 6234, 'A.W.D.Perera', 'Driver', 'Administration', 'Work on time to assist Director\\\'s shedule\\nProvide transport for day to day meetings\\nAssis Hr repartment functions when ever required\\n', '100', '', 'Work on time to assist Director\\\'s shedule\\nProvide transport for day to day meetings\\nAssis Hr repartment functions when ever required\\n', '100', '', 'Work on time to assist Director\\\'s shedule\\nProvide transport for day to day meetings\\nAssis Hr repartment functions when ever required\\n', '100', '', 2022, 2147483647),
(0, 6258, 'නුවන් මහේෂ්', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 6260, 'M.G.N. Pradeep', 'Care Taker', 'Administration ', 'Key DutiesLetter DistributionSuporting to the staff', '100', '', 'Key DutiesLetter DistributionSuporting to the staff', '100', '', 'Key DutiesLetter DistributionSuporting to the staff', '100', '', 2022, 2147483647),
(0, 6261, 'බී. ඉසුරු ධනංජය පෙරේරා', 'රැකවල්කරු', 'Land', ' අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - බත්තරමුල්ල, කලපලුවාව.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', ' අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - බත්තරමුල්ල, කලපලුවාව.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', ' අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - බත්තරමුල්ල, කලපලුවාව.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 6262, 'එච්.කේ.පී. කුෂාන්ත', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කඩවත, පෑලියගොඩ, රාගම, ජාඇල.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කඩවත, පෑලියගොඩ, රාගම, ජාඇල.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කඩවත, පෑලියගොඩ, රාගම, ජාඇල.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 6267, 'ටී.ඒ.ඩී. සම්පත්', 'කාර්යාල කාර්ය සහායක', 'Land', 'ඉඩම් අංශයේ ලේඛනාගාරයේ ලිපිගොනු සම්බන්ධ රාජකාරී\\nපිඹුරුපත් හා සිතියම් නඩත්තු කිරීම\\nඅවශ්‍ය ලිපිගොනු ලබාදීම\\n\\n', '75', '', 'ඉඩම් අංශයේ ලේඛනාගාරයේ ලිපිගොනු සම්බන්ධ රාජකාරී\\nපිඹුරුපත් හා සිතියම් නඩත්තු කිරීම\\nඅවශ්‍ය ලිපිගොනු ලබාදීම\\n\\n', '80', '', 'ඉඩම් අංශයේ ලේඛනාගාරයේ ලිපිගොනු සම්බන්ධ රාජකාරී\\nපිඹුරුපත් හා සිතියම් නඩත්තු කිරීම\\nඅවශ්‍ය ලිපිගොනු ලබාදීම\\n\\n', '90', '', 2022, 2147483647),
(0, 6283, 'ආර්.පී.සී. කසුන්', 'රැකවල්කරු', 'Land', 'ඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම', '75', '', 'ලිපි ගොනු බෙදා හැරීම\\nඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම', '75', '', 'ලිපි ගොනු බෙදා හැරීම\\nඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම', '75', '', 2022, 2147483647),
(0, 6285, 'ටී.ආර්. කුමාර රණසිංහ', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - මොරගහහේන, හොරණ .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - මොරගහහේන, හොරණ .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - මොරගහහේන, හොරණ .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 6300, 'ආර්.ඒ. එරංග ඩිල්ශාන්', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 6301, 'එම්.එල්. චමිල් චන්දන', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - පෑලියගොඩ.  අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - පෑලියගොඩ.  අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - පෑලියගොඩ.  අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(12, 6329, 'Mr. NNT Karunarathne', 'Office Aid', 'ICT', '', '80', '', 'Letter distributions, conduct regular cleaning services and maintain equipment.', '80', '', 'Letter distributions, conduct regular cleaning services and maintain equipment.', '80', '', 2147483647, 2147483647),
(0, 6330, 'ඉසුරු උදයංග අමරතුංග', 'ක්ෂේත්‍ර සහකාර', 'Land', 'රැකවල්කරුවන්ගේ අධීක්ෂණ කටයුතු\\nකළුතර, පානදුර, හොරණ, බේරුවල, මොරගහහේන, බණ්ඩාරගම, මාලඹේ ක්ෂේත්‍ර රාජකාරී කටයුතු\\nඅනවසර ඉදිකිරීම් නවතාලීම, ඉවත් කිරීම\\nමැනුම් කටයුතු වලට සහායදීම\\nපළාත් පාලන ආයතන සමග සම්බන්ධීකරණ කටයුතු\\nභුක්තිය භාරගැනීමේ කටයුතු වලට සහාය දීම\\nමිල්ලෑවවත්ත බන්ධනාගාර ව්‍යාපෘතියේ කටයුතු\\n', '95', '', 'රැකවල්කරුවන්ගේ අධීක්ෂණ කටයුතු\\nකළුතර, පානදුර, හොරණ, බේරුවල, මොරගහහේන, බණ්ඩාරගම, මාලඹේ ක්ෂේත්‍ර රාජකාරී කටයුතු\\nඅනවසර ඉදිකිරීම් නවතාලීම, ඉවත් කිරීම\\nමැනුම් කටයුතු වලට සහායදීම\\nපළාත් පාලන ආයතන සමග සම්බන්ධීකරණ කටයුතු\\nභුක්තිය භාරගැනීමේ කටයුතු වලට සහාය දීම\\nමිල්ලෑවවත්ත බන්ධනාගාර ව්‍යාපෘතියේ කටයුතු\\n', '95', '', 'රැකවල්කරුවන්ගේ අධීක්ෂණ කටයුතු\\nකළුතර, පානදුර, හොරණ, බේරුවල, මොරගහහේන, බණ්ඩාරගම, මාලඹේ ක්ෂේත්‍ර රාජකාරී කටයුතු\\nඅනවසර ඉදිකිරීම් නවතාලීම, ඉවත් කිරීම\\nමැනුම් කටයුතු වලට සහායදීම\\nපළාත් පාලන ආයතන සමග සම්බන්ධීකරණ කටයුතු\\nභුක්තිය භාරගැනීමේ කටයුතු වලට සහාය දීම\\nමිල්ලෑවවත්ත බන්ධනාගාර ව්‍යාපෘතියේ කටයුතු\\n', '95', '', 2022, 2147483647),
(0, 6333, 'B.M.S. Manaram', 'Technical officer', 'Project', 'Site SupervitionQuality controling at (Town hall project at Jaffna)', '100', '', 'Site SupervitionQuality controling at (Town hall project at Jaffna)', '100', '', 'Site SupervitionQuality controling at (Town hall project at Jaffna)', '100', '', 2022, 2147483647),
(0, 6337, 'දිනේෂ් සංජීව', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කෝට්ටේ, රාජගිරිය. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කෝට්ටේ, රාජගිරිය. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කෝට්ටේ, රාජගිරිය. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 6344, 'V.D.S.U.Samarasinghe', 'Computer Operator', ' Administration / Legal', 'Deeds (Transfer, Assignment, Modification, Cancellation etc.Lease Agreement)', '100', '', 'Deeds (Transfer, Assignment, Modification, Cancellation etc.Lease Agreement)', '100', '', 'Deeds (Transfer, Assignment, Modification, Cancellation etc.Lease Agreement)', '100', '', 2022, 2147483647),
(0, 6378, 'M.R.H.Abhayawickrama', 'Legal Officer', 'Legal', 'MOUUNIDEP AgreementsPPC OpinionTitle Report & PedigreeLease/ Tenancy AgreementCourt Appearance', '100', '', 'MOUUNIDEP AgreementsPPC OpinionTitle Report & PedigreeLease/ Tenancy AgreementCourt Appearance', '100', '', 'MOUUNIDEP AgreementsPPC OpinionTitle Report & PedigreeLease/ Tenancy AgreementCourt Appearance', '100', '', 2022, 2147483647),
(0, 6523, 'G.P.H. Jayani Kithmini', 'Clerk', 'Finance ', 'All letters Entering in the Inward Registers and Submitting to Director (EP) and after the minutes written by him  distributing to the relevant officers.', '100', '', 'All letters Entering in the Inward Registers and Submitting to Director (EP) and after the minutes written by him  distributing to the relevant officers.', '100', '', 'All letters Entering in the Inward Registers and Submitting to Director (EP) and after the minutes written by him  distributing to the relevant officers.', '100', '', 2022, 2147483647),
(0, 6524, 'K.M. Anusha Manohari', 'Clerk', 'Enforcement work ', 'Receiving all vouchers from  four offices and date stamping, checking and writing account code. Entering the vouchers in Cash Book & Voucher register which are sent by Accountant ', '100', '', 'Receiving all vouchers from  four offices and date stamping, checking and writing account code. Entering the vouchers in Cash Book & Voucher register which are sent by Accountant ', '100', '', 'Receiving all vouchers from  four offices and date stamping, checking and writing account code. Entering the vouchers in Cash Book & Voucher register which are sent by Accountant ', '100', '', 2022, 2147483647),
(0, 6589, 'R.M.I.J.Ratnayaka', 'Legal Officer', 'Legal', 'Court of Appeal Matters', '100', '', 'Court of Appeal Matters', '100', '', 'Court of Appeal Matters', '100', '', 2022, 2147483647),
(0, 6609, 'T.P.V.A.Prasadani.', 'Legal Officer', 'Legal', 'Court of Appeal MattersCourt of Appeal MattersTenancy Agrements', '100', '', 'Court of Appeal MattersCourt of Appeal MattersTenancy Agrements', '100', '', 'Court of Appeal MattersCourt of Appeal MattersTenancy Agrements', '100', '', 2022, 2147483647),
(0, 6610, 'A.C.G.Fernando', 'Legal Officer', 'Legal', 'District Court Matters', '100', '', 'District Court Matters', '100', '', 'District Court Matters', '100', '', 2022, 2147483647),
(0, 6665, 'S. Madona Thanushka', 'Computer Operater', 'Administration ', ' Preparation of  BA, PPC & COC Files and submitting to relevant Planning Officers through Director (EP)Letter typing  (English & Tamil)', '100', '', ' Preparation of  BA, PPC & COC Files and submitting to relevant Planning Officers through Director (EP)Letter typing  (English & Tamil)', '100', '', ' Preparation of  BA, PPC & COC Files and submitting to relevant Planning Officers through Director (EP)Letter typing  (English & Tamil)', '100', '', 2022, 2147483647),
(0, 6688, 'K.B.T.Danukshika', 'Clerk', 'Administration / Legal', 'Handling Invard & outward Letters & Files', '100', '', 'Handling Invard & outward Letters & Files', '100', '', 'Handling Invard & outward Letters & Files', '100', '', 2022, 2147483647),
(0, 6711, 'K. Prashanthan', 'Labour', 'Administration ', 'Cleaning of Office Premises(Watering,Sweeping courtyard,trimming grass and etc.)', '100', '', 'Cleaning of Office Premises(Watering,Sweeping courtyard,trimming grass and etc.)', '100', '', 'Cleaning of Office Premises(Watering,Sweeping courtyard,trimming grass and etc.)', '100', '', 2022, 2147483647),
(0, 6714, 'H.A.S.T.Sandaruwan', 'Office Labourer', 'Administration ', 'Cleaning of Office Premises(Watering,Sweeping courtyard,trimming grass and etc.)', '100', '', 'Cleaning of Office Premises(Watering,Sweeping courtyard,trimming grass and etc.)', '100', '', 'Cleaning of Office Premises(Watering,Sweeping courtyard,trimming grass and etc.)', '100', '', 2022, 2147483647),
(0, 6735, 'S.Rose Martin', 'Deputy Director(HRM)', 'Administration', '', '95', '', '', '95', '', '', '95', '', 2022, 2147483647),
(0, 6736, 'H.A.S.Madhushani', 'Assistant Director(Investigation)', 'Administration', 'Complete recrutment within the recruitment cycle time, Complete the investigation ', '80', '', 'Complete recrutment within the recruitment cycle time, Complete the investigation ', '80', '', 'Complete recrutment within the recruitment cycle time, Complete the investigation ', '80', '', 2022, 2147483647),
(0, 6737, 'U.L.D.A.Sakunthala Liyanage', 'Confedencial Secretary', 'Administration', 'DDG accomadate with the meeting shedules\\nmake sure all the  preparations before the  meeting\\nAssist with the HR department when required\\n', '85', '', 'DDG accomadate with the meeting shedules\\nmake sure all the  preparations before the  meeting\\nAssist with the HR department when required\\n', '85', '', 'DDG accomadate with the meeting shedules\\nmake sure all the  preparations before the  meeting\\nAssist with the HR department when required\\n', '85', '', 2022, 2147483647),
(2, 6765, 'Mr. TD Ruhunage', 'Senior System Analyst', 'ICT', 'Recruited on November 2021', '', '', '', '', '', 'To identify the gaps in the existing network system and preparation of required documentation for the implementation of the complete network facility for UDA.', '80', '', 2147483647, 2147483647),
(13, 6766, 'Mr. KDIC Siriwardena', 'ISO (Contract)', 'ICT', 'Recruited on November 2021', '', '', '', '', '', 'Design and develop new modules for the online building application system. Resolve existing bugs and issues in the online building application system. Design and develop employee appraisal system and project monitoring system.', '80', '', 2147483647, 2147483647),
(14, 6767, 'Mrs. RPGLS Gunarathne', 'ISO (Contract)', 'ICT', 'Recruited on November 2021', '', '', '', '', '', 'Continuous updates to the UDA website, including the development of new modules, updates to the existing modules, and backup process. Design and develop employee appraisal system and project monitoring system.', '80', '', 2147483647, 2147483647);
INSERT INTO `duty_list` (`id`, `empcode`, `noc`, `desig`, `dutyfrm`, `tutq1`, `progq1p`, `progq1l`, `tutq2`, `progq2p`, `progq2l`, `tutq3`, `progq3p`, `progq3l`, `created_date`, `updated_date`) VALUES
(0, 7012, 'වසන්ත ශ්‍රීලාල්', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - හංවැල්ල, පාදුක්ක, ශාලාව. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '95', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - හංවැල්ල, පාදුක්ක, ශාලාව. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '95', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - හංවැල්ල, පාදුක්ක, ශාලාව. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '95', '', 2022, 2147483647),
(0, 7014, 'එම්. රසාංග සංජය', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - හෝමාගම, ගොඩගම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '95', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - හෝමාගම, ගොඩගම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '95', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - හෝමාගම, ගොඩගම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '95', '', 2022, 2147483647),
(0, 7024, 'සී.එම්. අනිල් ප්‍රියන්ත පීරිස්', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කොලොන්නාව, මීතොටමුල්ල, වැල්ලම්පිටිය. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '75', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කොලොන්නාව, මීතොටමුල්ල, වැල්ලම්පිටිය. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '75', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කොලොන්නාව, මීතොටමුල්ල, වැල්ලම්පිටිය. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '65', '', 2022, 2147483647),
(0, 7027, 'H.D. Gayan Chinthaka', 'Office Aide', 'Administration', 'Diliver the letters on time \\nmaintain the clearniness and the quality\\nCommunication channel should be maintain with the HR and the sub office\\n', '90', '', 'Diliver the letters on time \\nmaintain the clearniness and the quality\\nCommunication channel should be maintain with the HR and the sub office\\n', '90', '', 'Diliver the letters on time \\nmaintain the clearniness and the quality\\nCommunication channel should be maintain with the HR and the sub office\\n', '90', '', 2022, 2147483647),
(0, 7040, 'J.M.Kasthuriarachchi', 'Clerk', ' Legal', 'Handling Unauthorized Constructions CasesHandling Change of UseEcecution of Court OrdersAppearing in Courts on behalf of UDALegal Work Shop ', '100', '', 'Handling Unauthorized Constructions CasesHandling Change of UseEcecution of Court OrdersAppearing in Courts on behalf of UDALegal Work Shop ', '100', '', 'Handling Unauthorized Constructions CasesHandling Change of UseEcecution of Court OrdersAppearing in Courts on behalf of UDALegal Work Shop ', '100', '', 2022, 2147483647),
(0, 7047, 'H.P.P.I.Dharmasena', 'Computer Operator', 'Land', 'Maintaining the database and complete the Payment vouchers with budget details\\nPreparation of Revenue details for the annual report 2019\\n Preparation of details and supporting  for the Audit queries\\nSupporting for the other necessary works\\n\\n', '95', '', 'Preparation of sub project code schedules for the asset valuation 2019\\nMaintaining the database and complete the Payment vouchers with budget details\\nInspection of manning market site at pettah and  cash deposit to the uda (1534)account -income for the disposal iron -May & june under the lockdown \\nSupporting for the other necessary works\\n', '95', '', 'Maintaining the database - checking and complete the payment vouchers with budget details\\nPreparation of sub project code schedules for the asset valuation 2019\\nEntering details to uda online system  for the correction and reconcile accounts 2021\\nSupporting for the other necessary works\\n', '95', '', 2022, 2147483647),
(0, 7055, 'E.P. Keerthirathne', 'Clerk', 'Administration', 'make sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\n', '100', '', 'make sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\n', '100', '', 'make sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\nmake sure the employee payment on time and acccuracy\\n', '100', '', 2022, 2147483647),
(0, 7060, 'N. Ruwan Dhammika Vithanage', 'Inquairy Officer', 'Administration', 'Gather the evedence and decision should be declared\\nIndependent disciplinary Inquiry should be handled\\nMakesure to participate and relevent assistantance on behalf of the Authority\\n', '85', '', 'Gather the evedence and decision should be declared\\nIndependent disciplinary Inquiry should be handled\\nMakesure to participate and relevent assistantance on behalf of the Authority\\n', '85', '', 'Gather the evedence and decision should be declared\\nIndependent disciplinary Inquiry should be handled\\nMakesure to participate and relevent assistantance on behalf of the Authority\\n', '85', '', 2022, 2147483647),
(0, 7069, 'A.N.D.Perera', 'Computer Operator', 'Legal', 'Appearing Unauthorized Constructions Cases', '100', '', 'Appearing Unauthorized Constructions Cases', '100', '', 'Appearing Unauthorized Constructions Cases', '100', '', 2022, 2147483647),
(0, 7076, 'K.D. Janaka Priyantha Karunasinghe', 'Clerk', 'Administration', 'Uninterrupted service for the staff\\nCordinate with third party vendors and provide the service to the staff\\nCordinate with third party vendors and provide the service to the staff\\n', '100', '', 'Uninterrupted service for the staff\\nCordinate with third party vendors and provide the service to the staff\\nCordinate with third party vendors and provide the service to the staff\\n', '100', '', 'Uninterrupted service for the staff\\nCordinate with third party vendors and provide the service to the staff\\nCordinate with third party vendors and provide the service to the staff\\n', '100', '', 2022, 2147483647),
(0, 7078, 'S.A.H. Chathuranga Samarasinghe', 'HRM Officer', 'Administration', 'Accurate overtime payment \\nAccurate incentive payment\\n100 complete data in increase usability of the system\\n', '90', '', 'Accurate overtime payment \\nAccurate incentive payment\\n100 complete data in increase usability of the system\\n', '90', '', 'Accurate overtime payment \\nAccurate incentive payment\\n100 complete data in increase usability of the system\\n', '90', '', 2022, 2147483647),
(0, 7087, 'ඩබ්.එස්.පී. ප්‍රනාන්දු', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 7099, 'W. Sampath Kumara Liyanage', 'Driver', 'Administration', 'Work on time to assist DDG\\\'s shedule\\nProvide transport for day to day meetings\\nAssis Hr repartment functions when ever required\\n', '100', '', 'Work on time to assist DDG\\\'s shedule\\nProvide transport for day to day meetings\\nAssis Hr repartment functions when ever required\\n', '100', '', 'Work on time to assist DDG\\\'s shedule\\nProvide transport for day to day meetings\\nAssis Hr repartment functions when ever required\\n', '100', '', 2022, 2147483647),
(0, 7100, 'සුගත් ඉරුගල්බණ්ඩාර', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කඩුවෙල, බත්තරමුල්ල. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කඩුවෙල, බත්තරමුල්ල. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කඩුවෙල, බත්තරමුල්ල . අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 7101, 'එල්.එන්.එස්. පෙරේරා', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - බොරැල්ල, කොල්ලුපිටිය, නාරාහේන්පිට.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - බොරැල්ල, කොල්ලුපිටිය, නාරාහේන්පිට.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - බොරැල්ල, කොල්ලුපිටිය, නාරාහේන්පිට.අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 7109, 'ලලිත් පත්මසිරි', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - මැක් පැක් ඉඩම, මහල්වරාව, පලිගෙදර, පළතුරුවත්ත, බොරලැස්ගමුව. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - මැක් පැක් ඉඩම, මහල්වරාව, පලිගෙදර, පළතුරුවත්ත, බොරලැස්ගමුව. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - මැක් පැක් ඉඩම, මහල්වරාව, පලිගෙදර, පළතුරුවත්ත, බොරලැස්ගමුව. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 7128, 'එච්.කේ. ශිරන්ත පීරිස්', 'රැකවල්කරු', 'Land', ' අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', ' අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', ' අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම .අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(0, 7135, 'A.D. Katugampala', 'Computer Operetor', 'Progress ', 'Preparation of Action PlansPreparation of Weekly progress reportPreparation of Discloser Document', '100', '', 'Preparation of Action PlansPreparation of Weekly progress reportPreparation of Discloser Document', '100', '', 'Preparation of Action PlansPreparation of Weekly progress reportPreparation of Discloser Document', '100', '', 2022, 2147483647),
(0, 7137, 'බී.ජී.කේ. ලක්මාල් පෙරේරා', 'ලිපිකරු', 'Land', 'අංශය තුළ හා පිටතට යවන ලිපිගොනු  - 410\\nපී.අයි.වී. නිකුත් කිරීම - 81\\nටෙන්ඩර් පත්‍ර ලබා දීමේ කටයුතු - 78\\n', '85', '', 'අංශය තුළ හා පිටතට යවන ලිපිගොනු  - 670\\nපී.අයි.වී. නිකුත් කිරීම - 35\\nටෙන්ඩර් පත්‍ර ලබා දීමේ කටයුතු\\n', '80', '', 'අංශය තුළ හා පිටතට යවන ලිපිගොනු  - 721', '80', '', 2022, 2147483647),
(0, 7501, 'ඩී.සී.එන්. මුණසිංහ මිය', 'ලිපිකරු', 'Land', 'ඉඩම් අත්පත් කිරීමේ අංශයේ තැපෑල සම්බන්ධ රාජකාරී ( ලැබූ ලිපි සංඛ්‍යාව - 1253)\\nලිපි අදාළ නිලධාරීන්ට යොමු කිරීම\\n', '85', '', 'සාමාන්‍ය තැපෑල - 1191\\nසභාපති කාර්යාලයෙන්/ අධ්‍යක්‍ෂ ජනරාල් කාර්යාලයෙන්  ලැබෙන ලිපි - 176+541\\nවෙනත් අංශ වලින් ලැබෙන ලිපි - 235\\nලිපි අදාළ නිලධාරීන්ට යොමු කිරීම', '75', '', 'සාමාන්‍ය තැපෑල - 1312\\nසභාපති කාර්යාලයෙන්/ අධ්‍යක්‍ෂ ජනරාල් කාර්යාලයෙන්  ලැබෙන ලිපි - 174+577\\nවෙනත් අංශ වලින් ලැබෙන ලිපි - 442\\nලිපි අදාළ නිලධාරීන්ට යොමු කිරීම\\n\\n', '80', '', 2022, 2147483647),
(0, 7510, 'S.P.R. Sandamali', 'Computer Operater', 'Administration ', 'All letters Entering in the Inward Registers and Submitting to Director (EP) and after the minutes written by him  distributing to the relevant officers.', '100', '', 'All letters Entering in the Inward Registers and Submitting to Director (EP) and after the minutes written by him  distributing to the relevant officers.', '100', '', 'All letters Entering in the Inward Registers and Submitting to Director (EP) and after the minutes written by him  distributing to the relevant officers.', '100', '', 2022, 2147483647),
(0, 7515, 'U.L. Priyangika Fernando', 'Clerk', 'Administration', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '100', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '100', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '100', '', 2022, 2147483647),
(0, 7518, 'S. Shiromani Hettihewa', 'HRM Officer', 'Administration', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 2022, 2147483647),
(0, 7526, 'Y.C.D. Jayawardene', 'Clerk', 'Administration', 'Payment should be debited to the employees\\nAfter eveluation by the board payment should be debited to the employee\\nAfter eveluation by the board payment should be debited to the employee\\n', '88', '', 'Payment should be debited to the employees\\nAfter eveluation by the board payment should be debited to the employee\\nAfter eveluation by the board payment should be debited to the employee\\n', '88', '', 'Payment should be debited to the employees\\nAfter eveluation by the board payment should be debited to the employee\\nAfter eveluation by the board payment should be debited to the employee\\n', '88', '', 2022, 2147483647),
(0, 7541, 'D.A.R.T.Wijesundara', 'Secratery ', 'Administration ', 'General Secratarial Works Letters', '100', '', 'General Secratarial Works Letters', '100', '', 'General Secratarial Works Letters', '100', '', 2022, 2147483647),
(0, 7548, 'P. Ishara Nishadi Peiris', 'HRM Officer', 'Administration', 'On time payment for the third parties\\nFollowup with the agreement and maining a record\\nAccormadate and promote the inhouse bangalows attached to UDA\\n\\\"Staff ID should be issue on the date of join\\nmake sure to have ID for all UDA Staff\\\"\\n', '80', '', 'On time payment for the third parties\\nFollowup with the agreement and maining a record\\nAccormadate and promote the inhouse bangalows attached to UDA\\n\\\"Staff ID should be issue on the date of join\\nmake sure to have ID for all UDA Staff\\\"\\n', '80', '', 'On time payment for the third parties\\nFollowup with the agreement and maining a record\\nAccormadate and promote the inhouse bangalows attached to UDA\\n\\\"Staff ID should be issue on the date of join\\nmake sure to have ID for all UDA Staff\\\"\\n', '80', '', 2022, 2147483647),
(0, 7549, 'K.G. Jeevani Kumari', 'HRM Officer', 'Administration', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 2022, 2147483647),
(0, 7555, ' R. Sunethra Perera', 'Clerk', 'Administration', 'Facility to grant Loan to the Employee and its recovery\\nProvide the loan and the relevent administration and legal framework\\nProvide details to Finance as per the annual bonus policy\\n', '100', '', 'Facility to grant Loan to the Employee and its recovery\\nProvide the loan and the relevent administration and legal framework\\nProvide details to Finance as per the annual bonus policy\\n', '100', '', 'Facility to grant Loan to the Employee and its recovery\\nProvide the loan and the relevent administration and legal framework\\nProvide details to Finance as per the annual bonus policy\\n', '100', '', 2022, 2147483647),
(0, 7556, 'W.A.D. Nishanthi Sudammika', 'Clerk', 'Administration', 'Handling relevant payment relating to the staff transport and attending the issues \\nMake sure to issue the seasons for all the staff\\nProvide the adhoc fixed assest requirement \\n', '100', '', 'Handling relevant payment relating to the staff transport and attending the issues \\nMake sure to issue the seasons for all the staff\\nProvide the adhoc fixed assest requirement \\n', '100', '', 'Handling relevant payment relating to the staff transport and attending the issues \\nMake sure to issue the seasons for all the staff\\nProvide the adhoc fixed assest requirement \\n', '100', '', 2022, 2147483647),
(0, 7559, 'R.K.M.R. Ranaweera', 'HRM Officer', 'Administration', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 2022, 2147483647),
(4, 7562, 'Mrs. KAD Shashikala', 'HR Officer', 'ICT', 'All administrative and HR-related works at the division. In/Out letter maintaining, drafting letters, and sustaining ICT assets registry at the division.', '85', '', 'Completion of the division assets registry.\r\n    Study of the existing files to identify documentation and related approval gaps.', '85', '', 'Maintaining the in and out letter registry. Handling all administrative and HR-related work at the division.\r\n    Study of the existing files to identify documentation and related approval gaps.', '80', '', 2147483647, 2147483647),
(0, 7587, 'S.W.D. Jeewani Dilhara Sepala', 'Clerk', 'Administration', 'make sure to have 100 participation\\nBuilt methodology for measure ROI\\nComplete the recruitment on time and update the personal files\\n', '100', '', 'make sure to have 100 participation\\nBuilt methodology for measure ROI\\nComplete the recruitment on time and update the personal files\\n', '100', '', 'make sure to have 100 participation\\nBuilt methodology for measure ROI\\nComplete the recruitment on time and update the personal files\\n', '100', '', 2022, 2147483647),
(0, 7614, 'W.M.N. Gothami Warnakulasuriya', 'Clerk', 'Administration', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '100', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '100', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '100', '', 2022, 2147483647),
(0, 7621, 'M.D. Indika Malani', 'Clerk', 'Administration', 'Increment should be paid on due date', '100', '', 'Increment should be paid on due date', '100', '', 'Increment should be paid on due date', '100', '', 2022, 2147483647),
(0, 7631, 'ඩී. නිරූපා ප්‍රියදර්ශනී', 'ලිපිකරු', 'Land', 'ඉඩම් බැහැර කිරීමේ අංශයේ ලැබෙන ලිපි ලේඛන ගත කිරීම - 1619\\nබෙදාහැරීම\\nලිපි සඳහා පිලිතුරු සැපයීම\\nතක්සේරු වාර්තා ලේඛන ගත කිරීම\\nටෙන්ඩර් පත්‍රිකා සැකසීමට සහය වීම\\nබදු ගිවිසුම් ලේඛන පවත්වා ගෙන යෑම\\n', '80', '', 'ඉඩම් බැහැර කිරීමේ අංශයේ ලැබෙන ලිපි ලේඛන ගත කිරීම - 610\\nබෙදාහැරීම\\nලිපි සඳහා පිලිතුරු සැපයීම\\nතක්සේරු වාර්තා ලේඛන ගත කිරීම\\nටෙන්ඩර් පත්‍රිකා සැකසීමට සහය වීම\\nබදු ගිවිසුම් ලේඛන පවත්වා ගෙන යෑම\\n', '75', '', 'ඉඩම් බැහැර කිරීමේ අංශයේ ලැබෙන ලිපි ලේඛන ගත කිරීම - 701\\nබෙදාහැරීම\\nලිපි සඳහා පිලිතුරු සැපයීම\\nතක්සේරු වාර්තා ලේඛන ගත කිරීම\\nටෙන්ඩර් පත්‍රිකා සැකසීමට සහය වීම\\nබදු ගිවිසුම් ලේඛන පවත්වා ගෙන යෑම', '85', '', 2022, 2147483647),
(0, 7641, 'S.A. Janani Nadeesha Premarathne', 'HRM Officer', 'Administration', '70 no of interns in a given time\\nRelationship with the Training Institute \\nMaintaing the correct life cycle for the interns and issue the letters\\n', '80', '', '70 no of interns in a given time\\nRelationship with the Training Institute \\nMaintaing the correct life cycle for the interns and issue the letters\\n', '80', '', '70 no of interns in a given time\\nRelationship with the Training Institute \\nMaintaing the correct life cycle for the interns and issue the letters\\n', '80', '', 2022, 2147483647),
(0, 8169, 'A.P.C. Hemal', 'Administrative Officer', 'Administration', 'supervision of Finance Work', '100', '', 'supervision of Finance Work', '100', '', 'supervision of Finance Work', '100', '', 2022, 2147483647),
(18, 8172, 'Mr. BR Perera', 'Audio Visual Equipment Operator', 'ICT', 'Provide Audio-Visual equipment and facilitation of services concerning multimedia.', '80', '', 'Provide Audio-Visual equipment and facilitation of services concerning multimedia.', '80', '', 'Provide Audio-Visual equipment and facilitation of services concerning multimedia.', '85', '', 2147483647, 2147483647),
(0, 8180, 'පී.ජී.ඒ. ප්‍රනාන්දු', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '85', '', 2022, 2147483647),
(0, 8291, 'ලාල් අරන්දර', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - අවිස්සාවේල්ල, තල්දූව. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - අවිස්සාවේල්ල, තල්දූව. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - අවිස්සාවේල්ල, තල්දූව. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '85', '', 2022, 2147483647),
(19, 8303, 'Mr. MCP Liyanaarachchi', 'Actg. ISO/ FA', 'ICT', 'Completion of the remaining TEC reports.', '85', '', 'Preparing TEC reports, Analyzing & Preparing Answers to the Queries, Preparation of replies, and Preparation of TORs.', '80', '', 'Preparing TEC reports, Analyzing & Preparing Answers to the Queries, Preparation of replies, and Preparation of TORs.', '80', '', 2147483647, 2147483647),
(0, 8332, 'M.H.Sarathchabndra', 'Office Aide', 'Administration / Legal', 'Delivering Interdision Letters & Files.Photo Copy', '100', '', 'Delivering Interdision Letters & Files.Photo Copy', '100', '', 'Delivering Interdision Letters & Files.Photo Copy', '100', '', 2022, 2147483647),
(0, 8497, 'එච්.ජී. සුගතදාස', 'රැකවල්කරු', 'Land', 'ලිපි ගොනු බෙදා හැරීම\\nඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම', '80', '', 'ලිපි ගොනු බෙදා හැරීම\\nඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම', '75', '', 'ලිපි ගොනු බෙදා හැරීම\\nඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම', '75', '', 2022, 2147483647),
(3, 8528, 'Mr. GPG Wijesinghe', 'Programmer', '', '', '', '', '', '', '', '', '', '', 2147483647, 2147483647),
(17, 8583, 'Mr. SP Jayasena', 'Audio Visual Equipment Operator', 'ICT', 'Provide Audio-Visual equipment and facilitation of services concerning multimedia.', '80', '', 'Provide Audio-Visual equipment and facilitation of services concerning multimedia.', '80', '', 'Provide Audio-Visual equipment and facilitation of services concerning multimedia.', '80', '', 2147483647, 2147483647),
(7, 8685, 'Mr. GC Satharasinghe', 'IS Officer', 'ICT', 'Purchasing of internet-related connections (dongle, routers, and access points).\r\n    Troubleshooting of internet-related issues.\r\n    Identification and installation of virus guard.', '80', '', 'Purchasing of internet-related connections (dongle, routers, and access points).\r\n    Troubleshooting of internet-related issues.\r\n    Identification and installation of virus guard.', '85', '', 'Purchasing of internet-related connections (dongle, routers, and access points).\r\n    Troubleshooting of internet-related issues.\r\n    Identification and installation of virus guard.', '80', '', 2147483647, 2147483647),
(0, 8880, 'G.K.P. Chandrika Perera', '', 'Administration', 'All the sinhala typing letters should be type and issue\\nAssistantce for deliver the letters from Thapol\\nSupport HR Officers to deliver the task on time\\n', '90', '', 'All the sinhala typing letters should be type and issue\\nAssistantce for deliver the letters from Thapol\\nSupport HR Officers to deliver the task on time\\n', '90', '', 'All the sinhala typing letters should be type and issue\\nAssistantce for deliver the letters from Thapol\\nSupport HR Officers to deliver the task on time\\n', '90', '', 2022, 2147483647),
(0, 8886, 'J.F. Stephen', 'Secretary', 'Administration ', 'Secretarial Related work (Telephone, Mails, Meetings & etc.) Secretarial Related work (Telephone, Mails, Meetings & etc.) ', '100', '', 'Secretarial Related work (Telephone, Mails, Meetings & etc.) Secretarial Related work (Telephone, Mails, Meetings & etc.) ', '100', '', 'Secretarial Related work (Telephone, Mails, Meetings & etc.) Secretarial Related work (Telephone, Mails, Meetings & etc.) ', '100', '', 2022, 2147483647),
(0, 8921, 'Chamila Kalubowila', 'Typist (English)', 'Land', 'Typed the land bank details send to the Finance Ministry Letters - 28\\nBoard Papers - 3\\nCabinet Papers -1\\nOn going list - 2\\nSection 2 Papers - 4\\nSection 5 Papers - 1\\nLand list  - 1\\nTEC reports - 1\\nManning Market list - 1\\nRetyping and correct the all documents', '95', '', 'TEC reports - 2\\nLetters - 16\\nBoard Papers - 4\\nSection 2 Papers - 2\\nSection 7 Papers - 1 \\nRetyping and correct all documents', '95', '', 'Board Papers - 8\\nLetters - 38\\nOn going list - 2\\nSection 2 Papers - 4\\nSection 7 Papers - 2\\nLand list - 2\\nRetyping letters and all documents\\n\\n\\n\\n\\n\\n', '100', '', 2022, 2147483647),
(0, 8939, 'S.L.D.K.M.Samarathunge', 'Assistant Director (Finance)', 'Land', ' Checking Payment Voucher for Compensation ,Survey Fees,Valuation Fees,Advance Payments for fuel and other advances,staff subsisitances and other and Certifing of Pay In Vouchers for Tempary Rental,Lease Premia,Land Sale and other Incomes    100                                                                                                     Preparation of UDA Lands detail schedule according to the Treasury Circular No.01/2017     97                                                                Preparation of following annual account schedules for the year 2020 annual accounts.Compensation & Interest payable as at 31.12.2020/Submission of Claim in respect of expenditure incurred during the year 2020/Outstanding receivable on disposal of lands in cost recovery sales or  lease 100', '100', '', 'Checking Payment Voucher for Compensation, Survey Fees,Valuation Fees, Advance Payments for fuel and other advances, staff subsisitances and other and Certifing of Pay In Vouchers for Tempary Rental, Lease Premia, Land Sale and other Incomes 100', '100', '', 'Preparation of Lands division Budget details for the year 2021-Payment of Compensation/Personnel Emoluments Budget/Cash & Revenue Budget/Administrative Expenditure/Acqusition of Fixed Assets/Operational & Capital Expenditure Budget 100', '100', '', 2022, 2147483647),
(0, 8943, 'R.N.D. Silva', 'Assistant Director (HRM)', 'Administration', 'Responding to the employee greavance \\nCarder Approval and update HR Carder vs Budget\\nMake sure to have competent right staff as per the SOR\\n', '80', '', 'Responding to the employee greavance \\nCarder Approval and update HR Carder vs Budget\\nMake sure to have competent right staff as per the SOR\\n', '80', '', 'Responding to the employee greavance \\nCarder Approval and update HR Carder vs Budget\\nMake sure to have competent right staff as per the SOR\\n', '80', '', 2022, 2147483647),
(0, 8951, 'Thushima Miriyagalla', 'Typist (English)', 'Land', 'Letters typing - 32\\n18 (1) documents - 5\\nBoard Papers - 3\\nCovering letters - 1\\nSection 15 (1) documents - 2\\nSection 2 document - 2\\n', '80', '', 'Letters - 20\\n18 (1) documents - 5\\nBoard Papers - 3\\nSection 15 (1) documents - 2\\nSection 2 Papers - 2\\n', '75', '', 'Letters - 20\\n18 (1) documents - 5\\nBoard Papers - 3\\nSection 15 (1) documents - 2\\nSection 2 documents - 2\\nHanding over papers - 1\\n', '80', '', 2022, 2147483647),
(0, 8952, 'Mrs T Hettiarachchi', 'Secretary', 'Administration ', 'Secretarial works of Dy. Director General (Consultancy) division Answering calls / taking messages / maintaining DDG (Consultancy)\\\'s diary/ arranging appointments / typing. ', '100', '', 'Secretarial works of Dy. Director General (Consultancy) division Answering calls / taking messages / maintaining DDG (Consultancy)\\\'s diary/ arranging appointments / typing. ', '100', '', 'Secretarial works of Dy. Director General (Consultancy) division Answering calls / taking messages / maintaining DDG (Consultancy)\\\'s diary/ arranging appointments / typing. ', '100', '', 2022, 2147483647),
(0, 8989, 'කේ.වෙන්නිලා ', 'යතුරු ලේඛිකා(දෙමළ) ', 'Land', '1980 - 2 වැනි වගන්තිය යටතේ නියමය -05\\n15(1) වගන්තිය යටතේ නියමය - 03\\n5 වැනි වගන්තිය යටතේ ප්‍රකාශය - 07\\nඅමාත්‍ය මණ්ඩල සංදේශ - 05\\n1964 අංක 2 වැනි වගන්තිය යටතේ ප්‍රකාශය - 06\\n1964  7 වැනි වගන්තිය යටතේ ප්‍රකාශය - 04 \\n1979 අංක 07 දරන - 14(2) බී - 05 \\nනාගරික සංවර්ධන අධිකාරියේ සියළු අංශ වල අමාත්‍ය මණ්ඩල පත්‍රිකා භාෂා පරිවර්තන කටයුතු කිරීම \\n', '90', '', '1980 - 2 වැනි වගන්තිය යටතේ නියමය -03\\n15(1) වගන්තිය යටතේ නියමය - 02\\n5 වැනි වගන්තිය යටතේ ප්‍රකාශය - 03\\nඅමාත්‍ය මණ්ඩල සංදේශ - 01\\n1964 අංක 2 වැනි වගන්තිය යටතේ ප්‍රකාශය - 04\\n1964  7 වැනි වගන්තිය යටතේ ප්‍රකාශය - 04 \\n1979 අංක 07 දරන - 14(2) බී - 01\\nනාගරික සංවර්ධන අධිකාරියේ සියළු අංශ වල අමාත්‍ය මණ්ඩල පත්‍රිකා භාෂා පරිවර්තන කටයුතු කිරීම ', '75', '', '1980 - 2 වැනි වගන්තිය යටතේ නියමය -03\\n15(1) වගන්තිය යටතේ නියමය - 01\\n5 වැනි වගන්තිය යටතේ ප්‍රකාශය - 04\\nඅමාත්‍ය මණ්ඩල සංදේශ - 01\\n1964 අංක 2 වැනි වගන්තිය යටතේ ප්‍රකාශය - 03\\n1964  7 වැනි වගන්තිය යටතේ ප්‍රකාශය - 04 \\nහක්මන නගර සංවර්ධන පොත සිංහලෙන් දෙමළ භාෂාවට පරිවර්තනය කිරීම හා සකස් කිරීම \\nනාගරික සංවර්ධන අධිකාරියේ සියළු අංශ වල අමාත්‍ය මණ්ඩල පත්‍රිකා භාෂා පරිවර්තන කටයුතු කිරීම ', '85', '', 2022, 2147483647),
(9, 9090, 'Mrs. UM Dilrukshi', 'IS Officer', 'ICT', 'Support for the UDA website management, recording and evaluation of ICT-related payment, preparation of statistical information, and hardware and software maintenance.', '80', '', 'Support for the UDA website management, recording and evaluation of ICT-related payment, preparation of statistical information, and hardware and software maintenance.', '80', '', 'Support for the UDA website management, recording and evaluation of ICT-related payment, preparation of statistical information, and hardware and software maintenance.', '80', '', 2147483647, 2147483647),
(0, 9092, 'W.A. Shamali Dilhani', 'HRM Officer', 'Administration', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 'Increment should be paid on due date\\nShould be response on time\\nExit process should be clear within one month\\n', '90', '', 2022, 2147483647),
(0, 9184, 'Mrs Piyusha Gunasekara', 'Dy Director (Projects)', 'Project Consulting ', 'Project Management work of Sethsiripaya III Co-ordination & assistance to MRICC ProjectProjectEvaluation of bids received for MRICC', '100', '', 'Project Management work of Sethsiripaya III Co-ordination & assistance to MRICC ProjectProjectEvaluation of bids received for MRICC', '100', '', 'Project Management work of Sethsiripaya III Co-ordination & assistance to MRICC ProjectProjectEvaluation of bids received for MRICC', '100', '', 2022, 2147483647),
(0, 9185, 'Mahinda Withanaarachchi', 'Act. A.D.G', 'Planning', 'Project ManagementProject initiation/Action Plan coordination with DDGsAttending meeting', '100', '', 'Project ManagementProject initiation/Action Plan coordination with DDGsAttending meeting', '100', '', 'Project ManagementProject initiation/Action Plan coordination with DDGsAttending meeting', '100', '', 2022, 2147483647),
(0, 9306, 'W.P. Walpola', 'Assistant Director ( Planning)', 'planning & unauthoirized', 'ii. Draft Regulations should be preparedPrepare a draft report.', '90', '', 'ii. Draft Regulations should be preparedPrepare a draft report.', '100', '', 'ii. Draft Regulations should be preparedPrepare a draft report.', '100', '', 2022, 2147483647),
(0, 9338, 'H.M.W.Herath', 'Dy.Director (PL)', 'Planning ', ' Supevise for the preparation  Kantalee Development Plan up to chapter 7 of document part supervise for  Amendment Zonning  Plan for the Trincomalee Metro Development Plan  100 cities development programm 1. Muthur 3CD juntion beatufication  2.kantalee lake  bund surronding development complet the planning work of 1. Wattam beach Dveloment prject 2. Kantale pola Development Project 3. Nilaveli Facility Center Development project 4.  Mattikeliya Wetland Development Project (Project identification, land identification, preliminary surveys, clearances from other Institutions, feasibilities and preparation of Concept Papers)', '100', '', ' Supevise for the preparation  Kantalee Development Plan up to chapter 7 of document part supervise for  Amendment Zonning  Plan for the Trincomalee Metro Development Plan  100 cities development programm 1. Muthur 3CD juntion beatufication  2.kantalee lake  bund surronding development complet the planning work of 1. Wattam beach Dveloment prject 2. Kantale pola Development Project 3. Nilaveli Facility Center Development project 4.  Mattikeliya Wetland Development Project (Project identification, land identification, preliminary surveys, clearances from other Institutions, feasibilities and preparation of Concept Papers)', '100', '', ' Supevise for the preparation  Kantalee Development Plan up to chapter 7 of document part supervise for  Amendment Zonning  Plan for the Trincomalee Metro Development Plan  100 cities development programm 1. Muthur 3CD juntion beatufication  2.kantalee lake  bund surronding development complet the planning work of 1. Wattam beach Dveloment prject 2. Kantale pola Development Project 3. Nilaveli Facility Center Development project 4.  Mattikeliya Wetland Development Project (Project identification, land identification, preliminary surveys, clearances from other Institutions, feasibilities and preparation of Concept Papers)', '100', '', 2022, 2147483647),
(0, 9344, 'Mr Ananda Samarasingha ', 'Dy. Director General (Consultancy) ', 'Project, Consultancy,  Landscaping ', '1. Management and divisions coming under perview of DDG (Consultancy) . Ensure quality, time and cost targets of all projectsDesign Management in all 03 divisions ', '100', '', '1. Management and divisions coming under perview of DDG (Consultancy) . Ensure quality, time and cost targets of all projectsDesign Management in all 03 divisions ', '100', '', '1. Management and divisions coming under perview of DDG (Consultancy) . Ensure quality, time and cost targets of all projectsDesign Management in all 03 divisions ', '100', '', 2022, 2147483647),
(0, 9462, 'S.A. Gunapala', 'Cook', 'Administration', 'Timely delivery the refreshment for the Meeting/ programme/Training\\nmaintain the cleaniness and follow the meeting ethiquite \\nReduce the wastage and attendance sheet should be collect before the meeting\\n', '96', '', 'Timely delivery the refreshment for the Meeting/ programme/Training\\nmaintain the cleaniness and follow the meeting ethiquite \\nReduce the wastage and attendance sheet should be collect before the meeting\\n', '96', '', 'Timely delivery the refreshment for the Meeting/ programme/Training\\nmaintain the cleaniness and follow the meeting ethiquite \\nReduce the wastage and attendance sheet should be collect before the meeting\\n', '96', '', 2022, 2147483647),
(0, 9535, 'A.G.M. Rasmy', 'Town Planner', 'Planning                              1. Amendment Zonning  Development Plan for Trincomalee Metro U', 'Identification of the present issues of the Zoning Plan     2. Preparation of the amended zoning plan 3. Obtaining approval from the relevant Local Authorities.   4. Approval obtained from DPC of UDA.  5.  Approval obtained from the MPC.', '100', '', 'Identification of the present issues of the Zoning Plan     2. Preparation of the amended zoning plan 3. Obtaining approval from the relevant Local Authorities.   4. Approval obtained from DPC of UDA.  5.  Approval obtained from the MPC.', '100', '', 'Identification of the present issues of the Zoning Plan     2. Preparation of the amended zoning plan 3. Obtaining approval from the relevant Local Authorities.   4. Approval obtained from DPC of UDA.  5.  Approval obtained from the MPC.', '100', '', 2022, 2147483647),
(0, 9540, 'K.D. Batuwita', 'Motorcycle Orderly Messenger', 'Administration', 'Delivery letters by hand to the board member\\nHand delivery letters to the external parties\\nAssistance with the Internal Thapol\\n', '80', '', 'Delivery letters by hand to the board member\\nHand delivery letters to the external parties\\nAssistance with the Internal Thapol\\n', '80', '', 'Delivery letters by hand to the board member\\nHand delivery letters to the external parties\\nAssistance with the Internal Thapol\\n', '80', '', 2022, 2147483647),
(0, 9546, 'U.L.M. Jabeer', 'Clerk', 'Finance', 'Preparation of Utility Bill Vouchers and submitting to Director (EP) Through Dy. Director (Pl) through Admin. Officer', '100', '', 'Preparation of Utility Bill Vouchers and submitting to Director (EP) Through Dy. Director (Pl) through Admin. Officer', '100', '', 'Preparation of Utility Bill Vouchers and submitting to Director (EP) Through Dy. Director (Pl) through Admin. Officer', '100', '', 2022, 2147483647),
(0, 9559, 'පී. ඇනිටන් ජානිස් සිල්වා', 'රියදුරු', 'Land', 'සී.ඒ. බී. 7422 දරණ රථයේ අධ්‍යක්‍ෂතුමිය විසින් පවරන ලද ප්‍රවාහන රාජකාරි', '100', '', 'සී.ඒ. බී. 7422 දරණ රථයේ අධ්‍යක්‍ෂතුමිය විසින් පවරන ලද ප්‍රවාහන රාජකාරි', '100', '', 'සී.ඒ. බී. 7422 දරණ රථයේ අධ්‍යක්‍ෂතුමිය විසින් පවරන ලද ප්‍රවාහන රාජකාරි', '100', '', 2022, 2147483647),
(6, 9591, 'Mr. TDM Thalagala', 'IS Officer', 'ICT', '', '65', '', 'Network troubleshooting and zoom facility management.', '70', '', 'Network troubleshooting and zoom facility management.', '80', '', 2147483647, 2147483647),
(0, 9619, 'H.M. Srimal', 'Office Aide', 'Administration ', 'Key DutiesLetter DistributionSuporting to the staff', '100', '', 'Key DutiesLetter DistributionSuporting to the staff', '100', '', 'Key DutiesLetter DistributionSuporting to the staff', '100', '', 2022, 2147483647),
(0, 9622, 'තුවාන් ෆර්සාන්', ' ක්ෂේත්‍ර සහකාර නිලධාරි', 'Land', 'මැනිං වෙළෙදපොළෙහි විශේෂ රාජකාරි\\nපෑලියගොඩ, ඔලියමුල්ල, රාගම, කඩවත, වැලිපිල්ලෑව, ජා ඇළ ඉඩම් පරීක්ෂාව\\nඅනවසර ඉවත් කිරීම්\\nනිවාස සමීක්ෂණ\\nකාර්යාල රාජකාරී\\n', '80', '', 'ගම්පහ දිස්ත්‍රික්කයේ ඇති ඉඩම් පරීක්‍ෂා කිරීම\\nදෙල්ගොඩ ප්‍රදේශයේ විශේෂ අත්පත් කර ගැනීමේ කටයුතු\\nකඩවත, පෑලියගොඩ අනවසර ඉවත් කිරීම් කටයුතු\\nඉල්ලීම් ලිපි සම්බන්ධ ක්ෂේත්‍ර වාර්තා ලබා දීම\\n', '75', '', 'අනවසර ඉවත් කිරීම් - පෑලියගොඩ\\nපෑලියගොඩ,  රාගම, කඩවත, ජා ඇළ යන ප්‍රදේශවල ඉඩම් පරීක්ෂාව\\nදළුගම විදුලිබල මණ්ඩලය සමඟ ඉඩම් රාජකාරී\\nප්‍රාදේශීය ලේකම් කාර්යාල වලට මුදල් චෙක්පත් රැගෙන යාම\\nඉල්ලීම් ලිපි සම්බන්ධ ක්ෂේත්‍ර වාර්තා ලබා දීම\\n', '80', '', 2022, 2147483647),
(0, 9624, 'රංග විතානගේ', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කොළඹ, කොම්පඤ්ඤවීදිය. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '95', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කොළඹ, කොම්පඤ්ඤවීදිය. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '95', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - කොළඹ, කොම්පඤ්ඤවීදිය. අනවසර ඉදිකිරීම් ඉවත් කිරීම', '95', '', 2022, 2147483647),
(0, 9636, 'සී.ඒ. අතුකෝරල', 'කාර්යාල කාර්යය සහයක', 'Land', 'ප්‍රධාන දොරටුවේ යතුරු රාජකාරී\\nවෙනත් අංශ සඳහා ලිපි බෙදීම\\nතේ පිළියෙල කිරීම\\nසිතියම් හා ලිපිලේඛන ඡායා පිටපත් ලබා දීම\\nලිපි ෆැක්ස් කිරීම\\nඉඩම් බැහැර කිරීමේ ඒකකයේ ලැබෙන ලිපි අදාළ ලේඛනයේ ලේඛන ගත කර භාර දීම\\nතක්සේරුවාර්තා හදිසි ලිපි අදාළ ආයතන වලට රැගෙන යාම\\nපුවත්පත් දැන්වීම් භාර දීම\\n\\n\\n', '95', '', 'ප්‍රධාන දොරටුවේ යතුරු රාජකාරී\\nවෙනත් අංශ සඳහා ලිපි බෙදීම\\nතේ පිළියෙල කිරීම\\nසිතියම් හා ලිපිලේඛන ඡායා පිටපත් ලබා දීම\\nලිපි ෆැක්ස් කිරීම\\nඉඩම් බැහැර කිරීමේ ඒකකයේ ලැබෙන ලිපි අදාළ ලේඛනයේ ලේඛන ගත කර භාර දීම\\nතක්සේරුවාර්තා හදිසි ලිපි අදාළ ආයතන වලට රැගෙන යාම\\nපුවත්පත් දැන්වීම් භාර දීම', '95', '', 'ප්‍රධාන දොරටුවේ යතුරු රාජකාරී\\nවෙනත් අංශ සඳහා ලිපි බෙදීම\\nතේ පිළියෙල කිරීම\\nසිතියම් හා ලිපිලේඛන ඡායා පිටපත් ලබා දීම\\nලිපි ෆැක්ස් කිරීම\\nඉඩම් බැහැර කිරීමේ ඒකකයේ ලැබෙන ලිපි අදාළ ලේඛනයේ ලේඛන ගත කර භාර දීම\\nතක්සේරුවාර්තා හදිසි ලිපි අදාළ ආයතන වලට රැගෙන යාම\\nපුවත්පත් දැන්වීම් භාර දීම', '95', '', 2022, 2147483647),
(0, 9639, 'ඩබ්.ආර්. සම්පත් පෙරේරා', 'රැකවල්කරු', 'Land', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - මාදිවෙල, මිරිහාන‍. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - මාදිවෙල, මිරිහාන‍. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '85', '', 'අදාල ප්‍රදේශයේ නාගරික සංවර්ධන අධිකාරියට අයත් ඉඩම් රැකබලා ගැනීම - මාදිවෙල, මිරිහාන‍. අනවසර ඉදිකිරීම් ඉවත් කිරීම ', '85', '', 2022, 2147483647),
(0, 9652, 'S. Chithravelayutham', 'Office Aide', 'Administration ', 'Cleaning Office,Maintenance of FilesOperating Fax & Photocopy Machine ', '100', '', 'Cleaning Office,Maintenance of FilesOperating Fax & Photocopy Machine ', '100', '', 'Cleaning Office,Maintenance of FilesOperating Fax & Photocopy Machine ', '100', '', 2022, 2147483647),
(0, 9795, 'Dayani Francis', 'Director (Land Dev. & Mgt.)', 'Land', 'Acquisition, Vesting, Purchasing of lands and the Protection & Management of acquired / vested lands and properties. Payment of compensation and interest on claim, rates, tax and other bills for various parties including Govt. & Agencies and fees for special services obtained.Relocation of parties affected and makes available the acquired/vested land free of encumbrances for development purposes.Initiate legal action against squatters / unauthorized activities / trespasses, unauthorized use and occupational activities of UDA lands. Liaise with Government Departments and other agencies for acquisition / vesting of lands.Development and disposal of land and properties by way of sale, lease (long term, medium term or short term) or on rental basis or by Auction or Tender. Advertising, promotion and dealing with respective lands. Procurement of specialized services such as Survey, valuation and other technical, required for land acqusition, development & management and disposal purposes. M', '100', '', 'Acquisition, Vesting, Purchasing of lands and the Protection & Management of acquired / vested lands and properties.\\nPayment of compensation and interest on claim, rates, tax and other bills for various parties including Govt. & Agencies and fees for special services obtained.\\nRelocation of parties affected and makes available the acquired/vested land free of encumbrances for development purposes.\\nInitiate legal action against squatters / unauthorized activities / trespasses, unauthorized use and occupational activities of UDA lands.\\nLiaise with Government Departments and other agencies for acquisition / vesting of lands.Development and disposal of land and properties by way of sale, lease (long term, medium term or short term) or on rental basis or by Auction or Tender.\\nAdvertising, promotion and dealing with respective lands.Procurement of specialized services such as Survey, valuation and other technical, required for land acqusition, development & management and disposal purpo', '100', '', 'Acquisition, Vesting, Purchasing of lands and the Protection & Management of acquired / vested lands and properties.\\nPayment of compensation and interest on claim, rates, tax and other bills for various parties including Govt. & Agencies and fees for special services obtained.\\nRelocation of parties affected and makes available the acquired/vested land free of encumbrances for development purposes.\\nInitiate legal action against squatters / unauthorized activities / trespasses, unauthorized use and occupational activities of UDA lands.\\nLiaise with Government Departments and other agencies for acquisition / vesting of lands. Development and disposal of land and properties by way of sale, lease (long term, medium term or short term) or on rental basis or by Auction or Tender.\\nAdvertising, promotion and dealing with respective lands. Procurement of specialized services such as Survey, valuation and other technical, required for land acqusition, development & management and disposal pur', '100', '', 2022, 2147483647),
(0, 9809, 'Wajira Jagoda Arachchi', 'HRM Officer', 'Administration', 'Internal letters should be distribute within a day\\nExternal letter should be send to Postal within a day\\nUpdated system to track the letter status\\n', '90', '', 'Internal letters should be distribute within a day\\nExternal letter should be send to Postal within a day\\nUpdated system to track the letter status\\n', '90', '', 'Internal letters should be distribute within a day\\nExternal letter should be send to Postal within a day\\nUpdated system to track the letter status\\n', '90', '', 2022, 2147483647),
(0, 9813, 'R.H.K. Rajapakse', 'Administrative Officer', 'Administration', 'Distributing the letters on time to the relvent person\\nOntime payment to the third party and the internal customers\\nGenerating revenue using the Bangalows\\n', '80', '', 'Distributing the letters on time to the relvent person\\nOntime payment to the third party and the internal customers\\nGenerating revenue using the Bangalows\\n', '80', '', 'Distributing the letters on time to the relvent person\\nOntime payment to the third party and the internal customers\\nGenerating revenue using the Bangalows\\n', '80', '', 2022, 2147483647),
(0, 9881, 'බී.එච්. ව්‍යාංගා රසාංජලී', 'ලිපිකරු', 'Land', 'වන්දි හා පොලී මුදල් ගෙවීම් ලෙජර් ගත කිරීම හා නැවත ලේඛන ගත කිරීම. \\n අංශයට අවශ්‍ය ලිපි ද්‍රව්‍ය හා අනෙකුත්    අවශ්‍යතාවන් සැපයීම. \\nඅංශයේ විවිධ කටයුතු සදහා අවශ්‍ය සුළු මුදල් සැපයීම\\nරාජකාරි නිවාඩු සහ නිවාඩු මානව සම්පත් කළමනාකරණ අංශය වෙත යොමු කිරීම හා ඊට අදාල අනෙකුත් කටයුතු සිදු කිරීම \\nඅධිකාරිය වෙත අත්කර ගන්නා ලද ඉඩම් වල පිඹරුපත් ලියාපදිංචි කිරීම හා ලේඛන ගත කිරීම\\nපිඹුරුපත් වලට අදාල CD තැටි ලේඛන ගත කර ‍සුරත්ෂිතව ගබඩා කිරීම. \\nනව ගොනු විවෘත කිරීමට ගොනු අංක ලබාදීම සහ ලිපි ගොනු ලේඛනය ක්‍රමවත්ව පවත්වාගෙන යාම. \\nතක්සේරු වාර්තා ලේඛන ගතව හා ක්‍රමවත්ව පවත්වාගෙන යාම.  \\nඅංශයේ ප්‍රවාහන පහසුකම් සැපයීම හා ඊට අදාල රාජකාරි  \\nඅධ්‍යක්ෂතුමිය විසින් පවරන අනෙකුත් රාජකාරි කටයුතු   \\nපරිපාලන අංශයේ විවිධ ලිපි ලේඛන සකස් කිරීම\\n කාල චක්‍රයට පැමිණෙන දිනයන්හි ලිපි ගොනු රාජකාරී, ප්‍රධාන තැපෑලට අදාල රාජකාරි ද සදු කිරීම.   \\n', '80', '', 'වන්දි හා පොලී මුදල් ගෙවීම් ලෙජර් ගත කිරීම හා නැවත ලේඛන ගත කිරීම. \\n අංශයට අවශ්‍ය ලිපි ද්‍රව්‍ය හා අනෙකුත්    අවශ්‍යතාවන් සැපයීම. \\nඅංශයේ විවිධ කටයුතු සදහා අවශ්‍ය සුළු මුදල් සැපයීම\\nරාජකාරි නිවාඩු සහ නිවාඩු මානව සම්පත් කළමනාකරණ අංශය වෙත යොමු කිරීම හා ඊට අදාල අනෙකුත් කටයුතු සිදු කිරීම \\nඅධිකාරිය වෙත අත්කර ගන්නා ලද ඉඩම් වල පිඹරුපත් ලියාපදිංචි කිරීම හා ලේඛන ගත කිරීම\\nපිඹුරුපත් වලට අදාල CD තැටි ලේඛන ගත කර ‍සුරත්ෂිතව ගබඩා කිරීම. \\nනව ගොනු විවෘත කිරීමට ගොනු අංක ලබාදීම සහ ලිපි ගොනු ලේඛනය ක්‍රමවත්ව පවත්වාගෙන යාම. \\nතක්සේරු වාර්තා ලේඛන ගතව හා ක්‍රමවත්ව පවත්වාගෙන යාම.  \\nඅංශයේ ප්‍රවාහන පහසුකම් සැපයීම හා ඊට අදාල රාජකාරි  \\nඅධ්‍යක්ෂතුමිය විසින් පවරන අනෙකුත් රාජකාරි කටයුතු   \\nපරිපාලන අංශයේ විවිධ ලිපි ලේඛන සකස් කිරීම\\n කාල චක්‍රයට පැමිණෙන දිනයන්හි ලිපි ගොනු රාජකාරී, ප්‍රධාන තැපෑලට අදාල රාජකාරි ද සදු කිරීම.   ', '90', '', 'වන්දි හා පොලී මුදල් ගෙවීම් ලෙජර් ගත කිරීම හා නැවත ලේඛන ගත කිරීම. \\n අංශයට අවශ්‍ය ලිපි ද්‍රව්‍ය හා අනෙකුත්    අවශ්‍යතාවන් සැපයීම. \\nඅංශයේ විවිධ කටයුතු සදහා අවශ්‍ය සුළු මුදල් සැපයීම\\nරාජකාරි නිවාඩු සහ නිවාඩු මානව සම්පත් කළමනාකරණ අංශය වෙත යොමු කිරීම හා ඊට අදාල අනෙකුත් කටයුතු සිදු කිරීම \\nඅධිකාරිය වෙත අත්කර ගන්නා ලද ඉඩම් වල පිඹරුපත් ලියාපදිංචි කිරීම හා ලේඛන ගත කිරීම\\nපිඹුරුපත් වලට අදාල CD තැටි ලේඛන ගත කර ‍සුරත්ෂිතව ගබඩා කිරීම. \\nනව ගොනු විවෘත කිරීමට ගොනු අංක ලබාදීම සහ ලිපි ගොනු ලේඛනය ක්‍රමවත්ව පවත්වාගෙන යාම. \\nතක්සේරු වාර්තා ලේඛන ගතව හා ක්‍රමවත්ව පවත්වාගෙන යාම.  \\nඅංශයේ ප්‍රවාහන පහසුකම් සැපයීම හා ඊට අදාල රාජකාරි  \\nඅධ්‍යක්ෂතුමිය විසින් පවරන අනෙකුත් රාජකාරි කටයුතු   \\nපරිපාලන අංශයේ විවිධ ලිපි ලේඛන සකස් කිරීම\\n කාල චක්‍රයට පැමිණෙන දිනයන්හි ලිපි ගොනු රාජකාරී, ප්‍රධාන තැපෑලට අදාල රාජකාරි ද සදු කිරීම.   ', '90', '', 2022, 2147483647),
(0, 9897, 'ඩී.සී.ආශා දිල්රුක්‍ෂි ', 'පරිගණත යන්ත්‍ර ක්‍රියාකරු ', 'Land', 'නිලධාරින් විසින් ලබා දුන් ලිපි - 700\\nටෙන්ඩර් පත්‍රිකා - 11\\nතාක්‍ෂණික ඇගයීම් කමිටු වාර්තා  - 02 \\nඅමාත්‍ය මණ්ඩල සංදේශ - 07\\n18(1) - 01\\nලේඛන - 02\\nනිලධාරින් විසින් ලබා දෙන සියලු ලිපි නැවත නැවත නිවැරදි කිරීම් ද සිදු කරනු ලබයි \\n\\n', '75', '', 'නිලධාරින් විසින් ලබා දුන් ලිපි - 345\\nටෙන්ඩර් පත්‍රිකා - 01\\nතාක්‍ෂණික ඇගයීම් කමිටු වාර්තා  - 02 \\nඅමාත්‍ය මණ්ඩල සංදේශ - 03\\nලේඛන - 01\\nඉඩම් අත්කර ගැනීමේ ඉල්ලුම් පත්‍ර (460) - 11\\nනිලධාරින් විසින් ලබා දෙන සියලු ලිපි නැවත නැවත නිවැරදි කිරීම් ද සිදු කරනු ලබයි \\n', '75', '', 'නිලධාරින් විසින් ලබා දුන් ලිපි - 439\\nටෙන්ඩර් පත්‍රිකා - 01\\nතාක්‍ෂණික ඇගයීම් කමිටු වාර්තා  - 02 \\nඅමාත්‍ය මණ්ඩල සංදේශ - 01\\nලේඛන - 02\\nඉඩම් අත්කර ගැනීමේ ඉල්ලුම් පත්‍ර (460) - 1\\n1980 අංක 02 වගන්තිය - 5\\nනිලධාරින් විසින් ලබා දෙන සියලු ලිපි නැවත නැවත නිවැරදි කිරීම් ද සිදු කරනු ලබයි. ', '75', '', 2022, 2147483647),
(0, 9898, 'Y.Vinotha', 'Enforcement Planner', 'Planning ', 'Identification of the present issues of the Zoning Plan     2. Preparation of the amended zoning plan 3. Obtaining approval from the relevant Local Authorities.   4. Approval obtained from DPC of UDA.  5.  Approval obtained from the MPC.', '100', '', 'Identification of the present issues of the Zoning Plan     2. Preparation of the amended zoning plan 3. Obtaining approval from the relevant Local Authorities.   4. Approval obtained from DPC of UDA.  5.  Approval obtained from the MPC.', '100', '', 'Identification of the present issues of the Zoning Plan     2. Preparation of the amended zoning plan 3. Obtaining approval from the relevant Local Authorities.   4. Approval obtained from DPC of UDA.  5.  Approval obtained from the MPC.', '100', '', 2022, 2147483647),
(0, 9908, 'Nadeesha Bulathgama Arachchi', '', 'Administration', 'Registred in Labour department and clear at the exit point\\nMake sure to charge from the external parties\\nAs per the government  rules and reluations issue the permit\\n', '90', '', 'Registred in Labour department and clear at the exit point\\nMake sure to charge from the external parties\\nAs per the government  rules and reluations issue the permit\\n', '90', '', 'Registred in Labour department and clear at the exit point\\nMake sure to charge from the external parties\\nAs per the government  rules and reluations issue the permit\\n', '90', '', 2022, 2147483647);
INSERT INTO `duty_list` (`id`, `empcode`, `noc`, `desig`, `dutyfrm`, `tutq1`, `progq1p`, `progq1l`, `tutq2`, `progq2p`, `progq2l`, `tutq3`, `progq3p`, `progq3l`, `created_date`, `updated_date`) VALUES
(0, 9933, 'R.A.D.P.N.Ranawake', 'Computer Operator', ' Administration / Legal', 'Quite NoticeEjectment Legal DocumentsNormal LettersInter Office Memeo  for Attorney Generals Department and Private Lawyers Fees Bills  ', '100', '', 'Quite NoticeEjectment Legal DocumentsNormal LettersInter Office Memeo  for Attorney Generals Department and Private Lawyers Fees Bills  ', '100', '', 'Quite NoticeEjectment Legal DocumentsNormal LettersInter Office Memeo  for Attorney Generals Department and Private Lawyers Fees Bills  ', '100', '', 2022, 2147483647),
(0, 9941, 'P.E.I.L. Ekanayake', 'Asst. Planning Officer', 'Preparation of Development Plan for kanthale Area', 'Preparation of the Zoning Regulations         Obtaining consent from LA                            Obtaining MPC approval   Presented to MPC on 09th February, 2021               Documentaion of Kanthale Development Plan (1-3 Chapters)                                            Documentaion of Kanthale Development Plan (3-6 Chapters)              Prepartion of Presentaion according to the comments received by MPC and Present to Strategic Planning Division                                     Documentaion of Kanthale Development Plan (7 Chapter)                   ', '100', '', 'Preparation of the Zoning Regulations         Obtaining consent from LA                            Obtaining MPC approval   Presented to MPC on 09th February, 2021               Documentaion of Kanthale Development Plan (1-3 Chapters)                                            Documentaion of Kanthale Development Plan (3-6 Chapters)              Prepartion of Presentaion according to the comments received by MPC and Present to Strategic Planning Division                                     Documentaion of Kanthale Development Plan (7 Chapter)                   ', '100', '', 'Preparation of the Zoning Regulations         Obtaining consent from LA                            Obtaining MPC approval   Presented to MPC on 09th February, 2021               Documentaion of Kanthale Development Plan (1-3 Chapters)                                            Documentaion of Kanthale Development Plan (3-6 Chapters)              Prepartion of Presentaion according to the comments received by MPC and Present to Strategic Planning Division                                     Documentaion of Kanthale Development Plan (7 Chapter)                   ', '100', '', 2022, 2147483647),
(0, 9942, 'ක්‍රිෂාන්ත ප්‍රනාන්දු', 'කාර්යාල කාර්යය සහයක', 'Land', 'ලිපි ගොනු බෙදා හැරීම\\nඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම', '70', '', 'ලිපි ගොනු බෙදා හැරීම\\nඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම', '60', '', 'ලිපි ගොනු බෙදා හැරීම\\nඡායා පිටපත් ගැනීම\\nතේ පිළියෙල කිරීම', '60', '', 2022, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `employee_list`
--

CREATE TABLE `employee_list` (
  `id` int(30) NOT NULL,
  `empcode` int(5) DEFAULT NULL,
  `employee_id` varchar(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `designation_id` int(30) NOT NULL,
  `evaluator_id` int(30) NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_list`
--

INSERT INTO `employee_list` (`id`, `empcode`, `employee_id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `department_id`, `designation_id`, `evaluator_id`, `avatar`, `date_created`) VALUES
(4, 6666, '', 'Test ', '', 'User', 'testuser@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 3, 2, '1641367860_wallpaperflare.com_wallpaper (1).jpg', '2022-01-05 10:02:50'),
(6, 333, '', 'Test ', 'User 33', 'User 34', 'testuser3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 2, '1641374640_wallpaperflare.com_wallpaper.jpg', '2022-01-05 14:54:06'),
(7, 666, '', 'Test ', '', 'User5', 'testuser5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 4, 2, '1641374940_wallpaperflare.com_wallpaper.jpg', '2022-01-05 14:59:29'),
(8, 1111, '', 'Test ', 'User', '6', 'testuser2@gmail.co9', 'e10adc3949ba59abbe56e057f20f883e', 1, 5, 2, '1641375960_wallpaperflare.com_wallpaper.jpg', '2022-01-05 15:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_list`
--

CREATE TABLE `evaluator_list` (
  `id` int(30) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluator_list`
--

INSERT INTO `evaluator_list` (`id`, `employee_id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `avatar`, `date_created`) VALUES
(2, '', 'test', 'eval', 'dd', 'testeval@localhost.com', 'e10adc3949ba59abbe56e057f20f883e', '1640232000_wallpaperflare.com_wallpaper (2).jpg', '2021-12-23 09:30:15'),
(3, '', 'Test ', '', 'eva', 'testev2@localhost.com', 'e10adc3949ba59abbe56e057f20f883e', '1641440700_wallpaperflare.com_wallpaper (1).jpg', '2022-01-06 09:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `evaluator_id` int(30) NOT NULL,
  `efficiency` int(11) NOT NULL,
  `timeliness` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `accuracy` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `employee_id`, `task_id`, `evaluator_id`, `efficiency`, `timeliness`, `quality`, `accuracy`, `remarks`, `date_created`) VALUES
(3, 3, 3, 2, 5, 5, 5, 5, '', '2021-12-23 09:35:59'),
(4, 6, 5, 2, 4, 5, 5, 5, '', '2022-01-12 08:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'KPI Management System', 'info@uda.gov.lk', '+94 11 2875911', '6th , 7th and 9th Floors, \"Sethsiripaya\",\r\n      Battaramulla. Sri Lanka', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `employee_id` int(30) NOT NULL,
  `due_date` date NOT NULL,
  `completed` date NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=pending, 1=on-progress,3=Completed',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `task`, `description`, `employee_id`, `due_date`, `completed`, `status`, `date_created`) VALUES
(3, 'test task', '							ewewewq', 3, '2021-12-24', '2021-12-27', 2, '2021-12-23 09:31:14'),
(4, 'test task 2', 'early task', 3, '2021-12-27', '2021-12-26', 2, '2021-12-28 12:26:47'),
(5, 'test task', '							Test Task', 6, '2022-01-08', '2022-01-07', 2, '2022-01-06 09:37:31'),
(6, 'test task 3', 'ytjhtrutr', 4, '2022-01-07', '0000-00-00', 0, '2022-01-07 10:30:07'),
(7, 'test taskxx', 'csfsdff', 4, '2022-01-07', '0000-00-00', 0, '2022-01-07 12:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `task_progress`
--

CREATE TABLE `task_progress` (
  `id` int(11) NOT NULL,
  `task_id` int(30) NOT NULL,
  `progress` text NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no,1=Yes',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_progress`
--

INSERT INTO `task_progress` (`id`, `task_id`, `progress`, `is_complete`, `date_created`) VALUES
(6, 3, '&lt;p&gt;step 1&lt;/p&gt;', 0, '2021-12-23 09:32:18'),
(7, 3, '&lt;p&gt;step 2&lt;/p&gt;', 1, '2021-12-23 09:32:38'),
(8, 4, '&lt;p&gt;yyhrtyr&lt;/p&gt;', 0, '2021-12-28 12:27:48'),
(9, 4, '&lt;p&gt;rgg&lt;/p&gt;', 1, '2021-12-28 12:28:04'),
(10, 5, '&lt;p&gt;step 1&lt;br&gt;&lt;/p&gt;', 0, '2022-01-06 10:08:34'),
(11, 5, '&lt;p&gt;step 2&lt;br&gt;&lt;/p&gt;', 0, '2022-01-06 10:13:51'),
(12, 5, '&lt;p&gt;completed&lt;br&gt;&lt;/p&gt;', 1, '2022-01-06 10:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `avatar`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', '1607135820_avatar.jpg', '2020-11-26 10:57:04'),
(3, 'Test ', 'User', 'admin2@admin.com', '922887a8146245e47ffd5c06389603a2', '1641439680_wallpaperflare.com_wallpaper.jpg', '2022-01-06 08:58:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_list`
--
ALTER TABLE `designation_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duty_list`
--
ALTER TABLE `duty_list`
  ADD PRIMARY KEY (`empcode`);

--
-- Indexes for table `employee_list`
--
ALTER TABLE `employee_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluator_list`
--
ALTER TABLE `evaluator_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_progress`
--
ALTER TABLE `task_progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `duty_list`
--
ALTER TABLE `duty_list`
  MODIFY `empcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006768;

--
-- AUTO_INCREMENT for table `employee_list`
--
ALTER TABLE `employee_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `evaluator_list`
--
ALTER TABLE `evaluator_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `task_progress`
--
ALTER TABLE `task_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
