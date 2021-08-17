-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 12:41 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie.lt`
--

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genre_id` int(11) UNSIGNED NOT NULL,
  `genre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `genre_id`, `genre`) VALUES
(1, 1, 'Action'),
(2, 2, 'Drama'),
(3, 3, 'Crime'),
(4, 4, 'Thriller'),
(5, 5, 'Adventure'),
(6, 6, 'Mystery'),
(7, 7, 'Comedy'),
(8, 8, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `moviedb`
--

CREATE TABLE `moviedb` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type_id` int(2) UNSIGNED NOT NULL,
  `genre_id` int(2) UNSIGNED NOT NULL,
  `years` year(4) NOT NULL,
  `time` varchar(10) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `description` text NOT NULL,
  `background` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moviedb`
--

INSERT INTO `moviedb` (`id`, `name`, `type_id`, `genre_id`, `years`, `time`, `rating`, `description`, `background`) VALUES
(1, 'The Dark Knight', 1, 1, 2008, '2h 32min', '9.0', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'knight.jpg'),
(2, 'The Shawshank Redemption', 1, 2, 1994, '2h 22min', '9.3', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'showshank.jpg'),
(3, 'The Godfather', 1, 3, 1972, '2h 55min', '9.2', 'An organized crime dynasty\'s aging patriarch transfers control of his clandestine empire to his reluctant son.', 'godfather.jpg'),
(4, '12 Angry Men', 1, 3, 1957, '1h 36min', '9.0', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', '12angry.jpg'),
(5, 'The Lord of the Rings: The Return of the King', 1, 1, 2003, '3h 21min', '8.9', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'ring.jpg'),
(6, 'Fight Club', 1, 2, 1999, '2h 19min', '8.8', 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.', 'fightclub.jpg'),
(7, 'Gisaengchung', 1, 4, 2019, '2h 12min', '8.6', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', 'gisaengchung.jpg'),
(8, 'The Silence of the Lambs', 1, 4, 1991, '1h 58min', '8.6', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 'lambs.jpg'),
(9, 'The Green Mile', 1, 2, 1999, '3h 9min', '8.6', 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.', 'mile.jpg'),
(10, 'Breaking Bad', 2, 3, 2008, '49min', '9.4', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.', 'breakingbad.jpg'),
(11, 'Chernobyl', 2, 2, 2019, '1h 5min', '9.4', 'In April 1986, an explosion at the Chernobyl nuclear power plant in the Union of Soviet Socialist Republics becomes one of the world\'s worst man-made catastrophes.', 'chernobyl.jpg'),
(12, 'The Wire', 2, 3, 2002, '59min', '9.3', 'The Baltimore drug scene, as seen through the eyes of drug dealers and law enforcement.', 'wire.jpg'),
(13, 'Game of Thrones', 2, 5, 2011, '57min', '9.2', 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', 'got.jpg'),
(14, 'The Sopranos', 2, 3, 1999, '55min', '9.2', 'New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, leading him to seek professional psychiatric counseling.', 'sopranos.jpg'),
(15, 'True Detective', 2, 6, 2014, '55min', '8.9', 'Seasonal anthology series in which police investigations unearth the personal and professional secrets of those involved, both within and outside the law.', 'real.jpg'),
(16, 'The Office', 2, 7, 2005, '22min', '8.9', 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', 'office.jpg'),
(17, 'Friends', 2, 7, 1994, '22min', '8.9', 'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.', 'friends.jpg'),
(18, 'Inception', 1, 5, 2010, '2h 28min', '8.8', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'inception.jpg'),
(19, 'Interstellar', 1, 5, 2014, '2h 49min', '8.6', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 'interstellar.jpg'),
(20, 'Star Wars', 1, 5, 1977, '2h 1min', '8.6', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 'starwars.jpg'),
(21, 'Avatar', 1, 5, 2009, '2h 42min', '7.8', 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 'avatar.jpg'),
(22, 'Guardians of the Galaxy', 1, 5, 2014, '2h 1min', '8.0', 'A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe.', 'gotg.jpg'),
(23, 'The Avengers', 1, 5, 2012, '2h 23min', '8.0', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 'avengers.jpg'),
(24, 'Se7en', 1, 6, 1995, '2h 7min', '8.6', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', 'se7en.jpg'),
(25, 'The Prestige', 1, 6, 2006, '2h 10min', '8.5', 'After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.', 'prestige.jpg'),
(26, 'Memento', 1, 6, 2000, '1h 53min', '8.4', 'A man with short-term memory loss attempts to track down his wife\'s murderer.', 'memento.jpg'),
(27, 'Shutter Island', 1, 6, 2010, '2h 18min', '8.2', 'In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.', 'shutter.jpg'),
(28, 'Gone Girl', 1, 6, 2014, '2h 29min', '8.1', 'With his wife\'s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it\'s suspected that he may not be innocent.', 'gonegirl.jpg'),
(29, 'Prisoners', 1, 6, 2013, '2h 33min', '8.1', 'When Keller Dover\'s daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.', 'prisoners.jpg'),
(30, 'The Sixth Sense', 1, 6, 1999, '1h 47min', '8.1', 'A boy who communicates with spirits seeks the help of a disheartened child psychologist.', 'tss.jpg'),
(31, 'The Interview', 1, 7, 2014, '1h 52min', '6.5', 'Dave Skylark and his producer Aaron Rapaport run the celebrity tabloid show \"Skylark Tonight\". When they land an interview with a surprise fan, North Korean dictator Jong-Un Kim, they are recruited by the CIA to assassinate him.', 'theinterview.jpg'),
(32, 'The Other Guys', 1, 7, 2010, '1h 47min', '6.6', 'Two mismatched New York City detectives seize an opportunity to step up like the city\'s top cops, whom they idolize, only things don\'t quite go as planned.', 'theotherguys.jpg'),
(33, 'We\'re the Millers', 1, 7, 2013, '1h 50min', '7.0', 'A veteran pot dealer creates a fake family as part of his plan to move a huge shipment of weed into the U.S. from Mexico.', 'millers.jpg'),
(34, '21 Jump Street', 1, 7, 2012, '1h 49min', '7.2', 'A pair of underachieving cops are sent back to a local high school to blend in and bring down a synthetic drug ring.', '21js.jpg'),
(35, 'Deadpool', 1, 7, 2016, '1h 48min', '8.0', 'A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.', 'deadpool.jpg'),
(36, 'War Dogs', 1, 7, 2016, '1h 54min', '7.1', 'Loosely based on the true story of two young men, David Packouz and Efraim Diveroli, who won a three hundred million dollar contract from the Pentagon to arm America\'s allies in Afghanistan.', 'wardogs.jpg'),
(37, 'Titanic', 1, 8, 1997, '3h 14min', '7.8', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 'titanic.jpg'),
(38, 'The Curious Case of Benjamin Button', 1, 8, 2008, '2h 46min', '7.8', 'Tells the story of Benjamin Button, a man who starts aging backwards with consequences.', 'benjaminbutton.jpg'),
(39, 'La La Land', 1, 8, 2016, '2h 8min', '8.0', 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.', 'lalaland.jpg'),
(40, 'The Theory of Everything', 1, 8, 2014, '2h 3min', '7.7', 'A look at the relationship between the famous physicist Stephen Hawking and his wife.', 'theoryofeverything.jpg'),
(41, 'A Star Is Born', 1, 8, 2018, '2h 16min', '7.6', 'A musician helps a young singer find fame as age and alcoholism send his own career into a downward spiral.', 'starisborn.jpg'),
(42, 'Gladiator', 1, 1, 2000, '2h 35min', '8.5', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'gladiator.jpg'),
(43, 'Pirates of the Caribbean', 1, 1, 2003, '2h 23min', '8.0', 'Blacksmith Will Turner teams up with eccentric pirate \"Captain\" Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead.', 'pirates .jpg'),
(44, 'John Wick', 1, 1, 2014, '1h 41min', '7.4', 'An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him.', 'johnwick.jpg'),
(45, 'Wrath of Man', 1, 1, 2021, '1h 59min', '7.2', 'The plot follows H, a cold and mysterious character working at a cash truck company responsible for moving hundreds of millions of dollars around Los Angeles each week.', 'wrathofman.jpg'),
(46, 'Schindler\'s List', 1, 2, 1993, '3h 15min', '8.9', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', 'schindlerslist.jpg'),
(47, 'Saving Private Ryan', 1, 2, 1998, '2h 49min', '8.6', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', 'savingprivateryan.jpg'),
(48, 'Whiplash', 1, 2, 2014, '1h 46min', '8.5', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.', 'whiplash.jpg'),
(49, 'Intouchables', 1, 2, 2011, '1h 52min', '8.5', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', 'intouchables.jpg'),
(50, 'The Usual Suspects', 1, 3, 1995, '1h 46min', '8.5', 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.', 'theusualsuspects.jpg'),
(51, 'Reservoir Dogs', 1, 3, 1992, '1h 39min', '8.3', 'When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.', 'reservoirdogs.jpg'),
(52, 'Léon', 1, 3, 1994, '1h 50min', '8.5', 'Mathilda, a 12-year-old girl, is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin\'s trade.', 'léon.jpg'),
(53, 'Catch Me If You Can', 1, 3, 2002, '2h 21min', '8.1', 'Barely 21 yet, Frank is a skilled forger who has passed as a doctor, lawyer and pilot. FBI agent Carl becomes obsessed with tracking down the con man, who only revels in the pursuit.', 'catch.jpg'),
(54, 'Das Leben der Anderen', 1, 4, 2006, '2h 17min', '8.4', 'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.', 'daslebenderanderen.jpg'),
(55, 'El secreto de sus ojos', 1, 4, 2009, '2h 9min', '8.2', 'A retired legal counselor writes a novel hoping to find closure for one of his past unresolved homicide cases and for his unreciprocated love with his superior - both of which still haunt him decades later.', 'elsecretodesusojos.jpg'),
(56, 'Room', 1, 4, 2015, '1h 58min', '8.1', 'Held captive for 7 years in an enclosed space, a woman and her young son finally gain their freedom, allowing the boy to experience the outside world for the first time.', 'room.jpg'),
(57, 'Collateral', 1, 4, 2004, '2h 00min', '7.5', 'A cab driver finds himself the hostage of an engaging contract killer as he makes his rounds from hit to hit during one night in Los Angeles.', 'collateral.jpg'),
(58, 'La casa de papel', 2, 1, 2017, '1h 10min', '8.3', 'An unusual group of robbers attempt to carry out the most perfect robbery in Spanish history - stealing 2.4 billion euros from the Royal Mint of Spain.', 'lacasadepapel.jpg'),
(59, 'Daredevil', 2, 1, 2015, '54min', '8.6', 'A blind lawyer by day, vigilante by night. Matt Murdock fights the crime of New York as Daredevil.', 'daredevil.jpg'),
(60, 'Band of Brothers', 2, 1, 2001, '1h 30min', '9.4', 'The story of Easy Company of the U.S. Army 101st Airborne Division and their mission in World War II Europe, from Operation Overlord to V-J Day.', 'bandofbrothers.jpg'),
(61, 'Jack Ryan', 2, 1, 2018, '1h 01min', '8.1', 'An up-and-coming CIA analyst, Jack Ryan, is thrust into a dangerous field assignment as he uncovers a pattern in terrorist communication that launches him into the center of a dangerous gambit.', 'jackryan.jpg'),
(62, 'Gotham', 2, 1, 2014, '42min', '7.8', 'The story behind Detective James Gordon\'s rise to prominence in Gotham City in the years before Batman\'s arrival.', 'gotham.jpg'),
(63, 'The Walking Dead', 2, 2, 2010, '44min', '8.2', 'Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins and must lead a group of survivors to stay alive.', 'twd.jpg'),
(64, 'Stranger Things', 2, 2, 2016, '51min', '8.7', 'When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.', 'strangerthings.jpg'),
(65, 'Suits', 2, 2, 2011, '44min', '8.4', 'On the run from a drug deal gone bad, brilliant college dropout Mike Ross finds himself working with Harvey Specter, one of New York City\'s best lawyers.', 'suits.jpg'),
(66, 'The Crown', 2, 2, 2016, '58min', '8.6', 'Follows the political rivalries and romance of Queen Elizabeth II\'s reign and the events that shaped the second half of the twentieth century.', 'crown.jpg'),
(67, 'The 100', 2, 2, 2014, '43min', '7.6', 'Set ninety-seven years after a nuclear war has destroyed civilization, when a spaceship housing humanity\'s lone survivors sends one hundred juvenile delinquents back to Earth, in hopes of possibly re-populating the planet.', 'the100.jpg'),
(68, 'Blacklist', 2, 3, 2013, '43min', '8.0', 'A new FBI profiler, Elizabeth Keen, has her entire life uprooted when a mysterious criminal, Raymond Reddington, who has eluded capture for decades, turns himself in and insists on speaking only to her.', 'blacklist.jpg'),
(69, 'Dexter', 2, 3, 2006, '53min', '8.6', 'He\'s smart. He\'s lovable. He\'s Dexter Morgan, America\'s favorite serial killer, who spends his days solving crimes and nights committing them. Golden Globe winner Michael C. Hall stars in the hit SHOWTIME Original Series.', 'dexter.jpg'),
(70, 'Sherlock', 2, 3, 2010, '1h 28min', '9.1', 'A modern update finds the famous sleuth and his doctor partner solving crime in 21st century London.', 'sherlock.jpg'),
(71, 'Mr. Robot', 2, 4, 2015, '49min', '8.5', 'Elliot, a brilliant but highly unstable young cyber-security engineer and vigilante hacker, becomes a key figure in a complex game of global dominance when he and his shadowy allies try to take down the corrupt corporation he works for.', 'mrrobot.jpg'),
(72, 'Mindhunter', 2, 4, 2017, '1h 00min', '8.6', 'Set in the late 1970s, two FBI agents are tasked with interviewing serial killers to solve open cases.', 'mindhunter.jpg'),
(73, '13 Reasons Why', 2, 4, 2017, '1h 00min', '7.6', 'Follows teenager Clay Jensen, in his quest to uncover the story behind his classmate and crush, Hannah, and her decision to end her life.', '13reasons.jpg'),
(74, 'Tabu', 2, 4, 2017, '59min', '8.4', 'Adventurer James Keziah Delaney returns to London during the War of 1812 to rebuild his late father\'s shipping empire. However, both the government and his biggest competitor want his inheritance at any cost - even murder.', 'taboo.jpg'),
(75, 'Vikings', 2, 5, 2013, '44min', '8.5', 'Vikings transports us to the brutal and mysterious world of Ragnar Lothbrok, a Viking warrior and farmer who yearns to explore - and raid - the distant shores across the ocean.', 'wikings.jpg'),
(76, 'Lost', 2, 5, 2004, '44min', '8.3', 'The survivors of a plane crash are forced to work together in order to survive on a seemingly deserted tropical island.', 'lost.jpg'),
(77, 'Loki', 2, 5, 2021, '55min', '8.4', 'The mercurial villain Loki resumes his role as the God of Mischief in a new series that takes place after the events of “Avengers: Endgame.”', 'loki.jpg'),
(78, 'The Mandalorian', 2, 5, 2019, '40min', '8.8', 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.', 'themandalorian.jpg'),
(79, 'The Witcher', 2, 5, 2019, '1h 00min', '8.2', 'Geralt of Rivia, a solitary monster hunter, struggles to find his place in a world where people often prove more wicked than beasts.', 'thewitcher.jpg'),
(80, 'The Haunting of Hill House', 2, 6, 2018, '1h 33min', '8.6', 'Flashing between past and present, a fractured family confronts haunting memories of their old home and the terrifying events that drove them from it.', 'thehaunting.jpg'),
(81, 'Dark', 2, 6, 2017, '1h 00min', '8.8', 'A family saga with a supernatural twist, set in a German town, where the disappearance of two young children exposes the relationships among four families.', 'dark.jpg'),
(82, 'The Queen\'s Gambit', 2, 2, 2020, '1h 30min', '8.6', 'Orphaned at the tender age of nine, prodigious introvert Beth Harmon discovers and masters the game of chess in 1960s USA. But child stardom comes at a price.', 'queen.jpg'),
(83, 'The Night Of', 2, 6, 2016, '1h 33min', '8.5', 'After a night of partying with a woman he picked up, a man wakes up to find her stabbed to death and is charged with her murder.', 'thenightof.jpg'),
(84, 'Westworld', 2, 6, 2016, '1h 2min', '8.6', 'Set at the intersection of the near future and the reimagined past, explore a world in which every human appetite can be indulged without consequence.', 'westworld.jpg'),
(85, 'Modern Family', 2, 7, 2009, '22min', '8.4', 'Three different but related families face trials and tribulations in their own uniquely comedic ways.', 'modernfamily.jpg'),
(86, 'The Grand Tour', 2, 7, 2016, '1h 00min', '8.7', 'Follow Jeremy, Richard, and James, as they embark on an adventure across the globe, driving new and exciting automobiles from manufacturers all over the world.', 'thegrandtour.jpg'),
(87, 'Ted Lasso', 2, 7, 2020, '30min', '8.7', 'Follows an American football coach Ted Lasso who heads to the U.K. to manage a struggling London football team in the top flight of English football.', 'tedlasso.jpg'),
(88, 'How I Met Your Mother', 2, 7, 2005, '22min', '8.3', 'A father recounts to his children - through a series of flashbacks - the journey he and his four best friends took leading up to him meeting their mother.', 'howimetyourmother.jpg'),
(89, 'South Park', 2, 7, 1997, '22min', '8.7', 'Follows the misadventures of four irreverent grade-schoolers in the quiet, dysfunctional town of South Park, Colorado.', 'southpark.jpg'),
(90, 'The Vampire Diaries', 2, 8, 2009, '43min', '7.7', 'The lives, loves, dangers and disasters in the town, Mystic Falls, Virginia. Creatures of unspeakable horror lurk beneath this town as a teenage girl is suddenly torn between two vampire brothers.', 'thevampirediaries.jpg'),
(91, 'This Is Us', 2, 8, 2016, '45min', '8.7', 'A heartwarming and emotional story about a unique set of triplets, their struggles and their wonderful parents.', 'thisisus.jpg'),
(92, 'Virgin River', 2, 8, 2019, '44min', '7.4', 'Seeking a fresh start, nurse practitioner Melinda Monroe moves from Los Angeles to a remote Northern California town and is surprised by what and who she finds.', 'virginriver.jpg'),
(93, 'The Handmaid\'s Tale', 2, 8, 2010, '58min', '8.7', 'A chronicle of the lives of the British aristocratic Crawley family and their servants in the early twentieth century.', 'downtonabbey.jpg'),
(94, 'Outlander', 2, 8, 2014, '1h 4min', '8.4', 'An English combat nurse from 1945 is mysteriously swept back in time to 1743.', 'outlander.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `type_id`, `type`) VALUES
(1, 1, 'film'),
(2, 2, 'tv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID` (`genre_id`);

--
-- Indexes for table `moviedb`
--
ALTER TABLE `moviedb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Type ID` (`type_id`,`genre_id`),
  ADD KEY `Genre ID` (`genre_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Type_ID` (`type_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `moviedb`
--
ALTER TABLE `moviedb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `moviedb`
--
ALTER TABLE `moviedb`
  ADD CONSTRAINT `moviedb_ibfk_1` FOREIGN KEY (`Genre_ID`) REFERENCES `genre` (`Genre_ID`),
  ADD CONSTRAINT `moviedb_ibfk_2` FOREIGN KEY (`Type_ID`) REFERENCES `type` (`Type_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
