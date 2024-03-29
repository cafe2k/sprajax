/****** Object:  Table [dbo].[Framework]    Script Date: 04/23/2006 16:02:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Framework]') AND type in (N'U'))
DROP TABLE [dbo].[Framework]
GO
/****** Object:  Table [dbo].[WebServicesCall]    Script Date: 04/23/2006 16:02:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebServicesCall]') AND type in (N'U'))
DROP TABLE [dbo].[WebServicesCall]
GO
/****** Object:  Table [dbo].[JavaScriptUri]    Script Date: 04/23/2006 16:02:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JavaScriptUri]') AND type in (N'U'))
DROP TABLE [dbo].[JavaScriptUri]
GO
/****** Object:  Table [dbo].[SprajaxSession]    Script Date: 04/23/2006 16:02:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SprajaxSession]') AND type in (N'U'))
DROP TABLE [dbo].[SprajaxSession]
GO
/****** Object:  Table [dbo].[WebServiceCollection]    Script Date: 04/23/2006 16:02:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebServiceCollection]') AND type in (N'U'))
DROP TABLE [dbo].[WebServiceCollection]
GO
/****** Object:  Table [dbo].[Framework]    Script Date: 04/23/2006 16:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Framework]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Framework](
	[ID] [uniqueidentifier] NOT NULL,
	[SessionID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Platform] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Framework] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[WebServicesCall]    Script Date: 04/23/2006 16:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebServicesCall]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WebServicesCall](
	[ID] [uniqueidentifier] NOT NULL,
	[SessionID] [uniqueidentifier] NOT NULL,
	[MethodName] [nvarchar](255) NOT NULL,
	[Parameters] [nvarchar](255) NOT NULL,
	[RequestText] [ntext] NULL,
	[ResponseText] [ntext] NULL,
	[ExceptionMessage] [ntext] NULL,
	[ExceptionStackTrace] [ntext] NULL,
 CONSTRAINT [PK_WebServicesCall] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JavaScriptUri]    Script Date: 04/23/2006 16:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JavaScriptUri]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JavaScriptUri](
	[ID] [uniqueidentifier] NOT NULL,
	[SessionID] [uniqueidentifier] NOT NULL,
	[Uri] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_JavaScriptUri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SprajaxSession]    Script Date: 04/23/2006 16:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SprajaxSession]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SprajaxSession](
	[ID] [uniqueidentifier] NOT NULL,
	[BaseUri] [nvarchar](255) NOT NULL,
	[StartTime] [datetime] NOT NULL CONSTRAINT [DF_SprajaxSession_StartTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_SprajaxSession] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[WebServiceCollection]    Script Date: 04/23/2006 16:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebServiceCollection]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WebServiceCollection](
	[ID] [uniqueidentifier] NOT NULL,
	[SessionID] [uniqueidentifier] NOT NULL,
	[Uri] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_WebServiceCollection] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
