USE [dbExam]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 03/17/2017 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[fldUserID] [int] IDENTITY(1,1) NOT NULL,
	[fldUsername] [varchar](100) NULL,
	[fldPassword] [varchar](max) NULL,
	[fldLevelID] [int] NULL,
	[fldEmail] [varchar](250) NULL,
	[fldTelefon] [int] NULL,
	[fldName] [varchar](250) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[fldUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON
INSERT [dbo].[tblUser] ([fldUserID], [fldUsername], [fldPassword], [fldLevelID], [fldEmail], [fldTelefon], [fldName]) VALUES (1, N'test', N'169741432292041771551662876811521114523313515247187211', 3, N'test@test.dk', 1234567, N'test')
INSERT [dbo].[tblUser] ([fldUserID], [fldUsername], [fldPassword], [fldLevelID], [fldEmail], [fldTelefon], [fldName]) VALUES (2, N'admin', N'208512264222772174181102151942010236531331277169151', 1, N'admin@admin.com', 1234567, N'admin')
INSERT [dbo].[tblUser] ([fldUserID], [fldUsername], [fldPassword], [fldLevelID], [fldEmail], [fldTelefon], [fldName]) VALUES (3, N'KirstenJensen', N'1522203444976827192041736168235237192117266097121', 3, N'kirsten@vandrestoevlen.dk', 22142344, N'Kirsten Jensen')
INSERT [dbo].[tblUser] ([fldUserID], [fldUsername], [fldPassword], [fldLevelID], [fldEmail], [fldTelefon], [fldName]) VALUES (4, N'PoulJensen', N'1992272209921112232208551422462012431783021117769146', 3, N'poul@vandrestoevlen.dk', 22142350, N'Poul Jensen')
INSERT [dbo].[tblUser] ([fldUserID], [fldUsername], [fldPassword], [fldLevelID], [fldEmail], [fldTelefon], [fldName]) VALUES (5, N'AnneGrethePoulsen', N'1501011272116167812511419911925311210022459102205853', 3, N'annegrethe@vandrestoevlen.dk', 22142369, N'Anne Grethe Poulsen')
INSERT [dbo].[tblUser] ([fldUserID], [fldUsername], [fldPassword], [fldLevelID], [fldEmail], [fldTelefon], [fldName]) VALUES (6, N'KarlaBakkebjerg', N'1037107317655171936285159191449110446220195221175', 3, N'bakkebjerg@vandrestoevlen.dk', 20402555, N'Karla Bakkebjerg')
INSERT [dbo].[tblUser] ([fldUserID], [fldUsername], [fldPassword], [fldLevelID], [fldEmail], [fldTelefon], [fldName]) VALUES (7, N'MichaelThomsen', N'7482100108245141662212413011987812346911140247249111', 3, N'michael@vandre.dk', 12345678, N'Michael Thomsen')
INSERT [dbo].[tblUser] ([fldUserID], [fldUsername], [fldPassword], [fldLevelID], [fldEmail], [fldTelefon], [fldName]) VALUES (8, N'JensJohansen', N'33226175217619222949357196501812201681671558496148', 3, N'jens@vandre.dk', 12543467, N'Jens Johansen')
INSERT [dbo].[tblUser] ([fldUserID], [fldUsername], [fldPassword], [fldLevelID], [fldEmail], [fldTelefon], [fldName]) VALUES (9, N'JørgenDavidsen', N'1732002018822212016420610224614347701181581061892124969', 3, N'jorgen@vandre.dk', 547624387, N'Jørgen Davidsen')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
/****** Object:  Table [dbo].[tblTilmelding]    Script Date: 03/17/2017 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTilmelding](
	[fldTilmeldID] [int] IDENTITY(1,1) NOT NULL,
	[fldUserID_FK] [int] NULL,
	[fldEventID_FK] [int] NULL,
	[fldDateTilmeldt] [date] NULL,
 CONSTRAINT [PK_fldTilmelding] PRIMARY KEY CLUSTERED 
(
	[fldTilmeldID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubCategory]    Script Date: 03/17/2017 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubCategory](
	[fldSubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[fldSubCategoryName] [varchar](50) NULL,
 CONSTRAINT [PK_tblSubCategory] PRIMARY KEY CLUSTERED 
(
	[fldSubCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblSubCategory] ON
INSERT [dbo].[tblSubCategory] ([fldSubCategoryID], [fldSubCategoryName]) VALUES (1, N'Motionisten')
INSERT [dbo].[tblSubCategory] ([fldSubCategoryID], [fldSubCategoryName]) VALUES (2, N'Entusiasten')
INSERT [dbo].[tblSubCategory] ([fldSubCategoryID], [fldSubCategoryName]) VALUES (3, N'Familien')
SET IDENTITY_INSERT [dbo].[tblSubCategory] OFF
/****** Object:  Table [dbo].[tblMessage]    Script Date: 03/17/2017 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMessage](
	[fldMessageID] [int] IDENTITY(1,1) NOT NULL,
	[fldName] [varchar](150) NULL,
	[fldEmail] [varchar](150) NULL,
	[fldTelefon] [int] NULL,
	[fldMessage] [varchar](max) NULL,
 CONSTRAINT [PK_tblMessage] PRIMARY KEY CLUSTERED 
(
	[fldMessageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblMessage] ON
INSERT [dbo].[tblMessage] ([fldMessageID], [fldName], [fldEmail], [fldTelefon], [fldMessage]) VALUES (3, N'test phone', N'phone@test.com', 84387, N'kjdjkse')
SET IDENTITY_INSERT [dbo].[tblMessage] OFF
/****** Object:  Table [dbo].[tblImages]    Script Date: 03/17/2017 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblImages](
	[fldImageID] [int] IDENTITY(1,1) NOT NULL,
	[fldImageName] [varchar](100) NULL,
	[fldEvent_FK] [int] NULL,
 CONSTRAINT [PK_tblImages] PRIMARY KEY CLUSTERED 
(
	[fldImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblImages] ON
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (1, N'Kaloe01.jpg', 1)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (2, N'Kaloe02.jpg', 1)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (3, N'Kaloe03.jpg', 1)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (4, N'Kaloe01.jpg', 2)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (5, N'Kaloe02.jpg', 2)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (6, N'Kaloe03.jpg', 2)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (7, N'Mols01.jpg', 3)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (8, N'Mols02.jpg', 3)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (9, N'Mols03.jpg', 3)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (10, N'Mols01.jpg', 4)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (11, N'Mol02.jpg', 4)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (12, N'Mols03.jpg', 4)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (13, N'Kaloe04.jpg', 5)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (14, N'Kaloe05.jpg', 5)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (15, N'Kaloe06.jpg', 5)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (16, N'Mols04.jpg', 6)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (17, N'Mols05.jpg', 6)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (18, N'Mols06.jpg', 6)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (19, N'Kaloe07.jpg', 7)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (20, N'Kaloe08.jpg', 7)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (21, N'Kaloe09.jpg', 7)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (22, N'Kaloe07.jpg', 8)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (23, N'Kaloe08.jpg', 8)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (24, N'Kaloe09.jpg', 8)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (25, N'Mols07.jpg', 9)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (26, N'Mols08.jpg', 9)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (27, N'Mols09.jpg', 9)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (28, N'Mols07.jpg', 10)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (29, N'Mols08.jpg', 10)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (30, N'Mols09.jpg', 10)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (31, N'Mols01.jpg', 11)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (32, N'Mols02.jpg', 11)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (33, N'Mols03.jpg', 11)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (34, N'Fordrag01.jpg', 12)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (35, N'Fordrag02.jpg', 12)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (36, N'Fordrag03.jpg', 12)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (37, N'Fprdrag04.jpg', 13)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (38, N'Fordrag05.jpg', 13)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (39, N'Fordrag06.jpg', 13)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (40, N'Fordrag05.jpg', 14)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (41, N'Fordrag06.jpg', 14)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (42, N'Fordrag07.jpg', 14)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (43, N'Andet01.jpg', 15)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (44, N'Andet02.jpg', 15)
INSERT [dbo].[tblImages] ([fldImageID], [fldImageName], [fldEvent_FK]) VALUES (45, N'Andet03.jpg', 15)
SET IDENTITY_INSERT [dbo].[tblImages] OFF
/****** Object:  Table [dbo].[tblEvents]    Script Date: 03/17/2017 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEvents](
	[fldEventID] [int] IDENTITY(1,1) NOT NULL,
	[fldEventTitle] [varchar](250) NULL,
	[fldEventDescription] [varchar](max) NULL,
	[fldCategory_FK] [int] NULL,
	[fldDistance] [int] NULL,
	[fldInstructor_FK] [int] NULL,
	[fldDate] [date] NULL,
	[fldTime] [time](0) NULL,
	[fldLocation] [varchar](50) NULL,
	[fldPrice] [int] NULL,
	[fldAntal] [int] NULL,
	[fldSubCategory_fk] [int] NULL,
 CONSTRAINT [PK_tblEvents] PRIMARY KEY CLUSTERED 
(
	[fldEventID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblEvents] ON
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (1, N'Kalø rundt', N'Få en rigtig god vandretur rundt i Kaløskovene og ud omkring Kalø Slotsruin. Du vil på denne tur have rige muligheder for at se på og lytte til fuglelivet og finde nye spændende planter, der begynder at spire frem efter vinteren. Kaløskovende ligger i et meget kuperet og afvekslende landskab, som det aldrig er kedeligt at gå i. F. eks. kan man gå ud langs Havbakkerne og her finde de første blå anemoner. På Favntøjspladsen er der en fantastisk udsigt over Følle Bund. Undervejs på turen vil Kirsten fortælle om forskellige faktuelle seværdigheder og interessante iagttagelser. Alle kan være med, men du skal have en stor interesse i naturen og dens seværdigheder. Medbring vand, kaffe og kage, da der undervejs er indlagt en lille pause.', 1, 10, 3, CAST(0x9C3C0B00 AS Date), CAST(0x00E0C40000000000 AS Time), N'Parkeringspladsen ved Kalø Slotskro', 10, 15, 2)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (2, N'Kalø rundt', N'Få en rigtig god vandretur rundt i Kaløskovene og ud omkring Kalø Slotsruin. Du vil på denne tur have rige muligheder for at se på og lytte til fuglelivet og finde nye spændende planter, der begynder at spire frem efter vinteren. Kaløskovende ligger i et meget kuperet og afvekslende landskab, som det aldrig er kedeligt at gå i. F. eks. kan man gå ud langs havbakkerne og her finde de første blå anemoner. På Favntøjspladsen er der en fantastisk udsigt over Følle Bund. Undervejs på turen vil Kirsten fortælle om forskellige faktuelle seværdigheder og interessante iagttagelser. Alle kan være med, men du skal have en stor interesse i naturen og dens seværdigheder. Medbring vand, kaffe og kage, da der undervejs er indlagt en lille pause.', 1, 10, 3, CAST(0x873C0B00 AS Date), CAST(0x00E0C40000000000 AS Time), N'Parkeringspladsen ved Kalø Slotskro
', 10, 15, 2)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (3, N'Mols på en ny måde', N'Kom på en spændende vandretur på Mols, hvor vi vil komme forbi Poskær Stenhus, der er Danmarks største stendysse, gadekæret i Agri, der blev dannet for omkring 2000 år siden, Vi vil også gå op på Trehøje og nyde den formidable udsigt over landskabet. Du vil på denne tur have rige muligheder for at se på og lytte til fuglelivet. Terrænet er meget kuperet og afvekslende og det er aldrig kedeligt at gå her. Der er altid noget nyt at se Undervejs på turen vil Jens fortælle om forskellige faktuelle seværdigheder og interessante iagttagelser Alle kan være med, men du skal have en stor interesse i naturen og dens seværdigheder. Medbring vand, madpakke, kaffe og kage, da der undervejs er indlagt to pauser.', 1, 15, 5, CAST(0x9D3C0B00 AS Date), CAST(0x00A08C0000000000 AS Time), N'Parkeringspladsen ved Agri Kirke', 0, 10, 2)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (4, N'Mols på en ny måde', N'Kom på en spændende vandretur på Mols, hvor vi vil komme forbi Poskær Stenhus, der er Danmarks største stendysse, gadekæret i Agri, der blev dannet for omkring 2000 år siden, Vi vil også gå op på Trehøje og nyde den formidable udsigt over landskabet. Du vil på denne tur have rige muligheder for at se på og lytte til fuglelivet. Terrænet er meget kuperet og afvekslende og det er aldrig kedeligt at gå her. Der er altid noget nyt at se Undervejs på turen vil Jens fortælle om forskellige faktuelle seværdigheder og interessante iagttagelser Alle kan være med, men du skal have en stor interesse i naturen og dens seværdigheder. Medbring vand, madpakke, kaffe og kage, da der undervejs er indlagt to pauser.', 1, 15, 5, CAST(0x813C0B00 AS Date), CAST(0x00A08C0000000000 AS Time), N'Parkeringspladsen ved Agri Kirke', 0, 10, 2)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (5, N'Hestehaveskoven og Kalø Slotsruin', N'Få en rigtig god vandretur rundt i Hestehaveskoven og ud omkring Kalø Slotsruin. Du vil på denne tur have rige muligheder for at se på og lytte til fuglelivet og finde nye spændende planter, der begynder at spire frem efter vinteren. Kaløskovende ligger i et meget kuperet og afvekslende landskab, som det aldrig er kedeligt at gå i. F. eks. kan man gå ud langs havbakkerne og her finde de første blå anemoner. På Favntøjspladsen er der en fantastisk udsigt over Følle Bund. Undervejs på turen vil Karla fortælle om forskellige faktuelle seværdigheder og interessante iagttagelser. Alle kan være med, men du skal have en stor interesse i naturen og dens seværdigheder. Medbring vand, kaffe og kage, da der undervejs er indlagt en lille pause. Turen foregår i et roligt tempo.
', 1, 8, 6, CAST(0x8E3C0B00 AS Date), CAST(0x00E0C40000000000 AS Time), N'Parkeringspladsen ved Kalø Slotskro', 0, 15, 1)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (6, N'Mols Bjerge', N'Kom på en spændende vandretur på Mols, hvor bilen parkeres ved stranden ved frakørslen til Strandkær. Vi går op forbi Strandkær og kommer ud i bakkerne ved Toggerbo. Se nationalparkens herligheder med en kyndig guide, nemlig Kirsten, som selv har boet på Mols i mange år. Vi vil også gå op på Trehøje og nyde den formidable udsigt over landskabet. Du vil på denne tur have rige muligheder for at på og lytte til fuglelivet. Terrænet er meget kuperet og afvekslende og det er aldrig kedeligt at gå her. Der er altid noget nyt at se Undervejs på turen vil Kirsten fortælle om forskellige faktuelle seværdigheder og interessante iagttagelser Alle kan være med, men du skal have en stor interesse i naturen og dens seværdigheder. Medbring vand, madpakke, kaffe og kage, da der undervejs er indlagt to pauser. Turen foregår i et roligt tempo.', 1, 5, 4, CAST(0xA33C0B00 AS Date), CAST(0x00A08C0000000000 AS Time), N'Parkeringspladsen ved frakørslen til Strandkjær', 0, 10, 1)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (7, N'Kalø Slotsruin', N'Tag hele familien med på en tur til Kalø Slotsruin, hvor både børn og voksne kan se den flotte borgruin og høre om livet på borgen. I kan høre om forskellige lægeplanter. Gå hen over dæmningen og gå rundt om ruinen langs stranden og se de høje skrænter ud mod vandet. Kom også op i tårnet og nyd udsigten. Undervejs på turen vil Kirsten fortælle om forskellige faktuelle seværdigheder og interessante iagttagelser. Alle kan være med, men du skal have en stor interesse i naturen og dens seværdigheder. Medbring vand, kaffe og kage, da der undervejs er indlagt en lille pause. Tempoet er ikke højere end at alle kan følge med.', 1, 4, 3, CAST(0xB93C0B00 AS Date), CAST(0x00A08C0000000000 AS Time), N'Parkeringspladsen ved Kalø Slotskro', 10, 15, 3)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (8, N'Kalø Slotsruin', N'Tag hele familien med på en tur til Kalø Slotsruin, hvor både børn og voksne kan se den flotte borgruin og høre om livet på borgen. I kan høre om forskellige lægeplanter. Gå hen over dæmningen og gå rundt om ruinen langs stranden og se de høje skrænter ud mod vandet. Kom også op i tårnet og nyd udsigten. Undervejs på turen vil Kirsten fortælle om forskellige faktuelle seværdigheder og interessante iagttagelser. Alle kan være med, men du skal have en stor interesse i naturen og dens seværdigheder. Medbring vand, kaffe og kage, da der undervejs er indlagt en lille pause. Tempoet er ikke højere end at alle kan følge med.', 1, 4, 3, CAST(0x333D0B00 AS Date), CAST(0x00A08C0000000000 AS Time), N'Parkeringspladsen ved Kalø Slotskro', 10, 15, 3)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (9, N'Mols Bjerge', N'Kom på en spændende vandretur på Mols, hvor bilen parkeres ved stranden ved frakørslen til Strandkær. Vi går op forbi Strandkær og kommer ud i bakkerne ved Toggerbo. Se nationalparkens herligheder med en kyndig guide, nemlig Kirsten, som selv har boet på Mols i mange år. Vi vil også gå op på Trehøje og nyde den formidable udsigt over landskabet. Du vil på denne tur have rige muligheder for at se på og lytte til fuglelivet. Terrænet er meget kuperet og afvekslende og det er aldrig kedeligt at gå her. Der er altid noget nyt at se Undervejs på turen vil Kirsten fortælle om forskellige faktuelle seværdigheder og interessante iagttagelser Alle kan være med, men du skal have en stor interesse i naturen og dens seværdigheder. Medbring vand, madpakke, kaffe og kage, da der undervejs er indlagt to pauser. Turen foregår i et roligt tempo.', 1, 5, 4, CAST(0xBE3C0B00 AS Date), CAST(0x00A08C0000000000 AS Time), N'Parkeringspladsen ved frakørslen til Strandkjær', 0, 10, 3)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (10, N'Mols Bjerge', N'Kom på en spændende vandretur på Mols, hvor bilen parkeres ved stranden ved frakørslen til Strandkær. Vi går op forbi Strandkær og kommer ud i bakkerne ved Toggerbo. Se nationalparkens herligheder med en kyndig guide, nemlig Kirsten, som selv har boet på Mols i mange år. Vi vil også gå op på Trehøje og nyde den formidable udsigt over landskabet. Du vil på denne tur have rige muligheder for at se på og lytte til fuglelivet. Terrænet er meget kuperet og afvekslende og det er aldrig kedeligt at gå her. Der er altid noget nyt at se Undervejs på turen vil Kirsten fortælle om forskellige faktuelle seværdigheder og interessante iagttagelser Alle kan være med, men du skal have en stor interesse i naturen og dens seværdigheder. Medbring vand, madpakke, kaffe og kage, da der undervejs er indlagt to pauser. Turen foregår i et roligt tempo.', 1, 5, 4, CAST(0x7A3D0B00 AS Date), CAST(0x00A08C0000000000 AS Time), N'Parkeringspladsen ved frakørslen til Strandkjær', 0, 10, 3)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (11, N'Mols på en ny måde', N'Kom på en spændende vandretur på Mols, hvor vi vil komme forbi Poskær Stenhus, der er Danmarks største stendysse, gadekæret i Agri, der blev dannet for omkring 2000 år siden, Vi vil også gå op på Trehøje og nyde den formidable udsigt over landskabet. Du vil på denne tur have rige muligheder for at se på og lytte til fuglelivet. Terrænet er meget kuperet og afvekslende og det er aldrig kedeligt at gå her. Der er altid noget nyt at se Undervejs på turen vil Jens fortælle om forskellige faktuelle seværdigheder og interessante iagttagelser Alle kan være med, men du skal have en stor interesse i naturen og dens seværdigheder. Medbring vand, madpakke, kaffe og kage, da der undervejs er indlagt to pauser.
', 1, 6, 5, CAST(0xD73C0B00 AS Date), CAST(0x00A08C0000000000 AS Time), N'Parkeringspladsen ved Agri Kirke', 0, 10, 3)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (12, N'Djursland på kryds og tværs', N'Det er lykkedes for os at få Peter Ole Hansen til at komme den 22. marts og fortælle os om de mange muligheder Djursland byder på, når man gerne vil vandre og samtidig se mange forskellige ting. Det er både med hensyn til naturen og til seværdigheder. Klubben vil være vært med kaffe og kage. Kontakt Karla Bakkebjerg for yderligere oplysninger. ', 2, 0, 6, CAST(0xA53C0B00 AS Date), CAST(0x00300B0100000000 AS Time), N'Salen, Vandrehjemmet i Rønde', 25, 25, NULL)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (13, N'Thorsager-Bregnet sogne', N'Poul Nymand kommer og fortæller om Bregnet og Thorsager Sogne. Han fortæller om anekdoter og give faktuelle oplysninger. Desuden vil han også fortælle om gode vandreture i området. Klubben vil være vært med kaffe og kage. Kontakt Karla Bakkebjerg for yderligere oplysninger.', 2, 0, 6, CAST(0xBC3C0B00 AS Date), CAST(0x0000E10000000000 AS Time), N'Salen, Vandrehjemmet i Rønde', 25, 20, NULL)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (14, N'Thorsager-Bregnet sogne', N'Poul Nymand kommer og fortæller om Bregnet og Thorsager Sogne. Han fortæller om anekdoter og give faktuelle oplysninger. Desuden vil han også fortælle om gode vandreture i området. Klubben vil være vært med kaffe og kage. Kontakt Karla Bakkebjerg for yderligere oplysninger.', 2, 0, 6, CAST(0x9E3C0B00 AS Date), CAST(0x0000E10000000000 AS Time), N'Salen, Vandrehjemmet i Rønde', 25, 20, NULL)
INSERT [dbo].[tblEvents] ([fldEventID], [fldEventTitle], [fldEventDescription], [fldCategory_FK], [fldDistance], [fldInstructor_FK], [fldDate], [fldTime], [fldLocation], [fldPrice], [fldAntal], [fldSubCategory_fk]) VALUES (15, N'Forårsarrangementet', N'Klubben inviterer til grill og pølser lørdag den 15. april klokken 14 på pladsen foran Vandrehjemmet, hvor vi markerer klubbens 25 års jubliæum. Alle er velkomne til at deltage. Arrangementet er også for personer, der gerne vil høre mere om klubben og dens arrangementer og eventuelt blive medlem. Er man medlem tilmelder man sig, som man plejer. Men er man ikke medlem, så ringer eller mailer man til Karla Bakkebjerg. Det koster 10, - kroner per deltager men så serverer vi også både pølser, sodavand, kaffe og kage', 3, 0, 3, CAST(0x9C3C0B00 AS Date), CAST(0x00E0C40000000000 AS Time), N'Parkeringspladsen foran Vandrehjemmet', 10, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblEvents] OFF
/****** Object:  Table [dbo].[tblEventComments]    Script Date: 03/17/2017 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEventComments](
	[fldCommentId] [int] IDENTITY(1,1) NOT NULL,
	[fldUser_FK] [int] NULL,
	[fldComment] [varchar](250) NULL,
	[fldDate] [date] NULL,
	[fldTime] [time](7) NULL,
	[fldEvent_FK] [int] NULL,
 CONSTRAINT [PK_tblEventComments] PRIMARY KEY CLUSTERED 
(
	[fldCommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblEventComments] ON
INSERT [dbo].[tblEventComments] ([fldCommentId], [fldUser_FK], [fldComment], [fldDate], [fldTime], [fldEvent_FK]) VALUES (1, 4, N'lalalal', CAST(0x943C0B00 AS Date), CAST(0x0781FBCEF4550000 AS Time), 1)
INSERT [dbo].[tblEventComments] ([fldCommentId], [fldUser_FK], [fldComment], [fldDate], [fldTime], [fldEvent_FK]) VALUES (2, 1, N'this is a comment', CAST(0x943C0B00 AS Date), CAST(0x0781FBCEF4550000 AS Time), 1)
SET IDENTITY_INSERT [dbo].[tblEventComments] OFF
/****** Object:  Table [dbo].[tblCategory]    Script Date: 03/17/2017 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCategory](
	[fldcategoryID] [int] IDENTITY(1,1) NOT NULL,
	[fldCategoryName] [varchar](50) NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[fldcategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON
INSERT [dbo].[tblCategory] ([fldcategoryID], [fldCategoryName]) VALUES (1, N'Vandreture')
INSERT [dbo].[tblCategory] ([fldcategoryID], [fldCategoryName]) VALUES (2, N'Foredrag')
INSERT [dbo].[tblCategory] ([fldcategoryID], [fldCategoryName]) VALUES (3, N'Øvrige')
INSERT [dbo].[tblCategory] ([fldcategoryID], [fldCategoryName]) VALUES (4, N'Arkiv')
INSERT [dbo].[tblCategory] ([fldcategoryID], [fldCategoryName]) VALUES (5, N'test')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
/****** Object:  Table [dbo].[tblBestyrelse]    Script Date: 03/17/2017 11:27:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBestyrelse](
	[fldBestyrelseID] [int] IDENTITY(1,1) NOT NULL,
	[fldTitle] [varchar](50) NULL,
	[fldDescription] [varchar](max) NULL,
	[fldUser_FK] [int] NULL,
	[fldEmail] [varchar](50) NULL,
	[fldBestyrelseImage] [varchar](150) NULL,
 CONSTRAINT [PK_tblBestyreelse] PRIMARY KEY CLUSTERED 
(
	[fldBestyrelseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblBestyrelse] ON
INSERT [dbo].[tblBestyrelse] ([fldBestyrelseID], [fldTitle], [fldDescription], [fldUser_FK], [fldEmail], [fldBestyrelseImage]) VALUES (1, N'Formand', N'Bestyrelsesmøder, Modtagelse/distribution af div. post, kataloger og blade, annoncering/tilrettelæggelse af generalforsamling, dagsorden til bestyrelsesmøder, planlægning af møder', 6, N'karla@vandre.dk', N'karla.png')
INSERT [dbo].[tblBestyrelse] ([fldBestyrelseID], [fldTitle], [fldDescription], [fldUser_FK], [fldEmail], [fldBestyrelseImage]) VALUES (2, N'Næstformand', N'Formandens højre hånd - “stand-in”', 4, N'poul@vandre.dk', N'poul.png')
INSERT [dbo].[tblBestyrelse] ([fldBestyrelseID], [fldTitle], [fldDescription], [fldUser_FK], [fldEmail], [fldBestyrelseImage]) VALUES (3, N'Sekretær', N'Skriver referat af alle møder og sørger for udsendelse inden 8 dage, ajourføring af adresseliste over ansvarlige/bestyrelsesmedlemmer ', 1, N'kirsten@vandre.dk', N'kirsten.png')
INSERT [dbo].[tblBestyrelse] ([fldBestyrelseID], [fldTitle], [fldDescription], [fldUser_FK], [fldEmail], [fldBestyrelseImage]) VALUES (4, N'Kasserer', N'Betaling af udgifter til arrangementer, bogføring af indtægter og udgifter, årsregnskab, revisorkontakt. ', 7, N'michael@vandre.dk', N'michael.png')
INSERT [dbo].[tblBestyrelse] ([fldBestyrelseID], [fldTitle], [fldDescription], [fldUser_FK], [fldEmail], [fldBestyrelseImage]) VALUES (5, N'Bestyrelsesmedlem', N'Bestyrelsesmedlem', 8, N'jens@vandre.dk', N'jens.png')
INSERT [dbo].[tblBestyrelse] ([fldBestyrelseID], [fldTitle], [fldDescription], [fldUser_FK], [fldEmail], [fldBestyrelseImage]) VALUES (6, N'Bestyrelsesmedlem', N'Bestyrelsesmedlem', 9, N'jorgen@vandre.dk', N'joergen.png')
SET IDENTITY_INSERT [dbo].[tblBestyrelse] OFF
