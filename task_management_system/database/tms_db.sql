-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2022 at 04:32 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(3, 'Tạo hệ thống bán hàng online cho AEG company', '											', 0, '2022-03-28', '2022-04-08', 0, '', '2022-03-28 11:50:05'),
(4, 'Chuẩn bị cho Final ISD', '																																										&lt;p&gt;Chuẩn bị tốt để qua m&ocirc;n ISD th&agrave;nh c&ocirc;ng v&agrave; rực rỡ nhất.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Code kiếm tra lại xem c&ograve;n bug kh&ocirc;ng&lt;/p&gt;&lt;p&gt;Test Case 1 lượt&amp;nbsp;&lt;/p&gt;&lt;p&gt;abc&lt;/p&gt;																																			', 3, '2022-03-28', '2022-04-26', 3, '4,5,6', '2022-03-28 12:21:35'),
(5, 'Chuẩn bị cho HCI final', '						Chuẩn bị để chiến thắng mang về A m&ocirc;n HCI					', 0, '2022-04-10', '2022-04-29', 2, '9,4,5,6', '2022-04-10 22:31:56'),
(6, 'wrwrerw', 'etrwerwe', 3, '2022-04-27', '2022-04-24', 2, '4,5', '2022-04-24 21:39:28');

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
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Task Management System', 'info@sample.comm', '+6948 8542 623', 'Hanoi University, Viet Nam', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `description`, `status`, `date_created`) VALUES
(5, 4, ' Check the code one last time to see if there are still bugs?', '																				Some bug in text when typing in dashboard, to review then check again															', 3, '2022-03-28 12:27:36'),
(7, 4, 'Triển khi test case cho giai đoạn cuối', 'chuyển sang iteration 3', 2, '2022-03-28 17:34:28'),
(11, 5, 'Giai đoạn 1: Chuẩn bị Use Case Specification', 'Ph&acirc;n việc l&agrave;m use case theo từng người trong nh&oacute;m theo y&ecirc;u cầu', 2, '2022-04-10 22:32:49');

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
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '1648439100_gau logo.png', '2020-11-26 10:57:04'),
(2, 'Le Trung', 'Duc ', 'letrungduc@sample.com', '3ce39884084ee41cc0e2823d8540bf79', 2, '1606978560_avatar.jpg', '2020-12-03 09:26:03'),
(3, 'Le Hong', 'Hai', 'lehonghai@sample.com', '8161b2eb1910a07a57473ec2c5201bf6', 2, '1606958760_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg', '2020-12-03 09:26:42'),
(4, 'Nguyen Duc', 'Hoang', 'nguyenduchoang@gmail.com', 'f6f3754e035d336e47a89979d820874d', 3, '1606963560_avatar.jpg', '2020-12-03 10:46:41'),
(5, 'Pham', 'Hai Nam', 'phamhainam@sample.com', 'bbb0f3dc85c2ec4fd7aaee479d28f20e', 3, '1606963620_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg', '2020-12-03 10:47:06'),
(6, 'Trần Hoàng', 'Lam', 'tranhoanglam@gmail.com', 'db15d222262814f2d07fac9769d4ffd7', 3, 'no-image-available.png', '2022-03-28 12:12:29'),
(7, 'Pham', 'Tung', 'phamtung@gmail.com', '655b6e642b951726d91be580ed905e45', 1, 'no-image-available.png', '2022-03-28 12:13:30'),
(9, 'asdf', 'asdf', '1901040069@s.hanu.edu.vn', '202cb962ac59075b964b07152d234b70', 3, 'no-image-available.png', '2022-04-24 21:59:30'),
(10, 'asdf', 'asdf', 'toila123@gmail.com', '25d55ad283aa400af464c76d713c07ad', 3, 'no-image-available.png', '2022-04-24 22:02:06'),
(11, 'Lam', 'Tran Hoang', 'lamnoi123@gmail.com', '6c2d5cdebcb4e6f840fbde345066b945', 3, 'no-image-available.png', '2022-04-26 08:03:18'),
(12, 'Pham Tung', 'Quang', 'phamtungquang@gmail.com', '25d55ad283aa400af464c76d713c07ad', 3, 'no-image-available.png', '2022-04-26 08:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(1, 1, 1, '							&lt;p&gt;Sample Progress&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Test 1&lt;/li&gt;&lt;li&gt;Test 2&lt;/li&gt;&lt;li&gt;Test 3&lt;/li&gt;&lt;/ul&gt;																			', 'Sample Progress', '2020-12-03', '08:00:00', '10:00:00', 1, 2, '2020-12-03 12:13:28'),
(2, 1, 1, '							Sample Progress						', 'Sample Progress 2', '2020-12-03', '13:00:00', '14:00:00', 1, 1, '2020-12-03 13:48:28'),
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', 5, 1, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', 2, 2, '2020-12-03 14:36:30'),
(5, 3, 6, '							Ho&agrave;n th&agrave;nh c&aacute;c chắc năng ban đầu						', 'Web development for E-commerce', '2022-03-27', '01:11:00', '12:12:00', 1, 11.0167, '2022-03-28 17:12:36'),
(7, 5, 11, '							l&agrave;m nhanh						', 'cái use case register login làm đầu tiền trong hôm nay', '2022-04-10', '22:34:00', '22:42:00', 1, 0.133333, '2022-04-10 22:33:30'),
(12, 4, 5, 'ABCDDD', 'Web development for E-commerce', '2022-04-26', '08:07:00', '20:07:00', 1, 12, '2022-04-26 08:08:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_productivity`
--
ALTER TABLE `user_productivity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_productivity`
--
ALTER TABLE `user_productivity`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
