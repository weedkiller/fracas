USE [star_energy_geo]
GO
/****** Object:  Table [dbo].[master_security]    Script Date: 04/13/2015 16:04:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_security](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_employee] [int] NOT NULL,
 CONSTRAINT [PK_master_security] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[master_security] ON
INSERT [dbo].[master_security] ([id], [id_employee]) VALUES (3, 278)
INSERT [dbo].[master_security] ([id], [id_employee]) VALUES (4, 243)
INSERT [dbo].[master_security] ([id], [id_employee]) VALUES (5, 524)
INSERT [dbo].[master_security] ([id], [id_employee]) VALUES (6, 390)
SET IDENTITY_INSERT [dbo].[master_security] OFF
/****** Object:  ForeignKey [FK_master_security_employee]    Script Date: 04/13/2015 16:04:50 ******/
ALTER TABLE [dbo].[master_security]  WITH CHECK ADD  CONSTRAINT [FK_master_security_employee] FOREIGN KEY([id_employee])
REFERENCES [dbo].[employee] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[master_security] CHECK CONSTRAINT [FK_master_security_employee]
GO
