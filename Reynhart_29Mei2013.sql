USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[process_owner]    Script Date: 05/29/2013 17:20:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[process_owner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_process_owner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[process_owner] ON
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (1, N'BPL')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (2, N'GEL')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (3, N'GDI')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (4, N'POP')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (5, N'MTW')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (6, N'SPE')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (7, N'OHE')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (8, N'EPE')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (9, N'EAI')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (10, N'OSU')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (11, N'LCO')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (12, N'SSU')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (13, N'MER')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (14, N'SEC')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (15, N'SCM')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (16, N'MIS')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (17, N'FPR')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (18, N'PAC')
INSERT [dbo].[process_owner] ([Id], [Name]) VALUES (19, N'FHR')
SET IDENTITY_INSERT [dbo].[process_owner] OFF
