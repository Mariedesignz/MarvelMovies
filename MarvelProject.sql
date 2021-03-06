USE [TeacherDB]

GO
/*Drop all old tables/ procedures*/

drop table IF exists dbo.People_Movies
GO
drop table IF exists dbo.Movies
GO
drop table IF exists dbo.People
GO
drop table IF exists dbo.Profession




CREATE TABLE [dbo].[Movies](
	[MovieId] [int] IDENTITY(1,1) Primary Key,
	[Movie] [nvarchar](128) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[RunTime] [nvarchar](128) NOT NULL,
	[Rating] [nvarchar](128) NULL)




CREATE TABLE [dbo].[People](
	[First_Name] [nvarchar](50) NOT NULL,
	[Last_Name] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](50) NOT NULL,
	[People_ID] [int] IDENTITY(1,1) Primary Key)



CREATE TABLE [dbo].[People_Movies](
	[Movie_ID] [int] NOT NULL,
	[People_ID] [int] NOT NULL,
	[Profession_ID] [int] NOT NULL)
 

CREATE TABLE [dbo].[Profession](
	[ProfessionID] [int] IDENTITY Primary Key,
	[Name] [nvarchar](50) NOT NULL)
	
 
GO



INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Caption  America', CAST(N'1944-02-01' AS Date), N'243', N'Not_Rated')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'The  Avengers  EG', CAST(N'2021-04-19' AS Date), N'111', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Men  in  Black', CAST(N'1997-07-01' AS Date), N'98', N'PG')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Blade', CAST(N'1998-08-01' AS Date), N'120', N'R')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'X  Men', CAST(N'2000-07-01' AS Date), N'104', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Blade2', CAST(N'2002-03-01' AS Date), N'117', N'R')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Spider  man', CAST(N'2002-05-01' AS Date), N'121', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Men  in  Black  2', CAST(N'2002-07-01' AS Date), N'88', NULL)
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Daredevil', CAST(N'2003-02-01' AS Date), N'103', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'X2', CAST(N'2003-05-01' AS Date), N'133', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Thor', CAST(N'2021-05-11' AS Date), N'113', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Iron  Man', CAST(N'2021-05-08' AS Date), N'126', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Hulk', CAST(N'2008-07-01' AS Date), N'114', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Caption  America  first  AV', CAST(N'2011-06-01' AS Date), N'124', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Avengers', CAST(N'2012-05-01' AS Date), N'163', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Thor  Dark  world', CAST(N'2013-11-01' AS Date), N'112', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Captain  America  WS', CAST(N'1905-07-06' AS Date), N'136', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Caption  Marvel', CAST(N'1905-07-11' AS Date), N'124', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Caption  America  CW', CAST(N'2021-05-06' AS Date), N'148', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Avengers  Endgame', CAST(N'2021-04-19' AS Date), N'183', N'PG_13')
INSERT [dbo].[Movies] ( [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES ( N'Black_Panther', CAST(N'2021-02-21' AS Date), N'135', N'PG_13')

GO


INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Robert', N'Downey', N'Jr')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Jon', N'Favreau', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Joe', N'Johnston', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Anna', N'Boden', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Ryan', N'Fleck', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Anthony', N'Russo', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Joe', N'Russo', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Scarelet', N'Johansson', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Chris', N'Evans', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Brie', N'Larson', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Chris', N'Evans', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Chadwick', N'Boseman', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Ryan', N'Coogler', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Mark', N'Ruffalo', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Chris', N'Hemsworth', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Sam', N'Jackson', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Wesley', N'Snips', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Kristen', N'Dunst', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Tobey', N'Magurie', N'')
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix]) VALUES (N'Eric', N'Bana', N'')

GO
INSERT [dbo].[People_Movies] ([Movie_ID], [People_ID], [Profession_ID]) VALUES (1, 2, 1)
INSERT [dbo].[People_Movies] ([Movie_ID], [People_ID], [Profession_ID]) VALUES (2, 2, 1)
GO
GO


INSERT [dbo].[Profession] ( [Name]) VALUES ( N'Actor')
INSERT [dbo].[Profession] ( [Name]) VALUES ( N'Actress')
INSERT [dbo].[Profession] ([Name]) VALUES ( N'Director')

GO






/**
Create Indexes
**/
CREATE NONCLUSTERED INDEX [IX_MovieName] ON [dbo].[Movies] (Movie)
GO

/**
Create Porcedures
**/
CREATE OR ALTER PROCEDURE ReadMovie @Rating varchar (20)=Null AS
BEGIN
	SELECT * FROM Movies WHERE Rating= Coalesce (@Rating, Rating);
END
GO



CREATE OR ALTER PROCEDURE ReadCast AS 
Begin
	SELECT Movie, First_Name, Rating FROM People P
	Inner Join People_Movies PM ON P.People_ID = PM.People_ID
	Inner Join Movies M ON M.Movieid = PM.Movie_ID
End
Go

Execute ReadCast
GO

Execute ReadMovie @Rating = 'R';
GO

CREATE OR ALTER PROCEDURE CreateProfession @Name varchar (20) AS
BEGIN
	INSERT INTO Profession ([Name] ) VALUES ( @Name);
END
GO

Execute CreateProfession @Name  = 'Lighting';
GO

CREATE OR ALTER PROCEDURE UpdateProfession @ID int, @Name varchar (20)  AS
BEGIN 
	UPDATE Profession SET Name= @Name WHERE ProfessionID= @ID
	END
	GO

	Execute UpdateProfession @ID=4, @Name= 'Sound'
	GO

CREATE OR ALTER PROCEDURE DeleteProfession @ID int  AS
BEGIN
	DELETE FROM Profession WHERE ProfessionID= @ID ;
END
GO

Execute DeleteProfession @ID = 4;
GO

/**
Example Commands
**/
SELECT Movie, ReleaseDate
  FROM Movies
  ORDER BY Movie, ReleaseDate
  DESC;
  GO

  SELECT Name
FROM Profession
WHERE Name IS NOT NULL;
  GO