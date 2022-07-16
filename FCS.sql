
USE [master]
DROP DATABASE IF EXISTS  [test_db]
GO
/****** Object:  Database [test_db]    Script Date: 13/07/2022 3:51:01 AM ******/
CREATE DATABASE [test_db]
USE [test_db]

CREATE TABLE [roles](
	[id] [int] NOT NULL primary key,
	[name] [varchar](30) NULL)
GO
/****** Object:  Table [dbo].[users]    Script Date: 13/07/2022 3:51:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [users](
	[id] [int] IDENTITY(1,1) NOT NULL primary key,
	[first_name] [varchar](30) NULL,
	[last_name] [varchar](30) NULL,
	[username] [varchar](50) NULL,
	[email] [varchar](255) NULL,
	[phone] [varchar](15) NULL,
	[address] [text] NULL,
	[password] [varchar](255) NULL
)
CREATE TABLE [users_roles](
	[user_id] [int] NOT NULL foreign key references users(id),
	[role_id] [int] NOT NULL foreign key references roles(id),
	primary key ([user_id], role_id)
)
CREATE TABLE
INSERT users(first_name, last_name,username, password, email, phone, address)
Values('Anh', 'Pham', 'latdat', '$2a$10$4/1Gz0I/t.TeRRaqU1QXWeQcC03vfCaLbMb8FEaC7ICh4nbVYGcTq', 'anhptvhe150038@fpt.edu.vn', '0987654321', 'Hai Duong'),
('Phuong', 'Nguyen', 'phuongnh', '$2a$10$4/1Gz0I/t.TeRRaqU1QXWeQcC03vfCaLbMb8FEaC7ICh4nbVYGcTq', 'phuongnhhe150172@fpt.edu.vn', '0987654321', 'Ha Noi')
GO
INSERT roles(id, name)
VALUES(1,'ROLE_ADMIN'),
(2,'ROLE_USER')
GO
INSERT users_roles(user_id, role_id)
VALUES(1, 1),
(2, 2)
