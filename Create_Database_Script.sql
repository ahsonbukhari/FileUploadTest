USE [master]
GO

/****** Object:  Database [FileUploadTest]    Script Date: 22/03/2021 14:01:06 ******/
CREATE DATABASE [FileUploadTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FileUploadTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FileUploadTest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FileUploadTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FileUploadTest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FileUploadTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [FileUploadTest] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [FileUploadTest] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [FileUploadTest] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [FileUploadTest] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [FileUploadTest] SET ARITHABORT OFF 
GO

ALTER DATABASE [FileUploadTest] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [FileUploadTest] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [FileUploadTest] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [FileUploadTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [FileUploadTest] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [FileUploadTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [FileUploadTest] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [FileUploadTest] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [FileUploadTest] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [FileUploadTest] SET  DISABLE_BROKER 
GO

ALTER DATABASE [FileUploadTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [FileUploadTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [FileUploadTest] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [FileUploadTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [FileUploadTest] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [FileUploadTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [FileUploadTest] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [FileUploadTest] SET RECOVERY FULL 
GO

ALTER DATABASE [FileUploadTest] SET  MULTI_USER 
GO

ALTER DATABASE [FileUploadTest] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [FileUploadTest] SET DB_CHAINING OFF 
GO

ALTER DATABASE [FileUploadTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [FileUploadTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [FileUploadTest] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [FileUploadTest] SET QUERY_STORE = OFF
GO

ALTER DATABASE [FileUploadTest] SET  READ_WRITE 
GO

