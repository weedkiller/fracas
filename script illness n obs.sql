USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[she_illness_report]    Script Date: 3/15/2013 9:05:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[she_illness_report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[chest_injury] [tinyint] NULL,
	[chest_tender_chest_wall] [tinyint] NULL,
	[chest_position_windpipe_neck] [tinyint] NULL,
	[chest_movement_breathing] [tinyint] NULL,
	[chest_breathing_sound] [tinyint] NULL,
	[chest_air_can_hear] [tinyint] NULL,
	[abdo_size] [tinyint] NULL,
	[abdo_pain_coughing] [tinyint] NULL,
	[abdo_pain_moving] [tinyint] NULL,
	[abdo_pain_puffing] [tinyint] NULL,
	[abdo_area_tenderness_found] [tinyint] NULL,
	[abdo_lumps_swelling_found] [tinyint] NULL,
	[abdo_bowel_sound] [tinyint] NULL,
	[ge_gland_neck_found] [tinyint] NULL,
	[ge_gland_neck_r] [tinyint] NULL,
	[ge_gland_neck_l] [tinyint] NULL,
	[ge_gland_armpit_found] [tinyint] NULL,
	[ge_gland_armpit_r] [tinyint] NULL,
	[ge_gland_armpit_l] [tinyint] NULL,
	[ge_gland_groin_found] [tinyint] NULL,
	[ge_gland_groin_r] [tinyint] NULL,
	[ge_gland_groin_l] [tinyint] NULL,
	[ge_ears] [tinyint] NULL,
	[ge_ears_r] [tinyint] NULL,
	[ge_ears_l] [tinyint] NULL,
	[ge_colour] [tinyint] NULL,
	[ge_eardrum_normal] [tinyint] NULL,
	[ge_eardrum_normal_r] [tinyint] NULL,
	[ge_eardrum_normal_l] [tinyint] NULL,
	[ge_eardrum_wax] [tinyint] NULL,
	[ge_eardrum_wax_r] [tinyint] NULL,
	[ge_eardrum_wax_l] [tinyint] NULL,
	[ge_eardrum_red] [tinyint] NULL,
	[ge_eardrum_red_r] [tinyint] NULL,
	[ge_eardrum_red_l] [tinyint] NULL,
	[ge_eardrum_perforated] [tinyint] NULL,
	[ge_eardrum_perforated_r] [tinyint] NULL,
	[ge_eardrum_perforated_l] [tinyint] NULL,
	[ge_throat_colour] [tinyint] NULL,
	[ge_tonsil_size] [tinyint] NULL,
	[ge_skin_rush] [tinyint] NULL,
	[ge_skin_rush_size] [float] NULL,
	[ge_skin_rush_colour] [varchar](255) NULL,
	[ge_skin_rush_surface] [varchar](255) NULL,
	[inves_peak] [varchar](255) NULL,
	[urine_testing_blood] [tinyint] NULL,
	[urine_testing_glucose] [tinyint] NULL,
	[urine_testing_ph] [tinyint] NULL,
	[urine_testing_protein] [tinyint] NULL,
	[urine_testing_sg] [tinyint] NULL,
	[urine_testing_other] [varchar](255) NULL,
	[comment_finding] [varchar](255) NULL,
	[comment_finding_no] [tinyint] NULL,
	[possible_diagnosis] [varchar](255) NULL,
	[diag_name] [varchar](255) NULL,
	[post_designation] [tinyint] NULL,
	[treatment_date] [varchar](255) NULL,
	[patient_name] [varchar](255) NULL,
 CONSTRAINT [PK_she_illness_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[she_observation]    Script Date: 3/15/2013 9:05:33 AM ******/
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
	[accident_unsafe] [varchar](255) NULL,
	[accident_safe] [varchar](255) NULL,
	[fire_unsafe] [varchar](255) NULL,
	[fire_safe] [varchar](255) NULL,
	[prevention_unsafe] [varchar](255) NULL,
	[prevention_safe] [varchar](255) NULL,
	[supervisor_unsafe] [varchar](255) NULL,
	[supervisor_safe] [varchar](255) NULL,
	[fit_work_unsafe] [varchar](255) NULL,
	[fit_work_safe] [varchar](255) NULL,
	[psychological_unsafe] [varchar](255) NULL,
	[psychological_safe] [varchar](255) NULL,
	[posture_unsafe] [varchar](255) NULL,
	[posture_safe] [varchar](255) NULL,
	[substance_unsafe] [varchar](255) NULL,
	[substance_safe] [varchar](255) NULL,
	[hygiene_unsafe] [varchar](255) NULL,
	[hygiene_safe] [varchar](255) NULL,
	[house_unsafe] [varchar](255) NULL,
	[house_safe] [varchar](255) NULL,
	[standard_unsafe] [varchar](255) NULL,
	[standard_safe] [varchar](255) NULL,
	[spill_unsafe] [varchar](255) NULL,
	[spill_safe] [varchar](255) NULL,
	[waste_energy_unsafe] [varchar](255) NULL,
	[waste_energy_safe] [varchar](255) NULL,
	[containment_unsafe] [varchar](255) NULL,
	[containment_safe] [varchar](255) NULL,
	[absorbent_unsafe] [varchar](255) NULL,
	[absorbent_safe] [varchar](255) NULL,
	[hira_unsafe] [varchar](255) NULL,
	[hira_safe] [varchar](255) NULL,
	[ptw_unsafe] [varchar](255) NULL,
	[ptw_safe] [varchar](255) NULL,
	[sop_unsafe] [varchar](255) NULL,
	[sop_safe] [varchar](255) NULL,
	[msds_unsafe] [varchar](255) NULL,
	[msds_safe] [varchar](255) NULL,
	[emergency_unsafe] [varchar](255) NULL,
	[emergency_safe] [varchar](255) NULL,
	[certificates_unsafe] [varchar](255) NULL,
	[certificates_safe] [varchar](255) NULL,
	[ppe_unsafe] [varchar](255) NULL,
	[ppe_safe] [varchar](255) NULL,
	[hand_unsafe] [varchar](255) NULL,
	[hand_safe] [varchar](255) NULL,
	[mechanical_unsafe] [varchar](255) NULL,
	[mechanical_safe] [varchar](255) NULL,
	[electrical_unsafe] [varchar](255) NULL,
	[electrical_safe] [varchar](255) NULL,
	[vehicular_unsafe] [varchar](255) NULL,
	[vehicular_safe] [varchar](255) NULL,
	[substandard_unsafe] [varchar](255) NULL,
	[substandard_safe] [varchar](255) NULL,
	[h2s_unsafe] [varchar](255) NULL,
	[h2s_safe] [varchar](255) NULL,
	[workplace_health_unsafe] [varchar](255) NULL,
	[workplace_health_safe] [varchar](255) NULL,
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
 CONSTRAINT [PK_she_observation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[she_illness_report] ON 

INSERT [dbo].[she_illness_report] ([id], [chest_injury], [chest_tender_chest_wall], [chest_position_windpipe_neck], [chest_movement_breathing], [chest_breathing_sound], [chest_air_can_hear], [abdo_size], [abdo_pain_coughing], [abdo_pain_moving], [abdo_pain_puffing], [abdo_area_tenderness_found], [abdo_lumps_swelling_found], [abdo_bowel_sound], [ge_gland_neck_found], [ge_gland_neck_r], [ge_gland_neck_l], [ge_gland_armpit_found], [ge_gland_armpit_r], [ge_gland_armpit_l], [ge_gland_groin_found], [ge_gland_groin_r], [ge_gland_groin_l], [ge_ears], [ge_ears_r], [ge_ears_l], [ge_colour], [ge_eardrum_normal], [ge_eardrum_normal_r], [ge_eardrum_normal_l], [ge_eardrum_wax], [ge_eardrum_wax_r], [ge_eardrum_wax_l], [ge_eardrum_red], [ge_eardrum_red_r], [ge_eardrum_red_l], [ge_eardrum_perforated], [ge_eardrum_perforated_r], [ge_eardrum_perforated_l], [ge_throat_colour], [ge_tonsil_size], [ge_skin_rush], [ge_skin_rush_size], [ge_skin_rush_colour], [ge_skin_rush_surface], [inves_peak], [urine_testing_blood], [urine_testing_glucose], [urine_testing_ph], [urine_testing_protein], [urine_testing_sg], [urine_testing_other], [comment_finding], [comment_finding_no], [possible_diagnosis], [diag_name], [post_designation], [treatment_date], [patient_name]) VALUES (1, 1, 1, 2, 1, 0, 2, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, N'red', N'asd', N'12.3', 1, 1, 0, 0, 1, N's', NULL, 1, N'asdsafsasdasdasdsadsadsadsadasdsa', N'asdsad asdasdsa', 0, N'asdasdasdasdsadasaaaaaaa', NULL)
SET IDENTITY_INSERT [dbo].[she_illness_report] OFF
SET IDENTITY_INSERT [dbo].[she_observation] ON 

INSERT [dbo].[she_observation] ([id], [she_obs], [she_ins], [accident_unsafe], [accident_safe], [fire_unsafe], [fire_safe], [prevention_unsafe], [prevention_safe], [supervisor_unsafe], [supervisor_safe], [fit_work_unsafe], [fit_work_safe], [psychological_unsafe], [psychological_safe], [posture_unsafe], [posture_safe], [substance_unsafe], [substance_safe], [hygiene_unsafe], [hygiene_safe], [house_unsafe], [house_safe], [standard_unsafe], [standard_safe], [spill_unsafe], [spill_safe], [waste_energy_unsafe], [waste_energy_safe], [containment_unsafe], [containment_safe], [absorbent_unsafe], [absorbent_safe], [hira_unsafe], [hira_safe], [ptw_unsafe], [ptw_safe], [sop_unsafe], [sop_safe], [msds_unsafe], [msds_safe], [emergency_unsafe], [emergency_safe], [certificates_unsafe], [certificates_safe], [ppe_unsafe], [ppe_safe], [hand_unsafe], [hand_safe], [mechanical_unsafe], [mechanical_safe], [electrical_unsafe], [electrical_safe], [vehicular_unsafe], [vehicular_safe], [substandard_unsafe], [substandard_safe], [h2s_unsafe], [h2s_safe], [workplace_health_unsafe], [workplace_health_safe], [date_time], [observer], [department], [location], [activity], [safe_observed], [action_encourages], [action_encourage], [unsafe_observed], [immediate_corrective_act], [action_prevents], [action_prevent]) VALUES (1, 1, 1, N'UAUC', NULL, NULL, N'SA', N'UA', N'SA', N'UC', NULL, N'UA', N'SC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'UA', NULL, NULL, NULL, N'UC', NULL, NULL, N'SA', NULL, N'SC', NULL, N'SA', NULL, N'SC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SASC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'UAUC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A181017B0740 AS DateTime), N'ala', N'lalal', N'asdasdas', N'asdasdsad', 1, 1, N'sadadasdsadasdas', 1, 0, 1, N'1111111111222222222233333333344444444445555555555666666666
1111111111222222222233333333344444444445555555555666666666')
SET IDENTITY_INSERT [dbo].[she_observation] OFF
