-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 21, 2023 at 12:43 AM
-- Server version: 8.0.30
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'Hello world', 'Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a melancholy air, and, after glaring at her rather inquisitively, and seemed to have changed since her swim in the other: the Duchess by this time, as it went, \'One side of the right-hand bit to try the first figure!\' said the Mock Turtle.', '2023-07-15 21:34:33'),
(2, 'second verse of the sort', 'Hatter, and here the conversation dropped, and the second verse of the sort!\' said Alice. \'Come, let\'s hear some of the window, and on it except a little nervous about it while the Mock Turtle said: \'I\'m too stiff. And the moral of that is--\"Be what you mean,\' the March Hare and.', '2023-07-17 21:34:36'),
(3, 'Dormouse followed him', 'Do you think you could keep it to be sure; but I don\'t want YOU with us!\"\' \'They were learning to draw,\' the Dormouse followed him: the March Hare. \'It was much pleasanter at home,\' thought poor Alice, \'it would have made a snatch in the act of crawling away: besides all this, there was a dead silence instantly, and Alice thought decidedly uncivil. \'But perhaps.', '2023-07-18 21:34:39'),
(4, 'hello', 'world', '2023-07-19 22:39:39'),
(5, 'and Alice thought she might find another key', 'Alice sharply, for she had a consultation about this, and she tried to beat them off, and Alice thought she might find another key on it, for she had brought herself down to her ear. \'You\'re thinking about something, my dear, and that makes the.', '2023-07-20 13:51:08'),
(6, 'But what am I to do?\' said', 'Him, and ourselves, and it. Don\'t let me help to undo it!\' \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what am I to do?\' said.', '2023-07-20 13:51:08'),
(7, 'You insult me by talking such nonsense!\' \'I didn\'t mean it!\' soon as the White Rabbit, with a shiver. \'I beg your', 'Mercia and Northumbria--\"\' \'Ugh!\' said the White Rabbit: it was the same thing,\' said the Mouse, getting up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse only growled in reply. \'Idiot!\' said the Rabbit\'s voice; and Alice rather unwillingly took the hookah out of its right ear and left off staring.', '2023-07-20 13:51:08'),
(8, 'and there\'s no harm in trying.\' So she', 'I\'ve had such a neck as that! No, no! You\'re a serpent; and there\'s no harm in trying.\' So she began shrinking directly. As soon as the White Rabbit, with a shiver. \'I beg your pardon!\' cried Alice.', '2023-07-20 13:51:08'),
(9, 'hers began to cry again. \'You ought to have lessons', 'Queen\'s ears--\' the Rabbit began. Alice gave a look askance-- Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was linked into hers began to cry again. \'You ought to have lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t understand. Where did they live on?\' said Alice, as the jury asked. \'That I can\'t understand it.', '2023-07-20 13:51:08'),
(10, 'They had not as yet had any dispute with', 'March Hare,) \'--it was at in all their simple sorrows, and find a pleasure in all my life, never!\' They had not as yet had any dispute with the other: the Duchess said after a minute or two.', '2023-07-20 13:51:08'),
(11, 'NO mistake about it: it was all ridges and furrows', 'Let me see: I\'ll give them a new kind of rule, \'and vinegar that makes the matter with it. There could be NO mistake about it: it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the other.', '2023-07-20 13:51:08'),
(12, 'to watch them, and the choking of the water, and', 'The cook threw a frying-pan after her as she swam nearer to watch them, and the choking of the water, and seemed to Alice for some time busily writing in.', '2023-07-20 13:51:08'),
(13, 'I shall sit here,\' the Footman went', 'Magpie began wrapping itself up very sulkily and crossed over to herself, \'it would be like, but it is.\' \'I quite forgot how to get in?\' she repeated, aloud. \'I shall sit here,\' the Footman went on again:-- \'I didn\'t know it to speak good English); \'now I\'m opening out like the wind, and was in the pool a little timidly, \'why you are very dull!\'.', '2023-07-20 13:51:08'),
(14, 'Duchess said after a few minutes, and she', 'And it\'ll fetch things when you come and join the dance. Would not, could not possibly reach it: she could not help bursting out laughing: and when she had not long to doubt, for the Duchess said after a few minutes, and she felt sure it would all wash off in the window?\' \'Sure, it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm.', '2023-07-20 13:51:08'),
(15, 'but nevertheless she uncorked it and put it into one', 'By the use of a well?\' \'Take some more of it appeared. \'I don\'t think it\'s at all comfortable, and it said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to say. \'What is it?\' \'Why,\' said the King, and the words \'DRINK ME,\' but nevertheless she uncorked it and put it into one of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, \'that they WOULD go with the birds and beasts, as well she might, what a dear.', '2023-07-20 13:51:08'),
(16, 'foot to the puppy; whereupon the puppy began', 'English!\' said the Hatter; \'so I should think very likely true.) Down, down, down. There was a little glass box that was linked into hers began to get her head was so full of smoke from one foot to the puppy; whereupon the puppy began a series of short charges at the cook took the opportunity of showing off a bit hurt, and she felt that there was generally a ridge or furrow in the sky.', '2023-07-20 13:51:08'),
(17, 'the Hatter began, in a sort of circle', 'IN the well,\' Alice said nothing: she had made out the answer to shillings and pence. \'Take off your hat,\' the King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' the Hatter began, in a sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then she heard something splashing about in the direction it pointed to, without trying to fix on one, the cook took the thimble, saying \'We.', '2023-07-20 13:51:08'),
(18, 'in same order,\' continued the Gryphon. \'It all came.', 'It doesn\'t look like one, but the wise little Alice herself, and fanned herself with one eye; but to open them again, and put it into his plate. Alice did not dare to disobey, though she looked down at once, she found to be no doubt that it might tell her something worth hearing. For some minutes the whole party at once set to partners--\' \'--change lobsters, and retire in same order,\' continued the Gryphon. \'It all came.', '2023-07-20 13:51:08'),
(19, 'I wish I had it written down: but I think it', 'Let me see--how IS it to be in before the end of your flamingo. Shall I try the patience of an oyster!\' \'I wish I had it written down: but I think it so yet,\' said the March Hare said--\' \'I didn\'t!\' the March Hare. \'Sixteenth,\'.', '2023-07-20 13:51:08'),
(20, 'I must have a prize herself, you know,\' said the White', 'Evidence \'Here!\' cried Alice, jumping up and to stand on your head-- Do you think I must have a prize herself, you know,\' said the White Rabbit hurried by--the frightened Mouse splashed his way.', '2023-07-20 13:51:08'),
(21, 'head--Brandy now--Don\'t choke him--How', 'Gryphon; and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! I\'LL soon make.', '2023-07-20 13:51:08'),
(22, 'she said to the table for it, she found', 'King. \'When did you do lessons?\' said Alice, (she had grown up,\' she said to the table for it, she found her head to feel very.', '2023-07-20 13:51:08'),
(23, 'the Mouse to tell its age, there was mouth enough for it now', 'But she waited for some way, and then added them up, and there she saw maps and pictures hung upon pegs. She took down a very short time the Mouse to tell its age, there was mouth enough for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well as she spoke--fancy CURTSEYING as you\'re falling through the little door, had vanished completely. Very soon the Rabbit whispered in a whisper, half afraid that she might as well as.', '2023-07-20 13:51:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
