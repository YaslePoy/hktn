USE [master]
GO
/****** Object:  Database [Invites]    Script Date: 22.12.2021 17:00:45 ******/
CREATE DATABASE [Invites]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Invites', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Invites.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Invites_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Invites_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Invites] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Invites].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Invites] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Invites] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Invites] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Invites] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Invites] SET ARITHABORT OFF 
GO
ALTER DATABASE [Invites] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Invites] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Invites] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Invites] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Invites] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Invites] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Invites] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Invites] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Invites] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Invites] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Invites] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Invites] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Invites] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Invites] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Invites] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Invites] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Invites] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Invites] SET RECOVERY FULL 
GO
ALTER DATABASE [Invites] SET  MULTI_USER 
GO
ALTER DATABASE [Invites] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Invites] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Invites] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Invites] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Invites] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Invites] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Invites', N'ON'
GO
ALTER DATABASE [Invites] SET QUERY_STORE = OFF
GO
USE [Invites]
GO
/****** Object:  Table [dbo].[Invite]    Script Date: 22.12.2021 17:00:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invite](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](150) NULL,
	[Name] [nvarchar](50) NULL,
	[FreeCount] [int] NULL,
	[TotalCount] [int] NULL,
	[Focus] [nvarchar](50) NULL,
	[DateTime] [datetime] NULL,
	[AuthorId] [int] NULL,
	[Descr] [nvarchar](max) NULL,
 CONSTRAINT [PK_Invite] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22.12.2021 17:00:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Tags] [nvarchar](max) NULL,
	[TagsStory] [nvarchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Invite] ON 

INSERT [dbo].[Invite] ([Id], [Location], [Name], [FreeCount], [TotalCount], [Focus], [DateTime], [AuthorId], [Descr]) VALUES (1, N'test street', N'test fest', 15, 234, N'progging', CAST(N'2022-12-22T00:00:00.000' AS DateTime), NULL, N'rerwerwew')
INSERT [dbo].[Invite] ([Id], [Location], [Name], [FreeCount], [TotalCount], [Focus], [DateTime], [AuthorId], [Descr]) VALUES (3, N'test 2', N'fest test', 45, 463, N'yerge', NULL, NULL, N'fdsf')
SET IDENTITY_INSERT [dbo].[Invite] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Tags], [TagsStory]) VALUES (1, N'test', NULL, NULL)
INSERT [dbo].[User] ([Id], [Name], [Tags], [TagsStory]) VALUES (2, N'test2', NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Invite]  WITH CHECK ADD  CONSTRAINT [FK_Invite_User] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Invite] CHECK CONSTRAINT [FK_Invite_User]
GO
USE [master]
GO
ALTER DATABASE [Invites] SET  READ_WRITE 
GO
