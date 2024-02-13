-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 12:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_bot_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `keyword_fetched`
--

CREATE TABLE `keyword_fetched` (
  `response_id` int(30) NOT NULL,
  `client` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keyword_fetched`
--

INSERT INTO `keyword_fetched` (`response_id`, `client`) VALUES
(1, '::1'),
(3, '::1'),
(4, '::1'),
(6, '::1'),
(1, '::1'),
(7, '::1'),
(7, '::1'),
(1, '::1'),
(1, '::1'),
(7, '::1'),
(1, '::1'),
(1, '::1'),
(7, '::1'),
(1, '::1'),
(10, '::1'),
(1, '::1'),
(9, '::1'),
(12, '::1'),
(15, '::1'),
(14, '::1'),
(13, '::1'),
(16, '::1'),
(15, '::1'),
(14, '::1'),
(13, '::1'),
(15, '::1'),
(7, '::1'),
(1, '::1'),
(9, '::1'),
(12, '::1'),
(13, '::1'),
(15, '::1'),
(14, '::1'),
(16, '::1'),
(13, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `keyword_list`
--

CREATE TABLE `keyword_list` (
  `response_id` int(30) NOT NULL,
  `keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keyword_list`
--

INSERT INTO `keyword_list` (`response_id`, `keyword`) VALUES
(3, 'Sample Query 1'),
(3, 'Sample Query 2'),
(3, 'Sample Query 3'),
(4, 'Suggestion 1'),
(5, 'Suggestion 2'),
(6, 'Suggestion 3'),
(8, 'test'),
(9, 'What are the available courses here?'),
(10, 'Is there any available loans for the courses here?'),
(1, 'Hi'),
(11, 'How to apply to these courses?'),
(11, 'How to apply?'),
(13, 'Programme Entry Requirements (BIT)'),
(14, 'Career Prospect (BIT)'),
(15, 'Course Duration (BIT)'),
(16, 'Overall Cost (BIT)'),
(17, 'Overview of Bachelor of Software Engineering (Hons)'),
(18, 'Programme Entry Requirements (BCS)'),
(19, 'Career Prospect (BCS)'),
(21, 'Overall Cost (BCS)'),
(22, 'Overview of Bachelor of Multimedia Industry (Hons)'),
(23, 'Programme Entry Requirements (BMI)'),
(24, 'Career Prospect (BMI)'),
(25, 'Course Duration (BMI)'),
(26, 'Overall Cost (BMI)'),
(12, 'Overview of Bachelor of Information Technology (Hons)'),
(20, 'Course Duration (BCS)'),
(7, 'How does this work?');

-- --------------------------------------------------------

--
-- Table structure for table `response_list`
--

CREATE TABLE `response_list` (
  `id` int(30) NOT NULL,
  `response` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `response_list`
--

INSERT INTO `response_list` (`id`, `response`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Hi, welcome to Simple Site ChatBot.', 1, '2022-05-05 10:30:35', '2022-05-05 10:30:35'),
(3, '<p><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Nam eget fermentum quam. Sed risus dolor, gravida ac faucibus non, facilisis in odio. Etiam quis felis quis ipsum eleifend consectetur et at elit. In mattis ullamcorper lorem ac dictum.</span><br></p>', 1, '2022-05-05 11:38:44', '2022-05-05 12:54:28'),
(4, '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Suspendisse efficitur eros orci, at tristique mauris congue sit amet. Phasellus pretium vulputate urna et finibus. Maecenas venenatis dignissim turpis non lobortis. Praesent ornare felis ligula, ut rutrum elit tincidunt eu. Proin imperdiet faucibus erat eu euismod. Cras luctus nunc eget ligula ultrices porta. Proin dictum, elit vel porttitor vulputate, tellus sem porta dui, quis rhoncus lacus turpis vitae mauris. Integer at dui consequat, porta lorem ut, ornare mauris.</span><br></p>', 1, '2022-05-05 14:40:29', '2022-05-05 14:40:29'),
(5, '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Donec metus erat, porta consequat justo sit amet, euismod mollis dolor. Vestibulum euismod, nulla tincidunt maximus sodales, massa risus volutpat mi, a rutrum est sem non leo. Aenean vel ligula eu nunc ultrices rhoncus non ac libero. Quisque consectetur augue nec tortor tincidunt rutrum. Ut sagittis imperdiet auctor.</span><br></p>', 1, '2022-05-05 14:41:00', '2022-05-05 14:41:00'),
(6, '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Pellentesque rutrum mi sem. Duis nisl arcu, mollis sed porttitor et, feugiat vel augue. Fusce pulvinar leo non ex convallis lacinia. In ullamcorper, nibh nec dignissim gravida, nibh leo placerat nisl, a dapibus quam nulla dictum est. Vestibulum rutrum vestibulum ex. Quisque eget mi nec orci vulputate pharetra quis quis sem.</span><br></p>', 1, '2022-05-05 14:41:36', '2022-05-05 14:41:36'),
(7, '<p>On this simple ChatBot Application, You can query anything about FCVAC Bachelor Courses and the system will automatically browse a response that is stored on this site. </p><p>The queries fetch a response that has an equivalent keyword.</p><p>Also, the application consists of suggestion keywords to query.</p>', 1, '2022-05-05 15:19:35', '2023-07-11 06:03:33'),
(8, '<p>test</p>', 1, '2022-05-05 15:31:31', '2022-05-05 15:31:31'),
(9, '<p>There are 5 available courses in the computing department for bachelor courses :&nbsp;</p><p>1. Bachelor of Information Technology (Hons)</p><p>2. Bachelor of Software Engineering (Hons)</p><p>3. Bachelor of Multimedia Industry (Hons)</p><p>4. Bachelor of Computer Science (Hons)</p><div><span style=\"font-size: 0.875rem;\">5.&nbsp;</span>Bachelor of Science (Honours) Mathematics with Statistics</div><div><span style=\"font-size: 0.875rem;\"><br></span></div><div><span style=\"font-size: 0.875rem;\"><br></span></div>', 1, '2023-07-11 05:19:37', '2023-07-11 05:19:37'),
(10, 'All of the courses here are available for 100% PTPTN.', 1, '2023-07-11 05:23:30', '2023-07-11 05:23:30'),
(11, '<p>You can head to :&nbsp;<a href=\"https://apply.unisel.edu.my/\" style=\"background-color: rgb(255, 255, 255); font-size: 0.875rem;\">Online Application to UNISEL</a></p>', 1, '2023-07-11 05:24:31', '2023-07-11 05:24:31'),
(12, '<p style=\"text-align: justify; \"><font color=\"#76767f\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Bachelor in Information Technology programme is a vocationally oriented programme emphasizing the resolution of technological problems leading to the effective management and analysis of information in both private and public sectors.</span></font></p><p style=\"text-align: justify; \"><font color=\"#76767f\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: justify; \"><font color=\"#76767f\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">The programme’s foundation is designed to provide students with knowledge and skills in key areas of IT as well as professionally relevant knowledge, qualities and skills in such areas as problem solving, communication, ethics and teamwork.</span></font></p><p style=\"text-align: justify; \"><font color=\"#76767f\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: justify; \"><font color=\"#76767f\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Graduates with skills and understanding of Information Technology processes will be developed through a planned series of practical skill based activities. Graduates will participate in, and contribute to, peer group critique, portfolio reviews and exhibitions of work-in-progress that will enable graduates to identify areas for development and improvement including vital most sought after soft skills such as the communication and presentation skills, critical thinking and scientific problem solving (pre-planning, production and organization), leaderships skills and entrepreneurship.</span></font></p>', 1, '2023-07-11 05:28:07', '2023-07-11 06:01:05'),
(13, '<p>You must meet the following requirements in order to be considered for entry to the Unisel Bachelor’s Programme:</p><p><br></p><p>Pass STPM with a minimum Grade C (CGPA 2.00) in two (2) subjects and CREDIT in Mathematics in SPM or its equivalent; OR</p><p>Pass Matriculation or Foundation with minimum CGPA of 2.0 and CREDIT in Mathematics at SPM level or its equivalent; OR</p><p>Pass Diploma in Computer Science or Software Engineering or Information Technology or Information System or its equivalent, with a minimum CGPA of 2.50 and CREDIT in Mathematics in SPM or its equivalent, can be registered subject to a rigorous internal assessment; OR</p><p>Any Diploma in science and technology or business study with minimum CGPA of 2.50 and CREDIT in Mathematics at SPM level can be registered subject to a rigorous internal assessment; OR</p><p>Pass Diploma Kemahiran Malaysia (DKM) / Diploma Lanjutan Kemahiran Malaysia (DLKM) / Diploma Vokasional Malaysia (DVM) with a minimum CGPA of 2.50 in relevant field and CREDIT Mathematics at SPM subject to the approval of the Senate and MUST attend bridging courses; OR</p><p>Pass DKM / DLKM / DVM with at least CGPA 2.00 AND have at least two (2) years of work experience in relevant field and CREDIT Mathematics at SPM and MUST attend bridging courses; OR</p><p>Pass BTEC Level 4 & 5 and pass in SPM or its equivalent, with at least three (3) credits in any subjects including Mathematics OR</p><p>Entry requirements for admission into the Bachelor’s programme (level 6, MQF) through APEL as approved by the Ministry of Education (MOHE). Applicants must be / have:​</p><p>A Malaysian citizen; and</p><p>The candidate should be more than 21 years of age in the year of application;​</p><p>Relevant work experience / prior experiential learning; and​</p><p>Pass the APEL Assessment​ </p><p>Diploma holders with CGPA less than 2.50 but exceeding 2.00 and obtained credit in Mathematics at SPM level or its equivalent, can be registered subject to a rigorous internal assessment.</p><p><br></p><p>Candidates with a credit in computing subjects in SPM or its equivalent, will have an advantage.</p><p><br></p><p>Language Requirements</p><p>International Students</p><p>Minimum score of 5.0 for IELTS; OR its equivalent</p><p>Local Students</p><p>Exempted from University English Courses:</p><p>i. Distinction in SPM / SPMV English</p><p>ii. MUET Band 4, 5 and 6</p><p>iii. A Pass in English Course at a previous institution</p><p>Required to take English Preparatory 2:</p><p>i. Credit in SPM / SPMV English</p><p>ii. MUET Band 1, 2 and 3</p><p>Required to take both English Preparatory 1 and 2:</p><p>i. No credit in SPM / SPMV English</p>', 1, '2023-07-11 05:29:31', '2023-07-11 05:30:20'),
(14, '<p>With this course, you\'ll be able to be a :</p><ul><li>Systems Analyst</li><li>Data Engineer</li><li>Data Analyst</li><li>Computer Intelligence Officer</li><li>Computer Network/ Cloud Engineer</li><li>Digital Forensic Investigator</li><li>Cybersecurity</li><li>Compliance Officer/ Auditor</li><li>Cybersecurity Analyst</li><li>Cybersecurity Consultant</li></ul>', 1, '2023-07-11 05:31:57', '2023-07-11 05:31:57'),
(15, '<p>This course takes up to3½ Years</p>', 1, '2023-07-11 05:33:09', '2023-07-11 05:33:09'),
(16, '<p>This course starts from&nbsp;<span style=\"font-size: 0.875rem;\">RM34,485 (Malaysian)</span></p>', 1, '2023-07-11 05:35:32', '2023-07-11 05:35:32'),
(17, '<p>Bachelor of Software Engineering (Hons) was established mainly to support the development and needs of the software development process from system specification level to the manageable system level after it has been utilized. This program produces graduates who can understand user requirements and develop software system. Other than that, this programmed also touches issues related with computer and human such as security, socio-economy and culture, personality development, responsibility and work ethics.<br></p>', 1, '2023-07-11 05:41:11', '2023-07-11 05:41:11'),
(18, '<p>Entry Requirement</p><p><br></p><p>A PASS in Matriculation or Foundation studies with minimum CGPA of 2.00;&nbsp;</p><p>OR</p><p><br></p><p>A PASS in Sijil Tinggi Persekolahan Malaysia (STPM) with a minimum Grade C (GP 2.00) in any 2 subjects and a CREDIT in this subject at SPM Level or its equivalent:</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; a) Additional Mathematics</p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b) Mathematics AND one of the subject Science, Technology or Engineering.</p><p><br></p><p>Candidates for category 1.(b) MUST take additional subject which is Essential Mathematics which is relevant topics to Computer Science and Software Engineering and offered by faculty at the early years of study. The needs for subject Essential Mathematics however can be EXEMPTED if it was taken during Matriculation or Foundation or equivalent and the contents must be equivalent or higher than the needs of Additional Mathematics in SPM;&nbsp;</p><p><br></p><p>OR&nbsp;</p><p><br></p><p>&nbsp;</p><p><br></p><p>A PASS in Sijil Tinggi Persekolahan Malaysia (STPM) in Science Stream or equivalent, with&nbsp; a minimum Grade C (GP 2.00) in one Mathematics subject and one Science / ICT subject;&nbsp;</p><p>OR</p><p><br></p><p>A Diploma in Computer Science OR Software Engineering OR Information Technology OR Information Systems or equivalent with a minimum CGPA of 2.50;&nbsp;</p><p>OR</p><p><br></p><p>Any other Diploma in Science and technology with a minimum CGPA of 2.50 Candidates for categories (3) and (4) below CGPA 2.50 but more than 2.00 can be admitted subject to a rigorous evaluation internal process;&nbsp;</p><p>OR</p><p><br></p><p>A PASS in UEC with a minimum grade B in 5 subjects include Advanced Mathematics and PASS English Language.</p>', 1, '2023-07-11 05:42:37', '2023-07-11 05:42:37'),
(19, '<p>With this course, you\'ll be able to be a :</p><ul><li>System Analyst</li><li>Information System Executive</li><li>Database Administrator</li><li>Web Designer/Developer</li><li>Information System Officer</li><li>IT Consultant</li><li>System Development</li><li>Help Desk Officer</li><li>Software Engineer/Tester/Developer /Quality /Mantainance</li></ul>', 1, '2023-07-11 05:45:10', '2023-07-11 05:45:10'),
(20, '<p>This course takes up to 3½ years.</p>', 1, '2023-07-11 05:46:25', '2023-07-11 06:01:48'),
(21, '<p>This course starts from&nbsp;RM34,765 (Malaysian)</p>', 1, '2023-07-11 05:48:30', '2023-07-11 05:48:30'),
(22, '<p>The Bachelor of Multimedia Industry (Hons) was developed to concentrate on multimedia concepts and principles, multimedia production management, integration in multimedia elements and others. This program also emphasizes and expose students to the use and development of multimedia in the industry. The main focus of this program is to prepare the experts in the multimedia field which is increasing with the current multimedia technology expansion.<br></p>', 1, '2023-07-11 05:53:12', '2023-07-11 05:53:12'),
(23, '<p>Entry Requirement</p><p><br></p><p>A pass in Matriculation or Foundation studies from UNISEL or other IPTS with minimum CGPA of 2.00 and credit Mathmetics at SPM level or its equivalent; OR</p><p><br></p><p>Diploma in Computer Science OR Software Engineering OR Information Technology OR Information Systems or equivalent with a minimum CGPA of 2.50 and a credit in Mathematics at SPM Level or its equivalent;</p><p><br></p><p>OR</p><p><br></p><p>Pass UEC with at least grade B in five (5) subjects including Mathematics and pass Bahasa Inggeris; OR</p><p><br></p><p>A pass in Sijil Tinggi Persekolahan Malaysia (STPM) with a minimum Grade C (GP 2.00) in any 2 subjects and a credit in Mathematics at SPM Level or its equivalent;</p><p><br></p><p>OR</p><p><br></p><p>Pass Sijil Tinggi Agama Malaysia (STAM) with at least Jayyid (Good) Level AND Pass Sijil Pelajaran Malaysia (SPM) or equivalent inclusive of Bahasa Melayu and credit in Mathematics. OR</p><p><br></p><p>Any other Diploma in Science and technology or business studies with a minimum CGPA of 2.50 may be admitted subject to a rigorous internal assessment process and a credit in Mathematics at SPM level or its equivalent. OR</p><p><br></p><p>Pass Diploma Kemahiran Malaysia (DKM)/Diploma Lanjutan Kemahiran Malaysia (DLKM)/Diploma Vokasional Malaysia (DVM) with CGPA at least 2.50 in any one (1) of the field below:</p><p><br></p><p>• Animation Multimedia Creative</p><p><br></p><p>• Industry Graphic Design</p><p><br></p><p>• Computer System and Networking</p><p><br></p><p>• Web Application and Database System Management</p><p><br></p><p>• Information System</p><p><br></p><p>• Information Technology</p><p><br></p><p>• Software Technology (Interactive Multimedia)</p><p><br></p><p>OR,</p><p><br></p><p>Passed Diploma Kemahiran Malaysia (DKM) / Diploma Lanjutan Kemahiran Malaysia (DLKM) / Diploma Vokasional Malaysia (DVM) with CGPA at least 2.00 and two (2) years working experience in related field.</p><p><br></p><p>NOTES:</p><p><br></p><p>i.For DVM leavers cohort 2012 – 2016, additional entry requirement are as below:</p><p><br></p><p>Pass Sijil Vokasional Malaysia (SVM) equivalent with 3 credit at Sijil Pelajaran Malaysia (SPM) for candidate who obtain:</p><p><br></p><p>• Honors in Bahasa Melayu SVM code 1104;</p><p><br></p><p>• Academic CGPA at least 2.00;</p><p><br></p><p>• Vocasional CGPA at least 2.67 and</p><p><br></p><p>• Competent in all vocasional module.</p><p><br></p><p>ii.For SVM leavers cohort 2013 – 2016, SVM equivalent with 3 credit SPM should pass History subject at SPM.</p>', 1, '2023-07-11 05:55:19', '2023-07-11 05:55:19'),
(24, '<p>With this course, you\'ll be able to :</p><ul><li>Animator</li><li>Video or Audio Producer</li><li>Game Designer / Developer</li><li>Multimedia Designer / Production</li><li>Web Designer / Developer</li><li>IT professional / Consultant</li><li>Graphic Designer</li></ul>', 1, '2023-07-11 05:57:00', '2023-07-11 05:57:00'),
(25, '<p>This course takes up to 3 years.</p>', 1, '2023-07-11 05:57:48', '2023-07-11 05:57:48'),
(26, '<p>This course starts from RM27,250 (Malaysian)</p>', 1, '2023-07-11 05:58:34', '2023-07-11 05:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion_list`
--

CREATE TABLE `suggestion_list` (
  `response_id` int(30) NOT NULL,
  `suggestion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestion_list`
--

INSERT INTO `suggestion_list` (`response_id`, `suggestion`) VALUES
(3, 'Suggestion 1'),
(3, 'Suggestion 2'),
(4, 'Suggestion 2'),
(4, 'Suggestion 3'),
(5, 'Suggestion 1'),
(5, 'Suggestion 3'),
(6, 'Suggestion 1'),
(6, 'Suggestion 2'),
(8, 'test'),
(9, 'Overview of Bachelor of Information Technology (Hons)'),
(9, 'Overview of Bachelor of Software Engineering (Hons)'),
(9, 'Overview of Bachelor of Multimedia Industry (Hons)'),
(1, 'Is there any available loans for the courses here?'),
(1, 'How to apply to these courses?'),
(1, 'What are the available courses here?'),
(13, 'Career Prospect (BIT)'),
(13, 'Course Duration (BIT)'),
(13, 'Overall Cost (BIT)'),
(14, 'Programme Entry Requirements (BIT)'),
(14, 'Course Duration (BIT)'),
(14, 'Overall Cost (BIT)'),
(15, 'Programme Entry Requirements (BIT)'),
(15, 'Career Prospect (BIT)'),
(15, 'Overall Cost (BIT)'),
(16, 'Programme Entry Requirements (BIT)'),
(16, 'Career Prospect (BIT)'),
(16, 'Course Duration (BIT)'),
(17, 'Programme Entry Requirements (BCS)'),
(17, 'Career Prospect (BCS)'),
(17, 'Course Duration (BCS)'),
(17, 'Overall Cost (BCS)'),
(18, 'Career Prospect (BCS)'),
(18, 'Course Duration (BCS)'),
(18, 'Overall Cost (BCS)'),
(19, 'Programme Entry Requirements (BCS)'),
(19, 'Course Duration (BCS)'),
(19, 'Overall Cost (BCS)'),
(21, 'Programme Entry Requirements (BCS)'),
(21, 'Career Prospect (BCS)'),
(21, 'Course Duration (BCS)'),
(22, 'Programme Entry Requirements (BMI)'),
(22, 'Career Prospect (BMI)'),
(22, 'Course Duration (BMI)'),
(22, 'Overall Cost (BMI)'),
(23, 'Career Prospect (BMI)'),
(23, 'Course Duration (BMI)'),
(23, 'Overall Cost (BMI)'),
(24, 'Programme Entry Requirements (BMI)'),
(24, 'Course Duration (BMI)'),
(24, 'Overall Cost (BMI)'),
(25, 'Programme Entry Requirements (BMI)'),
(25, 'Career Prospect (BMI)'),
(25, 'Overall Cost (BMI)'),
(26, 'Programme Entry Requirements (BMI)'),
(26, 'Career Prospect (BMI)'),
(26, 'Course Duration (BMI)'),
(12, 'Programme Entry Requirements (BIT)'),
(12, 'Career Prospect (BIT)'),
(12, 'Course Duration (BIT)'),
(12, 'Overall Cost (BIT)'),
(20, 'Programme Entry Requirements (BCS)'),
(20, 'Career Prospect (BCS)'),
(20, 'Overall Cost (BCS)'),
(7, 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Simple Site Chat Bot'),
(6, 'short_name', 'Chat Bot - PHP'),
(11, 'logo', 'uploads/logo.png?v=1651712009'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1651712184'),
(15, 'no_answer', '<p>Sorry, I don&apos;t have any response to your query. Try to rephrase or rewrite your query. Thanks!</p>'),
(16, 'suggestion', '[\"How does this work?\",\"Hello\",\"Hi\"]'),
(17, 'welcome_message', '<p>Hi there! Welcome to our site.  You can ask me anything and I will try my best to answer it all.  </p>'),
(18, 'bot_name', 'ChattyBot');

-- --------------------------------------------------------

--
-- Table structure for table `unanswered`
--

CREATE TABLE `unanswered` (
  `id` int(30) NOT NULL,
  `question` text DEFAULT NULL,
  `no_asks` int(30) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unanswered`
--

INSERT INTO `unanswered` (`id`, `question`, `no_asks`) VALUES
(1, 'what can you do?', 3),
(2, 'what can you do ?', 3),
(3, 'what topic can I ask', 3),
(4, 'chat bot', 3),
(5, 'asdasd', 3),
(6, 'asdaaa', 3),
(7, 'asd', 3),
(9, 'hello', 3),
(10, 'sample', 3),
(11, 'test', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2022-04-13 15:24:24'),
(4, 'Mark', 'Cooper', 'mcooper', 'c7162ff89c647f444fcaa5c635dac8c3', 'uploads/avatars/4.png?v=1651645642', NULL, 2, '2022-05-04 14:27:21', '2022-05-04 14:27:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keyword_fetched`
--
ALTER TABLE `keyword_fetched`
  ADD KEY `response_id` (`response_id`);

--
-- Indexes for table `keyword_list`
--
ALTER TABLE `keyword_list`
  ADD KEY `response_id` (`response_id`);

--
-- Indexes for table `response_list`
--
ALTER TABLE `response_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion_list`
--
ALTER TABLE `suggestion_list`
  ADD KEY `response_id` (`response_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unanswered`
--
ALTER TABLE `unanswered`
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
-- AUTO_INCREMENT for table `response_list`
--
ALTER TABLE `response_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `unanswered`
--
ALTER TABLE `unanswered`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keyword_fetched`
--
ALTER TABLE `keyword_fetched`
  ADD CONSTRAINT `response_id_fk_kf` FOREIGN KEY (`response_id`) REFERENCES `response_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `keyword_list`
--
ALTER TABLE `keyword_list`
  ADD CONSTRAINT `response_id_fk_kl` FOREIGN KEY (`response_id`) REFERENCES `response_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `suggestion_list`
--
ALTER TABLE `suggestion_list`
  ADD CONSTRAINT `response_id_fk_sl` FOREIGN KEY (`response_id`) REFERENCES `response_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
