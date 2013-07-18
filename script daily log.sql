USE [star_energi_geo]
GO
ALTER TABLE [dbo].[daily_log_sags] DROP CONSTRAINT [FK_daily_log_sags_daily_log]
GO
ALTER TABLE [dbo].[daily_log_pro] DROP CONSTRAINT [FK_daily_log_pro_daily_log]
GO
ALTER TABLE [dbo].[daily_log_power_stations] DROP CONSTRAINT [FK_daily_log_power_stations_daily_log]
GO
ALTER TABLE [dbo].[daily_log_maintainence] DROP CONSTRAINT [FK_daily_log_maintainence_daily_log]
GO
ALTER TABLE [dbo].[daily_log_last_plant_status] DROP CONSTRAINT [FK_daily_log_last_plant_status_daily_log]
GO
/****** Object:  Table [dbo].[daily_log_sags]    Script Date: 2/27/2013 9:12:02 AM ******/
DROP TABLE [dbo].[daily_log_sags]
GO
/****** Object:  Table [dbo].[daily_log_pro]    Script Date: 2/27/2013 9:12:02 AM ******/
DROP TABLE [dbo].[daily_log_pro]
GO
/****** Object:  Table [dbo].[daily_log_power_stations]    Script Date: 2/27/2013 9:12:02 AM ******/
DROP TABLE [dbo].[daily_log_power_stations]
GO
/****** Object:  Table [dbo].[daily_log_maintainence]    Script Date: 2/27/2013 9:12:02 AM ******/
DROP TABLE [dbo].[daily_log_maintainence]
GO
/****** Object:  Table [dbo].[daily_log_last_plant_status]    Script Date: 2/27/2013 9:12:02 AM ******/
DROP TABLE [dbo].[daily_log_last_plant_status]
GO
/****** Object:  Table [dbo].[daily_log]    Script Date: 2/27/2013 9:12:02 AM ******/
DROP TABLE [dbo].[daily_log]
GO
/****** Object:  Table [dbo].[daily_log]    Script Date: 2/27/2013 9:12:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[grup] [varchar](50) NULL,
	[production_foreman] [varchar](255) NULL,
	[production_operator_1] [varchar](255) NULL,
	[production_operator_2] [varchar](255) NULL,
	[production_operator_3] [varchar](255) NULL,
	[production_operator_4] [varchar](255) NULL,
	[production_operator_5] [varchar](255) NULL,
	[production_operator_6] [varchar](255) NULL,
	[production_operator_7] [varchar](255) NULL,
	[production_operator_8] [varchar](255) NULL,
	[time_check] [varchar](255) NULL,
	[wma_2_is_text] [tinyint] NULL,
	[wma_2_fcv] [varchar](255) NULL,
	[wma_2_flow] [varchar](255) NULL,
	[wma_2_whp] [varchar](255) NULL,
	[wma_4_is_text] [tinyint] NULL,
	[wma_4_fcv] [varchar](255) NULL,
	[wma_4_flow] [varchar](255) NULL,
	[wma_4_whp] [varchar](255) NULL,
	[wma_6_is_text] [tinyint] NULL,
	[wma_6_fcv] [varchar](255) NULL,
	[wma_6_flow] [varchar](255) NULL,
	[wma_6_whp] [varchar](255) NULL,
	[mbd_1_is_text] [tinyint] NULL,
	[mbd_1_fcv] [varchar](255) NULL,
	[mbd_1_flow] [varchar](255) NULL,
	[mbd_1_whp] [varchar](255) NULL,
	[mbd_2_is_text] [tinyint] NULL,
	[mbd_2_fcv] [varchar](255) NULL,
	[mbd_2_flow] [varchar](255) NULL,
	[mbd_2_whp] [varchar](255) NULL,
	[mbd_3_is_text] [tinyint] NULL,
	[mbd_3_fcv] [varchar](255) NULL,
	[mbd_3_flow] [varchar](255) NULL,
	[mbd_3_whp] [varchar](255) NULL,
	[mbd_4_is_text] [tinyint] NULL,
	[mbd_4_fcv] [varchar](255) NULL,
	[mbd_4_flow] [varchar](255) NULL,
	[mbd_4_whp] [varchar](255) NULL,
	[mbd_5_is_text] [tinyint] NULL,
	[mbd_5_fcv] [varchar](255) NULL,
	[mbd_5_flow] [varchar](255) NULL,
	[mbd_5_whp] [varchar](255) NULL,
	[wwq_1_is_text] [tinyint] NULL,
	[wwq_1_fcv] [varchar](255) NULL,
	[wwq_1_flow] [varchar](255) NULL,
	[wwq_1_whp] [varchar](255) NULL,
	[wwq_2_is_text] [tinyint] NULL,
	[wwq_2_fcv] [varchar](255) NULL,
	[wwq_2_flow] [varchar](255) NULL,
	[wwq_2_whp] [varchar](255) NULL,
	[wwq_3_is_text] [tinyint] NULL,
	[wwq_3_fcv] [varchar](255) NULL,
	[wwq_3_flow] [varchar](255) NULL,
	[wwq_3_whp] [varchar](255) NULL,
	[wwq_4_is_text] [tinyint] NULL,
	[wwq_4_fcv] [varchar](255) NULL,
	[wwq_4_flow] [varchar](255) NULL,
	[wwq_4_whp] [varchar](255) NULL,
	[wwq_5_is_text] [tinyint] NULL,
	[wwq_5_fcv] [varchar](255) NULL,
	[wwq_5_flow] [varchar](255) NULL,
	[wwq_5_whp] [varchar](255) NULL,
	[mbe_3_is_text] [tinyint] NULL,
	[mbe_3_fcv] [varchar](255) NULL,
	[mbe_3_flow] [varchar](255) NULL,
	[mbe_3_whp] [varchar](255) NULL,
	[mbe_4_is_text] [tinyint] NULL,
	[mbe_4_fcv] [varchar](255) NULL,
	[mbe_4_flow] [varchar](255) NULL,
	[mbe_4_whp] [varchar](255) NULL,
	[mba_1_is_text] [tinyint] NULL,
	[mba_1_fcv] [varchar](255) NULL,
	[mba_1_flow] [varchar](255) NULL,
	[mba_1_whp] [varchar](255) NULL,
	[mba_2_is_text] [tinyint] NULL,
	[mba_2_fcv] [varchar](255) NULL,
	[mba_2_flow] [varchar](255) NULL,
	[mba_2_whp] [varchar](255) NULL,
	[mba_3_is_text] [tinyint] NULL,
	[mba_3_fcv] [varchar](255) NULL,
	[mba_3_flow] [varchar](255) NULL,
	[mba_3_whp] [varchar](255) NULL,
	[mba_4_is_text] [tinyint] NULL,
	[mba_4_fcv] [varchar](255) NULL,
	[mba_4_flow] [varchar](255) NULL,
	[mba_4_whp] [varchar](255) NULL,
	[mba_5_is_text] [tinyint] NULL,
	[mba_5_fcv] [varchar](255) NULL,
	[mba_5_flow] [varchar](255) NULL,
	[mba_5_whp] [varchar](255) NULL,
	[mbb_1_is_text] [tinyint] NULL,
	[mbb_1_fcv] [varchar](255) NULL,
	[mbb_1_flow] [varchar](255) NULL,
	[mbb_1_whp] [varchar](255) NULL,
	[mbb_2_is_text] [tinyint] NULL,
	[mbb_2_fcv] [varchar](255) NULL,
	[mbb_2_flow] [varchar](255) NULL,
	[mbb_2_whp] [varchar](255) NULL,
	[mbb_3_is_text] [tinyint] NULL,
	[mbb_3_fcv] [varchar](255) NULL,
	[mbb_3_flow] [varchar](255) NULL,
	[mbb_3_whp] [varchar](255) NULL,
	[mbb_4_is_text] [tinyint] NULL,
	[mbb_4_fcv] [varchar](255) NULL,
	[mbb_4_flow] [varchar](255) NULL,
	[mbb_4_whp] [varchar](255) NULL,
	[mbb_5_is_text] [tinyint] NULL,
	[mbb_5_fcv] [varchar](255) NULL,
	[mbb_5_flow] [varchar](255) NULL,
	[mbb_5_whp] [varchar](255) NULL,
	[mbb_6_is_text] [tinyint] NULL,
	[mbb_6_fcv] [varchar](255) NULL,
	[mbb_6_flow] [varchar](255) NULL,
	[mbb_6_whp] [varchar](255) NULL,
	[wwf_1_is_text] [tinyint] NULL,
	[wwf_1_fcv] [varchar](255) NULL,
	[wwf_1_flow] [varchar](255) NULL,
	[wwf_1_whp] [varchar](255) NULL,
	[wwf_3_is_text] [tinyint] NULL,
	[wwf_3_fcv] [varchar](255) NULL,
	[wwf_3_flow] [varchar](255) NULL,
	[wwf_3_whp] [varchar](255) NULL,
	[www_1_is_text] [tinyint] NULL,
	[www_1_fcv] [varchar](255) NULL,
	[www_1_flow] [varchar](255) NULL,
	[www_1_whp] [varchar](255) NULL,
	[wwp_1_is_text] [tinyint] NULL,
	[wwp_1_fcv] [varchar](255) NULL,
	[wwp_1_flow] [varchar](255) NULL,
	[wwp_1_whp] [varchar](255) NULL,
	[generator_output_1] [varchar](255) NULL,
	[gross_1] [varchar](255) NULL,
	[generator_output_counter_1] [varchar](255) NULL,
	[power_factor_1] [varchar](255) NULL,
	[tap_charger_1] [varchar](255) NULL,
	[pln_grid_voltage_1] [varchar](255) NULL,
	[valve_limiter_1] [varchar](255) NULL,
	[governor_output_1] [varchar](255) NULL,
	[wcp_counter_1] [varchar](255) NULL,
	[condenser_pressure_1] [varchar](255) NULL,
	[main_cw_flow_1] [varchar](255) NULL,
	[ppc_g_co_1] [varchar](255) NULL,
	[interface_pressure_1] [varchar](255) NULL,
	[vent_bias_1] [varchar](255) NULL,
	[main_cw_pressure_1] [varchar](255) NULL,
	[ct_basin_ph_1] [varchar](255) NULL,
	[condenser_cw_inlet_a_1] [varchar](255) NULL,
	[condenser_cw_inlet_b_1] [varchar](255) NULL,
	[gen_trans_winding_temp_1] [varchar](255) NULL,
	[unit_trans_winding_temp_1] [varchar](255) NULL,
	[wheel_case_pressure_1] [varchar](255) NULL,
	[generator_output_2] [varchar](255) NULL,
	[gross_2] [varchar](255) NULL,
	[generator_output_counter_2] [varchar](255) NULL,
	[power_factor_2] [varchar](255) NULL,
	[tap_charger_2] [varchar](255) NULL,
	[pln_grid_voltage_2] [varchar](255) NULL,
	[valve_limiter_2] [varchar](255) NULL,
	[governor_output_2] [varchar](255) NULL,
	[wcp_counter_2] [varchar](255) NULL,
	[condenser_pressure_2] [varchar](255) NULL,
	[main_cw_flow_2] [varchar](255) NULL,
	[ppc_g_co_2] [varchar](255) NULL,
	[interface_pressure_2] [varchar](255) NULL,
	[vent_bias_2] [varchar](255) NULL,
	[main_cw_pressure_2] [varchar](255) NULL,
	[ct_basin_ph_2] [varchar](255) NULL,
	[condenser_cw_inlet_a_2] [varchar](255) NULL,
	[condenser_cw_inlet_b_2] [varchar](255) NULL,
	[gen_trans_winding_temp_2] [varchar](255) NULL,
	[unit_trans_winding_temp_2] [varchar](255) NULL,
	[wheel_case_pressure_2] [varchar](255) NULL,
	[ncg_1] [varchar](255) NULL,
	[ncg_2] [varchar](255) NULL,
	[turbine_1] [varchar](255) NULL,
	[turbine_2] [varchar](255) NULL,
	[ct_temp_1] [varchar](255) NULL,
	[ct_temp_2] [varchar](255) NULL,
	[exhaust_1] [varchar](255) NULL,
	[exhaust_2] [varchar](255) NULL,
	[upper_tp_level] [varchar](255) NULL,
	[lower_tp_level] [varchar](255) NULL,
	[mv_333] [varchar](255) NULL,
	[mv_334] [varchar](255) NULL,
	[brine_level] [varchar](255) NULL,
	[condensate_level] [varchar](255) NULL,
	[naoh_level] [varchar](255) NULL,
	[wwd_pond_level] [varchar](255) NULL,
	[uti_active_1] [varchar](255) NULL,
	[uti_reactive_1] [varchar](255) NULL,
	[sc_main_1] [varchar](255) NULL,
	[sc_auxiliary_1] [varchar](255) NULL,
	[ge_active_1] [varchar](255) NULL,
	[ge_reactive_1] [varchar](255) NULL,
	[metering_segwwl_1] [varchar](255) NULL,
	[metering_pln_1] [varchar](255) NULL,
	[condensate_ps_1] [varchar](255) NULL,
	[segwwl_availability_1] [varchar](255) NULL,
	[pln_dispatch_1] [varchar](255) NULL,
	[pln_meter_1] [varchar](255) NULL,
	[segwwl_export_1] [varchar](255) NULL,
	[actual_export_1] [varchar](255) NULL,
	[production_excess_1] [varchar](255) NULL,
	[rpf_1] [varchar](255) NULL,
	[pgf_1] [varchar](255) NULL,
	[pln_1] [varchar](255) NULL,
	[uti_active_2] [varchar](255) NULL,
	[uti_reactive_2] [varchar](255) NULL,
	[sc_main_2] [varchar](255) NULL,
	[sc_auxiliary_2] [varchar](255) NULL,
	[ge_active_2] [varchar](255) NULL,
	[ge_reactive_2] [varchar](255) NULL,
	[metering_segwwl_2] [varchar](255) NULL,
	[metering_pln_2] [varchar](255) NULL,
	[condensate_ps_2] [varchar](255) NULL,
	[segwwl_availability_2] [varchar](255) NULL,
	[pln_dispatch_2] [varchar](255) NULL,
	[pln_meter_2] [varchar](255) NULL,
	[segwwl_export_2] [varchar](255) NULL,
	[actual_export_2] [varchar](255) NULL,
	[production_excess_2] [varchar](255) NULL,
	[rpf_2] [varchar](255) NULL,
	[pgf_2] [varchar](255) NULL,
	[pln_2] [varchar](255) NULL,
	[condensate_total] [varchar](255) NULL,
	[brine_total] [varchar](255) NULL,
	[note] [varchar](255) NULL,
	[last_plant_time] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_last_plant_status]    Script Date: 2/27/2013 9:12:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_last_plant_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_daily_log] [int] NULL,
	[description] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_last_plant_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_maintainence]    Script Date: 2/27/2013 9:12:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_maintainence](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_daily_log] [int] NULL,
	[wo_number] [varchar](255) NULL,
	[department] [varchar](255) NULL,
	[work_to_be_performed] [varchar](255) NULL,
	[work_status] [tinyint] NULL,
	[time] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_maintainence] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_power_stations]    Script Date: 2/27/2013 9:12:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_power_stations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_daily_log] [int] NULL,
	[power_station_time] [varchar](255) NULL,
	[power_station_unit] [varchar](255) NULL,
	[power_station_activity] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_power_stations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_pro]    Script Date: 2/27/2013 9:12:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_pro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_daily_log] [int] NULL,
	[wo_number] [varchar](255) NULL,
	[work_to_be_performed] [varchar](255) NULL,
	[sap_status] [tinyint] NULL,
	[pro_time] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_pro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_sags]    Script Date: 2/27/2013 9:12:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log_sags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_daily_log] [int] NULL,
	[sags_time] [varchar](255) NULL,
	[sags_unit] [varchar](255) NULL,
	[sags_activity] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_sags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[daily_log] ON 

INSERT [dbo].[daily_log] ([id], [date], [grup], [production_foreman], [production_operator_1], [production_operator_2], [production_operator_3], [production_operator_4], [production_operator_5], [production_operator_6], [production_operator_7], [production_operator_8], [time_check], [wma_2_is_text], [wma_2_fcv], [wma_2_flow], [wma_2_whp], [wma_4_is_text], [wma_4_fcv], [wma_4_flow], [wma_4_whp], [wma_6_is_text], [wma_6_fcv], [wma_6_flow], [wma_6_whp], [mbd_1_is_text], [mbd_1_fcv], [mbd_1_flow], [mbd_1_whp], [mbd_2_is_text], [mbd_2_fcv], [mbd_2_flow], [mbd_2_whp], [mbd_3_is_text], [mbd_3_fcv], [mbd_3_flow], [mbd_3_whp], [mbd_4_is_text], [mbd_4_fcv], [mbd_4_flow], [mbd_4_whp], [mbd_5_is_text], [mbd_5_fcv], [mbd_5_flow], [mbd_5_whp], [wwq_1_is_text], [wwq_1_fcv], [wwq_1_flow], [wwq_1_whp], [wwq_2_is_text], [wwq_2_fcv], [wwq_2_flow], [wwq_2_whp], [wwq_3_is_text], [wwq_3_fcv], [wwq_3_flow], [wwq_3_whp], [wwq_4_is_text], [wwq_4_fcv], [wwq_4_flow], [wwq_4_whp], [wwq_5_is_text], [wwq_5_fcv], [wwq_5_flow], [wwq_5_whp], [mbe_3_is_text], [mbe_3_fcv], [mbe_3_flow], [mbe_3_whp], [mbe_4_is_text], [mbe_4_fcv], [mbe_4_flow], [mbe_4_whp], [mba_1_is_text], [mba_1_fcv], [mba_1_flow], [mba_1_whp], [mba_2_is_text], [mba_2_fcv], [mba_2_flow], [mba_2_whp], [mba_3_is_text], [mba_3_fcv], [mba_3_flow], [mba_3_whp], [mba_4_is_text], [mba_4_fcv], [mba_4_flow], [mba_4_whp], [mba_5_is_text], [mba_5_fcv], [mba_5_flow], [mba_5_whp], [mbb_1_is_text], [mbb_1_fcv], [mbb_1_flow], [mbb_1_whp], [mbb_2_is_text], [mbb_2_fcv], [mbb_2_flow], [mbb_2_whp], [mbb_3_is_text], [mbb_3_fcv], [mbb_3_flow], [mbb_3_whp], [mbb_4_is_text], [mbb_4_fcv], [mbb_4_flow], [mbb_4_whp], [mbb_5_is_text], [mbb_5_fcv], [mbb_5_flow], [mbb_5_whp], [mbb_6_is_text], [mbb_6_fcv], [mbb_6_flow], [mbb_6_whp], [wwf_1_is_text], [wwf_1_fcv], [wwf_1_flow], [wwf_1_whp], [wwf_3_is_text], [wwf_3_fcv], [wwf_3_flow], [wwf_3_whp], [www_1_is_text], [www_1_fcv], [www_1_flow], [www_1_whp], [wwp_1_is_text], [wwp_1_fcv], [wwp_1_flow], [wwp_1_whp], [generator_output_1], [gross_1], [generator_output_counter_1], [power_factor_1], [tap_charger_1], [pln_grid_voltage_1], [valve_limiter_1], [governor_output_1], [wcp_counter_1], [condenser_pressure_1], [main_cw_flow_1], [ppc_g_co_1], [interface_pressure_1], [vent_bias_1], [main_cw_pressure_1], [ct_basin_ph_1], [condenser_cw_inlet_a_1], [condenser_cw_inlet_b_1], [gen_trans_winding_temp_1], [unit_trans_winding_temp_1], [wheel_case_pressure_1], [generator_output_2], [gross_2], [generator_output_counter_2], [power_factor_2], [tap_charger_2], [pln_grid_voltage_2], [valve_limiter_2], [governor_output_2], [wcp_counter_2], [condenser_pressure_2], [main_cw_flow_2], [ppc_g_co_2], [interface_pressure_2], [vent_bias_2], [main_cw_pressure_2], [ct_basin_ph_2], [condenser_cw_inlet_a_2], [condenser_cw_inlet_b_2], [gen_trans_winding_temp_2], [unit_trans_winding_temp_2], [wheel_case_pressure_2], [ncg_1], [ncg_2], [turbine_1], [turbine_2], [ct_temp_1], [ct_temp_2], [exhaust_1], [exhaust_2], [upper_tp_level], [lower_tp_level], [mv_333], [mv_334], [brine_level], [condensate_level], [naoh_level], [wwd_pond_level], [uti_active_1], [uti_reactive_1], [sc_main_1], [sc_auxiliary_1], [ge_active_1], [ge_reactive_1], [metering_segwwl_1], [metering_pln_1], [condensate_ps_1], [segwwl_availability_1], [pln_dispatch_1], [pln_meter_1], [segwwl_export_1], [actual_export_1], [production_excess_1], [rpf_1], [pgf_1], [pln_1], [uti_active_2], [uti_reactive_2], [sc_main_2], [sc_auxiliary_2], [ge_active_2], [ge_reactive_2], [metering_segwwl_2], [metering_pln_2], [condensate_ps_2], [segwwl_availability_2], [pln_dispatch_2], [pln_meter_2], [segwwl_export_2], [actual_export_2], [production_excess_2], [rpf_2], [pgf_2], [pln_2], [condensate_total], [brine_total], [note], [last_plant_time]) VALUES (1, CAST(0xC5360B00 AS Date), N'C', N'aasf', N'wweq', N'qweq', N'qq', N'qww', N'ee', NULL, NULL, NULL, N'9:27 PM', 0, N'dsfsd', N'sfds', NULL, 0, N'sdfsd', N'sdf', NULL, 0, N'dsfsd', N'sdfsd', NULL, 0, N'sdfs', N'sdfds', NULL, 1, N'12312', NULL, NULL, 1, N'4534', NULL, NULL, 1, N'86786', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, N'3423dadas', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, N'sdasdfa', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, N'asdasdasd', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'756', N'6756', N'56756', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'56765', NULL, N'65756', NULL, N'57665', NULL, NULL, N'56765', NULL, NULL, NULL, NULL, NULL, N'khjk', NULL, N'lkkl', NULL, N'dfgd', NULL, NULL, NULL, NULL, NULL, N'lkjgh', NULL, NULL, NULL, NULL, NULL, N'5345', NULL, NULL, N'46345', NULL, N'3463', NULL, NULL, NULL, N'534', N'54353', NULL, NULL, NULL, N'346', N'-3434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'53453', NULL, NULL, NULL, NULL, N'3534', N'53453', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'11:32 AM')
SET IDENTITY_INSERT [dbo].[daily_log] OFF
SET IDENTITY_INSERT [dbo].[daily_log_last_plant_status] ON 

INSERT [dbo].[daily_log_last_plant_status] ([id], [id_daily_log], [description]) VALUES (1, 1, N'afasfsafasfafas')
INSERT [dbo].[daily_log_last_plant_status] ([id], [id_daily_log], [description]) VALUES (2, 1, N'mndgadjfdgjkdf')
SET IDENTITY_INSERT [dbo].[daily_log_last_plant_status] OFF
SET IDENTITY_INSERT [dbo].[daily_log_maintainence] ON 

INSERT [dbo].[daily_log_maintainence] ([id], [id_daily_log], [wo_number], [department], [work_to_be_performed], [work_status], [time]) VALUES (1, 1, N'sdasd', N'asdasdasd', N'fasfaafsafsa', 1, N'8:08 PM')
INSERT [dbo].[daily_log_maintainence] ([id], [id_daily_log], [wo_number], [department], [work_to_be_performed], [work_status], [time]) VALUES (1003, 1, N'sdasdas', N'sa', N'ghghjgh', 0, N'5:30 PM')
SET IDENTITY_INSERT [dbo].[daily_log_maintainence] OFF
SET IDENTITY_INSERT [dbo].[daily_log_power_stations] ON 

INSERT [dbo].[daily_log_power_stations] ([id], [id_daily_log], [power_station_time], [power_station_unit], [power_station_activity]) VALUES (3, 1, N'12:57 PM', N'Unit-1', N'mencoba')
INSERT [dbo].[daily_log_power_stations] ([id], [id_daily_log], [power_station_time], [power_station_unit], [power_station_activity]) VALUES (1003, NULL, N'1:00 AM', N'Unit-1', N'asdasdsad')
INSERT [dbo].[daily_log_power_stations] ([id], [id_daily_log], [power_station_time], [power_station_unit], [power_station_activity]) VALUES (1004, 1, N'1:24 PM', N'Unit-2', N'qwet')
SET IDENTITY_INSERT [dbo].[daily_log_power_stations] OFF
SET IDENTITY_INSERT [dbo].[daily_log_pro] ON 

INSERT [dbo].[daily_log_pro] ([id], [id_daily_log], [wo_number], [work_to_be_performed], [sap_status], [pro_time]) VALUES (2, 1, N'fafdgf', N'gfhfghg', 2, N'8:35 PM')
INSERT [dbo].[daily_log_pro] ([id], [id_daily_log], [wo_number], [work_to_be_performed], [sap_status], [pro_time]) VALUES (1002, NULL, N'asdsa', N'asdasdsa', 1, NULL)
SET IDENTITY_INSERT [dbo].[daily_log_pro] OFF
SET IDENTITY_INSERT [dbo].[daily_log_sags] ON 

INSERT [dbo].[daily_log_sags] ([id], [id_daily_log], [sags_time], [sags_unit], [sags_activity]) VALUES (1, 1, N'1:20 PM', N'Unit-1&2', N'mencoba')
INSERT [dbo].[daily_log_sags] ([id], [id_daily_log], [sags_time], [sags_unit], [sags_activity]) VALUES (1003, NULL, N'1:00 PM', N'Unit-1&2', N'asdsadadqweq')
INSERT [dbo].[daily_log_sags] ([id], [id_daily_log], [sags_time], [sags_unit], [sags_activity]) VALUES (1004, 1, N'12:20 PM', N'Unit-1&2', N'asd')
SET IDENTITY_INSERT [dbo].[daily_log_sags] OFF
ALTER TABLE [dbo].[daily_log_last_plant_status]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_last_plant_status_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_last_plant_status] CHECK CONSTRAINT [FK_daily_log_last_plant_status_daily_log]
GO
ALTER TABLE [dbo].[daily_log_maintainence]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_maintainence_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_maintainence] CHECK CONSTRAINT [FK_daily_log_maintainence_daily_log]
GO
ALTER TABLE [dbo].[daily_log_power_stations]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_power_stations_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_power_stations] CHECK CONSTRAINT [FK_daily_log_power_stations_daily_log]
GO
ALTER TABLE [dbo].[daily_log_pro]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_pro_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_pro] CHECK CONSTRAINT [FK_daily_log_pro_daily_log]
GO
ALTER TABLE [dbo].[daily_log_sags]  WITH CHECK ADD  CONSTRAINT [FK_daily_log_sags_daily_log] FOREIGN KEY([id_daily_log])
REFERENCES [dbo].[daily_log] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[daily_log_sags] CHECK CONSTRAINT [FK_daily_log_sags_daily_log]
GO
