USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[daily_log_operation_warning]    Script Date: 05/30/2013 09:40:16 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
INSERT [dbo].[daily_log_operation_warning] ([id], [date], [warning]) VALUES (3, CAST(0x20370B00 AS Date), N'tes')
SET IDENTITY_INSERT [dbo].[daily_log_operation_warning] OFF
/****** Object:  Table [dbo].[long_term_actions]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[investigation_report]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[investigation_report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[facility] [varchar](255) NULL,
	[title] [varchar](255) NULL,
	[reference_number] [varchar](255) NULL,
	[date_incident] [datetime] NULL,
	[incident_location] [varchar](255) NULL,
	[incident_type] [varchar](255) NULL,
	[actual_loss] [varchar](255) NULL,
	[potential_loss] [varchar](255) NULL,
	[probability] [varchar](255) NULL,
	[factual_information] [text] NULL,
	[immediate_action] [text] NULL,
	[immediate_causes] [text] NULL,
	[basic_causes] [text] NULL,
	[additional_observation] [text] NULL,
	[cost_estimate] [text] NULL,
	[investigator] [varchar](255) NULL,
	[investigator_date] [date] NULL,
	[loss_control] [varchar](255) NULL,
	[loss_control_date] [date] NULL,
	[field_manager] [varchar](255) NULL,
	[field_manager_date] [date] NULL,
 CONSTRAINT [PK_investigation_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[investigation_report] ON
INSERT [dbo].[investigation_report] ([id], [facility], [title], [reference_number], [date_incident], [incident_location], [incident_type], [actual_loss], [potential_loss], [probability], [factual_information], [immediate_action], [immediate_causes], [basic_causes], [additional_observation], [cost_estimate], [investigator], [investigator_date], [loss_control], [loss_control_date], [field_manager], [field_manager_date]) VALUES (1, N'WW', N'Patah kaki', N'IR-1234', CAST(0x0000A14C008B86C0 AS DateTime), N'Rel', N'Injury / Illness', N'Major', N'Serious', N'Occasional', N'Factual', N'Bukan', N'tes', N'tes', N'tes', N'20000', N'yosef', CAST(0xCD360B00 AS Date), N'yosef2', CAST(0xCD360B00 AS Date), N'yosef3', CAST(0xCD360B00 AS Date))
INSERT [dbo].[investigation_report] ([id], [facility], [title], [reference_number], [date_incident], [incident_location], [incident_type], [actual_loss], [potential_loss], [probability], [factual_information], [immediate_action], [immediate_causes], [basic_causes], [additional_observation], [cost_estimate], [investigator], [investigator_date], [loss_control], [loss_control_date], [field_manager], [field_manager_date]) VALUES (2, N'tes', NULL, NULL, CAST(0x0000A19500E20B30 AS DateTime), NULL, NULL, N'Minor', N'Minor', N'Rare', N'asds', N'asd', NULL, NULL, NULL, NULL, NULL, CAST(0xF0360B00 AS Date), NULL, CAST(0xF0360B00 AS Date), NULL, CAST(0xF0360B00 AS Date))
INSERT [dbo].[investigation_report] ([id], [facility], [title], [reference_number], [date_incident], [incident_location], [incident_type], [actual_loss], [potential_loss], [probability], [factual_information], [immediate_action], [immediate_causes], [basic_causes], [additional_observation], [cost_estimate], [investigator], [investigator_date], [loss_control], [loss_control_date], [field_manager], [field_manager_date]) VALUES (3, N'Penambahan baru', N'tes', N'1234', CAST(0x0000A1A8010ED020 AS DateTime), N'tes', N'Theft / Crimes', N'Serious', N'Major', N'Rare', N'tes', N'Lakukan perbaikan', NULL, NULL, NULL, N'10000', N'yosef2', CAST(0x03370B00 AS Date), N'yosef2', CAST(0x03370B00 AS Date), N'yosef2', CAST(0x03370B00 AS Date))
INSERT [dbo].[investigation_report] ([id], [facility], [title], [reference_number], [date_incident], [incident_location], [incident_type], [actual_loss], [potential_loss], [probability], [factual_information], [immediate_action], [immediate_causes], [basic_causes], [additional_observation], [cost_estimate], [investigator], [investigator_date], [loss_control], [loss_control_date], [field_manager], [field_manager_date]) VALUES (4, N'Wayang windu', N'Kebakaran rambut', N'ABCD', CAST(0x0000A19B00FC22E0 AS DateTime), N'Pangalengan', N'Near Miss', N'Major', N'Serious', N'Seldom', N'Who', N'Rambut dipotong
Rambut dipotong
Rambut dipangkas', NULL, NULL, NULL, N'12', NULL, CAST(0x05370B00 AS Date), NULL, CAST(0x05370B00 AS Date), NULL, CAST(0x05370B00 AS Date))
SET IDENTITY_INSERT [dbo].[investigation_report] OFF
/****** Object:  Table [dbo].[incident_report]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[incident_report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[facility] [varchar](255) NULL,
	[incident_location] [varchar](255) NULL,
	[reference_number] [varchar](255) NULL,
	[type_of_report] [tinyint] NULL,
	[date_incident] [datetime] NULL,
	[title] [varchar](255) NULL,
	[incident_type] [varchar](255) NULL,
	[actual_loss_severity] [tinyint] NULL,
	[potential_loss_severity] [tinyint] NULL,
	[probability] [tinyint] NULL,
	[factual_information] [text] NULL,
	[cost_estimate] [text] NULL,
	[immediate_action] [text] NULL,
	[prepared_by] [varchar](255) NULL,
	[ack_supervisor] [varchar](255) NULL,
	[prepare_date] [date] NULL,
	[ack_date] [date] NULL,
	[superintendent] [varchar](255) NULL,
	[loss_control] [varchar](255) NULL,
	[field_manager] [varchar](255) NULL,
	[doms] [varchar](255) NULL,
	[superintendent_date] [date] NULL,
	[loss_date] [date] NULL,
	[field_manager_date] [date] NULL,
	[doms_date] [date] NULL,
	[investigation] [tinyint] NULL,
	[investigation_req] [varchar](255) NULL,
	[id_iir] [int] NULL,
	[superintendent_approve] [varchar](255) NULL,
	[field_manager_approve] [varchar](255) NULL,
	[loss_control_approve] [varchar](255) NULL,
	[lead_name] [varchar](255) NULL,
 CONSTRAINT [PK_incident_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[incident_report] ON
INSERT [dbo].[incident_report] ([id], [facility], [incident_location], [reference_number], [type_of_report], [date_incident], [title], [incident_type], [actual_loss_severity], [potential_loss_severity], [probability], [factual_information], [cost_estimate], [immediate_action], [prepared_by], [ack_supervisor], [prepare_date], [ack_date], [superintendent], [loss_control], [field_manager], [doms], [superintendent_date], [loss_date], [field_manager_date], [doms_date], [investigation], [investigation_req], [id_iir], [superintendent_approve], [field_manager_approve], [loss_control_approve], [lead_name]) VALUES (20, N'Wayang Windu', N'Star Energy', N'IRxxxx-00001', 1, CAST(0x0000A1C7015074D0 AS DateTime), N'Patah tangan', N'Environmental Loss', 2, 1, 3, N'Ada tangan di lantai', N'$50,000', N'Jahit ', N'233', N'234', CAST(0x22370B00 AS Date), CAST(0x22370B00 AS Date), N'297', N'278', N'232', NULL, CAST(0x22370B00 AS Date), CAST(0x22370B00 AS Date), CAST(0x22370B00 AS Date), NULL, 1, N'233', NULL, N'/Attachment/incident_report/20/signatures/rca.png', N'/Attachment/incident_report/20/signatures/rca.png', NULL, N'300')
SET IDENTITY_INSERT [dbo].[incident_report] OFF
/****** Object:  Table [dbo].[immediate_actions]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[pir]    Script Date: 05/30/2013 09:40:16 ******/
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
	[initiator_verified_date] [datetime] NULL,
	[review_mgmt_verified_date] [datetime] NULL,
	[description] [text] NULL,
	[status] [varchar](20) NULL,
	[pir_category] [varchar](20) NULL,
 CONSTRAINT [PK_pir] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[pir] ON
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status], [pir_category]) VALUES (34, N'PIR/42013/00013', N'Perbaikan jalan Wayang Windu', CAST(0x05370B00 AS Date), N'adminrcapir', N'Perbaikan jalan', N'4.2', N'4.2', CAST(0x05370B00 AS Date), CAST(0x05370B00 AS Date), CAST(0x0B370B00 AS Date), N'Jalan berlubang dan baynak batu', NULL, CAST(0x05370B00 AS Date), N'Jalan menjadi rata dan bersih', CAST(0x05370B00 AS Date), N'adminpirp', CAST(0x0B370B00 AS Date), N'Sujanto', N'Y', N'Y', CAST(0x05370B00 AS Date), CAST(0x05370B00 AS Date), N'Jalan Lancar dan bersih', CAST(0x05370B00 AS Date), CAST(0x05370B00 AS Date), N'Verified', NULL, NULL, N'', N'VERIFIED', NULL)
SET IDENTITY_INSERT [dbo].[pir] OFF
/****** Object:  Table [dbo].[parts]    Script Date: 05/30/2013 09:40:16 ******/
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
	[key_map] [varchar](100) NULL,
 CONSTRAINT [PK_rm_part_unit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[parts] ON
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty], [key_map]) VALUES (2, N'15-K-102A-M/00', N'15-K-102A-M/00', 0, N'', 0, NULL)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty], [key_map]) VALUES (3, N'15-K-103A-M/00', N'15-K-103A-M/00', 100, N'Trisakti', 0, NULL)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty], [key_map]) VALUES (4, N'15-K-104A-M/00', N'15-K-104A-M/00', 0, NULL, 0, NULL)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty], [key_map]) VALUES (5, N'15-K-106A-M/00', N'15-K-106A-M/00', 0, NULL, 0, NULL)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty], [key_map]) VALUES (7, N'15-V-105-P', N'Part 1', NULL, N'', 0, NULL)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty], [key_map]) VALUES (8, N'P-112A', N'NaOH TRANSFER PUMPS (2 x 100%)', NULL, N'', 0, NULL)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty], [key_map]) VALUES (9, N'M-117', N'MOTOR FOR NAOH TRANSFER PUMP (A)', NULL, N'', 0, NULL)
SET IDENTITY_INSERT [dbo].[parts] OFF
/****** Object:  Table [dbo].[process_owner]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[plants]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[plants] ([id], [nama]) VALUES (1, N'Wayang Windu')
SET IDENTITY_INSERT [dbo].[plants] OFF
/****** Object:  Table [dbo].[rca_csf]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[rca_csf] ([id], [name]) VALUES (2, N'Perbaikan lebih cepat')
INSERT [dbo].[rca_csf] ([id], [name]) VALUES (3, N'Kejadian cepat ditangani')
SET IDENTITY_INSERT [dbo].[rca_csf] OFF
/****** Object:  Table [dbo].[rca_building]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[rca_analisys_type]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[failure_effects]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[failure_causes]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[event_descriptions]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[equipment_read_nav_note]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[daily_log]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[grup] [varchar](50) NULL,
	[production_foreman] [varchar](255) NULL,
	[production_operator_1] [varchar](255) NULL,
	[production_operator_2] [varchar](255) NULL,
	[production_operator_3] [varchar](255) NULL,
	[production_operator_4] [varchar](255) NULL,
	[production_operator_5] [varchar](255) NULL,
	[production_operator_6] [varchar](255) NULL,
	[production_operator_7] [varchar](255) NULL,
	[production_operator_8] [varchar](255) NULL,
	[time_check] [time](7) NULL,
	[wma_2_is_text] [tinyint] NULL,
	[wma_2_fcv] [varchar](255) NULL,
	[wma_2_flow] [varchar](255) NULL,
	[wma_2_whp] [varchar](255) NULL,
	[wma_4_is_text] [tinyint] NULL,
	[wma_4_fcv] [varchar](255) NULL,
	[wma_4_flow] [varchar](255) NULL,
	[wma_4_whp] [varchar](255) NULL,
	[wma_6_is_text] [tinyint] NULL,
	[wma_6_fcv] [varchar](255) NULL,
	[wma_6_flow] [varchar](255) NULL,
	[wma_6_whp] [varchar](255) NULL,
	[mbd_1_is_text] [tinyint] NULL,
	[mbd_1_fcv] [varchar](255) NULL,
	[mbd_1_flow] [varchar](255) NULL,
	[mbd_1_whp] [varchar](255) NULL,
	[mbd_2_is_text] [tinyint] NULL,
	[mbd_2_fcv] [varchar](255) NULL,
	[mbd_2_flow] [varchar](255) NULL,
	[mbd_2_whp] [varchar](255) NULL,
	[mbd_3_is_text] [tinyint] NULL,
	[mbd_3_fcv] [varchar](255) NULL,
	[mbd_3_flow] [varchar](255) NULL,
	[mbd_3_whp] [varchar](255) NULL,
	[mbd_4_is_text] [tinyint] NULL,
	[mbd_4_fcv] [varchar](255) NULL,
	[mbd_4_flow] [varchar](255) NULL,
	[mbd_4_whp] [varchar](255) NULL,
	[mbd_5_is_text] [tinyint] NULL,
	[mbd_5_fcv] [varchar](255) NULL,
	[mbd_5_flow] [varchar](255) NULL,
	[mbd_5_whp] [varchar](255) NULL,
	[wwq_1_is_text] [tinyint] NULL,
	[wwq_1_fcv] [varchar](255) NULL,
	[wwq_1_flow] [varchar](255) NULL,
	[wwq_1_whp] [varchar](255) NULL,
	[wwq_2_is_text] [tinyint] NULL,
	[wwq_2_fcv] [varchar](255) NULL,
	[wwq_2_flow] [varchar](255) NULL,
	[wwq_2_whp] [varchar](255) NULL,
	[wwq_3_is_text] [tinyint] NULL,
	[wwq_3_fcv] [varchar](255) NULL,
	[wwq_3_flow] [varchar](255) NULL,
	[wwq_3_whp] [varchar](255) NULL,
	[wwq_4_is_text] [tinyint] NULL,
	[wwq_4_fcv] [varchar](255) NULL,
	[wwq_4_flow] [varchar](255) NULL,
	[wwq_4_whp] [varchar](255) NULL,
	[wwq_5_is_text] [tinyint] NULL,
	[wwq_5_fcv] [varchar](255) NULL,
	[wwq_5_flow] [varchar](255) NULL,
	[wwq_5_whp] [varchar](255) NULL,
	[mbe_3_is_text] [tinyint] NULL,
	[mbe_3_fcv] [varchar](255) NULL,
	[mbe_3_flow] [varchar](255) NULL,
	[mbe_3_whp] [varchar](255) NULL,
	[mbe_4_is_text] [tinyint] NULL,
	[mbe_4_fcv] [varchar](255) NULL,
	[mbe_4_flow] [varchar](255) NULL,
	[mbe_4_whp] [varchar](255) NULL,
	[mba_1_is_text] [tinyint] NULL,
	[mba_1_fcv] [varchar](255) NULL,
	[mba_1_flow] [varchar](255) NULL,
	[mba_1_whp] [varchar](255) NULL,
	[mba_2_is_text] [tinyint] NULL,
	[mba_2_fcv] [varchar](255) NULL,
	[mba_2_flow] [varchar](255) NULL,
	[mba_2_whp] [varchar](255) NULL,
	[mba_3_is_text] [tinyint] NULL,
	[mba_3_fcv] [varchar](255) NULL,
	[mba_3_flow] [varchar](255) NULL,
	[mba_3_whp] [varchar](255) NULL,
	[mba_4_is_text] [tinyint] NULL,
	[mba_4_fcv] [varchar](255) NULL,
	[mba_4_flow] [varchar](255) NULL,
	[mba_4_whp] [varchar](255) NULL,
	[mba_5_is_text] [tinyint] NULL,
	[mba_5_fcv] [varchar](255) NULL,
	[mba_5_flow] [varchar](255) NULL,
	[mba_5_whp] [varchar](255) NULL,
	[mbb_1_is_text] [tinyint] NULL,
	[mbb_1_fcv] [varchar](255) NULL,
	[mbb_1_flow] [varchar](255) NULL,
	[mbb_1_whp] [varchar](255) NULL,
	[mbb_2_is_text] [tinyint] NULL,
	[mbb_2_fcv] [varchar](255) NULL,
	[mbb_2_flow] [varchar](255) NULL,
	[mbb_2_whp] [varchar](255) NULL,
	[mbb_3_is_text] [tinyint] NULL,
	[mbb_3_fcv] [varchar](255) NULL,
	[mbb_3_flow] [varchar](255) NULL,
	[mbb_3_whp] [varchar](255) NULL,
	[mbb_4_is_text] [tinyint] NULL,
	[mbb_4_fcv] [varchar](255) NULL,
	[mbb_4_flow] [varchar](255) NULL,
	[mbb_4_whp] [varchar](255) NULL,
	[mbb_5_is_text] [tinyint] NULL,
	[mbb_5_fcv] [varchar](255) NULL,
	[mbb_5_flow] [varchar](255) NULL,
	[mbb_5_whp] [varchar](255) NULL,
	[mbb_6_is_text] [tinyint] NULL,
	[mbb_6_fcv] [varchar](255) NULL,
	[mbb_6_flow] [varchar](255) NULL,
	[mbb_6_whp] [varchar](255) NULL,
	[wwf_1_is_text] [tinyint] NULL,
	[wwf_1_fcv] [varchar](255) NULL,
	[wwf_1_flow] [varchar](255) NULL,
	[wwf_1_whp] [varchar](255) NULL,
	[wwf_3_is_text] [tinyint] NULL,
	[wwf_3_fcv] [varchar](255) NULL,
	[wwf_3_flow] [varchar](255) NULL,
	[wwf_3_whp] [varchar](255) NULL,
	[www_1_is_text] [tinyint] NULL,
	[www_1_fcv] [varchar](255) NULL,
	[www_1_flow] [varchar](255) NULL,
	[www_1_whp] [varchar](255) NULL,
	[wwp_1_is_text] [tinyint] NULL,
	[wwp_1_fcv] [varchar](255) NULL,
	[wwp_1_flow] [varchar](255) NULL,
	[wwp_1_whp] [varchar](255) NULL,
	[generator_output_1] [varchar](255) NULL,
	[gross_1] [varchar](255) NULL,
	[generator_output_counter_1] [varchar](255) NULL,
	[power_factor_1] [varchar](255) NULL,
	[tap_charger_1] [varchar](255) NULL,
	[pln_grid_voltage_1] [varchar](255) NULL,
	[valve_limiter_1] [varchar](255) NULL,
	[governor_output_1] [varchar](255) NULL,
	[wcp_counter_1] [varchar](255) NULL,
	[condenser_pressure_1] [varchar](255) NULL,
	[main_cw_flow_1] [varchar](255) NULL,
	[ppc_g_co_1] [varchar](255) NULL,
	[interface_pressure_1] [varchar](255) NULL,
	[vent_bias_1] [varchar](255) NULL,
	[main_cw_pressure_1] [varchar](255) NULL,
	[ct_basin_ph_1] [varchar](255) NULL,
	[condenser_cw_inlet_a_1] [varchar](255) NULL,
	[condenser_cw_inlet_b_1] [varchar](255) NULL,
	[gen_trans_winding_temp_1] [varchar](255) NULL,
	[unit_trans_winding_temp_1] [varchar](255) NULL,
	[wheel_case_pressure_1] [varchar](255) NULL,
	[generator_output_2] [varchar](255) NULL,
	[gross_2] [varchar](255) NULL,
	[generator_output_counter_2] [varchar](255) NULL,
	[power_factor_2] [varchar](255) NULL,
	[tap_charger_2] [varchar](255) NULL,
	[pln_grid_voltage_2] [varchar](255) NULL,
	[valve_limiter_2] [varchar](255) NULL,
	[governor_output_2] [varchar](255) NULL,
	[wcp_counter_2] [varchar](255) NULL,
	[condenser_pressure_2] [varchar](255) NULL,
	[main_cw_flow_2] [varchar](255) NULL,
	[ppc_g_co_2] [varchar](255) NULL,
	[interface_pressure_2] [varchar](255) NULL,
	[vent_bias_2] [varchar](255) NULL,
	[main_cw_pressure_2] [varchar](255) NULL,
	[ct_basin_ph_2] [varchar](255) NULL,
	[condenser_cw_inlet_a_2] [varchar](255) NULL,
	[condenser_cw_inlet_b_2] [varchar](255) NULL,
	[gen_trans_winding_temp_2] [varchar](255) NULL,
	[unit_trans_winding_temp_2] [varchar](255) NULL,
	[wheel_case_pressure_2] [varchar](255) NULL,
	[ncg_1] [varchar](255) NULL,
	[ncg_2] [varchar](255) NULL,
	[turbine_1] [varchar](255) NULL,
	[turbine_2] [varchar](255) NULL,
	[ct_temp_1] [varchar](255) NULL,
	[ct_temp_2] [varchar](255) NULL,
	[exhaust_1] [varchar](255) NULL,
	[exhaust_2] [varchar](255) NULL,
	[upper_tp_level] [varchar](255) NULL,
	[lower_tp_level] [varchar](255) NULL,
	[mv_333] [varchar](255) NULL,
	[mv_334] [varchar](255) NULL,
	[brine_level] [varchar](255) NULL,
	[condensate_level] [varchar](255) NULL,
	[naoh_level] [varchar](255) NULL,
	[wwd_pond_level] [varchar](255) NULL,
	[uti_active_1] [varchar](255) NULL,
	[uti_reactive_1] [varchar](255) NULL,
	[sc_main_1] [varchar](255) NULL,
	[sc_auxiliary_1] [varchar](255) NULL,
	[ge_active_1] [varchar](255) NULL,
	[ge_reactive_1] [varchar](255) NULL,
	[metering_segwwl_1] [varchar](255) NULL,
	[metering_pln_1] [varchar](255) NULL,
	[condensate_ps_1] [varchar](255) NULL,
	[segwwl_availability_1] [varchar](255) NULL,
	[pln_dispatch_1] [varchar](255) NULL,
	[pln_meter_1] [varchar](255) NULL,
	[segwwl_export_1] [varchar](255) NULL,
	[actual_export_1] [varchar](255) NULL,
	[production_excess_1] [varchar](255) NULL,
	[rpf_1] [varchar](255) NULL,
	[pgf_1] [varchar](255) NULL,
	[pln_1] [varchar](255) NULL,
	[uti_active_2] [varchar](255) NULL,
	[uti_reactive_2] [varchar](255) NULL,
	[sc_main_2] [varchar](255) NULL,
	[sc_auxiliary_2] [varchar](255) NULL,
	[ge_active_2] [varchar](255) NULL,
	[ge_reactive_2] [varchar](255) NULL,
	[metering_segwwl_2] [varchar](255) NULL,
	[metering_pln_2] [varchar](255) NULL,
	[condensate_ps_2] [varchar](255) NULL,
	[segwwl_availability_2] [varchar](255) NULL,
	[pln_dispatch_2] [varchar](255) NULL,
	[pln_meter_2] [varchar](255) NULL,
	[segwwl_export_2] [varchar](255) NULL,
	[actual_export_2] [varchar](255) NULL,
	[production_excess_2] [varchar](255) NULL,
	[rpf_2] [varchar](255) NULL,
	[pgf_2] [varchar](255) NULL,
	[pln_2] [varchar](255) NULL,
	[condensate_total] [varchar](255) NULL,
	[brine_total] [varchar](255) NULL,
	[note] [varchar](255) NULL,
	[last_plant_time] [varchar](255) NULL,
	[user_shift] [varchar](255) NULL,
	[user_shift2] [varchar](255) NULL,
	[shift] [tinyint] NULL,
	[is_approve] [tinyint] NULL,
	[id_shift2] [int] NULL,
 CONSTRAINT [PK_daily_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[daily_log] ON
INSERT [dbo].[daily_log] ([id], [date], [grup], [production_foreman], [production_operator_1], [production_operator_2], [production_operator_3], [production_operator_4], [production_operator_5], [production_operator_6], [production_operator_7], [production_operator_8], [time_check], [wma_2_is_text], [wma_2_fcv], [wma_2_flow], [wma_2_whp], [wma_4_is_text], [wma_4_fcv], [wma_4_flow], [wma_4_whp], [wma_6_is_text], [wma_6_fcv], [wma_6_flow], [wma_6_whp], [mbd_1_is_text], [mbd_1_fcv], [mbd_1_flow], [mbd_1_whp], [mbd_2_is_text], [mbd_2_fcv], [mbd_2_flow], [mbd_2_whp], [mbd_3_is_text], [mbd_3_fcv], [mbd_3_flow], [mbd_3_whp], [mbd_4_is_text], [mbd_4_fcv], [mbd_4_flow], [mbd_4_whp], [mbd_5_is_text], [mbd_5_fcv], [mbd_5_flow], [mbd_5_whp], [wwq_1_is_text], [wwq_1_fcv], [wwq_1_flow], [wwq_1_whp], [wwq_2_is_text], [wwq_2_fcv], [wwq_2_flow], [wwq_2_whp], [wwq_3_is_text], [wwq_3_fcv], [wwq_3_flow], [wwq_3_whp], [wwq_4_is_text], [wwq_4_fcv], [wwq_4_flow], [wwq_4_whp], [wwq_5_is_text], [wwq_5_fcv], [wwq_5_flow], [wwq_5_whp], [mbe_3_is_text], [mbe_3_fcv], [mbe_3_flow], [mbe_3_whp], [mbe_4_is_text], [mbe_4_fcv], [mbe_4_flow], [mbe_4_whp], [mba_1_is_text], [mba_1_fcv], [mba_1_flow], [mba_1_whp], [mba_2_is_text], [mba_2_fcv], [mba_2_flow], [mba_2_whp], [mba_3_is_text], [mba_3_fcv], [mba_3_flow], [mba_3_whp], [mba_4_is_text], [mba_4_fcv], [mba_4_flow], [mba_4_whp], [mba_5_is_text], [mba_5_fcv], [mba_5_flow], [mba_5_whp], [mbb_1_is_text], [mbb_1_fcv], [mbb_1_flow], [mbb_1_whp], [mbb_2_is_text], [mbb_2_fcv], [mbb_2_flow], [mbb_2_whp], [mbb_3_is_text], [mbb_3_fcv], [mbb_3_flow], [mbb_3_whp], [mbb_4_is_text], [mbb_4_fcv], [mbb_4_flow], [mbb_4_whp], [mbb_5_is_text], [mbb_5_fcv], [mbb_5_flow], [mbb_5_whp], [mbb_6_is_text], [mbb_6_fcv], [mbb_6_flow], [mbb_6_whp], [wwf_1_is_text], [wwf_1_fcv], [wwf_1_flow], [wwf_1_whp], [wwf_3_is_text], [wwf_3_fcv], [wwf_3_flow], [wwf_3_whp], [www_1_is_text], [www_1_fcv], [www_1_flow], [www_1_whp], [wwp_1_is_text], [wwp_1_fcv], [wwp_1_flow], [wwp_1_whp], [generator_output_1], [gross_1], [generator_output_counter_1], [power_factor_1], [tap_charger_1], [pln_grid_voltage_1], [valve_limiter_1], [governor_output_1], [wcp_counter_1], [condenser_pressure_1], [main_cw_flow_1], [ppc_g_co_1], [interface_pressure_1], [vent_bias_1], [main_cw_pressure_1], [ct_basin_ph_1], [condenser_cw_inlet_a_1], [condenser_cw_inlet_b_1], [gen_trans_winding_temp_1], [unit_trans_winding_temp_1], [wheel_case_pressure_1], [generator_output_2], [gross_2], [generator_output_counter_2], [power_factor_2], [tap_charger_2], [pln_grid_voltage_2], [valve_limiter_2], [governor_output_2], [wcp_counter_2], [condenser_pressure_2], [main_cw_flow_2], [ppc_g_co_2], [interface_pressure_2], [vent_bias_2], [main_cw_pressure_2], [ct_basin_ph_2], [condenser_cw_inlet_a_2], [condenser_cw_inlet_b_2], [gen_trans_winding_temp_2], [unit_trans_winding_temp_2], [wheel_case_pressure_2], [ncg_1], [ncg_2], [turbine_1], [turbine_2], [ct_temp_1], [ct_temp_2], [exhaust_1], [exhaust_2], [upper_tp_level], [lower_tp_level], [mv_333], [mv_334], [brine_level], [condensate_level], [naoh_level], [wwd_pond_level], [uti_active_1], [uti_reactive_1], [sc_main_1], [sc_auxiliary_1], [ge_active_1], [ge_reactive_1], [metering_segwwl_1], [metering_pln_1], [condensate_ps_1], [segwwl_availability_1], [pln_dispatch_1], [pln_meter_1], [segwwl_export_1], [actual_export_1], [production_excess_1], [rpf_1], [pgf_1], [pln_1], [uti_active_2], [uti_reactive_2], [sc_main_2], [sc_auxiliary_2], [ge_active_2], [ge_reactive_2], [metering_segwwl_2], [metering_pln_2], [condensate_ps_2], [segwwl_availability_2], [pln_dispatch_2], [pln_meter_2], [segwwl_export_2], [actual_export_2], [production_excess_2], [rpf_2], [pgf_2], [pln_2], [condensate_total], [brine_total], [note], [last_plant_time], [user_shift], [user_shift2], [shift], [is_approve], [id_shift2]) VALUES (10, CAST(0x94360B00 AS Date), N'sh1_C', N'sh1_Harry Firmansyah', N'sh1_Yadi Muhamad', N'sh1_Dedi Hidayat (AL)', N'sh1_Burhanudin Harahaf', N'sh1_Syarifudin Zuhri', N'sh1_Juju Sopian', N'sh2_', N'sh2_', N'sh2_', CAST(0x0700D85EAC3A0000 AS Time), 1, N'sh1_Shut in', NULL, NULL, 0, N'sh1_10.98', N'sh1_12.04', N'sh1_10.24', 0, N'sh1_100.00', N'sh1_N/A', N'sh1_12.00', 0, N'sh1_100.00', N'sh1_32.51', N'sh1_12.64', 0, N'sh1_99.21', N'sh1_19.87', N'sh1_12.62', 0, N'sh1_99.61', N'sh1_20.36', N'sh1_12.64', 0, N'sh1_100.00', N'sh1_29.60', N'sh1_12.47', 0, N'sh1_99.21', N'sh1_50.37', N'sh1_50.37', 1, N'sh1_Online via WWQ-4 bleeding line', NULL, NULL, 0, N'sh1_0.78', N'sh1_0.00', N'sh1_19.92', 0, N'sh1_100.00', N'sh1_7.47', N'sh1_11.28', 0, N'sh1_10.59', N'sh1_7.74', N'sh1_14.08', 0, N'sh1_98.43', N'sh1_23.93', N'sh1_12.08', 0, N'sh1_100.00', N'sh1_12.97', N'sh1_11.82', 0, N'sh1_Bypass valve', N'sh1_12.97', N'sh1_12.29', 0, N'sh1_100.00', NULL, NULL, 0, N'sh1_100.00', NULL, NULL, 0, N'sh1_25.90', NULL, NULL, 0, N'sh2_100.00', N'sh2_40.56', N'sh2_13.57', 0, N'sh2_', N'sh2_', N'sh2_', 0, N'sh2_', N'sh2_', N'sh2_', 1, N'sh1_On bleed to local rock muffler', NULL, NULL, 0, N'sh2_', N'sh2_', N'sh2_', 0, N'sh2_', N'sh2_', N'sh2_', 0, N'sh2_', N'sh2_', N'sh2_', 1, N'sh1_Shut in', NULL, NULL, 0, N'sh2_', N'sh2_', N'sh2_', 0, N'sh2_', N'sh2_', N'sh2_', 0, N'sh2_', N'sh2_', N'sh2_', 0, N'sh2_', N'sh2_', N'sh2_', N'sh1_113.81', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'sh2_', N'admindi', N'admindi2', NULL, 1, NULL)
INSERT [dbo].[daily_log] ([id], [date], [grup], [production_foreman], [production_operator_1], [production_operator_2], [production_operator_3], [production_operator_4], [production_operator_5], [production_operator_6], [production_operator_7], [production_operator_8], [time_check], [wma_2_is_text], [wma_2_fcv], [wma_2_flow], [wma_2_whp], [wma_4_is_text], [wma_4_fcv], [wma_4_flow], [wma_4_whp], [wma_6_is_text], [wma_6_fcv], [wma_6_flow], [wma_6_whp], [mbd_1_is_text], [mbd_1_fcv], [mbd_1_flow], [mbd_1_whp], [mbd_2_is_text], [mbd_2_fcv], [mbd_2_flow], [mbd_2_whp], [mbd_3_is_text], [mbd_3_fcv], [mbd_3_flow], [mbd_3_whp], [mbd_4_is_text], [mbd_4_fcv], [mbd_4_flow], [mbd_4_whp], [mbd_5_is_text], [mbd_5_fcv], [mbd_5_flow], [mbd_5_whp], [wwq_1_is_text], [wwq_1_fcv], [wwq_1_flow], [wwq_1_whp], [wwq_2_is_text], [wwq_2_fcv], [wwq_2_flow], [wwq_2_whp], [wwq_3_is_text], [wwq_3_fcv], [wwq_3_flow], [wwq_3_whp], [wwq_4_is_text], [wwq_4_fcv], [wwq_4_flow], [wwq_4_whp], [wwq_5_is_text], [wwq_5_fcv], [wwq_5_flow], [wwq_5_whp], [mbe_3_is_text], [mbe_3_fcv], [mbe_3_flow], [mbe_3_whp], [mbe_4_is_text], [mbe_4_fcv], [mbe_4_flow], [mbe_4_whp], [mba_1_is_text], [mba_1_fcv], [mba_1_flow], [mba_1_whp], [mba_2_is_text], [mba_2_fcv], [mba_2_flow], [mba_2_whp], [mba_3_is_text], [mba_3_fcv], [mba_3_flow], [mba_3_whp], [mba_4_is_text], [mba_4_fcv], [mba_4_flow], [mba_4_whp], [mba_5_is_text], [mba_5_fcv], [mba_5_flow], [mba_5_whp], [mbb_1_is_text], [mbb_1_fcv], [mbb_1_flow], [mbb_1_whp], [mbb_2_is_text], [mbb_2_fcv], [mbb_2_flow], [mbb_2_whp], [mbb_3_is_text], [mbb_3_fcv], [mbb_3_flow], [mbb_3_whp], [mbb_4_is_text], [mbb_4_fcv], [mbb_4_flow], [mbb_4_whp], [mbb_5_is_text], [mbb_5_fcv], [mbb_5_flow], [mbb_5_whp], [mbb_6_is_text], [mbb_6_fcv], [mbb_6_flow], [mbb_6_whp], [wwf_1_is_text], [wwf_1_fcv], [wwf_1_flow], [wwf_1_whp], [wwf_3_is_text], [wwf_3_fcv], [wwf_3_flow], [wwf_3_whp], [www_1_is_text], [www_1_fcv], [www_1_flow], [www_1_whp], [wwp_1_is_text], [wwp_1_fcv], [wwp_1_flow], [wwp_1_whp], [generator_output_1], [gross_1], [generator_output_counter_1], [power_factor_1], [tap_charger_1], [pln_grid_voltage_1], [valve_limiter_1], [governor_output_1], [wcp_counter_1], [condenser_pressure_1], [main_cw_flow_1], [ppc_g_co_1], [interface_pressure_1], [vent_bias_1], [main_cw_pressure_1], [ct_basin_ph_1], [condenser_cw_inlet_a_1], [condenser_cw_inlet_b_1], [gen_trans_winding_temp_1], [unit_trans_winding_temp_1], [wheel_case_pressure_1], [generator_output_2], [gross_2], [generator_output_counter_2], [power_factor_2], [tap_charger_2], [pln_grid_voltage_2], [valve_limiter_2], [governor_output_2], [wcp_counter_2], [condenser_pressure_2], [main_cw_flow_2], [ppc_g_co_2], [interface_pressure_2], [vent_bias_2], [main_cw_pressure_2], [ct_basin_ph_2], [condenser_cw_inlet_a_2], [condenser_cw_inlet_b_2], [gen_trans_winding_temp_2], [unit_trans_winding_temp_2], [wheel_case_pressure_2], [ncg_1], [ncg_2], [turbine_1], [turbine_2], [ct_temp_1], [ct_temp_2], [exhaust_1], [exhaust_2], [upper_tp_level], [lower_tp_level], [mv_333], [mv_334], [brine_level], [condensate_level], [naoh_level], [wwd_pond_level], [uti_active_1], [uti_reactive_1], [sc_main_1], [sc_auxiliary_1], [ge_active_1], [ge_reactive_1], [metering_segwwl_1], [metering_pln_1], [condensate_ps_1], [segwwl_availability_1], [pln_dispatch_1], [pln_meter_1], [segwwl_export_1], [actual_export_1], [production_excess_1], [rpf_1], [pgf_1], [pln_1], [uti_active_2], [uti_reactive_2], [sc_main_2], [sc_auxiliary_2], [ge_active_2], [ge_reactive_2], [metering_segwwl_2], [metering_pln_2], [condensate_ps_2], [segwwl_availability_2], [pln_dispatch_2], [pln_meter_2], [segwwl_export_2], [actual_export_2], [production_excess_2], [rpf_2], [pgf_2], [pln_2], [condensate_total], [brine_total], [note], [last_plant_time], [user_shift], [user_shift2], [shift], [is_approve], [id_shift2]) VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'admindis', NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[daily_log] OFF
/****** Object:  Table [dbo].[comms_rbi]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[equipment_daily_report]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipment_daily_report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_equipment_daily_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[equipment_daily_report] ON
INSERT [dbo].[equipment_daily_report] ([id], [date]) VALUES (1, CAST(0x03370B00 AS Date))
INSERT [dbo].[equipment_daily_report] ([id], [date]) VALUES (3, CAST(0x19370B00 AS Date))
SET IDENTITY_INSERT [dbo].[equipment_daily_report] OFF
/****** Object:  Table [dbo].[disciplines]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[daily_log_weekly_target]    Script Date: 05/30/2013 09:40:16 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
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
INSERT [dbo].[daily_log_weekly_target] ([id], [date], [shift], [target]) VALUES (5, CAST(0x1B370B00 AS Date), 2, N'tes')
INSERT [dbo].[daily_log_weekly_target] ([id], [date], [shift], [target]) VALUES (6, CAST(0x12370B00 AS Date), 2, N'sdasd')
SET IDENTITY_INSERT [dbo].[daily_log_weekly_target] OFF
/****** Object:  Table [dbo].[trouble_shooting]    Script Date: 05/30/2013 09:40:16 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
/****** Object:  Table [dbo].[tag_types]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[rca_desc]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (4, 63, N'')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (5, 63, N'')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (6, 63, N'')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (7, 64, N'tes verifikasi')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (8, 71, N'testing')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (9, 3075, N'dasdas')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (12, 3084, N'sdasda')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (13, 3089, N'Ditanyakan ke pengemudi')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (14, 3089, N'Setelah di survey')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (15, 3089, N'Pengamatan')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (16, 3091, N'Kesaksian')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (17, 3095, N'tangan tergeletak')
SET IDENTITY_INSERT [dbo].[rca_desc] OFF
/****** Object:  Table [dbo].[rca_department]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[rca_department] ([id], [id_division], [name]) VALUES (3, 4, N'Field EXT Rel and Security')
SET IDENTITY_INSERT [dbo].[rca_department] OFF
/****** Object:  Table [dbo].[she_observation]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[she_observation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[she_obs] [tinyint] NULL,
	[she_ins] [tinyint] NULL,
	[accident_unsafe] [varchar](2) NULL,
	[accident_safe] [varchar](2) NULL,
	[fire_unsafe] [varchar](2) NULL,
	[fire_safe] [varchar](2) NULL,
	[prevention_unsafe] [varchar](2) NULL,
	[prevention_safe] [varchar](2) NULL,
	[supervisor_unsafe] [varchar](2) NULL,
	[supervisor_safe] [varchar](2) NULL,
	[fit_work_unsafe] [varchar](2) NULL,
	[fit_work_safe] [varchar](2) NULL,
	[psychological_unsafe] [varchar](2) NULL,
	[psychological_safe] [varchar](2) NULL,
	[posture_unsafe] [varchar](2) NULL,
	[posture_safe] [varchar](2) NULL,
	[substance_unsafe] [varchar](2) NULL,
	[substance_safe] [varchar](2) NULL,
	[hygiene_unsafe] [varchar](2) NULL,
	[hygiene_safe] [varchar](2) NULL,
	[house_unsafe] [varchar](2) NULL,
	[house_safe] [varchar](2) NULL,
	[standard_unsafe] [varchar](2) NULL,
	[standard_safe] [varchar](2) NULL,
	[spill_unsafe] [varchar](2) NULL,
	[spill_safe] [varchar](2) NULL,
	[waste_energy_unsafe] [varchar](2) NULL,
	[waste_energy_safe] [varchar](2) NULL,
	[containment_unsafe] [varchar](2) NULL,
	[containment_safe] [varchar](2) NULL,
	[absorbent_unsafe] [varchar](2) NULL,
	[absorbent_safe] [varchar](2) NULL,
	[hira_unsafe] [varchar](2) NULL,
	[hira_safe] [varchar](2) NULL,
	[ptw_unsafe] [varchar](2) NULL,
	[ptw_safe] [varchar](2) NULL,
	[sop_unsafe] [varchar](2) NULL,
	[sop_safe] [varchar](2) NULL,
	[msds_unsafe] [varchar](2) NULL,
	[msds_safe] [varchar](2) NULL,
	[emergency_unsafe] [varchar](2) NULL,
	[emergency_safe] [varchar](2) NULL,
	[certificates_unsafe] [varchar](2) NULL,
	[certificates_safe] [varchar](2) NULL,
	[ppe_unsafe] [varchar](2) NULL,
	[ppe_safe] [varchar](2) NULL,
	[hand_unsafe] [varchar](2) NULL,
	[hand_safe] [varchar](2) NULL,
	[mechanical_unsafe] [varchar](2) NULL,
	[mechanical_safe] [varchar](2) NULL,
	[electrical_unsafe] [varchar](2) NULL,
	[electrical_safe] [varchar](2) NULL,
	[vehicular_unsafe] [varchar](2) NULL,
	[vehicular_safe] [varchar](2) NULL,
	[substandard_unsafe] [varchar](2) NULL,
	[substandard_safe] [varchar](2) NULL,
	[h2s_unsafe] [varchar](2) NULL,
	[h2s_safe] [varchar](2) NULL,
	[workplace_health_unsafe] [varchar](2) NULL,
	[workplace_health_safe] [varchar](2) NULL,
	[date_time] [datetime] NULL,
	[observer] [varchar](255) NULL,
	[department] [varchar](255) NULL,
	[location] [varchar](255) NULL,
	[activity] [varchar](255) NULL,
	[safe_observed] [tinyint] NULL,
	[action_encourages] [tinyint] NULL,
	[action_encourage] [text] NULL,
	[unsafe_observed] [tinyint] NULL,
	[immediate_corrective_act] [tinyint] NULL,
	[action_prevents] [tinyint] NULL,
	[action_prevent] [text] NULL,
	[accident_risk] [varchar](3) NULL,
	[fire_risk] [varchar](3) NULL,
	[prevention_risk] [varchar](3) NULL,
	[supervisor_risk] [varchar](3) NULL,
	[fit_work_risk] [varchar](3) NULL,
	[psychological_risk] [varchar](3) NULL,
	[posture_risk] [varchar](3) NULL,
	[substance_risk] [varchar](3) NULL,
	[hygiene_risk] [varchar](3) NULL,
	[house_risk] [varchar](3) NULL,
	[standard_risk] [varchar](3) NULL,
	[spill_risk] [varchar](3) NULL,
	[waste_energy_risk] [varchar](3) NULL,
	[containment_risk] [varchar](3) NULL,
	[absorbent_risk] [varchar](3) NULL,
	[hira_risk] [varchar](3) NULL,
	[ptw_risk] [varchar](3) NULL,
	[sop_risk] [varchar](3) NULL,
	[msds_risk] [varchar](3) NULL,
	[emergency_risk] [varchar](3) NULL,
	[certificates_risk] [varchar](3) NULL,
	[ppe_risk] [varchar](3) NULL,
	[hand_risk] [varchar](3) NULL,
	[mechanical_risk] [varchar](3) NULL,
	[electrical_risk] [varchar](3) NULL,
	[vehicular_risk] [varchar](3) NULL,
	[substandard_risk] [varchar](3) NULL,
	[h2s_risk] [varchar](3) NULL,
	[workplace_health_risk] [varchar](3) NULL,
	[safe_observeds] [text] NULL,
	[unsafe_observeds] [text] NULL,
	[immediate_corrective_acts] [text] NULL,
 CONSTRAINT [PK_she_observation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[she_observation] ON
INSERT [dbo].[she_observation] ([id], [she_obs], [she_ins], [accident_unsafe], [accident_safe], [fire_unsafe], [fire_safe], [prevention_unsafe], [prevention_safe], [supervisor_unsafe], [supervisor_safe], [fit_work_unsafe], [fit_work_safe], [psychological_unsafe], [psychological_safe], [posture_unsafe], [posture_safe], [substance_unsafe], [substance_safe], [hygiene_unsafe], [hygiene_safe], [house_unsafe], [house_safe], [standard_unsafe], [standard_safe], [spill_unsafe], [spill_safe], [waste_energy_unsafe], [waste_energy_safe], [containment_unsafe], [containment_safe], [absorbent_unsafe], [absorbent_safe], [hira_unsafe], [hira_safe], [ptw_unsafe], [ptw_safe], [sop_unsafe], [sop_safe], [msds_unsafe], [msds_safe], [emergency_unsafe], [emergency_safe], [certificates_unsafe], [certificates_safe], [ppe_unsafe], [ppe_safe], [hand_unsafe], [hand_safe], [mechanical_unsafe], [mechanical_safe], [electrical_unsafe], [electrical_safe], [vehicular_unsafe], [vehicular_safe], [substandard_unsafe], [substandard_safe], [h2s_unsafe], [h2s_safe], [workplace_health_unsafe], [workplace_health_safe], [date_time], [observer], [department], [location], [activity], [safe_observed], [action_encourages], [action_encourage], [unsafe_observed], [immediate_corrective_act], [action_prevents], [action_prevent], [accident_risk], [fire_risk], [prevention_risk], [supervisor_risk], [fit_work_risk], [psychological_risk], [posture_risk], [substance_risk], [hygiene_risk], [house_risk], [standard_risk], [spill_risk], [waste_energy_risk], [containment_risk], [absorbent_risk], [hira_risk], [ptw_risk], [sop_risk], [msds_risk], [emergency_risk], [certificates_risk], [ppe_risk], [hand_risk], [mechanical_risk], [electrical_risk], [vehicular_risk], [substandard_risk], [h2s_risk], [workplace_health_risk], [safe_observeds], [unsafe_observeds], [immediate_corrective_acts]) VALUES (7, 1, 1, N'10', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'00', N'01', N'00', N'10', N'00', N'10', N'00', N'01', N'00', N'00', N'00', N'01', N'00', N'10', N'00', N'01', N'00', N'10', N'00', N'00', N'00', N'10', N'00', N'01', N'00', N'10', N'00', CAST(0x0000A1A201053330 AS DateTime), N'Adiwena', N'SHE', N'Wayang Windu', NULL, 0, 0, NULL, 0, 0, 0, NULL, N'100', N'010', N'001', N'001', N'001', N'010', N'100', N'010', N'010', N'010', N'100', N'010', N'001', N'001', N'001', N'010', N'010', N'010', N'001', N'001', N'001', N'100', N'010', N'100', N'010', N'001', N'100', N'010', N'100', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[she_observation] OFF
/****** Object:  Table [dbo].[she_illness_report]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[she_illness_report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[chest_injury] [tinyint] NULL,
	[chest_tender_chest_wall] [tinyint] NULL,
	[chest_position_windpipe_neck] [tinyint] NULL,
	[chest_movement_breathing] [tinyint] NULL,
	[chest_breathing_sound] [tinyint] NULL,
	[chest_air_can_hear] [tinyint] NULL,
	[abdo_size] [tinyint] NULL,
	[abdo_pain_coughing] [tinyint] NULL,
	[abdo_pain_moving] [tinyint] NULL,
	[abdo_pain_puffing] [tinyint] NULL,
	[abdo_area_tenderness_found] [tinyint] NULL,
	[abdo_lumps_swelling_found] [tinyint] NULL,
	[abdo_bowel_sound] [tinyint] NULL,
	[ge_gland_neck_found] [tinyint] NULL,
	[ge_gland_neck_r] [tinyint] NULL,
	[ge_gland_neck_l] [tinyint] NULL,
	[ge_gland_armpit_found] [tinyint] NULL,
	[ge_gland_armpit_r] [tinyint] NULL,
	[ge_gland_armpit_l] [tinyint] NULL,
	[ge_gland_groin_found] [tinyint] NULL,
	[ge_gland_groin_r] [tinyint] NULL,
	[ge_gland_groin_l] [tinyint] NULL,
	[ge_ears] [tinyint] NULL,
	[ge_ears_r] [tinyint] NULL,
	[ge_ears_l] [tinyint] NULL,
	[ge_colour] [tinyint] NULL,
	[ge_eardrum_normal] [tinyint] NULL,
	[ge_eardrum_normal_r] [tinyint] NULL,
	[ge_eardrum_normal_l] [tinyint] NULL,
	[ge_eardrum_wax] [tinyint] NULL,
	[ge_eardrum_wax_r] [tinyint] NULL,
	[ge_eardrum_wax_l] [tinyint] NULL,
	[ge_eardrum_red] [tinyint] NULL,
	[ge_eardrum_red_r] [tinyint] NULL,
	[ge_eardrum_red_l] [tinyint] NULL,
	[ge_eardrum_perforated] [tinyint] NULL,
	[ge_eardrum_perforated_r] [tinyint] NULL,
	[ge_eardrum_perforated_l] [tinyint] NULL,
	[ge_throat_colour] [tinyint] NULL,
	[ge_tonsil_size] [tinyint] NULL,
	[ge_skin_rush] [tinyint] NULL,
	[ge_skin_rush_size] [float] NULL,
	[ge_skin_rush_colour] [varchar](255) NULL,
	[ge_skin_rush_surface] [varchar](255) NULL,
	[inves_peak] [varchar](255) NULL,
	[urine_testing_blood] [tinyint] NULL,
	[urine_testing_glucose] [tinyint] NULL,
	[urine_testing_ph] [tinyint] NULL,
	[urine_testing_protein] [tinyint] NULL,
	[urine_testing_sg] [tinyint] NULL,
	[urine_testing_other] [varchar](255) NULL,
	[comment_finding] [varchar](255) NULL,
	[comment_finding_no] [tinyint] NULL,
	[possible_diagnosis] [varchar](255) NULL,
	[diag_name] [varchar](255) NULL,
	[post_designation] [tinyint] NULL,
	[treatment_date] [varchar](255) NULL,
	[patient_name] [varchar](255) NULL,
 CONSTRAINT [PK_she_illness_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[she_illness_report] ON
INSERT [dbo].[she_illness_report] ([id], [chest_injury], [chest_tender_chest_wall], [chest_position_windpipe_neck], [chest_movement_breathing], [chest_breathing_sound], [chest_air_can_hear], [abdo_size], [abdo_pain_coughing], [abdo_pain_moving], [abdo_pain_puffing], [abdo_area_tenderness_found], [abdo_lumps_swelling_found], [abdo_bowel_sound], [ge_gland_neck_found], [ge_gland_neck_r], [ge_gland_neck_l], [ge_gland_armpit_found], [ge_gland_armpit_r], [ge_gland_armpit_l], [ge_gland_groin_found], [ge_gland_groin_r], [ge_gland_groin_l], [ge_ears], [ge_ears_r], [ge_ears_l], [ge_colour], [ge_eardrum_normal], [ge_eardrum_normal_r], [ge_eardrum_normal_l], [ge_eardrum_wax], [ge_eardrum_wax_r], [ge_eardrum_wax_l], [ge_eardrum_red], [ge_eardrum_red_r], [ge_eardrum_red_l], [ge_eardrum_perforated], [ge_eardrum_perforated_r], [ge_eardrum_perforated_l], [ge_throat_colour], [ge_tonsil_size], [ge_skin_rush], [ge_skin_rush_size], [ge_skin_rush_colour], [ge_skin_rush_surface], [inves_peak], [urine_testing_blood], [urine_testing_glucose], [urine_testing_ph], [urine_testing_protein], [urine_testing_sg], [urine_testing_other], [comment_finding], [comment_finding_no], [possible_diagnosis], [diag_name], [post_designation], [treatment_date], [patient_name]) VALUES (3, 1, 0, 0, 2, 2, 0, 0, 0, 1, 0, 0, 0, 3, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'100', 0, 0, 0, 0, 0, NULL, NULL, 0, N'jantung', N'Adiwena', NULL, N'Makan', NULL)
SET IDENTITY_INSERT [dbo].[she_illness_report] OFF
/****** Object:  Table [dbo].[secondary_effects]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[rca_graph_metric]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[rca_floor]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[rca_fishbone_master]    Script Date: 05/30/2013 09:40:16 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
/****** Object:  Table [dbo].[rca_facility]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[user_role]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[user_role] ([id], [role]) VALUES (0, N'Admin Data Master')
INSERT [dbo].[user_role] ([id], [role]) VALUES (1, N'Admin Data Input')
INSERT [dbo].[user_role] ([id], [role]) VALUES (2, N'RCA')
INSERT [dbo].[user_role] ([id], [role]) VALUES (3, N'RCA View')
INSERT [dbo].[user_role] ([id], [role]) VALUES (4, N'Pir Initiator')
INSERT [dbo].[user_role] ([id], [role]) VALUES (5, N'Pir Process Admin')
INSERT [dbo].[user_role] ([id], [role]) VALUES (6, N'SHE')
INSERT [dbo].[user_role] ([id], [role]) VALUES (7, N'Admin IR')
INSERT [dbo].[user_role] ([id], [role]) VALUES (8, N'Daily Log Supervisor')
SET IDENTITY_INSERT [dbo].[user_role] OFF
/****** Object:  Table [dbo].[failure_modes]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[rca_division]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[rca_division] ([id], [id_facility], [name]) VALUES (4, 1, N'Security')
SET IDENTITY_INSERT [dbo].[rca_division] OFF
/****** Object:  Table [dbo].[daily_log_sap]    Script Date: 05/30/2013 09:40:16 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_sags]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_sags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_daily_log] [int] NULL,
	[sags_time] [varchar](255) NULL,
	[sags_unit] [varchar](255) NULL,
	[sags_activity] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_sags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_pro]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_pro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_daily_log] [int] NULL,
	[wo_number] [varchar](255) NULL,
	[work_to_be_performed] [varchar](255) NULL,
	[sap_status] [tinyint] NULL,
	[pro_time] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_pro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_power_stations]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_power_stations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_daily_log] [int] NULL,
	[power_station_time] [varchar](255) NULL,
	[power_station_unit] [varchar](255) NULL,
	[power_station_activity] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_power_stations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[daily_log_power_stations] ON
INSERT [dbo].[daily_log_power_stations] ([id], [id_daily_log], [power_station_time], [power_station_unit], [power_station_activity]) VALUES (1006, 10, N'9:00 PM', N'Unit-1', N'Routine patrol and record local parameter of T/G, auxiliary and balance of plant')
INSERT [dbo].[daily_log_power_stations] ([id], [id_daily_log], [power_station_time], [power_station_unit], [power_station_activity]) VALUES (1007, 10, N'9:00 AM', N'Unit-1', N'Change over Lube Oil Filters (B to A) due to cleaning Lube Oil Filter-B by Mechanic.')
SET IDENTITY_INSERT [dbo].[daily_log_power_stations] OFF
/****** Object:  Table [dbo].[employee_dept]    Script Date: 05/30/2013 09:40:16 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[employee_dept] ON
INSERT [dbo].[employee_dept] ([id], [dept_name], [plant_id]) VALUES (21, N'FIeld Operation Manager', 1)
INSERT [dbo].[employee_dept] ([id], [dept_name], [plant_id]) VALUES (22, N'OBSS Manager', 1)
INSERT [dbo].[employee_dept] ([id], [dept_name], [plant_id]) VALUES (23, N'Facility Manager', 1)
SET IDENTITY_INSERT [dbo].[employee_dept] OFF
/****** Object:  Table [dbo].[rca]    Script Date: 05/30/2013 09:40:16 ******/
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
	[id_pir] [int] NULL,
	[has_pir] [tinyint] NULL,
	[fracas_ir] [tinyint] NULL,
	[fracas_ir_id] [int] NULL,
	[rca_code] [varchar](50) NULL,
 CONSTRAINT [PK_rca] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[rca] ON
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code]) VALUES (63, N'Training', N'Menganalisis penyebab dibatalkannya training', 1, N'2500', 1, 1, 1, NULL, NULL, N'', NULL, NULL, N'Training', N'Employee', NULL, N'Penyelenggaraan training lebih profesional', N'', 94, CAST(0x0000A10400000000 AS DateTime), CAST(0x0000A10B00000000 AS DateTime), 0, N'analysis63.xml', NULL, 1, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code]) VALUES (3089, N'Kecelakaan Pengemudi', N'Pengemudi mengalami patah kaki', 4, N'10000', 1, 4, 3, NULL, NULL, N'', 22, 1, N'', N'M-103', NULL, N'', N'', 3129, CAST(0x0000A19A00000000 AS DateTime), CAST(0x0000A1B000000000 AS DateTime), 0, N'analysis3089.xml', N'0-CFV-008', 2, 34, 1, 0, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code]) VALUES (3090, N'Leaked', N'Blower leaked', 3, N'20000', 1, 1, 1, NULL, NULL, N'', 29, 1, N'', N'', NULL, N'', N'', 3131, CAST(0x0000A1AA00000000 AS DateTime), CAST(0x0000A1BB00000000 AS DateTime), 0, NULL, N'0-CFV-003A', 2, NULL, 0, 1, 766, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code]) VALUES (3091, N'Kebakaran rambut', N'wayang windu', 6, N'23333', 1, 4, 3, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A19300000000 AS DateTime), CAST(0x0000A1BA00000000 AS DateTime), 0, N'analysis3091.xml', NULL, 1, NULL, 1, 2, 15, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code]) VALUES (3092, N'', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code]) VALUES (3093, N'tes input', N'tes', 1, N'0', 1, NULL, NULL, NULL, NULL, N'', 24, 1, N'', N'', NULL, N'aaa', N'aaaaa', 3133, CAST(0x0000A1BE00000000 AS DateTime), CAST(0x0000A1CF00000000 AS DateTime), 0, NULL, NULL, 1, NULL, 0, NULL, NULL, N'RCA/20130514/00001')
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code]) VALUES (3095, N'Patah kaki', N'Description', 4, N'50000', 1, 1, 1, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 3135, CAST(0x0000A1B100000000 AS DateTime), CAST(0x0000A1CF00000000 AS DateTime), 0, N'analysis3095.xml', NULL, 2, NULL, 0, 2, 20, N'RCA/20130523/00002')
SET IDENTITY_INSERT [dbo].[rca] OFF
/****** Object:  Table [dbo].[pir_log]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pir_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_pir] [int] NULL,
	[date] [datetime] NULL,
	[username] [varchar](50) NULL,
	[process] [varchar](255) NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_pir_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[pir_log] ON
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (22, 34, CAST(0x0000A1AA00E2BCB9 AS DateTime), N'adminrcapir', N'CREATED', N'')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (23, 34, CAST(0x0000A1AA00E2C312 AS DateTime), N'adminrcapir', N'SEND TO PROCESS', N'')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (24, 34, CAST(0x0000A1AA00E3BB22 AS DateTime), N'adminpirp', N'SEND TO INITIATOR', N'')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (25, 34, CAST(0x0000A1AA00E4400E AS DateTime), N'adminrcapir', N'VERIFIED', N'')
SET IDENTITY_INSERT [dbo].[pir_log] OFF
/****** Object:  Table [dbo].[iir_recommendations]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iir_recommendations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_iir] [int] NULL,
	[description] [varchar](255) NULL,
	[PIC] [varchar](255) NULL,
	[pir_number] [int] NULL,
	[completion_date] [date] NULL,
	[has_pir] [tinyint] NULL,
 CONSTRAINT [PK_iir_recommendations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[iir_recommendations] ON
INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date], [has_pir]) VALUES (2, 2, N'tes skrng', N'yosef2', NULL, CAST(0xF0360B00 AS Date), 1)
INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date], [has_pir]) VALUES (3, 2, N'tes lagi', N'yosef2', NULL, CAST(0xF0360B00 AS Date), 1)
INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date], [has_pir]) VALUES (4, 2, N'lagi lagi', N'yosef2', NULL, CAST(0xF0360B00 AS Date), 1)
INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date], [has_pir]) VALUES (5, 3, N'tes', N'yosef3', NULL, CAST(0x03370B00 AS Date), 1)
INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date], [has_pir]) VALUES (7, 3, N'1234', N'yosef', NULL, CAST(0x03370B00 AS Date), 1)
INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date], [has_pir]) VALUES (8, 3, N'tesssss', N'yosef2', NULL, CAST(0x03370B00 AS Date), 1)
INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date], [has_pir]) VALUES (9, 4, N'Recomendation 1', N'admindm', NULL, CAST(0x16370B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[iir_recommendations] OFF
/****** Object:  Table [dbo].[focs]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[focs] ([id], [plant_id], [nama]) VALUES (55, 1, N'WW')
SET IDENTITY_INSERT [dbo].[focs] OFF
/****** Object:  UserDefinedFunction [dbo].[observationChart12]    Script Date: 05/30/2013 09:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[observationChart12] (
	@year varchar(4)
)
RETURNS TABLE
AS
RETURN 
(
    SELECT 1 as num, 'accident' as name, isnull(accident_ua.count,0) as ua, isnull(accident_uc.count,0) as uc, isnull(accident_sa.count,0) as sa, isnull(accident_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, accident_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (accident_safe = '10')
    GROUP BY YEAR(date_time), accident_safe) as accident_sa ON accident_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (accident_safe = '01')
GROUP BY YEAR(date_time), accident_safe) AS accident_sc ON accident_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '10')
GROUP BY YEAR(date_time), accident_unsafe) AS accident_ua ON accident_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(accident_unsafe = '01')
GROUP BY YEAR(date_time), accident_unsafe) AS accident_uc ON accident_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 2 as num, 'fire' as name, isnull(fire_ua.count,0) as ua, isnull(fire_uc.count,0) as uc, isnull(fire_sa.count,0) as sa, isnull(fire_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, fire_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fire_safe = '10')
    GROUP BY YEAR(date_time), fire_safe) as fire_sa ON fire_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fire_safe = '01')
GROUP BY YEAR(date_time), fire_safe) AS fire_sc ON fire_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '10')
GROUP BY YEAR(date_time), fire_unsafe) AS fire_ua ON fire_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(fire_unsafe = '01')
GROUP BY YEAR(date_time), fire_unsafe) AS fire_uc ON fire_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 3 as num, 'prevention' as name, isnull(prevention_ua.count,0) as ua, isnull(prevention_uc.count,0) as uc, isnull(prevention_sa.count,0) as sa, isnull(prevention_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, prevention_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (prevention_safe = '10')
    GROUP BY YEAR(date_time), prevention_safe) as prevention_sa ON prevention_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (prevention_safe = '01')
GROUP BY YEAR(date_time), prevention_safe) AS prevention_sc ON prevention_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '10')
GROUP BY YEAR(date_time), prevention_unsafe) AS prevention_ua ON prevention_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(prevention_unsafe = '01')
GROUP BY YEAR(date_time), prevention_unsafe) AS prevention_uc ON prevention_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 4 as num, 'supervisor' as name, isnull(supervisor_ua.count,0) as ua, isnull(supervisor_uc.count,0) as uc, isnull(supervisor_sa.count,0) as sa, isnull(supervisor_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, supervisor_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (supervisor_safe = '10')
    GROUP BY YEAR(date_time), supervisor_safe) as supervisor_sa ON supervisor_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (supervisor_safe = '01')
GROUP BY YEAR(date_time), supervisor_safe) AS supervisor_sc ON supervisor_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '10')
GROUP BY YEAR(date_time), supervisor_unsafe) AS supervisor_ua ON supervisor_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(supervisor_unsafe = '01')
GROUP BY YEAR(date_time), supervisor_unsafe) AS supervisor_uc ON supervisor_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 5 as num, 'fit_work' as name, isnull(fit_work_ua.count,0) as ua, isnull(fit_work_uc.count,0) as uc, isnull(fit_work_sa.count,0) as sa, isnull(fit_work_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, fit_work_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fit_work_safe = '10')
    GROUP BY YEAR(date_time), fit_work_safe) as fit_work_sa ON fit_work_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fit_work_safe = '01')
GROUP BY YEAR(date_time), fit_work_safe) AS fit_work_sc ON fit_work_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '10')
GROUP BY YEAR(date_time), fit_work_unsafe) AS fit_work_ua ON fit_work_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(fit_work_unsafe = '01')
GROUP BY YEAR(date_time), fit_work_unsafe) AS fit_work_uc ON fit_work_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 6 as num, 'psychological' as name, isnull(psychological_ua.count,0) as ua, isnull(psychological_uc.count,0) as uc, isnull(psychological_sa.count,0) as sa, isnull(psychological_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, psychological_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (psychological_safe = '10')
    GROUP BY YEAR(date_time), psychological_safe) as psychological_sa ON psychological_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (psychological_safe = '01')
GROUP BY YEAR(date_time), psychological_safe) AS psychological_sc ON psychological_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '10')
GROUP BY YEAR(date_time), psychological_unsafe) AS psychological_ua ON psychological_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(psychological_unsafe = '01')
GROUP BY YEAR(date_time), psychological_unsafe) AS psychological_uc ON psychological_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 7 as num, 'posture' as name, isnull(posture_ua.count,0) as ua, isnull(posture_uc.count,0) as uc, isnull(posture_sa.count,0) as sa, isnull(posture_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, posture_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (posture_safe = '10')
    GROUP BY YEAR(date_time), posture_safe) as posture_sa ON posture_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (posture_safe = '01')
GROUP BY YEAR(date_time), posture_safe) AS posture_sc ON posture_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '10')
GROUP BY YEAR(date_time), posture_unsafe) AS posture_ua ON posture_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(posture_unsafe = '01')
GROUP BY YEAR(date_time), posture_unsafe) AS posture_uc ON posture_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 8 as num, 'substance' as name, isnull(substance_ua.count,0) as ua, isnull(substance_uc.count,0) as uc, isnull(substance_sa.count,0) as sa, isnull(substance_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, substance_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substance_safe = '10')
    GROUP BY YEAR(date_time), substance_safe) as substance_sa ON substance_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substance_safe = '01')
GROUP BY YEAR(date_time), substance_safe) AS substance_sc ON substance_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '10')
GROUP BY YEAR(date_time), substance_unsafe) AS substance_ua ON substance_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(substance_unsafe = '01')
GROUP BY YEAR(date_time), substance_unsafe) AS substance_uc ON substance_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 9 as num, 'hygiene' as name, isnull(hygiene_ua.count,0) as ua, isnull(hygiene_uc.count,0) as uc, isnull(hygiene_sa.count,0) as sa, isnull(hygiene_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hygiene_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hygiene_safe = '10')
    GROUP BY YEAR(date_time), hygiene_safe) as hygiene_sa ON hygiene_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hygiene_safe = '01')
GROUP BY YEAR(date_time), hygiene_safe) AS hygiene_sc ON hygiene_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '10')
GROUP BY YEAR(date_time), hygiene_unsafe) AS hygiene_ua ON hygiene_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hygiene_unsafe = '01')
GROUP BY YEAR(date_time), hygiene_unsafe) AS hygiene_uc ON hygiene_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 10 as num, 'house' as name, isnull(house_ua.count,0) as ua, isnull(house_uc.count,0) as uc, isnull(house_sa.count,0) as sa, isnull(house_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, house_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (house_safe = '10')
    GROUP BY YEAR(date_time), house_safe) as house_sa ON house_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (house_safe = '01')
GROUP BY YEAR(date_time), house_safe) AS house_sc ON house_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '10')
GROUP BY YEAR(date_time), house_unsafe) AS house_ua ON house_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(house_unsafe = '01')
GROUP BY YEAR(date_time), house_unsafe) AS house_uc ON house_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 11 as num, 'standard' as name, isnull(standard_ua.count,0) as ua, isnull(standard_uc.count,0) as uc, isnull(standard_sa.count,0) as sa, isnull(standard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, standard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (standard_safe = '10')
    GROUP BY YEAR(date_time), standard_safe) as standard_sa ON standard_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (standard_safe = '01')
GROUP BY YEAR(date_time), standard_safe) AS standard_sc ON standard_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '10')
GROUP BY YEAR(date_time), standard_unsafe) AS standard_ua ON standard_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(standard_unsafe = '01')
GROUP BY YEAR(date_time), standard_unsafe) AS standard_uc ON standard_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 12 as num, 'spill' as name, isnull(spill_ua.count,0) as ua, isnull(spill_uc.count,0) as uc, isnull(spill_sa.count,0) as sa, isnull(spill_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, spill_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (spill_safe = '10')
    GROUP BY YEAR(date_time), spill_safe) as spill_sa ON spill_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (spill_safe = '01')
GROUP BY YEAR(date_time), spill_safe) AS spill_sc ON spill_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '10')
GROUP BY YEAR(date_time), spill_unsafe) AS spill_ua ON spill_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(spill_unsafe = '01')
GROUP BY YEAR(date_time), spill_unsafe) AS spill_uc ON spill_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 13 as num, 'waste_energy' as name, isnull(waste_energy_ua.count,0) as ua, isnull(waste_energy_uc.count,0) as uc, isnull(waste_energy_sa.count,0) as sa, isnull(waste_energy_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, waste_energy_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (waste_energy_safe = '10')
    GROUP BY YEAR(date_time), waste_energy_safe) as waste_energy_sa ON waste_energy_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (waste_energy_safe = '01')
GROUP BY YEAR(date_time), waste_energy_safe) AS waste_energy_sc ON waste_energy_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '10')
GROUP BY YEAR(date_time), waste_energy_unsafe) AS waste_energy_ua ON waste_energy_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(waste_energy_unsafe = '01')
GROUP BY YEAR(date_time), waste_energy_unsafe) AS waste_energy_uc ON waste_energy_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 14 as num, 'containment' as name, isnull(containment_ua.count,0) as ua, isnull(containment_uc.count,0) as uc, isnull(containment_sa.count,0) as sa, isnull(containment_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, containment_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (containment_safe = '10')
    GROUP BY YEAR(date_time), containment_safe) as containment_sa ON containment_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (containment_safe = '01')
GROUP BY YEAR(date_time), containment_safe) AS containment_sc ON containment_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '10')
GROUP BY YEAR(date_time), containment_unsafe) AS containment_ua ON containment_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(containment_unsafe = '01')
GROUP BY YEAR(date_time), containment_unsafe) AS containment_uc ON containment_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 15 as num, 'absorbent' as name, isnull(absorbent_ua.count,0) as ua, isnull(absorbent_uc.count,0) as uc, isnull(absorbent_sa.count,0) as sa, isnull(absorbent_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, absorbent_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (absorbent_safe = '10')
    GROUP BY YEAR(date_time), absorbent_safe) as absorbent_sa ON absorbent_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (absorbent_safe = '01')
GROUP BY YEAR(date_time), absorbent_safe) AS absorbent_sc ON absorbent_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '10')
GROUP BY YEAR(date_time), absorbent_unsafe) AS absorbent_ua ON absorbent_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(absorbent_unsafe = '01')
GROUP BY YEAR(date_time), absorbent_unsafe) AS absorbent_uc ON absorbent_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 16 as num, 'hira' as name, isnull(hira_ua.count,0) as ua, isnull(hira_uc.count,0) as uc, isnull(hira_sa.count,0) as sa, isnull(hira_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hira_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hira_safe = '10')
    GROUP BY YEAR(date_time), hira_safe) as hira_sa ON hira_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hira_safe = '01')
GROUP BY YEAR(date_time), hira_safe) AS hira_sc ON hira_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '10')
GROUP BY YEAR(date_time), hira_unsafe) AS hira_ua ON hira_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hira_unsafe = '01')
GROUP BY YEAR(date_time), hira_unsafe) AS hira_uc ON hira_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 17 as num, 'ptw' as name, isnull(ptw_ua.count,0) as ua, isnull(ptw_uc.count,0) as uc, isnull(ptw_sa.count,0) as sa, isnull(ptw_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, ptw_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ptw_safe = '10')
    GROUP BY YEAR(date_time), ptw_safe) as ptw_sa ON ptw_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ptw_safe = '01')
GROUP BY YEAR(date_time), ptw_safe) AS ptw_sc ON ptw_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '10')
GROUP BY YEAR(date_time), ptw_unsafe) AS ptw_ua ON ptw_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(ptw_unsafe = '01')
GROUP BY YEAR(date_time), ptw_unsafe) AS ptw_uc ON ptw_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 18 as num, 'sop' as name, isnull(sop_ua.count,0) as ua, isnull(sop_uc.count,0) as uc, isnull(sop_sa.count,0) as sa, isnull(sop_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, sop_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (sop_safe = '10')
    GROUP BY YEAR(date_time), sop_safe) as sop_sa ON sop_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (sop_safe = '01')
GROUP BY YEAR(date_time), sop_safe) AS sop_sc ON sop_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '10')
GROUP BY YEAR(date_time), sop_unsafe) AS sop_ua ON sop_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(sop_unsafe = '01')
GROUP BY YEAR(date_time), sop_unsafe) AS sop_uc ON sop_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 19 as num, 'msds' as name, isnull(msds_ua.count,0) as ua, isnull(msds_uc.count,0) as uc, isnull(msds_sa.count,0) as sa, isnull(msds_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, msds_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (msds_safe = '10')
    GROUP BY YEAR(date_time), msds_safe) as msds_sa ON msds_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (msds_safe = '01')
GROUP BY YEAR(date_time), msds_safe) AS msds_sc ON msds_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '10')
GROUP BY YEAR(date_time), msds_unsafe) AS msds_ua ON msds_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(msds_unsafe = '01')
GROUP BY YEAR(date_time), msds_unsafe) AS msds_uc ON msds_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 20 as num, 'emergency' as name, isnull(emergency_ua.count,0) as ua, isnull(emergency_uc.count,0) as uc, isnull(emergency_sa.count,0) as sa, isnull(emergency_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, emergency_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (emergency_safe = '10')
    GROUP BY YEAR(date_time), emergency_safe) as emergency_sa ON emergency_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (emergency_safe = '01')
GROUP BY YEAR(date_time), emergency_safe) AS emergency_sc ON emergency_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '10')
GROUP BY YEAR(date_time), emergency_unsafe) AS emergency_ua ON emergency_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(emergency_unsafe = '01')
GROUP BY YEAR(date_time), emergency_unsafe) AS emergency_uc ON emergency_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 21 as num, 'certificates' as name, isnull(certificates_ua.count,0) as ua, isnull(certificates_uc.count,0) as uc, isnull(certificates_sa.count,0) as sa, isnull(certificates_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, certificates_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (certificates_safe = '10')
    GROUP BY YEAR(date_time), certificates_safe) as certificates_sa ON certificates_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (certificates_safe = '01')
GROUP BY YEAR(date_time), certificates_safe) AS certificates_sc ON certificates_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '10')
GROUP BY YEAR(date_time), certificates_unsafe) AS certificates_ua ON certificates_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(certificates_unsafe = '01')
GROUP BY YEAR(date_time), certificates_unsafe) AS certificates_uc ON certificates_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 22 as num, 'ppe' as name, isnull(ppe_ua.count,0) as ua, isnull(ppe_uc.count,0) as uc, isnull(ppe_sa.count,0) as sa, isnull(ppe_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, ppe_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ppe_safe = '10')
    GROUP BY YEAR(date_time), ppe_safe) as ppe_sa ON ppe_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ppe_safe = '01')
GROUP BY YEAR(date_time), ppe_safe) AS ppe_sc ON ppe_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '10')
GROUP BY YEAR(date_time), ppe_unsafe) AS ppe_ua ON ppe_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(ppe_unsafe = '01')
GROUP BY YEAR(date_time), ppe_unsafe) AS ppe_uc ON ppe_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 23 as num, 'hand' as name, isnull(hand_ua.count,0) as ua, isnull(hand_uc.count,0) as uc, isnull(hand_sa.count,0) as sa, isnull(hand_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hand_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hand_safe = '10')
    GROUP BY YEAR(date_time), hand_safe) as hand_sa ON hand_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hand_safe = '01')
GROUP BY YEAR(date_time), hand_safe) AS hand_sc ON hand_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '10')
GROUP BY YEAR(date_time), hand_unsafe) AS hand_ua ON hand_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hand_unsafe = '01')
GROUP BY YEAR(date_time), hand_unsafe) AS hand_uc ON hand_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 24 as num, 'mechanical' as name, isnull(mechanical_ua.count,0) as ua, isnull(mechanical_uc.count,0) as uc, isnull(mechanical_sa.count,0) as sa, isnull(mechanical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, mechanical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (mechanical_safe = '10')
    GROUP BY YEAR(date_time), mechanical_safe) as mechanical_sa ON mechanical_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (mechanical_safe = '01')
GROUP BY YEAR(date_time), mechanical_safe) AS mechanical_sc ON mechanical_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '10')
GROUP BY YEAR(date_time), mechanical_unsafe) AS mechanical_ua ON mechanical_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(mechanical_unsafe = '01')
GROUP BY YEAR(date_time), mechanical_unsafe) AS mechanical_uc ON mechanical_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 25 as num, 'electrical' as name, isnull(electrical_ua.count,0) as ua, isnull(electrical_uc.count,0) as uc, isnull(electrical_sa.count,0) as sa, isnull(electrical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, electrical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (electrical_safe = '10')
    GROUP BY YEAR(date_time), electrical_safe) as electrical_sa ON electrical_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (electrical_safe = '01')
GROUP BY YEAR(date_time), electrical_safe) AS electrical_sc ON electrical_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '10')
GROUP BY YEAR(date_time), electrical_unsafe) AS electrical_ua ON electrical_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(electrical_unsafe = '01')
GROUP BY YEAR(date_time), electrical_unsafe) AS electrical_uc ON electrical_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 26 as num, 'vehicular' as name, isnull(vehicular_ua.count,0) as ua, isnull(vehicular_uc.count,0) as uc, isnull(vehicular_sa.count,0) as sa, isnull(vehicular_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, vehicular_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (vehicular_safe = '10')
    GROUP BY YEAR(date_time), vehicular_safe) as vehicular_sa ON vehicular_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (vehicular_safe = '01')
GROUP BY YEAR(date_time), vehicular_safe) AS vehicular_sc ON vehicular_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '10')
GROUP BY YEAR(date_time), vehicular_unsafe) AS vehicular_ua ON vehicular_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(vehicular_unsafe = '01')
GROUP BY YEAR(date_time), vehicular_unsafe) AS vehicular_uc ON vehicular_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 27 as num, 'substandard' as name, isnull(substandard_ua.count,0) as ua, isnull(substandard_uc.count,0) as uc, isnull(substandard_sa.count,0) as sa, isnull(substandard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, substandard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substandard_safe = '10')
    GROUP BY YEAR(date_time), substandard_safe) as substandard_sa ON substandard_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substandard_safe = '01')
GROUP BY YEAR(date_time), substandard_safe) AS substandard_sc ON substandard_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '10')
GROUP BY YEAR(date_time), substandard_unsafe) AS substandard_ua ON substandard_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(substandard_unsafe = '01')
GROUP BY YEAR(date_time), substandard_unsafe) AS substandard_uc ON substandard_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 28 as num, 'h2s' as name, isnull(h2s_ua.count,0) as ua, isnull(h2s_uc.count,0) as uc, isnull(h2s_sa.count,0) as sa, isnull(h2s_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, h2s_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (h2s_safe = '10')
    GROUP BY YEAR(date_time), h2s_safe) as h2s_sa ON h2s_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (h2s_safe = '01')
GROUP BY YEAR(date_time), h2s_safe) AS h2s_sc ON h2s_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '10')
GROUP BY YEAR(date_time), h2s_unsafe) AS h2s_ua ON h2s_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(h2s_unsafe = '01')
GROUP BY YEAR(date_time), h2s_unsafe) AS h2s_uc ON h2s_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 29 as num, 'workplace_health' as name, isnull(workplace_health_ua.count,0) as ua, isnull(workplace_health_uc.count,0) as uc, isnull(workplace_health_sa.count,0) as sa, isnull(workplace_health_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, workplace_health_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (workplace_health_safe = '10')
    GROUP BY YEAR(date_time), workplace_health_safe) as workplace_health_sa ON workplace_health_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (workplace_health_safe = '01')
GROUP BY YEAR(date_time), workplace_health_safe) AS workplace_health_sc ON workplace_health_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '10')
GROUP BY YEAR(date_time), workplace_health_unsafe) AS workplace_health_ua ON workplace_health_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(workplace_health_unsafe = '01')
GROUP BY YEAR(date_time), workplace_health_unsafe) AS workplace_health_uc ON workplace_health_uc.year = ym.year
WHERE ym.year=@year
);
GO
/****** Object:  UserDefinedFunction [dbo].[observationChart1]    Script Date: 05/30/2013 09:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[observationChart1] (
	@year varchar(4)
)
RETURNS TABLE
AS
RETURN 
(
    SELECT 'accident' as name, isnull(accident_ua.count,0) as ua, isnull(accident_uc.count,0) as uc, isnull(accident_sa.count,0) as sa, isnull(accident_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, accident_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (accident_safe = '10')
    GROUP BY YEAR(date_time), accident_safe) as accident_sa ON accident_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (accident_safe = '01')
GROUP BY YEAR(date_time), accident_safe) AS accident_sc ON accident_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '10')
GROUP BY YEAR(date_time), accident_unsafe) AS accident_ua ON accident_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(accident_unsafe = '01')
GROUP BY YEAR(date_time), accident_unsafe) AS accident_uc ON accident_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'fire' as name, isnull(fire_ua.count,0) as ua, isnull(fire_uc.count,0) as uc, isnull(fire_sa.count,0) as sa, isnull(fire_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, fire_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fire_safe = '10')
    GROUP BY YEAR(date_time), fire_safe) as fire_sa ON fire_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fire_safe = '01')
GROUP BY YEAR(date_time), fire_safe) AS fire_sc ON fire_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '10')
GROUP BY YEAR(date_time), fire_unsafe) AS fire_ua ON fire_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(fire_unsafe = '01')
GROUP BY YEAR(date_time), fire_unsafe) AS fire_uc ON fire_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'prevention' as name, isnull(prevention_ua.count,0) as ua, isnull(prevention_uc.count,0) as uc, isnull(prevention_sa.count,0) as sa, isnull(prevention_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, prevention_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (prevention_safe = '10')
    GROUP BY YEAR(date_time), prevention_safe) as prevention_sa ON prevention_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (prevention_safe = '01')
GROUP BY YEAR(date_time), prevention_safe) AS prevention_sc ON prevention_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '10')
GROUP BY YEAR(date_time), prevention_unsafe) AS prevention_ua ON prevention_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(prevention_unsafe = '01')
GROUP BY YEAR(date_time), prevention_unsafe) AS prevention_uc ON prevention_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'supervisor' as name, isnull(supervisor_ua.count,0) as ua, isnull(supervisor_uc.count,0) as uc, isnull(supervisor_sa.count,0) as sa, isnull(supervisor_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, supervisor_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (supervisor_safe = '10')
    GROUP BY YEAR(date_time), supervisor_safe) as supervisor_sa ON supervisor_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (supervisor_safe = '01')
GROUP BY YEAR(date_time), supervisor_safe) AS supervisor_sc ON supervisor_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '10')
GROUP BY YEAR(date_time), supervisor_unsafe) AS supervisor_ua ON supervisor_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(supervisor_unsafe = '01')
GROUP BY YEAR(date_time), supervisor_unsafe) AS supervisor_uc ON supervisor_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'fit_work' as name, isnull(fit_work_ua.count,0) as ua, isnull(fit_work_uc.count,0) as uc, isnull(fit_work_sa.count,0) as sa, isnull(fit_work_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, fit_work_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fit_work_safe = '10')
    GROUP BY YEAR(date_time), fit_work_safe) as fit_work_sa ON fit_work_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fit_work_safe = '01')
GROUP BY YEAR(date_time), fit_work_safe) AS fit_work_sc ON fit_work_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '10')
GROUP BY YEAR(date_time), fit_work_unsafe) AS fit_work_ua ON fit_work_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(fit_work_unsafe = '01')
GROUP BY YEAR(date_time), fit_work_unsafe) AS fit_work_uc ON fit_work_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'psychological' as name, isnull(psychological_ua.count,0) as ua, isnull(psychological_uc.count,0) as uc, isnull(psychological_sa.count,0) as sa, isnull(psychological_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, psychological_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (psychological_safe = '10')
    GROUP BY YEAR(date_time), psychological_safe) as psychological_sa ON psychological_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (psychological_safe = '01')
GROUP BY YEAR(date_time), psychological_safe) AS psychological_sc ON psychological_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '10')
GROUP BY YEAR(date_time), psychological_unsafe) AS psychological_ua ON psychological_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(psychological_unsafe = '01')
GROUP BY YEAR(date_time), psychological_unsafe) AS psychological_uc ON psychological_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'posture' as name, isnull(posture_ua.count,0) as ua, isnull(posture_uc.count,0) as uc, isnull(posture_sa.count,0) as sa, isnull(posture_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, posture_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (posture_safe = '10')
    GROUP BY YEAR(date_time), posture_safe) as posture_sa ON posture_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (posture_safe = '01')
GROUP BY YEAR(date_time), posture_safe) AS posture_sc ON posture_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '10')
GROUP BY YEAR(date_time), posture_unsafe) AS posture_ua ON posture_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(posture_unsafe = '01')
GROUP BY YEAR(date_time), posture_unsafe) AS posture_uc ON posture_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'substance' as name, isnull(substance_ua.count,0) as ua, isnull(substance_uc.count,0) as uc, isnull(substance_sa.count,0) as sa, isnull(substance_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, substance_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substance_safe = '10')
    GROUP BY YEAR(date_time), substance_safe) as substance_sa ON substance_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substance_safe = '01')
GROUP BY YEAR(date_time), substance_safe) AS substance_sc ON substance_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '10')
GROUP BY YEAR(date_time), substance_unsafe) AS substance_ua ON substance_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(substance_unsafe = '01')
GROUP BY YEAR(date_time), substance_unsafe) AS substance_uc ON substance_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'hygiene' as name, isnull(hygiene_ua.count,0) as ua, isnull(hygiene_uc.count,0) as uc, isnull(hygiene_sa.count,0) as sa, isnull(hygiene_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hygiene_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hygiene_safe = '10')
    GROUP BY YEAR(date_time), hygiene_safe) as hygiene_sa ON hygiene_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hygiene_safe = '01')
GROUP BY YEAR(date_time), hygiene_safe) AS hygiene_sc ON hygiene_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '10')
GROUP BY YEAR(date_time), hygiene_unsafe) AS hygiene_ua ON hygiene_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hygiene_unsafe = '01')
GROUP BY YEAR(date_time), hygiene_unsafe) AS hygiene_uc ON hygiene_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'house' as name, isnull(house_ua.count,0) as ua, isnull(house_uc.count,0) as uc, isnull(house_sa.count,0) as sa, isnull(house_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, house_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (house_safe = '10')
    GROUP BY YEAR(date_time), house_safe) as house_sa ON house_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (house_safe = '01')
GROUP BY YEAR(date_time), house_safe) AS house_sc ON house_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '10')
GROUP BY YEAR(date_time), house_unsafe) AS house_ua ON house_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(house_unsafe = '01')
GROUP BY YEAR(date_time), house_unsafe) AS house_uc ON house_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'standard' as name, isnull(standard_ua.count,0) as ua, isnull(standard_uc.count,0) as uc, isnull(standard_sa.count,0) as sa, isnull(standard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, standard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (standard_safe = '10')
    GROUP BY YEAR(date_time), standard_safe) as standard_sa ON standard_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (standard_safe = '01')
GROUP BY YEAR(date_time), standard_safe) AS standard_sc ON standard_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '10')
GROUP BY YEAR(date_time), standard_unsafe) AS standard_ua ON standard_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(standard_unsafe = '01')
GROUP BY YEAR(date_time), standard_unsafe) AS standard_uc ON standard_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'spill' as name, isnull(spill_ua.count,0) as ua, isnull(spill_uc.count,0) as uc, isnull(spill_sa.count,0) as sa, isnull(spill_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, spill_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (spill_safe = '10')
    GROUP BY YEAR(date_time), spill_safe) as spill_sa ON spill_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (spill_safe = '01')
GROUP BY YEAR(date_time), spill_safe) AS spill_sc ON spill_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '10')
GROUP BY YEAR(date_time), spill_unsafe) AS spill_ua ON spill_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(spill_unsafe = '01')
GROUP BY YEAR(date_time), spill_unsafe) AS spill_uc ON spill_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'waste_energy' as name, isnull(waste_energy_ua.count,0) as ua, isnull(waste_energy_uc.count,0) as uc, isnull(waste_energy_sa.count,0) as sa, isnull(waste_energy_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, waste_energy_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (waste_energy_safe = '10')
    GROUP BY YEAR(date_time), waste_energy_safe) as waste_energy_sa ON waste_energy_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (waste_energy_safe = '01')
GROUP BY YEAR(date_time), waste_energy_safe) AS waste_energy_sc ON waste_energy_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '10')
GROUP BY YEAR(date_time), waste_energy_unsafe) AS waste_energy_ua ON waste_energy_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(waste_energy_unsafe = '01')
GROUP BY YEAR(date_time), waste_energy_unsafe) AS waste_energy_uc ON waste_energy_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'containment' as name, isnull(containment_ua.count,0) as ua, isnull(containment_uc.count,0) as uc, isnull(containment_sa.count,0) as sa, isnull(containment_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, containment_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (containment_safe = '10')
    GROUP BY YEAR(date_time), containment_safe) as containment_sa ON containment_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (containment_safe = '01')
GROUP BY YEAR(date_time), containment_safe) AS containment_sc ON containment_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '10')
GROUP BY YEAR(date_time), containment_unsafe) AS containment_ua ON containment_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(containment_unsafe = '01')
GROUP BY YEAR(date_time), containment_unsafe) AS containment_uc ON containment_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'absorbent' as name, isnull(absorbent_ua.count,0) as ua, isnull(absorbent_uc.count,0) as uc, isnull(absorbent_sa.count,0) as sa, isnull(absorbent_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, absorbent_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (absorbent_safe = '10')
    GROUP BY YEAR(date_time), absorbent_safe) as absorbent_sa ON absorbent_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (absorbent_safe = '01')
GROUP BY YEAR(date_time), absorbent_safe) AS absorbent_sc ON absorbent_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '10')
GROUP BY YEAR(date_time), absorbent_unsafe) AS absorbent_ua ON absorbent_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(absorbent_unsafe = '01')
GROUP BY YEAR(date_time), absorbent_unsafe) AS absorbent_uc ON absorbent_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'hira' as name, isnull(hira_ua.count,0) as ua, isnull(hira_uc.count,0) as uc, isnull(hira_sa.count,0) as sa, isnull(hira_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hira_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hira_safe = '10')
    GROUP BY YEAR(date_time), hira_safe) as hira_sa ON hira_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hira_safe = '01')
GROUP BY YEAR(date_time), hira_safe) AS hira_sc ON hira_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '10')
GROUP BY YEAR(date_time), hira_unsafe) AS hira_ua ON hira_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hira_unsafe = '01')
GROUP BY YEAR(date_time), hira_unsafe) AS hira_uc ON hira_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'ptw' as name, isnull(ptw_ua.count,0) as ua, isnull(ptw_uc.count,0) as uc, isnull(ptw_sa.count,0) as sa, isnull(ptw_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, ptw_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ptw_safe = '10')
    GROUP BY YEAR(date_time), ptw_safe) as ptw_sa ON ptw_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ptw_safe = '01')
GROUP BY YEAR(date_time), ptw_safe) AS ptw_sc ON ptw_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '10')
GROUP BY YEAR(date_time), ptw_unsafe) AS ptw_ua ON ptw_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(ptw_unsafe = '01')
GROUP BY YEAR(date_time), ptw_unsafe) AS ptw_uc ON ptw_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'sop' as name, isnull(sop_ua.count,0) as ua, isnull(sop_uc.count,0) as uc, isnull(sop_sa.count,0) as sa, isnull(sop_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, sop_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (sop_safe = '10')
    GROUP BY YEAR(date_time), sop_safe) as sop_sa ON sop_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (sop_safe = '01')
GROUP BY YEAR(date_time), sop_safe) AS sop_sc ON sop_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '10')
GROUP BY YEAR(date_time), sop_unsafe) AS sop_ua ON sop_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(sop_unsafe = '01')
GROUP BY YEAR(date_time), sop_unsafe) AS sop_uc ON sop_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'msds' as name, isnull(msds_ua.count,0) as ua, isnull(msds_uc.count,0) as uc, isnull(msds_sa.count,0) as sa, isnull(msds_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, msds_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (msds_safe = '10')
    GROUP BY YEAR(date_time), msds_safe) as msds_sa ON msds_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (msds_safe = '01')
GROUP BY YEAR(date_time), msds_safe) AS msds_sc ON msds_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '10')
GROUP BY YEAR(date_time), msds_unsafe) AS msds_ua ON msds_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(msds_unsafe = '01')
GROUP BY YEAR(date_time), msds_unsafe) AS msds_uc ON msds_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'emergency' as name, isnull(emergency_ua.count,0) as ua, isnull(emergency_uc.count,0) as uc, isnull(emergency_sa.count,0) as sa, isnull(emergency_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, emergency_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (emergency_safe = '10')
    GROUP BY YEAR(date_time), emergency_safe) as emergency_sa ON emergency_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (emergency_safe = '01')
GROUP BY YEAR(date_time), emergency_safe) AS emergency_sc ON emergency_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '10')
GROUP BY YEAR(date_time), emergency_unsafe) AS emergency_ua ON emergency_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(emergency_unsafe = '01')
GROUP BY YEAR(date_time), emergency_unsafe) AS emergency_uc ON emergency_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'certificates' as name, isnull(certificates_ua.count,0) as ua, isnull(certificates_uc.count,0) as uc, isnull(certificates_sa.count,0) as sa, isnull(certificates_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, certificates_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (certificates_safe = '10')
    GROUP BY YEAR(date_time), certificates_safe) as certificates_sa ON certificates_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (certificates_safe = '01')
GROUP BY YEAR(date_time), certificates_safe) AS certificates_sc ON certificates_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '10')
GROUP BY YEAR(date_time), certificates_unsafe) AS certificates_ua ON certificates_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(certificates_unsafe = '01')
GROUP BY YEAR(date_time), certificates_unsafe) AS certificates_uc ON certificates_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'ppe' as name, isnull(ppe_ua.count,0) as ua, isnull(ppe_uc.count,0) as uc, isnull(ppe_sa.count,0) as sa, isnull(ppe_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, ppe_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ppe_safe = '10')
    GROUP BY YEAR(date_time), ppe_safe) as ppe_sa ON ppe_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ppe_safe = '01')
GROUP BY YEAR(date_time), ppe_safe) AS ppe_sc ON ppe_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '10')
GROUP BY YEAR(date_time), ppe_unsafe) AS ppe_ua ON ppe_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(ppe_unsafe = '01')
GROUP BY YEAR(date_time), ppe_unsafe) AS ppe_uc ON ppe_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'hand' as name, isnull(hand_ua.count,0) as ua, isnull(hand_uc.count,0) as uc, isnull(hand_sa.count,0) as sa, isnull(hand_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hand_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hand_safe = '10')
    GROUP BY YEAR(date_time), hand_safe) as hand_sa ON hand_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hand_safe = '01')
GROUP BY YEAR(date_time), hand_safe) AS hand_sc ON hand_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '10')
GROUP BY YEAR(date_time), hand_unsafe) AS hand_ua ON hand_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hand_unsafe = '01')
GROUP BY YEAR(date_time), hand_unsafe) AS hand_uc ON hand_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'mechanical' as name, isnull(mechanical_ua.count,0) as ua, isnull(mechanical_uc.count,0) as uc, isnull(mechanical_sa.count,0) as sa, isnull(mechanical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, mechanical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (mechanical_safe = '10')
    GROUP BY YEAR(date_time), mechanical_safe) as mechanical_sa ON mechanical_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (mechanical_safe = '01')
GROUP BY YEAR(date_time), mechanical_safe) AS mechanical_sc ON mechanical_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '10')
GROUP BY YEAR(date_time), mechanical_unsafe) AS mechanical_ua ON mechanical_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(mechanical_unsafe = '01')
GROUP BY YEAR(date_time), mechanical_unsafe) AS mechanical_uc ON mechanical_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'electrical' as name, isnull(electrical_ua.count,0) as ua, isnull(electrical_uc.count,0) as uc, isnull(electrical_sa.count,0) as sa, isnull(electrical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, electrical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (electrical_safe = '10')
    GROUP BY YEAR(date_time), electrical_safe) as electrical_sa ON electrical_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (electrical_safe = '01')
GROUP BY YEAR(date_time), electrical_safe) AS electrical_sc ON electrical_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '10')
GROUP BY YEAR(date_time), electrical_unsafe) AS electrical_ua ON electrical_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(electrical_unsafe = '01')
GROUP BY YEAR(date_time), electrical_unsafe) AS electrical_uc ON electrical_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'vehicular' as name, isnull(vehicular_ua.count,0) as ua, isnull(vehicular_uc.count,0) as uc, isnull(vehicular_sa.count,0) as sa, isnull(vehicular_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, vehicular_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (vehicular_safe = '10')
    GROUP BY YEAR(date_time), vehicular_safe) as vehicular_sa ON vehicular_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (vehicular_safe = '01')
GROUP BY YEAR(date_time), vehicular_safe) AS vehicular_sc ON vehicular_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '10')
GROUP BY YEAR(date_time), vehicular_unsafe) AS vehicular_ua ON vehicular_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(vehicular_unsafe = '01')
GROUP BY YEAR(date_time), vehicular_unsafe) AS vehicular_uc ON vehicular_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'substandard' as name, isnull(substandard_ua.count,0) as ua, isnull(substandard_uc.count,0) as uc, isnull(substandard_sa.count,0) as sa, isnull(substandard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, substandard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substandard_safe = '10')
    GROUP BY YEAR(date_time), substandard_safe) as substandard_sa ON substandard_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substandard_safe = '01')
GROUP BY YEAR(date_time), substandard_safe) AS substandard_sc ON substandard_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '10')
GROUP BY YEAR(date_time), substandard_unsafe) AS substandard_ua ON substandard_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(substandard_unsafe = '01')
GROUP BY YEAR(date_time), substandard_unsafe) AS substandard_uc ON substandard_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'h2s' as name, isnull(h2s_ua.count,0) as ua, isnull(h2s_uc.count,0) as uc, isnull(h2s_sa.count,0) as sa, isnull(h2s_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, h2s_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (h2s_safe = '10')
    GROUP BY YEAR(date_time), h2s_safe) as h2s_sa ON h2s_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (h2s_safe = '01')
GROUP BY YEAR(date_time), h2s_safe) AS h2s_sc ON h2s_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '10')
GROUP BY YEAR(date_time), h2s_unsafe) AS h2s_ua ON h2s_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(h2s_unsafe = '01')
GROUP BY YEAR(date_time), h2s_unsafe) AS h2s_uc ON h2s_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'workplace_health' as name, isnull(workplace_health_ua.count,0) as ua, isnull(workplace_health_uc.count,0) as uc, isnull(workplace_health_sa.count,0) as sa, isnull(workplace_health_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, workplace_health_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (workplace_health_safe = '10')
    GROUP BY YEAR(date_time), workplace_health_safe) as workplace_health_sa ON workplace_health_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (workplace_health_safe = '01')
GROUP BY YEAR(date_time), workplace_health_safe) AS workplace_health_sc ON workplace_health_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '10')
GROUP BY YEAR(date_time), workplace_health_unsafe) AS workplace_health_ua ON workplace_health_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(workplace_health_unsafe = '01')
GROUP BY YEAR(date_time), workplace_health_unsafe) AS workplace_health_uc ON workplace_health_uc.year = ym.year
WHERE ym.year=@year
);
GO
/****** Object:  UserDefinedFunction [dbo].[observationByMonths]    Script Date: 05/30/2013 09:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[observationByMonths]
(  
    @year varchar(4),
	@month varchar(2)  
)
RETURNS TABLE 
AS
RETURN 
  SELECT        ym.year, ym.month, { fn IFNULL(accident_sa.count_accident_sa, 0) } AS count_accident_sa, { fn IFNULL(accident_sc.count_accident_sc, 0) } AS count_accident_sc, 
                         { fn IFNULL(accident_ua.count_accident_ua, 0) } AS count_accident_ua, { fn IFNULL(accident_uc.count_accident_uc, 0) } AS count_accident_uc, { fn IFNULL(fire_sa.count, 0) } AS count_fire_sa, { fn IFNULL(fire_sc.count, 0) } AS count_fire_sc, { fn IFNULL(fire_ua.count, 0) } AS count_fire_ua, { fn IFNULL(fire_uc.count, 0) } AS count_fire_uc, { fn IFNULL(prevention_sa.count, 0) } AS count_prevention_sa, { fn IFNULL(prevention_sc.count, 0) } AS count_prevention_sc, { fn IFNULL(prevention_ua.count, 0) } AS count_prevention_ua, { fn IFNULL(prevention_uc.count, 0) } AS count_prevention_uc, { fn IFNULL(supervisor_sa.count, 0) } AS count_supervisor_sa, { fn IFNULL(supervisor_sc.count, 0) } AS count_supervisor_sc, { fn IFNULL(supervisor_ua.count, 0) } AS count_supervisor_ua, { fn IFNULL(supervisor_uc.count, 0) } AS count_supervisor_uc,
						  { fn IFNULL(fit_work_sa.count, 0) } AS count_fit_work_sa,
						  { fn IFNULL(fit_work_sc.count, 0) } AS count_fit_work_sc,
						  { fn IFNULL(fit_work_ua.count, 0) } AS count_fit_work_ua,
						  { fn IFNULL(fit_work_uc.count, 0) } AS count_fit_work_uc,
						  { fn IFNULL(psychological_sa.count, 0) } AS count_psychological_sa,
						  { fn IFNULL(psychological_sc.count, 0) } AS count_psychological_sc,
						  { fn IFNULL(psychological_ua.count, 0) } AS count_psychological_ua,
						  { fn IFNULL(psychological_uc.count, 0) } AS count_psychological_uc,
						  { fn IFNULL(posture_sa.count, 0) } AS count_posture_sa,
						  { fn IFNULL(posture_sc.count, 0) } AS count_posture_sc,
						  { fn IFNULL(posture_ua.count, 0) } AS count_posture_ua,
						  { fn IFNULL(posture_uc.count, 0) } AS count_posture_uc,
						  { fn IFNULL(substance_sa.count, 0) } AS count_substance_sa,
						  { fn IFNULL(substance_sc.count, 0) } AS count_substance_sc,
						  { fn IFNULL(substance_ua.count, 0) } AS count_substance_ua,
						  { fn IFNULL(substance_uc.count, 0) } AS count_substance_uc,
						  { fn IFNULL(hygiene_sa.count, 0) } AS count_hygiene_sa,
						  { fn IFNULL(hygiene_sc.count, 0) } AS count_hygiene_sc,
						  { fn IFNULL(hygiene_ua.count, 0) } AS count_hygiene_ua,
						  { fn IFNULL(hygiene_uc.count, 0) } AS count_hygiene_uc,
						  { fn IFNULL(house_sa.count, 0) } AS count_house_sa,
						  { fn IFNULL(house_sc.count, 0) } AS count_house_sc,
						  { fn IFNULL(house_ua.count, 0) } AS count_house_ua,
						  { fn IFNULL(house_uc.count, 0) } AS count_house_uc,
						  { fn IFNULL(standard_sa.count, 0) } AS count_standard_sa,
						  { fn IFNULL(standard_sc.count, 0) } AS count_standard_sc,
						  { fn IFNULL(standard_ua.count, 0) } AS count_standard_ua,
						  { fn IFNULL(standard_uc.count, 0) } AS count_standard_uc,
						  { fn IFNULL(spill_sa.count, 0) } AS count_spill_sa,
						  { fn IFNULL(spill_sc.count, 0) } AS count_spill_sc,
						  { fn IFNULL(spill_ua.count, 0) } AS count_spill_ua,
						  { fn IFNULL(spill_uc.count, 0) } AS count_spill_uc,
						  { fn IFNULL(waste_energy_sa.count, 0) } AS count_waste_energy_sa,
						  { fn IFNULL(waste_energy_sc.count, 0) } AS count_waste_energy_sc,
						  { fn IFNULL(waste_energy_ua.count, 0) } AS count_waste_energy_ua,
						  { fn IFNULL(waste_energy_uc.count, 0) } AS count_waste_energy_uc,
						  { fn IFNULL(containment_sa.count, 0) } AS count_containment_sa,
						  { fn IFNULL(containment_sc.count, 0) } AS count_containment_sc,
						  { fn IFNULL(containment_ua.count, 0) } AS count_containment_ua,
						  { fn IFNULL(containment_uc.count, 0) } AS count_containment_uc,
						  { fn IFNULL(absorbent_sa.count, 0) } AS count_absorbent_sa,
						  { fn IFNULL(absorbent_sc.count, 0) } AS count_absorbent_sc,
						  { fn IFNULL(absorbent_ua.count, 0) } AS count_absorbent_ua,
						  { fn IFNULL(absorbent_uc.count, 0) } AS count_absorbent_uc,
						  { fn IFNULL(hira_sa.count, 0) } AS count_hira_sa,
						  { fn IFNULL(hira_sc.count, 0) } AS count_hira_sc,
						  { fn IFNULL(hira_ua.count, 0) } AS count_hira_ua,
						  { fn IFNULL(hira_uc.count, 0) } AS count_hira_uc,
						  { fn IFNULL(ptw_sa.count, 0) } AS count_ptw_sa,
						  { fn IFNULL(ptw_sc.count, 0) } AS count_ptw_sc,
						  { fn IFNULL(ptw_ua.count, 0) } AS count_ptw_ua,
						  { fn IFNULL(ptw_uc.count, 0) } AS count_ptw_uc,
						  { fn IFNULL(sop_sa.count, 0) } AS count_sop_sa,
						  { fn IFNULL(sop_sc.count, 0) } AS count_sop_sc,
						  { fn IFNULL(sop_ua.count, 0) } AS count_sop_ua,
						  { fn IFNULL(sop_uc.count, 0) } AS count_sop_uc,
						  { fn IFNULL(msds_sa.count, 0) } AS count_msds_sa,
						  { fn IFNULL(msds_sc.count, 0) } AS count_msds_sc,
						  { fn IFNULL(msds_ua.count, 0) } AS count_msds_ua,
						  { fn IFNULL(msds_uc.count, 0) } AS count_msds_uc,
						  { fn IFNULL(emergency_sa.count, 0) } AS count_emergency_sa,
						  { fn IFNULL(emergency_sc.count, 0) } AS count_emergency_sc,
						  { fn IFNULL(emergency_ua.count, 0) } AS count_emergency_ua,
						  { fn IFNULL(emergency_uc.count, 0) } AS count_emergency_uc,
						  { fn IFNULL(certificates_sa.count, 0) } AS count_certificates_sa,
						  { fn IFNULL(certificates_sc.count, 0) } AS count_certificates_sc,
						  { fn IFNULL(certificates_ua.count, 0) } AS count_certificates_ua,
						  { fn IFNULL(certificates_uc.count, 0) } AS count_certificates_uc,
						  { fn IFNULL(ppe_sa.count, 0) } AS count_ppe_sa,
						  { fn IFNULL(ppe_sc.count, 0) } AS count_ppe_sc,
						  { fn IFNULL(ppe_ua.count, 0) } AS count_ppe_ua,
						  { fn IFNULL(ppe_uc.count, 0) } AS count_ppe_uc,
						  { fn IFNULL(hand_sa.count, 0) } AS count_hand_sa,
						  { fn IFNULL(hand_sc.count, 0) } AS count_hand_sc,
						  { fn IFNULL(hand_ua.count, 0) } AS count_hand_ua,
						  { fn IFNULL(hand_uc.count, 0) } AS count_hand_uc,
						  { fn IFNULL(mechanical_sa.count, 0) } AS count_mechanical_sa,
						  { fn IFNULL(mechanical_sc.count, 0) } AS count_mechanical_sc,
						  { fn IFNULL(mechanical_ua.count, 0) } AS count_mechanical_ua,
						  { fn IFNULL(mechanical_uc.count, 0) } AS count_mechanical_uc,
						  { fn IFNULL(electrical_sa.count, 0) } AS count_electrical_sa,
						  { fn IFNULL(electrical_sc.count, 0) } AS count_electrical_sc,
						  { fn IFNULL(electrical_ua.count, 0) } AS count_electrical_ua,
						  { fn IFNULL(electrical_uc.count, 0) } AS count_electrical_uc,
						  { fn IFNULL(vehicular_sa.count, 0) } AS count_vehicular_sa,
						  { fn IFNULL(vehicular_sc.count, 0) } AS count_vehicular_sc,
						  { fn IFNULL(vehicular_ua.count, 0) } AS count_vehicular_ua,
						  { fn IFNULL(vehicular_uc.count, 0) } AS count_vehicular_uc,
						  { fn IFNULL(substandard_sa.count, 0) } AS count_substandard_sa,
						  { fn IFNULL(substandard_sc.count, 0) } AS count_substandard_sc,
						  { fn IFNULL(substandard_ua.count, 0) } AS count_substandard_ua,
						  { fn IFNULL(substandard_uc.count, 0) } AS count_substandard_uc,
						  { fn IFNULL(h2s_sa.count, 0) } AS count_h2s_sa,
						  { fn IFNULL(h2s_sc.count, 0) } AS count_h2s_sc,
						  { fn IFNULL(h2s_ua.count, 0) } AS count_h2s_ua,
						  { fn IFNULL(h2s_uc.count, 0) } AS count_h2s_uc,
						  { fn IFNULL(workplace_health_sa.count, 0) } AS count_workplace_health_sa,
						  { fn IFNULL(workplace_health_sc.count, 0) } AS count_workplace_health_sc,
						  { fn IFNULL(workplace_health_ua.count, 0) } AS count_workplace_health_ua,
						  { fn IFNULL(workplace_health_uc.count, 0) } AS count_workplace_health_uc
FROM            (SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) AS month
                          FROM            she_observation) AS ym LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_safe AS asa, COUNT(id) AS count_accident_sa
                               FROM            she_observation AS she_observation_2
                               WHERE        (accident_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_safe) AS accident_sa ON ym.year = accident_sa.year AND 
                         ym.month = accident_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_safe AS asa, COUNT(id) AS count_accident_sc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_safe) AS accident_sc ON ym.year = accident_sc.year AND 
                         ym.month = accident_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_unsafe AS aua, COUNT(id) AS count_accident_ua
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_unsafe) AS accident_ua ON ym.year = accident_ua.year AND 
                         ym.month = accident_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_unsafe AS auc, COUNT(id) AS count_accident_uc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_unsafe) AS accident_uc ON ym.year = accident_uc.year AND ym.month = accident_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_safe) AS fire_sa ON ym.year = fire_sa.year AND ym.month = fire_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_safe) AS fire_sc ON ym.year = fire_sc.year AND 
                         ym.month = fire_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_unsafe) AS fire_ua ON ym.year = fire_ua.year AND 
                         ym.month = fire_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_unsafe) AS fire_uc ON ym.year = fire_uc.year AND ym.month = fire_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_safe) AS prevention_sa ON ym.year = prevention_sa.year AND ym.month = prevention_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_safe) AS prevention_sc ON ym.year = prevention_sc.year AND 
                         ym.month = prevention_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_unsafe) AS prevention_ua ON ym.year = prevention_ua.year AND 
                         ym.month = prevention_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_unsafe) AS prevention_uc ON ym.year = prevention_uc.year AND ym.month = prevention_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_safe) AS supervisor_sa ON ym.year = supervisor_sa.year AND ym.month = supervisor_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_safe) AS supervisor_sc ON ym.year = supervisor_sc.year AND 
                         ym.month = supervisor_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_unsafe) AS supervisor_ua ON ym.year = supervisor_ua.year AND 
                         ym.month = supervisor_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_unsafe) AS supervisor_uc ON ym.year = supervisor_uc.year AND ym.month = supervisor_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_safe) AS fit_work_sa ON ym.year = fit_work_sa.year AND ym.month = fit_work_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_safe) AS fit_work_sc ON ym.year = fit_work_sc.year AND 
                         ym.month = fit_work_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_unsafe) AS fit_work_ua ON ym.year = fit_work_ua.year AND 
                         ym.month = fit_work_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_unsafe) AS fit_work_uc ON ym.year = fit_work_uc.year AND ym.month = fit_work_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_safe) AS psychological_sa ON ym.year = psychological_sa.year AND ym.month = psychological_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_safe) AS psychological_sc ON ym.year = psychological_sc.year AND 
                         ym.month = psychological_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_unsafe) AS psychological_ua ON ym.year = psychological_ua.year AND 
                         ym.month = psychological_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_unsafe) AS psychological_uc ON ym.year = psychological_uc.year AND ym.month = psychological_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_safe) AS posture_sa ON ym.year = posture_sa.year AND ym.month = posture_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_safe) AS posture_sc ON ym.year = posture_sc.year AND 
                         ym.month = posture_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_unsafe) AS posture_ua ON ym.year = posture_ua.year AND 
                         ym.month = posture_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_unsafe) AS posture_uc ON ym.year = posture_uc.year AND ym.month = posture_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_safe) AS substance_sa ON ym.year = substance_sa.year AND ym.month = substance_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_safe) AS substance_sc ON ym.year = substance_sc.year AND 
                         ym.month = substance_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_unsafe) AS substance_ua ON ym.year = substance_ua.year AND 
                         ym.month = substance_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_unsafe) AS substance_uc ON ym.year = substance_uc.year AND ym.month = substance_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_safe) AS hygiene_sa ON ym.year = hygiene_sa.year AND ym.month = hygiene_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_safe) AS hygiene_sc ON ym.year = hygiene_sc.year AND 
                         ym.month = hygiene_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_unsafe) AS hygiene_ua ON ym.year = hygiene_ua.year AND 
                         ym.month = hygiene_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_unsafe) AS hygiene_uc ON ym.year = hygiene_uc.year AND ym.month = hygiene_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_safe) AS house_sa ON ym.year = house_sa.year AND ym.month = house_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_safe) AS house_sc ON ym.year = house_sc.year AND 
                         ym.month = house_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_unsafe) AS house_ua ON ym.year = house_ua.year AND 
                         ym.month = house_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_unsafe) AS house_uc ON ym.year = house_uc.year AND ym.month = house_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_safe) AS standard_sa ON ym.year = standard_sa.year AND ym.month = standard_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_safe) AS standard_sc ON ym.year = standard_sc.year AND 
                         ym.month = standard_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_unsafe) AS standard_ua ON ym.year = standard_ua.year AND 
                         ym.month = standard_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_unsafe) AS standard_uc ON ym.year = standard_uc.year AND ym.month = standard_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_safe) AS spill_sa ON ym.year = spill_sa.year AND ym.month = spill_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_safe) AS spill_sc ON ym.year = spill_sc.year AND 
                         ym.month = spill_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_unsafe) AS spill_ua ON ym.year = spill_ua.year AND 
                         ym.month = spill_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_unsafe) AS spill_uc ON ym.year = spill_uc.year AND ym.month = spill_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_safe) AS waste_energy_sa ON ym.year = waste_energy_sa.year AND ym.month = waste_energy_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_safe) AS waste_energy_sc ON ym.year = waste_energy_sc.year AND 
                         ym.month = waste_energy_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_unsafe) AS waste_energy_ua ON ym.year = waste_energy_ua.year AND 
                         ym.month = waste_energy_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_unsafe) AS waste_energy_uc ON ym.year = waste_energy_uc.year AND ym.month = waste_energy_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_safe) AS containment_sa ON ym.year = containment_sa.year AND ym.month = containment_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_safe) AS containment_sc ON ym.year = containment_sc.year AND 
                         ym.month = containment_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_unsafe) AS containment_ua ON ym.year = containment_ua.year AND 
                         ym.month = containment_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_unsafe) AS containment_uc ON ym.year = containment_uc.year AND ym.month = containment_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_safe) AS absorbent_sa ON ym.year = absorbent_sa.year AND ym.month = absorbent_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_safe) AS absorbent_sc ON ym.year = absorbent_sc.year AND 
                         ym.month = absorbent_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_unsafe) AS absorbent_ua ON ym.year = absorbent_ua.year AND 
                         ym.month = absorbent_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_unsafe) AS absorbent_uc ON ym.year = absorbent_uc.year AND ym.month = absorbent_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_safe) AS hira_sa ON ym.year = hira_sa.year AND ym.month = hira_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_safe) AS hira_sc ON ym.year = hira_sc.year AND 
                         ym.month = hira_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_unsafe) AS hira_ua ON ym.year = hira_ua.year AND 
                         ym.month = hira_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_unsafe) AS hira_uc ON ym.year = hira_uc.year AND ym.month = hira_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_safe) AS ptw_sa ON ym.year = ptw_sa.year AND ym.month = ptw_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_safe) AS ptw_sc ON ym.year = ptw_sc.year AND 
                         ym.month = ptw_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_unsafe) AS ptw_ua ON ym.year = ptw_ua.year AND 
                         ym.month = ptw_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_unsafe) AS ptw_uc ON ym.year = ptw_uc.year AND ym.month = ptw_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_safe) AS sop_sa ON ym.year = sop_sa.year AND ym.month = sop_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_safe) AS sop_sc ON ym.year = sop_sc.year AND 
                         ym.month = sop_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_unsafe) AS sop_ua ON ym.year = sop_ua.year AND 
                         ym.month = sop_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_unsafe) AS sop_uc ON ym.year = sop_uc.year AND ym.month = sop_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_safe) AS msds_sa ON ym.year = msds_sa.year AND ym.month = msds_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_safe) AS msds_sc ON ym.year = msds_sc.year AND 
                         ym.month = msds_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_unsafe) AS msds_ua ON ym.year = msds_ua.year AND 
                         ym.month = msds_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_unsafe) AS msds_uc ON ym.year = msds_uc.year AND ym.month = msds_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_safe) AS emergency_sa ON ym.year = emergency_sa.year AND ym.month = emergency_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_safe) AS emergency_sc ON ym.year = emergency_sc.year AND 
                         ym.month = emergency_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_unsafe) AS emergency_ua ON ym.year = emergency_ua.year AND 
                         ym.month = emergency_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_unsafe) AS emergency_uc ON ym.year = emergency_uc.year AND ym.month = emergency_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_safe) AS certificates_sa ON ym.year = certificates_sa.year AND ym.month = certificates_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_safe) AS certificates_sc ON ym.year = certificates_sc.year AND 
                         ym.month = certificates_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_unsafe) AS certificates_ua ON ym.year = certificates_ua.year AND 
                         ym.month = certificates_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_unsafe) AS certificates_uc ON ym.year = certificates_uc.year AND ym.month = certificates_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_safe) AS ppe_sa ON ym.year = ppe_sa.year AND ym.month = ppe_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_safe) AS ppe_sc ON ym.year = ppe_sc.year AND 
                         ym.month = ppe_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_unsafe) AS ppe_ua ON ym.year = ppe_ua.year AND 
                         ym.month = ppe_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_unsafe) AS ppe_uc ON ym.year = ppe_uc.year AND ym.month = ppe_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_safe) AS hand_sa ON ym.year = hand_sa.year AND ym.month = hand_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_safe) AS hand_sc ON ym.year = hand_sc.year AND 
                         ym.month = hand_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_unsafe) AS hand_ua ON ym.year = hand_ua.year AND 
                         ym.month = hand_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_unsafe) AS hand_uc ON ym.year = hand_uc.year AND ym.month = hand_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_safe) AS mechanical_sa ON ym.year = mechanical_sa.year AND ym.month = mechanical_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_safe) AS mechanical_sc ON ym.year = mechanical_sc.year AND 
                         ym.month = mechanical_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_unsafe) AS mechanical_ua ON ym.year = mechanical_ua.year AND 
                         ym.month = mechanical_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_unsafe) AS mechanical_uc ON ym.year = mechanical_uc.year AND ym.month = mechanical_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_safe) AS electrical_sa ON ym.year = electrical_sa.year AND ym.month = electrical_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_safe) AS electrical_sc ON ym.year = electrical_sc.year AND 
                         ym.month = electrical_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_unsafe) AS electrical_ua ON ym.year = electrical_ua.year AND 
                         ym.month = electrical_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_unsafe) AS electrical_uc ON ym.year = electrical_uc.year AND ym.month = electrical_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_safe) AS vehicular_sa ON ym.year = vehicular_sa.year AND ym.month = vehicular_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_safe) AS vehicular_sc ON ym.year = vehicular_sc.year AND 
                         ym.month = vehicular_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_unsafe) AS vehicular_ua ON ym.year = vehicular_ua.year AND 
                         ym.month = vehicular_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_unsafe) AS vehicular_uc ON ym.year = vehicular_uc.year AND ym.month = vehicular_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_safe) AS substandard_sa ON ym.year = substandard_sa.year AND ym.month = substandard_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_safe) AS substandard_sc ON ym.year = substandard_sc.year AND 
                         ym.month = substandard_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_unsafe) AS substandard_ua ON ym.year = substandard_ua.year AND 
                         ym.month = substandard_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_unsafe) AS substandard_uc ON ym.year = substandard_uc.year AND ym.month = substandard_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_safe) AS h2s_sa ON ym.year = h2s_sa.year AND ym.month = h2s_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_safe) AS h2s_sc ON ym.year = h2s_sc.year AND 
                         ym.month = h2s_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_unsafe) AS h2s_ua ON ym.year = h2s_ua.year AND 
                         ym.month = h2s_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_unsafe) AS h2s_uc ON ym.year = h2s_uc.year AND ym.month = h2s_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_safe) AS workplace_health_sa ON ym.year = workplace_health_sa.year AND ym.month = workplace_health_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_safe) AS workplace_health_sc ON ym.year = workplace_health_sc.year AND 
                         ym.month = workplace_health_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_unsafe) AS workplace_health_ua ON ym.year = workplace_health_ua.year AND 
                         ym.month = workplace_health_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_unsafe) AS workplace_health_uc ON ym.year = workplace_health_uc.year AND ym.month = workplace_health_uc.month 
							   where ym.year=@year and ym.month=@month
GO
/****** Object:  StoredProcedure [dbo].[observationByMonth]    Script Date: 05/30/2013 09:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[observationByMonth]
    @year varchar(4), 
    @month varchar(2)
AS 
	SELECT        ym.year, ym.month, { fn IFNULL(accident_sa.count_accident_sa, 0) } AS count_accident_sa, { fn IFNULL(accident_sc.count_accident_sc, 0) } AS count_accident_sc, 
                         { fn IFNULL(accident_ua.count_accident_ua, 0) } AS count_accident_ua, { fn IFNULL(accident_uc.count_accident_uc, 0) } AS count_accident_uc, { fn IFNULL(fire_sa.count, 0) } AS count_fire_sa, { fn IFNULL(fire_sc.count, 0) } AS count_fire_sc, { fn IFNULL(fire_ua.count, 0) } AS count_fire_ua, { fn IFNULL(fire_uc.count, 0) } AS count_fire_uc, { fn IFNULL(prevention_sa.count, 0) } AS count_prevention_sa, { fn IFNULL(prevention_sc.count, 0) } AS count_prevention_sc, { fn IFNULL(prevention_ua.count, 0) } AS count_prevention_ua, { fn IFNULL(prevention_uc.count, 0) } AS count_prevention_uc, { fn IFNULL(supervisor_sa.count, 0) } AS count_supervisor_sa, { fn IFNULL(supervisor_sc.count, 0) } AS count_supervisor_sc, { fn IFNULL(supervisor_ua.count, 0) } AS count_supervisor_ua, { fn IFNULL(supervisor_uc.count, 0) } AS count_supervisor_uc,
						  { fn IFNULL(fit_work_sa.count, 0) } AS count_fit_work_sa,
						  { fn IFNULL(fit_work_sc.count, 0) } AS count_fit_work_sc,
						  { fn IFNULL(fit_work_ua.count, 0) } AS count_fit_work_ua,
						  { fn IFNULL(fit_work_uc.count, 0) } AS count_fit_work_uc,
						  { fn IFNULL(psychological_sa.count, 0) } AS count_psychological_sa,
						  { fn IFNULL(psychological_sc.count, 0) } AS count_psychological_sc,
						  { fn IFNULL(psychological_ua.count, 0) } AS count_psychological_ua,
						  { fn IFNULL(psychological_uc.count, 0) } AS count_psychological_uc,
						  { fn IFNULL(posture_sa.count, 0) } AS count_posture_sa,
						  { fn IFNULL(posture_sc.count, 0) } AS count_posture_sc,
						  { fn IFNULL(posture_ua.count, 0) } AS count_posture_ua,
						  { fn IFNULL(posture_uc.count, 0) } AS count_posture_uc,
						  { fn IFNULL(substance_sa.count, 0) } AS count_substance_sa,
						  { fn IFNULL(substance_sc.count, 0) } AS count_substance_sc,
						  { fn IFNULL(substance_ua.count, 0) } AS count_substance_ua,
						  { fn IFNULL(substance_uc.count, 0) } AS count_substance_uc,
						  { fn IFNULL(hygiene_sa.count, 0) } AS count_hygiene_sa,
						  { fn IFNULL(hygiene_sc.count, 0) } AS count_hygiene_sc,
						  { fn IFNULL(hygiene_ua.count, 0) } AS count_hygiene_ua,
						  { fn IFNULL(hygiene_uc.count, 0) } AS count_hygiene_uc,
						  { fn IFNULL(house_sa.count, 0) } AS count_house_sa,
						  { fn IFNULL(house_sc.count, 0) } AS count_house_sc,
						  { fn IFNULL(house_ua.count, 0) } AS count_house_ua,
						  { fn IFNULL(house_uc.count, 0) } AS count_house_uc,
						  { fn IFNULL(standard_sa.count, 0) } AS count_standard_sa,
						  { fn IFNULL(standard_sc.count, 0) } AS count_standard_sc,
						  { fn IFNULL(standard_ua.count, 0) } AS count_standard_ua,
						  { fn IFNULL(standard_uc.count, 0) } AS count_standard_uc,
						  { fn IFNULL(spill_sa.count, 0) } AS count_spill_sa,
						  { fn IFNULL(spill_sc.count, 0) } AS count_spill_sc,
						  { fn IFNULL(spill_ua.count, 0) } AS count_spill_ua,
						  { fn IFNULL(spill_uc.count, 0) } AS count_spill_uc,
						  { fn IFNULL(waste_energy_sa.count, 0) } AS count_waste_energy_sa,
						  { fn IFNULL(waste_energy_sc.count, 0) } AS count_waste_energy_sc,
						  { fn IFNULL(waste_energy_ua.count, 0) } AS count_waste_energy_ua,
						  { fn IFNULL(waste_energy_uc.count, 0) } AS count_waste_energy_uc,
						  { fn IFNULL(containment_sa.count, 0) } AS count_containment_sa,
						  { fn IFNULL(containment_sc.count, 0) } AS count_containment_sc,
						  { fn IFNULL(containment_ua.count, 0) } AS count_containment_ua,
						  { fn IFNULL(containment_uc.count, 0) } AS count_containment_uc,
						  { fn IFNULL(absorbent_sa.count, 0) } AS count_absorbent_sa,
						  { fn IFNULL(absorbent_sc.count, 0) } AS count_absorbent_sc,
						  { fn IFNULL(absorbent_ua.count, 0) } AS count_absorbent_ua,
						  { fn IFNULL(absorbent_uc.count, 0) } AS count_absorbent_uc,
						  { fn IFNULL(hira_sa.count, 0) } AS count_hira_sa,
						  { fn IFNULL(hira_sc.count, 0) } AS count_hira_sc,
						  { fn IFNULL(hira_ua.count, 0) } AS count_hira_ua,
						  { fn IFNULL(hira_uc.count, 0) } AS count_hira_uc,
						  { fn IFNULL(ptw_sa.count, 0) } AS count_ptw_sa,
						  { fn IFNULL(ptw_sc.count, 0) } AS count_ptw_sc,
						  { fn IFNULL(ptw_ua.count, 0) } AS count_ptw_ua,
						  { fn IFNULL(ptw_uc.count, 0) } AS count_ptw_uc,
						  { fn IFNULL(sop_sa.count, 0) } AS count_sop_sa,
						  { fn IFNULL(sop_sc.count, 0) } AS count_sop_sc,
						  { fn IFNULL(sop_ua.count, 0) } AS count_sop_ua,
						  { fn IFNULL(sop_uc.count, 0) } AS count_sop_uc,
						  { fn IFNULL(msds_sa.count, 0) } AS count_msds_sa,
						  { fn IFNULL(msds_sc.count, 0) } AS count_msds_sc,
						  { fn IFNULL(msds_ua.count, 0) } AS count_msds_ua,
						  { fn IFNULL(msds_uc.count, 0) } AS count_msds_uc,
						  { fn IFNULL(emergency_sa.count, 0) } AS count_emergency_sa,
						  { fn IFNULL(emergency_sc.count, 0) } AS count_emergency_sc,
						  { fn IFNULL(emergency_ua.count, 0) } AS count_emergency_ua,
						  { fn IFNULL(emergency_uc.count, 0) } AS count_emergency_uc,
						  { fn IFNULL(certificates_sa.count, 0) } AS count_certificates_sa,
						  { fn IFNULL(certificates_sc.count, 0) } AS count_certificates_sc,
						  { fn IFNULL(certificates_ua.count, 0) } AS count_certificates_ua,
						  { fn IFNULL(certificates_uc.count, 0) } AS count_certificates_uc,
						  { fn IFNULL(ppe_sa.count, 0) } AS count_ppe_sa,
						  { fn IFNULL(ppe_sc.count, 0) } AS count_ppe_sc,
						  { fn IFNULL(ppe_ua.count, 0) } AS count_ppe_ua,
						  { fn IFNULL(ppe_uc.count, 0) } AS count_ppe_uc,
						  { fn IFNULL(hand_sa.count, 0) } AS count_hand_sa,
						  { fn IFNULL(hand_sc.count, 0) } AS count_hand_sc,
						  { fn IFNULL(hand_ua.count, 0) } AS count_hand_ua,
						  { fn IFNULL(hand_uc.count, 0) } AS count_hand_uc,
						  { fn IFNULL(mechanical_sa.count, 0) } AS count_mechanical_sa,
						  { fn IFNULL(mechanical_sc.count, 0) } AS count_mechanical_sc,
						  { fn IFNULL(mechanical_ua.count, 0) } AS count_mechanical_ua,
						  { fn IFNULL(mechanical_uc.count, 0) } AS count_mechanical_uc,
						  { fn IFNULL(electrical_sa.count, 0) } AS count_electrical_sa,
						  { fn IFNULL(electrical_sc.count, 0) } AS count_electrical_sc,
						  { fn IFNULL(electrical_ua.count, 0) } AS count_electrical_ua,
						  { fn IFNULL(electrical_uc.count, 0) } AS count_electrical_uc,
						  { fn IFNULL(vehicular_sa.count, 0) } AS count_vehicular_sa,
						  { fn IFNULL(vehicular_sc.count, 0) } AS count_vehicular_sc,
						  { fn IFNULL(vehicular_ua.count, 0) } AS count_vehicular_ua,
						  { fn IFNULL(vehicular_uc.count, 0) } AS count_vehicular_uc,
						  { fn IFNULL(substandard_sa.count, 0) } AS count_substandard_sa,
						  { fn IFNULL(substandard_sc.count, 0) } AS count_substandard_sc,
						  { fn IFNULL(substandard_ua.count, 0) } AS count_substandard_ua,
						  { fn IFNULL(substandard_uc.count, 0) } AS count_substandard_uc,
						  { fn IFNULL(h2s_sa.count, 0) } AS count_h2s_sa,
						  { fn IFNULL(h2s_sc.count, 0) } AS count_h2s_sc,
						  { fn IFNULL(h2s_ua.count, 0) } AS count_h2s_ua,
						  { fn IFNULL(h2s_uc.count, 0) } AS count_h2s_uc,
						  { fn IFNULL(workplace_health_sa.count, 0) } AS count_workplace_health_sa,
						  { fn IFNULL(workplace_health_sc.count, 0) } AS count_workplace_health_sc,
						  { fn IFNULL(workplace_health_ua.count, 0) } AS count_workplace_health_ua,
						  { fn IFNULL(workplace_health_uc.count, 0) } AS count_workplace_health_uc
FROM            (SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) AS month
                          FROM            she_observation) AS ym LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_safe AS asa, COUNT(id) AS count_accident_sa
                               FROM            she_observation AS she_observation_2
                               WHERE        (accident_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_safe) AS accident_sa ON ym.year = accident_sa.year AND 
                         ym.month = accident_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_safe AS asa, COUNT(id) AS count_accident_sc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_safe) AS accident_sc ON ym.year = accident_sc.year AND 
                         ym.month = accident_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_unsafe AS aua, COUNT(id) AS count_accident_ua
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_unsafe) AS accident_ua ON ym.year = accident_ua.year AND 
                         ym.month = accident_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_unsafe AS auc, COUNT(id) AS count_accident_uc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_unsafe) AS accident_uc ON ym.year = accident_uc.year AND ym.month = accident_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_safe) AS fire_sa ON ym.year = fire_sa.year AND ym.month = fire_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_safe) AS fire_sc ON ym.year = fire_sc.year AND 
                         ym.month = fire_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_unsafe) AS fire_ua ON ym.year = fire_ua.year AND 
                         ym.month = fire_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_unsafe) AS fire_uc ON ym.year = fire_uc.year AND ym.month = fire_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_safe) AS prevention_sa ON ym.year = prevention_sa.year AND ym.month = prevention_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_safe) AS prevention_sc ON ym.year = prevention_sc.year AND 
                         ym.month = prevention_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_unsafe) AS prevention_ua ON ym.year = prevention_ua.year AND 
                         ym.month = prevention_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_unsafe) AS prevention_uc ON ym.year = prevention_uc.year AND ym.month = prevention_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_safe) AS supervisor_sa ON ym.year = supervisor_sa.year AND ym.month = supervisor_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_safe) AS supervisor_sc ON ym.year = supervisor_sc.year AND 
                         ym.month = supervisor_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_unsafe) AS supervisor_ua ON ym.year = supervisor_ua.year AND 
                         ym.month = supervisor_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_unsafe) AS supervisor_uc ON ym.year = supervisor_uc.year AND ym.month = supervisor_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_safe) AS fit_work_sa ON ym.year = fit_work_sa.year AND ym.month = fit_work_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_safe) AS fit_work_sc ON ym.year = fit_work_sc.year AND 
                         ym.month = fit_work_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_unsafe) AS fit_work_ua ON ym.year = fit_work_ua.year AND 
                         ym.month = fit_work_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_unsafe) AS fit_work_uc ON ym.year = fit_work_uc.year AND ym.month = fit_work_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_safe) AS psychological_sa ON ym.year = psychological_sa.year AND ym.month = psychological_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_safe) AS psychological_sc ON ym.year = psychological_sc.year AND 
                         ym.month = psychological_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_unsafe) AS psychological_ua ON ym.year = psychological_ua.year AND 
                         ym.month = psychological_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_unsafe) AS psychological_uc ON ym.year = psychological_uc.year AND ym.month = psychological_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_safe) AS posture_sa ON ym.year = posture_sa.year AND ym.month = posture_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_safe) AS posture_sc ON ym.year = posture_sc.year AND 
                         ym.month = posture_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_unsafe) AS posture_ua ON ym.year = posture_ua.year AND 
                         ym.month = posture_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_unsafe) AS posture_uc ON ym.year = posture_uc.year AND ym.month = posture_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_safe) AS substance_sa ON ym.year = substance_sa.year AND ym.month = substance_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_safe) AS substance_sc ON ym.year = substance_sc.year AND 
                         ym.month = substance_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_unsafe) AS substance_ua ON ym.year = substance_ua.year AND 
                         ym.month = substance_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_unsafe) AS substance_uc ON ym.year = substance_uc.year AND ym.month = substance_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_safe) AS hygiene_sa ON ym.year = hygiene_sa.year AND ym.month = hygiene_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_safe) AS hygiene_sc ON ym.year = hygiene_sc.year AND 
                         ym.month = hygiene_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_unsafe) AS hygiene_ua ON ym.year = hygiene_ua.year AND 
                         ym.month = hygiene_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_unsafe) AS hygiene_uc ON ym.year = hygiene_uc.year AND ym.month = hygiene_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_safe) AS house_sa ON ym.year = house_sa.year AND ym.month = house_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_safe) AS house_sc ON ym.year = house_sc.year AND 
                         ym.month = house_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_unsafe) AS house_ua ON ym.year = house_ua.year AND 
                         ym.month = house_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_unsafe) AS house_uc ON ym.year = house_uc.year AND ym.month = house_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_safe) AS standard_sa ON ym.year = standard_sa.year AND ym.month = standard_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_safe) AS standard_sc ON ym.year = standard_sc.year AND 
                         ym.month = standard_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_unsafe) AS standard_ua ON ym.year = standard_ua.year AND 
                         ym.month = standard_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_unsafe) AS standard_uc ON ym.year = standard_uc.year AND ym.month = standard_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_safe) AS spill_sa ON ym.year = spill_sa.year AND ym.month = spill_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_safe) AS spill_sc ON ym.year = spill_sc.year AND 
                         ym.month = spill_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_unsafe) AS spill_ua ON ym.year = spill_ua.year AND 
                         ym.month = spill_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_unsafe) AS spill_uc ON ym.year = spill_uc.year AND ym.month = spill_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_safe) AS waste_energy_sa ON ym.year = waste_energy_sa.year AND ym.month = waste_energy_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_safe) AS waste_energy_sc ON ym.year = waste_energy_sc.year AND 
                         ym.month = waste_energy_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_unsafe) AS waste_energy_ua ON ym.year = waste_energy_ua.year AND 
                         ym.month = waste_energy_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_unsafe) AS waste_energy_uc ON ym.year = waste_energy_uc.year AND ym.month = waste_energy_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_safe) AS containment_sa ON ym.year = containment_sa.year AND ym.month = containment_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_safe) AS containment_sc ON ym.year = containment_sc.year AND 
                         ym.month = containment_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_unsafe) AS containment_ua ON ym.year = containment_ua.year AND 
                         ym.month = containment_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_unsafe) AS containment_uc ON ym.year = containment_uc.year AND ym.month = containment_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_safe) AS absorbent_sa ON ym.year = absorbent_sa.year AND ym.month = absorbent_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_safe) AS absorbent_sc ON ym.year = absorbent_sc.year AND 
                         ym.month = absorbent_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_unsafe) AS absorbent_ua ON ym.year = absorbent_ua.year AND 
                         ym.month = absorbent_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_unsafe) AS absorbent_uc ON ym.year = absorbent_uc.year AND ym.month = absorbent_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_safe) AS hira_sa ON ym.year = hira_sa.year AND ym.month = hira_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_safe) AS hira_sc ON ym.year = hira_sc.year AND 
                         ym.month = hira_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_unsafe) AS hira_ua ON ym.year = hira_ua.year AND 
                         ym.month = hira_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_unsafe) AS hira_uc ON ym.year = hira_uc.year AND ym.month = hira_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_safe) AS ptw_sa ON ym.year = ptw_sa.year AND ym.month = ptw_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_safe) AS ptw_sc ON ym.year = ptw_sc.year AND 
                         ym.month = ptw_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_unsafe) AS ptw_ua ON ym.year = ptw_ua.year AND 
                         ym.month = ptw_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_unsafe) AS ptw_uc ON ym.year = ptw_uc.year AND ym.month = ptw_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_safe) AS sop_sa ON ym.year = sop_sa.year AND ym.month = sop_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_safe) AS sop_sc ON ym.year = sop_sc.year AND 
                         ym.month = sop_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_unsafe) AS sop_ua ON ym.year = sop_ua.year AND 
                         ym.month = sop_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_unsafe) AS sop_uc ON ym.year = sop_uc.year AND ym.month = sop_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_safe) AS msds_sa ON ym.year = msds_sa.year AND ym.month = msds_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_safe) AS msds_sc ON ym.year = msds_sc.year AND 
                         ym.month = msds_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_unsafe) AS msds_ua ON ym.year = msds_ua.year AND 
                         ym.month = msds_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_unsafe) AS msds_uc ON ym.year = msds_uc.year AND ym.month = msds_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_safe) AS emergency_sa ON ym.year = emergency_sa.year AND ym.month = emergency_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_safe) AS emergency_sc ON ym.year = emergency_sc.year AND 
                         ym.month = emergency_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_unsafe) AS emergency_ua ON ym.year = emergency_ua.year AND 
                         ym.month = emergency_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_unsafe) AS emergency_uc ON ym.year = emergency_uc.year AND ym.month = emergency_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_safe) AS certificates_sa ON ym.year = certificates_sa.year AND ym.month = certificates_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_safe) AS certificates_sc ON ym.year = certificates_sc.year AND 
                         ym.month = certificates_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_unsafe) AS certificates_ua ON ym.year = certificates_ua.year AND 
                         ym.month = certificates_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_unsafe) AS certificates_uc ON ym.year = certificates_uc.year AND ym.month = certificates_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_safe) AS ppe_sa ON ym.year = ppe_sa.year AND ym.month = ppe_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_safe) AS ppe_sc ON ym.year = ppe_sc.year AND 
                         ym.month = ppe_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_unsafe) AS ppe_ua ON ym.year = ppe_ua.year AND 
                         ym.month = ppe_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_unsafe) AS ppe_uc ON ym.year = ppe_uc.year AND ym.month = ppe_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_safe) AS hand_sa ON ym.year = hand_sa.year AND ym.month = hand_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_safe) AS hand_sc ON ym.year = hand_sc.year AND 
                         ym.month = hand_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_unsafe) AS hand_ua ON ym.year = hand_ua.year AND 
                         ym.month = hand_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_unsafe) AS hand_uc ON ym.year = hand_uc.year AND ym.month = hand_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_safe) AS mechanical_sa ON ym.year = mechanical_sa.year AND ym.month = mechanical_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_safe) AS mechanical_sc ON ym.year = mechanical_sc.year AND 
                         ym.month = mechanical_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_unsafe) AS mechanical_ua ON ym.year = mechanical_ua.year AND 
                         ym.month = mechanical_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_unsafe) AS mechanical_uc ON ym.year = mechanical_uc.year AND ym.month = mechanical_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_safe) AS electrical_sa ON ym.year = electrical_sa.year AND ym.month = electrical_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_safe) AS electrical_sc ON ym.year = electrical_sc.year AND 
                         ym.month = electrical_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_unsafe) AS electrical_ua ON ym.year = electrical_ua.year AND 
                         ym.month = electrical_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_unsafe) AS electrical_uc ON ym.year = electrical_uc.year AND ym.month = electrical_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_safe) AS vehicular_sa ON ym.year = vehicular_sa.year AND ym.month = vehicular_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_safe) AS vehicular_sc ON ym.year = vehicular_sc.year AND 
                         ym.month = vehicular_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_unsafe) AS vehicular_ua ON ym.year = vehicular_ua.year AND 
                         ym.month = vehicular_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_unsafe) AS vehicular_uc ON ym.year = vehicular_uc.year AND ym.month = vehicular_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_safe) AS substandard_sa ON ym.year = substandard_sa.year AND ym.month = substandard_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_safe) AS substandard_sc ON ym.year = substandard_sc.year AND 
                         ym.month = substandard_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_unsafe) AS substandard_ua ON ym.year = substandard_ua.year AND 
                         ym.month = substandard_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_unsafe) AS substandard_uc ON ym.year = substandard_uc.year AND ym.month = substandard_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_safe) AS h2s_sa ON ym.year = h2s_sa.year AND ym.month = h2s_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_safe) AS h2s_sc ON ym.year = h2s_sc.year AND 
                         ym.month = h2s_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_unsafe) AS h2s_ua ON ym.year = h2s_ua.year AND 
                         ym.month = h2s_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_unsafe) AS h2s_uc ON ym.year = h2s_uc.year AND ym.month = h2s_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_safe) AS workplace_health_sa ON ym.year = workplace_health_sa.year AND ym.month = workplace_health_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_safe) AS workplace_health_sc ON ym.year = workplace_health_sc.year AND 
                         ym.month = workplace_health_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_unsafe) AS workplace_health_ua ON ym.year = workplace_health_ua.year AND 
                         ym.month = workplace_health_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_unsafe) AS workplace_health_uc ON ym.year = workplace_health_uc.year AND ym.month = workplace_health_uc.month 
							   where ym.year=@year and ym.month=@month
GO
/****** Object:  Table [dbo].[daily_log_maintainence]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_maintainence](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_daily_log] [int] NULL,
	[wo_number] [varchar](255) NULL,
	[department] [varchar](255) NULL,
	[work_to_be_performed] [varchar](255) NULL,
	[work_status] [tinyint] NULL,
	[time] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_maintainence] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_last_plant_status]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_last_plant_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_daily_log] [int] NULL,
	[description] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_last_plant_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[observationSummary3]    Script Date: 05/30/2013 09:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[observationSummary3] (
    @year varchar(4)
)
AS 
BEGIN
	SELECT				{ fn IFNULL(month1.count_accident_ua, 0) } AS count_accident_ua_1, 
						{ fn IFNULL(month1.count_accident_uc, 0) } AS count_accident_uc_1, 
						{ fn IFNULL(month1.count_accident_sa, 0) } AS count_accident_sa_1,
						{ fn IFNULL(month1.count_accident_sc, 0) } AS count_accident_sc_1, 
						{ fn IFNULL(month1.count_fire_ua, 0) } AS count_fire_ua_1, 
						{ fn IFNULL(month1.count_fire_uc, 0) } AS count_fire_uc_1, 
						{ fn IFNULL(month1.count_fire_sa, 0) } AS count_fire_sa_1,
						{ fn IFNULL(month1.count_fire_sc, 0) } AS count_fire_sc_1, 
						{ fn IFNULL(month1.count_prevention_ua, 0) } AS count_prevention_ua_1, 
						{ fn IFNULL(month1.count_prevention_uc, 0) } AS count_prevention_uc_1, 
						{ fn IFNULL(month1.count_prevention_sa, 0) } AS count_prevention_sa_1,
						{ fn IFNULL(month1.count_prevention_sc, 0) } AS count_prevention_sc_1, 
						{ fn IFNULL(month1.count_supervisor_ua, 0) } AS count_supervisor_ua_1, 
						{ fn IFNULL(month1.count_supervisor_uc, 0) } AS count_supervisor_uc_1, 
						{ fn IFNULL(month1.count_supervisor_sa, 0) } AS count_supervisor_sa_1,
						{ fn IFNULL(month1.count_supervisor_sc, 0) } AS count_supervisor_sc_1, 
						{ fn IFNULL(month1.count_fit_work_ua, 0) } AS count_fit_work_ua_1, 
						{ fn IFNULL(month1.count_fit_work_uc, 0) } AS count_fit_work_uc_1, 
						{ fn IFNULL(month1.count_fit_work_sa, 0) } AS count_fit_work_sa_1,
						{ fn IFNULL(month1.count_fit_work_sc, 0) } AS count_fit_work_sc_1, 
						{ fn IFNULL(month1.count_psychological_ua, 0) } AS count_psychological_ua_1, 
						{ fn IFNULL(month1.count_psychological_uc, 0) } AS count_psychological_uc_1, 
						{ fn IFNULL(month1.count_psychological_sa, 0) } AS count_psychological_sa_1,
						{ fn IFNULL(month1.count_psychological_sc, 0) } AS count_psychological_sc_1, 
						{ fn IFNULL(month1.count_posture_ua, 0) } AS count_posture_ua_1, 
						{ fn IFNULL(month1.count_posture_uc, 0) } AS count_posture_uc_1, 
						{ fn IFNULL(month1.count_posture_sa, 0) } AS count_posture_sa_1,
						{ fn IFNULL(month1.count_posture_sc, 0) } AS count_posture_sc_1, 
						{ fn IFNULL(month1.count_substance_ua, 0) } AS count_substance_ua_1, 
						{ fn IFNULL(month1.count_substance_uc, 0) } AS count_substance_uc_1, 
						{ fn IFNULL(month1.count_substance_sa, 0) } AS count_substance_sa_1,
						{ fn IFNULL(month1.count_substance_sc, 0) } AS count_substance_sc_1, 
						{ fn IFNULL(month1.count_hygiene_ua, 0) } AS count_hygiene_ua_1, 
						{ fn IFNULL(month1.count_hygiene_uc, 0) } AS count_hygiene_uc_1, 
						{ fn IFNULL(month1.count_hygiene_sa, 0) } AS count_hygiene_sa_1,
						{ fn IFNULL(month1.count_hygiene_sc, 0) } AS count_hygiene_sc_1, 
						{ fn IFNULL(month1.count_house_ua, 0) } AS count_house_ua_1, 
						{ fn IFNULL(month1.count_house_uc, 0) } AS count_house_uc_1, 
						{ fn IFNULL(month1.count_house_sa, 0) } AS count_house_sa_1,
						{ fn IFNULL(month1.count_house_sc, 0) } AS count_house_sc_1, 
						{ fn IFNULL(month1.count_standard_ua, 0) } AS count_standard_ua_1, 
						{ fn IFNULL(month1.count_standard_uc, 0) } AS count_standard_uc_1, 
						{ fn IFNULL(month1.count_standard_sa, 0) } AS count_standard_sa_1,
						{ fn IFNULL(month1.count_standard_sc, 0) } AS count_standard_sc_1, 
						{ fn IFNULL(month1.count_spill_ua, 0) } AS count_spill_ua_1, 
						{ fn IFNULL(month1.count_spill_uc, 0) } AS count_spill_uc_1, 
						{ fn IFNULL(month1.count_spill_sa, 0) } AS count_spill_sa_1,
						{ fn IFNULL(month1.count_spill_sc, 0) } AS count_spill_sc_1, 
						{ fn IFNULL(month1.count_waste_energy_ua, 0) } AS count_waste_energy_ua_1, 
						{ fn IFNULL(month1.count_waste_energy_uc, 0) } AS count_waste_energy_uc_1, 
						{ fn IFNULL(month1.count_waste_energy_sa, 0) } AS count_waste_energy_sa_1,
						{ fn IFNULL(month1.count_waste_energy_sc, 0) } AS count_waste_energy_sc_1, 
						{ fn IFNULL(month1.count_containment_ua, 0) } AS count_containment_ua_1, 
						{ fn IFNULL(month1.count_containment_uc, 0) } AS count_containment_uc_1, 
						{ fn IFNULL(month1.count_containment_sa, 0) } AS count_containment_sa_1,
						{ fn IFNULL(month1.count_containment_sc, 0) } AS count_containment_sc_1, 
						{ fn IFNULL(month1.count_absorbent_ua, 0) } AS count_absorbent_ua_1, 
						{ fn IFNULL(month1.count_absorbent_uc, 0) } AS count_absorbent_uc_1, 
						{ fn IFNULL(month1.count_absorbent_sa, 0) } AS count_absorbent_sa_1,
						{ fn IFNULL(month1.count_absorbent_sc, 0) } AS count_absorbent_sc_1, 
						{ fn IFNULL(month1.count_hira_ua, 0) } AS count_hira_ua_1, 
						{ fn IFNULL(month1.count_hira_uc, 0) } AS count_hira_uc_1, 
						{ fn IFNULL(month1.count_hira_sa, 0) } AS count_hira_sa_1,
						{ fn IFNULL(month1.count_hira_sc, 0) } AS count_hira_sc_1, 
						{ fn IFNULL(month1.count_ptw_ua, 0) } AS count_ptw_ua_1, 
						{ fn IFNULL(month1.count_ptw_uc, 0) } AS count_ptw_uc_1, 
						{ fn IFNULL(month1.count_ptw_sa, 0) } AS count_ptw_sa_1,
						{ fn IFNULL(month1.count_ptw_sc, 0) } AS count_ptw_sc_1, 
						{ fn IFNULL(month1.count_sop_ua, 0) } AS count_sop_ua_1, 
						{ fn IFNULL(month1.count_sop_uc, 0) } AS count_sop_uc_1, 
						{ fn IFNULL(month1.count_sop_sa, 0) } AS count_sop_sa_1,
						{ fn IFNULL(month1.count_sop_sc, 0) } AS count_sop_sc_1, 
						{ fn IFNULL(month1.count_msds_ua, 0) } AS count_msds_ua_1, 
						{ fn IFNULL(month1.count_msds_uc, 0) } AS count_msds_uc_1, 
						{ fn IFNULL(month1.count_msds_sa, 0) } AS count_msds_sa_1,
						{ fn IFNULL(month1.count_msds_sc, 0) } AS count_msds_sc_1, 
						{ fn IFNULL(month1.count_emergency_ua, 0) } AS count_emergency_ua_1, 
						{ fn IFNULL(month1.count_emergency_uc, 0) } AS count_emergency_uc_1, 
						{ fn IFNULL(month1.count_emergency_sa, 0) } AS count_emergency_sa_1,
						{ fn IFNULL(month1.count_emergency_sc, 0) } AS count_emergency_sc_1, 
						{ fn IFNULL(month1.count_certificates_ua, 0) } AS count_certificates_ua_1, 
						{ fn IFNULL(month1.count_certificates_uc, 0) } AS count_certificates_uc_1, 
						{ fn IFNULL(month1.count_certificates_sa, 0) } AS count_certificates_sa_1,
						{ fn IFNULL(month1.count_certificates_sc, 0) } AS count_certificates_sc_1, 
						{ fn IFNULL(month1.count_ppe_ua, 0) } AS count_ppe_ua_1, 
						{ fn IFNULL(month1.count_ppe_uc, 0) } AS count_ppe_uc_1, 
						{ fn IFNULL(month1.count_ppe_sa, 0) } AS count_ppe_sa_1,
						{ fn IFNULL(month1.count_ppe_sc, 0) } AS count_ppe_sc_1, 
						{ fn IFNULL(month1.count_hand_ua, 0) } AS count_hand_ua_1, 
						{ fn IFNULL(month1.count_hand_uc, 0) } AS count_hand_uc_1, 
						{ fn IFNULL(month1.count_hand_sa, 0) } AS count_hand_sa_1,
						{ fn IFNULL(month1.count_hand_sc, 0) } AS count_hand_sc_1, 
						{ fn IFNULL(month1.count_mechanical_ua, 0) } AS count_mechanical_ua_1, 
						{ fn IFNULL(month1.count_mechanical_uc, 0) } AS count_mechanical_uc_1, 
						{ fn IFNULL(month1.count_mechanical_sa, 0) } AS count_mechanical_sa_1,
						{ fn IFNULL(month1.count_mechanical_sc, 0) } AS count_mechanical_sc_1, 
						{ fn IFNULL(month1.count_electrical_ua, 0) } AS count_electrical_ua_1, 
						{ fn IFNULL(month1.count_electrical_uc, 0) } AS count_electrical_uc_1, 
						{ fn IFNULL(month1.count_electrical_sa, 0) } AS count_electrical_sa_1,
						{ fn IFNULL(month1.count_electrical_sc, 0) } AS count_electrical_sc_1, 
						{ fn IFNULL(month1.count_vehicular_ua, 0) } AS count_vehicular_ua_1, 
						{ fn IFNULL(month1.count_vehicular_uc, 0) } AS count_vehicular_uc_1, 
						{ fn IFNULL(month1.count_vehicular_sa, 0) } AS count_vehicular_sa_1,
						{ fn IFNULL(month1.count_vehicular_sc, 0) } AS count_vehicular_sc_1, 
						{ fn IFNULL(month1.count_substandard_ua, 0) } AS count_substandard_ua_1, 
						{ fn IFNULL(month1.count_substandard_uc, 0) } AS count_substandard_uc_1, 
						{ fn IFNULL(month1.count_substandard_sa, 0) } AS count_substandard_sa_1,
						{ fn IFNULL(month1.count_substandard_sc, 0) } AS count_substandard_sc_1, 
						{ fn IFNULL(month1.count_h2s_ua, 0) } AS count_h2s_ua_1, 
						{ fn IFNULL(month1.count_h2s_uc, 0) } AS count_h2s_uc_1, 
						{ fn IFNULL(month1.count_h2s_sa, 0) } AS count_h2s_sa_1,
						{ fn IFNULL(month1.count_h2s_sc, 0) } AS count_h2s_sc_1, 
						{ fn IFNULL(month1.count_workplace_health_ua, 0) } AS count_workplace_health_ua_1, 
						{ fn IFNULL(month1.count_workplace_health_uc, 0) } AS count_workplace_health_uc_1, 
						{ fn IFNULL(month1.count_workplace_health_sa, 0) } AS count_workplace_health_sa_1,
						{ fn IFNULL(month1.count_workplace_health_sc, 0) } AS count_workplace_health_sc_1,
						{ fn IFNULL(month2.count_accident_ua, 0) } AS count_accident_ua_2, 
						{ fn IFNULL(month2.count_accident_uc, 0) } AS count_accident_uc_2, 
						{ fn IFNULL(month2.count_accident_sa, 0) } AS count_accident_sa_2,
						{ fn IFNULL(month2.count_accident_sc, 0) } AS count_accident_sc_2, 
						{ fn IFNULL(month2.count_fire_ua, 0) } AS count_fire_ua_2, 
						{ fn IFNULL(month2.count_fire_uc, 0) } AS count_fire_uc_2, 
						{ fn IFNULL(month2.count_fire_sa, 0) } AS count_fire_sa_2,
						{ fn IFNULL(month2.count_fire_sc, 0) } AS count_fire_sc_2, 
						{ fn IFNULL(month2.count_prevention_ua, 0) } AS count_prevention_ua_2, 
						{ fn IFNULL(month2.count_prevention_uc, 0) } AS count_prevention_uc_2, 
						{ fn IFNULL(month2.count_prevention_sa, 0) } AS count_prevention_sa_2,
						{ fn IFNULL(month2.count_prevention_sc, 0) } AS count_prevention_sc_2, 
						{ fn IFNULL(month2.count_supervisor_ua, 0) } AS count_supervisor_ua_2, 
						{ fn IFNULL(month2.count_supervisor_uc, 0) } AS count_supervisor_uc_2, 
						{ fn IFNULL(month2.count_supervisor_sa, 0) } AS count_supervisor_sa_2,
						{ fn IFNULL(month2.count_supervisor_sc, 0) } AS count_supervisor_sc_2, 
						{ fn IFNULL(month2.count_fit_work_ua, 0) } AS count_fit_work_ua_2, 
						{ fn IFNULL(month2.count_fit_work_uc, 0) } AS count_fit_work_uc_2, 
						{ fn IFNULL(month2.count_fit_work_sa, 0) } AS count_fit_work_sa_2,
						{ fn IFNULL(month2.count_fit_work_sc, 0) } AS count_fit_work_sc_2, 
						{ fn IFNULL(month2.count_psychological_ua, 0) } AS count_psychological_ua_2, 
						{ fn IFNULL(month2.count_psychological_uc, 0) } AS count_psychological_uc_2, 
						{ fn IFNULL(month2.count_psychological_sa, 0) } AS count_psychological_sa_2,
						{ fn IFNULL(month2.count_psychological_sc, 0) } AS count_psychological_sc_2, 
						{ fn IFNULL(month2.count_posture_ua, 0) } AS count_posture_ua_2, 
						{ fn IFNULL(month2.count_posture_uc, 0) } AS count_posture_uc_2, 
						{ fn IFNULL(month2.count_posture_sa, 0) } AS count_posture_sa_2,
						{ fn IFNULL(month2.count_posture_sc, 0) } AS count_posture_sc_2, 
						{ fn IFNULL(month2.count_substance_ua, 0) } AS count_substance_ua_2, 
						{ fn IFNULL(month2.count_substance_uc, 0) } AS count_substance_uc_2, 
						{ fn IFNULL(month2.count_substance_sa, 0) } AS count_substance_sa_2,
						{ fn IFNULL(month2.count_substance_sc, 0) } AS count_substance_sc_2, 
						{ fn IFNULL(month2.count_hygiene_ua, 0) } AS count_hygiene_ua_2, 
						{ fn IFNULL(month2.count_hygiene_uc, 0) } AS count_hygiene_uc_2, 
						{ fn IFNULL(month2.count_hygiene_sa, 0) } AS count_hygiene_sa_2,
						{ fn IFNULL(month2.count_hygiene_sc, 0) } AS count_hygiene_sc_2, 
						{ fn IFNULL(month2.count_house_ua, 0) } AS count_house_ua_2, 
						{ fn IFNULL(month2.count_house_uc, 0) } AS count_house_uc_2, 
						{ fn IFNULL(month2.count_house_sa, 0) } AS count_house_sa_2,
						{ fn IFNULL(month2.count_house_sc, 0) } AS count_house_sc_2, 
						{ fn IFNULL(month2.count_standard_ua, 0) } AS count_standard_ua_2, 
						{ fn IFNULL(month2.count_standard_uc, 0) } AS count_standard_uc_2, 
						{ fn IFNULL(month2.count_standard_sa, 0) } AS count_standard_sa_2,
						{ fn IFNULL(month2.count_standard_sc, 0) } AS count_standard_sc_2, 
						{ fn IFNULL(month2.count_spill_ua, 0) } AS count_spill_ua_2, 
						{ fn IFNULL(month2.count_spill_uc, 0) } AS count_spill_uc_2, 
						{ fn IFNULL(month2.count_spill_sa, 0) } AS count_spill_sa_2,
						{ fn IFNULL(month2.count_spill_sc, 0) } AS count_spill_sc_2, 
						{ fn IFNULL(month2.count_waste_energy_ua, 0) } AS count_waste_energy_ua_2, 
						{ fn IFNULL(month2.count_waste_energy_uc, 0) } AS count_waste_energy_uc_2, 
						{ fn IFNULL(month2.count_waste_energy_sa, 0) } AS count_waste_energy_sa_2,
						{ fn IFNULL(month2.count_waste_energy_sc, 0) } AS count_waste_energy_sc_2, 
						{ fn IFNULL(month2.count_containment_ua, 0) } AS count_containment_ua_2, 
						{ fn IFNULL(month2.count_containment_uc, 0) } AS count_containment_uc_2, 
						{ fn IFNULL(month2.count_containment_sa, 0) } AS count_containment_sa_2,
						{ fn IFNULL(month2.count_containment_sc, 0) } AS count_containment_sc_2, 
						{ fn IFNULL(month2.count_absorbent_ua, 0) } AS count_absorbent_ua_2, 
						{ fn IFNULL(month2.count_absorbent_uc, 0) } AS count_absorbent_uc_2, 
						{ fn IFNULL(month2.count_absorbent_sa, 0) } AS count_absorbent_sa_2,
						{ fn IFNULL(month2.count_absorbent_sc, 0) } AS count_absorbent_sc_2, 
						{ fn IFNULL(month2.count_hira_ua, 0) } AS count_hira_ua_2, 
						{ fn IFNULL(month2.count_hira_uc, 0) } AS count_hira_uc_2, 
						{ fn IFNULL(month2.count_hira_sa, 0) } AS count_hira_sa_2,
						{ fn IFNULL(month2.count_hira_sc, 0) } AS count_hira_sc_2, 
						{ fn IFNULL(month2.count_ptw_ua, 0) } AS count_ptw_ua_2, 
						{ fn IFNULL(month2.count_ptw_uc, 0) } AS count_ptw_uc_2, 
						{ fn IFNULL(month2.count_ptw_sa, 0) } AS count_ptw_sa_2,
						{ fn IFNULL(month2.count_ptw_sc, 0) } AS count_ptw_sc_2, 
						{ fn IFNULL(month2.count_sop_ua, 0) } AS count_sop_ua_2, 
						{ fn IFNULL(month2.count_sop_uc, 0) } AS count_sop_uc_2, 
						{ fn IFNULL(month2.count_sop_sa, 0) } AS count_sop_sa_2,
						{ fn IFNULL(month2.count_sop_sc, 0) } AS count_sop_sc_2, 
						{ fn IFNULL(month2.count_msds_ua, 0) } AS count_msds_ua_2, 
						{ fn IFNULL(month2.count_msds_uc, 0) } AS count_msds_uc_2, 
						{ fn IFNULL(month2.count_msds_sa, 0) } AS count_msds_sa_2,
						{ fn IFNULL(month2.count_msds_sc, 0) } AS count_msds_sc_2, 
						{ fn IFNULL(month2.count_emergency_ua, 0) } AS count_emergency_ua_2, 
						{ fn IFNULL(month2.count_emergency_uc, 0) } AS count_emergency_uc_2, 
						{ fn IFNULL(month2.count_emergency_sa, 0) } AS count_emergency_sa_2,
						{ fn IFNULL(month2.count_emergency_sc, 0) } AS count_emergency_sc_2, 
						{ fn IFNULL(month2.count_certificates_ua, 0) } AS count_certificates_ua_2, 
						{ fn IFNULL(month2.count_certificates_uc, 0) } AS count_certificates_uc_2, 
						{ fn IFNULL(month2.count_certificates_sa, 0) } AS count_certificates_sa_2,
						{ fn IFNULL(month2.count_certificates_sc, 0) } AS count_certificates_sc_2, 
						{ fn IFNULL(month2.count_ppe_ua, 0) } AS count_ppe_ua_2, 
						{ fn IFNULL(month2.count_ppe_uc, 0) } AS count_ppe_uc_2, 
						{ fn IFNULL(month2.count_ppe_sa, 0) } AS count_ppe_sa_2,
						{ fn IFNULL(month2.count_ppe_sc, 0) } AS count_ppe_sc_2, 
						{ fn IFNULL(month2.count_hand_ua, 0) } AS count_hand_ua_2, 
						{ fn IFNULL(month2.count_hand_uc, 0) } AS count_hand_uc_2, 
						{ fn IFNULL(month2.count_hand_sa, 0) } AS count_hand_sa_2,
						{ fn IFNULL(month2.count_hand_sc, 0) } AS count_hand_sc_2, 
						{ fn IFNULL(month2.count_mechanical_ua, 0) } AS count_mechanical_ua_2, 
						{ fn IFNULL(month2.count_mechanical_uc, 0) } AS count_mechanical_uc_2, 
						{ fn IFNULL(month2.count_mechanical_sa, 0) } AS count_mechanical_sa_2,
						{ fn IFNULL(month2.count_mechanical_sc, 0) } AS count_mechanical_sc_2, 
						{ fn IFNULL(month2.count_electrical_ua, 0) } AS count_electrical_ua_2, 
						{ fn IFNULL(month2.count_electrical_uc, 0) } AS count_electrical_uc_2, 
						{ fn IFNULL(month2.count_electrical_sa, 0) } AS count_electrical_sa_2,
						{ fn IFNULL(month2.count_electrical_sc, 0) } AS count_electrical_sc_2, 
						{ fn IFNULL(month2.count_vehicular_ua, 0) } AS count_vehicular_ua_2, 
						{ fn IFNULL(month2.count_vehicular_uc, 0) } AS count_vehicular_uc_2, 
						{ fn IFNULL(month2.count_vehicular_sa, 0) } AS count_vehicular_sa_2,
						{ fn IFNULL(month2.count_vehicular_sc, 0) } AS count_vehicular_sc_2, 
						{ fn IFNULL(month2.count_substandard_ua, 0) } AS count_substandard_ua_2, 
						{ fn IFNULL(month2.count_substandard_uc, 0) } AS count_substandard_uc_2, 
						{ fn IFNULL(month2.count_substandard_sa, 0) } AS count_substandard_sa_2,
						{ fn IFNULL(month2.count_substandard_sc, 0) } AS count_substandard_sc_2, 
						{ fn IFNULL(month2.count_h2s_ua, 0) } AS count_h2s_ua_2, 
						{ fn IFNULL(month2.count_h2s_uc, 0) } AS count_h2s_uc_2, 
						{ fn IFNULL(month2.count_h2s_sa, 0) } AS count_h2s_sa_2,
						{ fn IFNULL(month2.count_h2s_sc, 0) } AS count_h2s_sc_2, 
						{ fn IFNULL(month2.count_workplace_health_ua, 0) } AS count_workplace_health_ua_2, 
						{ fn IFNULL(month2.count_workplace_health_uc, 0) } AS count_workplace_health_uc_2, 
						{ fn IFNULL(month2.count_workplace_health_sa, 0) } AS count_workplace_health_sa_2,
						{ fn IFNULL(month2.count_workplace_health_sc, 0) } AS count_workplace_health_sc_2,
						{ fn IFNULL(month3.count_accident_ua, 0) } AS count_accident_ua_3, 
						{ fn IFNULL(month3.count_accident_uc, 0) } AS count_accident_uc_3, 
						{ fn IFNULL(month3.count_accident_sa, 0) } AS count_accident_sa_3,
						{ fn IFNULL(month3.count_accident_sc, 0) } AS count_accident_sc_3, 
						{ fn IFNULL(month3.count_fire_ua, 0) } AS count_fire_ua_3, 
						{ fn IFNULL(month3.count_fire_uc, 0) } AS count_fire_uc_3, 
						{ fn IFNULL(month3.count_fire_sa, 0) } AS count_fire_sa_3,
						{ fn IFNULL(month3.count_fire_sc, 0) } AS count_fire_sc_3, 
						{ fn IFNULL(month3.count_prevention_ua, 0) } AS count_prevention_ua_3, 
						{ fn IFNULL(month3.count_prevention_uc, 0) } AS count_prevention_uc_3, 
						{ fn IFNULL(month3.count_prevention_sa, 0) } AS count_prevention_sa_3,
						{ fn IFNULL(month3.count_prevention_sc, 0) } AS count_prevention_sc_3, 
						{ fn IFNULL(month3.count_supervisor_ua, 0) } AS count_supervisor_ua_3, 
						{ fn IFNULL(month3.count_supervisor_uc, 0) } AS count_supervisor_uc_3, 
						{ fn IFNULL(month3.count_supervisor_sa, 0) } AS count_supervisor_sa_3,
						{ fn IFNULL(month3.count_supervisor_sc, 0) } AS count_supervisor_sc_3, 
						{ fn IFNULL(month3.count_fit_work_ua, 0) } AS count_fit_work_ua_3, 
						{ fn IFNULL(month3.count_fit_work_uc, 0) } AS count_fit_work_uc_3, 
						{ fn IFNULL(month3.count_fit_work_sa, 0) } AS count_fit_work_sa_3,
						{ fn IFNULL(month3.count_fit_work_sc, 0) } AS count_fit_work_sc_3, 
						{ fn IFNULL(month3.count_psychological_ua, 0) } AS count_psychological_ua_3, 
						{ fn IFNULL(month3.count_psychological_uc, 0) } AS count_psychological_uc_3, 
						{ fn IFNULL(month3.count_psychological_sa, 0) } AS count_psychological_sa_3,
						{ fn IFNULL(month3.count_psychological_sc, 0) } AS count_psychological_sc_3, 
						{ fn IFNULL(month3.count_posture_ua, 0) } AS count_posture_ua_3, 
						{ fn IFNULL(month3.count_posture_uc, 0) } AS count_posture_uc_3, 
						{ fn IFNULL(month3.count_posture_sa, 0) } AS count_posture_sa_3,
						{ fn IFNULL(month3.count_posture_sc, 0) } AS count_posture_sc_3, 
						{ fn IFNULL(month3.count_substance_ua, 0) } AS count_substance_ua_3, 
						{ fn IFNULL(month3.count_substance_uc, 0) } AS count_substance_uc_3, 
						{ fn IFNULL(month3.count_substance_sa, 0) } AS count_substance_sa_3,
						{ fn IFNULL(month3.count_substance_sc, 0) } AS count_substance_sc_3, 
						{ fn IFNULL(month3.count_hygiene_ua, 0) } AS count_hygiene_ua_3, 
						{ fn IFNULL(month3.count_hygiene_uc, 0) } AS count_hygiene_uc_3, 
						{ fn IFNULL(month3.count_hygiene_sa, 0) } AS count_hygiene_sa_3,
						{ fn IFNULL(month3.count_hygiene_sc, 0) } AS count_hygiene_sc_3, 
						{ fn IFNULL(month3.count_house_ua, 0) } AS count_house_ua_3, 
						{ fn IFNULL(month3.count_house_uc, 0) } AS count_house_uc_3, 
						{ fn IFNULL(month3.count_house_sa, 0) } AS count_house_sa_3,
						{ fn IFNULL(month3.count_house_sc, 0) } AS count_house_sc_3, 
						{ fn IFNULL(month3.count_standard_ua, 0) } AS count_standard_ua_3, 
						{ fn IFNULL(month3.count_standard_uc, 0) } AS count_standard_uc_3, 
						{ fn IFNULL(month3.count_standard_sa, 0) } AS count_standard_sa_3,
						{ fn IFNULL(month3.count_standard_sc, 0) } AS count_standard_sc_3, 
						{ fn IFNULL(month3.count_spill_ua, 0) } AS count_spill_ua_3, 
						{ fn IFNULL(month3.count_spill_uc, 0) } AS count_spill_uc_3, 
						{ fn IFNULL(month3.count_spill_sa, 0) } AS count_spill_sa_3,
						{ fn IFNULL(month3.count_spill_sc, 0) } AS count_spill_sc_3, 
						{ fn IFNULL(month3.count_waste_energy_ua, 0) } AS count_waste_energy_ua_3, 
						{ fn IFNULL(month3.count_waste_energy_uc, 0) } AS count_waste_energy_uc_3, 
						{ fn IFNULL(month3.count_waste_energy_sa, 0) } AS count_waste_energy_sa_3,
						{ fn IFNULL(month3.count_waste_energy_sc, 0) } AS count_waste_energy_sc_3, 
						{ fn IFNULL(month3.count_containment_ua, 0) } AS count_containment_ua_3, 
						{ fn IFNULL(month3.count_containment_uc, 0) } AS count_containment_uc_3, 
						{ fn IFNULL(month3.count_containment_sa, 0) } AS count_containment_sa_3,
						{ fn IFNULL(month3.count_containment_sc, 0) } AS count_containment_sc_3, 
						{ fn IFNULL(month3.count_absorbent_ua, 0) } AS count_absorbent_ua_3, 
						{ fn IFNULL(month3.count_absorbent_uc, 0) } AS count_absorbent_uc_3, 
						{ fn IFNULL(month3.count_absorbent_sa, 0) } AS count_absorbent_sa_3,
						{ fn IFNULL(month3.count_absorbent_sc, 0) } AS count_absorbent_sc_3, 
						{ fn IFNULL(month3.count_hira_ua, 0) } AS count_hira_ua_3, 
						{ fn IFNULL(month3.count_hira_uc, 0) } AS count_hira_uc_3, 
						{ fn IFNULL(month3.count_hira_sa, 0) } AS count_hira_sa_3,
						{ fn IFNULL(month3.count_hira_sc, 0) } AS count_hira_sc_3, 
						{ fn IFNULL(month3.count_ptw_ua, 0) } AS count_ptw_ua_3, 
						{ fn IFNULL(month3.count_ptw_uc, 0) } AS count_ptw_uc_3, 
						{ fn IFNULL(month3.count_ptw_sa, 0) } AS count_ptw_sa_3,
						{ fn IFNULL(month3.count_ptw_sc, 0) } AS count_ptw_sc_3, 
						{ fn IFNULL(month3.count_sop_ua, 0) } AS count_sop_ua_3, 
						{ fn IFNULL(month3.count_sop_uc, 0) } AS count_sop_uc_3, 
						{ fn IFNULL(month3.count_sop_sa, 0) } AS count_sop_sa_3,
						{ fn IFNULL(month3.count_sop_sc, 0) } AS count_sop_sc_3, 
						{ fn IFNULL(month3.count_msds_ua, 0) } AS count_msds_ua_3, 
						{ fn IFNULL(month3.count_msds_uc, 0) } AS count_msds_uc_3, 
						{ fn IFNULL(month3.count_msds_sa, 0) } AS count_msds_sa_3,
						{ fn IFNULL(month3.count_msds_sc, 0) } AS count_msds_sc_3, 
						{ fn IFNULL(month3.count_emergency_ua, 0) } AS count_emergency_ua_3, 
						{ fn IFNULL(month3.count_emergency_uc, 0) } AS count_emergency_uc_3, 
						{ fn IFNULL(month3.count_emergency_sa, 0) } AS count_emergency_sa_3,
						{ fn IFNULL(month3.count_emergency_sc, 0) } AS count_emergency_sc_3, 
						{ fn IFNULL(month3.count_certificates_ua, 0) } AS count_certificates_ua_3, 
						{ fn IFNULL(month3.count_certificates_uc, 0) } AS count_certificates_uc_3, 
						{ fn IFNULL(month3.count_certificates_sa, 0) } AS count_certificates_sa_3,
						{ fn IFNULL(month3.count_certificates_sc, 0) } AS count_certificates_sc_3, 
						{ fn IFNULL(month3.count_ppe_ua, 0) } AS count_ppe_ua_3, 
						{ fn IFNULL(month3.count_ppe_uc, 0) } AS count_ppe_uc_3, 
						{ fn IFNULL(month3.count_ppe_sa, 0) } AS count_ppe_sa_3,
						{ fn IFNULL(month3.count_ppe_sc, 0) } AS count_ppe_sc_3, 
						{ fn IFNULL(month3.count_hand_ua, 0) } AS count_hand_ua_3, 
						{ fn IFNULL(month3.count_hand_uc, 0) } AS count_hand_uc_3, 
						{ fn IFNULL(month3.count_hand_sa, 0) } AS count_hand_sa_3,
						{ fn IFNULL(month3.count_hand_sc, 0) } AS count_hand_sc_3, 
						{ fn IFNULL(month3.count_mechanical_ua, 0) } AS count_mechanical_ua_3, 
						{ fn IFNULL(month3.count_mechanical_uc, 0) } AS count_mechanical_uc_3, 
						{ fn IFNULL(month3.count_mechanical_sa, 0) } AS count_mechanical_sa_3,
						{ fn IFNULL(month3.count_mechanical_sc, 0) } AS count_mechanical_sc_3, 
						{ fn IFNULL(month3.count_electrical_ua, 0) } AS count_electrical_ua_3, 
						{ fn IFNULL(month3.count_electrical_uc, 0) } AS count_electrical_uc_3, 
						{ fn IFNULL(month3.count_electrical_sa, 0) } AS count_electrical_sa_3,
						{ fn IFNULL(month3.count_electrical_sc, 0) } AS count_electrical_sc_3, 
						{ fn IFNULL(month3.count_vehicular_ua, 0) } AS count_vehicular_ua_3, 
						{ fn IFNULL(month3.count_vehicular_uc, 0) } AS count_vehicular_uc_3, 
						{ fn IFNULL(month3.count_vehicular_sa, 0) } AS count_vehicular_sa_3,
						{ fn IFNULL(month3.count_vehicular_sc, 0) } AS count_vehicular_sc_3, 
						{ fn IFNULL(month3.count_substandard_ua, 0) } AS count_substandard_ua_3, 
						{ fn IFNULL(month3.count_substandard_uc, 0) } AS count_substandard_uc_3, 
						{ fn IFNULL(month3.count_substandard_sa, 0) } AS count_substandard_sa_3,
						{ fn IFNULL(month3.count_substandard_sc, 0) } AS count_substandard_sc_3, 
						{ fn IFNULL(month3.count_h2s_ua, 0) } AS count_h2s_ua_3, 
						{ fn IFNULL(month3.count_h2s_uc, 0) } AS count_h2s_uc_3, 
						{ fn IFNULL(month3.count_h2s_sa, 0) } AS count_h2s_sa_3,
						{ fn IFNULL(month3.count_h2s_sc, 0) } AS count_h2s_sc_3, 
						{ fn IFNULL(month3.count_workplace_health_ua, 0) } AS count_workplace_health_ua_3, 
						{ fn IFNULL(month3.count_workplace_health_uc, 0) } AS count_workplace_health_uc_3, 
						{ fn IFNULL(month3.count_workplace_health_sa, 0) } AS count_workplace_health_sa_3,
						{ fn IFNULL(month3.count_workplace_health_sc, 0) } AS count_workplace_health_sc_3,
						{ fn IFNULL(month4.count_accident_ua, 0) } AS count_accident_ua_4, 
						{ fn IFNULL(month4.count_accident_uc, 0) } AS count_accident_uc_4, 
						{ fn IFNULL(month4.count_accident_sa, 0) } AS count_accident_sa_4,
						{ fn IFNULL(month4.count_accident_sc, 0) } AS count_accident_sc_4, 
						{ fn IFNULL(month4.count_fire_ua, 0) } AS count_fire_ua_4, 
						{ fn IFNULL(month4.count_fire_uc, 0) } AS count_fire_uc_4, 
						{ fn IFNULL(month4.count_fire_sa, 0) } AS count_fire_sa_4,
						{ fn IFNULL(month4.count_fire_sc, 0) } AS count_fire_sc_4, 
						{ fn IFNULL(month4.count_prevention_ua, 0) } AS count_prevention_ua_4, 
						{ fn IFNULL(month4.count_prevention_uc, 0) } AS count_prevention_uc_4, 
						{ fn IFNULL(month4.count_prevention_sa, 0) } AS count_prevention_sa_4,
						{ fn IFNULL(month4.count_prevention_sc, 0) } AS count_prevention_sc_4, 
						{ fn IFNULL(month4.count_supervisor_ua, 0) } AS count_supervisor_ua_4, 
						{ fn IFNULL(month4.count_supervisor_uc, 0) } AS count_supervisor_uc_4, 
						{ fn IFNULL(month4.count_supervisor_sa, 0) } AS count_supervisor_sa_4,
						{ fn IFNULL(month4.count_supervisor_sc, 0) } AS count_supervisor_sc_4, 
						{ fn IFNULL(month4.count_fit_work_ua, 0) } AS count_fit_work_ua_4, 
						{ fn IFNULL(month4.count_fit_work_uc, 0) } AS count_fit_work_uc_4, 
						{ fn IFNULL(month4.count_fit_work_sa, 0) } AS count_fit_work_sa_4,
						{ fn IFNULL(month4.count_fit_work_sc, 0) } AS count_fit_work_sc_4, 
						{ fn IFNULL(month4.count_psychological_ua, 0) } AS count_psychological_ua_4, 
						{ fn IFNULL(month4.count_psychological_uc, 0) } AS count_psychological_uc_4, 
						{ fn IFNULL(month4.count_psychological_sa, 0) } AS count_psychological_sa_4,
						{ fn IFNULL(month4.count_psychological_sc, 0) } AS count_psychological_sc_4, 
						{ fn IFNULL(month4.count_posture_ua, 0) } AS count_posture_ua_4, 
						{ fn IFNULL(month4.count_posture_uc, 0) } AS count_posture_uc_4, 
						{ fn IFNULL(month4.count_posture_sa, 0) } AS count_posture_sa_4,
						{ fn IFNULL(month4.count_posture_sc, 0) } AS count_posture_sc_4, 
						{ fn IFNULL(month4.count_substance_ua, 0) } AS count_substance_ua_4, 
						{ fn IFNULL(month4.count_substance_uc, 0) } AS count_substance_uc_4, 
						{ fn IFNULL(month4.count_substance_sa, 0) } AS count_substance_sa_4,
						{ fn IFNULL(month4.count_substance_sc, 0) } AS count_substance_sc_4, 
						{ fn IFNULL(month4.count_hygiene_ua, 0) } AS count_hygiene_ua_4, 
						{ fn IFNULL(month4.count_hygiene_uc, 0) } AS count_hygiene_uc_4, 
						{ fn IFNULL(month4.count_hygiene_sa, 0) } AS count_hygiene_sa_4,
						{ fn IFNULL(month4.count_hygiene_sc, 0) } AS count_hygiene_sc_4, 
						{ fn IFNULL(month4.count_house_ua, 0) } AS count_house_ua_4, 
						{ fn IFNULL(month4.count_house_uc, 0) } AS count_house_uc_4, 
						{ fn IFNULL(month4.count_house_sa, 0) } AS count_house_sa_4,
						{ fn IFNULL(month4.count_house_sc, 0) } AS count_house_sc_4, 
						{ fn IFNULL(month4.count_standard_ua, 0) } AS count_standard_ua_4, 
						{ fn IFNULL(month4.count_standard_uc, 0) } AS count_standard_uc_4, 
						{ fn IFNULL(month4.count_standard_sa, 0) } AS count_standard_sa_4,
						{ fn IFNULL(month4.count_standard_sc, 0) } AS count_standard_sc_4, 
						{ fn IFNULL(month4.count_spill_ua, 0) } AS count_spill_ua_4, 
						{ fn IFNULL(month4.count_spill_uc, 0) } AS count_spill_uc_4, 
						{ fn IFNULL(month4.count_spill_sa, 0) } AS count_spill_sa_4,
						{ fn IFNULL(month4.count_spill_sc, 0) } AS count_spill_sc_4, 
						{ fn IFNULL(month4.count_waste_energy_ua, 0) } AS count_waste_energy_ua_4, 
						{ fn IFNULL(month4.count_waste_energy_uc, 0) } AS count_waste_energy_uc_4, 
						{ fn IFNULL(month4.count_waste_energy_sa, 0) } AS count_waste_energy_sa_4,
						{ fn IFNULL(month4.count_waste_energy_sc, 0) } AS count_waste_energy_sc_4, 
						{ fn IFNULL(month4.count_containment_ua, 0) } AS count_containment_ua_4, 
						{ fn IFNULL(month4.count_containment_uc, 0) } AS count_containment_uc_4, 
						{ fn IFNULL(month4.count_containment_sa, 0) } AS count_containment_sa_4,
						{ fn IFNULL(month4.count_containment_sc, 0) } AS count_containment_sc_4, 
						{ fn IFNULL(month4.count_absorbent_ua, 0) } AS count_absorbent_ua_4, 
						{ fn IFNULL(month4.count_absorbent_uc, 0) } AS count_absorbent_uc_4, 
						{ fn IFNULL(month4.count_absorbent_sa, 0) } AS count_absorbent_sa_4,
						{ fn IFNULL(month4.count_absorbent_sc, 0) } AS count_absorbent_sc_4, 
						{ fn IFNULL(month4.count_hira_ua, 0) } AS count_hira_ua_4, 
						{ fn IFNULL(month4.count_hira_uc, 0) } AS count_hira_uc_4, 
						{ fn IFNULL(month4.count_hira_sa, 0) } AS count_hira_sa_4,
						{ fn IFNULL(month4.count_hira_sc, 0) } AS count_hira_sc_4, 
						{ fn IFNULL(month4.count_ptw_ua, 0) } AS count_ptw_ua_4, 
						{ fn IFNULL(month4.count_ptw_uc, 0) } AS count_ptw_uc_4, 
						{ fn IFNULL(month4.count_ptw_sa, 0) } AS count_ptw_sa_4,
						{ fn IFNULL(month4.count_ptw_sc, 0) } AS count_ptw_sc_4, 
						{ fn IFNULL(month4.count_sop_ua, 0) } AS count_sop_ua_4, 
						{ fn IFNULL(month4.count_sop_uc, 0) } AS count_sop_uc_4, 
						{ fn IFNULL(month4.count_sop_sa, 0) } AS count_sop_sa_4,
						{ fn IFNULL(month4.count_sop_sc, 0) } AS count_sop_sc_4, 
						{ fn IFNULL(month4.count_msds_ua, 0) } AS count_msds_ua_4, 
						{ fn IFNULL(month4.count_msds_uc, 0) } AS count_msds_uc_4, 
						{ fn IFNULL(month4.count_msds_sa, 0) } AS count_msds_sa_4,
						{ fn IFNULL(month4.count_msds_sc, 0) } AS count_msds_sc_4, 
						{ fn IFNULL(month4.count_emergency_ua, 0) } AS count_emergency_ua_4, 
						{ fn IFNULL(month4.count_emergency_uc, 0) } AS count_emergency_uc_4, 
						{ fn IFNULL(month4.count_emergency_sa, 0) } AS count_emergency_sa_4,
						{ fn IFNULL(month4.count_emergency_sc, 0) } AS count_emergency_sc_4, 
						{ fn IFNULL(month4.count_certificates_ua, 0) } AS count_certificates_ua_4, 
						{ fn IFNULL(month4.count_certificates_uc, 0) } AS count_certificates_uc_4, 
						{ fn IFNULL(month4.count_certificates_sa, 0) } AS count_certificates_sa_4,
						{ fn IFNULL(month4.count_certificates_sc, 0) } AS count_certificates_sc_4, 
						{ fn IFNULL(month4.count_ppe_ua, 0) } AS count_ppe_ua_4, 
						{ fn IFNULL(month4.count_ppe_uc, 0) } AS count_ppe_uc_4, 
						{ fn IFNULL(month4.count_ppe_sa, 0) } AS count_ppe_sa_4,
						{ fn IFNULL(month4.count_ppe_sc, 0) } AS count_ppe_sc_4, 
						{ fn IFNULL(month4.count_hand_ua, 0) } AS count_hand_ua_4, 
						{ fn IFNULL(month4.count_hand_uc, 0) } AS count_hand_uc_4, 
						{ fn IFNULL(month4.count_hand_sa, 0) } AS count_hand_sa_4,
						{ fn IFNULL(month4.count_hand_sc, 0) } AS count_hand_sc_4, 
						{ fn IFNULL(month4.count_mechanical_ua, 0) } AS count_mechanical_ua_4, 
						{ fn IFNULL(month4.count_mechanical_uc, 0) } AS count_mechanical_uc_4, 
						{ fn IFNULL(month4.count_mechanical_sa, 0) } AS count_mechanical_sa_4,
						{ fn IFNULL(month4.count_mechanical_sc, 0) } AS count_mechanical_sc_4, 
						{ fn IFNULL(month4.count_electrical_ua, 0) } AS count_electrical_ua_4, 
						{ fn IFNULL(month4.count_electrical_uc, 0) } AS count_electrical_uc_4, 
						{ fn IFNULL(month4.count_electrical_sa, 0) } AS count_electrical_sa_4,
						{ fn IFNULL(month4.count_electrical_sc, 0) } AS count_electrical_sc_4, 
						{ fn IFNULL(month4.count_vehicular_ua, 0) } AS count_vehicular_ua_4, 
						{ fn IFNULL(month4.count_vehicular_uc, 0) } AS count_vehicular_uc_4, 
						{ fn IFNULL(month4.count_vehicular_sa, 0) } AS count_vehicular_sa_4,
						{ fn IFNULL(month4.count_vehicular_sc, 0) } AS count_vehicular_sc_4, 
						{ fn IFNULL(month4.count_substandard_ua, 0) } AS count_substandard_ua_4, 
						{ fn IFNULL(month4.count_substandard_uc, 0) } AS count_substandard_uc_4, 
						{ fn IFNULL(month4.count_substandard_sa, 0) } AS count_substandard_sa_4,
						{ fn IFNULL(month4.count_substandard_sc, 0) } AS count_substandard_sc_4, 
						{ fn IFNULL(month4.count_h2s_ua, 0) } AS count_h2s_ua_4, 
						{ fn IFNULL(month4.count_h2s_uc, 0) } AS count_h2s_uc_4, 
						{ fn IFNULL(month4.count_h2s_sa, 0) } AS count_h2s_sa_4,
						{ fn IFNULL(month4.count_h2s_sc, 0) } AS count_h2s_sc_4, 
						{ fn IFNULL(month4.count_workplace_health_ua, 0) } AS count_workplace_health_ua_4, 
						{ fn IFNULL(month4.count_workplace_health_uc, 0) } AS count_workplace_health_uc_4, 
						{ fn IFNULL(month4.count_workplace_health_sa, 0) } AS count_workplace_health_sa_4,
						{ fn IFNULL(month4.count_workplace_health_sc, 0) } AS count_workplace_health_sc_4,
						{ fn IFNULL(month5.count_accident_ua, 0) } AS count_accident_ua_5, 
						{ fn IFNULL(month5.count_accident_uc, 0) } AS count_accident_uc_5, 
						{ fn IFNULL(month5.count_accident_sa, 0) } AS count_accident_sa_5,
						{ fn IFNULL(month5.count_accident_sc, 0) } AS count_accident_sc_5, 
						{ fn IFNULL(month5.count_fire_ua, 0) } AS count_fire_ua_5, 
						{ fn IFNULL(month5.count_fire_uc, 0) } AS count_fire_uc_5, 
						{ fn IFNULL(month5.count_fire_sa, 0) } AS count_fire_sa_5,
						{ fn IFNULL(month5.count_fire_sc, 0) } AS count_fire_sc_5, 
						{ fn IFNULL(month5.count_prevention_ua, 0) } AS count_prevention_ua_5, 
						{ fn IFNULL(month5.count_prevention_uc, 0) } AS count_prevention_uc_5, 
						{ fn IFNULL(month5.count_prevention_sa, 0) } AS count_prevention_sa_5,
						{ fn IFNULL(month5.count_prevention_sc, 0) } AS count_prevention_sc_5, 
						{ fn IFNULL(month5.count_supervisor_ua, 0) } AS count_supervisor_ua_5, 
						{ fn IFNULL(month5.count_supervisor_uc, 0) } AS count_supervisor_uc_5, 
						{ fn IFNULL(month5.count_supervisor_sa, 0) } AS count_supervisor_sa_5,
						{ fn IFNULL(month5.count_supervisor_sc, 0) } AS count_supervisor_sc_5, 
						{ fn IFNULL(month5.count_fit_work_ua, 0) } AS count_fit_work_ua_5, 
						{ fn IFNULL(month5.count_fit_work_uc, 0) } AS count_fit_work_uc_5, 
						{ fn IFNULL(month5.count_fit_work_sa, 0) } AS count_fit_work_sa_5,
						{ fn IFNULL(month5.count_fit_work_sc, 0) } AS count_fit_work_sc_5, 
						{ fn IFNULL(month5.count_psychological_ua, 0) } AS count_psychological_ua_5, 
						{ fn IFNULL(month5.count_psychological_uc, 0) } AS count_psychological_uc_5, 
						{ fn IFNULL(month5.count_psychological_sa, 0) } AS count_psychological_sa_5,
						{ fn IFNULL(month5.count_psychological_sc, 0) } AS count_psychological_sc_5, 
						{ fn IFNULL(month5.count_posture_ua, 0) } AS count_posture_ua_5, 
						{ fn IFNULL(month5.count_posture_uc, 0) } AS count_posture_uc_5, 
						{ fn IFNULL(month5.count_posture_sa, 0) } AS count_posture_sa_5,
						{ fn IFNULL(month5.count_posture_sc, 0) } AS count_posture_sc_5, 
						{ fn IFNULL(month5.count_substance_ua, 0) } AS count_substance_ua_5, 
						{ fn IFNULL(month5.count_substance_uc, 0) } AS count_substance_uc_5, 
						{ fn IFNULL(month5.count_substance_sa, 0) } AS count_substance_sa_5,
						{ fn IFNULL(month5.count_substance_sc, 0) } AS count_substance_sc_5, 
						{ fn IFNULL(month5.count_hygiene_ua, 0) } AS count_hygiene_ua_5, 
						{ fn IFNULL(month5.count_hygiene_uc, 0) } AS count_hygiene_uc_5, 
						{ fn IFNULL(month5.count_hygiene_sa, 0) } AS count_hygiene_sa_5,
						{ fn IFNULL(month5.count_hygiene_sc, 0) } AS count_hygiene_sc_5, 
						{ fn IFNULL(month5.count_house_ua, 0) } AS count_house_ua_5, 
						{ fn IFNULL(month5.count_house_uc, 0) } AS count_house_uc_5, 
						{ fn IFNULL(month5.count_house_sa, 0) } AS count_house_sa_5,
						{ fn IFNULL(month5.count_house_sc, 0) } AS count_house_sc_5, 
						{ fn IFNULL(month5.count_standard_ua, 0) } AS count_standard_ua_5, 
						{ fn IFNULL(month5.count_standard_uc, 0) } AS count_standard_uc_5, 
						{ fn IFNULL(month5.count_standard_sa, 0) } AS count_standard_sa_5,
						{ fn IFNULL(month5.count_standard_sc, 0) } AS count_standard_sc_5, 
						{ fn IFNULL(month5.count_spill_ua, 0) } AS count_spill_ua_5, 
						{ fn IFNULL(month5.count_spill_uc, 0) } AS count_spill_uc_5, 
						{ fn IFNULL(month5.count_spill_sa, 0) } AS count_spill_sa_5,
						{ fn IFNULL(month5.count_spill_sc, 0) } AS count_spill_sc_5, 
						{ fn IFNULL(month5.count_waste_energy_ua, 0) } AS count_waste_energy_ua_5, 
						{ fn IFNULL(month5.count_waste_energy_uc, 0) } AS count_waste_energy_uc_5, 
						{ fn IFNULL(month5.count_waste_energy_sa, 0) } AS count_waste_energy_sa_5,
						{ fn IFNULL(month5.count_waste_energy_sc, 0) } AS count_waste_energy_sc_5, 
						{ fn IFNULL(month5.count_containment_ua, 0) } AS count_containment_ua_5, 
						{ fn IFNULL(month5.count_containment_uc, 0) } AS count_containment_uc_5, 
						{ fn IFNULL(month5.count_containment_sa, 0) } AS count_containment_sa_5,
						{ fn IFNULL(month5.count_containment_sc, 0) } AS count_containment_sc_5, 
						{ fn IFNULL(month5.count_absorbent_ua, 0) } AS count_absorbent_ua_5, 
						{ fn IFNULL(month5.count_absorbent_uc, 0) } AS count_absorbent_uc_5, 
						{ fn IFNULL(month5.count_absorbent_sa, 0) } AS count_absorbent_sa_5,
						{ fn IFNULL(month5.count_absorbent_sc, 0) } AS count_absorbent_sc_5, 
						{ fn IFNULL(month5.count_hira_ua, 0) } AS count_hira_ua_5, 
						{ fn IFNULL(month5.count_hira_uc, 0) } AS count_hira_uc_5, 
						{ fn IFNULL(month5.count_hira_sa, 0) } AS count_hira_sa_5,
						{ fn IFNULL(month5.count_hira_sc, 0) } AS count_hira_sc_5, 
						{ fn IFNULL(month5.count_ptw_ua, 0) } AS count_ptw_ua_5, 
						{ fn IFNULL(month5.count_ptw_uc, 0) } AS count_ptw_uc_5, 
						{ fn IFNULL(month5.count_ptw_sa, 0) } AS count_ptw_sa_5,
						{ fn IFNULL(month5.count_ptw_sc, 0) } AS count_ptw_sc_5, 
						{ fn IFNULL(month5.count_sop_ua, 0) } AS count_sop_ua_5, 
						{ fn IFNULL(month5.count_sop_uc, 0) } AS count_sop_uc_5, 
						{ fn IFNULL(month5.count_sop_sa, 0) } AS count_sop_sa_5,
						{ fn IFNULL(month5.count_sop_sc, 0) } AS count_sop_sc_5, 
						{ fn IFNULL(month5.count_msds_ua, 0) } AS count_msds_ua_5, 
						{ fn IFNULL(month5.count_msds_uc, 0) } AS count_msds_uc_5, 
						{ fn IFNULL(month5.count_msds_sa, 0) } AS count_msds_sa_5,
						{ fn IFNULL(month5.count_msds_sc, 0) } AS count_msds_sc_5, 
						{ fn IFNULL(month5.count_emergency_ua, 0) } AS count_emergency_ua_5, 
						{ fn IFNULL(month5.count_emergency_uc, 0) } AS count_emergency_uc_5, 
						{ fn IFNULL(month5.count_emergency_sa, 0) } AS count_emergency_sa_5,
						{ fn IFNULL(month5.count_emergency_sc, 0) } AS count_emergency_sc_5, 
						{ fn IFNULL(month5.count_certificates_ua, 0) } AS count_certificates_ua_5, 
						{ fn IFNULL(month5.count_certificates_uc, 0) } AS count_certificates_uc_5, 
						{ fn IFNULL(month5.count_certificates_sa, 0) } AS count_certificates_sa_5,
						{ fn IFNULL(month5.count_certificates_sc, 0) } AS count_certificates_sc_5, 
						{ fn IFNULL(month5.count_ppe_ua, 0) } AS count_ppe_ua_5, 
						{ fn IFNULL(month5.count_ppe_uc, 0) } AS count_ppe_uc_5, 
						{ fn IFNULL(month5.count_ppe_sa, 0) } AS count_ppe_sa_5,
						{ fn IFNULL(month5.count_ppe_sc, 0) } AS count_ppe_sc_5, 
						{ fn IFNULL(month5.count_hand_ua, 0) } AS count_hand_ua_5, 
						{ fn IFNULL(month5.count_hand_uc, 0) } AS count_hand_uc_5, 
						{ fn IFNULL(month5.count_hand_sa, 0) } AS count_hand_sa_5,
						{ fn IFNULL(month5.count_hand_sc, 0) } AS count_hand_sc_5, 
						{ fn IFNULL(month5.count_mechanical_ua, 0) } AS count_mechanical_ua_5, 
						{ fn IFNULL(month5.count_mechanical_uc, 0) } AS count_mechanical_uc_5, 
						{ fn IFNULL(month5.count_mechanical_sa, 0) } AS count_mechanical_sa_5,
						{ fn IFNULL(month5.count_mechanical_sc, 0) } AS count_mechanical_sc_5, 
						{ fn IFNULL(month5.count_electrical_ua, 0) } AS count_electrical_ua_5, 
						{ fn IFNULL(month5.count_electrical_uc, 0) } AS count_electrical_uc_5, 
						{ fn IFNULL(month5.count_electrical_sa, 0) } AS count_electrical_sa_5,
						{ fn IFNULL(month5.count_electrical_sc, 0) } AS count_electrical_sc_5, 
						{ fn IFNULL(month5.count_vehicular_ua, 0) } AS count_vehicular_ua_5, 
						{ fn IFNULL(month5.count_vehicular_uc, 0) } AS count_vehicular_uc_5, 
						{ fn IFNULL(month5.count_vehicular_sa, 0) } AS count_vehicular_sa_5,
						{ fn IFNULL(month5.count_vehicular_sc, 0) } AS count_vehicular_sc_5, 
						{ fn IFNULL(month5.count_substandard_ua, 0) } AS count_substandard_ua_5, 
						{ fn IFNULL(month5.count_substandard_uc, 0) } AS count_substandard_uc_5, 
						{ fn IFNULL(month5.count_substandard_sa, 0) } AS count_substandard_sa_5,
						{ fn IFNULL(month5.count_substandard_sc, 0) } AS count_substandard_sc_5, 
						{ fn IFNULL(month5.count_h2s_ua, 0) } AS count_h2s_ua_5, 
						{ fn IFNULL(month5.count_h2s_uc, 0) } AS count_h2s_uc_5, 
						{ fn IFNULL(month5.count_h2s_sa, 0) } AS count_h2s_sa_5,
						{ fn IFNULL(month5.count_h2s_sc, 0) } AS count_h2s_sc_5, 
						{ fn IFNULL(month5.count_workplace_health_ua, 0) } AS count_workplace_health_ua_5, 
						{ fn IFNULL(month5.count_workplace_health_uc, 0) } AS count_workplace_health_uc_5, 
						{ fn IFNULL(month5.count_workplace_health_sa, 0) } AS count_workplace_health_sa_5,
						{ fn IFNULL(month5.count_workplace_health_sc, 0) } AS count_workplace_health_sc_5,
						{ fn IFNULL(month6.count_accident_ua, 0) } AS count_accident_ua_6, 
						{ fn IFNULL(month6.count_accident_uc, 0) } AS count_accident_uc_6, 
						{ fn IFNULL(month6.count_accident_sa, 0) } AS count_accident_sa_6,
						{ fn IFNULL(month6.count_accident_sc, 0) } AS count_accident_sc_6, 
						{ fn IFNULL(month6.count_fire_ua, 0) } AS count_fire_ua_6, 
						{ fn IFNULL(month6.count_fire_uc, 0) } AS count_fire_uc_6, 
						{ fn IFNULL(month6.count_fire_sa, 0) } AS count_fire_sa_6,
						{ fn IFNULL(month6.count_fire_sc, 0) } AS count_fire_sc_6, 
						{ fn IFNULL(month6.count_prevention_ua, 0) } AS count_prevention_ua_6, 
						{ fn IFNULL(month6.count_prevention_uc, 0) } AS count_prevention_uc_6, 
						{ fn IFNULL(month6.count_prevention_sa, 0) } AS count_prevention_sa_6,
						{ fn IFNULL(month6.count_prevention_sc, 0) } AS count_prevention_sc_6, 
						{ fn IFNULL(month6.count_supervisor_ua, 0) } AS count_supervisor_ua_6, 
						{ fn IFNULL(month6.count_supervisor_uc, 0) } AS count_supervisor_uc_6, 
						{ fn IFNULL(month6.count_supervisor_sa, 0) } AS count_supervisor_sa_6,
						{ fn IFNULL(month6.count_supervisor_sc, 0) } AS count_supervisor_sc_6, 
						{ fn IFNULL(month6.count_fit_work_ua, 0) } AS count_fit_work_ua_6, 
						{ fn IFNULL(month6.count_fit_work_uc, 0) } AS count_fit_work_uc_6, 
						{ fn IFNULL(month6.count_fit_work_sa, 0) } AS count_fit_work_sa_6,
						{ fn IFNULL(month6.count_fit_work_sc, 0) } AS count_fit_work_sc_6, 
						{ fn IFNULL(month6.count_psychological_ua, 0) } AS count_psychological_ua_6, 
						{ fn IFNULL(month6.count_psychological_uc, 0) } AS count_psychological_uc_6, 
						{ fn IFNULL(month6.count_psychological_sa, 0) } AS count_psychological_sa_6,
						{ fn IFNULL(month6.count_psychological_sc, 0) } AS count_psychological_sc_6, 
						{ fn IFNULL(month6.count_posture_ua, 0) } AS count_posture_ua_6, 
						{ fn IFNULL(month6.count_posture_uc, 0) } AS count_posture_uc_6, 
						{ fn IFNULL(month6.count_posture_sa, 0) } AS count_posture_sa_6,
						{ fn IFNULL(month6.count_posture_sc, 0) } AS count_posture_sc_6, 
						{ fn IFNULL(month6.count_substance_ua, 0) } AS count_substance_ua_6, 
						{ fn IFNULL(month6.count_substance_uc, 0) } AS count_substance_uc_6, 
						{ fn IFNULL(month6.count_substance_sa, 0) } AS count_substance_sa_6,
						{ fn IFNULL(month6.count_substance_sc, 0) } AS count_substance_sc_6, 
						{ fn IFNULL(month6.count_hygiene_ua, 0) } AS count_hygiene_ua_6, 
						{ fn IFNULL(month6.count_hygiene_uc, 0) } AS count_hygiene_uc_6, 
						{ fn IFNULL(month6.count_hygiene_sa, 0) } AS count_hygiene_sa_6,
						{ fn IFNULL(month6.count_hygiene_sc, 0) } AS count_hygiene_sc_6, 
						{ fn IFNULL(month6.count_house_ua, 0) } AS count_house_ua_6, 
						{ fn IFNULL(month6.count_house_uc, 0) } AS count_house_uc_6, 
						{ fn IFNULL(month6.count_house_sa, 0) } AS count_house_sa_6,
						{ fn IFNULL(month6.count_house_sc, 0) } AS count_house_sc_6, 
						{ fn IFNULL(month6.count_standard_ua, 0) } AS count_standard_ua_6, 
						{ fn IFNULL(month6.count_standard_uc, 0) } AS count_standard_uc_6, 
						{ fn IFNULL(month6.count_standard_sa, 0) } AS count_standard_sa_6,
						{ fn IFNULL(month6.count_standard_sc, 0) } AS count_standard_sc_6, 
						{ fn IFNULL(month6.count_spill_ua, 0) } AS count_spill_ua_6, 
						{ fn IFNULL(month6.count_spill_uc, 0) } AS count_spill_uc_6, 
						{ fn IFNULL(month6.count_spill_sa, 0) } AS count_spill_sa_6,
						{ fn IFNULL(month6.count_spill_sc, 0) } AS count_spill_sc_6, 
						{ fn IFNULL(month6.count_waste_energy_ua, 0) } AS count_waste_energy_ua_6, 
						{ fn IFNULL(month6.count_waste_energy_uc, 0) } AS count_waste_energy_uc_6, 
						{ fn IFNULL(month6.count_waste_energy_sa, 0) } AS count_waste_energy_sa_6,
						{ fn IFNULL(month6.count_waste_energy_sc, 0) } AS count_waste_energy_sc_6, 
						{ fn IFNULL(month6.count_containment_ua, 0) } AS count_containment_ua_6, 
						{ fn IFNULL(month6.count_containment_uc, 0) } AS count_containment_uc_6, 
						{ fn IFNULL(month6.count_containment_sa, 0) } AS count_containment_sa_6,
						{ fn IFNULL(month6.count_containment_sc, 0) } AS count_containment_sc_6, 
						{ fn IFNULL(month6.count_absorbent_ua, 0) } AS count_absorbent_ua_6, 
						{ fn IFNULL(month6.count_absorbent_uc, 0) } AS count_absorbent_uc_6, 
						{ fn IFNULL(month6.count_absorbent_sa, 0) } AS count_absorbent_sa_6,
						{ fn IFNULL(month6.count_absorbent_sc, 0) } AS count_absorbent_sc_6, 
						{ fn IFNULL(month6.count_hira_ua, 0) } AS count_hira_ua_6, 
						{ fn IFNULL(month6.count_hira_uc, 0) } AS count_hira_uc_6, 
						{ fn IFNULL(month6.count_hira_sa, 0) } AS count_hira_sa_6,
						{ fn IFNULL(month6.count_hira_sc, 0) } AS count_hira_sc_6, 
						{ fn IFNULL(month6.count_ptw_ua, 0) } AS count_ptw_ua_6, 
						{ fn IFNULL(month6.count_ptw_uc, 0) } AS count_ptw_uc_6, 
						{ fn IFNULL(month6.count_ptw_sa, 0) } AS count_ptw_sa_6,
						{ fn IFNULL(month6.count_ptw_sc, 0) } AS count_ptw_sc_6, 
						{ fn IFNULL(month6.count_sop_ua, 0) } AS count_sop_ua_6, 
						{ fn IFNULL(month6.count_sop_uc, 0) } AS count_sop_uc_6, 
						{ fn IFNULL(month6.count_sop_sa, 0) } AS count_sop_sa_6,
						{ fn IFNULL(month6.count_sop_sc, 0) } AS count_sop_sc_6, 
						{ fn IFNULL(month6.count_msds_ua, 0) } AS count_msds_ua_6, 
						{ fn IFNULL(month6.count_msds_uc, 0) } AS count_msds_uc_6, 
						{ fn IFNULL(month6.count_msds_sa, 0) } AS count_msds_sa_6,
						{ fn IFNULL(month6.count_msds_sc, 0) } AS count_msds_sc_6, 
						{ fn IFNULL(month6.count_emergency_ua, 0) } AS count_emergency_ua_6, 
						{ fn IFNULL(month6.count_emergency_uc, 0) } AS count_emergency_uc_6, 
						{ fn IFNULL(month6.count_emergency_sa, 0) } AS count_emergency_sa_6,
						{ fn IFNULL(month6.count_emergency_sc, 0) } AS count_emergency_sc_6, 
						{ fn IFNULL(month6.count_certificates_ua, 0) } AS count_certificates_ua_6, 
						{ fn IFNULL(month6.count_certificates_uc, 0) } AS count_certificates_uc_6, 
						{ fn IFNULL(month6.count_certificates_sa, 0) } AS count_certificates_sa_6,
						{ fn IFNULL(month6.count_certificates_sc, 0) } AS count_certificates_sc_6, 
						{ fn IFNULL(month6.count_ppe_ua, 0) } AS count_ppe_ua_6, 
						{ fn IFNULL(month6.count_ppe_uc, 0) } AS count_ppe_uc_6, 
						{ fn IFNULL(month6.count_ppe_sa, 0) } AS count_ppe_sa_6,
						{ fn IFNULL(month6.count_ppe_sc, 0) } AS count_ppe_sc_6, 
						{ fn IFNULL(month6.count_hand_ua, 0) } AS count_hand_ua_6, 
						{ fn IFNULL(month6.count_hand_uc, 0) } AS count_hand_uc_6, 
						{ fn IFNULL(month6.count_hand_sa, 0) } AS count_hand_sa_6,
						{ fn IFNULL(month6.count_hand_sc, 0) } AS count_hand_sc_6, 
						{ fn IFNULL(month6.count_mechanical_ua, 0) } AS count_mechanical_ua_6, 
						{ fn IFNULL(month6.count_mechanical_uc, 0) } AS count_mechanical_uc_6, 
						{ fn IFNULL(month6.count_mechanical_sa, 0) } AS count_mechanical_sa_6,
						{ fn IFNULL(month6.count_mechanical_sc, 0) } AS count_mechanical_sc_6, 
						{ fn IFNULL(month6.count_electrical_ua, 0) } AS count_electrical_ua_6, 
						{ fn IFNULL(month6.count_electrical_uc, 0) } AS count_electrical_uc_6, 
						{ fn IFNULL(month6.count_electrical_sa, 0) } AS count_electrical_sa_6,
						{ fn IFNULL(month6.count_electrical_sc, 0) } AS count_electrical_sc_6, 
						{ fn IFNULL(month6.count_vehicular_ua, 0) } AS count_vehicular_ua_6, 
						{ fn IFNULL(month6.count_vehicular_uc, 0) } AS count_vehicular_uc_6, 
						{ fn IFNULL(month6.count_vehicular_sa, 0) } AS count_vehicular_sa_6,
						{ fn IFNULL(month6.count_vehicular_sc, 0) } AS count_vehicular_sc_6, 
						{ fn IFNULL(month6.count_substandard_ua, 0) } AS count_substandard_ua_6, 
						{ fn IFNULL(month6.count_substandard_uc, 0) } AS count_substandard_uc_6, 
						{ fn IFNULL(month6.count_substandard_sa, 0) } AS count_substandard_sa_6,
						{ fn IFNULL(month6.count_substandard_sc, 0) } AS count_substandard_sc_6, 
						{ fn IFNULL(month6.count_h2s_ua, 0) } AS count_h2s_ua_6, 
						{ fn IFNULL(month6.count_h2s_uc, 0) } AS count_h2s_uc_6, 
						{ fn IFNULL(month6.count_h2s_sa, 0) } AS count_h2s_sa_6,
						{ fn IFNULL(month6.count_h2s_sc, 0) } AS count_h2s_sc_6, 
						{ fn IFNULL(month6.count_workplace_health_ua, 0) } AS count_workplace_health_ua_6, 
						{ fn IFNULL(month6.count_workplace_health_uc, 0) } AS count_workplace_health_uc_6, 
						{ fn IFNULL(month6.count_workplace_health_sa, 0) } AS count_workplace_health_sa_6,
						{ fn IFNULL(month6.count_workplace_health_sc, 0) } AS count_workplace_health_sc_6,
						{ fn IFNULL(month7.count_accident_ua, 0) } AS count_accident_ua_7, 
						{ fn IFNULL(month7.count_accident_uc, 0) } AS count_accident_uc_7, 
						{ fn IFNULL(month7.count_accident_sa, 0) } AS count_accident_sa_7,
						{ fn IFNULL(month7.count_accident_sc, 0) } AS count_accident_sc_7, 
						{ fn IFNULL(month7.count_fire_ua, 0) } AS count_fire_ua_7, 
						{ fn IFNULL(month7.count_fire_uc, 0) } AS count_fire_uc_7, 
						{ fn IFNULL(month7.count_fire_sa, 0) } AS count_fire_sa_7,
						{ fn IFNULL(month7.count_fire_sc, 0) } AS count_fire_sc_7, 
						{ fn IFNULL(month7.count_prevention_ua, 0) } AS count_prevention_ua_7, 
						{ fn IFNULL(month7.count_prevention_uc, 0) } AS count_prevention_uc_7, 
						{ fn IFNULL(month7.count_prevention_sa, 0) } AS count_prevention_sa_7,
						{ fn IFNULL(month7.count_prevention_sc, 0) } AS count_prevention_sc_7, 
						{ fn IFNULL(month7.count_supervisor_ua, 0) } AS count_supervisor_ua_7, 
						{ fn IFNULL(month7.count_supervisor_uc, 0) } AS count_supervisor_uc_7, 
						{ fn IFNULL(month7.count_supervisor_sa, 0) } AS count_supervisor_sa_7,
						{ fn IFNULL(month7.count_supervisor_sc, 0) } AS count_supervisor_sc_7, 
						{ fn IFNULL(month7.count_fit_work_ua, 0) } AS count_fit_work_ua_7, 
						{ fn IFNULL(month7.count_fit_work_uc, 0) } AS count_fit_work_uc_7, 
						{ fn IFNULL(month7.count_fit_work_sa, 0) } AS count_fit_work_sa_7,
						{ fn IFNULL(month7.count_fit_work_sc, 0) } AS count_fit_work_sc_7, 
						{ fn IFNULL(month7.count_psychological_ua, 0) } AS count_psychological_ua_7, 
						{ fn IFNULL(month7.count_psychological_uc, 0) } AS count_psychological_uc_7, 
						{ fn IFNULL(month7.count_psychological_sa, 0) } AS count_psychological_sa_7,
						{ fn IFNULL(month7.count_psychological_sc, 0) } AS count_psychological_sc_7, 
						{ fn IFNULL(month7.count_posture_ua, 0) } AS count_posture_ua_7, 
						{ fn IFNULL(month7.count_posture_uc, 0) } AS count_posture_uc_7, 
						{ fn IFNULL(month7.count_posture_sa, 0) } AS count_posture_sa_7,
						{ fn IFNULL(month7.count_posture_sc, 0) } AS count_posture_sc_7, 
						{ fn IFNULL(month7.count_substance_ua, 0) } AS count_substance_ua_7, 
						{ fn IFNULL(month7.count_substance_uc, 0) } AS count_substance_uc_7, 
						{ fn IFNULL(month7.count_substance_sa, 0) } AS count_substance_sa_7,
						{ fn IFNULL(month7.count_substance_sc, 0) } AS count_substance_sc_7, 
						{ fn IFNULL(month7.count_hygiene_ua, 0) } AS count_hygiene_ua_7, 
						{ fn IFNULL(month7.count_hygiene_uc, 0) } AS count_hygiene_uc_7, 
						{ fn IFNULL(month7.count_hygiene_sa, 0) } AS count_hygiene_sa_7,
						{ fn IFNULL(month7.count_hygiene_sc, 0) } AS count_hygiene_sc_7, 
						{ fn IFNULL(month7.count_house_ua, 0) } AS count_house_ua_7, 
						{ fn IFNULL(month7.count_house_uc, 0) } AS count_house_uc_7, 
						{ fn IFNULL(month7.count_house_sa, 0) } AS count_house_sa_7,
						{ fn IFNULL(month7.count_house_sc, 0) } AS count_house_sc_7, 
						{ fn IFNULL(month7.count_standard_ua, 0) } AS count_standard_ua_7, 
						{ fn IFNULL(month7.count_standard_uc, 0) } AS count_standard_uc_7, 
						{ fn IFNULL(month7.count_standard_sa, 0) } AS count_standard_sa_7,
						{ fn IFNULL(month7.count_standard_sc, 0) } AS count_standard_sc_7, 
						{ fn IFNULL(month7.count_spill_ua, 0) } AS count_spill_ua_7, 
						{ fn IFNULL(month7.count_spill_uc, 0) } AS count_spill_uc_7, 
						{ fn IFNULL(month7.count_spill_sa, 0) } AS count_spill_sa_7,
						{ fn IFNULL(month7.count_spill_sc, 0) } AS count_spill_sc_7, 
						{ fn IFNULL(month7.count_waste_energy_ua, 0) } AS count_waste_energy_ua_7, 
						{ fn IFNULL(month7.count_waste_energy_uc, 0) } AS count_waste_energy_uc_7, 
						{ fn IFNULL(month7.count_waste_energy_sa, 0) } AS count_waste_energy_sa_7,
						{ fn IFNULL(month7.count_waste_energy_sc, 0) } AS count_waste_energy_sc_7, 
						{ fn IFNULL(month7.count_containment_ua, 0) } AS count_containment_ua_7, 
						{ fn IFNULL(month7.count_containment_uc, 0) } AS count_containment_uc_7, 
						{ fn IFNULL(month7.count_containment_sa, 0) } AS count_containment_sa_7,
						{ fn IFNULL(month7.count_containment_sc, 0) } AS count_containment_sc_7, 
						{ fn IFNULL(month7.count_absorbent_ua, 0) } AS count_absorbent_ua_7, 
						{ fn IFNULL(month7.count_absorbent_uc, 0) } AS count_absorbent_uc_7, 
						{ fn IFNULL(month7.count_absorbent_sa, 0) } AS count_absorbent_sa_7,
						{ fn IFNULL(month7.count_absorbent_sc, 0) } AS count_absorbent_sc_7, 
						{ fn IFNULL(month7.count_hira_ua, 0) } AS count_hira_ua_7, 
						{ fn IFNULL(month7.count_hira_uc, 0) } AS count_hira_uc_7, 
						{ fn IFNULL(month7.count_hira_sa, 0) } AS count_hira_sa_7,
						{ fn IFNULL(month7.count_hira_sc, 0) } AS count_hira_sc_7, 
						{ fn IFNULL(month7.count_ptw_ua, 0) } AS count_ptw_ua_7, 
						{ fn IFNULL(month7.count_ptw_uc, 0) } AS count_ptw_uc_7, 
						{ fn IFNULL(month7.count_ptw_sa, 0) } AS count_ptw_sa_7,
						{ fn IFNULL(month7.count_ptw_sc, 0) } AS count_ptw_sc_7, 
						{ fn IFNULL(month7.count_sop_ua, 0) } AS count_sop_ua_7, 
						{ fn IFNULL(month7.count_sop_uc, 0) } AS count_sop_uc_7, 
						{ fn IFNULL(month7.count_sop_sa, 0) } AS count_sop_sa_7,
						{ fn IFNULL(month7.count_sop_sc, 0) } AS count_sop_sc_7, 
						{ fn IFNULL(month7.count_msds_ua, 0) } AS count_msds_ua_7, 
						{ fn IFNULL(month7.count_msds_uc, 0) } AS count_msds_uc_7, 
						{ fn IFNULL(month7.count_msds_sa, 0) } AS count_msds_sa_7,
						{ fn IFNULL(month7.count_msds_sc, 0) } AS count_msds_sc_7, 
						{ fn IFNULL(month7.count_emergency_ua, 0) } AS count_emergency_ua_7, 
						{ fn IFNULL(month7.count_emergency_uc, 0) } AS count_emergency_uc_7, 
						{ fn IFNULL(month7.count_emergency_sa, 0) } AS count_emergency_sa_7,
						{ fn IFNULL(month7.count_emergency_sc, 0) } AS count_emergency_sc_7, 
						{ fn IFNULL(month7.count_certificates_ua, 0) } AS count_certificates_ua_7, 
						{ fn IFNULL(month7.count_certificates_uc, 0) } AS count_certificates_uc_7, 
						{ fn IFNULL(month7.count_certificates_sa, 0) } AS count_certificates_sa_7,
						{ fn IFNULL(month7.count_certificates_sc, 0) } AS count_certificates_sc_7, 
						{ fn IFNULL(month7.count_ppe_ua, 0) } AS count_ppe_ua_7, 
						{ fn IFNULL(month7.count_ppe_uc, 0) } AS count_ppe_uc_7, 
						{ fn IFNULL(month7.count_ppe_sa, 0) } AS count_ppe_sa_7,
						{ fn IFNULL(month7.count_ppe_sc, 0) } AS count_ppe_sc_7, 
						{ fn IFNULL(month7.count_hand_ua, 0) } AS count_hand_ua_7, 
						{ fn IFNULL(month7.count_hand_uc, 0) } AS count_hand_uc_7, 
						{ fn IFNULL(month7.count_hand_sa, 0) } AS count_hand_sa_7,
						{ fn IFNULL(month7.count_hand_sc, 0) } AS count_hand_sc_7, 
						{ fn IFNULL(month7.count_mechanical_ua, 0) } AS count_mechanical_ua_7, 
						{ fn IFNULL(month7.count_mechanical_uc, 0) } AS count_mechanical_uc_7, 
						{ fn IFNULL(month7.count_mechanical_sa, 0) } AS count_mechanical_sa_7,
						{ fn IFNULL(month7.count_mechanical_sc, 0) } AS count_mechanical_sc_7, 
						{ fn IFNULL(month7.count_electrical_ua, 0) } AS count_electrical_ua_7, 
						{ fn IFNULL(month7.count_electrical_uc, 0) } AS count_electrical_uc_7, 
						{ fn IFNULL(month7.count_electrical_sa, 0) } AS count_electrical_sa_7,
						{ fn IFNULL(month7.count_electrical_sc, 0) } AS count_electrical_sc_7, 
						{ fn IFNULL(month7.count_vehicular_ua, 0) } AS count_vehicular_ua_7, 
						{ fn IFNULL(month7.count_vehicular_uc, 0) } AS count_vehicular_uc_7, 
						{ fn IFNULL(month7.count_vehicular_sa, 0) } AS count_vehicular_sa_7,
						{ fn IFNULL(month7.count_vehicular_sc, 0) } AS count_vehicular_sc_7, 
						{ fn IFNULL(month7.count_substandard_ua, 0) } AS count_substandard_ua_7, 
						{ fn IFNULL(month7.count_substandard_uc, 0) } AS count_substandard_uc_7, 
						{ fn IFNULL(month7.count_substandard_sa, 0) } AS count_substandard_sa_7,
						{ fn IFNULL(month7.count_substandard_sc, 0) } AS count_substandard_sc_7, 
						{ fn IFNULL(month7.count_h2s_ua, 0) } AS count_h2s_ua_7, 
						{ fn IFNULL(month7.count_h2s_uc, 0) } AS count_h2s_uc_7, 
						{ fn IFNULL(month7.count_h2s_sa, 0) } AS count_h2s_sa_7,
						{ fn IFNULL(month7.count_h2s_sc, 0) } AS count_h2s_sc_7, 
						{ fn IFNULL(month7.count_workplace_health_ua, 0) } AS count_workplace_health_ua_7, 
						{ fn IFNULL(month7.count_workplace_health_uc, 0) } AS count_workplace_health_uc_7, 
						{ fn IFNULL(month7.count_workplace_health_sa, 0) } AS count_workplace_health_sa_7,
						{ fn IFNULL(month7.count_workplace_health_sc, 0) } AS count_workplace_health_sc_7,
						{ fn IFNULL(month8.count_accident_ua, 0) } AS count_accident_ua_8, 
						{ fn IFNULL(month8.count_accident_uc, 0) } AS count_accident_uc_8, 
						{ fn IFNULL(month8.count_accident_sa, 0) } AS count_accident_sa_8,
						{ fn IFNULL(month8.count_accident_sc, 0) } AS count_accident_sc_8, 
						{ fn IFNULL(month8.count_fire_ua, 0) } AS count_fire_ua_8, 
						{ fn IFNULL(month8.count_fire_uc, 0) } AS count_fire_uc_8, 
						{ fn IFNULL(month8.count_fire_sa, 0) } AS count_fire_sa_8,
						{ fn IFNULL(month8.count_fire_sc, 0) } AS count_fire_sc_8, 
						{ fn IFNULL(month8.count_prevention_ua, 0) } AS count_prevention_ua_8, 
						{ fn IFNULL(month8.count_prevention_uc, 0) } AS count_prevention_uc_8, 
						{ fn IFNULL(month8.count_prevention_sa, 0) } AS count_prevention_sa_8,
						{ fn IFNULL(month8.count_prevention_sc, 0) } AS count_prevention_sc_8, 
						{ fn IFNULL(month8.count_supervisor_ua, 0) } AS count_supervisor_ua_8, 
						{ fn IFNULL(month8.count_supervisor_uc, 0) } AS count_supervisor_uc_8, 
						{ fn IFNULL(month8.count_supervisor_sa, 0) } AS count_supervisor_sa_8,
						{ fn IFNULL(month8.count_supervisor_sc, 0) } AS count_supervisor_sc_8, 
						{ fn IFNULL(month8.count_fit_work_ua, 0) } AS count_fit_work_ua_8, 
						{ fn IFNULL(month8.count_fit_work_uc, 0) } AS count_fit_work_uc_8, 
						{ fn IFNULL(month8.count_fit_work_sa, 0) } AS count_fit_work_sa_8,
						{ fn IFNULL(month8.count_fit_work_sc, 0) } AS count_fit_work_sc_8, 
						{ fn IFNULL(month8.count_psychological_ua, 0) } AS count_psychological_ua_8, 
						{ fn IFNULL(month8.count_psychological_uc, 0) } AS count_psychological_uc_8, 
						{ fn IFNULL(month8.count_psychological_sa, 0) } AS count_psychological_sa_8,
						{ fn IFNULL(month8.count_psychological_sc, 0) } AS count_psychological_sc_8, 
						{ fn IFNULL(month8.count_posture_ua, 0) } AS count_posture_ua_8, 
						{ fn IFNULL(month8.count_posture_uc, 0) } AS count_posture_uc_8, 
						{ fn IFNULL(month8.count_posture_sa, 0) } AS count_posture_sa_8,
						{ fn IFNULL(month8.count_posture_sc, 0) } AS count_posture_sc_8, 
						{ fn IFNULL(month8.count_substance_ua, 0) } AS count_substance_ua_8, 
						{ fn IFNULL(month8.count_substance_uc, 0) } AS count_substance_uc_8, 
						{ fn IFNULL(month8.count_substance_sa, 0) } AS count_substance_sa_8,
						{ fn IFNULL(month8.count_substance_sc, 0) } AS count_substance_sc_8, 
						{ fn IFNULL(month8.count_hygiene_ua, 0) } AS count_hygiene_ua_8, 
						{ fn IFNULL(month8.count_hygiene_uc, 0) } AS count_hygiene_uc_8, 
						{ fn IFNULL(month8.count_hygiene_sa, 0) } AS count_hygiene_sa_8,
						{ fn IFNULL(month8.count_hygiene_sc, 0) } AS count_hygiene_sc_8, 
						{ fn IFNULL(month8.count_house_ua, 0) } AS count_house_ua_8, 
						{ fn IFNULL(month8.count_house_uc, 0) } AS count_house_uc_8, 
						{ fn IFNULL(month8.count_house_sa, 0) } AS count_house_sa_8,
						{ fn IFNULL(month8.count_house_sc, 0) } AS count_house_sc_8, 
						{ fn IFNULL(month8.count_standard_ua, 0) } AS count_standard_ua_8, 
						{ fn IFNULL(month8.count_standard_uc, 0) } AS count_standard_uc_8, 
						{ fn IFNULL(month8.count_standard_sa, 0) } AS count_standard_sa_8,
						{ fn IFNULL(month8.count_standard_sc, 0) } AS count_standard_sc_8, 
						{ fn IFNULL(month8.count_spill_ua, 0) } AS count_spill_ua_8, 
						{ fn IFNULL(month8.count_spill_uc, 0) } AS count_spill_uc_8, 
						{ fn IFNULL(month8.count_spill_sa, 0) } AS count_spill_sa_8,
						{ fn IFNULL(month8.count_spill_sc, 0) } AS count_spill_sc_8, 
						{ fn IFNULL(month8.count_waste_energy_ua, 0) } AS count_waste_energy_ua_8, 
						{ fn IFNULL(month8.count_waste_energy_uc, 0) } AS count_waste_energy_uc_8, 
						{ fn IFNULL(month8.count_waste_energy_sa, 0) } AS count_waste_energy_sa_8,
						{ fn IFNULL(month8.count_waste_energy_sc, 0) } AS count_waste_energy_sc_8, 
						{ fn IFNULL(month8.count_containment_ua, 0) } AS count_containment_ua_8, 
						{ fn IFNULL(month8.count_containment_uc, 0) } AS count_containment_uc_8, 
						{ fn IFNULL(month8.count_containment_sa, 0) } AS count_containment_sa_8,
						{ fn IFNULL(month8.count_containment_sc, 0) } AS count_containment_sc_8, 
						{ fn IFNULL(month8.count_absorbent_ua, 0) } AS count_absorbent_ua_8, 
						{ fn IFNULL(month8.count_absorbent_uc, 0) } AS count_absorbent_uc_8, 
						{ fn IFNULL(month8.count_absorbent_sa, 0) } AS count_absorbent_sa_8,
						{ fn IFNULL(month8.count_absorbent_sc, 0) } AS count_absorbent_sc_8, 
						{ fn IFNULL(month8.count_hira_ua, 0) } AS count_hira_ua_8, 
						{ fn IFNULL(month8.count_hira_uc, 0) } AS count_hira_uc_8, 
						{ fn IFNULL(month8.count_hira_sa, 0) } AS count_hira_sa_8,
						{ fn IFNULL(month8.count_hira_sc, 0) } AS count_hira_sc_8, 
						{ fn IFNULL(month8.count_ptw_ua, 0) } AS count_ptw_ua_8, 
						{ fn IFNULL(month8.count_ptw_uc, 0) } AS count_ptw_uc_8, 
						{ fn IFNULL(month8.count_ptw_sa, 0) } AS count_ptw_sa_8,
						{ fn IFNULL(month8.count_ptw_sc, 0) } AS count_ptw_sc_8, 
						{ fn IFNULL(month8.count_sop_ua, 0) } AS count_sop_ua_8, 
						{ fn IFNULL(month8.count_sop_uc, 0) } AS count_sop_uc_8, 
						{ fn IFNULL(month8.count_sop_sa, 0) } AS count_sop_sa_8,
						{ fn IFNULL(month8.count_sop_sc, 0) } AS count_sop_sc_8, 
						{ fn IFNULL(month8.count_msds_ua, 0) } AS count_msds_ua_8, 
						{ fn IFNULL(month8.count_msds_uc, 0) } AS count_msds_uc_8, 
						{ fn IFNULL(month8.count_msds_sa, 0) } AS count_msds_sa_8,
						{ fn IFNULL(month8.count_msds_sc, 0) } AS count_msds_sc_8, 
						{ fn IFNULL(month8.count_emergency_ua, 0) } AS count_emergency_ua_8, 
						{ fn IFNULL(month8.count_emergency_uc, 0) } AS count_emergency_uc_8, 
						{ fn IFNULL(month8.count_emergency_sa, 0) } AS count_emergency_sa_8,
						{ fn IFNULL(month8.count_emergency_sc, 0) } AS count_emergency_sc_8, 
						{ fn IFNULL(month8.count_certificates_ua, 0) } AS count_certificates_ua_8, 
						{ fn IFNULL(month8.count_certificates_uc, 0) } AS count_certificates_uc_8, 
						{ fn IFNULL(month8.count_certificates_sa, 0) } AS count_certificates_sa_8,
						{ fn IFNULL(month8.count_certificates_sc, 0) } AS count_certificates_sc_8, 
						{ fn IFNULL(month8.count_ppe_ua, 0) } AS count_ppe_ua_8, 
						{ fn IFNULL(month8.count_ppe_uc, 0) } AS count_ppe_uc_8, 
						{ fn IFNULL(month8.count_ppe_sa, 0) } AS count_ppe_sa_8,
						{ fn IFNULL(month8.count_ppe_sc, 0) } AS count_ppe_sc_8, 
						{ fn IFNULL(month8.count_hand_ua, 0) } AS count_hand_ua_8, 
						{ fn IFNULL(month8.count_hand_uc, 0) } AS count_hand_uc_8, 
						{ fn IFNULL(month8.count_hand_sa, 0) } AS count_hand_sa_8,
						{ fn IFNULL(month8.count_hand_sc, 0) } AS count_hand_sc_8, 
						{ fn IFNULL(month8.count_mechanical_ua, 0) } AS count_mechanical_ua_8, 
						{ fn IFNULL(month8.count_mechanical_uc, 0) } AS count_mechanical_uc_8, 
						{ fn IFNULL(month8.count_mechanical_sa, 0) } AS count_mechanical_sa_8,
						{ fn IFNULL(month8.count_mechanical_sc, 0) } AS count_mechanical_sc_8, 
						{ fn IFNULL(month8.count_electrical_ua, 0) } AS count_electrical_ua_8, 
						{ fn IFNULL(month8.count_electrical_uc, 0) } AS count_electrical_uc_8, 
						{ fn IFNULL(month8.count_electrical_sa, 0) } AS count_electrical_sa_8,
						{ fn IFNULL(month8.count_electrical_sc, 0) } AS count_electrical_sc_8, 
						{ fn IFNULL(month8.count_vehicular_ua, 0) } AS count_vehicular_ua_8, 
						{ fn IFNULL(month8.count_vehicular_uc, 0) } AS count_vehicular_uc_8, 
						{ fn IFNULL(month8.count_vehicular_sa, 0) } AS count_vehicular_sa_8,
						{ fn IFNULL(month8.count_vehicular_sc, 0) } AS count_vehicular_sc_8, 
						{ fn IFNULL(month8.count_substandard_ua, 0) } AS count_substandard_ua_8, 
						{ fn IFNULL(month8.count_substandard_uc, 0) } AS count_substandard_uc_8, 
						{ fn IFNULL(month8.count_substandard_sa, 0) } AS count_substandard_sa_8,
						{ fn IFNULL(month8.count_substandard_sc, 0) } AS count_substandard_sc_8, 
						{ fn IFNULL(month8.count_h2s_ua, 0) } AS count_h2s_ua_8, 
						{ fn IFNULL(month8.count_h2s_uc, 0) } AS count_h2s_uc_8, 
						{ fn IFNULL(month8.count_h2s_sa, 0) } AS count_h2s_sa_8,
						{ fn IFNULL(month8.count_h2s_sc, 0) } AS count_h2s_sc_8, 
						{ fn IFNULL(month8.count_workplace_health_ua, 0) } AS count_workplace_health_ua_8, 
						{ fn IFNULL(month8.count_workplace_health_uc, 0) } AS count_workplace_health_uc_8, 
						{ fn IFNULL(month8.count_workplace_health_sa, 0) } AS count_workplace_health_sa_8,
						{ fn IFNULL(month8.count_workplace_health_sc, 0) } AS count_workplace_health_sc_8,
						{ fn IFNULL(month9.count_accident_ua, 0) } AS count_accident_ua_9, 
						{ fn IFNULL(month9.count_accident_uc, 0) } AS count_accident_uc_9, 
						{ fn IFNULL(month9.count_accident_sa, 0) } AS count_accident_sa_9,
						{ fn IFNULL(month9.count_accident_sc, 0) } AS count_accident_sc_9, 
						{ fn IFNULL(month9.count_fire_ua, 0) } AS count_fire_ua_9, 
						{ fn IFNULL(month9.count_fire_uc, 0) } AS count_fire_uc_9, 
						{ fn IFNULL(month9.count_fire_sa, 0) } AS count_fire_sa_9,
						{ fn IFNULL(month9.count_fire_sc, 0) } AS count_fire_sc_9, 
						{ fn IFNULL(month9.count_prevention_ua, 0) } AS count_prevention_ua_9, 
						{ fn IFNULL(month9.count_prevention_uc, 0) } AS count_prevention_uc_9, 
						{ fn IFNULL(month9.count_prevention_sa, 0) } AS count_prevention_sa_9,
						{ fn IFNULL(month9.count_prevention_sc, 0) } AS count_prevention_sc_9, 
						{ fn IFNULL(month9.count_supervisor_ua, 0) } AS count_supervisor_ua_9, 
						{ fn IFNULL(month9.count_supervisor_uc, 0) } AS count_supervisor_uc_9, 
						{ fn IFNULL(month9.count_supervisor_sa, 0) } AS count_supervisor_sa_9,
						{ fn IFNULL(month9.count_supervisor_sc, 0) } AS count_supervisor_sc_9, 
						{ fn IFNULL(month9.count_fit_work_ua, 0) } AS count_fit_work_ua_9, 
						{ fn IFNULL(month9.count_fit_work_uc, 0) } AS count_fit_work_uc_9, 
						{ fn IFNULL(month9.count_fit_work_sa, 0) } AS count_fit_work_sa_9,
						{ fn IFNULL(month9.count_fit_work_sc, 0) } AS count_fit_work_sc_9, 
						{ fn IFNULL(month9.count_psychological_ua, 0) } AS count_psychological_ua_9, 
						{ fn IFNULL(month9.count_psychological_uc, 0) } AS count_psychological_uc_9, 
						{ fn IFNULL(month9.count_psychological_sa, 0) } AS count_psychological_sa_9,
						{ fn IFNULL(month9.count_psychological_sc, 0) } AS count_psychological_sc_9, 
						{ fn IFNULL(month9.count_posture_ua, 0) } AS count_posture_ua_9, 
						{ fn IFNULL(month9.count_posture_uc, 0) } AS count_posture_uc_9, 
						{ fn IFNULL(month9.count_posture_sa, 0) } AS count_posture_sa_9,
						{ fn IFNULL(month9.count_posture_sc, 0) } AS count_posture_sc_9, 
						{ fn IFNULL(month9.count_substance_ua, 0) } AS count_substance_ua_9, 
						{ fn IFNULL(month9.count_substance_uc, 0) } AS count_substance_uc_9, 
						{ fn IFNULL(month9.count_substance_sa, 0) } AS count_substance_sa_9,
						{ fn IFNULL(month9.count_substance_sc, 0) } AS count_substance_sc_9, 
						{ fn IFNULL(month9.count_hygiene_ua, 0) } AS count_hygiene_ua_9, 
						{ fn IFNULL(month9.count_hygiene_uc, 0) } AS count_hygiene_uc_9, 
						{ fn IFNULL(month9.count_hygiene_sa, 0) } AS count_hygiene_sa_9,
						{ fn IFNULL(month9.count_hygiene_sc, 0) } AS count_hygiene_sc_9, 
						{ fn IFNULL(month9.count_house_ua, 0) } AS count_house_ua_9, 
						{ fn IFNULL(month9.count_house_uc, 0) } AS count_house_uc_9, 
						{ fn IFNULL(month9.count_house_sa, 0) } AS count_house_sa_9,
						{ fn IFNULL(month9.count_house_sc, 0) } AS count_house_sc_9, 
						{ fn IFNULL(month9.count_standard_ua, 0) } AS count_standard_ua_9, 
						{ fn IFNULL(month9.count_standard_uc, 0) } AS count_standard_uc_9, 
						{ fn IFNULL(month9.count_standard_sa, 0) } AS count_standard_sa_9,
						{ fn IFNULL(month9.count_standard_sc, 0) } AS count_standard_sc_9, 
						{ fn IFNULL(month9.count_spill_ua, 0) } AS count_spill_ua_9, 
						{ fn IFNULL(month9.count_spill_uc, 0) } AS count_spill_uc_9, 
						{ fn IFNULL(month9.count_spill_sa, 0) } AS count_spill_sa_9,
						{ fn IFNULL(month9.count_spill_sc, 0) } AS count_spill_sc_9, 
						{ fn IFNULL(month9.count_waste_energy_ua, 0) } AS count_waste_energy_ua_9, 
						{ fn IFNULL(month9.count_waste_energy_uc, 0) } AS count_waste_energy_uc_9, 
						{ fn IFNULL(month9.count_waste_energy_sa, 0) } AS count_waste_energy_sa_9,
						{ fn IFNULL(month9.count_waste_energy_sc, 0) } AS count_waste_energy_sc_9, 
						{ fn IFNULL(month9.count_containment_ua, 0) } AS count_containment_ua_9, 
						{ fn IFNULL(month9.count_containment_uc, 0) } AS count_containment_uc_9, 
						{ fn IFNULL(month9.count_containment_sa, 0) } AS count_containment_sa_9,
						{ fn IFNULL(month9.count_containment_sc, 0) } AS count_containment_sc_9, 
						{ fn IFNULL(month9.count_absorbent_ua, 0) } AS count_absorbent_ua_9, 
						{ fn IFNULL(month9.count_absorbent_uc, 0) } AS count_absorbent_uc_9, 
						{ fn IFNULL(month9.count_absorbent_sa, 0) } AS count_absorbent_sa_9,
						{ fn IFNULL(month9.count_absorbent_sc, 0) } AS count_absorbent_sc_9, 
						{ fn IFNULL(month9.count_hira_ua, 0) } AS count_hira_ua_9, 
						{ fn IFNULL(month9.count_hira_uc, 0) } AS count_hira_uc_9, 
						{ fn IFNULL(month9.count_hira_sa, 0) } AS count_hira_sa_9,
						{ fn IFNULL(month9.count_hira_sc, 0) } AS count_hira_sc_9, 
						{ fn IFNULL(month9.count_ptw_ua, 0) } AS count_ptw_ua_9, 
						{ fn IFNULL(month9.count_ptw_uc, 0) } AS count_ptw_uc_9, 
						{ fn IFNULL(month9.count_ptw_sa, 0) } AS count_ptw_sa_9,
						{ fn IFNULL(month9.count_ptw_sc, 0) } AS count_ptw_sc_9, 
						{ fn IFNULL(month9.count_sop_ua, 0) } AS count_sop_ua_9, 
						{ fn IFNULL(month9.count_sop_uc, 0) } AS count_sop_uc_9, 
						{ fn IFNULL(month9.count_sop_sa, 0) } AS count_sop_sa_9,
						{ fn IFNULL(month9.count_sop_sc, 0) } AS count_sop_sc_9, 
						{ fn IFNULL(month9.count_msds_ua, 0) } AS count_msds_ua_9, 
						{ fn IFNULL(month9.count_msds_uc, 0) } AS count_msds_uc_9, 
						{ fn IFNULL(month9.count_msds_sa, 0) } AS count_msds_sa_9,
						{ fn IFNULL(month9.count_msds_sc, 0) } AS count_msds_sc_9, 
						{ fn IFNULL(month9.count_emergency_ua, 0) } AS count_emergency_ua_9, 
						{ fn IFNULL(month9.count_emergency_uc, 0) } AS count_emergency_uc_9, 
						{ fn IFNULL(month9.count_emergency_sa, 0) } AS count_emergency_sa_9,
						{ fn IFNULL(month9.count_emergency_sc, 0) } AS count_emergency_sc_9, 
						{ fn IFNULL(month9.count_certificates_ua, 0) } AS count_certificates_ua_9, 
						{ fn IFNULL(month9.count_certificates_uc, 0) } AS count_certificates_uc_9, 
						{ fn IFNULL(month9.count_certificates_sa, 0) } AS count_certificates_sa_9,
						{ fn IFNULL(month9.count_certificates_sc, 0) } AS count_certificates_sc_9, 
						{ fn IFNULL(month9.count_ppe_ua, 0) } AS count_ppe_ua_9, 
						{ fn IFNULL(month9.count_ppe_uc, 0) } AS count_ppe_uc_9, 
						{ fn IFNULL(month9.count_ppe_sa, 0) } AS count_ppe_sa_9,
						{ fn IFNULL(month9.count_ppe_sc, 0) } AS count_ppe_sc_9, 
						{ fn IFNULL(month9.count_hand_ua, 0) } AS count_hand_ua_9, 
						{ fn IFNULL(month9.count_hand_uc, 0) } AS count_hand_uc_9, 
						{ fn IFNULL(month9.count_hand_sa, 0) } AS count_hand_sa_9,
						{ fn IFNULL(month9.count_hand_sc, 0) } AS count_hand_sc_9, 
						{ fn IFNULL(month9.count_mechanical_ua, 0) } AS count_mechanical_ua_9, 
						{ fn IFNULL(month9.count_mechanical_uc, 0) } AS count_mechanical_uc_9, 
						{ fn IFNULL(month9.count_mechanical_sa, 0) } AS count_mechanical_sa_9,
						{ fn IFNULL(month9.count_mechanical_sc, 0) } AS count_mechanical_sc_9, 
						{ fn IFNULL(month9.count_electrical_ua, 0) } AS count_electrical_ua_9, 
						{ fn IFNULL(month9.count_electrical_uc, 0) } AS count_electrical_uc_9, 
						{ fn IFNULL(month9.count_electrical_sa, 0) } AS count_electrical_sa_9,
						{ fn IFNULL(month9.count_electrical_sc, 0) } AS count_electrical_sc_9, 
						{ fn IFNULL(month9.count_vehicular_ua, 0) } AS count_vehicular_ua_9, 
						{ fn IFNULL(month9.count_vehicular_uc, 0) } AS count_vehicular_uc_9, 
						{ fn IFNULL(month9.count_vehicular_sa, 0) } AS count_vehicular_sa_9,
						{ fn IFNULL(month9.count_vehicular_sc, 0) } AS count_vehicular_sc_9, 
						{ fn IFNULL(month9.count_substandard_ua, 0) } AS count_substandard_ua_9, 
						{ fn IFNULL(month9.count_substandard_uc, 0) } AS count_substandard_uc_9, 
						{ fn IFNULL(month9.count_substandard_sa, 0) } AS count_substandard_sa_9,
						{ fn IFNULL(month9.count_substandard_sc, 0) } AS count_substandard_sc_9, 
						{ fn IFNULL(month9.count_h2s_ua, 0) } AS count_h2s_ua_9, 
						{ fn IFNULL(month9.count_h2s_uc, 0) } AS count_h2s_uc_9, 
						{ fn IFNULL(month9.count_h2s_sa, 0) } AS count_h2s_sa_9,
						{ fn IFNULL(month9.count_h2s_sc, 0) } AS count_h2s_sc_9, 
						{ fn IFNULL(month9.count_workplace_health_ua, 0) } AS count_workplace_health_ua_9, 
						{ fn IFNULL(month9.count_workplace_health_uc, 0) } AS count_workplace_health_uc_9, 
						{ fn IFNULL(month9.count_workplace_health_sa, 0) } AS count_workplace_health_sa_9,
						{ fn IFNULL(month9.count_workplace_health_sc, 0) } AS count_workplace_health_sc_9,
						{ fn IFNULL(month10.count_accident_ua, 0) } AS count_accident_ua_10, 
						{ fn IFNULL(month10.count_accident_uc, 0) } AS count_accident_uc_10, 
						{ fn IFNULL(month10.count_accident_sa, 0) } AS count_accident_sa_10,
						{ fn IFNULL(month10.count_accident_sc, 0) } AS count_accident_sc_10, 
						{ fn IFNULL(month10.count_fire_ua, 0) } AS count_fire_ua_10, 
						{ fn IFNULL(month10.count_fire_uc, 0) } AS count_fire_uc_10, 
						{ fn IFNULL(month10.count_fire_sa, 0) } AS count_fire_sa_10,
						{ fn IFNULL(month10.count_fire_sc, 0) } AS count_fire_sc_10, 
						{ fn IFNULL(month10.count_prevention_ua, 0) } AS count_prevention_ua_10, 
						{ fn IFNULL(month10.count_prevention_uc, 0) } AS count_prevention_uc_10, 
						{ fn IFNULL(month10.count_prevention_sa, 0) } AS count_prevention_sa_10,
						{ fn IFNULL(month10.count_prevention_sc, 0) } AS count_prevention_sc_10, 
						{ fn IFNULL(month10.count_supervisor_ua, 0) } AS count_supervisor_ua_10, 
						{ fn IFNULL(month10.count_supervisor_uc, 0) } AS count_supervisor_uc_10, 
						{ fn IFNULL(month10.count_supervisor_sa, 0) } AS count_supervisor_sa_10,
						{ fn IFNULL(month10.count_supervisor_sc, 0) } AS count_supervisor_sc_10, 
						{ fn IFNULL(month10.count_fit_work_ua, 0) } AS count_fit_work_ua_10, 
						{ fn IFNULL(month10.count_fit_work_uc, 0) } AS count_fit_work_uc_10, 
						{ fn IFNULL(month10.count_fit_work_sa, 0) } AS count_fit_work_sa_10,
						{ fn IFNULL(month10.count_fit_work_sc, 0) } AS count_fit_work_sc_10, 
						{ fn IFNULL(month10.count_psychological_ua, 0) } AS count_psychological_ua_10, 
						{ fn IFNULL(month10.count_psychological_uc, 0) } AS count_psychological_uc_10, 
						{ fn IFNULL(month10.count_psychological_sa, 0) } AS count_psychological_sa_10,
						{ fn IFNULL(month10.count_psychological_sc, 0) } AS count_psychological_sc_10, 
						{ fn IFNULL(month10.count_posture_ua, 0) } AS count_posture_ua_10, 
						{ fn IFNULL(month10.count_posture_uc, 0) } AS count_posture_uc_10, 
						{ fn IFNULL(month10.count_posture_sa, 0) } AS count_posture_sa_10,
						{ fn IFNULL(month10.count_posture_sc, 0) } AS count_posture_sc_10, 
						{ fn IFNULL(month10.count_substance_ua, 0) } AS count_substance_ua_10, 
						{ fn IFNULL(month10.count_substance_uc, 0) } AS count_substance_uc_10, 
						{ fn IFNULL(month10.count_substance_sa, 0) } AS count_substance_sa_10,
						{ fn IFNULL(month10.count_substance_sc, 0) } AS count_substance_sc_10, 
						{ fn IFNULL(month10.count_hygiene_ua, 0) } AS count_hygiene_ua_10, 
						{ fn IFNULL(month10.count_hygiene_uc, 0) } AS count_hygiene_uc_10, 
						{ fn IFNULL(month10.count_hygiene_sa, 0) } AS count_hygiene_sa_10,
						{ fn IFNULL(month10.count_hygiene_sc, 0) } AS count_hygiene_sc_10, 
						{ fn IFNULL(month10.count_house_ua, 0) } AS count_house_ua_10, 
						{ fn IFNULL(month10.count_house_uc, 0) } AS count_house_uc_10, 
						{ fn IFNULL(month10.count_house_sa, 0) } AS count_house_sa_10,
						{ fn IFNULL(month10.count_house_sc, 0) } AS count_house_sc_10, 
						{ fn IFNULL(month10.count_standard_ua, 0) } AS count_standard_ua_10, 
						{ fn IFNULL(month10.count_standard_uc, 0) } AS count_standard_uc_10, 
						{ fn IFNULL(month10.count_standard_sa, 0) } AS count_standard_sa_10,
						{ fn IFNULL(month10.count_standard_sc, 0) } AS count_standard_sc_10, 
						{ fn IFNULL(month10.count_spill_ua, 0) } AS count_spill_ua_10, 
						{ fn IFNULL(month10.count_spill_uc, 0) } AS count_spill_uc_10, 
						{ fn IFNULL(month10.count_spill_sa, 0) } AS count_spill_sa_10,
						{ fn IFNULL(month10.count_spill_sc, 0) } AS count_spill_sc_10, 
						{ fn IFNULL(month10.count_waste_energy_ua, 0) } AS count_waste_energy_ua_10, 
						{ fn IFNULL(month10.count_waste_energy_uc, 0) } AS count_waste_energy_uc_10, 
						{ fn IFNULL(month10.count_waste_energy_sa, 0) } AS count_waste_energy_sa_10,
						{ fn IFNULL(month10.count_waste_energy_sc, 0) } AS count_waste_energy_sc_10, 
						{ fn IFNULL(month10.count_containment_ua, 0) } AS count_containment_ua_10, 
						{ fn IFNULL(month10.count_containment_uc, 0) } AS count_containment_uc_10, 
						{ fn IFNULL(month10.count_containment_sa, 0) } AS count_containment_sa_10,
						{ fn IFNULL(month10.count_containment_sc, 0) } AS count_containment_sc_10, 
						{ fn IFNULL(month10.count_absorbent_ua, 0) } AS count_absorbent_ua_10, 
						{ fn IFNULL(month10.count_absorbent_uc, 0) } AS count_absorbent_uc_10, 
						{ fn IFNULL(month10.count_absorbent_sa, 0) } AS count_absorbent_sa_10,
						{ fn IFNULL(month10.count_absorbent_sc, 0) } AS count_absorbent_sc_10, 
						{ fn IFNULL(month10.count_hira_ua, 0) } AS count_hira_ua_10, 
						{ fn IFNULL(month10.count_hira_uc, 0) } AS count_hira_uc_10, 
						{ fn IFNULL(month10.count_hira_sa, 0) } AS count_hira_sa_10,
						{ fn IFNULL(month10.count_hira_sc, 0) } AS count_hira_sc_10, 
						{ fn IFNULL(month10.count_ptw_ua, 0) } AS count_ptw_ua_10, 
						{ fn IFNULL(month10.count_ptw_uc, 0) } AS count_ptw_uc_10, 
						{ fn IFNULL(month10.count_ptw_sa, 0) } AS count_ptw_sa_10,
						{ fn IFNULL(month10.count_ptw_sc, 0) } AS count_ptw_sc_10, 
						{ fn IFNULL(month10.count_sop_ua, 0) } AS count_sop_ua_10, 
						{ fn IFNULL(month10.count_sop_uc, 0) } AS count_sop_uc_10, 
						{ fn IFNULL(month10.count_sop_sa, 0) } AS count_sop_sa_10,
						{ fn IFNULL(month10.count_sop_sc, 0) } AS count_sop_sc_10, 
						{ fn IFNULL(month10.count_msds_ua, 0) } AS count_msds_ua_10, 
						{ fn IFNULL(month10.count_msds_uc, 0) } AS count_msds_uc_10, 
						{ fn IFNULL(month10.count_msds_sa, 0) } AS count_msds_sa_10,
						{ fn IFNULL(month10.count_msds_sc, 0) } AS count_msds_sc_10, 
						{ fn IFNULL(month10.count_emergency_ua, 0) } AS count_emergency_ua_10, 
						{ fn IFNULL(month10.count_emergency_uc, 0) } AS count_emergency_uc_10, 
						{ fn IFNULL(month10.count_emergency_sa, 0) } AS count_emergency_sa_10,
						{ fn IFNULL(month10.count_emergency_sc, 0) } AS count_emergency_sc_10, 
						{ fn IFNULL(month10.count_certificates_ua, 0) } AS count_certificates_ua_10, 
						{ fn IFNULL(month10.count_certificates_uc, 0) } AS count_certificates_uc_10, 
						{ fn IFNULL(month10.count_certificates_sa, 0) } AS count_certificates_sa_10,
						{ fn IFNULL(month10.count_certificates_sc, 0) } AS count_certificates_sc_10, 
						{ fn IFNULL(month10.count_ppe_ua, 0) } AS count_ppe_ua_10, 
						{ fn IFNULL(month10.count_ppe_uc, 0) } AS count_ppe_uc_10, 
						{ fn IFNULL(month10.count_ppe_sa, 0) } AS count_ppe_sa_10,
						{ fn IFNULL(month10.count_ppe_sc, 0) } AS count_ppe_sc_10, 
						{ fn IFNULL(month10.count_hand_ua, 0) } AS count_hand_ua_10, 
						{ fn IFNULL(month10.count_hand_uc, 0) } AS count_hand_uc_10, 
						{ fn IFNULL(month10.count_hand_sa, 0) } AS count_hand_sa_10,
						{ fn IFNULL(month10.count_hand_sc, 0) } AS count_hand_sc_10, 
						{ fn IFNULL(month10.count_mechanical_ua, 0) } AS count_mechanical_ua_10, 
						{ fn IFNULL(month10.count_mechanical_uc, 0) } AS count_mechanical_uc_10, 
						{ fn IFNULL(month10.count_mechanical_sa, 0) } AS count_mechanical_sa_10,
						{ fn IFNULL(month10.count_mechanical_sc, 0) } AS count_mechanical_sc_10, 
						{ fn IFNULL(month10.count_electrical_ua, 0) } AS count_electrical_ua_10, 
						{ fn IFNULL(month10.count_electrical_uc, 0) } AS count_electrical_uc_10, 
						{ fn IFNULL(month10.count_electrical_sa, 0) } AS count_electrical_sa_10,
						{ fn IFNULL(month10.count_electrical_sc, 0) } AS count_electrical_sc_10, 
						{ fn IFNULL(month10.count_vehicular_ua, 0) } AS count_vehicular_ua_10, 
						{ fn IFNULL(month10.count_vehicular_uc, 0) } AS count_vehicular_uc_10, 
						{ fn IFNULL(month10.count_vehicular_sa, 0) } AS count_vehicular_sa_10,
						{ fn IFNULL(month10.count_vehicular_sc, 0) } AS count_vehicular_sc_10, 
						{ fn IFNULL(month10.count_substandard_ua, 0) } AS count_substandard_ua_10, 
						{ fn IFNULL(month10.count_substandard_uc, 0) } AS count_substandard_uc_10, 
						{ fn IFNULL(month10.count_substandard_sa, 0) } AS count_substandard_sa_10,
						{ fn IFNULL(month10.count_substandard_sc, 0) } AS count_substandard_sc_10, 
						{ fn IFNULL(month10.count_h2s_ua, 0) } AS count_h2s_ua_10, 
						{ fn IFNULL(month10.count_h2s_uc, 0) } AS count_h2s_uc_10, 
						{ fn IFNULL(month10.count_h2s_sa, 0) } AS count_h2s_sa_10,
						{ fn IFNULL(month10.count_h2s_sc, 0) } AS count_h2s_sc_10, 
						{ fn IFNULL(month10.count_workplace_health_ua, 0) } AS count_workplace_health_ua_10, 
						{ fn IFNULL(month10.count_workplace_health_uc, 0) } AS count_workplace_health_uc_10, 
						{ fn IFNULL(month10.count_workplace_health_sa, 0) } AS count_workplace_health_sa_10,
						{ fn IFNULL(month10.count_workplace_health_sc, 0) } AS count_workplace_health_sc_10,
						{ fn IFNULL(month11.count_accident_ua, 0) } AS count_accident_ua_11, 
						{ fn IFNULL(month11.count_accident_uc, 0) } AS count_accident_uc_11, 
						{ fn IFNULL(month11.count_accident_sa, 0) } AS count_accident_sa_11,
						{ fn IFNULL(month11.count_accident_sc, 0) } AS count_accident_sc_11, 
						{ fn IFNULL(month11.count_fire_ua, 0) } AS count_fire_ua_11, 
						{ fn IFNULL(month11.count_fire_uc, 0) } AS count_fire_uc_11, 
						{ fn IFNULL(month11.count_fire_sa, 0) } AS count_fire_sa_11,
						{ fn IFNULL(month11.count_fire_sc, 0) } AS count_fire_sc_11, 
						{ fn IFNULL(month11.count_prevention_ua, 0) } AS count_prevention_ua_11, 
						{ fn IFNULL(month11.count_prevention_uc, 0) } AS count_prevention_uc_11, 
						{ fn IFNULL(month11.count_prevention_sa, 0) } AS count_prevention_sa_11,
						{ fn IFNULL(month11.count_prevention_sc, 0) } AS count_prevention_sc_11, 
						{ fn IFNULL(month11.count_supervisor_ua, 0) } AS count_supervisor_ua_11, 
						{ fn IFNULL(month11.count_supervisor_uc, 0) } AS count_supervisor_uc_11, 
						{ fn IFNULL(month11.count_supervisor_sa, 0) } AS count_supervisor_sa_11,
						{ fn IFNULL(month11.count_supervisor_sc, 0) } AS count_supervisor_sc_11, 
						{ fn IFNULL(month11.count_fit_work_ua, 0) } AS count_fit_work_ua_11, 
						{ fn IFNULL(month11.count_fit_work_uc, 0) } AS count_fit_work_uc_11, 
						{ fn IFNULL(month11.count_fit_work_sa, 0) } AS count_fit_work_sa_11,
						{ fn IFNULL(month11.count_fit_work_sc, 0) } AS count_fit_work_sc_11, 
						{ fn IFNULL(month11.count_psychological_ua, 0) } AS count_psychological_ua_11, 
						{ fn IFNULL(month11.count_psychological_uc, 0) } AS count_psychological_uc_11, 
						{ fn IFNULL(month11.count_psychological_sa, 0) } AS count_psychological_sa_11,
						{ fn IFNULL(month11.count_psychological_sc, 0) } AS count_psychological_sc_11, 
						{ fn IFNULL(month11.count_posture_ua, 0) } AS count_posture_ua_11, 
						{ fn IFNULL(month11.count_posture_uc, 0) } AS count_posture_uc_11, 
						{ fn IFNULL(month11.count_posture_sa, 0) } AS count_posture_sa_11,
						{ fn IFNULL(month11.count_posture_sc, 0) } AS count_posture_sc_11, 
						{ fn IFNULL(month11.count_substance_ua, 0) } AS count_substance_ua_11, 
						{ fn IFNULL(month11.count_substance_uc, 0) } AS count_substance_uc_11, 
						{ fn IFNULL(month11.count_substance_sa, 0) } AS count_substance_sa_11,
						{ fn IFNULL(month11.count_substance_sc, 0) } AS count_substance_sc_11, 
						{ fn IFNULL(month11.count_hygiene_ua, 0) } AS count_hygiene_ua_11, 
						{ fn IFNULL(month11.count_hygiene_uc, 0) } AS count_hygiene_uc_11, 
						{ fn IFNULL(month11.count_hygiene_sa, 0) } AS count_hygiene_sa_11,
						{ fn IFNULL(month11.count_hygiene_sc, 0) } AS count_hygiene_sc_11, 
						{ fn IFNULL(month11.count_house_ua, 0) } AS count_house_ua_11, 
						{ fn IFNULL(month11.count_house_uc, 0) } AS count_house_uc_11, 
						{ fn IFNULL(month11.count_house_sa, 0) } AS count_house_sa_11,
						{ fn IFNULL(month11.count_house_sc, 0) } AS count_house_sc_11, 
						{ fn IFNULL(month11.count_standard_ua, 0) } AS count_standard_ua_11, 
						{ fn IFNULL(month11.count_standard_uc, 0) } AS count_standard_uc_11, 
						{ fn IFNULL(month11.count_standard_sa, 0) } AS count_standard_sa_11,
						{ fn IFNULL(month11.count_standard_sc, 0) } AS count_standard_sc_11, 
						{ fn IFNULL(month11.count_spill_ua, 0) } AS count_spill_ua_11, 
						{ fn IFNULL(month11.count_spill_uc, 0) } AS count_spill_uc_11, 
						{ fn IFNULL(month11.count_spill_sa, 0) } AS count_spill_sa_11,
						{ fn IFNULL(month11.count_spill_sc, 0) } AS count_spill_sc_11, 
						{ fn IFNULL(month11.count_waste_energy_ua, 0) } AS count_waste_energy_ua_11, 
						{ fn IFNULL(month11.count_waste_energy_uc, 0) } AS count_waste_energy_uc_11, 
						{ fn IFNULL(month11.count_waste_energy_sa, 0) } AS count_waste_energy_sa_11,
						{ fn IFNULL(month11.count_waste_energy_sc, 0) } AS count_waste_energy_sc_11, 
						{ fn IFNULL(month11.count_containment_ua, 0) } AS count_containment_ua_11, 
						{ fn IFNULL(month11.count_containment_uc, 0) } AS count_containment_uc_11, 
						{ fn IFNULL(month11.count_containment_sa, 0) } AS count_containment_sa_11,
						{ fn IFNULL(month11.count_containment_sc, 0) } AS count_containment_sc_11, 
						{ fn IFNULL(month11.count_absorbent_ua, 0) } AS count_absorbent_ua_11, 
						{ fn IFNULL(month11.count_absorbent_uc, 0) } AS count_absorbent_uc_11, 
						{ fn IFNULL(month11.count_absorbent_sa, 0) } AS count_absorbent_sa_11,
						{ fn IFNULL(month11.count_absorbent_sc, 0) } AS count_absorbent_sc_11, 
						{ fn IFNULL(month11.count_hira_ua, 0) } AS count_hira_ua_11, 
						{ fn IFNULL(month11.count_hira_uc, 0) } AS count_hira_uc_11, 
						{ fn IFNULL(month11.count_hira_sa, 0) } AS count_hira_sa_11,
						{ fn IFNULL(month11.count_hira_sc, 0) } AS count_hira_sc_11, 
						{ fn IFNULL(month11.count_ptw_ua, 0) } AS count_ptw_ua_11, 
						{ fn IFNULL(month11.count_ptw_uc, 0) } AS count_ptw_uc_11, 
						{ fn IFNULL(month11.count_ptw_sa, 0) } AS count_ptw_sa_11,
						{ fn IFNULL(month11.count_ptw_sc, 0) } AS count_ptw_sc_11, 
						{ fn IFNULL(month11.count_sop_ua, 0) } AS count_sop_ua_11, 
						{ fn IFNULL(month11.count_sop_uc, 0) } AS count_sop_uc_11, 
						{ fn IFNULL(month11.count_sop_sa, 0) } AS count_sop_sa_11,
						{ fn IFNULL(month11.count_sop_sc, 0) } AS count_sop_sc_11, 
						{ fn IFNULL(month11.count_msds_ua, 0) } AS count_msds_ua_11, 
						{ fn IFNULL(month11.count_msds_uc, 0) } AS count_msds_uc_11, 
						{ fn IFNULL(month11.count_msds_sa, 0) } AS count_msds_sa_11,
						{ fn IFNULL(month11.count_msds_sc, 0) } AS count_msds_sc_11, 
						{ fn IFNULL(month11.count_emergency_ua, 0) } AS count_emergency_ua_11, 
						{ fn IFNULL(month11.count_emergency_uc, 0) } AS count_emergency_uc_11, 
						{ fn IFNULL(month11.count_emergency_sa, 0) } AS count_emergency_sa_11,
						{ fn IFNULL(month11.count_emergency_sc, 0) } AS count_emergency_sc_11, 
						{ fn IFNULL(month11.count_certificates_ua, 0) } AS count_certificates_ua_11, 
						{ fn IFNULL(month11.count_certificates_uc, 0) } AS count_certificates_uc_11, 
						{ fn IFNULL(month11.count_certificates_sa, 0) } AS count_certificates_sa_11,
						{ fn IFNULL(month11.count_certificates_sc, 0) } AS count_certificates_sc_11, 
						{ fn IFNULL(month11.count_ppe_ua, 0) } AS count_ppe_ua_11, 
						{ fn IFNULL(month11.count_ppe_uc, 0) } AS count_ppe_uc_11, 
						{ fn IFNULL(month11.count_ppe_sa, 0) } AS count_ppe_sa_11,
						{ fn IFNULL(month11.count_ppe_sc, 0) } AS count_ppe_sc_11, 
						{ fn IFNULL(month11.count_hand_ua, 0) } AS count_hand_ua_11, 
						{ fn IFNULL(month11.count_hand_uc, 0) } AS count_hand_uc_11, 
						{ fn IFNULL(month11.count_hand_sa, 0) } AS count_hand_sa_11,
						{ fn IFNULL(month11.count_hand_sc, 0) } AS count_hand_sc_11, 
						{ fn IFNULL(month11.count_mechanical_ua, 0) } AS count_mechanical_ua_11, 
						{ fn IFNULL(month11.count_mechanical_uc, 0) } AS count_mechanical_uc_11, 
						{ fn IFNULL(month11.count_mechanical_sa, 0) } AS count_mechanical_sa_11,
						{ fn IFNULL(month11.count_mechanical_sc, 0) } AS count_mechanical_sc_11, 
						{ fn IFNULL(month11.count_electrical_ua, 0) } AS count_electrical_ua_11, 
						{ fn IFNULL(month11.count_electrical_uc, 0) } AS count_electrical_uc_11, 
						{ fn IFNULL(month11.count_electrical_sa, 0) } AS count_electrical_sa_11,
						{ fn IFNULL(month11.count_electrical_sc, 0) } AS count_electrical_sc_11, 
						{ fn IFNULL(month11.count_vehicular_ua, 0) } AS count_vehicular_ua_11, 
						{ fn IFNULL(month11.count_vehicular_uc, 0) } AS count_vehicular_uc_11, 
						{ fn IFNULL(month11.count_vehicular_sa, 0) } AS count_vehicular_sa_11,
						{ fn IFNULL(month11.count_vehicular_sc, 0) } AS count_vehicular_sc_11, 
						{ fn IFNULL(month11.count_substandard_ua, 0) } AS count_substandard_ua_11, 
						{ fn IFNULL(month11.count_substandard_uc, 0) } AS count_substandard_uc_11, 
						{ fn IFNULL(month11.count_substandard_sa, 0) } AS count_substandard_sa_11,
						{ fn IFNULL(month11.count_substandard_sc, 0) } AS count_substandard_sc_11, 
						{ fn IFNULL(month11.count_h2s_ua, 0) } AS count_h2s_ua_11, 
						{ fn IFNULL(month11.count_h2s_uc, 0) } AS count_h2s_uc_11, 
						{ fn IFNULL(month11.count_h2s_sa, 0) } AS count_h2s_sa_11,
						{ fn IFNULL(month11.count_h2s_sc, 0) } AS count_h2s_sc_11, 
						{ fn IFNULL(month11.count_workplace_health_ua, 0) } AS count_workplace_health_ua_11, 
						{ fn IFNULL(month11.count_workplace_health_uc, 0) } AS count_workplace_health_uc_11, 
						{ fn IFNULL(month11.count_workplace_health_sa, 0) } AS count_workplace_health_sa_11,
						{ fn IFNULL(month11.count_workplace_health_sc, 0) } AS count_workplace_health_sc_11,
						{ fn IFNULL(month12.count_accident_ua, 0) } AS count_accident_ua_12, 
						{ fn IFNULL(month12.count_accident_uc, 0) } AS count_accident_uc_12, 
						{ fn IFNULL(month12.count_accident_sa, 0) } AS count_accident_sa_12,
						{ fn IFNULL(month12.count_accident_sc, 0) } AS count_accident_sc_12, 
						{ fn IFNULL(month12.count_fire_ua, 0) } AS count_fire_ua_12, 
						{ fn IFNULL(month12.count_fire_uc, 0) } AS count_fire_uc_12, 
						{ fn IFNULL(month12.count_fire_sa, 0) } AS count_fire_sa_12,
						{ fn IFNULL(month12.count_fire_sc, 0) } AS count_fire_sc_12, 
						{ fn IFNULL(month12.count_prevention_ua, 0) } AS count_prevention_ua_12, 
						{ fn IFNULL(month12.count_prevention_uc, 0) } AS count_prevention_uc_12, 
						{ fn IFNULL(month12.count_prevention_sa, 0) } AS count_prevention_sa_12,
						{ fn IFNULL(month12.count_prevention_sc, 0) } AS count_prevention_sc_12, 
						{ fn IFNULL(month12.count_supervisor_ua, 0) } AS count_supervisor_ua_12, 
						{ fn IFNULL(month12.count_supervisor_uc, 0) } AS count_supervisor_uc_12, 
						{ fn IFNULL(month12.count_supervisor_sa, 0) } AS count_supervisor_sa_12,
						{ fn IFNULL(month12.count_supervisor_sc, 0) } AS count_supervisor_sc_12, 
						{ fn IFNULL(month12.count_fit_work_ua, 0) } AS count_fit_work_ua_12, 
						{ fn IFNULL(month12.count_fit_work_uc, 0) } AS count_fit_work_uc_12, 
						{ fn IFNULL(month12.count_fit_work_sa, 0) } AS count_fit_work_sa_12,
						{ fn IFNULL(month12.count_fit_work_sc, 0) } AS count_fit_work_sc_12, 
						{ fn IFNULL(month12.count_psychological_ua, 0) } AS count_psychological_ua_12, 
						{ fn IFNULL(month12.count_psychological_uc, 0) } AS count_psychological_uc_12, 
						{ fn IFNULL(month12.count_psychological_sa, 0) } AS count_psychological_sa_12,
						{ fn IFNULL(month12.count_psychological_sc, 0) } AS count_psychological_sc_12, 
						{ fn IFNULL(month12.count_posture_ua, 0) } AS count_posture_ua_12, 
						{ fn IFNULL(month12.count_posture_uc, 0) } AS count_posture_uc_12, 
						{ fn IFNULL(month12.count_posture_sa, 0) } AS count_posture_sa_12,
						{ fn IFNULL(month12.count_posture_sc, 0) } AS count_posture_sc_12, 
						{ fn IFNULL(month12.count_substance_ua, 0) } AS count_substance_ua_12, 
						{ fn IFNULL(month12.count_substance_uc, 0) } AS count_substance_uc_12, 
						{ fn IFNULL(month12.count_substance_sa, 0) } AS count_substance_sa_12,
						{ fn IFNULL(month12.count_substance_sc, 0) } AS count_substance_sc_12, 
						{ fn IFNULL(month12.count_hygiene_ua, 0) } AS count_hygiene_ua_12, 
						{ fn IFNULL(month12.count_hygiene_uc, 0) } AS count_hygiene_uc_12, 
						{ fn IFNULL(month12.count_hygiene_sa, 0) } AS count_hygiene_sa_12,
						{ fn IFNULL(month12.count_hygiene_sc, 0) } AS count_hygiene_sc_12, 
						{ fn IFNULL(month12.count_house_ua, 0) } AS count_house_ua_12, 
						{ fn IFNULL(month12.count_house_uc, 0) } AS count_house_uc_12, 
						{ fn IFNULL(month12.count_house_sa, 0) } AS count_house_sa_12,
						{ fn IFNULL(month12.count_house_sc, 0) } AS count_house_sc_12, 
						{ fn IFNULL(month12.count_standard_ua, 0) } AS count_standard_ua_12, 
						{ fn IFNULL(month12.count_standard_uc, 0) } AS count_standard_uc_12, 
						{ fn IFNULL(month12.count_standard_sa, 0) } AS count_standard_sa_12,
						{ fn IFNULL(month12.count_standard_sc, 0) } AS count_standard_sc_12, 
						{ fn IFNULL(month12.count_spill_ua, 0) } AS count_spill_ua_12, 
						{ fn IFNULL(month12.count_spill_uc, 0) } AS count_spill_uc_12, 
						{ fn IFNULL(month12.count_spill_sa, 0) } AS count_spill_sa_12,
						{ fn IFNULL(month12.count_spill_sc, 0) } AS count_spill_sc_12, 
						{ fn IFNULL(month12.count_waste_energy_ua, 0) } AS count_waste_energy_ua_12, 
						{ fn IFNULL(month12.count_waste_energy_uc, 0) } AS count_waste_energy_uc_12, 
						{ fn IFNULL(month12.count_waste_energy_sa, 0) } AS count_waste_energy_sa_12,
						{ fn IFNULL(month12.count_waste_energy_sc, 0) } AS count_waste_energy_sc_12, 
						{ fn IFNULL(month12.count_containment_ua, 0) } AS count_containment_ua_12, 
						{ fn IFNULL(month12.count_containment_uc, 0) } AS count_containment_uc_12, 
						{ fn IFNULL(month12.count_containment_sa, 0) } AS count_containment_sa_12,
						{ fn IFNULL(month12.count_containment_sc, 0) } AS count_containment_sc_12, 
						{ fn IFNULL(month12.count_absorbent_ua, 0) } AS count_absorbent_ua_12, 
						{ fn IFNULL(month12.count_absorbent_uc, 0) } AS count_absorbent_uc_12, 
						{ fn IFNULL(month12.count_absorbent_sa, 0) } AS count_absorbent_sa_12,
						{ fn IFNULL(month12.count_absorbent_sc, 0) } AS count_absorbent_sc_12, 
						{ fn IFNULL(month12.count_hira_ua, 0) } AS count_hira_ua_12, 
						{ fn IFNULL(month12.count_hira_uc, 0) } AS count_hira_uc_12, 
						{ fn IFNULL(month12.count_hira_sa, 0) } AS count_hira_sa_12,
						{ fn IFNULL(month12.count_hira_sc, 0) } AS count_hira_sc_12, 
						{ fn IFNULL(month12.count_ptw_ua, 0) } AS count_ptw_ua_12, 
						{ fn IFNULL(month12.count_ptw_uc, 0) } AS count_ptw_uc_12, 
						{ fn IFNULL(month12.count_ptw_sa, 0) } AS count_ptw_sa_12,
						{ fn IFNULL(month12.count_ptw_sc, 0) } AS count_ptw_sc_12, 
						{ fn IFNULL(month12.count_sop_ua, 0) } AS count_sop_ua_12, 
						{ fn IFNULL(month12.count_sop_uc, 0) } AS count_sop_uc_12, 
						{ fn IFNULL(month12.count_sop_sa, 0) } AS count_sop_sa_12,
						{ fn IFNULL(month12.count_sop_sc, 0) } AS count_sop_sc_12, 
						{ fn IFNULL(month12.count_msds_ua, 0) } AS count_msds_ua_12, 
						{ fn IFNULL(month12.count_msds_uc, 0) } AS count_msds_uc_12, 
						{ fn IFNULL(month12.count_msds_sa, 0) } AS count_msds_sa_12,
						{ fn IFNULL(month12.count_msds_sc, 0) } AS count_msds_sc_12, 
						{ fn IFNULL(month12.count_emergency_ua, 0) } AS count_emergency_ua_12, 
						{ fn IFNULL(month12.count_emergency_uc, 0) } AS count_emergency_uc_12, 
						{ fn IFNULL(month12.count_emergency_sa, 0) } AS count_emergency_sa_12,
						{ fn IFNULL(month12.count_emergency_sc, 0) } AS count_emergency_sc_12, 
						{ fn IFNULL(month12.count_certificates_ua, 0) } AS count_certificates_ua_12, 
						{ fn IFNULL(month12.count_certificates_uc, 0) } AS count_certificates_uc_12, 
						{ fn IFNULL(month12.count_certificates_sa, 0) } AS count_certificates_sa_12,
						{ fn IFNULL(month12.count_certificates_sc, 0) } AS count_certificates_sc_12, 
						{ fn IFNULL(month12.count_ppe_ua, 0) } AS count_ppe_ua_12, 
						{ fn IFNULL(month12.count_ppe_uc, 0) } AS count_ppe_uc_12, 
						{ fn IFNULL(month12.count_ppe_sa, 0) } AS count_ppe_sa_12,
						{ fn IFNULL(month12.count_ppe_sc, 0) } AS count_ppe_sc_12, 
						{ fn IFNULL(month12.count_hand_ua, 0) } AS count_hand_ua_12, 
						{ fn IFNULL(month12.count_hand_uc, 0) } AS count_hand_uc_12, 
						{ fn IFNULL(month12.count_hand_sa, 0) } AS count_hand_sa_12,
						{ fn IFNULL(month12.count_hand_sc, 0) } AS count_hand_sc_12, 
						{ fn IFNULL(month12.count_mechanical_ua, 0) } AS count_mechanical_ua_12, 
						{ fn IFNULL(month12.count_mechanical_uc, 0) } AS count_mechanical_uc_12, 
						{ fn IFNULL(month12.count_mechanical_sa, 0) } AS count_mechanical_sa_12,
						{ fn IFNULL(month12.count_mechanical_sc, 0) } AS count_mechanical_sc_12, 
						{ fn IFNULL(month12.count_electrical_ua, 0) } AS count_electrical_ua_12, 
						{ fn IFNULL(month12.count_electrical_uc, 0) } AS count_electrical_uc_12, 
						{ fn IFNULL(month12.count_electrical_sa, 0) } AS count_electrical_sa_12,
						{ fn IFNULL(month12.count_electrical_sc, 0) } AS count_electrical_sc_12, 
						{ fn IFNULL(month12.count_vehicular_ua, 0) } AS count_vehicular_ua_12, 
						{ fn IFNULL(month12.count_vehicular_uc, 0) } AS count_vehicular_uc_12, 
						{ fn IFNULL(month12.count_vehicular_sa, 0) } AS count_vehicular_sa_12,
						{ fn IFNULL(month12.count_vehicular_sc, 0) } AS count_vehicular_sc_12, 
						{ fn IFNULL(month12.count_substandard_ua, 0) } AS count_substandard_ua_12, 
						{ fn IFNULL(month12.count_substandard_uc, 0) } AS count_substandard_uc_12, 
						{ fn IFNULL(month12.count_substandard_sa, 0) } AS count_substandard_sa_12,
						{ fn IFNULL(month12.count_substandard_sc, 0) } AS count_substandard_sc_12, 
						{ fn IFNULL(month12.count_h2s_ua, 0) } AS count_h2s_ua_12, 
						{ fn IFNULL(month12.count_h2s_uc, 0) } AS count_h2s_uc_12, 
						{ fn IFNULL(month12.count_h2s_sa, 0) } AS count_h2s_sa_12,
						{ fn IFNULL(month12.count_h2s_sc, 0) } AS count_h2s_sc_12, 
						{ fn IFNULL(month12.count_workplace_health_ua, 0) } AS count_workplace_health_ua_12, 
						{ fn IFNULL(month12.count_workplace_health_uc, 0) } AS count_workplace_health_uc_12, 
						{ fn IFNULL(month12.count_workplace_health_sa, 0) } AS count_workplace_health_sa_12,
						{ fn IFNULL(month12.count_workplace_health_sc, 0) } AS count_workplace_health_sc_12 
FROM (((observationByMonths(@year,'1') as month1 full join 
	observationByMonths(@year,'2') as month2 on month1.year=month2.year) full join 
	(observationByMonths(@year,'3') as month3 full join 
	observationByMonths(@year,'4') as month4 on month3.year=month4.year) on month1.year=month3.year) full join 
	((observationByMonths(@year,'5') as month5 full join 
	observationByMonths(@year,'6') as month6 on month5.year=month6.year)  full join
	(observationByMonths(@year,'7') as month7 full join
	observationByMonths(@year,'8') as month8 on month7.year=month8.year) on month5.year=month7.year) on month1.year=month5.year) full join
	((observationByMonths(@year,'9') as month9  full join
	observationByMonths(@year,'10') as month10 on month9.year=month10.year) full join
	(observationByMonths(@year,'11') as month11  full join
	observationByMonths(@year,'12') as month12 on month11.year=month12.year) on month9.year=month11.year) on month1.year=month9.year
END
GO
/****** Object:  StoredProcedure [dbo].[observationSummary]    Script Date: 05/30/2013 09:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[observationSummary] (
    @year varchar(4)
)
AS 
BEGIN
	SELECT				{ fn IFNULL(month1.count_accident_ua, 0) } AS count_accident_ua_1, 
						{ fn IFNULL(month1.count_accident_uc, 0) } AS count_accident_uc_1, 
						{ fn IFNULL(month1.count_accident_sa, 0) } AS count_accident_sa_1,
						{ fn IFNULL(month1.count_accident_sc, 0) } AS count_accident_sc_1, 
						{ fn IFNULL(month1.count_fire_ua, 0) } AS count_fire_ua_1, 
						{ fn IFNULL(month1.count_fire_uc, 0) } AS count_fire_uc_1, 
						{ fn IFNULL(month1.count_fire_sa, 0) } AS count_fire_sa_1,
						{ fn IFNULL(month1.count_fire_sc, 0) } AS count_fire_sc_1, 
						{ fn IFNULL(month1.count_prevention_ua, 0) } AS count_prevention_ua_1, 
						{ fn IFNULL(month1.count_prevention_uc, 0) } AS count_prevention_uc_1, 
						{ fn IFNULL(month1.count_prevention_sa, 0) } AS count_prevention_sa_1,
						{ fn IFNULL(month1.count_prevention_sc, 0) } AS count_prevention_sc_1, 
						{ fn IFNULL(month1.count_supervisor_ua, 0) } AS count_supervisor_ua_1, 
						{ fn IFNULL(month1.count_supervisor_uc, 0) } AS count_supervisor_uc_1, 
						{ fn IFNULL(month1.count_supervisor_sa, 0) } AS count_supervisor_sa_1,
						{ fn IFNULL(month1.count_supervisor_sc, 0) } AS count_supervisor_sc_1, 
						{ fn IFNULL(month1.count_fit_work_ua, 0) } AS count_fit_work_ua_1, 
						{ fn IFNULL(month1.count_fit_work_uc, 0) } AS count_fit_work_uc_1, 
						{ fn IFNULL(month1.count_fit_work_sa, 0) } AS count_fit_work_sa_1,
						{ fn IFNULL(month1.count_fit_work_sc, 0) } AS count_fit_work_sc_1, 
						{ fn IFNULL(month1.count_psychological_ua, 0) } AS count_psychological_ua_1, 
						{ fn IFNULL(month1.count_psychological_uc, 0) } AS count_psychological_uc_1, 
						{ fn IFNULL(month1.count_psychological_sa, 0) } AS count_psychological_sa_1,
						{ fn IFNULL(month1.count_psychological_sc, 0) } AS count_psychological_sc_1, 
						{ fn IFNULL(month1.count_posture_ua, 0) } AS count_posture_ua_1, 
						{ fn IFNULL(month1.count_posture_uc, 0) } AS count_posture_uc_1, 
						{ fn IFNULL(month1.count_posture_sa, 0) } AS count_posture_sa_1,
						{ fn IFNULL(month1.count_posture_sc, 0) } AS count_posture_sc_1, 
						{ fn IFNULL(month1.count_substance_ua, 0) } AS count_substance_ua_1, 
						{ fn IFNULL(month1.count_substance_uc, 0) } AS count_substance_uc_1, 
						{ fn IFNULL(month1.count_substance_sa, 0) } AS count_substance_sa_1,
						{ fn IFNULL(month1.count_substance_sc, 0) } AS count_substance_sc_1, 
						{ fn IFNULL(month1.count_hygiene_ua, 0) } AS count_hygiene_ua_1, 
						{ fn IFNULL(month1.count_hygiene_uc, 0) } AS count_hygiene_uc_1, 
						{ fn IFNULL(month1.count_hygiene_sa, 0) } AS count_hygiene_sa_1,
						{ fn IFNULL(month1.count_hygiene_sc, 0) } AS count_hygiene_sc_1, 
						{ fn IFNULL(month1.count_house_ua, 0) } AS count_house_ua_1, 
						{ fn IFNULL(month1.count_house_uc, 0) } AS count_house_uc_1, 
						{ fn IFNULL(month1.count_house_sa, 0) } AS count_house_sa_1,
						{ fn IFNULL(month1.count_house_sc, 0) } AS count_house_sc_1, 
						{ fn IFNULL(month1.count_standard_ua, 0) } AS count_standard_ua_1, 
						{ fn IFNULL(month1.count_standard_uc, 0) } AS count_standard_uc_1, 
						{ fn IFNULL(month1.count_standard_sa, 0) } AS count_standard_sa_1,
						{ fn IFNULL(month1.count_standard_sc, 0) } AS count_standard_sc_1, 
						{ fn IFNULL(month1.count_spill_ua, 0) } AS count_spill_ua_1, 
						{ fn IFNULL(month1.count_spill_uc, 0) } AS count_spill_uc_1, 
						{ fn IFNULL(month1.count_spill_sa, 0) } AS count_spill_sa_1,
						{ fn IFNULL(month1.count_spill_sc, 0) } AS count_spill_sc_1, 
						{ fn IFNULL(month1.count_waste_energy_ua, 0) } AS count_waste_energy_ua_1, 
						{ fn IFNULL(month1.count_waste_energy_uc, 0) } AS count_waste_energy_uc_1, 
						{ fn IFNULL(month1.count_waste_energy_sa, 0) } AS count_waste_energy_sa_1,
						{ fn IFNULL(month1.count_waste_energy_sc, 0) } AS count_waste_energy_sc_1, 
						{ fn IFNULL(month1.count_containment_ua, 0) } AS count_containment_ua_1, 
						{ fn IFNULL(month1.count_containment_uc, 0) } AS count_containment_uc_1, 
						{ fn IFNULL(month1.count_containment_sa, 0) } AS count_containment_sa_1,
						{ fn IFNULL(month1.count_containment_sc, 0) } AS count_containment_sc_1, 
						{ fn IFNULL(month1.count_absorbent_ua, 0) } AS count_absorbent_ua_1, 
						{ fn IFNULL(month1.count_absorbent_uc, 0) } AS count_absorbent_uc_1, 
						{ fn IFNULL(month1.count_absorbent_sa, 0) } AS count_absorbent_sa_1,
						{ fn IFNULL(month1.count_absorbent_sc, 0) } AS count_absorbent_sc_1, 
						{ fn IFNULL(month1.count_hira_ua, 0) } AS count_hira_ua_1, 
						{ fn IFNULL(month1.count_hira_uc, 0) } AS count_hira_uc_1, 
						{ fn IFNULL(month1.count_hira_sa, 0) } AS count_hira_sa_1,
						{ fn IFNULL(month1.count_hira_sc, 0) } AS count_hira_sc_1, 
						{ fn IFNULL(month1.count_ptw_ua, 0) } AS count_ptw_ua_1, 
						{ fn IFNULL(month1.count_ptw_uc, 0) } AS count_ptw_uc_1, 
						{ fn IFNULL(month1.count_ptw_sa, 0) } AS count_ptw_sa_1,
						{ fn IFNULL(month1.count_ptw_sc, 0) } AS count_ptw_sc_1, 
						{ fn IFNULL(month1.count_sop_ua, 0) } AS count_sop_ua_1, 
						{ fn IFNULL(month1.count_sop_uc, 0) } AS count_sop_uc_1, 
						{ fn IFNULL(month1.count_sop_sa, 0) } AS count_sop_sa_1,
						{ fn IFNULL(month1.count_sop_sc, 0) } AS count_sop_sc_1, 
						{ fn IFNULL(month1.count_msds_ua, 0) } AS count_msds_ua_1, 
						{ fn IFNULL(month1.count_msds_uc, 0) } AS count_msds_uc_1, 
						{ fn IFNULL(month1.count_msds_sa, 0) } AS count_msds_sa_1,
						{ fn IFNULL(month1.count_msds_sc, 0) } AS count_msds_sc_1, 
						{ fn IFNULL(month1.count_emergency_ua, 0) } AS count_emergency_ua_1, 
						{ fn IFNULL(month1.count_emergency_uc, 0) } AS count_emergency_uc_1, 
						{ fn IFNULL(month1.count_emergency_sa, 0) } AS count_emergency_sa_1,
						{ fn IFNULL(month1.count_emergency_sc, 0) } AS count_emergency_sc_1, 
						{ fn IFNULL(month1.count_certificates_ua, 0) } AS count_certificates_ua_1, 
						{ fn IFNULL(month1.count_certificates_uc, 0) } AS count_certificates_uc_1, 
						{ fn IFNULL(month1.count_certificates_sa, 0) } AS count_certificates_sa_1,
						{ fn IFNULL(month1.count_certificates_sc, 0) } AS count_certificates_sc_1, 
						{ fn IFNULL(month1.count_ppe_ua, 0) } AS count_ppe_ua_1, 
						{ fn IFNULL(month1.count_ppe_uc, 0) } AS count_ppe_uc_1, 
						{ fn IFNULL(month1.count_ppe_sa, 0) } AS count_ppe_sa_1,
						{ fn IFNULL(month1.count_ppe_sc, 0) } AS count_ppe_sc_1, 
						{ fn IFNULL(month1.count_hand_ua, 0) } AS count_hand_ua_1, 
						{ fn IFNULL(month1.count_hand_uc, 0) } AS count_hand_uc_1, 
						{ fn IFNULL(month1.count_hand_sa, 0) } AS count_hand_sa_1,
						{ fn IFNULL(month1.count_hand_sc, 0) } AS count_hand_sc_1, 
						{ fn IFNULL(month1.count_mechanical_ua, 0) } AS count_mechanical_ua_1, 
						{ fn IFNULL(month1.count_mechanical_uc, 0) } AS count_mechanical_uc_1, 
						{ fn IFNULL(month1.count_mechanical_sa, 0) } AS count_mechanical_sa_1,
						{ fn IFNULL(month1.count_mechanical_sc, 0) } AS count_mechanical_sc_1, 
						{ fn IFNULL(month1.count_electrical_ua, 0) } AS count_electrical_ua_1, 
						{ fn IFNULL(month1.count_electrical_uc, 0) } AS count_electrical_uc_1, 
						{ fn IFNULL(month1.count_electrical_sa, 0) } AS count_electrical_sa_1,
						{ fn IFNULL(month1.count_electrical_sc, 0) } AS count_electrical_sc_1, 
						{ fn IFNULL(month1.count_vehicular_ua, 0) } AS count_vehicular_ua_1, 
						{ fn IFNULL(month1.count_vehicular_uc, 0) } AS count_vehicular_uc_1, 
						{ fn IFNULL(month1.count_vehicular_sa, 0) } AS count_vehicular_sa_1,
						{ fn IFNULL(month1.count_vehicular_sc, 0) } AS count_vehicular_sc_1, 
						{ fn IFNULL(month1.count_substandard_ua, 0) } AS count_substandard_ua_1, 
						{ fn IFNULL(month1.count_substandard_uc, 0) } AS count_substandard_uc_1, 
						{ fn IFNULL(month1.count_substandard_sa, 0) } AS count_substandard_sa_1,
						{ fn IFNULL(month1.count_substandard_sc, 0) } AS count_substandard_sc_1, 
						{ fn IFNULL(month1.count_h2s_ua, 0) } AS count_h2s_ua_1, 
						{ fn IFNULL(month1.count_h2s_uc, 0) } AS count_h2s_uc_1, 
						{ fn IFNULL(month1.count_h2s_sa, 0) } AS count_h2s_sa_1,
						{ fn IFNULL(month1.count_h2s_sc, 0) } AS count_h2s_sc_1, 
						{ fn IFNULL(month1.count_workplace_health_ua, 0) } AS count_workplace_health_ua_1, 
						{ fn IFNULL(month1.count_workplace_health_uc, 0) } AS count_workplace_health_uc_1, 
						{ fn IFNULL(month1.count_workplace_health_sa, 0) } AS count_workplace_health_sa_1,
						{ fn IFNULL(month1.count_workplace_health_sc, 0) } AS count_workplace_health_sc_1,
						{ fn IFNULL(month2.count_accident_ua, 0) } AS count_accident_ua_2, 
						{ fn IFNULL(month2.count_accident_uc, 0) } AS count_accident_uc_2, 
						{ fn IFNULL(month2.count_accident_sa, 0) } AS count_accident_sa_2,
						{ fn IFNULL(month2.count_accident_sc, 0) } AS count_accident_sc_2, 
						{ fn IFNULL(month2.count_fire_ua, 0) } AS count_fire_ua_2, 
						{ fn IFNULL(month2.count_fire_uc, 0) } AS count_fire_uc_2, 
						{ fn IFNULL(month2.count_fire_sa, 0) } AS count_fire_sa_2,
						{ fn IFNULL(month2.count_fire_sc, 0) } AS count_fire_sc_2, 
						{ fn IFNULL(month2.count_prevention_ua, 0) } AS count_prevention_ua_2, 
						{ fn IFNULL(month2.count_prevention_uc, 0) } AS count_prevention_uc_2, 
						{ fn IFNULL(month2.count_prevention_sa, 0) } AS count_prevention_sa_2,
						{ fn IFNULL(month2.count_prevention_sc, 0) } AS count_prevention_sc_2, 
						{ fn IFNULL(month2.count_supervisor_ua, 0) } AS count_supervisor_ua_2, 
						{ fn IFNULL(month2.count_supervisor_uc, 0) } AS count_supervisor_uc_2, 
						{ fn IFNULL(month2.count_supervisor_sa, 0) } AS count_supervisor_sa_2,
						{ fn IFNULL(month2.count_supervisor_sc, 0) } AS count_supervisor_sc_2, 
						{ fn IFNULL(month2.count_fit_work_ua, 0) } AS count_fit_work_ua_2, 
						{ fn IFNULL(month2.count_fit_work_uc, 0) } AS count_fit_work_uc_2, 
						{ fn IFNULL(month2.count_fit_work_sa, 0) } AS count_fit_work_sa_2,
						{ fn IFNULL(month2.count_fit_work_sc, 0) } AS count_fit_work_sc_2, 
						{ fn IFNULL(month2.count_psychological_ua, 0) } AS count_psychological_ua_2, 
						{ fn IFNULL(month2.count_psychological_uc, 0) } AS count_psychological_uc_2, 
						{ fn IFNULL(month2.count_psychological_sa, 0) } AS count_psychological_sa_2,
						{ fn IFNULL(month2.count_psychological_sc, 0) } AS count_psychological_sc_2, 
						{ fn IFNULL(month2.count_posture_ua, 0) } AS count_posture_ua_2, 
						{ fn IFNULL(month2.count_posture_uc, 0) } AS count_posture_uc_2, 
						{ fn IFNULL(month2.count_posture_sa, 0) } AS count_posture_sa_2,
						{ fn IFNULL(month2.count_posture_sc, 0) } AS count_posture_sc_2, 
						{ fn IFNULL(month2.count_substance_ua, 0) } AS count_substance_ua_2, 
						{ fn IFNULL(month2.count_substance_uc, 0) } AS count_substance_uc_2, 
						{ fn IFNULL(month2.count_substance_sa, 0) } AS count_substance_sa_2,
						{ fn IFNULL(month2.count_substance_sc, 0) } AS count_substance_sc_2, 
						{ fn IFNULL(month2.count_hygiene_ua, 0) } AS count_hygiene_ua_2, 
						{ fn IFNULL(month2.count_hygiene_uc, 0) } AS count_hygiene_uc_2, 
						{ fn IFNULL(month2.count_hygiene_sa, 0) } AS count_hygiene_sa_2,
						{ fn IFNULL(month2.count_hygiene_sc, 0) } AS count_hygiene_sc_2, 
						{ fn IFNULL(month2.count_house_ua, 0) } AS count_house_ua_2, 
						{ fn IFNULL(month2.count_house_uc, 0) } AS count_house_uc_2, 
						{ fn IFNULL(month2.count_house_sa, 0) } AS count_house_sa_2,
						{ fn IFNULL(month2.count_house_sc, 0) } AS count_house_sc_2, 
						{ fn IFNULL(month2.count_standard_ua, 0) } AS count_standard_ua_2, 
						{ fn IFNULL(month2.count_standard_uc, 0) } AS count_standard_uc_2, 
						{ fn IFNULL(month2.count_standard_sa, 0) } AS count_standard_sa_2,
						{ fn IFNULL(month2.count_standard_sc, 0) } AS count_standard_sc_2, 
						{ fn IFNULL(month2.count_spill_ua, 0) } AS count_spill_ua_2, 
						{ fn IFNULL(month2.count_spill_uc, 0) } AS count_spill_uc_2, 
						{ fn IFNULL(month2.count_spill_sa, 0) } AS count_spill_sa_2,
						{ fn IFNULL(month2.count_spill_sc, 0) } AS count_spill_sc_2, 
						{ fn IFNULL(month2.count_waste_energy_ua, 0) } AS count_waste_energy_ua_2, 
						{ fn IFNULL(month2.count_waste_energy_uc, 0) } AS count_waste_energy_uc_2, 
						{ fn IFNULL(month2.count_waste_energy_sa, 0) } AS count_waste_energy_sa_2,
						{ fn IFNULL(month2.count_waste_energy_sc, 0) } AS count_waste_energy_sc_2, 
						{ fn IFNULL(month2.count_containment_ua, 0) } AS count_containment_ua_2, 
						{ fn IFNULL(month2.count_containment_uc, 0) } AS count_containment_uc_2, 
						{ fn IFNULL(month2.count_containment_sa, 0) } AS count_containment_sa_2,
						{ fn IFNULL(month2.count_containment_sc, 0) } AS count_containment_sc_2, 
						{ fn IFNULL(month2.count_absorbent_ua, 0) } AS count_absorbent_ua_2, 
						{ fn IFNULL(month2.count_absorbent_uc, 0) } AS count_absorbent_uc_2, 
						{ fn IFNULL(month2.count_absorbent_sa, 0) } AS count_absorbent_sa_2,
						{ fn IFNULL(month2.count_absorbent_sc, 0) } AS count_absorbent_sc_2, 
						{ fn IFNULL(month2.count_hira_ua, 0) } AS count_hira_ua_2, 
						{ fn IFNULL(month2.count_hira_uc, 0) } AS count_hira_uc_2, 
						{ fn IFNULL(month2.count_hira_sa, 0) } AS count_hira_sa_2,
						{ fn IFNULL(month2.count_hira_sc, 0) } AS count_hira_sc_2, 
						{ fn IFNULL(month2.count_ptw_ua, 0) } AS count_ptw_ua_2, 
						{ fn IFNULL(month2.count_ptw_uc, 0) } AS count_ptw_uc_2, 
						{ fn IFNULL(month2.count_ptw_sa, 0) } AS count_ptw_sa_2,
						{ fn IFNULL(month2.count_ptw_sc, 0) } AS count_ptw_sc_2, 
						{ fn IFNULL(month2.count_sop_ua, 0) } AS count_sop_ua_2, 
						{ fn IFNULL(month2.count_sop_uc, 0) } AS count_sop_uc_2, 
						{ fn IFNULL(month2.count_sop_sa, 0) } AS count_sop_sa_2,
						{ fn IFNULL(month2.count_sop_sc, 0) } AS count_sop_sc_2, 
						{ fn IFNULL(month2.count_msds_ua, 0) } AS count_msds_ua_2, 
						{ fn IFNULL(month2.count_msds_uc, 0) } AS count_msds_uc_2, 
						{ fn IFNULL(month2.count_msds_sa, 0) } AS count_msds_sa_2,
						{ fn IFNULL(month2.count_msds_sc, 0) } AS count_msds_sc_2, 
						{ fn IFNULL(month2.count_emergency_ua, 0) } AS count_emergency_ua_2, 
						{ fn IFNULL(month2.count_emergency_uc, 0) } AS count_emergency_uc_2, 
						{ fn IFNULL(month2.count_emergency_sa, 0) } AS count_emergency_sa_2,
						{ fn IFNULL(month2.count_emergency_sc, 0) } AS count_emergency_sc_2, 
						{ fn IFNULL(month2.count_certificates_ua, 0) } AS count_certificates_ua_2, 
						{ fn IFNULL(month2.count_certificates_uc, 0) } AS count_certificates_uc_2, 
						{ fn IFNULL(month2.count_certificates_sa, 0) } AS count_certificates_sa_2,
						{ fn IFNULL(month2.count_certificates_sc, 0) } AS count_certificates_sc_2, 
						{ fn IFNULL(month2.count_ppe_ua, 0) } AS count_ppe_ua_2, 
						{ fn IFNULL(month2.count_ppe_uc, 0) } AS count_ppe_uc_2, 
						{ fn IFNULL(month2.count_ppe_sa, 0) } AS count_ppe_sa_2,
						{ fn IFNULL(month2.count_ppe_sc, 0) } AS count_ppe_sc_2, 
						{ fn IFNULL(month2.count_hand_ua, 0) } AS count_hand_ua_2, 
						{ fn IFNULL(month2.count_hand_uc, 0) } AS count_hand_uc_2, 
						{ fn IFNULL(month2.count_hand_sa, 0) } AS count_hand_sa_2,
						{ fn IFNULL(month2.count_hand_sc, 0) } AS count_hand_sc_2, 
						{ fn IFNULL(month2.count_mechanical_ua, 0) } AS count_mechanical_ua_2, 
						{ fn IFNULL(month2.count_mechanical_uc, 0) } AS count_mechanical_uc_2, 
						{ fn IFNULL(month2.count_mechanical_sa, 0) } AS count_mechanical_sa_2,
						{ fn IFNULL(month2.count_mechanical_sc, 0) } AS count_mechanical_sc_2, 
						{ fn IFNULL(month2.count_electrical_ua, 0) } AS count_electrical_ua_2, 
						{ fn IFNULL(month2.count_electrical_uc, 0) } AS count_electrical_uc_2, 
						{ fn IFNULL(month2.count_electrical_sa, 0) } AS count_electrical_sa_2,
						{ fn IFNULL(month2.count_electrical_sc, 0) } AS count_electrical_sc_2, 
						{ fn IFNULL(month2.count_vehicular_ua, 0) } AS count_vehicular_ua_2, 
						{ fn IFNULL(month2.count_vehicular_uc, 0) } AS count_vehicular_uc_2, 
						{ fn IFNULL(month2.count_vehicular_sa, 0) } AS count_vehicular_sa_2,
						{ fn IFNULL(month2.count_vehicular_sc, 0) } AS count_vehicular_sc_2, 
						{ fn IFNULL(month2.count_substandard_ua, 0) } AS count_substandard_ua_2, 
						{ fn IFNULL(month2.count_substandard_uc, 0) } AS count_substandard_uc_2, 
						{ fn IFNULL(month2.count_substandard_sa, 0) } AS count_substandard_sa_2,
						{ fn IFNULL(month2.count_substandard_sc, 0) } AS count_substandard_sc_2, 
						{ fn IFNULL(month2.count_h2s_ua, 0) } AS count_h2s_ua_2, 
						{ fn IFNULL(month2.count_h2s_uc, 0) } AS count_h2s_uc_2, 
						{ fn IFNULL(month2.count_h2s_sa, 0) } AS count_h2s_sa_2,
						{ fn IFNULL(month2.count_h2s_sc, 0) } AS count_h2s_sc_2, 
						{ fn IFNULL(month2.count_workplace_health_ua, 0) } AS count_workplace_health_ua_2, 
						{ fn IFNULL(month2.count_workplace_health_uc, 0) } AS count_workplace_health_uc_2, 
						{ fn IFNULL(month2.count_workplace_health_sa, 0) } AS count_workplace_health_sa_2,
						{ fn IFNULL(month2.count_workplace_health_sc, 0) } AS count_workplace_health_sc_2,
						{ fn IFNULL(month3.count_accident_ua, 0) } AS count_accident_ua_3, 
						{ fn IFNULL(month3.count_accident_uc, 0) } AS count_accident_uc_3, 
						{ fn IFNULL(month3.count_accident_sa, 0) } AS count_accident_sa_3,
						{ fn IFNULL(month3.count_accident_sc, 0) } AS count_accident_sc_3, 
						{ fn IFNULL(month3.count_fire_ua, 0) } AS count_fire_ua_3, 
						{ fn IFNULL(month3.count_fire_uc, 0) } AS count_fire_uc_3, 
						{ fn IFNULL(month3.count_fire_sa, 0) } AS count_fire_sa_3,
						{ fn IFNULL(month3.count_fire_sc, 0) } AS count_fire_sc_3, 
						{ fn IFNULL(month3.count_prevention_ua, 0) } AS count_prevention_ua_3, 
						{ fn IFNULL(month3.count_prevention_uc, 0) } AS count_prevention_uc_3, 
						{ fn IFNULL(month3.count_prevention_sa, 0) } AS count_prevention_sa_3,
						{ fn IFNULL(month3.count_prevention_sc, 0) } AS count_prevention_sc_3, 
						{ fn IFNULL(month3.count_supervisor_ua, 0) } AS count_supervisor_ua_3, 
						{ fn IFNULL(month3.count_supervisor_uc, 0) } AS count_supervisor_uc_3, 
						{ fn IFNULL(month3.count_supervisor_sa, 0) } AS count_supervisor_sa_3,
						{ fn IFNULL(month3.count_supervisor_sc, 0) } AS count_supervisor_sc_3, 
						{ fn IFNULL(month3.count_fit_work_ua, 0) } AS count_fit_work_ua_3, 
						{ fn IFNULL(month3.count_fit_work_uc, 0) } AS count_fit_work_uc_3, 
						{ fn IFNULL(month3.count_fit_work_sa, 0) } AS count_fit_work_sa_3,
						{ fn IFNULL(month3.count_fit_work_sc, 0) } AS count_fit_work_sc_3, 
						{ fn IFNULL(month3.count_psychological_ua, 0) } AS count_psychological_ua_3, 
						{ fn IFNULL(month3.count_psychological_uc, 0) } AS count_psychological_uc_3, 
						{ fn IFNULL(month3.count_psychological_sa, 0) } AS count_psychological_sa_3,
						{ fn IFNULL(month3.count_psychological_sc, 0) } AS count_psychological_sc_3, 
						{ fn IFNULL(month3.count_posture_ua, 0) } AS count_posture_ua_3, 
						{ fn IFNULL(month3.count_posture_uc, 0) } AS count_posture_uc_3, 
						{ fn IFNULL(month3.count_posture_sa, 0) } AS count_posture_sa_3,
						{ fn IFNULL(month3.count_posture_sc, 0) } AS count_posture_sc_3, 
						{ fn IFNULL(month3.count_substance_ua, 0) } AS count_substance_ua_3, 
						{ fn IFNULL(month3.count_substance_uc, 0) } AS count_substance_uc_3, 
						{ fn IFNULL(month3.count_substance_sa, 0) } AS count_substance_sa_3,
						{ fn IFNULL(month3.count_substance_sc, 0) } AS count_substance_sc_3, 
						{ fn IFNULL(month3.count_hygiene_ua, 0) } AS count_hygiene_ua_3, 
						{ fn IFNULL(month3.count_hygiene_uc, 0) } AS count_hygiene_uc_3, 
						{ fn IFNULL(month3.count_hygiene_sa, 0) } AS count_hygiene_sa_3,
						{ fn IFNULL(month3.count_hygiene_sc, 0) } AS count_hygiene_sc_3, 
						{ fn IFNULL(month3.count_house_ua, 0) } AS count_house_ua_3, 
						{ fn IFNULL(month3.count_house_uc, 0) } AS count_house_uc_3, 
						{ fn IFNULL(month3.count_house_sa, 0) } AS count_house_sa_3,
						{ fn IFNULL(month3.count_house_sc, 0) } AS count_house_sc_3, 
						{ fn IFNULL(month3.count_standard_ua, 0) } AS count_standard_ua_3, 
						{ fn IFNULL(month3.count_standard_uc, 0) } AS count_standard_uc_3, 
						{ fn IFNULL(month3.count_standard_sa, 0) } AS count_standard_sa_3,
						{ fn IFNULL(month3.count_standard_sc, 0) } AS count_standard_sc_3, 
						{ fn IFNULL(month3.count_spill_ua, 0) } AS count_spill_ua_3, 
						{ fn IFNULL(month3.count_spill_uc, 0) } AS count_spill_uc_3, 
						{ fn IFNULL(month3.count_spill_sa, 0) } AS count_spill_sa_3,
						{ fn IFNULL(month3.count_spill_sc, 0) } AS count_spill_sc_3, 
						{ fn IFNULL(month3.count_waste_energy_ua, 0) } AS count_waste_energy_ua_3, 
						{ fn IFNULL(month3.count_waste_energy_uc, 0) } AS count_waste_energy_uc_3, 
						{ fn IFNULL(month3.count_waste_energy_sa, 0) } AS count_waste_energy_sa_3,
						{ fn IFNULL(month3.count_waste_energy_sc, 0) } AS count_waste_energy_sc_3, 
						{ fn IFNULL(month3.count_containment_ua, 0) } AS count_containment_ua_3, 
						{ fn IFNULL(month3.count_containment_uc, 0) } AS count_containment_uc_3, 
						{ fn IFNULL(month3.count_containment_sa, 0) } AS count_containment_sa_3,
						{ fn IFNULL(month3.count_containment_sc, 0) } AS count_containment_sc_3, 
						{ fn IFNULL(month3.count_absorbent_ua, 0) } AS count_absorbent_ua_3, 
						{ fn IFNULL(month3.count_absorbent_uc, 0) } AS count_absorbent_uc_3, 
						{ fn IFNULL(month3.count_absorbent_sa, 0) } AS count_absorbent_sa_3,
						{ fn IFNULL(month3.count_absorbent_sc, 0) } AS count_absorbent_sc_3, 
						{ fn IFNULL(month3.count_hira_ua, 0) } AS count_hira_ua_3, 
						{ fn IFNULL(month3.count_hira_uc, 0) } AS count_hira_uc_3, 
						{ fn IFNULL(month3.count_hira_sa, 0) } AS count_hira_sa_3,
						{ fn IFNULL(month3.count_hira_sc, 0) } AS count_hira_sc_3, 
						{ fn IFNULL(month3.count_ptw_ua, 0) } AS count_ptw_ua_3, 
						{ fn IFNULL(month3.count_ptw_uc, 0) } AS count_ptw_uc_3, 
						{ fn IFNULL(month3.count_ptw_sa, 0) } AS count_ptw_sa_3,
						{ fn IFNULL(month3.count_ptw_sc, 0) } AS count_ptw_sc_3, 
						{ fn IFNULL(month3.count_sop_ua, 0) } AS count_sop_ua_3, 
						{ fn IFNULL(month3.count_sop_uc, 0) } AS count_sop_uc_3, 
						{ fn IFNULL(month3.count_sop_sa, 0) } AS count_sop_sa_3,
						{ fn IFNULL(month3.count_sop_sc, 0) } AS count_sop_sc_3, 
						{ fn IFNULL(month3.count_msds_ua, 0) } AS count_msds_ua_3, 
						{ fn IFNULL(month3.count_msds_uc, 0) } AS count_msds_uc_3, 
						{ fn IFNULL(month3.count_msds_sa, 0) } AS count_msds_sa_3,
						{ fn IFNULL(month3.count_msds_sc, 0) } AS count_msds_sc_3, 
						{ fn IFNULL(month3.count_emergency_ua, 0) } AS count_emergency_ua_3, 
						{ fn IFNULL(month3.count_emergency_uc, 0) } AS count_emergency_uc_3, 
						{ fn IFNULL(month3.count_emergency_sa, 0) } AS count_emergency_sa_3,
						{ fn IFNULL(month3.count_emergency_sc, 0) } AS count_emergency_sc_3, 
						{ fn IFNULL(month3.count_certificates_ua, 0) } AS count_certificates_ua_3, 
						{ fn IFNULL(month3.count_certificates_uc, 0) } AS count_certificates_uc_3, 
						{ fn IFNULL(month3.count_certificates_sa, 0) } AS count_certificates_sa_3,
						{ fn IFNULL(month3.count_certificates_sc, 0) } AS count_certificates_sc_3, 
						{ fn IFNULL(month3.count_ppe_ua, 0) } AS count_ppe_ua_3, 
						{ fn IFNULL(month3.count_ppe_uc, 0) } AS count_ppe_uc_3, 
						{ fn IFNULL(month3.count_ppe_sa, 0) } AS count_ppe_sa_3,
						{ fn IFNULL(month3.count_ppe_sc, 0) } AS count_ppe_sc_3, 
						{ fn IFNULL(month3.count_hand_ua, 0) } AS count_hand_ua_3, 
						{ fn IFNULL(month3.count_hand_uc, 0) } AS count_hand_uc_3, 
						{ fn IFNULL(month3.count_hand_sa, 0) } AS count_hand_sa_3,
						{ fn IFNULL(month3.count_hand_sc, 0) } AS count_hand_sc_3, 
						{ fn IFNULL(month3.count_mechanical_ua, 0) } AS count_mechanical_ua_3, 
						{ fn IFNULL(month3.count_mechanical_uc, 0) } AS count_mechanical_uc_3, 
						{ fn IFNULL(month3.count_mechanical_sa, 0) } AS count_mechanical_sa_3,
						{ fn IFNULL(month3.count_mechanical_sc, 0) } AS count_mechanical_sc_3, 
						{ fn IFNULL(month3.count_electrical_ua, 0) } AS count_electrical_ua_3, 
						{ fn IFNULL(month3.count_electrical_uc, 0) } AS count_electrical_uc_3, 
						{ fn IFNULL(month3.count_electrical_sa, 0) } AS count_electrical_sa_3,
						{ fn IFNULL(month3.count_electrical_sc, 0) } AS count_electrical_sc_3, 
						{ fn IFNULL(month3.count_vehicular_ua, 0) } AS count_vehicular_ua_3, 
						{ fn IFNULL(month3.count_vehicular_uc, 0) } AS count_vehicular_uc_3, 
						{ fn IFNULL(month3.count_vehicular_sa, 0) } AS count_vehicular_sa_3,
						{ fn IFNULL(month3.count_vehicular_sc, 0) } AS count_vehicular_sc_3, 
						{ fn IFNULL(month3.count_substandard_ua, 0) } AS count_substandard_ua_3, 
						{ fn IFNULL(month3.count_substandard_uc, 0) } AS count_substandard_uc_3, 
						{ fn IFNULL(month3.count_substandard_sa, 0) } AS count_substandard_sa_3,
						{ fn IFNULL(month3.count_substandard_sc, 0) } AS count_substandard_sc_3, 
						{ fn IFNULL(month3.count_h2s_ua, 0) } AS count_h2s_ua_3, 
						{ fn IFNULL(month3.count_h2s_uc, 0) } AS count_h2s_uc_3, 
						{ fn IFNULL(month3.count_h2s_sa, 0) } AS count_h2s_sa_3,
						{ fn IFNULL(month3.count_h2s_sc, 0) } AS count_h2s_sc_3, 
						{ fn IFNULL(month3.count_workplace_health_ua, 0) } AS count_workplace_health_ua_3, 
						{ fn IFNULL(month3.count_workplace_health_uc, 0) } AS count_workplace_health_uc_3, 
						{ fn IFNULL(month3.count_workplace_health_sa, 0) } AS count_workplace_health_sa_3,
						{ fn IFNULL(month3.count_workplace_health_sc, 0) } AS count_workplace_health_sc_3,
						{ fn IFNULL(month4.count_accident_ua, 0) } AS count_accident_ua_4, 
						{ fn IFNULL(month4.count_accident_uc, 0) } AS count_accident_uc_4, 
						{ fn IFNULL(month4.count_accident_sa, 0) } AS count_accident_sa_4,
						{ fn IFNULL(month4.count_accident_sc, 0) } AS count_accident_sc_4, 
						{ fn IFNULL(month4.count_fire_ua, 0) } AS count_fire_ua_4, 
						{ fn IFNULL(month4.count_fire_uc, 0) } AS count_fire_uc_4, 
						{ fn IFNULL(month4.count_fire_sa, 0) } AS count_fire_sa_4,
						{ fn IFNULL(month4.count_fire_sc, 0) } AS count_fire_sc_4, 
						{ fn IFNULL(month4.count_prevention_ua, 0) } AS count_prevention_ua_4, 
						{ fn IFNULL(month4.count_prevention_uc, 0) } AS count_prevention_uc_4, 
						{ fn IFNULL(month4.count_prevention_sa, 0) } AS count_prevention_sa_4,
						{ fn IFNULL(month4.count_prevention_sc, 0) } AS count_prevention_sc_4, 
						{ fn IFNULL(month4.count_supervisor_ua, 0) } AS count_supervisor_ua_4, 
						{ fn IFNULL(month4.count_supervisor_uc, 0) } AS count_supervisor_uc_4, 
						{ fn IFNULL(month4.count_supervisor_sa, 0) } AS count_supervisor_sa_4,
						{ fn IFNULL(month4.count_supervisor_sc, 0) } AS count_supervisor_sc_4, 
						{ fn IFNULL(month4.count_fit_work_ua, 0) } AS count_fit_work_ua_4, 
						{ fn IFNULL(month4.count_fit_work_uc, 0) } AS count_fit_work_uc_4, 
						{ fn IFNULL(month4.count_fit_work_sa, 0) } AS count_fit_work_sa_4,
						{ fn IFNULL(month4.count_fit_work_sc, 0) } AS count_fit_work_sc_4, 
						{ fn IFNULL(month4.count_psychological_ua, 0) } AS count_psychological_ua_4, 
						{ fn IFNULL(month4.count_psychological_uc, 0) } AS count_psychological_uc_4, 
						{ fn IFNULL(month4.count_psychological_sa, 0) } AS count_psychological_sa_4,
						{ fn IFNULL(month4.count_psychological_sc, 0) } AS count_psychological_sc_4, 
						{ fn IFNULL(month4.count_posture_ua, 0) } AS count_posture_ua_4, 
						{ fn IFNULL(month4.count_posture_uc, 0) } AS count_posture_uc_4, 
						{ fn IFNULL(month4.count_posture_sa, 0) } AS count_posture_sa_4,
						{ fn IFNULL(month4.count_posture_sc, 0) } AS count_posture_sc_4, 
						{ fn IFNULL(month4.count_substance_ua, 0) } AS count_substance_ua_4, 
						{ fn IFNULL(month4.count_substance_uc, 0) } AS count_substance_uc_4, 
						{ fn IFNULL(month4.count_substance_sa, 0) } AS count_substance_sa_4,
						{ fn IFNULL(month4.count_substance_sc, 0) } AS count_substance_sc_4, 
						{ fn IFNULL(month4.count_hygiene_ua, 0) } AS count_hygiene_ua_4, 
						{ fn IFNULL(month4.count_hygiene_uc, 0) } AS count_hygiene_uc_4, 
						{ fn IFNULL(month4.count_hygiene_sa, 0) } AS count_hygiene_sa_4,
						{ fn IFNULL(month4.count_hygiene_sc, 0) } AS count_hygiene_sc_4, 
						{ fn IFNULL(month4.count_house_ua, 0) } AS count_house_ua_4, 
						{ fn IFNULL(month4.count_house_uc, 0) } AS count_house_uc_4, 
						{ fn IFNULL(month4.count_house_sa, 0) } AS count_house_sa_4,
						{ fn IFNULL(month4.count_house_sc, 0) } AS count_house_sc_4, 
						{ fn IFNULL(month4.count_standard_ua, 0) } AS count_standard_ua_4, 
						{ fn IFNULL(month4.count_standard_uc, 0) } AS count_standard_uc_4, 
						{ fn IFNULL(month4.count_standard_sa, 0) } AS count_standard_sa_4,
						{ fn IFNULL(month4.count_standard_sc, 0) } AS count_standard_sc_4, 
						{ fn IFNULL(month4.count_spill_ua, 0) } AS count_spill_ua_4, 
						{ fn IFNULL(month4.count_spill_uc, 0) } AS count_spill_uc_4, 
						{ fn IFNULL(month4.count_spill_sa, 0) } AS count_spill_sa_4,
						{ fn IFNULL(month4.count_spill_sc, 0) } AS count_spill_sc_4, 
						{ fn IFNULL(month4.count_waste_energy_ua, 0) } AS count_waste_energy_ua_4, 
						{ fn IFNULL(month4.count_waste_energy_uc, 0) } AS count_waste_energy_uc_4, 
						{ fn IFNULL(month4.count_waste_energy_sa, 0) } AS count_waste_energy_sa_4,
						{ fn IFNULL(month4.count_waste_energy_sc, 0) } AS count_waste_energy_sc_4, 
						{ fn IFNULL(month4.count_containment_ua, 0) } AS count_containment_ua_4, 
						{ fn IFNULL(month4.count_containment_uc, 0) } AS count_containment_uc_4, 
						{ fn IFNULL(month4.count_containment_sa, 0) } AS count_containment_sa_4,
						{ fn IFNULL(month4.count_containment_sc, 0) } AS count_containment_sc_4, 
						{ fn IFNULL(month4.count_absorbent_ua, 0) } AS count_absorbent_ua_4, 
						{ fn IFNULL(month4.count_absorbent_uc, 0) } AS count_absorbent_uc_4, 
						{ fn IFNULL(month4.count_absorbent_sa, 0) } AS count_absorbent_sa_4,
						{ fn IFNULL(month4.count_absorbent_sc, 0) } AS count_absorbent_sc_4, 
						{ fn IFNULL(month4.count_hira_ua, 0) } AS count_hira_ua_4, 
						{ fn IFNULL(month4.count_hira_uc, 0) } AS count_hira_uc_4, 
						{ fn IFNULL(month4.count_hira_sa, 0) } AS count_hira_sa_4,
						{ fn IFNULL(month4.count_hira_sc, 0) } AS count_hira_sc_4, 
						{ fn IFNULL(month4.count_ptw_ua, 0) } AS count_ptw_ua_4, 
						{ fn IFNULL(month4.count_ptw_uc, 0) } AS count_ptw_uc_4, 
						{ fn IFNULL(month4.count_ptw_sa, 0) } AS count_ptw_sa_4,
						{ fn IFNULL(month4.count_ptw_sc, 0) } AS count_ptw_sc_4, 
						{ fn IFNULL(month4.count_sop_ua, 0) } AS count_sop_ua_4, 
						{ fn IFNULL(month4.count_sop_uc, 0) } AS count_sop_uc_4, 
						{ fn IFNULL(month4.count_sop_sa, 0) } AS count_sop_sa_4,
						{ fn IFNULL(month4.count_sop_sc, 0) } AS count_sop_sc_4, 
						{ fn IFNULL(month4.count_msds_ua, 0) } AS count_msds_ua_4, 
						{ fn IFNULL(month4.count_msds_uc, 0) } AS count_msds_uc_4, 
						{ fn IFNULL(month4.count_msds_sa, 0) } AS count_msds_sa_4,
						{ fn IFNULL(month4.count_msds_sc, 0) } AS count_msds_sc_4, 
						{ fn IFNULL(month4.count_emergency_ua, 0) } AS count_emergency_ua_4, 
						{ fn IFNULL(month4.count_emergency_uc, 0) } AS count_emergency_uc_4, 
						{ fn IFNULL(month4.count_emergency_sa, 0) } AS count_emergency_sa_4,
						{ fn IFNULL(month4.count_emergency_sc, 0) } AS count_emergency_sc_4, 
						{ fn IFNULL(month4.count_certificates_ua, 0) } AS count_certificates_ua_4, 
						{ fn IFNULL(month4.count_certificates_uc, 0) } AS count_certificates_uc_4, 
						{ fn IFNULL(month4.count_certificates_sa, 0) } AS count_certificates_sa_4,
						{ fn IFNULL(month4.count_certificates_sc, 0) } AS count_certificates_sc_4, 
						{ fn IFNULL(month4.count_ppe_ua, 0) } AS count_ppe_ua_4, 
						{ fn IFNULL(month4.count_ppe_uc, 0) } AS count_ppe_uc_4, 
						{ fn IFNULL(month4.count_ppe_sa, 0) } AS count_ppe_sa_4,
						{ fn IFNULL(month4.count_ppe_sc, 0) } AS count_ppe_sc_4, 
						{ fn IFNULL(month4.count_hand_ua, 0) } AS count_hand_ua_4, 
						{ fn IFNULL(month4.count_hand_uc, 0) } AS count_hand_uc_4, 
						{ fn IFNULL(month4.count_hand_sa, 0) } AS count_hand_sa_4,
						{ fn IFNULL(month4.count_hand_sc, 0) } AS count_hand_sc_4, 
						{ fn IFNULL(month4.count_mechanical_ua, 0) } AS count_mechanical_ua_4, 
						{ fn IFNULL(month4.count_mechanical_uc, 0) } AS count_mechanical_uc_4, 
						{ fn IFNULL(month4.count_mechanical_sa, 0) } AS count_mechanical_sa_4,
						{ fn IFNULL(month4.count_mechanical_sc, 0) } AS count_mechanical_sc_4, 
						{ fn IFNULL(month4.count_electrical_ua, 0) } AS count_electrical_ua_4, 
						{ fn IFNULL(month4.count_electrical_uc, 0) } AS count_electrical_uc_4, 
						{ fn IFNULL(month4.count_electrical_sa, 0) } AS count_electrical_sa_4,
						{ fn IFNULL(month4.count_electrical_sc, 0) } AS count_electrical_sc_4, 
						{ fn IFNULL(month4.count_vehicular_ua, 0) } AS count_vehicular_ua_4, 
						{ fn IFNULL(month4.count_vehicular_uc, 0) } AS count_vehicular_uc_4, 
						{ fn IFNULL(month4.count_vehicular_sa, 0) } AS count_vehicular_sa_4,
						{ fn IFNULL(month4.count_vehicular_sc, 0) } AS count_vehicular_sc_4, 
						{ fn IFNULL(month4.count_substandard_ua, 0) } AS count_substandard_ua_4, 
						{ fn IFNULL(month4.count_substandard_uc, 0) } AS count_substandard_uc_4, 
						{ fn IFNULL(month4.count_substandard_sa, 0) } AS count_substandard_sa_4,
						{ fn IFNULL(month4.count_substandard_sc, 0) } AS count_substandard_sc_4, 
						{ fn IFNULL(month4.count_h2s_ua, 0) } AS count_h2s_ua_4, 
						{ fn IFNULL(month4.count_h2s_uc, 0) } AS count_h2s_uc_4, 
						{ fn IFNULL(month4.count_h2s_sa, 0) } AS count_h2s_sa_4,
						{ fn IFNULL(month4.count_h2s_sc, 0) } AS count_h2s_sc_4, 
						{ fn IFNULL(month4.count_workplace_health_ua, 0) } AS count_workplace_health_ua_4, 
						{ fn IFNULL(month4.count_workplace_health_uc, 0) } AS count_workplace_health_uc_4, 
						{ fn IFNULL(month4.count_workplace_health_sa, 0) } AS count_workplace_health_sa_4,
						{ fn IFNULL(month4.count_workplace_health_sc, 0) } AS count_workplace_health_sc_4,
						{ fn IFNULL(month5.count_accident_ua, 0) } AS count_accident_ua_5, 
						{ fn IFNULL(month5.count_accident_uc, 0) } AS count_accident_uc_5, 
						{ fn IFNULL(month5.count_accident_sa, 0) } AS count_accident_sa_5,
						{ fn IFNULL(month5.count_accident_sc, 0) } AS count_accident_sc_5, 
						{ fn IFNULL(month5.count_fire_ua, 0) } AS count_fire_ua_5, 
						{ fn IFNULL(month5.count_fire_uc, 0) } AS count_fire_uc_5, 
						{ fn IFNULL(month5.count_fire_sa, 0) } AS count_fire_sa_5,
						{ fn IFNULL(month5.count_fire_sc, 0) } AS count_fire_sc_5, 
						{ fn IFNULL(month5.count_prevention_ua, 0) } AS count_prevention_ua_5, 
						{ fn IFNULL(month5.count_prevention_uc, 0) } AS count_prevention_uc_5, 
						{ fn IFNULL(month5.count_prevention_sa, 0) } AS count_prevention_sa_5,
						{ fn IFNULL(month5.count_prevention_sc, 0) } AS count_prevention_sc_5, 
						{ fn IFNULL(month5.count_supervisor_ua, 0) } AS count_supervisor_ua_5, 
						{ fn IFNULL(month5.count_supervisor_uc, 0) } AS count_supervisor_uc_5, 
						{ fn IFNULL(month5.count_supervisor_sa, 0) } AS count_supervisor_sa_5,
						{ fn IFNULL(month5.count_supervisor_sc, 0) } AS count_supervisor_sc_5, 
						{ fn IFNULL(month5.count_fit_work_ua, 0) } AS count_fit_work_ua_5, 
						{ fn IFNULL(month5.count_fit_work_uc, 0) } AS count_fit_work_uc_5, 
						{ fn IFNULL(month5.count_fit_work_sa, 0) } AS count_fit_work_sa_5,
						{ fn IFNULL(month5.count_fit_work_sc, 0) } AS count_fit_work_sc_5, 
						{ fn IFNULL(month5.count_psychological_ua, 0) } AS count_psychological_ua_5, 
						{ fn IFNULL(month5.count_psychological_uc, 0) } AS count_psychological_uc_5, 
						{ fn IFNULL(month5.count_psychological_sa, 0) } AS count_psychological_sa_5,
						{ fn IFNULL(month5.count_psychological_sc, 0) } AS count_psychological_sc_5, 
						{ fn IFNULL(month5.count_posture_ua, 0) } AS count_posture_ua_5, 
						{ fn IFNULL(month5.count_posture_uc, 0) } AS count_posture_uc_5, 
						{ fn IFNULL(month5.count_posture_sa, 0) } AS count_posture_sa_5,
						{ fn IFNULL(month5.count_posture_sc, 0) } AS count_posture_sc_5, 
						{ fn IFNULL(month5.count_substance_ua, 0) } AS count_substance_ua_5, 
						{ fn IFNULL(month5.count_substance_uc, 0) } AS count_substance_uc_5, 
						{ fn IFNULL(month5.count_substance_sa, 0) } AS count_substance_sa_5,
						{ fn IFNULL(month5.count_substance_sc, 0) } AS count_substance_sc_5, 
						{ fn IFNULL(month5.count_hygiene_ua, 0) } AS count_hygiene_ua_5, 
						{ fn IFNULL(month5.count_hygiene_uc, 0) } AS count_hygiene_uc_5, 
						{ fn IFNULL(month5.count_hygiene_sa, 0) } AS count_hygiene_sa_5,
						{ fn IFNULL(month5.count_hygiene_sc, 0) } AS count_hygiene_sc_5, 
						{ fn IFNULL(month5.count_house_ua, 0) } AS count_house_ua_5, 
						{ fn IFNULL(month5.count_house_uc, 0) } AS count_house_uc_5, 
						{ fn IFNULL(month5.count_house_sa, 0) } AS count_house_sa_5,
						{ fn IFNULL(month5.count_house_sc, 0) } AS count_house_sc_5, 
						{ fn IFNULL(month5.count_standard_ua, 0) } AS count_standard_ua_5, 
						{ fn IFNULL(month5.count_standard_uc, 0) } AS count_standard_uc_5, 
						{ fn IFNULL(month5.count_standard_sa, 0) } AS count_standard_sa_5,
						{ fn IFNULL(month5.count_standard_sc, 0) } AS count_standard_sc_5, 
						{ fn IFNULL(month5.count_spill_ua, 0) } AS count_spill_ua_5, 
						{ fn IFNULL(month5.count_spill_uc, 0) } AS count_spill_uc_5, 
						{ fn IFNULL(month5.count_spill_sa, 0) } AS count_spill_sa_5,
						{ fn IFNULL(month5.count_spill_sc, 0) } AS count_spill_sc_5, 
						{ fn IFNULL(month5.count_waste_energy_ua, 0) } AS count_waste_energy_ua_5, 
						{ fn IFNULL(month5.count_waste_energy_uc, 0) } AS count_waste_energy_uc_5, 
						{ fn IFNULL(month5.count_waste_energy_sa, 0) } AS count_waste_energy_sa_5,
						{ fn IFNULL(month5.count_waste_energy_sc, 0) } AS count_waste_energy_sc_5, 
						{ fn IFNULL(month5.count_containment_ua, 0) } AS count_containment_ua_5, 
						{ fn IFNULL(month5.count_containment_uc, 0) } AS count_containment_uc_5, 
						{ fn IFNULL(month5.count_containment_sa, 0) } AS count_containment_sa_5,
						{ fn IFNULL(month5.count_containment_sc, 0) } AS count_containment_sc_5, 
						{ fn IFNULL(month5.count_absorbent_ua, 0) } AS count_absorbent_ua_5, 
						{ fn IFNULL(month5.count_absorbent_uc, 0) } AS count_absorbent_uc_5, 
						{ fn IFNULL(month5.count_absorbent_sa, 0) } AS count_absorbent_sa_5,
						{ fn IFNULL(month5.count_absorbent_sc, 0) } AS count_absorbent_sc_5, 
						{ fn IFNULL(month5.count_hira_ua, 0) } AS count_hira_ua_5, 
						{ fn IFNULL(month5.count_hira_uc, 0) } AS count_hira_uc_5, 
						{ fn IFNULL(month5.count_hira_sa, 0) } AS count_hira_sa_5,
						{ fn IFNULL(month5.count_hira_sc, 0) } AS count_hira_sc_5, 
						{ fn IFNULL(month5.count_ptw_ua, 0) } AS count_ptw_ua_5, 
						{ fn IFNULL(month5.count_ptw_uc, 0) } AS count_ptw_uc_5, 
						{ fn IFNULL(month5.count_ptw_sa, 0) } AS count_ptw_sa_5,
						{ fn IFNULL(month5.count_ptw_sc, 0) } AS count_ptw_sc_5, 
						{ fn IFNULL(month5.count_sop_ua, 0) } AS count_sop_ua_5, 
						{ fn IFNULL(month5.count_sop_uc, 0) } AS count_sop_uc_5, 
						{ fn IFNULL(month5.count_sop_sa, 0) } AS count_sop_sa_5,
						{ fn IFNULL(month5.count_sop_sc, 0) } AS count_sop_sc_5, 
						{ fn IFNULL(month5.count_msds_ua, 0) } AS count_msds_ua_5, 
						{ fn IFNULL(month5.count_msds_uc, 0) } AS count_msds_uc_5, 
						{ fn IFNULL(month5.count_msds_sa, 0) } AS count_msds_sa_5,
						{ fn IFNULL(month5.count_msds_sc, 0) } AS count_msds_sc_5, 
						{ fn IFNULL(month5.count_emergency_ua, 0) } AS count_emergency_ua_5, 
						{ fn IFNULL(month5.count_emergency_uc, 0) } AS count_emergency_uc_5, 
						{ fn IFNULL(month5.count_emergency_sa, 0) } AS count_emergency_sa_5,
						{ fn IFNULL(month5.count_emergency_sc, 0) } AS count_emergency_sc_5, 
						{ fn IFNULL(month5.count_certificates_ua, 0) } AS count_certificates_ua_5, 
						{ fn IFNULL(month5.count_certificates_uc, 0) } AS count_certificates_uc_5, 
						{ fn IFNULL(month5.count_certificates_sa, 0) } AS count_certificates_sa_5,
						{ fn IFNULL(month5.count_certificates_sc, 0) } AS count_certificates_sc_5, 
						{ fn IFNULL(month5.count_ppe_ua, 0) } AS count_ppe_ua_5, 
						{ fn IFNULL(month5.count_ppe_uc, 0) } AS count_ppe_uc_5, 
						{ fn IFNULL(month5.count_ppe_sa, 0) } AS count_ppe_sa_5,
						{ fn IFNULL(month5.count_ppe_sc, 0) } AS count_ppe_sc_5, 
						{ fn IFNULL(month5.count_hand_ua, 0) } AS count_hand_ua_5, 
						{ fn IFNULL(month5.count_hand_uc, 0) } AS count_hand_uc_5, 
						{ fn IFNULL(month5.count_hand_sa, 0) } AS count_hand_sa_5,
						{ fn IFNULL(month5.count_hand_sc, 0) } AS count_hand_sc_5, 
						{ fn IFNULL(month5.count_mechanical_ua, 0) } AS count_mechanical_ua_5, 
						{ fn IFNULL(month5.count_mechanical_uc, 0) } AS count_mechanical_uc_5, 
						{ fn IFNULL(month5.count_mechanical_sa, 0) } AS count_mechanical_sa_5,
						{ fn IFNULL(month5.count_mechanical_sc, 0) } AS count_mechanical_sc_5, 
						{ fn IFNULL(month5.count_electrical_ua, 0) } AS count_electrical_ua_5, 
						{ fn IFNULL(month5.count_electrical_uc, 0) } AS count_electrical_uc_5, 
						{ fn IFNULL(month5.count_electrical_sa, 0) } AS count_electrical_sa_5,
						{ fn IFNULL(month5.count_electrical_sc, 0) } AS count_electrical_sc_5, 
						{ fn IFNULL(month5.count_vehicular_ua, 0) } AS count_vehicular_ua_5, 
						{ fn IFNULL(month5.count_vehicular_uc, 0) } AS count_vehicular_uc_5, 
						{ fn IFNULL(month5.count_vehicular_sa, 0) } AS count_vehicular_sa_5,
						{ fn IFNULL(month5.count_vehicular_sc, 0) } AS count_vehicular_sc_5, 
						{ fn IFNULL(month5.count_substandard_ua, 0) } AS count_substandard_ua_5, 
						{ fn IFNULL(month5.count_substandard_uc, 0) } AS count_substandard_uc_5, 
						{ fn IFNULL(month5.count_substandard_sa, 0) } AS count_substandard_sa_5,
						{ fn IFNULL(month5.count_substandard_sc, 0) } AS count_substandard_sc_5, 
						{ fn IFNULL(month5.count_h2s_ua, 0) } AS count_h2s_ua_5, 
						{ fn IFNULL(month5.count_h2s_uc, 0) } AS count_h2s_uc_5, 
						{ fn IFNULL(month5.count_h2s_sa, 0) } AS count_h2s_sa_5,
						{ fn IFNULL(month5.count_h2s_sc, 0) } AS count_h2s_sc_5, 
						{ fn IFNULL(month5.count_workplace_health_ua, 0) } AS count_workplace_health_ua_5, 
						{ fn IFNULL(month5.count_workplace_health_uc, 0) } AS count_workplace_health_uc_5, 
						{ fn IFNULL(month5.count_workplace_health_sa, 0) } AS count_workplace_health_sa_5,
						{ fn IFNULL(month5.count_workplace_health_sc, 0) } AS count_workplace_health_sc_5,
						{ fn IFNULL(month6.count_accident_ua, 0) } AS count_accident_ua_6, 
						{ fn IFNULL(month6.count_accident_uc, 0) } AS count_accident_uc_6, 
						{ fn IFNULL(month6.count_accident_sa, 0) } AS count_accident_sa_6,
						{ fn IFNULL(month6.count_accident_sc, 0) } AS count_accident_sc_6, 
						{ fn IFNULL(month6.count_fire_ua, 0) } AS count_fire_ua_6, 
						{ fn IFNULL(month6.count_fire_uc, 0) } AS count_fire_uc_6, 
						{ fn IFNULL(month6.count_fire_sa, 0) } AS count_fire_sa_6,
						{ fn IFNULL(month6.count_fire_sc, 0) } AS count_fire_sc_6, 
						{ fn IFNULL(month6.count_prevention_ua, 0) } AS count_prevention_ua_6, 
						{ fn IFNULL(month6.count_prevention_uc, 0) } AS count_prevention_uc_6, 
						{ fn IFNULL(month6.count_prevention_sa, 0) } AS count_prevention_sa_6,
						{ fn IFNULL(month6.count_prevention_sc, 0) } AS count_prevention_sc_6, 
						{ fn IFNULL(month6.count_supervisor_ua, 0) } AS count_supervisor_ua_6, 
						{ fn IFNULL(month6.count_supervisor_uc, 0) } AS count_supervisor_uc_6, 
						{ fn IFNULL(month6.count_supervisor_sa, 0) } AS count_supervisor_sa_6,
						{ fn IFNULL(month6.count_supervisor_sc, 0) } AS count_supervisor_sc_6, 
						{ fn IFNULL(month6.count_fit_work_ua, 0) } AS count_fit_work_ua_6, 
						{ fn IFNULL(month6.count_fit_work_uc, 0) } AS count_fit_work_uc_6, 
						{ fn IFNULL(month6.count_fit_work_sa, 0) } AS count_fit_work_sa_6,
						{ fn IFNULL(month6.count_fit_work_sc, 0) } AS count_fit_work_sc_6, 
						{ fn IFNULL(month6.count_psychological_ua, 0) } AS count_psychological_ua_6, 
						{ fn IFNULL(month6.count_psychological_uc, 0) } AS count_psychological_uc_6, 
						{ fn IFNULL(month6.count_psychological_sa, 0) } AS count_psychological_sa_6,
						{ fn IFNULL(month6.count_psychological_sc, 0) } AS count_psychological_sc_6, 
						{ fn IFNULL(month6.count_posture_ua, 0) } AS count_posture_ua_6, 
						{ fn IFNULL(month6.count_posture_uc, 0) } AS count_posture_uc_6, 
						{ fn IFNULL(month6.count_posture_sa, 0) } AS count_posture_sa_6,
						{ fn IFNULL(month6.count_posture_sc, 0) } AS count_posture_sc_6, 
						{ fn IFNULL(month6.count_substance_ua, 0) } AS count_substance_ua_6, 
						{ fn IFNULL(month6.count_substance_uc, 0) } AS count_substance_uc_6, 
						{ fn IFNULL(month6.count_substance_sa, 0) } AS count_substance_sa_6,
						{ fn IFNULL(month6.count_substance_sc, 0) } AS count_substance_sc_6, 
						{ fn IFNULL(month6.count_hygiene_ua, 0) } AS count_hygiene_ua_6, 
						{ fn IFNULL(month6.count_hygiene_uc, 0) } AS count_hygiene_uc_6, 
						{ fn IFNULL(month6.count_hygiene_sa, 0) } AS count_hygiene_sa_6,
						{ fn IFNULL(month6.count_hygiene_sc, 0) } AS count_hygiene_sc_6, 
						{ fn IFNULL(month6.count_house_ua, 0) } AS count_house_ua_6, 
						{ fn IFNULL(month6.count_house_uc, 0) } AS count_house_uc_6, 
						{ fn IFNULL(month6.count_house_sa, 0) } AS count_house_sa_6,
						{ fn IFNULL(month6.count_house_sc, 0) } AS count_house_sc_6, 
						{ fn IFNULL(month6.count_standard_ua, 0) } AS count_standard_ua_6, 
						{ fn IFNULL(month6.count_standard_uc, 0) } AS count_standard_uc_6, 
						{ fn IFNULL(month6.count_standard_sa, 0) } AS count_standard_sa_6,
						{ fn IFNULL(month6.count_standard_sc, 0) } AS count_standard_sc_6, 
						{ fn IFNULL(month6.count_spill_ua, 0) } AS count_spill_ua_6, 
						{ fn IFNULL(month6.count_spill_uc, 0) } AS count_spill_uc_6, 
						{ fn IFNULL(month6.count_spill_sa, 0) } AS count_spill_sa_6,
						{ fn IFNULL(month6.count_spill_sc, 0) } AS count_spill_sc_6, 
						{ fn IFNULL(month6.count_waste_energy_ua, 0) } AS count_waste_energy_ua_6, 
						{ fn IFNULL(month6.count_waste_energy_uc, 0) } AS count_waste_energy_uc_6, 
						{ fn IFNULL(month6.count_waste_energy_sa, 0) } AS count_waste_energy_sa_6,
						{ fn IFNULL(month6.count_waste_energy_sc, 0) } AS count_waste_energy_sc_6, 
						{ fn IFNULL(month6.count_containment_ua, 0) } AS count_containment_ua_6, 
						{ fn IFNULL(month6.count_containment_uc, 0) } AS count_containment_uc_6, 
						{ fn IFNULL(month6.count_containment_sa, 0) } AS count_containment_sa_6,
						{ fn IFNULL(month6.count_containment_sc, 0) } AS count_containment_sc_6, 
						{ fn IFNULL(month6.count_absorbent_ua, 0) } AS count_absorbent_ua_6, 
						{ fn IFNULL(month6.count_absorbent_uc, 0) } AS count_absorbent_uc_6, 
						{ fn IFNULL(month6.count_absorbent_sa, 0) } AS count_absorbent_sa_6,
						{ fn IFNULL(month6.count_absorbent_sc, 0) } AS count_absorbent_sc_6, 
						{ fn IFNULL(month6.count_hira_ua, 0) } AS count_hira_ua_6, 
						{ fn IFNULL(month6.count_hira_uc, 0) } AS count_hira_uc_6, 
						{ fn IFNULL(month6.count_hira_sa, 0) } AS count_hira_sa_6,
						{ fn IFNULL(month6.count_hira_sc, 0) } AS count_hira_sc_6, 
						{ fn IFNULL(month6.count_ptw_ua, 0) } AS count_ptw_ua_6, 
						{ fn IFNULL(month6.count_ptw_uc, 0) } AS count_ptw_uc_6, 
						{ fn IFNULL(month6.count_ptw_sa, 0) } AS count_ptw_sa_6,
						{ fn IFNULL(month6.count_ptw_sc, 0) } AS count_ptw_sc_6, 
						{ fn IFNULL(month6.count_sop_ua, 0) } AS count_sop_ua_6, 
						{ fn IFNULL(month6.count_sop_uc, 0) } AS count_sop_uc_6, 
						{ fn IFNULL(month6.count_sop_sa, 0) } AS count_sop_sa_6,
						{ fn IFNULL(month6.count_sop_sc, 0) } AS count_sop_sc_6, 
						{ fn IFNULL(month6.count_msds_ua, 0) } AS count_msds_ua_6, 
						{ fn IFNULL(month6.count_msds_uc, 0) } AS count_msds_uc_6, 
						{ fn IFNULL(month6.count_msds_sa, 0) } AS count_msds_sa_6,
						{ fn IFNULL(month6.count_msds_sc, 0) } AS count_msds_sc_6, 
						{ fn IFNULL(month6.count_emergency_ua, 0) } AS count_emergency_ua_6, 
						{ fn IFNULL(month6.count_emergency_uc, 0) } AS count_emergency_uc_6, 
						{ fn IFNULL(month6.count_emergency_sa, 0) } AS count_emergency_sa_6,
						{ fn IFNULL(month6.count_emergency_sc, 0) } AS count_emergency_sc_6, 
						{ fn IFNULL(month6.count_certificates_ua, 0) } AS count_certificates_ua_6, 
						{ fn IFNULL(month6.count_certificates_uc, 0) } AS count_certificates_uc_6, 
						{ fn IFNULL(month6.count_certificates_sa, 0) } AS count_certificates_sa_6,
						{ fn IFNULL(month6.count_certificates_sc, 0) } AS count_certificates_sc_6, 
						{ fn IFNULL(month6.count_ppe_ua, 0) } AS count_ppe_ua_6, 
						{ fn IFNULL(month6.count_ppe_uc, 0) } AS count_ppe_uc_6, 
						{ fn IFNULL(month6.count_ppe_sa, 0) } AS count_ppe_sa_6,
						{ fn IFNULL(month6.count_ppe_sc, 0) } AS count_ppe_sc_6, 
						{ fn IFNULL(month6.count_hand_ua, 0) } AS count_hand_ua_6, 
						{ fn IFNULL(month6.count_hand_uc, 0) } AS count_hand_uc_6, 
						{ fn IFNULL(month6.count_hand_sa, 0) } AS count_hand_sa_6,
						{ fn IFNULL(month6.count_hand_sc, 0) } AS count_hand_sc_6, 
						{ fn IFNULL(month6.count_mechanical_ua, 0) } AS count_mechanical_ua_6, 
						{ fn IFNULL(month6.count_mechanical_uc, 0) } AS count_mechanical_uc_6, 
						{ fn IFNULL(month6.count_mechanical_sa, 0) } AS count_mechanical_sa_6,
						{ fn IFNULL(month6.count_mechanical_sc, 0) } AS count_mechanical_sc_6, 
						{ fn IFNULL(month6.count_electrical_ua, 0) } AS count_electrical_ua_6, 
						{ fn IFNULL(month6.count_electrical_uc, 0) } AS count_electrical_uc_6, 
						{ fn IFNULL(month6.count_electrical_sa, 0) } AS count_electrical_sa_6,
						{ fn IFNULL(month6.count_electrical_sc, 0) } AS count_electrical_sc_6, 
						{ fn IFNULL(month6.count_vehicular_ua, 0) } AS count_vehicular_ua_6, 
						{ fn IFNULL(month6.count_vehicular_uc, 0) } AS count_vehicular_uc_6, 
						{ fn IFNULL(month6.count_vehicular_sa, 0) } AS count_vehicular_sa_6,
						{ fn IFNULL(month6.count_vehicular_sc, 0) } AS count_vehicular_sc_6, 
						{ fn IFNULL(month6.count_substandard_ua, 0) } AS count_substandard_ua_6, 
						{ fn IFNULL(month6.count_substandard_uc, 0) } AS count_substandard_uc_6, 
						{ fn IFNULL(month6.count_substandard_sa, 0) } AS count_substandard_sa_6,
						{ fn IFNULL(month6.count_substandard_sc, 0) } AS count_substandard_sc_6, 
						{ fn IFNULL(month6.count_h2s_ua, 0) } AS count_h2s_ua_6, 
						{ fn IFNULL(month6.count_h2s_uc, 0) } AS count_h2s_uc_6, 
						{ fn IFNULL(month6.count_h2s_sa, 0) } AS count_h2s_sa_6,
						{ fn IFNULL(month6.count_h2s_sc, 0) } AS count_h2s_sc_6, 
						{ fn IFNULL(month6.count_workplace_health_ua, 0) } AS count_workplace_health_ua_6, 
						{ fn IFNULL(month6.count_workplace_health_uc, 0) } AS count_workplace_health_uc_6, 
						{ fn IFNULL(month6.count_workplace_health_sa, 0) } AS count_workplace_health_sa_6,
						{ fn IFNULL(month6.count_workplace_health_sc, 0) } AS count_workplace_health_sc_6,
						{ fn IFNULL(month7.count_accident_ua, 0) } AS count_accident_ua_7, 
						{ fn IFNULL(month7.count_accident_uc, 0) } AS count_accident_uc_7, 
						{ fn IFNULL(month7.count_accident_sa, 0) } AS count_accident_sa_7,
						{ fn IFNULL(month7.count_accident_sc, 0) } AS count_accident_sc_7, 
						{ fn IFNULL(month7.count_fire_ua, 0) } AS count_fire_ua_7, 
						{ fn IFNULL(month7.count_fire_uc, 0) } AS count_fire_uc_7, 
						{ fn IFNULL(month7.count_fire_sa, 0) } AS count_fire_sa_7,
						{ fn IFNULL(month7.count_fire_sc, 0) } AS count_fire_sc_7, 
						{ fn IFNULL(month7.count_prevention_ua, 0) } AS count_prevention_ua_7, 
						{ fn IFNULL(month7.count_prevention_uc, 0) } AS count_prevention_uc_7, 
						{ fn IFNULL(month7.count_prevention_sa, 0) } AS count_prevention_sa_7,
						{ fn IFNULL(month7.count_prevention_sc, 0) } AS count_prevention_sc_7, 
						{ fn IFNULL(month7.count_supervisor_ua, 0) } AS count_supervisor_ua_7, 
						{ fn IFNULL(month7.count_supervisor_uc, 0) } AS count_supervisor_uc_7, 
						{ fn IFNULL(month7.count_supervisor_sa, 0) } AS count_supervisor_sa_7,
						{ fn IFNULL(month7.count_supervisor_sc, 0) } AS count_supervisor_sc_7, 
						{ fn IFNULL(month7.count_fit_work_ua, 0) } AS count_fit_work_ua_7, 
						{ fn IFNULL(month7.count_fit_work_uc, 0) } AS count_fit_work_uc_7, 
						{ fn IFNULL(month7.count_fit_work_sa, 0) } AS count_fit_work_sa_7,
						{ fn IFNULL(month7.count_fit_work_sc, 0) } AS count_fit_work_sc_7, 
						{ fn IFNULL(month7.count_psychological_ua, 0) } AS count_psychological_ua_7, 
						{ fn IFNULL(month7.count_psychological_uc, 0) } AS count_psychological_uc_7, 
						{ fn IFNULL(month7.count_psychological_sa, 0) } AS count_psychological_sa_7,
						{ fn IFNULL(month7.count_psychological_sc, 0) } AS count_psychological_sc_7, 
						{ fn IFNULL(month7.count_posture_ua, 0) } AS count_posture_ua_7, 
						{ fn IFNULL(month7.count_posture_uc, 0) } AS count_posture_uc_7, 
						{ fn IFNULL(month7.count_posture_sa, 0) } AS count_posture_sa_7,
						{ fn IFNULL(month7.count_posture_sc, 0) } AS count_posture_sc_7, 
						{ fn IFNULL(month7.count_substance_ua, 0) } AS count_substance_ua_7, 
						{ fn IFNULL(month7.count_substance_uc, 0) } AS count_substance_uc_7, 
						{ fn IFNULL(month7.count_substance_sa, 0) } AS count_substance_sa_7,
						{ fn IFNULL(month7.count_substance_sc, 0) } AS count_substance_sc_7, 
						{ fn IFNULL(month7.count_hygiene_ua, 0) } AS count_hygiene_ua_7, 
						{ fn IFNULL(month7.count_hygiene_uc, 0) } AS count_hygiene_uc_7, 
						{ fn IFNULL(month7.count_hygiene_sa, 0) } AS count_hygiene_sa_7,
						{ fn IFNULL(month7.count_hygiene_sc, 0) } AS count_hygiene_sc_7, 
						{ fn IFNULL(month7.count_house_ua, 0) } AS count_house_ua_7, 
						{ fn IFNULL(month7.count_house_uc, 0) } AS count_house_uc_7, 
						{ fn IFNULL(month7.count_house_sa, 0) } AS count_house_sa_7,
						{ fn IFNULL(month7.count_house_sc, 0) } AS count_house_sc_7, 
						{ fn IFNULL(month7.count_standard_ua, 0) } AS count_standard_ua_7, 
						{ fn IFNULL(month7.count_standard_uc, 0) } AS count_standard_uc_7, 
						{ fn IFNULL(month7.count_standard_sa, 0) } AS count_standard_sa_7,
						{ fn IFNULL(month7.count_standard_sc, 0) } AS count_standard_sc_7, 
						{ fn IFNULL(month7.count_spill_ua, 0) } AS count_spill_ua_7, 
						{ fn IFNULL(month7.count_spill_uc, 0) } AS count_spill_uc_7, 
						{ fn IFNULL(month7.count_spill_sa, 0) } AS count_spill_sa_7,
						{ fn IFNULL(month7.count_spill_sc, 0) } AS count_spill_sc_7, 
						{ fn IFNULL(month7.count_waste_energy_ua, 0) } AS count_waste_energy_ua_7, 
						{ fn IFNULL(month7.count_waste_energy_uc, 0) } AS count_waste_energy_uc_7, 
						{ fn IFNULL(month7.count_waste_energy_sa, 0) } AS count_waste_energy_sa_7,
						{ fn IFNULL(month7.count_waste_energy_sc, 0) } AS count_waste_energy_sc_7, 
						{ fn IFNULL(month7.count_containment_ua, 0) } AS count_containment_ua_7, 
						{ fn IFNULL(month7.count_containment_uc, 0) } AS count_containment_uc_7, 
						{ fn IFNULL(month7.count_containment_sa, 0) } AS count_containment_sa_7,
						{ fn IFNULL(month7.count_containment_sc, 0) } AS count_containment_sc_7, 
						{ fn IFNULL(month7.count_absorbent_ua, 0) } AS count_absorbent_ua_7, 
						{ fn IFNULL(month7.count_absorbent_uc, 0) } AS count_absorbent_uc_7, 
						{ fn IFNULL(month7.count_absorbent_sa, 0) } AS count_absorbent_sa_7,
						{ fn IFNULL(month7.count_absorbent_sc, 0) } AS count_absorbent_sc_7, 
						{ fn IFNULL(month7.count_hira_ua, 0) } AS count_hira_ua_7, 
						{ fn IFNULL(month7.count_hira_uc, 0) } AS count_hira_uc_7, 
						{ fn IFNULL(month7.count_hira_sa, 0) } AS count_hira_sa_7,
						{ fn IFNULL(month7.count_hira_sc, 0) } AS count_hira_sc_7, 
						{ fn IFNULL(month7.count_ptw_ua, 0) } AS count_ptw_ua_7, 
						{ fn IFNULL(month7.count_ptw_uc, 0) } AS count_ptw_uc_7, 
						{ fn IFNULL(month7.count_ptw_sa, 0) } AS count_ptw_sa_7,
						{ fn IFNULL(month7.count_ptw_sc, 0) } AS count_ptw_sc_7, 
						{ fn IFNULL(month7.count_sop_ua, 0) } AS count_sop_ua_7, 
						{ fn IFNULL(month7.count_sop_uc, 0) } AS count_sop_uc_7, 
						{ fn IFNULL(month7.count_sop_sa, 0) } AS count_sop_sa_7,
						{ fn IFNULL(month7.count_sop_sc, 0) } AS count_sop_sc_7, 
						{ fn IFNULL(month7.count_msds_ua, 0) } AS count_msds_ua_7, 
						{ fn IFNULL(month7.count_msds_uc, 0) } AS count_msds_uc_7, 
						{ fn IFNULL(month7.count_msds_sa, 0) } AS count_msds_sa_7,
						{ fn IFNULL(month7.count_msds_sc, 0) } AS count_msds_sc_7, 
						{ fn IFNULL(month7.count_emergency_ua, 0) } AS count_emergency_ua_7, 
						{ fn IFNULL(month7.count_emergency_uc, 0) } AS count_emergency_uc_7, 
						{ fn IFNULL(month7.count_emergency_sa, 0) } AS count_emergency_sa_7,
						{ fn IFNULL(month7.count_emergency_sc, 0) } AS count_emergency_sc_7, 
						{ fn IFNULL(month7.count_certificates_ua, 0) } AS count_certificates_ua_7, 
						{ fn IFNULL(month7.count_certificates_uc, 0) } AS count_certificates_uc_7, 
						{ fn IFNULL(month7.count_certificates_sa, 0) } AS count_certificates_sa_7,
						{ fn IFNULL(month7.count_certificates_sc, 0) } AS count_certificates_sc_7, 
						{ fn IFNULL(month7.count_ppe_ua, 0) } AS count_ppe_ua_7, 
						{ fn IFNULL(month7.count_ppe_uc, 0) } AS count_ppe_uc_7, 
						{ fn IFNULL(month7.count_ppe_sa, 0) } AS count_ppe_sa_7,
						{ fn IFNULL(month7.count_ppe_sc, 0) } AS count_ppe_sc_7, 
						{ fn IFNULL(month7.count_hand_ua, 0) } AS count_hand_ua_7, 
						{ fn IFNULL(month7.count_hand_uc, 0) } AS count_hand_uc_7, 
						{ fn IFNULL(month7.count_hand_sa, 0) } AS count_hand_sa_7,
						{ fn IFNULL(month7.count_hand_sc, 0) } AS count_hand_sc_7, 
						{ fn IFNULL(month7.count_mechanical_ua, 0) } AS count_mechanical_ua_7, 
						{ fn IFNULL(month7.count_mechanical_uc, 0) } AS count_mechanical_uc_7, 
						{ fn IFNULL(month7.count_mechanical_sa, 0) } AS count_mechanical_sa_7,
						{ fn IFNULL(month7.count_mechanical_sc, 0) } AS count_mechanical_sc_7, 
						{ fn IFNULL(month7.count_electrical_ua, 0) } AS count_electrical_ua_7, 
						{ fn IFNULL(month7.count_electrical_uc, 0) } AS count_electrical_uc_7, 
						{ fn IFNULL(month7.count_electrical_sa, 0) } AS count_electrical_sa_7,
						{ fn IFNULL(month7.count_electrical_sc, 0) } AS count_electrical_sc_7, 
						{ fn IFNULL(month7.count_vehicular_ua, 0) } AS count_vehicular_ua_7, 
						{ fn IFNULL(month7.count_vehicular_uc, 0) } AS count_vehicular_uc_7, 
						{ fn IFNULL(month7.count_vehicular_sa, 0) } AS count_vehicular_sa_7,
						{ fn IFNULL(month7.count_vehicular_sc, 0) } AS count_vehicular_sc_7, 
						{ fn IFNULL(month7.count_substandard_ua, 0) } AS count_substandard_ua_7, 
						{ fn IFNULL(month7.count_substandard_uc, 0) } AS count_substandard_uc_7, 
						{ fn IFNULL(month7.count_substandard_sa, 0) } AS count_substandard_sa_7,
						{ fn IFNULL(month7.count_substandard_sc, 0) } AS count_substandard_sc_7, 
						{ fn IFNULL(month7.count_h2s_ua, 0) } AS count_h2s_ua_7, 
						{ fn IFNULL(month7.count_h2s_uc, 0) } AS count_h2s_uc_7, 
						{ fn IFNULL(month7.count_h2s_sa, 0) } AS count_h2s_sa_7,
						{ fn IFNULL(month7.count_h2s_sc, 0) } AS count_h2s_sc_7, 
						{ fn IFNULL(month7.count_workplace_health_ua, 0) } AS count_workplace_health_ua_7, 
						{ fn IFNULL(month7.count_workplace_health_uc, 0) } AS count_workplace_health_uc_7, 
						{ fn IFNULL(month7.count_workplace_health_sa, 0) } AS count_workplace_health_sa_7,
						{ fn IFNULL(month7.count_workplace_health_sc, 0) } AS count_workplace_health_sc_7,
						{ fn IFNULL(month8.count_accident_ua, 0) } AS count_accident_ua_8, 
						{ fn IFNULL(month8.count_accident_uc, 0) } AS count_accident_uc_8, 
						{ fn IFNULL(month8.count_accident_sa, 0) } AS count_accident_sa_8,
						{ fn IFNULL(month8.count_accident_sc, 0) } AS count_accident_sc_8, 
						{ fn IFNULL(month8.count_fire_ua, 0) } AS count_fire_ua_8, 
						{ fn IFNULL(month8.count_fire_uc, 0) } AS count_fire_uc_8, 
						{ fn IFNULL(month8.count_fire_sa, 0) } AS count_fire_sa_8,
						{ fn IFNULL(month8.count_fire_sc, 0) } AS count_fire_sc_8, 
						{ fn IFNULL(month8.count_prevention_ua, 0) } AS count_prevention_ua_8, 
						{ fn IFNULL(month8.count_prevention_uc, 0) } AS count_prevention_uc_8, 
						{ fn IFNULL(month8.count_prevention_sa, 0) } AS count_prevention_sa_8,
						{ fn IFNULL(month8.count_prevention_sc, 0) } AS count_prevention_sc_8, 
						{ fn IFNULL(month8.count_supervisor_ua, 0) } AS count_supervisor_ua_8, 
						{ fn IFNULL(month8.count_supervisor_uc, 0) } AS count_supervisor_uc_8, 
						{ fn IFNULL(month8.count_supervisor_sa, 0) } AS count_supervisor_sa_8,
						{ fn IFNULL(month8.count_supervisor_sc, 0) } AS count_supervisor_sc_8, 
						{ fn IFNULL(month8.count_fit_work_ua, 0) } AS count_fit_work_ua_8, 
						{ fn IFNULL(month8.count_fit_work_uc, 0) } AS count_fit_work_uc_8, 
						{ fn IFNULL(month8.count_fit_work_sa, 0) } AS count_fit_work_sa_8,
						{ fn IFNULL(month8.count_fit_work_sc, 0) } AS count_fit_work_sc_8, 
						{ fn IFNULL(month8.count_psychological_ua, 0) } AS count_psychological_ua_8, 
						{ fn IFNULL(month8.count_psychological_uc, 0) } AS count_psychological_uc_8, 
						{ fn IFNULL(month8.count_psychological_sa, 0) } AS count_psychological_sa_8,
						{ fn IFNULL(month8.count_psychological_sc, 0) } AS count_psychological_sc_8, 
						{ fn IFNULL(month8.count_posture_ua, 0) } AS count_posture_ua_8, 
						{ fn IFNULL(month8.count_posture_uc, 0) } AS count_posture_uc_8, 
						{ fn IFNULL(month8.count_posture_sa, 0) } AS count_posture_sa_8,
						{ fn IFNULL(month8.count_posture_sc, 0) } AS count_posture_sc_8, 
						{ fn IFNULL(month8.count_substance_ua, 0) } AS count_substance_ua_8, 
						{ fn IFNULL(month8.count_substance_uc, 0) } AS count_substance_uc_8, 
						{ fn IFNULL(month8.count_substance_sa, 0) } AS count_substance_sa_8,
						{ fn IFNULL(month8.count_substance_sc, 0) } AS count_substance_sc_8, 
						{ fn IFNULL(month8.count_hygiene_ua, 0) } AS count_hygiene_ua_8, 
						{ fn IFNULL(month8.count_hygiene_uc, 0) } AS count_hygiene_uc_8, 
						{ fn IFNULL(month8.count_hygiene_sa, 0) } AS count_hygiene_sa_8,
						{ fn IFNULL(month8.count_hygiene_sc, 0) } AS count_hygiene_sc_8, 
						{ fn IFNULL(month8.count_house_ua, 0) } AS count_house_ua_8, 
						{ fn IFNULL(month8.count_house_uc, 0) } AS count_house_uc_8, 
						{ fn IFNULL(month8.count_house_sa, 0) } AS count_house_sa_8,
						{ fn IFNULL(month8.count_house_sc, 0) } AS count_house_sc_8, 
						{ fn IFNULL(month8.count_standard_ua, 0) } AS count_standard_ua_8, 
						{ fn IFNULL(month8.count_standard_uc, 0) } AS count_standard_uc_8, 
						{ fn IFNULL(month8.count_standard_sa, 0) } AS count_standard_sa_8,
						{ fn IFNULL(month8.count_standard_sc, 0) } AS count_standard_sc_8, 
						{ fn IFNULL(month8.count_spill_ua, 0) } AS count_spill_ua_8, 
						{ fn IFNULL(month8.count_spill_uc, 0) } AS count_spill_uc_8, 
						{ fn IFNULL(month8.count_spill_sa, 0) } AS count_spill_sa_8,
						{ fn IFNULL(month8.count_spill_sc, 0) } AS count_spill_sc_8, 
						{ fn IFNULL(month8.count_waste_energy_ua, 0) } AS count_waste_energy_ua_8, 
						{ fn IFNULL(month8.count_waste_energy_uc, 0) } AS count_waste_energy_uc_8, 
						{ fn IFNULL(month8.count_waste_energy_sa, 0) } AS count_waste_energy_sa_8,
						{ fn IFNULL(month8.count_waste_energy_sc, 0) } AS count_waste_energy_sc_8, 
						{ fn IFNULL(month8.count_containment_ua, 0) } AS count_containment_ua_8, 
						{ fn IFNULL(month8.count_containment_uc, 0) } AS count_containment_uc_8, 
						{ fn IFNULL(month8.count_containment_sa, 0) } AS count_containment_sa_8,
						{ fn IFNULL(month8.count_containment_sc, 0) } AS count_containment_sc_8, 
						{ fn IFNULL(month8.count_absorbent_ua, 0) } AS count_absorbent_ua_8, 
						{ fn IFNULL(month8.count_absorbent_uc, 0) } AS count_absorbent_uc_8, 
						{ fn IFNULL(month8.count_absorbent_sa, 0) } AS count_absorbent_sa_8,
						{ fn IFNULL(month8.count_absorbent_sc, 0) } AS count_absorbent_sc_8, 
						{ fn IFNULL(month8.count_hira_ua, 0) } AS count_hira_ua_8, 
						{ fn IFNULL(month8.count_hira_uc, 0) } AS count_hira_uc_8, 
						{ fn IFNULL(month8.count_hira_sa, 0) } AS count_hira_sa_8,
						{ fn IFNULL(month8.count_hira_sc, 0) } AS count_hira_sc_8, 
						{ fn IFNULL(month8.count_ptw_ua, 0) } AS count_ptw_ua_8, 
						{ fn IFNULL(month8.count_ptw_uc, 0) } AS count_ptw_uc_8, 
						{ fn IFNULL(month8.count_ptw_sa, 0) } AS count_ptw_sa_8,
						{ fn IFNULL(month8.count_ptw_sc, 0) } AS count_ptw_sc_8, 
						{ fn IFNULL(month8.count_sop_ua, 0) } AS count_sop_ua_8, 
						{ fn IFNULL(month8.count_sop_uc, 0) } AS count_sop_uc_8, 
						{ fn IFNULL(month8.count_sop_sa, 0) } AS count_sop_sa_8,
						{ fn IFNULL(month8.count_sop_sc, 0) } AS count_sop_sc_8, 
						{ fn IFNULL(month8.count_msds_ua, 0) } AS count_msds_ua_8, 
						{ fn IFNULL(month8.count_msds_uc, 0) } AS count_msds_uc_8, 
						{ fn IFNULL(month8.count_msds_sa, 0) } AS count_msds_sa_8,
						{ fn IFNULL(month8.count_msds_sc, 0) } AS count_msds_sc_8, 
						{ fn IFNULL(month8.count_emergency_ua, 0) } AS count_emergency_ua_8, 
						{ fn IFNULL(month8.count_emergency_uc, 0) } AS count_emergency_uc_8, 
						{ fn IFNULL(month8.count_emergency_sa, 0) } AS count_emergency_sa_8,
						{ fn IFNULL(month8.count_emergency_sc, 0) } AS count_emergency_sc_8, 
						{ fn IFNULL(month8.count_certificates_ua, 0) } AS count_certificates_ua_8, 
						{ fn IFNULL(month8.count_certificates_uc, 0) } AS count_certificates_uc_8, 
						{ fn IFNULL(month8.count_certificates_sa, 0) } AS count_certificates_sa_8,
						{ fn IFNULL(month8.count_certificates_sc, 0) } AS count_certificates_sc_8, 
						{ fn IFNULL(month8.count_ppe_ua, 0) } AS count_ppe_ua_8, 
						{ fn IFNULL(month8.count_ppe_uc, 0) } AS count_ppe_uc_8, 
						{ fn IFNULL(month8.count_ppe_sa, 0) } AS count_ppe_sa_8,
						{ fn IFNULL(month8.count_ppe_sc, 0) } AS count_ppe_sc_8, 
						{ fn IFNULL(month8.count_hand_ua, 0) } AS count_hand_ua_8, 
						{ fn IFNULL(month8.count_hand_uc, 0) } AS count_hand_uc_8, 
						{ fn IFNULL(month8.count_hand_sa, 0) } AS count_hand_sa_8,
						{ fn IFNULL(month8.count_hand_sc, 0) } AS count_hand_sc_8, 
						{ fn IFNULL(month8.count_mechanical_ua, 0) } AS count_mechanical_ua_8, 
						{ fn IFNULL(month8.count_mechanical_uc, 0) } AS count_mechanical_uc_8, 
						{ fn IFNULL(month8.count_mechanical_sa, 0) } AS count_mechanical_sa_8,
						{ fn IFNULL(month8.count_mechanical_sc, 0) } AS count_mechanical_sc_8, 
						{ fn IFNULL(month8.count_electrical_ua, 0) } AS count_electrical_ua_8, 
						{ fn IFNULL(month8.count_electrical_uc, 0) } AS count_electrical_uc_8, 
						{ fn IFNULL(month8.count_electrical_sa, 0) } AS count_electrical_sa_8,
						{ fn IFNULL(month8.count_electrical_sc, 0) } AS count_electrical_sc_8, 
						{ fn IFNULL(month8.count_vehicular_ua, 0) } AS count_vehicular_ua_8, 
						{ fn IFNULL(month8.count_vehicular_uc, 0) } AS count_vehicular_uc_8, 
						{ fn IFNULL(month8.count_vehicular_sa, 0) } AS count_vehicular_sa_8,
						{ fn IFNULL(month8.count_vehicular_sc, 0) } AS count_vehicular_sc_8, 
						{ fn IFNULL(month8.count_substandard_ua, 0) } AS count_substandard_ua_8, 
						{ fn IFNULL(month8.count_substandard_uc, 0) } AS count_substandard_uc_8, 
						{ fn IFNULL(month8.count_substandard_sa, 0) } AS count_substandard_sa_8,
						{ fn IFNULL(month8.count_substandard_sc, 0) } AS count_substandard_sc_8, 
						{ fn IFNULL(month8.count_h2s_ua, 0) } AS count_h2s_ua_8, 
						{ fn IFNULL(month8.count_h2s_uc, 0) } AS count_h2s_uc_8, 
						{ fn IFNULL(month8.count_h2s_sa, 0) } AS count_h2s_sa_8,
						{ fn IFNULL(month8.count_h2s_sc, 0) } AS count_h2s_sc_8, 
						{ fn IFNULL(month8.count_workplace_health_ua, 0) } AS count_workplace_health_ua_8, 
						{ fn IFNULL(month8.count_workplace_health_uc, 0) } AS count_workplace_health_uc_8, 
						{ fn IFNULL(month8.count_workplace_health_sa, 0) } AS count_workplace_health_sa_8,
						{ fn IFNULL(month8.count_workplace_health_sc, 0) } AS count_workplace_health_sc_8,
						{ fn IFNULL(month9.count_accident_ua, 0) } AS count_accident_ua_9, 
						{ fn IFNULL(month9.count_accident_uc, 0) } AS count_accident_uc_9, 
						{ fn IFNULL(month9.count_accident_sa, 0) } AS count_accident_sa_9,
						{ fn IFNULL(month9.count_accident_sc, 0) } AS count_accident_sc_9, 
						{ fn IFNULL(month9.count_fire_ua, 0) } AS count_fire_ua_9, 
						{ fn IFNULL(month9.count_fire_uc, 0) } AS count_fire_uc_9, 
						{ fn IFNULL(month9.count_fire_sa, 0) } AS count_fire_sa_9,
						{ fn IFNULL(month9.count_fire_sc, 0) } AS count_fire_sc_9, 
						{ fn IFNULL(month9.count_prevention_ua, 0) } AS count_prevention_ua_9, 
						{ fn IFNULL(month9.count_prevention_uc, 0) } AS count_prevention_uc_9, 
						{ fn IFNULL(month9.count_prevention_sa, 0) } AS count_prevention_sa_9,
						{ fn IFNULL(month9.count_prevention_sc, 0) } AS count_prevention_sc_9, 
						{ fn IFNULL(month9.count_supervisor_ua, 0) } AS count_supervisor_ua_9, 
						{ fn IFNULL(month9.count_supervisor_uc, 0) } AS count_supervisor_uc_9, 
						{ fn IFNULL(month9.count_supervisor_sa, 0) } AS count_supervisor_sa_9,
						{ fn IFNULL(month9.count_supervisor_sc, 0) } AS count_supervisor_sc_9, 
						{ fn IFNULL(month9.count_fit_work_ua, 0) } AS count_fit_work_ua_9, 
						{ fn IFNULL(month9.count_fit_work_uc, 0) } AS count_fit_work_uc_9, 
						{ fn IFNULL(month9.count_fit_work_sa, 0) } AS count_fit_work_sa_9,
						{ fn IFNULL(month9.count_fit_work_sc, 0) } AS count_fit_work_sc_9, 
						{ fn IFNULL(month9.count_psychological_ua, 0) } AS count_psychological_ua_9, 
						{ fn IFNULL(month9.count_psychological_uc, 0) } AS count_psychological_uc_9, 
						{ fn IFNULL(month9.count_psychological_sa, 0) } AS count_psychological_sa_9,
						{ fn IFNULL(month9.count_psychological_sc, 0) } AS count_psychological_sc_9, 
						{ fn IFNULL(month9.count_posture_ua, 0) } AS count_posture_ua_9, 
						{ fn IFNULL(month9.count_posture_uc, 0) } AS count_posture_uc_9, 
						{ fn IFNULL(month9.count_posture_sa, 0) } AS count_posture_sa_9,
						{ fn IFNULL(month9.count_posture_sc, 0) } AS count_posture_sc_9, 
						{ fn IFNULL(month9.count_substance_ua, 0) } AS count_substance_ua_9, 
						{ fn IFNULL(month9.count_substance_uc, 0) } AS count_substance_uc_9, 
						{ fn IFNULL(month9.count_substance_sa, 0) } AS count_substance_sa_9,
						{ fn IFNULL(month9.count_substance_sc, 0) } AS count_substance_sc_9, 
						{ fn IFNULL(month9.count_hygiene_ua, 0) } AS count_hygiene_ua_9, 
						{ fn IFNULL(month9.count_hygiene_uc, 0) } AS count_hygiene_uc_9, 
						{ fn IFNULL(month9.count_hygiene_sa, 0) } AS count_hygiene_sa_9,
						{ fn IFNULL(month9.count_hygiene_sc, 0) } AS count_hygiene_sc_9, 
						{ fn IFNULL(month9.count_house_ua, 0) } AS count_house_ua_9, 
						{ fn IFNULL(month9.count_house_uc, 0) } AS count_house_uc_9, 
						{ fn IFNULL(month9.count_house_sa, 0) } AS count_house_sa_9,
						{ fn IFNULL(month9.count_house_sc, 0) } AS count_house_sc_9, 
						{ fn IFNULL(month9.count_standard_ua, 0) } AS count_standard_ua_9, 
						{ fn IFNULL(month9.count_standard_uc, 0) } AS count_standard_uc_9, 
						{ fn IFNULL(month9.count_standard_sa, 0) } AS count_standard_sa_9,
						{ fn IFNULL(month9.count_standard_sc, 0) } AS count_standard_sc_9, 
						{ fn IFNULL(month9.count_spill_ua, 0) } AS count_spill_ua_9, 
						{ fn IFNULL(month9.count_spill_uc, 0) } AS count_spill_uc_9, 
						{ fn IFNULL(month9.count_spill_sa, 0) } AS count_spill_sa_9,
						{ fn IFNULL(month9.count_spill_sc, 0) } AS count_spill_sc_9, 
						{ fn IFNULL(month9.count_waste_energy_ua, 0) } AS count_waste_energy_ua_9, 
						{ fn IFNULL(month9.count_waste_energy_uc, 0) } AS count_waste_energy_uc_9, 
						{ fn IFNULL(month9.count_waste_energy_sa, 0) } AS count_waste_energy_sa_9,
						{ fn IFNULL(month9.count_waste_energy_sc, 0) } AS count_waste_energy_sc_9, 
						{ fn IFNULL(month9.count_containment_ua, 0) } AS count_containment_ua_9, 
						{ fn IFNULL(month9.count_containment_uc, 0) } AS count_containment_uc_9, 
						{ fn IFNULL(month9.count_containment_sa, 0) } AS count_containment_sa_9,
						{ fn IFNULL(month9.count_containment_sc, 0) } AS count_containment_sc_9, 
						{ fn IFNULL(month9.count_absorbent_ua, 0) } AS count_absorbent_ua_9, 
						{ fn IFNULL(month9.count_absorbent_uc, 0) } AS count_absorbent_uc_9, 
						{ fn IFNULL(month9.count_absorbent_sa, 0) } AS count_absorbent_sa_9,
						{ fn IFNULL(month9.count_absorbent_sc, 0) } AS count_absorbent_sc_9, 
						{ fn IFNULL(month9.count_hira_ua, 0) } AS count_hira_ua_9, 
						{ fn IFNULL(month9.count_hira_uc, 0) } AS count_hira_uc_9, 
						{ fn IFNULL(month9.count_hira_sa, 0) } AS count_hira_sa_9,
						{ fn IFNULL(month9.count_hira_sc, 0) } AS count_hira_sc_9, 
						{ fn IFNULL(month9.count_ptw_ua, 0) } AS count_ptw_ua_9, 
						{ fn IFNULL(month9.count_ptw_uc, 0) } AS count_ptw_uc_9, 
						{ fn IFNULL(month9.count_ptw_sa, 0) } AS count_ptw_sa_9,
						{ fn IFNULL(month9.count_ptw_sc, 0) } AS count_ptw_sc_9, 
						{ fn IFNULL(month9.count_sop_ua, 0) } AS count_sop_ua_9, 
						{ fn IFNULL(month9.count_sop_uc, 0) } AS count_sop_uc_9, 
						{ fn IFNULL(month9.count_sop_sa, 0) } AS count_sop_sa_9,
						{ fn IFNULL(month9.count_sop_sc, 0) } AS count_sop_sc_9, 
						{ fn IFNULL(month9.count_msds_ua, 0) } AS count_msds_ua_9, 
						{ fn IFNULL(month9.count_msds_uc, 0) } AS count_msds_uc_9, 
						{ fn IFNULL(month9.count_msds_sa, 0) } AS count_msds_sa_9,
						{ fn IFNULL(month9.count_msds_sc, 0) } AS count_msds_sc_9, 
						{ fn IFNULL(month9.count_emergency_ua, 0) } AS count_emergency_ua_9, 
						{ fn IFNULL(month9.count_emergency_uc, 0) } AS count_emergency_uc_9, 
						{ fn IFNULL(month9.count_emergency_sa, 0) } AS count_emergency_sa_9,
						{ fn IFNULL(month9.count_emergency_sc, 0) } AS count_emergency_sc_9, 
						{ fn IFNULL(month9.count_certificates_ua, 0) } AS count_certificates_ua_9, 
						{ fn IFNULL(month9.count_certificates_uc, 0) } AS count_certificates_uc_9, 
						{ fn IFNULL(month9.count_certificates_sa, 0) } AS count_certificates_sa_9,
						{ fn IFNULL(month9.count_certificates_sc, 0) } AS count_certificates_sc_9, 
						{ fn IFNULL(month9.count_ppe_ua, 0) } AS count_ppe_ua_9, 
						{ fn IFNULL(month9.count_ppe_uc, 0) } AS count_ppe_uc_9, 
						{ fn IFNULL(month9.count_ppe_sa, 0) } AS count_ppe_sa_9,
						{ fn IFNULL(month9.count_ppe_sc, 0) } AS count_ppe_sc_9, 
						{ fn IFNULL(month9.count_hand_ua, 0) } AS count_hand_ua_9, 
						{ fn IFNULL(month9.count_hand_uc, 0) } AS count_hand_uc_9, 
						{ fn IFNULL(month9.count_hand_sa, 0) } AS count_hand_sa_9,
						{ fn IFNULL(month9.count_hand_sc, 0) } AS count_hand_sc_9, 
						{ fn IFNULL(month9.count_mechanical_ua, 0) } AS count_mechanical_ua_9, 
						{ fn IFNULL(month9.count_mechanical_uc, 0) } AS count_mechanical_uc_9, 
						{ fn IFNULL(month9.count_mechanical_sa, 0) } AS count_mechanical_sa_9,
						{ fn IFNULL(month9.count_mechanical_sc, 0) } AS count_mechanical_sc_9, 
						{ fn IFNULL(month9.count_electrical_ua, 0) } AS count_electrical_ua_9, 
						{ fn IFNULL(month9.count_electrical_uc, 0) } AS count_electrical_uc_9, 
						{ fn IFNULL(month9.count_electrical_sa, 0) } AS count_electrical_sa_9,
						{ fn IFNULL(month9.count_electrical_sc, 0) } AS count_electrical_sc_9, 
						{ fn IFNULL(month9.count_vehicular_ua, 0) } AS count_vehicular_ua_9, 
						{ fn IFNULL(month9.count_vehicular_uc, 0) } AS count_vehicular_uc_9, 
						{ fn IFNULL(month9.count_vehicular_sa, 0) } AS count_vehicular_sa_9,
						{ fn IFNULL(month9.count_vehicular_sc, 0) } AS count_vehicular_sc_9, 
						{ fn IFNULL(month9.count_substandard_ua, 0) } AS count_substandard_ua_9, 
						{ fn IFNULL(month9.count_substandard_uc, 0) } AS count_substandard_uc_9, 
						{ fn IFNULL(month9.count_substandard_sa, 0) } AS count_substandard_sa_9,
						{ fn IFNULL(month9.count_substandard_sc, 0) } AS count_substandard_sc_9, 
						{ fn IFNULL(month9.count_h2s_ua, 0) } AS count_h2s_ua_9, 
						{ fn IFNULL(month9.count_h2s_uc, 0) } AS count_h2s_uc_9, 
						{ fn IFNULL(month9.count_h2s_sa, 0) } AS count_h2s_sa_9,
						{ fn IFNULL(month9.count_h2s_sc, 0) } AS count_h2s_sc_9, 
						{ fn IFNULL(month9.count_workplace_health_ua, 0) } AS count_workplace_health_ua_9, 
						{ fn IFNULL(month9.count_workplace_health_uc, 0) } AS count_workplace_health_uc_9, 
						{ fn IFNULL(month9.count_workplace_health_sa, 0) } AS count_workplace_health_sa_9,
						{ fn IFNULL(month9.count_workplace_health_sc, 0) } AS count_workplace_health_sc_9,
						{ fn IFNULL(month10.count_accident_ua, 0) } AS count_accident_ua_10, 
						{ fn IFNULL(month10.count_accident_uc, 0) } AS count_accident_uc_10, 
						{ fn IFNULL(month10.count_accident_sa, 0) } AS count_accident_sa_10,
						{ fn IFNULL(month10.count_accident_sc, 0) } AS count_accident_sc_10, 
						{ fn IFNULL(month10.count_fire_ua, 0) } AS count_fire_ua_10, 
						{ fn IFNULL(month10.count_fire_uc, 0) } AS count_fire_uc_10, 
						{ fn IFNULL(month10.count_fire_sa, 0) } AS count_fire_sa_10,
						{ fn IFNULL(month10.count_fire_sc, 0) } AS count_fire_sc_10, 
						{ fn IFNULL(month10.count_prevention_ua, 0) } AS count_prevention_ua_10, 
						{ fn IFNULL(month10.count_prevention_uc, 0) } AS count_prevention_uc_10, 
						{ fn IFNULL(month10.count_prevention_sa, 0) } AS count_prevention_sa_10,
						{ fn IFNULL(month10.count_prevention_sc, 0) } AS count_prevention_sc_10, 
						{ fn IFNULL(month10.count_supervisor_ua, 0) } AS count_supervisor_ua_10, 
						{ fn IFNULL(month10.count_supervisor_uc, 0) } AS count_supervisor_uc_10, 
						{ fn IFNULL(month10.count_supervisor_sa, 0) } AS count_supervisor_sa_10,
						{ fn IFNULL(month10.count_supervisor_sc, 0) } AS count_supervisor_sc_10, 
						{ fn IFNULL(month10.count_fit_work_ua, 0) } AS count_fit_work_ua_10, 
						{ fn IFNULL(month10.count_fit_work_uc, 0) } AS count_fit_work_uc_10, 
						{ fn IFNULL(month10.count_fit_work_sa, 0) } AS count_fit_work_sa_10,
						{ fn IFNULL(month10.count_fit_work_sc, 0) } AS count_fit_work_sc_10, 
						{ fn IFNULL(month10.count_psychological_ua, 0) } AS count_psychological_ua_10, 
						{ fn IFNULL(month10.count_psychological_uc, 0) } AS count_psychological_uc_10, 
						{ fn IFNULL(month10.count_psychological_sa, 0) } AS count_psychological_sa_10,
						{ fn IFNULL(month10.count_psychological_sc, 0) } AS count_psychological_sc_10, 
						{ fn IFNULL(month10.count_posture_ua, 0) } AS count_posture_ua_10, 
						{ fn IFNULL(month10.count_posture_uc, 0) } AS count_posture_uc_10, 
						{ fn IFNULL(month10.count_posture_sa, 0) } AS count_posture_sa_10,
						{ fn IFNULL(month10.count_posture_sc, 0) } AS count_posture_sc_10, 
						{ fn IFNULL(month10.count_substance_ua, 0) } AS count_substance_ua_10, 
						{ fn IFNULL(month10.count_substance_uc, 0) } AS count_substance_uc_10, 
						{ fn IFNULL(month10.count_substance_sa, 0) } AS count_substance_sa_10,
						{ fn IFNULL(month10.count_substance_sc, 0) } AS count_substance_sc_10, 
						{ fn IFNULL(month10.count_hygiene_ua, 0) } AS count_hygiene_ua_10, 
						{ fn IFNULL(month10.count_hygiene_uc, 0) } AS count_hygiene_uc_10, 
						{ fn IFNULL(month10.count_hygiene_sa, 0) } AS count_hygiene_sa_10,
						{ fn IFNULL(month10.count_hygiene_sc, 0) } AS count_hygiene_sc_10, 
						{ fn IFNULL(month10.count_house_ua, 0) } AS count_house_ua_10, 
						{ fn IFNULL(month10.count_house_uc, 0) } AS count_house_uc_10, 
						{ fn IFNULL(month10.count_house_sa, 0) } AS count_house_sa_10,
						{ fn IFNULL(month10.count_house_sc, 0) } AS count_house_sc_10, 
						{ fn IFNULL(month10.count_standard_ua, 0) } AS count_standard_ua_10, 
						{ fn IFNULL(month10.count_standard_uc, 0) } AS count_standard_uc_10, 
						{ fn IFNULL(month10.count_standard_sa, 0) } AS count_standard_sa_10,
						{ fn IFNULL(month10.count_standard_sc, 0) } AS count_standard_sc_10, 
						{ fn IFNULL(month10.count_spill_ua, 0) } AS count_spill_ua_10, 
						{ fn IFNULL(month10.count_spill_uc, 0) } AS count_spill_uc_10, 
						{ fn IFNULL(month10.count_spill_sa, 0) } AS count_spill_sa_10,
						{ fn IFNULL(month10.count_spill_sc, 0) } AS count_spill_sc_10, 
						{ fn IFNULL(month10.count_waste_energy_ua, 0) } AS count_waste_energy_ua_10, 
						{ fn IFNULL(month10.count_waste_energy_uc, 0) } AS count_waste_energy_uc_10, 
						{ fn IFNULL(month10.count_waste_energy_sa, 0) } AS count_waste_energy_sa_10,
						{ fn IFNULL(month10.count_waste_energy_sc, 0) } AS count_waste_energy_sc_10, 
						{ fn IFNULL(month10.count_containment_ua, 0) } AS count_containment_ua_10, 
						{ fn IFNULL(month10.count_containment_uc, 0) } AS count_containment_uc_10, 
						{ fn IFNULL(month10.count_containment_sa, 0) } AS count_containment_sa_10,
						{ fn IFNULL(month10.count_containment_sc, 0) } AS count_containment_sc_10, 
						{ fn IFNULL(month10.count_absorbent_ua, 0) } AS count_absorbent_ua_10, 
						{ fn IFNULL(month10.count_absorbent_uc, 0) } AS count_absorbent_uc_10, 
						{ fn IFNULL(month10.count_absorbent_sa, 0) } AS count_absorbent_sa_10,
						{ fn IFNULL(month10.count_absorbent_sc, 0) } AS count_absorbent_sc_10, 
						{ fn IFNULL(month10.count_hira_ua, 0) } AS count_hira_ua_10, 
						{ fn IFNULL(month10.count_hira_uc, 0) } AS count_hira_uc_10, 
						{ fn IFNULL(month10.count_hira_sa, 0) } AS count_hira_sa_10,
						{ fn IFNULL(month10.count_hira_sc, 0) } AS count_hira_sc_10, 
						{ fn IFNULL(month10.count_ptw_ua, 0) } AS count_ptw_ua_10, 
						{ fn IFNULL(month10.count_ptw_uc, 0) } AS count_ptw_uc_10, 
						{ fn IFNULL(month10.count_ptw_sa, 0) } AS count_ptw_sa_10,
						{ fn IFNULL(month10.count_ptw_sc, 0) } AS count_ptw_sc_10, 
						{ fn IFNULL(month10.count_sop_ua, 0) } AS count_sop_ua_10, 
						{ fn IFNULL(month10.count_sop_uc, 0) } AS count_sop_uc_10, 
						{ fn IFNULL(month10.count_sop_sa, 0) } AS count_sop_sa_10,
						{ fn IFNULL(month10.count_sop_sc, 0) } AS count_sop_sc_10, 
						{ fn IFNULL(month10.count_msds_ua, 0) } AS count_msds_ua_10, 
						{ fn IFNULL(month10.count_msds_uc, 0) } AS count_msds_uc_10, 
						{ fn IFNULL(month10.count_msds_sa, 0) } AS count_msds_sa_10,
						{ fn IFNULL(month10.count_msds_sc, 0) } AS count_msds_sc_10, 
						{ fn IFNULL(month10.count_emergency_ua, 0) } AS count_emergency_ua_10, 
						{ fn IFNULL(month10.count_emergency_uc, 0) } AS count_emergency_uc_10, 
						{ fn IFNULL(month10.count_emergency_sa, 0) } AS count_emergency_sa_10,
						{ fn IFNULL(month10.count_emergency_sc, 0) } AS count_emergency_sc_10, 
						{ fn IFNULL(month10.count_certificates_ua, 0) } AS count_certificates_ua_10, 
						{ fn IFNULL(month10.count_certificates_uc, 0) } AS count_certificates_uc_10, 
						{ fn IFNULL(month10.count_certificates_sa, 0) } AS count_certificates_sa_10,
						{ fn IFNULL(month10.count_certificates_sc, 0) } AS count_certificates_sc_10, 
						{ fn IFNULL(month10.count_ppe_ua, 0) } AS count_ppe_ua_10, 
						{ fn IFNULL(month10.count_ppe_uc, 0) } AS count_ppe_uc_10, 
						{ fn IFNULL(month10.count_ppe_sa, 0) } AS count_ppe_sa_10,
						{ fn IFNULL(month10.count_ppe_sc, 0) } AS count_ppe_sc_10, 
						{ fn IFNULL(month10.count_hand_ua, 0) } AS count_hand_ua_10, 
						{ fn IFNULL(month10.count_hand_uc, 0) } AS count_hand_uc_10, 
						{ fn IFNULL(month10.count_hand_sa, 0) } AS count_hand_sa_10,
						{ fn IFNULL(month10.count_hand_sc, 0) } AS count_hand_sc_10, 
						{ fn IFNULL(month10.count_mechanical_ua, 0) } AS count_mechanical_ua_10, 
						{ fn IFNULL(month10.count_mechanical_uc, 0) } AS count_mechanical_uc_10, 
						{ fn IFNULL(month10.count_mechanical_sa, 0) } AS count_mechanical_sa_10,
						{ fn IFNULL(month10.count_mechanical_sc, 0) } AS count_mechanical_sc_10, 
						{ fn IFNULL(month10.count_electrical_ua, 0) } AS count_electrical_ua_10, 
						{ fn IFNULL(month10.count_electrical_uc, 0) } AS count_electrical_uc_10, 
						{ fn IFNULL(month10.count_electrical_sa, 0) } AS count_electrical_sa_10,
						{ fn IFNULL(month10.count_electrical_sc, 0) } AS count_electrical_sc_10, 
						{ fn IFNULL(month10.count_vehicular_ua, 0) } AS count_vehicular_ua_10, 
						{ fn IFNULL(month10.count_vehicular_uc, 0) } AS count_vehicular_uc_10, 
						{ fn IFNULL(month10.count_vehicular_sa, 0) } AS count_vehicular_sa_10,
						{ fn IFNULL(month10.count_vehicular_sc, 0) } AS count_vehicular_sc_10, 
						{ fn IFNULL(month10.count_substandard_ua, 0) } AS count_substandard_ua_10, 
						{ fn IFNULL(month10.count_substandard_uc, 0) } AS count_substandard_uc_10, 
						{ fn IFNULL(month10.count_substandard_sa, 0) } AS count_substandard_sa_10,
						{ fn IFNULL(month10.count_substandard_sc, 0) } AS count_substandard_sc_10, 
						{ fn IFNULL(month10.count_h2s_ua, 0) } AS count_h2s_ua_10, 
						{ fn IFNULL(month10.count_h2s_uc, 0) } AS count_h2s_uc_10, 
						{ fn IFNULL(month10.count_h2s_sa, 0) } AS count_h2s_sa_10,
						{ fn IFNULL(month10.count_h2s_sc, 0) } AS count_h2s_sc_10, 
						{ fn IFNULL(month10.count_workplace_health_ua, 0) } AS count_workplace_health_ua_10, 
						{ fn IFNULL(month10.count_workplace_health_uc, 0) } AS count_workplace_health_uc_10, 
						{ fn IFNULL(month10.count_workplace_health_sa, 0) } AS count_workplace_health_sa_10,
						{ fn IFNULL(month10.count_workplace_health_sc, 0) } AS count_workplace_health_sc_10,
						{ fn IFNULL(month11.count_accident_ua, 0) } AS count_accident_ua_11, 
						{ fn IFNULL(month11.count_accident_uc, 0) } AS count_accident_uc_11, 
						{ fn IFNULL(month11.count_accident_sa, 0) } AS count_accident_sa_11,
						{ fn IFNULL(month11.count_accident_sc, 0) } AS count_accident_sc_11, 
						{ fn IFNULL(month11.count_fire_ua, 0) } AS count_fire_ua_11, 
						{ fn IFNULL(month11.count_fire_uc, 0) } AS count_fire_uc_11, 
						{ fn IFNULL(month11.count_fire_sa, 0) } AS count_fire_sa_11,
						{ fn IFNULL(month11.count_fire_sc, 0) } AS count_fire_sc_11, 
						{ fn IFNULL(month11.count_prevention_ua, 0) } AS count_prevention_ua_11, 
						{ fn IFNULL(month11.count_prevention_uc, 0) } AS count_prevention_uc_11, 
						{ fn IFNULL(month11.count_prevention_sa, 0) } AS count_prevention_sa_11,
						{ fn IFNULL(month11.count_prevention_sc, 0) } AS count_prevention_sc_11, 
						{ fn IFNULL(month11.count_supervisor_ua, 0) } AS count_supervisor_ua_11, 
						{ fn IFNULL(month11.count_supervisor_uc, 0) } AS count_supervisor_uc_11, 
						{ fn IFNULL(month11.count_supervisor_sa, 0) } AS count_supervisor_sa_11,
						{ fn IFNULL(month11.count_supervisor_sc, 0) } AS count_supervisor_sc_11, 
						{ fn IFNULL(month11.count_fit_work_ua, 0) } AS count_fit_work_ua_11, 
						{ fn IFNULL(month11.count_fit_work_uc, 0) } AS count_fit_work_uc_11, 
						{ fn IFNULL(month11.count_fit_work_sa, 0) } AS count_fit_work_sa_11,
						{ fn IFNULL(month11.count_fit_work_sc, 0) } AS count_fit_work_sc_11, 
						{ fn IFNULL(month11.count_psychological_ua, 0) } AS count_psychological_ua_11, 
						{ fn IFNULL(month11.count_psychological_uc, 0) } AS count_psychological_uc_11, 
						{ fn IFNULL(month11.count_psychological_sa, 0) } AS count_psychological_sa_11,
						{ fn IFNULL(month11.count_psychological_sc, 0) } AS count_psychological_sc_11, 
						{ fn IFNULL(month11.count_posture_ua, 0) } AS count_posture_ua_11, 
						{ fn IFNULL(month11.count_posture_uc, 0) } AS count_posture_uc_11, 
						{ fn IFNULL(month11.count_posture_sa, 0) } AS count_posture_sa_11,
						{ fn IFNULL(month11.count_posture_sc, 0) } AS count_posture_sc_11, 
						{ fn IFNULL(month11.count_substance_ua, 0) } AS count_substance_ua_11, 
						{ fn IFNULL(month11.count_substance_uc, 0) } AS count_substance_uc_11, 
						{ fn IFNULL(month11.count_substance_sa, 0) } AS count_substance_sa_11,
						{ fn IFNULL(month11.count_substance_sc, 0) } AS count_substance_sc_11, 
						{ fn IFNULL(month11.count_hygiene_ua, 0) } AS count_hygiene_ua_11, 
						{ fn IFNULL(month11.count_hygiene_uc, 0) } AS count_hygiene_uc_11, 
						{ fn IFNULL(month11.count_hygiene_sa, 0) } AS count_hygiene_sa_11,
						{ fn IFNULL(month11.count_hygiene_sc, 0) } AS count_hygiene_sc_11, 
						{ fn IFNULL(month11.count_house_ua, 0) } AS count_house_ua_11, 
						{ fn IFNULL(month11.count_house_uc, 0) } AS count_house_uc_11, 
						{ fn IFNULL(month11.count_house_sa, 0) } AS count_house_sa_11,
						{ fn IFNULL(month11.count_house_sc, 0) } AS count_house_sc_11, 
						{ fn IFNULL(month11.count_standard_ua, 0) } AS count_standard_ua_11, 
						{ fn IFNULL(month11.count_standard_uc, 0) } AS count_standard_uc_11, 
						{ fn IFNULL(month11.count_standard_sa, 0) } AS count_standard_sa_11,
						{ fn IFNULL(month11.count_standard_sc, 0) } AS count_standard_sc_11, 
						{ fn IFNULL(month11.count_spill_ua, 0) } AS count_spill_ua_11, 
						{ fn IFNULL(month11.count_spill_uc, 0) } AS count_spill_uc_11, 
						{ fn IFNULL(month11.count_spill_sa, 0) } AS count_spill_sa_11,
						{ fn IFNULL(month11.count_spill_sc, 0) } AS count_spill_sc_11, 
						{ fn IFNULL(month11.count_waste_energy_ua, 0) } AS count_waste_energy_ua_11, 
						{ fn IFNULL(month11.count_waste_energy_uc, 0) } AS count_waste_energy_uc_11, 
						{ fn IFNULL(month11.count_waste_energy_sa, 0) } AS count_waste_energy_sa_11,
						{ fn IFNULL(month11.count_waste_energy_sc, 0) } AS count_waste_energy_sc_11, 
						{ fn IFNULL(month11.count_containment_ua, 0) } AS count_containment_ua_11, 
						{ fn IFNULL(month11.count_containment_uc, 0) } AS count_containment_uc_11, 
						{ fn IFNULL(month11.count_containment_sa, 0) } AS count_containment_sa_11,
						{ fn IFNULL(month11.count_containment_sc, 0) } AS count_containment_sc_11, 
						{ fn IFNULL(month11.count_absorbent_ua, 0) } AS count_absorbent_ua_11, 
						{ fn IFNULL(month11.count_absorbent_uc, 0) } AS count_absorbent_uc_11, 
						{ fn IFNULL(month11.count_absorbent_sa, 0) } AS count_absorbent_sa_11,
						{ fn IFNULL(month11.count_absorbent_sc, 0) } AS count_absorbent_sc_11, 
						{ fn IFNULL(month11.count_hira_ua, 0) } AS count_hira_ua_11, 
						{ fn IFNULL(month11.count_hira_uc, 0) } AS count_hira_uc_11, 
						{ fn IFNULL(month11.count_hira_sa, 0) } AS count_hira_sa_11,
						{ fn IFNULL(month11.count_hira_sc, 0) } AS count_hira_sc_11, 
						{ fn IFNULL(month11.count_ptw_ua, 0) } AS count_ptw_ua_11, 
						{ fn IFNULL(month11.count_ptw_uc, 0) } AS count_ptw_uc_11, 
						{ fn IFNULL(month11.count_ptw_sa, 0) } AS count_ptw_sa_11,
						{ fn IFNULL(month11.count_ptw_sc, 0) } AS count_ptw_sc_11, 
						{ fn IFNULL(month11.count_sop_ua, 0) } AS count_sop_ua_11, 
						{ fn IFNULL(month11.count_sop_uc, 0) } AS count_sop_uc_11, 
						{ fn IFNULL(month11.count_sop_sa, 0) } AS count_sop_sa_11,
						{ fn IFNULL(month11.count_sop_sc, 0) } AS count_sop_sc_11, 
						{ fn IFNULL(month11.count_msds_ua, 0) } AS count_msds_ua_11, 
						{ fn IFNULL(month11.count_msds_uc, 0) } AS count_msds_uc_11, 
						{ fn IFNULL(month11.count_msds_sa, 0) } AS count_msds_sa_11,
						{ fn IFNULL(month11.count_msds_sc, 0) } AS count_msds_sc_11, 
						{ fn IFNULL(month11.count_emergency_ua, 0) } AS count_emergency_ua_11, 
						{ fn IFNULL(month11.count_emergency_uc, 0) } AS count_emergency_uc_11, 
						{ fn IFNULL(month11.count_emergency_sa, 0) } AS count_emergency_sa_11,
						{ fn IFNULL(month11.count_emergency_sc, 0) } AS count_emergency_sc_11, 
						{ fn IFNULL(month11.count_certificates_ua, 0) } AS count_certificates_ua_11, 
						{ fn IFNULL(month11.count_certificates_uc, 0) } AS count_certificates_uc_11, 
						{ fn IFNULL(month11.count_certificates_sa, 0) } AS count_certificates_sa_11,
						{ fn IFNULL(month11.count_certificates_sc, 0) } AS count_certificates_sc_11, 
						{ fn IFNULL(month11.count_ppe_ua, 0) } AS count_ppe_ua_11, 
						{ fn IFNULL(month11.count_ppe_uc, 0) } AS count_ppe_uc_11, 
						{ fn IFNULL(month11.count_ppe_sa, 0) } AS count_ppe_sa_11,
						{ fn IFNULL(month11.count_ppe_sc, 0) } AS count_ppe_sc_11, 
						{ fn IFNULL(month11.count_hand_ua, 0) } AS count_hand_ua_11, 
						{ fn IFNULL(month11.count_hand_uc, 0) } AS count_hand_uc_11, 
						{ fn IFNULL(month11.count_hand_sa, 0) } AS count_hand_sa_11,
						{ fn IFNULL(month11.count_hand_sc, 0) } AS count_hand_sc_11, 
						{ fn IFNULL(month11.count_mechanical_ua, 0) } AS count_mechanical_ua_11, 
						{ fn IFNULL(month11.count_mechanical_uc, 0) } AS count_mechanical_uc_11, 
						{ fn IFNULL(month11.count_mechanical_sa, 0) } AS count_mechanical_sa_11,
						{ fn IFNULL(month11.count_mechanical_sc, 0) } AS count_mechanical_sc_11, 
						{ fn IFNULL(month11.count_electrical_ua, 0) } AS count_electrical_ua_11, 
						{ fn IFNULL(month11.count_electrical_uc, 0) } AS count_electrical_uc_11, 
						{ fn IFNULL(month11.count_electrical_sa, 0) } AS count_electrical_sa_11,
						{ fn IFNULL(month11.count_electrical_sc, 0) } AS count_electrical_sc_11, 
						{ fn IFNULL(month11.count_vehicular_ua, 0) } AS count_vehicular_ua_11, 
						{ fn IFNULL(month11.count_vehicular_uc, 0) } AS count_vehicular_uc_11, 
						{ fn IFNULL(month11.count_vehicular_sa, 0) } AS count_vehicular_sa_11,
						{ fn IFNULL(month11.count_vehicular_sc, 0) } AS count_vehicular_sc_11, 
						{ fn IFNULL(month11.count_substandard_ua, 0) } AS count_substandard_ua_11, 
						{ fn IFNULL(month11.count_substandard_uc, 0) } AS count_substandard_uc_11, 
						{ fn IFNULL(month11.count_substandard_sa, 0) } AS count_substandard_sa_11,
						{ fn IFNULL(month11.count_substandard_sc, 0) } AS count_substandard_sc_11, 
						{ fn IFNULL(month11.count_h2s_ua, 0) } AS count_h2s_ua_11, 
						{ fn IFNULL(month11.count_h2s_uc, 0) } AS count_h2s_uc_11, 
						{ fn IFNULL(month11.count_h2s_sa, 0) } AS count_h2s_sa_11,
						{ fn IFNULL(month11.count_h2s_sc, 0) } AS count_h2s_sc_11, 
						{ fn IFNULL(month11.count_workplace_health_ua, 0) } AS count_workplace_health_ua_11, 
						{ fn IFNULL(month11.count_workplace_health_uc, 0) } AS count_workplace_health_uc_11, 
						{ fn IFNULL(month11.count_workplace_health_sa, 0) } AS count_workplace_health_sa_11,
						{ fn IFNULL(month11.count_workplace_health_sc, 0) } AS count_workplace_health_sc_11,
						{ fn IFNULL(month12.count_accident_ua, 0) } AS count_accident_ua_12, 
						{ fn IFNULL(month12.count_accident_uc, 0) } AS count_accident_uc_12, 
						{ fn IFNULL(month12.count_accident_sa, 0) } AS count_accident_sa_12,
						{ fn IFNULL(month12.count_accident_sc, 0) } AS count_accident_sc_12, 
						{ fn IFNULL(month12.count_fire_ua, 0) } AS count_fire_ua_12, 
						{ fn IFNULL(month12.count_fire_uc, 0) } AS count_fire_uc_12, 
						{ fn IFNULL(month12.count_fire_sa, 0) } AS count_fire_sa_12,
						{ fn IFNULL(month12.count_fire_sc, 0) } AS count_fire_sc_12, 
						{ fn IFNULL(month12.count_prevention_ua, 0) } AS count_prevention_ua_12, 
						{ fn IFNULL(month12.count_prevention_uc, 0) } AS count_prevention_uc_12, 
						{ fn IFNULL(month12.count_prevention_sa, 0) } AS count_prevention_sa_12,
						{ fn IFNULL(month12.count_prevention_sc, 0) } AS count_prevention_sc_12, 
						{ fn IFNULL(month12.count_supervisor_ua, 0) } AS count_supervisor_ua_12, 
						{ fn IFNULL(month12.count_supervisor_uc, 0) } AS count_supervisor_uc_12, 
						{ fn IFNULL(month12.count_supervisor_sa, 0) } AS count_supervisor_sa_12,
						{ fn IFNULL(month12.count_supervisor_sc, 0) } AS count_supervisor_sc_12, 
						{ fn IFNULL(month12.count_fit_work_ua, 0) } AS count_fit_work_ua_12, 
						{ fn IFNULL(month12.count_fit_work_uc, 0) } AS count_fit_work_uc_12, 
						{ fn IFNULL(month12.count_fit_work_sa, 0) } AS count_fit_work_sa_12,
						{ fn IFNULL(month12.count_fit_work_sc, 0) } AS count_fit_work_sc_12, 
						{ fn IFNULL(month12.count_psychological_ua, 0) } AS count_psychological_ua_12, 
						{ fn IFNULL(month12.count_psychological_uc, 0) } AS count_psychological_uc_12, 
						{ fn IFNULL(month12.count_psychological_sa, 0) } AS count_psychological_sa_12,
						{ fn IFNULL(month12.count_psychological_sc, 0) } AS count_psychological_sc_12, 
						{ fn IFNULL(month12.count_posture_ua, 0) } AS count_posture_ua_12, 
						{ fn IFNULL(month12.count_posture_uc, 0) } AS count_posture_uc_12, 
						{ fn IFNULL(month12.count_posture_sa, 0) } AS count_posture_sa_12,
						{ fn IFNULL(month12.count_posture_sc, 0) } AS count_posture_sc_12, 
						{ fn IFNULL(month12.count_substance_ua, 0) } AS count_substance_ua_12, 
						{ fn IFNULL(month12.count_substance_uc, 0) } AS count_substance_uc_12, 
						{ fn IFNULL(month12.count_substance_sa, 0) } AS count_substance_sa_12,
						{ fn IFNULL(month12.count_substance_sc, 0) } AS count_substance_sc_12, 
						{ fn IFNULL(month12.count_hygiene_ua, 0) } AS count_hygiene_ua_12, 
						{ fn IFNULL(month12.count_hygiene_uc, 0) } AS count_hygiene_uc_12, 
						{ fn IFNULL(month12.count_hygiene_sa, 0) } AS count_hygiene_sa_12,
						{ fn IFNULL(month12.count_hygiene_sc, 0) } AS count_hygiene_sc_12, 
						{ fn IFNULL(month12.count_house_ua, 0) } AS count_house_ua_12, 
						{ fn IFNULL(month12.count_house_uc, 0) } AS count_house_uc_12, 
						{ fn IFNULL(month12.count_house_sa, 0) } AS count_house_sa_12,
						{ fn IFNULL(month12.count_house_sc, 0) } AS count_house_sc_12, 
						{ fn IFNULL(month12.count_standard_ua, 0) } AS count_standard_ua_12, 
						{ fn IFNULL(month12.count_standard_uc, 0) } AS count_standard_uc_12, 
						{ fn IFNULL(month12.count_standard_sa, 0) } AS count_standard_sa_12,
						{ fn IFNULL(month12.count_standard_sc, 0) } AS count_standard_sc_12, 
						{ fn IFNULL(month12.count_spill_ua, 0) } AS count_spill_ua_12, 
						{ fn IFNULL(month12.count_spill_uc, 0) } AS count_spill_uc_12, 
						{ fn IFNULL(month12.count_spill_sa, 0) } AS count_spill_sa_12,
						{ fn IFNULL(month12.count_spill_sc, 0) } AS count_spill_sc_12, 
						{ fn IFNULL(month12.count_waste_energy_ua, 0) } AS count_waste_energy_ua_12, 
						{ fn IFNULL(month12.count_waste_energy_uc, 0) } AS count_waste_energy_uc_12, 
						{ fn IFNULL(month12.count_waste_energy_sa, 0) } AS count_waste_energy_sa_12,
						{ fn IFNULL(month12.count_waste_energy_sc, 0) } AS count_waste_energy_sc_12, 
						{ fn IFNULL(month12.count_containment_ua, 0) } AS count_containment_ua_12, 
						{ fn IFNULL(month12.count_containment_uc, 0) } AS count_containment_uc_12, 
						{ fn IFNULL(month12.count_containment_sa, 0) } AS count_containment_sa_12,
						{ fn IFNULL(month12.count_containment_sc, 0) } AS count_containment_sc_12, 
						{ fn IFNULL(month12.count_absorbent_ua, 0) } AS count_absorbent_ua_12, 
						{ fn IFNULL(month12.count_absorbent_uc, 0) } AS count_absorbent_uc_12, 
						{ fn IFNULL(month12.count_absorbent_sa, 0) } AS count_absorbent_sa_12,
						{ fn IFNULL(month12.count_absorbent_sc, 0) } AS count_absorbent_sc_12, 
						{ fn IFNULL(month12.count_hira_ua, 0) } AS count_hira_ua_12, 
						{ fn IFNULL(month12.count_hira_uc, 0) } AS count_hira_uc_12, 
						{ fn IFNULL(month12.count_hira_sa, 0) } AS count_hira_sa_12,
						{ fn IFNULL(month12.count_hira_sc, 0) } AS count_hira_sc_12, 
						{ fn IFNULL(month12.count_ptw_ua, 0) } AS count_ptw_ua_12, 
						{ fn IFNULL(month12.count_ptw_uc, 0) } AS count_ptw_uc_12, 
						{ fn IFNULL(month12.count_ptw_sa, 0) } AS count_ptw_sa_12,
						{ fn IFNULL(month12.count_ptw_sc, 0) } AS count_ptw_sc_12, 
						{ fn IFNULL(month12.count_sop_ua, 0) } AS count_sop_ua_12, 
						{ fn IFNULL(month12.count_sop_uc, 0) } AS count_sop_uc_12, 
						{ fn IFNULL(month12.count_sop_sa, 0) } AS count_sop_sa_12,
						{ fn IFNULL(month12.count_sop_sc, 0) } AS count_sop_sc_12, 
						{ fn IFNULL(month12.count_msds_ua, 0) } AS count_msds_ua_12, 
						{ fn IFNULL(month12.count_msds_uc, 0) } AS count_msds_uc_12, 
						{ fn IFNULL(month12.count_msds_sa, 0) } AS count_msds_sa_12,
						{ fn IFNULL(month12.count_msds_sc, 0) } AS count_msds_sc_12, 
						{ fn IFNULL(month12.count_emergency_ua, 0) } AS count_emergency_ua_12, 
						{ fn IFNULL(month12.count_emergency_uc, 0) } AS count_emergency_uc_12, 
						{ fn IFNULL(month12.count_emergency_sa, 0) } AS count_emergency_sa_12,
						{ fn IFNULL(month12.count_emergency_sc, 0) } AS count_emergency_sc_12, 
						{ fn IFNULL(month12.count_certificates_ua, 0) } AS count_certificates_ua_12, 
						{ fn IFNULL(month12.count_certificates_uc, 0) } AS count_certificates_uc_12, 
						{ fn IFNULL(month12.count_certificates_sa, 0) } AS count_certificates_sa_12,
						{ fn IFNULL(month12.count_certificates_sc, 0) } AS count_certificates_sc_12, 
						{ fn IFNULL(month12.count_ppe_ua, 0) } AS count_ppe_ua_12, 
						{ fn IFNULL(month12.count_ppe_uc, 0) } AS count_ppe_uc_12, 
						{ fn IFNULL(month12.count_ppe_sa, 0) } AS count_ppe_sa_12,
						{ fn IFNULL(month12.count_ppe_sc, 0) } AS count_ppe_sc_12, 
						{ fn IFNULL(month12.count_hand_ua, 0) } AS count_hand_ua_12, 
						{ fn IFNULL(month12.count_hand_uc, 0) } AS count_hand_uc_12, 
						{ fn IFNULL(month12.count_hand_sa, 0) } AS count_hand_sa_12,
						{ fn IFNULL(month12.count_hand_sc, 0) } AS count_hand_sc_12, 
						{ fn IFNULL(month12.count_mechanical_ua, 0) } AS count_mechanical_ua_12, 
						{ fn IFNULL(month12.count_mechanical_uc, 0) } AS count_mechanical_uc_12, 
						{ fn IFNULL(month12.count_mechanical_sa, 0) } AS count_mechanical_sa_12,
						{ fn IFNULL(month12.count_mechanical_sc, 0) } AS count_mechanical_sc_12, 
						{ fn IFNULL(month12.count_electrical_ua, 0) } AS count_electrical_ua_12, 
						{ fn IFNULL(month12.count_electrical_uc, 0) } AS count_electrical_uc_12, 
						{ fn IFNULL(month12.count_electrical_sa, 0) } AS count_electrical_sa_12,
						{ fn IFNULL(month12.count_electrical_sc, 0) } AS count_electrical_sc_12, 
						{ fn IFNULL(month12.count_vehicular_ua, 0) } AS count_vehicular_ua_12, 
						{ fn IFNULL(month12.count_vehicular_uc, 0) } AS count_vehicular_uc_12, 
						{ fn IFNULL(month12.count_vehicular_sa, 0) } AS count_vehicular_sa_12,
						{ fn IFNULL(month12.count_vehicular_sc, 0) } AS count_vehicular_sc_12, 
						{ fn IFNULL(month12.count_substandard_ua, 0) } AS count_substandard_ua_12, 
						{ fn IFNULL(month12.count_substandard_uc, 0) } AS count_substandard_uc_12, 
						{ fn IFNULL(month12.count_substandard_sa, 0) } AS count_substandard_sa_12,
						{ fn IFNULL(month12.count_substandard_sc, 0) } AS count_substandard_sc_12, 
						{ fn IFNULL(month12.count_h2s_ua, 0) } AS count_h2s_ua_12, 
						{ fn IFNULL(month12.count_h2s_uc, 0) } AS count_h2s_uc_12, 
						{ fn IFNULL(month12.count_h2s_sa, 0) } AS count_h2s_sa_12,
						{ fn IFNULL(month12.count_h2s_sc, 0) } AS count_h2s_sc_12, 
						{ fn IFNULL(month12.count_workplace_health_ua, 0) } AS count_workplace_health_ua_12, 
						{ fn IFNULL(month12.count_workplace_health_uc, 0) } AS count_workplace_health_uc_12, 
						{ fn IFNULL(month12.count_workplace_health_sa, 0) } AS count_workplace_health_sa_12,
						{ fn IFNULL(month12.count_workplace_health_sc, 0) } AS count_workplace_health_sc_12 
FROM (((observationByMonths(@year,'1') as month1 full join 
	observationByMonths(@year,'2') as month2 on month1.year=month2.year) full join 
	(observationByMonths(@year,'3') as month3 full join 
	observationByMonths(@year,'4') as month4 on month3.year=month4.year) on month1.year=month3.year) full join 
	((observationByMonths(@year,'5') as month5 full join 
	observationByMonths(@year,'6') as month6 on month5.year=month6.year)  full join
	(observationByMonths(@year,'7') as month7 full join
	observationByMonths(@year,'8') as month8 on month7.year=month8.year) on month5.year=month7.year) on month1.year=month5.year) full join
	((observationByMonths(@year,'9') as month9  full join
	observationByMonths(@year,'10') as month10 on month9.year=month10.year) full join
	(observationByMonths(@year,'11') as month11  full join
	observationByMonths(@year,'12') as month12 on month11.year=month12.year) on month9.year=month11.year) on month1.year=month9.year
END
GO
/****** Object:  Table [dbo].[ma]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[foc_target_paf]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[foc_paf]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[foc_paf] ([id], [id_foc], [tanggal], [measured_paf], [calculated_paf]) VALUES (16, 55, CAST(0x0000A11D00EA40D7 AS DateTime), 100, 100)
SET IDENTITY_INSERT [dbo].[foc_paf] OFF
/****** Object:  Table [dbo].[foc_op_avail]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[employee]    Script Date: 05/30/2013 09:40:16 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (15, N'11120575', N'Admin Data Master', N'ICT Technician', N'Pangalengan', NULL, CAST(0x4D360B00 AS Date), NULL, 4, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (108, N'11101275', N'Gana Prio Kusumo', N'SR. TECHNICAL ADMIN ASSISTANT', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 15, 4, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (231, N'11061137', N'Rully Wirawan Ma''moen ', N'HEAD OF COMMERCIAL AND OPERATION SUPPORT', N'Jakarta', 21, CAST(0x972C0B00 AS Date), NULL, 21, N'Rully.Wirawan@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (232, N'11061088', N'Ismail Hidayat', N'SR SUPERVISOR PRODUCTION DISPATCH', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 231, 21, N'Ismail.Hidayat@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (233, N'11041020', N'Amri Zein', N'SUPERVISOR MECHANICAL', N'Pangalengan', NULL, CAST(0x102B0B00 AS Date), 231, 21, N'Amri.Zein@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (234, N'11061060', N'Dufiroh', N'FIELD ADMIN SUPERINTENDENT', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 231, 21, N'Dufiroh@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (235, N'11061063', N'Edi Supriyadi', N'SUPERVISOR PRODUCTION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 232, 21, N'Edi.Supriady@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (236, N'11061214', N'R. Anton Purwakusumah', N'OPERATOR  PRODUCTION', N'Pangalengan', NULL, CAST(0x6B2D0B00 AS Date), 232, 21, N'Anton.Purwakusumah@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (237, N'11081255', N'Hariyanto', N'LEAD, MECHANICAL', N'Pangalengan', NULL, CAST(0x73300B00 AS Date), 233, 21, N'Hariyanto.SRL@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (238, N'11041069', N'Erwin Fajar', N'ENGINEER C&I', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 233, 21, N'Erwin.Fajar@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (239, N'11061210', N'Sugiyanto', N'SUPERVISOR, CIVIL', N'Pangalengan', NULL, CAST(0x552D0B00 AS Date), 233, 21, N'Sugiyanto@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (240, N'0000000000', N'Walda Hartanto', N'BELUM ADA', N'BELUM ADA', NULL, CAST(0x07240B00 AS Date), 231, 21, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (241, N'11061009', N'Agus Mulyadi', N'LEAD OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 235, 21, N'Agus.Mulyadi@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (242, N'11061084', N'Iman Safari', N'LEAD OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 235, 21, N'Iman.Safari@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (243, N'11061002', N'Aceng Solih', N'OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 235, 21, N'Aceng.Solih@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (244, N'11061077', N'Harry Firmansyah', N'OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 235, 21, N'Harry.Firmansyah@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (245, N'11102047', N'Dea Putri N', N'Operator Dispatcher ', N'Pangalengan', NULL, CAST(0xB9330B00 AS Date), 236, 21, N'Dea.Falah@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (246, N'11081245', N'Mahendra Kuntoaji', N'OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x0A300B00 AS Date), 236, 21, N'Mahendra.Kuntoaji@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (247, N'11061017', N'Alvin Pattie ', N'ASSISTANT OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 241, 21, N'Alvin.Pattie@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (248, N'11061099', N'Juju Sopian', N'ASSISTANT OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 241, 21, N'Juju.Sopyan@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (249, N'11061155', N'Syarifudin Zuhri', N'ASSISTANT OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 241, 21, N'Syarifudin.Zuhri@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (250, N'11061216', N'Dwi Sapto Handoko', N'OPERATOR  PRODUCTION', N'Pangalengan', NULL, CAST(0x6B2D0B00 AS Date), 242, 21, N'Dwi.Handoko@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (251, N'11081238', N'Ari Wibowo', N'OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x0A300B00 AS Date), 242, 21, N'Ari.Wibowo@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (252, N'11102054', N'Rezeki Panca Wardhana', N'OPERATOR  PRODUCTION', N'Pangalengan', NULL, CAST(0xB9330B00 AS Date), 242, 21, N'Panca.Wardhana@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (253, N'11081237', N'Agus Rustaman', N'OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x0A300B00 AS Date), 243, 21, N'Agus.Rustaman@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (254, N'11061215', N'Asep Darajat', N'OPERATOR  PRODUCTION', N'Pangalengan', NULL, CAST(0x6B2D0B00 AS Date), 243, 21, N'Asep.Daradjat@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (255, N'11102055', N'Rizal Kahfi Febrianto', N'OPERATOR  PRODUCTION', N'Pangalengan', NULL, CAST(0xB9330B00 AS Date), 243, 21, N'Rizal.Febriyanto@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (256, N'11061171', N'Yadi Muhamad', N'OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 244, 21, N'Yadi.Muhamad@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (257, N'11061048', N'Dedi Hidayat', N'OPERATOR PRODUCTION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 244, 21, N'Dedi.Hidayat@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (258, N'11102046', N'Burhanudin Harahaf AN Nawawy', N'OPERATOR  PRODUCTION', N'Pangalengan', NULL, CAST(0xB9330B00 AS Date), 244, 21, N'Burhanudin.An.Nawawy@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (259, N'11081259', N'Budi Santoso', N'LEAD MECHANICAL PGF', N'Pangalengan', NULL, CAST(0xC0300B00 AS Date), 237, 21, N'Budi.Santoso@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (261, N'11091267', N'Dedy Setiawan', N'LEAD MECHANICAL PGF', N'Pangalengan', NULL, CAST(0xBC310B00 AS Date), 237, 21, N'Dedy.Setiawan@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (262, N'0000000001', N'Khoirul', N'BELUM ADA', N'BELUM ADA', NULL, CAST(0x07240B00 AS Date), 259, 21, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (263, N'11102049', N'Galih Ramadhan', N'TECHNICIAN MECHANICAL', N'Pangalengan', NULL, CAST(0xB9330B00 AS Date), 261, 21, N'Galih.Ramadhan@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (264, N'11061131', N'Rizki Kushadi', N'SECURITY GUARD II', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 261, 21, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (265, N'11091260', N'Djoko Santoso', N'JR ENGINEER', N'Pangalengan', NULL, CAST(0xC4320B00 AS Date), 238, 21, N'Djoko.Santoso@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (266, N'11091262', N'Zakaria Zamrudioko S', N'JR ENGINEER', N'Pangalengan', NULL, CAST(0xC4320B00 AS Date), 238, 21, N'Zakaria.Sumantoro@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (267, N'11051190', N'Yusmianto', N'TECHNICIAN  INSTRUMENT', N'Pangalengan', NULL, CAST(0x132C0B00 AS Date), 238, 21, N'Yusmianto@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (268, N'11102053', N'Muhamad Syarif Ramdani', N'TECHNICIAN MECHANICAL', N'Pangalengan', NULL, CAST(0xB9330B00 AS Date), 239, 21, N'Syarif.Ramdani@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (269, N'11081244', N'Leo Cristian Sitanggang', N'TECHNICIAN C&I', N'Pangalengan', NULL, CAST(0x0A300B00 AS Date), 267, 21, N'Leo.Sitanggang@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (270, N'11061168', N'Wawan Ridwan Wahyu', N'TECHNICIAN  MECHANICAL', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 268, 21, N'Wawan.RW@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (271, N'11042014', N'Dwi Budiman', N'TECHNICIAN ELECTRICAL', N'Pangalengan', NULL, CAST(0x0A300B00 AS Date), 268, 21, N'Dwi.Budiman@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (272, N'11102045', N'Ayu Triananda', N'TECHNICIAN MECHANICAL', N'Pangalengan', NULL, CAST(0xB9330B00 AS Date), 268, 21, N'Ayu.Triananda@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (273, N'11061082', N'Imam Budianto ', N'CRANE OPERATOR ', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 268, 21, N'Imam.Budianto@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (274, N'11061126', N'Rachmat Syahmadi', N'TOOL KEEPER ', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 268, 21, N'Rachmat.Syahmadi@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (275, N'11061160', N'Tommy Alex Kawulur', N'TOOL KEEPER ', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 268, 21, N'Tommy.Kawulur@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (276, N'11061003', N'Ade Ahmad', N'SECURITY COMMANDER', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 234, 21, N'Ade.Ahmad.Security@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (277, N'11061141', N'Sandriana Tadjoeddin', N'SUPERVISOR ADMINISTRATION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 234, 21, N'Sandriana.Tadjoeddin@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (278, N'11051188', N'Saiful Hidayat', N'SAFETY ASSISTANT', N'Pangalengan', NULL, CAST(0xB32B0B00 AS Date), 240, 21, N'Saiful.Hidayat@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (279, N'11081227', N'Muhamad Rizky', N'JR. ENVIRONMENT OFFICER', N'Pangalengan', NULL, CAST(0x9A2F0B00 AS Date), 240, 21, N'Muhamad.Rizky@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (280, N'11061113', N'Mohamad Setiawan', N'DISPATCHER TRANSPORTATION', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 276, 21, N'Mochammad.Setiawan@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (281, N'11061161', N'Trisna Gunadi', N'GS ADMIN ASSISTANT ', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 276, 21, N'Trisna.Gunadi@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (282, N'11061079', N'Helga Handarawati', N'HR GENERALIST ASSISTANT ', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 276, 21, N'Helga.Handarawati@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (283, N'11061115', N'Nasir', N'JR SCHEDULER', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 277, 21, N'Nasir@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (284, N'11061072', N'Ferial Anwar', N'ADMINISTRATOR  CONTRACT', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 277, 21, N'Ferial.Anwar@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (285, N'11102048', N'Dewi Malasari', N'Field admin', N'Pangalengan', NULL, CAST(0xB9330B00 AS Date), 284, 21, N'Dewi.Malasari@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (286, N'11061154', N'Suroso', N'ADMIN ASSISTANT ', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 284, 21, N'Suroso@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (287, N'0000000000002', N'Vacant', N'BELUM ADA', N'BELUM ADA', 22, CAST(0x07240B00 AS Date), NULL, 22, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (288, N'11061136', N'Rully Subakat', N'PLANNER ', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 287, 22, N'Rully.Subakat@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (289, N'11061030', N'Aswin Hilmansjah', N'SUPERINTENDENT OPERATION SUPPORT', N'Jakarta', NULL, CAST(0x5D330B00 AS Date), 287, 22, N'Aswin.Hilmansjah@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (290, N'000000000003', N'Henny K', N'BELUM ADA', N'BELUM ADA', NULL, CAST(0x07240B00 AS Date), 287, 22, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (291, N'0000000000000004', N'Denny K', N'BELUM ADA', N'BELUM ADA', NULL, CAST(0x07240B00 AS Date), 288, 22, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (292, N'11110497', N'Rachma Nilamsuri', N'Technical Support Subsurface', N'Jakarta', NULL, CAST(0x13340B00 AS Date), 289, 22, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (293, N'11081228', N'Liza Setiawan', N'ANALYST COST CONTROL', N'Jakarta', NULL, CAST(0xC72C0B00 AS Date), 290, 22, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (294, N'11050288', N'Meyni Endang Susilowati', N'ASSISTANT ADMINISTRATIVE', N'Jakarta', NULL, CAST(0x0F2D0B00 AS Date), 292, 22, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (295, N'11101280', N'Erika Esyaniartha', N'Analyst Cost Controller', N'Jakarta', NULL, CAST(0x5D330B00 AS Date), 293, 22, N'a@a.com')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (296, N'11051180', N'Reni Hardianti Fauzi', N'ADMIN ASSISTANT ', N'Pangalengan', NULL, CAST(0x652B0B00 AS Date), 293, 22, N'Reni.HFauzi@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (297, N'11061165', N'Wahyu Mulyana', N'MAINTENANCE SUPERINTENDENT', N'Pangalengan', 23, CAST(0x972C0B00 AS Date), NULL, 23, N'Wahyu.Mulyana@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (298, N'11061059', N'Djamaludin Kurniadi', N'ENGINEER  MECHANICAL ', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 297, 23, N'Djamaludin.Kurniadi@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (299, N'11061108', N'Lukman Indrawan Idat', N'LEAD, MECHANICAL', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 297, 23, N'Lukman.Indrawan@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (300, N'11051181', N'Ahmad luthfi', N'SUPERVISOR E&I', N'Pangalengan', NULL, CAST(0x652B0B00 AS Date), 297, 23, N'Ahmad.Lutfi@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (301, N'11051197', N'Suteja', N'DRAFTSMAN ', N'Pangalengan', NULL, CAST(0x782C0B00 AS Date), 298, 23, N'Suteja@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (302, N'11051195', N'Bambang Sapto Dewo', N'CERTIFICATION COORDINATOR ', N'Pangalengan', NULL, CAST(0x782C0B00 AS Date), 299, 23, N'Bambang.Sapto@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (303, N'11061107', N'Lokman Sihaloho', N'LEAD, ELECTRICAL', N'Pangalengan', NULL, CAST(0x972C0B00 AS Date), 299, 23, N'Lokman.Sihaloho@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (304, N'11120534', N'Fajar Hartanto', N'LEAD CIVIL', N'Pangalengan', NULL, CAST(0x26350B00 AS Date), 299, 23, N'Fajar.Hartanto@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (305, N'11040240', N'Reza Alfisyahr A', N'JR ENGINEER', N'Pangalengan', NULL, CAST(0xFC290B00 AS Date), 299, 23, N'Reza.Arsyad@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (306, N'11100477', N'Willis Wirawan', N'Mechanical Integrity Engineer', N'Pangalengan', NULL, CAST(0xD2360B00 AS Date), 300, 23, N'Wilis.Wirawan@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (307, N'11081258', N'Zahid Achwato', N'JR OPERATOR DISPATCHER', N'Pangalengan', NULL, CAST(0xC8300B00 AS Date), 300, 23, N'Zahid.Achwato@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (308, N'11081242', N'Intan Komalasari', N'TECHNICIAN DCS', N'Pangalengan', NULL, CAST(0x0A300B00 AS Date), 305, 23, N'Intan.Komalasari@StarEnergy')
INSERT [dbo].[employee] ([id], [employee_no], [alpha_name], [position], [work_location], [employee_dept], [dob], [employee_boss], [dept_id], [email]) VALUES (309, N'11102051', N'Joni Hendra Tarigan', N'TECHNICIAN MECHANICAL', N'Pangalengan', NULL, CAST(0xB9330B00 AS Date), 306, 23, N'Joni.Tarigan@StarEnergy')
SET IDENTITY_INSERT [dbo].[employee] OFF
/****** Object:  Table [dbo].[rca_csf_conector]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (49, 63, 1)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (1058, NULL, 1)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (1067, 3089, 2)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (1068, 3089, 3)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (1069, 3090, 1)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (1070, 3091, 1)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (1071, 3093, 2)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (1072, 3095, 3)
SET IDENTITY_INSERT [dbo].[rca_csf_conector] OFF
/****** Object:  Table [dbo].[units]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (43, 55, N'CO', 0, 0)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (44, 55, N'SF', 0, 0)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (45, 55, N'U1', 0, 0)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (46, 55, N'U2', 0, 0)
SET IDENTITY_INSERT [dbo].[units] OFF
/****** Object:  Table [dbo].[rca_team_connector]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (92, N'yosef', 63)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (93, N'yosef3', 63)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (94, N'yosef2', 63)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (3128, N'adminrca', 3089)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (3129, N'adminrcapir', 3089)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (3130, N'adminrca', 3090)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (3131, N'adminrcapir', 3090)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (3132, N'adminrca', 3093)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (3133, N'adminrcapir', 3093)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (3134, N'ahmad luthfi', 3095)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (3135, N'admindm', 3095)
SET IDENTITY_INSERT [dbo].[rca_team_connector] OFF
/****** Object:  Table [dbo].[rca_implementation]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_implementation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[next_action] [varchar](255) NULL,
	[pic] [int] NULL,
	[due_date] [date] NULL,
	[is_complete] [tinyint] NULL,
	[id_rca] [int] NULL,
	[complete_date] [date] NULL,
	[dampak] [tinyint] NULL,
	[usaha] [tinyint] NULL,
 CONSTRAINT [PK_rca_implementation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[unit_paf]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[systems]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (34, 43, N'BP', N'BP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (35, 43, N'UT', N'UT', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (36, 43, N'EL', N'EL', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (37, 44, N'BL', N'BL', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (38, 44, N'CL', N'CL', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (39, 44, N'SL', N'SL', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (40, 44, N'SB', N'SB', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (41, 44, N'SS', N'SS', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (42, 44, N'WL', N'WL', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[systems] OFF
/****** Object:  Table [dbo].[users]    Script Date: 05/30/2013 09:40:16 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_users] UNIQUE NONCLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'admindi', NULL, N'4607ed4bd8140e9664875f907f48ae14', NULL, NULL, NULL, 247)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'admindm', NULL, N'4607ed4bd8140e9664875f907f48ae14', NULL, NULL, NULL, 15)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'adminshe', NULL, N'4607ed4bd8140e9664875f907f48ae14', NULL, NULL, NULL, 231)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'ahmad luthfi', NULL, N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 300)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'amri zein', NULL, N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 233)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'dufiroh', NULL, N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 234)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'ismail hidayat', NULL, N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 232)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'saiful hidayat', NULL, N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 278)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role], [employee_id]) VALUES (N'wahyu mulyana', NULL, N'202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 297)
/****** Object:  Table [dbo].[user_per_role]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_per_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_user_per_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[user_per_role] ON
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (58, N'adminshe', 6)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (59, N'amri zein', 7)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (60, N'dufiroh', 7)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (61, N'wahyu mulyana', 7)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (62, N'admindi', 1)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (63, N'ismail hidayat', 7)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (72, N'admindm', 0)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (73, N'admindm', 2)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (74, N'admindm', 3)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (75, N'admindm', 4)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (76, N'admindm', 5)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (77, N'admindm', 6)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (78, N'admindm', 7)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (79, N'admindm', 8)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (80, N'ahmad luthfi', 2)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (81, N'ahmad luthfi', 7)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (82, N'saiful hidayat', 6)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (83, N'saiful hidayat', 7)
SET IDENTITY_INSERT [dbo].[user_per_role] OFF
/****** Object:  Table [dbo].[system_paf]    Script Date: 05/30/2013 09:40:16 ******/
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
/****** Object:  Table [dbo].[equipment_groups]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (122, 34, N'CHE')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (123, 34, N'CAS')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (124, 34, N'LOT')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (125, 34, N'PDS')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (126, 34, N'BDW')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (127, 34, N'WTS')
SET IDENTITY_INSERT [dbo].[equipment_groups] OFF
/****** Object:  Table [dbo].[equipments]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (673, 122, N'0-CFV001', N'NaOH INLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 31, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (674, 122, N'0-CFV-003A', N'P-112A INLET VALVE ', NULL, N'', 0, 0, 0, 0, 0, 1, 0, 0, 72, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (675, 122, N'0-CFV-003B', N'P-112B INLET VALVE ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (676, 122, N'0-CFV-004A', N'P-112A CHECK VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 30, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (677, 122, N'0-CFV-004B', N'P-112B CHECK VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 30, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (678, 122, N'0-CFV-005A', N'P-112A OUTLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 30, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (679, 122, N'0-CFV-005B', N'P-112B OUTLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 31, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (680, 122, N'0-CFV-007A', N'T-101  DRAIN VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 31, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (681, 122, N'0-CFV-007B', N'T-102  DRAIN VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 31, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (682, 122, N'0-CFV-008', N'SERVICE WATER INLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 2096878, N'MH', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 22, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (683, 122, N'0-CFV-010', N'P-114A INLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 45, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (684, 122, N'0-CFV-011', N'P-114A RELIEF VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 31, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (685, 122, N'0-CFV-012', N'P-114A CHECK VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (686, 122, N'0-CFV-013', N'P-114A IOUTLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 45, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (687, 122, N'0-CFV-014', N'P-114B INLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 11404976, N'MH', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 23, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (688, 122, N'0-CFV-015', N'P-114B RELIEF VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 9782500, N'MH', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 23, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (689, 122, N'0-CFV-016', N'P-114B CHECK VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 9782500, N'MH', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 23, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (690, 122, N'0-CFV-017', N'P-114B IOUTLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 23, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (691, 122, N'0-CFV-018', N'PUMP INLET VALVE FOR UNIT 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 24, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (692, 122, N'0-CFV-019', N'PUMP OUTLET VALVE FOR UNIT 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'H', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 24, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (693, 122, N'0-CFV-020', N'BLOCK VALVE FOR UNIT 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 9782500, N'H', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 23, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (694, 122, N'0-CFV-021', N'T-101 OUTLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 25, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (695, 122, N'0-CFV-022', N'T-102 INLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 46, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (696, 122, N'0-CFV-502', N'P-114A/B SAMPLING VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 47, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (697, 122, N'0-CFV503', N'CHEMICAL DOSING DIKE BRAIN VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 24, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (698, 122, N'0-CFV504A', N'P-112A DISCHARGE PIPE DRAIN VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 24, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (699, 122, N'0-CFV504B', N'P-112B DISCHARGE PIPE DRAIN VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (700, 122, N'0-CFV-025', N'P-114C CHECK VALVE
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (701, 122, N'0-CFV-026
', N'P-114C DISCHARGE VALVE
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (702, 122, N'AG-101', N'AGITATOR FOR NAOH DILUSION TANK WITH MOTOR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (703, 122, N'T-101', N'CONCENTRATED NaOH TANK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 30, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (704, 122, N'T-102', N'NaOH DILUTION TANK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869278, N'MH', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (705, 122, N'PUMP SET, 112A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869278, N'MH', CAST(0x0000882100000000 AS DateTime), CAST(0x0000882100000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000882100000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (706, 122, N'PUMP SET, 112B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869284, N'MH', CAST(0x000090B100000000 AS DateTime), CAST(0x000090B100000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x000090B100000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (707, 122, N'PUMP SET, 114A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869290, N'MH', CAST(0x0000994000000000 AS DateTime), CAST(0x0000994000000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000994000000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (708, 122, N'PUMP SET, 114B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869298, N'MH', CAST(0x0000A33D00000000 AS DateTime), CAST(0x0000A33D00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000A33D00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (709, 122, N'PUMP SET, 114C', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869304, N'MH', CAST(0x0000ABCD00000000 AS DateTime), CAST(0x0000ABCD00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000ABCD00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (710, 122, N'0-CFV-024', N'P-114C RELIEF VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869310, N'MH', CAST(0x0000B45C00000000 AS DateTime), CAST(0x0000B45C00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000B45C00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (711, 122, N'A0-FS-1950', N'EXTRACTION POINT WATER FLOW LOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869310, N'MH', CAST(0x0000B5C900000000 AS DateTime), CAST(0x0000B5C900000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000B5C900000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (712, 122, N'A1-TE-1610', N'NaOH DILUTION TANK TEMP.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869312, N'MH', CAST(0x0000B73700000000 AS DateTime), CAST(0x0000B73700000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000B73700000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (713, 122, N'A0-LIT-1600', N'CONDENSTRATE NaOH TANK LEVEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869312, N'MH', CAST(0x0000B8A400000000 AS DateTime), CAST(0x0000B8A400000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000B8A400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (714, 122, N'A0-LIT-1610', N'NaOH DILUTION TANK LEVEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869314, N'MH', CAST(0x0000BA1100000000 AS DateTime), CAST(0x0000BA1100000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000BA1100000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (715, 122, N'CF205', N'CF205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869314, N'MH', CAST(0x0000BB7E00000000 AS DateTime), CAST(0x0000BB7E00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000BB7E00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (716, 122, N'CF202', N'CF202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869316, N'MH', CAST(0x0000BCEC00000000 AS DateTime), CAST(0x0000BCEC00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000BCEC00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (717, 122, N'CF207
', N'NAOH INJECTION PIPE FOR NO.2 UNIT AREA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869316, N'MH', CAST(0x0000BE5900000000 AS DateTime), CAST(0x0000BE5900000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000BE5900000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (718, 122, N'CF203', N'CF203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869318, N'MH', CAST(0x0000BFC600000000 AS DateTime), CAST(0x0000BFC600000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000BFC600000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (719, 122, N'CF206
', N'CONNECTION PIPE OF NAOH INJECTION PUMPS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869318, N'MH', CAST(0x0000C13300000000 AS DateTime), CAST(0x0000C13300000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000C13300000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (720, 122, N'CF204', N'CF204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869320, N'MH', CAST(0x0000C2A100000000 AS DateTime), CAST(0x0000C2A100000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000C2A100000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (721, 122, N'CF201', N'CF201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869322, N'MH', CAST(0x0000C57B00000000 AS DateTime), CAST(0x0000C57B00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000C57B00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (722, 122, N'CF001', N'CF001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869326, N'MH', CAST(0x0000CB3000000000 AS DateTime), CAST(0x0000CB3000000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000CB3000000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (723, 122, N'CF002', N'CF002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869326, N'MH', CAST(0x0000CC9D00000000 AS DateTime), CAST(0x0000CC9D00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000CC9D00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (724, 122, N'CF003', N'CF003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869328, N'MH', CAST(0x0000CE0B00000000 AS DateTime), CAST(0x0000CE0B00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000CE0B00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (725, 122, N'CF010', N'CF010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869328, N'MH', CAST(0x0000CF7800000000 AS DateTime), CAST(0x0000CF7800000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000CF7800000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[equipments] OFF
/****** Object:  Table [dbo].[equipment_readiness_nav]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (666, 673, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (667, 674, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (668, 675, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (669, 676, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (670, 677, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (671, 678, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (672, 679, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (673, 680, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (674, 681, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (675, 682, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (676, 683, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (677, 684, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (678, 685, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (679, 686, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (680, 687, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (681, 688, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (682, 689, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (683, 690, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (684, 691, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (685, 692, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (686, 693, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (687, 694, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (688, 695, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (689, 696, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (690, 697, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (691, 698, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (692, 699, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (693, 700, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (694, 701, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (695, 702, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (696, 703, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (697, 704, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (698, 705, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (699, 706, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (700, 707, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (701, 708, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (702, 709, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (703, 710, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (704, 711, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (705, 712, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (706, 713, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (707, 714, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (708, 715, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (709, 716, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (710, 717, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (711, 718, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (712, 719, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (713, 720, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (714, 721, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (715, 722, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (716, 723, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (717, 724, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (718, 725, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
SET IDENTITY_INSERT [dbo].[equipment_readiness_nav] OFF
/****** Object:  Table [dbo].[equipment_part]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (36, 705, 8, 0, 0, 1, 0, CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (37, 705, 9, 0, 0, 1, 0, CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[equipment_part] OFF
/****** Object:  Table [dbo].[equipment_paf]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18334, 673, CAST(0x0000A11D00F18407 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18335, 674, CAST(0x0000A11D00F18432 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18336, 675, CAST(0x0000A11D00F18445 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18337, 676, CAST(0x0000A11D00F18459 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18338, 677, CAST(0x0000A11D00F1846D AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18339, 678, CAST(0x0000A11D00F18482 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18340, 679, CAST(0x0000A11D00F18495 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18341, 680, CAST(0x0000A11D00F184A7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18342, 681, CAST(0x0000A11D00F184BA AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18343, 682, CAST(0x0000A11D00F184F1 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18344, 683, CAST(0x0000A11D00F18507 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18345, 684, CAST(0x0000A11D00F1851D AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18346, 685, CAST(0x0000A11D00F18530 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18347, 686, CAST(0x0000A11D00F1854D AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18348, 687, CAST(0x0000A11D00F18567 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18349, 688, CAST(0x0000A11D00F1857D AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18350, 689, CAST(0x0000A11D00F18593 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18351, 690, CAST(0x0000A11D00F185A7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18352, 691, CAST(0x0000A11D00F185BE AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18353, 692, CAST(0x0000A11D00F185D5 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18354, 693, CAST(0x0000A11D00F185F6 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18355, 694, CAST(0x0000A11D00F1860B AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18356, 695, CAST(0x0000A11D00F18623 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18357, 696, CAST(0x0000A11D00F18638 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18358, 697, CAST(0x0000A11D00F18652 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18359, 698, CAST(0x0000A11D00F1866B AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18360, 699, CAST(0x0000A11D00F186A0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18361, 700, CAST(0x0000A11D00F186D4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18362, 701, CAST(0x0000A11D00F186EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18363, 702, CAST(0x0000A11D00F18704 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18364, 703, CAST(0x0000A11D00F1871F AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18365, 704, CAST(0x0000A11D00F18738 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18366, 705, CAST(0x0000A11D00F18751 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18367, 706, CAST(0x0000A11D00F1876F AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18368, 707, CAST(0x0000A11D00F18789 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18369, 708, CAST(0x0000A11D00F187A3 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18370, 709, CAST(0x0000A11D00F187C2 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18371, 710, CAST(0x0000A11D00F187DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18372, 711, CAST(0x0000A11D00F187F7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18373, 712, CAST(0x0000A11D00F18816 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18374, 713, CAST(0x0000A11D00F18830 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18375, 714, CAST(0x0000A11D00F1884E AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18376, 715, CAST(0x0000A11D00F1886A AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18377, 716, CAST(0x0000A11D00F18885 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18378, 717, CAST(0x0000A11D00F188A3 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18379, 718, CAST(0x0000A11D00F188BF AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18380, 719, CAST(0x0000A11D00F188E0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18381, 720, CAST(0x0000A11D00F188FD AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18382, 721, CAST(0x0000A11D00F18933 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18383, 722, CAST(0x0000A11D00F1897C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18384, 723, CAST(0x0000A11D00F1899A AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18385, 724, CAST(0x0000A11D00F189B7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18386, 725, CAST(0x0000A11D00F189D7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18387, 674, CAST(0x0000A11F01610958 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18388, 674, CAST(0x0000A1AA00F0F8AC AS DateTime), 100, 100)
SET IDENTITY_INSERT [dbo].[equipment_paf] OFF
/****** Object:  Table [dbo].[equipment_event]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (713, 673, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (714, 674, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (715, 675, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (716, 676, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (717, 677, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (718, 678, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (719, 679, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (720, 680, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (721, 681, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (722, 682, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (723, 683, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (724, 684, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (725, 685, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (726, 686, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (727, 687, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (728, 688, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (729, 689, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (730, 690, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (731, 691, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (732, 692, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (733, 693, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (734, 694, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (735, 695, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (736, 696, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (737, 697, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (738, 698, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (739, 699, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (740, 700, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (741, 701, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (742, 702, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (743, 703, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (744, 704, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (745, 705, NULL, CAST(0x0000882100000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (746, 706, NULL, CAST(0x000090B100000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (747, 707, NULL, CAST(0x0000994000000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (748, 708, NULL, CAST(0x0000A33D00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (749, 709, NULL, CAST(0x0000ABCD00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (750, 710, NULL, CAST(0x0000B45C00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (751, 711, NULL, CAST(0x0000B5C900000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (752, 712, NULL, CAST(0x0000B73700000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (753, 713, NULL, CAST(0x0000B8A400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (754, 714, NULL, CAST(0x0000BA1100000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (755, 715, NULL, CAST(0x0000BB7E00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (756, 716, NULL, CAST(0x0000BCEC00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (757, 717, NULL, CAST(0x0000BE5900000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (758, 718, NULL, CAST(0x0000BFC600000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (759, 719, NULL, CAST(0x0000C13300000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (760, 720, NULL, CAST(0x0000C2A100000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (761, 721, NULL, CAST(0x0000C57B00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (762, 722, NULL, CAST(0x0000CB3000000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (763, 723, NULL, CAST(0x0000CC9D00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (764, 724, NULL, CAST(0x0000CE0B00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (765, 725, NULL, CAST(0x0000CF7800000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (766, 674, CAST(0x00009E6000000000 AS DateTime), CAST(0x00009E6300000000 AS DateTime), 72, 72, N'External leakage (process), Fails to pump', NULL, NULL, NULL, N'CATASTROPHIC', N'PRIMARY', N'Replace Bearing', N'asdf, qwe', NULL, NULL, NULL, N'Pressure Drop', NULL, 1)
SET IDENTITY_INSERT [dbo].[equipment_event] OFF
/****** Object:  Table [dbo].[equipment_daily_report_table]    Script Date: 05/30/2013 09:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[equipment_daily_report_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment_daily_report] [int] NULL,
	[id_equipment] [int] NULL,
	[min_limit] [varchar](20) NULL,
	[max_limit] [varchar](20) NULL,
	[unit] [varchar](20) NULL,
	[tag_value] [varchar](50) NULL,
	[time] [varchar](10) NULL,
	[name_operator] [varchar](255) NULL,
	[keterangan] [varchar](255) NULL,
	[barcode] [varchar](10) NULL,
 CONSTRAINT [PK_equipment_daily_report_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[equipment_daily_report_table] ON
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (1, 1, 673, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (2, 1, 674, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (3, 1, 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (4, 1, 676, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (5, 1, 677, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (6, 1, 678, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (7, 1, 679, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (8, 1, 680, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (9, 1, 681, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (10, 1, 682, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (11, 1, 683, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (12, 1, 684, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (13, 1, 685, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (14, 1, 686, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (15, 1, 687, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (16, 1, 688, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (17, 1, 689, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (18, 1, 690, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (19, 1, 691, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (20, 1, 692, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (21, 1, 693, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (22, 1, 694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (23, 1, 695, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (24, 1, 696, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (25, 1, 697, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (26, 1, 698, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (27, 1, 699, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (28, 1, 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (29, 1, 701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (30, 1, 702, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (31, 1, 703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (32, 1, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (33, 1, 705, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (34, 1, 706, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (35, 1, 707, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (36, 1, 708, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (37, 1, 709, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (38, 1, 710, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (39, 1, 711, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (40, 1, 712, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (41, 1, 713, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (42, 1, 714, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (43, 1, 715, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (44, 1, 716, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (45, 1, 717, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (46, 1, 718, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (47, 1, 719, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (48, 1, 720, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (49, 1, 721, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (50, 1, 722, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (51, 1, 723, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (52, 1, 724, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (53, 1, 725, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (107, 3, 673, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (108, 3, 674, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (109, 3, 675, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (110, 3, 676, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (111, 3, 677, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (112, 3, 678, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (113, 3, 679, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (114, 3, 680, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (115, 3, 681, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (116, 3, 682, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (117, 3, 683, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (118, 3, 684, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (119, 3, 685, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (120, 3, 686, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (121, 3, 687, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (122, 3, 688, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (123, 3, 689, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (124, 3, 690, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (125, 3, 691, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (126, 3, 692, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (127, 3, 693, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (128, 3, 694, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (129, 3, 695, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (130, 3, 696, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (131, 3, 697, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (132, 3, 698, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (133, 3, 699, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (134, 3, 700, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (135, 3, 701, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (136, 3, 702, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (137, 3, 703, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (138, 3, 704, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (139, 3, 705, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (140, 3, 706, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (141, 3, 707, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (142, 3, 708, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (143, 3, 709, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (144, 3, 710, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (145, 3, 711, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (146, 3, 712, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (147, 3, 713, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (148, 3, 714, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (149, 3, 715, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (150, 3, 716, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (151, 3, 717, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (152, 3, 718, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (153, 3, 719, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (154, 3, 720, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (155, 3, 721, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (156, 3, 722, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (157, 3, 723, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (158, 3, 724, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
INSERT [dbo].[equipment_daily_report_table] ([id], [id_equipment_daily_report], [id_equipment], [min_limit], [max_limit], [unit], [tag_value], [time], [name_operator], [keterangan], [barcode]) VALUES (159, 3, 725, NULL, NULL, NULL, NULL, NULL, N'Ismail Hidayat', NULL, NULL)
SET IDENTITY_INSERT [dbo].[equipment_daily_report_table] OFF
/****** Object:  Table [dbo].[part_unit_event]    Script Date: 05/30/2013 09:40:16 ******/
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
INSERT [dbo].[part_unit_event] ([id], [id_equipment_part], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (18, 36, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[part_unit_event] ([id], [id_equipment_part], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (19, 37, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[part_unit_event] OFF
/****** Object:  Default [DF_equipment_event_durasi]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_durasi]  DEFAULT ((0)) FOR [durasi]
GO
/****** Object:  Default [DF_equipment_event_downtime]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_downtime]  DEFAULT ((0)) FOR [downtime]
GO
/****** Object:  Default [DF_equipment_event_est_cost]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_est_cost]  DEFAULT ((0)) FOR [financial_cost]
GO
/****** Object:  Default [DF_equipment_event_actual_cost]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_actual_cost]  DEFAULT ((0)) FOR [repair_cost]
GO
/****** Object:  Default [DF_equipment_event_status]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_equipment_paf_avail_calculated]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_paf] ADD  CONSTRAINT [DF_equipment_paf_avail_calculated]  DEFAULT ((100)) FOR [avail_calculated]
GO
/****** Object:  Default [DF_equipment_paf_avail_measured]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_paf] ADD  CONSTRAINT [DF_equipment_paf_avail_measured]  DEFAULT ((100)) FOR [avail_measured]
GO
/****** Object:  Default [DF_equipment_part_mtbf]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_part] ADD  CONSTRAINT [DF_equipment_part_mtbf]  DEFAULT ((0)) FOR [mtbf]
GO
/****** Object:  Default [DF_equipment_part_mttr]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_part] ADD  CONSTRAINT [DF_equipment_part_mttr]  DEFAULT ((0)) FOR [mttr]
GO
/****** Object:  Default [DF_equipment_part_lead_time]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_part] ADD  CONSTRAINT [DF_equipment_part_lead_time]  DEFAULT ((0)) FOR [lead_time]
GO
/****** Object:  Default [DF_equipment_readiness_nav_operation]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_operation]  DEFAULT ((100)) FOR [operation]
GO
/****** Object:  Default [DF_equipment_readiness_nav_boc]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_boc]  DEFAULT ((100)) FOR [boc]
GO
/****** Object:  Default [DF_equipment_readiness_nav_bec]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_bec]  DEFAULT ((100)) FOR [bec]
GO
/****** Object:  Default [DF_equipment_readiness_nav_monitoring]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_monitoring]  DEFAULT ((100)) FOR [monitoring]
GO
/****** Object:  Default [DF_equipment_readiness_nav_performance]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_performance]  DEFAULT ((100)) FOR [performance]
GO
/****** Object:  Default [DF_equipment_readiness_nav_cm_program]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_cm_program]  DEFAULT ((100)) FOR [cm_program]
GO
/****** Object:  Default [DF_equipment_readiness_nav_maintenance]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_maintenance]  DEFAULT ((100)) FOR [maintenance]
GO
/****** Object:  Default [DF_equipment_readiness_nav_pm_program]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_pm_program]  DEFAULT ((100)) FOR [pm_program]
GO
/****** Object:  Default [DF_equipment_readiness_nav_overhaul]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_overhaul]  DEFAULT ((100)) FOR [overhaul]
GO
/****** Object:  Default [DF_equipment_readiness_nav_spares]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_spares]  DEFAULT ((100)) FOR [spares]
GO
/****** Object:  Default [DF_equipment_readiness_nav_lifecycle_spare]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_lifecycle_spare]  DEFAULT ((100)) FOR [lifecycle_spare]
GO
/****** Object:  Default [DF_equipment_readiness_nav_main_act_spare]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_main_act_spare]  DEFAULT ((100)) FOR [main_act_spare]
GO
/****** Object:  Default [DF_equipment_readiness_nav_safe_operation]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_safe_operation]  DEFAULT ((100)) FOR [safe_operation]
GO
/****** Object:  Default [DF_equipment_readiness_nav_safeguard]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_safeguard]  DEFAULT ((100)) FOR [safeguard]
GO
/****** Object:  Default [DF_equipment_readiness_nav_accesories]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_accesories]  DEFAULT ((100)) FOR [accesories]
GO
/****** Object:  Default [DF_equipment_readiness_nav_score]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_score]  DEFAULT ((100)) FOR [score]
GO
/****** Object:  Default [DF_equipment_readiness_nav_capacity]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_capacity]  DEFAULT ((100)) FOR [capacity]
GO
/****** Object:  Default [DF_equipment_readiness_nav_quality]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_quality]  DEFAULT ((100)) FOR [quality]
GO
/****** Object:  Default [DF_equipment_readiness_nav_sertifikasi]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_sertifikasi]  DEFAULT ((100)) FOR [sertifikasi]
GO
/****** Object:  Default [DF_rm_equipment_tetha]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_tetha]  DEFAULT ((0)) FOR [tetha]
GO
/****** Object:  Default [DF_rm_equipment_beta]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_beta]  DEFAULT ((0)) FOR [beta]
GO
/****** Object:  Default [DF_rm_equipment_mtbf]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_mtbf]  DEFAULT ((0)) FOR [mtbf]
GO
/****** Object:  Default [DF_rm_equipment_mttr]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_mttr]  DEFAULT ((0)) FOR [mttr]
GO
/****** Object:  Default [DF_rm_equipment_mdt]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_mdt]  DEFAULT ((0)) FOR [mdt]
GO
/****** Object:  Default [DF_rm_equipment_status]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_status]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF_rm_equipment_econ]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_econ]  DEFAULT ((0)) FOR [econ]
GO
/****** Object:  Default [DF_rm_equipment_status_read_nav]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_status_read_nav]  DEFAULT ((0)) FOR [status_read_nav]
GO
/****** Object:  Default [DF_foc_op_avail_op_avail]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[foc_op_avail] ADD  CONSTRAINT [DF_foc_op_avail_op_avail]  DEFAULT ((100)) FOR [op_avail]
GO
/****** Object:  Default [DF_foc_op_avail_selisih]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[foc_op_avail] ADD  CONSTRAINT [DF_foc_op_avail_selisih]  DEFAULT ((0)) FOR [selisih]
GO
/****** Object:  Default [DF_foc_paf_measured_paf]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[foc_paf] ADD  CONSTRAINT [DF_foc_paf_measured_paf]  DEFAULT ((100)) FOR [measured_paf]
GO
/****** Object:  Default [DF_foc_paf_calculated_paf]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[foc_paf] ADD  CONSTRAINT [DF_foc_paf_calculated_paf]  DEFAULT ((100)) FOR [calculated_paf]
GO
/****** Object:  Default [DF_masd_tadd_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_tadd_1]  DEFAULT ((0)) FOR [tadd]
GO
/****** Object:  Default [DF_masd_tadt_hours_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_tadt_hours_1]  DEFAULT ((0)) FOR [tadt_hours]
GO
/****** Object:  Default [DF_masd_ta_interval_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_ta_interval_1]  DEFAULT ((0)) FOR [ta_interval]
GO
/****** Object:  Default [DF_masd_ntamdd_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_ntamdd_1]  DEFAULT ((0)) FOR [ntamdd]
GO
/****** Object:  Default [DF_masd_study_year_ntamd_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_study_year_ntamd_1]  DEFAULT ((0)) FOR [study_year_ntamd]
GO
/****** Object:  Default [DF_masd_prior_year_ntamd_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_prior_year_ntamd_1]  DEFAULT ((0)) FOR [prior_year_ntamd]
GO
/****** Object:  Default [DF_masd_ntamsd_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_ntamsd_1]  DEFAULT ((0)) FOR [ntamsd]
GO
/****** Object:  Default [DF_masd_study_year_ms_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_study_year_ms_1]  DEFAULT ((0)) FOR [study_year_ms]
GO
/****** Object:  Default [DF_masd_prior_year_ms_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_prior_year_ms_1]  DEFAULT ((0)) FOR [prior_year_ms]
GO
/****** Object:  Default [DF_masd_days_in_study_year_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_days_in_study_year_1]  DEFAULT ((0)) FOR [days_in_study_year]
GO
/****** Object:  Default [DF_masd_last_update_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_last_update_1]  DEFAULT (((2010)-(1))-(1)) FOR [last_update]
GO
/****** Object:  Default [DF_masd_category]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_category]  DEFAULT ((0)) FOR [category]
GO
/****** Object:  Default [DF_masd_type]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_type]  DEFAULT ((0)) FOR [type]
GO
/****** Object:  Default [DF_part_unit_event_durasi_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_durasi_1]  DEFAULT ((0)) FOR [durasi]
GO
/****** Object:  Default [DF_part_unit_event_downtime_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_downtime_1]  DEFAULT ((0)) FOR [downtime]
GO
/****** Object:  Default [DF_part_unit_event_financial_cost]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_financial_cost]  DEFAULT ((0)) FOR [financial_cost]
GO
/****** Object:  Default [DF_part_unit_event_repair_cost]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_repair_cost]  DEFAULT ((0)) FOR [repair_cost]
GO
/****** Object:  Default [DF_part_unit_event_status_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_status_1]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_rm_part_unit_assurance_level]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[parts] ADD  CONSTRAINT [DF_rm_part_unit_assurance_level]  DEFAULT ((0)) FOR [assurance_level]
GO
/****** Object:  Default [DF_system_paf_measured_paf]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[system_paf] ADD  CONSTRAINT [DF_system_paf_measured_paf]  DEFAULT ((100)) FOR [measured_paf]
GO
/****** Object:  Default [DF_system_paf_calculated_paf]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[system_paf] ADD  CONSTRAINT [DF_system_paf_calculated_paf]  DEFAULT ((100)) FOR [calculated_paf]
GO
/****** Object:  Default [DF_rm_system_cons_econ]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_econ]  DEFAULT ((0)) FOR [cons_econ]
GO
/****** Object:  Default [DF_rm_system_cons_hs]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_hs]  DEFAULT ((0)) FOR [cons_hs]
GO
/****** Object:  Default [DF_rm_system_cons_env]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_env]  DEFAULT ((0)) FOR [cons_env]
GO
/****** Object:  Default [DF_rm_system_cons_total]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_total]  DEFAULT ((0)) FOR [cons_total]
GO
/****** Object:  Default [DF_rm_system_likelihood]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_likelihood]  DEFAULT ((0)) FOR [likelihood]
GO
/****** Object:  Default [DF_rm_system_h]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_h]  DEFAULT ((0)) FOR [h]
GO
/****** Object:  Default [DF_rm_system_e]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_e]  DEFAULT ((0)) FOR [e]
GO
/****** Object:  Default [DF_rm_system_econ]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_econ]  DEFAULT ((0)) FOR [econ]
GO
/****** Object:  Default [DF_rm_system_ram_crit_1]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_ram_crit_1]  DEFAULT ((0)) FOR [ram_crit_1]
GO
/****** Object:  Default [DF_rm_system_prob]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_prob]  DEFAULT ((0)) FOR [prob]
GO
/****** Object:  Default [DF_rm_system_ram_crit_2]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_ram_crit_2]  DEFAULT ((0)) FOR [ram_crit_2]
GO
/****** Object:  Default [DF_rm_system_ram_crit_3]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_ram_crit_3]  DEFAULT ((0)) FOR [ram_crit_3]
GO
/****** Object:  Default [DF_unit_paf_measured_paf]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[unit_paf] ADD  CONSTRAINT [DF_unit_paf_measured_paf]  DEFAULT ((100)) FOR [measured_paf]
GO
/****** Object:  Default [DF_unit_paf_calculated_paf]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[unit_paf] ADD  CONSTRAINT [DF_unit_paf_calculated_paf]  DEFAULT ((100)) FOR [calculated_paf]
GO
/****** Object:  Default [DF_rm_unit_ma]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[units] ADD  CONSTRAINT [DF_rm_unit_ma]  DEFAULT ((0)) FOR [ma]
GO
/****** Object:  Default [DF_rm_unit_masd]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[units] ADD  CONSTRAINT [DF_rm_unit_masd]  DEFAULT ((0)) FOR [masd]
GO
/****** Object:  Default [DF__Users__CreateDat__66603565]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__Users__CreateDat__66603565]  DEFAULT (CONVERT([datetime],CONVERT([varchar],getdate(),(1)),(1))) FOR [create_date]
GO
/****** Object:  Default [DF_Users_rm_role]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_Users_rm_role]  DEFAULT ((0)) FOR [rm_role]
GO
/****** Object:  ForeignKey [FK_daily_log_last_plant_status_daily_log]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[daily_log_last_plant_status]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_last_plant_status_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_last_plant_status] CHECK CONSTRAINT [FK_daily_log_last_plant_status_daily_log]
GO
/****** Object:  ForeignKey [FK_daily_log_maintainence_daily_log]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[daily_log_maintainence]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_maintainence_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_maintainence] CHECK CONSTRAINT [FK_daily_log_maintainence_daily_log]
GO
/****** Object:  ForeignKey [FK_daily_log_power_stations_daily_log]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[daily_log_power_stations]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_power_stations_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_power_stations] CHECK CONSTRAINT [FK_daily_log_power_stations_daily_log]
GO
/****** Object:  ForeignKey [FK_daily_log_pro_daily_log]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[daily_log_pro]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_pro_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_pro] CHECK CONSTRAINT [FK_daily_log_pro_daily_log]
GO
/****** Object:  ForeignKey [FK_daily_log_sags_daily_log]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[daily_log_sags]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_sags_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_sags] CHECK CONSTRAINT [FK_daily_log_sags_daily_log]
GO
/****** Object:  ForeignKey [FK_daily_log_sap_daily_log]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[daily_log_sap]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_sap_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_sap] CHECK CONSTRAINT [FK_daily_log_sap_daily_log]
GO
/****** Object:  ForeignKey [FK_employee_employee]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_employee] FOREIGN KEY([employee_boss])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_employee]
GO
/****** Object:  ForeignKey [FK_employee_employee_dept]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_employee_dept] FOREIGN KEY([employee_dept])
REFERENCES [dbo].[employee_dept] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_employee_dept]
GO
/****** Object:  ForeignKey [FK_employee_dept_plants]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[employee_dept]  WITH CHECK ADD  CONSTRAINT [FK_employee_dept_plants] FOREIGN KEY([plant_id])
REFERENCES [dbo].[plants] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[employee_dept] CHECK CONSTRAINT [FK_employee_dept_plants]
GO
/****** Object:  ForeignKey [FK_equipment_daily_report_table_equipment_daily_report]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_daily_report_table]  WITH CHECK ADD  CONSTRAINT [FK_equipment_daily_report_table_equipment_daily_report] FOREIGN KEY([id_equipment_daily_report])
REFERENCES [dbo].[equipment_daily_report] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_daily_report_table] CHECK CONSTRAINT [FK_equipment_daily_report_table_equipment_daily_report]
GO
/****** Object:  ForeignKey [FK_equipment_daily_report_table_equipments]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_daily_report_table]  WITH CHECK ADD  CONSTRAINT [FK_equipment_daily_report_table_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_daily_report_table] CHECK CONSTRAINT [FK_equipment_daily_report_table_equipments]
GO
/****** Object:  ForeignKey [FK_equipment_event_equipments]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_event]  WITH CHECK ADD  CONSTRAINT [FK_equipment_event_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_event] CHECK CONSTRAINT [FK_equipment_event_equipments]
GO
/****** Object:  ForeignKey [FK_rm_equipment_group_rm_system]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_groups]  WITH CHECK ADD  CONSTRAINT [FK_rm_equipment_group_rm_system] FOREIGN KEY([id_system])
REFERENCES [dbo].[systems] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_groups] CHECK CONSTRAINT [FK_rm_equipment_group_rm_system]
GO
/****** Object:  ForeignKey [FK_equipment_paf_equipments]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_paf]  WITH CHECK ADD  CONSTRAINT [FK_equipment_paf_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_paf] CHECK CONSTRAINT [FK_equipment_paf_equipments]
GO
/****** Object:  ForeignKey [FK_equipment_part_equipments]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_part]  WITH CHECK ADD  CONSTRAINT [FK_equipment_part_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_part] CHECK CONSTRAINT [FK_equipment_part_equipments]
GO
/****** Object:  ForeignKey [FK_equipment_part_parts]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_part]  WITH CHECK ADD  CONSTRAINT [FK_equipment_part_parts] FOREIGN KEY([id_parts])
REFERENCES [dbo].[parts] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_part] CHECK CONSTRAINT [FK_equipment_part_parts]
GO
/****** Object:  ForeignKey [FK_equipment_readiness_nav_equipments]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipment_readiness_nav]  WITH CHECK ADD  CONSTRAINT [FK_equipment_readiness_nav_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_readiness_nav] CHECK CONSTRAINT [FK_equipment_readiness_nav_equipments]
GO
/****** Object:  ForeignKey [FK_equipments_disciplines]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipments]  WITH CHECK ADD  CONSTRAINT [FK_equipments_disciplines] FOREIGN KEY([id_discipline])
REFERENCES [dbo].[disciplines] ([id])
GO
ALTER TABLE [dbo].[equipments] CHECK CONSTRAINT [FK_equipments_disciplines]
GO
/****** Object:  ForeignKey [FK_equipments_equipment_groups]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipments]  WITH CHECK ADD  CONSTRAINT [FK_equipments_equipment_groups] FOREIGN KEY([id_equipment_group])
REFERENCES [dbo].[equipment_groups] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipments] CHECK CONSTRAINT [FK_equipments_equipment_groups]
GO
/****** Object:  ForeignKey [FK_equipments_tag_types]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[equipments]  WITH CHECK ADD  CONSTRAINT [FK_equipments_tag_types] FOREIGN KEY([id_tag_type])
REFERENCES [dbo].[tag_types] ([id])
GO
ALTER TABLE [dbo].[equipments] CHECK CONSTRAINT [FK_equipments_tag_types]
GO
/****** Object:  ForeignKey [FK_failure_modes_tag_types]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[failure_modes]  WITH CHECK ADD  CONSTRAINT [FK_failure_modes_tag_types] FOREIGN KEY([id_tag_type])
REFERENCES [dbo].[tag_types] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[failure_modes] CHECK CONSTRAINT [FK_failure_modes_tag_types]
GO
/****** Object:  ForeignKey [FK_foc_op_avail_focs]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[foc_op_avail]  WITH CHECK ADD  CONSTRAINT [FK_foc_op_avail_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[foc_op_avail] CHECK CONSTRAINT [FK_foc_op_avail_focs]
GO
/****** Object:  ForeignKey [FK_foc_paf_focs]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[foc_paf]  WITH CHECK ADD  CONSTRAINT [FK_foc_paf_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[foc_paf] CHECK CONSTRAINT [FK_foc_paf_focs]
GO
/****** Object:  ForeignKey [FK_foc_target_paf_focs]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[foc_target_paf]  WITH CHECK ADD  CONSTRAINT [FK_foc_target_paf_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[foc_target_paf] CHECK CONSTRAINT [FK_foc_target_paf_focs]
GO
/****** Object:  ForeignKey [FK_focs_plants]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[focs]  WITH CHECK ADD  CONSTRAINT [FK_focs_plants] FOREIGN KEY([plant_id])
REFERENCES [dbo].[plants] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[focs] CHECK CONSTRAINT [FK_focs_plants]
GO
/****** Object:  ForeignKey [FK_iir_recommendations_investigation_report]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[iir_recommendations]  WITH CHECK ADD  CONSTRAINT [FK_iir_recommendations_investigation_report] FOREIGN KEY([id_iir])
REFERENCES [dbo].[investigation_report] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[iir_recommendations] CHECK CONSTRAINT [FK_iir_recommendations_investigation_report]
GO
/****** Object:  ForeignKey [FK_iir_recommendations_pir]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[iir_recommendations]  WITH CHECK ADD  CONSTRAINT [FK_iir_recommendations_pir] FOREIGN KEY([pir_number])
REFERENCES [dbo].[pir] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[iir_recommendations] CHECK CONSTRAINT [FK_iir_recommendations_pir]
GO
/****** Object:  ForeignKey [FK_masd_focs]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[ma]  WITH CHECK ADD  CONSTRAINT [FK_masd_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ma] CHECK CONSTRAINT [FK_masd_focs]
GO
/****** Object:  ForeignKey [FK_part_unit_event_equipment_part]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[part_unit_event]  WITH CHECK ADD  CONSTRAINT [FK_part_unit_event_equipment_part] FOREIGN KEY([id_equipment_part])
REFERENCES [dbo].[equipment_part] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[part_unit_event] CHECK CONSTRAINT [FK_part_unit_event_equipment_part]
GO
/****** Object:  ForeignKey [FK_pir_log_pir]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[pir_log]  WITH CHECK ADD  CONSTRAINT [FK_pir_log_pir] FOREIGN KEY([id_pir])
REFERENCES [dbo].[pir] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[pir_log] CHECK CONSTRAINT [FK_pir_log_pir]
GO
/****** Object:  ForeignKey [FK_rca_pir]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_pir] FOREIGN KEY([id_pir])
REFERENCES [dbo].[pir] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_pir]
GO
/****** Object:  ForeignKey [FK_rca_rca_analisys_type]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_analisys_type] FOREIGN KEY([id_type])
REFERENCES [dbo].[rca_analisys_type] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_analisys_type]
GO
/****** Object:  ForeignKey [FK_rca_rca_building]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_building] FOREIGN KEY([id_building])
REFERENCES [dbo].[rca_building] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_building]
GO
/****** Object:  ForeignKey [FK_rca_rca_department]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_department] FOREIGN KEY([id_department])
REFERENCES [dbo].[rca_department] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_department]
GO
/****** Object:  ForeignKey [FK_rca_rca_facility]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_facility] FOREIGN KEY([id_facility])
REFERENCES [dbo].[rca_facility] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_facility]
GO
/****** Object:  ForeignKey [FK_rca_rca_floor]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_floor] FOREIGN KEY([id_floor])
REFERENCES [dbo].[rca_floor] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_floor]
GO
/****** Object:  ForeignKey [FK_rca_csf_conector_rca]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[rca_csf_conector]  WITH CHECK ADD  CONSTRAINT [FK_rca_csf_conector_rca] FOREIGN KEY([id_rca])
REFERENCES [dbo].[rca] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca_csf_conector] CHECK CONSTRAINT [FK_rca_csf_conector_rca]
GO
/****** Object:  ForeignKey [FK_rca_division_rca_facility]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[rca_division]  WITH CHECK ADD  CONSTRAINT [FK_rca_division_rca_facility] FOREIGN KEY([id_facility])
REFERENCES [dbo].[rca_facility] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca_division] CHECK CONSTRAINT [FK_rca_division_rca_facility]
GO
/****** Object:  ForeignKey [FK_rca_implementation_employee]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[rca_implementation]  WITH CHECK ADD  CONSTRAINT [FK_rca_implementation_employee] FOREIGN KEY([pic])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[rca_implementation] CHECK CONSTRAINT [FK_rca_implementation_employee]
GO
/****** Object:  ForeignKey [FK_rca_team_connector_rca]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[rca_team_connector]  WITH CHECK ADD  CONSTRAINT [FK_rca_team_connector_rca] FOREIGN KEY([id_rca])
REFERENCES [dbo].[rca] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca_team_connector] CHECK CONSTRAINT [FK_rca_team_connector_rca]
GO
/****** Object:  ForeignKey [FK_system_paf_systems]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[system_paf]  WITH CHECK ADD  CONSTRAINT [FK_system_paf_systems] FOREIGN KEY([id_system])
REFERENCES [dbo].[systems] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[system_paf] CHECK CONSTRAINT [FK_system_paf_systems]
GO
/****** Object:  ForeignKey [FK_rm_system_rm_unit]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[systems]  WITH CHECK ADD  CONSTRAINT [FK_rm_system_rm_unit] FOREIGN KEY([id_unit])
REFERENCES [dbo].[units] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[systems] CHECK CONSTRAINT [FK_rm_system_rm_unit]
GO
/****** Object:  ForeignKey [FK_unit_paf_units]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[unit_paf]  WITH CHECK ADD  CONSTRAINT [FK_unit_paf_units] FOREIGN KEY([id_unit])
REFERENCES [dbo].[units] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[unit_paf] CHECK CONSTRAINT [FK_unit_paf_units]
GO
/****** Object:  ForeignKey [FK_rm_unit_rm_foc]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[units]  WITH CHECK ADD  CONSTRAINT [FK_rm_unit_rm_foc] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[units] CHECK CONSTRAINT [FK_rm_unit_rm_foc]
GO
/****** Object:  ForeignKey [FK_user_per_role_users]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[user_per_role]  WITH CHECK ADD  CONSTRAINT [FK_user_per_role_users] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_per_role] CHECK CONSTRAINT [FK_user_per_role_users]
GO
/****** Object:  ForeignKey [FK_users_employee]    Script Date: 05/30/2013 09:40:16 ******/
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_employee]
GO
