USE [master]
GO
/****** Object:  Database [HotelReservations]    Script Date: 05.04.2024 2:27:52 ******/
CREATE DATABASE [HotelReservations]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelReservations', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HotelReservations.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelReservations_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HotelReservations_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HotelReservations] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelReservations].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelReservations] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelReservations] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelReservations] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelReservations] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelReservations] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelReservations] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelReservations] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelReservations] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelReservations] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelReservations] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelReservations] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelReservations] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelReservations] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelReservations] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelReservations] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HotelReservations] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelReservations] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelReservations] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelReservations] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelReservations] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelReservations] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelReservations] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelReservations] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HotelReservations] SET  MULTI_USER 
GO
ALTER DATABASE [HotelReservations] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelReservations] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelReservations] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelReservations] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelReservations] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelReservations] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HotelReservations] SET QUERY_STORE = OFF
GO
USE [HotelReservations]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 05.04.2024 2:27:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Admin_ID] [int] NOT NULL,
	[Hotel_ID] [int] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 05.04.2024 2:27:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[Hotel_ID] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Stars_ID] [int] NOT NULL,
	[Location] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[Hotel_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 05.04.2024 2:27:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Person_ID] [int] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Age] [int] NULL,
	[Born] [date] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Person_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 05.04.2024 2:27:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[Registration_ID] [int] NOT NULL,
	[Hotel_ID] [int] NOT NULL,
	[Room_ID] [int] NOT NULL,
	[Person_ID] [int] NOT NULL,
	[Date_comeIn] [date] NOT NULL,
	[Date_comeOut] [date] NOT NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[Registration_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 05.04.2024 2:27:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Room_ID] [int] NOT NULL,
	[Hotel_ID] [int] NOT NULL,
	[RoomType_ID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Floor] [int] NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Room_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 05.04.2024 2:27:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[RoomType_ID] [int] NOT NULL,
	[Nane] [nvarchar](20) NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[RoomType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stars]    Script Date: 05.04.2024 2:27:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stars](
	[Stars_ID] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Stars] PRIMARY KEY CLUSTERED 
(
	[Stars_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Hotel] FOREIGN KEY([Hotel_ID])
REFERENCES [dbo].[Hotel] ([Hotel_ID])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_Hotel]
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Stars] FOREIGN KEY([Stars_ID])
REFERENCES [dbo].[Stars] ([Stars_ID])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_Stars]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Hotel] FOREIGN KEY([Hotel_ID])
REFERENCES [dbo].[Hotel] ([Hotel_ID])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Hotel]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Person] FOREIGN KEY([Person_ID])
REFERENCES [dbo].[Person] ([Person_ID])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Person]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Room] FOREIGN KEY([Room_ID])
REFERENCES [dbo].[Room] ([Room_ID])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registration_Room]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Hotel] FOREIGN KEY([Hotel_ID])
REFERENCES [dbo].[Hotel] ([Hotel_ID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Hotel]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomType] FOREIGN KEY([RoomType_ID])
REFERENCES [dbo].[RoomType] ([RoomType_ID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomType]
GO
USE [master]
GO
ALTER DATABASE [HotelReservations] SET  READ_WRITE 
GO
