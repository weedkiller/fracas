USE [star_energy_geo]
GO
/****** Object:  Table [dbo].[iir_recommendations]    Script Date: 1/8/2013 10:22:20 AM ******/
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
	[pir_number] [varchar](255) NULL,
	[completion_date] [date] NULL,
 CONSTRAINT [PK_iir_recommendations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[incident_report]    Script Date: 1/8/2013 10:22:22 AM ******/
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
 CONSTRAINT [PK_incident_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[investigation_report]    Script Date: 1/8/2013 10:22:22 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[rca]    Script Date: 1/8/2013 10:22:22 AM ******/
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
 CONSTRAINT [PK_rca] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[iir_recommendations] ON 

INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date]) VALUES (4, 9, N'rekomendasi 3', N'septu', NULL, CAST(0x8A360B00 AS Date))
INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date]) VALUES (5, 9, N'asdf', N'coba', NULL, CAST(0x8A360B00 AS Date))
INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date]) VALUES (1010, 1009, N'sdfsggf', N'aan3', NULL, CAST(0x8B360B00 AS Date))
INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date]) VALUES (1011, 1009, N'rtertyyt', N'aan2', N'12', CAST(0x8B360B00 AS Date))
INSERT [dbo].[iir_recommendations] ([id], [id_iir], [description], [PIC], [pir_number], [completion_date]) VALUES (1012, 1009, N'asfsdsfsdf', N'qqq', NULL, CAST(0x8B360B00 AS Date))
SET IDENTITY_INSERT [dbo].[iir_recommendations] OFF
SET IDENTITY_INSERT [dbo].[incident_report] ON 

INSERT [dbo].[incident_report] ([id], [facility], [incident_location], [reference_number], [type_of_report], [date_incident], [title], [incident_type], [actual_loss_severity], [potential_loss_severity], [probability], [factual_information], [cost_estimate], [immediate_action], [prepared_by], [ack_supervisor], [prepare_date], [ack_date], [superintendent], [loss_control], [field_manager], [doms], [superintendent_date], [loss_date], [field_manager_date], [doms_date], [investigation], [investigation_req], [id_iir]) VALUES (2, N'asd', N'qwe', N'zxc', 1, CAST(0x0000A12F00FBDC90 AS DateTime), N'asd', N'External Relation', 1, 1, 1, N'asd', N'zxc', N'qwe', N'aan', N'aan', CAST(0x8A360B00 AS Date), CAST(0x8A360B00 AS Date), N'aan', N'aan', N'aan', N'aan', CAST(0x8A360B00 AS Date), CAST(0x8A360B00 AS Date), CAST(0x8A360B00 AS Date), CAST(0x8A360B00 AS Date), 1, N'septu', 1009)
INSERT [dbo].[incident_report] ([id], [facility], [incident_location], [reference_number], [type_of_report], [date_incident], [title], [incident_type], [actual_loss_severity], [potential_loss_severity], [probability], [factual_information], [cost_estimate], [immediate_action], [prepared_by], [ack_supervisor], [prepare_date], [ack_date], [superintendent], [loss_control], [field_manager], [doms], [superintendent_date], [loss_date], [field_manager_date], [doms_date], [investigation], [investigation_req], [id_iir]) VALUES (3, N'unit 1', N'lokasi 1', N'asd1234qwe', 0, CAST(0x0000A12F01731030 AS DateTime), N'judul 1', N'Environmental Loss', 2, 2, 2, N'informasi 1
informasi 2
informasi 3', N'testing', N'aksi 1
aksi 2
aksi 3', N'aan2', N'apa', CAST(0x8A360B00 AS Date), CAST(0x8A360B00 AS Date), N'aan2', N'aan2', N'coba', N'coba', CAST(0x8A360B00 AS Date), CAST(0x8A360B00 AS Date), CAST(0x8A360B00 AS Date), CAST(0x8A360B00 AS Date), 1, N'septu', 9)
INSERT [dbo].[incident_report] ([id], [facility], [incident_location], [reference_number], [type_of_report], [date_incident], [title], [incident_type], [actual_loss_severity], [potential_loss_severity], [probability], [factual_information], [cost_estimate], [immediate_action], [prepared_by], [ack_supervisor], [prepare_date], [ack_date], [superintendent], [loss_control], [field_manager], [doms], [superintendent_date], [loss_date], [field_manager_date], [doms_date], [investigation], [investigation_req], [id_iir]) VALUES (4, N'unit 2', N'lokasi 2', N'aaaa1234', 1, CAST(0x0000A13200FCF5D0 AS DateTime), N'judul 2', N'Process Loss / Disturb', 2, 2, 1, N'qwerty', N'cost 1', N'testing implementasi 1
testing implementasi 2', N'septu', N'septu', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), N'coba', N'septu', N'aan2', N'coba', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), 1, N'coba', NULL)
INSERT [dbo].[incident_report] ([id], [facility], [incident_location], [reference_number], [type_of_report], [date_incident], [title], [incident_type], [actual_loss_severity], [potential_loss_severity], [probability], [factual_information], [cost_estimate], [immediate_action], [prepared_by], [ack_supervisor], [prepare_date], [ack_date], [superintendent], [loss_control], [field_manager], [doms], [superintendent_date], [loss_date], [field_manager_date], [doms_date], [investigation], [investigation_req], [id_iir]) VALUES (1004, N'unit 3', N'lokasi 3', N'qwe0987er', 0, CAST(0x0000A12B016740C0 AS DateTime), N'judul 3', N'Testing 1', 2, 3, 4, N'informasi 1
informasi 2
informasi 3', N'cost 1', N'testing saja', N'septu', N'coba', CAST(0x91360B00 AS Date), CAST(0x91360B00 AS Date), N'tes', N'apa', N'apa', N'septu', CAST(0x91360B00 AS Date), CAST(0x91360B00 AS Date), CAST(0x91360B00 AS Date), CAST(0x91360B00 AS Date), 1, N'coba', NULL)
SET IDENTITY_INSERT [dbo].[incident_report] OFF
SET IDENTITY_INSERT [dbo].[investigation_report] ON 

INSERT [dbo].[investigation_report] ([id], [facility], [title], [reference_number], [date_incident], [incident_location], [incident_type], [actual_loss], [potential_loss], [probability], [factual_information], [immediate_action], [immediate_causes], [basic_causes], [additional_observation], [cost_estimate], [investigator], [investigator_date], [loss_control], [loss_control_date], [field_manager], [field_manager_date]) VALUES (6, N'asd', N'asd', N'zxc', CAST(0x0000A12F00FBDC90 AS DateTime), N'qwe', N'External Relation', N'Major', N'Major', N'Frequent', N'asd', N'qwe', N'qwe', N'qwe', N'qwe', NULL, N'septu', CAST(0x8A360B00 AS Date), N'septu', CAST(0x8A360B00 AS Date), N'septu', CAST(0x8A360B00 AS Date))
INSERT [dbo].[investigation_report] ([id], [facility], [title], [reference_number], [date_incident], [incident_location], [incident_type], [actual_loss], [potential_loss], [probability], [factual_information], [immediate_action], [immediate_causes], [basic_causes], [additional_observation], [cost_estimate], [investigator], [investigator_date], [loss_control], [loss_control_date], [field_manager], [field_manager_date]) VALUES (7, N'asd', N'asd', N'zxc', CAST(0x0000A12F00FBDC90 AS DateTime), N'qwe', N'External Relation', N'Major', N'Major', N'Frequent', N'asd', N'qwe', N'qwer', N'qwer', N'qwer', NULL, N'septu', CAST(0x8A360B00 AS Date), N'septu', CAST(0x8A360B00 AS Date), N'septu', CAST(0x8A360B00 AS Date))
INSERT [dbo].[investigation_report] ([id], [facility], [title], [reference_number], [date_incident], [incident_location], [incident_type], [actual_loss], [potential_loss], [probability], [factual_information], [immediate_action], [immediate_causes], [basic_causes], [additional_observation], [cost_estimate], [investigator], [investigator_date], [loss_control], [loss_control_date], [field_manager], [field_manager_date]) VALUES (9, N'unit 1', N'judul 1', N'asd1234qwe', CAST(0x0000A12F01731030 AS DateTime), N'lokasi 1', N'Environmental Loss', N'Serious', N'Serious', N'Occasional', N'informasi 1
informasi 2
informasi 3', N'aksi 1
aksi 2
aksi 3', N'immediate 1
immediate 2
immediate 3', N'basic 1
basic 2
basic 3', N'observation 1
observation 2
observation 3', NULL, N'septu', CAST(0x8A360B00 AS Date), N'septu', CAST(0x8A360B00 AS Date), N'septu', CAST(0x8A360B00 AS Date))
INSERT [dbo].[investigation_report] ([id], [facility], [title], [reference_number], [date_incident], [incident_location], [incident_type], [actual_loss], [potential_loss], [probability], [factual_information], [immediate_action], [immediate_causes], [basic_causes], [additional_observation], [cost_estimate], [investigator], [investigator_date], [loss_control], [loss_control_date], [field_manager], [field_manager_date]) VALUES (1009, N'asd', N'asd', N'zxc', CAST(0x0000A12F00FBDC90 AS DateTime), N'qwe', N'External Relation', N'Major', N'Major', N'Frequent', N'asd', N'qwe', N'asdasasfd', N'zxczxvz', N'zxczxczx', N'zxc', N'tess', CAST(0x88360B00 AS Date), N'www', CAST(0x7F360B00 AS Date), N'apa', CAST(0x8B360B00 AS Date))
SET IDENTITY_INSERT [dbo].[investigation_report] OFF
SET IDENTITY_INSERT [dbo].[rca] ON 

INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (3034, N'asda', N'adsasda', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A0ED00000000 AS DateTime), CAST(0x0000A0F600000000 AS DateTime), 0, N'analysis3034.xml', NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (6061, N'abc', N'abca', 1, N'1000', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 9065, NULL, NULL, 0, N'analysis6061.xml', NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (6065, N'', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 4063, CAST(0x0000A0F400000000 AS DateTime), NULL, 1, N'analysis6065.xml', NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (8066, N'a', N'a', 1, N'234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'analysis8066.xml', NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (9061, N'', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (9064, N'Mencoba', N'mencoba kembali untuk testing                       
                ', 1, N'200', 1, 1, 10, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 3073, CAST(0x0000A0F500000000 AS DateTime), NULL, 0, N'analysis9064.xml', NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (9067, N'', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A10800000000 AS DateTime), NULL, 1, NULL, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (10061, N'asd', N'a', 2, N'1', 3, 4, 13, NULL, NULL, N'24', 30, 3, N'1', N'1', NULL, N'adadasd', N'afsafasf', 9061, CAST(0x0000A11100000000 AS DateTime), NULL, 1, NULL, N'15-E-111B', 1, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (10062, N'acd', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 9063, CAST(0x0000A10900000000 AS DateTime), NULL, 0, N'analysis10062.xml', NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (10065, N'asd', N'dad', 1, N'0', 1, 1, 10, NULL, NULL, N'1', 25, 3, N'', N'', NULL, N'', N'', 9069, CAST(0x0000A10900000000 AS DateTime), NULL, 1, N'analysis10065.xml', N'18-A-203', 1, 1, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (11065, N'qwe', N'qwe', 3, N'0', 3, 4, 13, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 9071, CAST(0x0000A11100000000 AS DateTime), NULL, 1, NULL, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (11066, N'Mencoba', N'mencoba kembali untuk testing                       
                ', 1, N'200', 1, 1, 10, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 3073, CAST(0x0000A0F500000000 AS DateTime), NULL, 1, N'analysis11066.xml', NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (14074, N'analisis 10', N'deskripsi 1', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', 22, 2, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A13200000000 AS DateTime), NULL, 0, N'analysis14074.xml', N'C-8-01B', 0, NULL, 0, 2, 1004)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (15074, N'nama 1', N'deskripsi 1
deskripsi 2
deskripsi 3', 2, N'12', 2, 3, 9, NULL, NULL, N'104', 22, 2, N'asd', N'cxz', NULL, N'asdg', N'gfsd', 11068, CAST(0x0000A13800000000 AS DateTime), NULL, 0, N'analysis15074.xml', N'C-3-02A', 1, NULL, 1, 2, 4)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (16076, N'analysis 120', N'deskripsi asas', 3, N'34', 3, 4, 14, NULL, NULL, N'12', 23, 2, N'ee', N'rt', NULL, N'asdfghjkl', N'qwertyuiop', 12071, CAST(0x0000A15700000000 AS DateTime), NULL, 0, NULL, N'ET-3-02G', 1, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[rca] OFF
ALTER TABLE [dbo].[iir_recommendations]  WITH CHECK ADD  CONSTRAINT [FK_iir_recommendations_investigation_report] FOREIGN KEY([id_iir])
REFERENCES [dbo].[investigation_report] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[iir_recommendations] CHECK CONSTRAINT [FK_iir_recommendations_investigation_report]
GO
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_analisys_type] FOREIGN KEY([id_type])
REFERENCES [dbo].[rca_analisys_type] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_analisys_type]
GO
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_building] FOREIGN KEY([id_building])
REFERENCES [dbo].[rca_building] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_building]
GO
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_department] FOREIGN KEY([id_department])
REFERENCES [dbo].[rca_department] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_department]
GO
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_facility] FOREIGN KEY([id_facility])
REFERENCES [dbo].[rca_facility] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_facility]
GO
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_floor] FOREIGN KEY([id_floor])
REFERENCES [dbo].[rca_floor] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_floor]
GO
