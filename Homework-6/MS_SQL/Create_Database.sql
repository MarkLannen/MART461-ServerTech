USE [master]
GO

/****** Object:  Database [Esports]    Script Date: 9/27/2020 7:55:38 PM ******/
CREATE DATABASE [Esports]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Esports', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Esports.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Esports_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Esports_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Esports].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Esports] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Esports] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Esports] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Esports] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Esports] SET ARITHABORT OFF 
GO

ALTER DATABASE [Esports] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Esports] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Esports] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Esports] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Esports] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Esports] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Esports] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Esports] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Esports] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Esports] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Esports] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Esports] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Esports] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Esports] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Esports] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Esports] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Esports] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Esports] SET RECOVERY FULL 
GO

ALTER DATABASE [Esports] SET  MULTI_USER 
GO

ALTER DATABASE [Esports] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Esports] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Esports] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Esports] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Esports] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Esports] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Esports] SET  READ_WRITE 
GO

