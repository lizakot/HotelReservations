USE [HotelReservations]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 05.04.2024 2:29:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Admin_ID] [int] NOT NULL,
	[Hotel_ID] [int] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Hotel] FOREIGN KEY([Hotel_ID])
REFERENCES [dbo].[Hotel] ([Hotel_ID])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_Hotel]
GO
