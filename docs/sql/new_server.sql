
DROP TABLE IF EXISTS `daily_tips`;
CREATE TABLE `daily_tips` (
  `tip_id` int(4) NOT NULL auto_increment,
  `tip_content` text NOT NULL,
  PRIMARY KEY  (`tip_id`)
);

INSERT INTO `daily_tips` (`tip_id`, `tip_content`) VALUES (1, 'To customise your SE experience, try playing with some of the options on the <b class=b1>Options</b> Page.'),
(2, 'You can change your colour scheme at any time from the options page.<br>There are plenty to choose from.'),
(3, 'Rule Number One: The Admin Is Always Right.\r\n<br>Rule Number Two: If The Admin Is Wrong, See Rule Number One.\r\n<br>{starfox25, Dec 06 2000 - 14:26 }'),
(5, 'Just because a ship is more expensive does not necessarily mean it is better.'),
(6, 'The only source of knowledge is experience.\r\n<br>{Albert Einstein}'),
(7, 'Do not repeat the tactics which have gained you one victory, but let your methods be regulated by the infinite variety of circumstances.\r\n<br>{Sun Tzu, The Art of War - 6:28, 300BC}'),
(8, 'Nothing is foolproof to a sufficiently talented fool.\r\n<br>{CrymsonKyng, Apr 21 2001 - 05:56}'),
(9, 'You can click on the Mini-map to get a complete picture of the universe.'),
(10, 'Clicking a player''s name gives you information about that player.<br>This can also be done with your own name, and will reveal several new options.'),
(13, 'If you find any bugs, report them to the Admin, along with details as to what you where doing to get it.'),
(14, 'Autowarp allows you to automatically find your way between A and B. It is not necessarily the shortest route though.'),
(15, 'Wormholes offer a great way to get across the universe in only 1 turn (provided there are any around).'),
(16, 'Its generally possible to get things on the cheap at Bilkos Auction house. As well as lots of things you can''t get anywhere else in the game.<br>You can get to it from any star-port, or Earth.'),
(17, 'You should change all your password every few months.<br>You should also never give your password to other players. Ever!'),
(18, 'Upgrades allow you to improve your star-ships, however they cannot be removed once installed.'),
(19, 'Joining a Clan can get you new friends and allies, but also new foes.'),
(20, 'Statistics about the game you are in can be found by clicking on the games name in the top left corner of the screen (below the date).'),
(21, 'You may only own one flagship class ship at a time. If you loose it, the next one will cost double.'),
(22, 'Transversers with the <b>Wormhole Stabiliser</b> upgrade are ideal for getting colonists onto your planets quickly and cheaply.'),
(23, 'The hardest thing of all for a soldier is to retreat.<br>{Duke of Wellington}'),
(24, 'Wise people learn when they can; fools learn when they must.<br>{Duke of Wellington}'),
(25, 'Never interrupt your enemy when he is making a mistake.<br>{Napoleon Bonaparte}'),
(26, 'You must not fight too often with one enemy, or you will teach him all your art of war.<br>{Napoleon Bonaparte}'),
(27, 'You should not use one password for all applications (i.e. e-mail, online games etc). Instead you should have a different password for each account.');

DROP TABLE IF EXISTS `option_list`;
CREATE TABLE `option_list` (
  `option_name` varchar(50) NOT NULL default '',
  `option_min` int(4) NOT NULL default '0',
  `option_max` int(4) NOT NULL default '0',
  `option_desc` text NOT NULL,
  `option_type` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`option_name`)
);

INSERT INTO `option_list` (`option_name`, `option_min`, `option_max`, `option_desc`, `option_type`) VALUES ('news_back', 10, 700, 'Allows you to set how many hours of news will be shown per screen.', 2),
('forum_back', 1, 168, 'Allows you to choose how many hours the forum should list per screen.', 2),
('tow_method', 1, 2, 'There are two ways to tow your fleet: &&& Use a method that allows you to tow your whole fleet at once, or just individual ships. &&& Use tow method that enables you to use checkboxes to select which ship you wish to tow.', 1),
('show_pics', 0, 1, 'Pictures are loaded in numerous places throughout the game. They can be turned off here. (This will not effect the Minimap. That can be turned off elsewhere on this page) &&& Hide Pictures. &&& Show Pictures.', 1),
('show_minimap', 0, 1, 'The Minimap is the map in the top right corner of the star System. When disbabled, a link to the full map will be shown in it''s place. &&& Minimap Disabled. &&& Minimap Enabled.', 1),
('show_sigs', 0, 1, 'Signatures are are appended to the end of personal or forum messages sent by another player. <br>Turning them off can make the forums load significantly faster. &&& Signatures Hidden. &&& Signatures Shown.', 1),
('show_config', 0, 1, 'Your ship''s Configuration is a collection of two letter code''s that describe what your ship is capable off, such as:<br>sc:ls\r\n<br>Information about what the codes mean can be found in the help.<br>This setting allows you to show or hide the configurations from next to your ships in the star system window. <br>It only really needs to turned on when you have lots of ships of the same type, each of which has been upgraded in a different way.<br>If off the configurations will still be shown elsewhere in the game. But it will save a small amount of bandwidth. &&& Hide Configurations &&& Show Configurations', 1),
('show_aim', 0, 1, 'Allows you to show or hide other users AIM contact details. &&& Hide AIM details. &&& Show AIM details.', 1),
('show_icq', 0, 1, 'Allows you to show or hide other users ICQ numbers. &&& Hide ICQ numbers. &&& Show ICQ numbers.', 1),
('show_clan_ships', 0, 1, 'This options controls whether all clan ships are shown on the clan_control page, or an overview of them. If turned off, the page will load much quicker later in the game.\r\n<br>There is a link in clan control that will allow you to see all clan ships if have the long list disabled. &&& Limited clan ship list shown. &&& Full clan ship list shown.', 1),
('show_abbr_ship_class', 0, 1, 'Ship listings in a star system can be made to show only abbreviated ship types (such as MF for Merchant Freighter). All such abbreviations are shown in the help next to the relevent ship. &&& Show full ship type. &&& Show abbreviated ship type.', 1),
('show_rel_sym', 0, 1, 'Relations symbols allow a player to see what relation you (or your clan) have set up with another player.<br>This is generally un-nessary for indeps, but a must for clans. &&& Hide relations symbol. &&& Show relations symbol.', 1),
('attack_report', 1, 2, 'This variable lets you decide what sort of report you get after attacking, or being attacked. &&& Receive only a brief overview of any battle that takes place &&& Recieve a very comprehensive battle report if you are the attacker. If you are the defender you will be sent a very comprehensive message if the ship that got attacked was big/warship, otherwise a brief report will be sent.', 1),
('system_disp_method', 1, 2, 'This variable determines what you will see at the top of the star-system page. &&& The original method which just uses text. Slight less bandwidth, but also less functionality. &&& A newer method that displays the systems details within a table. Has some extra functionality over the older one.', 1),
('cursing_filter', 0, 2, 'Determines the cursing filter (default is low)\r\n &&& None\r\n &&& Low\r\n &&& High', 1),
('planet_report', 0, 2, 'Decides whether a production report is returned from a planet during the daily maintenance.\r\n &&& Nothing returned\r\n &&& A report will be returned, but only if the planet produces something\r\n &&& All planets will return a report, no matter what.', 1);

DROP TABLE IF EXISTS `se_central_forum`;
CREATE TABLE `se_central_forum` (
  `message_id` int(4) NOT NULL auto_increment,
  `timestamp` int(4) NOT NULL default '0',
  `sender_name` varchar(30) NOT NULL default '',
  `sender_game` varchar(30) NOT NULL default '',
  `sender_game_db` varchar(30) NOT NULL default '',
  `text` text NOT NULL,
  PRIMARY KEY  (`message_id`)
);

DROP TABLE IF EXISTS `se_games`;
CREATE TABLE `se_games` (
  `game_id` tinyint(4) NOT NULL auto_increment,
  `name` varchar(45) NOT NULL default '',
  `db_name` varchar(45) NOT NULL default '',
  `admin_name` varchar(200) NOT NULL default '',
  `admin_pw` varchar(32) NOT NULL default 'passwd',
  `admin_email` varchar(45) NOT NULL default '',
  `status` tinyint(4) NOT NULL default '1',
  `paused` tinyint(4) NOT NULL default '1',
  `description` text NOT NULL,
  `intro_message` text NOT NULL,
  `num_stars` int(4) NOT NULL default '150',
  `todays_tip` int(4) NOT NULL default '1',
  `difficulty` int(4) NOT NULL default '3',
  `last_reset` int(4) NOT NULL default '0',
  `session_id` varchar(40) NOT NULL default '',
  `session_exp` int(4) NOT NULL default '0',
  `last_access_admin_forum` int(4) NOT NULL default '0',
  PRIMARY KEY  (`game_id`)
);

DROP TABLE IF EXISTS `se_svr_star_names`;
CREATE TABLE `se_svr_star_names` (
  `name` varchar(30) NOT NULL default ''
);

INSERT INTO `se_svr_star_names` (`name`) VALUES ('Acamar'),
('Achernar'),
('Achird'),
('Acrux'),
('Acubens'),
('Adara'),
('Adhafera'),
('Adhara'),
('Adhil'),
('Adraeryn'),
('Aethicyn'),
('Agena'),
('Ain'),
('Al Anz'),
('Aladfar'),
('Alaeryan'),
('Alall'),
('Alathfar'),
('Albaladanten'),
('Albaldah'),
('Albali'),
('Albireo'),
('Alchiba'),
('Alcor'),
('Alcyone'),
('Aldebaran'),
('Alderamin'),
('Aldhibah'),
('Alenany'),
('Alfecca Meridiana'),
('Alfirk'),
('Algenib'),
('Algieba'),
('Algol'),
('Algorab'),
('Alhena'),
('Alioth'),
('Alkaid'),
('Alkalurops'),
('Alkes'),
('Alkurhah'),
('Almaak'),
('Alnair'),
('Alnath'),
('Alnilam'),
('Alnitak'),
('Alniyat'),
('Aloclya'),
('Alodaria'),
('Alodateriel'),
('Alphard'),
('Alphekka'),
('Alpheratz'),
('Alrai'),
('Alrisha'),
('Alsafi'),
('Alsciaukat'),
('Alshain'),
('Alshat'),
('Alsuhail'),
('Altair'),
('Alterf'),
('Aludra'),
('Alula Australis'),
('Alula Borealis'),
('Alya'),
('Alzirr'),
('Amrien'),
('Ancha'),
('Andy'),
('Anfastra'),
('Angetenar'),
('Ankaa'),
('Annaleberiel'),
('Annenaldar'),
('Annenana'),
('Anser'),
('Antares'),
('Aquareron'),
('Aquarum'),
('Aradron'),
('Arald'),
('Arcturus'),
('Argoth'),
('Arkab Posterior'),
('Arkab Prior'),
('Arneb'),
('Arrakis'),
('Ascella'),
('Asellus Australis'),
('Asellus Borealis'),
('Asellus Primus'),
('Asellus Secondus'),
('Asellus Tertius'),
('Asterope'),
('Astroden'),
('Athonius'),
('Atik'),
('Atlas'),
('Aurodel'),
('Aurodragon'),
('Auva'),
('Avior'),
('Azelfafage'),
('Azha'),
('Azmidiske'),
('Baham'),
('Balaegyn'),
('Balibane'),
('Balon'),
('Banalaenderiel'),
('Banalantar'),
('Banenteriel'),
('Barah'),
('Baten Kaitos'),
('Beanillia'),
('Becrux'),
('Beid'),
('Beleth'),
('Bellatrix'),
('Bellyn'),
('Benalon'),
('Benumandy'),
('Beralaeraen'),
('Berenassi'),
('Bernards Star'),
('Betelgeuse'),
('Blon'),
('Botein'),
('Brachium'),
('Braera'),
('Braeryan'),
('Brandros'),
('Brinoic'),
('Brulla'),
('Bryll'),
('Caledeberiel'),
('Canopus'),
('Capella'),
('Caph'),
('Carabeldar'),
('Careredanten'),
('Cast'),
('Castor'),
('Ceara'),
('Cebalrai'),
('Celaeno'),
('Centuri'),
('Cerlania'),
('Chara'),
('Chilves'),
('Chine'),
('Chort'),
('Chowskach'),
('Chowthok'),
('Cirus'),
('Cleoper'),
('Clerka'),
('Clolyan'),
('Clulla'),
('Contantariel'),
('Cor Caroli'),
('Crylvereth'),
('Cursa'),
('Cwllyra'),
('Cwlyan'),
('Cycla'),
('Cyllyra'),
('Cynoic'),
('Dabih'),
('Daeriadron'),
('Dallalenna'),
('Darabrina'),
('Daralaenna'),
('Daraldar'),
('Dararel'),
('Darendar'),
('Darth'),
('Deneb'),
('Deneb Algedi'),
('Deneb Dulfim'),
('Denebola'),
('Dengwen'),
('Deryan'),
('Dhanu'),
('Dheneb'),
('Diadem'),
('Dian'),
('Diphda'),
('Doryan'),
('Double Double'),
('Dsiban'),
('Dubhe'),
('Dursis'),
('Duruviel'),
('Dwarf'),
('Dylyan'),
('Ed Asich'),
('Elabenteriel'),
('Elabrintar'),
('Elebrimban'),
('Electra'),
('Elenaclya'),
('Elent'),
('Elerka'),
('Elin'),
('Eliniver'),
('Elnath'),
('Elongwen'),
('Elovyan'),
('Elros'),
('Elvan'),
('Elwniver'),
('Emerland'),
('Emethystar'),
('Enaeny'),
('Enif'),
('Ericonia'),
('Erindi'),
('Etamin'),
('Eter'),
('Farobandar'),
('Flutu'),
('Fomalhaut'),
('Fornacis'),
('Furud'),
('Gacrux'),
('Gannalariel'),
('Ganneraen'),
('Garnet Star'),
('Gavadar'),
('Gavalanna'),
('Gavalenderiel'),
('Gellyn'),
('Gianfar'),
('Gienah Cygni'),
('Gienah Ghurab'),
('Glood'),
('Gomeisa'),
('Gorgonea Quarta'),
('Gorgonea Secunda'),
('Gorgonea Tertia'),
('Graffias'),
('Grafias'),
('Grevos'),
('Grumium'),
('Gestath'),
('Gostos'),
('Gwaelyan'),
('Gwalonna'),
('Gwebrylla'),
('Gwibrylla'),
('Gwira'),
('Gwom'),
('Gwydda'),
('Hadar'),
('Haedi'),
('Halabrindar'),
('Hamal'),
('Hassaleh'),
('Head Of Hydrus'),
('Hellus'),
('Herschel'),
('Heze'),
('Hoedus Ii'),
('Homam'),
('Hyadum I'),
('Hyadum Ii'),
('Indinoriel'),
('Indirel'),
('Izar'),
('Jabbah'),
('Javalendario'),
('Javededanten'),
('Jennalaria'),
('Jibrylla'),
('Jorka'),
('Jujaka'),
('Kaffaljidhma'),
('Kajam'),
('Kanyaa'),
('Karkataka'),
('Kath'),
('Katra'),
('Kaus Australis'),
('Kaus Borealis'),
('Kaus Meridionalis'),
('Keid'),
('Kindron'),
('Kitalpha'),
('Kocab'),
('Kornephoros'),
('Kraz'),
('Kuma'),
('Kumbha'),
('Labriraen'),
('Laera'),
('Lenna'),
('Lesath'),
('Levyan'),
('Livingstonia'),
('Lunius'),
('Lwllyra'),
('Maasym'),
('Maella'),
('Maia'),
('Makara'),
('Marfak'),
('Marfik'),
('Markab'),
('Marsia'),
('Matar'),
('Mearen'),
('Mebsuta'),
('Meena'),
('Megrez'),
('Meissa'),
('Mekbuda'),
('Meko'),
('Menkalinan'),
('Menkar'),
('Menkent'),
('Menkib'),
('Meraeldar'),
('Merak'),
('Meralentar'),
('Merallyra'),
('Meramis'),
('Merandros'),
('Merelyan'),
('Merga'),
('Meriadron'),
('Merope'),
('Merubrylla'),
('Meruvyan'),
('Mesarthim'),
('Metallah'),
('Mevyan'),
('Miaplacidus'),
('Minkar'),
('Mintaka'),
('Mira'),
('Mirach'),
('Miram'),
('Mirphak'),
('Missa'),
('Mithrina'),
('Mithron'),
('Mithuna'),
('Mizar'),
('Moriartalon'),
('Mufrid'),
('Muliphen'),
('Murcheson'),
('Murzim'),
('Muscida'),
('Mwssa'),
('Nagoch'),
('Nair Al Saif'),
('Nanaeriel'),
('Nanantariel'),
('Naos'),
('Naralas'),
('Narian'),
('Nash'),
('Nashira'),
('Nekkar'),
('Nepturic'),
('Nihal'),
('Nimriadron'),
('Nimrodros'),
('Nodus Secundus'),
('Nunki'),
('Nusakan'),
('Oberopane'),
('Orendil'),
('Orina'),
('Osiana'),
('Osis'),
('Pegastra'),
('Pelebriad'),
('Penus'),
('Phad'),
('Phaet'),
('Pherkad'),
('Pherkad Minor'),
('Pleione'),
('Polaris'),
('Polaris Australis'),
('Pollux'),
('Porrima'),
('Praecipua'),
('Prima Giedi'),
('Procyon'),
('Propus'),
('Rabrylla'),
('Raff'),
('Ramir'),
('Rana'),
('Ranamamario'),
('Ras Elased Australis'),
('Ras Elased Borealis'),
('Rasalgethi'),
('Rasalhague'),
('Rastaban'),
('Regulus'),
('Reteekk'),
('Rigel'),
('Rigel Kent'),
('Rigel Kentaurus'),
('Robearen'),
('Rotanev'),
('Ruchba'),
('Ruchbah'),
('Rukbat'),
('Sabik'),
('Sadalachbia'),
('Sadalmelik'),
('Sadalsuud'),
('Sadr'),
('Saiph'),
('Salm'),
('Sargas'),
('Sarin'),
('Sarnian'),
('Sars'),
('Sceptrum'),
('Scheat'),
('Sconti'),
('Secunda Giedi'),
('Segin'),
('Seginus'),
('Selbeter'),
('Septentrionalis'),
('Sessa'),
('Sham'),
('Sharatan'),
('Shaula'),
('Shedir'),
('Sheliak'),
('Shiel'),
('Shingal'),
('Sherok'),
('Simha'),
('Sirius'),
('Situla'),
('Skat'),
('Sogekk'),
('Solves'),
('Solyan'),
('Sonoch'),
('Sotes'),
('Sovar'),
('Spica'),
('Squishalon'),
('Sterope Ii'),
('Sualocin'),
('Subra'),
('Sulafat'),
('Sull'),
('Sunegon'),
('Syrma'),
('Tabit'),
('Talaberia'),
('Talaeldar'),
('Talanany'),
('Taleladar'),
('Talitha'),
('Tana'),
('Tanathenge'),
('Tanelantar'),
('Tania Australis'),
('Tania Borealis'),
('Tarazed'),
('Taskalil'),
('Tau Ceti'),
('Tavys'),
('Taygeta'),
('Tedoch'),
('Tegmen'),
('Tejat Posterior'),
('Telcon'),
('Telcorpion'),
('Telcorus'),
('Terebellum'),
('Thabit'),
('Theemim'),
('Thomoch'),
('Thanal'),
('Thon'),
('Thepor'),
('Thothor'),
('Thethoth'),
('Thuban'),
('Thulok'),
('Tlangafad'),
('Tomar'),
('Torcularis'),
('Teskalik'),
('Tukon'),
('Tula'),
('Turais'),
('Tycyn'),
('Tyl'),
('Unukalhai'),
('Ursian'),
('Ursis'),
('Valadron'),
('Valon'),
('Vand'),
('Vanyelan'),
('Vega'),
('Vindemiatrix'),
('Vrishba'),
('Vrishchika'),
('Wasat'),
('Wesper'),
('Wesperion'),
('Wezen'),
('Wezn'),
('Wolf Star'),
('Wolfastra'),
('Wone'),
('Yed Posterior'),
('Yed Prior'),
('Yildun'),
('Ysaeryan'),
('Zaniah'),
('Zaurak'),
('Zavijah'),
('Zibal'),
('Zosma'),
('Zuben Elakrab'),
('Zuben Elgenubi');

DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE `user_accounts` (
  `login_id` int(4) NOT NULL auto_increment,
  `login_name` varchar(30) NOT NULL default '',
  `passwd` varchar(33) NOT NULL default '',
  `auth` int(4) NOT NULL default '0',
  `session_exp` int(4) NOT NULL default '0',
  `session_id` varchar(40) NOT NULL default '',
  `in_game` varchar(30) NOT NULL default '',
  `email_address` varchar(40) NOT NULL default '',
  `signed_up` int(4) NOT NULL default '0',
  `last_login` int(4) NOT NULL default '0',
  `login_count` int(4) NOT NULL default '0',
  `last_ip` varchar(16) NOT NULL default '',
  `num_games_joined` int(4) NOT NULL default '0',
  `page_views` int(4) NOT NULL default '0',
  `real_name` varchar(50) NOT NULL default '',
  `total_score` int(4) NOT NULL default '0',
  `default_color_scheme` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`login_id`),
  UNIQUE KEY `login_name` (`login_name`),
  UNIQUE KEY `email_address` (`email_address`)
);

INSERT INTO `user_accounts` (`login_id`, `login_name`, `passwd`, `auth`, `session_exp`, `session_id`, `in_game`, `email_address`, `signed_up`, `last_login`, `login_count`, `last_ip`, `num_games_joined`, `page_views`, `real_name`, `total_score`, `default_color_scheme`) VALUES
(1, 'admin', 'not used', 0, 0, '', '', 'Tyrant of the Universe', 1, 1, 1, '', 0, 0, 'Game Administrator', 0, 1);

DROP TABLE IF EXISTS `user_history`;
CREATE TABLE `user_history` (
  `login_id` int(4) NOT NULL default '0',
  `timestamp` int(4) NOT NULL default '0',
  `game_db` varchar(30) NOT NULL default '',
  `action` text NOT NULL,
  `user_IP` varchar(16) NOT NULL default '',
  `other_info` text NOT NULL
)

