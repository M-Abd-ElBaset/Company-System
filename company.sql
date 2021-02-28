-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2021 at 01:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--
CREATE DATABASE IF NOT EXISTS `company` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `company`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPTNO` int(11) NOT NULL,
  `DEPTNAME` varchar(150) DEFAULT NULL,
  `LOCATION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPTNO`, `DEPTNAME`, `LOCATION`) VALUES
(1, 'CS', 'Cairo'),
(2, 'IS', 'Haram'),
(4, 'OR', 'Giza'),
(6, 'Stat', 'Alex'),
(7, 'Bio Statisitics', 'Cairo'),
(8, 'Math', 'Cairo');

-- --------------------------------------------------------

--
-- Stand-in structure for view `department_data`
-- (See below for the actual view)
--
CREATE TABLE `department_data` (
`DEPARTMENT_NO` int(11)
,`DEPARTMENT` varchar(150)
,`LOCATION` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPNO` int(11) NOT NULL,
  `EMPNAME` varchar(120) DEFAULT NULL,
  `ADDRESS` varchar(200) DEFAULT NULL,
  `SALARY` double DEFAULT NULL,
  `HIRINGDATE` date DEFAULT NULL,
  `BIRTHDATE` date DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPNO`, `EMPNAME`, `ADDRESS`, `SALARY`, `HIRINGDATE`, `BIRTHDATE`, `DEPTNO`) VALUES
(1, 'Ahmed Mahmoud', 'Giza', 1200, '2009-08-01', '1986-04-06', 2),
(2, 'Ahmed Gamal', 'Alex', 1300, '2006-09-06', '1982-07-04', 1),
(3, 'Omar Ahmed', 'Cairo', 1500, '2005-01-01', '1990-09-09', 4),
(4, 'Kamal', 'Giza', 1500, '2000-09-14', '1988-09-08', 7),
(5, 'Yasser', 'Tanta', 1300, '2013-10-16', '1990-10-17', 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_data`
-- (See below for the actual view)
--
CREATE TABLE `employee_data` (
`NUMBER` int(11)
,`NAME` varchar(120)
,`ADDRESS` varchar(200)
,`SALARY` double
,`HIRING_DATE` date
,`DATE_OF_BIRTH` date
,`DEPARTMENT_NO` int(11)
,`DEPARTMENT` varchar(150)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee_phones`
--

CREATE TABLE `employee_phones` (
  `EMPNO` int(11) NOT NULL,
  `PHONE` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_phones`
--

INSERT INTO `employee_phones` (`EMPNO`, `PHONE`) VALUES
(1, '013'),
(1, '014'),
(1, '015'),
(2, '0103456789'),
(2, '0113456789'),
(2, '0123456789'),
(5, '011456789'),
(5, '012456789'),
(5, '013456789');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_phones_data`
-- (See below for the actual view)
--
CREATE TABLE `employee_phones_data` (
`EMPLOYEE_NO` int(11)
,`EMPLOYEE_NAME` varchar(120)
,`PHONE` varchar(55)
);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `PROJECTNO` int(11) NOT NULL,
  `PROJECTNAME` varchar(150) DEFAULT NULL,
  `LOCATION` varchar(100) DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`PROJECTNO`, `PROJECTNAME`, `LOCATION`, `DEPTNO`) VALUES
(1, 'Main Project', 'Tanta', 1),
(2, 'Project 2', 'Haram', 4),
(3, 'Project 3', 'Alex', 8);

-- --------------------------------------------------------

--
-- Stand-in structure for view `project_data`
-- (See below for the actual view)
--
CREATE TABLE `project_data` (
`PROJECT_NO` int(11)
,`PROJECT_NAME` varchar(150)
,`LOCATION` varchar(100)
,`DEPARTMENT_NO` int(11)
,`DEPARTMENT` varchar(150)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `pass`) VALUES
('a', 'a'),
('admin', '123'),
('b', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `workon`
--

CREATE TABLE `workon` (
  `EMPNO` int(11) NOT NULL,
  `PROJECTNO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `workon`
--

INSERT INTO `workon` (`EMPNO`, `PROJECTNO`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(5, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `workon_data`
-- (See below for the actual view)
--
CREATE TABLE `workon_data` (
`EMPLOYEE_NO` int(11)
,`EMPLOYEE_NAME` varchar(120)
,`PROJECT_NO` int(11)
,`PROJECT_NAME` varchar(150)
);

-- --------------------------------------------------------

--
-- Structure for view `department_data`
--
DROP TABLE IF EXISTS `department_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `department_data`  AS  select `department`.`DEPTNO` AS `DEPARTMENT_NO`,`department`.`DEPTNAME` AS `DEPARTMENT`,`department`.`LOCATION` AS `LOCATION` from `department` ;

-- --------------------------------------------------------

--
-- Structure for view `employee_data`
--
DROP TABLE IF EXISTS `employee_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_data`  AS  select `employee`.`EMPNO` AS `NUMBER`,`employee`.`EMPNAME` AS `NAME`,`employee`.`ADDRESS` AS `ADDRESS`,`employee`.`SALARY` AS `SALARY`,`employee`.`HIRINGDATE` AS `HIRING_DATE`,`employee`.`BIRTHDATE` AS `DATE_OF_BIRTH`,`employee`.`DEPTNO` AS `DEPARTMENT_NO`,`department`.`DEPTNAME` AS `DEPARTMENT` from (`employee` join `department`) where `employee`.`DEPTNO` = `department`.`DEPTNO` ;

-- --------------------------------------------------------

--
-- Structure for view `employee_phones_data`
--
DROP TABLE IF EXISTS `employee_phones_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_phones_data`  AS  select `employee`.`EMPNO` AS `EMPLOYEE_NO`,`employee`.`EMPNAME` AS `EMPLOYEE_NAME`,`employee_phones`.`PHONE` AS `PHONE` from (`employee` join `employee_phones`) where `employee`.`EMPNO` = `employee_phones`.`EMPNO` ;

-- --------------------------------------------------------

--
-- Structure for view `project_data`
--
DROP TABLE IF EXISTS `project_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project_data`  AS  select `project`.`PROJECTNO` AS `PROJECT_NO`,`project`.`PROJECTNAME` AS `PROJECT_NAME`,`project`.`LOCATION` AS `LOCATION`,`project`.`DEPTNO` AS `DEPARTMENT_NO`,`department`.`DEPTNAME` AS `DEPARTMENT` from (`project` join `department`) where `project`.`DEPTNO` = `department`.`DEPTNO` ;

-- --------------------------------------------------------

--
-- Structure for view `workon_data`
--
DROP TABLE IF EXISTS `workon_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `workon_data`  AS  select `workon`.`EMPNO` AS `EMPLOYEE_NO`,`employee`.`EMPNAME` AS `EMPLOYEE_NAME`,`workon`.`PROJECTNO` AS `PROJECT_NO`,`project`.`PROJECTNAME` AS `PROJECT_NAME` from ((`workon` join `employee`) join `project`) where `workon`.`EMPNO` = `employee`.`EMPNO` and `workon`.`PROJECTNO` = `project`.`PROJECTNO` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPTNO`),
  ADD UNIQUE KEY `DEPTNAME` (`DEPTNAME`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPNO`),
  ADD UNIQUE KEY `EMPNAME` (`EMPNAME`),
  ADD KEY `DEPTNO` (`DEPTNO`);

--
-- Indexes for table `employee_phones`
--
ALTER TABLE `employee_phones`
  ADD PRIMARY KEY (`EMPNO`,`PHONE`),
  ADD UNIQUE KEY `PHONE` (`PHONE`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`PROJECTNO`),
  ADD UNIQUE KEY `PROJECTNAME` (`PROJECTNAME`),
  ADD KEY `DEPTNO` (`DEPTNO`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `workon`
--
ALTER TABLE `workon`
  ADD PRIMARY KEY (`EMPNO`,`PROJECTNO`),
  ADD KEY `PROJECTNO` (`PROJECTNO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`DEPTNO`) REFERENCES `department` (`DEPTNO`);

--
-- Constraints for table `employee_phones`
--
ALTER TABLE `employee_phones`
  ADD CONSTRAINT `employee_phones_ibfk_1` FOREIGN KEY (`EMPNO`) REFERENCES `employee` (`EMPNO`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`DEPTNO`) REFERENCES `department` (`DEPTNO`);

--
-- Constraints for table `workon`
--
ALTER TABLE `workon`
  ADD CONSTRAINT `workon_ibfk_1` FOREIGN KEY (`EMPNO`) REFERENCES `employee` (`EMPNO`),
  ADD CONSTRAINT `workon_ibfk_2` FOREIGN KEY (`PROJECTNO`) REFERENCES `project` (`PROJECTNO`);
--
-- Database: `mydatabase1`
--
CREATE DATABASE IF NOT EXISTS `mydatabase1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydatabase1`;

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `DEPT_NO` int(11) NOT NULL,
  `DEPT_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`DEPT_NO`, `DEPT_NAME`) VALUES
(1, 'Information Systems'),
(2, 'Computer Science'),
(3, 'Operations Research'),
(4, 'Statistic'),
(5, 'Mathematic');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `EMP_NO` int(11) NOT NULL,
  `EMP_NAME` varchar(80) NOT NULL,
  `EMP_SALARY` double DEFAULT NULL,
  `DEPT_WORK` int(11) DEFAULT NULL,
  `BDATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`EMP_NO`, `EMP_NAME`, `EMP_SALARY`, `DEPT_WORK`, `BDATE`) VALUES
(1, 'Ahmed Hassouna', 1200, 1, '1986-04-06'),
(2, 'Amr ElSayed', 1300, 1, '1988-08-13'),
(3, 'Adel Sabour', 1400, 1, '1984-01-01'),
(4, 'Ehab Mohamed', 1500, 1, '1988-05-01'),
(5, 'Ahmed Ibrahim', 1600, 1, '1982-04-08'),
(6, 'Atteia Anter', 1700, 2, '1985-06-07'),
(7, 'Mohamed Saied', 1800, 2, '1980-04-01'),
(8, 'Mohamed Fathy', 1900, 2, '1980-04-01'),
(9, 'Ahmed Ashry', 2000, 2, '1989-01-01'),
(10, 'Mahmoud ElAwa', 2200, 2, '1990-01-01'),
(11, 'Mahmoud Fayed', 2300, 3, '1986-12-29'),
(12, 'Sahar abd ElGafour', 2400, 3, '1980-05-01'),
(13, 'Sahar Tarek', 2500, 3, '1980-05-26'),
(14, 'Samah Othman', 2600, 3, '1977-07-07'),
(15, 'Samah Yasser', 2700, 3, '1980-01-01'),
(16, 'Heba Mohamed', 2800, 4, '1988-08-08'),
(17, 'Heba Gamal', 2900, 4, '1999-09-09'),
(18, 'Aml Gamal', 3000, 4, '2000-10-10'),
(19, 'Aml Samy', 3500, 4, '1990-01-01'),
(20, 'Samar Samy', 4500, 4, '1989-05-09'),
(21, 'Mohamed Kamal', 5600, 5, '1985-08-01'),
(22, 'Saif Mohamed', 5700, 5, '1986-04-14'),
(23, 'Ali Khaled', 5800, 5, '1986-09-01'),
(24, 'Abd ElMageed', 3600, 5, '1990-08-01'),
(25, 'Abd ElHady', 1300, 5, '1990-05-01'),
(26, 'Ahmed Omar', 5900, 1, '1990-04-01'),
(27, 'Mahmoud Amr', 6000, 2, '1988-01-01'),
(28, 'Mohamed Sobhy', 950, 3, '1995-01-01'),
(29, 'Ahmed Gamal', 750, 4, '1995-05-01'),
(30, 'Yaser Gamal', 650, 5, '1987-07-17'),
(31, 'Amira Gamal', 850, 1, '1995-08-18'),
(32, 'Gaser Ali', 1444, 1, '1984-04-04'),
(33, 'Yaser Ali', 1555, 2, '1985-05-05'),
(34, 'Maher Ali', 1666, 3, '1986-06-06'),
(35, 'Omar Ali', 1555, 2, '1985-05-05'),
(36, 'Samer Ali', 1666, 3, '1986-06-06');

-- --------------------------------------------------------

--
-- Stand-in structure for view `empdata`
-- (See below for the actual view)
--
CREATE TABLE `empdata` (
`Number` int(11)
,`NAME` varchar(80)
,`SALARY` double
,`DEPARTMENT` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `tempemp`
--

CREATE TABLE `tempemp` (
  `EMP_NO` int(11) NOT NULL,
  `EMP_NAME` varchar(80) NOT NULL,
  `EMP_SALARY` double DEFAULT NULL,
  `DEPT_WORK` int(11) DEFAULT NULL,
  `BDATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tempemp`
--

INSERT INTO `tempemp` (`EMP_NO`, `EMP_NAME`, `EMP_SALARY`, `DEPT_WORK`, `BDATE`) VALUES
(0, 'Gaser Ali', 1444, 1, '1984-04-04'),
(0, 'Yaser Ali', 1555, 2, '1985-05-05'),
(0, 'Maher Ali', 1666, 3, '1986-06-06'),
(0, 'Omar Ali', 1555, 2, '1985-05-05'),
(0, 'Samer Ali', 1666, 3, '1986-06-06'),
(0, 'Omar Ali', 1555, 2, '1985-05-05'),
(0, 'Samer Ali', 1666, 3, '1986-06-06'),
(0, 'Omar Ali', 1555, 2, '1985-05-05'),
(0, 'Samer Ali', 1666, 3, '1986-06-06');

-- --------------------------------------------------------

--
-- Structure for view `empdata`
--
DROP TABLE IF EXISTS `empdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empdata`  AS  select `emp`.`EMP_NO` AS `Number`,`emp`.`EMP_NAME` AS `NAME`,`emp`.`EMP_SALARY` AS `SALARY`,`dept`.`DEPT_NAME` AS `DEPARTMENT` from (`emp` join `dept`) where `emp`.`DEPT_WORK` = `dept`.`DEPT_NO` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`DEPT_NO`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`EMP_NO`),
  ADD KEY `DEPT_WORK` (`DEPT_WORK`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`DEPT_WORK`) REFERENCES `dept` (`DEPT_NO`);
--
-- Database: `mydatabase1_restore`
--
CREATE DATABASE IF NOT EXISTS `mydatabase1_restore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydatabase1_restore`;

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `DEPT_NO` int(11) NOT NULL,
  `DEPT_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`DEPT_NO`, `DEPT_NAME`) VALUES
(1, 'Information Systems'),
(2, 'Computer Science'),
(3, 'Operations Research'),
(4, 'Statistic'),
(5, 'Mathematic');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `EMP_NO` int(11) NOT NULL,
  `EMP_NAME` varchar(80) NOT NULL,
  `EMP_SALARY` double DEFAULT NULL,
  `DEPT_WORK` int(11) DEFAULT NULL,
  `BDATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`EMP_NO`, `EMP_NAME`, `EMP_SALARY`, `DEPT_WORK`, `BDATE`) VALUES
(1, 'Ahmed Hassouna', 1200, 1, '1986-04-06'),
(2, 'Amr ElSayed', 1300, 1, '1988-08-13'),
(3, 'Adel Sabour', 1400, 1, '1984-01-01'),
(4, 'Ehab Mohamed', 1500, 1, '1988-05-01'),
(5, 'Ahmed Ibrahim', 1600, 1, '1982-04-08'),
(6, 'Atteia Anter', 1700, 2, '1985-06-07'),
(7, 'Mohamed Saied', 1800, 2, '1980-04-01'),
(8, 'Mohamed Fathy', 1900, 2, '1980-04-01'),
(9, 'Ahmed Ashry', 2000, 2, '1989-01-01'),
(10, 'Mahmoud ElAwa', 2200, 2, '1990-01-01'),
(11, 'Mahmoud Fayed', 2300, 3, '1986-12-29'),
(12, 'Sahar abd ElGafour', 2400, 3, '1980-05-01'),
(13, 'Sahar Tarek', 2500, 3, '1980-05-26'),
(14, 'Samah Othman', 2600, 3, '1977-07-07'),
(15, 'Samah Yasser', 2700, 3, '1980-01-01'),
(16, 'Heba Mohamed', 2800, 4, '1988-08-08'),
(17, 'Heba Gamal', 2900, 4, '1999-09-09'),
(18, 'Aml Gamal', 3000, 4, '2000-10-10'),
(19, 'Aml Samy', 3500, 4, '1990-01-01'),
(20, 'Samar Samy', 4500, 4, '1989-05-09'),
(21, 'Mohamed Kamal', 5600, 5, '1985-08-01'),
(22, 'Saif Mohamed', 5700, 5, '1986-04-14'),
(23, 'Ali Khaled', 5800, 5, '1986-09-01'),
(24, 'Abd ElMageed', 3600, 5, '1990-08-01'),
(25, 'Abd ElHady', 1300, 5, '1990-05-01'),
(26, 'Ahmed Omar', 5900, 1, '1990-04-01'),
(27, 'Mahmoud Amr', 6000, 2, '1988-01-01'),
(28, 'Mohamed Sobhy', 950, 3, '1995-01-01'),
(29, 'Ahmed Gamal', 750, 4, '1995-05-01'),
(30, 'Yaser Gamal', 650, 5, '1987-07-17'),
(31, 'Amira Gamal', 850, 1, '1995-08-18'),
(32, 'Gaser Ali', 1444, 1, '1984-04-04'),
(33, 'Yaser Ali', 1555, 2, '1985-05-05'),
(34, 'Maher Ali', 1666, 3, '1986-06-06'),
(35, 'Omar Ali', 1555, 2, '1985-05-05'),
(36, 'Samer Ali', 1666, 3, '1986-06-06');

-- --------------------------------------------------------

--
-- Stand-in structure for view `empdata`
-- (See below for the actual view)
--
CREATE TABLE `empdata` (
`Number` int(11)
,`NAME` varchar(80)
,`SALARY` double
,`DEPARTMENT` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `tempemp`
--

CREATE TABLE `tempemp` (
  `EMP_NO` int(11) NOT NULL,
  `EMP_NAME` varchar(80) NOT NULL,
  `EMP_SALARY` double DEFAULT NULL,
  `DEPT_WORK` int(11) DEFAULT NULL,
  `BDATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tempemp`
--

INSERT INTO `tempemp` (`EMP_NO`, `EMP_NAME`, `EMP_SALARY`, `DEPT_WORK`, `BDATE`) VALUES
(0, 'Gaser Ali', 1444, 1, '1984-04-04'),
(0, 'Yaser Ali', 1555, 2, '1985-05-05'),
(0, 'Maher Ali', 1666, 3, '1986-06-06'),
(0, 'Omar Ali', 1555, 2, '1985-05-05'),
(0, 'Samer Ali', 1666, 3, '1986-06-06'),
(0, 'Omar Ali', 1555, 2, '1985-05-05'),
(0, 'Samer Ali', 1666, 3, '1986-06-06'),
(0, 'Omar Ali', 1555, 2, '1985-05-05'),
(0, 'Samer Ali', 1666, 3, '1986-06-06');

-- --------------------------------------------------------

--
-- Structure for view `empdata`
--
DROP TABLE IF EXISTS `empdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empdata`  AS  select `emp`.`EMP_NO` AS `Number`,`emp`.`EMP_NAME` AS `NAME`,`emp`.`EMP_SALARY` AS `SALARY`,`dept`.`DEPT_NAME` AS `DEPARTMENT` from (`emp` join `dept`) where `emp`.`DEPT_WORK` = `dept`.`DEPT_NO` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`DEPT_NO`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`EMP_NO`),
  ADD KEY `DEPT_WORK` (`DEPT_WORK`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`DEPT_WORK`) REFERENCES `dept` (`DEPT_NO`);
--
-- Database: `org`
--
CREATE DATABASE IF NOT EXISTS `org` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `org`;

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `WORKER_REF_ID` int(11) DEFAULT NULL,
  `BONUS_AMOUNT` int(10) DEFAULT NULL,
  `BONUS_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bonus`
--

INSERT INTO `bonus` (`WORKER_REF_ID`, `BONUS_AMOUNT`, `BONUS_DATE`) VALUES
(1, 5000, '2016-02-20 00:00:00'),
(2, 3000, '2016-06-11 00:00:00'),
(3, 4000, '2016-02-20 00:00:00'),
(1, 4500, '2016-02-20 00:00:00'),
(2, 3500, '2016-06-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `WORKER_REF_ID` int(11) DEFAULT NULL,
  `WORKER_TITLE` char(25) DEFAULT NULL,
  `AFFECTED_FROM` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`WORKER_REF_ID`, `WORKER_TITLE`, `AFFECTED_FROM`) VALUES
(1, 'Manager', '2016-02-20'),
(2, 'Executive', '2016-06-11'),
(8, 'Executive', '2016-06-11'),
(5, 'Manager', '2016-06-11'),
(4, 'Asst. Manager', '2016-06-11'),
(7, 'Executive', '2016-06-11'),
(6, 'Lead', '2016-06-11'),
(3, 'Lead', '2016-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `WORKER_ID` int(11) NOT NULL,
  `FNAME` char(25) DEFAULT NULL,
  `LNAME` char(25) DEFAULT NULL,
  `SALARY` int(15) DEFAULT NULL,
  `JOINING_DATE` datetime DEFAULT NULL,
  `DEPARTMENT` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`WORKER_ID`, `FNAME`, `LNAME`, `SALARY`, `JOINING_DATE`, `DEPARTMENT`) VALUES
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD KEY `WORKER_REF_ID` (`WORKER_REF_ID`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD KEY `WORKER_REF_ID` (`WORKER_REF_ID`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`WORKER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `WORKER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bonus`
--
ALTER TABLE `bonus`
  ADD CONSTRAINT `bonus_ibfk_1` FOREIGN KEY (`WORKER_REF_ID`) REFERENCES `worker` (`WORKER_ID`) ON DELETE CASCADE;

--
-- Constraints for table `title`
--
ALTER TABLE `title`
  ADD CONSTRAINT `title_ibfk_1` FOREIGN KEY (`WORKER_REF_ID`) REFERENCES `worker` (`WORKER_ID`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Dumping data for table `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('company', 1, 'my page');

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"company\",\"table\":\"workon_data\"},{\"db\":\"company\",\"table\":\"project_data\"},{\"db\":\"company\",\"table\":\"project\"},{\"db\":\"company\",\"table\":\"department\"},{\"db\":\"company\",\"table\":\"employee_phones\"},{\"db\":\"company\",\"table\":\"employee\"},{\"db\":\"company\",\"table\":\"employee_data\"},{\"db\":\"company\",\"table\":\"department_data\"},{\"db\":\"mydatabase1\",\"table\":\"dept\"},{\"db\":\"company\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Dumping data for table `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('company', 'department', 1, 289, 309),
('company', 'employee', 1, 289, 33),
('company', 'employee_phones', 1, 43, 107),
('company', 'project', 1, 807, 251),
('company', 'workon', 1, 594, 170);

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'company', 'workon_data', '{\"sorted_col\":\"`workon_data`.`EMPLOYEE_NO` ASC\"}', '2020-10-07 11:48:35'),
('root', 'mydatabase1', 'tempemp', '{\"sorted_col\":\"`tempemp`.`EMP_NO` ASC\"}', '2020-09-21 11:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-10-14 10:58:27', '{\"Console\\/Mode\":\"collapse\",\"ThemeDefault\":\"pmahomme\",\"NavigationWidth\":170}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
