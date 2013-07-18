USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[equipment_daily_report]    Script Date: 4/1/2013 4:08:43 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[equipment_daily_report_table]    Script Date: 4/1/2013 4:08:43 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[equipment_daily_report_table]  WITH CHECK ADD  CONSTRAINT [FK_equipment_daily_report_table_equipment_daily_report] FOREIGN KEY([id_equipment_daily_report])
REFERENCES [dbo].[equipment_daily_report] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_daily_report_table] CHECK CONSTRAINT [FK_equipment_daily_report_table_equipment_daily_report]
GO
ALTER TABLE [dbo].[equipment_daily_report_table]  WITH CHECK ADD  CONSTRAINT [FK_equipment_daily_report_table_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_daily_report_table] CHECK CONSTRAINT [FK_equipment_daily_report_table_equipments]
GO
