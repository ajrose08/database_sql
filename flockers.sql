-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2017 at 07:51 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flockers`
--

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `event_id` tinyint(4) NOT NULL,
  `joiner_user_id` int(5) NOT NULL,
  `question_id` tinyint(4) NOT NULL,
  `rate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_question`
--

CREATE TABLE `evaluation_question` (
  `question_id` tinyint(4) NOT NULL,
  `question_description` varchar(255) NOT NULL,
  `designer_user_id` int(5) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` tinyint(4) NOT NULL,
  `event_organizer_user_id` int(5) NOT NULL,
  `event_sub_category_id` tinyint(4) NOT NULL,
  `cover_photo_link` varchar(50) NOT NULL,
  `event_title` varchar(30) NOT NULL,
  `event_description` varchar(255) NOT NULL,
  `event_date_posted` datetime NOT NULL,
  `event_date` datetime NOT NULL,
  `event_venue_id` tinyint(4) NOT NULL,
  `total_no_of_joiners` tinyint(4) NOT NULL,
  `max_no_of_joiners` tinyint(4) NOT NULL,
  `reg_amount` int(5) NOT NULL,
  `event_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_joiner`
--

CREATE TABLE `event_joiner` (
  `event_id` tinyint(4) NOT NULL,
  `user_id` int(5) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_photo`
--

CREATE TABLE `event_photo` (
  `event_id` tinyint(4) NOT NULL,
  `photo_link` varchar(64) NOT NULL,
  `photo_description` varchar(64) NOT NULL,
  `place_taken` varchar(32) NOT NULL,
  `date_taken` datetime NOT NULL,
  `date_uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_reg_transaction`
--

CREATE TABLE `event_reg_transaction` (
  `trans_id` int(11) NOT NULL,
  `event_id` tinyint(4) NOT NULL,
  `trans_date` datetime NOT NULL,
  `user_id` int(5) NOT NULL,
  `ticket_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_flockers`
--

CREATE TABLE `group_flockers` (
  `group_id` tinyint(3) NOT NULL,
  `organizer_user_id` int(5) NOT NULL,
  `group_name` varchar(16) NOT NULL,
  `group_description` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `total_no_of_members` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_member`
--

CREATE TABLE `group_member` (
  `group_id` tinyint(3) NOT NULL,
  `user_id` int(5) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_message`
--

CREATE TABLE `group_message` (
  `message_id` int(6) NOT NULL,
  `group_id` tinyint(3) NOT NULL,
  `sender_user_id` int(5) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date_sent` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE `main_category` (
  `main_category_id` tinyint(3) NOT NULL,
  `main_category_name` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal_message`
--

CREATE TABLE `personal_message` (
  `message_id` int(6) NOT NULL,
  `from_user_id` int(5) NOT NULL,
  `to_user_id` int(5) NOT NULL,
  `date_sent` datetime NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile_photo`
--

CREATE TABLE `profile_photo` (
  `user_id` int(5) NOT NULL,
  `photo_link` varchar(64) NOT NULL,
  `date_uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` tinyint(3) NOT NULL,
  `main_category_id` tinyint(3) NOT NULL,
  `sub_category_name` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(5) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `middle_name` varchar(32) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `mobile_no` varchar(13) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `paypal_account` varchar(50) NOT NULL,
  `date_registered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `middle_name`, `last_name`, `mobile_no`, `address`, `email_address`, `paypal_account`, `date_registered`) VALUES
(1, 'joven', 'novo', 'joven', 'gutib', 'novo', '+639052317568', 'New Paradise, Pajo, Lapu-lapu City', 'jovennovo2015@gmail.com', 'jovennovo2017@gmail.com', '0000-00-00 00:00:00'),
(2, 'jm', 'abano', 'jm', 'bonsit', 'abano', '+639233429111', 'Lapu-lapu City', 'jm@gmail.com', 'jmabano@gmail.com', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_interest`
--

CREATE TABLE `user_interest` (
  `interest_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `sub_category_id` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `venue_id` tinyint(4) NOT NULL,
  `venue_city` varchar(16) NOT NULL,
  `municipality` varchar(16) NOT NULL,
  `postal_code` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_interest`
--
ALTER TABLE `user_interest`
  ADD PRIMARY KEY (`interest_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_interest`
--
ALTER TABLE `user_interest`
  MODIFY `interest_id` int(5) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
