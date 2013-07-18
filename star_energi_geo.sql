USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[failure_effects]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[failure_effects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_failure_effects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[failure_effects] ON
INSERT [dbo].[failure_effects] ([id], [title], [description]) VALUES (1, N'Failure effect 1', N'Efek gagal pertama (tes)')
INSERT [dbo].[failure_effects] ([id], [title], [description]) VALUES (2, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[failure_effects] OFF
/****** Object:  Table [dbo].[failure_causes]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[failure_causes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_failure_causes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[failure_causes] ON
INSERT [dbo].[failure_causes] ([id], [title], [description]) VALUES (1, N'Failure 1', N'Kegagalan pertama (tes)')
INSERT [dbo].[failure_causes] ([id], [title], [description]) VALUES (3, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[failure_causes] OFF
/****** Object:  Table [dbo].[event_descriptions]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[event_descriptions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_event_descriptions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[event_descriptions] ON
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (1, N'Replace battery', N'Replace battery')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (2, N'Test', N'Test')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (3, N'Pressure Drop', N'Pressure Drop')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (4, N'High Vibration', N'High Vibration')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (5, N'High Temperature', N'High Temperature')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (6, N'Intermitten Operation', N'Intermitten Operation')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (7, N'Loss Oil Pressure', N'Loss Oil Pressure')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (12, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[event_descriptions] OFF
/****** Object:  Table [dbo].[equipment_read_nav_note]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipment_read_nav_note](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[update_date] [timestamp] NULL,
	[note] [text] NULL,
 CONSTRAINT [PK_equipment_read_nav_note] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[equipment_read_nav_note] ON
INSERT [dbo].[equipment_read_nav_note] ([id], [note]) VALUES (1, N'Tes note bos')
SET IDENTITY_INSERT [dbo].[equipment_read_nav_note] OFF
/****** Object:  Table [dbo].[disciplines]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[disciplines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_disciplines] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[disciplines] ON
INSERT [dbo].[disciplines] ([id], [title]) VALUES (1, N'ROT')
INSERT [dbo].[disciplines] ([id], [title]) VALUES (2, N'INS')
INSERT [dbo].[disciplines] ([id], [title]) VALUES (3, N'STA')
INSERT [dbo].[disciplines] ([id], [title]) VALUES (4, N'ELECT')
SET IDENTITY_INSERT [dbo].[disciplines] OFF
/****** Object:  Table [dbo].[comms_rbi]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comms_rbi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[filename] [varchar](150) NULL,
	[category] [varchar](5) NULL,
 CONSTRAINT [PK_comms_rbi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[comms_rbi] ON
INSERT [dbo].[comms_rbi] ([id], [title], [filename], [category]) VALUES (7, N'Portfolio LICHT 4', N'portfolio.pdf', N'COMMS')
INSERT [dbo].[comms_rbi] ([id], [title], [filename], [category]) VALUES (15, N'Design patern', N'(Gang of Four) Design_Patterns.pdf', N'RBI')
SET IDENTITY_INSERT [dbo].[comms_rbi] OFF
/****** Object:  Table [dbo].[long_term_actions]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[long_term_actions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action] [varchar](255) NOT NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_long_term_actions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[long_term_actions] ON
INSERT [dbo].[long_term_actions] ([id], [action], [description]) VALUES (1, N'Replace battery', N'Replace All battery')
INSERT [dbo].[long_term_actions] ([id], [action], [description]) VALUES (2, N'Change Bearing Specifications', N'Change Bearing Specifications')
INSERT [dbo].[long_term_actions] ([id], [action], [description]) VALUES (3, N'Change Mechanical Seal Specifications', N'Change Mechanical Seal Specifications')
INSERT [dbo].[long_term_actions] ([id], [action], [description]) VALUES (4, N'Redesign Oil System', N'Redesign Oil System')
INSERT [dbo].[long_term_actions] ([id], [action], [description]) VALUES (6, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[long_term_actions] OFF
/****** Object:  Table [dbo].[immediate_actions]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[immediate_actions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action] [varchar](255) NOT NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_immediate_actions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[immediate_actions] ON
INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (1, N'Replace battery', N'Replace battery')
INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (2, N'Replace Bearing', N'Replace Bearing')
INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (3, N'Replace Mechanical Seal', N'Replace Mechanical Seal')
INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (4, N'Add Lubricant Oil', N'Add Lubricant Oil')
INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (8, N'Create', NULL)
INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (9, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[immediate_actions] OFF
/****** Object:  Table [dbo].[rca_csf]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_csf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_csf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca_csf] ON
INSERT [dbo].[rca_csf] ([id], [name]) VALUES (1, N'Kejadian tidak terulang kembali')
SET IDENTITY_INSERT [dbo].[rca_csf] OFF
/****** Object:  Table [dbo].[rca_building]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_building](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_department] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_building] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca_building] ON
INSERT [dbo].[rca_building] ([id], [id_department], [name]) VALUES (1, 1, N'building')
SET IDENTITY_INSERT [dbo].[rca_building] OFF
/****** Object:  Table [dbo].[rca_analisys_type]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_analisys_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_analisys_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca_analisys_type] ON
INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (1, N'Administrative')
INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (2, N'Environmental')
INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (3, N'Mechanical')
INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (4, N'Operational')
INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (5, N'Quality')
INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (6, N'Risk')
SET IDENTITY_INSERT [dbo].[rca_analisys_type] OFF
/****** Object:  Table [dbo].[plants]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[plants](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](255) NULL,
 CONSTRAINT [PK_plants] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[plants] ON
INSERT [dbo].[plants] ([id], [nama]) VALUES (1, N'RU V')
SET IDENTITY_INSERT [dbo].[plants] OFF
/****** Object:  Table [dbo].[pir]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pir](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[no] [varchar](50) NULL,
	[improvement_request] [text] NULL,
	[date_rise] [date] NULL,
	[initiate_by] [varchar](50) NULL,
	[title] [varchar](100) NULL,
	[reference] [varchar](max) NULL,
	[procedure_reference] [varchar](max) NULL,
	[initiator_sign_date] [date] NULL,
	[kpbo_sign_date_init] [date] NULL,
	[target_completion_init] [date] NULL,
	[desc_prob] [varchar](max) NULL,
	[investigator] [varchar](50) NULL,
	[investigator_date] [date] NULL,
	[improvement_plant] [text] NULL,
	[start_implement_date] [date] NULL,
	[process_owner] [varchar](50) NULL,
	[target_completion_process] [date] NULL,
	[action_by] [varchar](50) NULL,
	[require_dokument] [varchar](1) NULL,
	[hira_require] [varchar](1) NULL,
	[kpbo_sign_date_process] [date] NULL,
	[review_date] [date] NULL,
	[result_of_action] [text] NULL,
	[kpbo_sign_date_process_result] [date] NULL,
	[sign_date_verified] [date] NULL,
	[verified_desc] [text] NULL,
	[description] [text] NULL,
	[status] [varchar](20) NULL,
 CONSTRAINT [PK_pir] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[pir] ON
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [description], [status]) VALUES (1, N'W-O-MTW-PI-10080', N'tes', CAST(0x8D360B00 AS Date), N'yosef2', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'INITIATOR')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [description], [status]) VALUES (2, N'W-O-MTW-PI-10080', N'tes', CAST(0x8D360B00 AS Date), N'yosef8', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'INITIATOR')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [description], [status]) VALUES (3, N'W-O-MTW-PI-10080', N'tes', CAST(0x8D360B00 AS Date), N'yosef2', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'FROM PROCESS')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [description], [status]) VALUES (4, N'W-O-MTW-PI-10080', N'tes', CAST(0x8D360B00 AS Date), N'yosef2', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'FROM INITIATOR')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [description], [status]) VALUES (5, N'W-O-MTW-PI-10080', N'tes', CAST(0x8D360B00 AS Date), N'yosef8', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'FROM INITIATOR')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [description], [status]) VALUES (6, N'W-O-MTW-PI-10080', N'tes', CAST(0x8D360B00 AS Date), N'yosef2', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'FROM INITIATOR')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [description], [status]) VALUES (10, N'W-O-MTW-PI-10080', N'tes number                   
                ', CAST(0x4A360B00 AS Date), N'yosef2', N'tes', N'tes', N'tes', CAST(0x4A360B00 AS Date), NULL, CAST(0x4A360B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'descripsi', N'INITIATOR')
SET IDENTITY_INSERT [dbo].[pir] OFF
/****** Object:  Table [dbo].[parts]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[parts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag_number] [varchar](50) NOT NULL,
	[nama] [varchar](100) NULL,
	[assurance_level] [float] NULL,
	[vendor] [varchar](100) NULL,
	[warranty] [int] NULL,
 CONSTRAINT [PK_rm_part_unit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[parts] ON
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (2, N'15-K-102A-M/00', N'15-K-102A-M/00', 0, N'', 0)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (3, N'15-K-103A-M/00', N'15-K-103A-M/00', 100, N'Trisakti', 0)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (4, N'15-K-104A-M/00', N'15-K-104A-M/00', 0, NULL, 0)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (5, N'15-K-106A-M/00', N'15-K-106A-M/00', 0, NULL, 0)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (7, N'15-V-105-P', N'Part 1', NULL, N'', 0)
SET IDENTITY_INSERT [dbo].[parts] OFF
/****** Object:  Table [dbo].[rca_desc]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_desc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_rca] [int] NULL,
	[description] [varchar](255) NULL,
 CONSTRAINT [PK_rca_desc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca_desc] ON
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (2, 64, N'tes')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (3, 63, N'dasdaw')
SET IDENTITY_INSERT [dbo].[rca_desc] OFF
/****** Object:  Table [dbo].[rca_department]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_division] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca_department] ON
INSERT [dbo].[rca_department] ([id], [id_division], [name]) VALUES (1, 1, N'Training Centre')
SET IDENTITY_INSERT [dbo].[rca_department] OFF
/****** Object:  Table [dbo].[secondary_effects]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[secondary_effects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_secondary_effects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[secondary_effects] ON
INSERT [dbo].[secondary_effects] ([id], [title], [description]) VALUES (1, N'Secondary Effect 1', N'Effect sekunder 1')
INSERT [dbo].[secondary_effects] ([id], [title], [description]) VALUES (3, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[secondary_effects] OFF
/****** Object:  Table [dbo].[rca_graph_metric]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_graph_metric](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_graph_metric] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_floor]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_floor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_building] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_floor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca_floor] ON
INSERT [dbo].[rca_floor] ([id], [id_building], [name]) VALUES (1, 1, N'floor1')
SET IDENTITY_INSERT [dbo].[rca_floor] OFF
/****** Object:  Table [dbo].[rca_facility]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_facility](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_facility] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca_facility] ON
INSERT [dbo].[rca_facility] ([id], [name]) VALUES (1, N'Wayang Windu')
SET IDENTITY_INSERT [dbo].[rca_facility] OFF
/****** Object:  Table [dbo].[tag_types]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tag_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tag_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tag_types] ON
INSERT [dbo].[tag_types] ([id], [title]) VALUES (22, N'BLOWER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (23, N'VALVE, SLIDE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (24, N'REACTOR')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (25, N'COLUMN')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (26, N'COMPRESSOR, CENTRIFUGAL')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (27, N'DRUM')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (28, N'COOLER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (29, N'PUMP, CENTRIFUGAL')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (30, N'HEAT EXCHANGER, SHELL & TUBE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (31, N'VESSEL')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (32, N'TANK')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (33, N'COMPRESSOR')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (34, N'HEATER,ELECTRIC')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (35, N'FILTER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (36, N'TURBINE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (37, N'CONTROLLER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (38, N'FAN')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (39, N'BURNER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (40, N'ELEMENT, FLOW')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (41, N'PUMP, SUBMERSIBLE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (42, N'PUMP, ROTARY GEAR')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (43, N'COMPRESSOR, RECIPROCATING')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (44, N'COMPRESSOR, SCREW')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (45, N'FURNACE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (46, N'VALVE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (47, N'PIPING')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (48, N'MIXER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (49, N'MOTOR')
SET IDENTITY_INSERT [dbo].[tag_types] OFF
/****** Object:  Table [dbo].[users]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [nvarchar](255) NOT NULL,
	[fullname] [nvarchar](255) NULL,
	[password] [nvarchar](255) NOT NULL,
	[jabatan] [nvarchar](255) NULL,
	[create_date] [datetime] NULL,
	[rm_role] [int] NULL,
 CONSTRAINT [Users$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'aan', N'aan', N'4607ed4bd8140e9664875f907f48ae14', N'aan', CAST(0x00009FB300000000 AS DateTime), 0)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'aan2', N'aan2', N'4607ed4bd8140e9664875f907f48ae14', N'aan', CAST(0x00009FB300000000 AS DateTime), 1)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'aan3', N'Yosef Sukianto nama panjang bla bla bla', N'4607ed4bd8140e9664875f907f48ae14', N'tes', CAST(0x0000A1000102FD7E AS DateTime), 0)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'rcaview', N'RCA View', N'4607ed4bd8140e9664875f907f48ae14', N'rca view', CAST(0x0000A0F900000000 AS DateTime), 5)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'tes', N'tes', N'4607ed4bd8140e9664875f907f48ae14', N'tes', CAST(0x0000A09300E84156 AS DateTime), 0)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'yosef', N'Yosef Sukianto', N'4607ed4bd8140e9664875f907f48ae14', N'rca', CAST(0x0000A0ED00000000 AS DateTime), 2)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'yosef2', N'Yosef Sukianto', N'4607ed4bd8140e9664875f907f48ae14', N'pir initiator', CAST(0x0000A0ED00000000 AS DateTime), 3)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'yosef3', N'Yosef Sukianto', N'4607ed4bd8140e9664875f907f48ae14', N'pir process admin', CAST(0x0000A0ED00000000 AS DateTime), 4)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'yosef8', N'Yosef Sukianto', N'4607ed4bd8140e9664875f907f48ae14', N'pir initiator', CAST(0x0000A0ED00000000 AS DateTime), 3)
/****** Object:  Table [dbo].[user_role]    Script Date: 12/04/2012 13:58:42 ******/
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
SET IDENTITY_INSERT [dbo].[user_role] ON
INSERT [dbo].[user_role] ([id], [role]) VALUES (0, N'admin data master')
INSERT [dbo].[user_role] ([id], [role]) VALUES (1, N'admin input')
INSERT [dbo].[user_role] ([id], [role]) VALUES (2, N'rca')
INSERT [dbo].[user_role] ([id], [role]) VALUES (3, N'pir initiator')
INSERT [dbo].[user_role] ([id], [role]) VALUES (4, N'pir process admin')
INSERT [dbo].[user_role] ([id], [role]) VALUES (5, N'rca view')
SET IDENTITY_INSERT [dbo].[user_role] OFF
/****** Object:  Table [dbo].[rca_implementation]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_implementation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[next_action] [varchar](255) NULL,
	[pic] [nvarchar](255) NULL,
	[due_date] [date] NULL,
	[is_complete] [tinyint] NULL,
	[id_rca] [int] NULL,
	[complete_date] [date] NULL,
 CONSTRAINT [PK_rca_implementation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca_implementation] ON
INSERT [dbo].[rca_implementation] ([id], [next_action], [pic], [due_date], [is_complete], [id_rca], [complete_date]) VALUES (1, N'tes', N'aan2', CAST(0x76360B00 AS Date), 1, 63, CAST(0x77360B00 AS Date))
INSERT [dbo].[rca_implementation] ([id], [next_action], [pic], [due_date], [is_complete], [id_rca], [complete_date]) VALUES (2, N'tes', N'aan', CAST(0x87360B00 AS Date), 1, 64, CAST(0x77360B00 AS Date))
INSERT [dbo].[rca_implementation] ([id], [next_action], [pic], [due_date], [is_complete], [id_rca], [complete_date]) VALUES (3, N'tesw', N'tes', CAST(0x78360B00 AS Date), 1, 63, CAST(0x78360B00 AS Date))
SET IDENTITY_INSERT [dbo].[rca_implementation] OFF
/****** Object:  Table [dbo].[rca_division]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_division](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_facility] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_division] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca_division] ON
INSERT [dbo].[rca_division] ([id], [id_facility], [name]) VALUES (1, 1, N'Training Centre')
SET IDENTITY_INSERT [dbo].[rca_division] OFF
/****** Object:  Table [dbo].[failure_modes]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[failure_modes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[id_tag_type] [int] NULL,
 CONSTRAINT [PK_failure_modes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[failure_modes] ON
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (136, N'Drum Fail', N'Drum fails to continue running', 27)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (137, NULL, N'Fails to provide proper output', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (138, NULL, N'Fails to start', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (139, NULL, N'Fails to stop', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (140, NULL, N'Mechanical/structural failure', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (142, NULL, N'External leak', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (143, NULL, N'Fails to start', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (144, NULL, N'Fails while running', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (145, NULL, N'Loss of efficiency', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (146, NULL, N'Loss of performance', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (147, NULL, N'External leak', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (148, NULL, N'Fails to control', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (149, NULL, N'Fails to provide proper output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (150, NULL, N'Fails to zero or maximum output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (151, NULL, N'Has erratic output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (152, NULL, N'Has high output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (153, NULL, N'Has low output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (154, NULL, N'Drop in efficiency', 38)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (155, NULL, N'Mechanical damage', 38)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (156, NULL, N'Fails to continue to burn', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (157, NULL, N'Fails to control flame', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (158, NULL, N'Fails to ignite', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (159, NULL, N'Fails to operate properly', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (160, NULL, N'Has erratic output', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (161, NULL, N'Has high output', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (162, NULL, N'Has low output', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (163, NULL, N'Has no output', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (164, NULL, N'Slow response', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (165, NULL, N'External leakage (process)', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (166, NULL, N'Fail while running', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (167, NULL, N'Fails to pump', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (168, NULL, N'Fails to start on demand', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (169, NULL, N'Fails to stop on demand', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (170, NULL, N'Structural deficiency', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (171, NULL, N'Fail while running', 41)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (172, NULL, N'Fails to pump', 41)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (173, NULL, N'Fails to start on demand', 41)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (174, NULL, N'Fail while running', 42)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (175, NULL, N'Fails to pump', 42)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (176, NULL, N'Fails to start on demand', 42)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (177, NULL, N'Structural deficiency', 42)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (178, NULL, N'External leakage', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (179, NULL, N'Fail while running', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (180, NULL, N'Fails to adequately compress', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (181, NULL, N'Internal leakage (utility)', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (182, NULL, N'Structural deficiency', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (183, NULL, N'Fails to start on demand', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (184, NULL, N'Fails to stop on demand', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (185, NULL, N'Has erratic output', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (186, NULL, N'External leakage', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (187, NULL, N'Fail while running', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (188, NULL, N'Fails to adequately compress', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (189, NULL, N'Internal leakage (utility)', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (190, NULL, N'Structural deficiency', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (191, NULL, N'Fails to start on demand', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (192, NULL, N'Fails to stop on demand', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (193, NULL, N'Has erratic output', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (194, NULL, N'External leakage', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (195, NULL, N'Fail while running', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (196, NULL, N'Fails to adequately compress', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (197, NULL, N'Internal leakage (utility)', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (198, NULL, N'Structural deficiency', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (199, NULL, N'Fails to start on demand', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (200, NULL, N'Fails to stop on demand', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (201, NULL, N'Has erratic output', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (202, NULL, N'EXTERNAL LEAKAGE', 25)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (203, NULL, N'FAILS TO OPERATE PROPERLY', 25)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (204, NULL, N'RESTRICT FLOW', 25)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (205, NULL, N'STRUCTURAL FAILURE', 25)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (206, NULL, N'Fails to start', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (207, NULL, N'Fails to stop', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (208, NULL, N'Fails while running', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (209, NULL, N'Loss of Ex class', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (210, NULL, N'Low power transmission', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (211, NULL, N'Operates at high temperature', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (212, NULL, N'Mechanical Seal Failure', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (213, NULL, N'Bearing Failure', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (214, NULL, N'Oil Leakage', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (215, NULL, N'Electric Motor Failure', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (217, N'Fails to continue running', N'Fails to continue running', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (218, N'Fails to provide proper output', N'Fails to provide proper output', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (219, N'Fails to start', N'Fails to start', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (220, N'Fails to stop', N'Fails to stop', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (221, N'Mechanical/structural failure', N'Mechanical/structural failure', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (222, N'External leak', N'External leak', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (223, N'Fails while running', N'Fails while running', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (224, N'Loss of efficiency', N'Loss of efficiency', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (225, N'Loss of performance', N'Loss of performance', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (226, N'Fails to control', N'Fails to control', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (227, N'Fails to zero or maximum output', N'Fails to zero or maximum output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (228, N'Has erratic output', N'Has erratic output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (229, N'Has high output', N'Has high output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (230, N'Has low output', N'Has low output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (231, N'Drop in efficiency', N'Drop in efficiency', 38)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (232, N'Mechanical damage', N'Mechanical damage', 38)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (233, N'Fails to continue to burn', N'Fails to continue to burn', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (234, N'Fails to control flame', N'Fails to control flame', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (235, N'Fails to ignite', N'Fails to ignite', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (236, N'Fails to operate properly', N'Fails to operate properly', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (237, N'Has no output', N'Has no output', 40)
GO
print 'Processed 100 total records'
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (238, N'Slow response', N'Slow response', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (239, N'External leakage (process)', N'External leakage (process)', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (240, N'Fail while running', N'Fail while running', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (241, N'Fails to pump', N'Fails to pump', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (242, N'Fails to start on demand', N'Fails to start on demand', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (243, N'Fails to stop on demand', N'Fails to stop on demand', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (244, N'Structural deficiency', N'Structural deficiency', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (245, N'External leakage', N'External leakage', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (246, N'Fails to adequately compress', N'Fails to adequately compress', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (247, N'Internal leakage (utility)', N'Internal leakage (utility)', 26)
SET IDENTITY_INSERT [dbo].[failure_modes] OFF
/****** Object:  Table [dbo].[rca]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](255) NULL,
	[id_type] [int] NULL,
	[cost] [varchar](50) NULL,
	[id_facility] [int] NULL,
	[id_division] [int] NULL,
	[id_department] [int] NULL,
	[id_building] [int] NULL,
	[id_floor] [int] NULL,
	[functional_location] [varchar](255) NULL,
	[id_type_equipment] [int] NULL,
	[id_equipment_class] [int] NULL,
	[other] [varchar](255) NULL,
	[manufacture] [varchar](255) NULL,
	[id_csf_connector] [int] NULL,
	[charter] [varchar](255) NULL,
	[comment] [varchar](255) NULL,
	[id_team] [int] NULL,
	[start_date] [datetime] NULL,
	[completion_date] [datetime] NULL,
	[is_publish] [tinyint] NULL,
	[analysis_file] [varchar](255) NULL,
	[equipment_code] [varchar](255) NULL,
	[is_tree] [tinyint] NULL,
 CONSTRAINT [PK_rca] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca] ON
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree]) VALUES (1, N'tes', N'tes', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree]) VALUES (63, N'Training', N'Menganalisis penyebab dibatalkannya training', 1, N'2500', 1, 1, 1, NULL, NULL, N'', NULL, NULL, N'Training', N'Employee', NULL, N'Penyelenggaraan training lebih profesional', N'', 76, CAST(0x0000A10400000000 AS DateTime), CAST(0x0000A10B00000000 AS DateTime), 0, N'analysis63.xml', NULL, 1)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree]) VALUES (64, N'tes', N'tes', 1, N'0', 1, 1, 1, NULL, NULL, N'', 23, 2, N'', N'', NULL, N'tes', N'tes', 79, CAST(0x0000A12500000000 AS DateTime), CAST(0x0000A13600000000 AS DateTime), 0, N'analysis64.xml', N'C-8-01B', 0)
SET IDENTITY_INSERT [dbo].[rca] OFF
/****** Object:  Table [dbo].[focs]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[focs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[plant_id] [int] NOT NULL,
	[nama] [varchar](100) NOT NULL,
 CONSTRAINT [PK_rm_foc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[focs] ON
INSERT [dbo].[focs] ([id], [plant_id], [nama]) VALUES (1, 1, N'BPP I')
INSERT [dbo].[focs] ([id], [plant_id], [nama]) VALUES (2, 1, N'BPP II')
INSERT [dbo].[focs] ([id], [plant_id], [nama]) VALUES (4, 1, N'BPP III')
INSERT [dbo].[focs] ([id], [plant_id], [nama]) VALUES (53, 1, N'BPP IV')
INSERT [dbo].[focs] ([id], [plant_id], [nama]) VALUES (54, 1, N'BPP V')
SET IDENTITY_INSERT [dbo].[focs] OFF
/****** Object:  Table [dbo].[foc_target_paf]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foc_target_paf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_foc] [int] NOT NULL,
	[tahun] [int] NULL,
	[bulan] [int] NULL,
	[target_paf] [float] NULL,
 CONSTRAINT [PK_foc_target_paf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[foc_target_paf] ON
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (3, 2, 2011, 8, 95)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (4, 2, 2011, 10, 90)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (5, 2, 2001, 2, 90)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (6, 2, 2001, 3, 92)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (7, 2, 2001, 4, 92)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (8, 2, 2001, 5, 95)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (9, 2, 2001, 6, 98)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (10, 2, 2001, 7, 93)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (11, 2, 2001, 8, 90)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (12, 2, 2001, 9, 95)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (13, 2, 2001, 10, 97)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (14, 2, 2001, 11, 91)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (15, 2, 2001, 12, 95)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (16, 2, 2002, 1, 92)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (17, 2, 2002, 2, 95)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (18, 2, 2002, 3, 98)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (19, 2, 2002, 4, 92)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (20, 2, 2002, 5, 95)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (21, 2, 2002, 6, 98)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (22, 2, 2002, 7, 93)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (23, 2, 2002, 8, 90)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (24, 2, 2002, 9, 95)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (25, 2, 2002, 10, 97)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (26, 2, 2002, 11, 91)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (27, 2, 2002, 12, 95)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (28, 2, 2012, 1, 30)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (29, 2, 2012, 2, 97)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (30, 2, 2012, 3, 89)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (32, 1, 2012, 1, 70)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (33, 1, 2012, 2, 30)
INSERT [dbo].[foc_target_paf] ([id], [id_foc], [tahun], [bulan], [target_paf]) VALUES (34, 54, 2012, 1, 85)
SET IDENTITY_INSERT [dbo].[foc_target_paf] OFF
/****** Object:  Table [dbo].[foc_paf]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foc_paf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_foc] [int] NOT NULL,
	[tanggal] [datetime] NOT NULL,
	[measured_paf] [float] NOT NULL,
	[calculated_paf] [float] NOT NULL,
 CONSTRAINT [PK_foc_paf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[foc_paf] ON
INSERT [dbo].[foc_paf] ([id], [id_foc], [tanggal], [measured_paf], [calculated_paf]) VALUES (1, 1, CAST(0x00009FB3016AC793 AS DateTime), 100, 100)
INSERT [dbo].[foc_paf] ([id], [id_foc], [tanggal], [measured_paf], [calculated_paf]) VALUES (2, 2, CAST(0x00009FB3016AC98C AS DateTime), 100, 100)
INSERT [dbo].[foc_paf] ([id], [id_foc], [tanggal], [measured_paf], [calculated_paf]) VALUES (4, 4, CAST(0x00009FB3016AD4DA AS DateTime), 100, 100)
INSERT [dbo].[foc_paf] ([id], [id_foc], [tanggal], [measured_paf], [calculated_paf]) VALUES (14, 53, CAST(0x0000A06A0185E6F7 AS DateTime), 100, 100)
INSERT [dbo].[foc_paf] ([id], [id_foc], [tanggal], [measured_paf], [calculated_paf]) VALUES (15, 54, CAST(0x0000A06A0185EFFC AS DateTime), 100, 100)
SET IDENTITY_INSERT [dbo].[foc_paf] OFF
/****** Object:  Table [dbo].[foc_op_avail]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[foc_op_avail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_foc] [int] NOT NULL,
	[op_avail] [float] NULL,
	[plant_down] [datetime] NULL,
	[plant_up] [datetime] NULL,
	[selisih] [int] NULL,
	[selisih_paf] [int] NULL,
	[pof_bulanan] [float] NULL,
	[paf_bulanan] [float] NULL,
	[paf] [float] NULL,
	[bulan] [int] NULL,
	[tahun] [int] NULL,
	[tipe] [varchar](50) NULL,
 CONSTRAINT [PK_foc_op_avail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[foc_op_avail] ON
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (111, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 1, 2001, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (112, 2, 61.0169491525424, NULL, NULL, NULL, NULL, 17.8571428571429, 100, 100, 2, 2001, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (113, 2, 40, NULL, NULL, NULL, NULL, 0, 100, 100, 3, 2001, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (114, 2, 54.1666666666667, NULL, NULL, NULL, NULL, 96.6666666666667, 100, 100, 4, 2001, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (115, 2, 63.5761589403973, NULL, NULL, NULL, NULL, 100, 100, 100, 5, 2001, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (116, 2, 69.6132596685083, NULL, NULL, NULL, NULL, 100, 100, 100, 6, 2001, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (117, 2, 74.0566037735849, NULL, NULL, NULL, NULL, 100, 100, 100, 7, 2001, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (118, 2, 77.3662551440329, NULL, NULL, NULL, NULL, 100, 100, 100, 8, 2001, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (119, 2, 79.4871794871795, NULL, NULL, NULL, NULL, 96.6666666666667, 96.6666666666667, 99.5412844036697, 9, 2001, N'Unplanned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (120, 2, 81.5789473684211, NULL, NULL, NULL, NULL, 100, 100, 99.5983935742972, 10, 2001, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (121, 2, 83.2335329341317, NULL, NULL, NULL, NULL, 100, 100, 99.6415770609319, 11, 2001, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (122, 2, 84.6575342465753, NULL, NULL, NULL, NULL, 100, 100, 99.6774193548387, 12, 2001, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (123, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 1, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (124, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 2, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (125, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 3, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (126, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 4, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (127, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 5, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (128, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 6, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (129, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 7, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (130, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 8, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (131, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 9, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (132, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 10, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (133, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 11, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (134, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 12, 2002, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (135, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 1, 2003, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (136, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 2, 2003, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (137, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 3, 2003, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (138, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 4, 2003, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (139, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 5, 2003, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (140, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 6, 2003, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (141, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 7, 2003, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (142, 2, 93.0041152263374, NULL, NULL, NULL, NULL, 45.1612903225806, 100, 100, 8, 2003, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (143, 2, 82.7838827838828, NULL, NULL, NULL, NULL, 0, 100, 100, 9, 2003, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (144, 2, 75.9868421052632, NULL, NULL, NULL, NULL, 16.1290322580645, 22.7272727272727, 100, 10, 2003, N'Unplanned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (145, 2, 76.9461077844311, NULL, NULL, NULL, NULL, 86.6666666666667, 86.6666666666667, 92.4460431654676, 11, 2003, N'Unplanned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (146, 2, 77.5342465753425, NULL, NULL, NULL, NULL, 83.8709677419355, 83.8709677419355, 91.5857605177994, 12, 2003, N'Unplanned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (147, 2, 64.5161290322581, NULL, NULL, NULL, NULL, 64.5161290322581, 100, 100, 1, 2004, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (148, 2, 78.3333333333333, NULL, NULL, NULL, NULL, 93.1034482758621, 93.1034482758621, 95.9183673469388, 2, 2004, N'Unplanned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (149, 2, 85.7142857142857, NULL, NULL, NULL, NULL, 100, 100, 97.5, 3, 2004, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (150, 2, 89.2561983471074, NULL, NULL, NULL, NULL, 100, 100, 98.1818181818182, 4, 2004, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (151, 2, 91.4473684210526, NULL, NULL, NULL, NULL, 100, 100, 98.5815602836879, 5, 2004, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (152, 2, 92.8571428571429, NULL, NULL, NULL, NULL, 100, 100, 98.8304093567251, 6, 2004, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (153, 2, 93.8967136150235, NULL, NULL, NULL, NULL, 100, 100, 99.009900990099, 7, 2004, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (154, 2, 94.672131147541, NULL, NULL, NULL, NULL, 100, 100, 99.1416309012876, 8, 2004, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (155, 2, 95.2554744525548, NULL, NULL, NULL, NULL, 100, 100, 99.2395437262357, 9, 2004, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (156, 2, 93.1147540983606, NULL, NULL, NULL, NULL, 74.1935483870968, 74.1935483870968, 96.5986394557823, 10, 2004, N'Unplanned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (157, 2, 93.7313432835821, NULL, NULL, NULL, NULL, 100, 100, 96.9135802469136, 11, 2004, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (158, 2, 94.2622950819672, NULL, NULL, NULL, NULL, 100, 100, 97.1830985915493, 12, 2004, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (159, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 1, 2005, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (160, 2, 98.3050847457627, NULL, NULL, NULL, NULL, 96.4285714285714, 96.4285714285714, 98.3050847457627, 2, 2005, N'Unplanned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (161, 2, 98.8888888888889, NULL, NULL, NULL, NULL, 100, 100, 98.8888888888889, 3, 2005, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (162, 2, 99.1666666666667, NULL, NULL, NULL, NULL, 100, 100, 99.1666666666667, 4, 2005, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (163, 2, 99.3377483443709, NULL, NULL, NULL, NULL, 100, 100, 99.3377483443709, 5, 2005, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (164, 2, 99.4475138121547, NULL, NULL, NULL, NULL, 100, 100, 99.4475138121547, 6, 2005, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (165, 2, 99.5283018867924, NULL, NULL, NULL, NULL, 100, 100, 99.5283018867924, 7, 2005, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (166, 2, 99.5884773662551, NULL, NULL, NULL, NULL, 100, 100, 99.5884773662551, 8, 2005, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (167, 2, 99.6336996336996, NULL, NULL, NULL, NULL, 100, 100, 99.6336996336996, 9, 2005, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (168, 2, 99.6710526315789, NULL, NULL, NULL, NULL, 100, 100, 99.6710526315789, 10, 2005, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (169, 2, 99.7005988023952, NULL, NULL, NULL, NULL, 100, 100, 99.7005988023952, 11, 2005, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (170, 2, 99.7260273972603, NULL, NULL, NULL, NULL, 100, 100, 99.7260273972603, 12, 2005, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (171, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 1, 2006, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (172, 2, 76.271186440678, NULL, NULL, NULL, NULL, 50, 100, 100, 2, 2006, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (173, 2, 81.1111111111111, NULL, NULL, NULL, NULL, 90.3225806451613, 100, 100, 3, 2006, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (174, 2, 85.8333333333333, NULL, NULL, NULL, NULL, 100, 100, 100, 4, 2006, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (175, 2, 88.7417218543046, NULL, NULL, NULL, NULL, 100, 100, 100, 5, 2006, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (176, 2, 90.6077348066298, NULL, NULL, NULL, NULL, 100, 100, 100, 6, 2006, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (177, 2, 91.9811320754717, NULL, NULL, NULL, NULL, 100, 100, 100, 7, 2006, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (178, 2, 93.0041152263374, NULL, NULL, NULL, NULL, 100, 100, 100, 8, 2006, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (179, 2, 93.7728937728938, NULL, NULL, NULL, NULL, 100, 100, 100, 9, 2006, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (180, 2, 93.75, NULL, NULL, NULL, NULL, 93.5483870967742, 93.5483870967742, 99.3031358885017, 10, 2006, N'Unplanned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (181, 2, 94.311377245509, NULL, NULL, NULL, NULL, 100, 100, 99.3690851735016, 11, 2006, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (182, 2, 94.7945205479452, NULL, NULL, NULL, NULL, 100, 100, 99.4252873563218, 12, 2006, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (183, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 1, 2007, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (184, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 2, 2007, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (185, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 3, 2007, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (186, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 4, 2007, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (187, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 5, 2007, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (188, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 6, 2007, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (189, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 7, 2007, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (190, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 8, 2007, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (191, 2, 100, NULL, NULL, NULL, NULL, 100, 100, 100, 9, 2007, N'Planned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (192, 2, 99.3848684210526, NULL, NULL, NULL, NULL, 93.9677419354839, 93.9677419354839, 99.3848684210526, 10, 2007, N'Unplanned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (193, 2, 98.2155688622754, NULL, NULL, NULL, NULL, 86.3666666666667, 86.3666666666667, 98.2155688622754, 11, 2007, N'Unplanned')
INSERT [dbo].[foc_op_avail] ([id], [id_foc], [op_avail], [plant_down], [plant_up], [selisih], [selisih_paf], [pof_bulanan], [paf_bulanan], [paf], [bulan], [tahun], [tipe]) VALUES (194, 2, 97.2630136986301, NULL, NULL, NULL, NULL, 87, 87, 97.2630136986301, 12, 2007, N'Unplanned')
SET IDENTITY_INSERT [dbo].[foc_op_avail] OFF
/****** Object:  Table [dbo].[rca_team_connector]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rca_team_connector](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [nvarchar](255) NOT NULL,
	[id_rca] [int] NOT NULL,
 CONSTRAINT [PK_rca_team_connector] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[rca_team_connector] ON
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (75, N'yosef2', 63)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (76, N'yosef', 63)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (77, N'yosef3', 64)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (78, N'rcaview', 64)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (79, N'yosef', 64)
SET IDENTITY_INSERT [dbo].[rca_team_connector] OFF
/****** Object:  Table [dbo].[ma]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_foc] [int] NOT NULL,
	[tadd] [float] NOT NULL,
	[tadt_hours] [float] NOT NULL,
	[ta_interval] [float] NOT NULL,
	[ntamdd] [float] NOT NULL,
	[study_year_ntamd] [float] NOT NULL,
	[prior_year_ntamd] [float] NOT NULL,
	[ntamsd] [float] NOT NULL,
	[study_year_ms] [float] NOT NULL,
	[prior_year_ms] [float] NOT NULL,
	[days_in_study_year] [float] NOT NULL,
	[last_update] [datetime] NOT NULL,
	[masd] [float] NULL,
	[ma] [float] NULL,
	[category] [tinyint] NULL,
	[type] [tinyint] NULL,
 CONSTRAINT [PK_masd] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ma] ON
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (50, 2, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, CAST(0x0000A06000000000 AS DateTime), 95, 95, 0, 0)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (51, 2, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, CAST(0x00009EF200000000 AS DateTime), 95, 95, 1, 0)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (52, 4, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, CAST(0x0000A06000000000 AS DateTime), 95, 95, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (55, 1, 0.010648148148148148, 23, 90, 4.125, 100, 98, 3.8541666666666665, 87, 98, 34, CAST(0x0000A06500D25D92 AS DateTime), 76.531862745098039, 87.867647058823522, 0, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (56, 1, 0.010648148148148148, 23, 90, 4.125, 100, 98, 3.8541666666666665, 87, 98, 34, CAST(0x0000A06500D2A5CE AS DateTime), 76.50054466230938, 87.836328976034864, 1, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (57, 2, 0.021739130434782608, 12, 23, 2.0833333333333335, 22, 78, 0.9375, 22, 23, 34, CAST(0x0000A06500D2F4B3 AS DateTime), 91.115196078431353, 93.872549019607845, 0, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (58, 2, 0.03125, 36, 48, 3.2291666666666665, 49, 106, 2.2083333333333335, 52, 54, 66, CAST(0x0000A06500D309FA AS DateTime), 91.714015151515156, 95.059974747474755, 1, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (59, 2, 0.021739130434782608, 12, 23, 2.0833333333333335, 22, 78, 0.9375, 22, 23, 34, CAST(0x0000A06500D30A96 AS DateTime), 91.115196078431353, 93.872549019607845, 0, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (60, 2, 0.028169014084507043, 48, 71, 5.3125, 71, 184, 3.1458333333333335, 74, 77, 100, CAST(0x0000A06500D30DDE AS DateTime), 91.51349765258216, 94.659330985915489, 1, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (61, 2, 0.021739130434782608, 12, 23, 2.0833333333333335, 22, 78, 0.9375, 22, 23, 34, CAST(0x0000A06500D34934 AS DateTime), 91.115196078431353, 93.872549019607845, 0, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (62, 2, 0.026595744680851064, 60, 94, 7.395833333333333, 93, 262, 4.083333333333333, 96, 100, 134, CAST(0x0000A06500D362D0 AS DateTime), 91.413610140785437, 94.460873822377465, 1, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (63, 2, 0.021739130434782608, 12, 23, 2.0833333333333335, 22, 78, 0.9375, 22, 23, 34, CAST(0x0000A06500D36B1F AS DateTime), 91.115196078431353, 93.872549019607845, 0, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (64, 2, 0.02564102564102564, 72, 117, 9.4791666666666661, 115, 340, 5.020833333333333, 118, 123, 168, CAST(0x0000A06500D37637 AS DateTime), 91.3537851037851, 94.342376373626365, 1, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (65, 2, 0.041666666666666664, 1, 1, 0.041666666666666664, 1, 1, 0.041666666666666664, 1, 1, 1, CAST(0x00009D8A00D65ADC AS DateTime), 91.666666666666657, 95.833333333333343, 0, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (66, 2, 0.01098901098901099, 24, 91, 4.166666666666667, 101, 99, 3.8958333333333335, 88, 99, 35, CAST(0x00009D8A00D65B0E AS DateTime), 76.9328885400314, 88.063840920983779, 1, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (67, 1, 0.041666666666666664, 1, 1, 0.041666666666666664, 1, 1, 0.041666666666666664, 1, 1, 1, CAST(0x0000A06500D65ADC AS DateTime), 91.666666666666657, 95.833333333333343, 0, 0)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (68, 1, 0.01098901098901099, 24, 91, 4.166666666666667, 101, 99, 3.8958333333333335, 88, 99, 35, CAST(0x0000A06500D65B0E AS DateTime), 76.9328885400314, 88.063840920983779, 1, 0)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (69, 4, 0.041666666666666664, 12, 12, 0.5, 12, 12, 0.5, 12, 12, 12, CAST(0x0000A0A600D7B684 AS DateTime), 91.666666666666657, 95.833333333333343, 0, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (70, 4, 0.040540540540540543, 36, 37, 1.6458333333333333, 39, 40, 1.7708333333333333, 42, 43, 44, CAST(0x0000A0A600D7B6D6 AS DateTime), 92.1427108927109, 96.1673321048321, 1, NULL)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (97, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009BA200000000 AS DateTime), 74.1935483870968, 74.1935483870968, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (98, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009BBE00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (99, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009BDD00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009BFB00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (101, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009C1A00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (102, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009C3800000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (103, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009C5700000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (104, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009C7600000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (105, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009C9400000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (106, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009CB300000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (107, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009CD100000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (108, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009CF000000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (109, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009CF000000000 AS DateTime), 93.4246575342466, 93.4246575342466, 1, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (110, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009A3400000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (111, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009A5000000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (112, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009A7000000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (113, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009A8E00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (114, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009AAD00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (115, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009ACB00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (116, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009AEA00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (117, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B0900000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (118, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B2700000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (119, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B4600000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B6400000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (121, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B8300000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (122, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B8300000000 AS DateTime), 95.2802359882006, 95.2802359882006, 1, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (123, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A0AD00A9B299 AS DateTime), 0, 0, 0, 0)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (124, 1, 0.01098901098901099, 24, 91, 4.166666666666667, 101, 99, 3.8958333333333335, 88, 99, 35, CAST(0x0000A0AD00AA02A6 AS DateTime), 76.9328885400314, 88.063840920983779, 1, 0)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (125, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A0AD00B163B9 AS DateTime), 0, 0, 0, 0)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (126, 1, 0.01098901098901099, 24, 91, 4.166666666666667, 101, 99, 3.8958333333333335, 88, 99, 35, CAST(0x0000A0AD00B163ED AS DateTime), 76.9328885400314, 88.063840920983779, 1, 0)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (127, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x0000A0AD00B55723 AS DateTime), 0, 0, 0, 0)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (128, 1, 0.01098901098901099, 24, 91, 4.166666666666667, 101, 99, 3.8958333333333335, 88, 99, 35, CAST(0x0000A0AD00B55757 AS DateTime), 76.9328885400314, 88.063840920983779, 1, 0)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (129, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009BA200000000 AS DateTime), 74.1935483870968, 74.1935483870968, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (130, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009BBE00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (131, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009BDD00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (132, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009BFB00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (133, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009C1A00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (134, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009C3800000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (135, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009C5700000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (136, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009C7600000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (137, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009C9400000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (138, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009CB300000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (139, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009CD100000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (140, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009CF000000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (141, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009CF000000000 AS DateTime), 93.4246575342466, 93.4246575342466, 1, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (142, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009A3400000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (143, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009A5000000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (144, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009A7000000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (145, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009A8E00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (146, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009AAD00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (147, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009ACB00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (148, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009AEA00000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (149, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B0900000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (150, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B2700000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (151, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B4600000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (152, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B6400000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (153, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B8300000000 AS DateTime), 100, 100, 0, 1)
INSERT [dbo].[ma] ([id], [id_foc], [tadd], [tadt_hours], [ta_interval], [ntamdd], [study_year_ntamd], [prior_year_ntamd], [ntamsd], [study_year_ms], [prior_year_ms], [days_in_study_year], [last_update], [masd], [ma], [category], [type]) VALUES (154, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(0x00009B8300000000 AS DateTime), 95.2802359882006, 95.2802359882006, 1, 1)
SET IDENTITY_INSERT [dbo].[ma] OFF
/****** Object:  Table [dbo].[rca_csf_conector]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rca_csf_conector](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_rca] [int] NULL,
	[id_csf] [int] NULL,
 CONSTRAINT [PK_rca_csf_conector] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[rca_csf_conector] ON
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (43, NULL, 1)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (44, NULL, 3)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (45, 63, 1)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (46, 64, 1)
SET IDENTITY_INSERT [dbo].[rca_csf_conector] OFF
/****** Object:  Table [dbo].[units]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[units](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_foc] [int] NOT NULL,
	[nama] [varchar](100) NOT NULL,
	[ma] [float] NOT NULL,
	[masd] [float] NOT NULL,
 CONSTRAINT [PK_rm_unit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[units] ON
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (9, 2, N'HCU A', 92.1875, 82.6388888888889)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (24, 2, N'CDU', 97.8678, 95.89)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (25, 2, N'HVU', 100, 100)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (26, 2, N'HCU B', 100, 100)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (27, 2, N'NHT', 87.9098723, 88.778669)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (28, 2, N'HCU C', 93.452380952380949, 89.186507936507937)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (29, 2, N'H2 A', 0, 0)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (30, 2, N'H2 B', 0, 0)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (31, 2, N'H2 C', 0, 0)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (42, 1, N'tes', 0, 0)
SET IDENTITY_INSERT [dbo].[units] OFF
/****** Object:  Table [dbo].[unit_paf]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unit_paf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_unit] [int] NULL,
	[tanggal] [datetime] NULL,
	[measured_paf] [float] NULL,
	[calculated_paf] [float] NULL,
 CONSTRAINT [PK_unit_paf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[unit_paf] ON
INSERT [dbo].[unit_paf] ([id], [id_unit], [tanggal], [measured_paf], [calculated_paf]) VALUES (9, 9, CAST(0x00009FB80172DD5B AS DateTime), 100, 100)
INSERT [dbo].[unit_paf] ([id], [id_unit], [tanggal], [measured_paf], [calculated_paf]) VALUES (16, 24, CAST(0x0000A06A00C05020 AS DateTime), 100, 100)
INSERT [dbo].[unit_paf] ([id], [id_unit], [tanggal], [measured_paf], [calculated_paf]) VALUES (17, 25, CAST(0x0000A06A00C06AA7 AS DateTime), 100, 100)
INSERT [dbo].[unit_paf] ([id], [id_unit], [tanggal], [measured_paf], [calculated_paf]) VALUES (18, 26, CAST(0x0000A06A00C0C0B3 AS DateTime), 100, 100)
INSERT [dbo].[unit_paf] ([id], [id_unit], [tanggal], [measured_paf], [calculated_paf]) VALUES (19, 27, CAST(0x0000A06A00C3E06D AS DateTime), 100, 100)
INSERT [dbo].[unit_paf] ([id], [id_unit], [tanggal], [measured_paf], [calculated_paf]) VALUES (20, 28, CAST(0x0000A06D010D28D4 AS DateTime), 100, 100)
INSERT [dbo].[unit_paf] ([id], [id_unit], [tanggal], [measured_paf], [calculated_paf]) VALUES (21, 29, CAST(0x0000A06D010D36E6 AS DateTime), 100, 100)
INSERT [dbo].[unit_paf] ([id], [id_unit], [tanggal], [measured_paf], [calculated_paf]) VALUES (22, 30, CAST(0x0000A06D010D3F6D AS DateTime), 100, 100)
INSERT [dbo].[unit_paf] ([id], [id_unit], [tanggal], [measured_paf], [calculated_paf]) VALUES (23, 31, CAST(0x0000A06D010D4ABE AS DateTime), 100, 100)
INSERT [dbo].[unit_paf] ([id], [id_unit], [tanggal], [measured_paf], [calculated_paf]) VALUES (24, 42, CAST(0x0000A0AD0158B63F AS DateTime), 100, 100)
SET IDENTITY_INSERT [dbo].[unit_paf] OFF
/****** Object:  Table [dbo].[systems]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[systems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_unit] [int] NOT NULL,
	[nama] [varchar](100) NULL,
	[kode] [varchar](100) NULL,
	[funct_description] [text] NULL,
	[failure_scenario] [text] NULL,
	[primary_impact] [text] NULL,
	[secondary_impact] [text] NULL,
	[cons_econ] [varchar](50) NULL,
	[cons_hs] [varchar](50) NULL,
	[cons_env] [varchar](50) NULL,
	[cons_total] [varchar](50) NULL,
	[likelihood] [varchar](50) NULL,
	[crit_code] [varchar](50) NULL,
	[ram_crit] [varchar](50) NULL,
	[exist_crit] [varchar](50) NULL,
	[h] [varchar](50) NULL,
	[e] [varchar](50) NULL,
	[econ] [varchar](50) NULL,
	[ram_crit_1] [varchar](50) NULL,
	[prob] [varchar](50) NULL,
	[ram_crit_2] [varchar](50) NULL,
	[ram_crit_3] [varchar](50) NULL,
 CONSTRAINT [PK_rm_system] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[systems] ON
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (7, 9, N'Reactor System - A', N'A6-U15-FS009', N'Mengkonversi Combine Feed Residue sebesar 83.000 BPSD menjadi High Value Product. ', N'Catalyst Cooler bocor', N'RCC Shut down  untuk penggantian Catalyst Cooler selama 28 hari (5+16+7) dan harus evakuasi catalyst', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (8, 9, N'Fractionator System - A', N'A6-U15-FS0010', N'Memisahkan Effluent Reactor RCC menjadi fraksi-fraksinya yaitu LP Gas, RCC Naphtha, LCO, dan DCO', N'DCO Pump 15-P-102 Trouble dimana tidak ada pompa available', N'Level column 15-C-101 dan 15-C-102 naik, kapasitas RCC Reduce ke 68%, diperlukan penggantian pompa spare 1 hari, dan normalisasi kapasitas 1 hari, Total reduce kapasitas 2 hari ', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (9, 9, N'Recovery System - A', N'A6-U15-FS0011', N'Memanfaatkan Flue Gas eks Regen untuk menghasilkan HP Steam dengan kapasitas 212 T/H pada tekanan 43 kg/cm2', N'Intrumentation Trouble (BMS, Flame Detector, Level Switch)', N'COB Trip loss of steam product kurang lebih 240 T/H yang berdampak kepada naiknya beban steam Utilities, dan paparan gas CO ke lingkungan. Untuk start kembali menggunakan FDF yang standby diperlukan waktu sekitar 2 hari untuk menstabilkan pressure Header Steam UTL, Divert Flue Gas RG, start kembali COB', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (15, 26, N'Reactor System - B', N'A6-U20-FS0012', N'Mengkonversi Mixed Butane sebesar 13.000 BPSD menjadi Polygasolene dengan ON 98-99', N'Pipa bocor karena CUI', N'Unit 20 stop, losses produk Polygasolene dan down grade ke LPG. Recovery produk selama 5 Hari (2 HCF + 2 MD + 1 start normalisasi)', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (16, 26, N'Fractionator System - B', N'A6-U20-FS0013', N'Mengkonversi Mixed Butane sebesar 13.000 BPSD menjadi Polygasolene dengan ON 98-99', N'Pipa bocor karena CUI', N'Unit 20 stop, losses produk Polygasolene dan down grade ke LPG. Recovery produk selama 5 Hari (2 HCF + 2 MD + 1 start normalisasi)', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (17, 26, N'Recovery System - B', N'A6-U20-FS0014', N'Mengkonversi Mixed Butane sebesar 13.000 BPSD menjadi Polygasolene dengan ON 98-99', N'Pipa bocor karena CUI', N'Unit 20 stop, losses produk Polygasolene dan down grade ke LPG. Recovery produk selama 5 Hari (2 HCF + 2 MD + 1 start normalisasi)', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (18, 25, N'Feed System', NULL, NULL, NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (19, 25, N'Vacum Column Overhead System', NULL, NULL, NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (20, 25, N'Light Vacum Gas Oil System', NULL, NULL, NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (21, 25, N'Heavy Vacum Gas Oil System', NULL, NULL, NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (22, 25, N'Vacum Residu System', NULL, NULL, NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'0', NULL, NULL, NULL, N'0', N'0', N'0', N'0', N'0', N'0', N'0')
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (24, 28, N'Natural Gas Compression', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (33, 42, N'tes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[systems] OFF
/****** Object:  Table [dbo].[system_paf]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[system_paf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_system] [int] NOT NULL,
	[tanggal] [datetime] NOT NULL,
	[measured_paf] [float] NOT NULL,
	[calculated_paf] [float] NOT NULL,
 CONSTRAINT [PK_system_paf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[system_paf] ON
INSERT [dbo].[system_paf] ([id], [id_system], [tanggal], [measured_paf], [calculated_paf]) VALUES (7, 7, CAST(0x00009FB80172DD7B AS DateTime), 100, 100)
INSERT [dbo].[system_paf] ([id], [id_system], [tanggal], [measured_paf], [calculated_paf]) VALUES (8, 8, CAST(0x00009FB80172DD7B AS DateTime), 100, 100)
INSERT [dbo].[system_paf] ([id], [id_system], [tanggal], [measured_paf], [calculated_paf]) VALUES (9, 9, CAST(0x00009FB801734011 AS DateTime), 100, 100)
INSERT [dbo].[system_paf] ([id], [id_system], [tanggal], [measured_paf], [calculated_paf]) VALUES (15, 15, CAST(0x00009FB80172DD7B AS DateTime), 100, 100)
INSERT [dbo].[system_paf] ([id], [id_system], [tanggal], [measured_paf], [calculated_paf]) VALUES (16, 16, CAST(0x00009FB80172DD7B AS DateTime), 100, 100)
INSERT [dbo].[system_paf] ([id], [id_system], [tanggal], [measured_paf], [calculated_paf]) VALUES (17, 17, CAST(0x00009FB801734011 AS DateTime), 100, 100)
INSERT [dbo].[system_paf] ([id], [id_system], [tanggal], [measured_paf], [calculated_paf]) VALUES (19, 24, CAST(0x0000A091016B684D AS DateTime), 100, 100)
INSERT [dbo].[system_paf] ([id], [id_system], [tanggal], [measured_paf], [calculated_paf]) VALUES (20, 33, CAST(0x0000A0AD01598B5B AS DateTime), 100, 100)
SET IDENTITY_INSERT [dbo].[system_paf] OFF
/****** Object:  Table [dbo].[equipment_groups]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[equipment_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_system] [int] NOT NULL,
	[nama] [varchar](50) NOT NULL,
 CONSTRAINT [PK_rm_equipment_group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[equipment_groups] ON
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (21, 7, N'C-3-02')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (22, 7, N'G-3-01')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (23, 7, N'E-3-01')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (24, 7, N'F-3-01')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (25, 7, N'C-3-03')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (26, 7, N'C-3-04')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (57, 7, N'ET-3-02')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (58, 7, N'EA-3-02')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (59, 7, N'C-3-08')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (60, 7, N'C-3-10')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (61, 7, N'G-3-05')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (62, 7, N'G-3-05')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (63, 15, N'C-3-02')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (64, 15, N'G-3-01')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (65, 15, N'E-3-01')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (66, 15, N'F-3-01')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (67, 15, N'C-3-03')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (68, 15, N'C-3-04')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (69, 15, N'ET-3-02')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (71, 15, N'C-3-08')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (72, 15, N'C-3-10')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (73, 15, N'G-3-05')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (74, 24, N'C-8-01A')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (75, 24, N'C-8-01B')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (76, 24, N'K-8-01A')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (77, 24, N'K-8-01B')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (78, 24, N'K-8-01C')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (79, 24, N'E-8-21A')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (80, 24, N'E-8-21B')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (81, 24, N'C-8-27A')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (82, 24, N'C-8-27B')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (83, 24, N'E-8-30')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (84, 24, N'C-8-28')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (85, 24, N'G-8-12A')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (86, 24, N'G-8-12B')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (87, 24, N'G-8-12C')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (121, 33, N'tes')
SET IDENTITY_INSERT [dbo].[equipment_groups] OFF
/****** Object:  Table [dbo].[equipments]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[equipments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment_group] [int] NOT NULL,
	[tag_num] [varchar](50) NOT NULL,
	[nama] [varchar](100) NOT NULL,
	[id_category] [tinyint] NULL,
	[pdf] [varchar](50) NULL,
	[tetha] [float] NULL,
	[beta] [float] NULL,
	[mean] [float] NULL,
	[varian] [float] NULL,
	[lamda] [float] NULL,
	[id_discipline] [int] NULL,
	[mtbf] [int] NULL,
	[mttr] [int] NULL,
	[mdt] [int] NULL,
	[status] [tinyint] NULL,
	[method] [varchar](100) NULL,
	[econ] [int] NULL,
	[ram_crit] [varchar](50) NULL,
	[installed_date] [datetime] NULL,
	[obsolete_date] [datetime] NULL,
	[warranty] [int] NULL,
	[vendor] [varchar](100) NULL,
	[id_tag_type] [int] NULL,
	[status_read_nav] [tinyint] NULL,
	[data_sheet_path] [varchar](50) NULL,
	[sertifikasi] [datetime] NULL,
 CONSTRAINT [PK_rm_equipment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[equipments] ON
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (69, 23, N'E-3-01A', N'MAIN AIR BLOWER', NULL, N'', 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, NULL, 2096878, N'MH', CAST(0x000086B400000000 AS DateTime), NULL, 0, N'0', 22, 1, NULL, NULL)
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (70, 24, N'F-3-01A', N'SPENT CAT SLIDE VALVE ', NULL, N'', 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, NULL, 11404976, N'MH', CAST(0x000086B400000000 AS DateTime), NULL, 0, N'0', 23, 1, NULL, CAST(0x0000A07C00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (72, 22, N'G-3-01A', N'RECIRCULATION CAT SLIDE VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 0, NULL, 9782500, N'MH', CAST(0x000086B400000000 AS DateTime), NULL, 0, N'0', 23, 0, N'chat bareng adi.txt', NULL)
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (174, 21, N'C-3-02A', N'tes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, 120000, N'H', CAST(0x000086B400000000 AS DateTime), NULL, 20000, N'Ga tau', 22, 0, N'Equipment.pdf', CAST(0x0000A04A00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (183, 23, N'E-3-01B', N'-', NULL, N'Exponensial', -1, -1, -1, -1, 3.15656565656566E-05, 3, 31680, 235, 294, 1, NULL, 0, NULL, CAST(0x000086B400000000 AS DateTime), NULL, 0, NULL, 45, 0, NULL, NULL)
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (184, 23, N'E-3-01C', N'-', NULL, N'', 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, NULL, 0, NULL, CAST(0x000086B400000000 AS DateTime), NULL, 0, NULL, 31, 0, NULL, NULL)
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (185, 23, N'E-3-01D', N'-', NULL, N'Weibull', 15854.8056940447, 0.56788269649524, -1, -1, -1, 3, 15854, 199, 206, 1, NULL, 0, NULL, CAST(0x000086B400000000 AS DateTime), NULL, 0, NULL, 29, 0, NULL, NULL)
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (186, 23, N'E-3-01E', N'-', NULL, N'', 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, NULL, 0, NULL, CAST(0x000086B400000000 AS DateTime), NULL, 0, NULL, 45, 0, NULL, NULL)
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (192, 25, N'C-3-03A', N'-', NULL, N'', 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, NULL, 0, NULL, CAST(0x000086B400000000 AS DateTime), NULL, 0, NULL, 24, 0, NULL, NULL)
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (193, 26, N'C-3-04A', N'-', NULL, N'', 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, NULL, 0, NULL, CAST(0x000086B400000000 AS DateTime), NULL, 0, NULL, 24, 0, NULL, NULL)
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (342, 23, N'E-3-01F', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06800000000 AS DateTime), CAST(0x0000A3A90083D600 AS DateTime), 20000, NULL, 31, 0, NULL, CAST(0x0000A06E00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (343, 23, N'E-3-01G', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00CE44B0 AS DateTime), NULL, 0, NULL, 39, 0, NULL, CAST(0x0000A06A00CE44B0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (344, 23, N'E-3-01H', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00CE8B00 AS DateTime), CAST(0x0000A06A00CE8B00 AS DateTime), 0, NULL, 37, 0, NULL, CAST(0x0000A06A00CE8B00 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (346, 57, N'ET-3-02F', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00CF17A0 AS DateTime), CAST(0x0000A06A00CF17A0 AS DateTime), 0, NULL, 38, 0, NULL, CAST(0x0000A06A00CF17A0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (347, 58, N'EA-3-02A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00CF17A0 AS DateTime), CAST(0x0000A06A00CF17A0 AS DateTime), 0, NULL, 38, 0, NULL, CAST(0x0000A06A00CF17A0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (348, 59, N'C-3-08A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00CF17A0 AS DateTime), CAST(0x0000A06A00CF17A0 AS DateTime), 0, NULL, 37, 0, NULL, CAST(0x0000A06A00CF17A0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (349, 60, N'C-3-10A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00CF5DF0 AS DateTime), CAST(0x0000A06A00CF5DF0 AS DateTime), 0, NULL, 39, 0, NULL, CAST(0x0000A06A00CF5DF0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (350, 61, N'G-3-05A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00CF5DF0 AS DateTime), CAST(0x0000A06A00CF5DF0 AS DateTime), 0, NULL, 39, 0, NULL, CAST(0x0000A06A00CF5DF0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (351, 62, N'G-3-05B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00CF5DF0 AS DateTime), CAST(0x0000A06A00CF5DF0 AS DateTime), 0, NULL, 37, 0, NULL, CAST(0x0000A06A00CF5DF0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (352, 63, N'C-3-02B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D70EB0 AS DateTime), CAST(0x0000A06A00D70EB0 AS DateTime), 0, NULL, 34, 0, NULL, CAST(0x0000A06A00D70EB0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (353, 64, N'G-3-01B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D70EB0 AS DateTime), CAST(0x0000A06A00D70EB0 AS DateTime), 0, NULL, 37, 0, NULL, CAST(0x0000A06A00D70EB0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (354, 65, N'E-3-01I', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D75500 AS DateTime), CAST(0x0000A06A00D75500 AS DateTime), 0, NULL, 30, 0, NULL, CAST(0x0000A06A00D75500 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (355, 65, N'E-3-01J', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D75500 AS DateTime), CAST(0x0000A06A00D75500 AS DateTime), 0, NULL, 40, 0, NULL, CAST(0x0000A06A00D75500 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (356, 65, N'E-3-01K', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D75500 AS DateTime), CAST(0x0000A06A00D75500 AS DateTime), 0, NULL, 35, 0, NULL, CAST(0x0000A06A00D75500 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (357, 65, N'E-3-01L', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D79B50 AS DateTime), CAST(0x0000A06A00D79B50 AS DateTime), 0, NULL, 30, 0, NULL, CAST(0x0000A06A00D79B50 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (358, 65, N'E-3-01M', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D79B50 AS DateTime), CAST(0x0000A06A00D79B50 AS DateTime), 0, NULL, 27, 0, NULL, CAST(0x0000A06A00D79B50 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (359, 65, N'E-3-01N', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D79B50 AS DateTime), CAST(0x0000A06A00D79B50 AS DateTime), 0, NULL, 34, 0, NULL, CAST(0x0000A06A00D79B50 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (360, 65, N'E-3-01O', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D79B50 AS DateTime), CAST(0x0000A06A00D79B50 AS DateTime), 0, NULL, 29, 0, NULL, CAST(0x0000A06A00D79B50 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (361, 65, N'E-3-01P', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D79B50 AS DateTime), CAST(0x0000A06A00D79B50 AS DateTime), 0, NULL, 32, 0, NULL, CAST(0x0000A06A00D79B50 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (362, 66, N'F-3-01B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D7E1A0 AS DateTime), CAST(0x0000A06A00D7E1A0 AS DateTime), 0, NULL, 38, 0, NULL, CAST(0x0000A06A00D7E1A0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (363, 67, N'C-3-03B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D7E1A0 AS DateTime), CAST(0x0000A06A00D7E1A0 AS DateTime), 0, NULL, 34, 0, NULL, CAST(0x0000A06A00D7E1A0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (364, 68, N'C-3-04B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D827F0 AS DateTime), CAST(0x0000A06A00D827F0 AS DateTime), 0, NULL, 38, 0, NULL, CAST(0x0000A06A00D827F0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (365, 69, N'ET-3-02G', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D827F0 AS DateTime), CAST(0x0000A06A00D827F0 AS DateTime), 0, NULL, 23, 0, NULL, CAST(0x0000A06A00D827F0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (366, 69, N'EA-3-02B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D86E40 AS DateTime), CAST(0x0000A06A00D86E40 AS DateTime), 0, NULL, 23, 0, NULL, CAST(0x0000A06A00D86E40 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (367, 71, N'C-3-08B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D8B490 AS DateTime), CAST(0x0000A06A00D8B490 AS DateTime), 0, N'tes', 24, 0, NULL, CAST(0x0000A06A00D8B490 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (368, 72, N'C-3-10B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D8B490 AS DateTime), CAST(0x0000A06A00D8B490 AS DateTime), 0, NULL, 24, 0, NULL, CAST(0x0000A06A00D8B490 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (369, 73, N'G-3-05C', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D8B490 AS DateTime), CAST(0x0000A06A00D8B490 AS DateTime), 0, NULL, 24, 0, NULL, CAST(0x0000A06A00D8B490 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (370, 73, N'G-3-05D', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A06A00D8B490 AS DateTime), CAST(0x0000A06A00D8B490 AS DateTime), 0, NULL, 25, 0, NULL, CAST(0x0000A06A00D8B490 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (372, 74, N'C-8-01A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A091016B5F70 AS DateTime), CAST(0x0000A091016B5F70 AS DateTime), 0, NULL, 27, 0, NULL, CAST(0x0000A091016B5F70 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (373, 75, N'C-8-01B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A091016BEC10 AS DateTime), CAST(0x0000A091016BEC10 AS DateTime), 0, NULL, 23, 0, NULL, CAST(0x0000A091016BEC10 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (374, 76, N'K-8-01A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A091016BEC10 AS DateTime), CAST(0x0000A091016BEC10 AS DateTime), 0, NULL, 23, 0, NULL, CAST(0x0000A091016BEC10 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (375, 77, N'K-8-01B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A091016BEC10 AS DateTime), CAST(0x0000A091016BEC10 AS DateTime), 0, NULL, 36, 0, NULL, CAST(0x0000A091016BEC10 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (376, 78, N'K-8-01C', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A091016BEC10 AS DateTime), CAST(0x0000A091016BEC10 AS DateTime), 0, NULL, 22, 0, NULL, CAST(0x0000A091016BEC10 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (377, 79, N'E-8-21A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A091016C3260 AS DateTime), CAST(0x0000A091016C3260 AS DateTime), 0, NULL, 36, 0, NULL, CAST(0x0000A091016C3260 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (378, 80, N'E-8-21B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A091016C3260 AS DateTime), CAST(0x0000A091016C3260 AS DateTime), 0, NULL, 34, 0, NULL, CAST(0x0000A091016C3260 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (379, 81, N'C-8-27A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A091016C78B0 AS DateTime), NULL, 0, NULL, 37, 0, NULL, CAST(0x0000A091016C78B0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (380, 82, N'C-8-27B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A091016C78B0 AS DateTime), CAST(0x0000A091016C78B0 AS DateTime), 0, NULL, 36, 0, NULL, CAST(0x0000A091016C78B0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (381, 83, N'E-8-30', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A092010AF7C0 AS DateTime), CAST(0x0000A092010AF7C0 AS DateTime), 0, NULL, 37, 0, NULL, CAST(0x0000A092010AF7C0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (382, 84, N'C-8-28', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A092010AF7C0 AS DateTime), CAST(0x0000A092010AF7C0 AS DateTime), 0, NULL, 31, 0, NULL, CAST(0x0000A092010AF7C0 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (383, 85, N'G-8-12A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A092010B3E10 AS DateTime), CAST(0x0000A092010B3E10 AS DateTime), 0, NULL, 37, 0, NULL, CAST(0x0000A092010B3E10 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (384, 86, N'G-8-12B', N'tes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A092010B3E10 AS DateTime), CAST(0x0000A092010B3E10 AS DateTime), 0, NULL, 39, 0, NULL, CAST(0x0000A092010B3E10 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (385, 87, N'G-8-12C', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A092010B8460 AS DateTime), CAST(0x0000A092010B8460 AS DateTime), 0, NULL, 27, 0, NULL, CAST(0x0000A092010B8460 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (671, 121, N'E-1-2-3', N'tes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A0AD0159CB70 AS DateTime), CAST(0x0000A0AD0159CB70 AS DateTime), 0, NULL, 31, 0, NULL, CAST(0x0000A0AD0159CB70 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (672, 121, N'I-123', N'tes read nav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A0AE00ABA950 AS DateTime), CAST(0x0000A0AE00ABA950 AS DateTime), 0, NULL, 37, 1, NULL, CAST(0x0000A0AE00ABA950 AS DateTime))
SET IDENTITY_INSERT [dbo].[equipments] OFF
/****** Object:  Table [dbo].[equipment_readiness_nav]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipment_readiness_nav](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment] [int] NOT NULL,
	[operation] [float] NULL,
	[boc] [float] NULL,
	[bec] [float] NULL,
	[monitoring] [float] NULL,
	[performance] [float] NULL,
	[cm_program] [float] NULL,
	[maintenance] [float] NULL,
	[pm_program] [float] NULL,
	[overhaul] [float] NULL,
	[spares] [float] NULL,
	[lifecycle_spare] [float] NULL,
	[main_act_spare] [float] NULL,
	[safe_operation] [float] NULL,
	[safeguard] [float] NULL,
	[accesories] [float] NULL,
	[score] [float] NULL,
	[capacity] [float] NULL,
	[quality] [float] NULL,
	[sertifikasi] [float] NULL,
 CONSTRAINT [PK_equipment_readiness_nav] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[equipment_readiness_nav] ON
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (66, 69, 90, 80, 50, 43.74, 54, 90, 85, 80, 90, 87.5, 75, 100, 87.5, 90, 85, 78.748, 90, 60, 90)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (67, 70, 100, 100, 100, 94.444444444444443, 98.333333333333329, 100, 100, 100, 100, 100, 100, 100, 97.5, 100, 95, 98.388888888888886, 100, 95, 85)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (69, 72, 100, 100, 100, 88.777777777777771, 93.333333333333329, 95, 100, 100, 100, 100, 100, 100, 90, 90, 90, 95.75555555555556, 90, 90, 78)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (171, 174, 85, 70, 40, 87.8888888888889, 90.666666666666671, 83, 86, 80, 92, 70, 60, 80, 80, 80, 80, 81.777777777777786, 85, 87, 90)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (180, 183, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (181, 184, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (182, 185, 100, 100, 100, 44.442780215759683, 44.442780215759683, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 88.888556043151937, 50, 89, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (183, 186, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (189, 192, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (190, 193, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (336, 342, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (337, 343, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (338, 344, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (340, 346, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (341, 347, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (342, 348, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (343, 349, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (344, 350, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (345, 351, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (346, 352, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (347, 353, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (348, 354, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (349, 355, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (350, 356, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (351, 357, 100, 100, 100, 44.5, 44.5, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 88.9, 50, 89, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (352, 358, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (353, 359, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (354, 360, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (355, 361, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (356, 362, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (357, 363, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (358, 364, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (359, 365, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (360, 366, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (361, 367, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (362, 368, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (363, 369, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (364, 370, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (366, 372, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (367, 373, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (368, 374, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (369, 375, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (370, 376, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (371, 377, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (372, 378, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (373, 379, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (374, 380, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (375, 381, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (376, 382, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (377, 383, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (378, 384, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (379, 385, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (664, 671, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (665, 672, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 36, 60, 60, 87.2, 100, 100, 100)
SET IDENTITY_INSERT [dbo].[equipment_readiness_nav] OFF
/****** Object:  Table [dbo].[equipment_part]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipment_part](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment] [int] NOT NULL,
	[id_parts] [int] NOT NULL,
	[mtbf] [float] NULL,
	[mttr] [float] NULL,
	[status] [smallint] NULL,
	[lead_time] [float] NULL,
	[installed_date] [datetime] NULL,
	[obsolete_date] [datetime] NULL,
 CONSTRAINT [PK_equipment_part] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[equipment_part] ON
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (16, 343, 2, 0, 0, 1, 0, CAST(0x0000A07E00000000 AS DateTime), NULL)
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (17, 343, 3, 0, 0, 1, 0, CAST(0x0000A06E00000000 AS DateTime), NULL)
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (18, 343, 5, 0, 0, 1, 0, CAST(0x0000A06800000000 AS DateTime), NULL)
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (20, 343, 4, 0, 0, 1, 0, CAST(0x0000A07500000000 AS DateTime), NULL)
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (21, 174, 4, 0, 0, 1, 0, CAST(0x0000A06F00000000 AS DateTime), NULL)
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (23, 72, 3, 0, 0, 1, 0, CAST(0x0000A06E00000000 AS DateTime), NULL)
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (27, 72, 2, 0, 0, 1, 0, CAST(0x0000A06F00000000 AS DateTime), NULL)
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (28, 72, 5, 0, 0, 1, 0, CAST(0x0000A06F00000000 AS DateTime), NULL)
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (29, 72, 4, 0, 0, 1, 0, CAST(0x0000A06800000000 AS DateTime), NULL)
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (31, 185, 4, 0, 0, 1, 0, CAST(0x0000A06600000000 AS DateTime), NULL)
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (34, 671, 3, 0, 0, 1, 0, CAST(0x0000A09E00000000 AS DateTime), NULL)
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (35, 185, 2, 16947.5409681548, 570, 1, 0, CAST(0x00008EA600000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[equipment_part] OFF
/****** Object:  Table [dbo].[equipment_paf]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipment_paf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment] [int] NOT NULL,
	[tanggal] [datetime] NOT NULL,
	[avail_calculated] [float] NOT NULL,
	[avail_measured] [float] NOT NULL,
 CONSTRAINT [PK_equipment_paf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[equipment_paf] ON
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1085, 69, CAST(0x000086B400000000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1086, 70, CAST(0x000086B400000000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1088, 72, CAST(0x000086B400000000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1190, 174, CAST(0x000086B400000000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1199, 183, CAST(0x000086B400000000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1200, 184, CAST(0x000086B400000000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1201, 185, CAST(0x000086B400000000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1202, 186, CAST(0x000086B400000000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1208, 192, CAST(0x000086B400000000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1209, 193, CAST(0x000086B400000000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1352, 69, CAST(0x00009FB900034BC0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1353, 70, CAST(0x00009FB900034CEC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1355, 72, CAST(0x00009FB900034CEC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1458, 174, CAST(0x00009FB900034E18 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1467, 183, CAST(0x00009FB900034E18 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1468, 184, CAST(0x00009FB900034E18 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1469, 185, CAST(0x00009FB900034E18 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1470, 186, CAST(0x00009FB900034E18 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1476, 192, CAST(0x00009FB900034E18 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1477, 193, CAST(0x00009FB900034E18 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1620, 69, CAST(0x00009FB90003A020 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1621, 70, CAST(0x00009FB90003A020 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1623, 72, CAST(0x00009FB90003A020 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1725, 174, CAST(0x00009FB90003A14C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1734, 183, CAST(0x00009FB90003A14C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1735, 184, CAST(0x00009FB90003A14C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1736, 185, CAST(0x00009FB90003A14C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1737, 186, CAST(0x00009FB90003A14C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1743, 192, CAST(0x00009FB90003A14C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1744, 193, CAST(0x00009FB90003A14C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1887, 69, CAST(0x00009FB90003BFC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1888, 70, CAST(0x00009FB90003BFC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1890, 72, CAST(0x00009FB90003BFC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (1993, 174, CAST(0x00009FB90003BFC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2002, 183, CAST(0x00009FB90003BFC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2003, 184, CAST(0x00009FB90003BFC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2004, 185, CAST(0x00009FB90003BFC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2005, 186, CAST(0x00009FB90003BFC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2011, 192, CAST(0x00009FB90003BFC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2012, 193, CAST(0x00009FB90003BFC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2155, 69, CAST(0x00009FB90003F804 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2156, 70, CAST(0x00009FB90003F804 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2158, 72, CAST(0x00009FB90003F804 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2262, 174, CAST(0x00009FB90003F804 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2271, 183, CAST(0x00009FB90003F804 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2272, 184, CAST(0x00009FB90003F804 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2273, 185, CAST(0x00009FB90003F804 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2274, 186, CAST(0x00009FB90003F804 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2280, 192, CAST(0x00009FB90003F804 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2281, 193, CAST(0x00009FB90003F804 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2424, 69, CAST(0x00009FB90004167C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2425, 70, CAST(0x00009FB90004167C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2427, 72, CAST(0x00009FB90004167C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2532, 174, CAST(0x00009FB90004167C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2541, 183, CAST(0x00009FB90004167C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2542, 184, CAST(0x00009FB90004167C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2543, 185, CAST(0x00009FB90004167C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2544, 186, CAST(0x00009FB90004167C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2550, 192, CAST(0x00009FB90004167C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2551, 193, CAST(0x00009FB90004167C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2694, 69, CAST(0x00009FB900044C64 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2695, 70, CAST(0x00009FB900044C64 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2697, 72, CAST(0x00009FB900044C64 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2803, 174, CAST(0x00009FB900044C64 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2812, 183, CAST(0x00009FB900044C64 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2813, 184, CAST(0x00009FB900044C64 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2814, 185, CAST(0x00009FB900044C64 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2815, 186, CAST(0x00009FB900044C64 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2821, 192, CAST(0x00009FB900044C64 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2822, 193, CAST(0x00009FB900044C64 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2965, 69, CAST(0x00009FB900046D34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2966, 70, CAST(0x00009FB900046D34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (2968, 72, CAST(0x00009FB900046D34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3075, 174, CAST(0x00009FB900046D34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3084, 183, CAST(0x00009FB900046D34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3085, 184, CAST(0x00009FB900046D34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3086, 185, CAST(0x00009FB900046D34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3087, 186, CAST(0x00009FB900046D34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3093, 192, CAST(0x00009FB900046D34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3094, 193, CAST(0x00009FB900046D34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3237, 69, CAST(0x00009FB900048A80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3238, 70, CAST(0x00009FB900048A80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3240, 72, CAST(0x00009FB900048A80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3348, 174, CAST(0x00009FB900048A80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3357, 183, CAST(0x00009FB900048A80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3358, 184, CAST(0x00009FB900048A80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3359, 185, CAST(0x00009FB900048A80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3360, 186, CAST(0x00009FB900048A80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3366, 192, CAST(0x00009FB900048A80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3367, 193, CAST(0x00009FB900048A80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3510, 69, CAST(0x00009FB90004AA24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3511, 70, CAST(0x00009FB90004AA24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3513, 72, CAST(0x00009FB90004AA24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3622, 174, CAST(0x00009FB90004AA24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3631, 183, CAST(0x00009FB90004AA24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3632, 184, CAST(0x00009FB90004AA24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3633, 185, CAST(0x00009FB90004AA24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3634, 186, CAST(0x00009FB90004AA24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3640, 192, CAST(0x00009FB90004AA24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3641, 193, CAST(0x00009FB90004AA24 AS DateTime), 100, 100)
GO
print 'Processed 100 total records'
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3784, 69, CAST(0x00009FB90004C770 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3785, 70, CAST(0x00009FB90004C770 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3787, 72, CAST(0x00009FB90004C770 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3897, 174, CAST(0x00009FB90004C89C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3906, 183, CAST(0x00009FB90004C89C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3907, 184, CAST(0x00009FB90004C89C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3908, 185, CAST(0x00009FB90004C89C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3909, 186, CAST(0x00009FB90004C89C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3915, 192, CAST(0x00009FB90004C89C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (3916, 193, CAST(0x00009FB90004C89C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4059, 69, CAST(0x00009FB90004E264 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4060, 70, CAST(0x00009FB90004E264 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4062, 72, CAST(0x00009FB90004E264 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4173, 174, CAST(0x00009FB90004E264 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4182, 183, CAST(0x00009FB90004E264 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4183, 184, CAST(0x00009FB90004E264 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4184, 185, CAST(0x00009FB90004E264 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4185, 186, CAST(0x00009FB90004E264 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4191, 192, CAST(0x00009FB90004E264 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4192, 193, CAST(0x00009FB90004E264 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4335, 69, CAST(0x00009FB90004FB00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4336, 70, CAST(0x00009FB90004FB00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4338, 72, CAST(0x00009FB90004FB00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4450, 174, CAST(0x00009FB90004FB00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4459, 183, CAST(0x00009FB90004FB00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4460, 184, CAST(0x00009FB90004FB00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4461, 185, CAST(0x00009FB90004FB00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4462, 186, CAST(0x00009FB90004FB00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4468, 192, CAST(0x00009FB90004FB00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4469, 193, CAST(0x00009FB90004FB00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4612, 69, CAST(0x00009FB900085E30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4613, 70, CAST(0x00009FB900085E30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4615, 72, CAST(0x00009FB900085E30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4727, 174, CAST(0x00009FB900085E30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4736, 183, CAST(0x00009FB900085E30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4737, 184, CAST(0x00009FB900085E30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4738, 185, CAST(0x00009FB900085E30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4739, 186, CAST(0x00009FB900085E30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4745, 192, CAST(0x00009FB900085E30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4746, 193, CAST(0x00009FB900085E30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4890, 69, CAST(0x00009FB900088E3C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4891, 70, CAST(0x00009FB900088E3C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (4893, 72, CAST(0x00009FB900088E3C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5005, 174, CAST(0x00009FB900088E3C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5014, 183, CAST(0x00009FB900088E3C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5015, 184, CAST(0x00009FB900088E3C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5016, 185, CAST(0x00009FB900088E3C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5017, 186, CAST(0x00009FB900088E3C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5023, 192, CAST(0x00009FB900088E3C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5024, 193, CAST(0x00009FB900088E3C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5169, 69, CAST(0x00009FB90008B740 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5170, 70, CAST(0x00009FB90008B740 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5172, 72, CAST(0x00009FB90008B740 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5284, 174, CAST(0x00009FB90008B740 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5293, 183, CAST(0x00009FB90008B740 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5294, 184, CAST(0x00009FB90008B740 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5295, 185, CAST(0x00009FB90008B740 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5296, 186, CAST(0x00009FB90008B740 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5302, 192, CAST(0x00009FB90008B740 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5303, 193, CAST(0x00009FB90008B740 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5449, 69, CAST(0x00009FB90008E74C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5450, 70, CAST(0x00009FB90008E74C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5452, 72, CAST(0x00009FB90008E74C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5564, 174, CAST(0x00009FB90008E878 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5573, 183, CAST(0x00009FB90008E878 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5574, 184, CAST(0x00009FB90008E878 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5575, 185, CAST(0x00009FB90008E878 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5576, 186, CAST(0x00009FB90008E878 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5582, 192, CAST(0x00009FB90008E878 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5583, 193, CAST(0x00009FB90008E878 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5730, 69, CAST(0x00009FB900090A74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5731, 70, CAST(0x00009FB900090A74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5733, 72, CAST(0x00009FB900090A74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5845, 174, CAST(0x00009FB900090A74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5854, 183, CAST(0x00009FB900090A74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5855, 184, CAST(0x00009FB900090A74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5856, 185, CAST(0x00009FB900090A74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5857, 186, CAST(0x00009FB900090A74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5863, 192, CAST(0x00009FB900090A74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (5864, 193, CAST(0x00009FB900090A74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6012, 69, CAST(0x00009FB9000936FC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6013, 70, CAST(0x00009FB9000936FC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6015, 72, CAST(0x00009FB9000936FC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6127, 174, CAST(0x00009FB9000936FC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6136, 183, CAST(0x00009FB9000936FC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6137, 184, CAST(0x00009FB9000936FC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6138, 185, CAST(0x00009FB9000936FC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6139, 186, CAST(0x00009FB9000936FC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6145, 192, CAST(0x00009FB9000936FC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6146, 193, CAST(0x00009FB9000936FC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6295, 69, CAST(0x00009FB900096000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6296, 70, CAST(0x00009FB900096000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6298, 72, CAST(0x00009FB900096000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6410, 174, CAST(0x00009FB900096000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6419, 183, CAST(0x00009FB900096000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6420, 184, CAST(0x00009FB900096000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6421, 185, CAST(0x00009FB900096000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6422, 186, CAST(0x00009FB900096000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6428, 192, CAST(0x00009FB900096000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6429, 193, CAST(0x00009FB900096000 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6579, 69, CAST(0x00009FB900097FA4 AS DateTime), 100, 100)
GO
print 'Processed 200 total records'
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6580, 70, CAST(0x00009FB900097FA4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6582, 72, CAST(0x00009FB900097FA4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6694, 174, CAST(0x00009FB900097FA4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6703, 183, CAST(0x00009FB900097FA4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6704, 184, CAST(0x00009FB900097FA4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6705, 185, CAST(0x00009FB900097FA4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6706, 186, CAST(0x00009FB900097FA4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6712, 192, CAST(0x00009FB900097FA4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6713, 193, CAST(0x00009FB900097FA4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6864, 69, CAST(0x00009FB90009A2CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6865, 70, CAST(0x00009FB90009A2CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6867, 72, CAST(0x00009FB90009A2CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6979, 174, CAST(0x00009FB90009A2CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6988, 183, CAST(0x00009FB90009A2CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6989, 184, CAST(0x00009FB90009A2CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6990, 185, CAST(0x00009FB90009A2CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6991, 186, CAST(0x00009FB90009A2CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6997, 192, CAST(0x00009FB90009A2CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (6998, 193, CAST(0x00009FB90009A2CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7150, 69, CAST(0x00009FB9000F6C0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7151, 70, CAST(0x00009FB9000F6C0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7153, 72, CAST(0x00009FB9000F6C0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7265, 174, CAST(0x00009FB9000F6C0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7274, 183, CAST(0x00009FB9000F6C0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7275, 184, CAST(0x00009FB9000F6C0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7276, 185, CAST(0x00009FB9000F6C0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7277, 186, CAST(0x00009FB9000F6C0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7283, 192, CAST(0x00009FB9000F6C0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7284, 193, CAST(0x00009FB9000F6C0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7436, 69, CAST(0x00009FB9000F7440 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7437, 70, CAST(0x00009FB9000F7440 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7439, 72, CAST(0x00009FB9000F7440 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7551, 174, CAST(0x00009FB9000F7440 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7560, 183, CAST(0x00009FB9000F7440 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7561, 184, CAST(0x00009FB9000F7440 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7562, 185, CAST(0x00009FB9000F7440 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7563, 186, CAST(0x00009FB9000F7440 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7569, 192, CAST(0x00009FB9000F7440 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7570, 193, CAST(0x00009FB9000F7440 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7722, 69, CAST(0x00009FB9008E30C8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7723, 70, CAST(0x00009FB9008E30C8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7725, 72, CAST(0x00009FB9008E30C8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7728, 69, CAST(0x00009FB9008F7B40 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7729, 70, CAST(0x00009FB9008F7B40 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7731, 72, CAST(0x00009FB9008F7B40 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7734, 69, CAST(0x00009FB9008FD57C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7735, 70, CAST(0x00009FB9008FD57C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7737, 72, CAST(0x00009FB9008FD57C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7740, 69, CAST(0x00009FB900900330 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7741, 70, CAST(0x00009FB900900330 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7743, 72, CAST(0x00009FB900900330 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7746, 69, CAST(0x00009FB900919B00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7747, 70, CAST(0x00009FB900919B00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7749, 72, CAST(0x00009FB900919B00 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7752, 69, CAST(0x00009FB90091BAA4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7753, 70, CAST(0x00009FB90091BBD0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7755, 72, CAST(0x00009FB90091BBD0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7758, 69, CAST(0x00009FB90091EBDC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7759, 70, CAST(0x00009FB90091EBDC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7761, 72, CAST(0x00009FB90091EBDC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7764, 69, CAST(0x00009FB9009308A0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7765, 70, CAST(0x00009FB9009308A0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7767, 72, CAST(0x00009FB9009308A0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7879, 174, CAST(0x00009FB90093F7B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7888, 183, CAST(0x00009FB90093F7B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7889, 184, CAST(0x00009FB90093F7B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7890, 185, CAST(0x00009FB90093F7B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7891, 186, CAST(0x00009FB90093F7B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7897, 192, CAST(0x00009FB90093F7B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (7898, 193, CAST(0x00009FB90093F7B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8050, 69, CAST(0x00009FB90094B45C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8051, 70, CAST(0x00009FB90094B45C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8053, 72, CAST(0x00009FB90094B45C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8056, 69, CAST(0x00009FB900955290 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8057, 70, CAST(0x00009FB900955290 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8059, 72, CAST(0x00009FB900955290 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8062, 69, CAST(0x00009FB90097FDC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8063, 70, CAST(0x00009FB90097FDC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8065, 72, CAST(0x00009FB90097FDC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8177, 174, CAST(0x00009FB9009819E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8186, 183, CAST(0x00009FB9009819E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8187, 184, CAST(0x00009FB9009819E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8188, 185, CAST(0x00009FB9009819E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8189, 186, CAST(0x00009FB9009819E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8195, 192, CAST(0x00009FB9009819E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8196, 193, CAST(0x00009FB9009819E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8348, 69, CAST(0x00009FB9009FA074 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8349, 70, CAST(0x00009FB9009FA074 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8351, 72, CAST(0x00009FB9009FA074 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8355, 69, CAST(0x00009FB9009FDFBC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8356, 70, CAST(0x00009FB9009FDFBC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8358, 72, CAST(0x00009FB9009FDFBC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8361, 69, CAST(0x00009FB900A01220 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8362, 70, CAST(0x00009FB900A01220 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8364, 72, CAST(0x00009FB900A01220 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8367, 69, CAST(0x00009FB900A0F7D0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8368, 70, CAST(0x00009FB900A0F7D0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8370, 72, CAST(0x00009FB900A0F7D0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8374, 69, CAST(0x00009FB900A12B60 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8375, 70, CAST(0x00009FB900A12B60 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8377, 72, CAST(0x00009FB900A12B60 AS DateTime), 100, 100)
GO
print 'Processed 300 total records'
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8380, 69, CAST(0x00009FB900A19730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8381, 70, CAST(0x00009FB900A19730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8383, 72, CAST(0x00009FB900A19730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8386, 69, CAST(0x00009FBF011F9838 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8387, 70, CAST(0x00009FBF011F9838 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8389, 72, CAST(0x00009FBF011F9838 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8501, 174, CAST(0x00009FBF011F9A90 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8510, 183, CAST(0x00009FBF011F9A90 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8511, 184, CAST(0x00009FBF011F9A90 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8512, 185, CAST(0x00009FBF011F9A90 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8513, 186, CAST(0x00009FBF011F9A90 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8519, 192, CAST(0x00009FBF011F9A90 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8520, 193, CAST(0x00009FBF011F9A90 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8672, 69, CAST(0x0000A00A00F572C4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8673, 70, CAST(0x0000A00A00F572C4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8675, 72, CAST(0x0000A00A00F572C4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8791, 174, CAST(0x0000A00A00F573F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8800, 183, CAST(0x0000A00A00F573F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8801, 184, CAST(0x0000A00A00F573F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8802, 185, CAST(0x0000A00A00F573F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8803, 186, CAST(0x0000A00A00F573F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8809, 192, CAST(0x0000A00A00F573F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8810, 193, CAST(0x0000A00A00F573F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8962, 69, CAST(0x0000A00A00F5FE38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8963, 70, CAST(0x0000A00A00F5FE38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (8965, 72, CAST(0x0000A00A00F5FE38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9081, 174, CAST(0x0000A00A00F5FE38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9090, 183, CAST(0x0000A00A00F5FE38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9091, 184, CAST(0x0000A00A00F5FE38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9092, 185, CAST(0x0000A00A00F5FE38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9093, 186, CAST(0x0000A00A00F5FE38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9099, 192, CAST(0x0000A00A00F5FE38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9100, 193, CAST(0x0000A00A00F5FE38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9252, 69, CAST(0x0000A00A00F6CA20 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9253, 70, CAST(0x0000A00A00F6CA20 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9255, 72, CAST(0x0000A00A00F6CA20 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9258, 69, CAST(0x0000A00A00F727E0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9259, 70, CAST(0x0000A00A00F727E0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9261, 72, CAST(0x0000A00A00F727E0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9271, 69, CAST(0x0000A00A00FB3628 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9272, 70, CAST(0x0000A00A00FB3628 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9274, 72, CAST(0x0000A00A00FB3628 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9390, 174, CAST(0x0000A00A00FB3D30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9399, 183, CAST(0x0000A00A00FB3D30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9400, 184, CAST(0x0000A00A00FB3D30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9401, 185, CAST(0x0000A00A00FB3D30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9402, 186, CAST(0x0000A00A00FB3D30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9408, 192, CAST(0x0000A00A00FB3D30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9409, 193, CAST(0x0000A00A00FB3D30 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9561, 69, CAST(0x0000A00A00FB8F38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9562, 70, CAST(0x0000A00A00FB9D48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9564, 72, CAST(0x0000A00A00FBA0CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9567, 69, CAST(0x0000A00A00FBC19C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9568, 70, CAST(0x0000A00A00FBC19C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9570, 72, CAST(0x0000A00A00FBC19C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9576, 69, CAST(0x0000A00A00FBF400 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9577, 70, CAST(0x0000A00A00FBF400 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9579, 72, CAST(0x0000A00A00FBF400 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9582, 69, CAST(0x0000A00A00FC7E48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9583, 70, CAST(0x0000A00A00FC7E48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9585, 72, CAST(0x0000A00A00FC7E48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9701, 174, CAST(0x0000A00A00FC7E48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9710, 183, CAST(0x0000A00A00FC7E48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9711, 184, CAST(0x0000A00A00FC7E48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9712, 185, CAST(0x0000A00A00FC7E48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9713, 186, CAST(0x0000A00A00FC7E48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9719, 192, CAST(0x0000A00A00FC7E48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9720, 193, CAST(0x0000A00A00FC7E48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9872, 69, CAST(0x0000A00A00FDA214 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9873, 70, CAST(0x0000A00A00FDA214 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9875, 72, CAST(0x0000A00A00FDA214 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (9991, 174, CAST(0x0000A00A00FDA340 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10000, 183, CAST(0x0000A00A00FDA340 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10001, 184, CAST(0x0000A00A00FDA340 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10002, 185, CAST(0x0000A00A00FDA340 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10003, 186, CAST(0x0000A00A00FDA340 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10009, 192, CAST(0x0000A00A00FDA340 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10010, 193, CAST(0x0000A00A00FDA340 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10162, 69, CAST(0x0000A00C00825DD4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10163, 70, CAST(0x0000A00C00825DD4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10165, 72, CAST(0x0000A00C00825DD4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10281, 174, CAST(0x0000A00C0082602C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10290, 183, CAST(0x0000A00C0082602C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10291, 184, CAST(0x0000A00C0082602C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10292, 185, CAST(0x0000A00C0082602C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10293, 186, CAST(0x0000A00C0082602C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10299, 192, CAST(0x0000A00C0082602C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10300, 193, CAST(0x0000A00C0082602C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10453, 69, CAST(0x0000A00C0082EF24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10454, 70, CAST(0x0000A00C0082EF24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10456, 72, CAST(0x0000A00C0082EF24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10572, 174, CAST(0x0000A00C0082EF24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10581, 183, CAST(0x0000A00C0082EF24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10582, 184, CAST(0x0000A00C0082EF24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10583, 185, CAST(0x0000A00C0082EF24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10584, 186, CAST(0x0000A00C0082EF24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10590, 192, CAST(0x0000A00C0082EF24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10591, 193, CAST(0x0000A00C0082EF24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10745, 69, CAST(0x0000A00C008330C4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10746, 70, CAST(0x0000A00C008330C4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10748, 72, CAST(0x0000A00C008330C4 AS DateTime), 100, 100)
GO
print 'Processed 400 total records'
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10864, 174, CAST(0x0000A00C008331F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10873, 183, CAST(0x0000A00C008331F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10874, 184, CAST(0x0000A00C008331F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10875, 185, CAST(0x0000A00C008331F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10876, 186, CAST(0x0000A00C008331F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10882, 192, CAST(0x0000A00C008331F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (10883, 193, CAST(0x0000A00C008331F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11037, 69, CAST(0x0000A00C00835770 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11038, 70, CAST(0x0000A00C00835770 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11040, 72, CAST(0x0000A00C00835770 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11156, 174, CAST(0x0000A00C008359C8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11165, 183, CAST(0x0000A00C008359C8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11166, 184, CAST(0x0000A00C008359C8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11167, 185, CAST(0x0000A00C008359C8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11168, 186, CAST(0x0000A00C008359C8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11174, 192, CAST(0x0000A00C008359C8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11175, 193, CAST(0x0000A00C008359C8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11330, 69, CAST(0x0000A00C0083E410 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11331, 70, CAST(0x0000A00C0083E410 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11333, 72, CAST(0x0000A00C0083E410 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11449, 174, CAST(0x0000A00C0083E410 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11458, 183, CAST(0x0000A00C0083E410 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11459, 184, CAST(0x0000A00C0083E410 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11460, 185, CAST(0x0000A00C0083E410 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11461, 186, CAST(0x0000A00C0083E410 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11467, 192, CAST(0x0000A00C0083E410 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11468, 193, CAST(0x0000A00C0083E410 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11624, 69, CAST(0x0000A00E009EB998 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11625, 70, CAST(0x0000A00E009EB998 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11627, 72, CAST(0x0000A00E009EB998 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11630, 69, CAST(0x0000A00E00A24248 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11631, 70, CAST(0x0000A00E00A24248 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11633, 72, CAST(0x0000A00E00A24248 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11735, 174, CAST(0x0000A00E00A260C0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11744, 183, CAST(0x0000A00E00A260C0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11745, 184, CAST(0x0000A00E00A260C0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11746, 185, CAST(0x0000A00E00A260C0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11747, 186, CAST(0x0000A00E00A260C0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11753, 192, CAST(0x0000A00E00A261EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11754, 193, CAST(0x0000A00E00A261EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11924, 69, CAST(0x0000A00E00A460DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11925, 70, CAST(0x0000A00E00A460DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (11927, 72, CAST(0x0000A00E00A460DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12029, 174, CAST(0x0000A00E00A460DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12038, 183, CAST(0x0000A00E00A460DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12039, 184, CAST(0x0000A00E00A460DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12040, 185, CAST(0x0000A00E00A460DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12041, 186, CAST(0x0000A00E00A460DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12047, 192, CAST(0x0000A00E00A460DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12048, 193, CAST(0x0000A00E00A460DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12218, 69, CAST(0x0000A00E00A55118 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12219, 70, CAST(0x0000A00E00A55118 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12221, 72, CAST(0x0000A00E00A55118 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12323, 174, CAST(0x0000A00E00A55244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12332, 183, CAST(0x0000A00E00A55244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12333, 184, CAST(0x0000A00E00A55244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12334, 185, CAST(0x0000A00E00A55244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12335, 186, CAST(0x0000A00E00A55244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12341, 192, CAST(0x0000A00E00A55244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12342, 193, CAST(0x0000A00E00A55244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12512, 69, CAST(0x0000A00E00AF7274 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12513, 70, CAST(0x0000A00E00AF7274 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12515, 72, CAST(0x0000A00E00AF7274 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12518, 69, CAST(0x0000A01501186284 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12519, 70, CAST(0x0000A01501186284 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12521, 72, CAST(0x0000A01501186284 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12623, 174, CAST(0x0000A015011863B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12632, 183, CAST(0x0000A015011863B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12633, 184, CAST(0x0000A015011863B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12634, 185, CAST(0x0000A015011863B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12635, 186, CAST(0x0000A015011863B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12641, 192, CAST(0x0000A015011863B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12642, 193, CAST(0x0000A015011863B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12812, 69, CAST(0x0000A0150118DA0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12813, 70, CAST(0x0000A0150118DA0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12815, 72, CAST(0x0000A0150118DA0C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12917, 174, CAST(0x0000A0150118DB38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12926, 183, CAST(0x0000A0150118DB38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12927, 184, CAST(0x0000A0150118DB38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12928, 185, CAST(0x0000A0150118DB38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12929, 186, CAST(0x0000A0150118DB38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12935, 192, CAST(0x0000A0150118DB38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (12936, 193, CAST(0x0000A0150118DB38 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13106, 69, CAST(0x0000A0150125D900 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13107, 70, CAST(0x0000A0150125D900 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13109, 72, CAST(0x0000A0150125D900 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13211, 174, CAST(0x0000A0150125E134 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13220, 183, CAST(0x0000A0150125E134 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13221, 184, CAST(0x0000A0150125E134 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13222, 185, CAST(0x0000A0150125E134 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13223, 186, CAST(0x0000A0150125E134 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13229, 192, CAST(0x0000A0150125E134 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13230, 193, CAST(0x0000A0150125E134 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13373, 69, CAST(0x0000A0150128610C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13374, 70, CAST(0x0000A0150128610C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13376, 72, CAST(0x0000A0150128610C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13478, 174, CAST(0x0000A0150128610C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13487, 183, CAST(0x0000A0150128610C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13488, 184, CAST(0x0000A0150128610C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13489, 185, CAST(0x0000A0150128610C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13490, 186, CAST(0x0000A0150128610C AS DateTime), 100, 100)
GO
print 'Processed 500 total records'
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13496, 192, CAST(0x0000A0150128610C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13497, 193, CAST(0x0000A0150128610C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13668, 69, CAST(0x0000A0150128A3D8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13669, 70, CAST(0x0000A0150128A3D8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13671, 72, CAST(0x0000A0150128A3D8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13773, 174, CAST(0x0000A0150128A3D8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13782, 183, CAST(0x0000A0150128A3D8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13783, 184, CAST(0x0000A0150128A3D8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13784, 185, CAST(0x0000A0150128A3D8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13785, 186, CAST(0x0000A0150128A3D8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13791, 192, CAST(0x0000A0150128A3D8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13792, 193, CAST(0x0000A0150128A3D8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13964, 69, CAST(0x0000A0150128CF34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13965, 70, CAST(0x0000A0150128CF34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (13967, 72, CAST(0x0000A0150128CF34 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14069, 174, CAST(0x0000A0150128D060 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14078, 183, CAST(0x0000A0150128D060 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14079, 184, CAST(0x0000A0150128D060 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14080, 185, CAST(0x0000A0150128D060 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14081, 186, CAST(0x0000A0150128D060 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14087, 192, CAST(0x0000A0150128D060 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14088, 193, CAST(0x0000A0150128D060 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14261, 69, CAST(0x0000A015012924C0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14262, 70, CAST(0x0000A015012924C0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14264, 72, CAST(0x0000A015012924C0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14366, 174, CAST(0x0000A015012925EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14375, 183, CAST(0x0000A015012925EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14376, 184, CAST(0x0000A015012925EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14377, 185, CAST(0x0000A015012925EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14378, 186, CAST(0x0000A015012925EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14384, 192, CAST(0x0000A015012925EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14385, 193, CAST(0x0000A015012925EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14586, 69, CAST(0x0000A01501298730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14587, 70, CAST(0x0000A01501298730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14589, 72, CAST(0x0000A01501298730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14691, 174, CAST(0x0000A01501298730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14700, 183, CAST(0x0000A01501298730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14701, 184, CAST(0x0000A01501298730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14702, 185, CAST(0x0000A01501298730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14703, 186, CAST(0x0000A01501298730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14709, 192, CAST(0x0000A01501298730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14710, 193, CAST(0x0000A01501298730 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14884, 69, CAST(0x0000A015012991BC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14885, 70, CAST(0x0000A015012991BC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14887, 72, CAST(0x0000A015012991BC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14989, 174, CAST(0x0000A015012991BC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14998, 183, CAST(0x0000A015012991BC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (14999, 184, CAST(0x0000A015012991BC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15000, 185, CAST(0x0000A015012991BC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15001, 186, CAST(0x0000A015012991BC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15007, 192, CAST(0x0000A015012991BC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15008, 193, CAST(0x0000A015012991BC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15182, 69, CAST(0x0000A015012A7190 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15183, 70, CAST(0x0000A015012A7190 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15185, 72, CAST(0x0000A015012A7190 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15287, 174, CAST(0x0000A015012A7190 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15296, 183, CAST(0x0000A015012A7190 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15297, 184, CAST(0x0000A015012A7190 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15298, 185, CAST(0x0000A015012A7190 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15299, 186, CAST(0x0000A015012A7190 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15305, 192, CAST(0x0000A015012A7190 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15306, 193, CAST(0x0000A015012A7190 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15480, 69, CAST(0x0000A0150138411C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15481, 70, CAST(0x0000A0150138411C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15483, 72, CAST(0x0000A0150138411C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15585, 174, CAST(0x0000A0150138411C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15594, 183, CAST(0x0000A0150138411C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15595, 184, CAST(0x0000A0150138411C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15596, 185, CAST(0x0000A0150138411C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15597, 186, CAST(0x0000A0150138411C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15603, 192, CAST(0x0000A0150138411C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15604, 193, CAST(0x0000A0150138411C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15779, 69, CAST(0x0000A01A010C1358 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15780, 70, CAST(0x0000A01A010C1484 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15782, 72, CAST(0x0000A01A010C1484 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15884, 174, CAST(0x0000A01A010C15B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15893, 183, CAST(0x0000A01A010C15B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15894, 184, CAST(0x0000A01A010C15B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15895, 185, CAST(0x0000A01A010C15B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15896, 186, CAST(0x0000A01A010C15B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15902, 192, CAST(0x0000A01A010C15B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (15903, 193, CAST(0x0000A01A010C15B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16078, 69, CAST(0x0000A01A010C60B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16079, 70, CAST(0x0000A01A010C60B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16081, 72, CAST(0x0000A01A010C60B0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16183, 174, CAST(0x0000A01A010C61DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16192, 183, CAST(0x0000A01A010C61DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16193, 184, CAST(0x0000A01A010C61DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16194, 185, CAST(0x0000A01A010C61DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16195, 186, CAST(0x0000A01A010C61DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16201, 192, CAST(0x0000A01A010C61DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16202, 193, CAST(0x0000A01A010C61DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16377, 69, CAST(0x0000A01A010CB63C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16378, 70, CAST(0x0000A01A010CB63C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16380, 72, CAST(0x0000A01A010CB63C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16482, 174, CAST(0x0000A01A010CB63C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16491, 183, CAST(0x0000A01A010CB63C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16492, 184, CAST(0x0000A01A010CB63C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16493, 185, CAST(0x0000A01A010CB63C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16494, 186, CAST(0x0000A01A010CB63C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16500, 192, CAST(0x0000A01A010CB63C AS DateTime), 100, 100)
GO
print 'Processed 600 total records'
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16501, 193, CAST(0x0000A01A010CB63C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16676, 69, CAST(0x0000A01A010CE06C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16677, 70, CAST(0x0000A01A010CE06C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16679, 72, CAST(0x0000A01A010CE06C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16781, 174, CAST(0x0000A01A010CE06C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16790, 183, CAST(0x0000A01A010CE06C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16791, 184, CAST(0x0000A01A010CE06C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16792, 185, CAST(0x0000A01A010CE06C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16793, 186, CAST(0x0000A01A010CE06C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16799, 192, CAST(0x0000A01A010CE06C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16800, 193, CAST(0x0000A01A010CE06C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16975, 69, CAST(0x0000A02200EA9CF0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16976, 70, CAST(0x0000A02200EA9CF0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (16978, 72, CAST(0x0000A02200EA9CF0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17080, 174, CAST(0x0000A02200EA9E1C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17089, 183, CAST(0x0000A02200EA9E1C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17090, 184, CAST(0x0000A02200EA9E1C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17091, 185, CAST(0x0000A02200EA9E1C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17092, 186, CAST(0x0000A02200EA9E1C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17098, 192, CAST(0x0000A02200EA9E1C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17099, 193, CAST(0x0000A02200EA9E1C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17274, 69, CAST(0x0000A02700C37134 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17275, 70, CAST(0x0000A02700C37134 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17277, 72, CAST(0x0000A02700C37134 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17379, 174, CAST(0x0000A02700C37260 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17388, 183, CAST(0x0000A02700C37260 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17389, 184, CAST(0x0000A02700C37260 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17390, 185, CAST(0x0000A02700C37260 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17391, 186, CAST(0x0000A02700C37260 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17397, 192, CAST(0x0000A02700C37260 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17398, 193, CAST(0x0000A02700C37260 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17574, 69, CAST(0x0000A02700C8DB88 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17575, 70, CAST(0x0000A02700C8DB88 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17577, 72, CAST(0x0000A02700C8DB88 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17679, 174, CAST(0x0000A02700C8DB88 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17688, 183, CAST(0x0000A02700C8DB88 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17689, 184, CAST(0x0000A02700C8DB88 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17690, 185, CAST(0x0000A02700C8DB88 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17691, 186, CAST(0x0000A02700C8DB88 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17697, 192, CAST(0x0000A02700C8DB88 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17698, 193, CAST(0x0000A02700C8DB88 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17706, 342, CAST(0x0000A06A00CB8548 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17707, 343, CAST(0x0000A06A00CE8C64 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17708, 344, CAST(0x0000A06A00CEA19B AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17710, 346, CAST(0x0000A06A00CF364A AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17711, 347, CAST(0x0000A06A00CF4684 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17712, 348, CAST(0x0000A06A00CF58D4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17713, 349, CAST(0x0000A06A00CF7060 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17714, 350, CAST(0x0000A06A00CF81A0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17715, 351, CAST(0x0000A06A00CFA3E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17716, 352, CAST(0x0000A06A00D74544 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17717, 353, CAST(0x0000A06A00D7553E AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17718, 354, CAST(0x0000A06A00D7771B AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17719, 355, CAST(0x0000A06A00D78879 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17720, 356, CAST(0x0000A06A00D79AFE AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17721, 357, CAST(0x0000A06A00D7A8EB AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17722, 358, CAST(0x0000A06A00D7B7E5 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17723, 359, CAST(0x0000A06A00D7C8FA AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17724, 360, CAST(0x0000A06A00D7D909 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17725, 361, CAST(0x0000A06A00D7EFF7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17726, 362, CAST(0x0000A06A00D8212E AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17727, 363, CAST(0x0000A06A00D8338E AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17728, 364, CAST(0x0000A06A00D842D1 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17729, 365, CAST(0x0000A06A00D869AD AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17730, 366, CAST(0x0000A06A00D89581 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17731, 367, CAST(0x0000A06A00D8C801 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17732, 368, CAST(0x0000A06A00D8DFF3 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17733, 369, CAST(0x0000A06A00D8F6A9 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17734, 370, CAST(0x0000A06A00D906A7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17736, 69, CAST(0x0000A0780115CA10 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17737, 70, CAST(0x0000A0780115CA10 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17738, 72, CAST(0x0000A0780115CA10 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17739, 174, CAST(0x0000A0780115CA10 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17740, 183, CAST(0x0000A0780115CA10 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17741, 184, CAST(0x0000A0780115CA10 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17742, 69, CAST(0x0000A07A014219D0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17743, 70, CAST(0x0000A07A014219D0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17744, 72, CAST(0x0000A07A014219D0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17745, 174, CAST(0x0000A07A014219D0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17746, 183, CAST(0x0000A07A014219D0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17747, 184, CAST(0x0000A07A014219D0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17748, 69, CAST(0x0000A07A01438518 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17749, 70, CAST(0x0000A07A01438518 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17750, 72, CAST(0x0000A07A01438518 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17751, 174, CAST(0x0000A07A01438518 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17752, 183, CAST(0x0000A07A01438518 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17753, 184, CAST(0x0000A07A01438518 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17754, 69, CAST(0x0000A07A0143EFBC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17755, 70, CAST(0x0000A07A0143EFBC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17756, 72, CAST(0x0000A07A0143EFBC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17757, 174, CAST(0x0000A07A0143EFBC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17758, 183, CAST(0x0000A07A0143EFBC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17759, 184, CAST(0x0000A07A0143EFBC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17760, 69, CAST(0x0000A07A014471D0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17761, 70, CAST(0x0000A07A014472FC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17762, 72, CAST(0x0000A07A01447428 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17763, 174, CAST(0x0000A07A01447554 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17764, 183, CAST(0x0000A07A01447554 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17765, 184, CAST(0x0000A07A01447680 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17766, 69, CAST(0x0000A07A01454394 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17767, 70, CAST(0x0000A07A01454718 AS DateTime), 100, 100)
GO
print 'Processed 700 total records'
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17768, 72, CAST(0x0000A07A01454A9C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17769, 174, CAST(0x0000A07A01454F4C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17770, 183, CAST(0x0000A07A01455B04 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17771, 184, CAST(0x0000A07A01456DC4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17772, 69, CAST(0x0000A07A0145D4E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17773, 70, CAST(0x0000A07A0145D4E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17774, 72, CAST(0x0000A07A0145D4E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17775, 174, CAST(0x0000A07A0145D4E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17776, 183, CAST(0x0000A07A0145D4E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17777, 184, CAST(0x0000A07A0145D4E4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17778, 69, CAST(0x0000A07A01477F74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17779, 70, CAST(0x0000A07A01477F74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17780, 72, CAST(0x0000A07A01477F74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17781, 174, CAST(0x0000A07A01477F74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17782, 183, CAST(0x0000A07A01477F74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17783, 184, CAST(0x0000A07A01477F74 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17784, 69, CAST(0x0000A07A0148050C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17785, 70, CAST(0x0000A07A0148050C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17786, 72, CAST(0x0000A07A0148050C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17787, 174, CAST(0x0000A07A0148050C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17788, 183, CAST(0x0000A07A0148050C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17789, 184, CAST(0x0000A07A0148050C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17790, 69, CAST(0x0000A07A01484454 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17791, 70, CAST(0x0000A07A01484454 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17792, 72, CAST(0x0000A07A01484454 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17793, 174, CAST(0x0000A07A01484454 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17794, 183, CAST(0x0000A07A01484454 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17795, 184, CAST(0x0000A07A01484454 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17796, 69, CAST(0x0000A07A014863F8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17797, 70, CAST(0x0000A07A014863F8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17798, 72, CAST(0x0000A07A014863F8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17799, 174, CAST(0x0000A07A014863F8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17800, 183, CAST(0x0000A07A014863F8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17801, 184, CAST(0x0000A07A014863F8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17802, 69, CAST(0x0000A07A0148D34C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17803, 70, CAST(0x0000A07A0148DB80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17804, 72, CAST(0x0000A07A0148DB80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17805, 174, CAST(0x0000A07A0148DB80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17806, 183, CAST(0x0000A07A0148DB80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17807, 184, CAST(0x0000A07A0148DB80 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17808, 69, CAST(0x0000A07A0148FB24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17809, 70, CAST(0x0000A07A0148FB24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17810, 72, CAST(0x0000A07A0148FB24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17811, 174, CAST(0x0000A07A0148FB24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17812, 183, CAST(0x0000A07A0148FB24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17813, 184, CAST(0x0000A07A0148FB24 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17814, 69, CAST(0x0000A07A014BA1A8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17815, 70, CAST(0x0000A07A014BA52C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17816, 72, CAST(0x0000A07A014BA52C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17817, 174, CAST(0x0000A07A014BA784 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17818, 183, CAST(0x0000A07A014BA784 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17819, 184, CAST(0x0000A07A014BA784 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17820, 185, CAST(0x0000A07A014BAB08 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17821, 186, CAST(0x0000A07A014BAB08 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17822, 192, CAST(0x0000A07A014BAB08 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17823, 193, CAST(0x0000A07A014BAB08 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17824, 185, CAST(0x0000A07A014BAD60 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17825, 185, CAST(0x0000A07A014BAFB8 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17826, 185, CAST(0x0000A07A014BB210 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17827, 185, CAST(0x0000A07A014BB468 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17828, 186, CAST(0x0000A07A014BB468 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17829, 184, CAST(0x0000A07A014BB468 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17830, 69, CAST(0x0000A07A014C76F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17831, 70, CAST(0x0000A07A014C76F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17832, 72, CAST(0x0000A07A014C76F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17833, 174, CAST(0x0000A07A014C76F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17834, 183, CAST(0x0000A07A014C76F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17835, 184, CAST(0x0000A07A014C76F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17836, 185, CAST(0x0000A07A014C76F0 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17837, 186, CAST(0x0000A07A014C76F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17838, 192, CAST(0x0000A07A014C76F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17839, 193, CAST(0x0000A07A014C76F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17840, 185, CAST(0x0000A07A014C76F0 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17841, 185, CAST(0x0000A07A014C76F0 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17842, 185, CAST(0x0000A07A014C76F0 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17843, 185, CAST(0x0000A07A014C76F0 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17844, 186, CAST(0x0000A07A014C76F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17845, 184, CAST(0x0000A07A014C76F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17846, 69, CAST(0x0000A07A014C9D9C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17847, 70, CAST(0x0000A07A014C9D9C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17848, 72, CAST(0x0000A07A014C9D9C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17849, 174, CAST(0x0000A07A014C9D9C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17850, 183, CAST(0x0000A07A014C9D9C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17851, 184, CAST(0x0000A07A014C9D9C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17852, 185, CAST(0x0000A07A014D12CC AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17853, 186, CAST(0x0000A07A014D12CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17854, 192, CAST(0x0000A07A014D12CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17855, 193, CAST(0x0000A07A014D12CC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17856, 185, CAST(0x0000A07A014D1650 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17857, 185, CAST(0x0000A07A014D18A8 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17858, 185, CAST(0x0000A07A014D1C2C AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17859, 185, CAST(0x0000A07A014D1C2C AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17860, 186, CAST(0x0000A07A014D1C2C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17861, 184, CAST(0x0000A07A014D1C2C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17862, 69, CAST(0x0000A07A014D2B68 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17863, 70, CAST(0x0000A07A014D2B68 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17864, 72, CAST(0x0000A07A014D2B68 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17865, 174, CAST(0x0000A07A014D2B68 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17866, 183, CAST(0x0000A07A014D2B68 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17867, 184, CAST(0x0000A07A014D2B68 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17868, 185, CAST(0x0000A07A014D57F0 AS DateTime), 99.8140205716021, 99.5096035962403)
GO
print 'Processed 800 total records'
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17869, 186, CAST(0x0000A07A014D57F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17870, 192, CAST(0x0000A07A014D57F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17871, 193, CAST(0x0000A07A014D57F0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17872, 185, CAST(0x0000A07A014D591C AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17873, 185, CAST(0x0000A07A014D5CA0 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17874, 185, CAST(0x0000A07A014D5CA0 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17875, 185, CAST(0x0000A07A014D5DCC AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17876, 186, CAST(0x0000A07A014D5DCC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17877, 184, CAST(0x0000A07A014D5DCC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17878, 69, CAST(0x0000A07A014D672C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17879, 70, CAST(0x0000A07A014D672C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17880, 72, CAST(0x0000A07A014D672C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17881, 174, CAST(0x0000A07A014D672C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17882, 183, CAST(0x0000A07A014D672C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17883, 184, CAST(0x0000A07A014D672C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17884, 185, CAST(0x0000A07A014DAFD4 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17885, 186, CAST(0x0000A07A014DAFD4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17886, 192, CAST(0x0000A07A014DAFD4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17887, 193, CAST(0x0000A07A014DAFD4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17888, 185, CAST(0x0000A07A014DAFD4 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17889, 185, CAST(0x0000A07A014DAFD4 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17890, 185, CAST(0x0000A07A014DAFD4 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17891, 185, CAST(0x0000A07A014DAFD4 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17892, 186, CAST(0x0000A07A014DAFD4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17893, 184, CAST(0x0000A07A014DAFD4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17894, 69, CAST(0x0000A07A014DDA04 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17895, 70, CAST(0x0000A07A014DDA04 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17896, 72, CAST(0x0000A07A014DDA04 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17897, 174, CAST(0x0000A07A014DDA04 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17898, 183, CAST(0x0000A07A014DDA04 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17899, 184, CAST(0x0000A07A014DDA04 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17900, 185, CAST(0x0000A07A014E1244 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17901, 186, CAST(0x0000A07A014E1244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17902, 192, CAST(0x0000A07A014E1244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17903, 193, CAST(0x0000A07A014E1244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17904, 185, CAST(0x0000A07A014E1244 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17905, 185, CAST(0x0000A07A014E1244 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17906, 185, CAST(0x0000A07A014E1244 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17907, 185, CAST(0x0000A07A014E1244 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17908, 186, CAST(0x0000A07A014E1244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17909, 184, CAST(0x0000A07A014E1244 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17910, 69, CAST(0x0000A07A014E3B48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17911, 70, CAST(0x0000A07A014E3B48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17912, 72, CAST(0x0000A07A014E3B48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17913, 174, CAST(0x0000A07A014E3B48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17914, 183, CAST(0x0000A07A014E3B48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17915, 184, CAST(0x0000A07A014E3B48 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17916, 185, CAST(0x0000A07A014E8198 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17917, 186, CAST(0x0000A07A014E8198 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17918, 192, CAST(0x0000A07A014E8198 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17919, 193, CAST(0x0000A07A014E8198 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17920, 185, CAST(0x0000A07A014E88A0 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17921, 185, CAST(0x0000A07A014E8D50 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17922, 185, CAST(0x0000A07A014E8E7C AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17923, 185, CAST(0x0000A07A014E8E7C AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17924, 186, CAST(0x0000A07A014E8E7C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17925, 184, CAST(0x0000A07A014E8E7C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17926, 69, CAST(0x0000A07A014EAF4C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17927, 70, CAST(0x0000A07A014EAF4C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17928, 72, CAST(0x0000A07A014EAF4C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17929, 174, CAST(0x0000A07A014EAF4C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17930, 183, CAST(0x0000A07A014EAF4C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17931, 184, CAST(0x0000A07A014EAF4C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17932, 185, CAST(0x0000A07A014F3BEC AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17933, 186, CAST(0x0000A07A014F3BEC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17934, 192, CAST(0x0000A07A014F3BEC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17935, 193, CAST(0x0000A07A014F3BEC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17936, 185, CAST(0x0000A07A014F3BEC AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17937, 185, CAST(0x0000A07A014F3BEC AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17938, 185, CAST(0x0000A07A014F3BEC AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17939, 185, CAST(0x0000A07A014F3BEC AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17940, 186, CAST(0x0000A07A014F3BEC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17941, 184, CAST(0x0000A07A014F3BEC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17942, 69, CAST(0x0000A07A0150D998 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17943, 70, CAST(0x0000A07A0150D998 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17944, 72, CAST(0x0000A07A0150D998 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17945, 174, CAST(0x0000A07A0150D998 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17946, 183, CAST(0x0000A07A0150D998 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17947, 184, CAST(0x0000A07A0150D998 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17948, 185, CAST(0x0000A07A01628760 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17949, 186, CAST(0x0000A07A01628760 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17950, 192, CAST(0x0000A07A01628760 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17951, 193, CAST(0x0000A07A01628760 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17952, 185, CAST(0x0000A07A01628760 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17953, 185, CAST(0x0000A07A01628760 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17954, 185, CAST(0x0000A07A01628760 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17955, 185, CAST(0x0000A07A01628760 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17956, 186, CAST(0x0000A07A01628760 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17957, 184, CAST(0x0000A07A01628760 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17958, 69, CAST(0x0000A07A0188745C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17959, 70, CAST(0x0000A07A0188745C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17960, 72, CAST(0x0000A07A0188745C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17961, 174, CAST(0x0000A07A0188745C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17962, 183, CAST(0x0000A07A0188745C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17963, 184, CAST(0x0000A07A0188745C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17964, 185, CAST(0x0000A07A0188745C AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17965, 186, CAST(0x0000A07A0188745C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17966, 192, CAST(0x0000A07A0188745C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17967, 193, CAST(0x0000A07A0188745C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17968, 185, CAST(0x0000A07A0188745C AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17969, 185, CAST(0x0000A07A0188745C AS DateTime), 99.8140205716021, 99.5096035962403)
GO
print 'Processed 900 total records'
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17970, 185, CAST(0x0000A07A0188745C AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17971, 185, CAST(0x0000A07A0188745C AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17972, 186, CAST(0x0000A07A0188745C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17973, 184, CAST(0x0000A07A0188745C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17974, 185, CAST(0x0000A07C0113ACA8 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17975, 185, CAST(0x0000A07C0117ED54 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17976, 185, CAST(0x0000A07E00CDBF18 AS DateTime), 99.9377412626407, 99.8599274287862)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17977, 185, CAST(0x0000A07E00D48C80 AS DateTime), 99.9027269642408, 99.7846571050942)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17978, 183, CAST(0x0000A07E00E30AA8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17979, 183, CAST(0x0000A07E00E3628C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17980, 183, CAST(0x0000A07E00E3DB40 AS DateTime), 99.81696913293, 99.1861898890259)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17981, 174, CAST(0x0000A07F00EA28EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17982, 174, CAST(0x0000A07F00EB3674 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17983, 185, CAST(0x0000A07F01008DBC AS DateTime), 99.967709457106, 99.925921536091)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17984, 185, CAST(0x0000A07F01023720 AS DateTime), 99.9430250268231, 99.8719974171901)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17985, 185, CAST(0x0000A07F01026AB0 AS DateTime), 99.967709457106, 99.925921536091)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17986, 185, CAST(0x0000A07F0102C3C0 AS DateTime), 99.9430250268231, 99.8719974171901)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17987, 185, CAST(0x0000A07F0102CF78 AS DateTime), 99.967709457106, 99.925921536091)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17988, 185, CAST(0x0000A07F0102F9A8 AS DateTime), 99.9430250268231, 99.8719974171901)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17989, 185, CAST(0x0000A07F010301DC AS DateTime), 99.974071577263, 99.9333540676234)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17990, 185, CAST(0x0000A07F01031370 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17991, 185, CAST(0x0000A07F0117E778 AS DateTime), 99.9740900039235, 99.9334014118901)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17992, 185, CAST(0x0000A07F0117EE80 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17993, 185, CAST(0x0000A07F01184E98 AS DateTime), 99.9741038067404, 99.9334368759707)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17994, 185, CAST(0x0000A07F011856CC AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17995, 185, CAST(0x0000A07F0118FADC AS DateTime), 99.9740853997142, 99.9333895821306)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17996, 185, CAST(0x0000A07F01190D9C AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17997, 185, CAST(0x0000A07F01194BB8 AS DateTime), 99.9740853997142, 99.9333895821306)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17998, 185, CAST(0x0000A07F01196A30 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (17999, 185, CAST(0x0000A07F011A2A60 AS DateTime), 99.974071577263, 99.9333540676234)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18000, 185, CAST(0x0000A07F011A303C AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18001, 185, CAST(0x0000A07F011B2D5C AS DateTime), 99.9740853997142, 99.9333895821306)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18002, 185, CAST(0x0000A07F011B3C98 AS DateTime), 99.8140205716021, 99.5096035962403)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18003, 185, CAST(0x0000A0800178D970 AS DateTime), 99.8619046435922, 99.8714162151903)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18004, 185, CAST(0x0000A08001798230 AS DateTime), 99.7894770450793, 99.8390108624408)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18005, 183, CAST(0x0000A080017FBD1C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18006, 185, CAST(0x0000A0800180036C AS DateTime), 99.8619046435922, 99.8714162151903)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18007, 372, CAST(0x0000A091016B887A AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18008, 373, CAST(0x0000A091016C08BE AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18009, 374, CAST(0x0000A091016C20B8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18010, 375, CAST(0x0000A091016C2C2F AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18011, 376, CAST(0x0000A091016C3FB0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18012, 377, CAST(0x0000A091016C6C13 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18013, 378, CAST(0x0000A091016C782C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18014, 379, CAST(0x0000A091016CA0F4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18015, 380, CAST(0x0000A091016CB05C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18016, 381, CAST(0x0000A092010B1D5E AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18017, 382, CAST(0x0000A092010B47AE AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18018, 383, CAST(0x0000A092010B688A AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18019, 384, CAST(0x0000A092010B81CF AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18020, 385, CAST(0x0000A092010BA058 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18306, 671, CAST(0x0000A0AD015A153B AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18307, 672, CAST(0x0000A0AE00ABC65A AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18308, 183, CAST(0x0000A0AE00C846B4 AS DateTime), 99.9604467632268, 99.939740885809)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18309, 183, CAST(0x0000A0AE00C8607C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18310, 185, CAST(0x0000A0AE00FA6590 AS DateTime), 99.8355226472062, 99.8463314851883)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18311, 185, CAST(0x0000A0AE0103AA9C AS DateTime), 99.8755059871307, 99.8833053752462)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18312, 185, CAST(0x0000A0AE01047C60 AS DateTime), 99.8355226472062, 99.8463314851883)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18313, 185, CAST(0x0000A0AE01086C30 AS DateTime), 99.8833915468426, 99.8894407600931)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18314, 183, CAST(0x0000A0AE010A84E8 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18315, 183, CAST(0x0000A0AE010AB74C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18316, 183, CAST(0x0000A0AE010AF43C AS DateTime), 99.856184084372, 99.8083373263057)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18317, 183, CAST(0x0000A0AE010CD70C AS DateTime), 99.8798663513158, 99.849878025896)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18318, 183, CAST(0x0000A0AF00B5971C AS DateTime), 99.8648445712569, 99.8311127791331)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18319, 183, CAST(0x0000A0AF00B5BA44 AS DateTime), 99.8948870035288, 99.868643272659)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18320, 183, CAST(0x0000A0AF00B6BF98 AS DateTime), 99.8798663513158, 99.849878025896)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18321, 183, CAST(0x0000A0AF00B6F6AC AS DateTime), 99.9099065280228, 99.887408519422)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18322, 183, CAST(0x0000A0AF00B72EEC AS DateTime), 99.3986092839692, 99.2493901294802)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18323, 183, CAST(0x0000A0AF00B79738 AS DateTime), -189.461513049224, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18324, 183, CAST(0x0000A0AF00B9F2BC AS DateTime), 99.3835513456623, 99.2306248827172)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18325, 183, CAST(0x0000A0AF00D71234 AS DateTime), 99.2630470747481, 99.0805029086132)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18326, 185, CAST(0x0000A0AF00FB5A7C AS DateTime), 99.8218915260768, 99.7581388061819)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18327, 185, CAST(0x0000A0AF00FCBFE8 AS DateTime), 99.7450376902409, 99.7582468159007)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18328, 185, CAST(0x0000A0AF00FD5CF0 AS DateTime), 99.7588942459807, 99.7997628037397)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18329, 185, CAST(0x0000A0AF00FDAB74 AS DateTime), 99.7242024676402, 99.7641892539029)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18330, 185, CAST(0x0000A0AF01031118 AS DateTime), 98.7571061165456, 98.7173744336102)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18331, 185, CAST(0x0000A0AF0103A268 AS DateTime), 98.985991632575, 98.9796223901291)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18332, 185, CAST(0x0000A0AF0103DBD4 AS DateTime), 98.6527995113464, 98.6209390701984)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18333, 185, CAST(0x0000A0AF01040154 AS DateTime), 98.7571061165456, 98.7173744336102)
SET IDENTITY_INSERT [dbo].[equipment_paf] OFF
/****** Object:  Table [dbo].[equipment_event]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[equipment_event](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment] [int] NOT NULL,
	[datetime_stop] [datetime] NULL,
	[datetime_ops] [datetime] NULL,
	[durasi] [float] NULL,
	[downtime] [float] NULL,
	[failure_mode] [varchar](max) NULL,
	[failure_cause] [varchar](max) NULL,
	[failure_effect] [varchar](max) NULL,
	[secondary_effect] [varchar](max) NULL,
	[failure_severity] [varchar](50) NULL,
	[failure_clss] [varchar](50) NULL,
	[immediate_act] [varchar](max) NULL,
	[long_term_act] [varchar](max) NULL,
	[engineer] [text] NULL,
	[financial_cost] [float] NULL,
	[repair_cost] [float] NULL,
	[event_description] [varchar](max) NULL,
	[type] [varchar](50) NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_equipment_event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[equipment_event] ON
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (67, 69, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (68, 70, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (70, 72, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (172, 174, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (181, 183, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (182, 184, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (183, 185, NULL, CAST(0x0000747100000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (184, 186, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (190, 192, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (191, 193, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (378, 185, CAST(0x000075DE00000000 AS DateTime), CAST(0x000075DF00000000 AS DateTime), 24, 24, NULL, N'Bocor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Breakdown', NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (379, 185, CAST(0x0000774C00000000 AS DateTime), CAST(0x0000774D00000000 AS DateTime), 12, 24, NULL, N'Karat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Breakdown', NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (380, 185, CAST(0x000078BB00000000 AS DateTime), CAST(0x000078C000000000 AS DateTime), 14, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Breakdown', NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (381, 185, CAST(0x00007A2D00000000 AS DateTime), CAST(0x00007A2F00000000 AS DateTime), 48, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (382, 186, CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (383, 184, CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (398, 183, CAST(0x000088F700000000 AS DateTime), CAST(0x000088F800000000 AS DateTime), 24, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (414, 372, NULL, CAST(0x0000A091016B5F70 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (415, 373, NULL, CAST(0x0000A091016BEC10 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (416, 374, NULL, CAST(0x0000A091016BEC10 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (417, 375, NULL, CAST(0x0000A091016BEC10 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (418, 376, NULL, CAST(0x0000A091016BEC10 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (419, 377, NULL, CAST(0x0000A091016C3260 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (420, 378, NULL, CAST(0x0000A091016C3260 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (421, 379, NULL, CAST(0x0000A091016C78B0 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (422, 380, NULL, CAST(0x0000A091016C78B0 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (423, 381, NULL, CAST(0x0000A092010AF7C0 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (424, 382, NULL, CAST(0x0000A092010AF7C0 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (425, 383, NULL, CAST(0x0000A092010B3E10 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (426, 384, NULL, CAST(0x0000A092010B3E10 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (427, 385, NULL, CAST(0x0000A092010B8460 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (704, 671, NULL, CAST(0x0000A0AD0159CB70 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (705, 672, NULL, CAST(0x0000A0AE00ABA950 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (707, 185, CAST(0x00007AD500000000 AS DateTime), CAST(0x00007AD600000000 AS DateTime), 24, 24, N'Fails to start on demand', N'Kegagalan pertama (tes)', N'Fails to continue running', N'Effect sekunder 1', N'CATASTROPHIC', N'SECONDARY', N'Replace Bearing', N'Change Mechanical Seal Specifications', N'tes', 4, 4, N'Replace battery', NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (709, 185, CAST(0x00008ECB00000000 AS DateTime), CAST(0x00008ECD00000000 AS DateTime), 48, 48, N'Structural deficiency', N'Fails to continue running', N'Efek gagal pertama (tes), Fails to continue running', N'Effect sekunder 1', N'CATASTROPHIC', N'SECONDARY', N'Replace Bearing', N'Change Mechanical Seal Specifications, Replace All battery', N'Adi', 80, 79, N'Pressure Drop, Intermitten Operation', NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (710, 183, CAST(0x00008A6500000000 AS DateTime), CAST(0x00008A8900000000 AS DateTime), 864, 864, NULL, NULL, NULL, NULL, N'CATASTROPHIC', N'PRIMARY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (711, 183, CAST(0x00008ED200000000 AS DateTime), CAST(0x00008EDB00000000 AS DateTime), 216, 216, NULL, NULL, NULL, NULL, N'CATASTROPHIC', N'PRIMARY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (712, 183, CAST(0x00009B8200000000 AS DateTime), CAST(0x00009B8500000000 AS DateTime), 72, 72, NULL, NULL, NULL, NULL, N'CATASTROPHIC', N'PRIMARY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[equipment_event] OFF
/****** Object:  Table [dbo].[part_unit_event]    Script Date: 12/04/2012 13:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[part_unit_event](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment_part] [int] NOT NULL,
	[datetime_stop] [datetime] NULL,
	[datetime_ops] [datetime] NULL,
	[durasi] [float] NULL,
	[downtime] [float] NULL,
	[failure_mode] [varchar](max) NULL,
	[failure_cause] [varchar](max) NULL,
	[failure_effect] [varchar](max) NULL,
	[secondary_effect] [varchar](max) NULL,
	[failure_severity] [varchar](50) NULL,
	[failure_clss] [varchar](50) NULL,
	[immediate_act] [varchar](max) NULL,
	[long_term_act] [varchar](max) NULL,
	[engineer] [text] NULL,
	[financial_cost] [float] NULL,
	[repair_cost] [float] NULL,
	[event_description] [varchar](max) NULL,
	[type] [varchar](50) NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_part_unit_event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[part_unit_event] ON
INSERT [dbo].[part_unit_event] ([id], [id_equipment_part], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (7, 31, NULL, CAST(0x0000A06600000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[part_unit_event] ([id], [id_equipment_part], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (9, 31, CAST(0x0000A07600000000 AS DateTime), CAST(0x0000A07C00000000 AS DateTime), 144, 144, NULL, NULL, NULL, NULL, N'CATASTROPHIC', N'PRIMARY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[part_unit_event] ([id], [id_equipment_part], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (13, 34, NULL, CAST(0x0000A09E00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[part_unit_event] ([id], [id_equipment_part], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (14, 35, NULL, CAST(0x00008EA600000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[part_unit_event] ([id], [id_equipment_part], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (15, 35, CAST(0x00008EAF00000000 AS DateTime), CAST(0x00008EB100000000 AS DateTime), 48, 48, N'External leakage (process)', N'Kegagalan pertama (tes)', N'Fails to continue running', N'Effect sekunder 1', N'CATASTROPHIC', N'PRIMARY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[part_unit_event] ([id], [id_equipment_part], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (16, 35, CAST(0x0000913300000000 AS DateTime), CAST(0x0000918900000000 AS DateTime), 2064, 2064, NULL, NULL, NULL, NULL, N'CATASTROPHIC', N'PRIMARY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[part_unit_event] ([id], [id_equipment_part], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (17, 35, CAST(0x000095F600000000 AS DateTime), CAST(0x000095FD00000000 AS DateTime), 168, 168, NULL, NULL, NULL, NULL, N'CATASTROPHIC', N'PRIMARY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[part_unit_event] OFF
/****** Object:  Default [DF_equipment_event_durasi]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_durasi]  DEFAULT ((0)) FOR [durasi]
GO
/****** Object:  Default [DF_equipment_event_downtime]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_downtime]  DEFAULT ((0)) FOR [downtime]
GO
/****** Object:  Default [DF_equipment_event_est_cost]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_est_cost]  DEFAULT ((0)) FOR [financial_cost]
GO
/****** Object:  Default [DF_equipment_event_actual_cost]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_actual_cost]  DEFAULT ((0)) FOR [repair_cost]
GO
/****** Object:  Default [DF_equipment_event_status]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_equipment_paf_avail_calculated]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_paf] ADD  CONSTRAINT [DF_equipment_paf_avail_calculated]  DEFAULT ((100)) FOR [avail_calculated]
GO
/****** Object:  Default [DF_equipment_paf_avail_measured]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_paf] ADD  CONSTRAINT [DF_equipment_paf_avail_measured]  DEFAULT ((100)) FOR [avail_measured]
GO
/****** Object:  Default [DF_equipment_part_mtbf]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_part] ADD  CONSTRAINT [DF_equipment_part_mtbf]  DEFAULT ((0)) FOR [mtbf]
GO
/****** Object:  Default [DF_equipment_part_mttr]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_part] ADD  CONSTRAINT [DF_equipment_part_mttr]  DEFAULT ((0)) FOR [mttr]
GO
/****** Object:  Default [DF_equipment_part_lead_time]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_part] ADD  CONSTRAINT [DF_equipment_part_lead_time]  DEFAULT ((0)) FOR [lead_time]
GO
/****** Object:  Default [DF_equipment_readiness_nav_operation]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_operation]  DEFAULT ((100)) FOR [operation]
GO
/****** Object:  Default [DF_equipment_readiness_nav_boc]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_boc]  DEFAULT ((100)) FOR [boc]
GO
/****** Object:  Default [DF_equipment_readiness_nav_bec]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_bec]  DEFAULT ((100)) FOR [bec]
GO
/****** Object:  Default [DF_equipment_readiness_nav_monitoring]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_monitoring]  DEFAULT ((100)) FOR [monitoring]
GO
/****** Object:  Default [DF_equipment_readiness_nav_performance]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_performance]  DEFAULT ((100)) FOR [performance]
GO
/****** Object:  Default [DF_equipment_readiness_nav_cm_program]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_cm_program]  DEFAULT ((100)) FOR [cm_program]
GO
/****** Object:  Default [DF_equipment_readiness_nav_maintenance]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_maintenance]  DEFAULT ((100)) FOR [maintenance]
GO
/****** Object:  Default [DF_equipment_readiness_nav_pm_program]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_pm_program]  DEFAULT ((100)) FOR [pm_program]
GO
/****** Object:  Default [DF_equipment_readiness_nav_overhaul]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_overhaul]  DEFAULT ((100)) FOR [overhaul]
GO
/****** Object:  Default [DF_equipment_readiness_nav_spares]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_spares]  DEFAULT ((100)) FOR [spares]
GO
/****** Object:  Default [DF_equipment_readiness_nav_lifecycle_spare]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_lifecycle_spare]  DEFAULT ((100)) FOR [lifecycle_spare]
GO
/****** Object:  Default [DF_equipment_readiness_nav_main_act_spare]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_main_act_spare]  DEFAULT ((100)) FOR [main_act_spare]
GO
/****** Object:  Default [DF_equipment_readiness_nav_safe_operation]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_safe_operation]  DEFAULT ((100)) FOR [safe_operation]
GO
/****** Object:  Default [DF_equipment_readiness_nav_safeguard]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_safeguard]  DEFAULT ((100)) FOR [safeguard]
GO
/****** Object:  Default [DF_equipment_readiness_nav_accesories]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_accesories]  DEFAULT ((100)) FOR [accesories]
GO
/****** Object:  Default [DF_equipment_readiness_nav_score]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_score]  DEFAULT ((100)) FOR [score]
GO
/****** Object:  Default [DF_equipment_readiness_nav_capacity]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_capacity]  DEFAULT ((100)) FOR [capacity]
GO
/****** Object:  Default [DF_equipment_readiness_nav_quality]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_quality]  DEFAULT ((100)) FOR [quality]
GO
/****** Object:  Default [DF_equipment_readiness_nav_sertifikasi]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_sertifikasi]  DEFAULT ((100)) FOR [sertifikasi]
GO
/****** Object:  Default [DF_rm_equipment_tetha]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_tetha]  DEFAULT ((0)) FOR [tetha]
GO
/****** Object:  Default [DF_rm_equipment_beta]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_beta]  DEFAULT ((0)) FOR [beta]
GO
/****** Object:  Default [DF_rm_equipment_mtbf]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_mtbf]  DEFAULT ((0)) FOR [mtbf]
GO
/****** Object:  Default [DF_rm_equipment_mttr]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_mttr]  DEFAULT ((0)) FOR [mttr]
GO
/****** Object:  Default [DF_rm_equipment_mdt]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_mdt]  DEFAULT ((0)) FOR [mdt]
GO
/****** Object:  Default [DF_rm_equipment_status]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_status]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF_rm_equipment_econ]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_econ]  DEFAULT ((0)) FOR [econ]
GO
/****** Object:  Default [DF_rm_equipment_status_read_nav]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_status_read_nav]  DEFAULT ((0)) FOR [status_read_nav]
GO
/****** Object:  Default [DF_foc_op_avail_op_avail]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[foc_op_avail] ADD  CONSTRAINT [DF_foc_op_avail_op_avail]  DEFAULT ((100)) FOR [op_avail]
GO
/****** Object:  Default [DF_foc_op_avail_selisih]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[foc_op_avail] ADD  CONSTRAINT [DF_foc_op_avail_selisih]  DEFAULT ((0)) FOR [selisih]
GO
/****** Object:  Default [DF_foc_paf_measured_paf]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[foc_paf] ADD  CONSTRAINT [DF_foc_paf_measured_paf]  DEFAULT ((100)) FOR [measured_paf]
GO
/****** Object:  Default [DF_foc_paf_calculated_paf]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[foc_paf] ADD  CONSTRAINT [DF_foc_paf_calculated_paf]  DEFAULT ((100)) FOR [calculated_paf]
GO
/****** Object:  Default [DF_masd_tadd_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_tadd_1]  DEFAULT ((0)) FOR [tadd]
GO
/****** Object:  Default [DF_masd_tadt_hours_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_tadt_hours_1]  DEFAULT ((0)) FOR [tadt_hours]
GO
/****** Object:  Default [DF_masd_ta_interval_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_ta_interval_1]  DEFAULT ((0)) FOR [ta_interval]
GO
/****** Object:  Default [DF_masd_ntamdd_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_ntamdd_1]  DEFAULT ((0)) FOR [ntamdd]
GO
/****** Object:  Default [DF_masd_study_year_ntamd_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_study_year_ntamd_1]  DEFAULT ((0)) FOR [study_year_ntamd]
GO
/****** Object:  Default [DF_masd_prior_year_ntamd_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_prior_year_ntamd_1]  DEFAULT ((0)) FOR [prior_year_ntamd]
GO
/****** Object:  Default [DF_masd_ntamsd_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_ntamsd_1]  DEFAULT ((0)) FOR [ntamsd]
GO
/****** Object:  Default [DF_masd_study_year_ms_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_study_year_ms_1]  DEFAULT ((0)) FOR [study_year_ms]
GO
/****** Object:  Default [DF_masd_prior_year_ms_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_prior_year_ms_1]  DEFAULT ((0)) FOR [prior_year_ms]
GO
/****** Object:  Default [DF_masd_days_in_study_year_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_days_in_study_year_1]  DEFAULT ((0)) FOR [days_in_study_year]
GO
/****** Object:  Default [DF_masd_last_update_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_last_update_1]  DEFAULT (((2010)-(1))-(1)) FOR [last_update]
GO
/****** Object:  Default [DF_masd_category]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_category]  DEFAULT ((0)) FOR [category]
GO
/****** Object:  Default [DF_masd_type]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_type]  DEFAULT ((0)) FOR [type]
GO
/****** Object:  Default [DF_part_unit_event_durasi_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_durasi_1]  DEFAULT ((0)) FOR [durasi]
GO
/****** Object:  Default [DF_part_unit_event_downtime_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_downtime_1]  DEFAULT ((0)) FOR [downtime]
GO
/****** Object:  Default [DF_part_unit_event_financial_cost]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_financial_cost]  DEFAULT ((0)) FOR [financial_cost]
GO
/****** Object:  Default [DF_part_unit_event_repair_cost]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_repair_cost]  DEFAULT ((0)) FOR [repair_cost]
GO
/****** Object:  Default [DF_part_unit_event_status_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_status_1]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_rm_part_unit_assurance_level]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[parts] ADD  CONSTRAINT [DF_rm_part_unit_assurance_level]  DEFAULT ((0)) FOR [assurance_level]
GO
/****** Object:  Default [DF_system_paf_measured_paf]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[system_paf] ADD  CONSTRAINT [DF_system_paf_measured_paf]  DEFAULT ((100)) FOR [measured_paf]
GO
/****** Object:  Default [DF_system_paf_calculated_paf]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[system_paf] ADD  CONSTRAINT [DF_system_paf_calculated_paf]  DEFAULT ((100)) FOR [calculated_paf]
GO
/****** Object:  Default [DF_rm_system_cons_econ]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_econ]  DEFAULT ((0)) FOR [cons_econ]
GO
/****** Object:  Default [DF_rm_system_cons_hs]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_hs]  DEFAULT ((0)) FOR [cons_hs]
GO
/****** Object:  Default [DF_rm_system_cons_env]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_env]  DEFAULT ((0)) FOR [cons_env]
GO
/****** Object:  Default [DF_rm_system_cons_total]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_total]  DEFAULT ((0)) FOR [cons_total]
GO
/****** Object:  Default [DF_rm_system_likelihood]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_likelihood]  DEFAULT ((0)) FOR [likelihood]
GO
/****** Object:  Default [DF_rm_system_h]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_h]  DEFAULT ((0)) FOR [h]
GO
/****** Object:  Default [DF_rm_system_e]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_e]  DEFAULT ((0)) FOR [e]
GO
/****** Object:  Default [DF_rm_system_econ]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_econ]  DEFAULT ((0)) FOR [econ]
GO
/****** Object:  Default [DF_rm_system_ram_crit_1]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_ram_crit_1]  DEFAULT ((0)) FOR [ram_crit_1]
GO
/****** Object:  Default [DF_rm_system_prob]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_prob]  DEFAULT ((0)) FOR [prob]
GO
/****** Object:  Default [DF_rm_system_ram_crit_2]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_ram_crit_2]  DEFAULT ((0)) FOR [ram_crit_2]
GO
/****** Object:  Default [DF_rm_system_ram_crit_3]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_ram_crit_3]  DEFAULT ((0)) FOR [ram_crit_3]
GO
/****** Object:  Default [DF_unit_paf_measured_paf]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[unit_paf] ADD  CONSTRAINT [DF_unit_paf_measured_paf]  DEFAULT ((100)) FOR [measured_paf]
GO
/****** Object:  Default [DF_unit_paf_calculated_paf]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[unit_paf] ADD  CONSTRAINT [DF_unit_paf_calculated_paf]  DEFAULT ((100)) FOR [calculated_paf]
GO
/****** Object:  Default [DF_rm_unit_ma]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[units] ADD  CONSTRAINT [DF_rm_unit_ma]  DEFAULT ((0)) FOR [ma]
GO
/****** Object:  Default [DF_rm_unit_masd]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[units] ADD  CONSTRAINT [DF_rm_unit_masd]  DEFAULT ((0)) FOR [masd]
GO
/****** Object:  Default [DF__Users__CreateDat__66603565]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__Users__CreateDat__66603565]  DEFAULT (CONVERT([datetime],CONVERT([varchar],getdate(),(1)),(1))) FOR [create_date]
GO
/****** Object:  Default [DF_Users_rm_role]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_Users_rm_role]  DEFAULT ((0)) FOR [rm_role]
GO
/****** Object:  ForeignKey [FK_equipment_event_equipments]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_event]  WITH CHECK ADD  CONSTRAINT [FK_equipment_event_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_event] CHECK CONSTRAINT [FK_equipment_event_equipments]
GO
/****** Object:  ForeignKey [FK_rm_equipment_group_rm_system]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_groups]  WITH CHECK ADD  CONSTRAINT [FK_rm_equipment_group_rm_system] FOREIGN KEY([id_system])
REFERENCES [dbo].[systems] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_groups] CHECK CONSTRAINT [FK_rm_equipment_group_rm_system]
GO
/****** Object:  ForeignKey [FK_equipment_paf_equipments]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_paf]  WITH CHECK ADD  CONSTRAINT [FK_equipment_paf_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_paf] CHECK CONSTRAINT [FK_equipment_paf_equipments]
GO
/****** Object:  ForeignKey [FK_equipment_part_equipments]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_part]  WITH CHECK ADD  CONSTRAINT [FK_equipment_part_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_part] CHECK CONSTRAINT [FK_equipment_part_equipments]
GO
/****** Object:  ForeignKey [FK_equipment_part_parts]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_part]  WITH CHECK ADD  CONSTRAINT [FK_equipment_part_parts] FOREIGN KEY([id_parts])
REFERENCES [dbo].[parts] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_part] CHECK CONSTRAINT [FK_equipment_part_parts]
GO
/****** Object:  ForeignKey [FK_equipment_readiness_nav_equipments]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipment_readiness_nav]  WITH CHECK ADD  CONSTRAINT [FK_equipment_readiness_nav_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_readiness_nav] CHECK CONSTRAINT [FK_equipment_readiness_nav_equipments]
GO
/****** Object:  ForeignKey [FK_equipments_disciplines]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipments]  WITH CHECK ADD  CONSTRAINT [FK_equipments_disciplines] FOREIGN KEY([id_discipline])
REFERENCES [dbo].[disciplines] ([id])
GO
ALTER TABLE [dbo].[equipments] CHECK CONSTRAINT [FK_equipments_disciplines]
GO
/****** Object:  ForeignKey [FK_equipments_equipment_groups]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipments]  WITH CHECK ADD  CONSTRAINT [FK_equipments_equipment_groups] FOREIGN KEY([id_equipment_group])
REFERENCES [dbo].[equipment_groups] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipments] CHECK CONSTRAINT [FK_equipments_equipment_groups]
GO
/****** Object:  ForeignKey [FK_equipments_tag_types]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[equipments]  WITH CHECK ADD  CONSTRAINT [FK_equipments_tag_types] FOREIGN KEY([id_tag_type])
REFERENCES [dbo].[tag_types] ([id])
GO
ALTER TABLE [dbo].[equipments] CHECK CONSTRAINT [FK_equipments_tag_types]
GO
/****** Object:  ForeignKey [FK_failure_modes_tag_types]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[failure_modes]  WITH CHECK ADD  CONSTRAINT [FK_failure_modes_tag_types] FOREIGN KEY([id_tag_type])
REFERENCES [dbo].[tag_types] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[failure_modes] CHECK CONSTRAINT [FK_failure_modes_tag_types]
GO
/****** Object:  ForeignKey [FK_foc_op_avail_focs]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[foc_op_avail]  WITH CHECK ADD  CONSTRAINT [FK_foc_op_avail_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[foc_op_avail] CHECK CONSTRAINT [FK_foc_op_avail_focs]
GO
/****** Object:  ForeignKey [FK_foc_paf_focs]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[foc_paf]  WITH CHECK ADD  CONSTRAINT [FK_foc_paf_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[foc_paf] CHECK CONSTRAINT [FK_foc_paf_focs]
GO
/****** Object:  ForeignKey [FK_foc_target_paf_focs]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[foc_target_paf]  WITH CHECK ADD  CONSTRAINT [FK_foc_target_paf_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[foc_target_paf] CHECK CONSTRAINT [FK_foc_target_paf_focs]
GO
/****** Object:  ForeignKey [FK_focs_plants]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[focs]  WITH CHECK ADD  CONSTRAINT [FK_focs_plants] FOREIGN KEY([plant_id])
REFERENCES [dbo].[plants] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[focs] CHECK CONSTRAINT [FK_focs_plants]
GO
/****** Object:  ForeignKey [FK_masd_focs]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[ma]  WITH CHECK ADD  CONSTRAINT [FK_masd_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ma] CHECK CONSTRAINT [FK_masd_focs]
GO
/****** Object:  ForeignKey [FK_part_unit_event_equipment_part]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[part_unit_event]  WITH CHECK ADD  CONSTRAINT [FK_part_unit_event_equipment_part] FOREIGN KEY([id_equipment_part])
REFERENCES [dbo].[equipment_part] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[part_unit_event] CHECK CONSTRAINT [FK_part_unit_event_equipment_part]
GO
/****** Object:  ForeignKey [FK_rca_rca]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca] FOREIGN KEY([id])
REFERENCES [dbo].[rca] ([id])
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca]
GO
/****** Object:  ForeignKey [FK_rca_rca_analisys_type]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_analisys_type] FOREIGN KEY([id_type])
REFERENCES [dbo].[rca_analisys_type] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_analisys_type]
GO
/****** Object:  ForeignKey [FK_rca_rca_building]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_building] FOREIGN KEY([id_building])
REFERENCES [dbo].[rca_building] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_building]
GO
/****** Object:  ForeignKey [FK_rca_rca_department]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_department] FOREIGN KEY([id_department])
REFERENCES [dbo].[rca_department] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_department]
GO
/****** Object:  ForeignKey [FK_rca_rca_facility]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_facility] FOREIGN KEY([id_facility])
REFERENCES [dbo].[rca_facility] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_facility]
GO
/****** Object:  ForeignKey [FK_rca_rca_floor]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_floor] FOREIGN KEY([id_floor])
REFERENCES [dbo].[rca_floor] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_floor]
GO
/****** Object:  ForeignKey [FK_rca_csf_conector_rca]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[rca_csf_conector]  WITH CHECK ADD  CONSTRAINT [FK_rca_csf_conector_rca] FOREIGN KEY([id_rca])
REFERENCES [dbo].[rca] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca_csf_conector] CHECK CONSTRAINT [FK_rca_csf_conector_rca]
GO
/****** Object:  ForeignKey [FK_rca_division_rca_facility]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[rca_division]  WITH CHECK ADD  CONSTRAINT [FK_rca_division_rca_facility] FOREIGN KEY([id_facility])
REFERENCES [dbo].[rca_facility] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca_division] CHECK CONSTRAINT [FK_rca_division_rca_facility]
GO
/****** Object:  ForeignKey [FK_rca_facility_rca_facility]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[rca_facility]  WITH CHECK ADD  CONSTRAINT [FK_rca_facility_rca_facility] FOREIGN KEY([id])
REFERENCES [dbo].[rca_facility] ([id])
GO
ALTER TABLE [dbo].[rca_facility] CHECK CONSTRAINT [FK_rca_facility_rca_facility]
GO
/****** Object:  ForeignKey [FK_rca_implementation_users]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[rca_implementation]  WITH CHECK ADD  CONSTRAINT [FK_rca_implementation_users] FOREIGN KEY([pic])
REFERENCES [dbo].[users] ([username])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca_implementation] CHECK CONSTRAINT [FK_rca_implementation_users]
GO
/****** Object:  ForeignKey [FK_rca_team_connector_rca]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[rca_team_connector]  WITH CHECK ADD  CONSTRAINT [FK_rca_team_connector_rca] FOREIGN KEY([id_rca])
REFERENCES [dbo].[rca] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca_team_connector] CHECK CONSTRAINT [FK_rca_team_connector_rca]
GO
/****** Object:  ForeignKey [FK_system_paf_systems]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[system_paf]  WITH CHECK ADD  CONSTRAINT [FK_system_paf_systems] FOREIGN KEY([id_system])
REFERENCES [dbo].[systems] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[system_paf] CHECK CONSTRAINT [FK_system_paf_systems]
GO
/****** Object:  ForeignKey [FK_rm_system_rm_unit]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[systems]  WITH CHECK ADD  CONSTRAINT [FK_rm_system_rm_unit] FOREIGN KEY([id_unit])
REFERENCES [dbo].[units] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[systems] CHECK CONSTRAINT [FK_rm_system_rm_unit]
GO
/****** Object:  ForeignKey [FK_unit_paf_units]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[unit_paf]  WITH CHECK ADD  CONSTRAINT [FK_unit_paf_units] FOREIGN KEY([id_unit])
REFERENCES [dbo].[units] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[unit_paf] CHECK CONSTRAINT [FK_unit_paf_units]
GO
/****** Object:  ForeignKey [FK_rm_unit_rm_foc]    Script Date: 12/04/2012 13:58:42 ******/
ALTER TABLE [dbo].[units]  WITH CHECK ADD  CONSTRAINT [FK_rm_unit_rm_foc] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[units] CHECK CONSTRAINT [FK_rm_unit_rm_foc]
GO
