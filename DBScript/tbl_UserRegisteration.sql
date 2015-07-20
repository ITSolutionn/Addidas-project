
CREATE TABLE [dbo].[tbl_UserRegisteration](
	[UserRegisterationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](15) NOT NULL,
	[Address] [varchar](250) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[ContactNo] [varchar](20) NOT NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_tblUserRegisteration] PRIMARY KEY CLUSTERED 
(
	[UserRegisterationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


