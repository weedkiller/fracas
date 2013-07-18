USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[daily_log_operation_warning]    Script Date: 5/14/2013 9:05:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[daily_log_operation_warning](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[warning] [text] NULL,
 CONSTRAINT [PK_daily_log_operation_warning] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[daily_log_weekly_target]    Script Date: 5/14/2013 9:05:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[daily_log_weekly_target](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[shift] [tinyint] NULL,
	[target] [text] NULL,
 CONSTRAINT [PK_daily_log_weekly_target] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[daily_log_operation_warning] ON 

INSERT [dbo].[daily_log_operation_warning] ([id], [date], [warning]) VALUES (1, CAST(0x12370B00 AS Date), N'asdsadsadsa
asdsadas
xzczxcz
sdsfsdfds
asdsadas asdasdas')
INSERT [dbo].[daily_log_operation_warning] ([id], [date], [warning]) VALUES (2, CAST(0x10370B00 AS Date), N'kfoghkfgklflgjdflkgfdlkjdfg
asdsdasdsa
asdsadsa
asdsadsadsadas
mbncmvbmvcbnmcvb')
SET IDENTITY_INSERT [dbo].[daily_log_operation_warning] OFF
SET IDENTITY_INSERT [dbo].[daily_log_weekly_target] ON 

INSERT [dbo].[daily_log_weekly_target] ([id], [date], [shift], [target]) VALUES (1, CAST(0x11370B00 AS Date), 2, N'asdsadfasfsafasasfasd
asdsadadsa
adasdccsdf')
INSERT [dbo].[daily_log_weekly_target] ([id], [date], [shift], [target]) VALUES (2, CAST(0x11370B00 AS Date), 1, N'adjaskldjsaklf
asdjasdhkjh
qweqrqwrq
qweqweqw')
INSERT [dbo].[daily_log_weekly_target] ([id], [date], [shift], [target]) VALUES (3, CAST(0x12370B00 AS Date), 1, N'asdasdad
werewrew
gfgfhhg
ffbgnfg')
INSERT [dbo].[daily_log_weekly_target] ([id], [date], [shift], [target]) VALUES (4, CAST(0x15370B00 AS Date), 1, N'sakdjaklfjalkfj
asfjashjkdhaskj
fdhjsdfshjd
cxmvnxcvm
pqwoepqoepqwopeowqpe qwoepqe')
SET IDENTITY_INSERT [dbo].[daily_log_weekly_target] OFF
