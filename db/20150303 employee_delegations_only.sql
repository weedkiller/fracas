USE [star_energy_geo_prod]
GO
/****** Object:  Table [dbo].[employee_delegations]    Script Date: 3/3/2015 3:50:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_delegations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_employee] [int] NULL,
	[date_start] [date] NULL,
	[date_end] [date] NULL,
	[is_active] [bit] NULL,
	[id_delegate] [int] NULL,
 CONSTRAINT [PK_employee_delegations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[employee_delegations] ON 

GO
INSERT [dbo].[employee_delegations] ([id], [id_employee], [date_start], [date_end], [is_active], [id_delegate]) VALUES (1, 278, CAST(0xAA390B00 AS Date), CAST(0xAB390B00 AS Date), 0, NULL)
GO
INSERT [dbo].[employee_delegations] ([id], [id_employee], [date_start], [date_end], [is_active], [id_delegate]) VALUES (2, 240, CAST(0xAA390B00 AS Date), CAST(0xAA390B00 AS Date), 0, 278)
GO
INSERT [dbo].[employee_delegations] ([id], [id_employee], [date_start], [date_end], [is_active], [id_delegate]) VALUES (3, 233, CAST(0xAA390B00 AS Date), CAST(0xAA390B00 AS Date), 0, NULL)
GO
INSERT [dbo].[employee_delegations] ([id], [id_employee], [date_start], [date_end], [is_active], [id_delegate]) VALUES (4, 233, CAST(0xAA390B00 AS Date), CAST(0xAA390B00 AS Date), 0, 239)
GO
INSERT [dbo].[employee_delegations] ([id], [id_employee], [date_start], [date_end], [is_active], [id_delegate]) VALUES (5, 278, CAST(0xAC390B00 AS Date), CAST(0xAC390B00 AS Date), 1, 240)
GO
INSERT [dbo].[employee_delegations] ([id], [id_employee], [date_start], [date_end], [is_active], [id_delegate]) VALUES (6, 240, CAST(0xAB390B00 AS Date), CAST(0xAB390B00 AS Date), 0, 278)
GO
SET IDENTITY_INSERT [dbo].[employee_delegations] OFF
GO
