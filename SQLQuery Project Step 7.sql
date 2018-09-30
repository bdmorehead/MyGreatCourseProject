USE [MyGreatProject-Morehead];

DROP TABLE IF EXISTS dbo.PlayerInformation;

CREATE TABLE dbo.PlayerInformation
(
  UserName		varchar(16)		NOT NULL,
  Email			varchar(32)		NOT NULL,
  CONSTRAINT PK_PlayerInformation PRIMARY KEY(UserName)
);

INSERT INTO dbo.PlayerInformation (UserName, Email)
VALUES
  ('archeanchaos', 'archeanchaos@yahoo.com')

DROP TABLE IF EXISTS dbo.FriendList;

CREATE TABLE dbo.FriendList
(
  UserName			varchar(16)		NOT NULL,
  FriendStatus		varchar(16)		NOT NULL,
  FriendUserName		varchar(32)		NOT NULL,
  CONSTRAINT PK_FriendList PRIMARY KEY(UserName)
);

INSERT INTO dbo.FriendList (UserName, FriendStatus, FriendUserName)
VALUES
  ('archeanchaos', 'offline', 'yellowbeard')

DROP TABLE IF EXISTS dbo.GameStats;

CREATE TABLE dbo.GameStats
(
  UserName		varchar		NOT NULL,
  RoundsPlayed	int			NOT NULL,
  RoundsWon		int			NOT NULL,
  RoundsLost	int			NOT NULL,
  CONSTRAINT PK_GameStats PRIMARY KEY(UserName)
);

DROP TABLE IF EXISTS dbo.LettersAvailable;

CREATE TABLE dbo.LettersAvailable
(
  Alphabet		char		NOT NULL,
  LettersUsed	char		NOT NULL,
  LettersLeft	char		NOT NULL,
  CONSTRAINT PK_LettersAvailable PRIMARY KEY(Alphabet)
);

DROP TABLE IF EXISTS dbo.GamePlay;

CREATE TABLE dbo.GamePlay
(
  UserName		varchar		NOT NULL,
  CategoryID	varchar		NOT NULL,
  Mode			char		NOT NULL,
  CurrentWord	varchar		NOT NULL,
  Alphabet		char		NOT NULL,
  CONSTRAINT PK_GamePlay PRIMARY KEY(UserName)
);

DROP TABLE IF EXISTS dbo.WordCategories;

CREATE TABLE dbo.WordCategories
(
  CategoryID			varchar		NOT NULL,
  Movies				varchar		NOT NULL,
  SportsTeams			varchar		NOT NULL,
  TVShows				varchar		NOT NULL,
  Bugs					varchar		NOT NULL,
  USStates				varchar		NOT NULL,
  FruitsAndVegetables	varchar		NOT NULL,
  VideoGames			varchar		NOT NULL,
  BoardGames			varchar		NOT NULL,
  CONSTRAINT PK_WordCategories PRIMARY KEY(CategoryID)
);