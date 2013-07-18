USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[daily_log_sap]    Script Date: 5/23/2013 6:10:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_sap](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_daily_log] [int] NULL,
	[notif_no] [varchar](50) NULL,
	[department] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[notif_by] [varchar](255) NULL,
	[sap_time] [varchar](50) NULL,
 CONSTRAINT [PK_daily_log_sap] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trouble_shooting]    Script Date: 5/23/2013 6:10:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trouble_shooting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[no] [varchar](50) NULL,
	[equipment_no] [varchar](50) NULL,
	[equipment_description] [varchar](255) NULL,
	[date_of_trouble] [date] NULL,
	[time_of_trouble] [time](7) NULL,
	[start_date_repair] [date] NULL,
	[end_date_repair] [date] NULL,
	[time_repaired] [varchar](255) NULL,
	[wo_number] [varchar](50) NULL,
	[description_trouble] [text] NULL,
	[as_found_condition] [text] NULL,
	[analysis] [text] NULL,
	[action] [text] NULL,
	[recommendation] [text] NULL,
	[inspector_name] [varchar](50) NULL,
	[inspector_signature] [varchar](255) NULL,
	[approval_name] [varchar](50) NULL,
	[approval_signature] [varchar](255) NULL,
	[inspector_date] [date] NULL,
	[approval_date] [date] NULL,
	[id_ir] [int] NULL,
 CONSTRAINT [PK_trouble_shooting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[trouble_shooting] ON 

INSERT [dbo].[trouble_shooting] ([id], [no], [equipment_no], [equipment_description], [date_of_trouble], [time_of_trouble], [start_date_repair], [end_date_repair], [time_repaired], [wo_number], [description_trouble], [as_found_condition], [analysis], [action], [recommendation], [inspector_name], [inspector_signature], [approval_name], [approval_signature], [inspector_date], [approval_date], [id_ir]) VALUES (1, NULL, N'TSxxxx-00001', N'skjahdh ajsdklsad', CAST(0x21370B00 AS Date), NULL, CAST(0x21370B00 AS Date), CAST(0x22370B00 AS Date), N'123', N'4829312', N'skdjfks jadshkfdhs asjdhkjafhk asjdhakjshfkjs', N'&lt;p&gt;asdadasds&lt;/p&gt;

&lt;p&gt;adsadsadsad&lt;/p&gt;

&lt;p&gt;sadsadas&lt;/p&gt;

&lt;p&gt;&lt;img alt="" src="http://localhost:61346/Scripts/Filemanager/userfiles/Fiturenkripsiserver.jpg" style="height:48px; width:118px" /&gt;&lt;/p&gt;
', N'&lt;p&gt;asdsadas&lt;/p&gt;

&lt;p&gt;dsadasdsa&lt;/p&gt;

&lt;p&gt;dsadsa&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;asdsadas&lt;/strong&gt;&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;&lt;img alt="" src="http://localhost:61346/Scripts/Filemanager/userfiles/kenji.jpg" style="height:281px; width:400px" /&gt;&lt;/strong&gt;&lt;/p&gt;
', N'asdasjdasasd
asdsa
dsadsad', N'sfasDasdf
asdsad
sadasd
asdsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[trouble_shooting] ([id], [no], [equipment_no], [equipment_description], [date_of_trouble], [time_of_trouble], [start_date_repair], [end_date_repair], [time_repaired], [wo_number], [description_trouble], [as_found_condition], [analysis], [action], [recommendation], [inspector_name], [inspector_signature], [approval_name], [approval_signature], [inspector_date], [approval_date], [id_ir]) VALUES (2, N'TSxxxx-00001', N'askdjalsd', N'adsadsad', CAST(0x21370B00 AS Date), NULL, CAST(0x21370B00 AS Date), CAST(0x23370B00 AS Date), N'32 Hours', N'34523234', N'asjdhsajdh
asdjsadh
asdasda', N'&lt;p&gt;fkhflgkdfl&lt;/p&gt;
', N'&lt;p&gt;dfhjdhfgfddg&lt;/p&gt;
', NULL, N'sdfdsfs', N'141', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[trouble_shooting] ([id], [no], [equipment_no], [equipment_description], [date_of_trouble], [time_of_trouble], [start_date_repair], [end_date_repair], [time_repaired], [wo_number], [description_trouble], [as_found_condition], [analysis], [action], [recommendation], [inspector_name], [inspector_signature], [approval_name], [approval_signature], [inspector_date], [approval_date], [id_ir]) VALUES (3, N'TSxxxx-00002', N'wrwrwe', N'ewrewr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'&lt;p&gt;werwerwer&lt;/p&gt;
', N'&lt;p&gt;werwerwe&lt;/p&gt;
', N'werwer
werdszcs', N'wrwerwe', N'18', N'/Attachment/trouble_shooting/3/signatures/download.png', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[trouble_shooting] ([id], [no], [equipment_no], [equipment_description], [date_of_trouble], [time_of_trouble], [start_date_repair], [end_date_repair], [time_repaired], [wo_number], [description_trouble], [as_found_condition], [analysis], [action], [recommendation], [inspector_name], [inspector_signature], [approval_name], [approval_signature], [inspector_date], [approval_date], [id_ir]) VALUES (4, N'TSxxxx-00003', N'asdsadsa', N'asdsadasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'&lt;p&gt;asdasdsad&lt;/p&gt;
', N'&lt;p&gt;fddfgdfgd&lt;/p&gt;
', N'dfgdfgdfdfg', N'dfgfdgd', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[trouble_shooting] OFF
ALTER TABLE [dbo].[daily_log_sap]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_sap_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_sap] CHECK CONSTRAINT [FK_daily_log_sap_daily_log]
GO
