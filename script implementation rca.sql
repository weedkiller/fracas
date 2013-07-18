USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[rca_implementation]    Script Date: 4/24/2013 10:32:08 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[rca_implementation]  WITH CHECK ADD  CONSTRAINT [FK_rca_implementation_employee] FOREIGN KEY([pic])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[rca_implementation] CHECK CONSTRAINT [FK_rca_implementation_employee]
GO
