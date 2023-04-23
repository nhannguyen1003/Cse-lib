

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `library`
create database `library`;
use `library`;
--

-- --------------------------------------------------------

--
-- Table structure `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Insert data to the table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`) VALUES
(20170001, '111111');

-- --------------------------------------------------------

--
-- Table structure `book_info`
--

CREATE TABLE `book_info` (
  `book_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publish` varchar(30) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `introduction` text,
  `language` varchar(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `pubdate` date DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `pressmark` int(11) DEFAULT NULL,
  `state` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Insert data to the table `book_info`
--

INSERT INTO `book_info` (`book_id`, `name`, `author`, `publish`, `ISBN`, `introduction`, `language`, `price`, `pubdate`, `class_id`, `pressmark`, `state`) VALUES
(10000001, 'The Snowy Cottage', 'Keigo Higashino', 'Beijing October Literature and Art Publishing House', '9787530216835', 'A masterpiece of a long novel by Keigo Higashino, first published in simplified Chinese. How can a stage play without a script make seven actors bet their entire lives? Keigo Higashino has the extraordinary ability to write heart-wrenching emotions from suspenseful cases, and at the same time portray the darkness and beauty of human nature in an extremely intricate and convoluted manner. Seven actors are required to stay in a secluded guesthouse for four days, subjected to the director''s test, but people keep disappearing. Could this be a trap set up by someone to kill them, rather than a normal rehearsal? At that time, I began to like drama and music, and the inspiration for "The Snowy Cottage" came from this. I believe this trick will definitely surprise people. - Keigo Higashino', 'Chinese', '35.00', '2017-06-01', 9, 13, 1),
(10000003, 'Three Lives Three Worlds, Ten Miles of Peach Blossoms', 'Tang Qi Gong Zi', 'Shenyang Publishing House', '9787544138000', 'Are she and he destined to carry a tangled marriage fate in three lives and three worlds? Are she and he eventually able to make a lifelong promise to each other in three lives and three worlds?', 'Chinese', '26.80', '2009-01-06', 7, 2, 1),
(10000004, 'Silent Separation', 'Gu Man', 'Chaohua Publishing House', '9787505414709', 'A youthful love affair leads to a lifetime of entanglement. During college, Zhao Mo Sheng, bright and cheerful, falls in love at first sight with the talented law student He Yi Chen. With her straightforward and outgoing personality, she relentlessly pursues him, and eventually manages to make him stay. However, his inability to express himself ultimately leads to her leaving him and traveling far away, heartbroken...', 'Chinese', '15.00', '2007-04-03', 7, 2, 1),
(10000005, '11th Agent Princess', 'Xiao Xiang Dong Er', 'Jiangsu Literature and Art Publishing House', '9787539943893', 'The introduction of "11th Agent Princess (Set of three volumes)": She is a stunning military strategist of the 11th Bureau of the National Security Agency, who collects intelligence, plans and deploys, and carries out assassination tasks in unfriendly countries... She is the needle of the compass in the building of the Bureau, making decisions from behind the scenes, and achieving victory thousands of miles away.', 'Chinese', '74.80', '2011-05-05', 7, 2, 1),
(10000006, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'CITIC Publishing House', '9787508647357', '100,000 years ago, there were at least six different types of humans on Earth, but today, why are we the only ones left on the world stage? From apes who could only gnaw on the bones left by tigers and wolves to Homo sapiens who sit at the top of the food chain, from the primitive handprints on the walls of the Shuweikar Cave to Armstrong’s footprints on the moon, from the cognitive revolution, agricultural revolution, to the scientific and biological technological revolutions, how did we become the masters of the world? From the Code of Hammurabi in 1776 BC to the Declaration of Independence in 1776 AD, from imperialism, capitalism, to liberalism and consumerism, from animal desires to material desires, from bestiality, humanity to divinity, do we really understand ourselves? Are we happier now? What do we really want and hope to become?', 'English', '68.00', '2014-11-01', 11, 3, 1),
(10000007, 'The History of Ming Dynasty (Volumes 1-9)', 'Dangnian Mingyue', 'China Customs Publishing House', '9787801656087', 'The History of Ming Dynasty narrates the history of the Ming Dynasty from 1344 to 1644. Based on historical materials and centered on specific individuals and their times, the book employs the techniques of a novel to provide a panoramic display of the fate of the 17 emperors of the Ming Dynasty as well as other officials, nobles, and common people. The book focuses particularly on politics, war, and the psychology of the emperors. It is also a narrative of the political, economic, and moral systems of the Ming Dynasty.', 'Chinese', '358.20', '2009-04-06', 11, 3, 1),
(10000010, 'Principles of Economics (Volumes 1-2)', 'N. Gregory Mankiw', 'Mechanical Industry Press', '9787111126768', 'In the third edition of Principles of Economics, a greater portion of the text is devoted to applications and policies, with less attention given to formal economic theory. The book examines the economists’ worldview from the perspectives of supply and demand, business behavior and consumer choice theory, long-term economic growth and short-term economic fluctuations, and macroeconomic policy. It provides a deep and clear analysis. ', 'English', '88.00', '2003-08-05', 6, 5, 1),
(50000004, 'Sens', 'Marc-Antoine Mathieu', 'Hou Lang|Beijing United Publishing Co., Ltd.', '9787020125265', 'Sens is perhaps the most unique work of Mathieu’s oeuvre: without a single word, it exudes elegance. The original work had no text; the title was just an arrow →. The book’s title Sens can mean “direction” or “meaning.” Sens has no words, but it has its own language—readers are encouraged to unleash their imagination and independent thinking to decipher the author’s code and hear his views on the absurd. ', 'Chinese', '99.80', '2017-04-01', 9, 13, 1),
(50000005, 'The Secret of the Painting', 'Marc-Antoine Mathieu', 'Beijing United Publishing Company · Houlang Publishing Company', '9787550265608', 'A healing graphic novel about friendship that hits the most hidden emotions within people. A paper-based suspense movie that explores the strange truth of fate in the universe. ★ "The Secret of the Painting" won the "Best Work Award" at the second largest comic festival in Europe, the "Swiss Scher Comic Festival". The author has twice won important awards at the Angoulême International Comics Festival. ★ "The Secret of the Painting" is a rare experimental comic work that combines collage, mirroring, 3D and other narrative techniques. The author cleverly orchestrates light, latitude, time, and memory, injecting a philosophical issue about fate into a story full of suspense and warmth.', 'Chinese', '60.00', '2016-01-01', 9, 13, 0),

(50000007, 'Rainbow-Man', 'Keigo Higashino', 'Beijing October Art & Literature Publishing House', '9787530216859', 'Actually, everyone can emit light, but only those who purely crave light can see it. From that moment on, life takes a miraculous turn. ------------------------------------------------------------------------------------------------------ Gong Yi drops out of high school and joins a gang, living a life of negativity; Zheng Shi prepares for the college entrance examination but cannot concentrate, almost collapsing; Hui Mei loses her courage to live because of family conflicts and decides to commit suicide. Faced with a terrible life, they have nowhere to go, until one night, a rainbow-like light appears in their view. Staring at the light, the almost exhausted energy surges up continuously. Everything becomes full of hope again. Cheer up, don’t lose, come here, come here - the light whispers. They follow the call and arrive at a rooftop, where they see a person playing a wonderful melody with a colorful light beam. They never thought that the rainbow they saw that night would completely transform their lives...', 'Chinese', '39.50', '2017-06-01', 9, 13, 1),

(50000008, 'The Witness for the Prosecution', 'Agatha Christie', 'New Star Press', '9787513325745', 'The classic play has been performed for 60 years and is still popular; Billy Wilder directed the film adaptation, which was nominated for six Academy Awards! Agatha''s desire for mystery may come from a genetic inheritance from a female ancestor, and in her life of not leaving home, she developed a curious yet fearful fantasy of the world. - Wang Anyi Leonard Vole is accused of murdering wealthy widow Emily in order to get her huge inheritance, but he repeatedly claims his innocence. Leonard''s wife is the only witness who can prove his innocence, but she appears in court as a witness for the prosecution and testifies that he did indeed commit the murder. Leonard is almost in despair until a mysterious woman appears... The dog-shaped pattern on the wall; the radio that summons death; the secret of the blue porcelain jar; a crazy gray cat... Eleven mysterious tales where the scariest thing is not "ghosts", but what lies within your heart...', 'Chinese', '45.00', '2021-04-01', 8, 14, 1);

-- --------------------------------------------------------

--
-- Table structure `class_info`
--

CREATE TABLE `class_info` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Insert data to the table `class_info`
--

INSERT INTO `class_info` (`class_id`, `class_name`) VALUES
(1, 'Marxism'),
(2, 'Philosophy'),
(3, 'Social Sciences General'),
(4, 'Politics and Law'),
(5, 'Military Science'),
(6, 'Economics'),
(7, 'Culture'),
(8, 'Language'),
(9, 'Literature'),
(10, 'Art'),
(11, 'History and Geography'),
(12, 'Natural Sciences General'),
(13, 'Mathematics and Chemistry'),
(14, 'Astronomy and Earth Sciences'),
(15, 'Biological Sciences'),
(16, 'Medicine and Health'),
(17, 'Agricultural Sciences'),
(18, 'Industrial Technology'),
(19, 'Transportation'),
(20, 'Aviation and Aerospace'),
(21, 'Environmental Science'),
(22, 'Comprehensive');

-- --------------------------------------------------------

--
-- Table structure `lend_list`
--

CREATE TABLE `lend_list` (
  `sernum` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `reader_id` int(11) NOT NULL,
  `lend_date` date DEFAULT NULL,
  `back_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Insert data to the table `lend_list`
--

INSERT INTO `lend_list` (`sernum`, `book_id`, `reader_id`, `lend_date`, `back_date`) VALUES
(2015040139, 10000001, 1501014101, '2017-03-15', '2017-06-16'),
(2015040140, 10000003, 1501014101, '2017-06-10', '2017-09-02'),
(2015040141, 10000006, 1501014101, '2017-06-12', '2017-09-02'),
(2015040142, 50000004, 1501014101, '2017-03-15', '2017-09-03'),
(2015040143, 50000005, 1501014103, '2017-06-15', NULL),
(2015040144, 50000010, 1501014104, '2017-06-15', NULL),
(2015040145, 10000001, 1501014101, '2017-09-02', '2017-09-02');

-- --------------------------------------------------------

--
-- Table structure `reader_card`
--

CREATE TABLE `reader_card` (
  `reader_id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `passwd` varchar(15) NOT NULL DEFAULT '111111',
  `card_state` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Insert data to the table `reader_card`
--

INSERT INTO `reader_card` (`reader_id`, `name`, `passwd`, `card_state`) VALUES
(1501014101, 'John Smith', '111111', 1),
(1501014102, 'Jake Williams', '111111', 1),
(1501014103, 'Emily Johnson', '111111', 1),
(1501014104, 'Anna Davis', '111111', 1),
(1501014105, 'James Brown', '111111', 1),
(1501014106, 'Olivia Garcia', '111111', 1);

-- --------------------------------------------------------

--
-- Table structure `reader_info`
--

CREATE TABLE `reader_info` (
  `reader_id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `telcode` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Insert data to the table `reader_info`
--

INSERT INTO `reader_info` (`reader_id`, `name`, `sex`, `birth`, `address`, `telcode`) VALUES
(1501014101, 'Jake Williams', 'Male', '1995-06-10', 'New York City', '12345678900'),
(1501014102, 'Anna Davis', 'Male', '1996-02-01', 'Los Angeles', '12345678909'),
(1501014103, 'Emily Johnson', 'Female', '1995-04-15', 'San Francisco', '12345678908'),
(1501014104, 'Olivia Garcia', 'Male', '1996-08-29', 'Chicago', '12345678907'),
(1501014105, 'John Smith', 'Male', '1996-01-01', 'Houston', '15123659875');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `book_info`
--
ALTER TABLE `book_info`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `class_info`
--
ALTER TABLE `class_info`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `lend_list`
--
ALTER TABLE `lend_list`
  ADD PRIMARY KEY (`sernum`);

--
-- Indexes for table `reader_card`
--
ALTER TABLE `reader_card`
  ADD PRIMARY KEY (`reader_id`);

--
-- Indexes for table `reader_info`
--
ALTER TABLE `reader_info`
  ADD PRIMARY KEY (`reader_id`);

--
-- Use the exported table AUTO_INCREMENT
--

--
--  AUTO_INCREMENT `book_info`
--
ALTER TABLE `book_info`
  MODIFY `book_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50000012;

--
--  AUTO_INCREMENT `lend_list`
--
ALTER TABLE `lend_list`
  MODIFY `sernum` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2015040146;
COMMIT;

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
