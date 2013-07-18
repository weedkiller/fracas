USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 3/24/2013 8:14:45 AM ******/
DROP TABLE [dbo].[user_role]
GO
/****** Object:  Table [dbo].[rca_fishbone_master]    Script Date: 3/24/2013 8:14:45 AM ******/
DROP TABLE [dbo].[rca_fishbone_master]
GO
/****** Object:  Table [dbo].[rca_fishbone_master]    Script Date: 3/24/2013 8:14:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_fishbone_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_fishbone_master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 3/24/2013 8:14:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_role](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[role] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca_fishbone_master] ON 

INSERT [dbo].[rca_fishbone_master] ([id], [name]) VALUES (1, N'Methods')
INSERT [dbo].[rca_fishbone_master] ([id], [name]) VALUES (2, N'Machines')
INSERT [dbo].[rca_fishbone_master] ([id], [name]) VALUES (3, N'People')
INSERT [dbo].[rca_fishbone_master] ([id], [name]) VALUES (4, N'Environment')
INSERT [dbo].[rca_fishbone_master] ([id], [name]) VALUES (5, N'Materials')
INSERT [dbo].[rca_fishbone_master] ([id], [name]) VALUES (6, N'Measurements')
SET IDENTITY_INSERT [dbo].[rca_fishbone_master] OFF
SET IDENTITY_INSERT [dbo].[user_role] ON 

INSERT [dbo].[user_role] ([id], [role]) VALUES (0, N'Admin Data Master')
INSERT [dbo].[user_role] ([id], [role]) VALUES (1, N'Admin Data Input')
INSERT [dbo].[user_role] ([id], [role]) VALUES (2, N'RCA')
INSERT [dbo].[user_role] ([id], [role]) VALUES (3, N'Pir Initiator')
INSERT [dbo].[user_role] ([id], [role]) VALUES (4, N'Pir Process Admin')
INSERT [dbo].[user_role] ([id], [role]) VALUES (5, N'RCA View')
INSERT [dbo].[user_role] ([id], [role]) VALUES (6, N'SHE')
INSERT [dbo].[user_role] ([id], [role]) VALUES (7, N'User Approval IR')
SET IDENTITY_INSERT [dbo].[user_role] OFF
