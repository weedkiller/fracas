USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[daily_log_wells]    Script Date: 2/6/2015 4:53:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_wells](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[is_delete] [bit] NULL,
 CONSTRAINT [PK_daily_log_wells] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trouble_shooting_log]    Script Date: 2/6/2015 4:53:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trouble_shooting_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[comment] [varchar](max) NULL,
	[date] [datetime] NULL,
	[id_tsr] [int] NULL,
	[status] [varchar](255) NULL,
	[username] [varchar](255) NULL,
 CONSTRAINT [PK_trouble_shooting_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
