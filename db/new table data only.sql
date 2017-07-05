USE [star_energi_geo]
GO
SET IDENTITY_INSERT [dbo].[afp] ON 

INSERT [dbo].[afp] ([id], [afp_value], [afp_description], [afp_score]) VALUES (1, 1, N'Regular inspection', 1)
INSERT [dbo].[afp] ([id], [afp_value], [afp_description], [afp_score]) VALUES (2, 2, N'Regular inspection', 1)
INSERT [dbo].[afp] ([id], [afp_value], [afp_description], [afp_score]) VALUES (3, 3, N'Regular inspection', 1)
INSERT [dbo].[afp] ([id], [afp_value], [afp_description], [afp_score]) VALUES (4, 4, N'1 failure in 10 year', 1)
INSERT [dbo].[afp] ([id], [afp_value], [afp_description], [afp_score]) VALUES (5, 5, N'2 failure in 10 year', 1)
INSERT [dbo].[afp] ([id], [afp_value], [afp_description], [afp_score]) VALUES (6, 6, N'Minor inspection scope', 1)
INSERT [dbo].[afp] ([id], [afp_value], [afp_description], [afp_score]) VALUES (7, 7, N'Minor inspection scope', 1)
INSERT [dbo].[afp] ([id], [afp_value], [afp_description], [afp_score]) VALUES (8, 8, N'2~10 failure in 1 year ', 1)
INSERT [dbo].[afp] ([id], [afp_value], [afp_description], [afp_score]) VALUES (9, 9, N'2~10 failure in 1 year ', 1)
INSERT [dbo].[afp] ([id], [afp_value], [afp_description], [afp_score]) VALUES (10, 10, N'Include in major inspection scope', 1)
SET IDENTITY_INSERT [dbo].[afp] OFF
SET IDENTITY_INSERT [dbo].[oc] ON 

INSERT [dbo].[oc] ([id], [oc_value], [oc_description], [oc_score]) VALUES (6, 1, N'Financial loss from $0 to $1,000', 25)
INSERT [dbo].[oc] ([id], [oc_value], [oc_description], [oc_score]) VALUES (7, 2, N'Financial loss from $0 to $1,000', 25)
INSERT [dbo].[oc] ([id], [oc_value], [oc_description], [oc_score]) VALUES (8, 3, N'Financial loss from $0 to $1,000', 25)
INSERT [dbo].[oc] ([id], [oc_value], [oc_description], [oc_score]) VALUES (9, 4, N'Financial loss from $1,000 to $50,000', 25)
INSERT [dbo].[oc] ([id], [oc_value], [oc_description], [oc_score]) VALUES (10, 5, N'Financial loss from $1,000 to $50,000', 25)
INSERT [dbo].[oc] ([id], [oc_value], [oc_description], [oc_score]) VALUES (11, 6, N'Financial loss from $50,000 to $150,000', 25)
INSERT [dbo].[oc] ([id], [oc_value], [oc_description], [oc_score]) VALUES (12, 7, N'Financial loss from $50,000 to $150,000', 25)
INSERT [dbo].[oc] ([id], [oc_value], [oc_description], [oc_score]) VALUES (13, 8, N'Financial loss from $150,000 to $1 million
', 25)
INSERT [dbo].[oc] ([id], [oc_value], [oc_description], [oc_score]) VALUES (14, 9, N'Financial loss from $150,000 to $1 million
', 25)
INSERT [dbo].[oc] ([id], [oc_value], [oc_description], [oc_score]) VALUES (15, 10, N'Financial loss in excess of $1 million
', 25)
SET IDENTITY_INSERT [dbo].[oc] OFF
SET IDENTITY_INSERT [dbo].[ocr] ON 

INSERT [dbo].[ocr] ([id], [ocr_value], [ocr_description], [ocr_score]) VALUES (1, 1, N'Sistem Induk', 1)
INSERT [dbo].[ocr] ([id], [ocr_value], [ocr_description], [ocr_score]) VALUES (2, 2, N'Sistem Induk', 1)
INSERT [dbo].[ocr] ([id], [ocr_value], [ocr_description], [ocr_score]) VALUES (3, 3, N'Sistem Induk', 1)
INSERT [dbo].[ocr] ([id], [ocr_value], [ocr_description], [ocr_score]) VALUES (4, 4, N'Redundancy Lebih Besar Dari 100%', 1)
INSERT [dbo].[ocr] ([id], [ocr_value], [ocr_description], [ocr_score]) VALUES (5, 5, N'Redundancy Lebih Besar Dari 100%', 1)
INSERT [dbo].[ocr] ([id], [ocr_value], [ocr_description], [ocr_score]) VALUES (6, 6, N'Dalam 12 jam or Redundancy 100%', 1)
INSERT [dbo].[ocr] ([id], [ocr_value], [ocr_description], [ocr_score]) VALUES (7, 7, N'Dalam 12 jam or Redundancy 100%', 1)
INSERT [dbo].[ocr] ([id], [ocr_value], [ocr_description], [ocr_score]) VALUES (8, 8, N'Dalam 1 jam or Redundancy 100%', 1)
INSERT [dbo].[ocr] ([id], [ocr_value], [ocr_description], [ocr_score]) VALUES (9, 9, N'Dalam 1 jam or Redundancy 100%', 1)
INSERT [dbo].[ocr] ([id], [ocr_value], [ocr_description], [ocr_score]) VALUES (10, 10, N'Kegagalan Fungsi Sistem Induk', 1)
SET IDENTITY_INSERT [dbo].[ocr] OFF
SET IDENTITY_INSERT [dbo].[pe] ON 

INSERT [dbo].[pe] ([id], [pe_value], [pe_description], [pe_score]) VALUES (1, 1, N'Berdampak Terhadap Effisiensi', 5)
INSERT [dbo].[pe] ([id], [pe_value], [pe_description], [pe_score]) VALUES (2, 2, N'Berdampak Terhadap Effisiensi', 5)
INSERT [dbo].[pe] ([id], [pe_value], [pe_description], [pe_score]) VALUES (3, 3, N'Berdampak Terhadap Effisiensi', 5)
INSERT [dbo].[pe] ([id], [pe_value], [pe_description], [pe_score]) VALUES (4, 4, N'Berdampak Terhadap Effisiensi', 5)
INSERT [dbo].[pe] ([id], [pe_value], [pe_description], [pe_score]) VALUES (5, 5, N'Berdampak Terhadap Effisiensi', 5)
INSERT [dbo].[pe] ([id], [pe_value], [pe_description], [pe_score]) VALUES (6, 6, N'Sedang Terhadap Effisiensi', 5)
INSERT [dbo].[pe] ([id], [pe_value], [pe_description], [pe_score]) VALUES (7, 7, N'Sedang Terhadap Effisiensi', 5)
INSERT [dbo].[pe] ([id], [pe_value], [pe_description], [pe_score]) VALUES (8, 8, N'Sedang Terhadap Effisiensi', 5)
INSERT [dbo].[pe] ([id], [pe_value], [pe_description], [pe_score]) VALUES (9, 9, N'Sedang Terhadap Effisiensi', 5)
INSERT [dbo].[pe] ([id], [pe_value], [pe_description], [pe_score]) VALUES (10, 10, N'Besar Terhadap Effisiensi', 5)
SET IDENTITY_INSERT [dbo].[pe] OFF
SET IDENTITY_INSERT [dbo].[pt] ON 

INSERT [dbo].[pt] ([id], [pt_value], [pt_description], [pt_score]) VALUES (1, 1, N'Produksi', 50)
INSERT [dbo].[pt] ([id], [pt_value], [pt_description], [pt_score]) VALUES (2, 2, N'Produksi', 50)
INSERT [dbo].[pt] ([id], [pt_value], [pt_description], [pt_score]) VALUES (3, 3, N'Produksi', 50)
INSERT [dbo].[pt] ([id], [pt_value], [pt_description], [pt_score]) VALUES (4, 4, N'Berpotensi rendah untuk trip', 50)
INSERT [dbo].[pt] ([id], [pt_value], [pt_description], [pt_score]) VALUES (5, 5, N'Berpotensi rendah untuk trip', 50)
INSERT [dbo].[pt] ([id], [pt_value], [pt_description], [pt_score]) VALUES (6, 6, N'Berpotensi rendah untuk trip', 50)
INSERT [dbo].[pt] ([id], [pt_value], [pt_description], [pt_score]) VALUES (7, 7, N'Berpotensi rendah untuk trip', 50)
INSERT [dbo].[pt] ([id], [pt_value], [pt_description], [pt_score]) VALUES (8, 8, N'Unit trip', 50)
INSERT [dbo].[pt] ([id], [pt_value], [pt_description], [pt_score]) VALUES (9, 9, N'Unit Trip', 50)
INSERT [dbo].[pt] ([id], [pt_value], [pt_description], [pt_score]) VALUES (10, 10, N'Plant (semua unit) shut down ', 50)
SET IDENTITY_INSERT [dbo].[pt] OFF
SET IDENTITY_INSERT [dbo].[rc] ON 

INSERT [dbo].[rc] ([id], [rc_value], [rc_description], [rc_score]) VALUES (1, 1, N'ecosystem or water resources, incident reporting according to routine protocols.', 10)
INSERT [dbo].[rc] ([id], [rc_value], [rc_description], [rc_score]) VALUES (2, 2, N'ecosystem or water resources, incident reporting according to routine protocols.', 10)
INSERT [dbo].[rc] ([id], [rc_value], [rc_description], [rc_score]) VALUES (3, 3, N'ecosystem or water resources, incident reporting according to routine protocols.', 10)
INSERT [dbo].[rc] ([id], [rc_value], [rc_description], [rc_score]) VALUES (4, 4, N'negative effects on ecosystem. Requires immediate regulator notification.', 10)
INSERT [dbo].[rc] ([id], [rc_value], [rc_description], [rc_score]) VALUES (5, 5, N'negative effects on ecosystem. Requires immediate regulator notification.', 10)
INSERT [dbo].[rc] ([id], [rc_value], [rc_description], [rc_score]) VALUES (6, 6, N'Triggers regulatory investigation.', 10)
INSERT [dbo].[rc] ([id], [rc_value], [rc_description], [rc_score]) VALUES (7, 7, N'Triggers regulatory investigation.', 10)
INSERT [dbo].[rc] ([id], [rc_value], [rc_description], [rc_score]) VALUES (8, 8, N'Significance on sensitive area. Likely to result in Regulatory intervention/action.', 10)
INSERT [dbo].[rc] ([id], [rc_value], [rc_description], [rc_score]) VALUES (9, 9, N'Significance on sensitive area. Likely to result in Regulatory intervention/action.', 10)
INSERT [dbo].[rc] ([id], [rc_value], [rc_description], [rc_score]) VALUES (10, 10, N'Ecosystem. Regulatory & high level Government intervention/action.', 10)
SET IDENTITY_INSERT [dbo].[rc] OFF
SET IDENTITY_INSERT [dbo].[sf] ON 

INSERT [dbo].[sf] ([id], [sf_value], [sf_description], [sf_score]) VALUES (1, 1, N'Slight health effects', 10)
INSERT [dbo].[sf] ([id], [sf_value], [sf_description], [sf_score]) VALUES (2, 2, N'Slight health effects', 10)
INSERT [dbo].[sf] ([id], [sf_value], [sf_description], [sf_score]) VALUES (3, 3, N'Slight health effects', 10)
INSERT [dbo].[sf] ([id], [sf_value], [sf_description], [sf_score]) VALUES (4, 4, N'Restricted workday case (RWC)', 10)
INSERT [dbo].[sf] ([id], [sf_value], [sf_description], [sf_score]) VALUES (5, 5, N'Restricted workday case (RWC)', 10)
INSERT [dbo].[sf] ([id], [sf_value], [sf_description], [sf_score]) VALUES (6, 6, N'Lost workday case (LWC)', 10)
INSERT [dbo].[sf] ([id], [sf_value], [sf_description], [sf_score]) VALUES (7, 7, N'Lost workday case (LWC)', 10)
INSERT [dbo].[sf] ([id], [sf_value], [sf_description], [sf_score]) VALUES (8, 8, N'Single permanent disabling injury and/or long term off work', 10)
INSERT [dbo].[sf] ([id], [sf_value], [sf_description], [sf_score]) VALUES (9, 9, N'Single permanent disabling injury and/or long term off work', 10)
INSERT [dbo].[sf] ([id], [sf_value], [sf_description], [sf_score]) VALUES (10, 10, N'Single and multiple fatality OR multiple permanent disabling injury', 10)
SET IDENTITY_INSERT [dbo].[sf] OFF
