USE [OgrenciIsleriOtomasyon]
GO
/****** Object:  Table [dbo].[tblAkademisyen]    Script Date: 29.06.2023 18:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAkademisyen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [varchar](50) NULL,
	[TC] [varchar](20) NULL,
	[TelefonNumarasi] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Şifre] [varchar](50) NULL,
	[Fakültesi] [varchar](50) NULL,
	[Bölümü] [varchar](50) NULL,
 CONSTRAINT [PK_tblAkademisyen] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDersProgramı]    Script Date: 29.06.2023 18:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDersProgramı](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ders] [varchar](50) NULL,
	[Tarih] [varchar](50) NULL,
	[Fakülte] [varchar](50) NULL,
	[Bölüm] [varchar](50) NULL,
 CONSTRAINT [PK_tblDersProgramı] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDuyuru]    Script Date: 29.06.2023 18:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDuyuru](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DuyuruAdi] [varchar](max) NULL,
	[Duyuru] [varchar](max) NULL,
	[DuyuruTarihi] [varchar](50) NULL,
 CONSTRAINT [PK_tblDuyuru] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFakülteBölüm]    Script Date: 29.06.2023 18:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFakülteBölüm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fakülte] [varchar](50) NULL,
	[Bölüm] [varchar](50) NULL,
 CONSTRAINT [PK_tblFakülteBölüm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNotlar]    Script Date: 29.06.2023 18:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNotlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ögrAdSoyad] [varchar](50) NULL,
	[Ders] [varchar](50) NULL,
	[Vize] [float] NULL,
	[Final] [float] NULL,
	[Ortalama] [float] NULL,
 CONSTRAINT [PK_tblNotlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOgrenci]    Script Date: 29.06.2023 18:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOgrenci](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [varchar](50) NULL,
	[TC] [varchar](20) NULL,
	[TelefonNumarasi] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Şifre] [varchar](50) NULL,
	[Fakültesi] [varchar](50) NULL,
	[Bölümü] [varchar](50) NULL,
	[Devamszilik] [varchar](20) NULL,
 CONSTRAINT [PK_tblOgrenci] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProgramSorumlusu]    Script Date: 29.06.2023 18:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProgramSorumlusu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL,
 CONSTRAINT [PK_tblProgramSorumlusu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAkademisyen] ON 

INSERT [dbo].[tblAkademisyen] ([ID], [AdSoyad], [TC], [TelefonNumarasi], [Email], [Şifre], [Fakültesi], [Bölümü]) VALUES (7, N'İsa ATAŞ', N'11111111111', N'0102', N'isaatas@gmail.com', N'isaatas', N'Teknik Bilimler Meslek Yüksekokulu', N'Bilgisayar Programcılığı')
SET IDENTITY_INSERT [dbo].[tblAkademisyen] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDersProgramı] ON 

INSERT [dbo].[tblDersProgramı] ([ID], [Ders], [Tarih], [Fakülte], [Bölüm]) VALUES (8, N'Sistem Analizi ve Tasarımı', N'2023-06-05', N'Teknik Bilimler Meslek Yüksekokulu', N'Bilgisayar Programcılığı')
INSERT [dbo].[tblDersProgramı] ([ID], [Ders], [Tarih], [Fakülte], [Bölüm]) VALUES (9, N'Eğitim Psikolojisi', N'2023-06-01', N'Eğitim Fakültesi', N'Resim Öğretmenliği')
INSERT [dbo].[tblDersProgramı] ([ID], [Ders], [Tarih], [Fakülte], [Bölüm]) VALUES (11, N'Fen Öğretimi Dersleri Uygulaması	', N'2022-09-24', N'Eğitim Fakültesi', N'Fen Bilgisi Öğretmenliği')
INSERT [dbo].[tblDersProgramı] ([ID], [Ders], [Tarih], [Fakülte], [Bölüm]) VALUES (12, N'İş Güvenliği ', N'2024-04-24', N'Teknik Bilimler Meslek Yüksekokulu', N'İnşaat Teknikerliği')
SET IDENTITY_INSERT [dbo].[tblDersProgramı] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDuyuru] ON 

INSERT [dbo].[tblDuyuru] ([ID], [DuyuruAdi], [Duyuru], [DuyuruTarihi]) VALUES (6, N'SINAV TARİHLERİ', N'DEĞERLİ ÖĞRENCİLERİMİZ FİNAL SINAVLARINIZ 6 HAZİRAN 2023 TARİHİNDE BAŞLAYACAKTIR ', N'2023-06-01')
INSERT [dbo].[tblDuyuru] ([ID], [DuyuruAdi], [Duyuru], [DuyuruTarihi]) VALUES (7, N'DEPREM HAKKINDA', N'HASARLI BİNALARIMIZDAN UZAK DURUNUZ!!', N'2023-04-06')
SET IDENTITY_INSERT [dbo].[tblDuyuru] OFF
GO
SET IDENTITY_INSERT [dbo].[tblFakülteBölüm] ON 

INSERT [dbo].[tblFakülteBölüm] ([ID], [Fakülte], [Bölüm]) VALUES (9, N'Teknik Bilimler Meslek Yüksekokulu', N'Bilgisayar Programcılığı')
INSERT [dbo].[tblFakülteBölüm] ([ID], [Fakülte], [Bölüm]) VALUES (11, N'Teknik Bilimler Meslek Yüksekokulu', N'İnşaat Teknikerliği')
INSERT [dbo].[tblFakülteBölüm] ([ID], [Fakülte], [Bölüm]) VALUES (12, N'Eğitim Fakültesi', N'Fen Bilgisi Öğretmenliği')
INSERT [dbo].[tblFakülteBölüm] ([ID], [Fakülte], [Bölüm]) VALUES (13, N'Eğitim Fakültesi	', N'Resim Öğretmenliği')
SET IDENTITY_INSERT [dbo].[tblFakülteBölüm] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNotlar] ON 

INSERT [dbo].[tblNotlar] ([ID], [ögrAdSoyad], [Ders], [Vize], [Final], [Ortalama]) VALUES (3, N'Gül Çelengil', N'Matematik', 80, 100, 92)
INSERT [dbo].[tblNotlar] ([ID], [ögrAdSoyad], [Ders], [Vize], [Final], [Ortalama]) VALUES (4, N'Gül Çelengil', N'Laboratuvar 1', 45, 60, 54)
INSERT [dbo].[tblNotlar] ([ID], [ögrAdSoyad], [Ders], [Vize], [Final], [Ortalama]) VALUES (5, N'Enes Çiğdem', N'C# Programlama', 80, 85, 83)
INSERT [dbo].[tblNotlar] ([ID], [ögrAdSoyad], [Ders], [Vize], [Final], [Ortalama]) VALUES (6, N'Yusuf AKTAŞ', N'Sistem Analizi ve Tasarımı', 100, 100, 100)
SET IDENTITY_INSERT [dbo].[tblNotlar] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOgrenci] ON 

INSERT [dbo].[tblOgrenci] ([ID], [AdSoyad], [TC], [TelefonNumarasi], [Email], [Şifre], [Fakültesi], [Bölümü], [Devamszilik]) VALUES (8, N'Yusuf AKTAŞ', N'21644769504', N'05551465781', N'yusuf@gmail.com', N'yusufaktas', N'Teknik Bilimler Meslek Yüksekokulu', N'Bilgisayar Programcılığı', N'5')
SET IDENTITY_INSERT [dbo].[tblOgrenci] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProgramSorumlusu] ON 

INSERT [dbo].[tblProgramSorumlusu] ([ID], [Email], [Sifre]) VALUES (1, N'admin', N'123')
SET IDENTITY_INSERT [dbo].[tblProgramSorumlusu] OFF
GO
