USE [HIRCASA]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 10/02/2023 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteId] [float] NULL,
	[Nombre] [nvarchar](255) NULL,
	[Telefono] [nvarchar](255) NULL,
	[Correo] [nvarchar](255) NULL,
	[Edad] [float] NULL,
	[MontoSolicitud] [money] NULL,
	[Estatus] [nvarchar](255) NULL,
	[Aprobación] [nvarchar](255) NULL,
	[FechaAlta] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 10/02/2023 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[PagoId] [float] NULL,
	[ClienteId] [float] NULL,
	[MontoPagado] [money] NULL,
	[Aplicado] [float] NULL,
	[FechaPago] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[v_clientes]    Script Date: 10/02/2023 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---se creara una vista para los datos

create view [dbo].[v_clientes]
as

select 
 cl.ClienteId
,cl.Nombre
,cl.Telefono
,cl.Correo
,cl.edad
,cl.MontoSolicitud
,cl.Estatus
,cl.Aprobación
,cl.FechaAlta
,pa.MontoPagado
,pa.FechaPago

from Clientes cl
inner join Pagos pa
on cl.ClienteId = pa.ClienteId;









GO
/****** Object:  Table [dbo].[Ajuste]    Script Date: 10/02/2023 17:41:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ajuste](
	[AjusteId] [float] NULL,
	[ClienteId] [float] NULL,
	[MontoTotal] [nvarchar](255) NULL,
	[Adeudo] [nvarchar](255) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Ajuste] ([AjusteId], [ClienteId], [MontoTotal], [Adeudo]) VALUES (1, 8, N'898960.61', N'117300.04')
INSERT [dbo].[Ajuste] ([AjusteId], [ClienteId], [MontoTotal], [Adeudo]) VALUES (2, 2, N'631239.40', N'962337.06')
INSERT [dbo].[Ajuste] ([AjusteId], [ClienteId], [MontoTotal], [Adeudo]) VALUES (3, 9, N'331876.00', N'117300.04')
INSERT [dbo].[Ajuste] ([AjusteId], [ClienteId], [MontoTotal], [Adeudo]) VALUES (4, 7, N'67764.01', N'962337.06')
INSERT [dbo].[Ajuste] ([AjusteId], [ClienteId], [MontoTotal], [Adeudo]) VALUES (5, 3, N'1713.89', N'117300.04')
INSERT [dbo].[Ajuste] ([AjusteId], [ClienteId], [MontoTotal], [Adeudo]) VALUES (6, 4, N'8372.77', N'962337.06')
INSERT [dbo].[Ajuste] ([AjusteId], [ClienteId], [MontoTotal], [Adeudo]) VALUES (7, 6, N'254661.68', N'117300.04')
INSERT [dbo].[Ajuste] ([AjusteId], [ClienteId], [MontoTotal], [Adeudo]) VALUES (8, 10, N'498882.82', N'962337.06')
INSERT [dbo].[Ajuste] ([AjusteId], [ClienteId], [MontoTotal], [Adeudo]) VALUES (9, 1, N'43000.00', N'117300.04')
INSERT [dbo].[Ajuste] ([AjusteId], [ClienteId], [MontoTotal], [Adeudo]) VALUES (10, 5, N'88656.60', N'962337.06')
GO
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Telefono], [Correo], [Edad], [MontoSolicitud], [Estatus], [Aprobación], [FechaAlta]) VALUES (1, N'Alyssa MacdonaldKing', N'477-1943', N'magnis.dis@yahoo.couk', 24, 74300.0400, N'?', N'?', N'Dec 4, 2021')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Telefono], [Correo], [Edad], [MontoSolicitud], [Estatus], [Aprobación], [FechaAlta]) VALUES (2, N'Irene CareySpears', N'1-153-173-1315', N'donec.feugiat@protonmail.com', 18, 1213748.2000, N'?', N'?', N'Sep 16, 2022')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Telefono], [Correo], [Edad], [MontoSolicitud], [Estatus], [Aprobación], [FechaAlta]) VALUES (3, N'HopeBest Charity', N'1-810-927-0758', N'sed.neque@yahoo.edu', 45, 378121.5800, N'?', N'?', N'Sep 18, 2021')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Telefono], [Correo], [Edad], [MontoSolicitud], [Estatus], [Aprobación], [FechaAlta]) VALUES (4, N'Kirsten Glover Carrison', N'488-7837', N'ipsum.ac.mi@google.edu', 39, 22430.1400, N'?', N'?', N'Feb 6, 2022')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Telefono], [Correo], [Edad], [MontoSolicitud], [Estatus], [Aprobación], [FechaAlta]) VALUES (5, N'Cheyenne Norton Mcdonald', N'1-638-481-3863', N'nulla.eu@yahoo.ca', 28, 664419.3900, N'?', N'?', N'Apr 1, 2022')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Telefono], [Correo], [Edad], [MontoSolicitud], [Estatus], [Aprobación], [FechaAlta]) VALUES (6, N'Kirk Nichols Douglas', N'348-0176', N'donec@yahoo.edu', 25, 980000.5000, N'?', N'?', N'Sep 24, 2022')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Telefono], [Correo], [Edad], [MontoSolicitud], [Estatus], [Aprobación], [FechaAlta]) VALUES (7, N'BlazeMasseyAdams', N'1-483-678-4909', N'sed@aol.edu', 56, 276899.8300, N'?', N'?', N'Jul 9, 2022')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Telefono], [Correo], [Edad], [MontoSolicitud], [Estatus], [Aprobación], [FechaAlta]) VALUES (8, N'RaphaelWright Allen', N'942-4114', N'dolor.donec.fringilla@aol.couk', 83, 778564.0000, N'Adeudo', NULL, N'Jul 28, 2022')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Telefono], [Correo], [Edad], [MontoSolicitud], [Estatus], [Aprobación], [FechaAlta]) VALUES (9, N'Pamela HansonLove', N'1-760-505-0882', N'sed@yahoo.org', 60, 331876.0000, N'?', N'?', N'Jan 13, 2022')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Telefono], [Correo], [Edad], [MontoSolicitud], [Estatus], [Aprobación], [FechaAlta]) VALUES (10, N'LoisByersParson', N'1-773-637-7287', N'eu.eleifend.nec@yahoo.com', 37, 634567.2000, N'?', N'?', N'Sep 10, 2022')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Telefono], [Correo], [Edad], [MontoSolicitud], [Estatus], [Aprobación], [FechaAlta]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (1, 8, 898960.6100, 1, N'Oct 11, 2021')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (2, 10, 498882.8200, 1, N'Aug 14, 2021')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (3, 2, 631239.4000, 1, N'Dec 26, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (4, 1, 43000.0000, 1, N'Oct 18, 2021')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (5, 5, 88656.6000, 0, N'Sep 6, 2021')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (6, 6, 254661.6800, 1, N'Jun 14, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (7, 2, 50846.0400, 1, N'Jul 20, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (8, 7, 67764.0100, 1, N'Sep 16, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (9, 6, 669890.8200, 1, N'Oct 3, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (10, 1, 2700.0000, 1, N'Oct 27, 2021')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (11, 9, 331876.0000, 1, N'Jan 24, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (12, 8, 787879.6800, 0, N'Jan 27, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (13, 8, 13777.7100, 1, N'Sep 14, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (14, 4, 8372.7700, 1, N'Feb 7, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (15, 1, 7298.0000, 1, N'Sep 6, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (16, 4, 2572.3100, 1, N'May 6, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (17, 10, 447671.3900, 1, N'Nov 25, 2021')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (18, 6, 197670.4000, 1, N'Oct 14, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (19, 10, 490376.3400, 1, N'Oct 14, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (20, 2, 326830.2300, 1, N'Dec 21, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (21, 3, 1713.8900, 0, N'May 7, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (22, 1, 1000.0400, 1, N'Apr 29, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (23, 3, 66661.3700, 1, N'Dec 6, 2021')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (24, 2, 238787.1800, 0, N'Feb 22, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (25, 5, 255220.0500, 1, N'Mar 15, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (26, 3, 68767.6200, 1, N'Oct 28, 2021')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (27, 7, 137308.5000, 1, N'Dec 13, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (28, 1, 20000.0000, 1, N'Aug 3, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (29, 2, 14578.3800, 1, N'Oct 22, 2021')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (30, 6, 64488.0100, 0, N'Dec 24, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (31, 4, 8264.7200, 1, N'May 25, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (32, 3, 348887.7400, 1, N'Dec 6, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (33, 2, 555687.9200, 1, N'Oct 9, 2021')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (34, 6, 537766.3200, 0, N'Oct 19, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (35, 10, 327769.8600, 1, N'Nov 22, 2021')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (36, 2, 31543.7600, 0, N'Aug 12, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (37, 2, 255678.5700, 1, N'Sep 22, 2022')
INSERT [dbo].[Pagos] ([PagoId], [ClienteId], [MontoPagado], [Aplicado], [FechaPago]) VALUES (38, 5, 366888.1500, 1, N'Apr 9, 2022')
GO
