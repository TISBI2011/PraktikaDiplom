USE [master]
GO
/****** Object:  Database [demoZAYAVKA]    Script Date: 17.04.2024 9:58:58 ******/
CREATE DATABASE [demoZAYAVKA]
GO
USE [demoZAYAVKA]
GO
/****** Object:  Table [dbo].[ApplicationExecutor]    Script Date: 17.04.2024 9:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationExecutor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[ExecutorId] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationExecutor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationReport]    Script Date: 17.04.2024 9:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationReport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[Reason] [nvarchar](100) NOT NULL,
	[Solution] [nvarchar](500) NOT NULL,
	[Price] [float] NOT NULL,
	[Time] [time](7) NOT NULL,
 CONSTRAINT [PK_ApplicationReport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationStatus]    Script Date: 17.04.2024 9:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ApplicationStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentType]    Script Date: 17.04.2024 9:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EquipmentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 17.04.2024 9:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Priority] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairApplication]    Script Date: 17.04.2024 9:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairApplication](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Priorityid] [int] NOT NULL,
	[EquipmentTypeId] [int] NOT NULL,
	[EquipmentSerialNumber] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Date] [date] NOT NULL,
	[ApplicationStatusId] [int] NOT NULL,
 CONSTRAINT [PK_RepairApplication] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairPart]    Script Date: 17.04.2024 9:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairPart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RepairPart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestPart]    Script Date: 17.04.2024 9:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestPart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[PartId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_RequestPart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17.04.2024 9:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 17.04.2024 9:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Secondname] [nvarchar](50) NOT NULL,
	[Middlename] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApplicationExecutor]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationExecutor_RepairApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[RepairApplication] ([Id])
GO
ALTER TABLE [dbo].[ApplicationExecutor] CHECK CONSTRAINT [FK_ApplicationExecutor_RepairApplication]
GO
ALTER TABLE [dbo].[ApplicationExecutor]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationExecutor_User] FOREIGN KEY([ExecutorId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ApplicationExecutor] CHECK CONSTRAINT [FK_ApplicationExecutor_User]
GO
ALTER TABLE [dbo].[ApplicationReport]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationReport_RepairApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[RepairApplication] ([Id])
GO
ALTER TABLE [dbo].[ApplicationReport] CHECK CONSTRAINT [FK_ApplicationReport_RepairApplication]
GO
ALTER TABLE [dbo].[RepairApplication]  WITH CHECK ADD  CONSTRAINT [FK_RepairApplication_ApplicationStatus] FOREIGN KEY([ApplicationStatusId])
REFERENCES [dbo].[ApplicationStatus] ([Id])
GO
ALTER TABLE [dbo].[RepairApplication] CHECK CONSTRAINT [FK_RepairApplication_ApplicationStatus]
GO
ALTER TABLE [dbo].[RepairApplication]  WITH CHECK ADD  CONSTRAINT [FK_RepairApplication_EquipmentType] FOREIGN KEY([EquipmentTypeId])
REFERENCES [dbo].[EquipmentType] ([Id])
GO
ALTER TABLE [dbo].[RepairApplication] CHECK CONSTRAINT [FK_RepairApplication_EquipmentType]
GO
ALTER TABLE [dbo].[RepairApplication]  WITH CHECK ADD  CONSTRAINT [FK_RepairApplication_Priority] FOREIGN KEY([Priorityid])
REFERENCES [dbo].[Priority] ([Id])
GO
ALTER TABLE [dbo].[RepairApplication] CHECK CONSTRAINT [FK_RepairApplication_Priority]
GO
ALTER TABLE [dbo].[RepairApplication]  WITH CHECK ADD  CONSTRAINT [FK_RepairApplication_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[RepairApplication] CHECK CONSTRAINT [FK_RepairApplication_User]
GO
ALTER TABLE [dbo].[RequestPart]  WITH CHECK ADD  CONSTRAINT [FK_RequestPart_RepairApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[RepairApplication] ([Id])
GO
ALTER TABLE [dbo].[RequestPart] CHECK CONSTRAINT [FK_RequestPart_RepairApplication]
GO
ALTER TABLE [dbo].[RequestPart]  WITH CHECK ADD  CONSTRAINT [FK_RequestPart_RepairPart] FOREIGN KEY([PartId])
REFERENCES [dbo].[RepairPart] ([Id])
GO
ALTER TABLE [dbo].[RequestPart] CHECK CONSTRAINT [FK_RequestPart_RepairPart]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [demoZAYAVKA] SET  READ_WRITE 
GO
