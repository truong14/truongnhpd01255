Create database Quanlibanhang
USE Quanlibanhang
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[NgayLapHD] [date] NOT NULL,
	[ThanhToan] [int] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[Ho] [nchar](15) NOT NULL,
	[Ten] [nchar](15) NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[DiaChi] [nchar](200) NULL,
	[DienThoai] [int] NOT NULL,
	[CongTy] [nchar](50) NULL,
	[GioiTinh] [nchar](3) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLSP] [nchar](200) NOT NULL,
	[GhiChu] [nchar](500) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nchar](200) NOT NULL,
	[MaLSP] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Images] [image] NULL,
	[DonViTinh] [nchar](20) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [ThanhTien]) VALUES (1, 1, 3, 24000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [ThanhTien]) VALUES (1, 2, 4, 40000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [ThanhTien]) VALUES (1, 5, 1, 70000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [ThanhTien]) VALUES (3, 3, 1, 1800000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [ThanhTien]) VALUES (6, 4, 1, 1200000)
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [TongTien], [NgayLapHD], [ThanhToan]) VALUES (1, 1, 200000, CAST(N'2016-01-14' AS Date), 100000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [TongTien], [NgayLapHD], [ThanhToan]) VALUES (3, 2, 2000000, CAST(N'2016-01-14' AS Date), 2000000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [TongTien], [NgayLapHD], [ThanhToan]) VALUES (4, 3, 500000, CAST(N'2016-01-14' AS Date), 500000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [TongTien], [NgayLapHD], [ThanhToan]) VALUES (5, 4, 200000, CAST(N'2016-01-14' AS Date), 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [TongTien], [NgayLapHD], [ThanhToan]) VALUES (6, 5, 50000000, CAST(N'2016-01-14' AS Date), 30000000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [Ho], [Ten], [Email], [DiaChi], [DienThoai], [CongTy], [GioiTinh]) VALUES (1, N'Nguyen         ', N'A              ', N'anguyen@gmail.com                                 ', N'Hoa Khanh Da Nang                                                                                                                                                                                       ', 123121212, N'Fsoft                                             ', N'Nam')
INSERT [dbo].[KhachHang] ([MaKH], [Ho], [Ten], [Email], [DiaChi], [DienThoai], [CongTy], [GioiTinh]) VALUES (2, N'Nguyen         ', N'B              ', N'bnguyen@gmail.com                                 ', N'Lien Chieu                                                                                                                                                                                              ', 121232141, N'Fshop                                             ', N'Nu ')
INSERT [dbo].[KhachHang] ([MaKH], [Ho], [Ten], [Email], [DiaChi], [DienThoai], [CongTy], [GioiTinh]) VALUES (3, N'Le             ', N'A              ', N'ale@gmail.com                                     ', N'Hai Chau                                                                                                                                                                                                ', 212132112, N'FU                                                ', N'Nam')
INSERT [dbo].[KhachHang] ([MaKH], [Ho], [Ten], [Email], [DiaChi], [DienThoai], [CongTy], [GioiTinh]) VALUES (4, N'Le             ', N'B              ', N'ble@gmail.com                                     ', N'Thanh Khe                                                                                                                                                                                               ', 121232411, N'FTel                                              ', N'Nu ')
INSERT [dbo].[KhachHang] ([MaKH], [Ho], [Ten], [Email], [DiaChi], [DienThoai], [CongTy], [GioiTinh]) VALUES (5, N'Tong           ', N'Hop            ', N'hoptong@gmail.com                                 ', N'Son Tra                                                                                                                                                                                                 ', 121123211, N'FIS                                               ', N'Nam')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (1, N'Nước Ngọt                                                                                                                                                                                               ', N'Uống nhiều ung thư                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (2, N'Quần Áo                                                                                                                                                                                                 ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (3, N'Laptop                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (4, N'Smartphone                                                                                                                                                                                              ', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLSP], [TenLSP], [GhiChu]) VALUES (5, N'Giày Dép                                                                                                                                                                                                ', NULL)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [DonGia], [SoLuong], [Images], [DonViTinh]) VALUES (1, N'CocaCola                                                                                                                                                                                                ', 1, 8000, 200, NULL, N'Chai                ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [DonGia], [SoLuong], [Images], [DonViTinh]) VALUES (2, N'Pepsi                                                                                                                                                                                                   ', 1, 10000, 300, NULL, N'Lon                 ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [DonGia], [SoLuong], [Images], [DonViTinh]) VALUES (3, N'Iphone 6s                                                                                                                                                                                               ', 4, 18000000, 30, NULL, N'Cái                 ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [DonGia], [SoLuong], [Images], [DonViTinh]) VALUES (4, N'HP                                                                                                                                                                                                      ', 3, 12000000, 20, NULL, N'Cái                 ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [DonGia], [SoLuong], [Images], [DonViTinh]) VALUES (5, N'Giày Thượng Đỉnh                                                                                                                                                                                        ', 5, 70000, 100, NULL, N'Đôi                 ')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
