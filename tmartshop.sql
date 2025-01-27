USE [master]
GO
/****** Object:  Database [asmJava6]    Script Date: 12/26/2024 6:02:06 AM ******/
CREATE DATABASE [asmJava6]
 CONTAINMENT = NONE
 ON  PRIMARY
( NAME = N'asmJava6', FILENAME = N'D:\Sqlserver\MSSQL16.SQLEXPRESS\MSSQL\DATA\asmJava6.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON
( NAME = N'asmJava6_log', FILENAME = N'D:\Sqlserver\MSSQL16.SQLEXPRESS\MSSQL\DATA\asmJava6_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [asmJava6] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [asmJava6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [asmJava6] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [asmJava6] SET ANSI_NULLS OFF
GO
ALTER DATABASE [asmJava6] SET ANSI_PADDING OFF
GO
ALTER DATABASE [asmJava6] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [asmJava6] SET ARITHABORT OFF
GO
ALTER DATABASE [asmJava6] SET AUTO_CLOSE ON
GO
ALTER DATABASE [asmJava6] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [asmJava6] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [asmJava6] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [asmJava6] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [asmJava6] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [asmJava6] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [asmJava6] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [asmJava6] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [asmJava6] SET  ENABLE_BROKER
GO
ALTER DATABASE [asmJava6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [asmJava6] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [asmJava6] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [asmJava6] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [asmJava6] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [asmJava6] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [asmJava6] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [asmJava6] SET RECOVERY SIMPLE
GO
ALTER DATABASE [asmJava6] SET  MULTI_USER
GO
ALTER DATABASE [asmJava6] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [asmJava6] SET DB_CHAINING OFF
GO
ALTER DATABASE [asmJava6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO
ALTER DATABASE [asmJava6] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO
ALTER DATABASE [asmJava6] SET DELAYED_DURABILITY = DISABLED
GO
ALTER DATABASE [asmJava6] SET ACCELERATED_DATABASE_RECOVERY = OFF
GO
ALTER DATABASE [asmJava6] SET QUERY_STORE = ON
GO
ALTER DATABASE [asmJava6] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [asmJava6]
GO
/****** Object:  Table [dbo].[account_roles]    Script Date: 12/26/2024 6:02:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_roles](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [username] [varchar](255) NULL,
    [roleid] [varchar](255) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
    CONSTRAINT [UK9kyv3fwh0ogtp5sa340me9i4y] UNIQUE NONCLUSTERED
(
    [username] ASC,
[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[accounts]    Script Date: 12/26/2024 6:02:07 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[accounts](
    [email] [varchar](255) NOT NULL,
    [name] [nvarchar](100) NOT NULL,
    [password] [varchar](255) NULL,
    [register_date] [date] NULL,
    PRIMARY KEY CLUSTERED
(
[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[brand]    Script Date: 12/26/2024 6:02:07 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[brand](
    [brandid] [int] IDENTITY(1,1) NOT NULL,
    [name] [varchar](255) NULL,
    PRIMARY KEY CLUSTERED
(
[brandid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[cart_item_details]    Script Date: 12/26/2024 6:02:07 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[cart_item_details](
    [cart_detailid] [int] IDENTITY(1,1) NOT NULL,
    [quantity] [int] NULL,
    [real_price] [float] NULL,
    [cartid] [int] NULL,
    [productid] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[cart_detailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[cart_items]    Script Date: 12/26/2024 6:02:07 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[cart_items](
    [cartid] [int] IDENTITY(1,1) NOT NULL,
    [username] [varchar](255) NULL,
    PRIMARY KEY CLUSTERED
(
[cartid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[categories]    Script Date: 12/26/2024 6:02:07 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[categories](
    [categoryid] [int] IDENTITY(1,1) NOT NULL,
    [name] [nvarchar](100) NOT NULL,
    PRIMARY KEY CLUSTERED
(
[categoryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 12/26/2024 6:02:07 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[order_detail](
    [order_detailid] [int] IDENTITY(1,1) NOT NULL,
    [quantity] [int] NULL,
    [unit_price] [float] NULL,
    [orderid] [int] NULL,
    [productid] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[order_detailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[orders]    Script Date: 12/26/2024 6:02:07 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[orders](
    [orderid] [int] IDENTITY(1,1) NOT NULL,
    [adress] [nvarchar](100) NOT NULL,
    [amount] [float] NULL,
    [order_date] [date] NULL,
    [phone] [varchar](255) NULL,
    [status] [nvarchar](50) NOT NULL,
    [user_id] [varchar](255) NULL,
    PRIMARY KEY CLUSTERED
(
[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[products]    Script Date: 12/26/2024 6:02:07 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[products](
    [productid] [int] IDENTITY(1,1) NOT NULL,
    [description] [nvarchar](500) NOT NULL,
    [discount] [int] NULL,
    [entered_date] [date] NULL,
    [image] [nvarchar](500) NULL,
    [name] [nvarchar](50) NOT NULL,
    [quantity] [int] NULL,
    [unit_price] [float] NULL,
    [brandid] [int] NULL,
    [categoryid] [int] NULL,
    PRIMARY KEY CLUSTERED
(
[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[roles]    Script Date: 12/26/2024 6:02:07 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[roles](
    [id] [varchar](255) NOT NULL,
    [name] [varchar](255) NULL,
    PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
ALTER TABLE [dbo].[account_roles]  WITH CHECK ADD  CONSTRAINT [FK6kwduxfpjkk274099sn1p61xe] FOREIGN KEY([roleid])
    REFERENCES [dbo].[roles] ([id])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[account_roles] CHECK CONSTRAINT [FK6kwduxfpjkk274099sn1p61xe]
    GO
ALTER TABLE [dbo].[account_roles]  WITH CHECK ADD  CONSTRAINT [FKtfhhnp3896t3sqmv4agy6h7l9] FOREIGN KEY([username])
    REFERENCES [dbo].[accounts] ([email])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[account_roles] CHECK CONSTRAINT [FKtfhhnp3896t3sqmv4agy6h7l9]
    GO
ALTER TABLE [dbo].[cart_item_details]  WITH CHECK ADD  CONSTRAINT [FKakrv6l8tsyfp9sslrj00qtuvx] FOREIGN KEY([cartid])
    REFERENCES [dbo].[cart_items] ([cartid])
    GO
ALTER TABLE [dbo].[cart_item_details] CHECK CONSTRAINT [FKakrv6l8tsyfp9sslrj00qtuvx]
    GO
ALTER TABLE [dbo].[cart_item_details]  WITH CHECK ADD  CONSTRAINT [FKkijvh6baar68cj1qlbga85up7] FOREIGN KEY([productid])
    REFERENCES [dbo].[products] ([productid])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cart_item_details] CHECK CONSTRAINT [FKkijvh6baar68cj1qlbga85up7]
    GO
ALTER TABLE [dbo].[cart_items]  WITH CHECK ADD  CONSTRAINT [FKsbnqs2wn6yky394ff6d5fn79d] FOREIGN KEY([username])
    REFERENCES [dbo].[accounts] ([email])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cart_items] CHECK CONSTRAINT [FKsbnqs2wn6yky394ff6d5fn79d]
    GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK715ucxrvknue1cfnb458qh5n5] FOREIGN KEY([orderid])
    REFERENCES [dbo].[orders] ([orderid])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK715ucxrvknue1cfnb458qh5n5]
    GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK8a52jf2d0glhvlvfnnirjtvsc] FOREIGN KEY([productid])
    REFERENCES [dbo].[products] ([productid])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK8a52jf2d0glhvlvfnnirjtvsc]
    GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKfdghiqofe8gwujnn3kath52os] FOREIGN KEY([user_id])
    REFERENCES [dbo].[accounts] ([email])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKfdghiqofe8gwujnn3kath52os]
    GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q] FOREIGN KEY([categoryid])
    REFERENCES [dbo].[categories] ([categoryid])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q]
    GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK9q4x8op9vl9enjy7bk5qagjnh] FOREIGN KEY([brandid])
    REFERENCES [dbo].[brand] ([brandid])
    ON DELETE CASCADE
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK9q4x8op9vl9enjy7bk5qagjnh]
    GO
    USE [master]
    GO
ALTER DATABASE [asmJava6] SET  READ_WRITE
GO
