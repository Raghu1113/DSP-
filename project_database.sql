-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 12:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `healthcare_data`
--

CREATE TABLE `healthcare_data` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `health_history` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `healthcare_data`
--

INSERT INTO `healthcare_data` (`id`, `first_name`, `last_name`, `gender`, `age`, `weight`, `height`, `health_history`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Candace', 'Mooney', 0, 99, 191, 196, 'Stop future performance opportunity more feeling. Whose happen as set. While bad spend sound.\nLife public several political still main. Us fine surface he.'),
(4, 'Angela', 'Romero', 0, 52, 276, 150, 'Yeah get receive prove season some scene. Glass good forward player low.'),
(5, 'Mary', 'Miller', 0, 56, 229, 176, 'Little leg win reach treatment avoid. Able record reveal value make policy. Loss turn seat affect rate loss.\nTend whatever agency rate recently however history.'),
(6, 'Adriana', 'Butler', 0, 73, 266, 178, 'Memory site per example market box coach.\nCatch message choice thus learn image enjoy. Role approach company instead.'),
(7, 'Emily', 'Deleon', 0, 29, 293, 187, 'Treat where Republican group. Next lawyer thus become crime fund affect. Kind meeting really total population around reality.'),
(8, 'Colleen', 'Campbell', 0, 28, 101, 183, 'Page see join nation artist. Show lay ahead smile early leader media next. Next role want week final building begin.'),
(9, 'William', 'Glover', 0, 54, 210, 159, 'Machine western mean. Compare short town notice major measure. Wish shake standard religious year heart final.'),
(10, 'Leslie', 'Williams', 0, 74, 254, 178, 'Leg single threat. Whose side public brother issue season. System inside billion on trouble reflect.'),
(11, 'Courtney', 'Walker', 0, 95, 201, 182, 'Participant defense gun support run candidate same paper. Blue adult house professional part nearly mouth. Loss television talk game charge visit ready.'),
(12, 'Carl', 'Thompson', 0, 97, 213, 183, 'Into technology live address yes condition stop. Message bit evening rate them wide. Number lose local condition manager.'),
(13, 'Alexandra', 'Cannon', 0, 98, 211, 160, 'Wear which they deal cut ball then. Simply me front analysis though nice. Amount these try physical because.\nHit oil fire head fast. According film interview none.'),
(14, 'Edward', 'Hall', 0, 75, 201, 193, 'Main group list feel skill Republican traditional. Magazine can our throw those. Hand consider service citizen however visit stock. Movement no loss population blue threat hope discuss.'),
(15, 'Jessica', 'Christensen', 0, 27, 287, 169, 'Popular by material issue white husband. Ahead site seven chair generation surface.'),
(16, 'Frank', 'Underwood', 0, 71, 159, 163, 'Will six look future stand. Glass huge population wrong hand. Environment never star.\nRight nice hand leader begin. Nearly spring different simply.'),
(17, 'Karen', 'Reyes', 0, 31, 233, 188, 'History provide instead paper traditional attorney clearly. Other prevent career party may. Nearly four production choose capital type the.'),
(18, 'Molly', 'Brown', 0, 74, 231, 190, 'Leave bag dinner itself. Maybe focus point trade.\nIt former those cause inside. North wear thank role little discuss may.'),
(19, 'Emily', 'Lee', 0, 70, 162, 177, 'Various commercial win soon. Policy itself social push attention happen form.\nAnalysis once land official task law sometimes.'),
(20, 'Audrey', 'Morris', 0, 55, 156, 193, 'Quite building participant and keep enter environmental. Up change visit man project. Business beautiful practice.'),
(21, 'Alex', 'Smith', 0, 41, 289, 180, 'Book wind produce military operation ball.\nHalf social sit poor yeah keep way. State true foot nearly answer police include personal. Black fund live amount employee artist save.'),
(22, 'Casey', 'Le', 0, 74, 164, 189, 'Teach western its campaign seat behavior. Wall everybody claim analysis much. Arm head major power across peace news.\nLeave left test information. Generation them product clear need short.'),
(23, 'Nicholas', 'Yoder', 0, 67, 231, 188, 'Ok not not evidence. Campaign write hand ago building. Prevent computer hope day with.\nAdministration professor officer bed factor. Every develop including modern return.'),
(24, 'Amanda', 'Clark', 0, 60, 100, 155, 'If parent scene evening test population growth. Sport idea they necessary success represent with into. Include development organization cause lead.'),
(25, 'Glenn', 'King', 0, 23, 235, 182, 'Both win bed easy stay current against. Sell sure them oil piece.\nNo with buy medical save. Voice under back news new finally. Table large nothing pull project about exist.'),
(26, 'Bryan', 'Porter', 0, 99, 102, 179, 'Simple situation certainly region pressure the kid born. Pressure street court though course. Us check draw still set song decision.'),
(27, 'Joanna', 'Morgan', 0, 27, 175, 194, 'Agreement reveal positive identify economic among cold. Whose note sign technology medical. Scene teacher debate old price of tonight.\nSomebody drop course. History mind camera early six.'),
(28, 'Bryan', 'Taylor', 0, 61, 223, 195, 'Within fall campaign dark rate pay exist. Save we senior weight staff from onto. Low real ahead less wear just.\nLeft read compare even something weight position scene.'),
(29, 'Lisa', 'Foley', 0, 56, 145, 162, 'Friend financial more condition. Ten try suggest against. Safe chair smile bring herself.\nStrong many dark future here scientist artist. Election surface within admit set itself.'),
(30, 'Victoria', 'Sanchez', 0, 52, 263, 195, 'See guy visit. Feeling American mouth reveal network.\nOver certain with others forget rule. Beat particular but know.'),
(31, 'Rebecca', 'Austin', 0, 57, 194, 167, 'Three none whatever character. Summer experience away appear.\nDifference unit structure thousand. Right about dog baby.\nEasy that front. List meet good responsibility bag country position rise.'),
(32, 'Samuel', 'Church', 0, 72, 169, 173, 'Employee material start do wish tough. The beautiful follow feel forward still source.\nStay decade and claim born American. Wish tough where what.'),
(33, 'Austin', 'Serrano', 0, 84, 210, 165, 'Environmental score him than believe range often.\nHold special ask single white. Perform early bad reality blue effect window.'),
(34, 'Kimberly', 'Hanson', 0, 88, 189, 160, 'Just wait market artist. Fight wrong decade every over president. Situation cell bag deep.\nNature story within break.'),
(35, 'Patricia', 'Robinson', 0, 36, 113, 179, 'Affect indicate pattern have hit purpose. International speak deep discover represent adult ability than. Industry act free take owner that make color. Kid girl law song skin.'),
(36, 'Andres', 'Andrews', 0, 75, 144, 188, 'Ball figure maintain senior difficult minute. Popular carry bar fast we either need. Good trouble day level like. Practice play soon really relate sea maybe.'),
(37, 'Krista', 'Turner', 0, 42, 179, 179, 'Whom structure board better better east. Agency voice yet hot decide day. Perform find great material stuff next. Expert and to second general company learn natural.'),
(38, 'Joan', 'Lee', 0, 62, 292, 183, 'What approach inside middle reality. Decade your girl close everything.\nYear left ago radio politics coach. Suggest dark personal official involve. Like person other into world occur.'),
(39, 'Amy', 'Thompson', 0, 32, 249, 197, 'Board exist performance similar tonight TV cost. Respond fine white decade where pull. Clear early too tell man.'),
(40, 'Dale', 'Morales', 0, 61, 235, 155, 'Building kind discuss myself heart. These take far the chair.\nBig determine simple democratic until. Charge boy paper green political.'),
(41, 'Sandra', 'Carter', 0, 21, 202, 180, 'Reason performance reach bag per discuss. Hospital two floor study real.\nTrial individual this reveal structure present campaign data. Play ask civil far around thus.'),
(42, 'Heather', 'Parsons', 0, 42, 155, 155, 'Amount decade less Congress by budget soon. Teach fight person big recognize resource parent. Other rather positive court phone debate any.'),
(43, 'David', 'Sosa', 0, 58, 218, 162, 'President would picture blue could. Two court almost trip page. Food shake reason since.\nHope particular bad edge. Catch sort admit relate media main. Before decide help former kitchen.'),
(44, 'David', 'Reynolds', 0, 70, 131, 165, 'Still moment bring item traditional. Say here himself a old another talk.\nDark world message impact four network require. Experience mission give whole.'),
(45, 'Beth', 'King', 0, 60, 281, 160, 'Several stay capital century point simply per. Possible information six these. Together big perform beautiful computer truth toward.'),
(46, 'Maria', 'Johnson', 0, 47, 294, 199, 'Option traditional significant soldier.\nTable along side meet player how I.\nShoulder PM card artist alone all now. Production recent cell system finally senior.'),
(47, 'Jimmy', 'Ramirez', 0, 38, 260, 157, 'Drug than four democratic him. Seven stage to. Group interest show.'),
(48, 'Francis', 'Alexander', 0, 92, 134, 153, 'Ever some hit loss sea exist. General rest baby. West able dark play him there force.\nWhole every room.'),
(49, 'Elizabeth', 'Parks', 0, 86, 136, 190, 'Company final hit us itself style. Computer century sing. By create work news sport impact.\nChoice officer president especially business part animal. Recognize training society thing.'),
(50, 'Brooke', 'Wise', 0, 18, 178, 172, 'Sister modern certainly enough since upon fill today. Claim interest black product. Image attorney green value scene economy.'),
(51, 'Ryan', 'Thompson', 0, 61, 211, 172, 'Ability learn everybody. Fine notice family value state discover.\nOpportunity film camera nearly eight soon. Often rate make call provide director know. Process away their song eight call story.'),
(52, 'Johnathan', 'Gonzalez', 0, 78, 204, 150, 'See benefit score participant process course rise eight. Hot way soon nice mission.\nCivil article wish affect born series. Maybe cause article form through know drive.\nItem then forward spring.'),
(53, 'Barbara', 'Gilbert', 0, 43, 247, 152, 'Population actually space do full article now tonight. Accept check determine factor well concern chance teacher.\nAgree suggest significant between fund stop base.'),
(54, 'Clifford', 'Manning', 0, 65, 241, 163, 'Couple election he same democratic somebody. Local drive agency together plan couple movement.\nModern if past sort word then before trial. Investment energy civil. While cover a plant despite.'),
(55, 'Paige', 'Lopez', 0, 36, 246, 156, 'Old across ahead. Describe feel nothing responsibility artist much certainly.\nLight walk available relate. Ago action evening right away dark.\nPlace figure into vote laugh need. First sing kind.'),
(56, 'David', 'Smith', 0, 23, 158, 164, 'Politics shoulder exist catch her trouble war. Popular if future one coach ball physical. Walk today unit suddenly not.'),
(57, 'Max', 'Hensley', 0, 60, 137, 150, 'Material investment identify such sound woman. Career national treatment why appear. Professor star wonder consumer prepare interesting.'),
(58, 'Cynthia', 'Johnson', 0, 43, 237, 157, 'Significant ten clearly operation central happen. Church charge station necessary.\nPerson tax peace finally if high. Try discover according major.'),
(59, 'Kevin', 'Valencia', 0, 55, 163, 182, 'Science later apply method likely dog foot. Site culture cell approach true oil. Put fear bag material age.\nThen spend both less garden.'),
(60, 'Amanda', 'Lee', 0, 83, 105, 174, 'Page allow eye follow exactly force. Almost my international laugh. Character nation some.\nArticle before even half worker memory. No why produce appear kitchen sure professional model.'),
(61, 'Elizabeth', 'Mcguire', 0, 80, 282, 154, 'Security magazine set in miss. Pattern set way show. Number account pressure close save sell. Produce police forget baby occur new ground.'),
(62, 'Lindsay', 'Bates', 0, 94, 205, 185, 'Plan to still knowledge garden. Tree better meet pass end prevent those middle.\nBecome arm present seek hour western law own. Agent think case share modern girl forget.'),
(63, 'Charles', 'Perez', 0, 74, 172, 175, 'Professor chance eight three decide.\nTreatment alone say check follow store heavy. Understand main network inside. Best author quality thought professional.'),
(64, 'Miguel', 'Hoffman', 0, 22, 277, 163, 'Could other course far interest response themselves.\nIdentify newspaper compare vote order station speech. Behavior only chance quite.'),
(65, 'Ashley', 'Kirk', 0, 71, 187, 199, 'Development plant ready simply. Though whole back figure land.\nAge large listen long. Sure yes cut information subject development past.'),
(66, 'Benjamin', 'Beck', 0, 70, 107, 150, 'Camera economic cause attorney mission. Business particular hour detail. Mean possible then up indicate.'),
(67, 'Megan', 'Rodgers', 0, 72, 132, 185, 'Tell price foreign reflect civil choice. Simply rather Democrat response type bit.\nFigure task remain number feeling. Ten school because anything thought catch.'),
(68, 'Michael', 'Jackson', 0, 55, 165, 189, 'Work become direction expert lot why poor. Particular name boy happy must free might.'),
(69, 'Keith', 'Ramirez', 0, 58, 240, 181, 'Nor paper safe least. Individual his both daughter director line.\nLearn senior entire able. Like report its draw assume direction.\nSubject check without. By war foreign big.'),
(70, 'Justin', 'Johnson', 0, 41, 146, 173, 'Item must front write could letter any. Despite teacher ground lot.\nGirl according war. Skill wish student care stage.\nSeveral country than sport. Training under scene sit book let.'),
(71, 'Kristen', 'Martin', 0, 85, 196, 167, 'Parent security center section show add. Manage medical thank son.\nHuman toward white begin leader. Simple add practice guess long.\nCultural put all indicate this his.'),
(72, 'Chelsea', 'Davis', 0, 58, 209, 176, 'Manager include describe behind everybody experience near charge. Program you everybody protect but.\nInclude half once sometimes we job. Job message up attention another whatever also.'),
(73, 'Tricia', 'Estrada', 0, 57, 253, 171, 'Bed hand official describe consider dinner catch agreement. Book car major Republican manage head ball.'),
(74, 'Megan', 'Lucas', 0, 68, 142, 161, 'Her parent compare according new. National get ability. Painting worry skill expect.\nChance break follow effort space. Once establish gun suggest. Visit around dog street apply man degree.'),
(75, 'Anthony', 'Moore', 0, 69, 257, 189, 'Although create create measure citizen. This teach skill hit section hospital large. Military brother four view group serious.'),
(76, 'Chelsey', 'Heath', 0, 73, 278, 152, 'Raise nature American pass. Actually candidate company.\nTrue international speak system such at environment. Senior media option. Charge fire person commercial hotel site.'),
(77, 'Christina', 'Brady', 0, 86, 145, 177, 'Spring north easy under. Nor check investment article election staff.\nConference act rate dog official a send especially. Fall spend baby enjoy. Perform firm effort land make.'),
(78, 'Todd', 'Fisher', 0, 20, 278, 151, 'Event morning feeling chair record try little. Price apply personal.\nMinute six choose. Black leg traditional change sit future.'),
(79, 'Janet', 'Moody', 0, 32, 240, 153, 'Major receive already. Heart however spend main author section speak. Kitchen voice force election may.\nYet recent idea fine. Outside and imagine.\nEver house teach. Training ever bit free.'),
(80, 'Rebecca', 'Johnson', 0, 97, 182, 195, 'Approach population wonder night per power.\nHotel several information knowledge evening build and. Response quite last rock agree low.\nLife whom draw great. Effort fear measure that thus.'),
(81, 'Deborah', 'Beck', 0, 23, 292, 158, 'Sign once building strategy. Education security protect rule. Subject executive save.\nGeneration avoid fund big age ago military. According administration approach nature. Piece voice these born.'),
(82, 'Maxwell', 'Martin', 0, 75, 286, 188, 'May myself take military community on manage. Arrive provide ten pattern nice must. Vote option street Mrs hear discover write.'),
(83, 'Suzanne', 'Potts', 0, 65, 180, 172, 'Yeah man various newspaper. Good word once option what turn. Give type evidence any vote this.\nYes while financial current. Task mother consumer next left.'),
(84, 'Donna', 'Edwards', 0, 29, 121, 170, 'Important help husband collection everybody energy any. International story buy across focus.\nDeep degree pressure challenge. Fall summer soon interesting. Right hospital ask record player.'),
(85, 'Carlos', 'Williams', 0, 39, 247, 152, 'Do beat growth course. Safe attention indeed education cut instead stay. Drug maybe major so yourself. White those century.'),
(86, 'Debra', 'Hudson', 0, 60, 179, 157, 'Cause at visit only remain. Power art service none appear those suggest. Election color environmental oil season out design trial.\nLater public affect number red. Rate student small learn big.'),
(87, 'Kristin', 'Mills', 0, 72, 220, 191, 'Baby fast material if appear responsibility control although. Investment month foot two base seat important. Guy along over ability senior argue.'),
(88, 'William', 'Bryant', 0, 80, 144, 191, 'Whether pass price million. Career information class his recognize table. Center dog cultural bed.'),
(89, 'Larry', 'Jenkins', 0, 98, 262, 157, 'Seven clearly name live such management mother. Evening political Mrs example institution why full personal. Protect take story trade upon determine.'),
(90, 'Brad', 'Thomas', 0, 74, 285, 168, 'Drop raise board term visit assume must. Affect toward cup consider.'),
(91, 'Nicholas', 'Smith', 0, 68, 254, 156, 'Say who building reflect lead yes. Mind laugh case action week. Call nor international animal within himself collection.'),
(92, 'Edward', 'Clark', 0, 68, 137, 165, 'Travel between apply lose they civil up. Bad apply student lot enter us common accept.\nHome government few anyone. Case me follow field economic method. Young space worry material side religious.'),
(93, 'Kathleen', 'Freeman', 0, 46, 202, 159, 'Mr who image step so ready simple. Stock side figure live stand tough single talk. Consumer himself music there.\nHow blood college. Painting act free candidate return ahead.'),
(94, 'Jeanne', 'Curry', 0, 63, 181, 154, 'Report parent look. Everyone though detail art your.\nPoor music society bit determine simply.\nAvailable street value. Wrong south town meet kitchen environment manage.\nDoctor young score drop.'),
(95, 'Dennis', 'Romero', 0, 56, 197, 166, 'At money happy money effect party decision. Surface method paper.\nCrime report energy follow tough check soldier deep. Set capital usually analysis. Visit data state once reality serious forget.'),
(96, 'Jill', 'Spears', 0, 21, 119, 199, 'Majority size hot. Increase property general mind live sometimes myself.\nPresident arm good perhaps. Know tax add mention must. American evening response rule them.'),
(97, 'Kerry', 'Larsen', 0, 95, 267, 199, 'Son firm quickly cell candidate eye.'),
(98, 'Frederick', 'Patel', 0, 93, 234, 153, 'Former the phone safe cold.\nFilm why way hold boy girl. Air door American pretty money. Down but need way pick real least.\nSense draw against. Hope then coach.'),
(99, 'Susan', 'Jones', 0, 75, 155, 200, 'Water event large task. Himself start step early future so. Anything part create once heart source.'),
(100, 'Robert', 'Wolf', 0, 61, 133, 194, 'Whatever movement early five. Certain never four act evening although.\nEat audience positive partner.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `role`) VALUES
(1, 'Abc', '$2b$12$jM8/d9vAQMMy7bVslac/s.QrBQDzibRiuCri6UXGYT8ufOqcFpH.W', 'H'),
(2, 'Abcd', '$2b$12$7O.JAaDIvuMYLvECCVDDqeEZfJDjZ8UFqz18JDa/P/Cp4xY2uWgl.', 'R');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `healthcare_data`
--
ALTER TABLE `healthcare_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `healthcare_data`
--
ALTER TABLE `healthcare_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
