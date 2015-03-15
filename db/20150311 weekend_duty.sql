USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[weekend_duty]    Script Date: 3/11/2015 2:31:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[weekend_duty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[delegate_id] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[department] [varchar](255) NULL,
 CONSTRAINT [PK_weekend_duty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[weekend_duty] ON 

GO
INSERT [dbo].[weekend_duty] ([id], [employee_id], [delegate_id], [start_date], [end_date], [department]) VALUES (2, 278, 315, CAST(0xB6390B00 AS Date), CAST(0xB7390B00 AS Date), N'SHE')
GO
INSERT [dbo].[weekend_duty] ([id], [employee_id], [delegate_id], [start_date], [end_date], [department]) VALUES (3, 238, 238, CAST(0xB6390B00 AS Date), CAST(0xB7390B00 AS Date), N'MAINTENANCE')
GO
SET IDENTITY_INSERT [dbo].[weekend_duty] OFF
GO
