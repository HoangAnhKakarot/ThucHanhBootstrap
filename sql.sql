USE [DB_EICTU]
GO
/****** Object:  Table [dbo].[tbl_Do]    Script Date: 17/09/2016 10:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Do](
	[ID] [int] NOT NULL,
	[MaSV] [varchar](20) NULL,
	[Chitiet] [varchar](500) NULL,
	[Image] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_GiaoVien]    Script Date: 17/09/2016 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_GiaoVien](
	[MaGV] [varchar](20) NOT NULL,
	[TenGV] [varchar](50) NULL,
	[GioiTinh] [char](3) NULL,
	[NgaySinh] [datetime] NULL,
	[SDTGiaoVien] [int] NULL,
	[MaNganh] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_IWANT]    Script Date: 17/09/2016 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_IWANT](
	[Id] [varchar](15) NOT NULL,
	[MaSV] [varchar](20) NULL,
	[Body] [text] NULL,
	[Phone] [int] NULL,
	[Location] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[Parent_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_LopHoc]    Script Date: 17/09/2016 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_LopHoc](
	[MaLop] [int] NOT NULL,
	[TenLop] [varchar](50) NULL,
	[MaNganh] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_MonHoc]    Script Date: 17/09/2016 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MonHoc](
	[MaMon] [varchar](15) NOT NULL,
	[TenMon] [varchar](69) NULL,
	[MaNganh] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_NganhHoc]    Script Date: 17/09/2016 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_NganhHoc](
	[MaNganh] [varchar](20) NOT NULL,
	[TenNganh] [varchar](50) NULL,
 CONSTRAINT [PK_NganhHoc] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_NhaTro]    Script Date: 17/09/2016 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_NhaTro](
	[ID] [int] NOT NULL,
	[MaSV] [varchar](20) NULL,
	[ChuTro] [varchar](20) NULL,
	[DiaChi] [varchar](50) NULL,
	[NgayVaoTro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SinhVien]    Script Date: 17/09/2016 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SinhVien](
	[MaSV] [varchar](20) NOT NULL,
	[HoTen] [varchar](50) NULL,
	[GioiTinh] [varchar](5) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [text] NULL,
	[SDT] [varchar](20) NULL,
	[MaNganh] [varchar](20) NULL,
	[MaLop] [int] NULL,
 CONSTRAINT [PK__tbl_Sinh__2725081AB86F5008] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SinhVien_KTX]    Script Date: 17/09/2016 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SinhVien_KTX](
	[ID] [int] NOT NULL,
	[MaSV] [varchar](20) NULL,
	[DayNha] [varchar](10) NULL,
	[Phong] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TaiKhoan]    Script Date: 17/09/2016 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TaiKhoan](
	[Id] [int] NOT NULL,
	[TenTaiKhoan] [varchar](50) NULL,
	[MatKhau] [text] NULL,
	[PhanQuyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TimViec]    Script Date: 17/09/2016 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TimViec](
	[id_baidang] [varchar](20) NOT NULL,
	[id_sv] [varchar](20) NULL,
	[noidung] [text] NULL,
	[thoigian] [datetime] NULL,
	[diadiem] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_baidang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TinhTrangHoc]    Script Date: 17/09/2016 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TinhTrangHoc](
	[MaMon] [varchar](15) NOT NULL,
	[MaSV] [varchar](20) NOT NULL,
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK__tbl_Tinh__3214EC2740EA4513] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC,
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tbl_Do]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Do_tbl_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[tbl_SinhVien] ([MaSV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Do] CHECK CONSTRAINT [FK_tbl_Do_tbl_SinhVien]
GO
ALTER TABLE [dbo].[tbl_GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_GiaoVien_tbl_NganhHoc] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[tbl_NganhHoc] ([MaNganh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_GiaoVien] CHECK CONSTRAINT [FK_tbl_GiaoVien_tbl_NganhHoc]
GO
ALTER TABLE [dbo].[tbl_IWANT]  WITH CHECK ADD  CONSTRAINT [FK_tbl_IWANT_tbl_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[tbl_SinhVien] ([MaSV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_IWANT] CHECK CONSTRAINT [FK_tbl_IWANT_tbl_SinhVien]
GO
ALTER TABLE [dbo].[tbl_LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_tbl_LopHoc_tbl_NganhHoc] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[tbl_NganhHoc] ([MaNganh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_LopHoc] CHECK CONSTRAINT [FK_tbl_LopHoc_tbl_NganhHoc]
GO
ALTER TABLE [dbo].[tbl_MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MonHoc_tbl_NganhHoc] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[tbl_NganhHoc] ([MaNganh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_MonHoc] CHECK CONSTRAINT [FK_tbl_MonHoc_tbl_NganhHoc]
GO
ALTER TABLE [dbo].[tbl_NhaTro]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NhaTro_tbl_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[tbl_SinhVien] ([MaSV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_NhaTro] CHECK CONSTRAINT [FK_tbl_NhaTro_tbl_SinhVien]
GO
ALTER TABLE [dbo].[tbl_SinhVien_KTX]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SinhVien_KTX_tbl_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[tbl_SinhVien] ([MaSV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_SinhVien_KTX] CHECK CONSTRAINT [FK_tbl_SinhVien_KTX_tbl_SinhVien]
GO
ALTER TABLE [dbo].[tbl_TimViec]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TimViec_tbl_SinhVien] FOREIGN KEY([id_sv])
REFERENCES [dbo].[tbl_SinhVien] ([MaSV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_TimViec] CHECK CONSTRAINT [FK_tbl_TimViec_tbl_SinhVien]
GO
ALTER TABLE [dbo].[tbl_TinhTrangHoc]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinhTrangHoc_tbl_MonHoc] FOREIGN KEY([MaMon])
REFERENCES [dbo].[tbl_MonHoc] ([MaMon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_TinhTrangHoc] CHECK CONSTRAINT [FK_tbl_TinhTrangHoc_tbl_MonHoc]
GO
ALTER TABLE [dbo].[tbl_TinhTrangHoc]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TinhTrangHoc_tbl_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[tbl_SinhVien] ([MaSV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_TinhTrangHoc] CHECK CONSTRAINT [FK_tbl_TinhTrangHoc_tbl_SinhVien]
GO
