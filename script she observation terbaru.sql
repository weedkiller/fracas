USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[she_observation]    Script Date: 4/1/2013 7:44:54 PM ******/
DROP TABLE [dbo].[she_observation]
GO
/****** Object:  Table [dbo].[she_observation]    Script Date: 4/1/2013 7:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[she_observation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[she_obs] [tinyint] NULL,
	[she_ins] [tinyint] NULL,
	[accident_unsafe] [varchar](2) NULL,
	[accident_safe] [varchar](2) NULL,
	[fire_unsafe] [varchar](2) NULL,
	[fire_safe] [varchar](2) NULL,
	[prevention_unsafe] [varchar](2) NULL,
	[prevention_safe] [varchar](2) NULL,
	[supervisor_unsafe] [varchar](2) NULL,
	[supervisor_safe] [varchar](2) NULL,
	[fit_work_unsafe] [varchar](2) NULL,
	[fit_work_safe] [varchar](2) NULL,
	[psychological_unsafe] [varchar](2) NULL,
	[psychological_safe] [varchar](2) NULL,
	[posture_unsafe] [varchar](2) NULL,
	[posture_safe] [varchar](2) NULL,
	[substance_unsafe] [varchar](2) NULL,
	[substance_safe] [varchar](2) NULL,
	[hygiene_unsafe] [varchar](2) NULL,
	[hygiene_safe] [varchar](2) NULL,
	[house_unsafe] [varchar](2) NULL,
	[house_safe] [varchar](2) NULL,
	[standard_unsafe] [varchar](2) NULL,
	[standard_safe] [varchar](2) NULL,
	[spill_unsafe] [varchar](2) NULL,
	[spill_safe] [varchar](2) NULL,
	[waste_energy_unsafe] [varchar](2) NULL,
	[waste_energy_safe] [varchar](2) NULL,
	[containment_unsafe] [varchar](2) NULL,
	[containment_safe] [varchar](2) NULL,
	[absorbent_unsafe] [varchar](2) NULL,
	[absorbent_safe] [varchar](2) NULL,
	[hira_unsafe] [varchar](2) NULL,
	[hira_safe] [varchar](2) NULL,
	[ptw_unsafe] [varchar](2) NULL,
	[ptw_safe] [varchar](2) NULL,
	[sop_unsafe] [varchar](2) NULL,
	[sop_safe] [varchar](2) NULL,
	[msds_unsafe] [varchar](2) NULL,
	[msds_safe] [varchar](2) NULL,
	[emergency_unsafe] [varchar](2) NULL,
	[emergency_safe] [varchar](2) NULL,
	[certificates_unsafe] [varchar](2) NULL,
	[certificates_safe] [varchar](2) NULL,
	[ppe_unsafe] [varchar](2) NULL,
	[ppe_safe] [varchar](2) NULL,
	[hand_unsafe] [varchar](2) NULL,
	[hand_safe] [varchar](2) NULL,
	[mechanical_unsafe] [varchar](2) NULL,
	[mechanical_safe] [varchar](2) NULL,
	[electrical_unsafe] [varchar](2) NULL,
	[electrical_safe] [varchar](2) NULL,
	[vehicular_unsafe] [varchar](2) NULL,
	[vehicular_safe] [varchar](2) NULL,
	[substandard_unsafe] [varchar](2) NULL,
	[substandard_safe] [varchar](2) NULL,
	[h2s_unsafe] [varchar](2) NULL,
	[h2s_safe] [varchar](2) NULL,
	[workplace_health_unsafe] [varchar](2) NULL,
	[workplace_health_safe] [varchar](2) NULL,
	[date_time] [datetime] NULL,
	[observer] [varchar](255) NULL,
	[department] [varchar](255) NULL,
	[location] [varchar](255) NULL,
	[activity] [varchar](255) NULL,
	[safe_observed] [tinyint] NULL,
	[action_encourages] [tinyint] NULL,
	[action_encourage] [text] NULL,
	[unsafe_observed] [tinyint] NULL,
	[immediate_corrective_act] [tinyint] NULL,
	[action_prevents] [tinyint] NULL,
	[action_prevent] [text] NULL,
	[accident_risk] [varchar](3) NULL,
	[fire_risk] [varchar](3) NULL,
	[prevention_risk] [varchar](3) NULL,
	[supervisor_risk] [varchar](3) NULL,
	[fit_work_risk] [varchar](3) NULL,
	[psychological_risk] [varchar](3) NULL,
	[posture_risk] [varchar](3) NULL,
	[substance_risk] [varchar](3) NULL,
	[hygiene_risk] [varchar](3) NULL,
	[house_risk] [varchar](3) NULL,
	[standard_risk] [varchar](3) NULL,
	[spill_risk] [varchar](3) NULL,
	[waste_energy_risk] [varchar](3) NULL,
	[containment_risk] [varchar](3) NULL,
	[absorbent_risk] [varchar](3) NULL,
	[hira_risk] [varchar](3) NULL,
	[ptw_risk] [varchar](3) NULL,
	[sop_risk] [varchar](3) NULL,
	[msds_risk] [varchar](3) NULL,
	[emergency_risk] [varchar](3) NULL,
	[certificates_risk] [varchar](3) NULL,
	[ppe_risk] [varchar](3) NULL,
	[hand_risk] [varchar](3) NULL,
	[mechanical_risk] [varchar](3) NULL,
	[electrical_risk] [varchar](3) NULL,
	[vehicular_risk] [varchar](3) NULL,
	[substandard_risk] [varchar](3) NULL,
	[h2s_risk] [varchar](3) NULL,
	[workplace_health_risk] [varchar](3) NULL,
 CONSTRAINT [PK_she_observation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[she_observation] ON 

INSERT [dbo].[she_observation] ([id], [she_obs], [she_ins], [accident_unsafe], [accident_safe], [fire_unsafe], [fire_safe], [prevention_unsafe], [prevention_safe], [supervisor_unsafe], [supervisor_safe], [fit_work_unsafe], [fit_work_safe], [psychological_unsafe], [psychological_safe], [posture_unsafe], [posture_safe], [substance_unsafe], [substance_safe], [hygiene_unsafe], [hygiene_safe], [house_unsafe], [house_safe], [standard_unsafe], [standard_safe], [spill_unsafe], [spill_safe], [waste_energy_unsafe], [waste_energy_safe], [containment_unsafe], [containment_safe], [absorbent_unsafe], [absorbent_safe], [hira_unsafe], [hira_safe], [ptw_unsafe], [ptw_safe], [sop_unsafe], [sop_safe], [msds_unsafe], [msds_safe], [emergency_unsafe], [emergency_safe], [certificates_unsafe], [certificates_safe], [ppe_unsafe], [ppe_safe], [hand_unsafe], [hand_safe], [mechanical_unsafe], [mechanical_safe], [electrical_unsafe], [electrical_safe], [vehicular_unsafe], [vehicular_safe], [substandard_unsafe], [substandard_safe], [h2s_unsafe], [h2s_safe], [workplace_health_unsafe], [workplace_health_safe], [date_time], [observer], [department], [location], [activity], [safe_observed], [action_encourages], [action_encourage], [unsafe_observed], [immediate_corrective_act], [action_prevents], [action_prevent], [accident_risk], [fire_risk], [prevention_risk], [supervisor_risk], [fit_work_risk], [psychological_risk], [posture_risk], [substance_risk], [hygiene_risk], [house_risk], [standard_risk], [spill_risk], [waste_energy_risk], [containment_risk], [absorbent_risk], [hira_risk], [ptw_risk], [sop_risk], [msds_risk], [emergency_risk], [certificates_risk], [ppe_risk], [hand_risk], [mechanical_risk], [electrical_risk], [vehicular_risk], [substandard_risk], [h2s_risk], [workplace_health_risk]) VALUES (1, 1, 1, N'UA', NULL, NULL, N'SA', N'UA', N'SA', N'UC', NULL, N'UA', N'SC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'UA', NULL, NULL, NULL, N'UC', NULL, NULL, N'SA', NULL, N'SC', NULL, N'SA', NULL, N'SC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'UA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A181017B0740 AS DateTime), N'ala', N'lalal', N'asdasdas', N'asdasdsad', 1, 1, N'sadadasdsadasdas asdasdsadasdasdasd asdsadasdasdsadsadasdsa asdasdasdsa
asdsadas
asdsadsa
sadsadsa
sadsaddasasdsadasdasd asdasdsadasdasdsa asdasdasdasdsa asdsadasdasdsa', 1, 0, 1, N'11111111112222222222333333333444444444455555555556666666666
11111111112222222222333333333444444444455555555556666666666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[she_observation] ([id], [she_obs], [she_ins], [accident_unsafe], [accident_safe], [fire_unsafe], [fire_safe], [prevention_unsafe], [prevention_safe], [supervisor_unsafe], [supervisor_safe], [fit_work_unsafe], [fit_work_safe], [psychological_unsafe], [psychological_safe], [posture_unsafe], [posture_safe], [substance_unsafe], [substance_safe], [hygiene_unsafe], [hygiene_safe], [house_unsafe], [house_safe], [standard_unsafe], [standard_safe], [spill_unsafe], [spill_safe], [waste_energy_unsafe], [waste_energy_safe], [containment_unsafe], [containment_safe], [absorbent_unsafe], [absorbent_safe], [hira_unsafe], [hira_safe], [ptw_unsafe], [ptw_safe], [sop_unsafe], [sop_safe], [msds_unsafe], [msds_safe], [emergency_unsafe], [emergency_safe], [certificates_unsafe], [certificates_safe], [ppe_unsafe], [ppe_safe], [hand_unsafe], [hand_safe], [mechanical_unsafe], [mechanical_safe], [electrical_unsafe], [electrical_safe], [vehicular_unsafe], [vehicular_safe], [substandard_unsafe], [substandard_safe], [h2s_unsafe], [h2s_safe], [workplace_health_unsafe], [workplace_health_safe], [date_time], [observer], [department], [location], [activity], [safe_observed], [action_encourages], [action_encourage], [unsafe_observed], [immediate_corrective_act], [action_prevents], [action_prevent], [accident_risk], [fire_risk], [prevention_risk], [supervisor_risk], [fit_work_risk], [psychological_risk], [posture_risk], [substance_risk], [hygiene_risk], [house_risk], [standard_risk], [spill_risk], [waste_energy_risk], [containment_risk], [absorbent_risk], [hira_risk], [ptw_risk], [sop_risk], [msds_risk], [emergency_risk], [certificates_risk], [ppe_risk], [hand_risk], [mechanical_risk], [electrical_risk], [vehicular_risk], [substandard_risk], [h2s_risk], [workplace_health_risk]) VALUES (5, 0, 1, N'11', N'00', N'10', N'01', N'01', N'10', N'00', N'11', N'11', N'00', N'11', N'00', N'11', N'00', N'11', N'00', N'11', N'00', N'10', N'01', N'10', N'01', N'10', N'01', N'10', N'01', N'10', N'01', N'10', N'01', N'01', N'10', N'01', N'10', N'01', N'10', N'01', N'10', N'01', N'10', N'01', N'10', N'00', N'11', N'00', N'11', N'00', N'11', N'00', N'11', N'00', N'11', N'10', N'01', N'01', N'10', N'10', N'01', CAST(0x0000A19100EC7B10 AS DateTime), N'asdsad', N'A', N'asdasdsa', N'asdadas', 0, 1, N'asdsasafaca asdsadasdsa adsadsadsadsa asdsadsadsadas', 0, 0, 0, NULL, N'001', N'010', N'100', N'010', N'100', N'100', N'100', N'100', N'100', N'010', N'010', N'010', N'010', N'010', N'010', N'001', N'001', N'010', N'010', N'010', N'001', N'001', N'001', N'001', N'001', N'001', N'100', N'010', N'001')
SET IDENTITY_INSERT [dbo].[she_observation] OFF
