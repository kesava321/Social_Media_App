-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2018 at 04:45 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialgroup`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Anyone else going holdiay abroad this summer?', 'cali_person', 'cali_person', '2018-03-31 14:07:01', 'no', 15),
(2, 'This looks really good, I can\'t wait to see it.', 'andre_hays', 'santino_reed', '2018-03-31 14:09:51', 'no', 8),
(3, 'That\'s so true. ', 'andre_hays', 'santino_reed', '2018-03-31 14:10:30', 'no', 7),
(4, 'Nice car, but McLaren P1 is faster and looks better. ', 'andre_hays', 'santino_reed', '2018-03-31 14:14:04', 'no', 9),
(5, 'Yeah I agree, its really easy to use and nicely designed. ', 'danyl_lovell', 'josh_bowers', '2018-03-31 14:26:52', 'no', 13),
(6, 'I think its pretty good.', 'danyl_lovell', 'josh_bowers', '2018-03-31 14:27:08', 'no', 14),
(7, 'The trailer looks amazing.', 'jannat_sweeney', 'kane_ewing', '2018-03-31 14:30:29', 'no', 22),
(8, 'Nice quote.', 'jannat_sweeney', 'kane_ewing', '2018-03-31 14:30:41', 'no', 21),
(9, 'Nice car, I really like the winged doors. ', 'theodore_cole', 'andre_hays', '2018-03-31 14:39:54', 'no', 17),
(10, 'This was really funny. Couldn\'t stop laughing when I first saw it. ', 'georgie_johnston', 'spencer_james', '2018-03-31 14:41:33', 'no', 11),
(11, 'Can\'t wait to watch this.', 'georgie_johnston', 'spencer_james', '2018-03-31 14:41:46', 'no', 10),
(12, 'Yeah I have, Steaphen Hawking has died. I am really sad now, he was such a great man and had a lot more to offer in the field of physics and theoretical cosmology. ', 'georgie_johnston', 'spencer_james', '2018-03-31 14:44:27', 'no', 12),
(13, 'Ahh... so cute.', 'pascal_lambert', 'reeva_cooper', '2018-03-31 14:54:05', 'no', 5),
(14, 'That looks so nice and scenic.', 'pascal_lambert', 'reeva_cooper', '2018-03-31 14:54:56', 'no', 2),
(15, 'Can\'t wait to see this.', 'jessica_welsh', 'reeva_cooper', '2018-03-31 14:59:18', 'no', 4),
(16, 'Yeah same', 'amy_avila', 'reeva_cooper', '2018-03-31 15:04:38', 'no', 4),
(17, 'Such a perfectly timed picture.', 'amy_avila', 'reeva_cooper', '2018-03-31 15:05:15', 'no', 5),
(18, 'Wow this looks amazing.', 'kesava_uthaya-kumaran', 'kesava_uthaya-kumaran', '2018-03-31 19:32:24', 'no', 50),
(19, 'Nice picture.', 'josh_bowers', 'kesava_uthaya-kumaran', '2018-03-31 19:51:02', 'no', 50),
(20, 'hi back', 'kesava_uthaya-kumaran', 'kesava_uthaya-kumaran', '2018-03-31 21:09:18', 'no', 61),
(21, 'Nice picture', 'andre_hays', 'kesava_uthaya-kumaran', '2018-03-31 21:14:22', 'no', 61),
(22, 'Nice picture', 'kesava_uthaya-kumaran', 'kesava_uthaya-kumaran', '2018-04-19 00:02:14', 'no', 66),
(23, 'Nice picture', 'kesava_uthaya-kumaran', 'kesava_uthaya-kumaran', '2018-04-19 00:02:30', 'no', 66),
(24, 'Nice picture', 'kesava_uthaya-kumaran', 'kesava_uthaya-kumaran', '2018-04-19 00:14:08', 'no', 66),
(25, 'hi ', 'kesava_uthaya-kumaran', 'kesava_uthaya-kumaran', '2018-04-19 14:09:20', 'no', 71);

-- --------------------------------------------------------

--
-- Table structure for table `fakes`
--

CREATE TABLE `fakes` (
  `id` int(11) NOT NULL,
  `news_id` varchar(60) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakes`
--

INSERT INTO `fakes` (`id`, `news_id`, `user_id`) VALUES
(0, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(1, 'james_morrisons', 'shaun_tillman'),
(2, 'jessica_welsh', 'reeva_cooper'),
(3, 'euan_huffman', 'pascal_lambert'),
(4, 'santino_reed', 'james_morrisons'),
(8, 'shaun_tillman', 'kesava_uthaya-kumaran'),
(10, 'james_morrisons', 'kesava_uthaya-kumaran'),
(14, 'georgie_johnston', 'kesava_uthaya-kumaran'),
(15, 'andre_hays', 'josh_bowers');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'reeva_cooper', 129),
(2, 'reeva_cooper', 130),
(3, 'reeva_cooper', 132),
(4, 'reeva_cooper', 131),
(5, 'santino_reed', 9),
(6, 'spencer_james', 11),
(7, 'cali_person', 15),
(8, 'andre_hays', 8),
(9, 'andre_hays', 7),
(10, 'andre_hays', 6),
(11, 'andre_hays', 9),
(12, 'danyl_lovell', 14),
(13, 'danyl_lovell', 13),
(14, 'kane_ewing', 22),
(15, 'jannat_sweeney', 22),
(16, 'shakira_mckenna', 24),
(17, 'theodore_cole', 17),
(18, 'georgie_johnston', 11),
(19, 'georgie_johnston', 10),
(20, 'leia_santana', 31),
(21, 'pascal_lambert', 5),
(22, 'pascal_lambert', 4),
(23, 'pascal_lambert', 2),
(24, 'pascal_lambert', 34),
(25, 'jessica_welsh', 34),
(26, 'jessica_welsh', 5),
(27, 'jessica_welsh', 4),
(28, 'amy_avila', 5),
(29, 'james_morrisons', 18),
(30, 'james_morrisons', 19),
(31, 'reeva_cooper', 36),
(32, 'kesava_uthaya-kumaran', 50),
(33, 'josh_bowers', 50),
(34, 'kesava_uthaya-kumaran', 61),
(35, 'andre_hays', 63),
(36, 'andre_hays', 62),
(37, 'kesava_uthaya-kumaran', 63),
(38, 'kesava_uthaya-kumaran', 66),
(39, 'andre_hays', 75);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'amy_avila', 'reeva_cooper', 'Hi, how are you?', '2018-03-31 17:55:08', 'yes', 'no', 'no'),
(2, 'reeva_cooper', 'amy_avila', 'I am fine, thanks for asking.', '2018-03-31 17:56:01', 'yes', 'no', 'no'),
(3, 'reeva_cooper', 'amy_avila', 'How are you?', '2018-03-31 17:56:09', 'yes', 'no', 'no'),
(4, 'amy_avila', 'reeva_cooper', 'I am good.', '2018-03-31 17:58:22', 'yes', 'no', 'no'),
(5, 'amy_avila', 'reeva_cooper', 'Do you want to hang out? ', '2018-03-31 17:58:54', 'yes', 'no', 'no'),
(6, 'reeva_cooper', 'amy_avila', 'Sure, where shall we go?', '2018-03-31 17:59:26', 'yes', 'no', 'no'),
(7, 'amy_avila', 'reeva_cooper', 'Let\'s go window shopping in the city.', '2018-03-31 18:00:11', 'yes', 'no', 'no'),
(8, 'reeva_cooper', 'amy_avila', 'Yeah, sure I am up for that.', '2018-03-31 18:00:40', 'yes', 'no', 'no'),
(9, 'reeva_cooper', 'amy_avila', 'Let\'s go tomorrow afternoon. ', '2018-03-31 18:00:53', 'yes', 'no', 'no'),
(10, 'amy_avila', 'reeva_cooper', 'Okay then, I will see you tomorrow.', '2018-03-31 18:01:30', 'yes', 'no', 'no'),
(11, 'reeva_cooper', 'amy_avila', 'Bye, see you tomorrow. ', '2018-03-31 18:02:23', 'no', 'no', 'no'),
(12, 'andre_hays', 'casper_sinclair', 'Hi mate, you alright? ', '2018-03-31 18:05:17', 'yes', 'yes', 'no'),
(13, 'casper_sinclair', 'andre_hays', 'Yeah, I am fine.', '2018-03-31 18:05:44', 'yes', 'no', 'no'),
(14, 'casper_sinclair', 'andre_hays', 'What you up to?', '2018-03-31 18:05:51', 'yes', 'no', 'no'),
(15, 'andre_hays', 'casper_sinclair', 'Just chilling at home.', '2018-03-31 18:06:58', 'yes', 'yes', 'no'),
(16, 'andre_hays', 'casper_sinclair', 'How about you? ', '2018-03-31 18:07:47', 'yes', 'yes', 'no'),
(17, 'casper_sinclair', 'andre_hays', 'I am getting ready to watch the Anthony Joshua vs Joseph Parker fight.', '2018-03-31 18:08:33', 'yes', 'no', 'no'),
(18, 'andre_hays', 'casper_sinclair', 'Oh nice, you managed to get tickets for the fight? ', '2018-03-31 18:09:32', 'yes', 'yes', 'no'),
(19, 'casper_sinclair', 'andre_hays', 'Yeah, I did, they weren\'t easy to get a hold of. ', '2018-03-31 18:10:07', 'yes', 'no', 'no'),
(20, 'casper_sinclair', 'andre_hays', 'I got a spare ticket though, do you want to come? ', '2018-03-31 18:10:22', 'yes', 'no', 'no'),
(21, 'andre_hays', 'casper_sinclair', 'Yeah sure. ', '2018-03-31 18:10:50', 'yes', 'yes', 'no'),
(22, 'andre_hays', 'casper_sinclair', 'When are you planning to go? ', '2018-03-31 18:11:33', 'yes', 'yes', 'no'),
(23, 'casper_sinclair', 'andre_hays', 'Around 7 pm.', '2018-03-31 18:11:59', 'yes', 'no', 'no'),
(24, 'casper_sinclair', 'andre_hays', 'Meet me at the station at 6:30 pm and we\'ll go together from there. ', '2018-03-31 18:12:41', 'yes', 'no', 'no'),
(25, 'andre_hays', 'casper_sinclair', 'Ok, I will meet you there.', '2018-03-31 18:13:27', 'yes', 'yes', 'no'),
(26, 'andre_hays', 'casper_sinclair', 'Bye, see you soon. ', '2018-03-31 18:13:44', 'yes', 'yes', 'no'),
(27, 'kesava_uthaya-kumaran', 'josh_bowers', 'Hi', '2018-03-31 19:50:38', 'yes', 'yes', 'no'),
(28, 'kesava_uthaya-kumaran', 'josh_bowers', 'How are you?', '2018-03-31 19:50:45', 'yes', 'yes', 'no'),
(29, 'josh_bowers', 'kesava_uthaya-kumaran', 'Hi Josh', '2018-03-31 19:54:15', 'yes', 'no', 'no'),
(30, 'josh_bowers', 'kesava_uthaya-kumaran', 'I am fine, how are you?', '2018-03-31 19:54:26', 'yes', 'no', 'no'),
(31, 'kesava_uthaya-kumaran', 'josh_bowers', 'I am good.', '2018-03-31 20:47:29', 'yes', 'yes', 'no'),
(32, 'kesava_uthaya-kumaran', 'josh_bowers', 'Do you want to hang out?', '2018-03-31 20:47:37', 'yes', 'yes', 'no'),
(33, 'josh_bowers', 'kesava_uthaya-kumaran', 'yes', '2018-03-31 21:10:50', 'no', 'no', 'no'),
(34, 'kesava_uthaya-kumaran', 'casper_sinclair', 'Hi, how are you', '2018-03-31 21:15:10', 'yes', 'yes', 'no'),
(35, 'casper_sinclair', 'kesava_uthaya-kumaran', 'I am good thanks', '2018-03-31 21:27:27', 'yes', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_title` varchar(100) NOT NULL,
  `news_pic` varchar(255) NOT NULL,
  `news_text` varchar(255) NOT NULL,
  `news_link` varchar(255) NOT NULL,
  `fakes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news_title`, `news_pic`, `news_text`, `news_link`, `fakes`) VALUES
(1, 'Critically ill man is former Russian spy', 'assets/images/news_pics/news1.jpg', 'A man who is critically ill after being exposed to an unknown substance in Wiltshire is a Russian national convicted of spying for Britain, the BBC understands.', 'http://www.bbc.co.uk/news/uk-43295134  ', 7),
(2, 'Brexit: EU adopts guidelines for negotiations', 'assets/images/news_pics/news2.jpg', 'EU leaders have approved guidelines for the negotiation of future relations with the UK after Brexit.', 'http://www.bbc.co.uk/news/uk-politics-43509309', 4),
(3, 'Leicester shop explosion', 'assets/images/news_pics/news3.jpg', 'An explosion that killed five people in Leicester was caused by petrol being spread through a shop, a court has heard.', 'http://www.bbc.co.uk/news/uk-england-leicestershire-43287436', 7),
(4, 'Prof Stephen Hawking Cambridge funeral takes place', 'assets/images/news_pics/news4.jpg', 'Crowds gathered as the funeral of renowned theoretical physicist Prof Stephen Hawking took place.', 'http://www.bbc.co.uk/news/uk-england-cambridgeshire-43582950', 2),
(5, 'Gaza-Israel border: Palestinians mourn border dead', 'assets/images/news_pics/news5.jpg', 'Palestinians are observing a day of national mourning for at least 16 people killed in clashes with Israeli soldiers at the Gaza border on Friday.', 'http://www.bbc.co.uk/news/world-middle-east-43603199', 1),
(6, 'Was Ivanka Trump Critically Injured After Being Shot by a Sniper?', 'assets/images/news_pics/news6.jpg', 'A \"satirical\" web site run by a prolific purveyor of fake news published yet another distasteful and false story.', 'https://www.snopes.com/fact-check/ivanka-trump-shot/', 2),
(7, 'Did British Police Find Putin\'s Passport at Scene of Salisbury Poison Attack?', 'assets/images/news_pics/news7.jpg', 'A satirical web site took accusations of Putin\'s involvement in the March 2018 poisoning of a former Russian spy on British soil to extremes.', 'https://www.snopes.com/fact-check/putin-passport-salisbury-poison-attack/', 2),
(8, 'Links Between Gulf Crisis and Trump Campaign Operatives Emerge', 'assets/images/news_pics/news8.jpg', 'A British defense contractor linked to embattled psychographics firm Cambridge Analytica was hired by UAE to push social media posts accusing Qatar of sponsoring terrorism.', 'https://www.snopes.com/news/2018/03/28/links-gulf-crisis-trump-campaign-operatives/', 2),
(9, 'Did a Mobile Phone Make a Car Explode at a Gas Station?', 'assets/images/news_pics/news9.jpg', 'An Ecuadorean news web site invented fake details to describe a real, fatal explosion at a gas station in Brazil.', 'https://www.snopes.com/fact-check/cell-phone-explosion-gas-station/', 2),
(10, 'Did Harvey Weinstein Commit Suicide in Arizona?', 'assets/images/news_pics/news10.jpg', 'A fabricated article about the movie mogul\'s supposed self-inflicted death appeared on an irksome fake news web site.', 'https://www.snopes.com/fact-check/harvey-weinstein-suicide/', 2),
(11, 'UK soldier killed fighting IS in Syria named as Sgt Matt Tonroe', 'assets/images/news_pics/news11.jpg', 'A UK soldier killed in Syria while in combat against the Islamic State group has been named as Sgt Matt Tonroe.', 'http://www.bbc.co.uk/news/uk-43606899', 3),
(12, 'Is there a north-south divide in England\'s schools?', 'assets/images/news_pics/news12.jpg', 'Children in the north of England are finishing school with poorer grades and are less likely to go on to further education. That was the conclusion of a report from the Children\'s Commissioner, Anne Longfield.', 'http://www.bbc.co.uk/news/education-43544255', 2),
(13, 'Office lunch theft: the internet reacts', 'assets/images/news_pics/news13.jpg', 'Lunchtime can be the highlight of any working day - until you open the fridge door to find your lunch has vanished.', 'http://www.bbc.co.uk/news/world-43604598', 2),
(14, 'The men who had millions of lives in their hands', 'assets/images/news_pics/news14.jpg', 'In the commemorations of World War One there have been many stories from the descendants of those caught up in momentous and awful events.', 'http://www.bbc.co.uk/news/education-43558209', 2),
(15, 'Gender pay gap deadline: What to know', 'assets/images/news_pics/news15.jpg', 'Britain\'s biggest companies have less than a week to publish their gender pay gap figures, but just over two-thirds of companies have done so.', 'http://www.bbc.co.uk/news/business-43586574', 2),
(16, 'Did Melania Trump Hire an Exorcist to Cleanse the White House of Obama \'Demons\'?', 'assets/images/news_pics/news16.jpg', 'According to the First Lady\'s spokesperson, widely shared reports that she demanded a White House exorcism are \"not true in any way.\"', 'https://www.snopes.com/fact-check/melania-trump-hired-exorcist/', 2),
(17, 'Did a Black Lives Matter Leader Get Sued for Embezzling Donations?', 'assets/images/news_pics/news17.jpg', 'Right-wing web sites republished a fabricated story posted by a notorious purveyor of fake news.', 'https://www.snopes.com/fact-check/black-lives-matter-marquesha-johnson-donations/', 2),
(18, 'Did an Explosion at Al Franken’s Montana Ranch Kill 6 People?', 'assets/images/news_pics/news18.jpg', 'The fake news article misuses an image of a New York City building fire.', 'https://www.snopes.com/fact-check/explosion-al-frankens-montana-ranch-kill-6-people/', 2),
(19, 'Did Denzel Washington Say Trump\'s Election Saved Us From an \'Orwellian Police State\'?', 'assets/images/news_pics/news19.jpg', ' The quote attributed to the famed actor was fabricated by a disreputable web site.', 'https://www.snopes.com/fact-check/denzel-washington-say-trumps-election-saved-us-orwellian-police-state/', 2),
(20, 'Did a Greenpeace Activist Get His Arm Bitten Off After Hugging a White Shark?', 'assets/images/news_pics/news20.jpg', 'An article claiming that a great white shark attacked a Greenpeace activist originated on a well-known fake news site.', 'https://www.snopes.com/fact-check/greenpeace-activist-get-arm-bitten-off-hugging-white-shark/', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'santino_reed', 'andre_hays', 'Andre Hays liked your post', 'post.php?id=8', '2018-03-31 14:09:26', 'no', 'no'),
(2, 'santino_reed', 'andre_hays', 'Andre Hays liked your post', 'post.php?id=7', '2018-03-31 14:09:27', 'no', 'no'),
(3, 'santino_reed', 'andre_hays', 'Andre Hays commented on your post', 'post.php?id=8', '2018-03-31 14:09:51', 'no', 'no'),
(4, 'santino_reed', 'andre_hays', 'Andre Hays liked your post', 'post.php?id=7', '2018-03-31 14:10:04', 'no', 'no'),
(5, 'santino_reed', 'andre_hays', 'Andre Hays liked your post', 'post.php?id=6', '2018-03-31 14:10:09', 'no', 'no'),
(6, 'santino_reed', 'andre_hays', 'Andre Hays commented on your post', 'post.php?id=7', '2018-03-31 14:10:30', 'no', 'no'),
(7, 'santino_reed', 'andre_hays', 'Andre Hays liked your post', 'post.php?id=9', '2018-03-31 14:10:58', 'no', 'no'),
(8, 'santino_reed', 'andre_hays', 'Andre Hays commented on your post', 'post.php?id=9', '2018-03-31 14:14:04', 'no', 'no'),
(9, 'josh_bowers', 'danyl_lovell', 'Danyl Lovell liked your post', 'post.php?id=14', '2018-03-31 14:26:25', 'no', 'no'),
(10, 'josh_bowers', 'danyl_lovell', 'Danyl Lovell liked your post', 'post.php?id=13', '2018-03-31 14:26:30', 'no', 'no'),
(11, 'josh_bowers', 'danyl_lovell', 'Danyl Lovell commented on your post', 'post.php?id=13', '2018-03-31 14:26:52', 'no', 'no'),
(12, 'josh_bowers', 'danyl_lovell', 'Danyl Lovell commented on your post', 'post.php?id=14', '2018-03-31 14:27:09', 'no', 'no'),
(13, 'kane_ewing', 'jannat_sweeney', 'Jannat Sweeney liked your post', 'post.php?id=22', '2018-03-31 14:30:15', 'no', 'no'),
(14, 'kane_ewing', 'jannat_sweeney', 'Jannat Sweeney commented on your post', 'post.php?id=22', '2018-03-31 14:30:29', 'no', 'no'),
(15, 'kane_ewing', 'jannat_sweeney', 'Jannat Sweeney commented on your post', 'post.php?id=21', '2018-03-31 14:30:41', 'no', 'no'),
(16, 'andre_hays', 'theodore_cole', 'Theodore Cole liked your post', 'post.php?id=17', '2018-03-31 14:39:29', 'yes', 'yes'),
(17, 'andre_hays', 'theodore_cole', 'Theodore Cole commented on your post', 'post.php?id=17', '2018-03-31 14:39:54', 'yes', 'yes'),
(18, 'spencer_james', 'georgie_johnston', 'Georgie Johnston liked your post', 'post.php?id=11', '2018-03-31 14:41:09', 'no', 'no'),
(19, 'spencer_james', 'georgie_johnston', 'Georgie Johnston commented on your post', 'post.php?id=11', '2018-03-31 14:41:33', 'no', 'no'),
(20, 'spencer_james', 'georgie_johnston', 'Georgie Johnston liked your post', 'post.php?id=10', '2018-03-31 14:41:37', 'no', 'no'),
(21, 'spencer_james', 'georgie_johnston', 'Georgie Johnston commented on your post', 'post.php?id=10', '2018-03-31 14:41:46', 'no', 'no'),
(22, 'spencer_james', 'georgie_johnston', 'Georgie Johnston commented on your post', 'post.php?id=12', '2018-03-31 14:44:27', 'no', 'no'),
(23, 'reeva_cooper', 'pascal_lambert', 'Pascal Lambert liked your post', 'post.php?id=5', '2018-03-31 14:53:41', 'no', 'no'),
(24, 'reeva_cooper', 'pascal_lambert', 'Pascal Lambert commented on your post', 'post.php?id=5', '2018-03-31 14:54:05', 'no', 'no'),
(25, 'reeva_cooper', 'pascal_lambert', 'Pascal Lambert liked your post', 'post.php?id=4', '2018-03-31 14:54:09', 'no', 'no'),
(26, 'reeva_cooper', 'pascal_lambert', 'Pascal Lambert liked your post', 'post.php?id=2', '2018-03-31 14:54:13', 'no', 'no'),
(27, 'reeva_cooper', 'pascal_lambert', 'Pascal Lambert commented on your post', 'post.php?id=2', '2018-03-31 14:54:56', 'no', 'no'),
(28, 'pascal_lambert', 'jessica_welsh', 'Jessica Welsh liked your post', 'post.php?id=34', '2018-03-31 14:56:15', 'no', 'yes'),
(29, 'reeva_cooper', 'jessica_welsh', 'Jessica Welsh liked your post', 'post.php?id=5', '2018-03-31 14:56:17', 'no', 'no'),
(30, 'reeva_cooper', 'jessica_welsh', 'Jessica Welsh liked your post', 'post.php?id=4', '2018-03-31 14:56:18', 'no', 'no'),
(31, 'reeva_cooper', 'jessica_welsh', 'Jessica Welsh commented on your post', 'post.php?id=4', '2018-03-31 14:59:18', 'no', 'no'),
(32, 'reeva_cooper', 'amy_avila', 'Amy Avila liked your post', 'post.php?id=5', '2018-03-31 15:04:25', 'no', 'no'),
(33, 'reeva_cooper', 'amy_avila', 'Amy Avila commented on your post', 'post.php?id=4', '2018-03-31 15:04:38', 'no', 'no'),
(34, 'jessica_welsh', 'amy_avila', 'Amy Avila commented on a post you commented on', 'post.php?id=4', '2018-03-31 15:04:38', 'no', 'no'),
(35, 'reeva_cooper', 'amy_avila', 'Amy Avila commented on your post', 'post.php?id=5', '2018-03-31 15:05:15', 'no', 'no'),
(36, 'pascal_lambert', 'amy_avila', 'Amy Avila commented on a post you commented on', 'post.php?id=5', '2018-03-31 15:05:15', 'yes', 'yes'),
(37, 'amy_avila', 'reeva_cooper', 'Reeva Cooper liked your post', 'post.php?id=36', '2018-03-31 17:54:30', 'no', 'no'),
(38, 'kesava_uthaya-kumaran', 'josh_bowers', 'Josh Bowers liked your post', 'post.php?id=50', '2018-03-31 19:50:52', 'yes', 'yes'),
(39, 'kesava_uthaya-kumaran', 'josh_bowers', 'Josh Bowers commented on your post', 'post.php?id=50', '2018-03-31 19:51:02', 'yes', 'yes'),
(40, 'kesava_uthaya-kumaran', 'andre_hays', 'Andre Hays liked your post', 'post.php?id=63', '2018-03-31 21:14:13', 'no', 'yes'),
(41, 'kesava_uthaya-kumaran', 'andre_hays', 'Andre Hays liked your post', 'post.php?id=62', '2018-03-31 21:14:15', 'no', 'yes'),
(42, 'kesava_uthaya-kumaran', 'andre_hays', 'Andre Hays commented on your post', 'post.php?id=61', '2018-03-31 21:14:22', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'The will to win, the desire to succeed, the urge to reach your full potential... these are the keys that will unlock the door to personal excellence.', 'reeva_cooper', 'none', '2018-03-31 13:05:06', 'no', 'no', 1, ''),
(2, 'Hey guys, look at this amazing picture I found of a lake. ', 'reeva_cooper', 'none', '2018-03-31 13:13:55', 'no', 'no', 2, 'assets/images/posts/5abf7b83b6bf5lake.jpeg'),
(3, 'Just saw the Black Panther Movie, it was awesome. ', 'reeva_cooper', 'none', '2018-03-31 13:16:11', 'no', 'no', 1, ''),
(4, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/sjVqDg32_8s\'></iframe><br> Look at this the new Westworld season 2 trailer is out, what are your first impressions? ', 'reeva_cooper', 'none', '2018-03-31 13:17:55', 'no', 'no', 3, ''),
(5, 'Look at this cute puppy. ', 'reeva_cooper', 'none', '2018-03-31 13:25:20', 'no', 'no', 3, 'assets/images/posts/5abf7e30ca4b8puppies.jpg'),
(6, 'My grandmother started walking five miles a day when she was sixty. She\'s ninety-seven now, and we don\'t know where the hell she is.', 'santino_reed', 'none', '2018-03-31 13:34:20', 'no', 'no', 1, ''),
(7, 'The most misinformed people think they know all the facts.', 'santino_reed', 'none', '2018-03-31 13:34:50', 'no', 'no', 1, ''),
(8, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/8BAhwgjMvnM\'></iframe><br> Check out the new trailer for Pacific Rim Uprising.', 'santino_reed', 'none', '2018-03-31 13:35:50', 'no', 'no', 1, ''),
(9, 'The new Ferrari looks insanely good. ', 'santino_reed', 'none', '2018-03-31 13:41:52', 'no', 'no', 2, 'assets/images/posts/5abf82108667claferrari.jpg'),
(10, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/H7pYslGR6GU\'></iframe><br> Can\'t wait to see the new series of Silicon Valley, it\'s going to be absolutely hilarious. ', 'spencer_james', 'none', '2018-03-31 13:44:48', 'no', 'no', 1, ''),
(11, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/TO9d16c2XRM\'  ></iframe><br> Remember Barack Obama\'s funny White House Correspondents dinner speech. ', 'spencer_james', 'none', '2018-03-31 13:49:50', 'no', 'no', 2, ''),
(12, 'Has anyone seen the news lately?', 'spencer_james', 'none', '2018-03-31 13:52:20', 'no', 'no', 0, ''),
(13, 'Hi guys, this is my first time using Social Group and I think it\'s awesome. ', 'josh_bowers', 'none', '2018-03-31 13:54:23', 'no', 'no', 1, ''),
(14, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/po_imzjfuYc\'></iframe><br>What do you guys think of Lee Mack\'s surprising car collection?', 'josh_bowers', 'none', '2018-03-31 14:02:55', 'no', 'no', 1, ''),
(15, 'I can\'t wait to go Venice this summer.', 'cali_person', 'none', '2018-03-31 14:05:55', 'no', 'no', 1, 'assets/images/posts/5abf87b323893venice.jpg'),
(16, 'Does anyone know of a good restaurant in Central London? ', 'cali_person', 'none', '2018-03-31 14:08:46', 'no', 'no', 0, ''),
(17, 'I think this McLaren P1 is better than the LaFerrari. ', 'andre_hays', 'none', '2018-03-31 14:13:11', 'no', 'no', 1, 'assets/images/posts/5abf8967e2bdcmclarenp1.jpg'),
(18, 'Why do famous people get things for free if theyâ€™re the ones that can afford it?', 'james_morrisons', 'none', '2018-03-31 14:17:06', 'no', 'no', 1, ''),
(19, 'This Italian food looks delicious.', 'james_morrisons', 'none', '2018-03-31 14:23:32', 'no', 'no', 1, 'assets/images/posts/5abf8bd4e6981italianfoods.jpg'),
(20, 'Look at this awesome skyscraper. ', 'danyl_lovell', 'none', '2018-03-31 14:26:20', 'no', 'no', 0, 'assets/images/posts/5abf8c7c8ed8eskyscraper.jpg'),
(21, 'Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.', 'kane_ewing', 'none', '2018-03-31 14:28:12', 'no', 'no', 0, ''),
(22, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/Q0CbN8sfihY\'></iframe><br>', 'kane_ewing', 'none', '2018-03-31 14:29:29', 'no', 'no', 2, ''),
(23, 'Anyone doing anything interesting this weekend? ', 'jannat_sweeney', 'none', '2018-03-31 14:31:08', 'no', 'no', 0, ''),
(24, 'Anthony Joshua Vs Joseph Parker fight is going to awesome to watch. ', 'shakira_mckenna', 'none', '2018-03-31 14:34:25', 'no', 'no', 1, 'assets/images/posts/5abf8e6116ad5antonyjoshua.jpg'),
(25, 'Start by doing what\'s necessary; then do what\'s possible and suddenly you are doing the impossible.', 'shaun_tillman', 'none', '2018-03-31 14:35:47', 'no', 'no', 0, ''),
(26, 'Happy New Year !!!', 'shaun_tillman', 'none', '2018-03-31 14:38:04', 'no', 'no', 0, 'assets/images/posts/5abf8f3c0f087happynewyear.JPG'),
(27, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/-owNlCmJA5M\'></iframe><br>', 'shaun_tillman', 'none', '2018-03-31 14:38:58', 'no', 'no', 0, ''),
(28, 'Just passed my driving test, I am going to buy my first car, any recommendations? ', 'theodore_cole', 'none', '2018-03-31 14:40:42', 'no', 'no', 0, ''),
(29, 'R.I.P. Stephen Hawking.', 'georgie_johnston', 'none', '2018-03-31 14:47:31', 'no', 'no', 0, 'assets/images/posts/5abf9173cc28bstephenhawking.jpg'),
(30, 'Start where you are. Use what you have. Do what you can.', 'leia_santana', 'none', '2018-03-31 14:49:21', 'no', 'no', 0, ''),
(31, 'I will be visiting London this weekend, does anyone know of any activities to do or places to go sightseeing?', 'leia_santana', 'none', '2018-03-31 14:51:24', 'no', 'no', 1, 'assets/images/posts/5abf925ca7bb6londonskyline.jpg'),
(32, 'Believe you can and you\'re halfway there.', 'euan_huffman', 'none', '2018-03-31 14:52:20', 'no', 'no', 0, ''),
(33, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/8ndhidEmUbI\'></iframe><br>', 'euan_huffman', 'none', '2018-03-31 14:53:20', 'no', 'no', 0, ''),
(34, 'Happiness is not something ready-made. It comes from your own actions.', 'pascal_lambert', 'none', '2018-03-31 14:55:36', 'no', 'no', 2, ''),
(35, 'Anyone going to the Arsenal match this week? ', 'jessica_welsh', 'none', '2018-03-31 14:58:51', 'no', 'no', 0, ''),
(36, 'Hi guys, I just joined Social Group. ', 'amy_avila', 'none', '2018-03-31 15:06:12', 'no', 'no', 1, ''),
(37, 'Hi guys.', 'casper_sinclair', 'none', '2018-03-31 15:11:46', 'no', 'no', 0, ''),
(38, 'Hi, guys I have joined Social Group.', 'kesava_uthaya-kumaran', 'none', '2018-03-31 19:15:43', 'no', 'yes', 0, ''),
(44, 'https://www.youtube.com/results?search_query=commuter+trailer', 'kesava_uthaya-kumaran', 'none', '2018-03-31 19:20:02', 'no', 'yes', 0, ''),
(45, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/g-F3A9n9BLg\'></iframe><br>', 'kesava_uthaya-kumaran', 'none', '2018-03-31 19:21:07', 'no', 'yes', 0, ''),
(46, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/g-F3A9n9BLg\'></iframe><br>', 'kesava_uthaya-kumaran', 'none', '2018-03-31 19:21:23', 'no', 'yes', 0, ''),
(47, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/g-F3A9n9BLg\'></iframe><br>', 'kesava_uthaya-kumaran', 'none', '2018-03-31 19:21:28', 'no', 'yes', 0, ''),
(48, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/g-F3A9n9BLg\'></iframe><br>', 'kesava_uthaya-kumaran', 'none', '2018-03-31 19:21:32', 'no', 'yes', 0, ''),
(49, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/aDshY43Ol2U\'></iframe><br>', 'kesava_uthaya-kumaran', 'none', '2018-03-31 19:22:43', 'no', 'yes', 0, ''),
(50, 'Look at this scenic image of a lake.', 'kesava_uthaya-kumaran', 'none', '2018-03-31 19:26:45', 'no', 'yes', 2, 'assets/images/posts/5abfd2e58ccedscenic.jpeg'),
(51, 'Hi, guys this is my first post.', 'kesava_uthaya-kumaran', 'none', '2018-03-31 20:37:27', 'no', 'yes', 0, ''),
(52, 'Hi, guys this is my first post.', 'kesava_uthaya-kumaran', 'none', '2018-03-31 20:38:06', 'no', 'yes', 0, ''),
(53, 'Hi, guys this is my first post.', 'kesava_uthaya-kumaran', 'none', '2018-03-31 20:39:21', 'no', 'yes', 0, ''),
(54, 'Hi, guys this is my first post.', 'kesava_uthaya-kumaran', 'none', '2018-03-31 20:41:49', 'no', 'yes', 0, ''),
(55, 'picture of lake', 'kesava_uthaya-kumaran', 'none', '2018-03-31 20:42:06', 'no', 'yes', 0, 'assets/images/posts/5abfe48e0bd78Pontet Lake.jpg'),
(56, 'youtube.com', 'kesava_uthaya-kumaran', 'none', '2018-03-31 20:42:34', 'no', 'yes', 0, ''),
(57, 'youtube.com', 'kesava_uthaya-kumaran', 'none', '2018-03-31 20:42:38', 'no', 'yes', 0, ''),
(58, 'Hi this is my first post ', 'kesava_uthaya-kumaran', 'none', '2018-03-31 20:53:22', 'no', 'yes', 0, ''),
(59, 'lake', 'kesava_uthaya-kumaran', 'none', '2018-03-31 20:53:52', 'no', 'yes', 0, 'assets/images/posts/5abfe750f186bPontet Lake.jpg'),
(60, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/Q0CbN8sfihY\'></iframe><br>', 'kesava_uthaya-kumaran', 'none', '2018-03-31 20:53:58', 'no', 'yes', 0, ''),
(61, 'Hi, this is my first post.', 'kesava_uthaya-kumaran', 'none', '2018-03-31 21:09:07', 'no', 'no', 1, ''),
(62, 'lake', 'kesava_uthaya-kumaran', 'none', '2018-03-31 21:09:33', 'no', 'no', 1, 'assets/images/posts/5abfeafd3e3bePontet Lake.jpg'),
(63, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/Q0CbN8sfihY\'></iframe><br>', 'kesava_uthaya-kumaran', 'none', '2018-03-31 21:09:46', 'no', 'no', 2, ''),
(64, 'hi this my second post', 'kesava_uthaya-kumaran', 'none', '2018-03-31 21:26:03', 'no', 'no', 0, ''),
(65, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/Q0CbN8sfihY\'></iframe><br>', 'kesava_uthaya-kumaran', 'none', '2018-03-31 21:26:10', 'no', 'no', 0, ''),
(66, 'lake', 'kesava_uthaya-kumaran', 'none', '2018-03-31 21:26:19', 'no', 'no', 1, 'assets/images/posts/5abfeeebeacf3Pontet Lake.jpg'),
(67, 'Anyone wants to go shopping in the city? ', 'reeva_cooper', 'none', '2018-04-03 11:29:16', 'no', 'no', 0, ''),
(68, 'Hi guys.', 'kesava_uthaya-kumaran', 'none', '2018-04-18 22:45:27', 'no', 'yes', 0, ''),
(69, 'Hi guys.', 'kesava_uthaya-kumaran', 'none', '2018-04-18 22:45:38', 'no', 'yes', 0, ''),
(70, 'Hi guys how are you?', 'kesava_uthaya-kumaran', 'none', '2018-04-19 00:01:20', 'no', 'no', 0, ''),
(71, 'Hi guys how are you?', 'kesava_uthaya-kumaran', 'none', '2018-04-19 00:01:36', 'no', 'yes', 0, ''),
(72, '', 'kesava_uthaya-kumaran', 'none', '2018-04-19 00:07:10', 'no', 'yes', 0, 'assets/images/posts/5ad7cf9e5ee05Pontet Lake.jpg'),
(73, 'What a nice weather. ', 'kesava_uthaya-kumaran', 'none', '2018-04-19 17:27:03', 'no', 'no', 0, ''),
(74, 'hi guys how are you?', 'andre_hays', 'none', '2018-04-19 18:33:14', 'no', 'yes', 0, ''),
(75, 'Hi guys', 'andre_hays', 'none', '2018-04-19 18:40:56', 'no', 'yes', 1, ''),
(76, 'hi guys ', 'andre_hays', 'none', '2018-04-19 18:50:04', 'no', 'yes', 0, ''),
(77, 'hi guys ', 'andre_hays', 'none', '2018-04-19 18:50:11', 'no', 'yes', 0, ''),
(78, 'hi guys ', 'andre_hays', 'none', '2018-04-19 18:50:18', 'no', 'yes', 0, ''),
(79, 'hi guys ', 'andre_hays', 'none', '2018-04-19 18:50:27', 'no', 'yes', 0, ''),
(80, 'hi guys ', 'andre_hays', 'none', '2018-04-19 18:50:33', 'no', 'yes', 0, ''),
(81, 'hi guys ', 'andre_hays', 'none', '2018-04-19 18:50:39', 'no', 'yes', 0, ''),
(82, 'hi guys', 'andre_hays', 'none', '2018-04-19 18:54:23', 'no', 'no', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`id`, `title`, `hits`) VALUES
(1, 'Lake', 8),
(2, 'Panther', 1),
(3, 'Movie', 1),
(4, 'Puppy', 1),
(5, 'Walking', 1),
(6, 'Ferrari', 1),
(7, 'News', 1),
(8, 'Summer', 1),
(9, 'Restaurant', 1),
(10, 'London', 2),
(11, 'McLaren', 1),
(12, 'LaFerrari', 1),
(13, 'Italian', 1),
(14, 'Food', 1),
(15, 'Skyscraper', 1),
(16, 'Anthony', 1),
(17, 'Joshua', 1),
(18, 'Joseph', 1),
(19, 'Parker', 1),
(20, 'Fight', 1),
(21, 'Car', 1),
(22, 'Stephen', 1),
(23, 'Hawking', 1),
(24, 'Happiness', 1),
(25, 'Arsenal', 1),
(27, 'Joined', 1),
(28, 'Social', 1),
(29, 'Look', 1),
(30, 'Scenic', 1),
(31, 'Image', 1),
(33, 'Picture', 1),
(34, 'Shopping', 1),
(35, 'City', 1),
(36, 'Nice', 1),
(37, 'Weather', 1),
(38, 'Guys', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Casper', 'Sinclair', 'casper_sinclair', 'Casper@hotmail.co.uk', '1c0a7eb14b455182c9cef24336fdbf62', '2018-02-25', 'assets/images/profile_pics/casper_sinclair4f3f3cbd99ca3313517271f2b04683f0n.jpeg', 1, 0, 'no', ',josh_bowers,shaun_tillman,andre_hays,kesava_uthaya-kumaran,'),
(2, 'Santino', 'Reed', 'santino_reed', 'Santino@hotmail.co.uk', 'dd81930e8bd2d80716b74c21629e1431', '2018-02-23', 'assets/images/profile_pics/santino_reed473c13840ceda1bc2e503d0495863e22n.jpeg', 4, 5, 'no', ',andre_hays,james_morrisons'),
(3, 'Spencer', 'James', 'spencer_james', 'Spencer@hotmail.co.uk', '28833baa6a576b5013c33c7c4ed5065d', '2018-02-13', 'assets/images/profile_pics/defaults/purple_default.png', 3, 3, 'no', ',georgie_johnston,'),
(4, 'Josh', 'Bowers', 'josh_bowers', 'Josh@hotmail.co.uk', '15cc9adbd6f9f5cb71a746556bd37aaf', '2018-02-12', 'assets/images/profile_pics/defaults/blue_default.png', 3, 2, 'no', ',casper_sinclair, danyl_lovell,shakira_mckenna,kesava_uthaya-kumaran,'),
(5, 'Cali', 'Person', 'cali_person', 'Cali@hotmail.co.uk', 'ba96238c01f1baf263d98f53db7432a0', '2018-02-09', 'assets/images/profile_pics/cali_person9a90990fa6324cdaa8bb4290aeaa9790n.jpeg', 2, 1, 'no', ',shaun_tillman,kesava_uthaya-kumaran,'),
(6, 'Andre', 'Hays', 'andre_hays', 'Andre@hotmail.co.uk', 'e1754f1ee201a9d4886b358546a955f6', '2018-02-04', 'assets/images/profile_pics/defaults/orange_default.png', 10, 2, 'no', ',santino_reed, theodore_cole,andre_hays,shakira_mckenna,casper_sinclair, kesava_uthaya-kumaran,kesava_uthaya-kumaran,'),
(7, 'James', 'Morrisons', 'james_morrisons', 'James@hotmail.co.uk', '5721c634b6c516e6b87417f1ca775be5', '2018-01-01', 'assets/images/profile_pics/james_morrisonsec3ea80ed3b9ea17ba3f20984da1c1d5n.jpeg', 2, 2, 'no', ',shaun_tillman,theodore_cole,danyl_lovell'),
(8, 'Danyl', 'Lovell', 'danyl_lovell', 'Danyl@hotmail.co.uk', '2391a391a44aa0a8ff6e33824a47a3d5', '2018-02-18', 'assets/images/profile_pics/defaults/yellow_default.png', 1, 0, 'no', ',josh_bowers,james_morrisons,'),
(9, 'Kane', 'Ewing', 'kane_ewing', 'Kane@hotmail.co.uk', '67395eaa8f844524001b1f902d81d44d', '2018-02-17', 'assets/images/profile_pics/defaults/green_default.png', 2, 2, 'no', ',jannat_sweeney,shakira_mckenna,georgie_johnston,'),
(10, 'Jannat', 'Sweeney', 'jannat_sweeney', 'Jannat@hotmail.co.uk', 'd423c71a245263429f632fc4d16cd287', '2018-02-27', 'assets/images/profile_pics/defaults/red_default.png', 1, 0, 'no', ',kane_ewing,'),
(11, 'Shakira', 'Mckenna', 'shakira_mckenna', 'Shakira@hotmail.co.uk', '13c14e0d531aa2134136c784262c0fe6', '2018-02-20', 'assets/images/profile_pics/shakira_mckenna092ed58c9a0a0cb432e161574f948ea0n.jpeg', 1, 1, 'no', ',kane_ewing,josh_bowers,andre_hays,'),
(12, 'Shaun', 'Tillman', 'shaun_tillman', 'Shaun@hotmail.co.uk', '27182734ed97142d35a15ec526f81679', '2018-03-01', 'assets/images/profile_pics/defaults/blue_default.png', 3, 0, 'no', ',cali_person,casper_sinclair,'),
(13, 'Theodore', 'Cole', 'theodore_cole', 'Theodore@hotmail.co.uk', '1eb2a1ba926652da72b955a930945911', '2018-03-05', 'assets/images/profile_pics/defaults/red_default.png', 1, 0, 'no', ',andre_hays,james_morrisons, '),
(14, 'Georgie', 'Johnston', 'georgie_johnston', 'Georgie@hotmail.co.uk', 'b8c2b32a6cf43862f89a932fa9c66899', '2018-03-07', 'assets/images/profile_pics/georgie_johnston9da303b7033549a8f173e8aee40f00bcn.jpeg', 1, 0, 'no', ',spencer_james,kane_ewing,'),
(15, 'Leia', 'Santana', 'leia_santana', 'Leia@hotmail.co.uk', '42fe754685838551b38ee2a908b2d759', '2018-03-09', 'assets/images/profile_pics/leia_santana43d834b5761a384e931b8ac58776fb6cn.jpeg', 2, 1, 'no', ',euan_huffman,'),
(16, 'Euan', 'Huffman', 'euan_huffman', 'Euan@hotmail.co.uk', '3d86abd7bd0c24d3a98f6936b50eaa5e', '2018-03-18', 'assets/images/profile_pics/defaults/yellow_default.png', 2, 0, 'no', ',leia_santana,pascal_lambert'),
(17, 'Pascal', 'Lambert', 'pascal_lambert', 'Pascal@hotmail.co.uk', '2f7634b7f260d9361e7d01b3a75b1089', '2018-03-12', 'assets/images/profile_pics/defaults/purple_default.png', 1, 2, 'no', ',reeva_cooper,jessica_welsh,'),
(18, 'Jessica', 'Welsh', 'jessica_welsh', 'Jessica@hotmail.co.uk', 'f5f2fba03d8672063ac65118ca342330', '2018-03-21', 'assets/images/profile_pics/jessica_welsh7cd7a121fbee3e749b47d0978e9b9a7dn.jpeg', 1, 0, 'no', ',pascal_lambert,'),
(19, 'Amy', 'Avila', 'amy_avila', 'Amy@hotmail.co.uk', 'a8aeb8af47fda42917ac7be2a66baa7b', '2018-03-14', 'assets/images/profile_pics/amy_avila30c63d771eb9ff4b76ec08f91182a213n.jpeg', 1, 1, 'no', ',reeva_cooper, kesava_uthaya-kumaran,'),
(20, 'Reeva', 'Cooper', 'reeva_cooper', 'Reeva@hotmail.co.uk', 'a92dfab398d736630c8b4e7d743dbb83', '2018-03-23', 'assets/images/profile_pics/reeva_cooperdceb7fce56a3c3a701c342426c008301n.jpeg', 6, 10, 'no', ',pascal_lambert,amy_avila,'),
(31, 'Kesava', 'Uthaya-kumaran', 'kesava_uthaya-kumaran', 'kesava@live.co.uk', 'adf8c8cce74612946038d6da6f41cd14', '2018-03-31', 'assets/images/profile_pics/defaults/yellow_default.png', 12, 3, 'no', ',cali_person,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fakes`
--
ALTER TABLE `fakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `trends`
--
ALTER TABLE `trends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
