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

drop procedure if exists dbo.ReadMovie
/****** Object:  Table [dbo].[Movies]    Script Date: 11/18/2021 12:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[Movie] [nvarchar](128) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[RunTime] [nvarchar](128) NOT NULL,
	[Rating] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies_data_BAD]    Script Date: 11/18/2021 12:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[People]    Script Date: 11/18/2021 12:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[First_Name] [nvarchar](50) NOT NULL,
	[Last_Name] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](50) NOT NULL,
	[People_ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[People_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People_Movies]    Script Date: 11/18/2021 12:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People_Movies](
	[Movie_ID] [int] NOT NULL,
	[People_ID] [int] NOT NULL,
	[Profession_ID] [int] NOT NULL,
 CONSTRAINT [PK_People_Movies] PRIMARY KEY CLUSTERED 
(
	[Movie_ID] ASC,
	[People_ID] ASC,
	[Profession_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People_old]    Script Date: 11/18/2021 12:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[Profession]    Script Date: 11/18/2021 12:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profession](
	[ProfessionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Profession] [nvarchar](10) NULL,
 CONSTRAINT [PK__People__2B2439FCF1BC2A7C] PRIMARY KEY CLUSTERED 
(
	[ProfessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQL_code]    Script Date: 11/18/2021 12:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (1, N'Caption  America', CAST(N'1944-02-01' AS Date), N'243', N'Not_Rated')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (2, N'The  Avengers  EG', CAST(N'2021-04-19' AS Date), N'111', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (3, N'Men  in  Black', CAST(N'1997-07-01' AS Date), N'98', N'PG')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (4, N'Blade', CAST(N'1998-08-01' AS Date), N'120', N'R')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (5, N'X  Men', CAST(N'2000-07-01' AS Date), N'104', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (6, N'Blade2', CAST(N'2002-03-01' AS Date), N'117', N'R')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (7, N'Spider  man', CAST(N'2002-05-01' AS Date), N'121', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (8, N'Men  in  Black  2', CAST(N'2002-07-01' AS Date), N'88', NULL)
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (9, N'Daredevil', CAST(N'2003-02-01' AS Date), N'103', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (10, N'X2', CAST(N'2003-05-01' AS Date), N'133', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (11, N'Thor', CAST(N'2021-05-11' AS Date), N'113', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (12, N'Iron  Man', CAST(N'2021-05-08' AS Date), N'126', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (13, N'Hulk', CAST(N'2008-07-01' AS Date), N'114', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (14, N'Caption  America  first  AV', CAST(N'2011-06-01' AS Date), N'124', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (15, N'Avengers', CAST(N'2012-05-01' AS Date), N'163', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (16, N'Thor  Dark  world', CAST(N'2013-11-01' AS Date), N'112', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (17, N'Captain  America  WS', CAST(N'1905-07-06' AS Date), N'136', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (18, N'Caption  Marvel', CAST(N'1905-07-11' AS Date), N'124', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (19, N'Caption  America  CW', CAST(N'2021-05-06' AS Date), N'148', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (20, N'Avengers  Endgame', CAST(N'2021-04-19' AS Date), N'183', N'PG_13')
INSERT [dbo].[Movies] ([MovieId], [Movie], [ReleaseDate], [RunTime], [Rating]) VALUES (21, N'Black_Panther', CAST(N'2021-02-21' AS Date), N'135', N'PG_13')
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 

INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Robert', N'Downey', N'Jr', 2)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Jon', N'Favreau', N'', 3)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Joe', N'Johnston', N'', 4)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Anna', N'Boden', N'', 5)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Ryan', N'Fleck', N'', 6)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Anthony', N'Russo', N'', 7)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Joe', N'Russo', N'', 8)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Scarelet', N'Johansson', N'', 9)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Chris', N'Evans', N'', 10)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Brie', N'Larson', N'', 11)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Chris', N'Evans', N'', 12)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Chadwick', N'Boseman', N'', 13)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Ryan', N'Coogler', N'', 14)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Mark', N'Ruffalo', N'', 15)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Chris', N'Hemsworth', N'', 16)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Sam', N'Jackson', N'', 17)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Wesley', N'Snips', N'', 18)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Kristen', N'Dunst', N'', 19)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Tobey', N'Magurie', N'', 20)
INSERT [dbo].[People] ([First_Name], [Last_Name], [Suffix], [People_ID]) VALUES (N'Eric', N'Bana', N'', 21)
SET IDENTITY_INSERT [dbo].[People] OFF
GO
INSERT [dbo].[People_Movies] ([Movie_ID], [People_ID], [Profession_ID]) VALUES (1, 2, 1)
INSERT [dbo].[People_Movies] ([Movie_ID], [People_ID], [Profession_ID]) VALUES (2, 2, 1)
GO
GO
SET IDENTITY_INSERT [dbo].[Profession] ON 

INSERT [dbo].[Profession] ([ProfessionID], [Name], [Profession]) VALUES (1, N'Actor', NULL)
INSERT [dbo].[Profession] ([ProfessionID], [Name], [Profession]) VALUES (2, N'Actress', NULL)
INSERT [dbo].[Profession] ([ProfessionID], [Name], [Profession]) VALUES (3, N'Director', NULL)
SET IDENTITY_INSERT [dbo].[Profession] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MovieName]    Script Date: 11/18/2021 12:22:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_MovieName] ON [dbo].[Movies]
(
	[Movie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_People_People] FOREIGN KEY([People_ID])
REFERENCES [dbo].[People] ([People_ID])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_People_People]
GO
ALTER TABLE [dbo].[People_Movies]  WITH CHECK ADD  CONSTRAINT [FK_People_Movies_Movies] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movies] ([MovieId])
GO
ALTER TABLE [dbo].[People_Movies] CHECK CONSTRAINT [FK_People_Movies_Movies]
GO
ALTER TABLE [dbo].[People_Movies]  WITH CHECK ADD  CONSTRAINT [FK_People_Movies_People] FOREIGN KEY([People_ID])
REFERENCES [dbo].[People] ([People_ID])
GO
ALTER TABLE [dbo].[People_Movies] CHECK CONSTRAINT [FK_People_Movies_People]
GO
ALTER TABLE [dbo].[People_Movies]  WITH CHECK ADD  CONSTRAINT [FK_People_Movies_People_Movies] FOREIGN KEY([Movie_ID], [People_ID], [Profession_ID])
REFERENCES [dbo].[People_Movies] ([Movie_ID], [People_ID], [Profession_ID])
GO
ALTER TABLE [dbo].[People_Movies] CHECK CONSTRAINT [FK_People_Movies_People_Movies]
GO
ALTER TABLE [dbo].[People_Movies]  WITH CHECK ADD  CONSTRAINT [FK_People_Movies_Profession] FOREIGN KEY([Profession_ID])
REFERENCES [dbo].[Profession] ([ProfessionID])
GO
ALTER TABLE [dbo].[People_Movies] CHECK CONSTRAINT [FK_People_Movies_Profession]
GO
/****** Object:  StoredProcedure [dbo].[ReadMovie]    Script Date: 11/18/2021 12:22:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/**
Create Porcedures
**/
CREATE   PROCEDURE [dbo].[ReadMovie] @Rating varchar (20)=Null AS
BEGIN
	SELECT * FROM Movies WHERE Rating= Coalesce (@Rating, Rating);
END
GO
USE [master]
GO
ALTER DATABASE [Films] SET  READ_WRITE 
GO

/**
Create Indexes
**/


/**
Create Porcedures
**/
CREATE OR ALTER PROCEDURE ReadMovie @Rating varchar (20)=Null AS
BEGIN
	SELECT * FROM Movie WHERE Rating= Coalesce (@Rating, Rating);
END
GO

