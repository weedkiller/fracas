USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 4/22/2013 3:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employee_no] [varchar](255) NULL,
	[alpha_name] [varchar](255) NULL,
	[position] [varchar](255) NULL,
	[work_location] [varchar](255) NULL,
	[employee_dept] [int] NULL,
	[dob] [date] NULL,
	[employee_boss] [int] NULL,
	[dept_id] [int] NULL,
	[email] [varchar](255) NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee_dept]    Script Date: 4/22/2013 3:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee_dept](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dept_name] [varchar](255) NULL,
	[plant_id] [int] NULL,
 CONSTRAINT [PK_employee_dept] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 4/22/2013 3:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[username] [varchar](255) NOT NULL,
	[fullname] [varchar](255) NULL,
	[password] [varchar](255) NOT NULL,
	[jabatan] [varchar](255) NULL,
	[create_date] [datetime] NULL,
	[rm_role] [int] NULL,
	[employee_id] [int] NULL,
 CONSTRAINT [Users$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (1, N'11061060', N'Dufiroh', N'FIELD ADMIN SUPERINTENDENT', N'Pangalengan', 1, CAST(0x972C0B00 AS Date), NULL, 1, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (2, N'11061152', N'Suprihadi', N'GS SUPERVISOR', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 1, 1, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (3, N'11061110', N'M. Solihin', N'HR SPECIALIST', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 2, 1, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (4, N'11102048', N'Dewi Malasari', N'Field admin', N'Pangalengan', NULL, CAST(0xB9330B00 AS Date), 3, 1, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (5, N'11061072', N'Ferial Anwar', N'ADMINISTRATOR  CONTRACT', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 3, 1, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (6, N'11061161', N'Trisna Gunadi', N'GS ADMIN ASSISTANT ', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 4, 1, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (7, N'11061079', N'Helga Handarawati', N'HR GENERALIST ASSISTANT ', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 4, 1, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (8, N'11101279', N'Juanter Hutapea', N'HR GENERALIST ASSISTANT ', N'Pangalengan', NULL, CAST(0x21330B00 AS Date), 4, 1, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (9, N'11051186', N'Bendot Subroto', N'SECURITY ADVISOR', N'Pangalengan', 2, CAST(0x4C360B00 AS Date), NULL, 2, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (10, N'11061003', N'Ade Ahmad', N'SECURITY COMMANDER', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 9, 2, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (11, N'11051180', N'Reni Hardianti Fauzi', N'ADMIN ASSISTANT ', N'Pangalengan', NULL, CAST(0x652B0B00 AS Date), 4, 1, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (12, N'11061154', N'Suroso', N'ADMIN ASSISTANT ', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 4, 1, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (13, N'11061113', N'Mohamad Setiawan', N'DISPATCHER TRANSPORTATION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 6, 1, NULL)
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (14, N'1121131412423234', N'Septu Jamasoka', N'Tester', N'Bandung', 3, CAST(0x38360B00 AS Date), NULL, 3, N'septujamasoka@gmail.com')
SET IDENTITY_INSERT [dbo].[employee] OFF
SET IDENTITY_INSERT [dbo].[employee_dept] ON 

INSERT [dbo].[employee_dept] ([id], [dept_name], [plant_id]) VALUES (1, N'Field Administration', 1)
INSERT [dbo].[employee_dept] ([id], [dept_name], [plant_id]) VALUES (2, N'Field EXT Rel & Security', 1)
INSERT [dbo].[employee_dept] ([id], [dept_name], [plant_id]) VALUES (3, N'Dummy', 1)
SET IDENTITY_INSERT [dbo].[employee_dept] OFF
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'aan', N'aan', N'4607ed4bd8140e9664875f907f48ae14', N'aan', CAST(0x00009FB300000000 AS DateTime), 0, 1)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'aan2', N'aan2', N'4607ed4bd8140e9664875f907f48ae14', N'aan', CAST(0x00009FB300000000 AS DateTime), 1, 2)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'AdminIIR', N'admin', N'4607ed4bd8140e9664875f907f48ae14', N'admin IIR', NULL, NULL, 3)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'rcaview', N'RCA View', N'4607ed4bd8140e9664875f907f48ae14', N'rca view', CAST(0x0000A0F900000000 AS DateTime), 5, 4)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'septu', N'Septu Jamasoka', N'4607ed4bd8140e9664875f907f48ae14', N'sep', NULL, NULL, 14)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'septu2', N'Septu Jamasoka', N'4607ed4bd8140e9664875f907f48ae14', N'sep', NULL, NULL, 6)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'yosef', N'Yosef Sukianto', N'4607ed4bd8140e9664875f907f48ae14', N'rca', CAST(0x0000A0ED00000000 AS DateTime), 2, 7)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'yosef2', N'Yosef Sukianto', N'4607ed4bd8140e9664875f907f48ae14', N'pir initiator', CAST(0x0000A0ED00000000 AS DateTime), 3, 8)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'yosef3', N'Yosef Sukianto', N'4607ed4bd8140e9664875f907f48ae14', N'pir process admin', CAST(0x0000A0ED00000000 AS DateTime), 4, 9)
/****** Object:  Index [IX_users]    Script Date: 4/22/2013 3:47:31 PM ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [IX_users] UNIQUE NONCLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__Users__CreateDat__66603565]  DEFAULT (CONVERT([datetime],CONVERT([varchar],getdate(),(1)),(1))) FOR [create_date]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_Users_rm_role]  DEFAULT ((0)) FOR [rm_role]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_employee] FOREIGN KEY([employee_boss])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_employee]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_employee_dept] FOREIGN KEY([employee_dept])
REFERENCES [dbo].[employee_dept] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_employee_dept]
GO
ALTER TABLE [dbo].[employee_dept]  WITH CHECK ADD  CONSTRAINT [FK_employee_dept_plants] FOREIGN KEY([plant_id])
REFERENCES [dbo].[plants] ([id])
GO
ALTER TABLE [dbo].[employee_dept] CHECK CONSTRAINT [FK_employee_dept_plants]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_employee]
GO
