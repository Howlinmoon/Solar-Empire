DROP TABLE IF EXISTS PREFIXaccount;
DROP TABLE IF EXISTS PREFIXforum;
DROP TABLE IF EXISTS PREFIXgame;
DROP TABLE IF EXISTS PREFIXhistory;
DROP TABLE IF EXISTS PREFIXpoption;
DROP TABLE IF EXISTS PREFIXstarname;
DROP TABLE IF EXISTS PREFIXtip;

CREATE TABLE PREFIXaccount (
  acc_id int unsigned NOT NULL,
  acc_handle varchar(32) NOT NULL default '',
  acc_password binary(32) NOT NULL default 0,
  acc_email varchar(64) NOT NULL default '',
  acc_created datetime NOT NULL default 0,
  acc_accessed datetime NOT NULL default 0,
  acc_accesses int unsigned NOT NULL default 0,
  acc_ip int unsigned NOT NULL default '',
  acc_games smallint unsigned NOT NULL default 0,
  acc_requests int unsigned NOT NULL default 0,
  acc_name varchar(64) NOT NULL default '',
  PRIMARY KEY (acc_id),
  UNIQUE KEY acc_handle (acc_handle)
) TYPE=MyISAM;

CREATE TABLE PREFIXforum (
  game_id tinyint unsigned NULL default NULL,
  msg_id int unsigned NOT NULL default 0,
  msg_sent datetime NOT NULL default 0,
  msg_sender_id varchar(32) NOT NULL default '',
  msg_sender_name varchar(32) NOT NULL default '',
  msg_content text NOT NULL,
  PRIMARY KEY (message_id)
) TYPE=MyISAM;

CREATE TABLE PREFIXgame (
  game_id varchar(16) NOT NULL default '',
  game_name varchar(32) NOT NULL default '',
  game_admin int unsigned NOT NULL default 1,
  game_status ENUM('hidden', 'paused', 'running') NOT NULL default 'paused',
  game_desc text NOT NULL,
  game_introduction text NOT NULL,
  game_start datetime NOT NULL default 0,
  game_finish datetime NOT NULL default 0,
  game_proc_cleanup datetime NOT NULL default 0,
  game_proc_turn datetime NOT NULL default 0,
  game_proc_system datetime NOT NULL default 0,
  game_proc_ship datetime NOT NULL default 0,
  game_proc_planet datetime NOT NULL default 0,
  game_proc_government datetime NOT NULL default 0,
  PRIMARY KEY (db_name)
) TYPE=MyISAM;

CREATE TABLE PREFIXhistory (
  acc_id int unsigned NOT NULL,
  game_id tinyint unsigned NULL default NULL,
  hist_date datetime NOT NULL default 0,
  hist_action text NOT NULL,
  hist_ip varchar(16) NOT NULL default ''
) TYPE=MyISAM;

CREATE TABLE PREFIXpoption (
  opt_name varchar(32) NOT NULL default '',
  opt_min int NOT NULL default 0,
  opt_max int NOT NULL default 0,
  opt_desc text NOT NULL,
  opt_type tinyint unsigned NOT NULL default 1,
  PRIMARY KEY  (option_name)
) TYPE=MyISAM;

CREATE TABLE PREFIXstarname (
  star_name varchar(32) NOT NULL
) TYPE=MyISAM;

CREATE TABLE PREFIXtip (
  tip_id smallint unsigned NOT NULL,
  tip_content text NOT NULL,
  PRIMARY KEY (tip_id)
) TYPE=MyISAM;