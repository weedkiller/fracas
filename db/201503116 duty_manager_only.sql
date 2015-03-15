USE [star_energy_geo]
GO
/****** Object:  Table [dbo].[duty_manager]    Script Date: 03/16/2015 03:26:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[duty_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
 CONSTRAINT [PK_duty_manager] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_duty_manager_employee]    Script Date: 03/16/2015 03:26:29 ******/
ALTER TABLE [dbo].[duty_manager]  WITH CHECK ADD  CONSTRAINT [FK_duty_manager_employee] FOREIGN KEY([user_id])
REFERENCES [dbo].[employee] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[duty_manager] CHECK CONSTRAINT [FK_duty_manager_employee]
GO
