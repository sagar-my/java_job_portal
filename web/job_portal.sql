-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2023 at 05:58 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_job`
--

CREATE TABLE IF NOT EXISTS `apply_job` (
  `jobid` int(11) NOT NULL AUTO_INCREMENT,
  `other_id` int(11) NOT NULL,
  `comp_name` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `course` varchar(30) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `apply_job`
--

INSERT INTO `apply_job` (`jobid`, `other_id`, `comp_name`, `job_title`, `name`, `email`, `phone`, `location`, `course`, `experience`, `resume`) VALUES
(21, 17, 'Google', 'Software Intern', 'Ram Kumar', 'ram@gmail.com', '7896453218', 'Gurgaon', 'M.ca', 'Fresher', 'TkingterWidget.docx'),
(22, 18, 'HCL', 'Web Intern', 'GarVit Sharma', 'gar@gmail.com', '9898989898', 'Noida', 'BTech', '2', 'MySQL Database.docx');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_name` varchar(50) DEFAULT NULL,
  `job_title` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `com_name`, `job_title`, `location`, `category`, `status`, `description`, `email`, `date`) VALUES
(17, 'Google', 'Software Intern', 'Gurgaon', 'IT', 'Active', 'This is a job for fresher who have knowdledge of ', 'admin@gmail.com', '2023-05-13 09:58:54'),
(15, 'TCS', 'Frontend Devloper', 'Gurgaon', 'IT', 'Active', 'Urgent Requried', 'akash@gmail.com', '2022-12-20 10:46:12'),
(16, 'Google', 'Data Entry', 'Mathura', 'Recepient', 'Active', 'Urgent Recqired', 'admin@gmail.com', '2023-01-09 10:21:25'),
(18, 'HCL', 'Web Intern', 'Noida', 'IT', 'Active', 'This is a job for fresher. Fresher must have knowldege of HTMl css', 'aman@gmail.com', '2023-05-13 11:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter`
--

CREATE TABLE IF NOT EXISTS `recruiter` (
  `recruiter_id` int(255) NOT NULL AUTO_INCREMENT,
  `com_name` varchar(255) NOT NULL,
  `recruiter_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`recruiter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`recruiter_id`, `com_name`, `recruiter_name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Google', 'Aryan Sharma', 'admin@gmail.com', 'aryan', 'Noida', '789461230'),
(2, 'TCS', 'Akash Tiwari', 'akash@gmail.com', 'akash', 'Delhi', '7796548125'),
(3, 'Wipro', 'Sunil Kumar', 'sunil@gmail.com', 'sunil', 'Gurgaon', '8564732419'),
(4, 'HCL', 'Aman Agrawal', 'aman@gmail.com', '123456', 'Noida', '9090909090');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `experience` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `phone`, `qualification`, `skill`, `experience`) VALUES
(1, 'Ajay Sharma', 'ajay@gmail.com', 'ajay', '7410258963', 'B.tech', 'Java, Python', 'Fresher'),
(2, 'Ram Kumar', 'ram@gmail.com', 'ram', '9512306475', 'M.ca', 'Web Devloper', 'Fresher'),
(3, 'Karan Sign', 'karan@gamil.com', 'karan', '8523106497', 'B.sc', 'C#', 'Fresher'),
(4, 'Garvit', 'gar@gmail.com', '98765', '9898989898', 'B.tech', 'HTML,CSS', 'Fresher');
