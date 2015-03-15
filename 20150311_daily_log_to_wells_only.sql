USE [star_energy_geo]
GO
/****** Object:  Table [dbo].[daily_log_to_wells]    Script Date: 03/11/2015 11:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_to_wells](
	[daily_log_id] [int] NOT NULL,
	[daily_log_wells_id] [int] NOT NULL,
	[fcv] [varchar](255) NULL,
	[flow] [varchar](255) NULL,
	[whp] [varchar](255) NULL,
	[is_text] [tinyint] NULL,
 CONSTRAINT [PK_daily_log_to_wells] PRIMARY KEY CLUSTERED 
(
	[daily_log_id] ASC,
	[daily_log_wells_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_daily_log_to_wells_daily_log]    Script Date: 03/11/2015 11:14:32 ******/
ALTER TABLE [dbo].[daily_log_to_wells]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_to_wells_daily_log] FOREIGN KEY([daily_log_id])
REFERENCES [dbo].[daily_log] ([id])
GO
ALTER TABLE [dbo].[daily_log_to_wells] CHECK CONSTRAINT [FK_daily_log_to_wells_daily_log]
GO
/****** Object:  ForeignKey [FK_daily_log_to_wells_daily_log_wells]    Script Date: 03/11/2015 11:14:32 ******/
ALTER TABLE [dbo].[daily_log_to_wells]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_to_wells_daily_log_wells] FOREIGN KEY([daily_log_wells_id])
REFERENCES [dbo].[daily_log_wells] ([id])
GO
ALTER TABLE [dbo].[daily_log_to_wells] CHECK CONSTRAINT [FK_daily_log_to_wells_daily_log_wells]
GO
