USE [Comment]
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 05/31/2017 11:22:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTable](
	[Username] [varchar](25) NOT NULL,
	[Password] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UserTable] ([Username], [Password]) VALUES (N'Albert', N'Albert1')
INSERT [dbo].[UserTable] ([Username], [Password]) VALUES (N'James', N'James1')
INSERT [dbo].[UserTable] ([Username], [Password]) VALUES (N'Mary', N'Mary1')
INSERT [dbo].[UserTable] ([Username], [Password]) VALUES (N'Paul', N'Paul1')
INSERT [dbo].[UserTable] ([Username], [Password]) VALUES (N'Robert', N'Rober1')
/****** Object:  StoredProcedure [dbo].[spCheckUserCredentials]    Script Date: 05/31/2017 11:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spCheckUserCredentials](
@Username varchar(25))
As
 Begin
  Select * from UserTable where Username=@Username
 End
GO
/****** Object:  Table [dbo].[ParentCommentTable]    Script Date: 05/31/2017 11:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ParentCommentTable](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](25) NULL,
	[CommentMessage] [varchar](300) NULL,
	[CommentDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ParentCommentTable] ON
INSERT [dbo].[ParentCommentTable] ([CommentID], [Username], [CommentMessage], [CommentDate]) VALUES (17, N'James', N'Parent Comment 1', CAST(0xC53B0B00 AS Date))
INSERT [dbo].[ParentCommentTable] ([CommentID], [Username], [CommentMessage], [CommentDate]) VALUES (18, N'James', N'Parent Comment 2', CAST(0xC53B0B00 AS Date))
INSERT [dbo].[ParentCommentTable] ([CommentID], [Username], [CommentMessage], [CommentDate]) VALUES (19, N'Paul', N'Kiran', CAST(0xC53B0B00 AS Date))
SET IDENTITY_INSERT [dbo].[ParentCommentTable] OFF
/****** Object:  Table [dbo].[ChildCommentTable]    Script Date: 05/31/2017 11:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChildCommentTable](
	[ChildCommentID] [int] IDENTITY(100,1) NOT NULL,
	[ChildUsername] [varchar](25) NULL,
	[ChildCommentMessage] [varchar](300) NULL,
	[ChildCommentDate] [date] NULL,
	[ParentCommentID] [int] NULL,
 CONSTRAINT [PK__ChildCom__C3B4DFAA07F6335A] PRIMARY KEY CLUSTERED 
(
	[ChildCommentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ChildCommentTable] ON
INSERT [dbo].[ChildCommentTable] ([ChildCommentID], [ChildUsername], [ChildCommentMessage], [ChildCommentDate], [ParentCommentID]) VALUES (118, N'Paul', N'Ok 2', CAST(0xC53B0B00 AS Date), 18)
INSERT [dbo].[ChildCommentTable] ([ChildCommentID], [ChildUsername], [ChildCommentMessage], [ChildCommentDate], [ParentCommentID]) VALUES (119, N'James', N'thanks', CAST(0x133C0B00 AS Date), 17)
SET IDENTITY_INSERT [dbo].[ChildCommentTable] OFF
/****** Object:  StoredProcedure [dbo].[spGetParentCommentUsername]    Script Date: 05/31/2017 11:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetParentCommentUsername](
@Username varchar(25))
As
 Begin
  Select * from ParentCommentTable where Username=@Username
 End
GO
/****** Object:  StoredProcedure [dbo].[spCommentInsert]    Script Date: 05/31/2017 11:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spCommentInsert](
@Username varchar(25),
@CommentMessage varchar(300))
As
 Begin
  Insert into ParentCommentTable(Username, 
                                 CommentMessage, 
                                 CommentDate)
         values(@Username,
                @CommentMessage,
                GETDATE())
 End
GO
/****** Object:  StoredProcedure [dbo].[spGetParentComment]    Script Date: 05/31/2017 11:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetParentComment]
As
 Begin
  Select * from ParentCommentTable
 End
GO
/****** Object:  StoredProcedure [dbo].[spCommentUpdate]    Script Date: 05/31/2017 11:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spCommentUpdate](
@CommentID int,
@Username varchar(25),
@CommentMessage varchar(300))
As
 Begin
  Update ParentCommentTable set CommentMessage=@CommentMessage 
                            where CommentID=@CommentID and Username=@Username
 End
GO
/****** Object:  StoredProcedure [dbo].[spCommentReplyInsert]    Script Date: 05/31/2017 11:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spCommentReplyInsert](
@Username varchar(25),
@CommentMessage varchar(300),
@ParentCommentID int)
As
 Begin
  Insert into ChildCommentTable(ChildUsername, ChildCommentMessage, ChildCommentDate, ParentCommentID)
         values(@Username,@CommentMessage, GETDATE(),@ParentCommentID)
 End
GO
/****** Object:  StoredProcedure [dbo].[spGetParentCommentByParentCommentID]    Script Date: 05/31/2017 11:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetParentCommentByParentCommentID](
@ParentCommentID int)
As
 Begin
  Select * from ChildCommentTable where ParentCommentID=@ParentCommentID
 End
GO
/****** Object:  ForeignKey [FK__ParentCom__Usern__0519C6AF]    Script Date: 05/31/2017 11:22:13 ******/
ALTER TABLE [dbo].[ParentCommentTable]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[UserTable] ([Username])
GO
/****** Object:  ForeignKey [FK__ChildComm__Paren__09DE7BCC]    Script Date: 05/31/2017 11:22:13 ******/
ALTER TABLE [dbo].[ChildCommentTable]  WITH CHECK ADD  CONSTRAINT [FK__ChildComm__Paren__09DE7BCC] FOREIGN KEY([ParentCommentID])
REFERENCES [dbo].[ParentCommentTable] ([CommentID])
GO
ALTER TABLE [dbo].[ChildCommentTable] CHECK CONSTRAINT [FK__ChildComm__Paren__09DE7BCC]
GO
/****** Object:  ForeignKey [FK__ChildComm__Usern__0AD2A005]    Script Date: 05/31/2017 11:22:13 ******/
ALTER TABLE [dbo].[ChildCommentTable]  WITH CHECK ADD  CONSTRAINT [FK__ChildComm__Usern__0AD2A005] FOREIGN KEY([ChildUsername])
REFERENCES [dbo].[UserTable] ([Username])
GO
ALTER TABLE [dbo].[ChildCommentTable] CHECK CONSTRAINT [FK__ChildComm__Usern__0AD2A005]
GO
