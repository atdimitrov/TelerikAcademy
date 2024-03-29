USE [master]
GO
/****** Object:  Database [ContinentsAndAdressesNoDuplicateChance]    Script Date: 20.08.2014 16:29:14 ******/
CREATE DATABASE [ContinentsAndAdressesNoDuplicateChance]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ContinentsAndAdressesNoDuplicateChance', FILENAME = N'D:\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ContinentsAndAdressesNoDuplicateChance.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ContinentsAndAdressesNoDuplicateChance_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ContinentsAndAdressesNoDuplicateChance_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ContinentsAndAdressesNoDuplicateChance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET ARITHABORT OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET RECOVERY FULL 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET  MULTI_USER 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ContinentsAndAdressesNoDuplicateChance', N'ON'
GO
USE [ContinentsAndAdressesNoDuplicateChance]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 20.08.2014 16:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AddressText] [nvarchar](50) NOT NULL,
	[TownID] [int] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Continents]    Script Date: 20.08.2014 16:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Continents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 20.08.2014 16:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ContinentID] [int] NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persons]    Script Date: 20.08.2014 16:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Towns]    Script Date: 20.08.2014 16:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Towns](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryID] [int] NOT NULL,
 CONSTRAINT [PK_Towns] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 

INSERT [dbo].[Addresses] ([ID], [AddressText], [TownID]) VALUES (1, N'Aleksandar Malinov Blvd. 31', 1)
INSERT [dbo].[Addresses] ([ID], [AddressText], [TownID]) VALUES (2, N'Aleksandar Dondukov Blvd. 1', 1)
INSERT [dbo].[Addresses] ([ID], [AddressText], [TownID]) VALUES (3, N'Vitosha Blvd. 16', 1)
INSERT [dbo].[Addresses] ([ID], [AddressText], [TownID]) VALUES (4, N'Hristo Botev Blvd. 33', 3)
INSERT [dbo].[Addresses] ([ID], [AddressText], [TownID]) VALUES (5, N'Stromstraße 35', 5)
INSERT [dbo].[Addresses] ([ID], [AddressText], [TownID]) VALUES (6, N'Leipziger Straße 46', 5)
INSERT [dbo].[Addresses] ([ID], [AddressText], [TownID]) VALUES (8, N'639 Montgomery St', 7)
INSERT [dbo].[Addresses] ([ID], [AddressText], [TownID]) VALUES (9, N'Av. Celso Garcia, 1008', 11)
SET IDENTITY_INSERT [dbo].[Addresses] OFF
SET IDENTITY_INSERT [dbo].[Continents] ON 

INSERT [dbo].[Continents] ([ID], [Name]) VALUES (1, N'Europe')
INSERT [dbo].[Continents] ([ID], [Name]) VALUES (2, N'Africa')
INSERT [dbo].[Continents] ([ID], [Name]) VALUES (3, N'North America')
INSERT [dbo].[Continents] ([ID], [Name]) VALUES (4, N'South America')
INSERT [dbo].[Continents] ([ID], [Name]) VALUES (5, N'Australia')
INSERT [dbo].[Continents] ([ID], [Name]) VALUES (6, N'Asia')
SET IDENTITY_INSERT [dbo].[Continents] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (1, N'Bulgaria', 1)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (2, N'Germany', 1)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (3, N'USA', 3)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (4, N'Brazil', 4)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (5, N'Canada', 3)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (6, N'Egypt', 2)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (7, N'China', 6)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (8, N'Australia', 5)
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([ID], [FirstName], [LastName], [AddressID]) VALUES (1, N'Pesho', N'Goshov', 1)
INSERT [dbo].[Persons] ([ID], [FirstName], [LastName], [AddressID]) VALUES (2, N'Ivan', N'Ivanov', 2)
INSERT [dbo].[Persons] ([ID], [FirstName], [LastName], [AddressID]) VALUES (3, N'Georgi', N'Dimitrov', 3)
INSERT [dbo].[Persons] ([ID], [FirstName], [LastName], [AddressID]) VALUES (4, N'Evlogi', N'Georgiev', 2)
INSERT [dbo].[Persons] ([ID], [FirstName], [LastName], [AddressID]) VALUES (5, N'Adrian', N'Bauer', 5)
INSERT [dbo].[Persons] ([ID], [FirstName], [LastName], [AddressID]) VALUES (6, N'George', N'Colt', 8)
SET IDENTITY_INSERT [dbo].[Persons] OFF
SET IDENTITY_INSERT [dbo].[Towns] ON 

INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (1, N'Sofia', 1)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (2, N'Plovdiv', 1)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (3, N'Varna', 1)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (4, N'Vratsa', 1)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (5, N'Berlin', 2)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (6, N'Munchen', 2)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (7, N'New York', 3)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (8, N'Sidney', 8)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (9, N'Shanghai', 7)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (10, N'Ottawa', 5)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (11, N'Sao Paulo', 4)
SET IDENTITY_INSERT [dbo].[Towns] OFF
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Towns] FOREIGN KEY([TownID])
REFERENCES [dbo].[Towns] ([ID])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Towns]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_Countries_Continents] FOREIGN KEY([ContinentID])
REFERENCES [dbo].[Continents] ([ID])
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_Countries_Continents]
GO
ALTER TABLE [dbo].[Persons]  WITH CHECK ADD  CONSTRAINT [FK_Persons_Addresses] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Addresses] ([ID])
GO
ALTER TABLE [dbo].[Persons] CHECK CONSTRAINT [FK_Persons_Addresses]
GO
ALTER TABLE [dbo].[Towns]  WITH CHECK ADD  CONSTRAINT [FK_Towns_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Towns] CHECK CONSTRAINT [FK_Towns_Countries]
GO
USE [master]
GO
ALTER DATABASE [ContinentsAndAdressesNoDuplicateChance] SET  READ_WRITE 
GO
