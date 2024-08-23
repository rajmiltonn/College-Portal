-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 02, 2021 at 10:25 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `college_portal_mini_jsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `circular`
--

CREATE TABLE `circular` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `depart` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `descr` varchar(250) NOT NULL,
  `year1` varchar(50) NOT NULL,
  `docc` varchar(250) NOT NULL,
  `rdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circular`
--

INSERT INTO `circular` (`id`, `name`, `depart`, `sem`, `descr`, `year1`, `docc`, `rdate`, `status`) VALUES
(1, 'internal exam', 'CSE', '3', 'Afternoon', '2 year', 'yoga.doc', '2-8-2021', '0'),
(2, 'university exam', 'CSE', '6', 'aftern and fornoon 24-07-2021 to 29-05-2021', '3 year', 'unit 1.pdf', '2-8-2021', '0');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `depart` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `descr` varchar(250) NOT NULL,
  `year1` varchar(50) NOT NULL,
  `docc` varchar(250) NOT NULL,
  `rdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `depart`, `sem`, `descr`, `year1`, `docc`, `rdate`, `status`) VALUES
(1, 'mani', 'CSE', '', 'question papper', '2 year', 'medical_emergency_mini.doc', '2-8-2021', '0');

-- --------------------------------------------------------

--
-- Table structure for table `it_supp`
--

CREATE TABLE `it_supp` (
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it_supp`
--

INSERT INTO `it_supp` (`uname`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `gender`, `address`, `contact`, `email`, `uname`, `password`) VALUES
(1, 'mani', 'Male', 'trichy', '7904461600', 'maranfantasy@gmail.com', 'mm', 'mm'),
(2, 'vel', 'Male', 'trichy', '8754228854', 'maranfantasy@gmail.com', 'mmm', 'mmm');
