-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2022 at 04:55 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cubcse`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

CREATE TABLE `achievement` (
  `achievement_id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `link` varchar(200) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `achievement_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `achievement_img` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `description` varchar(10000) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `activity_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `activity_img` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `description`, `category`, `author`, `activity_date`, `activity_img`) VALUES
(5, '', '18', 1, '08 Jan, 2022', '1641659187-a22.jpg'),
(6, '', '18', 1, '08 Jan, 2022', '1641659197-a21.jpg'),
(7, '', '18', 1, '08 Jan, 2022', '1641659217-a20.jpg'),
(8, '', '18', 1, '08 Jan, 2022', '1641659274-a19.jpg'),
(9, '', '18', 1, '08 Jan, 2022', '1641659284-a18.jpg'),
(10, '', '18', 1, '08 Jan, 2022', '1641659297-a17.jpg'),
(11, 'Project-based learning not only allows students to collaborate or drive their own learning, but it also teaches them problem-solving abilities and helps them acquire extra skills important to their future, such as critical thinking and time management.', '18', 1, '08 Jan, 2022', '1641659330-a16.jpg'),
(12, 'Students here are developing projects and putting them to the test in the real world.', '18', 1, '08 Jan, 2022', '1641659407-a15.jpg'),
(13, 'When a student engages in co-curricular activities such as debate, seminar, symposium, workshop, cultural program, community service program, and games and sports of his or her own choosing and liking, the learning process can be enhanced.', '18', 1, '08 Jan, 2022', '1641659426-a14.jpg'),
(14, 'The Annual Cultural Festival, one of the most major events at the Canadian University of Bangladesh, was held on the university\'s campus.', '18', 1, '08 Jan, 2022', '1641659444-a13.jpg'),
(15, 'The members of the team who attended the BASIS SoftExpo event was considered to be professional and efficient. Our team definitely exhibited time-served industry expertise and the approachability of a modern-day groundworks university while dealing with all documentation and potential problems.', '18', 1, '08 Jan, 2022', '1641659502-a12.jpg'),
(16, 'The Canadian University of Bangladesh\'s Department of CSE attended the BASIS SoftExpo and showcased their projects.', '18', 1, '08 Jan, 2022', '1641659523-a11.jpg'),
(17, 'It was a one-on-one competition, with 40 programmers taking part. CUB has always encouraged students to participate in constructive and competitive events both locally and abroad.', '18', 1, '08 Jan, 2022', '1641659543-a10.jpg'),
(18, 'A banner design competition was organized by the Canadian University of Bangladesh. The jury consisted of prominent media specialists, university professors, and design industry experts.', '18', 1, '08 Jan, 2022', '1641659582-a9.jpg'),
(20, 'The Canadian University of Bangladesh had organized an inter-university online quiz contest. According to a press release, the four-round quiz competition began with a preliminary round on their website.', '18', 1, '08 Jan, 2022', '1641660216-a8.jpg'),
(21, 'The Canadian University of Bangladesh held an online quiz on research methodology as part of an endeavor to bring together as many researchers/research scholars as possible under one tent.', '18', 1, '08 Jan, 2022', '1641660237-a7.jpg'),
(22, 'Canadian University of Bangladesh Participated in Blockchain Olympiad Bangladesh 2021 with 256 other Universities and our university project got selected in top 40 among other universities.', '18', 1, '08 Jan, 2022', '1641660259-a6.jpg'),
(23, 'The department of Computer Science and Engineering organized Software Project Show on 27 June in the University Auditorium. The program was hosted by Faria Tabassum, lecturer, department of CSE. The head of the department of CSE, Assistant Professor Shah Reza Fahad Ul Hossain inaugurated the program and welcomed the guests.', '18', 1, '08 Jan, 2022', '1641660280-a5.jpg'),
(24, 'A remote-controlled drone built by students from the Canadian University of Bangladesh had a successful flight. It evaluates submissions based on their unique approach, safety and airworthiness, construction, quality, environmental effect, and commercial concept.', '18', 1, '08 Jan, 2022', '1641660368-a4.jpg'),
(25, 'This project was build by the students of cse department to detect and keep track of any unusual movements in our country border side for the border guards.', '18', 1, '08 Jan, 2022', '1641660382-a3.jpg'),
(26, '\"CUB Lubdhok\" received a certificate for being first runner-up in the Dhaka area in NASA Space App Challenge 2021, which was held in October 2021.', '18', 1, '08 Jan, 2022', '1641660400-a2.jpg'),
(27, 'Members of the team \"CUB Lubdhok\" at NASA Space App Challenge 2021!!', '18', 1, '08 Jan, 2022', '1641660417-a1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `admin_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `designation` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `admin_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `admin_img` varchar(100) CHARACTER SET latin1 NOT NULL,
  `position` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`admin_id`, `title`, `designation`, `email`, `category`, `author`, `admin_date`, `admin_img`, `position`) VALUES
(4, 'A.S.M.G FARUK, M.A. (DU)', 'Joint Registrar, (Registrar in Charge)', 'Email: registrar@cub.edu.bd', '15', 1, '07 Jan, 2022', '1641552882-8.jpg', 1101),
(5, 'RAJAN KUMAR BISWAS', 'Assistant Registrar', 'Email: rajan.biswas@cub.edu.bd', '15', 1, '07 Jan, 2022', '1641552951-1.jpg', 1201),
(6, 'MD. MUKTADIR SHEIKH', 'Officer, Registrar Office', 'Email: muktadir.sheikh@cub.edu.bd', '15', 1, '07 Jan, 2022', '1641553014-2.jpg', 1301),
(7, 'SHUVRA PAUL', 'Officer, Registrar Office', 'Email: shuvra.paul@cub.edu.bd', '15', 1, '07 Jan, 2022', '1641553080-3.jpg', 1401),
(8, 'CHHANDA SARKER BOBI', 'Officer, Exam Control Office', 'Email: chhanda.sarker@cub.edu.bd', '15', 1, '07 Jan, 2022', '1641553202-7.jpg', 1501),
(9, 'MST. SOBIARA KHATUN', 'Officer, Exam Control Office', 'Email: sobiara.khatun@cub.edu.bd', '15', 1, '07 Jan, 2022', '1641553290-5.png', 1601),
(10, 'ANIKA NOUROZE CHOWDHURY', 'Officer, HR', '', '15', 1, '07 Jan, 2022', '1641553350-6.jpg', 1701);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `Admin_Name` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `Admin_Password` varchar(100) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`Admin_Name`, `Admin_Password`) VALUES
('FAHAD', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `admission_id` int(11) NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `admission_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`admission_id`, `description`, `category`, `admission_date`, `author`) VALUES
(2, 'Must have science background with PCM (Physics, Chemistry, Math) and minimum GPA 2.50 in both S.S.C and H.S.C level; or must have minimum 5 subjects including PCM in O-level and 2 subjects in A-level among them minimum grade of B in at least 4 subjects and minimum grade of C in at least other 3 subjects from science group.', '27', '28 Jan, 2022', 1),
(3, 'Must appear in the admission test and become qualified for admission.', '27', '28 Jan, 2022', 1),
(4, 'Must have a minimum score in English in the admission test.', '27', '28 Jan, 2022', 1),
(5, 'Candidates who have finished school in abroad have to submit verified/attested copies of previous academic documents from their institute/Foreign Ministry & Equivalence Certificate from Secondary & Higher Secondary Education Board, Dhaka.', '27', '28 Jan, 2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `alumni_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `year` int(11) NOT NULL,
  `designation` varchar(100) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `alumni_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `alumni_img` varchar(100) CHARACTER SET latin1 NOT NULL,
  `position` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumni_id`, `title`, `year`, `designation`, `category`, `author`, `alumni_date`, `alumni_img`, `position`) VALUES
(4, 'Shafin Ahmad', 2021, 'weDevs', '17', 1, '08 Jan, 2022', '1641640281-a1.jpg', 1101),
(5, 'Shahana Sultana Surovee', 2021, 'Careme Bd', '17', 1, '08 Jan, 2022', '1641640327-a6.jpg', 1201),
(6, 'Samiha Binte Nayeem', 2021, '', '17', 1, '08 Jan, 2022', '1641640367-a7.jpg', 1301),
(7, 'Sharmin Sultana Shampa', 2021, '', '17', 1, '08 Jan, 2022', '1641640420-a3.jpg', 1401),
(8, 'Md. Ibrahim Howlader', 2021, '', '17', 1, '08 Jan, 2022', '1641640457-a4.jpg', 1501),
(9, 'Faria Jabeen Chowdhury', 2021, 'MI Education & Migration', '17', 1, '08 Jan, 2022', '1641640521-a5.jpg', 1601),
(10, 'A. H. M. Kabir Hussain', 2021, '', '17', 1, '08 Jan, 2022', '1641640555-a2.jpg', 1701);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(5, 'events', 8),
(8, 'notice', 3),
(9, 'faculty', 19),
(10, 'publication', 7),
(11, 'cover1', 1),
(12, 'cover2', 1),
(13, 'cover3', 1),
(14, 'cover4', 1),
(15, 'administration', 7),
(16, 'ostuff', 1),
(17, 'alumni', 7),
(18, 'student-activity', 22),
(19, 'jplacement', 21),
(20, 'sachievements', 0),
(21, 'curriculum', 0),
(22, 'iadvisor', 0),
(23, 'objective', 4),
(24, 'outcome', 5),
(25, 'vission', 3),
(26, 'mission', 4),
(27, 'admission', 4),
(28, 'iadmission', 4),
(29, 'ctransfer', 4),
(30, 'cregistration', 0),
(31, 'admission_notice', 0),
(32, 'L_Fees', 2),
(33, 'I_Fees', 1),
(34, 'club', 6),
(35, 'research', 7);

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `club_id` int(11) NOT NULL,
  `description1` varchar(200) CHARACTER SET latin1 NOT NULL,
  `description2` varchar(200) CHARACTER SET latin1 NOT NULL,
  `description3` varchar(200) CHARACTER SET latin1 NOT NULL,
  `description4` varchar(200) CHARACTER SET latin1 NOT NULL,
  `description5` varchar(200) CHARACTER SET latin1 NOT NULL,
  `description6` varchar(200) CHARACTER SET latin1 NOT NULL,
  `description7` varchar(200) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `club_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `club_img` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `description1`, `description2`, `description3`, `description4`, `description5`, `description6`, `description7`, `category`, `author`, `club_date`, `club_img`) VALUES
(1, 'MEDIA CLUB', 'Shaolin Shaon, Lecturer, Department of Film and Television', 'Mohammad Ullah', 'Sheikh Nayeem Bin Hannan', 'Khalid Bin Rafiq', 'https://www.facebook.com/CUBMPC/', '', '34', 1, '28 Jan, 2022', '1643363016-5.jpg'),
(3, 'SPORTS AND HEALTH CLUB', 'Asikul Islam, Lecturer, General Education', 'Md. Shaiful Ali Khan Niloy', 'Tawhidur Rahman Galib', 'Abdur Rahman Tushar', 'https://www.facebook.com/CUB-Sports-and-Health-Club-103427221100030/', '', '34', 1, '28 Jan, 2022', '1643363109-2.jpg'),
(4, 'CULTURAL CLUB', 'Tahsin Binte Anis, Lecturer, School of Business', 'Ferdousi Razia Bepary', 'Ashzad Chowdhury Alvee', 'Shakila Mojumder', 'https://www.facebook.com/cubculturalclub/', '', '34', 1, '28 Jan, 2022', '1643363264-1.jpg'),
(5, 'ROBOTICS CLUB', 'Md. Pabel Sikder, Lecturer, EEE', '', '', '', 'https://www.facebook.com/cubroboticsclub/', '', '34', 1, '28 Jan, 2022', '1643363313-3.jpg'),
(6, 'PROGRAMMING CLUB', 'Faria Tabassum', '                                    ', '                                    ', '                                    ', 'https://www.facebook.com/cubcsofficial/', '                                    ', '34', 1, '28 Jan, 2022', '1643365483-8.jpg'),
(7, 'COMPUTER SOCIETY CLUB', 'Md Hasanuzzaman', 'Imran Hossain Chonchol', 'Rakibul Islam', 'Lamia Akter', 'https://www.facebook.com/cubcsofficial/', '', '34', 1, '28 Jan, 2022', '1643363429-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cover1`
--

CREATE TABLE `cover1` (
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cover1_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `cover1_img` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cover1_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `cover1`
--

INSERT INTO `cover1` (`category`, `cover1_date`, `author`, `cover1_img`, `cover1_id`) VALUES
('11', '06 Jan, 2021', 1, '1641450694-1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cover2`
--

CREATE TABLE `cover2` (
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cover2_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `cover2_img` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cover2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `cover2`
--

INSERT INTO `cover2` (`category`, `cover2_date`, `author`, `cover2_img`, `cover2_id`) VALUES
('12', '06 Jan, 2021', 1, '1643359008-3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cover3`
--

CREATE TABLE `cover3` (
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cover3_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `cover3_img` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cover3_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `cover3`
--

INSERT INTO `cover3` (`category`, `cover3_date`, `author`, `cover3_img`, `cover3_id`) VALUES
('13', '06 Jan, 2021', 1, '1641451568-1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cover4`
--

CREATE TABLE `cover4` (
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cover4_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `cover4_img` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cover4_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `cover4`
--

INSERT INTO `cover4` (`category`, `cover4_date`, `author`, `cover4_img`, `cover4_id`) VALUES
('14', '06 Jan, 2021', 1, '1641451586-3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cregistration`
--

CREATE TABLE `cregistration` (
  `cregistration_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cregistration_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `cregistration_img` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `cregistration`
--

INSERT INTO `cregistration` (`cregistration_id`, `title`, `description`, `category`, `cregistration_date`, `author`, `cregistration_img`) VALUES
(5, 'GRADUATION', 'To obtain the degree in Bachelor of Science in Computer Science and Engineering (abbreviated as B. Sc. Engg. in CSE) a student<br><img src=\"images/cse.png\" width=\"7px\" />Must complete at least 150.00 Credit Hours <br>\r\n  <img src=\"images/cse.png\" width=\"7px\" />Must pass all the required courses <br>\r\n  <img src=\"images/cse.png\" width=\"7px\" />Have a minimum cumulative GPA of 2.20.', '30', '28 Jan, 2022', 1, '1643345458-graduation.svg'),
(6, 'COURSE RETAKE', '<img src=\"images/cse.png\" width=\"7px\" /> A student can repeat a course after receiving F grade in a previous semester. <br>\r\n  <img src=\"images/cse.png\" width=\"7px\" /> The grade earned on the repeated course repeated will replace the \"F\" in computing CGPA. <br>\r\n  <img src=\"images/cse.png\" width=\"7px\" /> Course retake is also possible if obtained grade is below \"C+. <br>\r\n  <img src=\"images/cse.png\" width=\"7px\" /> The previous grade will also be shown in the transcript.', '30', '28 Jan, 2022', 1, '1643345543-repeat.svg'),
(7, 'COURSE ADD/DROP', '<img src=\"images/cse.png\" width=\"7px\" /> Course Add is allowed only within the first week of a term.<br>\r\n  <img src=\"images/cse.png\" width=\"7px\" /> Dropping a course is permitted within the first two weeks of a term.', '30', '28 Jan, 2022', 1, '1643345593-adddrop.svg'),
(8, 'CREDIT HOUR LIMIT', '<img src=\"images/cse.png\" width=\"7px\" /> Minimum 9 Credit Hours <br>\r\n  <img src=\"images/cse.png\" width=\"7px\" /> Maximum 18 Credit Hours <br>\r\n  <img src=\"images/cse.png\" width=\"7px\" /> Special cases may be considered upon the approval of HoD <br>', '30', '28 Jan, 2022', 1, '1643345649-credithour.svg'),
(9, 'COURSE REGISTRATION', 'Within the due date and before the commencement of each term, a student has to fill up a course registration form in consultation with his/her advisor. The date, time and venue of registration are announced in advance by the Registrar\'s Office. It is absolutely essential that all the students be present for registration at the specified time. Late registration is, however, permitted during the first week on payment of a late registration fee.', '30', '28 Jan, 2022', 1, '1643345687-course.svg'),
(10, 'PROGRAMS', 'The Department of Computer Science and Engineering (CSE) currently offers undergraduate degree program for <b>Bachelor of  Computer Science and Engineering (BSCSE)</b> – 150 credit hours (Regular).<br>Note: If any diploma students get admission into the above program he/she may get an exemption upto 13 credit hours.', '30', '28 Jan, 2022', 1, '1643345803-program.svg');

-- --------------------------------------------------------

--
-- Table structure for table `ctransfer`
--

CREATE TABLE `ctransfer` (
  `ctransfer_id` int(11) NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `ctransfer_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `ctransfer`
--

INSERT INTO `ctransfer` (`ctransfer_id`, `description`, `category`, `ctransfer_date`, `author`) VALUES
(2, 'CGPA 3.00 or above in the completed courses;', '29', '28 Jan, 2022', 1),
(3, 'Exemption in any course requires that the student scored GPA 3.00 or above in that course;', '29', '28 Jan, 2022', 1),
(4, 'The course he/she studied had 80% similarity in course detail with respect to the syllabus of CSE Department of CUB;', '29', '28 Jan, 2022', 1),
(5, 'The evidences must be supported by the official documents from the previous university.', '29', '28 Jan, 2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `curriculum_id` int(11) NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `curriculum_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `link` varchar(400) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`curriculum_id`, `category`, `curriculum_date`, `author`, `link`) VALUES
(1, '21', '13 Jan, 2021', 1, 'https://drive.google.com/file/d/105UFE_a6_STAFQKjh01wPhBZijhpFIs2/view?usp=sharing');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `designation` varchar(100) CHARACTER SET latin1 NOT NULL,
  `phd` text CHARACTER SET latin1 NOT NULL,
  `msc` text CHARACTER SET latin1 NOT NULL,
  `bsc` text CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `office` varchar(100) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `faculty_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `faculty_img` varchar(100) CHARACTER SET latin1 NOT NULL,
  `position` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `title`, `designation`, `phd`, `msc`, `bsc`, `description`, `office`, `category`, `faculty_date`, `author`, `faculty_img`, `position`) VALUES
(13, 'Dr. H M Jahirul Haque', 'Professor Department of CSE', 'Ph.D.: Fulbright Scholar\r\nUniversity of Massachusetts (Boston)                                                                                                                ', 'M.Sc.: Kharkov National University (Ukraine)                                                                                                                ', 'B.Sc.: Cherkassy State Technological University (Ukraine)                                                                                                                ', 'Leadership, Pedagogy, Advanced Electronics, Systems Engineering                                                                                                                ', 'L-10', '9', '20 Nov, 2021', 1, '1638428455-1.jpg', 1101),
(14, 'Syed Akhter Hossain', 'Dean, School of Science and Engineering & Head, Department of Computer Science and Engineering', 'Ph.D.: University of Dhaka\r\nPost-Doctoral: Lumière University Lyon 2, France                                                                                ', 'M.Sc.: Rajshahi University                                                                                ', 'B.Sc.: Rajshahi University                                                                                ', '                                                                                                                                                                                                                ', 'L-7', '9', '20 Nov, 2021', 1, '1641315268-21.jpg', 1201),
(15, 'Shah Reza M Fahad Hossain', 'Assistant Professor', '                                                                                                            ', 'M.Sc.: ( Mobile Communications)\r\nThe University of Greenwich UK                                                ', 'B.Sc.: (KUET)                                                ', 'Big Data, Wireless Network, Blockchain, Cloud Storage, Mobile Communication                                                ', 'L-7', '9', '20 Nov, 2021', 1, '1641309328-4.jpg', 1301),
(16, 'Dr. MD Shahrukh Adnan Khan, MIET', 'Associate Professor Director of ICC', 'Ph.D.: EEE (Nottingham, UK)                ', 'M.Sc.: MIET (IET, UK)                ', 'B.Sc.: B.Eng. in EEE (Nottingham, UK)\r\nFellow of Engineering Research Council (USA)                ', 'IoT & Big Data, Smart City, Energy Harvesting,\r\nAdvanced Machine, Supercapacitor, Optics                ', '', '9', '20 Nov, 2021', 1, '1637516372-5.jpg', 1401),
(17, 'Md. Hasanuzzaman', 'Lecturer', '                                                                                                                                                ', 'M.Sc.: IT\r\nWaterloo University, Canada                                                                ', 'B.Sc.: (KU)                                                                ', 'Software Development, Computer Architecture,\r\nNetworking, Data Security                                                                ', 'L-7', '9', '20 Nov, 2021', 1, '1640580985-20.jpg', 1601),
(18, 'Faria Tabassum', 'Lecturer', '                                                                                                            ', 'M.Sc.: BUET (ongoing)                                                ', 'B.Sc.: BUET                                                ', 'Biomedical Engineering,\r\nComputer Networks                                                ', 'L-7', '9', '20 Nov, 2021', 1, '1640579218-7.jpg', 1701),
(19, 'Md. Ashraful Kabir', 'Lecturer', '                                                                                                                                                ', '                                                                                                                                                ', 'B.Sc.: Computer Science and Engineering\r\nNorth South University                                                                ', 'Internet of Things (IoT), Artificial Intelligence (AI), Machine Learning.                                                                ', 'L-7', '9', '20 Nov, 2021', 1, '1640579328-15.jpg', 1801),
(22, 'Walid Bin Kader', 'Assistant Professor', '                                                                                                                                                ', 'M.Sc.: (BUET)                ', 'B.Sc.: (CU)                 ', 'Electromagnetics, Materials, Electrolysis, Sustainable\r\nEnergy                ', 'L-7', '9', '26 Nov, 2021', 1, '1640579071-14.jpg', 1501),
(23, 'Asikul Islam', 'Lecturer', '                                                                                                                                                                                                                        ', 'M.Sc.: (Mathematics), DU                                                                                                ', 'B.Sc.: (Mathematics), DU                                                                                                ', 'Fuzzy Logic, Dynamical System, Mathematical Biology,\r\nModeling & System Optimization                                                                                                ', 'L-7', '9', '26 Nov, 2021', 1, '1640580228-8.jpg', 2501),
(24, 'Md. Atik Ahamed', 'Lecturer (On Leave)', '                                                                                                            ', '                                                                                                            ', 'B.Sc.: Computer Science & Engineering,\r\nRajshahi University of Engineering & Technology                                                ', 'Artificial Intelligence, Machine Learning,\r\nDeep Learning, Probabilistic Machine Learning,\r\nComputer Vision, Biomedical Imaging                                                ', '', '9', '26 Nov, 2021', 1, '1640580312-12.jpg', 2701),
(25, 'Md. Mostafizur Rahman', 'Lecturer (On Leave)', '                                                                                                            ', '                                                                                                            ', 'B.Sc.: (CU)                                                ', 'Software Development, Network & Security                                                ', '', '9', '26 Nov, 2021', 1, '1640580269-6.jpg', 2601),
(26, 'Md. Manjurul Haque', 'Lecturer', '                                                                                                            ', '                                                                                                            ', 'B.Sc.: (RUET)                                                ', 'Natural Language Processing,\r\nData Mining, Machine Learning                                                ', 'L-7', '9', '26 Nov, 2021', 1, '1640580179-11.jpg', 2401),
(27, 'Lamiya Rahman', 'Lecturer (On Leave)', '                                                                                                            ', 'M.Sc.: EEE (BUET) (On going)                                                ', 'B.Sc.: EEE (BUET)                                                ', 'Smart Grid, Power Station, Telecommunication                                                ', '', '9', '26 Nov, 2021', 1, '1640580368-9.jpg', 2801),
(28, 'Md. Pabel Sikder', 'Lecturer', '                                                                                                                                                                                    ', '                                                                                                                                                                                    ', 'B.Sc.: EEE (UAP)                                                                                ', 'Renewable Energy, Energy Storage System, Power\r\nPlant Engineering, Smart Grid                                                                                ', '', '9', '26 Nov, 2021', 1, '1640580103-10.jpg', 2301),
(29, 'Farhan Tanvir Utshaw', 'Lecturer', '                                                                                                            ', '                                                                                                            ', 'B.Sc.: Bangladesh University of Engineering and Technology                                                ', 'Machine Learning, Cyber Security                                                ', 'L-7', '9', '26 Nov, 2021', 1, '1640579398-16.jpg', 1901),
(30, 'Tanjina Oriana', 'Lecturer', '                                                                        ', '                                                                        ', 'B.Sc.: Computer Science and Engineering, Khulna University of Engineering & Technology                                ', 'Deep Learning, Image processing, Mask R-CNN                                ', 'L-7', '9', '26 Nov, 2021', 1, '1640579606-17.jpg', 2001),
(31, 'M. Mashrukh Zayed', 'Lecturer', '                                                                                                            ', 'M.Sc.: Computer Science and Engineering, Islamic University of Technology (IUT), OIC, Bangladesh                                                ', 'B.Sc.: Information and Communication Technology, Mawlana Bhashani Science and Technology University, Santosh, Tangail                                                ', '                                                                                                            ', 'L-7', '9', '26 Nov, 2021', 1, '1640579928-18.jpg', 2101),
(32, 'Md. Mamunur Rahman', 'Assistant Professor', '                                                                        ', 'M.Sc.: EEE (South Korea)                                ', 'B.Sc.: EEE (CUET)                                ', 'High-K Dielectric, III-V-MOSCOP, Border Trap Density, ALD Deposition, Photo Lithugraphy                                ', '', '9', '01 Dec, 2021', 1, '1640579962-19.jpg', 2201);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fees_id` int(11) NOT NULL,
  `description1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description2` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description3` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description4` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description5` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description6` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description7` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description8` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description9` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description10` varchar(100) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fees_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fees_id`, `description1`, `description2`, `description3`, `description4`, `description5`, `description6`, `description7`, `description8`, `description9`, `description10`, `category`, `fees_date`, `author`) VALUES
(2, 'B.Sc in Computer Science & Engineering (CSE)', '4 years', '12', '150', '15,000', '4,000', '5,500', '8,25,000', '4,95,000', '5,58,000', '32', '28 Jan, 2022', 1),
(3, 'B.Sc in Computer Science & Engineering (CSE)Diploma Evening', '4 years', '12', '*137', '10,000', '4,000', '1,727', '2,36,599', '1,41,959', '1,99,959', '32', '28 Jan, 2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `iadmission`
--

CREATE TABLE `iadmission` (
  `iadmission_id` int(11) NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `iadmission_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `iadmission`
--

INSERT INTO `iadmission` (`iadmission_id`, `description`, `category`, `iadmission_date`, `author`) VALUES
(2, 'Must have science background with PCM (Physics, Chemistry, Math) and minimum GPA 2.50 in both S.S.C and H.S.C level; or must have minimum 5 subjects including PCM in O-level and 2 subjects in A-level among them minimum grade of B in at least 4 subjects and minimum grade of C in at least other 3 subjects from science group.', '28', '28 Jan, 2022', 1),
(3, 'Must appear in the admission test and become qualified for admission.', '28', '28 Jan, 2022', 1),
(4, 'Must have a minimum score in English in the admission test.', '28', '28 Jan, 2022', 1),
(5, 'Candidates who have finished school in abroad have to submit verified/attested copies of previous academic documents from their institute/Foreign Ministry & Equivalence Certificate from Secondary & Higher Secondary Education Board, Dhaka.', '28', '28 Jan, 2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `iadvisor`
--

CREATE TABLE `iadvisor` (
  `iadvisor_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `designation` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `iadvisor_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `iadvisor_img` varchar(100) CHARACTER SET latin1 NOT NULL,
  `position` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Table structure for table `ifees`
--

CREATE TABLE `ifees` (
  `ifees_id` int(11) NOT NULL,
  `description1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description2` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description3` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description4` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description5` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description6` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description7` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description8` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description9` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description10` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description11` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description12` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description13` varchar(100) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `ifees_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `ifees`
--

INSERT INTO `ifees` (`ifees_id`, `description1`, `description2`, `description3`, `description4`, `description5`, `description6`, `description7`, `description8`, `description9`, `description10`, `description11`, `description12`, `description13`, `category`, `ifees_date`, `author`) VALUES
(2, 'B.Sc in Computer Science & Engineering (CSE)', '4 years', '12', '150', '250', '30', '48', '67', '10,050', '6,030', '11,236', '7,216', '5,91,712', '33', '28 Jan, 2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `link` varchar(200) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `job_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `job_img` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `name`, `link`, `category`, `author`, `job_date`, `job_img`) VALUES
(4, 'Walton', 'https://waltonbd.com/', '19', 1, '09 Jan, 2022', '1641717469-6.jpg'),
(5, 'Eastern Bank Ltd', 'https://www.ebl.com.bd/', '19', 1, '09 Jan, 2022', '1641717498-5.jpg'),
(6, 'Cancham Bangladesh', 'https://canchambangladesh.org/', '19', 1, '09 Jan, 2022', '1641717570-4.jpg'),
(7, 'North-Chiang Mai International College', 'http://webapp.northcm.ac.th', '19', 1, '09 Jan, 2022', '1641717600-3.jpg'),
(8, 'Management Development Institute of Singapore (MDIS)', 'https://www.mdis.edu.sg/', '19', 1, '09 Jan, 2022', '1641717633-2.jpg'),
(9, 'Georgian College', 'https://www.georgiancollege.ca/', '19', 1, '09 Jan, 2022', '1641717685-1.jpg'),
(11, 'ZAMAN IT', 'https://zaman-it.com/', '19', 1, '18 Jan, 2022', '1642504520-j1.jpg'),
(12, 'Datasource Software Ltd', 'https://www.datasource.com.bd/', '19', 1, '18 Jan, 2022', '1642504694-j2.jpg'),
(13, 'Phoenix Software', 'https://phoenixsoftbd.com/', '19', 1, '18 Jan, 2022', '1642504862-j3.jpg'),
(14, 'Nascenia', 'https://nascenia.com/', '19', 1, '18 Jan, 2022', '1642505370-j4.jpg'),
(15, 'NEXTGEN INNOVATION LTD.', 'http://www.nextgenitltd.com/', '19', 1, '18 Jan, 2022', '1642505634-j5.jpg'),
(16, 'SELISE Digital Platforms', 'https://selise.ch/', '19', 1, '18 Jan, 2022', '1642505850-j6.jpg'),
(17, 'Technohaven Company Ltd', 'https://technohaven.com/', '19', 1, '18 Jan, 2022', '1642506133-j7.jpg'),
(18, 'Enosis Solutions', 'https://www.enosisbd.com/', '19', 1, '18 Jan, 2022', '1642506315-j8.jpg'),
(19, 'Nano IT World', 'https://www.nanoitworld.com/', '19', 1, '18 Jan, 2022', '1642506900-j9.jpg'),
(20, 'Sunnah Software', 'http://www.sunnahsoftware.com/', '19', 1, '18 Jan, 2022', '1642507146-j10.jpg'),
(21, 'Wizard Software & Technology Bangladesh Ltd.', 'https://www.wiztecbd.com/', '19', 1, '18 Jan, 2022', '1642507448-j11.jpg'),
(22, 'Omega Softwares and Technologies', 'https://omegasoftbd.com/', '19', 1, '18 Jan, 2022', '1642507634-j12.jpg'),
(23, 'Grameenphone Center', 'https://www.grameenphone.com/', '19', 1, '18 Jan, 2022', '1642513270-j13.jpg'),
(24, 'Monstarlab Bangladesh', 'https://monstar-lab.com/bd/', '19', 1, '18 Jan, 2022', '1642513493-j14.jpg'),
(25, 'Datasoft Systems Bangladesh Limited', 'http://datasoft-bd.com/', '19', 1, '18 Jan, 2022', '1642513728-j15.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `message_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `description`, `category`, `message_date`, `author`) VALUES
(1, 'Admission open for CSE in Canadaian University Of Bangladesh Inspiring Applied Knowledge.', '31', '28 Jan, 2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mission`
--

CREATE TABLE `mission` (
  `mission_id` int(11) NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `mission_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `mission`
--

INSERT INTO `mission` (`mission_id`, `description`, `category`, `mission_date`, `author`) VALUES
(2, 'Create skilled graduates', '26', '24 Jan, 2022', 1),
(3, 'Arranging regular workshops/seminars', '26', '24 Jan, 2022', 1),
(4, 'Enhance Industrial Training program', '26', '24 Jan, 2022', 1),
(5, 'Provide excellent education in an interactive environment', '26', '24 Jan, 2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `notice_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `title`, `description`, `category`, `notice_date`, `author`) VALUES
(6, 'Notice-1', 'Welcome to the updated notice portal.                ', '8', '19 Nov, 2021', 1),
(8, 'Notice-2', 'Hello there', '8', '19 Nov, 2021', 1),
(9, 'Not3', 'mvsldkmvsdlkvml', '8', '20 Nov, 2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `objective`
--

CREATE TABLE `objective` (
  `objective_id` int(11) NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `objective_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `objective`
--

INSERT INTO `objective` (`objective_id`, `description`, `category`, `objective_date`, `author`) VALUES
(2, 'Prepare for advanced education and research', '23', '24 Jan, 2022', 1),
(3, 'Prepare for professional employment', '23', '24 Jan, 2022', 1),
(4, 'Development of analytical skills', '23', '24 Jan, 2022', 1),
(5, 'Make the students technically qualified', '23', '24 Jan, 2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ostuff`
--

CREATE TABLE `ostuff` (
  `ostuff_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `designation` varchar(100) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `ostuff_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ostuff_img` varchar(100) CHARACTER SET latin1 NOT NULL,
  `position` int(100) NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `ostuff`
--

INSERT INTO `ostuff` (`ostuff_id`, `title`, `name`, `designation`, `category`, `author`, `ostuff_date`, `ostuff_img`, `position`, `email`) VALUES
(6, 'Special Assistant', 'Syeda Tasmia Dhira', 'Special Assistant', '16', 1, '08 Jan, 2022', '1641625753-3.jpg', 1101, '');

-- --------------------------------------------------------

--
-- Table structure for table `outcome`
--

CREATE TABLE `outcome` (
  `outcome_id` int(11) NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `outcome_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `outcome`
--

INSERT INTO `outcome` (`outcome_id`, `description`, `category`, `outcome_date`, `author`) VALUES
(2, 'Teamwork and Leadership', '24', '24 Jan, 2022', 1),
(3, 'Innovation & Presentation', '24', '24 Jan, 2022', 1),
(4, 'Analyzing Problems and Finding Solutions', '24', '24 Jan, 2022', 1),
(5, 'Professionalism & Communication', '24', '24 Jan, 2022', 1),
(6, 'Knowledge Acquisition and Application', '24', '24 Jan, 2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `post_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(8, 'IT Quiz', 'Online quizzes have been shown to motivate students to complete assigned readings, increase participation in class discussion, and improve performance on exams for material covered both on the quizzes and in class........', '5', '15 Nov, 2021', 1, '1637515272-6.jpg'),
(9, 'Final Pitha Utsob', 'The event provided the students with a platform to interact with each other and to experience Bengali culture. Several members of the club brought in homemade pithas. Around 24 types of delicious pithas were sold.......', '5', '15 Nov, 2021', 1, '1637515410-5.jpg'),
(10, 'APP Project Showcase', 'CSE department organizes Software Project Showcase on 27 June 2021 in the University Auditorium.\r\nThe program was hosted by Faria Tabassum, lecturer, department of CSE. The head of the department of CSE, Assistant Professor Shah Reza Fahad Ul Hossain inaugurated the program and welcomed the guests. ', '5', '15 Nov, 2021', 1, '1637514833-4.jpg'),
(11, 'CSE Student Quadcopter Drone Project', 'CSE students build a Quadcopter Drone to detect and keep track of any unusual movements in our country border side for the border guards.....', '5', '15 Nov, 2021', 1, '1637513956-3.jpg'),
(12, 'ITEE Seminar', 'CSE department arranged a seminar “Special Session on ITEE”, which was conducted by Professor Yukinobo Miyamoto, Department of Information System, Kobe Institute of Computing, Kobe, Japan. Around 100 students attended the seminar.', '5', '15 Nov, 2021', 1, '1637515168-2.jpg'),
(13, 'Seminar in IT Career', 'CUB organized a seminar with a collaboration with IEEE on 27th March 2021 “Career in Technology” learn the secrets of being unique in the competitive job market....', '5', '15 Nov, 2021', 1, '1637513471-1.jpg'),
(15, 'BLOCKCHAIN OLYMPIAD BANGLADESH 202', 'Canadian University of Bangladesh Participated in #blockchain_Olympiad_\r\nBangladesh_2021 with 256 other Universities and our university project got selected in top 40 among other universities !                ', '5', '21 Nov, 2021', 1, '1637514734-a3.jpg'),
(16, 'NASA SPACE APP CHALLENGE 2021', 'Heartiest congratulations to team \"CUB Lubdhok\" for securing the second position in Dhaka region in NASA Space App Challenge 2021!! The team of 5 members from department of CSE with their project \"Leveraging AI/ML for Plastic Marine Debris\" aims to save the ocean environment with the help of technology.', '5', '21 Nov, 2021', 1, '1637515711-a1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `publication_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `publication_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `link` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `position` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`publication_id`, `title`, `description`, `category`, `publication_date`, `author`, `link`, `position`) VALUES
(2, 'Publication-1', 'Addressing quality challenges in the private university sector in Bangladesh: from policy formulation to institutional implementation, Gerardo Blanco Ramírez & <b>Dr H. M. Jahirul Haque</b>, 2016.                                                ', '10', '26 Nov, 2021', 1, '                                                            https://www.tandfonline.com/doi/abs/10.1080/13538322.2016.1198177?fbclid=IwAR3ZA_tkFznWuBKy8ypABotrmJdGiDCjaU2GmCkA_3Du5fJ-hjVevXJEOrM&                                                ', 1101),
(3, 'Publication-2', 'Factors Affecting Supply Chain Management Performance: A Study on the Real Estate Industry of Bangladesh, <b>Dr H. M. Jahirul Haque</b>, 2016.                                                                                ', '10', '26 Nov, 2021', 1, '                                                                                http://aaber.com.au/index.php/AABER/article/view/22?fbclid=IwAR0CABjqcRGZu9a1ZZBSRP3e1RtxW8qaYD4GbiCYV_VolnA-U8IjkI2Q9dk                                                                ', 1102),
(4, '3', 'Information and communications technology facilities at the tertiary level education in some urban universities in Bangladesh, <b>Dr H. M. Jahirul Haque</b>.                                                                ', '10', '26 Nov, 2021', 1, '                                                                                                                                                                                    ', 1103),
(5, '4', '                    Nosql database: New era of databases for big data analytics-classification, characteristics and comparison, ABM Moniruzzaman, <b>Syed Akhter Hossain</b>, 2013.                ', '10', '26 Nov, 2021', 1, '                    https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MJyMWfQAAAAJ&alert_preview_top_rm=2&citation_for_view=MJyMWfQAAAAJ:j3f4tGmQtD8C                ', 1201),
(6, '5', '                    A comparative study on liver disease prediction using supervised machine learning algorithms, AKM Sazzadur Rahman, FM Javed Mehedi Shamrat, Zarrin Tasnim, Joy Roy, <b>Syed Akhter Hossain</b>, 2019.                ', '10', '26 Nov, 2021', 1, '                    https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MJyMWfQAAAAJ&alert_preview_top_rm=2&citation_for_view=MJyMWfQAAAAJ:_Qo2XoVZTnwC                ', 1202),
(7, '6', 'Ekushnet: using convolutional neural network for bangla handwritten recognition, AKM Shahariar Azad Rabby, Sadeka Haque, Sheikh Abujar, <b>Syed Akhter Hossain</b>, 2018.', '10', '26 Nov, 2021', 1, 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MJyMWfQAAAAJ&alert_preview_top_rm=2&citation_for_view=MJyMWfQAAAAJ:RGFaLdJalmkC', 1203),
(8, '7', ' \"A survey on different approaches to constructing phylogenetic tree from SNP Data.\" Tazin Rahman, <b>Faria Tabassum</b>. Advances in Computational Biology, Advcompbio 2019.                                                                                ', '10', '26 Nov, 2021', 1, 'https://f1000research.com/posters/8-2155                                                                ', 1301);

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `research_id` int(11) NOT NULL,
  `description1` text CHARACTER SET latin1 NOT NULL,
  `description2` text CHARACTER SET latin1 NOT NULL,
  `description3` text CHARACTER SET latin1 NOT NULL,
  `description4` text CHARACTER SET latin1 NOT NULL,
  `description5` text CHARACTER SET latin1 NOT NULL,
  `description6` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL,
  `research_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `research_img` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`research_id`, `description1`, `description2`, `description3`, `description4`, `description5`, `description6`, `category`, `author`, `research_date`, `research_img`) VALUES
(1, 'Robotics Research Lab', 'MR. SRM FAHAD HOSSAIN', 'Social robotics, human-robot interaction, cognitive and developmental robotics, and Embodied Artificial Intelligence are all areas in which we conduct research. The lab is part of a large new endeavor devoted to computational neuroscience and cognitive robotics research. Kinematics and motion planning, human limb rehabilitation, and synergy identification augmented/virtual reality applications in robotics and kinematics, robot-human interaction, and multi-fingered robotics hands are all topics of research in this lab. This lab has worked on a number of initiatives with both industrial partners and other universities and academic institutions.', 'We also encourage and welcome scholars from other domains, such as computer science, physical therapy, control, and mechatronics, to join us, since the multidisciplinary nature of robotics allows for new partnerships and research opportunities. Several robotics-related research teams from several study disciplines, including applied mathematics, architecture, computer science, control, electrical engineering, neurology, mechatronics, and software engineering, have collaborated to create the laboratory. In the following years, considerable market expansion in robotics and associated smart technology fields is expected. This development is addressed by the laboratory, which provides world-class expert training and applies cutting-edge research in robot control, computer vision, communications, data analysis, localization, machine learning, space perception, world modeling, and human-robot interaction to a variety of innovative tasks and projects.', 'SRM Fahad Hossain.', 'Fahad Ahmed, Farhun Arif Chowdhury, Ziaur Reza Joy.', '35', 1, '11 Feb, 2022', '1644555899-rc7.jpg'),
(2, 'Computer Hacking Forensics Investigator and Cyber Security Research Lab (CHFICSRL)', 'MR. HASANUZZAMAN', 'The Computer Hacking Forensics Investigator and Cyber Security Research Lab has dedicated workstations and access to software and network resources for computing students. A dedicated server with segregated network layers and several operating systems is available in this lab. This lab is meant to provide students with hands-on experience with computer security procedures, such as detecting and investigating security breaches and other digital crimes. Many students refer to the Forensics & Security Lab as the \"Hacker Lab,\" since it teaches them how to safeguard information from hackers.', 'The Computer Hacking Forensics Investigator and Cyber Security Research Lab teaches students fundamental information security principles as well as technical and practical employment skills for securing, protecting, and defending network infrastructures and an organization\'s valuable data assets. The programs give students a wide grasp of cyber security ideas, industry best practices for information security, and important security concepts that will safeguard a company from fraud, data breaches, and other risks. The rapidly expanding Internet security industry needs a thorough awareness of cyber security challenges as well as basic Internet architecture and protocols. Network security capabilities including packet, vulnerability, and exploit analysis, as well as cyber security research, are also highlighted. Graduates will get highly employable skills in the rapidly growing sector of cyber security.', 'Md. Hasanuzzaman.', 'Fahad Ahmed, Farhun Arif Chowdhury, Ziaur Reza Joy.', '35', 1, '11 Feb, 2022', '1644555999-rc6.jpg'),
(3, 'Data Science & Big Data Research Lab (DSBDRL)', 'MR. HASANUZZAMAN', 'Our lab\'s main goal is to link people in industry and government who have access to massive datasets with scholars who specialize in big data analysis. Our objective is to do ground-breaking research that answers issues at the cutting edge of the economics field while also addressing crucial questions faced by the owners of these datasets. Education, Finance/Risk, Environment, and Transportation are among the issues on which we are now working.', 'The DataLab is the university\'s hub for data science and analytics research. We look at large-scale, diverse human data to figure out why people, consumers, and society act the way they do. Our mission is to use data for the greater good, ethically, in order to inform policy and improve people\'s lives. The DataLab serves as a hub for industry relationships relating to \"big data\" and business analytics, as well as providing infrastructure and support for student training and participation in initiatives involving massive dataset analysis. Through automation and personalization of services, data science is predicted to have a substantial influence across all areas of the economy and society during the next decade. To address key social issues, our lab will utilize and magnify achievements in data science and artificial intelligence (AI). Our objective is to nurture, enhance, and promote excellence in data science research, teaching, and application for the benefit of the public good.', 'Md. Hasanuzzaman.', 'Fahad Ahmed, Farhun Arif Chowdhury, Ziaur Reza Joy.', '35', 1, '11 Feb, 2022', '1644556160-rc5.jpg'),
(4, 'Image Processing and Computer Vision Lab (IPCV)', 'MD. MOSTAFIZUR RAHMAN', 'The Image Processing & Computer Vision Laboratory focuses on image/video processing and computer vision research. The Image Processing & Computer Vision Laboratory focuses on image/video processing and computer vision research. Inverse image processing challenges (such as super-resolution picture restoration and denoising), computational photography, mobile imaging, and the creation of low to high-level computer vision tools and techniques are some of the specific study fields. The lab undertakes application-oriented research, particularly in the field of biomedical imaging, in addition to making significant contributions to the domains of image processing and computer vision.', 'The VIP Lab\'s mission is to better understand visual processes and identify answers to outstanding challenges in visual processing and perception, as well as artificial intelligence, machine learning, and intelligent systems for a range of applications. The VIP Lab, a proud member of the Partnership on AI, is likewise working to push the frontiers of AI by addressing the critical operational difficulties that arise with mass AI adoption and allowing AI to become an empowering tool for anyone, everywhere, at any time. Scalable AI (through human-machine collaborative design empowered by AI building AI) and transparent and responsible AI (through AI explaining AI) are two key areas of research interest for the VIP Lab in pursuit of this goal. Both are critical to enabling widespread ethical use of AI for real-world societal impact.', 'Md. Mostafizur Rahman.', 'Fahad Ahmed, Farhun Arif Chowdhury, Ziaur Reza Joy.', '35', 1, '11 Feb, 2022', '1644556249-rc4.jpg'),
(5, 'Network Architecture and Security Management Cell (NASMC)', 'MR. HASANUZZAMAN', 'The Network Architecture and Security Management Club was founded to provide a forum for our university\'s students to come together. They may discuss ideas and dreams about the growth of their thoughts in the sphere of protection and cybersecurity since the club offers them software and security features. The group is a great venue for students interested in cybersecurity to get together.', 'The club\'s goal is to learn how to manage the inherent issues of safeguarding and defending business network infrastructure, as well as to practice reaction and mitigation tactics against both known and unknown cyber threats. The Information Security Club also aims to better comprehend the commercial and technological implications of information security for businesses, as well as to enhance careers in technology and information security.', 'Md. Hasanuzzaman.', 'Fahad Ahmed, Farhun Arif Chowdhury, Ziaur Reza Joy.', '35', 1, '11 Feb, 2022', '1644556370-rc3.jpg'),
(6, 'Software & Web Development Cell (SWDC)', 'FARIA TABASSUM', 'The goal of the group is to encourage students to develop small projects using modern technologies such as Python, Perl, Java, PHP, Android, and others. The major goal of the software club is to encourage students to learn new technologies and to understand how they may be used to project work. Expert sessions, video presentations, motivating talks, and hands-on practical workshops for various programming basics are among the events that the Software Club regularly organizes.', 'The Software Engineering Club\'s mission is to foster a social and collaborative environment among students at this university who are interested in computer science and related fields. We equip members with the tools they need to succeed in school and when they graduate. As a result, the club maintains links with the area\'s best software businesses in order to assist students in developing good relationships with recruiters. Finally, we give lessons on how to use standard frameworks, tools, and popular APIs to assist students in gaining CS skills. Workshops, hackathons, and speaker events are held throughout the semester. We provide a variety of chances for students to obtain practical experience outside of the classroom. Our club assists students of various levels of expertise in the development of software abilities. Speaker series and seminars are available to everyone, from students with little programming experience to seasoned developers.', 'Faria Tabassum.', 'Fahad Ahmed, Farhun Arif Chowdhury, Ziaur Reza Joy.', '35', 1, '11 Feb, 2022', '1644556476-rc2.jpg'),
(7, 'Artificial Intelligence and Machine Learning Cell (AIMLC)', 'MR. SRM FAHAD HOSSAIN', 'In conjunction with the industry, AIMLC aspires to build AI solutions that aim to answer contemporary challenges in Bangladesh and internationally. We continue to create high-quality research and trained professionals with the knowledge and potential to be at the forefront of Bangladesh\'s AI revolution in the next few years.', 'The Artificial Intelligence and Machine Learning Lab\'s researchers are constantly working on developing intelligent solutions that can understand language and emotion, mine actionable information from social media, develop nature-inspired algorithms for data classification and clustering, detect activities from massive amounts of data generated by IoT devices, and develop sustainable computation and generation of game scenarios for intelligent game automation. This is only the beginning; as artificial intelligence innovation fuels the AI revolution, machine learning will have a tremendous influence on many parts of our life, including politics, medicine, education, and transportation, affecting everyone everywhere.', 'SRM Fahad Hossain.', 'Fahad Ahmed, Farhun Arif Chowdhury, Ziaur Reza Joy.', '35', 1, '11 Feb, 2022', '1644556581-rc1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(30) NOT NULL,
  `first_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(1, 'Fahad', 'Ahmed', 'sam', 'e008f6b8885ae84d4a9dc72dc48ac222', 1),
(6, 'CUB', 'CSE', 'cubcseadmin', '9ab024aa428700384fa132119a988569', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vission`
--

CREATE TABLE `vission` (
  `vission_id` int(11) NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `vission_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `vission`
--

INSERT INTO `vission` (`vission_id`, `description`, `category`, `vission_date`, `author`) VALUES
(2, 'Produce eligible graduates', '25', '24 Jan, 2022', 1),
(3, 'Produce strong research and teaching environment', '25', '24 Jan, 2022', 1),
(4, 'Be recognized universally', '25', '24 Jan, 2022', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`achievement_id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`admission_id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`alumni_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `cover1`
--
ALTER TABLE `cover1`
  ADD PRIMARY KEY (`cover1_id`);

--
-- Indexes for table `cover2`
--
ALTER TABLE `cover2`
  ADD PRIMARY KEY (`cover2_id`);

--
-- Indexes for table `cover3`
--
ALTER TABLE `cover3`
  ADD PRIMARY KEY (`cover3_id`);

--
-- Indexes for table `cover4`
--
ALTER TABLE `cover4`
  ADD PRIMARY KEY (`cover4_id`);

--
-- Indexes for table `cregistration`
--
ALTER TABLE `cregistration`
  ADD PRIMARY KEY (`cregistration_id`);

--
-- Indexes for table `ctransfer`
--
ALTER TABLE `ctransfer`
  ADD PRIMARY KEY (`ctransfer_id`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`curriculum_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fees_id`);

--
-- Indexes for table `iadmission`
--
ALTER TABLE `iadmission`
  ADD PRIMARY KEY (`iadmission_id`);

--
-- Indexes for table `iadvisor`
--
ALTER TABLE `iadvisor`
  ADD PRIMARY KEY (`iadvisor_id`);

--
-- Indexes for table `ifees`
--
ALTER TABLE `ifees`
  ADD PRIMARY KEY (`ifees_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `mission`
--
ALTER TABLE `mission`
  ADD PRIMARY KEY (`mission_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `objective`
--
ALTER TABLE `objective`
  ADD PRIMARY KEY (`objective_id`);

--
-- Indexes for table `ostuff`
--
ALTER TABLE `ostuff`
  ADD PRIMARY KEY (`ostuff_id`);

--
-- Indexes for table `outcome`
--
ALTER TABLE `outcome`
  ADD PRIMARY KEY (`outcome_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`publication_id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`research_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vission`
--
ALTER TABLE `vission`
  ADD PRIMARY KEY (`vission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievement`
--
ALTER TABLE `achievement`
  MODIFY `achievement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `admission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `alumni_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cover1`
--
ALTER TABLE `cover1`
  MODIFY `cover1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cover2`
--
ALTER TABLE `cover2`
  MODIFY `cover2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cover3`
--
ALTER TABLE `cover3`
  MODIFY `cover3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cover4`
--
ALTER TABLE `cover4`
  MODIFY `cover4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cregistration`
--
ALTER TABLE `cregistration`
  MODIFY `cregistration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ctransfer`
--
ALTER TABLE `ctransfer`
  MODIFY `ctransfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `curriculum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fees_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `iadmission`
--
ALTER TABLE `iadmission`
  MODIFY `iadmission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `iadvisor`
--
ALTER TABLE `iadvisor`
  MODIFY `iadvisor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ifees`
--
ALTER TABLE `ifees`
  MODIFY `ifees_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mission`
--
ALTER TABLE `mission`
  MODIFY `mission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `objective`
--
ALTER TABLE `objective`
  MODIFY `objective_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ostuff`
--
ALTER TABLE `ostuff`
  MODIFY `ostuff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `outcome`
--
ALTER TABLE `outcome`
  MODIFY `outcome_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `publication`
--
ALTER TABLE `publication`
  MODIFY `publication_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `research_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vission`
--
ALTER TABLE `vission`
  MODIFY `vission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
