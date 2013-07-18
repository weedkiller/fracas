USE [master]
GO
/****** Object:  Database [star_energi_geo]    Script Date: 2/27/2013 7:07:31 PM ******/
CREATE DATABASE [star_energi_geo] ON  PRIMARY 
( NAME = N'star_energi_geo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\star_energi_geo.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'star_energi_geo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\star_energi_geo_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [star_energi_geo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [star_energi_geo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [star_energi_geo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [star_energi_geo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [star_energi_geo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [star_energi_geo] SET ARITHABORT OFF 
GO
ALTER DATABASE [star_energi_geo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [star_energi_geo] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [star_energi_geo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [star_energi_geo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [star_energi_geo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [star_energi_geo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [star_energi_geo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [star_energi_geo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [star_energi_geo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [star_energi_geo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [star_energi_geo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [star_energi_geo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [star_energi_geo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [star_energi_geo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [star_energi_geo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [star_energi_geo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [star_energi_geo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [star_energi_geo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [star_energi_geo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [star_energi_geo] SET  MULTI_USER 
GO
ALTER DATABASE [star_energi_geo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [star_energi_geo] SET DB_CHAINING OFF 
GO
USE [star_energi_geo]
GO
/****** Object:  Table [dbo].[comms_rbi]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comms_rbi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[filename] [varchar](150) NULL,
	[category] [varchar](5) NULL,
 CONSTRAINT [PK_comms_rbi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log]    Script Date: 2/27/2013 7:07:31 PM ******/
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
/****** Object:  Table [dbo].[daily_log_last_plant_status]    Script Date: 2/27/2013 7:07:31 PM ******/
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
/****** Object:  Table [dbo].[daily_log_maintainence]    Script Date: 2/27/2013 7:07:31 PM ******/
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
/****** Object:  Table [dbo].[daily_log_power_stations]    Script Date: 2/27/2013 7:07:31 PM ******/
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
/****** Object:  Table [dbo].[daily_log_pro]    Script Date: 2/27/2013 7:07:31 PM ******/
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
/****** Object:  Table [dbo].[daily_log_sags]    Script Date: 2/27/2013 7:07:31 PM ******/
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
/****** Object:  Table [dbo].[disciplines]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[disciplines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_disciplines] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[equipment_event]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[equipment_event](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment] [int] NOT NULL,
	[datetime_stop] [datetime] NULL,
	[datetime_ops] [datetime] NULL,
	[durasi] [float] NULL,
	[downtime] [float] NULL,
	[failure_mode] [varchar](max) NULL,
	[failure_cause] [varchar](max) NULL,
	[failure_effect] [varchar](max) NULL,
	[secondary_effect] [varchar](max) NULL,
	[failure_severity] [varchar](50) NULL,
	[failure_clss] [varchar](50) NULL,
	[immediate_act] [varchar](max) NULL,
	[long_term_act] [varchar](max) NULL,
	[engineer] [text] NULL,
	[financial_cost] [float] NULL,
	[repair_cost] [float] NULL,
	[event_description] [varchar](max) NULL,
	[type] [varchar](50) NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_equipment_event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[equipment_groups]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[equipment_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_system] [int] NOT NULL,
	[nama] [varchar](50) NOT NULL,
 CONSTRAINT [PK_rm_equipment_group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[equipment_paf]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipment_paf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment] [int] NOT NULL,
	[tanggal] [datetime] NOT NULL,
	[avail_calculated] [float] NOT NULL,
	[avail_measured] [float] NOT NULL,
 CONSTRAINT [PK_equipment_paf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[equipment_part]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipment_part](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment] [int] NOT NULL,
	[id_parts] [int] NOT NULL,
	[mtbf] [float] NULL,
	[mttr] [float] NULL,
	[status] [smallint] NULL,
	[lead_time] [float] NULL,
	[installed_date] [datetime] NULL,
	[obsolete_date] [datetime] NULL,
 CONSTRAINT [PK_equipment_part] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[equipment_read_nav_note]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipment_read_nav_note](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[update_date] [timestamp] NULL,
	[note] [text] NULL,
 CONSTRAINT [PK_equipment_read_nav_note] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[equipment_readiness_nav]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipment_readiness_nav](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment] [int] NOT NULL,
	[operation] [float] NULL,
	[boc] [float] NULL,
	[bec] [float] NULL,
	[monitoring] [float] NULL,
	[performance] [float] NULL,
	[cm_program] [float] NULL,
	[maintenance] [float] NULL,
	[pm_program] [float] NULL,
	[overhaul] [float] NULL,
	[spares] [float] NULL,
	[lifecycle_spare] [float] NULL,
	[main_act_spare] [float] NULL,
	[safe_operation] [float] NULL,
	[safeguard] [float] NULL,
	[accesories] [float] NULL,
	[score] [float] NULL,
	[capacity] [float] NULL,
	[quality] [float] NULL,
	[sertifikasi] [float] NULL,
 CONSTRAINT [PK_equipment_readiness_nav] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[equipments]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[equipments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment_group] [int] NOT NULL,
	[tag_num] [varchar](50) NOT NULL,
	[nama] [varchar](100) NOT NULL,
	[id_category] [tinyint] NULL,
	[pdf] [varchar](50) NULL,
	[tetha] [float] NULL,
	[beta] [float] NULL,
	[mean] [float] NULL,
	[varian] [float] NULL,
	[lamda] [float] NULL,
	[id_discipline] [int] NULL,
	[mtbf] [int] NULL,
	[mttr] [int] NULL,
	[mdt] [int] NULL,
	[status] [tinyint] NULL,
	[method] [varchar](100) NULL,
	[econ] [int] NULL,
	[ram_crit] [varchar](50) NULL,
	[installed_date] [datetime] NULL,
	[obsolete_date] [datetime] NULL,
	[warranty] [int] NULL,
	[vendor] [varchar](100) NULL,
	[id_tag_type] [int] NULL,
	[status_read_nav] [tinyint] NULL,
	[data_sheet_path] [varchar](50) NULL,
	[sertifikasi] [datetime] NULL,
 CONSTRAINT [PK_rm_equipment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[event_descriptions]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[event_descriptions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_event_descriptions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[failure_causes]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[failure_causes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_failure_causes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[failure_effects]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[failure_effects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_failure_effects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[failure_modes]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[failure_modes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[id_tag_type] [int] NULL,
 CONSTRAINT [PK_failure_modes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[foc_op_avail]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[foc_op_avail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_foc] [int] NOT NULL,
	[op_avail] [float] NULL,
	[plant_down] [datetime] NULL,
	[plant_up] [datetime] NULL,
	[selisih] [int] NULL,
	[selisih_paf] [int] NULL,
	[pof_bulanan] [float] NULL,
	[paf_bulanan] [float] NULL,
	[paf] [float] NULL,
	[bulan] [int] NULL,
	[tahun] [int] NULL,
	[tipe] [varchar](50) NULL,
 CONSTRAINT [PK_foc_op_avail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[foc_paf]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foc_paf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_foc] [int] NOT NULL,
	[tanggal] [datetime] NOT NULL,
	[measured_paf] [float] NOT NULL,
	[calculated_paf] [float] NOT NULL,
 CONSTRAINT [PK_foc_paf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[foc_target_paf]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foc_target_paf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_foc] [int] NOT NULL,
	[tahun] [int] NULL,
	[bulan] [int] NULL,
	[target_paf] [float] NULL,
 CONSTRAINT [PK_foc_target_paf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[focs]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[focs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[plant_id] [int] NOT NULL,
	[nama] [varchar](100) NOT NULL,
 CONSTRAINT [PK_rm_foc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iir_recommendations]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iir_recommendations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_iir] [int] NULL,
	[description] [varchar](255) NULL,
	[PIC] [varchar](255) NULL,
	[pir_number] [int] NULL,
	[completion_date] [date] NULL,
	[has_pir] [tinyint] NULL,
 CONSTRAINT [PK_iir_recommendations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[immediate_actions]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[immediate_actions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action] [varchar](255) NOT NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_immediate_actions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[incident_report]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[incident_report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[facility] [varchar](255) NULL,
	[incident_location] [varchar](255) NULL,
	[reference_number] [varchar](255) NULL,
	[type_of_report] [tinyint] NULL,
	[date_incident] [datetime] NULL,
	[title] [varchar](255) NULL,
	[incident_type] [varchar](255) NULL,
	[actual_loss_severity] [tinyint] NULL,
	[potential_loss_severity] [tinyint] NULL,
	[probability] [tinyint] NULL,
	[factual_information] [text] NULL,
	[cost_estimate] [text] NULL,
	[immediate_action] [text] NULL,
	[prepared_by] [varchar](255) NULL,
	[ack_supervisor] [varchar](255) NULL,
	[prepare_date] [date] NULL,
	[ack_date] [date] NULL,
	[superintendent] [varchar](255) NULL,
	[loss_control] [varchar](255) NULL,
	[field_manager] [varchar](255) NULL,
	[doms] [varchar](255) NULL,
	[superintendent_date] [date] NULL,
	[loss_date] [date] NULL,
	[field_manager_date] [date] NULL,
	[doms_date] [date] NULL,
	[investigation] [tinyint] NULL,
	[investigation_req] [varchar](255) NULL,
	[id_iir] [int] NULL,
 CONSTRAINT [PK_incident_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[investigation_report]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[investigation_report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[facility] [varchar](255) NULL,
	[title] [varchar](255) NULL,
	[reference_number] [varchar](255) NULL,
	[date_incident] [datetime] NULL,
	[incident_location] [varchar](255) NULL,
	[incident_type] [varchar](255) NULL,
	[actual_loss] [varchar](255) NULL,
	[potential_loss] [varchar](255) NULL,
	[probability] [varchar](255) NULL,
	[factual_information] [text] NULL,
	[immediate_action] [text] NULL,
	[immediate_causes] [text] NULL,
	[basic_causes] [text] NULL,
	[additional_observation] [text] NULL,
	[cost_estimate] [text] NULL,
	[investigator] [varchar](255) NULL,
	[investigator_date] [date] NULL,
	[loss_control] [varchar](255) NULL,
	[loss_control_date] [date] NULL,
	[field_manager] [varchar](255) NULL,
	[field_manager_date] [date] NULL,
 CONSTRAINT [PK_investigation_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[long_term_actions]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[long_term_actions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action] [varchar](255) NOT NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_long_term_actions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ma]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_foc] [int] NOT NULL,
	[tadd] [float] NOT NULL,
	[tadt_hours] [float] NOT NULL,
	[ta_interval] [float] NOT NULL,
	[ntamdd] [float] NOT NULL,
	[study_year_ntamd] [float] NOT NULL,
	[prior_year_ntamd] [float] NOT NULL,
	[ntamsd] [float] NOT NULL,
	[study_year_ms] [float] NOT NULL,
	[prior_year_ms] [float] NOT NULL,
	[days_in_study_year] [float] NOT NULL,
	[last_update] [datetime] NOT NULL,
	[masd] [float] NULL,
	[ma] [float] NULL,
	[category] [tinyint] NULL,
	[type] [tinyint] NULL,
 CONSTRAINT [PK_masd] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[part_unit_event]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[part_unit_event](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment_part] [int] NOT NULL,
	[datetime_stop] [datetime] NULL,
	[datetime_ops] [datetime] NULL,
	[durasi] [float] NULL,
	[downtime] [float] NULL,
	[failure_mode] [varchar](max) NULL,
	[failure_cause] [varchar](max) NULL,
	[failure_effect] [varchar](max) NULL,
	[secondary_effect] [varchar](max) NULL,
	[failure_severity] [varchar](50) NULL,
	[failure_clss] [varchar](50) NULL,
	[immediate_act] [varchar](max) NULL,
	[long_term_act] [varchar](max) NULL,
	[engineer] [text] NULL,
	[financial_cost] [float] NULL,
	[repair_cost] [float] NULL,
	[event_description] [varchar](max) NULL,
	[type] [varchar](50) NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_part_unit_event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[parts]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[parts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag_number] [varchar](50) NOT NULL,
	[nama] [varchar](100) NULL,
	[assurance_level] [float] NULL,
	[vendor] [varchar](100) NULL,
	[warranty] [int] NULL,
 CONSTRAINT [PK_rm_part_unit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pir]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pir](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[no] [varchar](50) NULL,
	[improvement_request] [text] NULL,
	[date_rise] [date] NULL,
	[initiate_by] [varchar](50) NULL,
	[title] [varchar](100) NULL,
	[reference] [varchar](max) NULL,
	[procedure_reference] [varchar](max) NULL,
	[initiator_sign_date] [date] NULL,
	[kpbo_sign_date_init] [date] NULL,
	[target_completion_init] [date] NULL,
	[desc_prob] [varchar](max) NULL,
	[investigator] [varchar](50) NULL,
	[investigator_date] [date] NULL,
	[improvement_plant] [text] NULL,
	[start_implement_date] [date] NULL,
	[process_owner] [varchar](50) NULL,
	[target_completion_process] [date] NULL,
	[action_by] [varchar](50) NULL,
	[require_dokument] [varchar](1) NULL,
	[hira_require] [varchar](1) NULL,
	[kpbo_sign_date_process] [date] NULL,
	[review_date] [date] NULL,
	[result_of_action] [text] NULL,
	[kpbo_sign_date_process_result] [date] NULL,
	[sign_date_verified] [date] NULL,
	[verified_desc] [text] NULL,
	[initiator_verified_date] [datetime] NULL,
	[review_mgmt_verified_date] [datetime] NULL,
	[description] [text] NULL,
	[status] [varchar](20) NULL,
 CONSTRAINT [PK_pir] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pir_log]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pir_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_pir] [int] NULL,
	[date] [datetime] NULL,
	[username] [varchar](50) NULL,
	[process] [varchar](255) NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_pir_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[plants]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[plants](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](255) NULL,
 CONSTRAINT [PK_plants] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](255) NULL,
	[id_type] [int] NULL,
	[cost] [varchar](50) NULL,
	[id_facility] [int] NULL,
	[id_division] [int] NULL,
	[id_department] [int] NULL,
	[id_building] [int] NULL,
	[id_floor] [int] NULL,
	[functional_location] [varchar](255) NULL,
	[id_type_equipment] [int] NULL,
	[id_equipment_class] [int] NULL,
	[other] [varchar](255) NULL,
	[manufacture] [varchar](255) NULL,
	[id_csf_connector] [int] NULL,
	[charter] [varchar](255) NULL,
	[comment] [varchar](255) NULL,
	[id_team] [int] NULL,
	[start_date] [datetime] NULL,
	[completion_date] [datetime] NULL,
	[is_publish] [tinyint] NULL,
	[analysis_file] [varchar](255) NULL,
	[equipment_code] [varchar](255) NULL,
	[is_tree] [tinyint] NULL,
	[id_pir] [int] NULL,
	[has_pir] [tinyint] NULL,
	[fracas_ir] [tinyint] NULL,
	[fracas_ir_id] [int] NULL,
 CONSTRAINT [PK_rca] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_analisys_type]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_analisys_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_analisys_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_building]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_building](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_department] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_building] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_csf]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_csf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_csf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_csf_conector]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rca_csf_conector](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_rca] [int] NULL,
	[id_csf] [int] NULL,
 CONSTRAINT [PK_rca_csf_conector] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rca_department]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_division] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_desc]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_desc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_rca] [int] NULL,
	[description] [varchar](255) NULL,
 CONSTRAINT [PK_rca_desc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_division]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_division](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_facility] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_division] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_facility]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_facility](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_facility] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_floor]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_floor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_building] [int] NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_floor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_graph_metric]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_graph_metric](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_graph_metric] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_implementation]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_implementation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[next_action] [varchar](255) NULL,
	[pic] [varchar](255) NULL,
	[due_date] [date] NULL,
	[is_complete] [tinyint] NULL,
	[id_rca] [int] NULL,
	[complete_date] [date] NULL,
	[dampak] [tinyint] NULL,
	[usaha] [tinyint] NULL,
 CONSTRAINT [PK_rca_implementation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_team_connector]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rca_team_connector](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [nvarchar](255) NOT NULL,
	[id_rca] [int] NOT NULL,
 CONSTRAINT [PK_rca_team_connector] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[secondary_effects]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[secondary_effects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_secondary_effects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_paf]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[system_paf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_system] [int] NOT NULL,
	[tanggal] [datetime] NOT NULL,
	[measured_paf] [float] NOT NULL,
	[calculated_paf] [float] NOT NULL,
 CONSTRAINT [PK_system_paf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[systems]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[systems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_unit] [int] NOT NULL,
	[nama] [varchar](100) NULL,
	[kode] [varchar](100) NULL,
	[funct_description] [text] NULL,
	[failure_scenario] [text] NULL,
	[primary_impact] [text] NULL,
	[secondary_impact] [text] NULL,
	[cons_econ] [varchar](50) NULL,
	[cons_hs] [varchar](50) NULL,
	[cons_env] [varchar](50) NULL,
	[cons_total] [varchar](50) NULL,
	[likelihood] [varchar](50) NULL,
	[crit_code] [varchar](50) NULL,
	[ram_crit] [varchar](50) NULL,
	[exist_crit] [varchar](50) NULL,
	[h] [varchar](50) NULL,
	[e] [varchar](50) NULL,
	[econ] [varchar](50) NULL,
	[ram_crit_1] [varchar](50) NULL,
	[prob] [varchar](50) NULL,
	[ram_crit_2] [varchar](50) NULL,
	[ram_crit_3] [varchar](50) NULL,
 CONSTRAINT [PK_rm_system] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tag_types]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tag_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tag_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[unit_paf]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unit_paf](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_unit] [int] NULL,
	[tanggal] [datetime] NULL,
	[measured_paf] [float] NULL,
	[calculated_paf] [float] NULL,
 CONSTRAINT [PK_unit_paf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[units]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[units](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_foc] [int] NOT NULL,
	[nama] [varchar](100) NOT NULL,
	[ma] [float] NOT NULL,
	[masd] [float] NOT NULL,
 CONSTRAINT [PK_rm_unit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_per_role]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_per_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_user_per_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_role](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[role] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 2/27/2013 7:07:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[username] [varchar](255) NOT NULL,
	[fullname] [varchar](255) NULL,
	[password] [varchar](255) NOT NULL,
	[jabatan] [varchar](255) NULL,
	[create_date] [datetime] NULL,
	[rm_role] [int] NULL,
 CONSTRAINT [Users$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[comms_rbi] ON 

INSERT [dbo].[comms_rbi] ([id], [title], [filename], [category]) VALUES (7, N'Portfolio LICHT 4', N'portfolio.pdf', N'COMMS')
INSERT [dbo].[comms_rbi] ([id], [title], [filename], [category]) VALUES (15, N'Design patern', N'(Gang of Four) Design_Patterns.pdf', N'RBI')
SET IDENTITY_INSERT [dbo].[comms_rbi] OFF
SET IDENTITY_INSERT [dbo].[daily_log] ON 

INSERT [dbo].[daily_log] ([id], [date], [grup], [production_foreman], [production_operator_1], [production_operator_2], [production_operator_3], [production_operator_4], [production_operator_5], [production_operator_6], [production_operator_7], [production_operator_8], [time_check], [wma_2_is_text], [wma_2_fcv], [wma_2_flow], [wma_2_whp], [wma_4_is_text], [wma_4_fcv], [wma_4_flow], [wma_4_whp], [wma_6_is_text], [wma_6_fcv], [wma_6_flow], [wma_6_whp], [mbd_1_is_text], [mbd_1_fcv], [mbd_1_flow], [mbd_1_whp], [mbd_2_is_text], [mbd_2_fcv], [mbd_2_flow], [mbd_2_whp], [mbd_3_is_text], [mbd_3_fcv], [mbd_3_flow], [mbd_3_whp], [mbd_4_is_text], [mbd_4_fcv], [mbd_4_flow], [mbd_4_whp], [mbd_5_is_text], [mbd_5_fcv], [mbd_5_flow], [mbd_5_whp], [wwq_1_is_text], [wwq_1_fcv], [wwq_1_flow], [wwq_1_whp], [wwq_2_is_text], [wwq_2_fcv], [wwq_2_flow], [wwq_2_whp], [wwq_3_is_text], [wwq_3_fcv], [wwq_3_flow], [wwq_3_whp], [wwq_4_is_text], [wwq_4_fcv], [wwq_4_flow], [wwq_4_whp], [wwq_5_is_text], [wwq_5_fcv], [wwq_5_flow], [wwq_5_whp], [mbe_3_is_text], [mbe_3_fcv], [mbe_3_flow], [mbe_3_whp], [mbe_4_is_text], [mbe_4_fcv], [mbe_4_flow], [mbe_4_whp], [mba_1_is_text], [mba_1_fcv], [mba_1_flow], [mba_1_whp], [mba_2_is_text], [mba_2_fcv], [mba_2_flow], [mba_2_whp], [mba_3_is_text], [mba_3_fcv], [mba_3_flow], [mba_3_whp], [mba_4_is_text], [mba_4_fcv], [mba_4_flow], [mba_4_whp], [mba_5_is_text], [mba_5_fcv], [mba_5_flow], [mba_5_whp], [mbb_1_is_text], [mbb_1_fcv], [mbb_1_flow], [mbb_1_whp], [mbb_2_is_text], [mbb_2_fcv], [mbb_2_flow], [mbb_2_whp], [mbb_3_is_text], [mbb_3_fcv], [mbb_3_flow], [mbb_3_whp], [mbb_4_is_text], [mbb_4_fcv], [mbb_4_flow], [mbb_4_whp], [mbb_5_is_text], [mbb_5_fcv], [mbb_5_flow], [mbb_5_whp], [mbb_6_is_text], [mbb_6_fcv], [mbb_6_flow], [mbb_6_whp], [wwf_1_is_text], [wwf_1_fcv], [wwf_1_flow], [wwf_1_whp], [wwf_3_is_text], [wwf_3_fcv], [wwf_3_flow], [wwf_3_whp], [www_1_is_text], [www_1_fcv], [www_1_flow], [www_1_whp], [wwp_1_is_text], [wwp_1_fcv], [wwp_1_flow], [wwp_1_whp], [generator_output_1], [gross_1], [generator_output_counter_1], [power_factor_1], [tap_charger_1], [pln_grid_voltage_1], [valve_limiter_1], [governor_output_1], [wcp_counter_1], [condenser_pressure_1], [main_cw_flow_1], [ppc_g_co_1], [interface_pressure_1], [vent_bias_1], [main_cw_pressure_1], [ct_basin_ph_1], [condenser_cw_inlet_a_1], [condenser_cw_inlet_b_1], [gen_trans_winding_temp_1], [unit_trans_winding_temp_1], [wheel_case_pressure_1], [generator_output_2], [gross_2], [generator_output_counter_2], [power_factor_2], [tap_charger_2], [pln_grid_voltage_2], [valve_limiter_2], [governor_output_2], [wcp_counter_2], [condenser_pressure_2], [main_cw_flow_2], [ppc_g_co_2], [interface_pressure_2], [vent_bias_2], [main_cw_pressure_2], [ct_basin_ph_2], [condenser_cw_inlet_a_2], [condenser_cw_inlet_b_2], [gen_trans_winding_temp_2], [unit_trans_winding_temp_2], [wheel_case_pressure_2], [ncg_1], [ncg_2], [turbine_1], [turbine_2], [ct_temp_1], [ct_temp_2], [exhaust_1], [exhaust_2], [upper_tp_level], [lower_tp_level], [mv_333], [mv_334], [brine_level], [condensate_level], [naoh_level], [wwd_pond_level], [uti_active_1], [uti_reactive_1], [sc_main_1], [sc_auxiliary_1], [ge_active_1], [ge_reactive_1], [metering_segwwl_1], [metering_pln_1], [condensate_ps_1], [segwwl_availability_1], [pln_dispatch_1], [pln_meter_1], [segwwl_export_1], [actual_export_1], [production_excess_1], [rpf_1], [pgf_1], [pln_1], [uti_active_2], [uti_reactive_2], [sc_main_2], [sc_auxiliary_2], [ge_active_2], [ge_reactive_2], [metering_segwwl_2], [metering_pln_2], [condensate_ps_2], [segwwl_availability_2], [pln_dispatch_2], [pln_meter_2], [segwwl_export_2], [actual_export_2], [production_excess_2], [rpf_2], [pgf_2], [pln_2], [condensate_total], [brine_total], [note], [last_plant_time]) VALUES (1, CAST(0xC5360B00 AS Date), N'C', N'aasf', N'wweq', N'qweq', N'qq', N'qww', N'ee', NULL, NULL, NULL, N'9:27 PM', 0, N'dsfsd', N'sfds', NULL, 0, N'sdfsd', N'sdf', NULL, 0, N'dsfsd', N'sdfsd', NULL, 0, N'sdfs', N'sdfds', NULL, 1, N'12312', NULL, NULL, 1, N'4534', NULL, NULL, 1, N'86786', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, N'3423dadas', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, N'sdasdfa', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, N'asdasdasd', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'756', N'6756', N'56756', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'56765', NULL, N'65756', NULL, N'57665', NULL, NULL, N'56765', NULL, NULL, NULL, NULL, NULL, N'khjk', NULL, N'lkkl', NULL, N'dfgd', NULL, NULL, NULL, NULL, NULL, N'lkjgh', NULL, NULL, NULL, NULL, NULL, N'5345', NULL, NULL, N'46345', NULL, N'3463', NULL, NULL, NULL, N'534', N'54353', NULL, NULL, NULL, N'346', N'-3434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'53453', NULL, NULL, NULL, NULL, N'3534', N'53453', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'11:32 AM')
SET IDENTITY_INSERT [dbo].[daily_log] OFF
SET IDENTITY_INSERT [dbo].[daily_log_last_plant_status] ON 

INSERT [dbo].[daily_log_last_plant_status] ([id], [id_daily_log], [description]) VALUES (1, 1, N'afasfsafasfafas')
INSERT [dbo].[daily_log_last_plant_status] ([id], [id_daily_log], [description]) VALUES (2, 1, N'mndgadjfdgjkdf')
INSERT [dbo].[daily_log_last_plant_status] ([id], [id_daily_log], [description]) VALUES (1002, NULL, N'_&-:')
INSERT [dbo].[daily_log_last_plant_status] ([id], [id_daily_log], [description]) VALUES (1003, NULL, N';,')
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
SET IDENTITY_INSERT [dbo].[disciplines] ON 

INSERT [dbo].[disciplines] ([id], [title]) VALUES (1, N'ROT')
INSERT [dbo].[disciplines] ([id], [title]) VALUES (2, N'INS')
INSERT [dbo].[disciplines] ([id], [title]) VALUES (3, N'STA')
INSERT [dbo].[disciplines] ([id], [title]) VALUES (4, N'ELECT')
SET IDENTITY_INSERT [dbo].[disciplines] OFF
SET IDENTITY_INSERT [dbo].[equipment_event] ON 

INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (713, 673, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (714, 674, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (715, 675, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (716, 676, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (717, 677, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (718, 678, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (719, 679, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (720, 680, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (721, 681, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (722, 682, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (723, 683, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (724, 684, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (725, 685, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (726, 686, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (727, 687, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (728, 688, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (729, 689, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (730, 690, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (731, 691, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (732, 692, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (733, 693, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (734, 694, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (735, 695, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (736, 696, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (737, 697, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (738, 698, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (739, 699, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (740, 700, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (741, 701, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (742, 702, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (743, 703, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (744, 704, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (745, 705, NULL, CAST(0x0000882100000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (746, 706, NULL, CAST(0x000090B100000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (747, 707, NULL, CAST(0x0000994000000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (748, 708, NULL, CAST(0x0000A33D00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (749, 709, NULL, CAST(0x0000ABCD00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (750, 710, NULL, CAST(0x0000B45C00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (751, 711, NULL, CAST(0x0000B5C900000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (752, 712, NULL, CAST(0x0000B73700000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (753, 713, NULL, CAST(0x0000B8A400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (754, 714, NULL, CAST(0x0000BA1100000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (755, 715, NULL, CAST(0x0000BB7E00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (756, 716, NULL, CAST(0x0000BCEC00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (757, 717, NULL, CAST(0x0000BE5900000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (758, 718, NULL, CAST(0x0000BFC600000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (759, 719, NULL, CAST(0x0000C13300000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (760, 720, NULL, CAST(0x0000C2A100000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (761, 721, NULL, CAST(0x0000C57B00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (762, 722, NULL, CAST(0x0000CB3000000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (763, 723, NULL, CAST(0x0000CC9D00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (764, 724, NULL, CAST(0x0000CE0B00000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (765, 725, NULL, CAST(0x0000CF7800000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[equipment_event] ([id], [id_equipment], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (766, 674, CAST(0x00009E6000000000 AS DateTime), CAST(0x00009E6300000000 AS DateTime), 72, 72, N'External leakage (process), Fails to pump', NULL, NULL, NULL, N'CATASTROPHIC', NULL, NULL, N'asdf, qwe', NULL, NULL, NULL, N'Pressure Drop', NULL, 0)
SET IDENTITY_INSERT [dbo].[equipment_event] OFF
SET IDENTITY_INSERT [dbo].[equipment_groups] ON 

INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (122, 34, N'CHE')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (123, 34, N'CAS')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (124, 34, N'LOT')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (125, 34, N'PDS')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (126, 34, N'BDW')
INSERT [dbo].[equipment_groups] ([id], [id_system], [nama]) VALUES (127, 34, N'WTS')
SET IDENTITY_INSERT [dbo].[equipment_groups] OFF
SET IDENTITY_INSERT [dbo].[equipment_paf] ON 

INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18334, 673, CAST(0x0000A11D00F18407 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18335, 674, CAST(0x0000A11D00F18432 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18336, 675, CAST(0x0000A11D00F18445 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18337, 676, CAST(0x0000A11D00F18459 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18338, 677, CAST(0x0000A11D00F1846D AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18339, 678, CAST(0x0000A11D00F18482 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18340, 679, CAST(0x0000A11D00F18495 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18341, 680, CAST(0x0000A11D00F184A7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18342, 681, CAST(0x0000A11D00F184BA AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18343, 682, CAST(0x0000A11D00F184F1 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18344, 683, CAST(0x0000A11D00F18507 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18345, 684, CAST(0x0000A11D00F1851D AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18346, 685, CAST(0x0000A11D00F18530 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18347, 686, CAST(0x0000A11D00F1854D AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18348, 687, CAST(0x0000A11D00F18567 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18349, 688, CAST(0x0000A11D00F1857D AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18350, 689, CAST(0x0000A11D00F18593 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18351, 690, CAST(0x0000A11D00F185A7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18352, 691, CAST(0x0000A11D00F185BE AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18353, 692, CAST(0x0000A11D00F185D5 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18354, 693, CAST(0x0000A11D00F185F6 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18355, 694, CAST(0x0000A11D00F1860B AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18356, 695, CAST(0x0000A11D00F18623 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18357, 696, CAST(0x0000A11D00F18638 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18358, 697, CAST(0x0000A11D00F18652 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18359, 698, CAST(0x0000A11D00F1866B AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18360, 699, CAST(0x0000A11D00F186A0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18361, 700, CAST(0x0000A11D00F186D4 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18362, 701, CAST(0x0000A11D00F186EC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18363, 702, CAST(0x0000A11D00F18704 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18364, 703, CAST(0x0000A11D00F1871F AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18365, 704, CAST(0x0000A11D00F18738 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18366, 705, CAST(0x0000A11D00F18751 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18367, 706, CAST(0x0000A11D00F1876F AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18368, 707, CAST(0x0000A11D00F18789 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18369, 708, CAST(0x0000A11D00F187A3 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18370, 709, CAST(0x0000A11D00F187C2 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18371, 710, CAST(0x0000A11D00F187DC AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18372, 711, CAST(0x0000A11D00F187F7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18373, 712, CAST(0x0000A11D00F18816 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18374, 713, CAST(0x0000A11D00F18830 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18375, 714, CAST(0x0000A11D00F1884E AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18376, 715, CAST(0x0000A11D00F1886A AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18377, 716, CAST(0x0000A11D00F18885 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18378, 717, CAST(0x0000A11D00F188A3 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18379, 718, CAST(0x0000A11D00F188BF AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18380, 719, CAST(0x0000A11D00F188E0 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18381, 720, CAST(0x0000A11D00F188FD AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18382, 721, CAST(0x0000A11D00F18933 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18383, 722, CAST(0x0000A11D00F1897C AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18384, 723, CAST(0x0000A11D00F1899A AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18385, 724, CAST(0x0000A11D00F189B7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18386, 725, CAST(0x0000A11D00F189D7 AS DateTime), 100, 100)
INSERT [dbo].[equipment_paf] ([id], [id_equipment], [tanggal], [avail_calculated], [avail_measured]) VALUES (18387, 674, CAST(0x0000A11F01610958 AS DateTime), 100, 100)
SET IDENTITY_INSERT [dbo].[equipment_paf] OFF
SET IDENTITY_INSERT [dbo].[equipment_part] ON 

INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (36, 705, 8, 0, 0, 1, 0, CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipment_part] ([id], [id_equipment], [id_parts], [mtbf], [mttr], [status], [lead_time], [installed_date], [obsolete_date]) VALUES (37, 705, 9, 0, 0, 1, 0, CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[equipment_part] OFF
SET IDENTITY_INSERT [dbo].[equipment_read_nav_note] ON 

INSERT [dbo].[equipment_read_nav_note] ([id], [note]) VALUES (1, N'Tes note bos')
SET IDENTITY_INSERT [dbo].[equipment_read_nav_note] OFF
SET IDENTITY_INSERT [dbo].[equipment_readiness_nav] ON 

INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (666, 673, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (667, 674, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (668, 675, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (669, 676, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (670, 677, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (671, 678, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (672, 679, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (673, 680, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (674, 681, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (675, 682, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (676, 683, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (677, 684, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (678, 685, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (679, 686, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (680, 687, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (681, 688, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (682, 689, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (683, 690, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (684, 691, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (685, 692, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (686, 693, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (687, 694, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (688, 695, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (689, 696, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (690, 697, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (691, 698, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (692, 699, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (693, 700, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (694, 701, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (695, 702, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (696, 703, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (697, 704, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (698, 705, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (699, 706, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (700, 707, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (701, 708, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (702, 709, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (703, 710, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (704, 711, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (705, 712, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (706, 713, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (707, 714, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (708, 715, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (709, 716, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (710, 717, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (711, 718, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (712, 719, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (713, 720, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (714, 721, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (715, 722, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (716, 723, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (717, 724, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
INSERT [dbo].[equipment_readiness_nav] ([id], [id_equipment], [operation], [boc], [bec], [monitoring], [performance], [cm_program], [maintenance], [pm_program], [overhaul], [spares], [lifecycle_spare], [main_act_spare], [safe_operation], [safeguard], [accesories], [score], [capacity], [quality], [sertifikasi]) VALUES (718, 725, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100)
SET IDENTITY_INSERT [dbo].[equipment_readiness_nav] OFF
SET IDENTITY_INSERT [dbo].[equipments] ON 

INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (673, 122, N'0-CFV001', N'NaOH INLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 31, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (674, 122, N'0-CFV-003A', N'P-112A INLET VALVE ', NULL, N'', 0, 0, 0, 0, 0, 1, 0, 0, 72, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (675, 122, N'0-CFV-003B', N'P-112B INLET VALVE ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (676, 122, N'0-CFV-004A', N'P-112A CHECK VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 30, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (677, 122, N'0-CFV-004B', N'P-112B CHECK VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 30, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (678, 122, N'0-CFV-005A', N'P-112A OUTLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 30, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (679, 122, N'0-CFV-005B', N'P-112B OUTLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 31, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (680, 122, N'0-CFV-007A', N'T-101  DRAIN VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 31, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (681, 122, N'0-CFV-007B', N'T-102  DRAIN VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 31, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (682, 122, N'0-CFV-008', N'SERVICE WATER INLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 2096878, N'MH', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 22, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (683, 122, N'0-CFV-010', N'P-114A INLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 45, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (684, 122, N'0-CFV-011', N'P-114A RELIEF VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 31, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (685, 122, N'0-CFV-012', N'P-114A CHECK VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (686, 122, N'0-CFV-013', N'P-114A IOUTLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 45, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (687, 122, N'0-CFV-014', N'P-114B INLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 11404976, N'MH', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 23, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (688, 122, N'0-CFV-015', N'P-114B RELIEF VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 9782500, N'MH', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 23, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (689, 122, N'0-CFV-016', N'P-114B CHECK VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 9782500, N'MH', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 23, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (690, 122, N'0-CFV-017', N'P-114B IOUTLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 23, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (691, 122, N'0-CFV-018', N'PUMP INLET VALVE FOR UNIT 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 24, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (692, 122, N'0-CFV-019', N'PUMP OUTLET VALVE FOR UNIT 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'H', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 24, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (693, 122, N'0-CFV-020', N'BLOCK VALVE FOR UNIT 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 9782500, N'H', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 23, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (694, 122, N'0-CFV-021', N'T-101 OUTLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 25, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (695, 122, N'0-CFV-022', N'T-102 INLET VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 46, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (696, 122, N'0-CFV-502', N'P-114A/B SAMPLING VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 47, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (697, 122, N'0-CFV503', N'CHEMICAL DOSING DIKE BRAIN VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 24, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (698, 122, N'0-CFV504A', N'P-112A DISCHARGE PIPE DRAIN VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 24, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (699, 122, N'0-CFV504B', N'P-112B DISCHARGE PIPE DRAIN VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (700, 122, N'0-CFV-025', N'P-114C CHECK VALVE
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (701, 122, N'0-CFV-026
', N'P-114C DISCHARGE VALVE
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (702, 122, N'AG-101', N'AGITATOR FOR NAOH DILUSION TANK WITH MOTOR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 29, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (703, 122, N'T-101', N'CONCENTRATED NaOH TANK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 0, N'', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'', 30, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (704, 122, N'T-102', N'NaOH DILUTION TANK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869278, N'MH', CAST(0x000086B400000000 AS DateTime), CAST(0x000086B400000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x000086B400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (705, 122, N'PUMP SET, 112A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869278, N'MH', CAST(0x0000882100000000 AS DateTime), CAST(0x0000882100000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000882100000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (706, 122, N'PUMP SET, 112B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869284, N'MH', CAST(0x000090B100000000 AS DateTime), CAST(0x000090B100000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x000090B100000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (707, 122, N'PUMP SET, 114A', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869290, N'MH', CAST(0x0000994000000000 AS DateTime), CAST(0x0000994000000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000994000000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (708, 122, N'PUMP SET, 114B', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869298, N'MH', CAST(0x0000A33D00000000 AS DateTime), CAST(0x0000A33D00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000A33D00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (709, 122, N'PUMP SET, 114C', N'-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869304, N'MH', CAST(0x0000ABCD00000000 AS DateTime), CAST(0x0000ABCD00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000ABCD00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (710, 122, N'0-CFV-024', N'P-114C RELIEF VALVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869310, N'MH', CAST(0x0000B45C00000000 AS DateTime), CAST(0x0000B45C00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000B45C00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (711, 122, N'A0-FS-1950', N'EXTRACTION POINT WATER FLOW LOW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869310, N'MH', CAST(0x0000B5C900000000 AS DateTime), CAST(0x0000B5C900000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000B5C900000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (712, 122, N'A1-TE-1610', N'NaOH DILUTION TANK TEMP.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869312, N'MH', CAST(0x0000B73700000000 AS DateTime), CAST(0x0000B73700000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000B73700000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (713, 122, N'A0-LIT-1600', N'CONDENSTRATE NaOH TANK LEVEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869312, N'MH', CAST(0x0000B8A400000000 AS DateTime), CAST(0x0000B8A400000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000B8A400000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (714, 122, N'A0-LIT-1610', N'NaOH DILUTION TANK LEVEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869314, N'MH', CAST(0x0000BA1100000000 AS DateTime), CAST(0x0000BA1100000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000BA1100000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (715, 122, N'CF205', N'CF205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869314, N'MH', CAST(0x0000BB7E00000000 AS DateTime), CAST(0x0000BB7E00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000BB7E00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (716, 122, N'CF202', N'CF202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869316, N'MH', CAST(0x0000BCEC00000000 AS DateTime), CAST(0x0000BCEC00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000BCEC00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (717, 122, N'CF207
', N'NAOH INJECTION PIPE FOR NO.2 UNIT AREA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869316, N'MH', CAST(0x0000BE5900000000 AS DateTime), CAST(0x0000BE5900000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000BE5900000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (718, 122, N'CF203', N'CF203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869318, N'MH', CAST(0x0000BFC600000000 AS DateTime), CAST(0x0000BFC600000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000BFC600000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (719, 122, N'CF206
', N'CONNECTION PIPE OF NAOH INJECTION PUMPS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869318, N'MH', CAST(0x0000C13300000000 AS DateTime), CAST(0x0000C13300000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000C13300000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (720, 122, N'CF204', N'CF204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869320, N'MH', CAST(0x0000C2A100000000 AS DateTime), CAST(0x0000C2A100000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000C2A100000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (721, 122, N'CF201', N'CF201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869322, N'MH', CAST(0x0000C57B00000000 AS DateTime), CAST(0x0000C57B00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000C57B00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (722, 122, N'CF001', N'CF001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869326, N'MH', CAST(0x0000CB3000000000 AS DateTime), CAST(0x0000CB3000000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000CB3000000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (723, 122, N'CF002', N'CF002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869326, N'MH', CAST(0x0000CC9D00000000 AS DateTime), CAST(0x0000CC9D00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000CC9D00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (724, 122, N'CF003', N'CF003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869328, N'MH', CAST(0x0000CE0B00000000 AS DateTime), CAST(0x0000CE0B00000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000CE0B00000000 AS DateTime))
INSERT [dbo].[equipments] ([id], [id_equipment_group], [tag_num], [nama], [id_category], [pdf], [tetha], [beta], [mean], [varian], [lamda], [id_discipline], [mtbf], [mttr], [mdt], [status], [method], [econ], [ram_crit], [installed_date], [obsolete_date], [warranty], [vendor], [id_tag_type], [status_read_nav], [data_sheet_path], [sertifikasi]) VALUES (725, 122, N'CF010', N'CF010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 1, NULL, 18869328, N'MH', CAST(0x0000CF7800000000 AS DateTime), CAST(0x0000CF7800000000 AS DateTime), 0, N'0', 25, 0, NULL, CAST(0x0000CF7800000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[equipments] OFF
SET IDENTITY_INSERT [dbo].[event_descriptions] ON 

INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (1, N'Replace battery', N'Replace battery')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (2, N'Test', N'Test')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (3, N'Pressure Drop', N'Pressure Drop')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (4, N'High Vibration', N'High Vibration')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (5, N'High Temperature', N'High Temperature')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (6, N'Intermitten Operation', N'Intermitten Operation')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (7, N'Loss Oil Pressure', N'Loss Oil Pressure')
INSERT [dbo].[event_descriptions] ([id], [title], [description]) VALUES (12, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[event_descriptions] OFF
SET IDENTITY_INSERT [dbo].[failure_causes] ON 

INSERT [dbo].[failure_causes] ([id], [title], [description]) VALUES (1, N'Failure 1', N'Kegagalan pertama (tes)')
INSERT [dbo].[failure_causes] ([id], [title], [description]) VALUES (3, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[failure_causes] OFF
SET IDENTITY_INSERT [dbo].[failure_effects] ON 

INSERT [dbo].[failure_effects] ([id], [title], [description]) VALUES (1, N'Failure effect 1', N'Efek gagal pertama (tes)')
INSERT [dbo].[failure_effects] ([id], [title], [description]) VALUES (2, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[failure_effects] OFF
SET IDENTITY_INSERT [dbo].[failure_modes] ON 

INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (136, N'Drum Fail', N'Drum fails to continue running', 27)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (137, NULL, N'Fails to provide proper output', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (138, NULL, N'Fails to start', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (139, NULL, N'Fails to stop', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (140, NULL, N'Mechanical/structural failure', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (142, NULL, N'External leak', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (143, NULL, N'Fails to start', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (144, NULL, N'Fails while running', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (145, NULL, N'Loss of efficiency', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (146, NULL, N'Loss of performance', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (147, NULL, N'External leak', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (148, NULL, N'Fails to control', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (149, NULL, N'Fails to provide proper output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (150, NULL, N'Fails to zero or maximum output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (151, NULL, N'Has erratic output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (152, NULL, N'Has high output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (153, NULL, N'Has low output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (154, NULL, N'Drop in efficiency', 38)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (155, NULL, N'Mechanical damage', 38)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (156, NULL, N'Fails to continue to burn', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (157, NULL, N'Fails to control flame', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (158, NULL, N'Fails to ignite', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (159, NULL, N'Fails to operate properly', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (160, NULL, N'Has erratic output', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (161, NULL, N'Has high output', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (162, NULL, N'Has low output', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (163, NULL, N'Has no output', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (164, NULL, N'Slow response', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (165, NULL, N'External leakage (process)', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (166, NULL, N'Fail while running', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (167, NULL, N'Fails to pump', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (168, NULL, N'Fails to start on demand', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (169, NULL, N'Fails to stop on demand', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (170, NULL, N'Structural deficiency', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (171, NULL, N'Fail while running', 41)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (172, NULL, N'Fails to pump', 41)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (173, NULL, N'Fails to start on demand', 41)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (174, NULL, N'Fail while running', 42)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (175, NULL, N'Fails to pump', 42)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (176, NULL, N'Fails to start on demand', 42)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (177, NULL, N'Structural deficiency', 42)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (178, NULL, N'External leakage', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (179, NULL, N'Fail while running', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (180, NULL, N'Fails to adequately compress', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (181, NULL, N'Internal leakage (utility)', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (182, NULL, N'Structural deficiency', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (183, NULL, N'Fails to start on demand', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (184, NULL, N'Fails to stop on demand', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (185, NULL, N'Has erratic output', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (186, NULL, N'External leakage', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (187, NULL, N'Fail while running', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (188, NULL, N'Fails to adequately compress', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (189, NULL, N'Internal leakage (utility)', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (190, NULL, N'Structural deficiency', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (191, NULL, N'Fails to start on demand', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (192, NULL, N'Fails to stop on demand', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (193, NULL, N'Has erratic output', 43)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (194, NULL, N'External leakage', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (195, NULL, N'Fail while running', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (196, NULL, N'Fails to adequately compress', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (197, NULL, N'Internal leakage (utility)', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (198, NULL, N'Structural deficiency', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (199, NULL, N'Fails to start on demand', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (200, NULL, N'Fails to stop on demand', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (201, NULL, N'Has erratic output', 44)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (202, NULL, N'EXTERNAL LEAKAGE', 25)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (203, NULL, N'FAILS TO OPERATE PROPERLY', 25)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (204, NULL, N'RESTRICT FLOW', 25)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (205, NULL, N'STRUCTURAL FAILURE', 25)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (206, NULL, N'Fails to start', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (207, NULL, N'Fails to stop', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (208, NULL, N'Fails while running', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (209, NULL, N'Loss of Ex class', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (210, NULL, N'Low power transmission', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (211, NULL, N'Operates at high temperature', 49)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (212, NULL, N'Mechanical Seal Failure', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (213, NULL, N'Bearing Failure', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (214, NULL, N'Oil Leakage', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (215, NULL, N'Electric Motor Failure', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (217, N'Fails to continue running', N'Fails to continue running', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (218, N'Fails to provide proper output', N'Fails to provide proper output', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (219, N'Fails to start', N'Fails to start', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (220, N'Fails to stop', N'Fails to stop', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (221, N'Mechanical/structural failure', N'Mechanical/structural failure', 22)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (222, N'External leak', N'External leak', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (223, N'Fails while running', N'Fails while running', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (224, N'Loss of efficiency', N'Loss of efficiency', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (225, N'Loss of performance', N'Loss of performance', 36)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (226, N'Fails to control', N'Fails to control', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (227, N'Fails to zero or maximum output', N'Fails to zero or maximum output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (228, N'Has erratic output', N'Has erratic output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (229, N'Has high output', N'Has high output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (230, N'Has low output', N'Has low output', 37)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (231, N'Drop in efficiency', N'Drop in efficiency', 38)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (232, N'Mechanical damage', N'Mechanical damage', 38)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (233, N'Fails to continue to burn', N'Fails to continue to burn', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (234, N'Fails to control flame', N'Fails to control flame', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (235, N'Fails to ignite', N'Fails to ignite', 39)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (236, N'Fails to operate properly', N'Fails to operate properly', 39)
GO
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (237, N'Has no output', N'Has no output', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (238, N'Slow response', N'Slow response', 40)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (239, N'External leakage (process)', N'External leakage (process)', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (240, N'Fail while running', N'Fail while running', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (241, N'Fails to pump', N'Fails to pump', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (242, N'Fails to start on demand', N'Fails to start on demand', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (243, N'Fails to stop on demand', N'Fails to stop on demand', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (244, N'Structural deficiency', N'Structural deficiency', 29)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (245, N'External leakage', N'External leakage', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (246, N'Fails to adequately compress', N'Fails to adequately compress', 26)
INSERT [dbo].[failure_modes] ([id], [title], [description], [id_tag_type]) VALUES (247, N'Internal leakage (utility)', N'Internal leakage (utility)', 26)
SET IDENTITY_INSERT [dbo].[failure_modes] OFF
SET IDENTITY_INSERT [dbo].[foc_paf] ON 

INSERT [dbo].[foc_paf] ([id], [id_foc], [tanggal], [measured_paf], [calculated_paf]) VALUES (16, 55, CAST(0x0000A11D00EA40D7 AS DateTime), 100, 100)
SET IDENTITY_INSERT [dbo].[foc_paf] OFF
SET IDENTITY_INSERT [dbo].[focs] ON 

INSERT [dbo].[focs] ([id], [plant_id], [nama]) VALUES (55, 1, N'WW')
SET IDENTITY_INSERT [dbo].[focs] OFF
SET IDENTITY_INSERT [dbo].[immediate_actions] ON 

INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (1, N'Replace battery', N'Replace battery')
INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (2, N'Replace Bearing', N'Replace Bearing')
INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (3, N'Replace Mechanical Seal', N'Replace Mechanical Seal')
INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (4, N'Add Lubricant Oil', N'Add Lubricant Oil')
INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (8, N'Create', NULL)
INSERT [dbo].[immediate_actions] ([id], [action], [description]) VALUES (9, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[immediate_actions] OFF
SET IDENTITY_INSERT [dbo].[incident_report] ON 

INSERT [dbo].[incident_report] ([id], [facility], [incident_location], [reference_number], [type_of_report], [date_incident], [title], [incident_type], [actual_loss_severity], [potential_loss_severity], [probability], [factual_information], [cost_estimate], [immediate_action], [prepared_by], [ack_supervisor], [prepare_date], [ack_date], [superintendent], [loss_control], [field_manager], [doms], [superintendent_date], [loss_date], [field_manager_date], [doms_date], [investigation], [investigation_req], [id_iir]) VALUES (1, N'WW', N'Rel', N'IR-1234', 1, CAST(0x0000A14C008B86C0 AS DateTime), N'Patah kaki', N'Injury / Illness', 1, 2, 2, N'Factual', N'20000', N'Bukan', N'yosef3', N'yosef', CAST(0xA7360B00 AS Date), CAST(0xA7360B00 AS Date), N'yosef2', N'yosef3', N'yosef', N'yosef', CAST(0xA7360B00 AS Date), CAST(0xA7360B00 AS Date), CAST(0xA7360B00 AS Date), CAST(0xA7360B00 AS Date), 1, N'AdminIIR', NULL)
SET IDENTITY_INSERT [dbo].[incident_report] OFF
SET IDENTITY_INSERT [dbo].[long_term_actions] ON 

INSERT [dbo].[long_term_actions] ([id], [action], [description]) VALUES (1, N'Replace battery', N'Replace All battery')
INSERT [dbo].[long_term_actions] ([id], [action], [description]) VALUES (2, N'Change Bearing Specifications', N'Change Bearing Specifications')
INSERT [dbo].[long_term_actions] ([id], [action], [description]) VALUES (3, N'Change Mechanical Seal Specifications', N'Change Mechanical Seal Specifications')
INSERT [dbo].[long_term_actions] ([id], [action], [description]) VALUES (4, N'Redesign Oil System', N'Redesign Oil System')
INSERT [dbo].[long_term_actions] ([id], [action], [description]) VALUES (6, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[long_term_actions] OFF
SET IDENTITY_INSERT [dbo].[part_unit_event] ON 

INSERT [dbo].[part_unit_event] ([id], [id_equipment_part], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (18, 36, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[part_unit_event] ([id], [id_equipment_part], [datetime_stop], [datetime_ops], [durasi], [downtime], [failure_mode], [failure_cause], [failure_effect], [secondary_effect], [failure_severity], [failure_clss], [immediate_act], [long_term_act], [engineer], [financial_cost], [repair_cost], [event_description], [type], [status]) VALUES (19, 37, NULL, CAST(0x000086B400000000 AS DateTime), 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[part_unit_event] OFF
SET IDENTITY_INSERT [dbo].[parts] ON 

INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (2, N'15-K-102A-M/00', N'15-K-102A-M/00', 0, N'', 0)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (3, N'15-K-103A-M/00', N'15-K-103A-M/00', 100, N'Trisakti', 0)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (4, N'15-K-104A-M/00', N'15-K-104A-M/00', 0, NULL, 0)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (5, N'15-K-106A-M/00', N'15-K-106A-M/00', 0, NULL, 0)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (7, N'15-V-105-P', N'Part 1', NULL, N'', 0)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (8, N'P-112A', N'NaOH TRANSFER PUMPS (2 x 100%)', NULL, N'', 0)
INSERT [dbo].[parts] ([id], [tag_number], [nama], [assurance_level], [vendor], [warranty]) VALUES (9, N'M-117', N'MOTOR FOR NAOH TRANSFER PUMP (A)', NULL, N'', 0)
SET IDENTITY_INSERT [dbo].[parts] OFF
SET IDENTITY_INSERT [dbo].[pir] ON 

INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status]) VALUES (1, N'PIR/122012/00001', N'Save From initiator', CAST(0x8D360B00 AS Date), N'yosef2', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, N'1. Update applicable legal requirements for WW business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'deskripsi', N'FROM INITIATOR')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status]) VALUES (2, N'PIR/122012/00002', N'tes', CAST(0x8D360B00 AS Date), N'yosef8', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'INITIATOR')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status]) VALUES (3, N'PIR/122012/00003', N'tes save', CAST(0x8D360B00 AS Date), N'yosef2', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x80360B00 AS Date), N'tes save', NULL, NULL, N'deskripsi', N'FROM PROCESS')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status]) VALUES (4, N'PIR/122012/00004', N'tes', CAST(0x8D360B00 AS Date), N'yosef2', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x80360B00 AS Date), N'tes verified', NULL, NULL, N'deskripsi', N'VERIFIED')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status]) VALUES (5, N'PIR/122012/00005', N'tes', CAST(0x8D360B00 AS Date), N'yosef8', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'FROM INITIATOR')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status]) VALUES (6, N'PIR/122012/00006', N'tes', CAST(0x8D360B00 AS Date), N'yosef2', N'Title', N'tes', N'tes', CAST(0x8D360B00 AS Date), CAST(0x8D360B00 AS Date), CAST(0xFA370B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'FROM INITIATOR')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status]) VALUES (17, N'PIR/122012/00007', N'tes initiator from rca', CAST(0x80360B00 AS Date), N'yosef2', N'Coba lagi', N'tes', N'tes', CAST(0x80360B00 AS Date), CAST(0x80360B00 AS Date), CAST(0xC8360B00 AS Date), N'Error page process', NULL, CAST(0xAA360B00 AS Date), N'coding', CAST(0xAA360B00 AS Date), N'yosef3', CAST(0xA9360B00 AS Date), N'tes', N'Y', N'N', CAST(0xAA360B00 AS Date), CAST(0x9B360B00 AS Date), N'no error', CAST(0x48360B00 AS Date), CAST(0x80360B00 AS Date), N'Verified', NULL, NULL, N'deskripsi', N'VERIFIED')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status]) VALUES (20, N'PIR/122012/00008', N'Crete Pir From RCA', CAST(0x80360B00 AS Date), N'yosef2', N'Analisis maslah guru', N'A123', N'A234', CAST(0x80360B00 AS Date), CAST(0x80360B00 AS Date), CAST(0xA4360B00 AS Date), N'Masalah ketergantungan tenaga kerja', NULL, CAST(0x81360B00 AS Date), N'Mengurangi gaji', CAST(0x80360B00 AS Date), N'yosef3', CAST(0xA4360B00 AS Date), N'Teti', N'Y', N'N', CAST(0xA3360B00 AS Date), CAST(0xA2360B00 AS Date), N'Tidak terjadi ketergantungan', CAST(0xA2360B00 AS Date), CAST(0x80360B00 AS Date), N'Verified', NULL, NULL, N'', N'VERIFIED')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status]) VALUES (24, N'PIR/122012/00009', N'tes log', CAST(0x81360B00 AS Date), N'yosef2', N'', N'', N'', CAST(0x81360B00 AS Date), CAST(0x81360B00 AS Date), CAST(0x81360B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'FROM INITIATOR')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status]) VALUES (25, N'PIR/122012/000010', N'tes log pir', CAST(0x81360B00 AS Date), N'yosef2', N'log pir', N'', N'', CAST(0x81360B00 AS Date), CAST(0x81360B00 AS Date), CAST(0x81360B00 AS Date), N'coba logg', NULL, CAST(0x81360B00 AS Date), N'coba', CAST(0x81360B00 AS Date), N'yosef3', CAST(0x81360B00 AS Date), N'', N'', N'', CAST(0x81360B00 AS Date), CAST(0x81360B00 AS Date), N'coba log', CAST(0x81360B00 AS Date), CAST(0x81360B00 AS Date), N'okay', NULL, NULL, N'improvement ga bener', N'VERIFIED')
INSERT [dbo].[pir] ([id], [no], [improvement_request], [date_rise], [initiate_by], [title], [reference], [procedure_reference], [initiator_sign_date], [kpbo_sign_date_init], [target_completion_init], [desc_prob], [investigator], [investigator_date], [improvement_plant], [start_implement_date], [process_owner], [target_completion_process], [action_by], [require_dokument], [hira_require], [kpbo_sign_date_process], [review_date], [result_of_action], [kpbo_sign_date_process_result], [sign_date_verified], [verified_desc], [initiator_verified_date], [review_mgmt_verified_date], [description], [status]) VALUES (26, N'PIR/122012/00011', N'new', CAST(0x81360B00 AS Date), N'yosef2', N'', N'', N'', CAST(0x81360B00 AS Date), CAST(0x81360B00 AS Date), CAST(0x81360B00 AS Date), N'tes', NULL, CAST(0x81360B00 AS Date), N'tes', CAST(0x81360B00 AS Date), N'yosef3', CAST(0x81360B00 AS Date), N'', N'', N'', CAST(0x81360B00 AS Date), CAST(0x81360B00 AS Date), N'', CAST(0x81360B00 AS Date), CAST(0x81360B00 AS Date), N'sukses', NULL, NULL, N'dah betul', N'VERIFIED')
SET IDENTITY_INSERT [dbo].[pir] OFF
SET IDENTITY_INSERT [dbo].[pir_log] ON 

INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (1, 24, CAST(0x0000A126010596F0 AS DateTime), N'yosef2', N'FROM INITIATOR', N'')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (2, 25, CAST(0x0000A1260107A5EC AS DateTime), N'yosef2', N'INITIATOR', N'')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (3, 25, CAST(0x0000A1260107AD10 AS DateTime), N'yosef2', N'FROM INITIATOR', N'')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (4, 25, CAST(0x0000A1260107DCA1 AS DateTime), N'yosef3', N'FROM PROCESS', N'')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (5, 25, CAST(0x0000A1260108AA77 AS DateTime), N'yosef2', N'FROM INITIATOR', N'improvement ga bener')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (6, 25, CAST(0x0000A1260108C72D AS DateTime), N'yosef3', N'FROM PROCESS', N'improvement ga bener')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (7, 25, CAST(0x0000A1260108F25A AS DateTime), N'yosef2', N'VERIFIED', N'improvement ga bener')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (8, 26, CAST(0x0000A126010C3D09 AS DateTime), N'yosef2', N'INITIATOR', N'')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (9, 26, CAST(0x0000A12601531D89 AS DateTime), N'yosef2', N'SEND TO PROCESS', N'')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (10, 26, CAST(0x0000A126015449E6 AS DateTime), N'yosef3', N'SEND TO INITIATOR', N'')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (11, 26, CAST(0x0000A12601545B91 AS DateTime), N'yosef2', N'SEND TO PROCESS', N'salah')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (12, 26, CAST(0x0000A12601546EF3 AS DateTime), N'yosef3', N'SEND TO INITIATOR', N'dah betul')
INSERT [dbo].[pir_log] ([id], [id_pir], [date], [username], [process], [description]) VALUES (13, 26, CAST(0x0000A1260154802B AS DateTime), N'yosef2', N'VERIFIED', N'dah betul')
SET IDENTITY_INSERT [dbo].[pir_log] OFF
SET IDENTITY_INSERT [dbo].[plants] ON 

INSERT [dbo].[plants] ([id], [nama]) VALUES (1, N'Wayang Windu')
SET IDENTITY_INSERT [dbo].[plants] OFF
SET IDENTITY_INSERT [dbo].[rca] ON 

INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (1, N'tes', N'tes', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (63, N'Training', N'Menganalisis penyebab dibatalkannya training', 1, N'2500', 1, 1, 1, NULL, NULL, N'', NULL, NULL, N'Training', N'Employee', NULL, N'Penyelenggaraan training lebih profesional', N'', 94, CAST(0x0000A10400000000 AS DateTime), CAST(0x0000A10B00000000 AS DateTime), 0, N'analysis63.xml', NULL, 1, 20, 1, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (64, N'tes', N'tes', 1, N'0', 1, 1, 1, NULL, NULL, N'', 23, 2, N'', N'', NULL, N'tes', N'tes', 79, CAST(0x0000A12500000000 AS DateTime), CAST(0x0000A13600000000 AS DateTime), 1, N'analysis64.xml', N'C-8-01B', 0, NULL, 1, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (71, N'Analisis Fracas', N'Analisis', 3, N'20000', 1, 1, 1, NULL, NULL, N'W-123', 29, 1, N'', N'', NULL, N'tes', N'tes', 96, CAST(0x0000A15000000000 AS DateTime), CAST(0x0000A17300317040 AS DateTime), 0, N'analysis71.xml', N'0-CFV-003A', 1, NULL, 0, 2, 1)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (73, N'Analisis Fracas', N'Analisis', 3, N'20000', 1, 1, 1, NULL, NULL, N'W-123', 29, 1, N'', N'', NULL, N'tes', N'tes', 96, CAST(0x0000A15000000000 AS DateTime), CAST(0x0000A17300317040 AS DateTime), 1, NULL, N'0-CFV-003A', 1, NULL, 0, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (1073, N'Analisis Fracas', N'Analisis', 3, N'20000', 1, 1, 1, NULL, NULL, N'W-123', 29, 1, N'', N'', NULL, N'tes', N'tes', 96, CAST(0x0000A15000000000 AS DateTime), CAST(0x0000A17300317040 AS DateTime), 1, N'analysis1073.xml', N'0-CFV-003A', 1, NULL, 0, 2, 1)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (2073, N'lalalal', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', 29, 1, N'', N'', NULL, N'', N'', 2100, CAST(0x0000A16B00000000 AS DateTime), NULL, 0, N'analysis2073.xml', N'0-CFV-003A', 1, NULL, 0, 1, 766)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id]) VALUES (3073, N'asda', N'qweqer', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 3100, CAST(0x0000A16B00000000 AS DateTime), NULL, 0, NULL, NULL, 1, NULL, 0, 2, 1)
SET IDENTITY_INSERT [dbo].[rca] OFF
SET IDENTITY_INSERT [dbo].[rca_analisys_type] ON 

INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (1, N'Administrative')
INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (2, N'Environmental')
INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (3, N'Mechanical')
INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (4, N'Operational')
INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (5, N'Quality')
INSERT [dbo].[rca_analisys_type] ([id], [name]) VALUES (6, N'Risk')
SET IDENTITY_INSERT [dbo].[rca_analisys_type] OFF
SET IDENTITY_INSERT [dbo].[rca_building] ON 

INSERT [dbo].[rca_building] ([id], [id_department], [name]) VALUES (1, 1, N'building')
SET IDENTITY_INSERT [dbo].[rca_building] OFF
SET IDENTITY_INSERT [dbo].[rca_csf] ON 

INSERT [dbo].[rca_csf] ([id], [name]) VALUES (1, N'Kejadian tidak terulang kembali')
SET IDENTITY_INSERT [dbo].[rca_csf] OFF
SET IDENTITY_INSERT [dbo].[rca_csf_conector] ON 

INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (43, NULL, 1)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (44, NULL, 3)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (46, 64, 1)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (49, 63, 1)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (50, 71, 1)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (52, 73, 1)
INSERT [dbo].[rca_csf_conector] ([id], [id_rca], [id_csf]) VALUES (1052, 1073, 1)
SET IDENTITY_INSERT [dbo].[rca_csf_conector] OFF
SET IDENTITY_INSERT [dbo].[rca_department] ON 

INSERT [dbo].[rca_department] ([id], [id_division], [name]) VALUES (1, 1, N'Training Centre')
SET IDENTITY_INSERT [dbo].[rca_department] OFF
SET IDENTITY_INSERT [dbo].[rca_desc] ON 

INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (4, 63, N'')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (5, 63, N'')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (6, 63, N'')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (7, 64, N'tes verifikasi')
INSERT [dbo].[rca_desc] ([id], [id_rca], [description]) VALUES (8, 71, N'testing')
SET IDENTITY_INSERT [dbo].[rca_desc] OFF
SET IDENTITY_INSERT [dbo].[rca_division] ON 

INSERT [dbo].[rca_division] ([id], [id_facility], [name]) VALUES (1, 1, N'Training Centre')
SET IDENTITY_INSERT [dbo].[rca_division] OFF
SET IDENTITY_INSERT [dbo].[rca_facility] ON 

INSERT [dbo].[rca_facility] ([id], [name]) VALUES (1, N'Wayang Windu')
SET IDENTITY_INSERT [dbo].[rca_facility] OFF
SET IDENTITY_INSERT [dbo].[rca_floor] ON 

INSERT [dbo].[rca_floor] ([id], [id_building], [name]) VALUES (1, 1, N'floor1')
SET IDENTITY_INSERT [dbo].[rca_floor] OFF
SET IDENTITY_INSERT [dbo].[rca_implementation] ON 

INSERT [dbo].[rca_implementation] ([id], [next_action], [pic], [due_date], [is_complete], [id_rca], [complete_date], [dampak], [usaha]) VALUES (2, N'tes', N'aan', CAST(0x87360B00 AS Date), 1, 64, CAST(0x77360B00 AS Date), NULL, NULL)
INSERT [dbo].[rca_implementation] ([id], [next_action], [pic], [due_date], [is_complete], [id_rca], [complete_date], [dampak], [usaha]) VALUES (4, N'tes implementasi', N'yosef', CAST(0x8A360B00 AS Date), 0, 64, NULL, NULL, NULL)
INSERT [dbo].[rca_implementation] ([id], [next_action], [pic], [due_date], [is_complete], [id_rca], [complete_date], [dampak], [usaha]) VALUES (6, N'tes', N'rcaview', CAST(0x90360B00 AS Date), 0, 63, NULL, NULL, NULL)
INSERT [dbo].[rca_implementation] ([id], [next_action], [pic], [due_date], [is_complete], [id_rca], [complete_date], [dampak], [usaha]) VALUES (7, N'asdf', N'aan', CAST(0xBF360B00 AS Date), 0, 2073, NULL, 1, 1)
INSERT [dbo].[rca_implementation] ([id], [next_action], [pic], [due_date], [is_complete], [id_rca], [complete_date], [dampak], [usaha]) VALUES (14, N'qwe', N'aan', CAST(0xCB360B00 AS Date), 0, 2073, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[rca_implementation] OFF
SET IDENTITY_INSERT [dbo].[rca_team_connector] ON 

INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (77, N'yosef3', 64)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (78, N'rcaview', 64)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (79, N'yosef', 64)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (92, N'yosef', 63)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (93, N'yosef3', 63)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (94, N'yosef2', 63)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (95, N'yosef', 71)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (96, N'yosef2', 71)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (99, N'yosef', 73)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (100, N'yosef2', 73)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (1099, N'yosef', 1073)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (1100, N'yosef2', 1073)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (2099, N'septu', 2073)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (2100, N'yosef2', 2073)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (3099, N'septu', 3073)
INSERT [dbo].[rca_team_connector] ([id], [id_user], [id_rca]) VALUES (3100, N'yosef2', 3073)
SET IDENTITY_INSERT [dbo].[rca_team_connector] OFF
SET IDENTITY_INSERT [dbo].[secondary_effects] ON 

INSERT [dbo].[secondary_effects] ([id], [title], [description]) VALUES (1, N'Secondary Effect 1', N'Effect sekunder 1')
INSERT [dbo].[secondary_effects] ([id], [title], [description]) VALUES (3, N'Fails to continue running', N'Fails to continue running')
SET IDENTITY_INSERT [dbo].[secondary_effects] OFF
SET IDENTITY_INSERT [dbo].[systems] ON 

INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (34, 43, N'BP', N'BP', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (35, 43, N'UT', N'UT', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (36, 43, N'EL', N'EL', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (37, 44, N'BL', N'BL', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (38, 44, N'CL', N'CL', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (39, 44, N'SL', N'SL', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (40, 44, N'SB', N'SB', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (41, 44, N'SS', N'SS', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
INSERT [dbo].[systems] ([id], [id_unit], [nama], [kode], [funct_description], [failure_scenario], [primary_impact], [secondary_impact], [cons_econ], [cons_hs], [cons_env], [cons_total], [likelihood], [crit_code], [ram_crit], [exist_crit], [h], [e], [econ], [ram_crit_1], [prob], [ram_crit_2], [ram_crit_3]) VALUES (42, 44, N'WL', N'WL', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[systems] OFF
SET IDENTITY_INSERT [dbo].[tag_types] ON 

INSERT [dbo].[tag_types] ([id], [title]) VALUES (22, N'BLOWER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (23, N'VALVE, SLIDE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (24, N'REACTOR')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (25, N'COLUMN')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (26, N'COMPRESSOR, CENTRIFUGAL')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (27, N'DRUM')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (28, N'COOLER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (29, N'PUMP, CENTRIFUGAL')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (30, N'HEAT EXCHANGER, SHELL & TUBE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (31, N'VESSEL')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (32, N'TANK')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (33, N'COMPRESSOR')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (34, N'HEATER,ELECTRIC')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (35, N'FILTER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (36, N'TURBINE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (37, N'CONTROLLER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (38, N'FAN')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (39, N'BURNER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (40, N'ELEMENT, FLOW')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (41, N'PUMP, SUBMERSIBLE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (42, N'PUMP, ROTARY GEAR')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (43, N'COMPRESSOR, RECIPROCATING')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (44, N'COMPRESSOR, SCREW')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (45, N'FURNACE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (46, N'VALVE')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (47, N'PIPING')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (48, N'MIXER')
INSERT [dbo].[tag_types] ([id], [title]) VALUES (49, N'MOTOR')
SET IDENTITY_INSERT [dbo].[tag_types] OFF
SET IDENTITY_INSERT [dbo].[units] ON 

INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (43, 55, N'CO', 0, 0)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (44, 55, N'SF', 0, 0)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (45, 55, N'U1', 0, 0)
INSERT [dbo].[units] ([id], [id_foc], [nama], [ma], [masd]) VALUES (46, 55, N'U2', 0, 0)
SET IDENTITY_INSERT [dbo].[units] OFF
SET IDENTITY_INSERT [dbo].[user_per_role] ON 

INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (1, N'aan', 0)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (5, N'aan2', 1)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (6, N'aan2', 6)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (7, N'rcaview', 5)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (8, N'yosef', 2)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (9, N'yosef', 5)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (10, N'yosef2', 3)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (11, N'yosef3', 4)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (12, N'AdminIIR', 1)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (13, N'AdminIIR', 7)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (14, N'septu', 1)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (15, N'septu', 2)
INSERT [dbo].[user_per_role] ([id], [username], [role]) VALUES (16, N'septu', 6)
SET IDENTITY_INSERT [dbo].[user_per_role] OFF
SET IDENTITY_INSERT [dbo].[user_role] ON 

INSERT [dbo].[user_role] ([id], [role]) VALUES (0, N'admin data master')
INSERT [dbo].[user_role] ([id], [role]) VALUES (1, N'admin input')
INSERT [dbo].[user_role] ([id], [role]) VALUES (2, N'rca')
INSERT [dbo].[user_role] ([id], [role]) VALUES (3, N'pir initiator')
INSERT [dbo].[user_role] ([id], [role]) VALUES (4, N'pir process admin')
INSERT [dbo].[user_role] ([id], [role]) VALUES (5, N'rca view')
SET IDENTITY_INSERT [dbo].[user_role] OFF
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'aan', N'aan', N'4607ed4bd8140e9664875f907f48ae14', N'aan', CAST(0x00009FB300000000 AS DateTime), 0)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'aan2', N'aan2', N'4607ed4bd8140e9664875f907f48ae14', N'aan', CAST(0x00009FB300000000 AS DateTime), 1)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'AdminIIR', N'admin', N'4607ed4bd8140e9664875f907f48ae14', N'admin IIR', NULL, NULL)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'rcaview', N'RCA View', N'4607ed4bd8140e9664875f907f48ae14', N'rca view', CAST(0x0000A0F900000000 AS DateTime), 5)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'septu', N'Septu Jamasoka', N'4607ed4bd8140e9664875f907f48ae14', N'sep', NULL, NULL)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'yosef', N'Yosef Sukianto', N'4607ed4bd8140e9664875f907f48ae14', N'rca', CAST(0x0000A0ED00000000 AS DateTime), 2)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'yosef2', N'Yosef Sukianto', N'4607ed4bd8140e9664875f907f48ae14', N'pir initiator', CAST(0x0000A0ED00000000 AS DateTime), 3)
INSERT [dbo].[users] ([username], [fullname], [password], [jabatan], [create_date], [rm_role]) VALUES (N'yosef3', N'Yosef Sukianto', N'4607ed4bd8140e9664875f907f48ae14', N'pir process admin', CAST(0x0000A0ED00000000 AS DateTime), 4)
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_durasi]  DEFAULT ((0)) FOR [durasi]
GO
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_downtime]  DEFAULT ((0)) FOR [downtime]
GO
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_est_cost]  DEFAULT ((0)) FOR [financial_cost]
GO
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_actual_cost]  DEFAULT ((0)) FOR [repair_cost]
GO
ALTER TABLE [dbo].[equipment_event] ADD  CONSTRAINT [DF_equipment_event_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[equipment_paf] ADD  CONSTRAINT [DF_equipment_paf_avail_calculated]  DEFAULT ((100)) FOR [avail_calculated]
GO
ALTER TABLE [dbo].[equipment_paf] ADD  CONSTRAINT [DF_equipment_paf_avail_measured]  DEFAULT ((100)) FOR [avail_measured]
GO
ALTER TABLE [dbo].[equipment_part] ADD  CONSTRAINT [DF_equipment_part_mtbf]  DEFAULT ((0)) FOR [mtbf]
GO
ALTER TABLE [dbo].[equipment_part] ADD  CONSTRAINT [DF_equipment_part_mttr]  DEFAULT ((0)) FOR [mttr]
GO
ALTER TABLE [dbo].[equipment_part] ADD  CONSTRAINT [DF_equipment_part_lead_time]  DEFAULT ((0)) FOR [lead_time]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_operation]  DEFAULT ((100)) FOR [operation]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_boc]  DEFAULT ((100)) FOR [boc]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_bec]  DEFAULT ((100)) FOR [bec]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_monitoring]  DEFAULT ((100)) FOR [monitoring]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_performance]  DEFAULT ((100)) FOR [performance]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_cm_program]  DEFAULT ((100)) FOR [cm_program]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_maintenance]  DEFAULT ((100)) FOR [maintenance]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_pm_program]  DEFAULT ((100)) FOR [pm_program]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_overhaul]  DEFAULT ((100)) FOR [overhaul]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_spares]  DEFAULT ((100)) FOR [spares]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_lifecycle_spare]  DEFAULT ((100)) FOR [lifecycle_spare]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_main_act_spare]  DEFAULT ((100)) FOR [main_act_spare]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_safe_operation]  DEFAULT ((100)) FOR [safe_operation]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_safeguard]  DEFAULT ((100)) FOR [safeguard]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_accesories]  DEFAULT ((100)) FOR [accesories]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_score]  DEFAULT ((100)) FOR [score]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_capacity]  DEFAULT ((100)) FOR [capacity]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_quality]  DEFAULT ((100)) FOR [quality]
GO
ALTER TABLE [dbo].[equipment_readiness_nav] ADD  CONSTRAINT [DF_equipment_readiness_nav_sertifikasi]  DEFAULT ((100)) FOR [sertifikasi]
GO
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_tetha]  DEFAULT ((0)) FOR [tetha]
GO
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_beta]  DEFAULT ((0)) FOR [beta]
GO
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_mtbf]  DEFAULT ((0)) FOR [mtbf]
GO
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_mttr]  DEFAULT ((0)) FOR [mttr]
GO
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_mdt]  DEFAULT ((0)) FOR [mdt]
GO
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_econ]  DEFAULT ((0)) FOR [econ]
GO
ALTER TABLE [dbo].[equipments] ADD  CONSTRAINT [DF_rm_equipment_status_read_nav]  DEFAULT ((0)) FOR [status_read_nav]
GO
ALTER TABLE [dbo].[foc_op_avail] ADD  CONSTRAINT [DF_foc_op_avail_op_avail]  DEFAULT ((100)) FOR [op_avail]
GO
ALTER TABLE [dbo].[foc_op_avail] ADD  CONSTRAINT [DF_foc_op_avail_selisih]  DEFAULT ((0)) FOR [selisih]
GO
ALTER TABLE [dbo].[foc_paf] ADD  CONSTRAINT [DF_foc_paf_measured_paf]  DEFAULT ((100)) FOR [measured_paf]
GO
ALTER TABLE [dbo].[foc_paf] ADD  CONSTRAINT [DF_foc_paf_calculated_paf]  DEFAULT ((100)) FOR [calculated_paf]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_tadd_1]  DEFAULT ((0)) FOR [tadd]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_tadt_hours_1]  DEFAULT ((0)) FOR [tadt_hours]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_ta_interval_1]  DEFAULT ((0)) FOR [ta_interval]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_ntamdd_1]  DEFAULT ((0)) FOR [ntamdd]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_study_year_ntamd_1]  DEFAULT ((0)) FOR [study_year_ntamd]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_prior_year_ntamd_1]  DEFAULT ((0)) FOR [prior_year_ntamd]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_ntamsd_1]  DEFAULT ((0)) FOR [ntamsd]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_study_year_ms_1]  DEFAULT ((0)) FOR [study_year_ms]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_prior_year_ms_1]  DEFAULT ((0)) FOR [prior_year_ms]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_days_in_study_year_1]  DEFAULT ((0)) FOR [days_in_study_year]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_last_update_1]  DEFAULT (((2010)-(1))-(1)) FOR [last_update]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_category]  DEFAULT ((0)) FOR [category]
GO
ALTER TABLE [dbo].[ma] ADD  CONSTRAINT [DF_masd_type]  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_durasi_1]  DEFAULT ((0)) FOR [durasi]
GO
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_downtime_1]  DEFAULT ((0)) FOR [downtime]
GO
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_financial_cost]  DEFAULT ((0)) FOR [financial_cost]
GO
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_repair_cost]  DEFAULT ((0)) FOR [repair_cost]
GO
ALTER TABLE [dbo].[part_unit_event] ADD  CONSTRAINT [DF_part_unit_event_status_1]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[parts] ADD  CONSTRAINT [DF_rm_part_unit_assurance_level]  DEFAULT ((0)) FOR [assurance_level]
GO
ALTER TABLE [dbo].[system_paf] ADD  CONSTRAINT [DF_system_paf_measured_paf]  DEFAULT ((100)) FOR [measured_paf]
GO
ALTER TABLE [dbo].[system_paf] ADD  CONSTRAINT [DF_system_paf_calculated_paf]  DEFAULT ((100)) FOR [calculated_paf]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_econ]  DEFAULT ((0)) FOR [cons_econ]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_hs]  DEFAULT ((0)) FOR [cons_hs]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_env]  DEFAULT ((0)) FOR [cons_env]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_cons_total]  DEFAULT ((0)) FOR [cons_total]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_likelihood]  DEFAULT ((0)) FOR [likelihood]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_h]  DEFAULT ((0)) FOR [h]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_e]  DEFAULT ((0)) FOR [e]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_econ]  DEFAULT ((0)) FOR [econ]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_ram_crit_1]  DEFAULT ((0)) FOR [ram_crit_1]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_prob]  DEFAULT ((0)) FOR [prob]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_ram_crit_2]  DEFAULT ((0)) FOR [ram_crit_2]
GO
ALTER TABLE [dbo].[systems] ADD  CONSTRAINT [DF_rm_system_ram_crit_3]  DEFAULT ((0)) FOR [ram_crit_3]
GO
ALTER TABLE [dbo].[unit_paf] ADD  CONSTRAINT [DF_unit_paf_measured_paf]  DEFAULT ((100)) FOR [measured_paf]
GO
ALTER TABLE [dbo].[unit_paf] ADD  CONSTRAINT [DF_unit_paf_calculated_paf]  DEFAULT ((100)) FOR [calculated_paf]
GO
ALTER TABLE [dbo].[units] ADD  CONSTRAINT [DF_rm_unit_ma]  DEFAULT ((0)) FOR [ma]
GO
ALTER TABLE [dbo].[units] ADD  CONSTRAINT [DF_rm_unit_masd]  DEFAULT ((0)) FOR [masd]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF__Users__CreateDat__66603565]  DEFAULT (CONVERT([datetime],CONVERT([varchar],getdate(),(1)),(1))) FOR [create_date]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_Users_rm_role]  DEFAULT ((0)) FOR [rm_role]
GO
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
ALTER TABLE [dbo].[equipment_event]  WITH CHECK ADD  CONSTRAINT [FK_equipment_event_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_event] CHECK CONSTRAINT [FK_equipment_event_equipments]
GO
ALTER TABLE [dbo].[equipment_groups]  WITH CHECK ADD  CONSTRAINT [FK_rm_equipment_group_rm_system] FOREIGN KEY([id_system])
REFERENCES [dbo].[systems] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_groups] CHECK CONSTRAINT [FK_rm_equipment_group_rm_system]
GO
ALTER TABLE [dbo].[equipment_paf]  WITH CHECK ADD  CONSTRAINT [FK_equipment_paf_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_paf] CHECK CONSTRAINT [FK_equipment_paf_equipments]
GO
ALTER TABLE [dbo].[equipment_part]  WITH CHECK ADD  CONSTRAINT [FK_equipment_part_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_part] CHECK CONSTRAINT [FK_equipment_part_equipments]
GO
ALTER TABLE [dbo].[equipment_part]  WITH CHECK ADD  CONSTRAINT [FK_equipment_part_parts] FOREIGN KEY([id_parts])
REFERENCES [dbo].[parts] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_part] CHECK CONSTRAINT [FK_equipment_part_parts]
GO
ALTER TABLE [dbo].[equipment_readiness_nav]  WITH CHECK ADD  CONSTRAINT [FK_equipment_readiness_nav_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_readiness_nav] CHECK CONSTRAINT [FK_equipment_readiness_nav_equipments]
GO
ALTER TABLE [dbo].[equipments]  WITH CHECK ADD  CONSTRAINT [FK_equipments_disciplines] FOREIGN KEY([id_discipline])
REFERENCES [dbo].[disciplines] ([id])
GO
ALTER TABLE [dbo].[equipments] CHECK CONSTRAINT [FK_equipments_disciplines]
GO
ALTER TABLE [dbo].[equipments]  WITH CHECK ADD  CONSTRAINT [FK_equipments_equipment_groups] FOREIGN KEY([id_equipment_group])
REFERENCES [dbo].[equipment_groups] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipments] CHECK CONSTRAINT [FK_equipments_equipment_groups]
GO
ALTER TABLE [dbo].[equipments]  WITH CHECK ADD  CONSTRAINT [FK_equipments_tag_types] FOREIGN KEY([id_tag_type])
REFERENCES [dbo].[tag_types] ([id])
GO
ALTER TABLE [dbo].[equipments] CHECK CONSTRAINT [FK_equipments_tag_types]
GO
ALTER TABLE [dbo].[failure_modes]  WITH CHECK ADD  CONSTRAINT [FK_failure_modes_tag_types] FOREIGN KEY([id_tag_type])
REFERENCES [dbo].[tag_types] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[failure_modes] CHECK CONSTRAINT [FK_failure_modes_tag_types]
GO
ALTER TABLE [dbo].[foc_op_avail]  WITH CHECK ADD  CONSTRAINT [FK_foc_op_avail_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[foc_op_avail] CHECK CONSTRAINT [FK_foc_op_avail_focs]
GO
ALTER TABLE [dbo].[foc_paf]  WITH CHECK ADD  CONSTRAINT [FK_foc_paf_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[foc_paf] CHECK CONSTRAINT [FK_foc_paf_focs]
GO
ALTER TABLE [dbo].[foc_target_paf]  WITH CHECK ADD  CONSTRAINT [FK_foc_target_paf_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[foc_target_paf] CHECK CONSTRAINT [FK_foc_target_paf_focs]
GO
ALTER TABLE [dbo].[focs]  WITH CHECK ADD  CONSTRAINT [FK_focs_plants] FOREIGN KEY([plant_id])
REFERENCES [dbo].[plants] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[focs] CHECK CONSTRAINT [FK_focs_plants]
GO
ALTER TABLE [dbo].[iir_recommendations]  WITH CHECK ADD  CONSTRAINT [FK_iir_recommendations_investigation_report] FOREIGN KEY([id_iir])
REFERENCES [dbo].[investigation_report] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[iir_recommendations] CHECK CONSTRAINT [FK_iir_recommendations_investigation_report]
GO
ALTER TABLE [dbo].[iir_recommendations]  WITH CHECK ADD  CONSTRAINT [FK_iir_recommendations_pir] FOREIGN KEY([pir_number])
REFERENCES [dbo].[pir] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[iir_recommendations] CHECK CONSTRAINT [FK_iir_recommendations_pir]
GO
ALTER TABLE [dbo].[ma]  WITH CHECK ADD  CONSTRAINT [FK_masd_focs] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ma] CHECK CONSTRAINT [FK_masd_focs]
GO
ALTER TABLE [dbo].[part_unit_event]  WITH CHECK ADD  CONSTRAINT [FK_part_unit_event_equipment_part] FOREIGN KEY([id_equipment_part])
REFERENCES [dbo].[equipment_part] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[part_unit_event] CHECK CONSTRAINT [FK_part_unit_event_equipment_part]
GO
ALTER TABLE [dbo].[pir_log]  WITH CHECK ADD  CONSTRAINT [FK_pir_log_pir] FOREIGN KEY([id_pir])
REFERENCES [dbo].[pir] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[pir_log] CHECK CONSTRAINT [FK_pir_log_pir]
GO
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_pir] FOREIGN KEY([id_pir])
REFERENCES [dbo].[pir] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_pir]
GO
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_analisys_type] FOREIGN KEY([id_type])
REFERENCES [dbo].[rca_analisys_type] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_analisys_type]
GO
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_building] FOREIGN KEY([id_building])
REFERENCES [dbo].[rca_building] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_building]
GO
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_department] FOREIGN KEY([id_department])
REFERENCES [dbo].[rca_department] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_department]
GO
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_facility] FOREIGN KEY([id_facility])
REFERENCES [dbo].[rca_facility] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_facility]
GO
ALTER TABLE [dbo].[rca]  WITH CHECK ADD  CONSTRAINT [FK_rca_rca_floor] FOREIGN KEY([id_floor])
REFERENCES [dbo].[rca_floor] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca] CHECK CONSTRAINT [FK_rca_rca_floor]
GO
ALTER TABLE [dbo].[rca_csf_conector]  WITH CHECK ADD  CONSTRAINT [FK_rca_csf_conector_rca] FOREIGN KEY([id_rca])
REFERENCES [dbo].[rca] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca_csf_conector] CHECK CONSTRAINT [FK_rca_csf_conector_rca]
GO
ALTER TABLE [dbo].[rca_division]  WITH CHECK ADD  CONSTRAINT [FK_rca_division_rca_facility] FOREIGN KEY([id_facility])
REFERENCES [dbo].[rca_facility] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca_division] CHECK CONSTRAINT [FK_rca_division_rca_facility]
GO
ALTER TABLE [dbo].[rca_implementation]  WITH CHECK ADD  CONSTRAINT [FK_rca_implementation_users] FOREIGN KEY([pic])
REFERENCES [dbo].[users] ([username])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca_implementation] CHECK CONSTRAINT [FK_rca_implementation_users]
GO
ALTER TABLE [dbo].[rca_team_connector]  WITH CHECK ADD  CONSTRAINT [FK_rca_team_connector_rca] FOREIGN KEY([id_rca])
REFERENCES [dbo].[rca] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[rca_team_connector] CHECK CONSTRAINT [FK_rca_team_connector_rca]
GO
ALTER TABLE [dbo].[system_paf]  WITH CHECK ADD  CONSTRAINT [FK_system_paf_systems] FOREIGN KEY([id_system])
REFERENCES [dbo].[systems] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[system_paf] CHECK CONSTRAINT [FK_system_paf_systems]
GO
ALTER TABLE [dbo].[systems]  WITH CHECK ADD  CONSTRAINT [FK_rm_system_rm_unit] FOREIGN KEY([id_unit])
REFERENCES [dbo].[units] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[systems] CHECK CONSTRAINT [FK_rm_system_rm_unit]
GO
ALTER TABLE [dbo].[unit_paf]  WITH CHECK ADD  CONSTRAINT [FK_unit_paf_units] FOREIGN KEY([id_unit])
REFERENCES [dbo].[units] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[unit_paf] CHECK CONSTRAINT [FK_unit_paf_units]
GO
ALTER TABLE [dbo].[units]  WITH CHECK ADD  CONSTRAINT [FK_rm_unit_rm_foc] FOREIGN KEY([id_foc])
REFERENCES [dbo].[focs] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[units] CHECK CONSTRAINT [FK_rm_unit_rm_foc]
GO
ALTER TABLE [dbo].[user_per_role]  WITH CHECK ADD  CONSTRAINT [FK_user_per_role_users] FOREIGN KEY([username])
REFERENCES [dbo].[users] ([username])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_per_role] CHECK CONSTRAINT [FK_user_per_role_users]
GO
USE [master]
GO
ALTER DATABASE [star_energi_geo] SET  READ_WRITE 
GO
