-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 26. Jan 2025 um 23:25
-- Server-Version: 11.5.2-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `hoho`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `buyedticket`
--

CREATE TABLE `buyedticket` (
  `ID` int(11) NOT NULL,
  `bookedFrom` date NOT NULL,
  `bookedTo` date NOT NULL,
  `buyDate` date NOT NULL,
  `ticket_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `bookingNr` varchar(50) NOT NULL,
  `ticketNr` varchar(50) NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `buyedticket`
--

INSERT INTO `buyedticket` (`ID`, `bookedFrom`, `bookedTo`, `buyDate`, `ticket_ID`, `user_ID`, `bookingNr`, `ticketNr`, `adults`, `children`) VALUES
(1, '2025-02-02', '2025-02-04', '2025-01-14', 0, 1, 'J1DE004O4M0007RU3BRP', 'K1DB004O4M00007YK2RYD', 2, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `imageforapplication`
--

CREATE TABLE `imageforapplication` (
  `ID` int(11) NOT NULL,
  `URL` varchar(200) NOT NULL,
  `destInApp` int(11) NOT NULL,
  `location` varchar(10) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `imageforapplication`
--

INSERT INTO `imageforapplication` (`ID`, `URL`, `destInApp`, `location`, `name`) VALUES
(0, 'https://www.dropbox.com/scl/fi/1kbhe6ws78eyrz8b86p7y/logo_for_start.png?rlkey=17onruijgw0auezze3wdzl0sb&st=oynmkw2m&raw=1', 0, 'Salzburg', 'default'),
(1, 'https://www.dropbox.com/scl/fi/3ymt0v1fhxsjyuqv55x6c/image_yellow_tour.png?rlkey=gawfxum4v4fknbjjvlajqev8n&st=smml9fsp&raw=1', 5, 'Salzburg', 'yellow tour'),
(2, 'https://www.dropbox.com/scl/fi/26p3tbw63zu1tox9zuwl6/image_blue_tour.jpg?rlkey=4jl4a2gvdhgrzbumvo3r4jg7t&st=udtj6adg&raw=1', 5, 'Salzburg', 'blue tour'),
(3, 'https://www.dropbox.com/scl/fi/j463n4atufbvgf94bs9fq/image_kehlsteinhaus.png?rlkey=idot5fwdbnnorhajtpuud1sg4&st=i18emipr&raw=1', 5, 'Salzburg', 'kehlsteinhaus'),
(4, 'https://www.dropbox.com/scl/fi/3tan3z6n4u9fkjlcgebae/image_salzbergwerk.png?rlkey=j4ru54poqflh4ay5xco2707rv&st=uav78kxw&raw=1', 5, 'Salzburg', 'Salt mine'),
(5, 'https://www.dropbox.com/scl/fi/cc76pdlda3kelw9y5m9c2/image_hallstatt.png?rlkey=9ufe27dnf0el900vcofsmi1vu&st=t6pgsa0w&raw=1', 5, 'Salzburg', 'Hallstatt'),
(6, 'https://www.dropbox.com/scl/fi/m66bj3m12p0n5opgaafz6/image_soundsofmusic.png?rlkey=rw714479qfr2jf4omevn0obfl&st=ydkbsu3v&raw=1', 5, 'Salzburg', 'Sound Of Music'),
(7, 'https://www.dropbox.com/scl/fi/wjexbbgcukebm0jnq67g7/image_berchtesgarden.png?rlkey=lipoivpuguwmugri70ygvcgik&st=9t63nmja&raw=1', 5, 'Salzburg', 'Berchtesgarden'),
(8, 'https://www.dropbox.com/scl/fi/7qmaz7ltph837qzz68awa/image_supersaver1.png?rlkey=yx86203quk1m3obq83xey2ss4&st=yk9742id&raw=1', 5, 'Salzburg', 'Super Saver 1'),
(9, 'https://www.dropbox.com/scl/fi/rf1qgo25nif6x23mc418z/image_supersaver2.png?rlkey=zlg1jv5l73f6yxjhj12giji2l&st=s307gs95&raw=1', 5, 'Salzburg', 'Super Saver 2'),
(10, 'https://www.dropbox.com/scl/fi/zvgp92csvpyvccbtfabn4/hintergrund_startbildschirm.jpg?rlkey=zwiiao82owmnenrxhp1eyayim&st=mpm54t3e&raw=1', 10, 'Salzburg', 'Homebildschirm'),
(11, 'https://www.dropbox.com/scl/fi/p93w3xz9ldifg6qm85deq/image_startpoint.png?rlkey=2lmjbiskqfqumqofbrl2sgozc&st=5q2km95m&raw=1', 11, 'Salzburg', 'Startpoint'),
(12, 'https://www.dropbox.com/scl/fi/b77ewev0vw2ximm1fkxec/image_salzburgbeinacht.png?rlkey=n1f2j6cukxwazeb3vas721nw2&st=rga5uy6s&raw=1', 5, 'Salzburg', 'Salzburg in night'),
(13, 'https://www.dropbox.com/scl/fi/mm8pepfmgrzei5kpr6t8g/vienna_skyline.png?rlkey=r25pjx6n6byz3he75xclktsym&st=xdrxi4ul&raw=1', 1, 'Vienna', 'vienna_skyline'),
(14, 'https://www.dropbox.com/scl/fi/wbmu080ia7vhtxqp1tra6/salzburg_skyline.png?rlkey=6mhf89yl0tshkuntb1truvsky&st=qyockmdi&raw=1', 1, 'Salzburg', 'salzburg_skyline'),
(15, 'https://www.dropbox.com/scl/fi/8x5afowkzlgmaqgizm5zr/gelbe_tour.jpg?rlkey=ts4y1l5wx6h66iuybwo3ijuv7&st=a5fsfk9d&raw=1', 2, 'Salzburg', 'navbarimage'),
(16, 'https://www.dropbox.com/scl/fi/8tinzjinz0acylze6emy4/logo_vienna_sightseeing.png?rlkey=ldx6upg9iqdfvb5iu22uwplqm&st=6nc5ubcs&raw=1', 2, 'Salzburg', 'navbarLogoSbg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ticket`
--

CREATE TABLE `ticket` (
  `ID` int(11) NOT NULL,
  `tour` varchar(100) NOT NULL COMMENT 'tourname of tour (e.g. Blue Line)\r\n',
  `address` varchar(1000) NOT NULL COMMENT 'address of startpoint ',
  `adultPrice` int(11) NOT NULL,
  `childrenPrice` int(11) NOT NULL,
  `location` varchar(10) NOT NULL,
  `imageForApp` int(11) NOT NULL COMMENT 'FK',
  `description` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `ticket`
--

INSERT INTO `ticket` (`ID`, `tour`, `address`, `adultPrice`, `childrenPrice`, `location`, `imageForApp`, `description`) VALUES
(0, 'Blue Line', 'Mirabellplatz 2 5020 Salzburg', 37, 20, 'Salzburg', 2, 'SIGHTS ALONG THE BLUE LINE (DAY TRIP SALZBURG & DAY TRIP FROM SALZBURG)\nSalzburg Mirabellplatz\n- Mirabell Palace and Mirabell Gardens, Mozarteum University, Holy Trinity Church, Mozart\'s residence. \nSalzburg Hellbrunn Palace\n- Hellbrunn Palace / trick fountains, Monatsschloessl / Folklore Museum, Hellbrunn Zoo. \n- St. Leonhard Untersberg railway\n- See the Untersberg, one of the highest mountains near the city of Salzburg \nHallein Old Town / Celtic Museum \n- Hallein - one of the most unspoilt old town centres in Austria, various town squares with box fountains made of Untersberg marble, Celtic Museum, Silent Night Museum, Hallein parish church, green market on Saturday mornings and discover the many small shops, cafes and restaurants.\nHallein Pernerinsel\nSalzburg Salt Worlds & Celtic Experience Mountain\n- 2600-year-old salt mine on the Duerrnberg, show mine, faithfully recreated Celtic village with new themed playground, show mine and AR researcher app \nBad Duerrnberg Zinkenlifts\n- Longest summer toboggan run in Salzburger Land, hiking trails, experience nature, comfortable double chairlift, gnome hiking trail, Barmsteine, Gutrat ruins, Thuerndl ruins \nEagle\'s Nest & Obersalzberg Documentation\n- Eagle\'s Nest (open from the beginning/mid-May to the end of October). The bus from the Obersalzberg bus stop to the Eagle\'s Nest must be booked separately. You can book tickets online here. The Eagle\'s Nest ticket includes admission to the Obersalzberg Documentation Centre. \nBerchtesgaden market\n- Centre \n- Koenigssee is nestled between the steep slopes of the Watzmann and Hagengebirge mountains. Ideal for a walk or a boat trip \nBerchtesgaden salt mine\n- The Berchtesgaden salt mine has been in continuous operation since 1517. Salt deposits have been found up to 300 metres below the valley floor around the salt mine. \n\nExperience the ultimate day trip to the city of Salzburg and the surrounding area with our HOP ON HOP OFF bus\n'),
(1, 'Yellow Line', 'Mirabellplatz 2 5020 Salzburg', 37, 20, 'Salzburg', 1, 'SIGHTS ALONG THE YELLOW LINE (HOP ON HOP OFF SALZBURG):\r\nMirabellplatz/Mozarteum\r\n-Mirabell Palace and Mirabell Gardens, Mozarteum University, Holy Trinity Church, Mozart\'s residence\r\nHanusch Square\r\n-Town Hall, Getreidegasse and Mozart\'s birthplace, Moenchsberg with Museum of Modern Art, House of Nature. \r\nHerbert-von-Karajan-Platz\r\n-Horse pond, festival halls, St Peter\'s Abbey, Kollegienkirche, Gruenmarkt. Leopoldskron Castle\r\n-Leopoldskron Castle and Leopoldskron Pond.\r\nSchloss Hellbrunn-Schloss Hellbrunn/Wasserpiele, Monatsschloessl/Folkskundemuseum, Hellbrunn Zoo. \r\nKleingmain/Gwandhaus\r\n-Gwandhaus, Frohnburg Palace, Freisaal Palace, Hellbrunner Allee. Palace of Justice/Nonntal\r\n-Nonnberg Abbey, St Erhard Church, Kajetanerplatz.\r\nMozartsteg/Imbergstrasse\r\n-Mozartsteg, Steingasse, Kapuzinerberg with Capuchin monastery. \r\nMirabellplatz/St. Andrae\r\n-Mirabell Palace and Mirabell Gardens, Mozarteum University, Holy Trinity Church, Mozart\'s residence.\r\nSalzburg main railway station \r\n-Direct connection to Linz and Vienna, Tyrol and Vorarlberg as well as to the Salzburg region. Also border station in the direction of Germany Rosenheim-Munich. Mirabellplatz/Mozarteum\r\nDownload the HOP ON HOP OFF Salzburg timetable to see all Salzburg HOP ON HOP OFF stops. \r\nYou can find the Salzburg city tour prices at the top of the page. Click on the yellow button below the prices to buy your HOP ON HOP OFF Salzburg tickets. \r\n\r\nEnjoy the perfect Salzburg city tour with our Salzburg city tour bus'),
(2, 'Kehlsteinhaus', 'Mirabellplatz / Ecke Hubert-Sattler-Gasse 1, 5020 Salzburg', 90, 60, 'Salzburg', 3, 'Visit the Eagle\'s Nest with our guided tour and learn more about the historical details. \r\nExperience spectacular views of the Alps on this tour to the Eagle\'s Nest. \r\nFrom Salzburg, you travel to neighbouring Bavaria directly to Obersalzberg. From Obersalzberg, we change to a special bus and take the 6.5 km road up to the Eagle\'s Nest. Once you arrive at the upper car park, a 124 m long tunnel leads you into the mountain. Once inside the mountain, the lift takes you directly to the Eagle\'s Nest in less than a minute. In the past, it was used as a diplomatic residence for Hitler\'s guests. Enjoy the wonderful panoramic view over the Salzach Valley and the Berchtesgadener Land and learn more about the history of this house. \r\nThe tour is available in English and German. (This tour can also be organised in several languages). \r\nPlease arrive at our meeting point Mirabellplatz 2, 5020 Salzburg (Panorama Tours bus terminal) shortly before the start of the tour. Please present your ticket to our staff there'),
(3, 'Salt mine tour', 'Mirabellplatz / Ecke Hubert-Sattler-Gasse 1, 5020 Salzburg', 70, 50, 'Salzburg', 4, 'Starting in Salzburg, our guided tour will take you along the Alpine road along the Koenigsseeache to the Obersalzberg and then on to the entrance of the salt mine in Berchtesgaden. There you will be dressed in protective clothing, which will be provided for you on site. A mine railway then transports you 650 metres into the salt mountain. An expert mountain guide will lead you through the branching tunnels and explain exciting and interesting facts about salt mining. You then go even deeper into the mountain, this time by slide, an adventurous experience for young and old! Finally, once inside the mountain, you board a raft and enjoy a spectacular and impressive trip across the salt lake. \r\n\r\nThe tour is available in English and German. (This tour can also be organised in several languages) \r\nPlease arrive at the meeting point Mirabellplatz / corner Hubert-Sattler-Gasse 1, 5020 Salzburg (Panorama Tours bus terminal) shortly before the start of the tour. \r\nPlease show your ticket there\r\nThe tour is available in English and German. (This tour can also be organised in several languages) \r\n\r\nWe kindly ask you to arrive at the meeting point Mirabellplatz / corner Hubert-Sattler-Gasse 1, 5020 Salzburg (Panorama Tours bus terminal) shortly before the start of the tour. Please show your ticket there'),
(4, 'Halstatt tour', 'Mirabellplatz / Ecke Hubert-Sattler-Gasse 1, 5020 Salzburg\r\n\r\n', 70, 50, 'Salzburg', 5, 'Visit the world-famous town on the enchanting Lake Hallstatt on a comfortable Hallstatt bus tour.\r\n\r\nThis bus tour takes you directly from Salzburg to beautiful Hallstatt in just 1.5 hours. Enjoy the breathtaking scenery of the Salzkammergut on the bus journey. On the way you will pass Lake Fuschl, the towns of Fuschl, St. Gilgen and Strobl.\r\n\r\nDuring the 2.5-hour sightseeing stop, experience the unique atmosphere of the world-famous town and the most beautiful Hallstatt sights on your own. Take a leisurely stroll along the lake and admire the houses on the slopes of the mountains.\r\n\r\nOn the way back, the bus tour takes you from Hallstatt through the Russbachtal valley and the towns of Gosau and Abtenau, which are famous for their breathtaking views of the Dachstein mountains. Finally, you return to the starting point of your bus tour in Salzburg with great memories in your luggage. \r\n\r\nThe tour is available in English and German. (This tour can also be organised in several languages). \r\n\r\nPlease arrive at our meeting point Mirabellplatz / corner Hubert-Sattler-Gasse 1, 5020 Salzburg (Panorama Tours bus terminal) shortly before the start of the tour. Please show your ticket to our staff there.'),
(5, 'Original Sound of Music Tour', 'Mirabellplatz / Ecke Hubert-Sattler-Gasse 1, 5020 Salzburg', 60, 30, 'Salzburg', 6, 'Are you a fan of The Sound of Music? Then this tour is not to be missed!\r\nExperience with us the making of the film \"Sound of Music\" in and around Salzburg. This tour, which has been the most popular tour in Salzburg since 1967, is a combination of historic Salzburg and the breathtaking lake and mountain region. Our guide will show you many of the locations from \"Sound of Music\" and tell you not only background stories from the film, but also the history and culture of the region. Find out with us whether the Salzburg mountains are really inspired by the \"Sound of Music\" while listening to the original soundtrack of the film along the way. \r\n\r\nThe tour is guided in English.\r\n\r\nPlease arrive at our meeting point Mirabellplatz / corner Hubert-Sattler-Gasse 1, 5020 Salzburg (Panorama Tours Bus terminal) shortly before the start of the tour. Please show your ticket there.'),
(6, 'Berchtesgarden Tour', 'Mirabellplatz / Ecke Hubert-Sattler-Gasse 1, 5020 Salzburg', 60, 30, 'Salzburg', 7, 'On this tour, our guide will take you to Berchtesgaden in neighbouring Bavaria. A picture-perfect town and the impressive backdrop of Lake Koenigssee surrounded by imposing mountains await you.\r\n\r\nFrom Salzburg, you drive past Hellbrunn Palace and the salt mine until you reach neighbouring Bavaria. The first stop is right by the Koenigssee. During this 50-minute stop, you can enjoy the breathtaking view of the Koenigssee, not without reason described as the \"most beautiful lake in Germany\". The rest of the tour takes you to Berchtesgaden, which - nestled between the mountains - has a particularly romantic flair. Here you have the opportunity to take a leisurely stroll through the town. Visit the collegiate church built by the Augustinian canons and admire the impressive interior. \r\n\r\nThe tour is available in English and German. (This tour can also be organised in several languages).\r\n\r\nPlease arrive at our Mirabellplatz / corner Hubert-Sattler-Gasse 1, 5020 Salzburg (Panoramatours bus terminal) shortly before the start of the tour. Please show your ticket there.'),
(7, 'Super Saver: Die Original Sound of Music Tour & Salzbergwerk', 'Mirabellplatz / Ecke Hubert-Sattler-Gasse 1, 5020 Salzburg', 120, 70, 'Salzburg', 8, 'Combine our Sound of Music Tour with a tour of the historic salt mines. \r\n\r\nPart 1:\r\nIn the first part of this tour, you will visit the original film locations together with our guide and receive interesting information about the filming of \"The Sound of Music\". After all, our bus company (Albus) was directly involved in the making of the film. Julie Andrews, who plays Maria von Trapp in the film, travels on one of our buses in the film. The excursion also offers you the opportunity to get to know the historic city of Salzburg and the enchanting landscape of the Salzkammergut.\r\n\r\nPart 2:\r\nThe second part takes you directly to the entrance of the salt mine. There you will be dressed in protective clothing, which will be provided for you on site. A mine railway then transports you into the salt mine. An expert mountain guide will lead you through the branching tunnels and explain exciting and interesting facts about salt mining. You then go even deeper into the mountain, this time by slide, an adventurous experience for young and old! Finally, once inside the mountain, you board a raft and enjoy a spectacular and impressive trip across the salt lake.\r\n\r\nThe tour is guided in English.\r\n\r\nPlease arrive at our meeting point at Mirabellplatz 2, 5020 Salzburg (Panorama Tours bus terminal) shortly before the start of the tour. Please show your ticket to our staff there.'),
(8, 'Super Saver: Hallstatt & Die Original Sound of Music Tour', 'Mirabellplatz / Ecke Hubert-Sattler-Gasse 1, 5020 Salzburg', 120, 70, 'Salzburg', 9, 'Visit the world-famous town on the enchanting Lake Hallstatt on a comfortable Hallstatt bus tour in the morning. \r\n\r\nThis bus tour takes you directly from Salzburg to beautiful Hallstatt in just 1.5 hours. Enjoy the breathtaking scenery of the Salzkammergut on the bus journey. On the way, you will pass Lake Fuschl, the towns of Fuschl, St. Gilgen and Strobl. \r\n\r\nDuring the 2.5-hour sightseeing stop, experience the unique atmosphere of the world-famous town and the most beautiful Hallstatt sights on your own. Take a leisurely stroll along the lake and admire the houses on the slopes of the mountains. \r\n\r\nThe bus tour continues from Hallstatt through the Russbachtal valley and the towns of Gosau and Abtenau, which are famous for their breathtaking views of the Dachstein mountains.\r\n\r\nIn the afternoon, the Original Sound of Music Tour takes you to the original filming locations of \"The Sound of Music\" in and around Salzburg with the following sights: Mirabell Gardens with Pegasus Fountain, Nonnberg Abbey, Leopoldskron Palace, Salzburg Lake District, Hellbrunn Palace with pavilion and the church in Mondsee where Baron von Trapp and Maria got married in the film.\r\n\r\nFollow in the footsteps of the von Trapps and learn more about the true history of the family. Listen to our live guides telling anecdotes about the filming of the worldwide hit \"The Sound of Music\" starring Christopher Plummer and Julie Andrews.\r\n\r\nThe tour is available in English and German. (This tour can also be organised in several languages). \r\n\r\nPlease arrive at our meeting point Mirabellplatz / corner Hubert-Sattler-Gasse 1, 5020 Salzburg (Panorama Tours bus terminal) shortly before the start of the tour. Please show your ticket to our staff there.'),
(9, 'Salzburg in night', 'Mirabellplatz', 17, 10, 'Salzburg', 12, 'Let yourself be mesmerised by the charm of Salzburg on our panoramic tour. Discover the city\'s top attractions and round off the day with a tour packed with information. Experience Salzburg at night from a different perspective. \r\nThe special flair and the warm evening sun make this tour particularly exciting.\r\n\r\nOn this panoramic tour through Salzburg, you will see the most important sights such as Mirabell Palace, the Pferdeschwemme, the Siegmundstor, Leopoldskron Palace, Hellbrunn Palace, the Gwandhaus, the Holy Trinity Church, Hohensalzburg Fortress and much more in the evening sun. Learn interesting facts about Salzburg\'s attractions in 1 hour with the help of the audio guide on the bus. At the end of the tour, we will take you back to Mirabellplatz.\r\n\r\nImportant information\r\nPlease note that the Night Tour Salzburg is a panoramic tour and not a HOP ON HOP OFF tour.\r\nMeeting point 15 minutes before departure at Mirabellplatz 2.\r\n\r\nDates of the Night Tour Salzburg\r\n\r\nAt 17:45 on FR/SA/SO in July and August.'),
(11, 'testlinie', 'Vienna irgendwos', 20, 10, 'Vienna', 0, 'test');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `TOKEN` varchar(200) NOT NULL COMMENT 'ID from Firebase Authentication',
  `firstname` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`ID`, `TOKEN`, `firstname`, `surname`, `email`, `birthdate`) VALUES
(1, 'O3aEhn6oZsbeziM7rqaMxZAN6yk1', 'Moritz', 'Schuetz', 'schuetzm02@gmail.com', '2003-07-02');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `buyedticket`
--
ALTER TABLE `buyedticket`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_ticket_id` (`ticket_ID`),
  ADD KEY `fk_user_id` (`user_ID`);

--
-- Indizes für die Tabelle `imageforapplication`
--
ALTER TABLE `imageforapplication`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_imageForApp` (`imageForApp`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `buyedticket`
--
ALTER TABLE `buyedticket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `imageforapplication`
--
ALTER TABLE `imageforapplication`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `buyedticket`
--
ALTER TABLE `buyedticket`
  ADD CONSTRAINT `fk_ticket_id` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ID`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`);

--
-- Constraints der Tabelle `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_imageForApp` FOREIGN KEY (`imageForApp`) REFERENCES `imageforapplication` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
