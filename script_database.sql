-- 1. Tạo Database
CREATE DATABASE ShoppingServiceMVC;
GO
USE ShoppingServiceMVC;
GO

-- 2. Tạo bảng [User]
CREATE TABLE [dbo].[User](
    [id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [email] [varchar](50) NULL,
    [username] [varchar](50) NULL,
    [fullname] [nvarchar](50) NULL,
    [password] [varchar](50) NULL,
    [avatar] [varchar](50) NULL,
    [roleid] [int] NULL,
    [phone] [varchar](15) NULL,
    [createdDate] [date] NULL
);
GO

-- 3. Tạo bảng Category
CREATE TABLE [dbo].[Category](
    [cate_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [cate_name] [nvarchar](255) NULL,
    [icons] [nvarchar](max) NULL
);
GO

-- 4. Thêm tài khoản Admin và Khách mẫu
INSERT INTO [dbo].[User] ([email], [username], [fullname], [password], [roleid], [phone], [createdDate])
VALUES 
('admin@gmail.com', 'admin', N'Quản Trị Viên', '123', 1, '0987654321', GETDATE()),
('user@gmail.com', 'user', N'Khách Mua Hàng', '123', 3, '0123456789', GETDATE());
GO