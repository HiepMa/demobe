CREATE DATABASE online
GO

/****** Object:  Table [dbo].[CumQuyen]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CumQuyen](
	[ID_CQ] [bigint] NOT NULL,
	[MaCQ] [varchar](50) NOT NULL,
	[TenCQ] [ntext] NOT NULL,
	[MoTaCQ] [ntext] NULL,
	[HT_CQ] [bit] NOT NULL,
	[Xoa_CQ] [bit] NOT NULL,
	[NgayTaoCQ] [datetime] NULL,
	[NguoiTaoCQ] [nvarchar](250) NULL,
	[NgayCNCQ] [datetime] NULL,
	[NguoiCNCQ] [nvarchar](250) NULL,
	[KhacCQ] [nvarchar](250) NULL,
 CONSTRAINT [PK_CumQuyen] PRIMARY KEY CLUSTERED 
(
	[ID_CQ] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__CumQuyen__27258E0A00551192] UNIQUE NONCLUSTERED 
(
	[MaCQ] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CumQuyen] ([ID_CQ], [MaCQ], [TenCQ], [MoTaCQ], [HT_CQ], [Xoa_CQ], [NgayTaoCQ], [NguoiTaoCQ], [NgayCNCQ], [NguoiCNCQ], [KhacCQ]) VALUES (1, N'SuperAdmin', N'Tổng quản trị', N'Full quyền', 1, 0, CAST(0x0000A395012FC42C AS DateTime), N'1', CAST(0x0000A502012FC42C AS DateTime), N'1', NULL)
INSERT [dbo].[CumQuyen] ([ID_CQ], [MaCQ], [TenCQ], [MoTaCQ], [HT_CQ], [Xoa_CQ], [NgayTaoCQ], [NguoiTaoCQ], [NgayCNCQ], [NguoiCNCQ], [KhacCQ]) VALUES (2, N'Admin', N'Quản trị cấp 1', NULL, 0, 0, CAST(0x0000A502012FC42C AS DateTime), N'1', CAST(0x0000A502012FC42C AS DateTime), N'1', NULL)
INSERT [dbo].[CumQuyen] ([ID_CQ], [MaCQ], [TenCQ], [MoTaCQ], [HT_CQ], [Xoa_CQ], [NgayTaoCQ], [NguoiTaoCQ], [NgayCNCQ], [NguoiCNCQ], [KhacCQ]) VALUES (3, N'ThemDe', N'Thêm đề thi', N'Ra đề thi cho hệ thống', 1, 0, CAST(0x0000A502012FC42C AS DateTime), N'2', CAST(0x0000A502012FC42C AS DateTime), N'2', NULL)
INSERT [dbo].[CumQuyen] ([ID_CQ], [MaCQ], [TenCQ], [MoTaCQ], [HT_CQ], [Xoa_CQ], [NgayTaoCQ], [NguoiTaoCQ], [NgayCNCQ], [NguoiCNCQ], [KhacCQ]) VALUES (4, N'ThemCH', N'Thêm câu hỏi', N'Thêm cây hỏi vào hệ thống ngân hàng câu hỏi ', 0, 0, CAST(0x0000A502012FC42C AS DateTime), N'1', CAST(0x0000A502012FC42C AS DateTime), N'1', NULL)
INSERT [dbo].[CumQuyen] ([ID_CQ], [MaCQ], [TenCQ], [MoTaCQ], [HT_CQ], [Xoa_CQ], [NgayTaoCQ], [NguoiTaoCQ], [NgayCNCQ], [NguoiCNCQ], [KhacCQ]) VALUES (5, N'ThemGV', N'Thêm giáo viên', NULL, 1, 0, CAST(0x0000A502012FC42C AS DateTime), N'2', CAST(0x0000A502012FC42C AS DateTime), N'2', NULL)
INSERT [dbo].[CumQuyen] ([ID_CQ], [MaCQ], [TenCQ], [MoTaCQ], [HT_CQ], [Xoa_CQ], [NgayTaoCQ], [NguoiTaoCQ], [NgayCNCQ], [NguoiCNCQ], [KhacCQ]) VALUES (6, N'TaoDSTS', N'Tạo danh sách thí sinh đủ điều kiện tham gia thi', NULL, 0, 0, CAST(0x0000A502012FC42C AS DateTime), N'1', CAST(0x0000A502012FC42C AS DateTime), N'1', NULL)
/****** Object:  Table [dbo].[Loai_CH]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_CH](
	[ID_LoaiCH] [bigint] NOT NULL,
	[MaLoai_CH] [nvarchar](250) NOT NULL,
	[TenLoai_CH] [nvarchar](300) NULL,
	[HT_Loai] [bit] NOT NULL,
	[Xoa_LCH] [bit] NOT NULL,
	[Khac_LCH] [nvarchar](250) NULL,
 CONSTRAINT [PK_LOAI_CH] PRIMARY KEY NONCLUSTERED 
(
	[ID_LoaiCH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_IDENTIFIER_2_LOAI_CH] UNIQUE NONCLUSTERED 
(
	[MaLoai_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Loai_CH__7CA3C8FF0425A276] UNIQUE NONCLUSTERED 
(
	[MaLoai_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Xoa_LCH], [Khac_LCH]) VALUES (1, N'LoaiCH11111', N'chọn True/False', 1, 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Xoa_LCH], [Khac_LCH]) VALUES (2, N'LoaiCH11112', N'chọn 1 đúng', 1, 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Xoa_LCH], [Khac_LCH]) VALUES (3, N'LoaiCH11113', N'chọn nhiều đúng', 1, 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Xoa_LCH], [Khac_LCH]) VALUES (4, N'LoaiCH11114', N'điền khuyết', 0, 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Xoa_LCH], [Khac_LCH]) VALUES (5, N'LoaiCH11115', N'đoạn văn', 0, 0, NULL)
/****** Object:  Table [dbo].[MonHoc]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[ID_MonHoc] [bigint] NOT NULL,
	[Ma_MonHoc] [nvarchar](30) NOT NULL,
	[TenMonHoc] [nvarchar](100) NOT NULL,
	[HT_MonHoc] [bit] NOT NULL,
	[Xoa_MonHoc] [bit] NOT NULL,
	[NguoiTao_MonHoc] [nvarchar](250) NOT NULL,
	[NgayTao_MonHoc] [datetime] NOT NULL,
	[NguoiCN_MonHoc] [nvarchar](250) NULL,
	[NgayCN_MonHoc] [datetime] NULL,
	[Khac_MonHoc] [nvarchar](250) NULL,
 CONSTRAINT [PK_MONHOC] PRIMARY KEY NONCLUSTERED 
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__MonHoc__3924C9EB09DE7BCC] UNIQUE NONCLUSTERED 
(
	[Ma_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__MonHoc__3924C9EB3454110C] UNIQUE NONCLUSTERED 
(
	[Ma_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [Xoa_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (1, N'T12', N'Toán 12', 1, 0, N'13', CAST(0x0000A6F3000BCE14 AS DateTime), N'4', CAST(0x0000A6FD012BA645 AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [Xoa_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (2, N'VL12', N'Vật Lý 12', 1, 0, N'14', CAST(0x0000A6F60159F6B4 AS DateTime), N'17', CAST(0x0000A6FE01539F78 AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [Xoa_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (3, N'H12', N'Hóa 12', 0, 0, N'18', CAST(0x0000A6F0002CF73C AS DateTime), N'16', CAST(0x0000A6F8003E09C7 AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [Xoa_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (4, N'SH12', N'Sinh Học 12', 0, 0, N'12', CAST(0x0000A6F400E4FE2B AS DateTime), N'3', CAST(0x0000A6F80126D68F AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [Xoa_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (5, N'DL12', N'Địa Lí 12', 1, 0, N'19', CAST(0x0000A6F40081FD4A AS DateTime), N'17', CAST(0x0000A6FA00626ED4 AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [Xoa_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (6, N'LS12', N'Lịch sử 12', 0, 0, N'14', CAST(0x0000A6F300A67A8A AS DateTime), N'12', CAST(0x0000A6FF00354906 AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [Xoa_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (7, N'GD12', N'GDCD 12', 0, 0, N'20', CAST(0x0000A6F600C6CD1A AS DateTime), N'11', CAST(0x0000A6FD004D1357 AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [Xoa_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (8, N'SH11', N'Sinh Học 11', 1, 0, N'7', CAST(0x0000A6F1009C624F AS DateTime), N'6', CAST(0x0000A6F900F076E9 AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [Xoa_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (9, N'T11', N'Toán 11', 0, 0, N'16', CAST(0x0000A6F3008E88E2 AS DateTime), N'13', CAST(0x0000A6F90167480D AS DateTime), N'XA81WI0Q970XS08PNPFNV0PX4NL72')
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [Xoa_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (10, N'H11', N'Hóa 11', 0, 0, N'20', CAST(0x0000A6F400D67037 AS DateTime), N'6', CAST(0x0000A6FC001C8D59 AS DateTime), N'77C5B19CIB730S633XVNV6046')
/****** Object:  Table [dbo].[ManHinh]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManHinh](
	[ID_ManHinh] [bigint] NOT NULL,
	[MaManHinh] [nvarchar](250) NOT NULL,
	[TenManHinh] [nvarchar](100) NULL,
	[HT_ManHinh] [bit] NOT NULL,
	[Xoa_ManHinh] [bit] NOT NULL,
	[MoTaManHinh] [ntext] NOT NULL,
	[URL] [nvarchar](300) NOT NULL,
	[Khac_MaHinh] [nvarchar](250) NULL,
 CONSTRAINT [PK_MANHINH] PRIMARY KEY NONCLUSTERED 
(
	[ID_ManHinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_IDENTIFIER_2_MANHINH] UNIQUE NONCLUSTERED 
(
	[URL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__ManHinh__D84939230F975522] UNIQUE NONCLUSTERED 
(
	[MaManHinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (1, N'3W89V0A067WW215425C546XTAX4UQV194V', NULL, 1, 0, N'E9F93PEK2748S09I4JW45A5V65OCV2Z3MX134G5I9X043BB3361B92601G5UV17Z8YX5M0N865T4L6KLPM2K849G7X6TBF8V44EK2Z2D', N'https://www.hisareor.no/shotio/iontiowit/leingnotar.htm', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (2, N'SI86OWU6A7GD67C7106AV67DG890372OX56331S2241X996VH29A88MK5T4P63O87QXS455XU6N0J0O9BK4G6SQQ73Y7MGK', N'MC25XV5B9H81OCTHMI', 1, 0, N'OO1JKC1', N'https://www.thehenallhi.ca/hadbutand/therele/sehen/waan.aspx?id=166', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (3, N'951A78DCR2DE1K8W7N0L8TH0T8Q07J1K607B64EAU7Q91SH56A', NULL, 0, 0, N'E3R8I8DW8Q4CJXUNNV63ZSHJF9', N'http://teditnd.tr/th/butvethi/sesho/ntheasng.php', N'610T9ZA4TF05GF7PGXSYSDJ2R63')
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (4, N'717255YHS', N'A50J1YJ37L6L9RG30', 1, 0, N'1520W37E9A41PN93JF56QO2W62VC7T97B150EXZ2H30G998Y03U6B07Y0K2J109URKZE4W0JVUULXOU4MO44857EH5Q5K', N'http://nottingou.au/wit/erend/oular/stentteng.htm#19786', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (5, N'PH8N24025LA804X4IDQ21XE6YT', N'08U9423RD9C6T36D6X8', 1, 0, N'84D2I9Z6402N2MCW6W5KXQ', N'http://arhinerall.fi/butaring/but/alleve/ometheerate.html', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (6, N'ST7CAGJZNHND1ZD20TH902767', N'BV', 1, 0, N'V4NY45I', N'http://asinnethi.mx/restan/youwiteden.htm#694', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (7, N'J49471DIN6729M0P7OZPHVZ888NHT', N'48V1K0J921T81C8JC2609259L9NG8V59TO0', 1, 0, N'1XA1PZH18D8OVV339S0PHE52T5OP', N'http://terthionter.uk/heruld/reternd/hentioal/hadndte.php?t=70&p=3040', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (8, N'8O59XD', N'A0P7IUDNNYUK95DDE3QY588V9PB509358XD6184526W15N96G12F8P3LPE483ROB9C', 0, 0, N'58221P64L20MSUB', N'https://www.andhad.net/enulden/verreen/es/atasallan.htm#0', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (9, N'GJ2TW', N'2V', 1, 0, N'1V4JQMMO86C4B9N883G908SN3', N'http://meatoulor.eg/arinte/ntalthe/ingeraar/ionthiouren.php', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (10, N'5E6INVJNK2H89UI67P3J', N'1JT5S1794', 1, 0, N'7P5CR2J68YE6D', N'https://www.ndhatrere.ca/herntan/heronor/nder/entleereha.php?t=30&p=16', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (11, N'VKP9YIZSOWPT37505587B51X', N'828YYV3V8G5Q7ZM', 1, 0, N'187YGA76JOS9759TUOYIOCG7O2M30QEPU4U6K5MVKOH5166SH69A', N'http://www.erawasthan.dk/ithereas/ulderaver/ntbuthe/forhe.php?t=45', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (12, N'883TRHB7091892IVSBE', N'9GXO5R3M5DHU42X8H1G223', 1, 0, N'50HABHP', N'http://www.entonereis.ch/tethiyou/sent.php', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (13, N'QFN3Z0WNAGK', N'M946099C936F1Y74O9A5VX', 0, 0, N'CB7X7KDVR93H', N'http://leonhaden.ua/thme/re/our/teitthor.php', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (14, N'69Z1224129G8U3E3581KQ8FE', N'407', 1, 0, N'AC203I6Q6', N'http://eaveitit.ae/had/thaforeseve.htm#0', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (15, N'ST99Q10IK3CFXOHPZ8I7A3U2JV49BR7F21Z2Q71885V5VN502FW99206Q0R8V1121PC7D90Z5O43A20F3', N'B066V2', 0, 0, N'NP43984FC1X6T6J74XXNDM9S34L4491E8UG9W412VOT4CSS72U3LDC9T62NJ63915RW', N'https://www.terleenwa.it/oulve/setoanthi.asp', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (16, N'4Z4SK', N'8S', 1, 0, N'0O6UUSHIX41P74C3M3A52DMLR214', N'http://atthaas.za/enareand/atne/uldsttiter.asp', N'HMCA7Q15J55K46XWB2N4O33579E7BLTU8LT61Q4')
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (17, N'784I82M4318Z36LOY0E1M1E0Z9DAOWH9EBY8MV2T73476794S6', N'I312QK1VV5', 0, 0, N'I5MB829C97DUJR57473', N'https://itallveis.kr/the/enth/uldthe/enin.php?t=41&p=9502', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (18, N'690M9YO4', N'S8E8FMI93153K9X', 1, 0, N'K1GPVP23MS35KVWT8K67JXZR2U657770B3516VT1BO4T0G3', N'https://anwabuthe.cy/forwahi/th/to/ithth.php', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (19, N'7A460ZD4OK2A0H3754QRRE494E40X4', N'23FE9VP8CS526516G904', 1, 0, N'39F9M348TNJ6STT9EMK7YH80236L5B4S9P1J', N'https://www.seormeth.lu/ereeve/me/ntaste/vereveed.php', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHinh], [HT_ManHinh], [Xoa_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (20, N'M2J5AL63K9J3XU6LO5N1645HV98FRTXJ012G32285VDD', N'J', 0, 0, N'V63M5U2FEC74PS0886350LWHHDQDKC6TOLFSLO13W941M73B13B920JVJF9O2OU', N'https://www.andoul.tw/shoornd/esthiou/hatwasan/oultha.aspx?id=226', NULL)
/****** Object:  Table [dbo].[ThiSinh]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThiSinh](
	[ID_TK] [bigint] NOT NULL,
	[MADN_TS] [nvarchar](250) NOT NULL,
	[Ho_ThiSinh] [nvarchar](250) NOT NULL,
	[Ten_ThiSinh] [nvarchar](250) NOT NULL,
	[MatKhau_ThiSinh] [nvarchar](200) NOT NULL,
	[GioiTinh_ThiSinh] [nvarchar](10) NOT NULL,
	[Email_ThiSinh] [nvarchar](250) NOT NULL,
	[DienThoai_ThiSinh] [nvarchar](20) NOT NULL,
	[DiaChi_ThiSinh] [nvarchar](300) NOT NULL,
	[NgaySinh_ThiSinh] [date] NOT NULL,
	[HT_ThiSinh] [bit] NOT NULL,
	[Xoa_ThiSinh] [bit] NOT NULL,
	[NguoiTao_ThiSinh] [nvarchar](250) NOT NULL,
	[NgayTao_ThiSinh] [datetime] NOT NULL,
	[NguoiCN_ThiSinh] [nvarchar](250) NULL,
	[NgayCN_ThiSinh] [datetime] NULL,
	[Khac_ThiSinh] [nvarchar](300) NULL,
 CONSTRAINT [PK_THISINH] PRIMARY KEY NONCLUSTERED 
(
	[ID_TK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_IDENTIFIER_2_THISINH] UNIQUE NONCLUSTERED 
(
	[MADN_TS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (1, N'ThiSinh11111', N'Trần', N'Thái', N'K2NS3E07', N'1', N'Skipper@gmail.com', N'09178958142', N'1987 Hidden Edgewood Road, Bismarck, North Dakota, 66711', CAST(0x20250B00 AS Date), 0, 0, N'17', CAST(0x0000A702004184B2 AS DateTime), N'16', CAST(0x0000A8C1016742CD AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (2, N'ThiSinh11112', N'Đinh', N'Liêm', N'KEB09Z1I', N'1', N'Danial_Stowe43@gmail.com', N'09868443713', N'3113 New Social St, Suite 81, Atlanta, Georgia, 28246', CAST(0x9E180B00 AS Date), 0, 0, N'11', CAST(0x0000A71D01589CBE AS DateTime), N'7', CAST(0x0000A8B7003B7CB7 AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (3, N'ThiSinh11113', N'Hồ', N'Huy', N'EY7J9179', N'0', N'HoustonU161@gmail.com', N'09093362609', N'1654 East Ironwood Ln, Keith Bldg, Indianapolis, Indiana, 65260', CAST(0x0A210B00 AS Date), 1, 0, N'7', CAST(0x0000A6FC009E6562 AS DateTime), N'12', CAST(0x0000A851001A3439 AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (4, N'ThiSinh11114', N'Lý', N'Trinh', N'3KFOG5Z5', N'0', N'HarmonyGunther819@gmail.com', N'09873187265', N'1506 Flintwood Loop, Plaza Building, Richmond, Virginia, 35854', CAST(0xBFFB0A00 AS Date), 1, 0, N'8', CAST(0x0000A6F60127363E AS DateTime), N'15', CAST(0x0000A8790112FA8E AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (5, N'ThiSinh11115', N'Trương', N'Kha', N'L3IH85A4', N'1', N'Pederson@gmail.com', N'09863988069', N'487 Rockwood Parkway, Trenton, NJ, 06455', CAST(0x95240B00 AS Date), 0, 0, N'16', CAST(0x0000A6F801755705 AS DateTime), N'2', CAST(0x0000A8F60117409E AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (6, N'ThiSinh11116', N'Trịnh', N'Tài', N'890FTB1E', N'0', N'Eulah.Brant@yahoo.com', N'09187064712', N'2267 Red Glenwood Court, Nipper Bldg, Boise, Idaho, 99121', CAST(0xEB130B00 AS Date), 1, 0, N'4', CAST(0x0000A7530168C972 AS DateTime), N'10', CAST(0x0000A92E004FD6FA AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (7, N'ThiSinh11117', N'Nguyễn', N'Đàn', N'CFREI3RU', N'0', N'TonyBatiste323@gmail.com', N'09815270527', N'1656 Glenwood Hwy, Des Moines, Iowa, 99666', CAST(0xEE060B00 AS Date), 1, 0, N'5', CAST(0x0000A74F005E1271 AS DateTime), N'4', CAST(0x0000A90100E1236D AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (8, N'ThiSinh11118', N'Ung', N'Khánh', N'B696JLWO', N'0', N'EttiePuckett4@yahoo.com', N'09008631644', N'40 E Church Lane, Keith Building, Helena, Montana, 64222', CAST(0x0BFA0A00 AS Date), 1, 0, N'16', CAST(0x0000A738018A8C6F AS DateTime), N'15', CAST(0x0000A7D900FCBC16 AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (9, N'ThiSinh11119', N'Lê', N'Khiêm', N'0497614A', N'1', N'AbigailLance331@yahoo.com', N'09891113101', N'77 Fox Hill Avenue, Jefferson City, MO, 85361', CAST(0xB12C0B00 AS Date), 1, 0, N'9', CAST(0x0000A74A0081A80C AS DateTime), N'2', CAST(0x0000A93500A139E2 AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (10, N'ThiSinh11121', N'Tạ', N'Toàn', N'1BL002FR', N'1', N'Antonio9@gmail.com', N'09004961390', N'317 SW Meadowview Highway, Harrisburg, Pennsylvania, 74730', CAST(0x4D120B00 AS Date), 1, 0, N'5', CAST(0x0000A7190147E3F4 AS DateTime), N'12', CAST(0x0000A85000B0C073 AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (11, N'ThiSinh11122', N'Trần', N'Thúy', N'JDZA3F93', N'1', N'AnnabelleAquino@gmail.com', N'09012308854', N'833 Hazelwood Blvd, Calyon Bldg, Phoenix, Arizona, 08895', CAST(0x87F90A00 AS Date), 1, 0, N'10', CAST(0x0000A75F0053E5F9 AS DateTime), N'3', CAST(0x0000A91B014FC19C AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (12, N'ThiSinh11123', N'Nguyễn', N'Thiệu', N'7Z9E206V', N'0', N'jiwxempn_njpscme@gmail.com', N'09129417727', N'86 Burwood Ct, 3rd FL, Concord, NH, 41508', CAST(0x54090B00 AS Date), 1, 0, N'3', CAST(0x0000A70A0171EE8C AS DateTime), N'6', CAST(0x0000A83D017997AE AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (13, N'ThiSinh11124', N'Hồ', N'Huyền', N'U30LD2R1', N'0', N'AdelaideBryson1@gmail.com', N'09890192073', N'184 Rock Hill Blvd, Enquirer Bldg, Honolulu, HI, 26162', CAST(0x03240B00 AS Date), 1, 0, N'10', CAST(0x0000A74200ABA929 AS DateTime), N'15', CAST(0x0000A85801568FCA AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (14, N'ThiSinh11125', N'Lê', N'Sơn', N'6X2NAPCA', N'1', N'MerlinWoodworth793@yahoo.com', N'09104901462', N'2408 N Quailwood Road, 99th Floor, Trenton, New Jersey, 75279', CAST(0xF3220B00 AS Date), 1, 0, N'12', CAST(0x0000A73C011F0472 AS DateTime), N'12', CAST(0x0000A86700FCE025 AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (15, N'ThiSinh11126', N'Đinh', N'Trí', N'5X5LSF5X', N'0', N'PhilNewman@yahoo.com', N'09167152888', N'3666 South Ironwood Rd, Hartford, CT, 03300', CAST(0x931F0B00 AS Date), 1, 0, N'12', CAST(0x0000A74A009EE4BE AS DateTime), N'6', CAST(0x0000A8AB0147928B AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (16, N'ThiSinh11127', N'Tạ', N'Hiệp', N'R324TRHF', N'0', N'Julieta.QWheaton@yahoo.com', N'09850963989', N'1247 New Rushwood Ct, Boise, Idaho, 14574', CAST(0x032F0B00 AS Date), 0, 0, N'13', CAST(0x0000A737011F51EB AS DateTime), N'17', CAST(0x0000A7C20048462F AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (17, N'ThiSinh11128', N'Trịnh', N'Trinh', N'8I46H5QH', N'0', N'Stone@gmail.com', N'09176446905', N'547 White Social Hwy, Honolulu, HI, 36985', CAST(0xC8FB0A00 AS Date), 1, 0, N'3', CAST(0x0000A6FD014D64B3 AS DateTime), N'19', CAST(0x0000A7FA0167B341 AS DateTime), N'5')
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (18, N'ThiSinh11129', N'Lý', N'Toàn', N'3V69G7Q1', N'0', N'Casie.Keel@yahoo.com', N'09025221587', N'488 Meadowview Ct, Victor Executive Building, Honolulu, HI, 21426', CAST(0x3CF90A00 AS Date), 1, 0, N'6', CAST(0x0000A71B00CA7DD8 AS DateTime), N'20', CAST(0x0000A790001CB4E9 AS DateTime), N'0860Y1B3IOD9K5YCDZNSR9Y0KH07CV21458T')
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (19, N'ThiSinh11131', N'Trương', N'Thúy', N'91Q35P03', N'1', N'AbdulFugate@gmail.com', N'09040859408', N'3885 Farmview Road, Equitable Bldg, Bismarck, ND, 55466', CAST(0x56F90A00 AS Date), 1, 0, N'19', CAST(0x0000A70D00B22459 AS DateTime), N'3', CAST(0x0000A84700C5F3E8 AS DateTime), N'K6KJ18P')
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [Xoa_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (20, N'ThiSinh11132', N'Ung', N'Đàn', N'0QR484W8', N'0', N'Lajuana.Huntley52@yahoo.com', N'09122395541', N'86 White Woodcock Court, Little Rock, AR, 43992', CAST(0x43FE0A00 AS Date), 1, 0, N'14', CAST(0x0000A74200A9F97A AS DateTime), N'17', CAST(0x0000A93701010FEB AS DateTime), N'SZL1MLX362309R7CZQJH8M634K40U35Y707O1AS4N8')
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[ID_PhanQuyen] [bigint] NOT NULL,
	[ID_ManHinh] [bigint] NOT NULL,
	[ID_CQ] [bigint] NULL,
	[CoQuyen] [bit] NOT NULL,
	[ChiDoc] [bit] NOT NULL,
	[Them] [bit] NOT NULL,
	[Sua] [bit] NOT NULL,
	[Xoa] [bit] NOT NULL,
	[HT_PQ] [bit] NOT NULL,
	[Xoa_PQ] [bit] NOT NULL,
	[NgayBD_PQ] [datetime] NOT NULL,
	[NgayKT_PQ] [datetime] NOT NULL,
	[NgayKT_TT] [datetime] NULL,
	[NguoiTao_PQ] [nvarchar](250) NOT NULL,
	[NgayTao_PQ] [datetime] NOT NULL,
	[NguoiCN_PQ] [nvarchar](250) NULL,
	[NgayCN_PQ] [datetime] NULL,
	[Khac_PQ] [nvarchar](250) NULL,
 CONSTRAINT [PK_PHANQUYEN] PRIMARY KEY NONCLUSTERED 
(
	[ID_PhanQuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_16_FK] ON [dbo].[PhanQuyen] 
(
	[ID_ManHinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (1, 12, 1, 1, 1, 0, 0, 0, 0, 0, CAST(0x0000A71C0030B280 AS DateTime), CAST(0x0000A76900C14304 AS DateTime), CAST(0x0000A771001E31EF AS DateTime), N'12', CAST(0x0000A5E00020E8E4 AS DateTime), N'12', CAST(0x0000A72C0186C990 AS DateTime), N'8WVP0L0YXMRI77ECG5VR')
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (2, 4, 3, 0, 1, 0, 0, 0, 1, 0, CAST(0x0000A71B0107C92B AS DateTime), CAST(0x0000A76900C14304 AS DateTime), CAST(0x0000A76F009F4188 AS DateTime), N'4', CAST(0x0000A52B01276BC6 AS DateTime), N'12', CAST(0x0000A73E00615F69 AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (3, 19, 2, 1, 1, 0, 0, 0, 1, 0, CAST(0x0000A71B0112C31A AS DateTime), CAST(0x0000A76B000209CA AS DateTime), CAST(0x0000A76E014C24F7 AS DateTime), N'19', CAST(0x0000A6B700A66E93 AS DateTime), N'7', CAST(0x0000A74301644B10 AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (4, 9, 4, 0, 1, 0, 0, 0, 1, 0, CAST(0x0000A71D00CA5681 AS DateTime), CAST(0x0000A76700DCC038 AS DateTime), CAST(0x0000A76E0111CB82 AS DateTime), N'9', CAST(0x0000A5E00020E8E4 AS DateTime), N'7', CAST(0x0000A75B0031ED7A AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (5, 18, 5, 1, 1, 0, 0, 0, 0, 0, CAST(0x0000A71A0086502F AS DateTime), CAST(0x0000A767014D2340 AS DateTime), CAST(0x0000A77000C7AD3F AS DateTime), N'18', CAST(0x0000A502012FC42C AS DateTime), N'3', CAST(0x0000A71100B46108 AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (6, 4, 1, 1, 1, 0, 0, 0, 1, 0, CAST(0x0000A71B0107C92B AS DateTime), CAST(0x0000A767014D2340 AS DateTime), CAST(0x0000A76F00CDF638 AS DateTime), N'4', CAST(0x0000A62E00ED9A17 AS DateTime), N'3', CAST(0x0000A6FF0017529C AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (7, 5, 2, 0, 1, 0, 0, 0, 1, 0, CAST(0x0000A71F01739F9D AS DateTime), CAST(0x0000A76D004439A3 AS DateTime), CAST(0x0000A77100F0F1FB AS DateTime), N'5', CAST(0x0000A667012275F4 AS DateTime), N'11', CAST(0x0000A754005CA753 AS DateTime), N'VYC')
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (8, 5, 1, 0, 1, 0, 0, 0, 1, 0, CAST(0x0000A71F01739F9D AS DateTime), CAST(0x0000A76D004439A3 AS DateTime), CAST(0x0000A77000C7AD3F AS DateTime), N'5', CAST(0x0000A69E009B5A2E AS DateTime), N'11', CAST(0x0000A75200E8CF98 AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (9, 19, 1, 1, 1, 0, 0, 0, 1, 0, CAST(0x0000A71B0112C31A AS DateTime), CAST(0x0000A76B000209CA AS DateTime), CAST(0x0000A77001733F19 AS DateTime), N'19', CAST(0x0000A5E00020E8E4 AS DateTime), N'7', CAST(0x0000A72A017C809B AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (10, 15, 1, 0, 1, 0, 0, 0, 1, 0, CAST(0x0000A71E001CDE53 AS DateTime), CAST(0x0000A766017A7983 AS DateTime), CAST(0x0000A77100D72FB9 AS DateTime), N'15', CAST(0x0000A60E00799BA5 AS DateTime), N'13', CAST(0x0000A6F4001D4E6A AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (11, 7, 1, 1, 1, 0, 0, 0, 0, 0, CAST(0x0000A7180058F047 AS DateTime), CAST(0x0000A769013A657A AS DateTime), CAST(0x0000A76E01606098 AS DateTime), N'7', CAST(0x0000A6B700A66E93 AS DateTime), N'19', CAST(0x0000A7010134597A AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (12, 11, 3, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A71E01444CCB AS DateTime), CAST(0x0000A7690014AE34 AS DateTime), CAST(0x0000A76E0179A80A AS DateTime), N'11', CAST(0x0000A5EF0173B98F AS DateTime), N'10', CAST(0x0000A73F0188E4D9 AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (13, 11, 4, 0, 1, 0, 0, 0, 1, 0, CAST(0x0000A71E01444CCB AS DateTime), CAST(0x0000A76B000209CA AS DateTime), CAST(0x0000A7700111C6FC AS DateTime), N'11', CAST(0x0000A667012275F4 AS DateTime), N'7', CAST(0x0000A72A000C18F0 AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (14, 11, 1, 0, 1, 0, 0, 0, 1, 0, CAST(0x0000A71E01444CCB AS DateTime), CAST(0x0000A76D004439A3 AS DateTime), CAST(0x0000A76E009C5139 AS DateTime), N'11', CAST(0x0000A46E0150128D AS DateTime), N'11', CAST(0x0000A7610067B771 AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (15, 7, 2, 0, 1, 0, 0, 0, 1, 0, CAST(0x0000A7180058F047 AS DateTime), CAST(0x0000A76A017B037D AS DateTime), CAST(0x0000A77000763314 AS DateTime), N'7', CAST(0x0000A60E00799BA5 AS DateTime), N'14', CAST(0x0000A6F001328562 AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (16, 18, 1, 1, 1, 0, 0, 0, 0, 0, CAST(0x0000A71A0086502F AS DateTime), CAST(0x0000A76A00C1A70C AS DateTime), CAST(0x0000A7700012E8AA AS DateTime), N'18', CAST(0x0000A573013FB1F2 AS DateTime), N'19', CAST(0x0000A762000D721D AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (17, 4, 1, 1, 1, 0, 0, 0, 0, 0, CAST(0x0000A71B0107C92B AS DateTime), CAST(0x0000A76D004439A3 AS DateTime), CAST(0x0000A76E009C5139 AS DateTime), N'4', CAST(0x0000A6E00152FE53 AS DateTime), N'11', CAST(0x0000A72D006B5212 AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (18, 18, 1, 0, 1, 0, 0, 0, 0, 0, CAST(0x0000A71A0086502F AS DateTime), CAST(0x0000A76D004439A3 AS DateTime), CAST(0x0000A76E014C24F7 AS DateTime), N'18', CAST(0x0000A6B1005AF231 AS DateTime), N'11', CAST(0x0000A73C00955053 AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (19, 20, 2, 1, 1, 0, 0, 0, 1, 0, CAST(0x0000A71A011D24AB AS DateTime), CAST(0x0000A76800F569F1 AS DateTime), CAST(0x0000A770006D2B37 AS DateTime), N'20', CAST(0x0000A5E00020E8E4 AS DateTime), N'11', CAST(0x0000A74900808BE7 AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_CQ], [CoQuyen], [ChiDoc], [Them], [Sua], [Xoa], [HT_PQ], [Xoa_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (20, 18, 1, 0, 1, 0, 0, 0, 1, 0, CAST(0x0000A71A0086502F AS DateTime), CAST(0x0000A76A017B037D AS DateTime), CAST(0x0000A76F0051879F AS DateTime), N'18', CAST(0x0000A6B600395D09 AS DateTime), N'14', CAST(0x0000A71800834F48 AS DateTime), NULL)
/****** Object:  Table [dbo].[DeMuc]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeMuc](
	[ID_DeMuc] [bigint] NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[Ma_DeMuc] [nvarchar](30) NOT NULL,
	[Ten_DeMuc] [nvarchar](100) NOT NULL,
	[HT_DeMuc] [bit] NOT NULL,
	[Xoa_DeMuc] [bit] NOT NULL,
	[NguoiTao_DM] [nvarchar](250) NOT NULL,
	[NgayTao_DM] [datetime] NOT NULL,
	[NguoiCN_DM] [nvarchar](250) NULL,
	[NgayCN_DM] [datetime] NULL,
	[Khac_DeMuc] [nvarchar](250) NULL,
 CONSTRAINT [PK_DEMUC] PRIMARY KEY NONCLUSTERED 
(
	[ID_DeMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DeMuc__0C1E4F271B0907CE] UNIQUE NONCLUSTERED 
(
	[Ma_DeMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DeMuc__0C1E4F27CE04D15C] UNIQUE NONCLUSTERED 
(
	[Ma_DeMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CODEMUC_FK] ON [dbo].[DeMuc] 
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (1, 5, N'DeMuc11111', N'Địa Lí Tự Nhiên', 0, 0, N'14', CAST(0x0000A76A00B84BAA AS DateTime), N'5', CAST(0x0000A776009EF310 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (2, 6, N'DeMuc11112', N'Lịch sử thế giới hiện đại', 0, 0, N'13', CAST(0x0000A76900F8CFBE AS DateTime), N'16', CAST(0x0000A77100A3D1B4 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (3, 5, N'DeMuc11113', N'Địa Lí Dân Cư', 0, 0, N'1', CAST(0x0000A76E015EB917 AS DateTime), N'14', CAST(0x0000A7740140C781 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (4, 10, N'DeMuc11114', N'Sự điện li', 1, 0, N'7', CAST(0x0000A76D00521D1E AS DateTime), N'18', CAST(0x0000A77200572A72 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (5, 10, N'DeMuc11115', N'Nhóm Nito, Photpho', 0, 0, N'3', CAST(0x0000A76E00F6E9D9 AS DateTime), N'1', CAST(0x0000A7760164DBCA AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (6, 9, N'DeMuc11116', N'Hàm số lượng giác - phương trình lượng giác', 1, 0, N'8', CAST(0x0000A767008CD096 AS DateTime), N'10', CAST(0x0000A77100495219 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (7, 4, N'DeMuc11117', N'Cơ chế di truyền và biến dị', 0, 0, N'4', CAST(0x0000A767012C82FE AS DateTime), N'3', CAST(0x0000A776009DCD25 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (8, 4, N'DeMuc11118', N'Tính quy luật của hiện tượng di truyề', 0, 0, N'18', CAST(0x0000A76B00A4AFB4 AS DateTime), N'9', CAST(0x0000A76F00ED2688 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (9, 2, N'DeMuc11119', N'Dao động cơ', 1, 0, N'5', CAST(0x0000A768005D8838 AS DateTime), N'18', CAST(0x0000A7740070D2C5 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (10, 7, N'DeMuc11121', N'Pháp luật đời sống', 0, 0, N'2', CAST(0x0000A76D016AC92E AS DateTime), N'17', CAST(0x0000A77100A294AD AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (11, 10, N'DeMuc11122', N'Nhóm Cacbon, Silic', 0, 0, N'14', CAST(0x0000A76E0074D4B3 AS DateTime), N'3', CAST(0x0000A76F00D46F13 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (12, 1, N'DeMuc11123', N'Ứng dụng đạo hàm để khảo sát và vẽ đồ thị của hàm số', 0, 0, N'8', CAST(0x0000A769000CA55A AS DateTime), N'7', CAST(0x0000A77601137CC0 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (13, 10, N'DeMuc11124', N'Đại cương về hóa học hưu cơ', 1, 0, N'19', CAST(0x0000A768010A630D AS DateTime), N'16', CAST(0x0000A77500D1F1D8 AS DateTime), N'6P4')
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (14, 1, N'DeMuc11125', N'Hàm số lũy thừa, Hàm số mũ và hàm số logarit', 1, 0, N'18', CAST(0x0000A76A0002A7B3 AS DateTime), N'15', CAST(0x0000A773012B9ED4 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (15, 6, N'DeMuc11126', N'Lịch sử Việt Nam từ năm 1919 đến 2000', 0, 0, N'9', CAST(0x0000A7670163731C AS DateTime), N'6', CAST(0x0000A7740064DB56 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (16, 2, N'DeMuc11127', N'Sóng cơ và sóng âm', 0, 0, N'12', CAST(0x0000A76A017A9CFF AS DateTime), N'16', CAST(0x0000A77400C61716 AS DateTime), N'674GS4O14Q849C9495BXI4V2Z1672S6OE7IG4XIEMCD6BPH61I4')
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (17, 8, N'DeMuc11128', N'Chuyển hóa vật chất và năng lượng', 1, 0, N'8', CAST(0x0000A7680114E3E8 AS DateTime), N'16', CAST(0x0000A77400F44415 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (18, 2, N'DeMuc11129', N'Dòng điện xoay chiều', 0, 0, N'10', CAST(0x0000A768013A4B28 AS DateTime), N'12', CAST(0x0000A771014884DD AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (19, 5, N'DeMuc11131', N'Địa Lí Kinh Tế', 1, 0, N'14', CAST(0x0000A76E0006095D AS DateTime), N'3', CAST(0x0000A77301027E66 AS DateTime), NULL)
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Xoa_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM], [Khac_DeMuc]) VALUES (20, 4, N'DeMuc11132', N'Di truyền học quần thể', 0, 0, N'14', CAST(0x0000A7670054DC3E AS DateTime), N'1', CAST(0x0000A774004C271A AS DateTime), NULL)
/****** Object:  Table [dbo].[DanhSach_DeThi]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSach_DeThi](
	[ID_DE] [bigint] NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[Ma_DeThi] [nvarchar](30) NOT NULL,
	[Ten_DeThi] [nvarchar](50) NOT NULL,
	[TrangThai_DeThi] [bit] NOT NULL,
	[TrangThai_Tron_DeThi] [bit] NOT NULL,
	[HT_DeThi] [bit] NOT NULL,
	[Xoa_DeThi] [bit] NOT NULL,
	[ThoiGianLamBai] [int] NOT NULL,
	[NgayBatDau_SuDung] [datetime] NOT NULL,
	[NgayKetThucDuKien] [datetime] NOT NULL,
	[NgayKetThucThatTe] [datetime] NULL,
	[NguoiTao_DeThi] [nvarchar](250) NOT NULL,
	[NgayTao_DeThi] [datetime] NOT NULL,
	[NguoiCN_DeThi] [nvarchar](250) NULL,
	[NgayCN_DeThi] [datetime] NULL,
	[Khac_DeThi] [nvarchar](300) NULL,
 CONSTRAINT [PK_DANHSACH_DETHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_DE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DanhSach__0EBE1DBD20C1E124] UNIQUE NONCLUSTERED 
(
	[Ma_DeThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DanhSach__0EBE1DBD948C9718] UNIQUE NONCLUSTERED 
(
	[Ma_DeThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CODSDETHI_FK] ON [dbo].[DanhSach_DeThi] 
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (1, 5, N'DeThi11111', N'Toán 15 phút', 0, 0, 1, 0, 16, CAST(0x0000A787000A1B9E AS DateTime), CAST(0x0000A78F00E00799 AS DateTime), CAST(0x0000A79100647433 AS DateTime), N'4', CAST(0x0000A768012A9F77 AS DateTime), N'8', CAST(0x0000A7770093C1D7 AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (2, 2, N'DeThi11112', N'Vật Lý  15 phút', 1, 0, 0, 0, 20, CAST(0x0000A78C006030C0 AS DateTime), CAST(0x0000A78F00C74EF5 AS DateTime), CAST(0x0000A791000CE5AA AS DateTime), N'9', CAST(0x0000A76B00D625F4 AS DateTime), N'12', CAST(0x0000A78300EE67AF AS DateTime), N'GD5MALZ3H1943652')
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (3, 3, N'DeThi11113', N'Hóa  15 phút', 1, 0, 0, 0, 34, CAST(0x0000A78900AF01DC AS DateTime), CAST(0x0000A78E00109E5A AS DateTime), CAST(0x0000A7910171CF0C AS DateTime), N'14', CAST(0x0000A7670096285F AS DateTime), N'7', CAST(0x0000A775007AD1D4 AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (4, 6, N'DeThi11114', N'Hóa 45 phút', 1, 1, 0, 0, 2, CAST(0x0000A78B012E0A6F AS DateTime), CAST(0x0000A78E00F74844 AS DateTime), CAST(0x0000A7910008F6F4 AS DateTime), N'8', CAST(0x0000A76900B8B4C2 AS DateTime), N'11', CAST(0x0000A76F008DB862 AS DateTime), N'D516QOH')
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (5, 2, N'DeThi11115', N'Sinh 30 phút', 0, 1, 0, 0, 36, CAST(0x0000A78C00254565 AS DateTime), CAST(0x0000A78E00C43EB7 AS DateTime), NULL, N'3', CAST(0x0000A76D005B7697 AS DateTime), N'13', CAST(0x0000A77A012743B2 AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (6, 8, N'DeThi11116', N'Toán cuối kỳ', 1, 0, 0, 0, 1, CAST(0x0000A78D00AE0525 AS DateTime), CAST(0x0000A78F00944214 AS DateTime), NULL, N'20', CAST(0x0000A76A011D8D96 AS DateTime), N'17', CAST(0x0000A77A011FEB81 AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (7, 5, N'DeThi11117', N'Sinh cuối kỳ', 1, 0, 1, 0, 139, CAST(0x0000A78A0041BFD4 AS DateTime), CAST(0x0000A78E018B336D AS DateTime), CAST(0x0000A79101896F2D AS DateTime), N'4', CAST(0x0000A76B006AF4F4 AS DateTime), N'3', CAST(0x0000A78100E82F6F AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (8, 5, N'DeThi11118', N'Địa Lí cuối kỳ', 1, 0, 1, 0, 40, CAST(0x0000A78C00A6E432 AS DateTime), CAST(0x0000A78F0151E489 AS DateTime), CAST(0x0000A7910024AB33 AS DateTime), N'6', CAST(0x0000A76D003224D0 AS DateTime), N'17', CAST(0x0000A78300F79A25 AS DateTime), N'2G5I0TXWP7KBF9C6ZDJ5')
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (9, 1, N'DeThi11119', N'Lịch Sử cuối kỳ', 1, 0, 0, 0, 20, CAST(0x0000A78700FA4334 AS DateTime), CAST(0x0000A78F0000F219 AS DateTime), CAST(0x0000A7910055C1A9 AS DateTime), N'12', CAST(0x0000A76701832F4C AS DateTime), N'1', CAST(0x0000A77D003365D0 AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (10, 1, N'DeThi11121', N'GDCD cuối kỳ', 0, 1, 1, 0, 132, CAST(0x0000A78D007C399E AS DateTime), CAST(0x0000A78F004CD784 AS DateTime), CAST(0x0000A79100A11B67 AS DateTime), N'6', CAST(0x0000A76700B2C80C AS DateTime), N'12', CAST(0x0000A7790183E727 AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (11, 5, N'DeThi11122', N'Địa Lí 1 tiết', 1, 0, 0, 0, 110, CAST(0x0000A78600642753 AS DateTime), CAST(0x0000A79000D331A6 AS DateTime), CAST(0x0000A791009EFEA1 AS DateTime), N'7', CAST(0x0000A76A0062C0E8 AS DateTime), N'1', CAST(0x0000A78000EE084B AS DateTime), N'U1E8W6A1SXH512J9I6X')
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (12, 5, N'DeThi11123', N'Toán 1 tiết', 0, 0, 1, 0, 123, CAST(0x0000A78800AB9525 AS DateTime), CAST(0x0000A78F014F1C36 AS DateTime), CAST(0x0000A791001AD5AC AS DateTime), N'6', CAST(0x0000A76B01032FA8 AS DateTime), N'8', CAST(0x0000A77500D689F3 AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (13, 5, N'DeThi11124', N'Lịch Sử  15 phút', 0, 0, 1, 0, 119, CAST(0x0000A786018028C2 AS DateTime), CAST(0x0000A78E016C4B20 AS DateTime), CAST(0x0000A791017EA96A AS DateTime), N'18', CAST(0x0000A76800DA197B AS DateTime), N'15', CAST(0x0000A77C008B9A0D AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (14, 2, N'DeThi11125', N'Sinh 30 phút', 0, 1, 0, 0, 51, CAST(0x0000A78B01006EDB AS DateTime), CAST(0x0000A78E001FB069 AS DateTime), CAST(0x0000A791009D9341 AS DateTime), N'9', CAST(0x0000A76A00FAFE90 AS DateTime), N'9', CAST(0x0000A779012E688F AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (15, 2, N'DeThi11126', N'Sinh 15 phút', 1, 1, 0, 0, 34, CAST(0x0000A789007B3D7A AS DateTime), CAST(0x0000A78F011A08AC AS DateTime), CAST(0x0000A7910093884A AS DateTime), N'5', CAST(0x0000A76C00F3B3D0 AS DateTime), N'19', CAST(0x0000A77E001EC22E AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (16, 3, N'DeThi11127', N'GDCD 1 tiết', 0, 1, 0, 0, 131, CAST(0x0000A7860119DA5C AS DateTime), CAST(0x0000A78E017B56B7 AS DateTime), CAST(0x0000A79101087CA4 AS DateTime), N'13', CAST(0x0000A76900E1242D AS DateTime), N'20', CAST(0x0000A7750023C193 AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (17, 9, N'DeThi11128', N'GDCD 10 phút', 0, 1, 0, 0, 32, CAST(0x0000A78800909FE7 AS DateTime), CAST(0x0000A78E0071E593 AS DateTime), CAST(0x0000A791013F4658 AS DateTime), N'20', CAST(0x0000A76A01051140 AS DateTime), N'12', CAST(0x0000A77600B8B63F AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (18, 2, N'DeThi11129', N'Vật Lý cuối kỳ', 1, 1, 0, 0, 83, CAST(0x0000A78D00FA7526 AS DateTime), CAST(0x0000A79001109085 AS DateTime), CAST(0x0000A79100B30E62 AS DateTime), N'4', CAST(0x0000A76C00A163E5 AS DateTime), N'2', CAST(0x0000A77701649D75 AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (19, 5, N'DeThi11131', N'Vật Lý 1 tiết', 1, 1, 1, 0, 61, CAST(0x0000A786012C926D AS DateTime), CAST(0x0000A79001569E34 AS DateTime), CAST(0x0000A79100708438 AS DateTime), N'12', CAST(0x0000A769009900FC AS DateTime), N'1', CAST(0x0000A7720166A772 AS DateTime), NULL)
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [Xoa_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi], [Khac_DeThi]) VALUES (20, 9, N'DeThi11132', N'Lịch Sử 1 tiết', 0, 1, 0, 0, 45, CAST(0x0000A787017E3A79 AS DateTime), CAST(0x0000A78E0087785D AS DateTime), CAST(0x0000A7910141E0BE AS DateTime), N'13', CAST(0x0000A76B006DDFFD AS DateTime), N'7', CAST(0x0000A776000AC3C8 AS DateTime), NULL)
/****** Object:  Table [dbo].[DangKy]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKy](
	[ID_DANGKY] [bigint] NOT NULL,
	[ID_TK] [bigint] NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[Ngay_DangKy] [datetime] NOT NULL,
	[CamThi] [bit] NOT NULL,
	[NguoiCN_DangKy] [nvarchar](250) NULL,
	[NgayCN_DangKy] [datetime] NULL,
	[HT_DangKy] [bit] NOT NULL,
	[Xoa_DangKy] [bit] NOT NULL,
	[Khac_DangKy] [nvarchar](250) NULL,
 CONSTRAINT [PK_DANGKY] PRIMARY KEY NONCLUSTERED 
(
	[ID_DANGKY] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DANGKY_FK] ON [dbo].[DangKy] 
(
	[ID_TK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MH_MT_FK] ON [dbo].[DangKy] 
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (1, 10, 8, CAST(0x0000A708007C6FDA AS DateTime), 1, N'10', CAST(0x0000A70D017C5794 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (2, 10, 1, CAST(0x0000A70200723C72 AS DateTime), 1, N'10', CAST(0x0000A70F00B4A338 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (3, 11, 6, CAST(0x0000A7020091B4C2 AS DateTime), 1, N'11', CAST(0x0000A71000E98BEA AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (4, 8, 1, CAST(0x0000A7080041C061 AS DateTime), 1, N'8', CAST(0x0000A70B008108DF AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (5, 15, 7, CAST(0x0000A70201197186 AS DateTime), 0, N'15', CAST(0x0000A716009F1A25 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (6, 15, 6, CAST(0x0000A702006CB06D AS DateTime), 1, N'15', CAST(0x0000A70E0101F934 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (7, 17, 10, CAST(0x0000A701003CA824 AS DateTime), 1, N'17', CAST(0x0000A70B0101476B AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (8, 15, 10, CAST(0x0000A70100FF9E4F AS DateTime), 1, N'15', CAST(0x0000A714010F6FD4 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (9, 19, 2, CAST(0x0000A70100720E2E AS DateTime), 1, N'19', CAST(0x0000A70C00E2B648 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (10, 14, 2, CAST(0x0000A70200871851 AS DateTime), 0, N'14', CAST(0x0000A7140178DD57 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (11, 1, 10, CAST(0x0000A706008C7B37 AS DateTime), 1, N'1', CAST(0x0000A71000B4A494 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (12, 16, 6, CAST(0x0000A7080052CA13 AS DateTime), 1, N'16', CAST(0x0000A709010E5388 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (13, 13, 6, CAST(0x0000A702015A25B5 AS DateTime), 0, N'13', CAST(0x0000A71301189D55 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (14, 11, 5, CAST(0x0000A70401431E91 AS DateTime), 1, N'11', CAST(0x0000A7120017D51F AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (15, 1, 7, CAST(0x0000A70800678C63 AS DateTime), 0, N'1', CAST(0x0000A710016BB7AE AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (16, 1, 3, CAST(0x0000A702009A91E5 AS DateTime), 1, N'1', CAST(0x0000A70F007D22A8 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (17, 1, 3, CAST(0x0000A70401423116 AS DateTime), 1, N'1', CAST(0x0000A7090016ABD1 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (18, 2, 8, CAST(0x0000A703001E70D1 AS DateTime), 1, N'2', CAST(0x0000A70C01456F53 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (19, 10, 8, CAST(0x0000A705002560D7 AS DateTime), 0, N'10', CAST(0x0000A70D017FAD77 AS DateTime), 1, 0, NULL)
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy], [HT_DangKy], [Xoa_DangKy], [Khac_DangKy]) VALUES (20, 12, 4, CAST(0x0000A70800784401 AS DateTime), 1, N'12', CAST(0x0000A7140177D3FB AS DateTime), 1, 0, NULL)
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[ID_GV] [bigint] NOT NULL,
	[ID_CQ] [bigint] NULL,
	[MADN_GV] [nvarchar](250) NOT NULL,
	[Ho_GV] [nvarchar](250) NOT NULL,
	[Ten_GV] [nvarchar](250) NOT NULL,
	[MatKhau_GV] [nvarchar](250) NOT NULL,
	[Email_GV] [nvarchar](250) NOT NULL,
	[DienThoai_GV] [nvarchar](20) NOT NULL,
	[DiaChi_GV] [nvarchar](200) NOT NULL,
	[NgaySinh_GV] [date] NOT NULL,
	[GioiTinh_GV] [nvarchar](10) NOT NULL,
	[HT_GV] [bit] NOT NULL,
	[Xoa_GV] [bit] NOT NULL,
	[NguoiTao_GV] [nvarchar](250) NOT NULL,
	[NgayTao_GV] [datetime] NOT NULL,
	[NguoiCN_GV] [nvarchar](250) NULL,
	[NgayCN_GV] [datetime] NULL,
	[Khac_GV] [nvarchar](300) NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY NONCLUSTERED 
(
	[ID_GV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_IDENTIFIER_2_GIAOVIEN] UNIQUE NONCLUSTERED 
(
	[MADN_GV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__GiaoVien__01CEA177286302EC] UNIQUE NONCLUSTERED 
(
	[MADN_GV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__GiaoVien__01CEA1779C993962] UNIQUE NONCLUSTERED 
(
	[MADN_GV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (1, 2, N'GiaoVien11111', N'Lý', N'Sơn', N'9F2D9L66', N'Nguyen_Toan@yahoo.com', N'09177132164', N'Lipowskystraße 9, 25283, Thumby', CAST(0x8AED0A00 AS Date), N'1', 1, 0, N'7', CAST(0x0000A502012FC42C AS DateTime), N'3', CAST(0x0000A7590021E748 AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (2, 3, N'GiaoVien11112', N'Hồ', N'Trí', N'JX7RVZUH', N'Ly.Kha488@gmail.com', N'09089129510', N'Belgradstraße 11c, 94363, Tilleda', CAST(0xC1DE0A00 AS Date), N'0', 1, 0, N'10', CAST(0x0000A69E009B5A2E AS DateTime), N'9', CAST(0x0000A73B00CC5F6A AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (3, 4, N'GiaoVien11113', N'Đinh', N'Huyền', N'81W53JM8', N'Tran_Tri195@gmail.com', N'09059525028', N'Wolfgangstraße 2e, 03368, Garding, Kirchspiel', CAST(0x7C110B00 AS Date), N'1', 0, 0, N'7', CAST(0x0000A667012275F4 AS DateTime), N'1', CAST(0x0000A81101695F12 AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (4, 5, N'GiaoVien11114', N'Tạ', N'Khánh', N'T5F387UM', N'Trinh.YThai1@gmail.com', N'09007774305', N'Aschheimer Straße 2e, 24195, Obersulm', CAST(0x40F20A00 AS Date), N'0', 1, 0, N'7', CAST(0x0000A6E00152FE53 AS DateTime), N'7', CAST(0x0000A716000510ED AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (5, 3, N'GiaoVien11115', N'Ung', N'Đàn', N'6M8LDJXS', N'Nguyen.Huy27@gmail.com', N'09170939660', N'Hiltenspergerstraße 1, 02976, Sierscheid', CAST(0xBA190B00 AS Date), N'1', 0, 0, N'2', CAST(0x0000A6A2002F6B74 AS DateTime), N'16', CAST(0x0000A833008B4409 AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (6, 3, N'GiaoVien11116', N'Trương', N'Hiệp', N'DN4OF4I8', N'Tri@gmail.com', N'09163217522', N'Werneckstraße 1b, 84447, Niedertrebra', CAST(0x82DE0A00 AS Date), N'0', 1, 0, N'11', CAST(0x0000A5F7017A65CD AS DateTime), N'13', CAST(0x0000A85301346553 AS DateTime), N'O215M85WZ6CATNPD5AFT3I')
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (7, 3, N'GiaoVien11117', N'Trần', N'Trinh', N'8QVU5CKR', N'bdlp3530@yahoo.com', N'09067416078', N'Vilshofener Straße 2, 65826, Mohrenmühle', CAST(0xF6FD0A00 AS Date), N'0', 0, 0, N'12', CAST(0x0000A60E00799BA5 AS DateTime), N'19', CAST(0x0000A7AF00C5CA51 AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (8, 4, N'GiaoVien11118', N'Trịnh', N'Thái', N'0E16801R', N'UngTai45@yahoo.com', N'09854600414', N'Clemensstraße 25e, 89631, Tunau', CAST(0x050F0B00 AS Date), N'0', 1, 0, N'2', CAST(0x0000A46E0150128D AS DateTime), N'14', CAST(0x0000A73C011F82C6 AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (9, 5, N'GiaoVien11119', N'Lê', N'Toàn', N'W0VHU2RU', N'zczabv0640@gmail.com', N'09006297132', N'Wurzerstraße 1d, 62277, Hirschstein', CAST(0x91E00A00 AS Date), N'1', 1, 0, N'2', CAST(0x0000A62E00ED9A17 AS DateTime), N'11', CAST(0x0000A7F50068FF43 AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (10, 5, N'GiaoVien11121', N'Nguyễn', N'Liêm', N'EO02XOKO', N'Ly.ASon@gmail.com', N'09195404590', N'Stubenvollstraße 8f, 85291, Abtsbessingen', CAST(0xAE190B00 AS Date), N'0', 0, 0, N'2', CAST(0x0000A573013FB1F2 AS DateTime), N'16', CAST(0x0000A83F0105554D AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (11, 1, N'GiaoVien11122', N'Lê', N'Thúy', N'57G7F0F6', N'Thuy@gmail.com', N'09040348513', N'Reuchlinstraße 29a, 82161, Ahrain', CAST(0x9DEC0A00 AS Date), N'0', 1, 0, N'15', CAST(0x0000A6B700A66E93 AS DateTime), N'12', CAST(0x0000A7E200B5863F AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (12, 3, N'GiaoVien11123', N'Trương', N'Huy', N'35VZ931F', N'Ly_Hiep657@gmail.com', N'09097699117', N'Stollbergstraße 5, 33753, Abbendorf', CAST(0xFDEE0A00 AS Date), N'0', 0, 0, N'5', CAST(0x0000A5EF0173B98F AS DateTime), N'11', CAST(0x0000A80B01088892 AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (13, 4, N'GiaoVien11124', N'Nguyễn', N'Tài', N'04K453GA', N'Đinh_H.Huy852@gmail.com', N'09002325138', N'Ackerstraße 7c, 66960, Ahrenviöl', CAST(0xDEF70A00 AS Date), N'1', 0, 0, N'5', CAST(0x0000A459003B4846 AS DateTime), N'6', CAST(0x0000A77000E54E74 AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (14, 5, N'GiaoVien11125', N'Lý', N'Kha', N'U99407RB', N'Ly_Son848@gmail.com', N'09046000392', N'Adelgundenstraße 28, 22317, Hermannsburg', CAST(0x5EFB0A00 AS Date), N'1', 0, 0, N'3', CAST(0x0000A5E00020E8E4 AS DateTime), N'19', CAST(0x0000A74C00DA52B4 AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (15, 4, N'GiaoVien11126', N'Hồ', N'Thiệu', N'7MQF7BZE', N'Tran.Trinh@yahoo.com', N'09070423454', N'Ebenauer Straße 2b, 34043, Buskow', CAST(0xBAF80A00 AS Date), N'0', 1, 0, N'17', CAST(0x0000A4F2016D8FE3 AS DateTime), N'14', CAST(0x0000A847011F34C6 AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (16, 5, N'GiaoVien11127', N'Trần', N'Khiêm', N'NSI7SAAJ', N'ĐinhKhanh@gmail.com', N'09880897357', N'Wendl-Dietrich-Straße 1b, 33325, Betteldorf', CAST(0x121C0B00 AS Date), N'0', 1, 0, N'3', CAST(0x0000A6B1005AF231 AS DateTime), N'19', CAST(0x0000A73F004AF694 AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (17, 6, N'GiaoVien11128', N'Đinh', N'Khánh', N'QF265O73', N'ĐinhTai67@gmail.com', N'09833032053', N'Aberlestraße 22-29, 89870, Kißlegg', CAST(0xDE120B00 AS Date), N'0', 0, 0, N'3', CAST(0x0000A52B01276BC6 AS DateTime), N'19', CAST(0x0000A6F50136C7BB AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (18, 4, N'GiaoVien11129', N'Trịnh', N'Đàn', N'JST0F5H1', N'Đan377@gmail.com', N'09877915305', N'Unertlstraße 24, 78598, Aidenbach', CAST(0xDCEE0A00 AS Date), N'0', 1, 0, N'16', CAST(0x0000A6B600395D09 AS DateTime), N'10', CAST(0x0000A76101659FC0 AS DateTime), N'M2U8SEY8C2')
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (19, 6, N'GiaoVien11131', N'Ung', N'Sơn', N'14SHCA90', N'Đan@yahoo.com', N'09014088919', N'Beetzstraße 1, 54861, Vienenburg', CAST(0xCDEA0A00 AS Date), N'1', 1, 0, N'13', CAST(0x0000A66D003532C8 AS DateTime), N'17', CAST(0x0000A6F700F77445 AS DateTime), N'RQ2E73G65XV3YGRT734TMT83G8XYUNPY5399DYX0J1H45R29WM94969695H114')
INSERT [dbo].[GiaoVien] ([ID_GV], [ID_CQ], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [Xoa_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (20, 3, N'GiaoVien11132', N'Tạ', N'Trí', N'00BRU3Z8', N'LyQ.Son@gmail.com', N'09001274863', N'Hofstatt 1, 13924, Schrampe', CAST(0xF2DF0A00 AS Date), N'0', 1, 0, N'16', CAST(0x0000A64D00D3DE47 AS DateTime), N'7', CAST(0x0000A84400134EC2 AS DateTime), N'0J1VFXPMBJ')
/****** Object:  Table [dbo].[GiangDay]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangDay](
	[ID_GIANGDAY] [bigint] NOT NULL,
	[ID_GV] [bigint] NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[NgayBatDau_GiangDay] [datetime] NOT NULL,
	[NgayKetThuc_GiangDay] [datetime] NULL,
	[NgayKetThuc_GiangDay_ThucTe] [datetime] NULL,
	[NguoiCN_GiangDay] [nvarchar](250) NULL,
	[NgayCN_GiangDay] [datetime] NULL,
	[HT_GiangDay] [bit] NOT NULL,
	[Xoa_GiangDay] [bit] NOT NULL,
	[Khac_GiangDay] [nvarchar](250) NULL,
 CONSTRAINT [PK_GIANGDAY] PRIMARY KEY NONCLUSTERED 
(
	[ID_GIANGDAY] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DAY_FK] ON [dbo].[GiangDay] 
(
	[ID_GV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DUOCNHANBOI_FK] ON [dbo].[GiangDay] 
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (1, 17, 2, CAST(0x0000A71B0053E85D AS DateTime), CAST(0x0000A767014D2340 AS DateTime), CAST(0x0000A76E0179A80A AS DateTime), N'17', CAST(0x0000A72E01216410 AS DateTime), 1, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (2, 19, 4, CAST(0x0000A71F01582572 AS DateTime), CAST(0x0000A76801860267 AS DateTime), CAST(0x0000A76E01606098 AS DateTime), N'19', CAST(0x0000A74E00C52D49 AS DateTime), 1, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (3, 16, 9, CAST(0x0000A71A010F0950 AS DateTime), CAST(0x0000A767006BD7B0 AS DateTime), CAST(0x0000A76F00CDF638 AS DateTime), N'16', CAST(0x0000A73A00622EC6 AS DateTime), 1, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (4, 9, 8, CAST(0x0000A71B0107C92B AS DateTime), CAST(0x0000A76B000209CA AS DateTime), CAST(0x0000A76E009C5139 AS DateTime), N'9', CAST(0x0000A734017224DA AS DateTime), 1, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (5, 16, 6, CAST(0x0000A71F01739F9D AS DateTime), CAST(0x0000A76600F08115 AS DateTime), CAST(0x0000A7700111C6FC AS DateTime), N'16', CAST(0x0000A757017F76DE AS DateTime), 1, 0, N'1JAES702ASC8Q63SLJ7384K2604')
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (6, 12, 10, CAST(0x0000A71D01521558 AS DateTime), CAST(0x0000A766017A7983 AS DateTime), CAST(0x0000A77000763314 AS DateTime), N'12', CAST(0x0000A756013BE5FB AS DateTime), 0, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (7, 6, 3, CAST(0x0000A7180058F047 AS DateTime), CAST(0x0000A768014DB1F0 AS DateTime), CAST(0x0000A771001E31EF AS DateTime), N'6', CAST(0x0000A74E01759EE4 AS DateTime), 0, 0, N'54')
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (8, 20, 5, CAST(0x0000A71A009D0BDB AS DateTime), CAST(0x0000A76A017B037D AS DateTime), CAST(0x0000A77100D72FB9 AS DateTime), N'20', CAST(0x0000A75700EEAAFF AS DateTime), 1, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (9, 15, 2, CAST(0x0000A71D00CA5681 AS DateTime), CAST(0x0000A76800F569F1 AS DateTime), CAST(0x0000A77001733F19 AS DateTime), N'15', CAST(0x0000A7560033BD3C AS DateTime), 0, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (10, 15, 7, CAST(0x0000A71D00C57ECA AS DateTime), CAST(0x0000A7680170BF3E AS DateTime), CAST(0x0000A7700012E8AA AS DateTime), N'15', CAST(0x0000A75E00CBDF81 AS DateTime), 1, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (11, 8, 2, CAST(0x0000A71E01444CCB AS DateTime), CAST(0x0000A76900C14304 AS DateTime), CAST(0x0000A77000C7AD3F AS DateTime), N'8', CAST(0x0000A75800BDCEE2 AS DateTime), 1, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (12, 5, 6, CAST(0x0000A71C0030B280 AS DateTime), CAST(0x0000A76D004439A3 AS DateTime), CAST(0x0000A77100F0F1FB AS DateTime), N'5', CAST(0x0000A7540029903A AS DateTime), 0, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (13, 1, 1, CAST(0x0000A71A014997F3 AS DateTime), CAST(0x0000A76A00FAFF98 AS DateTime), CAST(0x0000A770006D2B37 AS DateTime), N'1', CAST(0x0000A72700407C9A AS DateTime), 0, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (14, 3, 9, CAST(0x0000A71B007CD631 AS DateTime), CAST(0x0000A76A00C1A70C AS DateTime), CAST(0x0000A76E014C24F7 AS DateTime), N'3', CAST(0x0000A75500C4E18C AS DateTime), 0, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (15, 4, 7, CAST(0x0000A71E001CDE53 AS DateTime), CAST(0x0000A76700A95A23 AS DateTime), CAST(0x0000A76E0111CB82 AS DateTime), N'4', CAST(0x0000A75001693DEB AS DateTime), 1, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (16, 4, 6, CAST(0x0000A71B00DEA296 AS DateTime), CAST(0x0000A76D004C9839 AS DateTime), CAST(0x0000A76E00CE9CE8 AS DateTime), N'4', CAST(0x0000A74600A7419E AS DateTime), 0, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (17, 16, 10, CAST(0x0000A71900B5F149 AS DateTime), CAST(0x0000A769013A657A AS DateTime), CAST(0x0000A76F008D166B AS DateTime), N'16', CAST(0x0000A745011CC2DA AS DateTime), 1, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (18, 2, 4, CAST(0x0000A71A0086502F AS DateTime), CAST(0x0000A7690014AE34 AS DateTime), CAST(0x0000A76F009F4188 AS DateTime), N'2', CAST(0x0000A73901767942 AS DateTime), 0, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (19, 19, 4, CAST(0x0000A71B0112C31A AS DateTime), CAST(0x0000A76601355EB3 AS DateTime), CAST(0x0000A76F0051879F AS DateTime), N'19', CAST(0x0000A732009F8664 AS DateTime), 1, 0, NULL)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [HT_GiangDay], [Xoa_GiangDay], [Khac_GiangDay]) VALUES (20, 19, 2, CAST(0x0000A71A011D24AB AS DateTime), CAST(0x0000A76700DCC038 AS DateTime), CAST(0x0000A7700065DE9A AS DateTime), N'19', CAST(0x0000A758001450A4 AS DateTime), 0, 0, NULL)
/****** Object:  Table [dbo].[CauHoi]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi](
	[ID_CH] [bigint] NOT NULL,
	[ID_LoaiCH] [bigint] NOT NULL,
	[ID_DeMuc] [bigint] NOT NULL,
	[NoiDung_CauHoi] [ntext] NOT NULL,
	[CapDo] [int] NOT NULL,
	[TrangThaiTron_CauHoi] [bit] NOT NULL,
	[HT_CauHoi] [bit] NOT NULL,
	[Xoa_CauHoi] [bit] NOT NULL,
	[Diem_CauHoi] [float] NOT NULL,
	[NguoiTao_CauHoi] [nvarchar](250) NOT NULL,
	[NgayTao_CauHoi] [datetime] NOT NULL,
	[NguoiCN_CauHoi] [nvarchar](250) NULL,
	[NgayCN_CauHoi] [datetime] NULL,
	[Khac_CauHoi] [nvarchar](250) NULL,
 CONSTRAINT [PK_CAUHOI] PRIMARY KEY NONCLUSTERED 
(
	[ID_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CO_FK] ON [dbo].[CauHoi] 
(
	[ID_DeMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [THUOCLOAI_FK] ON [dbo].[CauHoi] 
(
	[ID_LoaiCH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (1, 2, 13, N'Phản ứng hóa học của các hợp chất hữu cơ có đặc điểm là:', 2, 1, 1, 0, 0.2, N'14', CAST(0x0000A7790079DDEA AS DateTime), N'13', CAST(0x0000A780006DBD6B AS DateTime), N'7782C8I43ZWS95AOEX9BT4SCUB3L183RVH4S728N9')
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (2, 2, 3, N'Về dân số, so với các quốc gia trên thế giới, nước ta là nước', 2, 1, 1, 0, 0.2, N'20', CAST(0x0000A77A014E9752 AS DateTime), N'3', CAST(0x0000A78100C0FB7F AS DateTime), N'C8Q0U4MC7NKW0YQV0U43GV82IUM')
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (3, 2, 18, N'Một khung dây dẫn phẳng dẹt hình chữ nhật có 500 vòng dây, diện tích mỗi vòng 54 cm2 . Khung dây quay đều quanh một trục đối xứng (thuộc mặt phẳng của khung), trong từ trường đều có vector cảm ứng từ vuông góc với trục quay và có độ lớn B = 0,2T . Tính từ thông cực đại qua khung dây. Để suất điện động cảm ứng xuất hiện trong khung dây có tần số 50Hz thì khung dây phải quay với tốc độ bao nhiêu vòng/phút?', 4, 1, 1, 0, 0.4, N'1', CAST(0x0000A77D0016F3B6 AS DateTime), N'18', CAST(0x0000A7830059C9E5 AS DateTime), N'88XI4E5CAG66579F0DLO0')
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (4, 2, 2, N'Những nước nào tham gia Hội nghị Ianta ?', 2, 1, 1, 0, 0.2, N'18', CAST(0x0000A7770000903C AS DateTime), N'2', CAST(0x0000A78100CAC977 AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (5, 2, 20, N'Trong 1 quần thể giao phối, nhận định nào dưới đây là đúng?', 3, 1, 1, 0, 0.3, N'14', CAST(0x0000A77A00D39800 AS DateTime), N'20', CAST(0x0000A77F0045ADBB AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (6, 2, 16, N'Một người quan sát một chiếc phao trên mặt biển thấy phao nhấp nhô lên xuống tại chỗ 16 lần trong 30 giây và khoảng cách giữa 5 đỉnh sóng liên tiếp nhau bằng 24m. Tốc độ truyền sóng trên mặt biển là', 3, 1, 1, 0, 0.3, N'14', CAST(0x0000A778004B3A26 AS DateTime), N'16', CAST(0x0000A784012D8AA7 AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (7, 2, 10, N'Pháp luật do Nhà nước ban hành và đảm bảo thực hiện', 1, 1, 1, 0, 0.1, N'3', CAST(0x0000A77A0085ECC0 AS DateTime), N'10', CAST(0x0000A781014FAB76 AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (8, 2, 8, N'Khi đề xuất giả thuyết mỗi tính trạng do một một cặp nhân tố di truyền quy định, các nhân tố di truyền trong tế bào không hòa trộn với nhau và phân li đồng đều về các giao tử. Menđen kiểm tra giả thuyết của mình bằng cách nào?', 1, 1, 1, 0, 0.1, N'9', CAST(0x0000A77B016D7F36 AS DateTime), N'8', CAST(0x0000A78200934C74 AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (9, 2, 9, N'Một vật dao động điều hòa với phương trình x = 4cos(4πt - π/12 ) cm. Số dao động thực hiện trong 1s là', 2, 1, 1, 0, 0.2, N'12', CAST(0x0000A77700352DC7 AS DateTime), N'9', CAST(0x0000A780004A88CC AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (10, 2, 7, N'Sự hoạt động đồng thời của nhiều riboxom trên cùng một phân tử mARN có vai trò', 2, 1, 1, 0, 0.2, N'20', CAST(0x0000A77A011E626F AS DateTime), N'7', CAST(0x0000A77F0070B747 AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (11, 2, 9, N'Một vật dao động điều hòa với phương trình x = 4cos(4πt + π/6), x tính bằng cm, t tính bằng s. Chu kỳ dao động của vật là', 3, 1, 1, 0, 0.3, N'8', CAST(0x0000A77D00F22B8D AS DateTime), N'9', CAST(0x0000A78000AC6296 AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (12, 2, 3, N'Hơn 3 triệu người Việt hiện đang sinh sống ở nước ngoài, tập chung nhiều nhất ở', 2, 1, 1, 0, 0.2, N'4', CAST(0x0000A7790030A7D0 AS DateTime), N'3', CAST(0x0000A7800020EBAE AS DateTime), N'82DY04B19TXH96W4A')
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (13, 2, 7, N'Ở cà độc dược có 12 cặp NST tương đồng trong tế bào sinh dưỡng. Có nhiều nhất bao nhiêu trường hợp đột biến dạng thể một đơn?', 1, 1, 1, 0, 0.1, N'1', CAST(0x0000A77D00B298C6 AS DateTime), N'7', CAST(0x0000A77F01168623 AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (14, 2, 1, N'Dạng địa hình chiếm diện tích lớn nhất trên lãnh thổ nước ta là:', 1, 1, 1, 0, 0.1, N'17', CAST(0x0000A7790003379E AS DateTime), N'1', CAST(0x0000A7810147DE7E AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (15, 2, 20, N'Ở quần thể của 1 loài lưỡng bội, xét 1 gen nằm trên NST thường có 9 alen. Trong điều kiện không có đột biến, trong quần thể sẽ có tối đa bao nhiêu loại kiểu gen đồng hợp và gen nói trên?', 3, 1, 1, 0, 0.3, N'19', CAST(0x0000A7770177E48A AS DateTime), N'20', CAST(0x0000A781008BD277 AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (16, 2, 9, N'Một vật dao động điều hoà có vận tốc thay đổi theo qui luật: v = 10πcos(2πt + π/6) cm/s. Thời điểm vật đi qua vị trí x = -5cm là:', 5, 1, 1, 0, 0.5, N'13', CAST(0x0000A77C011539DA AS DateTime), N'9', CAST(0x0000A77F00F525AE AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (17, 2, 2, N'Tình hình Liên Xô từ cuối thập niên 70 đến đầu những năm 80 là :', 2, 1, 1, 0, 0.2, N'6', CAST(0x0000A77C010EBC16 AS DateTime), N'2', CAST(0x0000A783007BAE66 AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (18, 2, 14, N'Tìm giá trị lớn nhất của hàm số f(x)=x<sup>2</sup> e<sup>x</sup> trên đoạn [-1;1]', 3, 1, 1, 0, 0.3, N'8', CAST(0x0000A779009A3C3E AS DateTime), N'14', CAST(0x0000A78301724961 AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (19, 2, 19, N'Từ năm 1990 đến năm 2005, trong ngành trồng trọt hai nhóm cây trồng có tốc độ tăng trưởng giá trị sản xuất cao nhất là ', 3, 1, 1, 0, 0.3, N'3', CAST(0x0000A778010E6AFE AS DateTime), N'19', CAST(0x0000A78100913797 AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Xoa_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (20, 2, 4, N'pH của hỗn hợp dung dịch HCl 0,005M và H2SO4 0,0025M là:', 2, 1, 1, 0, 0.2, N'13', CAST(0x0000A77E00AE4B33 AS DateTime), N'4', CAST(0x0000A78300FAB9AB AS DateTime), NULL)
/****** Object:  Table [dbo].[BaiThi]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiThi](
	[ID_BAITHI] [bigint] NOT NULL,
	[ID_DE] [bigint] NOT NULL,
	[ID_DANGKY] [bigint] NOT NULL,
	[Ma_BaiThi] [nvarchar](250) NOT NULL,
	[NgayThi] [datetime] NOT NULL,
	[ThoiGianConLai_BaiThi] [int] NULL,
	[HT_BaiThi] [bit] NOT NULL,
	[Xoa_BaiThi] [bit] NOT NULL,
	[ThuTu_CauHoi] [nvarchar](250) NULL,
	[Khac_BaiThi] [nvarchar](250) NULL,
 CONSTRAINT [PK_BAITHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_BAITHI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_IDENTIFIER_2_BAITHI] UNIQUE NONCLUSTERED 
(
	[Ma_BaiThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__BaiThi__46FC202831EC6D26] UNIQUE NONCLUSTERED 
(
	[Ma_BaiThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_13_FK] ON [dbo].[BaiThi] 
(
	[ID_DANGKY] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [THUOC_FK] ON [dbo].[BaiThi] 
(
	[ID_DE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [HT_BaiThi], [Xoa_BaiThi], [ThuTu_CauHoi], [Khac_BaiThi]) VALUES (1, 19, 2, N'BaiThi11111', CAST(0x0000A78B00BAE331 AS DateTime), 145, 1, 0, N'5', N'WCC04WA7S7')
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [HT_BaiThi], [Xoa_BaiThi], [ThuTu_CauHoi], [Khac_BaiThi]) VALUES (2, 14, 13, N'BaiThi11112', CAST(0x0000A78D00113949 AS DateTime), 50, 1, 0, N'8', N'0')
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [HT_BaiThi], [Xoa_BaiThi], [ThuTu_CauHoi], [Khac_BaiThi]) VALUES (3, 6, 11, N'BaiThi11113', CAST(0x0000A78C006FEF82 AS DateTime), 31, 1, 0, N'1', N'J6O39DFL85')
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [HT_BaiThi], [Xoa_BaiThi], [ThuTu_CauHoi], [Khac_BaiThi]) VALUES (4, 12, 11, N'BaiThi11114', CAST(0x0000A78A0156B1FC AS DateTime), 149, 0, 0, N'5', N'PU7')
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [HT_BaiThi], [Xoa_BaiThi], [ThuTu_CauHoi], [Khac_BaiThi]) VALUES (5, 13, 12, N'BaiThi11115', CAST(0x0000A79000A05A2F AS DateTime), 32, 0, 0, N'3', N'7823H9ANM99OGB57T081J041U61')
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [HT_BaiThi], [Xoa_BaiThi], [ThuTu_CauHoi], [Khac_BaiThi]) VALUES (6, 19, 9, N'BaiThi11116', CAST(0x0000A78C0099833D AS DateTime), 73, 1, 0, N'10', N'102E0EV1F47A95B5BNIL10U9M517OUT7P4O59X7M')
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [HT_BaiThi], [Xoa_BaiThi], [ThuTu_CauHoi], [Khac_BaiThi]) VALUES (7, 1, 8, N'BaiThi11117', CAST(0x0000A78D016D7207 AS DateTime), 99, 1, 0, N'9', N'2H321E6XU287N8G8H7379871K9B7192931C56ZADG818DQ16QY1OU1GE6YL0K5B08C75Z7903Q1P3RMQK')
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [HT_BaiThi], [Xoa_BaiThi], [ThuTu_CauHoi], [Khac_BaiThi]) VALUES (8, 10, 10, N'BaiThi11118', CAST(0x0000A78D00AA80F5 AS DateTime), 63, 0, 0, N'6', N'1N721N62J')
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [HT_BaiThi], [Xoa_BaiThi], [ThuTu_CauHoi], [Khac_BaiThi]) VALUES (9, 6, 3, N'BaiThi11119', CAST(0x0000A78C016DD099 AS DateTime), 133, 1, 0, N'2', N'R011H')
/****** Object:  Table [dbo].[LichSu_CH]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSu_CH](
	[ID_LS_CH] [bigint] NOT NULL,
	[ID_CH] [bigint] NOT NULL,
	[MoTa_HanhDong] [nvarchar](10) NOT NULL,
	[NoiDungCN_LS_CH] [ntext] NOT NULL,
	[NoiDung_Cu_LS_CH] [ntext] NOT NULL,
	[NoiDung_Moi_LS_CH] [ntext] NULL,
	[DiemCH_Cu] [float] NOT NULL,
	[DiemCH_Moi] [float] NULL,
	[CapDoCH_Cu] [int] NOT NULL,
	[CapDoCH_Moi] [int] NULL,
	[NguoiCN_LS_CH] [nvarchar](250) NOT NULL,
	[NgayCN_LS_CH] [datetime] NOT NULL,
	[HT_LS_CH] [bit] NOT NULL,
	[Xoa_LS_CH] [bit] NOT NULL,
	[Khac_LS_CH] [nvarchar](250) NULL,
 CONSTRAINT [PK_LICHSU_CH] PRIMARY KEY NONCLUSTERED 
(
	[ID_LS_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CAPNHAT_CH_FK] ON [dbo].[LichSu_CH] 
(
	[ID_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH], [HT_LS_CH], [Xoa_LS_CH], [Khac_LS_CH]) VALUES (1, 18, N'Sữa', N'cập nhật trạng thái trộn', N'06018', N'41707', 0.48, 0.27, 4, 5, N'18', CAST(0x0000A784012D8AA7 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH], [HT_LS_CH], [Xoa_LS_CH], [Khac_LS_CH]) VALUES (2, 18, N'Thêm', N'thêm câu hỏi', N'60511', N'18757', 0.15, 0.43, 1, 8, N'18', CAST(0x0000A78100913797 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH], [HT_LS_CH], [Xoa_LS_CH], [Khac_LS_CH]) VALUES (3, 5, N'Sữa', N'cập nhật nội dung', N'32059', N'25924', 0.36, 0.23, 7, 8, N'5', CAST(0x0000A781008BD277 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH], [HT_LS_CH], [Xoa_LS_CH], [Khac_LS_CH]) VALUES (4, 20, N'Sữa', N'cập nhật điểm', N'06828', N'67587', 0.16, 0.5, 0, 5, N'20', CAST(0x0000A780004A88CC AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH], [HT_LS_CH], [Xoa_LS_CH], [Khac_LS_CH]) VALUES (5, 4, N'Sữa', N'cập nhật cấp độ', N'84296', N'92057', 0.35, 0.48, 7, 0, N'4', CAST(0x0000A780004A88CC AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH], [HT_LS_CH], [Xoa_LS_CH], [Khac_LS_CH]) VALUES (6, 10, N'xóa', N'đổi trạng thái sang false', N'25557', N'19745', 0.39, 0.42, 1, 6, N'10', CAST(0x0000A783007BAE66 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH], [HT_LS_CH], [Xoa_LS_CH], [Khac_LS_CH]) VALUES (7, 4, N'xóa', N'xóa hoàn toàn', N'82181', N'20109', 0.47, 0.31, 8, 2, N'4', CAST(0x0000A77F01168623 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH], [HT_LS_CH], [Xoa_LS_CH], [Khac_LS_CH]) VALUES (8, 7, N'99P404', N'63634', N'74068', N'97537', 0.39, 0.45, 6, 4, N'7', CAST(0x0000A78200934C74 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH], [HT_LS_CH], [Xoa_LS_CH], [Khac_LS_CH]) VALUES (9, 6, N'B3O0YJ', N'37995', N'95311', N'95441', 0.26, 0.5, 8, 7, N'6', CAST(0x0000A77F0045ADBB AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH], [HT_LS_CH], [Xoa_LS_CH], [Khac_LS_CH]) VALUES (10, 16, N'JC', N'04581', N'81385', N'65326', 0.19, 0.36, 7, 1, N'16', CAST(0x0000A780006DBD6B AS DateTime), 1, 0, NULL)
/****** Object:  Table [dbo].[LuaChon]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuaChon](
	[ID_LUACHON] [bigint] NOT NULL,
	[ID_CH] [bigint] NOT NULL,
	[MaLuaChon] [nvarchar](100) NOT NULL,
	[NoiDung_LuaChon] [ntext] NOT NULL,
	[DapAn] [bit] NOT NULL,
	[HT_LuaChon] [bit] NOT NULL,
	[Xoa_LuaChon] [bit] NOT NULL,
	[NguoiTao_LuaChon] [nvarchar](250) NOT NULL,
	[NgayTao_LuaChon] [datetime] NOT NULL,
	[NguoiCN_LuaChon] [nvarchar](250) NULL,
	[NgayCN_LuaChon] [datetime] NULL,
	[Khac_LuaChon] [nvarchar](250) NULL,
 CONSTRAINT [PK_LUACHON] PRIMARY KEY NONCLUSTERED 
(
	[ID_LUACHON] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__LuaChon__99B0F9F9398D8EEE] UNIQUE NONCLUSTERED 
(
	[MaLuaChon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SOHUU_FK] ON [dbo].[LuaChon] 
(
	[ID_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (1, 1, N'1_1', N'Thường xảy ra rất nhanh và cho một sản phẩm duy nhất.', 0, 1, 0, N'14', CAST(0x0000A77A00D39800 AS DateTime), N'9', CAST(0x0000A780004A88CC AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (2, 1, N'1_2', N'Thường xảy ra chậm, không hoàn toàn, không theo một hướng nhất định.', 1, 1, 0, N'14', CAST(0x0000A778004B3A26 AS DateTime), N'7', CAST(0x0000A77F01168623 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (3, 1, N'1_3', N'Thường xảy ra rất nhanh, không hoàn toàn, không theo một hướng nhất định.', 0, 1, 0, N'14', CAST(0x0000A778004B3A26 AS DateTime), N'19', CAST(0x0000A78100913797 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (4, 1, N'1_4', N'Thường xảy ra rất chậm, nhưng hoàn toàn, không theo một hướng xác định.', 0, 1, 0, N'18', CAST(0x0000A7770000903C AS DateTime), N'9', CAST(0x0000A78000AC6296 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (5, 2, N'2_1', N'Đông dân ( đứng thứ 13 trong số 200 quốc gia và vùng lãnh thổ)', 1, 1, 0, N'12', CAST(0x0000A77700352DC7 AS DateTime), N'3', CAST(0x0000A7800020EBAE AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (6, 2, N'2_2', N'Khá đông dân ( đứng thứ 30 trong số 200 quốc gia và vùng lãnh thổ)', 0, 1, 0, N'20', CAST(0x0000A77A014E9752 AS DateTime), N'3', CAST(0x0000A7800020EBAE AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (7, 2, N'2_3', N'Trung bình ( đứng thứ 90 trong số 200 quốc gia và vùng lãnh thổ)', 0, 1, 0, N'13', CAST(0x0000A77C011539DA AS DateTime), N'19', CAST(0x0000A78100913797 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (8, 2, N'2_4', N'	Ít dân ( đứng thứ 130 trong số 200 quốc gia và vùng lãnh thổ)', 0, 1, 0, N'3', CAST(0x0000A77A0085ECC0 AS DateTime), N'1', CAST(0x0000A7810147DE7E AS DateTime), N'40323E99I6')
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (9, 3, N'3_1', N'3000 vòng/phút. ', 1, 1, 0, N'8', CAST(0x0000A77D00F22B8D AS DateTime), N'2', CAST(0x0000A78100CAC977 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (10, 3, N'3_2', N'1500 vòng/phút.', 0, 1, 0, N'14', CAST(0x0000A778004B3A26 AS DateTime), N'3', CAST(0x0000A7800020EBAE AS DateTime), N'M43CG876V6T0QI5FJON6XG72N29I4Q623A264JQJIN')
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (11, 3, N'3_3', N'1000 vòng/phút.', 0, 1, 0, N'13', CAST(0x0000A77C011539DA AS DateTime), N'7', CAST(0x0000A77F01168623 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (12, 3, N'3_4', N'2000 vòng/phút.', 0, 1, 0, N'1', CAST(0x0000A77D00B298C6 AS DateTime), N'9', CAST(0x0000A77F00F525AE AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (13, 4, N'4_1', N'Anh - Pháp - Mĩ.', 0, 1, 0, N'19', CAST(0x0000A7770177E48A AS DateTime), N'3', CAST(0x0000A7800020EBAE AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (14, 4, N'4_2', N'Anh - Mĩ - Liẽn Xô.', 1, 1, 0, N'1', CAST(0x0000A77D0016F3B6 AS DateTime), N'2', CAST(0x0000A78100CAC977 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (15, 4, N'4_3', N'Anh - Pháp - Đức.', 0, 1, 0, N'13', CAST(0x0000A77E00AE4B33 AS DateTime), N'1', CAST(0x0000A7810147DE7E AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (16, 4, N'4_4', N'Mĩ - Liên Xô - Trung Quốc.', 0, 1, 0, N'3', CAST(0x0000A77A0085ECC0 AS DateTime), N'18', CAST(0x0000A7830059C9E5 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (17, 5, N'5_1', N'Tần số tương đối của các alen trong 1gen nào đó là không đặc trưng cho từng quần thể.', 0, 1, 0, N'8', CAST(0x0000A779009A3C3E AS DateTime), N'7', CAST(0x0000A77F01168623 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (18, 5, N'5_2', N'Tần số tương đối của các alen trong 1 kiểu gen nào đó trong quần thể thay đổi qua các thế hệ.', 0, 1, 0, N'20', CAST(0x0000A77A011E626F AS DateTime), N'9', CAST(0x0000A77F00F525AE AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (19, 5, N'5_3', N'Tần số tương đối của các alen trong 1gen nào đó là đặc trưng cho từng quần thể.', 0, 1, 0, N'19', CAST(0x0000A7770177E48A AS DateTime), N'9', CAST(0x0000A78000AC6296 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (20, 5, N'5_4', N'Tần số tương đối của các kiểu gen có tính đặc trưng cho từng quần thể.', 1, 1, 0, N'20', CAST(0x0000A77A011E626F AS DateTime), N'2', CAST(0x0000A783007BAE66 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (21, 6, N'6_1', N'v = 4,5m/s   ', 0, 1, 0, N'3', CAST(0x0000A778010E6AFE AS DateTime), N'9', CAST(0x0000A780004A88CC AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (22, 6, N'6_2', N'v = 12m/s. ', 0, 1, 0, N'8', CAST(0x0000A779009A3C3E AS DateTime), N'16', CAST(0x0000A784012D8AA7 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (23, 6, N'6_3', N'v = 3m/s ', 1, 1, 0, N'3', CAST(0x0000A77A0085ECC0 AS DateTime), N'20', CAST(0x0000A77F0045ADBB AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (24, 6, N'6_4', N'v = 2,25 m/s', 0, 1, 0, N'13', CAST(0x0000A77C011539DA AS DateTime), N'20', CAST(0x0000A781008BD277 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (25, 7, N'7_1', N'Bằng quyền lực Nhà nước.', 1, 1, 0, N'19', CAST(0x0000A7770177E48A AS DateTime), N'20', CAST(0x0000A77F0045ADBB AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (26, 7, N'7_2', N'Bằng chủ trương của Nhà nước.', 0, 1, 0, N'14', CAST(0x0000A778004B3A26 AS DateTime), N'9', CAST(0x0000A77F00F525AE AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (27, 7, N'7_3', N'Bằng chính sách của Nhà nước.', 0, 1, 0, N'6', CAST(0x0000A77C010EBC16 AS DateTime), N'3', CAST(0x0000A78100C0FB7F AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (28, 7, N'7_4', N'Bằng uy tín của Nhà nước.', 0, 1, 0, N'13', CAST(0x0000A77E00AE4B33 AS DateTime), N'9', CAST(0x0000A780004A88CC AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (29, 8, N'8_1', N'Cho F1 lai phân tích', 1, 1, 0, N'20', CAST(0x0000A77A011E626F AS DateTime), N'20', CAST(0x0000A77F0045ADBB AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (30, 8, N'8_2', N'Cho F2 tự thụ phấn', 0, 1, 0, N'13', CAST(0x0000A77E00AE4B33 AS DateTime), N'13', CAST(0x0000A780006DBD6B AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (31, 8, N'8_3', N'Cho F1 giao phấn với nhau', 0, 1, 0, N'8', CAST(0x0000A77D00F22B8D AS DateTime), N'7', CAST(0x0000A77F01168623 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (32, 8, N'8_4', N'Cho F1 tự thụ phấn', 0, 1, 0, N'4', CAST(0x0000A7790030A7D0 AS DateTime), N'2', CAST(0x0000A78100CAC977 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (33, 9, N'9_1', N'1', 0, 1, 0, N'20', CAST(0x0000A77A011E626F AS DateTime), N'20', CAST(0x0000A781008BD277 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (34, 9, N'9_2', N'4', 0, 1, 0, N'8', CAST(0x0000A77D00F22B8D AS DateTime), N'19', CAST(0x0000A78100913797 AS DateTime), N'KLGXQ813F95R06I97VQT7LTA48O3Y5LY2Z')
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (35, 9, N'9_3', N'3', 0, 1, 0, N'9', CAST(0x0000A77B016D7F36 AS DateTime), N'7', CAST(0x0000A77F01168623 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (36, 9, N'9_4', N'2', 1, 1, 0, N'12', CAST(0x0000A77700352DC7 AS DateTime), N'1', CAST(0x0000A7810147DE7E AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (37, 10, N'10_1', N'làm tăng năng suất tổng hợp protein cùng loại ', 1, 1, 0, N'14', CAST(0x0000A778004B3A26 AS DateTime), N'2', CAST(0x0000A783007BAE66 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (38, 10, N'10_2', N'đảm bảo cho quá trình dịch mã diễn ra chính xác', 0, 1, 0, N'18', CAST(0x0000A7770000903C AS DateTime), N'8', CAST(0x0000A78200934C74 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (39, 10, N'10_3', N'đảm bảo cho quá trình dịch mã diễn ra liên tục', 0, 1, 0, N'6', CAST(0x0000A77C010EBC16 AS DateTime), N'8', CAST(0x0000A78200934C74 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (40, 10, N'10_4', N'làm tăng năng suất tổng hợp protein khác loại', 0, 1, 0, N'20', CAST(0x0000A77A011E626F AS DateTime), N'16', CAST(0x0000A784012D8AA7 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (41, 11, N'11_1', N'1/8 s   ', 0, 1, 0, N'14', CAST(0x0000A7790079DDEA AS DateTime), N'14', CAST(0x0000A78301724961 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (42, 11, N'11_2', N'4 s ', 0, 1, 0, N'13', CAST(0x0000A77C011539DA AS DateTime), N'19', CAST(0x0000A78100913797 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (43, 11, N'11_3', N'1/4 s  ', 0, 1, 0, N'13', CAST(0x0000A77E00AE4B33 AS DateTime), N'3', CAST(0x0000A78100C0FB7F AS DateTime), N'8AH3912L300JB29X0811K8KHMOJ2YR5Y05KA493295V5A34U599SZ40Q3Z7')
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (44, 11, N'11_4', N'1/2 s', 1, 1, 0, N'6', CAST(0x0000A77C010EBC16 AS DateTime), N'13', CAST(0x0000A780006DBD6B AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (45, 12, N'12_1', N'Liên bang Nga ', 0, 1, 0, N'20', CAST(0x0000A77A014E9752 AS DateTime), N'10', CAST(0x0000A781014FAB76 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (46, 12, N'12_2', N'Hoa Kì, Ôxtrâylia', 1, 1, 0, N'12', CAST(0x0000A77700352DC7 AS DateTime), N'7', CAST(0x0000A77F01168623 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (47, 12, N'12_3', N'Các nước Đong Âu', 0, 1, 0, N'14', CAST(0x0000A77A00D39800 AS DateTime), N'2', CAST(0x0000A78100CAC977 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (48, 12, N'12_4', N'Anh và một số nước Tây Âu khác', 0, 1, 0, N'17', CAST(0x0000A7790003379E AS DateTime), N'20', CAST(0x0000A77F0045ADBB AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (49, 13, N'13_1', N'12', 1, 1, 0, N'17', CAST(0x0000A7790003379E AS DateTime), N'8', CAST(0x0000A78200934C74 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (50, 13, N'13_2', N'24', 0, 1, 0, N'20', CAST(0x0000A77A011E626F AS DateTime), N'3', CAST(0x0000A78100C0FB7F AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (51, 13, N'13_3', N'15', 0, 1, 0, N'20', CAST(0x0000A77A014E9752 AS DateTime), N'19', CAST(0x0000A78100913797 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (52, 13, N'13_4', N'13', 0, 1, 0, N'20', CAST(0x0000A77A011E626F AS DateTime), N'7', CAST(0x0000A77F01168623 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (53, 14, N'14_1', N'Đồng bằng', 0, 1, 0, N'3', CAST(0x0000A778010E6AFE AS DateTime), N'9', CAST(0x0000A780004A88CC AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (54, 14, N'14_2', N'Đồi núi thấp', 1, 1, 0, N'1', CAST(0x0000A77D0016F3B6 AS DateTime), N'7', CAST(0x0000A77F0070B747 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (55, 14, N'14_3', N'Núi trung bình', 0, 1, 0, N'20', CAST(0x0000A77A011E626F AS DateTime), N'19', CAST(0x0000A78100913797 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (56, 14, N'14_4', N'Núi cao', 0, 1, 0, N'18', CAST(0x0000A7770000903C AS DateTime), N'7', CAST(0x0000A77F01168623 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (57, 15, N'15_1', N'9 kiểu gen', 1, 1, 0, N'14', CAST(0x0000A77A00D39800 AS DateTime), N'18', CAST(0x0000A7830059C9E5 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (58, 15, N'15_2', N'18 kiểu gen', 0, 1, 0, N'13', CAST(0x0000A77C011539DA AS DateTime), N'9', CAST(0x0000A780004A88CC AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (59, 15, N'15_3', N'45 kiểu gen', 0, 1, 0, N'1', CAST(0x0000A77D0016F3B6 AS DateTime), N'8', CAST(0x0000A78200934C74 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (60, 15, N'15_4', N'36 kiểu gen', 0, 1, 0, N'3', CAST(0x0000A778010E6AFE AS DateTime), N'13', CAST(0x0000A780006DBD6B AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (61, 16, N'16_1', N'3/4 s	  ', 0, 1, 0, N'9', CAST(0x0000A77B016D7F36 AS DateTime), N'1', CAST(0x0000A7810147DE7E AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (62, 16, N'16_2', N'2/3 s	 ', 1, 1, 0, N'6', CAST(0x0000A77C010EBC16 AS DateTime), N'7', CAST(0x0000A77F0070B747 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (63, 16, N'16_3', N'1/3 s', 0, 1, 0, N'14', CAST(0x0000A77A00D39800 AS DateTime), N'2', CAST(0x0000A783007BAE66 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (64, 16, N'16_4', N'1/6 s', 0, 1, 0, N'12', CAST(0x0000A77700352DC7 AS DateTime), N'13', CAST(0x0000A780006DBD6B AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (65, 17, N'17_1', N'Kinh tế phát triển, chính trị ổn định, khối đoàn kết liên bang được giữ vững.', 0, 1, 0, N'17', CAST(0x0000A7790003379E AS DateTime), N'3', CAST(0x0000A7800020EBAE AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (66, 17, N'17_2', N'Kinh tế tiếp tục tăng trưởng cao hơn trước, tuy nhiên chính trị có những diễn biến phức tạp, bất ổn.', 1, 1, 0, N'14', CAST(0x0000A7790079DDEA AS DateTime), N'4', CAST(0x0000A78300FAB9AB AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (67, 17, N'17_3', N'Tuy kinh tế có nhũng dấu hiệu suy thoái, nhưng chính trị vẫn ổn định, nhân dân vẫn tuyết đối tin tưởng vào sự lãnh đạo của Đảng Cộng sản Liên Xô, vào chính quyền Xô - Viết.', 0, 1, 0, N'13', CAST(0x0000A77E00AE4B33 AS DateTime), N'9', CAST(0x0000A78000AC6296 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (68, 17, N'17_4', N'Đất nước lâm vào tình trạng trì trệ, kinh tế ngày càng suy thoái, chính trị có những diền biến phức tạp, xuất hiện tư tưởng và các nhóm đối lập chống lại Đảng Cộng sản và Nhà nước Xô Viết.', 0, 1, 0, N'20', CAST(0x0000A77A011E626F AS DateTime), N'18', CAST(0x0000A7830059C9E5 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (69, 18, N'18_1', N'2e   ', 0, 1, 0, N'3', CAST(0x0000A778010E6AFE AS DateTime), N'18', CAST(0x0000A7830059C9E5 AS DateTime), N'6R01146DU4II4P5058XV03KQ26CE5ZE7595MZ96WJ8SDQH15QF17H9W5ECF27E8365H2NW93')
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (70, 18, N'18_2', N'1/e', 0, 1, 0, N'4', CAST(0x0000A7790030A7D0 AS DateTime), N'3', CAST(0x0000A78100C0FB7F AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (71, 18, N'18_3', N'e ', 1, 1, 0, N'8', CAST(0x0000A77D00F22B8D AS DateTime), N'2', CAST(0x0000A783007BAE66 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (72, 18, N'18_4', N'0', 0, 1, 0, N'18', CAST(0x0000A7770000903C AS DateTime), N'1', CAST(0x0000A7810147DE7E AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (73, 19, N'19_1', N'Cây công nghiệp, cây rau đậu', 1, 1, 0, N'3', CAST(0x0000A77A0085ECC0 AS DateTime), N'8', CAST(0x0000A78200934C74 AS DateTime), N'3690')
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (74, 19, N'19_2', N'Cây lương thực, cây công nghiệp', 0, 1, 0, N'14', CAST(0x0000A7790079DDEA AS DateTime), N'19', CAST(0x0000A78100913797 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (75, 19, N'19_3', N'Cây rau đạu, cây ăn quả', 0, 1, 0, N'14', CAST(0x0000A7790079DDEA AS DateTime), N'2', CAST(0x0000A783007BAE66 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (76, 19, N'19_4', N'Cây lương thực, cây ăn quả', 0, 1, 0, N'3', CAST(0x0000A77A0085ECC0 AS DateTime), N'2', CAST(0x0000A783007BAE66 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (77, 20, N'20_1', N'2', 0, 1, 0, N'17', CAST(0x0000A7790003379E AS DateTime), N'9', CAST(0x0000A780004A88CC AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (78, 20, N'20_2', N'3', 1, 1, 0, N'8', CAST(0x0000A779009A3C3E AS DateTime), N'14', CAST(0x0000A78301724961 AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (79, 20, N'20_3', N'4', 0, 1, 0, N'4', CAST(0x0000A7790030A7D0 AS DateTime), N'4', CAST(0x0000A78300FAB9AB AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [MaLuaChon], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [Xoa_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (80, 20, N'20_4', N'12', 0, 1, 0, N'18', CAST(0x0000A7770000903C AS DateTime), N'9', CAST(0x0000A780004A88CC AS DateTime), NULL)
/****** Object:  Table [dbo].[ChiTiet_DeThi]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_DeThi](
	[ID_CTDT] [bigint] NOT NULL,
	[ID_DE] [bigint] NOT NULL,
	[ID_CH] [bigint] NOT NULL,
	[ThuTu_DeThi] [int] NOT NULL,
	[HT_ChiTiet_DT] [bit] NOT NULL,
	[Xoa_CTDT] [bit] NOT NULL,
	[NguoiTao_CTDT] [nvarchar](250) NULL,
	[NgayTao_CTDT] [datetime] NULL,
	[NguoiCN_CTDT] [nvarchar](250) NULL,
	[NgayCN_CTDT] [datetime] NULL,
	[Khac_ChiTiet_DeThi] [nvarchar](250) NULL,
 CONSTRAINT [PK_CHITIET_DETHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_CTDT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThuTu_DeThi], [HT_ChiTiet_DT], [Xoa_CTDT], [NguoiTao_CTDT], [NgayTao_CTDT], [NguoiCN_CTDT], [NgayCN_CTDT], [Khac_ChiTiet_DeThi]) VALUES (1, 3, 3, 1, 1, 0, N'5', CAST(0x0000A78901280D69 AS DateTime), N'2', CAST(0x0000A77801404060 AS DateTime), N'1ZP9U3')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThuTu_DeThi], [HT_ChiTiet_DT], [Xoa_CTDT], [NguoiTao_CTDT], [NgayTao_CTDT], [NguoiCN_CTDT], [NgayCN_CTDT], [Khac_ChiTiet_DeThi]) VALUES (2, 3, 2, 2, 1, 0, N'1', CAST(0x0000A72D00226C32 AS DateTime), N'2', CAST(0x0000A77A00787CEC AS DateTime), N'B3F1R8JR9K8X09X0623723033L629L3W63C26G8ZY369VZ66VZSF0012P')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThuTu_DeThi], [HT_ChiTiet_DT], [Xoa_CTDT], [NguoiTao_CTDT], [NgayTao_CTDT], [NguoiCN_CTDT], [NgayCN_CTDT], [Khac_ChiTiet_DeThi]) VALUES (3, 3, 4, 5, 1, 0, N'5', CAST(0x0000A76A00DD7AD7 AS DateTime), N'4', CAST(0x0000A77C0054D2D8 AS DateTime), N'5MI037QU262BR63R3H')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThuTu_DeThi], [HT_ChiTiet_DT], [Xoa_CTDT], [NguoiTao_CTDT], [NgayTao_CTDT], [NguoiCN_CTDT], [NgayCN_CTDT], [Khac_ChiTiet_DeThi]) VALUES (4, 3, 5, 8, 1, 0, N'8', CAST(0x0000A7E500688953 AS DateTime), N'6', CAST(0x0000A77200540DF8 AS DateTime), NULL)
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThuTu_DeThi], [HT_ChiTiet_DT], [Xoa_CTDT], [NguoiTao_CTDT], [NgayTao_CTDT], [NguoiCN_CTDT], [NgayCN_CTDT], [Khac_ChiTiet_DeThi]) VALUES (5, 3, 15, 3, 1, 0, N'1', CAST(0x0000A7C6010F67AF AS DateTime), N'8', CAST(0x0000A77D00008763 AS DateTime), N'OK2XVQX1ULF3457080SR5RBK38B9425ORV707D43')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThuTu_DeThi], [HT_ChiTiet_DT], [Xoa_CTDT], [NguoiTao_CTDT], [NgayTao_CTDT], [NguoiCN_CTDT], [NgayCN_CTDT], [Khac_ChiTiet_DeThi]) VALUES (6, 3, 14, 7, 1, 0, N'4', CAST(0x0000A72D0144B11B AS DateTime), N'12', CAST(0x0000A78200F46C41 AS DateTime), N'JMUR83F7D528ZJ3F21J99F5GBAI5VRZM')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThuTu_DeThi], [HT_ChiTiet_DT], [Xoa_CTDT], [NguoiTao_CTDT], [NgayTao_CTDT], [NguoiCN_CTDT], [NgayCN_CTDT], [Khac_ChiTiet_DeThi]) VALUES (7, 4, 13, 8, 1, 0, N'6', CAST(0x0000A76A00E3C50B AS DateTime), N'8', CAST(0x0000A77100507624 AS DateTime), N'88U4S9')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThuTu_DeThi], [HT_ChiTiet_DT], [Xoa_CTDT], [NguoiTao_CTDT], [NgayTao_CTDT], [NguoiCN_CTDT], [NgayCN_CTDT], [Khac_ChiTiet_DeThi]) VALUES (8, 4, 11, 1, 1, 0, N'3', CAST(0x0000A78900BF9094 AS DateTime), N'7', CAST(0x0000A782001B56A6 AS DateTime), N'E4ZA38IYGQM9YDQ3V90T50U204MFOFL13ZBK9F9MNB9')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThuTu_DeThi], [HT_ChiTiet_DT], [Xoa_CTDT], [NguoiTao_CTDT], [NgayTao_CTDT], [NguoiCN_CTDT], [NgayCN_CTDT], [Khac_ChiTiet_DeThi]) VALUES (9, 4, 8, 3, 1, 0, N'2', CAST(0x0000A7C6015D3C71 AS DateTime), N'9', CAST(0x0000A78000A16DCC AS DateTime), N'2WBM002OFY0I75769RPRJJT5LHB84Q8SYBZ4DUT78NJ2E')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThuTu_DeThi], [HT_ChiTiet_DT], [Xoa_CTDT], [NguoiTao_CTDT], [NgayTao_CTDT], [NguoiCN_CTDT], [NgayCN_CTDT], [Khac_ChiTiet_DeThi]) VALUES (10, 4, 7, 2, 1, 0, N'10', CAST(0x0000A7A7004AFD8D AS DateTime), N'6', CAST(0x0000A773010363BF AS DateTime), N'Y6Y92780WI72CG85PCU136667Z85LG1577945RO6880N2T4102Q186LR5709LM55H2WP96AK37BZ4JA9R7ZH789FU8SK8856MVT87P485ETQSN9UT2A3J4U6P34L26N14J4W9DD73935PZK328D571BDS46B0V885FX1LA')
/****** Object:  Table [dbo].[ChiTiet_BaiThi]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_BaiThi](
	[ID_CTBAITHI] [bigint] NOT NULL,
	[ID_BAITHI] [bigint] NOT NULL,
	[ID_CauHoi] [bigint] NOT NULL,
	[ThiSinh_LuaChon] [nvarchar](350) NULL,
	[HT_ChiTiet_BaiThi] [bit] NOT NULL,
	[Xoa_CTBT] [bit] NOT NULL,
	[Diem_BaiThi] [float] NOT NULL,
	[ThuTu_LuaChon] [nvarchar](250) NULL,
	[TT_TraLoi] [bit] NULL,
	[Khac_CTBT] [nvarchar](250) NULL,
 CONSTRAINT [PK_CHITIET_BAITHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_CTBAITHI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__ChiTiet___B4DD32237BE81103] UNIQUE NONCLUSTERED 
(
	[ThuTu_LuaChon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CO1_FK] ON [dbo].[ChiTiet_BaiThi] 
(
	[ID_BAITHI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Xoa_CTBT], [Diem_BaiThi], [ThuTu_LuaChon], [TT_TraLoi], [Khac_CTBT]) VALUES (1, 4, 16, N'61', 0, 0, 0.5, N'1;4;3;2', 1, N'K18TQ71R127Y96A0CED')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Xoa_CTBT], [Diem_BaiThi], [ThuTu_LuaChon], [TT_TraLoi], [Khac_CTBT]) VALUES (2, 2, 4, N'15', 0, 0, 0.2, N'1;2;4;3', 1, NULL)
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Xoa_CTBT], [Diem_BaiThi], [ThuTu_LuaChon], [TT_TraLoi], [Khac_CTBT]) VALUES (3, 1, 6, N'22', 0, 0, 0.3, N'3;2;4;1', 1, N'6HJAJ53')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Xoa_CTBT], [Diem_BaiThi], [ThuTu_LuaChon], [TT_TraLoi], [Khac_CTBT]) VALUES (4, 3, 3, N'10', 0, 0, 0.4, N'2;4;1;3', 1, N'R4K560IO17I9QA77PD56R3IKV7PC6AW')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Xoa_CTBT], [Diem_BaiThi], [ThuTu_LuaChon], [TT_TraLoi], [Khac_CTBT]) VALUES (5, 8, 8, N'30', 0, 0, 0.1, N'2;3;1;4', 1, N'4J')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Xoa_CTBT], [Diem_BaiThi], [ThuTu_LuaChon], [TT_TraLoi], [Khac_CTBT]) VALUES (6, 4, 5, N'18', 0, 0, 0.3, N'4;3;1;2', 1, N'TZ72061823453S5MU64S1LO2MO7P28012866TRI74EG96772J')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Xoa_CTBT], [Diem_BaiThi], [ThuTu_LuaChon], [TT_TraLoi], [Khac_CTBT]) VALUES (7, 4, 3, N'11', 0, 0, 0.4, N'3;4;1;2', 1, N'6087V19')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Xoa_CTBT], [Diem_BaiThi], [ThuTu_LuaChon], [TT_TraLoi], [Khac_CTBT]) VALUES (8, 8, 5, N'17', 1, 0, 0.3, N'4;1;2;3', 1, N'8NVK840093RGXX93QS970Z2')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Xoa_CTBT], [Diem_BaiThi], [ThuTu_LuaChon], [TT_TraLoi], [Khac_CTBT]) VALUES (9, 1, 16, N'63', 0, 0, 0.5, N'1;2;3;4', 1, N'03H6WTPIE734RZ9E94J4G26SAW')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Xoa_CTBT], [Diem_BaiThi], [ThuTu_LuaChon], [TT_TraLoi], [Khac_CTBT]) VALUES (10, 1, 2, N'6', 1, 0, 0.2, N'2;4;3;1', 0, N'51D256LF2G6')
/****** Object:  Table [dbo].[LichSu_LC]    Script Date: 10/01/2018 11:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSu_LC](
	[ID_LS_LC] [bigint] NOT NULL,
	[ID_LUACHON] [bigint] NOT NULL,
	[MoTa_LS_LC] [nvarchar](10) NOT NULL,
	[NoiDungCN_LS_LC] [ntext] NOT NULL,
	[NoiDungMoi_LS_LC] [ntext] NULL,
	[NoiDungCu_LS_LC] [ntext] NULL,
	[NguoiCN_LS_LC] [nvarchar](250) NOT NULL,
	[Ngay_LS_LC] [datetime] NOT NULL,
	[HT_LS_LC] [bit] NOT NULL,
	[Xoa_LS_LC] [bit] NOT NULL,
	[Khac_LS_LC] [nvarchar](250) NULL,
 CONSTRAINT [PK_LICHSU_LC] PRIMARY KEY NONCLUSTERED 
(
	[ID_LS_LC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CAPNHAT_LC_FK] ON [dbo].[LichSu_LC] 
(
	[ID_LUACHON] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (1, 24, N'Thêm', N'thêm lựa chọn', N'63751', N'06522', N'12', CAST(0x0000A78100CAC977 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (2, 75, N'Sửa', N'cập nhật nội dung', N'85868', N'07335', N'7', CAST(0x0000A781008BD277 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (3, 5, N'Sửa', N'cập nhật đáp án', N'23736', N'16292', N'15', CAST(0x0000A77F0045ADBB AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (4, 57, N'xóa', N'đổi trạng thái sang false', N'62789', N'15478', N'4', CAST(0x0000A783007BAE66 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (5, 11, N'xóa', N'xóa hoàn toàn', N'72533', N'99641', N'17', CAST(0x0000A78000AC6296 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (6, 44, N'Sửa', N'cập nhật nội dung', N'16492', N'74875', N'9', CAST(0x0000A78100CAC977 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (7, 2, N'6EF06DEM7I', N'35125', N'71375', N'96567', N'1', CAST(0x0000A78100C0FB7F AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (8, 20, N'97P3NO', N'00097', N'07274', N'50679', N'11', CAST(0x0000A78300FAB9AB AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (9, 13, N'P26', N'91597', N'83206', N'93155', N'14', CAST(0x0000A77F01168623 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (10, 67, N'21', N'80175', N'69576', N'10879', N'2', CAST(0x0000A781014FAB76 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (11, 56, N'O', N'54912', N'93773', N'20710', N'5', CAST(0x0000A77F00F525AE AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (12, 8, N'SX274', N'86716', N'17703', N'53196', N'15', CAST(0x0000A78200934C74 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (13, 36, N'ZTM', N'88769', N'74310', N'03891', N'13', CAST(0x0000A77F00F525AE AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (14, 29, N'X7', N'79358', N'18198', N'16461', N'5', CAST(0x0000A780004A88CC AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (15, 3, N'3NF29LX511', N'67127', N'24635', N'99199', N'13', CAST(0x0000A7830059C9E5 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (16, 47, N'NT8W9', N'57900', N'20997', N'65443', N'3', CAST(0x0000A781014FAB76 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (17, 18, N'39H6', N'44681', N'85317', N'88142', N'10', CAST(0x0000A78301724961 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (18, 46, N'QJZ', N'11502', N'71616', N'28663', N'8', CAST(0x0000A784012D8AA7 AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (19, 80, N'9R6TV58', N'56367', N'39054', N'25103', N'4', CAST(0x0000A78300FAB9AB AS DateTime), 1, 0, NULL)
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC], [HT_LS_LC], [Xoa_LS_LC], [Khac_LS_LC]) VALUES (20, 58, N'Y0C1IG', N'19049', N'90453', N'33110', N'13', CAST(0x0000A78301724961 AS DateTime), 1, 0, NULL)
/****** Object:  Default [DF__HT_CQ__3E56440B]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CumQuyen] ADD  CONSTRAINT [DF__HT_CQ__3E56440B]  DEFAULT ((1)) FOR [HT_CQ]
GO
/****** Object:  Default [DF__Xoa_CQ__3E56440B]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CumQuyen] ADD  CONSTRAINT [DF__Xoa_CQ__3E56440B]  DEFAULT ((0)) FOR [Xoa_CQ]
GO
/****** Object:  Default [DF__Loai_CH__HT_Loai__4BAC3F29]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[Loai_CH] ADD  CONSTRAINT [DF__Loai_CH__HT_Loai__4BAC3F29]  DEFAULT ((1)) FOR [HT_Loai]
GO
/****** Object:  Default [DF__Loai_CH__Xoa_LCH__4BAC3F29]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[Loai_CH] ADD  CONSTRAINT [DF__Loai_CH__Xoa_LCH__4BAC3F29]  DEFAULT ((0)) FOR [Xoa_LCH]
GO
/****** Object:  Default [DF__MonHoc__HT_MonHo__5070F446]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF__MonHoc__HT_MonHo__5070F446]  DEFAULT ((1)) FOR [HT_MonHoc]
GO
/****** Object:  Default [DF__MonHoc__Xoa_MonHoc__5070F446]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF__MonHoc__Xoa_MonHoc__5070F446]  DEFAULT ((0)) FOR [Xoa_MonHoc]
GO
/****** Object:  Default [DF__MonHoc__NgayTao___5165187F]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF__MonHoc__NgayTao___5165187F]  DEFAULT (getdate()) FOR [NgayTao_MonHoc]
GO
/****** Object:  Default [DF__ManHinh__HT_ManH__4CA06362]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ManHinh] ADD  CONSTRAINT [DF__ManHinh__HT_ManH__4CA06362]  DEFAULT ((1)) FOR [HT_ManHinh]
GO
/****** Object:  Default [DF__ManHinh__Xoa_ManHinh__4CA06362]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ManHinh] ADD  CONSTRAINT [DF__ManHinh__Xoa_ManHinh__4CA06362]  DEFAULT ((0)) FOR [Xoa_ManHinh]
GO
/****** Object:  Default [DF__ThiSinh__HT_ThiS__5629CD9C]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ThiSinh] ADD  CONSTRAINT [DF__ThiSinh__HT_ThiS__5629CD9C]  DEFAULT ((1)) FOR [HT_ThiSinh]
GO
/****** Object:  Default [DF__ThiSinh__Xoa_ThiSinh_5629CD39C]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ThiSinh] ADD  CONSTRAINT [DF__ThiSinh__Xoa_ThiSinh_5629CD39C]  DEFAULT ((0)) FOR [Xoa_ThiSinh]
GO
/****** Object:  Default [DF__ThiSinh__NgayTao__571DF1D5]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ThiSinh] ADD  CONSTRAINT [DF__ThiSinh__NgayTao__571DF1D5]  DEFAULT (getdate()) FOR [NgayTao_ThiSinh]
GO
/****** Object:  Default [DF__PhanQuyen__CoQuy__52593CB8]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__CoQuy__52593CB8]  DEFAULT ((1)) FOR [CoQuyen]
GO
/****** Object:  Default [DF__PhanQuyen__ChiDo__49C3F6B7]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__ChiDo__49C3F6B7]  DEFAULT ((1)) FOR [ChiDoc]
GO
/****** Object:  Default [DF__PhanQuyen__Them__4AB81AF0]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__Them__4AB81AF0]  DEFAULT ((0)) FOR [Them]
GO
/****** Object:  Default [DF__PhanQuyen__Sua__4BAC3F29]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__Sua__4BAC3F29]  DEFAULT ((0)) FOR [Sua]
GO
/****** Object:  Default [DF__PhanQuyen__Xoa__4CA06362]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__Xoa__4CA06362]  DEFAULT ((0)) FOR [Xoa]
GO
/****** Object:  Default [DF__PhanQuyen__HT_PQ__534D60F1]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__HT_PQ__534D60F1]  DEFAULT ((1)) FOR [HT_PQ]
GO
/****** Object:  Default [DF__PhanQuyen__Xoa_PQ_4CA06362]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__Xoa_PQ_4CA06362]  DEFAULT ((0)) FOR [Xoa_PQ]
GO
/****** Object:  Default [DF__PhanQuyen__NgayB__5441852A]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__NgayB__5441852A]  DEFAULT (getdate()) FOR [NgayBD_PQ]
GO
/****** Object:  Default [DF__PhanQuyen__NgayT__5535A963]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__NgayT__5535A963]  DEFAULT (getdate()) FOR [NgayTao_PQ]
GO
/****** Object:  Default [DF__DeMuc__HT_DeMuc__45F365D3]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DeMuc] ADD  CONSTRAINT [DF__DeMuc__HT_DeMuc__45F365D3]  DEFAULT ((1)) FOR [HT_DeMuc]
GO
/****** Object:  Default [DF__DeMuc_Xoa_DeMuc__44FF419A]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DeMuc] ADD  CONSTRAINT [DF__DeMuc_Xoa_DeMuc__44FF419A]  DEFAULT ((0)) FOR [Xoa_DeMuc]
GO
/****** Object:  Default [DF__DeMuc__NgayTao_D__46E78A0C]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DeMuc] ADD  CONSTRAINT [DF__DeMuc__NgayTao_D__46E78A0C]  DEFAULT (getdate()) FOR [NgayTao_DM]
GO
/****** Object:  Default [DF__DanhSach___Trang__412EB0B6]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___Trang__412EB0B6]  DEFAULT ((1)) FOR [TrangThai_DeThi]
GO
/****** Object:  Default [DF__DanhSach___Trang__4222D4EF]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___Trang__4222D4EF]  DEFAULT ((1)) FOR [TrangThai_Tron_DeThi]
GO
/****** Object:  Default [DF__DanhSach___HT_De__4316F928]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___HT_De__4316F928]  DEFAULT ((1)) FOR [HT_DeThi]
GO
/****** Object:  Default [DF__DanhSach___Xoa_DeThi__44FF419A]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___Xoa_DeThi__44FF419A]  DEFAULT ((0)) FOR [Xoa_DeThi]
GO
/****** Object:  Default [DF__DanhSach___NgayB__440B1D61]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___NgayB__440B1D61]  DEFAULT (getdate()) FOR [NgayBatDau_SuDung]
GO
/****** Object:  Default [DF__DanhSach___NgayT__44FF419A]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___NgayT__44FF419A]  DEFAULT (getdate()) FOR [NgayTao_DeThi]
GO
/****** Object:  Default [DF__DangKy__Ngay_Dan__3F466844]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DangKy] ADD  CONSTRAINT [DF__DangKy__Ngay_Dan__3F466844]  DEFAULT (getdate()) FOR [Ngay_DangKy]
GO
/****** Object:  Default [DF__DangKy__CamThi__403A8C7D]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DangKy] ADD  CONSTRAINT [DF__DangKy__CamThi__403A8C7D]  DEFAULT ((0)) FOR [CamThi]
GO
/****** Object:  Default [DF__GiaoVien__HT_GV__3B75D760]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF__GiaoVien__HT_GV__3B75D760]  DEFAULT ((1)) FOR [HT_GV]
GO
/****** Object:  Default [DF__GiaoVien__Xoa_GV__3B75D760]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF__GiaoVien__Xoa_GV__3B75D760]  DEFAULT ((0)) FOR [Xoa_GV]
GO
/****** Object:  Default [DF__GiaoVien__NgayTa__3C69FB99]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF__GiaoVien__NgayTa__3C69FB99]  DEFAULT (getdate()) FOR [NgayTao_GV]
GO
/****** Object:  Default [DF__GiangDay__NgayBa__34C8D9D1]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[GiangDay] ADD  CONSTRAINT [DF__GiangDay__NgayBa__34C8D9D1]  DEFAULT (getdate()) FOR [NgayBatDau_GiangDay]
GO
/****** Object:  Default [DF__GiangDay__HT_Gia__35BCFE0A]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[GiangDay] ADD  CONSTRAINT [DF__GiangDay__HT_Gia__35BCFE0A]  DEFAULT ((1)) FOR [HT_GiangDay]
GO
/****** Object:  Default [DF__GiangDay__Xoa_GiangDay__35BCFE0A]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[GiangDay] ADD  CONSTRAINT [DF__GiangDay__Xoa_GiangDay__35BCFE0A]  DEFAULT ((0)) FOR [Xoa_GiangDay]
GO
/****** Object:  Default [DF__CauHoi__TrangTha__15502E78]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CauHoi] ADD  CONSTRAINT [DF__CauHoi__TrangTha__15502E78]  DEFAULT ((1)) FOR [TrangThaiTron_CauHoi]
GO
/****** Object:  Default [DF__CauHoi__HT_CauHo__164452B1]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CauHoi] ADD  CONSTRAINT [DF__CauHoi__HT_CauHo__164452B1]  DEFAULT ((1)) FOR [HT_CauHoi]
GO
/****** Object:  Default [DF__CauHoi__Xoa_Cau__173876EA]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CauHoi] ADD  CONSTRAINT [DF__CauHoi__Xoa_Cau__173876EA]  DEFAULT ((0)) FOR [Xoa_CauHoi]
GO
/****** Object:  Default [DF__CauHoi__Diem_Cau__173876EA]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CauHoi] ADD  CONSTRAINT [DF__CauHoi__Diem_Cau__173876EA]  DEFAULT ((0)) FOR [Diem_CauHoi]
GO
/****** Object:  Default [DF__CauHoi__NgayTao___182C9B23]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CauHoi] ADD  CONSTRAINT [DF__CauHoi__NgayTao___182C9B23]  DEFAULT (getdate()) FOR [NgayTao_CauHoi]
GO
/****** Object:  Default [DF__BaiThi__HT_BaiTh__398D8EEE]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[BaiThi] ADD  CONSTRAINT [DF__BaiThi__HT_BaiTh__398D8EEE]  DEFAULT ((1)) FOR [HT_BaiThi]
GO
/****** Object:  Default [DF__BaiThi__Xoa_BaiTh__400D8EEE]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[BaiThi] ADD  CONSTRAINT [DF__BaiThi__Xoa_BaiTh__400D8EEE]  DEFAULT ((0)) FOR [Xoa_BaiThi]
GO
/****** Object:  Default [DF__LichSu_CH__HT_LS_CH__3B75D760]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LichSu_CH] ADD  CONSTRAINT [DF__LichSu_CH__HT_LS_CH__3B75D760]  DEFAULT ((1)) FOR [HT_LS_CH]
GO
/****** Object:  Default [DF__LichSu_CH__Xoa_LS_CH__3B75D760]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LichSu_CH] ADD  CONSTRAINT [DF__LichSu_CH__Xoa_LS_CH__3B75D760]  DEFAULT ((0)) FOR [Xoa_LS_CH]
GO
/****** Object:  Default [DF__LuaChon__DapAn__46E78A0C]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LuaChon] ADD  CONSTRAINT [DF__LuaChon__DapAn__46E78A0C]  DEFAULT ((0)) FOR [DapAn]
GO
/****** Object:  Default [DF__LuaChon__HT_LuaC__47DBAE45]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LuaChon] ADD  CONSTRAINT [DF__LuaChon__HT_LuaC__47DBAE45]  DEFAULT ((1)) FOR [HT_LuaChon]
GO
/****** Object:  Default [DF__LuaChon__Xoa_LuaChon__47DBAE45]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LuaChon] ADD  CONSTRAINT [DF__LuaChon__Xoa_LuaChon__47DBAE45]  DEFAULT ((0)) FOR [Xoa_LuaChon]
GO
/****** Object:  Default [DF__LuaChon__NgayTao__48CFD27E]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LuaChon] ADD  CONSTRAINT [DF__LuaChon__NgayTao__48CFD27E]  DEFAULT (getdate()) FOR [NgayTao_LuaChon]
GO
/****** Object:  Default [DF__ChiTiet_D__HT_Ch__3E56440B]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ChiTiet_DeThi] ADD  CONSTRAINT [DF__ChiTiet_D__HT_Ch__3E56440B]  DEFAULT ((1)) FOR [HT_ChiTiet_DT]
GO
/****** Object:  Default [DF__ChiTiet_D__Xoa_Ch__3E56440B]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ChiTiet_DeThi] ADD  CONSTRAINT [DF__ChiTiet_D__Xoa_Ch__3E56440B]  DEFAULT ((0)) FOR [Xoa_CTDT]
GO
/****** Object:  Default [DF__ChiTiet_B__HT_Ch__3E52440B]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi] ADD  CONSTRAINT [DF__ChiTiet_B__HT_Ch__3E52440B]  DEFAULT ((1)) FOR [HT_ChiTiet_BaiThi]
GO
/****** Object:  Default [DF__ChiTiet_B__Xoa_Ch__3E52440B]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi] ADD  CONSTRAINT [DF__ChiTiet_B__Xoa_Ch__3E52440B]  DEFAULT ((0)) FOR [Xoa_CTBT]
GO
/****** Object:  Default [DF__LichSu_LC__HT_LS_LC__3B75D760]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LichSu_LC] ADD  CONSTRAINT [DF__LichSu_LC__HT_LS_LC__3B75D760]  DEFAULT ((1)) FOR [HT_LS_LC]
GO
/****** Object:  Default [DF__LichSu_LC__Xoa_LS_LC__3B75D760]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LichSu_LC] ADD  CONSTRAINT [DF__LichSu_LC__Xoa_LS_LC__3B75D760]  DEFAULT ((0)) FOR [Xoa_LS_LC]
GO
/****** Object:  Check [CK__ThiSinh__NgaySin__75A278F5]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ThiSinh]  WITH NOCHECK ADD  CONSTRAINT [CK__ThiSinh__NgaySin__75A278F5] CHECK  ((datediff(year,[NgaySinh_ThiSinh],getdate())>=(5)))
GO
ALTER TABLE [dbo].[ThiSinh] CHECK CONSTRAINT [CK__ThiSinh__NgaySin__75A278F5]
GO
/****** Object:  Check [CK__DanhSach___ThoiG__6FE99F9F]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DanhSach_DeThi]  WITH NOCHECK ADD  CONSTRAINT [CK__DanhSach___ThoiG__6FE99F9F] CHECK  (([ThoiGianLamBai]>=(0)))
GO
ALTER TABLE [dbo].[DanhSach_DeThi] CHECK CONSTRAINT [CK__DanhSach___ThoiG__6FE99F9F]
GO
/****** Object:  Check [CK__GiaoVien__NgaySi__3A81B327]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[GiaoVien]  WITH NOCHECK ADD  CONSTRAINT [CK__GiaoVien__NgaySi__3A81B327] CHECK  ((datediff(year,[NgaySinh_GV],getdate())>=(23)))
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [CK__GiaoVien__NgaySi__3A81B327]
GO
/****** Object:  Check [CK__CauHoi__CapDo__145C0A3F]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [CK__CauHoi__CapDo__145C0A3F] CHECK  (([CapDo]>=(0) AND [CapDo]<=(9)))
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [CK__CauHoi__CapDo__145C0A3F]
GO
/****** Object:  Check [CK__CauHoi__Diem_Cau__6A30C649]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [CK__CauHoi__Diem_Cau__6A30C649] CHECK  (([Diem_CauHoi]>=(0.1) AND [Diem_CauHoi]<=(0.5)))
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [CK__CauHoi__Diem_Cau__6A30C649]
GO
/****** Object:  Check [CK__CauHoi__Diem_Cau__6B24EA82]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [CK__CauHoi__Diem_Cau__6B24EA82] CHECK  (([Diem_CauHoi]>=(0.10) AND [Diem_CauHoi]<=(0.5)))
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [CK__CauHoi__Diem_Cau__6B24EA82]
GO
/****** Object:  Check [CK__LichSu_CH__CapDo__17036CC0]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD  CONSTRAINT [CK__LichSu_CH__CapDo__17036CC0] CHECK  (([CapDoCH_Cu]>=(0) AND [CapDoCH_Cu]<=(9)))
GO
ALTER TABLE [dbo].[LichSu_CH] CHECK CONSTRAINT [CK__LichSu_CH__CapDo__17036CC0]
GO
/****** Object:  Check [CK__LichSu_CH__CapDo__17F790F9]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD  CONSTRAINT [CK__LichSu_CH__CapDo__17F790F9] CHECK  (([CapDoCH_Moi]>=(0) AND [CapDoCH_Moi]<=(9)))
GO
ALTER TABLE [dbo].[LichSu_CH] CHECK CONSTRAINT [CK__LichSu_CH__CapDo__17F790F9]
GO
/****** Object:  Check [CK__LichSu_CH__DiemC__151B244E]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD  CONSTRAINT [CK__LichSu_CH__DiemC__151B244E] CHECK  (([DiemCH_Cu]>=(0.15) AND [DiemCH_Cu]<=(0.5)))
GO
ALTER TABLE [dbo].[LichSu_CH] CHECK CONSTRAINT [CK__LichSu_CH__DiemC__151B244E]
GO
/****** Object:  Check [CK__LichSu_CH__DiemC__160F4887]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD  CONSTRAINT [CK__LichSu_CH__DiemC__160F4887] CHECK  (([DiemCH_Moi]>=(0.15) AND [DiemCH_Moi]<=(0.5)))
GO
ALTER TABLE [dbo].[LichSu_CH] CHECK CONSTRAINT [CK__LichSu_CH__DiemC__160F4887]
GO
/****** Object:  Check [CK__ChiTiet_B__Diem___6C190EBB]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD  CONSTRAINT [CK__ChiTiet_B__Diem___6C190EBB] CHECK  (([Diem_BaiThi]>=(0.0) AND [Diem_BaiThi]<=(0.5)))
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi] CHECK CONSTRAINT [CK__ChiTiet_B__Diem___6C190EBB]
GO
/****** Object:  Check [CK__ChiTiet_B__Diem___6D0D32F4]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD  CONSTRAINT [CK__ChiTiet_B__Diem___6D0D32F4] CHECK  (([Diem_BaiThi]>=(0.0) AND [Diem_BaiThi]<=(0.5)))
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi] CHECK CONSTRAINT [CK__ChiTiet_B__Diem___6D0D32F4]
GO
/****** Object:  Check [CK__ChiTiet_B__Diem___6E01572D]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD  CONSTRAINT [CK__ChiTiet_B__Diem___6E01572D] CHECK  (([Diem_BaiThi]>=(0) AND [Diem_BaiThi]<=(10)))
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi] CHECK CONSTRAINT [CK__ChiTiet_B__Diem___6E01572D]
GO
/****** Object:  ForeignKey [FK_PHANQUYE_RELATIONS_MANHINH]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[PhanQuyen]  WITH NOCHECK ADD  CONSTRAINT [FK_PHANQUYE_RELATIONS_MANHINH] FOREIGN KEY([ID_ManHinh])
REFERENCES [dbo].[ManHinh] ([ID_ManHinh])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PHANQUYE_RELATIONS_MANHINH]
GO
/****** Object:  ForeignKey [FK_PhanQuyen_CumQuyen]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_CumQuyen] FOREIGN KEY([ID_CQ])
REFERENCES [dbo].[CumQuyen] ([ID_CQ])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_CumQuyen]
GO
/****** Object:  ForeignKey [FK_DEMUC_CODEMUC_MONHOC]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DeMuc]  WITH NOCHECK ADD  CONSTRAINT [FK_DEMUC_CODEMUC_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[DeMuc] CHECK CONSTRAINT [FK_DEMUC_CODEMUC_MONHOC]
GO
/****** Object:  ForeignKey [FK_DANHSACH_CODSDETHI_MONHOC]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DanhSach_DeThi]  WITH NOCHECK ADD  CONSTRAINT [FK_DANHSACH_CODSDETHI_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[DanhSach_DeThi] CHECK CONSTRAINT [FK_DANHSACH_CODSDETHI_MONHOC]
GO
/****** Object:  ForeignKey [FK_DANGKY_DANGKY_THISINH]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DangKy]  WITH NOCHECK ADD  CONSTRAINT [FK_DANGKY_DANGKY_THISINH] FOREIGN KEY([ID_TK])
REFERENCES [dbo].[ThiSinh] ([ID_TK])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [FK_DANGKY_DANGKY_THISINH]
GO
/****** Object:  ForeignKey [FK_DANGKY_MH_MT_MONHOC]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[DangKy]  WITH NOCHECK ADD  CONSTRAINT [FK_DANGKY_MH_MT_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [FK_DANGKY_MH_MT_MONHOC]
GO
/****** Object:  ForeignKey [FK_GiaoVien_CumQuyen]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_CumQuyen] FOREIGN KEY([ID_CQ])
REFERENCES [dbo].[CumQuyen] ([ID_CQ])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_CumQuyen]
GO
/****** Object:  ForeignKey [FK_GIANGDAY_DAY_GIAOVIEN]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[GiangDay]  WITH NOCHECK ADD  CONSTRAINT [FK_GIANGDAY_DAY_GIAOVIEN] FOREIGN KEY([ID_GV])
REFERENCES [dbo].[GiaoVien] ([ID_GV])
GO
ALTER TABLE [dbo].[GiangDay] CHECK CONSTRAINT [FK_GIANGDAY_DAY_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_GIANGDAY_DUOCNHANB_MONHOC]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[GiangDay]  WITH NOCHECK ADD  CONSTRAINT [FK_GIANGDAY_DUOCNHANB_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[GiangDay] CHECK CONSTRAINT [FK_GIANGDAY_DUOCNHANB_MONHOC]
GO
/****** Object:  ForeignKey [FK_CAUHOI_CO_DEMUC]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [FK_CAUHOI_CO_DEMUC] FOREIGN KEY([ID_DeMuc])
REFERENCES [dbo].[DeMuc] ([ID_DeMuc])
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [FK_CAUHOI_CO_DEMUC]
GO
/****** Object:  ForeignKey [FK_CAUHOI_THUOCLOAI_LOAI_CH]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [FK_CAUHOI_THUOCLOAI_LOAI_CH] FOREIGN KEY([ID_LoaiCH])
REFERENCES [dbo].[Loai_CH] ([ID_LoaiCH])
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [FK_CAUHOI_THUOCLOAI_LOAI_CH]
GO
/****** Object:  ForeignKey [FK_BAITHI_RELATIONS_DANGKY]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[BaiThi]  WITH NOCHECK ADD  CONSTRAINT [FK_BAITHI_RELATIONS_DANGKY] FOREIGN KEY([ID_DANGKY])
REFERENCES [dbo].[DangKy] ([ID_DANGKY])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BAITHI_RELATIONS_DANGKY]
GO
/****** Object:  ForeignKey [FK_BAITHI_THUOC_DANHSACH]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[BaiThi]  WITH NOCHECK ADD  CONSTRAINT [FK_BAITHI_THUOC_DANHSACH] FOREIGN KEY([ID_DE])
REFERENCES [dbo].[DanhSach_DeThi] ([ID_DE])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BAITHI_THUOC_DANHSACH]
GO
/****** Object:  ForeignKey [FK_LICHSU_C_CAPNHAT_C_CAUHOI]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD  CONSTRAINT [FK_LICHSU_C_CAPNHAT_C_CAUHOI] FOREIGN KEY([ID_CH])
REFERENCES [dbo].[CauHoi] ([ID_CH])
GO
ALTER TABLE [dbo].[LichSu_CH] CHECK CONSTRAINT [FK_LICHSU_C_CAPNHAT_C_CAUHOI]
GO
/****** Object:  ForeignKey [FK_LUACHON_SOHUU_CAUHOI]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LuaChon]  WITH NOCHECK ADD  CONSTRAINT [FK_LUACHON_SOHUU_CAUHOI] FOREIGN KEY([ID_CH])
REFERENCES [dbo].[CauHoi] ([ID_CH])
GO
ALTER TABLE [dbo].[LuaChon] CHECK CONSTRAINT [FK_LUACHON_SOHUU_CAUHOI]
GO
/****** Object:  ForeignKey [FK_CHITIET__SOHUUDETH_DANHSACH]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ChiTiet_DeThi]  WITH NOCHECK ADD  CONSTRAINT [FK_CHITIET__SOHUUDETH_DANHSACH] FOREIGN KEY([ID_DE])
REFERENCES [dbo].[DanhSach_DeThi] ([ID_DE])
GO
ALTER TABLE [dbo].[ChiTiet_DeThi] CHECK CONSTRAINT [FK_CHITIET__SOHUUDETH_DANHSACH]
GO
/****** Object:  ForeignKey [FK_CHITIET__TRONG_CAUHOI]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ChiTiet_DeThi]  WITH NOCHECK ADD  CONSTRAINT [FK_CHITIET__TRONG_CAUHOI] FOREIGN KEY([ID_CH])
REFERENCES [dbo].[CauHoi] ([ID_CH])
GO
ALTER TABLE [dbo].[ChiTiet_DeThi] CHECK CONSTRAINT [FK_CHITIET__TRONG_CAUHOI]
GO
/****** Object:  ForeignKey [FK_CHITIET__CO1_BAITHI]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD  CONSTRAINT [FK_CHITIET__CO1_BAITHI] FOREIGN KEY([ID_BAITHI])
REFERENCES [dbo].[BaiThi] ([ID_BAITHI])
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi] CHECK CONSTRAINT [FK_CHITIET__CO1_BAITHI]
GO
/****** Object:  ForeignKey [FK_LICHSU_L_CAPNHAT_L_LUACHON]    Script Date: 10/01/2018 11:30:27 ******/
ALTER TABLE [dbo].[LichSu_LC]  WITH NOCHECK ADD  CONSTRAINT [FK_LICHSU_L_CAPNHAT_L_LUACHON] FOREIGN KEY([ID_LUACHON])
REFERENCES [dbo].[LuaChon] ([ID_LUACHON])
GO
ALTER TABLE [dbo].[LichSu_LC] CHECK CONSTRAINT [FK_LICHSU_L_CAPNHAT_L_LUACHON]
GO
