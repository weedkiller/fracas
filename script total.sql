USE [master]
GO
/****** Object:  Database [star_energi_geo]    Script Date: 4/22/2013 3:22:55 PM ******/
CREATE DATABASE [star_energi_geo] ON  PRIMARY 
( NAME = N'star_energi_geo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\star_energi_geo.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'star_energi_geo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\star_energi_geo_log.ldf' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  StoredProcedure [dbo].[observationByMonth]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[observationByMonth]
    @year varchar(4), 
    @month varchar(2)
AS 
	SELECT        ym.year, ym.month, { fn IFNULL(accident_sa.count_accident_sa, 0) } AS count_accident_sa, { fn IFNULL(accident_sc.count_accident_sc, 0) } AS count_accident_sc, 
                         { fn IFNULL(accident_ua.count_accident_ua, 0) } AS count_accident_ua, { fn IFNULL(accident_uc.count_accident_uc, 0) } AS count_accident_uc, { fn IFNULL(fire_sa.count, 0) } AS count_fire_sa, { fn IFNULL(fire_sc.count, 0) } AS count_fire_sc, { fn IFNULL(fire_ua.count, 0) } AS count_fire_ua, { fn IFNULL(fire_uc.count, 0) } AS count_fire_uc, { fn IFNULL(prevention_sa.count, 0) } AS count_prevention_sa, { fn IFNULL(prevention_sc.count, 0) } AS count_prevention_sc, { fn IFNULL(prevention_ua.count, 0) } AS count_prevention_ua, { fn IFNULL(prevention_uc.count, 0) } AS count_prevention_uc, { fn IFNULL(supervisor_sa.count, 0) } AS count_supervisor_sa, { fn IFNULL(supervisor_sc.count, 0) } AS count_supervisor_sc, { fn IFNULL(supervisor_ua.count, 0) } AS count_supervisor_ua, { fn IFNULL(supervisor_uc.count, 0) } AS count_supervisor_uc,
						  { fn IFNULL(fit_work_sa.count, 0) } AS count_fit_work_sa,
						  { fn IFNULL(fit_work_sc.count, 0) } AS count_fit_work_sc,
						  { fn IFNULL(fit_work_ua.count, 0) } AS count_fit_work_ua,
						  { fn IFNULL(fit_work_uc.count, 0) } AS count_fit_work_uc,
						  { fn IFNULL(psychological_sa.count, 0) } AS count_psychological_sa,
						  { fn IFNULL(psychological_sc.count, 0) } AS count_psychological_sc,
						  { fn IFNULL(psychological_ua.count, 0) } AS count_psychological_ua,
						  { fn IFNULL(psychological_uc.count, 0) } AS count_psychological_uc,
						  { fn IFNULL(posture_sa.count, 0) } AS count_posture_sa,
						  { fn IFNULL(posture_sc.count, 0) } AS count_posture_sc,
						  { fn IFNULL(posture_ua.count, 0) } AS count_posture_ua,
						  { fn IFNULL(posture_uc.count, 0) } AS count_posture_uc,
						  { fn IFNULL(substance_sa.count, 0) } AS count_substance_sa,
						  { fn IFNULL(substance_sc.count, 0) } AS count_substance_sc,
						  { fn IFNULL(substance_ua.count, 0) } AS count_substance_ua,
						  { fn IFNULL(substance_uc.count, 0) } AS count_substance_uc,
						  { fn IFNULL(hygiene_sa.count, 0) } AS count_hygiene_sa,
						  { fn IFNULL(hygiene_sc.count, 0) } AS count_hygiene_sc,
						  { fn IFNULL(hygiene_ua.count, 0) } AS count_hygiene_ua,
						  { fn IFNULL(hygiene_uc.count, 0) } AS count_hygiene_uc,
						  { fn IFNULL(house_sa.count, 0) } AS count_house_sa,
						  { fn IFNULL(house_sc.count, 0) } AS count_house_sc,
						  { fn IFNULL(house_ua.count, 0) } AS count_house_ua,
						  { fn IFNULL(house_uc.count, 0) } AS count_house_uc,
						  { fn IFNULL(standard_sa.count, 0) } AS count_standard_sa,
						  { fn IFNULL(standard_sc.count, 0) } AS count_standard_sc,
						  { fn IFNULL(standard_ua.count, 0) } AS count_standard_ua,
						  { fn IFNULL(standard_uc.count, 0) } AS count_standard_uc,
						  { fn IFNULL(spill_sa.count, 0) } AS count_spill_sa,
						  { fn IFNULL(spill_sc.count, 0) } AS count_spill_sc,
						  { fn IFNULL(spill_ua.count, 0) } AS count_spill_ua,
						  { fn IFNULL(spill_uc.count, 0) } AS count_spill_uc,
						  { fn IFNULL(waste_energy_sa.count, 0) } AS count_waste_energy_sa,
						  { fn IFNULL(waste_energy_sc.count, 0) } AS count_waste_energy_sc,
						  { fn IFNULL(waste_energy_ua.count, 0) } AS count_waste_energy_ua,
						  { fn IFNULL(waste_energy_uc.count, 0) } AS count_waste_energy_uc,
						  { fn IFNULL(containment_sa.count, 0) } AS count_containment_sa,
						  { fn IFNULL(containment_sc.count, 0) } AS count_containment_sc,
						  { fn IFNULL(containment_ua.count, 0) } AS count_containment_ua,
						  { fn IFNULL(containment_uc.count, 0) } AS count_containment_uc,
						  { fn IFNULL(absorbent_sa.count, 0) } AS count_absorbent_sa,
						  { fn IFNULL(absorbent_sc.count, 0) } AS count_absorbent_sc,
						  { fn IFNULL(absorbent_ua.count, 0) } AS count_absorbent_ua,
						  { fn IFNULL(absorbent_uc.count, 0) } AS count_absorbent_uc,
						  { fn IFNULL(hira_sa.count, 0) } AS count_hira_sa,
						  { fn IFNULL(hira_sc.count, 0) } AS count_hira_sc,
						  { fn IFNULL(hira_ua.count, 0) } AS count_hira_ua,
						  { fn IFNULL(hira_uc.count, 0) } AS count_hira_uc,
						  { fn IFNULL(ptw_sa.count, 0) } AS count_ptw_sa,
						  { fn IFNULL(ptw_sc.count, 0) } AS count_ptw_sc,
						  { fn IFNULL(ptw_ua.count, 0) } AS count_ptw_ua,
						  { fn IFNULL(ptw_uc.count, 0) } AS count_ptw_uc,
						  { fn IFNULL(sop_sa.count, 0) } AS count_sop_sa,
						  { fn IFNULL(sop_sc.count, 0) } AS count_sop_sc,
						  { fn IFNULL(sop_ua.count, 0) } AS count_sop_ua,
						  { fn IFNULL(sop_uc.count, 0) } AS count_sop_uc,
						  { fn IFNULL(msds_sa.count, 0) } AS count_msds_sa,
						  { fn IFNULL(msds_sc.count, 0) } AS count_msds_sc,
						  { fn IFNULL(msds_ua.count, 0) } AS count_msds_ua,
						  { fn IFNULL(msds_uc.count, 0) } AS count_msds_uc,
						  { fn IFNULL(emergency_sa.count, 0) } AS count_emergency_sa,
						  { fn IFNULL(emergency_sc.count, 0) } AS count_emergency_sc,
						  { fn IFNULL(emergency_ua.count, 0) } AS count_emergency_ua,
						  { fn IFNULL(emergency_uc.count, 0) } AS count_emergency_uc,
						  { fn IFNULL(certificates_sa.count, 0) } AS count_certificates_sa,
						  { fn IFNULL(certificates_sc.count, 0) } AS count_certificates_sc,
						  { fn IFNULL(certificates_ua.count, 0) } AS count_certificates_ua,
						  { fn IFNULL(certificates_uc.count, 0) } AS count_certificates_uc,
						  { fn IFNULL(ppe_sa.count, 0) } AS count_ppe_sa,
						  { fn IFNULL(ppe_sc.count, 0) } AS count_ppe_sc,
						  { fn IFNULL(ppe_ua.count, 0) } AS count_ppe_ua,
						  { fn IFNULL(ppe_uc.count, 0) } AS count_ppe_uc,
						  { fn IFNULL(hand_sa.count, 0) } AS count_hand_sa,
						  { fn IFNULL(hand_sc.count, 0) } AS count_hand_sc,
						  { fn IFNULL(hand_ua.count, 0) } AS count_hand_ua,
						  { fn IFNULL(hand_uc.count, 0) } AS count_hand_uc,
						  { fn IFNULL(mechanical_sa.count, 0) } AS count_mechanical_sa,
						  { fn IFNULL(mechanical_sc.count, 0) } AS count_mechanical_sc,
						  { fn IFNULL(mechanical_ua.count, 0) } AS count_mechanical_ua,
						  { fn IFNULL(mechanical_uc.count, 0) } AS count_mechanical_uc,
						  { fn IFNULL(electrical_sa.count, 0) } AS count_electrical_sa,
						  { fn IFNULL(electrical_sc.count, 0) } AS count_electrical_sc,
						  { fn IFNULL(electrical_ua.count, 0) } AS count_electrical_ua,
						  { fn IFNULL(electrical_uc.count, 0) } AS count_electrical_uc,
						  { fn IFNULL(vehicular_sa.count, 0) } AS count_vehicular_sa,
						  { fn IFNULL(vehicular_sc.count, 0) } AS count_vehicular_sc,
						  { fn IFNULL(vehicular_ua.count, 0) } AS count_vehicular_ua,
						  { fn IFNULL(vehicular_uc.count, 0) } AS count_vehicular_uc,
						  { fn IFNULL(substandard_sa.count, 0) } AS count_substandard_sa,
						  { fn IFNULL(substandard_sc.count, 0) } AS count_substandard_sc,
						  { fn IFNULL(substandard_ua.count, 0) } AS count_substandard_ua,
						  { fn IFNULL(substandard_uc.count, 0) } AS count_substandard_uc,
						  { fn IFNULL(h2s_sa.count, 0) } AS count_h2s_sa,
						  { fn IFNULL(h2s_sc.count, 0) } AS count_h2s_sc,
						  { fn IFNULL(h2s_ua.count, 0) } AS count_h2s_ua,
						  { fn IFNULL(h2s_uc.count, 0) } AS count_h2s_uc,
						  { fn IFNULL(workplace_health_sa.count, 0) } AS count_workplace_health_sa,
						  { fn IFNULL(workplace_health_sc.count, 0) } AS count_workplace_health_sc,
						  { fn IFNULL(workplace_health_ua.count, 0) } AS count_workplace_health_ua,
						  { fn IFNULL(workplace_health_uc.count, 0) } AS count_workplace_health_uc
FROM            (SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) AS month
                          FROM            she_observation) AS ym LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_safe AS asa, COUNT(id) AS count_accident_sa
                               FROM            she_observation AS she_observation_2
                               WHERE        (accident_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_safe) AS accident_sa ON ym.year = accident_sa.year AND 
                         ym.month = accident_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_safe AS asa, COUNT(id) AS count_accident_sc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_safe) AS accident_sc ON ym.year = accident_sc.year AND 
                         ym.month = accident_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_unsafe AS aua, COUNT(id) AS count_accident_ua
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_unsafe) AS accident_ua ON ym.year = accident_ua.year AND 
                         ym.month = accident_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_unsafe AS auc, COUNT(id) AS count_accident_uc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_unsafe) AS accident_uc ON ym.year = accident_uc.year AND ym.month = accident_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_safe) AS fire_sa ON ym.year = fire_sa.year AND ym.month = fire_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_safe) AS fire_sc ON ym.year = fire_sc.year AND 
                         ym.month = fire_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_unsafe) AS fire_ua ON ym.year = fire_ua.year AND 
                         ym.month = fire_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_unsafe) AS fire_uc ON ym.year = fire_uc.year AND ym.month = fire_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_safe) AS prevention_sa ON ym.year = prevention_sa.year AND ym.month = prevention_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_safe) AS prevention_sc ON ym.year = prevention_sc.year AND 
                         ym.month = prevention_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_unsafe) AS prevention_ua ON ym.year = prevention_ua.year AND 
                         ym.month = prevention_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_unsafe) AS prevention_uc ON ym.year = prevention_uc.year AND ym.month = prevention_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_safe) AS supervisor_sa ON ym.year = supervisor_sa.year AND ym.month = supervisor_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_safe) AS supervisor_sc ON ym.year = supervisor_sc.year AND 
                         ym.month = supervisor_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_unsafe) AS supervisor_ua ON ym.year = supervisor_ua.year AND 
                         ym.month = supervisor_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_unsafe) AS supervisor_uc ON ym.year = supervisor_uc.year AND ym.month = supervisor_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_safe) AS fit_work_sa ON ym.year = fit_work_sa.year AND ym.month = fit_work_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_safe) AS fit_work_sc ON ym.year = fit_work_sc.year AND 
                         ym.month = fit_work_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_unsafe) AS fit_work_ua ON ym.year = fit_work_ua.year AND 
                         ym.month = fit_work_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_unsafe) AS fit_work_uc ON ym.year = fit_work_uc.year AND ym.month = fit_work_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_safe) AS psychological_sa ON ym.year = psychological_sa.year AND ym.month = psychological_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_safe) AS psychological_sc ON ym.year = psychological_sc.year AND 
                         ym.month = psychological_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_unsafe) AS psychological_ua ON ym.year = psychological_ua.year AND 
                         ym.month = psychological_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_unsafe) AS psychological_uc ON ym.year = psychological_uc.year AND ym.month = psychological_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_safe) AS posture_sa ON ym.year = posture_sa.year AND ym.month = posture_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_safe) AS posture_sc ON ym.year = posture_sc.year AND 
                         ym.month = posture_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_unsafe) AS posture_ua ON ym.year = posture_ua.year AND 
                         ym.month = posture_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_unsafe) AS posture_uc ON ym.year = posture_uc.year AND ym.month = posture_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_safe) AS substance_sa ON ym.year = substance_sa.year AND ym.month = substance_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_safe) AS substance_sc ON ym.year = substance_sc.year AND 
                         ym.month = substance_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_unsafe) AS substance_ua ON ym.year = substance_ua.year AND 
                         ym.month = substance_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_unsafe) AS substance_uc ON ym.year = substance_uc.year AND ym.month = substance_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_safe) AS hygiene_sa ON ym.year = hygiene_sa.year AND ym.month = hygiene_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_safe) AS hygiene_sc ON ym.year = hygiene_sc.year AND 
                         ym.month = hygiene_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_unsafe) AS hygiene_ua ON ym.year = hygiene_ua.year AND 
                         ym.month = hygiene_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_unsafe) AS hygiene_uc ON ym.year = hygiene_uc.year AND ym.month = hygiene_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_safe) AS house_sa ON ym.year = house_sa.year AND ym.month = house_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_safe) AS house_sc ON ym.year = house_sc.year AND 
                         ym.month = house_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_unsafe) AS house_ua ON ym.year = house_ua.year AND 
                         ym.month = house_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_unsafe) AS house_uc ON ym.year = house_uc.year AND ym.month = house_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_safe) AS standard_sa ON ym.year = standard_sa.year AND ym.month = standard_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_safe) AS standard_sc ON ym.year = standard_sc.year AND 
                         ym.month = standard_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_unsafe) AS standard_ua ON ym.year = standard_ua.year AND 
                         ym.month = standard_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_unsafe) AS standard_uc ON ym.year = standard_uc.year AND ym.month = standard_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_safe) AS spill_sa ON ym.year = spill_sa.year AND ym.month = spill_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_safe) AS spill_sc ON ym.year = spill_sc.year AND 
                         ym.month = spill_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_unsafe) AS spill_ua ON ym.year = spill_ua.year AND 
                         ym.month = spill_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_unsafe) AS spill_uc ON ym.year = spill_uc.year AND ym.month = spill_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_safe) AS waste_energy_sa ON ym.year = waste_energy_sa.year AND ym.month = waste_energy_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_safe) AS waste_energy_sc ON ym.year = waste_energy_sc.year AND 
                         ym.month = waste_energy_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_unsafe) AS waste_energy_ua ON ym.year = waste_energy_ua.year AND 
                         ym.month = waste_energy_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_unsafe) AS waste_energy_uc ON ym.year = waste_energy_uc.year AND ym.month = waste_energy_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_safe) AS containment_sa ON ym.year = containment_sa.year AND ym.month = containment_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_safe) AS containment_sc ON ym.year = containment_sc.year AND 
                         ym.month = containment_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_unsafe) AS containment_ua ON ym.year = containment_ua.year AND 
                         ym.month = containment_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_unsafe) AS containment_uc ON ym.year = containment_uc.year AND ym.month = containment_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_safe) AS absorbent_sa ON ym.year = absorbent_sa.year AND ym.month = absorbent_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_safe) AS absorbent_sc ON ym.year = absorbent_sc.year AND 
                         ym.month = absorbent_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_unsafe) AS absorbent_ua ON ym.year = absorbent_ua.year AND 
                         ym.month = absorbent_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_unsafe) AS absorbent_uc ON ym.year = absorbent_uc.year AND ym.month = absorbent_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_safe) AS hira_sa ON ym.year = hira_sa.year AND ym.month = hira_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_safe) AS hira_sc ON ym.year = hira_sc.year AND 
                         ym.month = hira_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_unsafe) AS hira_ua ON ym.year = hira_ua.year AND 
                         ym.month = hira_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_unsafe) AS hira_uc ON ym.year = hira_uc.year AND ym.month = hira_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_safe) AS ptw_sa ON ym.year = ptw_sa.year AND ym.month = ptw_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_safe) AS ptw_sc ON ym.year = ptw_sc.year AND 
                         ym.month = ptw_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_unsafe) AS ptw_ua ON ym.year = ptw_ua.year AND 
                         ym.month = ptw_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_unsafe) AS ptw_uc ON ym.year = ptw_uc.year AND ym.month = ptw_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_safe) AS sop_sa ON ym.year = sop_sa.year AND ym.month = sop_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_safe) AS sop_sc ON ym.year = sop_sc.year AND 
                         ym.month = sop_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_unsafe) AS sop_ua ON ym.year = sop_ua.year AND 
                         ym.month = sop_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_unsafe) AS sop_uc ON ym.year = sop_uc.year AND ym.month = sop_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_safe) AS msds_sa ON ym.year = msds_sa.year AND ym.month = msds_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_safe) AS msds_sc ON ym.year = msds_sc.year AND 
                         ym.month = msds_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_unsafe) AS msds_ua ON ym.year = msds_ua.year AND 
                         ym.month = msds_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_unsafe) AS msds_uc ON ym.year = msds_uc.year AND ym.month = msds_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_safe) AS emergency_sa ON ym.year = emergency_sa.year AND ym.month = emergency_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_safe) AS emergency_sc ON ym.year = emergency_sc.year AND 
                         ym.month = emergency_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_unsafe) AS emergency_ua ON ym.year = emergency_ua.year AND 
                         ym.month = emergency_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_unsafe) AS emergency_uc ON ym.year = emergency_uc.year AND ym.month = emergency_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_safe) AS certificates_sa ON ym.year = certificates_sa.year AND ym.month = certificates_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_safe) AS certificates_sc ON ym.year = certificates_sc.year AND 
                         ym.month = certificates_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_unsafe) AS certificates_ua ON ym.year = certificates_ua.year AND 
                         ym.month = certificates_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_unsafe) AS certificates_uc ON ym.year = certificates_uc.year AND ym.month = certificates_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_safe) AS ppe_sa ON ym.year = ppe_sa.year AND ym.month = ppe_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_safe) AS ppe_sc ON ym.year = ppe_sc.year AND 
                         ym.month = ppe_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_unsafe) AS ppe_ua ON ym.year = ppe_ua.year AND 
                         ym.month = ppe_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_unsafe) AS ppe_uc ON ym.year = ppe_uc.year AND ym.month = ppe_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_safe) AS hand_sa ON ym.year = hand_sa.year AND ym.month = hand_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_safe) AS hand_sc ON ym.year = hand_sc.year AND 
                         ym.month = hand_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_unsafe) AS hand_ua ON ym.year = hand_ua.year AND 
                         ym.month = hand_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_unsafe) AS hand_uc ON ym.year = hand_uc.year AND ym.month = hand_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_safe) AS mechanical_sa ON ym.year = mechanical_sa.year AND ym.month = mechanical_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_safe) AS mechanical_sc ON ym.year = mechanical_sc.year AND 
                         ym.month = mechanical_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_unsafe) AS mechanical_ua ON ym.year = mechanical_ua.year AND 
                         ym.month = mechanical_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_unsafe) AS mechanical_uc ON ym.year = mechanical_uc.year AND ym.month = mechanical_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_safe) AS electrical_sa ON ym.year = electrical_sa.year AND ym.month = electrical_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_safe) AS electrical_sc ON ym.year = electrical_sc.year AND 
                         ym.month = electrical_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_unsafe) AS electrical_ua ON ym.year = electrical_ua.year AND 
                         ym.month = electrical_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_unsafe) AS electrical_uc ON ym.year = electrical_uc.year AND ym.month = electrical_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_safe) AS vehicular_sa ON ym.year = vehicular_sa.year AND ym.month = vehicular_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_safe) AS vehicular_sc ON ym.year = vehicular_sc.year AND 
                         ym.month = vehicular_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_unsafe) AS vehicular_ua ON ym.year = vehicular_ua.year AND 
                         ym.month = vehicular_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_unsafe) AS vehicular_uc ON ym.year = vehicular_uc.year AND ym.month = vehicular_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_safe) AS substandard_sa ON ym.year = substandard_sa.year AND ym.month = substandard_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_safe) AS substandard_sc ON ym.year = substandard_sc.year AND 
                         ym.month = substandard_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_unsafe) AS substandard_ua ON ym.year = substandard_ua.year AND 
                         ym.month = substandard_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_unsafe) AS substandard_uc ON ym.year = substandard_uc.year AND ym.month = substandard_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_safe) AS h2s_sa ON ym.year = h2s_sa.year AND ym.month = h2s_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_safe) AS h2s_sc ON ym.year = h2s_sc.year AND 
                         ym.month = h2s_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_unsafe) AS h2s_ua ON ym.year = h2s_ua.year AND 
                         ym.month = h2s_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_unsafe) AS h2s_uc ON ym.year = h2s_uc.year AND ym.month = h2s_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_safe) AS workplace_health_sa ON ym.year = workplace_health_sa.year AND ym.month = workplace_health_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_safe) AS workplace_health_sc ON ym.year = workplace_health_sc.year AND 
                         ym.month = workplace_health_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_unsafe) AS workplace_health_ua ON ym.year = workplace_health_ua.year AND 
                         ym.month = workplace_health_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_unsafe) AS workplace_health_uc ON ym.year = workplace_health_uc.year AND ym.month = workplace_health_uc.month 
							   where ym.year=@year and ym.month=@month

GO
/****** Object:  StoredProcedure [dbo].[observationSummary]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[observationSummary] (
    @year varchar(4)
)
AS 
BEGIN
	SELECT				{ fn IFNULL(month1.count_accident_ua, 0) } AS count_accident_ua_1, 
						{ fn IFNULL(month1.count_accident_uc, 0) } AS count_accident_uc_1, 
						{ fn IFNULL(month1.count_accident_sa, 0) } AS count_accident_sa_1,
						{ fn IFNULL(month1.count_accident_sc, 0) } AS count_accident_sc_1, 
						{ fn IFNULL(month1.count_fire_ua, 0) } AS count_fire_ua_1, 
						{ fn IFNULL(month1.count_fire_uc, 0) } AS count_fire_uc_1, 
						{ fn IFNULL(month1.count_fire_sa, 0) } AS count_fire_sa_1,
						{ fn IFNULL(month1.count_fire_sc, 0) } AS count_fire_sc_1, 
						{ fn IFNULL(month1.count_prevention_ua, 0) } AS count_prevention_ua_1, 
						{ fn IFNULL(month1.count_prevention_uc, 0) } AS count_prevention_uc_1, 
						{ fn IFNULL(month1.count_prevention_sa, 0) } AS count_prevention_sa_1,
						{ fn IFNULL(month1.count_prevention_sc, 0) } AS count_prevention_sc_1, 
						{ fn IFNULL(month1.count_supervisor_ua, 0) } AS count_supervisor_ua_1, 
						{ fn IFNULL(month1.count_supervisor_uc, 0) } AS count_supervisor_uc_1, 
						{ fn IFNULL(month1.count_supervisor_sa, 0) } AS count_supervisor_sa_1,
						{ fn IFNULL(month1.count_supervisor_sc, 0) } AS count_supervisor_sc_1, 
						{ fn IFNULL(month1.count_fit_work_ua, 0) } AS count_fit_work_ua_1, 
						{ fn IFNULL(month1.count_fit_work_uc, 0) } AS count_fit_work_uc_1, 
						{ fn IFNULL(month1.count_fit_work_sa, 0) } AS count_fit_work_sa_1,
						{ fn IFNULL(month1.count_fit_work_sc, 0) } AS count_fit_work_sc_1, 
						{ fn IFNULL(month1.count_psychological_ua, 0) } AS count_psychological_ua_1, 
						{ fn IFNULL(month1.count_psychological_uc, 0) } AS count_psychological_uc_1, 
						{ fn IFNULL(month1.count_psychological_sa, 0) } AS count_psychological_sa_1,
						{ fn IFNULL(month1.count_psychological_sc, 0) } AS count_psychological_sc_1, 
						{ fn IFNULL(month1.count_posture_ua, 0) } AS count_posture_ua_1, 
						{ fn IFNULL(month1.count_posture_uc, 0) } AS count_posture_uc_1, 
						{ fn IFNULL(month1.count_posture_sa, 0) } AS count_posture_sa_1,
						{ fn IFNULL(month1.count_posture_sc, 0) } AS count_posture_sc_1, 
						{ fn IFNULL(month1.count_substance_ua, 0) } AS count_substance_ua_1, 
						{ fn IFNULL(month1.count_substance_uc, 0) } AS count_substance_uc_1, 
						{ fn IFNULL(month1.count_substance_sa, 0) } AS count_substance_sa_1,
						{ fn IFNULL(month1.count_substance_sc, 0) } AS count_substance_sc_1, 
						{ fn IFNULL(month1.count_hygiene_ua, 0) } AS count_hygiene_ua_1, 
						{ fn IFNULL(month1.count_hygiene_uc, 0) } AS count_hygiene_uc_1, 
						{ fn IFNULL(month1.count_hygiene_sa, 0) } AS count_hygiene_sa_1,
						{ fn IFNULL(month1.count_hygiene_sc, 0) } AS count_hygiene_sc_1, 
						{ fn IFNULL(month1.count_house_ua, 0) } AS count_house_ua_1, 
						{ fn IFNULL(month1.count_house_uc, 0) } AS count_house_uc_1, 
						{ fn IFNULL(month1.count_house_sa, 0) } AS count_house_sa_1,
						{ fn IFNULL(month1.count_house_sc, 0) } AS count_house_sc_1, 
						{ fn IFNULL(month1.count_standard_ua, 0) } AS count_standard_ua_1, 
						{ fn IFNULL(month1.count_standard_uc, 0) } AS count_standard_uc_1, 
						{ fn IFNULL(month1.count_standard_sa, 0) } AS count_standard_sa_1,
						{ fn IFNULL(month1.count_standard_sc, 0) } AS count_standard_sc_1, 
						{ fn IFNULL(month1.count_spill_ua, 0) } AS count_spill_ua_1, 
						{ fn IFNULL(month1.count_spill_uc, 0) } AS count_spill_uc_1, 
						{ fn IFNULL(month1.count_spill_sa, 0) } AS count_spill_sa_1,
						{ fn IFNULL(month1.count_spill_sc, 0) } AS count_spill_sc_1, 
						{ fn IFNULL(month1.count_waste_energy_ua, 0) } AS count_waste_energy_ua_1, 
						{ fn IFNULL(month1.count_waste_energy_uc, 0) } AS count_waste_energy_uc_1, 
						{ fn IFNULL(month1.count_waste_energy_sa, 0) } AS count_waste_energy_sa_1,
						{ fn IFNULL(month1.count_waste_energy_sc, 0) } AS count_waste_energy_sc_1, 
						{ fn IFNULL(month1.count_containment_ua, 0) } AS count_containment_ua_1, 
						{ fn IFNULL(month1.count_containment_uc, 0) } AS count_containment_uc_1, 
						{ fn IFNULL(month1.count_containment_sa, 0) } AS count_containment_sa_1,
						{ fn IFNULL(month1.count_containment_sc, 0) } AS count_containment_sc_1, 
						{ fn IFNULL(month1.count_absorbent_ua, 0) } AS count_absorbent_ua_1, 
						{ fn IFNULL(month1.count_absorbent_uc, 0) } AS count_absorbent_uc_1, 
						{ fn IFNULL(month1.count_absorbent_sa, 0) } AS count_absorbent_sa_1,
						{ fn IFNULL(month1.count_absorbent_sc, 0) } AS count_absorbent_sc_1, 
						{ fn IFNULL(month1.count_hira_ua, 0) } AS count_hira_ua_1, 
						{ fn IFNULL(month1.count_hira_uc, 0) } AS count_hira_uc_1, 
						{ fn IFNULL(month1.count_hira_sa, 0) } AS count_hira_sa_1,
						{ fn IFNULL(month1.count_hira_sc, 0) } AS count_hira_sc_1, 
						{ fn IFNULL(month1.count_ptw_ua, 0) } AS count_ptw_ua_1, 
						{ fn IFNULL(month1.count_ptw_uc, 0) } AS count_ptw_uc_1, 
						{ fn IFNULL(month1.count_ptw_sa, 0) } AS count_ptw_sa_1,
						{ fn IFNULL(month1.count_ptw_sc, 0) } AS count_ptw_sc_1, 
						{ fn IFNULL(month1.count_sop_ua, 0) } AS count_sop_ua_1, 
						{ fn IFNULL(month1.count_sop_uc, 0) } AS count_sop_uc_1, 
						{ fn IFNULL(month1.count_sop_sa, 0) } AS count_sop_sa_1,
						{ fn IFNULL(month1.count_sop_sc, 0) } AS count_sop_sc_1, 
						{ fn IFNULL(month1.count_msds_ua, 0) } AS count_msds_ua_1, 
						{ fn IFNULL(month1.count_msds_uc, 0) } AS count_msds_uc_1, 
						{ fn IFNULL(month1.count_msds_sa, 0) } AS count_msds_sa_1,
						{ fn IFNULL(month1.count_msds_sc, 0) } AS count_msds_sc_1, 
						{ fn IFNULL(month1.count_emergency_ua, 0) } AS count_emergency_ua_1, 
						{ fn IFNULL(month1.count_emergency_uc, 0) } AS count_emergency_uc_1, 
						{ fn IFNULL(month1.count_emergency_sa, 0) } AS count_emergency_sa_1,
						{ fn IFNULL(month1.count_emergency_sc, 0) } AS count_emergency_sc_1, 
						{ fn IFNULL(month1.count_certificates_ua, 0) } AS count_certificates_ua_1, 
						{ fn IFNULL(month1.count_certificates_uc, 0) } AS count_certificates_uc_1, 
						{ fn IFNULL(month1.count_certificates_sa, 0) } AS count_certificates_sa_1,
						{ fn IFNULL(month1.count_certificates_sc, 0) } AS count_certificates_sc_1, 
						{ fn IFNULL(month1.count_ppe_ua, 0) } AS count_ppe_ua_1, 
						{ fn IFNULL(month1.count_ppe_uc, 0) } AS count_ppe_uc_1, 
						{ fn IFNULL(month1.count_ppe_sa, 0) } AS count_ppe_sa_1,
						{ fn IFNULL(month1.count_ppe_sc, 0) } AS count_ppe_sc_1, 
						{ fn IFNULL(month1.count_hand_ua, 0) } AS count_hand_ua_1, 
						{ fn IFNULL(month1.count_hand_uc, 0) } AS count_hand_uc_1, 
						{ fn IFNULL(month1.count_hand_sa, 0) } AS count_hand_sa_1,
						{ fn IFNULL(month1.count_hand_sc, 0) } AS count_hand_sc_1, 
						{ fn IFNULL(month1.count_mechanical_ua, 0) } AS count_mechanical_ua_1, 
						{ fn IFNULL(month1.count_mechanical_uc, 0) } AS count_mechanical_uc_1, 
						{ fn IFNULL(month1.count_mechanical_sa, 0) } AS count_mechanical_sa_1,
						{ fn IFNULL(month1.count_mechanical_sc, 0) } AS count_mechanical_sc_1, 
						{ fn IFNULL(month1.count_electrical_ua, 0) } AS count_electrical_ua_1, 
						{ fn IFNULL(month1.count_electrical_uc, 0) } AS count_electrical_uc_1, 
						{ fn IFNULL(month1.count_electrical_sa, 0) } AS count_electrical_sa_1,
						{ fn IFNULL(month1.count_electrical_sc, 0) } AS count_electrical_sc_1, 
						{ fn IFNULL(month1.count_vehicular_ua, 0) } AS count_vehicular_ua_1, 
						{ fn IFNULL(month1.count_vehicular_uc, 0) } AS count_vehicular_uc_1, 
						{ fn IFNULL(month1.count_vehicular_sa, 0) } AS count_vehicular_sa_1,
						{ fn IFNULL(month1.count_vehicular_sc, 0) } AS count_vehicular_sc_1, 
						{ fn IFNULL(month1.count_substandard_ua, 0) } AS count_substandard_ua_1, 
						{ fn IFNULL(month1.count_substandard_uc, 0) } AS count_substandard_uc_1, 
						{ fn IFNULL(month1.count_substandard_sa, 0) } AS count_substandard_sa_1,
						{ fn IFNULL(month1.count_substandard_sc, 0) } AS count_substandard_sc_1, 
						{ fn IFNULL(month1.count_h2s_ua, 0) } AS count_h2s_ua_1, 
						{ fn IFNULL(month1.count_h2s_uc, 0) } AS count_h2s_uc_1, 
						{ fn IFNULL(month1.count_h2s_sa, 0) } AS count_h2s_sa_1,
						{ fn IFNULL(month1.count_h2s_sc, 0) } AS count_h2s_sc_1, 
						{ fn IFNULL(month1.count_workplace_health_ua, 0) } AS count_workplace_health_ua_1, 
						{ fn IFNULL(month1.count_workplace_health_uc, 0) } AS count_workplace_health_uc_1, 
						{ fn IFNULL(month1.count_workplace_health_sa, 0) } AS count_workplace_health_sa_1,
						{ fn IFNULL(month1.count_workplace_health_sc, 0) } AS count_workplace_health_sc_1,
						{ fn IFNULL(month2.count_accident_ua, 0) } AS count_accident_ua_2, 
						{ fn IFNULL(month2.count_accident_uc, 0) } AS count_accident_uc_2, 
						{ fn IFNULL(month2.count_accident_sa, 0) } AS count_accident_sa_2,
						{ fn IFNULL(month2.count_accident_sc, 0) } AS count_accident_sc_2, 
						{ fn IFNULL(month2.count_fire_ua, 0) } AS count_fire_ua_2, 
						{ fn IFNULL(month2.count_fire_uc, 0) } AS count_fire_uc_2, 
						{ fn IFNULL(month2.count_fire_sa, 0) } AS count_fire_sa_2,
						{ fn IFNULL(month2.count_fire_sc, 0) } AS count_fire_sc_2, 
						{ fn IFNULL(month2.count_prevention_ua, 0) } AS count_prevention_ua_2, 
						{ fn IFNULL(month2.count_prevention_uc, 0) } AS count_prevention_uc_2, 
						{ fn IFNULL(month2.count_prevention_sa, 0) } AS count_prevention_sa_2,
						{ fn IFNULL(month2.count_prevention_sc, 0) } AS count_prevention_sc_2, 
						{ fn IFNULL(month2.count_supervisor_ua, 0) } AS count_supervisor_ua_2, 
						{ fn IFNULL(month2.count_supervisor_uc, 0) } AS count_supervisor_uc_2, 
						{ fn IFNULL(month2.count_supervisor_sa, 0) } AS count_supervisor_sa_2,
						{ fn IFNULL(month2.count_supervisor_sc, 0) } AS count_supervisor_sc_2, 
						{ fn IFNULL(month2.count_fit_work_ua, 0) } AS count_fit_work_ua_2, 
						{ fn IFNULL(month2.count_fit_work_uc, 0) } AS count_fit_work_uc_2, 
						{ fn IFNULL(month2.count_fit_work_sa, 0) } AS count_fit_work_sa_2,
						{ fn IFNULL(month2.count_fit_work_sc, 0) } AS count_fit_work_sc_2, 
						{ fn IFNULL(month2.count_psychological_ua, 0) } AS count_psychological_ua_2, 
						{ fn IFNULL(month2.count_psychological_uc, 0) } AS count_psychological_uc_2, 
						{ fn IFNULL(month2.count_psychological_sa, 0) } AS count_psychological_sa_2,
						{ fn IFNULL(month2.count_psychological_sc, 0) } AS count_psychological_sc_2, 
						{ fn IFNULL(month2.count_posture_ua, 0) } AS count_posture_ua_2, 
						{ fn IFNULL(month2.count_posture_uc, 0) } AS count_posture_uc_2, 
						{ fn IFNULL(month2.count_posture_sa, 0) } AS count_posture_sa_2,
						{ fn IFNULL(month2.count_posture_sc, 0) } AS count_posture_sc_2, 
						{ fn IFNULL(month2.count_substance_ua, 0) } AS count_substance_ua_2, 
						{ fn IFNULL(month2.count_substance_uc, 0) } AS count_substance_uc_2, 
						{ fn IFNULL(month2.count_substance_sa, 0) } AS count_substance_sa_2,
						{ fn IFNULL(month2.count_substance_sc, 0) } AS count_substance_sc_2, 
						{ fn IFNULL(month2.count_hygiene_ua, 0) } AS count_hygiene_ua_2, 
						{ fn IFNULL(month2.count_hygiene_uc, 0) } AS count_hygiene_uc_2, 
						{ fn IFNULL(month2.count_hygiene_sa, 0) } AS count_hygiene_sa_2,
						{ fn IFNULL(month2.count_hygiene_sc, 0) } AS count_hygiene_sc_2, 
						{ fn IFNULL(month2.count_house_ua, 0) } AS count_house_ua_2, 
						{ fn IFNULL(month2.count_house_uc, 0) } AS count_house_uc_2, 
						{ fn IFNULL(month2.count_house_sa, 0) } AS count_house_sa_2,
						{ fn IFNULL(month2.count_house_sc, 0) } AS count_house_sc_2, 
						{ fn IFNULL(month2.count_standard_ua, 0) } AS count_standard_ua_2, 
						{ fn IFNULL(month2.count_standard_uc, 0) } AS count_standard_uc_2, 
						{ fn IFNULL(month2.count_standard_sa, 0) } AS count_standard_sa_2,
						{ fn IFNULL(month2.count_standard_sc, 0) } AS count_standard_sc_2, 
						{ fn IFNULL(month2.count_spill_ua, 0) } AS count_spill_ua_2, 
						{ fn IFNULL(month2.count_spill_uc, 0) } AS count_spill_uc_2, 
						{ fn IFNULL(month2.count_spill_sa, 0) } AS count_spill_sa_2,
						{ fn IFNULL(month2.count_spill_sc, 0) } AS count_spill_sc_2, 
						{ fn IFNULL(month2.count_waste_energy_ua, 0) } AS count_waste_energy_ua_2, 
						{ fn IFNULL(month2.count_waste_energy_uc, 0) } AS count_waste_energy_uc_2, 
						{ fn IFNULL(month2.count_waste_energy_sa, 0) } AS count_waste_energy_sa_2,
						{ fn IFNULL(month2.count_waste_energy_sc, 0) } AS count_waste_energy_sc_2, 
						{ fn IFNULL(month2.count_containment_ua, 0) } AS count_containment_ua_2, 
						{ fn IFNULL(month2.count_containment_uc, 0) } AS count_containment_uc_2, 
						{ fn IFNULL(month2.count_containment_sa, 0) } AS count_containment_sa_2,
						{ fn IFNULL(month2.count_containment_sc, 0) } AS count_containment_sc_2, 
						{ fn IFNULL(month2.count_absorbent_ua, 0) } AS count_absorbent_ua_2, 
						{ fn IFNULL(month2.count_absorbent_uc, 0) } AS count_absorbent_uc_2, 
						{ fn IFNULL(month2.count_absorbent_sa, 0) } AS count_absorbent_sa_2,
						{ fn IFNULL(month2.count_absorbent_sc, 0) } AS count_absorbent_sc_2, 
						{ fn IFNULL(month2.count_hira_ua, 0) } AS count_hira_ua_2, 
						{ fn IFNULL(month2.count_hira_uc, 0) } AS count_hira_uc_2, 
						{ fn IFNULL(month2.count_hira_sa, 0) } AS count_hira_sa_2,
						{ fn IFNULL(month2.count_hira_sc, 0) } AS count_hira_sc_2, 
						{ fn IFNULL(month2.count_ptw_ua, 0) } AS count_ptw_ua_2, 
						{ fn IFNULL(month2.count_ptw_uc, 0) } AS count_ptw_uc_2, 
						{ fn IFNULL(month2.count_ptw_sa, 0) } AS count_ptw_sa_2,
						{ fn IFNULL(month2.count_ptw_sc, 0) } AS count_ptw_sc_2, 
						{ fn IFNULL(month2.count_sop_ua, 0) } AS count_sop_ua_2, 
						{ fn IFNULL(month2.count_sop_uc, 0) } AS count_sop_uc_2, 
						{ fn IFNULL(month2.count_sop_sa, 0) } AS count_sop_sa_2,
						{ fn IFNULL(month2.count_sop_sc, 0) } AS count_sop_sc_2, 
						{ fn IFNULL(month2.count_msds_ua, 0) } AS count_msds_ua_2, 
						{ fn IFNULL(month2.count_msds_uc, 0) } AS count_msds_uc_2, 
						{ fn IFNULL(month2.count_msds_sa, 0) } AS count_msds_sa_2,
						{ fn IFNULL(month2.count_msds_sc, 0) } AS count_msds_sc_2, 
						{ fn IFNULL(month2.count_emergency_ua, 0) } AS count_emergency_ua_2, 
						{ fn IFNULL(month2.count_emergency_uc, 0) } AS count_emergency_uc_2, 
						{ fn IFNULL(month2.count_emergency_sa, 0) } AS count_emergency_sa_2,
						{ fn IFNULL(month2.count_emergency_sc, 0) } AS count_emergency_sc_2, 
						{ fn IFNULL(month2.count_certificates_ua, 0) } AS count_certificates_ua_2, 
						{ fn IFNULL(month2.count_certificates_uc, 0) } AS count_certificates_uc_2, 
						{ fn IFNULL(month2.count_certificates_sa, 0) } AS count_certificates_sa_2,
						{ fn IFNULL(month2.count_certificates_sc, 0) } AS count_certificates_sc_2, 
						{ fn IFNULL(month2.count_ppe_ua, 0) } AS count_ppe_ua_2, 
						{ fn IFNULL(month2.count_ppe_uc, 0) } AS count_ppe_uc_2, 
						{ fn IFNULL(month2.count_ppe_sa, 0) } AS count_ppe_sa_2,
						{ fn IFNULL(month2.count_ppe_sc, 0) } AS count_ppe_sc_2, 
						{ fn IFNULL(month2.count_hand_ua, 0) } AS count_hand_ua_2, 
						{ fn IFNULL(month2.count_hand_uc, 0) } AS count_hand_uc_2, 
						{ fn IFNULL(month2.count_hand_sa, 0) } AS count_hand_sa_2,
						{ fn IFNULL(month2.count_hand_sc, 0) } AS count_hand_sc_2, 
						{ fn IFNULL(month2.count_mechanical_ua, 0) } AS count_mechanical_ua_2, 
						{ fn IFNULL(month2.count_mechanical_uc, 0) } AS count_mechanical_uc_2, 
						{ fn IFNULL(month2.count_mechanical_sa, 0) } AS count_mechanical_sa_2,
						{ fn IFNULL(month2.count_mechanical_sc, 0) } AS count_mechanical_sc_2, 
						{ fn IFNULL(month2.count_electrical_ua, 0) } AS count_electrical_ua_2, 
						{ fn IFNULL(month2.count_electrical_uc, 0) } AS count_electrical_uc_2, 
						{ fn IFNULL(month2.count_electrical_sa, 0) } AS count_electrical_sa_2,
						{ fn IFNULL(month2.count_electrical_sc, 0) } AS count_electrical_sc_2, 
						{ fn IFNULL(month2.count_vehicular_ua, 0) } AS count_vehicular_ua_2, 
						{ fn IFNULL(month2.count_vehicular_uc, 0) } AS count_vehicular_uc_2, 
						{ fn IFNULL(month2.count_vehicular_sa, 0) } AS count_vehicular_sa_2,
						{ fn IFNULL(month2.count_vehicular_sc, 0) } AS count_vehicular_sc_2, 
						{ fn IFNULL(month2.count_substandard_ua, 0) } AS count_substandard_ua_2, 
						{ fn IFNULL(month2.count_substandard_uc, 0) } AS count_substandard_uc_2, 
						{ fn IFNULL(month2.count_substandard_sa, 0) } AS count_substandard_sa_2,
						{ fn IFNULL(month2.count_substandard_sc, 0) } AS count_substandard_sc_2, 
						{ fn IFNULL(month2.count_h2s_ua, 0) } AS count_h2s_ua_2, 
						{ fn IFNULL(month2.count_h2s_uc, 0) } AS count_h2s_uc_2, 
						{ fn IFNULL(month2.count_h2s_sa, 0) } AS count_h2s_sa_2,
						{ fn IFNULL(month2.count_h2s_sc, 0) } AS count_h2s_sc_2, 
						{ fn IFNULL(month2.count_workplace_health_ua, 0) } AS count_workplace_health_ua_2, 
						{ fn IFNULL(month2.count_workplace_health_uc, 0) } AS count_workplace_health_uc_2, 
						{ fn IFNULL(month2.count_workplace_health_sa, 0) } AS count_workplace_health_sa_2,
						{ fn IFNULL(month2.count_workplace_health_sc, 0) } AS count_workplace_health_sc_2,
						{ fn IFNULL(month3.count_accident_ua, 0) } AS count_accident_ua_3, 
						{ fn IFNULL(month3.count_accident_uc, 0) } AS count_accident_uc_3, 
						{ fn IFNULL(month3.count_accident_sa, 0) } AS count_accident_sa_3,
						{ fn IFNULL(month3.count_accident_sc, 0) } AS count_accident_sc_3, 
						{ fn IFNULL(month3.count_fire_ua, 0) } AS count_fire_ua_3, 
						{ fn IFNULL(month3.count_fire_uc, 0) } AS count_fire_uc_3, 
						{ fn IFNULL(month3.count_fire_sa, 0) } AS count_fire_sa_3,
						{ fn IFNULL(month3.count_fire_sc, 0) } AS count_fire_sc_3, 
						{ fn IFNULL(month3.count_prevention_ua, 0) } AS count_prevention_ua_3, 
						{ fn IFNULL(month3.count_prevention_uc, 0) } AS count_prevention_uc_3, 
						{ fn IFNULL(month3.count_prevention_sa, 0) } AS count_prevention_sa_3,
						{ fn IFNULL(month3.count_prevention_sc, 0) } AS count_prevention_sc_3, 
						{ fn IFNULL(month3.count_supervisor_ua, 0) } AS count_supervisor_ua_3, 
						{ fn IFNULL(month3.count_supervisor_uc, 0) } AS count_supervisor_uc_3, 
						{ fn IFNULL(month3.count_supervisor_sa, 0) } AS count_supervisor_sa_3,
						{ fn IFNULL(month3.count_supervisor_sc, 0) } AS count_supervisor_sc_3, 
						{ fn IFNULL(month3.count_fit_work_ua, 0) } AS count_fit_work_ua_3, 
						{ fn IFNULL(month3.count_fit_work_uc, 0) } AS count_fit_work_uc_3, 
						{ fn IFNULL(month3.count_fit_work_sa, 0) } AS count_fit_work_sa_3,
						{ fn IFNULL(month3.count_fit_work_sc, 0) } AS count_fit_work_sc_3, 
						{ fn IFNULL(month3.count_psychological_ua, 0) } AS count_psychological_ua_3, 
						{ fn IFNULL(month3.count_psychological_uc, 0) } AS count_psychological_uc_3, 
						{ fn IFNULL(month3.count_psychological_sa, 0) } AS count_psychological_sa_3,
						{ fn IFNULL(month3.count_psychological_sc, 0) } AS count_psychological_sc_3, 
						{ fn IFNULL(month3.count_posture_ua, 0) } AS count_posture_ua_3, 
						{ fn IFNULL(month3.count_posture_uc, 0) } AS count_posture_uc_3, 
						{ fn IFNULL(month3.count_posture_sa, 0) } AS count_posture_sa_3,
						{ fn IFNULL(month3.count_posture_sc, 0) } AS count_posture_sc_3, 
						{ fn IFNULL(month3.count_substance_ua, 0) } AS count_substance_ua_3, 
						{ fn IFNULL(month3.count_substance_uc, 0) } AS count_substance_uc_3, 
						{ fn IFNULL(month3.count_substance_sa, 0) } AS count_substance_sa_3,
						{ fn IFNULL(month3.count_substance_sc, 0) } AS count_substance_sc_3, 
						{ fn IFNULL(month3.count_hygiene_ua, 0) } AS count_hygiene_ua_3, 
						{ fn IFNULL(month3.count_hygiene_uc, 0) } AS count_hygiene_uc_3, 
						{ fn IFNULL(month3.count_hygiene_sa, 0) } AS count_hygiene_sa_3,
						{ fn IFNULL(month3.count_hygiene_sc, 0) } AS count_hygiene_sc_3, 
						{ fn IFNULL(month3.count_house_ua, 0) } AS count_house_ua_3, 
						{ fn IFNULL(month3.count_house_uc, 0) } AS count_house_uc_3, 
						{ fn IFNULL(month3.count_house_sa, 0) } AS count_house_sa_3,
						{ fn IFNULL(month3.count_house_sc, 0) } AS count_house_sc_3, 
						{ fn IFNULL(month3.count_standard_ua, 0) } AS count_standard_ua_3, 
						{ fn IFNULL(month3.count_standard_uc, 0) } AS count_standard_uc_3, 
						{ fn IFNULL(month3.count_standard_sa, 0) } AS count_standard_sa_3,
						{ fn IFNULL(month3.count_standard_sc, 0) } AS count_standard_sc_3, 
						{ fn IFNULL(month3.count_spill_ua, 0) } AS count_spill_ua_3, 
						{ fn IFNULL(month3.count_spill_uc, 0) } AS count_spill_uc_3, 
						{ fn IFNULL(month3.count_spill_sa, 0) } AS count_spill_sa_3,
						{ fn IFNULL(month3.count_spill_sc, 0) } AS count_spill_sc_3, 
						{ fn IFNULL(month3.count_waste_energy_ua, 0) } AS count_waste_energy_ua_3, 
						{ fn IFNULL(month3.count_waste_energy_uc, 0) } AS count_waste_energy_uc_3, 
						{ fn IFNULL(month3.count_waste_energy_sa, 0) } AS count_waste_energy_sa_3,
						{ fn IFNULL(month3.count_waste_energy_sc, 0) } AS count_waste_energy_sc_3, 
						{ fn IFNULL(month3.count_containment_ua, 0) } AS count_containment_ua_3, 
						{ fn IFNULL(month3.count_containment_uc, 0) } AS count_containment_uc_3, 
						{ fn IFNULL(month3.count_containment_sa, 0) } AS count_containment_sa_3,
						{ fn IFNULL(month3.count_containment_sc, 0) } AS count_containment_sc_3, 
						{ fn IFNULL(month3.count_absorbent_ua, 0) } AS count_absorbent_ua_3, 
						{ fn IFNULL(month3.count_absorbent_uc, 0) } AS count_absorbent_uc_3, 
						{ fn IFNULL(month3.count_absorbent_sa, 0) } AS count_absorbent_sa_3,
						{ fn IFNULL(month3.count_absorbent_sc, 0) } AS count_absorbent_sc_3, 
						{ fn IFNULL(month3.count_hira_ua, 0) } AS count_hira_ua_3, 
						{ fn IFNULL(month3.count_hira_uc, 0) } AS count_hira_uc_3, 
						{ fn IFNULL(month3.count_hira_sa, 0) } AS count_hira_sa_3,
						{ fn IFNULL(month3.count_hira_sc, 0) } AS count_hira_sc_3, 
						{ fn IFNULL(month3.count_ptw_ua, 0) } AS count_ptw_ua_3, 
						{ fn IFNULL(month3.count_ptw_uc, 0) } AS count_ptw_uc_3, 
						{ fn IFNULL(month3.count_ptw_sa, 0) } AS count_ptw_sa_3,
						{ fn IFNULL(month3.count_ptw_sc, 0) } AS count_ptw_sc_3, 
						{ fn IFNULL(month3.count_sop_ua, 0) } AS count_sop_ua_3, 
						{ fn IFNULL(month3.count_sop_uc, 0) } AS count_sop_uc_3, 
						{ fn IFNULL(month3.count_sop_sa, 0) } AS count_sop_sa_3,
						{ fn IFNULL(month3.count_sop_sc, 0) } AS count_sop_sc_3, 
						{ fn IFNULL(month3.count_msds_ua, 0) } AS count_msds_ua_3, 
						{ fn IFNULL(month3.count_msds_uc, 0) } AS count_msds_uc_3, 
						{ fn IFNULL(month3.count_msds_sa, 0) } AS count_msds_sa_3,
						{ fn IFNULL(month3.count_msds_sc, 0) } AS count_msds_sc_3, 
						{ fn IFNULL(month3.count_emergency_ua, 0) } AS count_emergency_ua_3, 
						{ fn IFNULL(month3.count_emergency_uc, 0) } AS count_emergency_uc_3, 
						{ fn IFNULL(month3.count_emergency_sa, 0) } AS count_emergency_sa_3,
						{ fn IFNULL(month3.count_emergency_sc, 0) } AS count_emergency_sc_3, 
						{ fn IFNULL(month3.count_certificates_ua, 0) } AS count_certificates_ua_3, 
						{ fn IFNULL(month3.count_certificates_uc, 0) } AS count_certificates_uc_3, 
						{ fn IFNULL(month3.count_certificates_sa, 0) } AS count_certificates_sa_3,
						{ fn IFNULL(month3.count_certificates_sc, 0) } AS count_certificates_sc_3, 
						{ fn IFNULL(month3.count_ppe_ua, 0) } AS count_ppe_ua_3, 
						{ fn IFNULL(month3.count_ppe_uc, 0) } AS count_ppe_uc_3, 
						{ fn IFNULL(month3.count_ppe_sa, 0) } AS count_ppe_sa_3,
						{ fn IFNULL(month3.count_ppe_sc, 0) } AS count_ppe_sc_3, 
						{ fn IFNULL(month3.count_hand_ua, 0) } AS count_hand_ua_3, 
						{ fn IFNULL(month3.count_hand_uc, 0) } AS count_hand_uc_3, 
						{ fn IFNULL(month3.count_hand_sa, 0) } AS count_hand_sa_3,
						{ fn IFNULL(month3.count_hand_sc, 0) } AS count_hand_sc_3, 
						{ fn IFNULL(month3.count_mechanical_ua, 0) } AS count_mechanical_ua_3, 
						{ fn IFNULL(month3.count_mechanical_uc, 0) } AS count_mechanical_uc_3, 
						{ fn IFNULL(month3.count_mechanical_sa, 0) } AS count_mechanical_sa_3,
						{ fn IFNULL(month3.count_mechanical_sc, 0) } AS count_mechanical_sc_3, 
						{ fn IFNULL(month3.count_electrical_ua, 0) } AS count_electrical_ua_3, 
						{ fn IFNULL(month3.count_electrical_uc, 0) } AS count_electrical_uc_3, 
						{ fn IFNULL(month3.count_electrical_sa, 0) } AS count_electrical_sa_3,
						{ fn IFNULL(month3.count_electrical_sc, 0) } AS count_electrical_sc_3, 
						{ fn IFNULL(month3.count_vehicular_ua, 0) } AS count_vehicular_ua_3, 
						{ fn IFNULL(month3.count_vehicular_uc, 0) } AS count_vehicular_uc_3, 
						{ fn IFNULL(month3.count_vehicular_sa, 0) } AS count_vehicular_sa_3,
						{ fn IFNULL(month3.count_vehicular_sc, 0) } AS count_vehicular_sc_3, 
						{ fn IFNULL(month3.count_substandard_ua, 0) } AS count_substandard_ua_3, 
						{ fn IFNULL(month3.count_substandard_uc, 0) } AS count_substandard_uc_3, 
						{ fn IFNULL(month3.count_substandard_sa, 0) } AS count_substandard_sa_3,
						{ fn IFNULL(month3.count_substandard_sc, 0) } AS count_substandard_sc_3, 
						{ fn IFNULL(month3.count_h2s_ua, 0) } AS count_h2s_ua_3, 
						{ fn IFNULL(month3.count_h2s_uc, 0) } AS count_h2s_uc_3, 
						{ fn IFNULL(month3.count_h2s_sa, 0) } AS count_h2s_sa_3,
						{ fn IFNULL(month3.count_h2s_sc, 0) } AS count_h2s_sc_3, 
						{ fn IFNULL(month3.count_workplace_health_ua, 0) } AS count_workplace_health_ua_3, 
						{ fn IFNULL(month3.count_workplace_health_uc, 0) } AS count_workplace_health_uc_3, 
						{ fn IFNULL(month3.count_workplace_health_sa, 0) } AS count_workplace_health_sa_3,
						{ fn IFNULL(month3.count_workplace_health_sc, 0) } AS count_workplace_health_sc_3,
						{ fn IFNULL(month4.count_accident_ua, 0) } AS count_accident_ua_4, 
						{ fn IFNULL(month4.count_accident_uc, 0) } AS count_accident_uc_4, 
						{ fn IFNULL(month4.count_accident_sa, 0) } AS count_accident_sa_4,
						{ fn IFNULL(month4.count_accident_sc, 0) } AS count_accident_sc_4, 
						{ fn IFNULL(month4.count_fire_ua, 0) } AS count_fire_ua_4, 
						{ fn IFNULL(month4.count_fire_uc, 0) } AS count_fire_uc_4, 
						{ fn IFNULL(month4.count_fire_sa, 0) } AS count_fire_sa_4,
						{ fn IFNULL(month4.count_fire_sc, 0) } AS count_fire_sc_4, 
						{ fn IFNULL(month4.count_prevention_ua, 0) } AS count_prevention_ua_4, 
						{ fn IFNULL(month4.count_prevention_uc, 0) } AS count_prevention_uc_4, 
						{ fn IFNULL(month4.count_prevention_sa, 0) } AS count_prevention_sa_4,
						{ fn IFNULL(month4.count_prevention_sc, 0) } AS count_prevention_sc_4, 
						{ fn IFNULL(month4.count_supervisor_ua, 0) } AS count_supervisor_ua_4, 
						{ fn IFNULL(month4.count_supervisor_uc, 0) } AS count_supervisor_uc_4, 
						{ fn IFNULL(month4.count_supervisor_sa, 0) } AS count_supervisor_sa_4,
						{ fn IFNULL(month4.count_supervisor_sc, 0) } AS count_supervisor_sc_4, 
						{ fn IFNULL(month4.count_fit_work_ua, 0) } AS count_fit_work_ua_4, 
						{ fn IFNULL(month4.count_fit_work_uc, 0) } AS count_fit_work_uc_4, 
						{ fn IFNULL(month4.count_fit_work_sa, 0) } AS count_fit_work_sa_4,
						{ fn IFNULL(month4.count_fit_work_sc, 0) } AS count_fit_work_sc_4, 
						{ fn IFNULL(month4.count_psychological_ua, 0) } AS count_psychological_ua_4, 
						{ fn IFNULL(month4.count_psychological_uc, 0) } AS count_psychological_uc_4, 
						{ fn IFNULL(month4.count_psychological_sa, 0) } AS count_psychological_sa_4,
						{ fn IFNULL(month4.count_psychological_sc, 0) } AS count_psychological_sc_4, 
						{ fn IFNULL(month4.count_posture_ua, 0) } AS count_posture_ua_4, 
						{ fn IFNULL(month4.count_posture_uc, 0) } AS count_posture_uc_4, 
						{ fn IFNULL(month4.count_posture_sa, 0) } AS count_posture_sa_4,
						{ fn IFNULL(month4.count_posture_sc, 0) } AS count_posture_sc_4, 
						{ fn IFNULL(month4.count_substance_ua, 0) } AS count_substance_ua_4, 
						{ fn IFNULL(month4.count_substance_uc, 0) } AS count_substance_uc_4, 
						{ fn IFNULL(month4.count_substance_sa, 0) } AS count_substance_sa_4,
						{ fn IFNULL(month4.count_substance_sc, 0) } AS count_substance_sc_4, 
						{ fn IFNULL(month4.count_hygiene_ua, 0) } AS count_hygiene_ua_4, 
						{ fn IFNULL(month4.count_hygiene_uc, 0) } AS count_hygiene_uc_4, 
						{ fn IFNULL(month4.count_hygiene_sa, 0) } AS count_hygiene_sa_4,
						{ fn IFNULL(month4.count_hygiene_sc, 0) } AS count_hygiene_sc_4, 
						{ fn IFNULL(month4.count_house_ua, 0) } AS count_house_ua_4, 
						{ fn IFNULL(month4.count_house_uc, 0) } AS count_house_uc_4, 
						{ fn IFNULL(month4.count_house_sa, 0) } AS count_house_sa_4,
						{ fn IFNULL(month4.count_house_sc, 0) } AS count_house_sc_4, 
						{ fn IFNULL(month4.count_standard_ua, 0) } AS count_standard_ua_4, 
						{ fn IFNULL(month4.count_standard_uc, 0) } AS count_standard_uc_4, 
						{ fn IFNULL(month4.count_standard_sa, 0) } AS count_standard_sa_4,
						{ fn IFNULL(month4.count_standard_sc, 0) } AS count_standard_sc_4, 
						{ fn IFNULL(month4.count_spill_ua, 0) } AS count_spill_ua_4, 
						{ fn IFNULL(month4.count_spill_uc, 0) } AS count_spill_uc_4, 
						{ fn IFNULL(month4.count_spill_sa, 0) } AS count_spill_sa_4,
						{ fn IFNULL(month4.count_spill_sc, 0) } AS count_spill_sc_4, 
						{ fn IFNULL(month4.count_waste_energy_ua, 0) } AS count_waste_energy_ua_4, 
						{ fn IFNULL(month4.count_waste_energy_uc, 0) } AS count_waste_energy_uc_4, 
						{ fn IFNULL(month4.count_waste_energy_sa, 0) } AS count_waste_energy_sa_4,
						{ fn IFNULL(month4.count_waste_energy_sc, 0) } AS count_waste_energy_sc_4, 
						{ fn IFNULL(month4.count_containment_ua, 0) } AS count_containment_ua_4, 
						{ fn IFNULL(month4.count_containment_uc, 0) } AS count_containment_uc_4, 
						{ fn IFNULL(month4.count_containment_sa, 0) } AS count_containment_sa_4,
						{ fn IFNULL(month4.count_containment_sc, 0) } AS count_containment_sc_4, 
						{ fn IFNULL(month4.count_absorbent_ua, 0) } AS count_absorbent_ua_4, 
						{ fn IFNULL(month4.count_absorbent_uc, 0) } AS count_absorbent_uc_4, 
						{ fn IFNULL(month4.count_absorbent_sa, 0) } AS count_absorbent_sa_4,
						{ fn IFNULL(month4.count_absorbent_sc, 0) } AS count_absorbent_sc_4, 
						{ fn IFNULL(month4.count_hira_ua, 0) } AS count_hira_ua_4, 
						{ fn IFNULL(month4.count_hira_uc, 0) } AS count_hira_uc_4, 
						{ fn IFNULL(month4.count_hira_sa, 0) } AS count_hira_sa_4,
						{ fn IFNULL(month4.count_hira_sc, 0) } AS count_hira_sc_4, 
						{ fn IFNULL(month4.count_ptw_ua, 0) } AS count_ptw_ua_4, 
						{ fn IFNULL(month4.count_ptw_uc, 0) } AS count_ptw_uc_4, 
						{ fn IFNULL(month4.count_ptw_sa, 0) } AS count_ptw_sa_4,
						{ fn IFNULL(month4.count_ptw_sc, 0) } AS count_ptw_sc_4, 
						{ fn IFNULL(month4.count_sop_ua, 0) } AS count_sop_ua_4, 
						{ fn IFNULL(month4.count_sop_uc, 0) } AS count_sop_uc_4, 
						{ fn IFNULL(month4.count_sop_sa, 0) } AS count_sop_sa_4,
						{ fn IFNULL(month4.count_sop_sc, 0) } AS count_sop_sc_4, 
						{ fn IFNULL(month4.count_msds_ua, 0) } AS count_msds_ua_4, 
						{ fn IFNULL(month4.count_msds_uc, 0) } AS count_msds_uc_4, 
						{ fn IFNULL(month4.count_msds_sa, 0) } AS count_msds_sa_4,
						{ fn IFNULL(month4.count_msds_sc, 0) } AS count_msds_sc_4, 
						{ fn IFNULL(month4.count_emergency_ua, 0) } AS count_emergency_ua_4, 
						{ fn IFNULL(month4.count_emergency_uc, 0) } AS count_emergency_uc_4, 
						{ fn IFNULL(month4.count_emergency_sa, 0) } AS count_emergency_sa_4,
						{ fn IFNULL(month4.count_emergency_sc, 0) } AS count_emergency_sc_4, 
						{ fn IFNULL(month4.count_certificates_ua, 0) } AS count_certificates_ua_4, 
						{ fn IFNULL(month4.count_certificates_uc, 0) } AS count_certificates_uc_4, 
						{ fn IFNULL(month4.count_certificates_sa, 0) } AS count_certificates_sa_4,
						{ fn IFNULL(month4.count_certificates_sc, 0) } AS count_certificates_sc_4, 
						{ fn IFNULL(month4.count_ppe_ua, 0) } AS count_ppe_ua_4, 
						{ fn IFNULL(month4.count_ppe_uc, 0) } AS count_ppe_uc_4, 
						{ fn IFNULL(month4.count_ppe_sa, 0) } AS count_ppe_sa_4,
						{ fn IFNULL(month4.count_ppe_sc, 0) } AS count_ppe_sc_4, 
						{ fn IFNULL(month4.count_hand_ua, 0) } AS count_hand_ua_4, 
						{ fn IFNULL(month4.count_hand_uc, 0) } AS count_hand_uc_4, 
						{ fn IFNULL(month4.count_hand_sa, 0) } AS count_hand_sa_4,
						{ fn IFNULL(month4.count_hand_sc, 0) } AS count_hand_sc_4, 
						{ fn IFNULL(month4.count_mechanical_ua, 0) } AS count_mechanical_ua_4, 
						{ fn IFNULL(month4.count_mechanical_uc, 0) } AS count_mechanical_uc_4, 
						{ fn IFNULL(month4.count_mechanical_sa, 0) } AS count_mechanical_sa_4,
						{ fn IFNULL(month4.count_mechanical_sc, 0) } AS count_mechanical_sc_4, 
						{ fn IFNULL(month4.count_electrical_ua, 0) } AS count_electrical_ua_4, 
						{ fn IFNULL(month4.count_electrical_uc, 0) } AS count_electrical_uc_4, 
						{ fn IFNULL(month4.count_electrical_sa, 0) } AS count_electrical_sa_4,
						{ fn IFNULL(month4.count_electrical_sc, 0) } AS count_electrical_sc_4, 
						{ fn IFNULL(month4.count_vehicular_ua, 0) } AS count_vehicular_ua_4, 
						{ fn IFNULL(month4.count_vehicular_uc, 0) } AS count_vehicular_uc_4, 
						{ fn IFNULL(month4.count_vehicular_sa, 0) } AS count_vehicular_sa_4,
						{ fn IFNULL(month4.count_vehicular_sc, 0) } AS count_vehicular_sc_4, 
						{ fn IFNULL(month4.count_substandard_ua, 0) } AS count_substandard_ua_4, 
						{ fn IFNULL(month4.count_substandard_uc, 0) } AS count_substandard_uc_4, 
						{ fn IFNULL(month4.count_substandard_sa, 0) } AS count_substandard_sa_4,
						{ fn IFNULL(month4.count_substandard_sc, 0) } AS count_substandard_sc_4, 
						{ fn IFNULL(month4.count_h2s_ua, 0) } AS count_h2s_ua_4, 
						{ fn IFNULL(month4.count_h2s_uc, 0) } AS count_h2s_uc_4, 
						{ fn IFNULL(month4.count_h2s_sa, 0) } AS count_h2s_sa_4,
						{ fn IFNULL(month4.count_h2s_sc, 0) } AS count_h2s_sc_4, 
						{ fn IFNULL(month4.count_workplace_health_ua, 0) } AS count_workplace_health_ua_4, 
						{ fn IFNULL(month4.count_workplace_health_uc, 0) } AS count_workplace_health_uc_4, 
						{ fn IFNULL(month4.count_workplace_health_sa, 0) } AS count_workplace_health_sa_4,
						{ fn IFNULL(month4.count_workplace_health_sc, 0) } AS count_workplace_health_sc_4,
						{ fn IFNULL(month5.count_accident_ua, 0) } AS count_accident_ua_5, 
						{ fn IFNULL(month5.count_accident_uc, 0) } AS count_accident_uc_5, 
						{ fn IFNULL(month5.count_accident_sa, 0) } AS count_accident_sa_5,
						{ fn IFNULL(month5.count_accident_sc, 0) } AS count_accident_sc_5, 
						{ fn IFNULL(month5.count_fire_ua, 0) } AS count_fire_ua_5, 
						{ fn IFNULL(month5.count_fire_uc, 0) } AS count_fire_uc_5, 
						{ fn IFNULL(month5.count_fire_sa, 0) } AS count_fire_sa_5,
						{ fn IFNULL(month5.count_fire_sc, 0) } AS count_fire_sc_5, 
						{ fn IFNULL(month5.count_prevention_ua, 0) } AS count_prevention_ua_5, 
						{ fn IFNULL(month5.count_prevention_uc, 0) } AS count_prevention_uc_5, 
						{ fn IFNULL(month5.count_prevention_sa, 0) } AS count_prevention_sa_5,
						{ fn IFNULL(month5.count_prevention_sc, 0) } AS count_prevention_sc_5, 
						{ fn IFNULL(month5.count_supervisor_ua, 0) } AS count_supervisor_ua_5, 
						{ fn IFNULL(month5.count_supervisor_uc, 0) } AS count_supervisor_uc_5, 
						{ fn IFNULL(month5.count_supervisor_sa, 0) } AS count_supervisor_sa_5,
						{ fn IFNULL(month5.count_supervisor_sc, 0) } AS count_supervisor_sc_5, 
						{ fn IFNULL(month5.count_fit_work_ua, 0) } AS count_fit_work_ua_5, 
						{ fn IFNULL(month5.count_fit_work_uc, 0) } AS count_fit_work_uc_5, 
						{ fn IFNULL(month5.count_fit_work_sa, 0) } AS count_fit_work_sa_5,
						{ fn IFNULL(month5.count_fit_work_sc, 0) } AS count_fit_work_sc_5, 
						{ fn IFNULL(month5.count_psychological_ua, 0) } AS count_psychological_ua_5, 
						{ fn IFNULL(month5.count_psychological_uc, 0) } AS count_psychological_uc_5, 
						{ fn IFNULL(month5.count_psychological_sa, 0) } AS count_psychological_sa_5,
						{ fn IFNULL(month5.count_psychological_sc, 0) } AS count_psychological_sc_5, 
						{ fn IFNULL(month5.count_posture_ua, 0) } AS count_posture_ua_5, 
						{ fn IFNULL(month5.count_posture_uc, 0) } AS count_posture_uc_5, 
						{ fn IFNULL(month5.count_posture_sa, 0) } AS count_posture_sa_5,
						{ fn IFNULL(month5.count_posture_sc, 0) } AS count_posture_sc_5, 
						{ fn IFNULL(month5.count_substance_ua, 0) } AS count_substance_ua_5, 
						{ fn IFNULL(month5.count_substance_uc, 0) } AS count_substance_uc_5, 
						{ fn IFNULL(month5.count_substance_sa, 0) } AS count_substance_sa_5,
						{ fn IFNULL(month5.count_substance_sc, 0) } AS count_substance_sc_5, 
						{ fn IFNULL(month5.count_hygiene_ua, 0) } AS count_hygiene_ua_5, 
						{ fn IFNULL(month5.count_hygiene_uc, 0) } AS count_hygiene_uc_5, 
						{ fn IFNULL(month5.count_hygiene_sa, 0) } AS count_hygiene_sa_5,
						{ fn IFNULL(month5.count_hygiene_sc, 0) } AS count_hygiene_sc_5, 
						{ fn IFNULL(month5.count_house_ua, 0) } AS count_house_ua_5, 
						{ fn IFNULL(month5.count_house_uc, 0) } AS count_house_uc_5, 
						{ fn IFNULL(month5.count_house_sa, 0) } AS count_house_sa_5,
						{ fn IFNULL(month5.count_house_sc, 0) } AS count_house_sc_5, 
						{ fn IFNULL(month5.count_standard_ua, 0) } AS count_standard_ua_5, 
						{ fn IFNULL(month5.count_standard_uc, 0) } AS count_standard_uc_5, 
						{ fn IFNULL(month5.count_standard_sa, 0) } AS count_standard_sa_5,
						{ fn IFNULL(month5.count_standard_sc, 0) } AS count_standard_sc_5, 
						{ fn IFNULL(month5.count_spill_ua, 0) } AS count_spill_ua_5, 
						{ fn IFNULL(month5.count_spill_uc, 0) } AS count_spill_uc_5, 
						{ fn IFNULL(month5.count_spill_sa, 0) } AS count_spill_sa_5,
						{ fn IFNULL(month5.count_spill_sc, 0) } AS count_spill_sc_5, 
						{ fn IFNULL(month5.count_waste_energy_ua, 0) } AS count_waste_energy_ua_5, 
						{ fn IFNULL(month5.count_waste_energy_uc, 0) } AS count_waste_energy_uc_5, 
						{ fn IFNULL(month5.count_waste_energy_sa, 0) } AS count_waste_energy_sa_5,
						{ fn IFNULL(month5.count_waste_energy_sc, 0) } AS count_waste_energy_sc_5, 
						{ fn IFNULL(month5.count_containment_ua, 0) } AS count_containment_ua_5, 
						{ fn IFNULL(month5.count_containment_uc, 0) } AS count_containment_uc_5, 
						{ fn IFNULL(month5.count_containment_sa, 0) } AS count_containment_sa_5,
						{ fn IFNULL(month5.count_containment_sc, 0) } AS count_containment_sc_5, 
						{ fn IFNULL(month5.count_absorbent_ua, 0) } AS count_absorbent_ua_5, 
						{ fn IFNULL(month5.count_absorbent_uc, 0) } AS count_absorbent_uc_5, 
						{ fn IFNULL(month5.count_absorbent_sa, 0) } AS count_absorbent_sa_5,
						{ fn IFNULL(month5.count_absorbent_sc, 0) } AS count_absorbent_sc_5, 
						{ fn IFNULL(month5.count_hira_ua, 0) } AS count_hira_ua_5, 
						{ fn IFNULL(month5.count_hira_uc, 0) } AS count_hira_uc_5, 
						{ fn IFNULL(month5.count_hira_sa, 0) } AS count_hira_sa_5,
						{ fn IFNULL(month5.count_hira_sc, 0) } AS count_hira_sc_5, 
						{ fn IFNULL(month5.count_ptw_ua, 0) } AS count_ptw_ua_5, 
						{ fn IFNULL(month5.count_ptw_uc, 0) } AS count_ptw_uc_5, 
						{ fn IFNULL(month5.count_ptw_sa, 0) } AS count_ptw_sa_5,
						{ fn IFNULL(month5.count_ptw_sc, 0) } AS count_ptw_sc_5, 
						{ fn IFNULL(month5.count_sop_ua, 0) } AS count_sop_ua_5, 
						{ fn IFNULL(month5.count_sop_uc, 0) } AS count_sop_uc_5, 
						{ fn IFNULL(month5.count_sop_sa, 0) } AS count_sop_sa_5,
						{ fn IFNULL(month5.count_sop_sc, 0) } AS count_sop_sc_5, 
						{ fn IFNULL(month5.count_msds_ua, 0) } AS count_msds_ua_5, 
						{ fn IFNULL(month5.count_msds_uc, 0) } AS count_msds_uc_5, 
						{ fn IFNULL(month5.count_msds_sa, 0) } AS count_msds_sa_5,
						{ fn IFNULL(month5.count_msds_sc, 0) } AS count_msds_sc_5, 
						{ fn IFNULL(month5.count_emergency_ua, 0) } AS count_emergency_ua_5, 
						{ fn IFNULL(month5.count_emergency_uc, 0) } AS count_emergency_uc_5, 
						{ fn IFNULL(month5.count_emergency_sa, 0) } AS count_emergency_sa_5,
						{ fn IFNULL(month5.count_emergency_sc, 0) } AS count_emergency_sc_5, 
						{ fn IFNULL(month5.count_certificates_ua, 0) } AS count_certificates_ua_5, 
						{ fn IFNULL(month5.count_certificates_uc, 0) } AS count_certificates_uc_5, 
						{ fn IFNULL(month5.count_certificates_sa, 0) } AS count_certificates_sa_5,
						{ fn IFNULL(month5.count_certificates_sc, 0) } AS count_certificates_sc_5, 
						{ fn IFNULL(month5.count_ppe_ua, 0) } AS count_ppe_ua_5, 
						{ fn IFNULL(month5.count_ppe_uc, 0) } AS count_ppe_uc_5, 
						{ fn IFNULL(month5.count_ppe_sa, 0) } AS count_ppe_sa_5,
						{ fn IFNULL(month5.count_ppe_sc, 0) } AS count_ppe_sc_5, 
						{ fn IFNULL(month5.count_hand_ua, 0) } AS count_hand_ua_5, 
						{ fn IFNULL(month5.count_hand_uc, 0) } AS count_hand_uc_5, 
						{ fn IFNULL(month5.count_hand_sa, 0) } AS count_hand_sa_5,
						{ fn IFNULL(month5.count_hand_sc, 0) } AS count_hand_sc_5, 
						{ fn IFNULL(month5.count_mechanical_ua, 0) } AS count_mechanical_ua_5, 
						{ fn IFNULL(month5.count_mechanical_uc, 0) } AS count_mechanical_uc_5, 
						{ fn IFNULL(month5.count_mechanical_sa, 0) } AS count_mechanical_sa_5,
						{ fn IFNULL(month5.count_mechanical_sc, 0) } AS count_mechanical_sc_5, 
						{ fn IFNULL(month5.count_electrical_ua, 0) } AS count_electrical_ua_5, 
						{ fn IFNULL(month5.count_electrical_uc, 0) } AS count_electrical_uc_5, 
						{ fn IFNULL(month5.count_electrical_sa, 0) } AS count_electrical_sa_5,
						{ fn IFNULL(month5.count_electrical_sc, 0) } AS count_electrical_sc_5, 
						{ fn IFNULL(month5.count_vehicular_ua, 0) } AS count_vehicular_ua_5, 
						{ fn IFNULL(month5.count_vehicular_uc, 0) } AS count_vehicular_uc_5, 
						{ fn IFNULL(month5.count_vehicular_sa, 0) } AS count_vehicular_sa_5,
						{ fn IFNULL(month5.count_vehicular_sc, 0) } AS count_vehicular_sc_5, 
						{ fn IFNULL(month5.count_substandard_ua, 0) } AS count_substandard_ua_5, 
						{ fn IFNULL(month5.count_substandard_uc, 0) } AS count_substandard_uc_5, 
						{ fn IFNULL(month5.count_substandard_sa, 0) } AS count_substandard_sa_5,
						{ fn IFNULL(month5.count_substandard_sc, 0) } AS count_substandard_sc_5, 
						{ fn IFNULL(month5.count_h2s_ua, 0) } AS count_h2s_ua_5, 
						{ fn IFNULL(month5.count_h2s_uc, 0) } AS count_h2s_uc_5, 
						{ fn IFNULL(month5.count_h2s_sa, 0) } AS count_h2s_sa_5,
						{ fn IFNULL(month5.count_h2s_sc, 0) } AS count_h2s_sc_5, 
						{ fn IFNULL(month5.count_workplace_health_ua, 0) } AS count_workplace_health_ua_5, 
						{ fn IFNULL(month5.count_workplace_health_uc, 0) } AS count_workplace_health_uc_5, 
						{ fn IFNULL(month5.count_workplace_health_sa, 0) } AS count_workplace_health_sa_5,
						{ fn IFNULL(month5.count_workplace_health_sc, 0) } AS count_workplace_health_sc_5,
						{ fn IFNULL(month6.count_accident_ua, 0) } AS count_accident_ua_6, 
						{ fn IFNULL(month6.count_accident_uc, 0) } AS count_accident_uc_6, 
						{ fn IFNULL(month6.count_accident_sa, 0) } AS count_accident_sa_6,
						{ fn IFNULL(month6.count_accident_sc, 0) } AS count_accident_sc_6, 
						{ fn IFNULL(month6.count_fire_ua, 0) } AS count_fire_ua_6, 
						{ fn IFNULL(month6.count_fire_uc, 0) } AS count_fire_uc_6, 
						{ fn IFNULL(month6.count_fire_sa, 0) } AS count_fire_sa_6,
						{ fn IFNULL(month6.count_fire_sc, 0) } AS count_fire_sc_6, 
						{ fn IFNULL(month6.count_prevention_ua, 0) } AS count_prevention_ua_6, 
						{ fn IFNULL(month6.count_prevention_uc, 0) } AS count_prevention_uc_6, 
						{ fn IFNULL(month6.count_prevention_sa, 0) } AS count_prevention_sa_6,
						{ fn IFNULL(month6.count_prevention_sc, 0) } AS count_prevention_sc_6, 
						{ fn IFNULL(month6.count_supervisor_ua, 0) } AS count_supervisor_ua_6, 
						{ fn IFNULL(month6.count_supervisor_uc, 0) } AS count_supervisor_uc_6, 
						{ fn IFNULL(month6.count_supervisor_sa, 0) } AS count_supervisor_sa_6,
						{ fn IFNULL(month6.count_supervisor_sc, 0) } AS count_supervisor_sc_6, 
						{ fn IFNULL(month6.count_fit_work_ua, 0) } AS count_fit_work_ua_6, 
						{ fn IFNULL(month6.count_fit_work_uc, 0) } AS count_fit_work_uc_6, 
						{ fn IFNULL(month6.count_fit_work_sa, 0) } AS count_fit_work_sa_6,
						{ fn IFNULL(month6.count_fit_work_sc, 0) } AS count_fit_work_sc_6, 
						{ fn IFNULL(month6.count_psychological_ua, 0) } AS count_psychological_ua_6, 
						{ fn IFNULL(month6.count_psychological_uc, 0) } AS count_psychological_uc_6, 
						{ fn IFNULL(month6.count_psychological_sa, 0) } AS count_psychological_sa_6,
						{ fn IFNULL(month6.count_psychological_sc, 0) } AS count_psychological_sc_6, 
						{ fn IFNULL(month6.count_posture_ua, 0) } AS count_posture_ua_6, 
						{ fn IFNULL(month6.count_posture_uc, 0) } AS count_posture_uc_6, 
						{ fn IFNULL(month6.count_posture_sa, 0) } AS count_posture_sa_6,
						{ fn IFNULL(month6.count_posture_sc, 0) } AS count_posture_sc_6, 
						{ fn IFNULL(month6.count_substance_ua, 0) } AS count_substance_ua_6, 
						{ fn IFNULL(month6.count_substance_uc, 0) } AS count_substance_uc_6, 
						{ fn IFNULL(month6.count_substance_sa, 0) } AS count_substance_sa_6,
						{ fn IFNULL(month6.count_substance_sc, 0) } AS count_substance_sc_6, 
						{ fn IFNULL(month6.count_hygiene_ua, 0) } AS count_hygiene_ua_6, 
						{ fn IFNULL(month6.count_hygiene_uc, 0) } AS count_hygiene_uc_6, 
						{ fn IFNULL(month6.count_hygiene_sa, 0) } AS count_hygiene_sa_6,
						{ fn IFNULL(month6.count_hygiene_sc, 0) } AS count_hygiene_sc_6, 
						{ fn IFNULL(month6.count_house_ua, 0) } AS count_house_ua_6, 
						{ fn IFNULL(month6.count_house_uc, 0) } AS count_house_uc_6, 
						{ fn IFNULL(month6.count_house_sa, 0) } AS count_house_sa_6,
						{ fn IFNULL(month6.count_house_sc, 0) } AS count_house_sc_6, 
						{ fn IFNULL(month6.count_standard_ua, 0) } AS count_standard_ua_6, 
						{ fn IFNULL(month6.count_standard_uc, 0) } AS count_standard_uc_6, 
						{ fn IFNULL(month6.count_standard_sa, 0) } AS count_standard_sa_6,
						{ fn IFNULL(month6.count_standard_sc, 0) } AS count_standard_sc_6, 
						{ fn IFNULL(month6.count_spill_ua, 0) } AS count_spill_ua_6, 
						{ fn IFNULL(month6.count_spill_uc, 0) } AS count_spill_uc_6, 
						{ fn IFNULL(month6.count_spill_sa, 0) } AS count_spill_sa_6,
						{ fn IFNULL(month6.count_spill_sc, 0) } AS count_spill_sc_6, 
						{ fn IFNULL(month6.count_waste_energy_ua, 0) } AS count_waste_energy_ua_6, 
						{ fn IFNULL(month6.count_waste_energy_uc, 0) } AS count_waste_energy_uc_6, 
						{ fn IFNULL(month6.count_waste_energy_sa, 0) } AS count_waste_energy_sa_6,
						{ fn IFNULL(month6.count_waste_energy_sc, 0) } AS count_waste_energy_sc_6, 
						{ fn IFNULL(month6.count_containment_ua, 0) } AS count_containment_ua_6, 
						{ fn IFNULL(month6.count_containment_uc, 0) } AS count_containment_uc_6, 
						{ fn IFNULL(month6.count_containment_sa, 0) } AS count_containment_sa_6,
						{ fn IFNULL(month6.count_containment_sc, 0) } AS count_containment_sc_6, 
						{ fn IFNULL(month6.count_absorbent_ua, 0) } AS count_absorbent_ua_6, 
						{ fn IFNULL(month6.count_absorbent_uc, 0) } AS count_absorbent_uc_6, 
						{ fn IFNULL(month6.count_absorbent_sa, 0) } AS count_absorbent_sa_6,
						{ fn IFNULL(month6.count_absorbent_sc, 0) } AS count_absorbent_sc_6, 
						{ fn IFNULL(month6.count_hira_ua, 0) } AS count_hira_ua_6, 
						{ fn IFNULL(month6.count_hira_uc, 0) } AS count_hira_uc_6, 
						{ fn IFNULL(month6.count_hira_sa, 0) } AS count_hira_sa_6,
						{ fn IFNULL(month6.count_hira_sc, 0) } AS count_hira_sc_6, 
						{ fn IFNULL(month6.count_ptw_ua, 0) } AS count_ptw_ua_6, 
						{ fn IFNULL(month6.count_ptw_uc, 0) } AS count_ptw_uc_6, 
						{ fn IFNULL(month6.count_ptw_sa, 0) } AS count_ptw_sa_6,
						{ fn IFNULL(month6.count_ptw_sc, 0) } AS count_ptw_sc_6, 
						{ fn IFNULL(month6.count_sop_ua, 0) } AS count_sop_ua_6, 
						{ fn IFNULL(month6.count_sop_uc, 0) } AS count_sop_uc_6, 
						{ fn IFNULL(month6.count_sop_sa, 0) } AS count_sop_sa_6,
						{ fn IFNULL(month6.count_sop_sc, 0) } AS count_sop_sc_6, 
						{ fn IFNULL(month6.count_msds_ua, 0) } AS count_msds_ua_6, 
						{ fn IFNULL(month6.count_msds_uc, 0) } AS count_msds_uc_6, 
						{ fn IFNULL(month6.count_msds_sa, 0) } AS count_msds_sa_6,
						{ fn IFNULL(month6.count_msds_sc, 0) } AS count_msds_sc_6, 
						{ fn IFNULL(month6.count_emergency_ua, 0) } AS count_emergency_ua_6, 
						{ fn IFNULL(month6.count_emergency_uc, 0) } AS count_emergency_uc_6, 
						{ fn IFNULL(month6.count_emergency_sa, 0) } AS count_emergency_sa_6,
						{ fn IFNULL(month6.count_emergency_sc, 0) } AS count_emergency_sc_6, 
						{ fn IFNULL(month6.count_certificates_ua, 0) } AS count_certificates_ua_6, 
						{ fn IFNULL(month6.count_certificates_uc, 0) } AS count_certificates_uc_6, 
						{ fn IFNULL(month6.count_certificates_sa, 0) } AS count_certificates_sa_6,
						{ fn IFNULL(month6.count_certificates_sc, 0) } AS count_certificates_sc_6, 
						{ fn IFNULL(month6.count_ppe_ua, 0) } AS count_ppe_ua_6, 
						{ fn IFNULL(month6.count_ppe_uc, 0) } AS count_ppe_uc_6, 
						{ fn IFNULL(month6.count_ppe_sa, 0) } AS count_ppe_sa_6,
						{ fn IFNULL(month6.count_ppe_sc, 0) } AS count_ppe_sc_6, 
						{ fn IFNULL(month6.count_hand_ua, 0) } AS count_hand_ua_6, 
						{ fn IFNULL(month6.count_hand_uc, 0) } AS count_hand_uc_6, 
						{ fn IFNULL(month6.count_hand_sa, 0) } AS count_hand_sa_6,
						{ fn IFNULL(month6.count_hand_sc, 0) } AS count_hand_sc_6, 
						{ fn IFNULL(month6.count_mechanical_ua, 0) } AS count_mechanical_ua_6, 
						{ fn IFNULL(month6.count_mechanical_uc, 0) } AS count_mechanical_uc_6, 
						{ fn IFNULL(month6.count_mechanical_sa, 0) } AS count_mechanical_sa_6,
						{ fn IFNULL(month6.count_mechanical_sc, 0) } AS count_mechanical_sc_6, 
						{ fn IFNULL(month6.count_electrical_ua, 0) } AS count_electrical_ua_6, 
						{ fn IFNULL(month6.count_electrical_uc, 0) } AS count_electrical_uc_6, 
						{ fn IFNULL(month6.count_electrical_sa, 0) } AS count_electrical_sa_6,
						{ fn IFNULL(month6.count_electrical_sc, 0) } AS count_electrical_sc_6, 
						{ fn IFNULL(month6.count_vehicular_ua, 0) } AS count_vehicular_ua_6, 
						{ fn IFNULL(month6.count_vehicular_uc, 0) } AS count_vehicular_uc_6, 
						{ fn IFNULL(month6.count_vehicular_sa, 0) } AS count_vehicular_sa_6,
						{ fn IFNULL(month6.count_vehicular_sc, 0) } AS count_vehicular_sc_6, 
						{ fn IFNULL(month6.count_substandard_ua, 0) } AS count_substandard_ua_6, 
						{ fn IFNULL(month6.count_substandard_uc, 0) } AS count_substandard_uc_6, 
						{ fn IFNULL(month6.count_substandard_sa, 0) } AS count_substandard_sa_6,
						{ fn IFNULL(month6.count_substandard_sc, 0) } AS count_substandard_sc_6, 
						{ fn IFNULL(month6.count_h2s_ua, 0) } AS count_h2s_ua_6, 
						{ fn IFNULL(month6.count_h2s_uc, 0) } AS count_h2s_uc_6, 
						{ fn IFNULL(month6.count_h2s_sa, 0) } AS count_h2s_sa_6,
						{ fn IFNULL(month6.count_h2s_sc, 0) } AS count_h2s_sc_6, 
						{ fn IFNULL(month6.count_workplace_health_ua, 0) } AS count_workplace_health_ua_6, 
						{ fn IFNULL(month6.count_workplace_health_uc, 0) } AS count_workplace_health_uc_6, 
						{ fn IFNULL(month6.count_workplace_health_sa, 0) } AS count_workplace_health_sa_6,
						{ fn IFNULL(month6.count_workplace_health_sc, 0) } AS count_workplace_health_sc_6,
						{ fn IFNULL(month7.count_accident_ua, 0) } AS count_accident_ua_7, 
						{ fn IFNULL(month7.count_accident_uc, 0) } AS count_accident_uc_7, 
						{ fn IFNULL(month7.count_accident_sa, 0) } AS count_accident_sa_7,
						{ fn IFNULL(month7.count_accident_sc, 0) } AS count_accident_sc_7, 
						{ fn IFNULL(month7.count_fire_ua, 0) } AS count_fire_ua_7, 
						{ fn IFNULL(month7.count_fire_uc, 0) } AS count_fire_uc_7, 
						{ fn IFNULL(month7.count_fire_sa, 0) } AS count_fire_sa_7,
						{ fn IFNULL(month7.count_fire_sc, 0) } AS count_fire_sc_7, 
						{ fn IFNULL(month7.count_prevention_ua, 0) } AS count_prevention_ua_7, 
						{ fn IFNULL(month7.count_prevention_uc, 0) } AS count_prevention_uc_7, 
						{ fn IFNULL(month7.count_prevention_sa, 0) } AS count_prevention_sa_7,
						{ fn IFNULL(month7.count_prevention_sc, 0) } AS count_prevention_sc_7, 
						{ fn IFNULL(month7.count_supervisor_ua, 0) } AS count_supervisor_ua_7, 
						{ fn IFNULL(month7.count_supervisor_uc, 0) } AS count_supervisor_uc_7, 
						{ fn IFNULL(month7.count_supervisor_sa, 0) } AS count_supervisor_sa_7,
						{ fn IFNULL(month7.count_supervisor_sc, 0) } AS count_supervisor_sc_7, 
						{ fn IFNULL(month7.count_fit_work_ua, 0) } AS count_fit_work_ua_7, 
						{ fn IFNULL(month7.count_fit_work_uc, 0) } AS count_fit_work_uc_7, 
						{ fn IFNULL(month7.count_fit_work_sa, 0) } AS count_fit_work_sa_7,
						{ fn IFNULL(month7.count_fit_work_sc, 0) } AS count_fit_work_sc_7, 
						{ fn IFNULL(month7.count_psychological_ua, 0) } AS count_psychological_ua_7, 
						{ fn IFNULL(month7.count_psychological_uc, 0) } AS count_psychological_uc_7, 
						{ fn IFNULL(month7.count_psychological_sa, 0) } AS count_psychological_sa_7,
						{ fn IFNULL(month7.count_psychological_sc, 0) } AS count_psychological_sc_7, 
						{ fn IFNULL(month7.count_posture_ua, 0) } AS count_posture_ua_7, 
						{ fn IFNULL(month7.count_posture_uc, 0) } AS count_posture_uc_7, 
						{ fn IFNULL(month7.count_posture_sa, 0) } AS count_posture_sa_7,
						{ fn IFNULL(month7.count_posture_sc, 0) } AS count_posture_sc_7, 
						{ fn IFNULL(month7.count_substance_ua, 0) } AS count_substance_ua_7, 
						{ fn IFNULL(month7.count_substance_uc, 0) } AS count_substance_uc_7, 
						{ fn IFNULL(month7.count_substance_sa, 0) } AS count_substance_sa_7,
						{ fn IFNULL(month7.count_substance_sc, 0) } AS count_substance_sc_7, 
						{ fn IFNULL(month7.count_hygiene_ua, 0) } AS count_hygiene_ua_7, 
						{ fn IFNULL(month7.count_hygiene_uc, 0) } AS count_hygiene_uc_7, 
						{ fn IFNULL(month7.count_hygiene_sa, 0) } AS count_hygiene_sa_7,
						{ fn IFNULL(month7.count_hygiene_sc, 0) } AS count_hygiene_sc_7, 
						{ fn IFNULL(month7.count_house_ua, 0) } AS count_house_ua_7, 
						{ fn IFNULL(month7.count_house_uc, 0) } AS count_house_uc_7, 
						{ fn IFNULL(month7.count_house_sa, 0) } AS count_house_sa_7,
						{ fn IFNULL(month7.count_house_sc, 0) } AS count_house_sc_7, 
						{ fn IFNULL(month7.count_standard_ua, 0) } AS count_standard_ua_7, 
						{ fn IFNULL(month7.count_standard_uc, 0) } AS count_standard_uc_7, 
						{ fn IFNULL(month7.count_standard_sa, 0) } AS count_standard_sa_7,
						{ fn IFNULL(month7.count_standard_sc, 0) } AS count_standard_sc_7, 
						{ fn IFNULL(month7.count_spill_ua, 0) } AS count_spill_ua_7, 
						{ fn IFNULL(month7.count_spill_uc, 0) } AS count_spill_uc_7, 
						{ fn IFNULL(month7.count_spill_sa, 0) } AS count_spill_sa_7,
						{ fn IFNULL(month7.count_spill_sc, 0) } AS count_spill_sc_7, 
						{ fn IFNULL(month7.count_waste_energy_ua, 0) } AS count_waste_energy_ua_7, 
						{ fn IFNULL(month7.count_waste_energy_uc, 0) } AS count_waste_energy_uc_7, 
						{ fn IFNULL(month7.count_waste_energy_sa, 0) } AS count_waste_energy_sa_7,
						{ fn IFNULL(month7.count_waste_energy_sc, 0) } AS count_waste_energy_sc_7, 
						{ fn IFNULL(month7.count_containment_ua, 0) } AS count_containment_ua_7, 
						{ fn IFNULL(month7.count_containment_uc, 0) } AS count_containment_uc_7, 
						{ fn IFNULL(month7.count_containment_sa, 0) } AS count_containment_sa_7,
						{ fn IFNULL(month7.count_containment_sc, 0) } AS count_containment_sc_7, 
						{ fn IFNULL(month7.count_absorbent_ua, 0) } AS count_absorbent_ua_7, 
						{ fn IFNULL(month7.count_absorbent_uc, 0) } AS count_absorbent_uc_7, 
						{ fn IFNULL(month7.count_absorbent_sa, 0) } AS count_absorbent_sa_7,
						{ fn IFNULL(month7.count_absorbent_sc, 0) } AS count_absorbent_sc_7, 
						{ fn IFNULL(month7.count_hira_ua, 0) } AS count_hira_ua_7, 
						{ fn IFNULL(month7.count_hira_uc, 0) } AS count_hira_uc_7, 
						{ fn IFNULL(month7.count_hira_sa, 0) } AS count_hira_sa_7,
						{ fn IFNULL(month7.count_hira_sc, 0) } AS count_hira_sc_7, 
						{ fn IFNULL(month7.count_ptw_ua, 0) } AS count_ptw_ua_7, 
						{ fn IFNULL(month7.count_ptw_uc, 0) } AS count_ptw_uc_7, 
						{ fn IFNULL(month7.count_ptw_sa, 0) } AS count_ptw_sa_7,
						{ fn IFNULL(month7.count_ptw_sc, 0) } AS count_ptw_sc_7, 
						{ fn IFNULL(month7.count_sop_ua, 0) } AS count_sop_ua_7, 
						{ fn IFNULL(month7.count_sop_uc, 0) } AS count_sop_uc_7, 
						{ fn IFNULL(month7.count_sop_sa, 0) } AS count_sop_sa_7,
						{ fn IFNULL(month7.count_sop_sc, 0) } AS count_sop_sc_7, 
						{ fn IFNULL(month7.count_msds_ua, 0) } AS count_msds_ua_7, 
						{ fn IFNULL(month7.count_msds_uc, 0) } AS count_msds_uc_7, 
						{ fn IFNULL(month7.count_msds_sa, 0) } AS count_msds_sa_7,
						{ fn IFNULL(month7.count_msds_sc, 0) } AS count_msds_sc_7, 
						{ fn IFNULL(month7.count_emergency_ua, 0) } AS count_emergency_ua_7, 
						{ fn IFNULL(month7.count_emergency_uc, 0) } AS count_emergency_uc_7, 
						{ fn IFNULL(month7.count_emergency_sa, 0) } AS count_emergency_sa_7,
						{ fn IFNULL(month7.count_emergency_sc, 0) } AS count_emergency_sc_7, 
						{ fn IFNULL(month7.count_certificates_ua, 0) } AS count_certificates_ua_7, 
						{ fn IFNULL(month7.count_certificates_uc, 0) } AS count_certificates_uc_7, 
						{ fn IFNULL(month7.count_certificates_sa, 0) } AS count_certificates_sa_7,
						{ fn IFNULL(month7.count_certificates_sc, 0) } AS count_certificates_sc_7, 
						{ fn IFNULL(month7.count_ppe_ua, 0) } AS count_ppe_ua_7, 
						{ fn IFNULL(month7.count_ppe_uc, 0) } AS count_ppe_uc_7, 
						{ fn IFNULL(month7.count_ppe_sa, 0) } AS count_ppe_sa_7,
						{ fn IFNULL(month7.count_ppe_sc, 0) } AS count_ppe_sc_7, 
						{ fn IFNULL(month7.count_hand_ua, 0) } AS count_hand_ua_7, 
						{ fn IFNULL(month7.count_hand_uc, 0) } AS count_hand_uc_7, 
						{ fn IFNULL(month7.count_hand_sa, 0) } AS count_hand_sa_7,
						{ fn IFNULL(month7.count_hand_sc, 0) } AS count_hand_sc_7, 
						{ fn IFNULL(month7.count_mechanical_ua, 0) } AS count_mechanical_ua_7, 
						{ fn IFNULL(month7.count_mechanical_uc, 0) } AS count_mechanical_uc_7, 
						{ fn IFNULL(month7.count_mechanical_sa, 0) } AS count_mechanical_sa_7,
						{ fn IFNULL(month7.count_mechanical_sc, 0) } AS count_mechanical_sc_7, 
						{ fn IFNULL(month7.count_electrical_ua, 0) } AS count_electrical_ua_7, 
						{ fn IFNULL(month7.count_electrical_uc, 0) } AS count_electrical_uc_7, 
						{ fn IFNULL(month7.count_electrical_sa, 0) } AS count_electrical_sa_7,
						{ fn IFNULL(month7.count_electrical_sc, 0) } AS count_electrical_sc_7, 
						{ fn IFNULL(month7.count_vehicular_ua, 0) } AS count_vehicular_ua_7, 
						{ fn IFNULL(month7.count_vehicular_uc, 0) } AS count_vehicular_uc_7, 
						{ fn IFNULL(month7.count_vehicular_sa, 0) } AS count_vehicular_sa_7,
						{ fn IFNULL(month7.count_vehicular_sc, 0) } AS count_vehicular_sc_7, 
						{ fn IFNULL(month7.count_substandard_ua, 0) } AS count_substandard_ua_7, 
						{ fn IFNULL(month7.count_substandard_uc, 0) } AS count_substandard_uc_7, 
						{ fn IFNULL(month7.count_substandard_sa, 0) } AS count_substandard_sa_7,
						{ fn IFNULL(month7.count_substandard_sc, 0) } AS count_substandard_sc_7, 
						{ fn IFNULL(month7.count_h2s_ua, 0) } AS count_h2s_ua_7, 
						{ fn IFNULL(month7.count_h2s_uc, 0) } AS count_h2s_uc_7, 
						{ fn IFNULL(month7.count_h2s_sa, 0) } AS count_h2s_sa_7,
						{ fn IFNULL(month7.count_h2s_sc, 0) } AS count_h2s_sc_7, 
						{ fn IFNULL(month7.count_workplace_health_ua, 0) } AS count_workplace_health_ua_7, 
						{ fn IFNULL(month7.count_workplace_health_uc, 0) } AS count_workplace_health_uc_7, 
						{ fn IFNULL(month7.count_workplace_health_sa, 0) } AS count_workplace_health_sa_7,
						{ fn IFNULL(month7.count_workplace_health_sc, 0) } AS count_workplace_health_sc_7,
						{ fn IFNULL(month8.count_accident_ua, 0) } AS count_accident_ua_8, 
						{ fn IFNULL(month8.count_accident_uc, 0) } AS count_accident_uc_8, 
						{ fn IFNULL(month8.count_accident_sa, 0) } AS count_accident_sa_8,
						{ fn IFNULL(month8.count_accident_sc, 0) } AS count_accident_sc_8, 
						{ fn IFNULL(month8.count_fire_ua, 0) } AS count_fire_ua_8, 
						{ fn IFNULL(month8.count_fire_uc, 0) } AS count_fire_uc_8, 
						{ fn IFNULL(month8.count_fire_sa, 0) } AS count_fire_sa_8,
						{ fn IFNULL(month8.count_fire_sc, 0) } AS count_fire_sc_8, 
						{ fn IFNULL(month8.count_prevention_ua, 0) } AS count_prevention_ua_8, 
						{ fn IFNULL(month8.count_prevention_uc, 0) } AS count_prevention_uc_8, 
						{ fn IFNULL(month8.count_prevention_sa, 0) } AS count_prevention_sa_8,
						{ fn IFNULL(month8.count_prevention_sc, 0) } AS count_prevention_sc_8, 
						{ fn IFNULL(month8.count_supervisor_ua, 0) } AS count_supervisor_ua_8, 
						{ fn IFNULL(month8.count_supervisor_uc, 0) } AS count_supervisor_uc_8, 
						{ fn IFNULL(month8.count_supervisor_sa, 0) } AS count_supervisor_sa_8,
						{ fn IFNULL(month8.count_supervisor_sc, 0) } AS count_supervisor_sc_8, 
						{ fn IFNULL(month8.count_fit_work_ua, 0) } AS count_fit_work_ua_8, 
						{ fn IFNULL(month8.count_fit_work_uc, 0) } AS count_fit_work_uc_8, 
						{ fn IFNULL(month8.count_fit_work_sa, 0) } AS count_fit_work_sa_8,
						{ fn IFNULL(month8.count_fit_work_sc, 0) } AS count_fit_work_sc_8, 
						{ fn IFNULL(month8.count_psychological_ua, 0) } AS count_psychological_ua_8, 
						{ fn IFNULL(month8.count_psychological_uc, 0) } AS count_psychological_uc_8, 
						{ fn IFNULL(month8.count_psychological_sa, 0) } AS count_psychological_sa_8,
						{ fn IFNULL(month8.count_psychological_sc, 0) } AS count_psychological_sc_8, 
						{ fn IFNULL(month8.count_posture_ua, 0) } AS count_posture_ua_8, 
						{ fn IFNULL(month8.count_posture_uc, 0) } AS count_posture_uc_8, 
						{ fn IFNULL(month8.count_posture_sa, 0) } AS count_posture_sa_8,
						{ fn IFNULL(month8.count_posture_sc, 0) } AS count_posture_sc_8, 
						{ fn IFNULL(month8.count_substance_ua, 0) } AS count_substance_ua_8, 
						{ fn IFNULL(month8.count_substance_uc, 0) } AS count_substance_uc_8, 
						{ fn IFNULL(month8.count_substance_sa, 0) } AS count_substance_sa_8,
						{ fn IFNULL(month8.count_substance_sc, 0) } AS count_substance_sc_8, 
						{ fn IFNULL(month8.count_hygiene_ua, 0) } AS count_hygiene_ua_8, 
						{ fn IFNULL(month8.count_hygiene_uc, 0) } AS count_hygiene_uc_8, 
						{ fn IFNULL(month8.count_hygiene_sa, 0) } AS count_hygiene_sa_8,
						{ fn IFNULL(month8.count_hygiene_sc, 0) } AS count_hygiene_sc_8, 
						{ fn IFNULL(month8.count_house_ua, 0) } AS count_house_ua_8, 
						{ fn IFNULL(month8.count_house_uc, 0) } AS count_house_uc_8, 
						{ fn IFNULL(month8.count_house_sa, 0) } AS count_house_sa_8,
						{ fn IFNULL(month8.count_house_sc, 0) } AS count_house_sc_8, 
						{ fn IFNULL(month8.count_standard_ua, 0) } AS count_standard_ua_8, 
						{ fn IFNULL(month8.count_standard_uc, 0) } AS count_standard_uc_8, 
						{ fn IFNULL(month8.count_standard_sa, 0) } AS count_standard_sa_8,
						{ fn IFNULL(month8.count_standard_sc, 0) } AS count_standard_sc_8, 
						{ fn IFNULL(month8.count_spill_ua, 0) } AS count_spill_ua_8, 
						{ fn IFNULL(month8.count_spill_uc, 0) } AS count_spill_uc_8, 
						{ fn IFNULL(month8.count_spill_sa, 0) } AS count_spill_sa_8,
						{ fn IFNULL(month8.count_spill_sc, 0) } AS count_spill_sc_8, 
						{ fn IFNULL(month8.count_waste_energy_ua, 0) } AS count_waste_energy_ua_8, 
						{ fn IFNULL(month8.count_waste_energy_uc, 0) } AS count_waste_energy_uc_8, 
						{ fn IFNULL(month8.count_waste_energy_sa, 0) } AS count_waste_energy_sa_8,
						{ fn IFNULL(month8.count_waste_energy_sc, 0) } AS count_waste_energy_sc_8, 
						{ fn IFNULL(month8.count_containment_ua, 0) } AS count_containment_ua_8, 
						{ fn IFNULL(month8.count_containment_uc, 0) } AS count_containment_uc_8, 
						{ fn IFNULL(month8.count_containment_sa, 0) } AS count_containment_sa_8,
						{ fn IFNULL(month8.count_containment_sc, 0) } AS count_containment_sc_8, 
						{ fn IFNULL(month8.count_absorbent_ua, 0) } AS count_absorbent_ua_8, 
						{ fn IFNULL(month8.count_absorbent_uc, 0) } AS count_absorbent_uc_8, 
						{ fn IFNULL(month8.count_absorbent_sa, 0) } AS count_absorbent_sa_8,
						{ fn IFNULL(month8.count_absorbent_sc, 0) } AS count_absorbent_sc_8, 
						{ fn IFNULL(month8.count_hira_ua, 0) } AS count_hira_ua_8, 
						{ fn IFNULL(month8.count_hira_uc, 0) } AS count_hira_uc_8, 
						{ fn IFNULL(month8.count_hira_sa, 0) } AS count_hira_sa_8,
						{ fn IFNULL(month8.count_hira_sc, 0) } AS count_hira_sc_8, 
						{ fn IFNULL(month8.count_ptw_ua, 0) } AS count_ptw_ua_8, 
						{ fn IFNULL(month8.count_ptw_uc, 0) } AS count_ptw_uc_8, 
						{ fn IFNULL(month8.count_ptw_sa, 0) } AS count_ptw_sa_8,
						{ fn IFNULL(month8.count_ptw_sc, 0) } AS count_ptw_sc_8, 
						{ fn IFNULL(month8.count_sop_ua, 0) } AS count_sop_ua_8, 
						{ fn IFNULL(month8.count_sop_uc, 0) } AS count_sop_uc_8, 
						{ fn IFNULL(month8.count_sop_sa, 0) } AS count_sop_sa_8,
						{ fn IFNULL(month8.count_sop_sc, 0) } AS count_sop_sc_8, 
						{ fn IFNULL(month8.count_msds_ua, 0) } AS count_msds_ua_8, 
						{ fn IFNULL(month8.count_msds_uc, 0) } AS count_msds_uc_8, 
						{ fn IFNULL(month8.count_msds_sa, 0) } AS count_msds_sa_8,
						{ fn IFNULL(month8.count_msds_sc, 0) } AS count_msds_sc_8, 
						{ fn IFNULL(month8.count_emergency_ua, 0) } AS count_emergency_ua_8, 
						{ fn IFNULL(month8.count_emergency_uc, 0) } AS count_emergency_uc_8, 
						{ fn IFNULL(month8.count_emergency_sa, 0) } AS count_emergency_sa_8,
						{ fn IFNULL(month8.count_emergency_sc, 0) } AS count_emergency_sc_8, 
						{ fn IFNULL(month8.count_certificates_ua, 0) } AS count_certificates_ua_8, 
						{ fn IFNULL(month8.count_certificates_uc, 0) } AS count_certificates_uc_8, 
						{ fn IFNULL(month8.count_certificates_sa, 0) } AS count_certificates_sa_8,
						{ fn IFNULL(month8.count_certificates_sc, 0) } AS count_certificates_sc_8, 
						{ fn IFNULL(month8.count_ppe_ua, 0) } AS count_ppe_ua_8, 
						{ fn IFNULL(month8.count_ppe_uc, 0) } AS count_ppe_uc_8, 
						{ fn IFNULL(month8.count_ppe_sa, 0) } AS count_ppe_sa_8,
						{ fn IFNULL(month8.count_ppe_sc, 0) } AS count_ppe_sc_8, 
						{ fn IFNULL(month8.count_hand_ua, 0) } AS count_hand_ua_8, 
						{ fn IFNULL(month8.count_hand_uc, 0) } AS count_hand_uc_8, 
						{ fn IFNULL(month8.count_hand_sa, 0) } AS count_hand_sa_8,
						{ fn IFNULL(month8.count_hand_sc, 0) } AS count_hand_sc_8, 
						{ fn IFNULL(month8.count_mechanical_ua, 0) } AS count_mechanical_ua_8, 
						{ fn IFNULL(month8.count_mechanical_uc, 0) } AS count_mechanical_uc_8, 
						{ fn IFNULL(month8.count_mechanical_sa, 0) } AS count_mechanical_sa_8,
						{ fn IFNULL(month8.count_mechanical_sc, 0) } AS count_mechanical_sc_8, 
						{ fn IFNULL(month8.count_electrical_ua, 0) } AS count_electrical_ua_8, 
						{ fn IFNULL(month8.count_electrical_uc, 0) } AS count_electrical_uc_8, 
						{ fn IFNULL(month8.count_electrical_sa, 0) } AS count_electrical_sa_8,
						{ fn IFNULL(month8.count_electrical_sc, 0) } AS count_electrical_sc_8, 
						{ fn IFNULL(month8.count_vehicular_ua, 0) } AS count_vehicular_ua_8, 
						{ fn IFNULL(month8.count_vehicular_uc, 0) } AS count_vehicular_uc_8, 
						{ fn IFNULL(month8.count_vehicular_sa, 0) } AS count_vehicular_sa_8,
						{ fn IFNULL(month8.count_vehicular_sc, 0) } AS count_vehicular_sc_8, 
						{ fn IFNULL(month8.count_substandard_ua, 0) } AS count_substandard_ua_8, 
						{ fn IFNULL(month8.count_substandard_uc, 0) } AS count_substandard_uc_8, 
						{ fn IFNULL(month8.count_substandard_sa, 0) } AS count_substandard_sa_8,
						{ fn IFNULL(month8.count_substandard_sc, 0) } AS count_substandard_sc_8, 
						{ fn IFNULL(month8.count_h2s_ua, 0) } AS count_h2s_ua_8, 
						{ fn IFNULL(month8.count_h2s_uc, 0) } AS count_h2s_uc_8, 
						{ fn IFNULL(month8.count_h2s_sa, 0) } AS count_h2s_sa_8,
						{ fn IFNULL(month8.count_h2s_sc, 0) } AS count_h2s_sc_8, 
						{ fn IFNULL(month8.count_workplace_health_ua, 0) } AS count_workplace_health_ua_8, 
						{ fn IFNULL(month8.count_workplace_health_uc, 0) } AS count_workplace_health_uc_8, 
						{ fn IFNULL(month8.count_workplace_health_sa, 0) } AS count_workplace_health_sa_8,
						{ fn IFNULL(month8.count_workplace_health_sc, 0) } AS count_workplace_health_sc_8,
						{ fn IFNULL(month9.count_accident_ua, 0) } AS count_accident_ua_9, 
						{ fn IFNULL(month9.count_accident_uc, 0) } AS count_accident_uc_9, 
						{ fn IFNULL(month9.count_accident_sa, 0) } AS count_accident_sa_9,
						{ fn IFNULL(month9.count_accident_sc, 0) } AS count_accident_sc_9, 
						{ fn IFNULL(month9.count_fire_ua, 0) } AS count_fire_ua_9, 
						{ fn IFNULL(month9.count_fire_uc, 0) } AS count_fire_uc_9, 
						{ fn IFNULL(month9.count_fire_sa, 0) } AS count_fire_sa_9,
						{ fn IFNULL(month9.count_fire_sc, 0) } AS count_fire_sc_9, 
						{ fn IFNULL(month9.count_prevention_ua, 0) } AS count_prevention_ua_9, 
						{ fn IFNULL(month9.count_prevention_uc, 0) } AS count_prevention_uc_9, 
						{ fn IFNULL(month9.count_prevention_sa, 0) } AS count_prevention_sa_9,
						{ fn IFNULL(month9.count_prevention_sc, 0) } AS count_prevention_sc_9, 
						{ fn IFNULL(month9.count_supervisor_ua, 0) } AS count_supervisor_ua_9, 
						{ fn IFNULL(month9.count_supervisor_uc, 0) } AS count_supervisor_uc_9, 
						{ fn IFNULL(month9.count_supervisor_sa, 0) } AS count_supervisor_sa_9,
						{ fn IFNULL(month9.count_supervisor_sc, 0) } AS count_supervisor_sc_9, 
						{ fn IFNULL(month9.count_fit_work_ua, 0) } AS count_fit_work_ua_9, 
						{ fn IFNULL(month9.count_fit_work_uc, 0) } AS count_fit_work_uc_9, 
						{ fn IFNULL(month9.count_fit_work_sa, 0) } AS count_fit_work_sa_9,
						{ fn IFNULL(month9.count_fit_work_sc, 0) } AS count_fit_work_sc_9, 
						{ fn IFNULL(month9.count_psychological_ua, 0) } AS count_psychological_ua_9, 
						{ fn IFNULL(month9.count_psychological_uc, 0) } AS count_psychological_uc_9, 
						{ fn IFNULL(month9.count_psychological_sa, 0) } AS count_psychological_sa_9,
						{ fn IFNULL(month9.count_psychological_sc, 0) } AS count_psychological_sc_9, 
						{ fn IFNULL(month9.count_posture_ua, 0) } AS count_posture_ua_9, 
						{ fn IFNULL(month9.count_posture_uc, 0) } AS count_posture_uc_9, 
						{ fn IFNULL(month9.count_posture_sa, 0) } AS count_posture_sa_9,
						{ fn IFNULL(month9.count_posture_sc, 0) } AS count_posture_sc_9, 
						{ fn IFNULL(month9.count_substance_ua, 0) } AS count_substance_ua_9, 
						{ fn IFNULL(month9.count_substance_uc, 0) } AS count_substance_uc_9, 
						{ fn IFNULL(month9.count_substance_sa, 0) } AS count_substance_sa_9,
						{ fn IFNULL(month9.count_substance_sc, 0) } AS count_substance_sc_9, 
						{ fn IFNULL(month9.count_hygiene_ua, 0) } AS count_hygiene_ua_9, 
						{ fn IFNULL(month9.count_hygiene_uc, 0) } AS count_hygiene_uc_9, 
						{ fn IFNULL(month9.count_hygiene_sa, 0) } AS count_hygiene_sa_9,
						{ fn IFNULL(month9.count_hygiene_sc, 0) } AS count_hygiene_sc_9, 
						{ fn IFNULL(month9.count_house_ua, 0) } AS count_house_ua_9, 
						{ fn IFNULL(month9.count_house_uc, 0) } AS count_house_uc_9, 
						{ fn IFNULL(month9.count_house_sa, 0) } AS count_house_sa_9,
						{ fn IFNULL(month9.count_house_sc, 0) } AS count_house_sc_9, 
						{ fn IFNULL(month9.count_standard_ua, 0) } AS count_standard_ua_9, 
						{ fn IFNULL(month9.count_standard_uc, 0) } AS count_standard_uc_9, 
						{ fn IFNULL(month9.count_standard_sa, 0) } AS count_standard_sa_9,
						{ fn IFNULL(month9.count_standard_sc, 0) } AS count_standard_sc_9, 
						{ fn IFNULL(month9.count_spill_ua, 0) } AS count_spill_ua_9, 
						{ fn IFNULL(month9.count_spill_uc, 0) } AS count_spill_uc_9, 
						{ fn IFNULL(month9.count_spill_sa, 0) } AS count_spill_sa_9,
						{ fn IFNULL(month9.count_spill_sc, 0) } AS count_spill_sc_9, 
						{ fn IFNULL(month9.count_waste_energy_ua, 0) } AS count_waste_energy_ua_9, 
						{ fn IFNULL(month9.count_waste_energy_uc, 0) } AS count_waste_energy_uc_9, 
						{ fn IFNULL(month9.count_waste_energy_sa, 0) } AS count_waste_energy_sa_9,
						{ fn IFNULL(month9.count_waste_energy_sc, 0) } AS count_waste_energy_sc_9, 
						{ fn IFNULL(month9.count_containment_ua, 0) } AS count_containment_ua_9, 
						{ fn IFNULL(month9.count_containment_uc, 0) } AS count_containment_uc_9, 
						{ fn IFNULL(month9.count_containment_sa, 0) } AS count_containment_sa_9,
						{ fn IFNULL(month9.count_containment_sc, 0) } AS count_containment_sc_9, 
						{ fn IFNULL(month9.count_absorbent_ua, 0) } AS count_absorbent_ua_9, 
						{ fn IFNULL(month9.count_absorbent_uc, 0) } AS count_absorbent_uc_9, 
						{ fn IFNULL(month9.count_absorbent_sa, 0) } AS count_absorbent_sa_9,
						{ fn IFNULL(month9.count_absorbent_sc, 0) } AS count_absorbent_sc_9, 
						{ fn IFNULL(month9.count_hira_ua, 0) } AS count_hira_ua_9, 
						{ fn IFNULL(month9.count_hira_uc, 0) } AS count_hira_uc_9, 
						{ fn IFNULL(month9.count_hira_sa, 0) } AS count_hira_sa_9,
						{ fn IFNULL(month9.count_hira_sc, 0) } AS count_hira_sc_9, 
						{ fn IFNULL(month9.count_ptw_ua, 0) } AS count_ptw_ua_9, 
						{ fn IFNULL(month9.count_ptw_uc, 0) } AS count_ptw_uc_9, 
						{ fn IFNULL(month9.count_ptw_sa, 0) } AS count_ptw_sa_9,
						{ fn IFNULL(month9.count_ptw_sc, 0) } AS count_ptw_sc_9, 
						{ fn IFNULL(month9.count_sop_ua, 0) } AS count_sop_ua_9, 
						{ fn IFNULL(month9.count_sop_uc, 0) } AS count_sop_uc_9, 
						{ fn IFNULL(month9.count_sop_sa, 0) } AS count_sop_sa_9,
						{ fn IFNULL(month9.count_sop_sc, 0) } AS count_sop_sc_9, 
						{ fn IFNULL(month9.count_msds_ua, 0) } AS count_msds_ua_9, 
						{ fn IFNULL(month9.count_msds_uc, 0) } AS count_msds_uc_9, 
						{ fn IFNULL(month9.count_msds_sa, 0) } AS count_msds_sa_9,
						{ fn IFNULL(month9.count_msds_sc, 0) } AS count_msds_sc_9, 
						{ fn IFNULL(month9.count_emergency_ua, 0) } AS count_emergency_ua_9, 
						{ fn IFNULL(month9.count_emergency_uc, 0) } AS count_emergency_uc_9, 
						{ fn IFNULL(month9.count_emergency_sa, 0) } AS count_emergency_sa_9,
						{ fn IFNULL(month9.count_emergency_sc, 0) } AS count_emergency_sc_9, 
						{ fn IFNULL(month9.count_certificates_ua, 0) } AS count_certificates_ua_9, 
						{ fn IFNULL(month9.count_certificates_uc, 0) } AS count_certificates_uc_9, 
						{ fn IFNULL(month9.count_certificates_sa, 0) } AS count_certificates_sa_9,
						{ fn IFNULL(month9.count_certificates_sc, 0) } AS count_certificates_sc_9, 
						{ fn IFNULL(month9.count_ppe_ua, 0) } AS count_ppe_ua_9, 
						{ fn IFNULL(month9.count_ppe_uc, 0) } AS count_ppe_uc_9, 
						{ fn IFNULL(month9.count_ppe_sa, 0) } AS count_ppe_sa_9,
						{ fn IFNULL(month9.count_ppe_sc, 0) } AS count_ppe_sc_9, 
						{ fn IFNULL(month9.count_hand_ua, 0) } AS count_hand_ua_9, 
						{ fn IFNULL(month9.count_hand_uc, 0) } AS count_hand_uc_9, 
						{ fn IFNULL(month9.count_hand_sa, 0) } AS count_hand_sa_9,
						{ fn IFNULL(month9.count_hand_sc, 0) } AS count_hand_sc_9, 
						{ fn IFNULL(month9.count_mechanical_ua, 0) } AS count_mechanical_ua_9, 
						{ fn IFNULL(month9.count_mechanical_uc, 0) } AS count_mechanical_uc_9, 
						{ fn IFNULL(month9.count_mechanical_sa, 0) } AS count_mechanical_sa_9,
						{ fn IFNULL(month9.count_mechanical_sc, 0) } AS count_mechanical_sc_9, 
						{ fn IFNULL(month9.count_electrical_ua, 0) } AS count_electrical_ua_9, 
						{ fn IFNULL(month9.count_electrical_uc, 0) } AS count_electrical_uc_9, 
						{ fn IFNULL(month9.count_electrical_sa, 0) } AS count_electrical_sa_9,
						{ fn IFNULL(month9.count_electrical_sc, 0) } AS count_electrical_sc_9, 
						{ fn IFNULL(month9.count_vehicular_ua, 0) } AS count_vehicular_ua_9, 
						{ fn IFNULL(month9.count_vehicular_uc, 0) } AS count_vehicular_uc_9, 
						{ fn IFNULL(month9.count_vehicular_sa, 0) } AS count_vehicular_sa_9,
						{ fn IFNULL(month9.count_vehicular_sc, 0) } AS count_vehicular_sc_9, 
						{ fn IFNULL(month9.count_substandard_ua, 0) } AS count_substandard_ua_9, 
						{ fn IFNULL(month9.count_substandard_uc, 0) } AS count_substandard_uc_9, 
						{ fn IFNULL(month9.count_substandard_sa, 0) } AS count_substandard_sa_9,
						{ fn IFNULL(month9.count_substandard_sc, 0) } AS count_substandard_sc_9, 
						{ fn IFNULL(month9.count_h2s_ua, 0) } AS count_h2s_ua_9, 
						{ fn IFNULL(month9.count_h2s_uc, 0) } AS count_h2s_uc_9, 
						{ fn IFNULL(month9.count_h2s_sa, 0) } AS count_h2s_sa_9,
						{ fn IFNULL(month9.count_h2s_sc, 0) } AS count_h2s_sc_9, 
						{ fn IFNULL(month9.count_workplace_health_ua, 0) } AS count_workplace_health_ua_9, 
						{ fn IFNULL(month9.count_workplace_health_uc, 0) } AS count_workplace_health_uc_9, 
						{ fn IFNULL(month9.count_workplace_health_sa, 0) } AS count_workplace_health_sa_9,
						{ fn IFNULL(month9.count_workplace_health_sc, 0) } AS count_workplace_health_sc_9,
						{ fn IFNULL(month10.count_accident_ua, 0) } AS count_accident_ua_10, 
						{ fn IFNULL(month10.count_accident_uc, 0) } AS count_accident_uc_10, 
						{ fn IFNULL(month10.count_accident_sa, 0) } AS count_accident_sa_10,
						{ fn IFNULL(month10.count_accident_sc, 0) } AS count_accident_sc_10, 
						{ fn IFNULL(month10.count_fire_ua, 0) } AS count_fire_ua_10, 
						{ fn IFNULL(month10.count_fire_uc, 0) } AS count_fire_uc_10, 
						{ fn IFNULL(month10.count_fire_sa, 0) } AS count_fire_sa_10,
						{ fn IFNULL(month10.count_fire_sc, 0) } AS count_fire_sc_10, 
						{ fn IFNULL(month10.count_prevention_ua, 0) } AS count_prevention_ua_10, 
						{ fn IFNULL(month10.count_prevention_uc, 0) } AS count_prevention_uc_10, 
						{ fn IFNULL(month10.count_prevention_sa, 0) } AS count_prevention_sa_10,
						{ fn IFNULL(month10.count_prevention_sc, 0) } AS count_prevention_sc_10, 
						{ fn IFNULL(month10.count_supervisor_ua, 0) } AS count_supervisor_ua_10, 
						{ fn IFNULL(month10.count_supervisor_uc, 0) } AS count_supervisor_uc_10, 
						{ fn IFNULL(month10.count_supervisor_sa, 0) } AS count_supervisor_sa_10,
						{ fn IFNULL(month10.count_supervisor_sc, 0) } AS count_supervisor_sc_10, 
						{ fn IFNULL(month10.count_fit_work_ua, 0) } AS count_fit_work_ua_10, 
						{ fn IFNULL(month10.count_fit_work_uc, 0) } AS count_fit_work_uc_10, 
						{ fn IFNULL(month10.count_fit_work_sa, 0) } AS count_fit_work_sa_10,
						{ fn IFNULL(month10.count_fit_work_sc, 0) } AS count_fit_work_sc_10, 
						{ fn IFNULL(month10.count_psychological_ua, 0) } AS count_psychological_ua_10, 
						{ fn IFNULL(month10.count_psychological_uc, 0) } AS count_psychological_uc_10, 
						{ fn IFNULL(month10.count_psychological_sa, 0) } AS count_psychological_sa_10,
						{ fn IFNULL(month10.count_psychological_sc, 0) } AS count_psychological_sc_10, 
						{ fn IFNULL(month10.count_posture_ua, 0) } AS count_posture_ua_10, 
						{ fn IFNULL(month10.count_posture_uc, 0) } AS count_posture_uc_10, 
						{ fn IFNULL(month10.count_posture_sa, 0) } AS count_posture_sa_10,
						{ fn IFNULL(month10.count_posture_sc, 0) } AS count_posture_sc_10, 
						{ fn IFNULL(month10.count_substance_ua, 0) } AS count_substance_ua_10, 
						{ fn IFNULL(month10.count_substance_uc, 0) } AS count_substance_uc_10, 
						{ fn IFNULL(month10.count_substance_sa, 0) } AS count_substance_sa_10,
						{ fn IFNULL(month10.count_substance_sc, 0) } AS count_substance_sc_10, 
						{ fn IFNULL(month10.count_hygiene_ua, 0) } AS count_hygiene_ua_10, 
						{ fn IFNULL(month10.count_hygiene_uc, 0) } AS count_hygiene_uc_10, 
						{ fn IFNULL(month10.count_hygiene_sa, 0) } AS count_hygiene_sa_10,
						{ fn IFNULL(month10.count_hygiene_sc, 0) } AS count_hygiene_sc_10, 
						{ fn IFNULL(month10.count_house_ua, 0) } AS count_house_ua_10, 
						{ fn IFNULL(month10.count_house_uc, 0) } AS count_house_uc_10, 
						{ fn IFNULL(month10.count_house_sa, 0) } AS count_house_sa_10,
						{ fn IFNULL(month10.count_house_sc, 0) } AS count_house_sc_10, 
						{ fn IFNULL(month10.count_standard_ua, 0) } AS count_standard_ua_10, 
						{ fn IFNULL(month10.count_standard_uc, 0) } AS count_standard_uc_10, 
						{ fn IFNULL(month10.count_standard_sa, 0) } AS count_standard_sa_10,
						{ fn IFNULL(month10.count_standard_sc, 0) } AS count_standard_sc_10, 
						{ fn IFNULL(month10.count_spill_ua, 0) } AS count_spill_ua_10, 
						{ fn IFNULL(month10.count_spill_uc, 0) } AS count_spill_uc_10, 
						{ fn IFNULL(month10.count_spill_sa, 0) } AS count_spill_sa_10,
						{ fn IFNULL(month10.count_spill_sc, 0) } AS count_spill_sc_10, 
						{ fn IFNULL(month10.count_waste_energy_ua, 0) } AS count_waste_energy_ua_10, 
						{ fn IFNULL(month10.count_waste_energy_uc, 0) } AS count_waste_energy_uc_10, 
						{ fn IFNULL(month10.count_waste_energy_sa, 0) } AS count_waste_energy_sa_10,
						{ fn IFNULL(month10.count_waste_energy_sc, 0) } AS count_waste_energy_sc_10, 
						{ fn IFNULL(month10.count_containment_ua, 0) } AS count_containment_ua_10, 
						{ fn IFNULL(month10.count_containment_uc, 0) } AS count_containment_uc_10, 
						{ fn IFNULL(month10.count_containment_sa, 0) } AS count_containment_sa_10,
						{ fn IFNULL(month10.count_containment_sc, 0) } AS count_containment_sc_10, 
						{ fn IFNULL(month10.count_absorbent_ua, 0) } AS count_absorbent_ua_10, 
						{ fn IFNULL(month10.count_absorbent_uc, 0) } AS count_absorbent_uc_10, 
						{ fn IFNULL(month10.count_absorbent_sa, 0) } AS count_absorbent_sa_10,
						{ fn IFNULL(month10.count_absorbent_sc, 0) } AS count_absorbent_sc_10, 
						{ fn IFNULL(month10.count_hira_ua, 0) } AS count_hira_ua_10, 
						{ fn IFNULL(month10.count_hira_uc, 0) } AS count_hira_uc_10, 
						{ fn IFNULL(month10.count_hira_sa, 0) } AS count_hira_sa_10,
						{ fn IFNULL(month10.count_hira_sc, 0) } AS count_hira_sc_10, 
						{ fn IFNULL(month10.count_ptw_ua, 0) } AS count_ptw_ua_10, 
						{ fn IFNULL(month10.count_ptw_uc, 0) } AS count_ptw_uc_10, 
						{ fn IFNULL(month10.count_ptw_sa, 0) } AS count_ptw_sa_10,
						{ fn IFNULL(month10.count_ptw_sc, 0) } AS count_ptw_sc_10, 
						{ fn IFNULL(month10.count_sop_ua, 0) } AS count_sop_ua_10, 
						{ fn IFNULL(month10.count_sop_uc, 0) } AS count_sop_uc_10, 
						{ fn IFNULL(month10.count_sop_sa, 0) } AS count_sop_sa_10,
						{ fn IFNULL(month10.count_sop_sc, 0) } AS count_sop_sc_10, 
						{ fn IFNULL(month10.count_msds_ua, 0) } AS count_msds_ua_10, 
						{ fn IFNULL(month10.count_msds_uc, 0) } AS count_msds_uc_10, 
						{ fn IFNULL(month10.count_msds_sa, 0) } AS count_msds_sa_10,
						{ fn IFNULL(month10.count_msds_sc, 0) } AS count_msds_sc_10, 
						{ fn IFNULL(month10.count_emergency_ua, 0) } AS count_emergency_ua_10, 
						{ fn IFNULL(month10.count_emergency_uc, 0) } AS count_emergency_uc_10, 
						{ fn IFNULL(month10.count_emergency_sa, 0) } AS count_emergency_sa_10,
						{ fn IFNULL(month10.count_emergency_sc, 0) } AS count_emergency_sc_10, 
						{ fn IFNULL(month10.count_certificates_ua, 0) } AS count_certificates_ua_10, 
						{ fn IFNULL(month10.count_certificates_uc, 0) } AS count_certificates_uc_10, 
						{ fn IFNULL(month10.count_certificates_sa, 0) } AS count_certificates_sa_10,
						{ fn IFNULL(month10.count_certificates_sc, 0) } AS count_certificates_sc_10, 
						{ fn IFNULL(month10.count_ppe_ua, 0) } AS count_ppe_ua_10, 
						{ fn IFNULL(month10.count_ppe_uc, 0) } AS count_ppe_uc_10, 
						{ fn IFNULL(month10.count_ppe_sa, 0) } AS count_ppe_sa_10,
						{ fn IFNULL(month10.count_ppe_sc, 0) } AS count_ppe_sc_10, 
						{ fn IFNULL(month10.count_hand_ua, 0) } AS count_hand_ua_10, 
						{ fn IFNULL(month10.count_hand_uc, 0) } AS count_hand_uc_10, 
						{ fn IFNULL(month10.count_hand_sa, 0) } AS count_hand_sa_10,
						{ fn IFNULL(month10.count_hand_sc, 0) } AS count_hand_sc_10, 
						{ fn IFNULL(month10.count_mechanical_ua, 0) } AS count_mechanical_ua_10, 
						{ fn IFNULL(month10.count_mechanical_uc, 0) } AS count_mechanical_uc_10, 
						{ fn IFNULL(month10.count_mechanical_sa, 0) } AS count_mechanical_sa_10,
						{ fn IFNULL(month10.count_mechanical_sc, 0) } AS count_mechanical_sc_10, 
						{ fn IFNULL(month10.count_electrical_ua, 0) } AS count_electrical_ua_10, 
						{ fn IFNULL(month10.count_electrical_uc, 0) } AS count_electrical_uc_10, 
						{ fn IFNULL(month10.count_electrical_sa, 0) } AS count_electrical_sa_10,
						{ fn IFNULL(month10.count_electrical_sc, 0) } AS count_electrical_sc_10, 
						{ fn IFNULL(month10.count_vehicular_ua, 0) } AS count_vehicular_ua_10, 
						{ fn IFNULL(month10.count_vehicular_uc, 0) } AS count_vehicular_uc_10, 
						{ fn IFNULL(month10.count_vehicular_sa, 0) } AS count_vehicular_sa_10,
						{ fn IFNULL(month10.count_vehicular_sc, 0) } AS count_vehicular_sc_10, 
						{ fn IFNULL(month10.count_substandard_ua, 0) } AS count_substandard_ua_10, 
						{ fn IFNULL(month10.count_substandard_uc, 0) } AS count_substandard_uc_10, 
						{ fn IFNULL(month10.count_substandard_sa, 0) } AS count_substandard_sa_10,
						{ fn IFNULL(month10.count_substandard_sc, 0) } AS count_substandard_sc_10, 
						{ fn IFNULL(month10.count_h2s_ua, 0) } AS count_h2s_ua_10, 
						{ fn IFNULL(month10.count_h2s_uc, 0) } AS count_h2s_uc_10, 
						{ fn IFNULL(month10.count_h2s_sa, 0) } AS count_h2s_sa_10,
						{ fn IFNULL(month10.count_h2s_sc, 0) } AS count_h2s_sc_10, 
						{ fn IFNULL(month10.count_workplace_health_ua, 0) } AS count_workplace_health_ua_10, 
						{ fn IFNULL(month10.count_workplace_health_uc, 0) } AS count_workplace_health_uc_10, 
						{ fn IFNULL(month10.count_workplace_health_sa, 0) } AS count_workplace_health_sa_10,
						{ fn IFNULL(month10.count_workplace_health_sc, 0) } AS count_workplace_health_sc_10,
						{ fn IFNULL(month11.count_accident_ua, 0) } AS count_accident_ua_11, 
						{ fn IFNULL(month11.count_accident_uc, 0) } AS count_accident_uc_11, 
						{ fn IFNULL(month11.count_accident_sa, 0) } AS count_accident_sa_11,
						{ fn IFNULL(month11.count_accident_sc, 0) } AS count_accident_sc_11, 
						{ fn IFNULL(month11.count_fire_ua, 0) } AS count_fire_ua_11, 
						{ fn IFNULL(month11.count_fire_uc, 0) } AS count_fire_uc_11, 
						{ fn IFNULL(month11.count_fire_sa, 0) } AS count_fire_sa_11,
						{ fn IFNULL(month11.count_fire_sc, 0) } AS count_fire_sc_11, 
						{ fn IFNULL(month11.count_prevention_ua, 0) } AS count_prevention_ua_11, 
						{ fn IFNULL(month11.count_prevention_uc, 0) } AS count_prevention_uc_11, 
						{ fn IFNULL(month11.count_prevention_sa, 0) } AS count_prevention_sa_11,
						{ fn IFNULL(month11.count_prevention_sc, 0) } AS count_prevention_sc_11, 
						{ fn IFNULL(month11.count_supervisor_ua, 0) } AS count_supervisor_ua_11, 
						{ fn IFNULL(month11.count_supervisor_uc, 0) } AS count_supervisor_uc_11, 
						{ fn IFNULL(month11.count_supervisor_sa, 0) } AS count_supervisor_sa_11,
						{ fn IFNULL(month11.count_supervisor_sc, 0) } AS count_supervisor_sc_11, 
						{ fn IFNULL(month11.count_fit_work_ua, 0) } AS count_fit_work_ua_11, 
						{ fn IFNULL(month11.count_fit_work_uc, 0) } AS count_fit_work_uc_11, 
						{ fn IFNULL(month11.count_fit_work_sa, 0) } AS count_fit_work_sa_11,
						{ fn IFNULL(month11.count_fit_work_sc, 0) } AS count_fit_work_sc_11, 
						{ fn IFNULL(month11.count_psychological_ua, 0) } AS count_psychological_ua_11, 
						{ fn IFNULL(month11.count_psychological_uc, 0) } AS count_psychological_uc_11, 
						{ fn IFNULL(month11.count_psychological_sa, 0) } AS count_psychological_sa_11,
						{ fn IFNULL(month11.count_psychological_sc, 0) } AS count_psychological_sc_11, 
						{ fn IFNULL(month11.count_posture_ua, 0) } AS count_posture_ua_11, 
						{ fn IFNULL(month11.count_posture_uc, 0) } AS count_posture_uc_11, 
						{ fn IFNULL(month11.count_posture_sa, 0) } AS count_posture_sa_11,
						{ fn IFNULL(month11.count_posture_sc, 0) } AS count_posture_sc_11, 
						{ fn IFNULL(month11.count_substance_ua, 0) } AS count_substance_ua_11, 
						{ fn IFNULL(month11.count_substance_uc, 0) } AS count_substance_uc_11, 
						{ fn IFNULL(month11.count_substance_sa, 0) } AS count_substance_sa_11,
						{ fn IFNULL(month11.count_substance_sc, 0) } AS count_substance_sc_11, 
						{ fn IFNULL(month11.count_hygiene_ua, 0) } AS count_hygiene_ua_11, 
						{ fn IFNULL(month11.count_hygiene_uc, 0) } AS count_hygiene_uc_11, 
						{ fn IFNULL(month11.count_hygiene_sa, 0) } AS count_hygiene_sa_11,
						{ fn IFNULL(month11.count_hygiene_sc, 0) } AS count_hygiene_sc_11, 
						{ fn IFNULL(month11.count_house_ua, 0) } AS count_house_ua_11, 
						{ fn IFNULL(month11.count_house_uc, 0) } AS count_house_uc_11, 
						{ fn IFNULL(month11.count_house_sa, 0) } AS count_house_sa_11,
						{ fn IFNULL(month11.count_house_sc, 0) } AS count_house_sc_11, 
						{ fn IFNULL(month11.count_standard_ua, 0) } AS count_standard_ua_11, 
						{ fn IFNULL(month11.count_standard_uc, 0) } AS count_standard_uc_11, 
						{ fn IFNULL(month11.count_standard_sa, 0) } AS count_standard_sa_11,
						{ fn IFNULL(month11.count_standard_sc, 0) } AS count_standard_sc_11, 
						{ fn IFNULL(month11.count_spill_ua, 0) } AS count_spill_ua_11, 
						{ fn IFNULL(month11.count_spill_uc, 0) } AS count_spill_uc_11, 
						{ fn IFNULL(month11.count_spill_sa, 0) } AS count_spill_sa_11,
						{ fn IFNULL(month11.count_spill_sc, 0) } AS count_spill_sc_11, 
						{ fn IFNULL(month11.count_waste_energy_ua, 0) } AS count_waste_energy_ua_11, 
						{ fn IFNULL(month11.count_waste_energy_uc, 0) } AS count_waste_energy_uc_11, 
						{ fn IFNULL(month11.count_waste_energy_sa, 0) } AS count_waste_energy_sa_11,
						{ fn IFNULL(month11.count_waste_energy_sc, 0) } AS count_waste_energy_sc_11, 
						{ fn IFNULL(month11.count_containment_ua, 0) } AS count_containment_ua_11, 
						{ fn IFNULL(month11.count_containment_uc, 0) } AS count_containment_uc_11, 
						{ fn IFNULL(month11.count_containment_sa, 0) } AS count_containment_sa_11,
						{ fn IFNULL(month11.count_containment_sc, 0) } AS count_containment_sc_11, 
						{ fn IFNULL(month11.count_absorbent_ua, 0) } AS count_absorbent_ua_11, 
						{ fn IFNULL(month11.count_absorbent_uc, 0) } AS count_absorbent_uc_11, 
						{ fn IFNULL(month11.count_absorbent_sa, 0) } AS count_absorbent_sa_11,
						{ fn IFNULL(month11.count_absorbent_sc, 0) } AS count_absorbent_sc_11, 
						{ fn IFNULL(month11.count_hira_ua, 0) } AS count_hira_ua_11, 
						{ fn IFNULL(month11.count_hira_uc, 0) } AS count_hira_uc_11, 
						{ fn IFNULL(month11.count_hira_sa, 0) } AS count_hira_sa_11,
						{ fn IFNULL(month11.count_hira_sc, 0) } AS count_hira_sc_11, 
						{ fn IFNULL(month11.count_ptw_ua, 0) } AS count_ptw_ua_11, 
						{ fn IFNULL(month11.count_ptw_uc, 0) } AS count_ptw_uc_11, 
						{ fn IFNULL(month11.count_ptw_sa, 0) } AS count_ptw_sa_11,
						{ fn IFNULL(month11.count_ptw_sc, 0) } AS count_ptw_sc_11, 
						{ fn IFNULL(month11.count_sop_ua, 0) } AS count_sop_ua_11, 
						{ fn IFNULL(month11.count_sop_uc, 0) } AS count_sop_uc_11, 
						{ fn IFNULL(month11.count_sop_sa, 0) } AS count_sop_sa_11,
						{ fn IFNULL(month11.count_sop_sc, 0) } AS count_sop_sc_11, 
						{ fn IFNULL(month11.count_msds_ua, 0) } AS count_msds_ua_11, 
						{ fn IFNULL(month11.count_msds_uc, 0) } AS count_msds_uc_11, 
						{ fn IFNULL(month11.count_msds_sa, 0) } AS count_msds_sa_11,
						{ fn IFNULL(month11.count_msds_sc, 0) } AS count_msds_sc_11, 
						{ fn IFNULL(month11.count_emergency_ua, 0) } AS count_emergency_ua_11, 
						{ fn IFNULL(month11.count_emergency_uc, 0) } AS count_emergency_uc_11, 
						{ fn IFNULL(month11.count_emergency_sa, 0) } AS count_emergency_sa_11,
						{ fn IFNULL(month11.count_emergency_sc, 0) } AS count_emergency_sc_11, 
						{ fn IFNULL(month11.count_certificates_ua, 0) } AS count_certificates_ua_11, 
						{ fn IFNULL(month11.count_certificates_uc, 0) } AS count_certificates_uc_11, 
						{ fn IFNULL(month11.count_certificates_sa, 0) } AS count_certificates_sa_11,
						{ fn IFNULL(month11.count_certificates_sc, 0) } AS count_certificates_sc_11, 
						{ fn IFNULL(month11.count_ppe_ua, 0) } AS count_ppe_ua_11, 
						{ fn IFNULL(month11.count_ppe_uc, 0) } AS count_ppe_uc_11, 
						{ fn IFNULL(month11.count_ppe_sa, 0) } AS count_ppe_sa_11,
						{ fn IFNULL(month11.count_ppe_sc, 0) } AS count_ppe_sc_11, 
						{ fn IFNULL(month11.count_hand_ua, 0) } AS count_hand_ua_11, 
						{ fn IFNULL(month11.count_hand_uc, 0) } AS count_hand_uc_11, 
						{ fn IFNULL(month11.count_hand_sa, 0) } AS count_hand_sa_11,
						{ fn IFNULL(month11.count_hand_sc, 0) } AS count_hand_sc_11, 
						{ fn IFNULL(month11.count_mechanical_ua, 0) } AS count_mechanical_ua_11, 
						{ fn IFNULL(month11.count_mechanical_uc, 0) } AS count_mechanical_uc_11, 
						{ fn IFNULL(month11.count_mechanical_sa, 0) } AS count_mechanical_sa_11,
						{ fn IFNULL(month11.count_mechanical_sc, 0) } AS count_mechanical_sc_11, 
						{ fn IFNULL(month11.count_electrical_ua, 0) } AS count_electrical_ua_11, 
						{ fn IFNULL(month11.count_electrical_uc, 0) } AS count_electrical_uc_11, 
						{ fn IFNULL(month11.count_electrical_sa, 0) } AS count_electrical_sa_11,
						{ fn IFNULL(month11.count_electrical_sc, 0) } AS count_electrical_sc_11, 
						{ fn IFNULL(month11.count_vehicular_ua, 0) } AS count_vehicular_ua_11, 
						{ fn IFNULL(month11.count_vehicular_uc, 0) } AS count_vehicular_uc_11, 
						{ fn IFNULL(month11.count_vehicular_sa, 0) } AS count_vehicular_sa_11,
						{ fn IFNULL(month11.count_vehicular_sc, 0) } AS count_vehicular_sc_11, 
						{ fn IFNULL(month11.count_substandard_ua, 0) } AS count_substandard_ua_11, 
						{ fn IFNULL(month11.count_substandard_uc, 0) } AS count_substandard_uc_11, 
						{ fn IFNULL(month11.count_substandard_sa, 0) } AS count_substandard_sa_11,
						{ fn IFNULL(month11.count_substandard_sc, 0) } AS count_substandard_sc_11, 
						{ fn IFNULL(month11.count_h2s_ua, 0) } AS count_h2s_ua_11, 
						{ fn IFNULL(month11.count_h2s_uc, 0) } AS count_h2s_uc_11, 
						{ fn IFNULL(month11.count_h2s_sa, 0) } AS count_h2s_sa_11,
						{ fn IFNULL(month11.count_h2s_sc, 0) } AS count_h2s_sc_11, 
						{ fn IFNULL(month11.count_workplace_health_ua, 0) } AS count_workplace_health_ua_11, 
						{ fn IFNULL(month11.count_workplace_health_uc, 0) } AS count_workplace_health_uc_11, 
						{ fn IFNULL(month11.count_workplace_health_sa, 0) } AS count_workplace_health_sa_11,
						{ fn IFNULL(month11.count_workplace_health_sc, 0) } AS count_workplace_health_sc_11,
						{ fn IFNULL(month12.count_accident_ua, 0) } AS count_accident_ua_12, 
						{ fn IFNULL(month12.count_accident_uc, 0) } AS count_accident_uc_12, 
						{ fn IFNULL(month12.count_accident_sa, 0) } AS count_accident_sa_12,
						{ fn IFNULL(month12.count_accident_sc, 0) } AS count_accident_sc_12, 
						{ fn IFNULL(month12.count_fire_ua, 0) } AS count_fire_ua_12, 
						{ fn IFNULL(month12.count_fire_uc, 0) } AS count_fire_uc_12, 
						{ fn IFNULL(month12.count_fire_sa, 0) } AS count_fire_sa_12,
						{ fn IFNULL(month12.count_fire_sc, 0) } AS count_fire_sc_12, 
						{ fn IFNULL(month12.count_prevention_ua, 0) } AS count_prevention_ua_12, 
						{ fn IFNULL(month12.count_prevention_uc, 0) } AS count_prevention_uc_12, 
						{ fn IFNULL(month12.count_prevention_sa, 0) } AS count_prevention_sa_12,
						{ fn IFNULL(month12.count_prevention_sc, 0) } AS count_prevention_sc_12, 
						{ fn IFNULL(month12.count_supervisor_ua, 0) } AS count_supervisor_ua_12, 
						{ fn IFNULL(month12.count_supervisor_uc, 0) } AS count_supervisor_uc_12, 
						{ fn IFNULL(month12.count_supervisor_sa, 0) } AS count_supervisor_sa_12,
						{ fn IFNULL(month12.count_supervisor_sc, 0) } AS count_supervisor_sc_12, 
						{ fn IFNULL(month12.count_fit_work_ua, 0) } AS count_fit_work_ua_12, 
						{ fn IFNULL(month12.count_fit_work_uc, 0) } AS count_fit_work_uc_12, 
						{ fn IFNULL(month12.count_fit_work_sa, 0) } AS count_fit_work_sa_12,
						{ fn IFNULL(month12.count_fit_work_sc, 0) } AS count_fit_work_sc_12, 
						{ fn IFNULL(month12.count_psychological_ua, 0) } AS count_psychological_ua_12, 
						{ fn IFNULL(month12.count_psychological_uc, 0) } AS count_psychological_uc_12, 
						{ fn IFNULL(month12.count_psychological_sa, 0) } AS count_psychological_sa_12,
						{ fn IFNULL(month12.count_psychological_sc, 0) } AS count_psychological_sc_12, 
						{ fn IFNULL(month12.count_posture_ua, 0) } AS count_posture_ua_12, 
						{ fn IFNULL(month12.count_posture_uc, 0) } AS count_posture_uc_12, 
						{ fn IFNULL(month12.count_posture_sa, 0) } AS count_posture_sa_12,
						{ fn IFNULL(month12.count_posture_sc, 0) } AS count_posture_sc_12, 
						{ fn IFNULL(month12.count_substance_ua, 0) } AS count_substance_ua_12, 
						{ fn IFNULL(month12.count_substance_uc, 0) } AS count_substance_uc_12, 
						{ fn IFNULL(month12.count_substance_sa, 0) } AS count_substance_sa_12,
						{ fn IFNULL(month12.count_substance_sc, 0) } AS count_substance_sc_12, 
						{ fn IFNULL(month12.count_hygiene_ua, 0) } AS count_hygiene_ua_12, 
						{ fn IFNULL(month12.count_hygiene_uc, 0) } AS count_hygiene_uc_12, 
						{ fn IFNULL(month12.count_hygiene_sa, 0) } AS count_hygiene_sa_12,
						{ fn IFNULL(month12.count_hygiene_sc, 0) } AS count_hygiene_sc_12, 
						{ fn IFNULL(month12.count_house_ua, 0) } AS count_house_ua_12, 
						{ fn IFNULL(month12.count_house_uc, 0) } AS count_house_uc_12, 
						{ fn IFNULL(month12.count_house_sa, 0) } AS count_house_sa_12,
						{ fn IFNULL(month12.count_house_sc, 0) } AS count_house_sc_12, 
						{ fn IFNULL(month12.count_standard_ua, 0) } AS count_standard_ua_12, 
						{ fn IFNULL(month12.count_standard_uc, 0) } AS count_standard_uc_12, 
						{ fn IFNULL(month12.count_standard_sa, 0) } AS count_standard_sa_12,
						{ fn IFNULL(month12.count_standard_sc, 0) } AS count_standard_sc_12, 
						{ fn IFNULL(month12.count_spill_ua, 0) } AS count_spill_ua_12, 
						{ fn IFNULL(month12.count_spill_uc, 0) } AS count_spill_uc_12, 
						{ fn IFNULL(month12.count_spill_sa, 0) } AS count_spill_sa_12,
						{ fn IFNULL(month12.count_spill_sc, 0) } AS count_spill_sc_12, 
						{ fn IFNULL(month12.count_waste_energy_ua, 0) } AS count_waste_energy_ua_12, 
						{ fn IFNULL(month12.count_waste_energy_uc, 0) } AS count_waste_energy_uc_12, 
						{ fn IFNULL(month12.count_waste_energy_sa, 0) } AS count_waste_energy_sa_12,
						{ fn IFNULL(month12.count_waste_energy_sc, 0) } AS count_waste_energy_sc_12, 
						{ fn IFNULL(month12.count_containment_ua, 0) } AS count_containment_ua_12, 
						{ fn IFNULL(month12.count_containment_uc, 0) } AS count_containment_uc_12, 
						{ fn IFNULL(month12.count_containment_sa, 0) } AS count_containment_sa_12,
						{ fn IFNULL(month12.count_containment_sc, 0) } AS count_containment_sc_12, 
						{ fn IFNULL(month12.count_absorbent_ua, 0) } AS count_absorbent_ua_12, 
						{ fn IFNULL(month12.count_absorbent_uc, 0) } AS count_absorbent_uc_12, 
						{ fn IFNULL(month12.count_absorbent_sa, 0) } AS count_absorbent_sa_12,
						{ fn IFNULL(month12.count_absorbent_sc, 0) } AS count_absorbent_sc_12, 
						{ fn IFNULL(month12.count_hira_ua, 0) } AS count_hira_ua_12, 
						{ fn IFNULL(month12.count_hira_uc, 0) } AS count_hira_uc_12, 
						{ fn IFNULL(month12.count_hira_sa, 0) } AS count_hira_sa_12,
						{ fn IFNULL(month12.count_hira_sc, 0) } AS count_hira_sc_12, 
						{ fn IFNULL(month12.count_ptw_ua, 0) } AS count_ptw_ua_12, 
						{ fn IFNULL(month12.count_ptw_uc, 0) } AS count_ptw_uc_12, 
						{ fn IFNULL(month12.count_ptw_sa, 0) } AS count_ptw_sa_12,
						{ fn IFNULL(month12.count_ptw_sc, 0) } AS count_ptw_sc_12, 
						{ fn IFNULL(month12.count_sop_ua, 0) } AS count_sop_ua_12, 
						{ fn IFNULL(month12.count_sop_uc, 0) } AS count_sop_uc_12, 
						{ fn IFNULL(month12.count_sop_sa, 0) } AS count_sop_sa_12,
						{ fn IFNULL(month12.count_sop_sc, 0) } AS count_sop_sc_12, 
						{ fn IFNULL(month12.count_msds_ua, 0) } AS count_msds_ua_12, 
						{ fn IFNULL(month12.count_msds_uc, 0) } AS count_msds_uc_12, 
						{ fn IFNULL(month12.count_msds_sa, 0) } AS count_msds_sa_12,
						{ fn IFNULL(month12.count_msds_sc, 0) } AS count_msds_sc_12, 
						{ fn IFNULL(month12.count_emergency_ua, 0) } AS count_emergency_ua_12, 
						{ fn IFNULL(month12.count_emergency_uc, 0) } AS count_emergency_uc_12, 
						{ fn IFNULL(month12.count_emergency_sa, 0) } AS count_emergency_sa_12,
						{ fn IFNULL(month12.count_emergency_sc, 0) } AS count_emergency_sc_12, 
						{ fn IFNULL(month12.count_certificates_ua, 0) } AS count_certificates_ua_12, 
						{ fn IFNULL(month12.count_certificates_uc, 0) } AS count_certificates_uc_12, 
						{ fn IFNULL(month12.count_certificates_sa, 0) } AS count_certificates_sa_12,
						{ fn IFNULL(month12.count_certificates_sc, 0) } AS count_certificates_sc_12, 
						{ fn IFNULL(month12.count_ppe_ua, 0) } AS count_ppe_ua_12, 
						{ fn IFNULL(month12.count_ppe_uc, 0) } AS count_ppe_uc_12, 
						{ fn IFNULL(month12.count_ppe_sa, 0) } AS count_ppe_sa_12,
						{ fn IFNULL(month12.count_ppe_sc, 0) } AS count_ppe_sc_12, 
						{ fn IFNULL(month12.count_hand_ua, 0) } AS count_hand_ua_12, 
						{ fn IFNULL(month12.count_hand_uc, 0) } AS count_hand_uc_12, 
						{ fn IFNULL(month12.count_hand_sa, 0) } AS count_hand_sa_12,
						{ fn IFNULL(month12.count_hand_sc, 0) } AS count_hand_sc_12, 
						{ fn IFNULL(month12.count_mechanical_ua, 0) } AS count_mechanical_ua_12, 
						{ fn IFNULL(month12.count_mechanical_uc, 0) } AS count_mechanical_uc_12, 
						{ fn IFNULL(month12.count_mechanical_sa, 0) } AS count_mechanical_sa_12,
						{ fn IFNULL(month12.count_mechanical_sc, 0) } AS count_mechanical_sc_12, 
						{ fn IFNULL(month12.count_electrical_ua, 0) } AS count_electrical_ua_12, 
						{ fn IFNULL(month12.count_electrical_uc, 0) } AS count_electrical_uc_12, 
						{ fn IFNULL(month12.count_electrical_sa, 0) } AS count_electrical_sa_12,
						{ fn IFNULL(month12.count_electrical_sc, 0) } AS count_electrical_sc_12, 
						{ fn IFNULL(month12.count_vehicular_ua, 0) } AS count_vehicular_ua_12, 
						{ fn IFNULL(month12.count_vehicular_uc, 0) } AS count_vehicular_uc_12, 
						{ fn IFNULL(month12.count_vehicular_sa, 0) } AS count_vehicular_sa_12,
						{ fn IFNULL(month12.count_vehicular_sc, 0) } AS count_vehicular_sc_12, 
						{ fn IFNULL(month12.count_substandard_ua, 0) } AS count_substandard_ua_12, 
						{ fn IFNULL(month12.count_substandard_uc, 0) } AS count_substandard_uc_12, 
						{ fn IFNULL(month12.count_substandard_sa, 0) } AS count_substandard_sa_12,
						{ fn IFNULL(month12.count_substandard_sc, 0) } AS count_substandard_sc_12, 
						{ fn IFNULL(month12.count_h2s_ua, 0) } AS count_h2s_ua_12, 
						{ fn IFNULL(month12.count_h2s_uc, 0) } AS count_h2s_uc_12, 
						{ fn IFNULL(month12.count_h2s_sa, 0) } AS count_h2s_sa_12,
						{ fn IFNULL(month12.count_h2s_sc, 0) } AS count_h2s_sc_12, 
						{ fn IFNULL(month12.count_workplace_health_ua, 0) } AS count_workplace_health_ua_12, 
						{ fn IFNULL(month12.count_workplace_health_uc, 0) } AS count_workplace_health_uc_12, 
						{ fn IFNULL(month12.count_workplace_health_sa, 0) } AS count_workplace_health_sa_12,
						{ fn IFNULL(month12.count_workplace_health_sc, 0) } AS count_workplace_health_sc_12 
FROM (((observationByMonths(@year,'1') as month1 full join 
	observationByMonths(@year,'2') as month2 on month1.year=month2.year) full join 
	(observationByMonths(@year,'3') as month3 full join 
	observationByMonths(@year,'4') as month4 on month3.year=month4.year) on month1.year=month3.year) full join 
	((observationByMonths(@year,'5') as month5 full join 
	observationByMonths(@year,'6') as month6 on month5.year=month6.year)  full join
	(observationByMonths(@year,'7') as month7 full join
	observationByMonths(@year,'8') as month8 on month7.year=month8.year) on month5.year=month7.year) on month1.year=month5.year) full join
	((observationByMonths(@year,'9') as month9  full join
	observationByMonths(@year,'10') as month10 on month9.year=month10.year) full join
	(observationByMonths(@year,'11') as month11  full join
	observationByMonths(@year,'12') as month12 on month11.year=month12.year) on month9.year=month11.year) on month1.year=month9.year
END
GO
/****** Object:  StoredProcedure [dbo].[observationSummary3]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[observationSummary3] (
    @year varchar(4)
)
AS 
BEGIN
	SELECT				{ fn IFNULL(month1.count_accident_ua, 0) } AS count_accident_ua_1, 
						{ fn IFNULL(month1.count_accident_uc, 0) } AS count_accident_uc_1, 
						{ fn IFNULL(month1.count_accident_sa, 0) } AS count_accident_sa_1,
						{ fn IFNULL(month1.count_accident_sc, 0) } AS count_accident_sc_1, 
						{ fn IFNULL(month1.count_fire_ua, 0) } AS count_fire_ua_1, 
						{ fn IFNULL(month1.count_fire_uc, 0) } AS count_fire_uc_1, 
						{ fn IFNULL(month1.count_fire_sa, 0) } AS count_fire_sa_1,
						{ fn IFNULL(month1.count_fire_sc, 0) } AS count_fire_sc_1, 
						{ fn IFNULL(month1.count_prevention_ua, 0) } AS count_prevention_ua_1, 
						{ fn IFNULL(month1.count_prevention_uc, 0) } AS count_prevention_uc_1, 
						{ fn IFNULL(month1.count_prevention_sa, 0) } AS count_prevention_sa_1,
						{ fn IFNULL(month1.count_prevention_sc, 0) } AS count_prevention_sc_1, 
						{ fn IFNULL(month1.count_supervisor_ua, 0) } AS count_supervisor_ua_1, 
						{ fn IFNULL(month1.count_supervisor_uc, 0) } AS count_supervisor_uc_1, 
						{ fn IFNULL(month1.count_supervisor_sa, 0) } AS count_supervisor_sa_1,
						{ fn IFNULL(month1.count_supervisor_sc, 0) } AS count_supervisor_sc_1, 
						{ fn IFNULL(month1.count_fit_work_ua, 0) } AS count_fit_work_ua_1, 
						{ fn IFNULL(month1.count_fit_work_uc, 0) } AS count_fit_work_uc_1, 
						{ fn IFNULL(month1.count_fit_work_sa, 0) } AS count_fit_work_sa_1,
						{ fn IFNULL(month1.count_fit_work_sc, 0) } AS count_fit_work_sc_1, 
						{ fn IFNULL(month1.count_psychological_ua, 0) } AS count_psychological_ua_1, 
						{ fn IFNULL(month1.count_psychological_uc, 0) } AS count_psychological_uc_1, 
						{ fn IFNULL(month1.count_psychological_sa, 0) } AS count_psychological_sa_1,
						{ fn IFNULL(month1.count_psychological_sc, 0) } AS count_psychological_sc_1, 
						{ fn IFNULL(month1.count_posture_ua, 0) } AS count_posture_ua_1, 
						{ fn IFNULL(month1.count_posture_uc, 0) } AS count_posture_uc_1, 
						{ fn IFNULL(month1.count_posture_sa, 0) } AS count_posture_sa_1,
						{ fn IFNULL(month1.count_posture_sc, 0) } AS count_posture_sc_1, 
						{ fn IFNULL(month1.count_substance_ua, 0) } AS count_substance_ua_1, 
						{ fn IFNULL(month1.count_substance_uc, 0) } AS count_substance_uc_1, 
						{ fn IFNULL(month1.count_substance_sa, 0) } AS count_substance_sa_1,
						{ fn IFNULL(month1.count_substance_sc, 0) } AS count_substance_sc_1, 
						{ fn IFNULL(month1.count_hygiene_ua, 0) } AS count_hygiene_ua_1, 
						{ fn IFNULL(month1.count_hygiene_uc, 0) } AS count_hygiene_uc_1, 
						{ fn IFNULL(month1.count_hygiene_sa, 0) } AS count_hygiene_sa_1,
						{ fn IFNULL(month1.count_hygiene_sc, 0) } AS count_hygiene_sc_1, 
						{ fn IFNULL(month1.count_house_ua, 0) } AS count_house_ua_1, 
						{ fn IFNULL(month1.count_house_uc, 0) } AS count_house_uc_1, 
						{ fn IFNULL(month1.count_house_sa, 0) } AS count_house_sa_1,
						{ fn IFNULL(month1.count_house_sc, 0) } AS count_house_sc_1, 
						{ fn IFNULL(month1.count_standard_ua, 0) } AS count_standard_ua_1, 
						{ fn IFNULL(month1.count_standard_uc, 0) } AS count_standard_uc_1, 
						{ fn IFNULL(month1.count_standard_sa, 0) } AS count_standard_sa_1,
						{ fn IFNULL(month1.count_standard_sc, 0) } AS count_standard_sc_1, 
						{ fn IFNULL(month1.count_spill_ua, 0) } AS count_spill_ua_1, 
						{ fn IFNULL(month1.count_spill_uc, 0) } AS count_spill_uc_1, 
						{ fn IFNULL(month1.count_spill_sa, 0) } AS count_spill_sa_1,
						{ fn IFNULL(month1.count_spill_sc, 0) } AS count_spill_sc_1, 
						{ fn IFNULL(month1.count_waste_energy_ua, 0) } AS count_waste_energy_ua_1, 
						{ fn IFNULL(month1.count_waste_energy_uc, 0) } AS count_waste_energy_uc_1, 
						{ fn IFNULL(month1.count_waste_energy_sa, 0) } AS count_waste_energy_sa_1,
						{ fn IFNULL(month1.count_waste_energy_sc, 0) } AS count_waste_energy_sc_1, 
						{ fn IFNULL(month1.count_containment_ua, 0) } AS count_containment_ua_1, 
						{ fn IFNULL(month1.count_containment_uc, 0) } AS count_containment_uc_1, 
						{ fn IFNULL(month1.count_containment_sa, 0) } AS count_containment_sa_1,
						{ fn IFNULL(month1.count_containment_sc, 0) } AS count_containment_sc_1, 
						{ fn IFNULL(month1.count_absorbent_ua, 0) } AS count_absorbent_ua_1, 
						{ fn IFNULL(month1.count_absorbent_uc, 0) } AS count_absorbent_uc_1, 
						{ fn IFNULL(month1.count_absorbent_sa, 0) } AS count_absorbent_sa_1,
						{ fn IFNULL(month1.count_absorbent_sc, 0) } AS count_absorbent_sc_1, 
						{ fn IFNULL(month1.count_hira_ua, 0) } AS count_hira_ua_1, 
						{ fn IFNULL(month1.count_hira_uc, 0) } AS count_hira_uc_1, 
						{ fn IFNULL(month1.count_hira_sa, 0) } AS count_hira_sa_1,
						{ fn IFNULL(month1.count_hira_sc, 0) } AS count_hira_sc_1, 
						{ fn IFNULL(month1.count_ptw_ua, 0) } AS count_ptw_ua_1, 
						{ fn IFNULL(month1.count_ptw_uc, 0) } AS count_ptw_uc_1, 
						{ fn IFNULL(month1.count_ptw_sa, 0) } AS count_ptw_sa_1,
						{ fn IFNULL(month1.count_ptw_sc, 0) } AS count_ptw_sc_1, 
						{ fn IFNULL(month1.count_sop_ua, 0) } AS count_sop_ua_1, 
						{ fn IFNULL(month1.count_sop_uc, 0) } AS count_sop_uc_1, 
						{ fn IFNULL(month1.count_sop_sa, 0) } AS count_sop_sa_1,
						{ fn IFNULL(month1.count_sop_sc, 0) } AS count_sop_sc_1, 
						{ fn IFNULL(month1.count_msds_ua, 0) } AS count_msds_ua_1, 
						{ fn IFNULL(month1.count_msds_uc, 0) } AS count_msds_uc_1, 
						{ fn IFNULL(month1.count_msds_sa, 0) } AS count_msds_sa_1,
						{ fn IFNULL(month1.count_msds_sc, 0) } AS count_msds_sc_1, 
						{ fn IFNULL(month1.count_emergency_ua, 0) } AS count_emergency_ua_1, 
						{ fn IFNULL(month1.count_emergency_uc, 0) } AS count_emergency_uc_1, 
						{ fn IFNULL(month1.count_emergency_sa, 0) } AS count_emergency_sa_1,
						{ fn IFNULL(month1.count_emergency_sc, 0) } AS count_emergency_sc_1, 
						{ fn IFNULL(month1.count_certificates_ua, 0) } AS count_certificates_ua_1, 
						{ fn IFNULL(month1.count_certificates_uc, 0) } AS count_certificates_uc_1, 
						{ fn IFNULL(month1.count_certificates_sa, 0) } AS count_certificates_sa_1,
						{ fn IFNULL(month1.count_certificates_sc, 0) } AS count_certificates_sc_1, 
						{ fn IFNULL(month1.count_ppe_ua, 0) } AS count_ppe_ua_1, 
						{ fn IFNULL(month1.count_ppe_uc, 0) } AS count_ppe_uc_1, 
						{ fn IFNULL(month1.count_ppe_sa, 0) } AS count_ppe_sa_1,
						{ fn IFNULL(month1.count_ppe_sc, 0) } AS count_ppe_sc_1, 
						{ fn IFNULL(month1.count_hand_ua, 0) } AS count_hand_ua_1, 
						{ fn IFNULL(month1.count_hand_uc, 0) } AS count_hand_uc_1, 
						{ fn IFNULL(month1.count_hand_sa, 0) } AS count_hand_sa_1,
						{ fn IFNULL(month1.count_hand_sc, 0) } AS count_hand_sc_1, 
						{ fn IFNULL(month1.count_mechanical_ua, 0) } AS count_mechanical_ua_1, 
						{ fn IFNULL(month1.count_mechanical_uc, 0) } AS count_mechanical_uc_1, 
						{ fn IFNULL(month1.count_mechanical_sa, 0) } AS count_mechanical_sa_1,
						{ fn IFNULL(month1.count_mechanical_sc, 0) } AS count_mechanical_sc_1, 
						{ fn IFNULL(month1.count_electrical_ua, 0) } AS count_electrical_ua_1, 
						{ fn IFNULL(month1.count_electrical_uc, 0) } AS count_electrical_uc_1, 
						{ fn IFNULL(month1.count_electrical_sa, 0) } AS count_electrical_sa_1,
						{ fn IFNULL(month1.count_electrical_sc, 0) } AS count_electrical_sc_1, 
						{ fn IFNULL(month1.count_vehicular_ua, 0) } AS count_vehicular_ua_1, 
						{ fn IFNULL(month1.count_vehicular_uc, 0) } AS count_vehicular_uc_1, 
						{ fn IFNULL(month1.count_vehicular_sa, 0) } AS count_vehicular_sa_1,
						{ fn IFNULL(month1.count_vehicular_sc, 0) } AS count_vehicular_sc_1, 
						{ fn IFNULL(month1.count_substandard_ua, 0) } AS count_substandard_ua_1, 
						{ fn IFNULL(month1.count_substandard_uc, 0) } AS count_substandard_uc_1, 
						{ fn IFNULL(month1.count_substandard_sa, 0) } AS count_substandard_sa_1,
						{ fn IFNULL(month1.count_substandard_sc, 0) } AS count_substandard_sc_1, 
						{ fn IFNULL(month1.count_h2s_ua, 0) } AS count_h2s_ua_1, 
						{ fn IFNULL(month1.count_h2s_uc, 0) } AS count_h2s_uc_1, 
						{ fn IFNULL(month1.count_h2s_sa, 0) } AS count_h2s_sa_1,
						{ fn IFNULL(month1.count_h2s_sc, 0) } AS count_h2s_sc_1, 
						{ fn IFNULL(month1.count_workplace_health_ua, 0) } AS count_workplace_health_ua_1, 
						{ fn IFNULL(month1.count_workplace_health_uc, 0) } AS count_workplace_health_uc_1, 
						{ fn IFNULL(month1.count_workplace_health_sa, 0) } AS count_workplace_health_sa_1,
						{ fn IFNULL(month1.count_workplace_health_sc, 0) } AS count_workplace_health_sc_1,
						{ fn IFNULL(month2.count_accident_ua, 0) } AS count_accident_ua_2, 
						{ fn IFNULL(month2.count_accident_uc, 0) } AS count_accident_uc_2, 
						{ fn IFNULL(month2.count_accident_sa, 0) } AS count_accident_sa_2,
						{ fn IFNULL(month2.count_accident_sc, 0) } AS count_accident_sc_2, 
						{ fn IFNULL(month2.count_fire_ua, 0) } AS count_fire_ua_2, 
						{ fn IFNULL(month2.count_fire_uc, 0) } AS count_fire_uc_2, 
						{ fn IFNULL(month2.count_fire_sa, 0) } AS count_fire_sa_2,
						{ fn IFNULL(month2.count_fire_sc, 0) } AS count_fire_sc_2, 
						{ fn IFNULL(month2.count_prevention_ua, 0) } AS count_prevention_ua_2, 
						{ fn IFNULL(month2.count_prevention_uc, 0) } AS count_prevention_uc_2, 
						{ fn IFNULL(month2.count_prevention_sa, 0) } AS count_prevention_sa_2,
						{ fn IFNULL(month2.count_prevention_sc, 0) } AS count_prevention_sc_2, 
						{ fn IFNULL(month2.count_supervisor_ua, 0) } AS count_supervisor_ua_2, 
						{ fn IFNULL(month2.count_supervisor_uc, 0) } AS count_supervisor_uc_2, 
						{ fn IFNULL(month2.count_supervisor_sa, 0) } AS count_supervisor_sa_2,
						{ fn IFNULL(month2.count_supervisor_sc, 0) } AS count_supervisor_sc_2, 
						{ fn IFNULL(month2.count_fit_work_ua, 0) } AS count_fit_work_ua_2, 
						{ fn IFNULL(month2.count_fit_work_uc, 0) } AS count_fit_work_uc_2, 
						{ fn IFNULL(month2.count_fit_work_sa, 0) } AS count_fit_work_sa_2,
						{ fn IFNULL(month2.count_fit_work_sc, 0) } AS count_fit_work_sc_2, 
						{ fn IFNULL(month2.count_psychological_ua, 0) } AS count_psychological_ua_2, 
						{ fn IFNULL(month2.count_psychological_uc, 0) } AS count_psychological_uc_2, 
						{ fn IFNULL(month2.count_psychological_sa, 0) } AS count_psychological_sa_2,
						{ fn IFNULL(month2.count_psychological_sc, 0) } AS count_psychological_sc_2, 
						{ fn IFNULL(month2.count_posture_ua, 0) } AS count_posture_ua_2, 
						{ fn IFNULL(month2.count_posture_uc, 0) } AS count_posture_uc_2, 
						{ fn IFNULL(month2.count_posture_sa, 0) } AS count_posture_sa_2,
						{ fn IFNULL(month2.count_posture_sc, 0) } AS count_posture_sc_2, 
						{ fn IFNULL(month2.count_substance_ua, 0) } AS count_substance_ua_2, 
						{ fn IFNULL(month2.count_substance_uc, 0) } AS count_substance_uc_2, 
						{ fn IFNULL(month2.count_substance_sa, 0) } AS count_substance_sa_2,
						{ fn IFNULL(month2.count_substance_sc, 0) } AS count_substance_sc_2, 
						{ fn IFNULL(month2.count_hygiene_ua, 0) } AS count_hygiene_ua_2, 
						{ fn IFNULL(month2.count_hygiene_uc, 0) } AS count_hygiene_uc_2, 
						{ fn IFNULL(month2.count_hygiene_sa, 0) } AS count_hygiene_sa_2,
						{ fn IFNULL(month2.count_hygiene_sc, 0) } AS count_hygiene_sc_2, 
						{ fn IFNULL(month2.count_house_ua, 0) } AS count_house_ua_2, 
						{ fn IFNULL(month2.count_house_uc, 0) } AS count_house_uc_2, 
						{ fn IFNULL(month2.count_house_sa, 0) } AS count_house_sa_2,
						{ fn IFNULL(month2.count_house_sc, 0) } AS count_house_sc_2, 
						{ fn IFNULL(month2.count_standard_ua, 0) } AS count_standard_ua_2, 
						{ fn IFNULL(month2.count_standard_uc, 0) } AS count_standard_uc_2, 
						{ fn IFNULL(month2.count_standard_sa, 0) } AS count_standard_sa_2,
						{ fn IFNULL(month2.count_standard_sc, 0) } AS count_standard_sc_2, 
						{ fn IFNULL(month2.count_spill_ua, 0) } AS count_spill_ua_2, 
						{ fn IFNULL(month2.count_spill_uc, 0) } AS count_spill_uc_2, 
						{ fn IFNULL(month2.count_spill_sa, 0) } AS count_spill_sa_2,
						{ fn IFNULL(month2.count_spill_sc, 0) } AS count_spill_sc_2, 
						{ fn IFNULL(month2.count_waste_energy_ua, 0) } AS count_waste_energy_ua_2, 
						{ fn IFNULL(month2.count_waste_energy_uc, 0) } AS count_waste_energy_uc_2, 
						{ fn IFNULL(month2.count_waste_energy_sa, 0) } AS count_waste_energy_sa_2,
						{ fn IFNULL(month2.count_waste_energy_sc, 0) } AS count_waste_energy_sc_2, 
						{ fn IFNULL(month2.count_containment_ua, 0) } AS count_containment_ua_2, 
						{ fn IFNULL(month2.count_containment_uc, 0) } AS count_containment_uc_2, 
						{ fn IFNULL(month2.count_containment_sa, 0) } AS count_containment_sa_2,
						{ fn IFNULL(month2.count_containment_sc, 0) } AS count_containment_sc_2, 
						{ fn IFNULL(month2.count_absorbent_ua, 0) } AS count_absorbent_ua_2, 
						{ fn IFNULL(month2.count_absorbent_uc, 0) } AS count_absorbent_uc_2, 
						{ fn IFNULL(month2.count_absorbent_sa, 0) } AS count_absorbent_sa_2,
						{ fn IFNULL(month2.count_absorbent_sc, 0) } AS count_absorbent_sc_2, 
						{ fn IFNULL(month2.count_hira_ua, 0) } AS count_hira_ua_2, 
						{ fn IFNULL(month2.count_hira_uc, 0) } AS count_hira_uc_2, 
						{ fn IFNULL(month2.count_hira_sa, 0) } AS count_hira_sa_2,
						{ fn IFNULL(month2.count_hira_sc, 0) } AS count_hira_sc_2, 
						{ fn IFNULL(month2.count_ptw_ua, 0) } AS count_ptw_ua_2, 
						{ fn IFNULL(month2.count_ptw_uc, 0) } AS count_ptw_uc_2, 
						{ fn IFNULL(month2.count_ptw_sa, 0) } AS count_ptw_sa_2,
						{ fn IFNULL(month2.count_ptw_sc, 0) } AS count_ptw_sc_2, 
						{ fn IFNULL(month2.count_sop_ua, 0) } AS count_sop_ua_2, 
						{ fn IFNULL(month2.count_sop_uc, 0) } AS count_sop_uc_2, 
						{ fn IFNULL(month2.count_sop_sa, 0) } AS count_sop_sa_2,
						{ fn IFNULL(month2.count_sop_sc, 0) } AS count_sop_sc_2, 
						{ fn IFNULL(month2.count_msds_ua, 0) } AS count_msds_ua_2, 
						{ fn IFNULL(month2.count_msds_uc, 0) } AS count_msds_uc_2, 
						{ fn IFNULL(month2.count_msds_sa, 0) } AS count_msds_sa_2,
						{ fn IFNULL(month2.count_msds_sc, 0) } AS count_msds_sc_2, 
						{ fn IFNULL(month2.count_emergency_ua, 0) } AS count_emergency_ua_2, 
						{ fn IFNULL(month2.count_emergency_uc, 0) } AS count_emergency_uc_2, 
						{ fn IFNULL(month2.count_emergency_sa, 0) } AS count_emergency_sa_2,
						{ fn IFNULL(month2.count_emergency_sc, 0) } AS count_emergency_sc_2, 
						{ fn IFNULL(month2.count_certificates_ua, 0) } AS count_certificates_ua_2, 
						{ fn IFNULL(month2.count_certificates_uc, 0) } AS count_certificates_uc_2, 
						{ fn IFNULL(month2.count_certificates_sa, 0) } AS count_certificates_sa_2,
						{ fn IFNULL(month2.count_certificates_sc, 0) } AS count_certificates_sc_2, 
						{ fn IFNULL(month2.count_ppe_ua, 0) } AS count_ppe_ua_2, 
						{ fn IFNULL(month2.count_ppe_uc, 0) } AS count_ppe_uc_2, 
						{ fn IFNULL(month2.count_ppe_sa, 0) } AS count_ppe_sa_2,
						{ fn IFNULL(month2.count_ppe_sc, 0) } AS count_ppe_sc_2, 
						{ fn IFNULL(month2.count_hand_ua, 0) } AS count_hand_ua_2, 
						{ fn IFNULL(month2.count_hand_uc, 0) } AS count_hand_uc_2, 
						{ fn IFNULL(month2.count_hand_sa, 0) } AS count_hand_sa_2,
						{ fn IFNULL(month2.count_hand_sc, 0) } AS count_hand_sc_2, 
						{ fn IFNULL(month2.count_mechanical_ua, 0) } AS count_mechanical_ua_2, 
						{ fn IFNULL(month2.count_mechanical_uc, 0) } AS count_mechanical_uc_2, 
						{ fn IFNULL(month2.count_mechanical_sa, 0) } AS count_mechanical_sa_2,
						{ fn IFNULL(month2.count_mechanical_sc, 0) } AS count_mechanical_sc_2, 
						{ fn IFNULL(month2.count_electrical_ua, 0) } AS count_electrical_ua_2, 
						{ fn IFNULL(month2.count_electrical_uc, 0) } AS count_electrical_uc_2, 
						{ fn IFNULL(month2.count_electrical_sa, 0) } AS count_electrical_sa_2,
						{ fn IFNULL(month2.count_electrical_sc, 0) } AS count_electrical_sc_2, 
						{ fn IFNULL(month2.count_vehicular_ua, 0) } AS count_vehicular_ua_2, 
						{ fn IFNULL(month2.count_vehicular_uc, 0) } AS count_vehicular_uc_2, 
						{ fn IFNULL(month2.count_vehicular_sa, 0) } AS count_vehicular_sa_2,
						{ fn IFNULL(month2.count_vehicular_sc, 0) } AS count_vehicular_sc_2, 
						{ fn IFNULL(month2.count_substandard_ua, 0) } AS count_substandard_ua_2, 
						{ fn IFNULL(month2.count_substandard_uc, 0) } AS count_substandard_uc_2, 
						{ fn IFNULL(month2.count_substandard_sa, 0) } AS count_substandard_sa_2,
						{ fn IFNULL(month2.count_substandard_sc, 0) } AS count_substandard_sc_2, 
						{ fn IFNULL(month2.count_h2s_ua, 0) } AS count_h2s_ua_2, 
						{ fn IFNULL(month2.count_h2s_uc, 0) } AS count_h2s_uc_2, 
						{ fn IFNULL(month2.count_h2s_sa, 0) } AS count_h2s_sa_2,
						{ fn IFNULL(month2.count_h2s_sc, 0) } AS count_h2s_sc_2, 
						{ fn IFNULL(month2.count_workplace_health_ua, 0) } AS count_workplace_health_ua_2, 
						{ fn IFNULL(month2.count_workplace_health_uc, 0) } AS count_workplace_health_uc_2, 
						{ fn IFNULL(month2.count_workplace_health_sa, 0) } AS count_workplace_health_sa_2,
						{ fn IFNULL(month2.count_workplace_health_sc, 0) } AS count_workplace_health_sc_2,
						{ fn IFNULL(month3.count_accident_ua, 0) } AS count_accident_ua_3, 
						{ fn IFNULL(month3.count_accident_uc, 0) } AS count_accident_uc_3, 
						{ fn IFNULL(month3.count_accident_sa, 0) } AS count_accident_sa_3,
						{ fn IFNULL(month3.count_accident_sc, 0) } AS count_accident_sc_3, 
						{ fn IFNULL(month3.count_fire_ua, 0) } AS count_fire_ua_3, 
						{ fn IFNULL(month3.count_fire_uc, 0) } AS count_fire_uc_3, 
						{ fn IFNULL(month3.count_fire_sa, 0) } AS count_fire_sa_3,
						{ fn IFNULL(month3.count_fire_sc, 0) } AS count_fire_sc_3, 
						{ fn IFNULL(month3.count_prevention_ua, 0) } AS count_prevention_ua_3, 
						{ fn IFNULL(month3.count_prevention_uc, 0) } AS count_prevention_uc_3, 
						{ fn IFNULL(month3.count_prevention_sa, 0) } AS count_prevention_sa_3,
						{ fn IFNULL(month3.count_prevention_sc, 0) } AS count_prevention_sc_3, 
						{ fn IFNULL(month3.count_supervisor_ua, 0) } AS count_supervisor_ua_3, 
						{ fn IFNULL(month3.count_supervisor_uc, 0) } AS count_supervisor_uc_3, 
						{ fn IFNULL(month3.count_supervisor_sa, 0) } AS count_supervisor_sa_3,
						{ fn IFNULL(month3.count_supervisor_sc, 0) } AS count_supervisor_sc_3, 
						{ fn IFNULL(month3.count_fit_work_ua, 0) } AS count_fit_work_ua_3, 
						{ fn IFNULL(month3.count_fit_work_uc, 0) } AS count_fit_work_uc_3, 
						{ fn IFNULL(month3.count_fit_work_sa, 0) } AS count_fit_work_sa_3,
						{ fn IFNULL(month3.count_fit_work_sc, 0) } AS count_fit_work_sc_3, 
						{ fn IFNULL(month3.count_psychological_ua, 0) } AS count_psychological_ua_3, 
						{ fn IFNULL(month3.count_psychological_uc, 0) } AS count_psychological_uc_3, 
						{ fn IFNULL(month3.count_psychological_sa, 0) } AS count_psychological_sa_3,
						{ fn IFNULL(month3.count_psychological_sc, 0) } AS count_psychological_sc_3, 
						{ fn IFNULL(month3.count_posture_ua, 0) } AS count_posture_ua_3, 
						{ fn IFNULL(month3.count_posture_uc, 0) } AS count_posture_uc_3, 
						{ fn IFNULL(month3.count_posture_sa, 0) } AS count_posture_sa_3,
						{ fn IFNULL(month3.count_posture_sc, 0) } AS count_posture_sc_3, 
						{ fn IFNULL(month3.count_substance_ua, 0) } AS count_substance_ua_3, 
						{ fn IFNULL(month3.count_substance_uc, 0) } AS count_substance_uc_3, 
						{ fn IFNULL(month3.count_substance_sa, 0) } AS count_substance_sa_3,
						{ fn IFNULL(month3.count_substance_sc, 0) } AS count_substance_sc_3, 
						{ fn IFNULL(month3.count_hygiene_ua, 0) } AS count_hygiene_ua_3, 
						{ fn IFNULL(month3.count_hygiene_uc, 0) } AS count_hygiene_uc_3, 
						{ fn IFNULL(month3.count_hygiene_sa, 0) } AS count_hygiene_sa_3,
						{ fn IFNULL(month3.count_hygiene_sc, 0) } AS count_hygiene_sc_3, 
						{ fn IFNULL(month3.count_house_ua, 0) } AS count_house_ua_3, 
						{ fn IFNULL(month3.count_house_uc, 0) } AS count_house_uc_3, 
						{ fn IFNULL(month3.count_house_sa, 0) } AS count_house_sa_3,
						{ fn IFNULL(month3.count_house_sc, 0) } AS count_house_sc_3, 
						{ fn IFNULL(month3.count_standard_ua, 0) } AS count_standard_ua_3, 
						{ fn IFNULL(month3.count_standard_uc, 0) } AS count_standard_uc_3, 
						{ fn IFNULL(month3.count_standard_sa, 0) } AS count_standard_sa_3,
						{ fn IFNULL(month3.count_standard_sc, 0) } AS count_standard_sc_3, 
						{ fn IFNULL(month3.count_spill_ua, 0) } AS count_spill_ua_3, 
						{ fn IFNULL(month3.count_spill_uc, 0) } AS count_spill_uc_3, 
						{ fn IFNULL(month3.count_spill_sa, 0) } AS count_spill_sa_3,
						{ fn IFNULL(month3.count_spill_sc, 0) } AS count_spill_sc_3, 
						{ fn IFNULL(month3.count_waste_energy_ua, 0) } AS count_waste_energy_ua_3, 
						{ fn IFNULL(month3.count_waste_energy_uc, 0) } AS count_waste_energy_uc_3, 
						{ fn IFNULL(month3.count_waste_energy_sa, 0) } AS count_waste_energy_sa_3,
						{ fn IFNULL(month3.count_waste_energy_sc, 0) } AS count_waste_energy_sc_3, 
						{ fn IFNULL(month3.count_containment_ua, 0) } AS count_containment_ua_3, 
						{ fn IFNULL(month3.count_containment_uc, 0) } AS count_containment_uc_3, 
						{ fn IFNULL(month3.count_containment_sa, 0) } AS count_containment_sa_3,
						{ fn IFNULL(month3.count_containment_sc, 0) } AS count_containment_sc_3, 
						{ fn IFNULL(month3.count_absorbent_ua, 0) } AS count_absorbent_ua_3, 
						{ fn IFNULL(month3.count_absorbent_uc, 0) } AS count_absorbent_uc_3, 
						{ fn IFNULL(month3.count_absorbent_sa, 0) } AS count_absorbent_sa_3,
						{ fn IFNULL(month3.count_absorbent_sc, 0) } AS count_absorbent_sc_3, 
						{ fn IFNULL(month3.count_hira_ua, 0) } AS count_hira_ua_3, 
						{ fn IFNULL(month3.count_hira_uc, 0) } AS count_hira_uc_3, 
						{ fn IFNULL(month3.count_hira_sa, 0) } AS count_hira_sa_3,
						{ fn IFNULL(month3.count_hira_sc, 0) } AS count_hira_sc_3, 
						{ fn IFNULL(month3.count_ptw_ua, 0) } AS count_ptw_ua_3, 
						{ fn IFNULL(month3.count_ptw_uc, 0) } AS count_ptw_uc_3, 
						{ fn IFNULL(month3.count_ptw_sa, 0) } AS count_ptw_sa_3,
						{ fn IFNULL(month3.count_ptw_sc, 0) } AS count_ptw_sc_3, 
						{ fn IFNULL(month3.count_sop_ua, 0) } AS count_sop_ua_3, 
						{ fn IFNULL(month3.count_sop_uc, 0) } AS count_sop_uc_3, 
						{ fn IFNULL(month3.count_sop_sa, 0) } AS count_sop_sa_3,
						{ fn IFNULL(month3.count_sop_sc, 0) } AS count_sop_sc_3, 
						{ fn IFNULL(month3.count_msds_ua, 0) } AS count_msds_ua_3, 
						{ fn IFNULL(month3.count_msds_uc, 0) } AS count_msds_uc_3, 
						{ fn IFNULL(month3.count_msds_sa, 0) } AS count_msds_sa_3,
						{ fn IFNULL(month3.count_msds_sc, 0) } AS count_msds_sc_3, 
						{ fn IFNULL(month3.count_emergency_ua, 0) } AS count_emergency_ua_3, 
						{ fn IFNULL(month3.count_emergency_uc, 0) } AS count_emergency_uc_3, 
						{ fn IFNULL(month3.count_emergency_sa, 0) } AS count_emergency_sa_3,
						{ fn IFNULL(month3.count_emergency_sc, 0) } AS count_emergency_sc_3, 
						{ fn IFNULL(month3.count_certificates_ua, 0) } AS count_certificates_ua_3, 
						{ fn IFNULL(month3.count_certificates_uc, 0) } AS count_certificates_uc_3, 
						{ fn IFNULL(month3.count_certificates_sa, 0) } AS count_certificates_sa_3,
						{ fn IFNULL(month3.count_certificates_sc, 0) } AS count_certificates_sc_3, 
						{ fn IFNULL(month3.count_ppe_ua, 0) } AS count_ppe_ua_3, 
						{ fn IFNULL(month3.count_ppe_uc, 0) } AS count_ppe_uc_3, 
						{ fn IFNULL(month3.count_ppe_sa, 0) } AS count_ppe_sa_3,
						{ fn IFNULL(month3.count_ppe_sc, 0) } AS count_ppe_sc_3, 
						{ fn IFNULL(month3.count_hand_ua, 0) } AS count_hand_ua_3, 
						{ fn IFNULL(month3.count_hand_uc, 0) } AS count_hand_uc_3, 
						{ fn IFNULL(month3.count_hand_sa, 0) } AS count_hand_sa_3,
						{ fn IFNULL(month3.count_hand_sc, 0) } AS count_hand_sc_3, 
						{ fn IFNULL(month3.count_mechanical_ua, 0) } AS count_mechanical_ua_3, 
						{ fn IFNULL(month3.count_mechanical_uc, 0) } AS count_mechanical_uc_3, 
						{ fn IFNULL(month3.count_mechanical_sa, 0) } AS count_mechanical_sa_3,
						{ fn IFNULL(month3.count_mechanical_sc, 0) } AS count_mechanical_sc_3, 
						{ fn IFNULL(month3.count_electrical_ua, 0) } AS count_electrical_ua_3, 
						{ fn IFNULL(month3.count_electrical_uc, 0) } AS count_electrical_uc_3, 
						{ fn IFNULL(month3.count_electrical_sa, 0) } AS count_electrical_sa_3,
						{ fn IFNULL(month3.count_electrical_sc, 0) } AS count_electrical_sc_3, 
						{ fn IFNULL(month3.count_vehicular_ua, 0) } AS count_vehicular_ua_3, 
						{ fn IFNULL(month3.count_vehicular_uc, 0) } AS count_vehicular_uc_3, 
						{ fn IFNULL(month3.count_vehicular_sa, 0) } AS count_vehicular_sa_3,
						{ fn IFNULL(month3.count_vehicular_sc, 0) } AS count_vehicular_sc_3, 
						{ fn IFNULL(month3.count_substandard_ua, 0) } AS count_substandard_ua_3, 
						{ fn IFNULL(month3.count_substandard_uc, 0) } AS count_substandard_uc_3, 
						{ fn IFNULL(month3.count_substandard_sa, 0) } AS count_substandard_sa_3,
						{ fn IFNULL(month3.count_substandard_sc, 0) } AS count_substandard_sc_3, 
						{ fn IFNULL(month3.count_h2s_ua, 0) } AS count_h2s_ua_3, 
						{ fn IFNULL(month3.count_h2s_uc, 0) } AS count_h2s_uc_3, 
						{ fn IFNULL(month3.count_h2s_sa, 0) } AS count_h2s_sa_3,
						{ fn IFNULL(month3.count_h2s_sc, 0) } AS count_h2s_sc_3, 
						{ fn IFNULL(month3.count_workplace_health_ua, 0) } AS count_workplace_health_ua_3, 
						{ fn IFNULL(month3.count_workplace_health_uc, 0) } AS count_workplace_health_uc_3, 
						{ fn IFNULL(month3.count_workplace_health_sa, 0) } AS count_workplace_health_sa_3,
						{ fn IFNULL(month3.count_workplace_health_sc, 0) } AS count_workplace_health_sc_3,
						{ fn IFNULL(month4.count_accident_ua, 0) } AS count_accident_ua_4, 
						{ fn IFNULL(month4.count_accident_uc, 0) } AS count_accident_uc_4, 
						{ fn IFNULL(month4.count_accident_sa, 0) } AS count_accident_sa_4,
						{ fn IFNULL(month4.count_accident_sc, 0) } AS count_accident_sc_4, 
						{ fn IFNULL(month4.count_fire_ua, 0) } AS count_fire_ua_4, 
						{ fn IFNULL(month4.count_fire_uc, 0) } AS count_fire_uc_4, 
						{ fn IFNULL(month4.count_fire_sa, 0) } AS count_fire_sa_4,
						{ fn IFNULL(month4.count_fire_sc, 0) } AS count_fire_sc_4, 
						{ fn IFNULL(month4.count_prevention_ua, 0) } AS count_prevention_ua_4, 
						{ fn IFNULL(month4.count_prevention_uc, 0) } AS count_prevention_uc_4, 
						{ fn IFNULL(month4.count_prevention_sa, 0) } AS count_prevention_sa_4,
						{ fn IFNULL(month4.count_prevention_sc, 0) } AS count_prevention_sc_4, 
						{ fn IFNULL(month4.count_supervisor_ua, 0) } AS count_supervisor_ua_4, 
						{ fn IFNULL(month4.count_supervisor_uc, 0) } AS count_supervisor_uc_4, 
						{ fn IFNULL(month4.count_supervisor_sa, 0) } AS count_supervisor_sa_4,
						{ fn IFNULL(month4.count_supervisor_sc, 0) } AS count_supervisor_sc_4, 
						{ fn IFNULL(month4.count_fit_work_ua, 0) } AS count_fit_work_ua_4, 
						{ fn IFNULL(month4.count_fit_work_uc, 0) } AS count_fit_work_uc_4, 
						{ fn IFNULL(month4.count_fit_work_sa, 0) } AS count_fit_work_sa_4,
						{ fn IFNULL(month4.count_fit_work_sc, 0) } AS count_fit_work_sc_4, 
						{ fn IFNULL(month4.count_psychological_ua, 0) } AS count_psychological_ua_4, 
						{ fn IFNULL(month4.count_psychological_uc, 0) } AS count_psychological_uc_4, 
						{ fn IFNULL(month4.count_psychological_sa, 0) } AS count_psychological_sa_4,
						{ fn IFNULL(month4.count_psychological_sc, 0) } AS count_psychological_sc_4, 
						{ fn IFNULL(month4.count_posture_ua, 0) } AS count_posture_ua_4, 
						{ fn IFNULL(month4.count_posture_uc, 0) } AS count_posture_uc_4, 
						{ fn IFNULL(month4.count_posture_sa, 0) } AS count_posture_sa_4,
						{ fn IFNULL(month4.count_posture_sc, 0) } AS count_posture_sc_4, 
						{ fn IFNULL(month4.count_substance_ua, 0) } AS count_substance_ua_4, 
						{ fn IFNULL(month4.count_substance_uc, 0) } AS count_substance_uc_4, 
						{ fn IFNULL(month4.count_substance_sa, 0) } AS count_substance_sa_4,
						{ fn IFNULL(month4.count_substance_sc, 0) } AS count_substance_sc_4, 
						{ fn IFNULL(month4.count_hygiene_ua, 0) } AS count_hygiene_ua_4, 
						{ fn IFNULL(month4.count_hygiene_uc, 0) } AS count_hygiene_uc_4, 
						{ fn IFNULL(month4.count_hygiene_sa, 0) } AS count_hygiene_sa_4,
						{ fn IFNULL(month4.count_hygiene_sc, 0) } AS count_hygiene_sc_4, 
						{ fn IFNULL(month4.count_house_ua, 0) } AS count_house_ua_4, 
						{ fn IFNULL(month4.count_house_uc, 0) } AS count_house_uc_4, 
						{ fn IFNULL(month4.count_house_sa, 0) } AS count_house_sa_4,
						{ fn IFNULL(month4.count_house_sc, 0) } AS count_house_sc_4, 
						{ fn IFNULL(month4.count_standard_ua, 0) } AS count_standard_ua_4, 
						{ fn IFNULL(month4.count_standard_uc, 0) } AS count_standard_uc_4, 
						{ fn IFNULL(month4.count_standard_sa, 0) } AS count_standard_sa_4,
						{ fn IFNULL(month4.count_standard_sc, 0) } AS count_standard_sc_4, 
						{ fn IFNULL(month4.count_spill_ua, 0) } AS count_spill_ua_4, 
						{ fn IFNULL(month4.count_spill_uc, 0) } AS count_spill_uc_4, 
						{ fn IFNULL(month4.count_spill_sa, 0) } AS count_spill_sa_4,
						{ fn IFNULL(month4.count_spill_sc, 0) } AS count_spill_sc_4, 
						{ fn IFNULL(month4.count_waste_energy_ua, 0) } AS count_waste_energy_ua_4, 
						{ fn IFNULL(month4.count_waste_energy_uc, 0) } AS count_waste_energy_uc_4, 
						{ fn IFNULL(month4.count_waste_energy_sa, 0) } AS count_waste_energy_sa_4,
						{ fn IFNULL(month4.count_waste_energy_sc, 0) } AS count_waste_energy_sc_4, 
						{ fn IFNULL(month4.count_containment_ua, 0) } AS count_containment_ua_4, 
						{ fn IFNULL(month4.count_containment_uc, 0) } AS count_containment_uc_4, 
						{ fn IFNULL(month4.count_containment_sa, 0) } AS count_containment_sa_4,
						{ fn IFNULL(month4.count_containment_sc, 0) } AS count_containment_sc_4, 
						{ fn IFNULL(month4.count_absorbent_ua, 0) } AS count_absorbent_ua_4, 
						{ fn IFNULL(month4.count_absorbent_uc, 0) } AS count_absorbent_uc_4, 
						{ fn IFNULL(month4.count_absorbent_sa, 0) } AS count_absorbent_sa_4,
						{ fn IFNULL(month4.count_absorbent_sc, 0) } AS count_absorbent_sc_4, 
						{ fn IFNULL(month4.count_hira_ua, 0) } AS count_hira_ua_4, 
						{ fn IFNULL(month4.count_hira_uc, 0) } AS count_hira_uc_4, 
						{ fn IFNULL(month4.count_hira_sa, 0) } AS count_hira_sa_4,
						{ fn IFNULL(month4.count_hira_sc, 0) } AS count_hira_sc_4, 
						{ fn IFNULL(month4.count_ptw_ua, 0) } AS count_ptw_ua_4, 
						{ fn IFNULL(month4.count_ptw_uc, 0) } AS count_ptw_uc_4, 
						{ fn IFNULL(month4.count_ptw_sa, 0) } AS count_ptw_sa_4,
						{ fn IFNULL(month4.count_ptw_sc, 0) } AS count_ptw_sc_4, 
						{ fn IFNULL(month4.count_sop_ua, 0) } AS count_sop_ua_4, 
						{ fn IFNULL(month4.count_sop_uc, 0) } AS count_sop_uc_4, 
						{ fn IFNULL(month4.count_sop_sa, 0) } AS count_sop_sa_4,
						{ fn IFNULL(month4.count_sop_sc, 0) } AS count_sop_sc_4, 
						{ fn IFNULL(month4.count_msds_ua, 0) } AS count_msds_ua_4, 
						{ fn IFNULL(month4.count_msds_uc, 0) } AS count_msds_uc_4, 
						{ fn IFNULL(month4.count_msds_sa, 0) } AS count_msds_sa_4,
						{ fn IFNULL(month4.count_msds_sc, 0) } AS count_msds_sc_4, 
						{ fn IFNULL(month4.count_emergency_ua, 0) } AS count_emergency_ua_4, 
						{ fn IFNULL(month4.count_emergency_uc, 0) } AS count_emergency_uc_4, 
						{ fn IFNULL(month4.count_emergency_sa, 0) } AS count_emergency_sa_4,
						{ fn IFNULL(month4.count_emergency_sc, 0) } AS count_emergency_sc_4, 
						{ fn IFNULL(month4.count_certificates_ua, 0) } AS count_certificates_ua_4, 
						{ fn IFNULL(month4.count_certificates_uc, 0) } AS count_certificates_uc_4, 
						{ fn IFNULL(month4.count_certificates_sa, 0) } AS count_certificates_sa_4,
						{ fn IFNULL(month4.count_certificates_sc, 0) } AS count_certificates_sc_4, 
						{ fn IFNULL(month4.count_ppe_ua, 0) } AS count_ppe_ua_4, 
						{ fn IFNULL(month4.count_ppe_uc, 0) } AS count_ppe_uc_4, 
						{ fn IFNULL(month4.count_ppe_sa, 0) } AS count_ppe_sa_4,
						{ fn IFNULL(month4.count_ppe_sc, 0) } AS count_ppe_sc_4, 
						{ fn IFNULL(month4.count_hand_ua, 0) } AS count_hand_ua_4, 
						{ fn IFNULL(month4.count_hand_uc, 0) } AS count_hand_uc_4, 
						{ fn IFNULL(month4.count_hand_sa, 0) } AS count_hand_sa_4,
						{ fn IFNULL(month4.count_hand_sc, 0) } AS count_hand_sc_4, 
						{ fn IFNULL(month4.count_mechanical_ua, 0) } AS count_mechanical_ua_4, 
						{ fn IFNULL(month4.count_mechanical_uc, 0) } AS count_mechanical_uc_4, 
						{ fn IFNULL(month4.count_mechanical_sa, 0) } AS count_mechanical_sa_4,
						{ fn IFNULL(month4.count_mechanical_sc, 0) } AS count_mechanical_sc_4, 
						{ fn IFNULL(month4.count_electrical_ua, 0) } AS count_electrical_ua_4, 
						{ fn IFNULL(month4.count_electrical_uc, 0) } AS count_electrical_uc_4, 
						{ fn IFNULL(month4.count_electrical_sa, 0) } AS count_electrical_sa_4,
						{ fn IFNULL(month4.count_electrical_sc, 0) } AS count_electrical_sc_4, 
						{ fn IFNULL(month4.count_vehicular_ua, 0) } AS count_vehicular_ua_4, 
						{ fn IFNULL(month4.count_vehicular_uc, 0) } AS count_vehicular_uc_4, 
						{ fn IFNULL(month4.count_vehicular_sa, 0) } AS count_vehicular_sa_4,
						{ fn IFNULL(month4.count_vehicular_sc, 0) } AS count_vehicular_sc_4, 
						{ fn IFNULL(month4.count_substandard_ua, 0) } AS count_substandard_ua_4, 
						{ fn IFNULL(month4.count_substandard_uc, 0) } AS count_substandard_uc_4, 
						{ fn IFNULL(month4.count_substandard_sa, 0) } AS count_substandard_sa_4,
						{ fn IFNULL(month4.count_substandard_sc, 0) } AS count_substandard_sc_4, 
						{ fn IFNULL(month4.count_h2s_ua, 0) } AS count_h2s_ua_4, 
						{ fn IFNULL(month4.count_h2s_uc, 0) } AS count_h2s_uc_4, 
						{ fn IFNULL(month4.count_h2s_sa, 0) } AS count_h2s_sa_4,
						{ fn IFNULL(month4.count_h2s_sc, 0) } AS count_h2s_sc_4, 
						{ fn IFNULL(month4.count_workplace_health_ua, 0) } AS count_workplace_health_ua_4, 
						{ fn IFNULL(month4.count_workplace_health_uc, 0) } AS count_workplace_health_uc_4, 
						{ fn IFNULL(month4.count_workplace_health_sa, 0) } AS count_workplace_health_sa_4,
						{ fn IFNULL(month4.count_workplace_health_sc, 0) } AS count_workplace_health_sc_4,
						{ fn IFNULL(month5.count_accident_ua, 0) } AS count_accident_ua_5, 
						{ fn IFNULL(month5.count_accident_uc, 0) } AS count_accident_uc_5, 
						{ fn IFNULL(month5.count_accident_sa, 0) } AS count_accident_sa_5,
						{ fn IFNULL(month5.count_accident_sc, 0) } AS count_accident_sc_5, 
						{ fn IFNULL(month5.count_fire_ua, 0) } AS count_fire_ua_5, 
						{ fn IFNULL(month5.count_fire_uc, 0) } AS count_fire_uc_5, 
						{ fn IFNULL(month5.count_fire_sa, 0) } AS count_fire_sa_5,
						{ fn IFNULL(month5.count_fire_sc, 0) } AS count_fire_sc_5, 
						{ fn IFNULL(month5.count_prevention_ua, 0) } AS count_prevention_ua_5, 
						{ fn IFNULL(month5.count_prevention_uc, 0) } AS count_prevention_uc_5, 
						{ fn IFNULL(month5.count_prevention_sa, 0) } AS count_prevention_sa_5,
						{ fn IFNULL(month5.count_prevention_sc, 0) } AS count_prevention_sc_5, 
						{ fn IFNULL(month5.count_supervisor_ua, 0) } AS count_supervisor_ua_5, 
						{ fn IFNULL(month5.count_supervisor_uc, 0) } AS count_supervisor_uc_5, 
						{ fn IFNULL(month5.count_supervisor_sa, 0) } AS count_supervisor_sa_5,
						{ fn IFNULL(month5.count_supervisor_sc, 0) } AS count_supervisor_sc_5, 
						{ fn IFNULL(month5.count_fit_work_ua, 0) } AS count_fit_work_ua_5, 
						{ fn IFNULL(month5.count_fit_work_uc, 0) } AS count_fit_work_uc_5, 
						{ fn IFNULL(month5.count_fit_work_sa, 0) } AS count_fit_work_sa_5,
						{ fn IFNULL(month5.count_fit_work_sc, 0) } AS count_fit_work_sc_5, 
						{ fn IFNULL(month5.count_psychological_ua, 0) } AS count_psychological_ua_5, 
						{ fn IFNULL(month5.count_psychological_uc, 0) } AS count_psychological_uc_5, 
						{ fn IFNULL(month5.count_psychological_sa, 0) } AS count_psychological_sa_5,
						{ fn IFNULL(month5.count_psychological_sc, 0) } AS count_psychological_sc_5, 
						{ fn IFNULL(month5.count_posture_ua, 0) } AS count_posture_ua_5, 
						{ fn IFNULL(month5.count_posture_uc, 0) } AS count_posture_uc_5, 
						{ fn IFNULL(month5.count_posture_sa, 0) } AS count_posture_sa_5,
						{ fn IFNULL(month5.count_posture_sc, 0) } AS count_posture_sc_5, 
						{ fn IFNULL(month5.count_substance_ua, 0) } AS count_substance_ua_5, 
						{ fn IFNULL(month5.count_substance_uc, 0) } AS count_substance_uc_5, 
						{ fn IFNULL(month5.count_substance_sa, 0) } AS count_substance_sa_5,
						{ fn IFNULL(month5.count_substance_sc, 0) } AS count_substance_sc_5, 
						{ fn IFNULL(month5.count_hygiene_ua, 0) } AS count_hygiene_ua_5, 
						{ fn IFNULL(month5.count_hygiene_uc, 0) } AS count_hygiene_uc_5, 
						{ fn IFNULL(month5.count_hygiene_sa, 0) } AS count_hygiene_sa_5,
						{ fn IFNULL(month5.count_hygiene_sc, 0) } AS count_hygiene_sc_5, 
						{ fn IFNULL(month5.count_house_ua, 0) } AS count_house_ua_5, 
						{ fn IFNULL(month5.count_house_uc, 0) } AS count_house_uc_5, 
						{ fn IFNULL(month5.count_house_sa, 0) } AS count_house_sa_5,
						{ fn IFNULL(month5.count_house_sc, 0) } AS count_house_sc_5, 
						{ fn IFNULL(month5.count_standard_ua, 0) } AS count_standard_ua_5, 
						{ fn IFNULL(month5.count_standard_uc, 0) } AS count_standard_uc_5, 
						{ fn IFNULL(month5.count_standard_sa, 0) } AS count_standard_sa_5,
						{ fn IFNULL(month5.count_standard_sc, 0) } AS count_standard_sc_5, 
						{ fn IFNULL(month5.count_spill_ua, 0) } AS count_spill_ua_5, 
						{ fn IFNULL(month5.count_spill_uc, 0) } AS count_spill_uc_5, 
						{ fn IFNULL(month5.count_spill_sa, 0) } AS count_spill_sa_5,
						{ fn IFNULL(month5.count_spill_sc, 0) } AS count_spill_sc_5, 
						{ fn IFNULL(month5.count_waste_energy_ua, 0) } AS count_waste_energy_ua_5, 
						{ fn IFNULL(month5.count_waste_energy_uc, 0) } AS count_waste_energy_uc_5, 
						{ fn IFNULL(month5.count_waste_energy_sa, 0) } AS count_waste_energy_sa_5,
						{ fn IFNULL(month5.count_waste_energy_sc, 0) } AS count_waste_energy_sc_5, 
						{ fn IFNULL(month5.count_containment_ua, 0) } AS count_containment_ua_5, 
						{ fn IFNULL(month5.count_containment_uc, 0) } AS count_containment_uc_5, 
						{ fn IFNULL(month5.count_containment_sa, 0) } AS count_containment_sa_5,
						{ fn IFNULL(month5.count_containment_sc, 0) } AS count_containment_sc_5, 
						{ fn IFNULL(month5.count_absorbent_ua, 0) } AS count_absorbent_ua_5, 
						{ fn IFNULL(month5.count_absorbent_uc, 0) } AS count_absorbent_uc_5, 
						{ fn IFNULL(month5.count_absorbent_sa, 0) } AS count_absorbent_sa_5,
						{ fn IFNULL(month5.count_absorbent_sc, 0) } AS count_absorbent_sc_5, 
						{ fn IFNULL(month5.count_hira_ua, 0) } AS count_hira_ua_5, 
						{ fn IFNULL(month5.count_hira_uc, 0) } AS count_hira_uc_5, 
						{ fn IFNULL(month5.count_hira_sa, 0) } AS count_hira_sa_5,
						{ fn IFNULL(month5.count_hira_sc, 0) } AS count_hira_sc_5, 
						{ fn IFNULL(month5.count_ptw_ua, 0) } AS count_ptw_ua_5, 
						{ fn IFNULL(month5.count_ptw_uc, 0) } AS count_ptw_uc_5, 
						{ fn IFNULL(month5.count_ptw_sa, 0) } AS count_ptw_sa_5,
						{ fn IFNULL(month5.count_ptw_sc, 0) } AS count_ptw_sc_5, 
						{ fn IFNULL(month5.count_sop_ua, 0) } AS count_sop_ua_5, 
						{ fn IFNULL(month5.count_sop_uc, 0) } AS count_sop_uc_5, 
						{ fn IFNULL(month5.count_sop_sa, 0) } AS count_sop_sa_5,
						{ fn IFNULL(month5.count_sop_sc, 0) } AS count_sop_sc_5, 
						{ fn IFNULL(month5.count_msds_ua, 0) } AS count_msds_ua_5, 
						{ fn IFNULL(month5.count_msds_uc, 0) } AS count_msds_uc_5, 
						{ fn IFNULL(month5.count_msds_sa, 0) } AS count_msds_sa_5,
						{ fn IFNULL(month5.count_msds_sc, 0) } AS count_msds_sc_5, 
						{ fn IFNULL(month5.count_emergency_ua, 0) } AS count_emergency_ua_5, 
						{ fn IFNULL(month5.count_emergency_uc, 0) } AS count_emergency_uc_5, 
						{ fn IFNULL(month5.count_emergency_sa, 0) } AS count_emergency_sa_5,
						{ fn IFNULL(month5.count_emergency_sc, 0) } AS count_emergency_sc_5, 
						{ fn IFNULL(month5.count_certificates_ua, 0) } AS count_certificates_ua_5, 
						{ fn IFNULL(month5.count_certificates_uc, 0) } AS count_certificates_uc_5, 
						{ fn IFNULL(month5.count_certificates_sa, 0) } AS count_certificates_sa_5,
						{ fn IFNULL(month5.count_certificates_sc, 0) } AS count_certificates_sc_5, 
						{ fn IFNULL(month5.count_ppe_ua, 0) } AS count_ppe_ua_5, 
						{ fn IFNULL(month5.count_ppe_uc, 0) } AS count_ppe_uc_5, 
						{ fn IFNULL(month5.count_ppe_sa, 0) } AS count_ppe_sa_5,
						{ fn IFNULL(month5.count_ppe_sc, 0) } AS count_ppe_sc_5, 
						{ fn IFNULL(month5.count_hand_ua, 0) } AS count_hand_ua_5, 
						{ fn IFNULL(month5.count_hand_uc, 0) } AS count_hand_uc_5, 
						{ fn IFNULL(month5.count_hand_sa, 0) } AS count_hand_sa_5,
						{ fn IFNULL(month5.count_hand_sc, 0) } AS count_hand_sc_5, 
						{ fn IFNULL(month5.count_mechanical_ua, 0) } AS count_mechanical_ua_5, 
						{ fn IFNULL(month5.count_mechanical_uc, 0) } AS count_mechanical_uc_5, 
						{ fn IFNULL(month5.count_mechanical_sa, 0) } AS count_mechanical_sa_5,
						{ fn IFNULL(month5.count_mechanical_sc, 0) } AS count_mechanical_sc_5, 
						{ fn IFNULL(month5.count_electrical_ua, 0) } AS count_electrical_ua_5, 
						{ fn IFNULL(month5.count_electrical_uc, 0) } AS count_electrical_uc_5, 
						{ fn IFNULL(month5.count_electrical_sa, 0) } AS count_electrical_sa_5,
						{ fn IFNULL(month5.count_electrical_sc, 0) } AS count_electrical_sc_5, 
						{ fn IFNULL(month5.count_vehicular_ua, 0) } AS count_vehicular_ua_5, 
						{ fn IFNULL(month5.count_vehicular_uc, 0) } AS count_vehicular_uc_5, 
						{ fn IFNULL(month5.count_vehicular_sa, 0) } AS count_vehicular_sa_5,
						{ fn IFNULL(month5.count_vehicular_sc, 0) } AS count_vehicular_sc_5, 
						{ fn IFNULL(month5.count_substandard_ua, 0) } AS count_substandard_ua_5, 
						{ fn IFNULL(month5.count_substandard_uc, 0) } AS count_substandard_uc_5, 
						{ fn IFNULL(month5.count_substandard_sa, 0) } AS count_substandard_sa_5,
						{ fn IFNULL(month5.count_substandard_sc, 0) } AS count_substandard_sc_5, 
						{ fn IFNULL(month5.count_h2s_ua, 0) } AS count_h2s_ua_5, 
						{ fn IFNULL(month5.count_h2s_uc, 0) } AS count_h2s_uc_5, 
						{ fn IFNULL(month5.count_h2s_sa, 0) } AS count_h2s_sa_5,
						{ fn IFNULL(month5.count_h2s_sc, 0) } AS count_h2s_sc_5, 
						{ fn IFNULL(month5.count_workplace_health_ua, 0) } AS count_workplace_health_ua_5, 
						{ fn IFNULL(month5.count_workplace_health_uc, 0) } AS count_workplace_health_uc_5, 
						{ fn IFNULL(month5.count_workplace_health_sa, 0) } AS count_workplace_health_sa_5,
						{ fn IFNULL(month5.count_workplace_health_sc, 0) } AS count_workplace_health_sc_5,
						{ fn IFNULL(month6.count_accident_ua, 0) } AS count_accident_ua_6, 
						{ fn IFNULL(month6.count_accident_uc, 0) } AS count_accident_uc_6, 
						{ fn IFNULL(month6.count_accident_sa, 0) } AS count_accident_sa_6,
						{ fn IFNULL(month6.count_accident_sc, 0) } AS count_accident_sc_6, 
						{ fn IFNULL(month6.count_fire_ua, 0) } AS count_fire_ua_6, 
						{ fn IFNULL(month6.count_fire_uc, 0) } AS count_fire_uc_6, 
						{ fn IFNULL(month6.count_fire_sa, 0) } AS count_fire_sa_6,
						{ fn IFNULL(month6.count_fire_sc, 0) } AS count_fire_sc_6, 
						{ fn IFNULL(month6.count_prevention_ua, 0) } AS count_prevention_ua_6, 
						{ fn IFNULL(month6.count_prevention_uc, 0) } AS count_prevention_uc_6, 
						{ fn IFNULL(month6.count_prevention_sa, 0) } AS count_prevention_sa_6,
						{ fn IFNULL(month6.count_prevention_sc, 0) } AS count_prevention_sc_6, 
						{ fn IFNULL(month6.count_supervisor_ua, 0) } AS count_supervisor_ua_6, 
						{ fn IFNULL(month6.count_supervisor_uc, 0) } AS count_supervisor_uc_6, 
						{ fn IFNULL(month6.count_supervisor_sa, 0) } AS count_supervisor_sa_6,
						{ fn IFNULL(month6.count_supervisor_sc, 0) } AS count_supervisor_sc_6, 
						{ fn IFNULL(month6.count_fit_work_ua, 0) } AS count_fit_work_ua_6, 
						{ fn IFNULL(month6.count_fit_work_uc, 0) } AS count_fit_work_uc_6, 
						{ fn IFNULL(month6.count_fit_work_sa, 0) } AS count_fit_work_sa_6,
						{ fn IFNULL(month6.count_fit_work_sc, 0) } AS count_fit_work_sc_6, 
						{ fn IFNULL(month6.count_psychological_ua, 0) } AS count_psychological_ua_6, 
						{ fn IFNULL(month6.count_psychological_uc, 0) } AS count_psychological_uc_6, 
						{ fn IFNULL(month6.count_psychological_sa, 0) } AS count_psychological_sa_6,
						{ fn IFNULL(month6.count_psychological_sc, 0) } AS count_psychological_sc_6, 
						{ fn IFNULL(month6.count_posture_ua, 0) } AS count_posture_ua_6, 
						{ fn IFNULL(month6.count_posture_uc, 0) } AS count_posture_uc_6, 
						{ fn IFNULL(month6.count_posture_sa, 0) } AS count_posture_sa_6,
						{ fn IFNULL(month6.count_posture_sc, 0) } AS count_posture_sc_6, 
						{ fn IFNULL(month6.count_substance_ua, 0) } AS count_substance_ua_6, 
						{ fn IFNULL(month6.count_substance_uc, 0) } AS count_substance_uc_6, 
						{ fn IFNULL(month6.count_substance_sa, 0) } AS count_substance_sa_6,
						{ fn IFNULL(month6.count_substance_sc, 0) } AS count_substance_sc_6, 
						{ fn IFNULL(month6.count_hygiene_ua, 0) } AS count_hygiene_ua_6, 
						{ fn IFNULL(month6.count_hygiene_uc, 0) } AS count_hygiene_uc_6, 
						{ fn IFNULL(month6.count_hygiene_sa, 0) } AS count_hygiene_sa_6,
						{ fn IFNULL(month6.count_hygiene_sc, 0) } AS count_hygiene_sc_6, 
						{ fn IFNULL(month6.count_house_ua, 0) } AS count_house_ua_6, 
						{ fn IFNULL(month6.count_house_uc, 0) } AS count_house_uc_6, 
						{ fn IFNULL(month6.count_house_sa, 0) } AS count_house_sa_6,
						{ fn IFNULL(month6.count_house_sc, 0) } AS count_house_sc_6, 
						{ fn IFNULL(month6.count_standard_ua, 0) } AS count_standard_ua_6, 
						{ fn IFNULL(month6.count_standard_uc, 0) } AS count_standard_uc_6, 
						{ fn IFNULL(month6.count_standard_sa, 0) } AS count_standard_sa_6,
						{ fn IFNULL(month6.count_standard_sc, 0) } AS count_standard_sc_6, 
						{ fn IFNULL(month6.count_spill_ua, 0) } AS count_spill_ua_6, 
						{ fn IFNULL(month6.count_spill_uc, 0) } AS count_spill_uc_6, 
						{ fn IFNULL(month6.count_spill_sa, 0) } AS count_spill_sa_6,
						{ fn IFNULL(month6.count_spill_sc, 0) } AS count_spill_sc_6, 
						{ fn IFNULL(month6.count_waste_energy_ua, 0) } AS count_waste_energy_ua_6, 
						{ fn IFNULL(month6.count_waste_energy_uc, 0) } AS count_waste_energy_uc_6, 
						{ fn IFNULL(month6.count_waste_energy_sa, 0) } AS count_waste_energy_sa_6,
						{ fn IFNULL(month6.count_waste_energy_sc, 0) } AS count_waste_energy_sc_6, 
						{ fn IFNULL(month6.count_containment_ua, 0) } AS count_containment_ua_6, 
						{ fn IFNULL(month6.count_containment_uc, 0) } AS count_containment_uc_6, 
						{ fn IFNULL(month6.count_containment_sa, 0) } AS count_containment_sa_6,
						{ fn IFNULL(month6.count_containment_sc, 0) } AS count_containment_sc_6, 
						{ fn IFNULL(month6.count_absorbent_ua, 0) } AS count_absorbent_ua_6, 
						{ fn IFNULL(month6.count_absorbent_uc, 0) } AS count_absorbent_uc_6, 
						{ fn IFNULL(month6.count_absorbent_sa, 0) } AS count_absorbent_sa_6,
						{ fn IFNULL(month6.count_absorbent_sc, 0) } AS count_absorbent_sc_6, 
						{ fn IFNULL(month6.count_hira_ua, 0) } AS count_hira_ua_6, 
						{ fn IFNULL(month6.count_hira_uc, 0) } AS count_hira_uc_6, 
						{ fn IFNULL(month6.count_hira_sa, 0) } AS count_hira_sa_6,
						{ fn IFNULL(month6.count_hira_sc, 0) } AS count_hira_sc_6, 
						{ fn IFNULL(month6.count_ptw_ua, 0) } AS count_ptw_ua_6, 
						{ fn IFNULL(month6.count_ptw_uc, 0) } AS count_ptw_uc_6, 
						{ fn IFNULL(month6.count_ptw_sa, 0) } AS count_ptw_sa_6,
						{ fn IFNULL(month6.count_ptw_sc, 0) } AS count_ptw_sc_6, 
						{ fn IFNULL(month6.count_sop_ua, 0) } AS count_sop_ua_6, 
						{ fn IFNULL(month6.count_sop_uc, 0) } AS count_sop_uc_6, 
						{ fn IFNULL(month6.count_sop_sa, 0) } AS count_sop_sa_6,
						{ fn IFNULL(month6.count_sop_sc, 0) } AS count_sop_sc_6, 
						{ fn IFNULL(month6.count_msds_ua, 0) } AS count_msds_ua_6, 
						{ fn IFNULL(month6.count_msds_uc, 0) } AS count_msds_uc_6, 
						{ fn IFNULL(month6.count_msds_sa, 0) } AS count_msds_sa_6,
						{ fn IFNULL(month6.count_msds_sc, 0) } AS count_msds_sc_6, 
						{ fn IFNULL(month6.count_emergency_ua, 0) } AS count_emergency_ua_6, 
						{ fn IFNULL(month6.count_emergency_uc, 0) } AS count_emergency_uc_6, 
						{ fn IFNULL(month6.count_emergency_sa, 0) } AS count_emergency_sa_6,
						{ fn IFNULL(month6.count_emergency_sc, 0) } AS count_emergency_sc_6, 
						{ fn IFNULL(month6.count_certificates_ua, 0) } AS count_certificates_ua_6, 
						{ fn IFNULL(month6.count_certificates_uc, 0) } AS count_certificates_uc_6, 
						{ fn IFNULL(month6.count_certificates_sa, 0) } AS count_certificates_sa_6,
						{ fn IFNULL(month6.count_certificates_sc, 0) } AS count_certificates_sc_6, 
						{ fn IFNULL(month6.count_ppe_ua, 0) } AS count_ppe_ua_6, 
						{ fn IFNULL(month6.count_ppe_uc, 0) } AS count_ppe_uc_6, 
						{ fn IFNULL(month6.count_ppe_sa, 0) } AS count_ppe_sa_6,
						{ fn IFNULL(month6.count_ppe_sc, 0) } AS count_ppe_sc_6, 
						{ fn IFNULL(month6.count_hand_ua, 0) } AS count_hand_ua_6, 
						{ fn IFNULL(month6.count_hand_uc, 0) } AS count_hand_uc_6, 
						{ fn IFNULL(month6.count_hand_sa, 0) } AS count_hand_sa_6,
						{ fn IFNULL(month6.count_hand_sc, 0) } AS count_hand_sc_6, 
						{ fn IFNULL(month6.count_mechanical_ua, 0) } AS count_mechanical_ua_6, 
						{ fn IFNULL(month6.count_mechanical_uc, 0) } AS count_mechanical_uc_6, 
						{ fn IFNULL(month6.count_mechanical_sa, 0) } AS count_mechanical_sa_6,
						{ fn IFNULL(month6.count_mechanical_sc, 0) } AS count_mechanical_sc_6, 
						{ fn IFNULL(month6.count_electrical_ua, 0) } AS count_electrical_ua_6, 
						{ fn IFNULL(month6.count_electrical_uc, 0) } AS count_electrical_uc_6, 
						{ fn IFNULL(month6.count_electrical_sa, 0) } AS count_electrical_sa_6,
						{ fn IFNULL(month6.count_electrical_sc, 0) } AS count_electrical_sc_6, 
						{ fn IFNULL(month6.count_vehicular_ua, 0) } AS count_vehicular_ua_6, 
						{ fn IFNULL(month6.count_vehicular_uc, 0) } AS count_vehicular_uc_6, 
						{ fn IFNULL(month6.count_vehicular_sa, 0) } AS count_vehicular_sa_6,
						{ fn IFNULL(month6.count_vehicular_sc, 0) } AS count_vehicular_sc_6, 
						{ fn IFNULL(month6.count_substandard_ua, 0) } AS count_substandard_ua_6, 
						{ fn IFNULL(month6.count_substandard_uc, 0) } AS count_substandard_uc_6, 
						{ fn IFNULL(month6.count_substandard_sa, 0) } AS count_substandard_sa_6,
						{ fn IFNULL(month6.count_substandard_sc, 0) } AS count_substandard_sc_6, 
						{ fn IFNULL(month6.count_h2s_ua, 0) } AS count_h2s_ua_6, 
						{ fn IFNULL(month6.count_h2s_uc, 0) } AS count_h2s_uc_6, 
						{ fn IFNULL(month6.count_h2s_sa, 0) } AS count_h2s_sa_6,
						{ fn IFNULL(month6.count_h2s_sc, 0) } AS count_h2s_sc_6, 
						{ fn IFNULL(month6.count_workplace_health_ua, 0) } AS count_workplace_health_ua_6, 
						{ fn IFNULL(month6.count_workplace_health_uc, 0) } AS count_workplace_health_uc_6, 
						{ fn IFNULL(month6.count_workplace_health_sa, 0) } AS count_workplace_health_sa_6,
						{ fn IFNULL(month6.count_workplace_health_sc, 0) } AS count_workplace_health_sc_6,
						{ fn IFNULL(month7.count_accident_ua, 0) } AS count_accident_ua_7, 
						{ fn IFNULL(month7.count_accident_uc, 0) } AS count_accident_uc_7, 
						{ fn IFNULL(month7.count_accident_sa, 0) } AS count_accident_sa_7,
						{ fn IFNULL(month7.count_accident_sc, 0) } AS count_accident_sc_7, 
						{ fn IFNULL(month7.count_fire_ua, 0) } AS count_fire_ua_7, 
						{ fn IFNULL(month7.count_fire_uc, 0) } AS count_fire_uc_7, 
						{ fn IFNULL(month7.count_fire_sa, 0) } AS count_fire_sa_7,
						{ fn IFNULL(month7.count_fire_sc, 0) } AS count_fire_sc_7, 
						{ fn IFNULL(month7.count_prevention_ua, 0) } AS count_prevention_ua_7, 
						{ fn IFNULL(month7.count_prevention_uc, 0) } AS count_prevention_uc_7, 
						{ fn IFNULL(month7.count_prevention_sa, 0) } AS count_prevention_sa_7,
						{ fn IFNULL(month7.count_prevention_sc, 0) } AS count_prevention_sc_7, 
						{ fn IFNULL(month7.count_supervisor_ua, 0) } AS count_supervisor_ua_7, 
						{ fn IFNULL(month7.count_supervisor_uc, 0) } AS count_supervisor_uc_7, 
						{ fn IFNULL(month7.count_supervisor_sa, 0) } AS count_supervisor_sa_7,
						{ fn IFNULL(month7.count_supervisor_sc, 0) } AS count_supervisor_sc_7, 
						{ fn IFNULL(month7.count_fit_work_ua, 0) } AS count_fit_work_ua_7, 
						{ fn IFNULL(month7.count_fit_work_uc, 0) } AS count_fit_work_uc_7, 
						{ fn IFNULL(month7.count_fit_work_sa, 0) } AS count_fit_work_sa_7,
						{ fn IFNULL(month7.count_fit_work_sc, 0) } AS count_fit_work_sc_7, 
						{ fn IFNULL(month7.count_psychological_ua, 0) } AS count_psychological_ua_7, 
						{ fn IFNULL(month7.count_psychological_uc, 0) } AS count_psychological_uc_7, 
						{ fn IFNULL(month7.count_psychological_sa, 0) } AS count_psychological_sa_7,
						{ fn IFNULL(month7.count_psychological_sc, 0) } AS count_psychological_sc_7, 
						{ fn IFNULL(month7.count_posture_ua, 0) } AS count_posture_ua_7, 
						{ fn IFNULL(month7.count_posture_uc, 0) } AS count_posture_uc_7, 
						{ fn IFNULL(month7.count_posture_sa, 0) } AS count_posture_sa_7,
						{ fn IFNULL(month7.count_posture_sc, 0) } AS count_posture_sc_7, 
						{ fn IFNULL(month7.count_substance_ua, 0) } AS count_substance_ua_7, 
						{ fn IFNULL(month7.count_substance_uc, 0) } AS count_substance_uc_7, 
						{ fn IFNULL(month7.count_substance_sa, 0) } AS count_substance_sa_7,
						{ fn IFNULL(month7.count_substance_sc, 0) } AS count_substance_sc_7, 
						{ fn IFNULL(month7.count_hygiene_ua, 0) } AS count_hygiene_ua_7, 
						{ fn IFNULL(month7.count_hygiene_uc, 0) } AS count_hygiene_uc_7, 
						{ fn IFNULL(month7.count_hygiene_sa, 0) } AS count_hygiene_sa_7,
						{ fn IFNULL(month7.count_hygiene_sc, 0) } AS count_hygiene_sc_7, 
						{ fn IFNULL(month7.count_house_ua, 0) } AS count_house_ua_7, 
						{ fn IFNULL(month7.count_house_uc, 0) } AS count_house_uc_7, 
						{ fn IFNULL(month7.count_house_sa, 0) } AS count_house_sa_7,
						{ fn IFNULL(month7.count_house_sc, 0) } AS count_house_sc_7, 
						{ fn IFNULL(month7.count_standard_ua, 0) } AS count_standard_ua_7, 
						{ fn IFNULL(month7.count_standard_uc, 0) } AS count_standard_uc_7, 
						{ fn IFNULL(month7.count_standard_sa, 0) } AS count_standard_sa_7,
						{ fn IFNULL(month7.count_standard_sc, 0) } AS count_standard_sc_7, 
						{ fn IFNULL(month7.count_spill_ua, 0) } AS count_spill_ua_7, 
						{ fn IFNULL(month7.count_spill_uc, 0) } AS count_spill_uc_7, 
						{ fn IFNULL(month7.count_spill_sa, 0) } AS count_spill_sa_7,
						{ fn IFNULL(month7.count_spill_sc, 0) } AS count_spill_sc_7, 
						{ fn IFNULL(month7.count_waste_energy_ua, 0) } AS count_waste_energy_ua_7, 
						{ fn IFNULL(month7.count_waste_energy_uc, 0) } AS count_waste_energy_uc_7, 
						{ fn IFNULL(month7.count_waste_energy_sa, 0) } AS count_waste_energy_sa_7,
						{ fn IFNULL(month7.count_waste_energy_sc, 0) } AS count_waste_energy_sc_7, 
						{ fn IFNULL(month7.count_containment_ua, 0) } AS count_containment_ua_7, 
						{ fn IFNULL(month7.count_containment_uc, 0) } AS count_containment_uc_7, 
						{ fn IFNULL(month7.count_containment_sa, 0) } AS count_containment_sa_7,
						{ fn IFNULL(month7.count_containment_sc, 0) } AS count_containment_sc_7, 
						{ fn IFNULL(month7.count_absorbent_ua, 0) } AS count_absorbent_ua_7, 
						{ fn IFNULL(month7.count_absorbent_uc, 0) } AS count_absorbent_uc_7, 
						{ fn IFNULL(month7.count_absorbent_sa, 0) } AS count_absorbent_sa_7,
						{ fn IFNULL(month7.count_absorbent_sc, 0) } AS count_absorbent_sc_7, 
						{ fn IFNULL(month7.count_hira_ua, 0) } AS count_hira_ua_7, 
						{ fn IFNULL(month7.count_hira_uc, 0) } AS count_hira_uc_7, 
						{ fn IFNULL(month7.count_hira_sa, 0) } AS count_hira_sa_7,
						{ fn IFNULL(month7.count_hira_sc, 0) } AS count_hira_sc_7, 
						{ fn IFNULL(month7.count_ptw_ua, 0) } AS count_ptw_ua_7, 
						{ fn IFNULL(month7.count_ptw_uc, 0) } AS count_ptw_uc_7, 
						{ fn IFNULL(month7.count_ptw_sa, 0) } AS count_ptw_sa_7,
						{ fn IFNULL(month7.count_ptw_sc, 0) } AS count_ptw_sc_7, 
						{ fn IFNULL(month7.count_sop_ua, 0) } AS count_sop_ua_7, 
						{ fn IFNULL(month7.count_sop_uc, 0) } AS count_sop_uc_7, 
						{ fn IFNULL(month7.count_sop_sa, 0) } AS count_sop_sa_7,
						{ fn IFNULL(month7.count_sop_sc, 0) } AS count_sop_sc_7, 
						{ fn IFNULL(month7.count_msds_ua, 0) } AS count_msds_ua_7, 
						{ fn IFNULL(month7.count_msds_uc, 0) } AS count_msds_uc_7, 
						{ fn IFNULL(month7.count_msds_sa, 0) } AS count_msds_sa_7,
						{ fn IFNULL(month7.count_msds_sc, 0) } AS count_msds_sc_7, 
						{ fn IFNULL(month7.count_emergency_ua, 0) } AS count_emergency_ua_7, 
						{ fn IFNULL(month7.count_emergency_uc, 0) } AS count_emergency_uc_7, 
						{ fn IFNULL(month7.count_emergency_sa, 0) } AS count_emergency_sa_7,
						{ fn IFNULL(month7.count_emergency_sc, 0) } AS count_emergency_sc_7, 
						{ fn IFNULL(month7.count_certificates_ua, 0) } AS count_certificates_ua_7, 
						{ fn IFNULL(month7.count_certificates_uc, 0) } AS count_certificates_uc_7, 
						{ fn IFNULL(month7.count_certificates_sa, 0) } AS count_certificates_sa_7,
						{ fn IFNULL(month7.count_certificates_sc, 0) } AS count_certificates_sc_7, 
						{ fn IFNULL(month7.count_ppe_ua, 0) } AS count_ppe_ua_7, 
						{ fn IFNULL(month7.count_ppe_uc, 0) } AS count_ppe_uc_7, 
						{ fn IFNULL(month7.count_ppe_sa, 0) } AS count_ppe_sa_7,
						{ fn IFNULL(month7.count_ppe_sc, 0) } AS count_ppe_sc_7, 
						{ fn IFNULL(month7.count_hand_ua, 0) } AS count_hand_ua_7, 
						{ fn IFNULL(month7.count_hand_uc, 0) } AS count_hand_uc_7, 
						{ fn IFNULL(month7.count_hand_sa, 0) } AS count_hand_sa_7,
						{ fn IFNULL(month7.count_hand_sc, 0) } AS count_hand_sc_7, 
						{ fn IFNULL(month7.count_mechanical_ua, 0) } AS count_mechanical_ua_7, 
						{ fn IFNULL(month7.count_mechanical_uc, 0) } AS count_mechanical_uc_7, 
						{ fn IFNULL(month7.count_mechanical_sa, 0) } AS count_mechanical_sa_7,
						{ fn IFNULL(month7.count_mechanical_sc, 0) } AS count_mechanical_sc_7, 
						{ fn IFNULL(month7.count_electrical_ua, 0) } AS count_electrical_ua_7, 
						{ fn IFNULL(month7.count_electrical_uc, 0) } AS count_electrical_uc_7, 
						{ fn IFNULL(month7.count_electrical_sa, 0) } AS count_electrical_sa_7,
						{ fn IFNULL(month7.count_electrical_sc, 0) } AS count_electrical_sc_7, 
						{ fn IFNULL(month7.count_vehicular_ua, 0) } AS count_vehicular_ua_7, 
						{ fn IFNULL(month7.count_vehicular_uc, 0) } AS count_vehicular_uc_7, 
						{ fn IFNULL(month7.count_vehicular_sa, 0) } AS count_vehicular_sa_7,
						{ fn IFNULL(month7.count_vehicular_sc, 0) } AS count_vehicular_sc_7, 
						{ fn IFNULL(month7.count_substandard_ua, 0) } AS count_substandard_ua_7, 
						{ fn IFNULL(month7.count_substandard_uc, 0) } AS count_substandard_uc_7, 
						{ fn IFNULL(month7.count_substandard_sa, 0) } AS count_substandard_sa_7,
						{ fn IFNULL(month7.count_substandard_sc, 0) } AS count_substandard_sc_7, 
						{ fn IFNULL(month7.count_h2s_ua, 0) } AS count_h2s_ua_7, 
						{ fn IFNULL(month7.count_h2s_uc, 0) } AS count_h2s_uc_7, 
						{ fn IFNULL(month7.count_h2s_sa, 0) } AS count_h2s_sa_7,
						{ fn IFNULL(month7.count_h2s_sc, 0) } AS count_h2s_sc_7, 
						{ fn IFNULL(month7.count_workplace_health_ua, 0) } AS count_workplace_health_ua_7, 
						{ fn IFNULL(month7.count_workplace_health_uc, 0) } AS count_workplace_health_uc_7, 
						{ fn IFNULL(month7.count_workplace_health_sa, 0) } AS count_workplace_health_sa_7,
						{ fn IFNULL(month7.count_workplace_health_sc, 0) } AS count_workplace_health_sc_7,
						{ fn IFNULL(month8.count_accident_ua, 0) } AS count_accident_ua_8, 
						{ fn IFNULL(month8.count_accident_uc, 0) } AS count_accident_uc_8, 
						{ fn IFNULL(month8.count_accident_sa, 0) } AS count_accident_sa_8,
						{ fn IFNULL(month8.count_accident_sc, 0) } AS count_accident_sc_8, 
						{ fn IFNULL(month8.count_fire_ua, 0) } AS count_fire_ua_8, 
						{ fn IFNULL(month8.count_fire_uc, 0) } AS count_fire_uc_8, 
						{ fn IFNULL(month8.count_fire_sa, 0) } AS count_fire_sa_8,
						{ fn IFNULL(month8.count_fire_sc, 0) } AS count_fire_sc_8, 
						{ fn IFNULL(month8.count_prevention_ua, 0) } AS count_prevention_ua_8, 
						{ fn IFNULL(month8.count_prevention_uc, 0) } AS count_prevention_uc_8, 
						{ fn IFNULL(month8.count_prevention_sa, 0) } AS count_prevention_sa_8,
						{ fn IFNULL(month8.count_prevention_sc, 0) } AS count_prevention_sc_8, 
						{ fn IFNULL(month8.count_supervisor_ua, 0) } AS count_supervisor_ua_8, 
						{ fn IFNULL(month8.count_supervisor_uc, 0) } AS count_supervisor_uc_8, 
						{ fn IFNULL(month8.count_supervisor_sa, 0) } AS count_supervisor_sa_8,
						{ fn IFNULL(month8.count_supervisor_sc, 0) } AS count_supervisor_sc_8, 
						{ fn IFNULL(month8.count_fit_work_ua, 0) } AS count_fit_work_ua_8, 
						{ fn IFNULL(month8.count_fit_work_uc, 0) } AS count_fit_work_uc_8, 
						{ fn IFNULL(month8.count_fit_work_sa, 0) } AS count_fit_work_sa_8,
						{ fn IFNULL(month8.count_fit_work_sc, 0) } AS count_fit_work_sc_8, 
						{ fn IFNULL(month8.count_psychological_ua, 0) } AS count_psychological_ua_8, 
						{ fn IFNULL(month8.count_psychological_uc, 0) } AS count_psychological_uc_8, 
						{ fn IFNULL(month8.count_psychological_sa, 0) } AS count_psychological_sa_8,
						{ fn IFNULL(month8.count_psychological_sc, 0) } AS count_psychological_sc_8, 
						{ fn IFNULL(month8.count_posture_ua, 0) } AS count_posture_ua_8, 
						{ fn IFNULL(month8.count_posture_uc, 0) } AS count_posture_uc_8, 
						{ fn IFNULL(month8.count_posture_sa, 0) } AS count_posture_sa_8,
						{ fn IFNULL(month8.count_posture_sc, 0) } AS count_posture_sc_8, 
						{ fn IFNULL(month8.count_substance_ua, 0) } AS count_substance_ua_8, 
						{ fn IFNULL(month8.count_substance_uc, 0) } AS count_substance_uc_8, 
						{ fn IFNULL(month8.count_substance_sa, 0) } AS count_substance_sa_8,
						{ fn IFNULL(month8.count_substance_sc, 0) } AS count_substance_sc_8, 
						{ fn IFNULL(month8.count_hygiene_ua, 0) } AS count_hygiene_ua_8, 
						{ fn IFNULL(month8.count_hygiene_uc, 0) } AS count_hygiene_uc_8, 
						{ fn IFNULL(month8.count_hygiene_sa, 0) } AS count_hygiene_sa_8,
						{ fn IFNULL(month8.count_hygiene_sc, 0) } AS count_hygiene_sc_8, 
						{ fn IFNULL(month8.count_house_ua, 0) } AS count_house_ua_8, 
						{ fn IFNULL(month8.count_house_uc, 0) } AS count_house_uc_8, 
						{ fn IFNULL(month8.count_house_sa, 0) } AS count_house_sa_8,
						{ fn IFNULL(month8.count_house_sc, 0) } AS count_house_sc_8, 
						{ fn IFNULL(month8.count_standard_ua, 0) } AS count_standard_ua_8, 
						{ fn IFNULL(month8.count_standard_uc, 0) } AS count_standard_uc_8, 
						{ fn IFNULL(month8.count_standard_sa, 0) } AS count_standard_sa_8,
						{ fn IFNULL(month8.count_standard_sc, 0) } AS count_standard_sc_8, 
						{ fn IFNULL(month8.count_spill_ua, 0) } AS count_spill_ua_8, 
						{ fn IFNULL(month8.count_spill_uc, 0) } AS count_spill_uc_8, 
						{ fn IFNULL(month8.count_spill_sa, 0) } AS count_spill_sa_8,
						{ fn IFNULL(month8.count_spill_sc, 0) } AS count_spill_sc_8, 
						{ fn IFNULL(month8.count_waste_energy_ua, 0) } AS count_waste_energy_ua_8, 
						{ fn IFNULL(month8.count_waste_energy_uc, 0) } AS count_waste_energy_uc_8, 
						{ fn IFNULL(month8.count_waste_energy_sa, 0) } AS count_waste_energy_sa_8,
						{ fn IFNULL(month8.count_waste_energy_sc, 0) } AS count_waste_energy_sc_8, 
						{ fn IFNULL(month8.count_containment_ua, 0) } AS count_containment_ua_8, 
						{ fn IFNULL(month8.count_containment_uc, 0) } AS count_containment_uc_8, 
						{ fn IFNULL(month8.count_containment_sa, 0) } AS count_containment_sa_8,
						{ fn IFNULL(month8.count_containment_sc, 0) } AS count_containment_sc_8, 
						{ fn IFNULL(month8.count_absorbent_ua, 0) } AS count_absorbent_ua_8, 
						{ fn IFNULL(month8.count_absorbent_uc, 0) } AS count_absorbent_uc_8, 
						{ fn IFNULL(month8.count_absorbent_sa, 0) } AS count_absorbent_sa_8,
						{ fn IFNULL(month8.count_absorbent_sc, 0) } AS count_absorbent_sc_8, 
						{ fn IFNULL(month8.count_hira_ua, 0) } AS count_hira_ua_8, 
						{ fn IFNULL(month8.count_hira_uc, 0) } AS count_hira_uc_8, 
						{ fn IFNULL(month8.count_hira_sa, 0) } AS count_hira_sa_8,
						{ fn IFNULL(month8.count_hira_sc, 0) } AS count_hira_sc_8, 
						{ fn IFNULL(month8.count_ptw_ua, 0) } AS count_ptw_ua_8, 
						{ fn IFNULL(month8.count_ptw_uc, 0) } AS count_ptw_uc_8, 
						{ fn IFNULL(month8.count_ptw_sa, 0) } AS count_ptw_sa_8,
						{ fn IFNULL(month8.count_ptw_sc, 0) } AS count_ptw_sc_8, 
						{ fn IFNULL(month8.count_sop_ua, 0) } AS count_sop_ua_8, 
						{ fn IFNULL(month8.count_sop_uc, 0) } AS count_sop_uc_8, 
						{ fn IFNULL(month8.count_sop_sa, 0) } AS count_sop_sa_8,
						{ fn IFNULL(month8.count_sop_sc, 0) } AS count_sop_sc_8, 
						{ fn IFNULL(month8.count_msds_ua, 0) } AS count_msds_ua_8, 
						{ fn IFNULL(month8.count_msds_uc, 0) } AS count_msds_uc_8, 
						{ fn IFNULL(month8.count_msds_sa, 0) } AS count_msds_sa_8,
						{ fn IFNULL(month8.count_msds_sc, 0) } AS count_msds_sc_8, 
						{ fn IFNULL(month8.count_emergency_ua, 0) } AS count_emergency_ua_8, 
						{ fn IFNULL(month8.count_emergency_uc, 0) } AS count_emergency_uc_8, 
						{ fn IFNULL(month8.count_emergency_sa, 0) } AS count_emergency_sa_8,
						{ fn IFNULL(month8.count_emergency_sc, 0) } AS count_emergency_sc_8, 
						{ fn IFNULL(month8.count_certificates_ua, 0) } AS count_certificates_ua_8, 
						{ fn IFNULL(month8.count_certificates_uc, 0) } AS count_certificates_uc_8, 
						{ fn IFNULL(month8.count_certificates_sa, 0) } AS count_certificates_sa_8,
						{ fn IFNULL(month8.count_certificates_sc, 0) } AS count_certificates_sc_8, 
						{ fn IFNULL(month8.count_ppe_ua, 0) } AS count_ppe_ua_8, 
						{ fn IFNULL(month8.count_ppe_uc, 0) } AS count_ppe_uc_8, 
						{ fn IFNULL(month8.count_ppe_sa, 0) } AS count_ppe_sa_8,
						{ fn IFNULL(month8.count_ppe_sc, 0) } AS count_ppe_sc_8, 
						{ fn IFNULL(month8.count_hand_ua, 0) } AS count_hand_ua_8, 
						{ fn IFNULL(month8.count_hand_uc, 0) } AS count_hand_uc_8, 
						{ fn IFNULL(month8.count_hand_sa, 0) } AS count_hand_sa_8,
						{ fn IFNULL(month8.count_hand_sc, 0) } AS count_hand_sc_8, 
						{ fn IFNULL(month8.count_mechanical_ua, 0) } AS count_mechanical_ua_8, 
						{ fn IFNULL(month8.count_mechanical_uc, 0) } AS count_mechanical_uc_8, 
						{ fn IFNULL(month8.count_mechanical_sa, 0) } AS count_mechanical_sa_8,
						{ fn IFNULL(month8.count_mechanical_sc, 0) } AS count_mechanical_sc_8, 
						{ fn IFNULL(month8.count_electrical_ua, 0) } AS count_electrical_ua_8, 
						{ fn IFNULL(month8.count_electrical_uc, 0) } AS count_electrical_uc_8, 
						{ fn IFNULL(month8.count_electrical_sa, 0) } AS count_electrical_sa_8,
						{ fn IFNULL(month8.count_electrical_sc, 0) } AS count_electrical_sc_8, 
						{ fn IFNULL(month8.count_vehicular_ua, 0) } AS count_vehicular_ua_8, 
						{ fn IFNULL(month8.count_vehicular_uc, 0) } AS count_vehicular_uc_8, 
						{ fn IFNULL(month8.count_vehicular_sa, 0) } AS count_vehicular_sa_8,
						{ fn IFNULL(month8.count_vehicular_sc, 0) } AS count_vehicular_sc_8, 
						{ fn IFNULL(month8.count_substandard_ua, 0) } AS count_substandard_ua_8, 
						{ fn IFNULL(month8.count_substandard_uc, 0) } AS count_substandard_uc_8, 
						{ fn IFNULL(month8.count_substandard_sa, 0) } AS count_substandard_sa_8,
						{ fn IFNULL(month8.count_substandard_sc, 0) } AS count_substandard_sc_8, 
						{ fn IFNULL(month8.count_h2s_ua, 0) } AS count_h2s_ua_8, 
						{ fn IFNULL(month8.count_h2s_uc, 0) } AS count_h2s_uc_8, 
						{ fn IFNULL(month8.count_h2s_sa, 0) } AS count_h2s_sa_8,
						{ fn IFNULL(month8.count_h2s_sc, 0) } AS count_h2s_sc_8, 
						{ fn IFNULL(month8.count_workplace_health_ua, 0) } AS count_workplace_health_ua_8, 
						{ fn IFNULL(month8.count_workplace_health_uc, 0) } AS count_workplace_health_uc_8, 
						{ fn IFNULL(month8.count_workplace_health_sa, 0) } AS count_workplace_health_sa_8,
						{ fn IFNULL(month8.count_workplace_health_sc, 0) } AS count_workplace_health_sc_8,
						{ fn IFNULL(month9.count_accident_ua, 0) } AS count_accident_ua_9, 
						{ fn IFNULL(month9.count_accident_uc, 0) } AS count_accident_uc_9, 
						{ fn IFNULL(month9.count_accident_sa, 0) } AS count_accident_sa_9,
						{ fn IFNULL(month9.count_accident_sc, 0) } AS count_accident_sc_9, 
						{ fn IFNULL(month9.count_fire_ua, 0) } AS count_fire_ua_9, 
						{ fn IFNULL(month9.count_fire_uc, 0) } AS count_fire_uc_9, 
						{ fn IFNULL(month9.count_fire_sa, 0) } AS count_fire_sa_9,
						{ fn IFNULL(month9.count_fire_sc, 0) } AS count_fire_sc_9, 
						{ fn IFNULL(month9.count_prevention_ua, 0) } AS count_prevention_ua_9, 
						{ fn IFNULL(month9.count_prevention_uc, 0) } AS count_prevention_uc_9, 
						{ fn IFNULL(month9.count_prevention_sa, 0) } AS count_prevention_sa_9,
						{ fn IFNULL(month9.count_prevention_sc, 0) } AS count_prevention_sc_9, 
						{ fn IFNULL(month9.count_supervisor_ua, 0) } AS count_supervisor_ua_9, 
						{ fn IFNULL(month9.count_supervisor_uc, 0) } AS count_supervisor_uc_9, 
						{ fn IFNULL(month9.count_supervisor_sa, 0) } AS count_supervisor_sa_9,
						{ fn IFNULL(month9.count_supervisor_sc, 0) } AS count_supervisor_sc_9, 
						{ fn IFNULL(month9.count_fit_work_ua, 0) } AS count_fit_work_ua_9, 
						{ fn IFNULL(month9.count_fit_work_uc, 0) } AS count_fit_work_uc_9, 
						{ fn IFNULL(month9.count_fit_work_sa, 0) } AS count_fit_work_sa_9,
						{ fn IFNULL(month9.count_fit_work_sc, 0) } AS count_fit_work_sc_9, 
						{ fn IFNULL(month9.count_psychological_ua, 0) } AS count_psychological_ua_9, 
						{ fn IFNULL(month9.count_psychological_uc, 0) } AS count_psychological_uc_9, 
						{ fn IFNULL(month9.count_psychological_sa, 0) } AS count_psychological_sa_9,
						{ fn IFNULL(month9.count_psychological_sc, 0) } AS count_psychological_sc_9, 
						{ fn IFNULL(month9.count_posture_ua, 0) } AS count_posture_ua_9, 
						{ fn IFNULL(month9.count_posture_uc, 0) } AS count_posture_uc_9, 
						{ fn IFNULL(month9.count_posture_sa, 0) } AS count_posture_sa_9,
						{ fn IFNULL(month9.count_posture_sc, 0) } AS count_posture_sc_9, 
						{ fn IFNULL(month9.count_substance_ua, 0) } AS count_substance_ua_9, 
						{ fn IFNULL(month9.count_substance_uc, 0) } AS count_substance_uc_9, 
						{ fn IFNULL(month9.count_substance_sa, 0) } AS count_substance_sa_9,
						{ fn IFNULL(month9.count_substance_sc, 0) } AS count_substance_sc_9, 
						{ fn IFNULL(month9.count_hygiene_ua, 0) } AS count_hygiene_ua_9, 
						{ fn IFNULL(month9.count_hygiene_uc, 0) } AS count_hygiene_uc_9, 
						{ fn IFNULL(month9.count_hygiene_sa, 0) } AS count_hygiene_sa_9,
						{ fn IFNULL(month9.count_hygiene_sc, 0) } AS count_hygiene_sc_9, 
						{ fn IFNULL(month9.count_house_ua, 0) } AS count_house_ua_9, 
						{ fn IFNULL(month9.count_house_uc, 0) } AS count_house_uc_9, 
						{ fn IFNULL(month9.count_house_sa, 0) } AS count_house_sa_9,
						{ fn IFNULL(month9.count_house_sc, 0) } AS count_house_sc_9, 
						{ fn IFNULL(month9.count_standard_ua, 0) } AS count_standard_ua_9, 
						{ fn IFNULL(month9.count_standard_uc, 0) } AS count_standard_uc_9, 
						{ fn IFNULL(month9.count_standard_sa, 0) } AS count_standard_sa_9,
						{ fn IFNULL(month9.count_standard_sc, 0) } AS count_standard_sc_9, 
						{ fn IFNULL(month9.count_spill_ua, 0) } AS count_spill_ua_9, 
						{ fn IFNULL(month9.count_spill_uc, 0) } AS count_spill_uc_9, 
						{ fn IFNULL(month9.count_spill_sa, 0) } AS count_spill_sa_9,
						{ fn IFNULL(month9.count_spill_sc, 0) } AS count_spill_sc_9, 
						{ fn IFNULL(month9.count_waste_energy_ua, 0) } AS count_waste_energy_ua_9, 
						{ fn IFNULL(month9.count_waste_energy_uc, 0) } AS count_waste_energy_uc_9, 
						{ fn IFNULL(month9.count_waste_energy_sa, 0) } AS count_waste_energy_sa_9,
						{ fn IFNULL(month9.count_waste_energy_sc, 0) } AS count_waste_energy_sc_9, 
						{ fn IFNULL(month9.count_containment_ua, 0) } AS count_containment_ua_9, 
						{ fn IFNULL(month9.count_containment_uc, 0) } AS count_containment_uc_9, 
						{ fn IFNULL(month9.count_containment_sa, 0) } AS count_containment_sa_9,
						{ fn IFNULL(month9.count_containment_sc, 0) } AS count_containment_sc_9, 
						{ fn IFNULL(month9.count_absorbent_ua, 0) } AS count_absorbent_ua_9, 
						{ fn IFNULL(month9.count_absorbent_uc, 0) } AS count_absorbent_uc_9, 
						{ fn IFNULL(month9.count_absorbent_sa, 0) } AS count_absorbent_sa_9,
						{ fn IFNULL(month9.count_absorbent_sc, 0) } AS count_absorbent_sc_9, 
						{ fn IFNULL(month9.count_hira_ua, 0) } AS count_hira_ua_9, 
						{ fn IFNULL(month9.count_hira_uc, 0) } AS count_hira_uc_9, 
						{ fn IFNULL(month9.count_hira_sa, 0) } AS count_hira_sa_9,
						{ fn IFNULL(month9.count_hira_sc, 0) } AS count_hira_sc_9, 
						{ fn IFNULL(month9.count_ptw_ua, 0) } AS count_ptw_ua_9, 
						{ fn IFNULL(month9.count_ptw_uc, 0) } AS count_ptw_uc_9, 
						{ fn IFNULL(month9.count_ptw_sa, 0) } AS count_ptw_sa_9,
						{ fn IFNULL(month9.count_ptw_sc, 0) } AS count_ptw_sc_9, 
						{ fn IFNULL(month9.count_sop_ua, 0) } AS count_sop_ua_9, 
						{ fn IFNULL(month9.count_sop_uc, 0) } AS count_sop_uc_9, 
						{ fn IFNULL(month9.count_sop_sa, 0) } AS count_sop_sa_9,
						{ fn IFNULL(month9.count_sop_sc, 0) } AS count_sop_sc_9, 
						{ fn IFNULL(month9.count_msds_ua, 0) } AS count_msds_ua_9, 
						{ fn IFNULL(month9.count_msds_uc, 0) } AS count_msds_uc_9, 
						{ fn IFNULL(month9.count_msds_sa, 0) } AS count_msds_sa_9,
						{ fn IFNULL(month9.count_msds_sc, 0) } AS count_msds_sc_9, 
						{ fn IFNULL(month9.count_emergency_ua, 0) } AS count_emergency_ua_9, 
						{ fn IFNULL(month9.count_emergency_uc, 0) } AS count_emergency_uc_9, 
						{ fn IFNULL(month9.count_emergency_sa, 0) } AS count_emergency_sa_9,
						{ fn IFNULL(month9.count_emergency_sc, 0) } AS count_emergency_sc_9, 
						{ fn IFNULL(month9.count_certificates_ua, 0) } AS count_certificates_ua_9, 
						{ fn IFNULL(month9.count_certificates_uc, 0) } AS count_certificates_uc_9, 
						{ fn IFNULL(month9.count_certificates_sa, 0) } AS count_certificates_sa_9,
						{ fn IFNULL(month9.count_certificates_sc, 0) } AS count_certificates_sc_9, 
						{ fn IFNULL(month9.count_ppe_ua, 0) } AS count_ppe_ua_9, 
						{ fn IFNULL(month9.count_ppe_uc, 0) } AS count_ppe_uc_9, 
						{ fn IFNULL(month9.count_ppe_sa, 0) } AS count_ppe_sa_9,
						{ fn IFNULL(month9.count_ppe_sc, 0) } AS count_ppe_sc_9, 
						{ fn IFNULL(month9.count_hand_ua, 0) } AS count_hand_ua_9, 
						{ fn IFNULL(month9.count_hand_uc, 0) } AS count_hand_uc_9, 
						{ fn IFNULL(month9.count_hand_sa, 0) } AS count_hand_sa_9,
						{ fn IFNULL(month9.count_hand_sc, 0) } AS count_hand_sc_9, 
						{ fn IFNULL(month9.count_mechanical_ua, 0) } AS count_mechanical_ua_9, 
						{ fn IFNULL(month9.count_mechanical_uc, 0) } AS count_mechanical_uc_9, 
						{ fn IFNULL(month9.count_mechanical_sa, 0) } AS count_mechanical_sa_9,
						{ fn IFNULL(month9.count_mechanical_sc, 0) } AS count_mechanical_sc_9, 
						{ fn IFNULL(month9.count_electrical_ua, 0) } AS count_electrical_ua_9, 
						{ fn IFNULL(month9.count_electrical_uc, 0) } AS count_electrical_uc_9, 
						{ fn IFNULL(month9.count_electrical_sa, 0) } AS count_electrical_sa_9,
						{ fn IFNULL(month9.count_electrical_sc, 0) } AS count_electrical_sc_9, 
						{ fn IFNULL(month9.count_vehicular_ua, 0) } AS count_vehicular_ua_9, 
						{ fn IFNULL(month9.count_vehicular_uc, 0) } AS count_vehicular_uc_9, 
						{ fn IFNULL(month9.count_vehicular_sa, 0) } AS count_vehicular_sa_9,
						{ fn IFNULL(month9.count_vehicular_sc, 0) } AS count_vehicular_sc_9, 
						{ fn IFNULL(month9.count_substandard_ua, 0) } AS count_substandard_ua_9, 
						{ fn IFNULL(month9.count_substandard_uc, 0) } AS count_substandard_uc_9, 
						{ fn IFNULL(month9.count_substandard_sa, 0) } AS count_substandard_sa_9,
						{ fn IFNULL(month9.count_substandard_sc, 0) } AS count_substandard_sc_9, 
						{ fn IFNULL(month9.count_h2s_ua, 0) } AS count_h2s_ua_9, 
						{ fn IFNULL(month9.count_h2s_uc, 0) } AS count_h2s_uc_9, 
						{ fn IFNULL(month9.count_h2s_sa, 0) } AS count_h2s_sa_9,
						{ fn IFNULL(month9.count_h2s_sc, 0) } AS count_h2s_sc_9, 
						{ fn IFNULL(month9.count_workplace_health_ua, 0) } AS count_workplace_health_ua_9, 
						{ fn IFNULL(month9.count_workplace_health_uc, 0) } AS count_workplace_health_uc_9, 
						{ fn IFNULL(month9.count_workplace_health_sa, 0) } AS count_workplace_health_sa_9,
						{ fn IFNULL(month9.count_workplace_health_sc, 0) } AS count_workplace_health_sc_9,
						{ fn IFNULL(month10.count_accident_ua, 0) } AS count_accident_ua_10, 
						{ fn IFNULL(month10.count_accident_uc, 0) } AS count_accident_uc_10, 
						{ fn IFNULL(month10.count_accident_sa, 0) } AS count_accident_sa_10,
						{ fn IFNULL(month10.count_accident_sc, 0) } AS count_accident_sc_10, 
						{ fn IFNULL(month10.count_fire_ua, 0) } AS count_fire_ua_10, 
						{ fn IFNULL(month10.count_fire_uc, 0) } AS count_fire_uc_10, 
						{ fn IFNULL(month10.count_fire_sa, 0) } AS count_fire_sa_10,
						{ fn IFNULL(month10.count_fire_sc, 0) } AS count_fire_sc_10, 
						{ fn IFNULL(month10.count_prevention_ua, 0) } AS count_prevention_ua_10, 
						{ fn IFNULL(month10.count_prevention_uc, 0) } AS count_prevention_uc_10, 
						{ fn IFNULL(month10.count_prevention_sa, 0) } AS count_prevention_sa_10,
						{ fn IFNULL(month10.count_prevention_sc, 0) } AS count_prevention_sc_10, 
						{ fn IFNULL(month10.count_supervisor_ua, 0) } AS count_supervisor_ua_10, 
						{ fn IFNULL(month10.count_supervisor_uc, 0) } AS count_supervisor_uc_10, 
						{ fn IFNULL(month10.count_supervisor_sa, 0) } AS count_supervisor_sa_10,
						{ fn IFNULL(month10.count_supervisor_sc, 0) } AS count_supervisor_sc_10, 
						{ fn IFNULL(month10.count_fit_work_ua, 0) } AS count_fit_work_ua_10, 
						{ fn IFNULL(month10.count_fit_work_uc, 0) } AS count_fit_work_uc_10, 
						{ fn IFNULL(month10.count_fit_work_sa, 0) } AS count_fit_work_sa_10,
						{ fn IFNULL(month10.count_fit_work_sc, 0) } AS count_fit_work_sc_10, 
						{ fn IFNULL(month10.count_psychological_ua, 0) } AS count_psychological_ua_10, 
						{ fn IFNULL(month10.count_psychological_uc, 0) } AS count_psychological_uc_10, 
						{ fn IFNULL(month10.count_psychological_sa, 0) } AS count_psychological_sa_10,
						{ fn IFNULL(month10.count_psychological_sc, 0) } AS count_psychological_sc_10, 
						{ fn IFNULL(month10.count_posture_ua, 0) } AS count_posture_ua_10, 
						{ fn IFNULL(month10.count_posture_uc, 0) } AS count_posture_uc_10, 
						{ fn IFNULL(month10.count_posture_sa, 0) } AS count_posture_sa_10,
						{ fn IFNULL(month10.count_posture_sc, 0) } AS count_posture_sc_10, 
						{ fn IFNULL(month10.count_substance_ua, 0) } AS count_substance_ua_10, 
						{ fn IFNULL(month10.count_substance_uc, 0) } AS count_substance_uc_10, 
						{ fn IFNULL(month10.count_substance_sa, 0) } AS count_substance_sa_10,
						{ fn IFNULL(month10.count_substance_sc, 0) } AS count_substance_sc_10, 
						{ fn IFNULL(month10.count_hygiene_ua, 0) } AS count_hygiene_ua_10, 
						{ fn IFNULL(month10.count_hygiene_uc, 0) } AS count_hygiene_uc_10, 
						{ fn IFNULL(month10.count_hygiene_sa, 0) } AS count_hygiene_sa_10,
						{ fn IFNULL(month10.count_hygiene_sc, 0) } AS count_hygiene_sc_10, 
						{ fn IFNULL(month10.count_house_ua, 0) } AS count_house_ua_10, 
						{ fn IFNULL(month10.count_house_uc, 0) } AS count_house_uc_10, 
						{ fn IFNULL(month10.count_house_sa, 0) } AS count_house_sa_10,
						{ fn IFNULL(month10.count_house_sc, 0) } AS count_house_sc_10, 
						{ fn IFNULL(month10.count_standard_ua, 0) } AS count_standard_ua_10, 
						{ fn IFNULL(month10.count_standard_uc, 0) } AS count_standard_uc_10, 
						{ fn IFNULL(month10.count_standard_sa, 0) } AS count_standard_sa_10,
						{ fn IFNULL(month10.count_standard_sc, 0) } AS count_standard_sc_10, 
						{ fn IFNULL(month10.count_spill_ua, 0) } AS count_spill_ua_10, 
						{ fn IFNULL(month10.count_spill_uc, 0) } AS count_spill_uc_10, 
						{ fn IFNULL(month10.count_spill_sa, 0) } AS count_spill_sa_10,
						{ fn IFNULL(month10.count_spill_sc, 0) } AS count_spill_sc_10, 
						{ fn IFNULL(month10.count_waste_energy_ua, 0) } AS count_waste_energy_ua_10, 
						{ fn IFNULL(month10.count_waste_energy_uc, 0) } AS count_waste_energy_uc_10, 
						{ fn IFNULL(month10.count_waste_energy_sa, 0) } AS count_waste_energy_sa_10,
						{ fn IFNULL(month10.count_waste_energy_sc, 0) } AS count_waste_energy_sc_10, 
						{ fn IFNULL(month10.count_containment_ua, 0) } AS count_containment_ua_10, 
						{ fn IFNULL(month10.count_containment_uc, 0) } AS count_containment_uc_10, 
						{ fn IFNULL(month10.count_containment_sa, 0) } AS count_containment_sa_10,
						{ fn IFNULL(month10.count_containment_sc, 0) } AS count_containment_sc_10, 
						{ fn IFNULL(month10.count_absorbent_ua, 0) } AS count_absorbent_ua_10, 
						{ fn IFNULL(month10.count_absorbent_uc, 0) } AS count_absorbent_uc_10, 
						{ fn IFNULL(month10.count_absorbent_sa, 0) } AS count_absorbent_sa_10,
						{ fn IFNULL(month10.count_absorbent_sc, 0) } AS count_absorbent_sc_10, 
						{ fn IFNULL(month10.count_hira_ua, 0) } AS count_hira_ua_10, 
						{ fn IFNULL(month10.count_hira_uc, 0) } AS count_hira_uc_10, 
						{ fn IFNULL(month10.count_hira_sa, 0) } AS count_hira_sa_10,
						{ fn IFNULL(month10.count_hira_sc, 0) } AS count_hira_sc_10, 
						{ fn IFNULL(month10.count_ptw_ua, 0) } AS count_ptw_ua_10, 
						{ fn IFNULL(month10.count_ptw_uc, 0) } AS count_ptw_uc_10, 
						{ fn IFNULL(month10.count_ptw_sa, 0) } AS count_ptw_sa_10,
						{ fn IFNULL(month10.count_ptw_sc, 0) } AS count_ptw_sc_10, 
						{ fn IFNULL(month10.count_sop_ua, 0) } AS count_sop_ua_10, 
						{ fn IFNULL(month10.count_sop_uc, 0) } AS count_sop_uc_10, 
						{ fn IFNULL(month10.count_sop_sa, 0) } AS count_sop_sa_10,
						{ fn IFNULL(month10.count_sop_sc, 0) } AS count_sop_sc_10, 
						{ fn IFNULL(month10.count_msds_ua, 0) } AS count_msds_ua_10, 
						{ fn IFNULL(month10.count_msds_uc, 0) } AS count_msds_uc_10, 
						{ fn IFNULL(month10.count_msds_sa, 0) } AS count_msds_sa_10,
						{ fn IFNULL(month10.count_msds_sc, 0) } AS count_msds_sc_10, 
						{ fn IFNULL(month10.count_emergency_ua, 0) } AS count_emergency_ua_10, 
						{ fn IFNULL(month10.count_emergency_uc, 0) } AS count_emergency_uc_10, 
						{ fn IFNULL(month10.count_emergency_sa, 0) } AS count_emergency_sa_10,
						{ fn IFNULL(month10.count_emergency_sc, 0) } AS count_emergency_sc_10, 
						{ fn IFNULL(month10.count_certificates_ua, 0) } AS count_certificates_ua_10, 
						{ fn IFNULL(month10.count_certificates_uc, 0) } AS count_certificates_uc_10, 
						{ fn IFNULL(month10.count_certificates_sa, 0) } AS count_certificates_sa_10,
						{ fn IFNULL(month10.count_certificates_sc, 0) } AS count_certificates_sc_10, 
						{ fn IFNULL(month10.count_ppe_ua, 0) } AS count_ppe_ua_10, 
						{ fn IFNULL(month10.count_ppe_uc, 0) } AS count_ppe_uc_10, 
						{ fn IFNULL(month10.count_ppe_sa, 0) } AS count_ppe_sa_10,
						{ fn IFNULL(month10.count_ppe_sc, 0) } AS count_ppe_sc_10, 
						{ fn IFNULL(month10.count_hand_ua, 0) } AS count_hand_ua_10, 
						{ fn IFNULL(month10.count_hand_uc, 0) } AS count_hand_uc_10, 
						{ fn IFNULL(month10.count_hand_sa, 0) } AS count_hand_sa_10,
						{ fn IFNULL(month10.count_hand_sc, 0) } AS count_hand_sc_10, 
						{ fn IFNULL(month10.count_mechanical_ua, 0) } AS count_mechanical_ua_10, 
						{ fn IFNULL(month10.count_mechanical_uc, 0) } AS count_mechanical_uc_10, 
						{ fn IFNULL(month10.count_mechanical_sa, 0) } AS count_mechanical_sa_10,
						{ fn IFNULL(month10.count_mechanical_sc, 0) } AS count_mechanical_sc_10, 
						{ fn IFNULL(month10.count_electrical_ua, 0) } AS count_electrical_ua_10, 
						{ fn IFNULL(month10.count_electrical_uc, 0) } AS count_electrical_uc_10, 
						{ fn IFNULL(month10.count_electrical_sa, 0) } AS count_electrical_sa_10,
						{ fn IFNULL(month10.count_electrical_sc, 0) } AS count_electrical_sc_10, 
						{ fn IFNULL(month10.count_vehicular_ua, 0) } AS count_vehicular_ua_10, 
						{ fn IFNULL(month10.count_vehicular_uc, 0) } AS count_vehicular_uc_10, 
						{ fn IFNULL(month10.count_vehicular_sa, 0) } AS count_vehicular_sa_10,
						{ fn IFNULL(month10.count_vehicular_sc, 0) } AS count_vehicular_sc_10, 
						{ fn IFNULL(month10.count_substandard_ua, 0) } AS count_substandard_ua_10, 
						{ fn IFNULL(month10.count_substandard_uc, 0) } AS count_substandard_uc_10, 
						{ fn IFNULL(month10.count_substandard_sa, 0) } AS count_substandard_sa_10,
						{ fn IFNULL(month10.count_substandard_sc, 0) } AS count_substandard_sc_10, 
						{ fn IFNULL(month10.count_h2s_ua, 0) } AS count_h2s_ua_10, 
						{ fn IFNULL(month10.count_h2s_uc, 0) } AS count_h2s_uc_10, 
						{ fn IFNULL(month10.count_h2s_sa, 0) } AS count_h2s_sa_10,
						{ fn IFNULL(month10.count_h2s_sc, 0) } AS count_h2s_sc_10, 
						{ fn IFNULL(month10.count_workplace_health_ua, 0) } AS count_workplace_health_ua_10, 
						{ fn IFNULL(month10.count_workplace_health_uc, 0) } AS count_workplace_health_uc_10, 
						{ fn IFNULL(month10.count_workplace_health_sa, 0) } AS count_workplace_health_sa_10,
						{ fn IFNULL(month10.count_workplace_health_sc, 0) } AS count_workplace_health_sc_10,
						{ fn IFNULL(month11.count_accident_ua, 0) } AS count_accident_ua_11, 
						{ fn IFNULL(month11.count_accident_uc, 0) } AS count_accident_uc_11, 
						{ fn IFNULL(month11.count_accident_sa, 0) } AS count_accident_sa_11,
						{ fn IFNULL(month11.count_accident_sc, 0) } AS count_accident_sc_11, 
						{ fn IFNULL(month11.count_fire_ua, 0) } AS count_fire_ua_11, 
						{ fn IFNULL(month11.count_fire_uc, 0) } AS count_fire_uc_11, 
						{ fn IFNULL(month11.count_fire_sa, 0) } AS count_fire_sa_11,
						{ fn IFNULL(month11.count_fire_sc, 0) } AS count_fire_sc_11, 
						{ fn IFNULL(month11.count_prevention_ua, 0) } AS count_prevention_ua_11, 
						{ fn IFNULL(month11.count_prevention_uc, 0) } AS count_prevention_uc_11, 
						{ fn IFNULL(month11.count_prevention_sa, 0) } AS count_prevention_sa_11,
						{ fn IFNULL(month11.count_prevention_sc, 0) } AS count_prevention_sc_11, 
						{ fn IFNULL(month11.count_supervisor_ua, 0) } AS count_supervisor_ua_11, 
						{ fn IFNULL(month11.count_supervisor_uc, 0) } AS count_supervisor_uc_11, 
						{ fn IFNULL(month11.count_supervisor_sa, 0) } AS count_supervisor_sa_11,
						{ fn IFNULL(month11.count_supervisor_sc, 0) } AS count_supervisor_sc_11, 
						{ fn IFNULL(month11.count_fit_work_ua, 0) } AS count_fit_work_ua_11, 
						{ fn IFNULL(month11.count_fit_work_uc, 0) } AS count_fit_work_uc_11, 
						{ fn IFNULL(month11.count_fit_work_sa, 0) } AS count_fit_work_sa_11,
						{ fn IFNULL(month11.count_fit_work_sc, 0) } AS count_fit_work_sc_11, 
						{ fn IFNULL(month11.count_psychological_ua, 0) } AS count_psychological_ua_11, 
						{ fn IFNULL(month11.count_psychological_uc, 0) } AS count_psychological_uc_11, 
						{ fn IFNULL(month11.count_psychological_sa, 0) } AS count_psychological_sa_11,
						{ fn IFNULL(month11.count_psychological_sc, 0) } AS count_psychological_sc_11, 
						{ fn IFNULL(month11.count_posture_ua, 0) } AS count_posture_ua_11, 
						{ fn IFNULL(month11.count_posture_uc, 0) } AS count_posture_uc_11, 
						{ fn IFNULL(month11.count_posture_sa, 0) } AS count_posture_sa_11,
						{ fn IFNULL(month11.count_posture_sc, 0) } AS count_posture_sc_11, 
						{ fn IFNULL(month11.count_substance_ua, 0) } AS count_substance_ua_11, 
						{ fn IFNULL(month11.count_substance_uc, 0) } AS count_substance_uc_11, 
						{ fn IFNULL(month11.count_substance_sa, 0) } AS count_substance_sa_11,
						{ fn IFNULL(month11.count_substance_sc, 0) } AS count_substance_sc_11, 
						{ fn IFNULL(month11.count_hygiene_ua, 0) } AS count_hygiene_ua_11, 
						{ fn IFNULL(month11.count_hygiene_uc, 0) } AS count_hygiene_uc_11, 
						{ fn IFNULL(month11.count_hygiene_sa, 0) } AS count_hygiene_sa_11,
						{ fn IFNULL(month11.count_hygiene_sc, 0) } AS count_hygiene_sc_11, 
						{ fn IFNULL(month11.count_house_ua, 0) } AS count_house_ua_11, 
						{ fn IFNULL(month11.count_house_uc, 0) } AS count_house_uc_11, 
						{ fn IFNULL(month11.count_house_sa, 0) } AS count_house_sa_11,
						{ fn IFNULL(month11.count_house_sc, 0) } AS count_house_sc_11, 
						{ fn IFNULL(month11.count_standard_ua, 0) } AS count_standard_ua_11, 
						{ fn IFNULL(month11.count_standard_uc, 0) } AS count_standard_uc_11, 
						{ fn IFNULL(month11.count_standard_sa, 0) } AS count_standard_sa_11,
						{ fn IFNULL(month11.count_standard_sc, 0) } AS count_standard_sc_11, 
						{ fn IFNULL(month11.count_spill_ua, 0) } AS count_spill_ua_11, 
						{ fn IFNULL(month11.count_spill_uc, 0) } AS count_spill_uc_11, 
						{ fn IFNULL(month11.count_spill_sa, 0) } AS count_spill_sa_11,
						{ fn IFNULL(month11.count_spill_sc, 0) } AS count_spill_sc_11, 
						{ fn IFNULL(month11.count_waste_energy_ua, 0) } AS count_waste_energy_ua_11, 
						{ fn IFNULL(month11.count_waste_energy_uc, 0) } AS count_waste_energy_uc_11, 
						{ fn IFNULL(month11.count_waste_energy_sa, 0) } AS count_waste_energy_sa_11,
						{ fn IFNULL(month11.count_waste_energy_sc, 0) } AS count_waste_energy_sc_11, 
						{ fn IFNULL(month11.count_containment_ua, 0) } AS count_containment_ua_11, 
						{ fn IFNULL(month11.count_containment_uc, 0) } AS count_containment_uc_11, 
						{ fn IFNULL(month11.count_containment_sa, 0) } AS count_containment_sa_11,
						{ fn IFNULL(month11.count_containment_sc, 0) } AS count_containment_sc_11, 
						{ fn IFNULL(month11.count_absorbent_ua, 0) } AS count_absorbent_ua_11, 
						{ fn IFNULL(month11.count_absorbent_uc, 0) } AS count_absorbent_uc_11, 
						{ fn IFNULL(month11.count_absorbent_sa, 0) } AS count_absorbent_sa_11,
						{ fn IFNULL(month11.count_absorbent_sc, 0) } AS count_absorbent_sc_11, 
						{ fn IFNULL(month11.count_hira_ua, 0) } AS count_hira_ua_11, 
						{ fn IFNULL(month11.count_hira_uc, 0) } AS count_hira_uc_11, 
						{ fn IFNULL(month11.count_hira_sa, 0) } AS count_hira_sa_11,
						{ fn IFNULL(month11.count_hira_sc, 0) } AS count_hira_sc_11, 
						{ fn IFNULL(month11.count_ptw_ua, 0) } AS count_ptw_ua_11, 
						{ fn IFNULL(month11.count_ptw_uc, 0) } AS count_ptw_uc_11, 
						{ fn IFNULL(month11.count_ptw_sa, 0) } AS count_ptw_sa_11,
						{ fn IFNULL(month11.count_ptw_sc, 0) } AS count_ptw_sc_11, 
						{ fn IFNULL(month11.count_sop_ua, 0) } AS count_sop_ua_11, 
						{ fn IFNULL(month11.count_sop_uc, 0) } AS count_sop_uc_11, 
						{ fn IFNULL(month11.count_sop_sa, 0) } AS count_sop_sa_11,
						{ fn IFNULL(month11.count_sop_sc, 0) } AS count_sop_sc_11, 
						{ fn IFNULL(month11.count_msds_ua, 0) } AS count_msds_ua_11, 
						{ fn IFNULL(month11.count_msds_uc, 0) } AS count_msds_uc_11, 
						{ fn IFNULL(month11.count_msds_sa, 0) } AS count_msds_sa_11,
						{ fn IFNULL(month11.count_msds_sc, 0) } AS count_msds_sc_11, 
						{ fn IFNULL(month11.count_emergency_ua, 0) } AS count_emergency_ua_11, 
						{ fn IFNULL(month11.count_emergency_uc, 0) } AS count_emergency_uc_11, 
						{ fn IFNULL(month11.count_emergency_sa, 0) } AS count_emergency_sa_11,
						{ fn IFNULL(month11.count_emergency_sc, 0) } AS count_emergency_sc_11, 
						{ fn IFNULL(month11.count_certificates_ua, 0) } AS count_certificates_ua_11, 
						{ fn IFNULL(month11.count_certificates_uc, 0) } AS count_certificates_uc_11, 
						{ fn IFNULL(month11.count_certificates_sa, 0) } AS count_certificates_sa_11,
						{ fn IFNULL(month11.count_certificates_sc, 0) } AS count_certificates_sc_11, 
						{ fn IFNULL(month11.count_ppe_ua, 0) } AS count_ppe_ua_11, 
						{ fn IFNULL(month11.count_ppe_uc, 0) } AS count_ppe_uc_11, 
						{ fn IFNULL(month11.count_ppe_sa, 0) } AS count_ppe_sa_11,
						{ fn IFNULL(month11.count_ppe_sc, 0) } AS count_ppe_sc_11, 
						{ fn IFNULL(month11.count_hand_ua, 0) } AS count_hand_ua_11, 
						{ fn IFNULL(month11.count_hand_uc, 0) } AS count_hand_uc_11, 
						{ fn IFNULL(month11.count_hand_sa, 0) } AS count_hand_sa_11,
						{ fn IFNULL(month11.count_hand_sc, 0) } AS count_hand_sc_11, 
						{ fn IFNULL(month11.count_mechanical_ua, 0) } AS count_mechanical_ua_11, 
						{ fn IFNULL(month11.count_mechanical_uc, 0) } AS count_mechanical_uc_11, 
						{ fn IFNULL(month11.count_mechanical_sa, 0) } AS count_mechanical_sa_11,
						{ fn IFNULL(month11.count_mechanical_sc, 0) } AS count_mechanical_sc_11, 
						{ fn IFNULL(month11.count_electrical_ua, 0) } AS count_electrical_ua_11, 
						{ fn IFNULL(month11.count_electrical_uc, 0) } AS count_electrical_uc_11, 
						{ fn IFNULL(month11.count_electrical_sa, 0) } AS count_electrical_sa_11,
						{ fn IFNULL(month11.count_electrical_sc, 0) } AS count_electrical_sc_11, 
						{ fn IFNULL(month11.count_vehicular_ua, 0) } AS count_vehicular_ua_11, 
						{ fn IFNULL(month11.count_vehicular_uc, 0) } AS count_vehicular_uc_11, 
						{ fn IFNULL(month11.count_vehicular_sa, 0) } AS count_vehicular_sa_11,
						{ fn IFNULL(month11.count_vehicular_sc, 0) } AS count_vehicular_sc_11, 
						{ fn IFNULL(month11.count_substandard_ua, 0) } AS count_substandard_ua_11, 
						{ fn IFNULL(month11.count_substandard_uc, 0) } AS count_substandard_uc_11, 
						{ fn IFNULL(month11.count_substandard_sa, 0) } AS count_substandard_sa_11,
						{ fn IFNULL(month11.count_substandard_sc, 0) } AS count_substandard_sc_11, 
						{ fn IFNULL(month11.count_h2s_ua, 0) } AS count_h2s_ua_11, 
						{ fn IFNULL(month11.count_h2s_uc, 0) } AS count_h2s_uc_11, 
						{ fn IFNULL(month11.count_h2s_sa, 0) } AS count_h2s_sa_11,
						{ fn IFNULL(month11.count_h2s_sc, 0) } AS count_h2s_sc_11, 
						{ fn IFNULL(month11.count_workplace_health_ua, 0) } AS count_workplace_health_ua_11, 
						{ fn IFNULL(month11.count_workplace_health_uc, 0) } AS count_workplace_health_uc_11, 
						{ fn IFNULL(month11.count_workplace_health_sa, 0) } AS count_workplace_health_sa_11,
						{ fn IFNULL(month11.count_workplace_health_sc, 0) } AS count_workplace_health_sc_11,
						{ fn IFNULL(month12.count_accident_ua, 0) } AS count_accident_ua_12, 
						{ fn IFNULL(month12.count_accident_uc, 0) } AS count_accident_uc_12, 
						{ fn IFNULL(month12.count_accident_sa, 0) } AS count_accident_sa_12,
						{ fn IFNULL(month12.count_accident_sc, 0) } AS count_accident_sc_12, 
						{ fn IFNULL(month12.count_fire_ua, 0) } AS count_fire_ua_12, 
						{ fn IFNULL(month12.count_fire_uc, 0) } AS count_fire_uc_12, 
						{ fn IFNULL(month12.count_fire_sa, 0) } AS count_fire_sa_12,
						{ fn IFNULL(month12.count_fire_sc, 0) } AS count_fire_sc_12, 
						{ fn IFNULL(month12.count_prevention_ua, 0) } AS count_prevention_ua_12, 
						{ fn IFNULL(month12.count_prevention_uc, 0) } AS count_prevention_uc_12, 
						{ fn IFNULL(month12.count_prevention_sa, 0) } AS count_prevention_sa_12,
						{ fn IFNULL(month12.count_prevention_sc, 0) } AS count_prevention_sc_12, 
						{ fn IFNULL(month12.count_supervisor_ua, 0) } AS count_supervisor_ua_12, 
						{ fn IFNULL(month12.count_supervisor_uc, 0) } AS count_supervisor_uc_12, 
						{ fn IFNULL(month12.count_supervisor_sa, 0) } AS count_supervisor_sa_12,
						{ fn IFNULL(month12.count_supervisor_sc, 0) } AS count_supervisor_sc_12, 
						{ fn IFNULL(month12.count_fit_work_ua, 0) } AS count_fit_work_ua_12, 
						{ fn IFNULL(month12.count_fit_work_uc, 0) } AS count_fit_work_uc_12, 
						{ fn IFNULL(month12.count_fit_work_sa, 0) } AS count_fit_work_sa_12,
						{ fn IFNULL(month12.count_fit_work_sc, 0) } AS count_fit_work_sc_12, 
						{ fn IFNULL(month12.count_psychological_ua, 0) } AS count_psychological_ua_12, 
						{ fn IFNULL(month12.count_psychological_uc, 0) } AS count_psychological_uc_12, 
						{ fn IFNULL(month12.count_psychological_sa, 0) } AS count_psychological_sa_12,
						{ fn IFNULL(month12.count_psychological_sc, 0) } AS count_psychological_sc_12, 
						{ fn IFNULL(month12.count_posture_ua, 0) } AS count_posture_ua_12, 
						{ fn IFNULL(month12.count_posture_uc, 0) } AS count_posture_uc_12, 
						{ fn IFNULL(month12.count_posture_sa, 0) } AS count_posture_sa_12,
						{ fn IFNULL(month12.count_posture_sc, 0) } AS count_posture_sc_12, 
						{ fn IFNULL(month12.count_substance_ua, 0) } AS count_substance_ua_12, 
						{ fn IFNULL(month12.count_substance_uc, 0) } AS count_substance_uc_12, 
						{ fn IFNULL(month12.count_substance_sa, 0) } AS count_substance_sa_12,
						{ fn IFNULL(month12.count_substance_sc, 0) } AS count_substance_sc_12, 
						{ fn IFNULL(month12.count_hygiene_ua, 0) } AS count_hygiene_ua_12, 
						{ fn IFNULL(month12.count_hygiene_uc, 0) } AS count_hygiene_uc_12, 
						{ fn IFNULL(month12.count_hygiene_sa, 0) } AS count_hygiene_sa_12,
						{ fn IFNULL(month12.count_hygiene_sc, 0) } AS count_hygiene_sc_12, 
						{ fn IFNULL(month12.count_house_ua, 0) } AS count_house_ua_12, 
						{ fn IFNULL(month12.count_house_uc, 0) } AS count_house_uc_12, 
						{ fn IFNULL(month12.count_house_sa, 0) } AS count_house_sa_12,
						{ fn IFNULL(month12.count_house_sc, 0) } AS count_house_sc_12, 
						{ fn IFNULL(month12.count_standard_ua, 0) } AS count_standard_ua_12, 
						{ fn IFNULL(month12.count_standard_uc, 0) } AS count_standard_uc_12, 
						{ fn IFNULL(month12.count_standard_sa, 0) } AS count_standard_sa_12,
						{ fn IFNULL(month12.count_standard_sc, 0) } AS count_standard_sc_12, 
						{ fn IFNULL(month12.count_spill_ua, 0) } AS count_spill_ua_12, 
						{ fn IFNULL(month12.count_spill_uc, 0) } AS count_spill_uc_12, 
						{ fn IFNULL(month12.count_spill_sa, 0) } AS count_spill_sa_12,
						{ fn IFNULL(month12.count_spill_sc, 0) } AS count_spill_sc_12, 
						{ fn IFNULL(month12.count_waste_energy_ua, 0) } AS count_waste_energy_ua_12, 
						{ fn IFNULL(month12.count_waste_energy_uc, 0) } AS count_waste_energy_uc_12, 
						{ fn IFNULL(month12.count_waste_energy_sa, 0) } AS count_waste_energy_sa_12,
						{ fn IFNULL(month12.count_waste_energy_sc, 0) } AS count_waste_energy_sc_12, 
						{ fn IFNULL(month12.count_containment_ua, 0) } AS count_containment_ua_12, 
						{ fn IFNULL(month12.count_containment_uc, 0) } AS count_containment_uc_12, 
						{ fn IFNULL(month12.count_containment_sa, 0) } AS count_containment_sa_12,
						{ fn IFNULL(month12.count_containment_sc, 0) } AS count_containment_sc_12, 
						{ fn IFNULL(month12.count_absorbent_ua, 0) } AS count_absorbent_ua_12, 
						{ fn IFNULL(month12.count_absorbent_uc, 0) } AS count_absorbent_uc_12, 
						{ fn IFNULL(month12.count_absorbent_sa, 0) } AS count_absorbent_sa_12,
						{ fn IFNULL(month12.count_absorbent_sc, 0) } AS count_absorbent_sc_12, 
						{ fn IFNULL(month12.count_hira_ua, 0) } AS count_hira_ua_12, 
						{ fn IFNULL(month12.count_hira_uc, 0) } AS count_hira_uc_12, 
						{ fn IFNULL(month12.count_hira_sa, 0) } AS count_hira_sa_12,
						{ fn IFNULL(month12.count_hira_sc, 0) } AS count_hira_sc_12, 
						{ fn IFNULL(month12.count_ptw_ua, 0) } AS count_ptw_ua_12, 
						{ fn IFNULL(month12.count_ptw_uc, 0) } AS count_ptw_uc_12, 
						{ fn IFNULL(month12.count_ptw_sa, 0) } AS count_ptw_sa_12,
						{ fn IFNULL(month12.count_ptw_sc, 0) } AS count_ptw_sc_12, 
						{ fn IFNULL(month12.count_sop_ua, 0) } AS count_sop_ua_12, 
						{ fn IFNULL(month12.count_sop_uc, 0) } AS count_sop_uc_12, 
						{ fn IFNULL(month12.count_sop_sa, 0) } AS count_sop_sa_12,
						{ fn IFNULL(month12.count_sop_sc, 0) } AS count_sop_sc_12, 
						{ fn IFNULL(month12.count_msds_ua, 0) } AS count_msds_ua_12, 
						{ fn IFNULL(month12.count_msds_uc, 0) } AS count_msds_uc_12, 
						{ fn IFNULL(month12.count_msds_sa, 0) } AS count_msds_sa_12,
						{ fn IFNULL(month12.count_msds_sc, 0) } AS count_msds_sc_12, 
						{ fn IFNULL(month12.count_emergency_ua, 0) } AS count_emergency_ua_12, 
						{ fn IFNULL(month12.count_emergency_uc, 0) } AS count_emergency_uc_12, 
						{ fn IFNULL(month12.count_emergency_sa, 0) } AS count_emergency_sa_12,
						{ fn IFNULL(month12.count_emergency_sc, 0) } AS count_emergency_sc_12, 
						{ fn IFNULL(month12.count_certificates_ua, 0) } AS count_certificates_ua_12, 
						{ fn IFNULL(month12.count_certificates_uc, 0) } AS count_certificates_uc_12, 
						{ fn IFNULL(month12.count_certificates_sa, 0) } AS count_certificates_sa_12,
						{ fn IFNULL(month12.count_certificates_sc, 0) } AS count_certificates_sc_12, 
						{ fn IFNULL(month12.count_ppe_ua, 0) } AS count_ppe_ua_12, 
						{ fn IFNULL(month12.count_ppe_uc, 0) } AS count_ppe_uc_12, 
						{ fn IFNULL(month12.count_ppe_sa, 0) } AS count_ppe_sa_12,
						{ fn IFNULL(month12.count_ppe_sc, 0) } AS count_ppe_sc_12, 
						{ fn IFNULL(month12.count_hand_ua, 0) } AS count_hand_ua_12, 
						{ fn IFNULL(month12.count_hand_uc, 0) } AS count_hand_uc_12, 
						{ fn IFNULL(month12.count_hand_sa, 0) } AS count_hand_sa_12,
						{ fn IFNULL(month12.count_hand_sc, 0) } AS count_hand_sc_12, 
						{ fn IFNULL(month12.count_mechanical_ua, 0) } AS count_mechanical_ua_12, 
						{ fn IFNULL(month12.count_mechanical_uc, 0) } AS count_mechanical_uc_12, 
						{ fn IFNULL(month12.count_mechanical_sa, 0) } AS count_mechanical_sa_12,
						{ fn IFNULL(month12.count_mechanical_sc, 0) } AS count_mechanical_sc_12, 
						{ fn IFNULL(month12.count_electrical_ua, 0) } AS count_electrical_ua_12, 
						{ fn IFNULL(month12.count_electrical_uc, 0) } AS count_electrical_uc_12, 
						{ fn IFNULL(month12.count_electrical_sa, 0) } AS count_electrical_sa_12,
						{ fn IFNULL(month12.count_electrical_sc, 0) } AS count_electrical_sc_12, 
						{ fn IFNULL(month12.count_vehicular_ua, 0) } AS count_vehicular_ua_12, 
						{ fn IFNULL(month12.count_vehicular_uc, 0) } AS count_vehicular_uc_12, 
						{ fn IFNULL(month12.count_vehicular_sa, 0) } AS count_vehicular_sa_12,
						{ fn IFNULL(month12.count_vehicular_sc, 0) } AS count_vehicular_sc_12, 
						{ fn IFNULL(month12.count_substandard_ua, 0) } AS count_substandard_ua_12, 
						{ fn IFNULL(month12.count_substandard_uc, 0) } AS count_substandard_uc_12, 
						{ fn IFNULL(month12.count_substandard_sa, 0) } AS count_substandard_sa_12,
						{ fn IFNULL(month12.count_substandard_sc, 0) } AS count_substandard_sc_12, 
						{ fn IFNULL(month12.count_h2s_ua, 0) } AS count_h2s_ua_12, 
						{ fn IFNULL(month12.count_h2s_uc, 0) } AS count_h2s_uc_12, 
						{ fn IFNULL(month12.count_h2s_sa, 0) } AS count_h2s_sa_12,
						{ fn IFNULL(month12.count_h2s_sc, 0) } AS count_h2s_sc_12, 
						{ fn IFNULL(month12.count_workplace_health_ua, 0) } AS count_workplace_health_ua_12, 
						{ fn IFNULL(month12.count_workplace_health_uc, 0) } AS count_workplace_health_uc_12, 
						{ fn IFNULL(month12.count_workplace_health_sa, 0) } AS count_workplace_health_sa_12,
						{ fn IFNULL(month12.count_workplace_health_sc, 0) } AS count_workplace_health_sc_12 
FROM (((observationByMonths(@year,'1') as month1 full join 
	observationByMonths(@year,'2') as month2 on month1.year=month2.year) full join 
	(observationByMonths(@year,'3') as month3 full join 
	observationByMonths(@year,'4') as month4 on month3.year=month4.year) on month1.year=month3.year) full join 
	((observationByMonths(@year,'5') as month5 full join 
	observationByMonths(@year,'6') as month6 on month5.year=month6.year)  full join
	(observationByMonths(@year,'7') as month7 full join
	observationByMonths(@year,'8') as month8 on month7.year=month8.year) on month5.year=month7.year) on month1.year=month5.year) full join
	((observationByMonths(@year,'9') as month9  full join
	observationByMonths(@year,'10') as month10 on month9.year=month10.year) full join
	(observationByMonths(@year,'11') as month11  full join
	observationByMonths(@year,'12') as month12 on month11.year=month12.year) on month9.year=month11.year) on month1.year=month9.year
END
GO
/****** Object:  Table [dbo].[comms_rbi]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[daily_log]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[daily_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [varchar](50) NULL,
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
	[user_shift1] [varchar](255) NULL,
	[user_shift2] [varchar](255) NULL,
	[is_approve] [tinyint] NULL,
 CONSTRAINT [PK_daily_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_last_plant_status]    Script Date: 4/22/2013 3:23:09 PM ******/
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
	[username] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_last_plant_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_maintainence]    Script Date: 4/22/2013 3:23:09 PM ******/
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
	[username] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_maintainence] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_power_stations]    Script Date: 4/22/2013 3:23:09 PM ******/
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
	[username] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_power_stations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_pro]    Script Date: 4/22/2013 3:23:09 PM ******/
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
	[username] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_pro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[daily_log_sags]    Script Date: 4/22/2013 3:23:09 PM ******/
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
	[username] [varchar](255) NULL,
 CONSTRAINT [PK_daily_log_sags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[disciplines]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[employee]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employee_no] [varchar](255) NULL,
	[alpha_name] [varchar](255) NULL,
	[position] [varchar](255) NULL,
	[work_location] [varchar](255) NULL,
	[employee_dept] [int] NULL,
	[dob] [date] NULL,
	[employee_boss] [int] NULL,
	[dept_id] [int] NULL,
	[email] [varchar](255) NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee_dept]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee_dept](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dept_name] [varchar](255) NULL,
	[plant_id] [int] NULL,
 CONSTRAINT [PK_employee_dept] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[equipment_daily_report]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipment_daily_report](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_equipment_daily_report] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[equipment_daily_report_table]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[equipment_daily_report_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_equipment_daily_report] [int] NULL,
	[id_equipment] [int] NULL,
	[min_limit] [varchar](20) NULL,
	[max_limit] [varchar](20) NULL,
	[unit] [varchar](20) NULL,
	[tag_value] [varchar](50) NULL,
	[time] [varchar](10) NULL,
	[name_operator] [varchar](255) NULL,
	[keterangan] [varchar](255) NULL,
	[barcode] [varchar](10) NULL,
 CONSTRAINT [PK_equipment_daily_report_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[equipment_event]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[equipment_groups]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[equipment_paf]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[equipment_part]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[equipment_read_nav_note]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[equipment_readiness_nav]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[equipments]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[event_descriptions]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[failure_causes]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[failure_effects]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[failure_modes]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[foc_op_avail]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[foc_paf]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[foc_target_paf]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[focs]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[iir_recommendations]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[immediate_actions]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[incident_report]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[investigation_report]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[long_term_actions]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[ma]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[part_unit_event]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[parts]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[pir]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[pir_log]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[plants]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_analisys_type]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_building]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_csf]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_csf_conector]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_department]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_desc]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_division]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_facility]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_fishbone_master]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rca_fishbone_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK_rca_fishbone_master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rca_floor]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_graph_metric]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_implementation]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[rca_team_connector]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[secondary_effects]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[she_illness_report]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[she_observation]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[system_paf]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[systems]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[tag_types]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[unit_paf]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[units]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[user_per_role]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[user_role]    Script Date: 4/22/2013 3:23:09 PM ******/
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
/****** Object:  Table [dbo].[users]    Script Date: 4/22/2013 3:23:09 PM ******/
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
	[employee_id] [int] NULL,
 CONSTRAINT [Users$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_users] UNIQUE NONCLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[observationByMonths]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[observationByMonths]
(  
    @year varchar(4),
	@month varchar(2)  
)
RETURNS TABLE 
AS
RETURN 
  SELECT        ym.year, ym.month, { fn IFNULL(accident_sa.count_accident_sa, 0) } AS count_accident_sa, { fn IFNULL(accident_sc.count_accident_sc, 0) } AS count_accident_sc, 
                         { fn IFNULL(accident_ua.count_accident_ua, 0) } AS count_accident_ua, { fn IFNULL(accident_uc.count_accident_uc, 0) } AS count_accident_uc, { fn IFNULL(fire_sa.count, 0) } AS count_fire_sa, { fn IFNULL(fire_sc.count, 0) } AS count_fire_sc, { fn IFNULL(fire_ua.count, 0) } AS count_fire_ua, { fn IFNULL(fire_uc.count, 0) } AS count_fire_uc, { fn IFNULL(prevention_sa.count, 0) } AS count_prevention_sa, { fn IFNULL(prevention_sc.count, 0) } AS count_prevention_sc, { fn IFNULL(prevention_ua.count, 0) } AS count_prevention_ua, { fn IFNULL(prevention_uc.count, 0) } AS count_prevention_uc, { fn IFNULL(supervisor_sa.count, 0) } AS count_supervisor_sa, { fn IFNULL(supervisor_sc.count, 0) } AS count_supervisor_sc, { fn IFNULL(supervisor_ua.count, 0) } AS count_supervisor_ua, { fn IFNULL(supervisor_uc.count, 0) } AS count_supervisor_uc,
						  { fn IFNULL(fit_work_sa.count, 0) } AS count_fit_work_sa,
						  { fn IFNULL(fit_work_sc.count, 0) } AS count_fit_work_sc,
						  { fn IFNULL(fit_work_ua.count, 0) } AS count_fit_work_ua,
						  { fn IFNULL(fit_work_uc.count, 0) } AS count_fit_work_uc,
						  { fn IFNULL(psychological_sa.count, 0) } AS count_psychological_sa,
						  { fn IFNULL(psychological_sc.count, 0) } AS count_psychological_sc,
						  { fn IFNULL(psychological_ua.count, 0) } AS count_psychological_ua,
						  { fn IFNULL(psychological_uc.count, 0) } AS count_psychological_uc,
						  { fn IFNULL(posture_sa.count, 0) } AS count_posture_sa,
						  { fn IFNULL(posture_sc.count, 0) } AS count_posture_sc,
						  { fn IFNULL(posture_ua.count, 0) } AS count_posture_ua,
						  { fn IFNULL(posture_uc.count, 0) } AS count_posture_uc,
						  { fn IFNULL(substance_sa.count, 0) } AS count_substance_sa,
						  { fn IFNULL(substance_sc.count, 0) } AS count_substance_sc,
						  { fn IFNULL(substance_ua.count, 0) } AS count_substance_ua,
						  { fn IFNULL(substance_uc.count, 0) } AS count_substance_uc,
						  { fn IFNULL(hygiene_sa.count, 0) } AS count_hygiene_sa,
						  { fn IFNULL(hygiene_sc.count, 0) } AS count_hygiene_sc,
						  { fn IFNULL(hygiene_ua.count, 0) } AS count_hygiene_ua,
						  { fn IFNULL(hygiene_uc.count, 0) } AS count_hygiene_uc,
						  { fn IFNULL(house_sa.count, 0) } AS count_house_sa,
						  { fn IFNULL(house_sc.count, 0) } AS count_house_sc,
						  { fn IFNULL(house_ua.count, 0) } AS count_house_ua,
						  { fn IFNULL(house_uc.count, 0) } AS count_house_uc,
						  { fn IFNULL(standard_sa.count, 0) } AS count_standard_sa,
						  { fn IFNULL(standard_sc.count, 0) } AS count_standard_sc,
						  { fn IFNULL(standard_ua.count, 0) } AS count_standard_ua,
						  { fn IFNULL(standard_uc.count, 0) } AS count_standard_uc,
						  { fn IFNULL(spill_sa.count, 0) } AS count_spill_sa,
						  { fn IFNULL(spill_sc.count, 0) } AS count_spill_sc,
						  { fn IFNULL(spill_ua.count, 0) } AS count_spill_ua,
						  { fn IFNULL(spill_uc.count, 0) } AS count_spill_uc,
						  { fn IFNULL(waste_energy_sa.count, 0) } AS count_waste_energy_sa,
						  { fn IFNULL(waste_energy_sc.count, 0) } AS count_waste_energy_sc,
						  { fn IFNULL(waste_energy_ua.count, 0) } AS count_waste_energy_ua,
						  { fn IFNULL(waste_energy_uc.count, 0) } AS count_waste_energy_uc,
						  { fn IFNULL(containment_sa.count, 0) } AS count_containment_sa,
						  { fn IFNULL(containment_sc.count, 0) } AS count_containment_sc,
						  { fn IFNULL(containment_ua.count, 0) } AS count_containment_ua,
						  { fn IFNULL(containment_uc.count, 0) } AS count_containment_uc,
						  { fn IFNULL(absorbent_sa.count, 0) } AS count_absorbent_sa,
						  { fn IFNULL(absorbent_sc.count, 0) } AS count_absorbent_sc,
						  { fn IFNULL(absorbent_ua.count, 0) } AS count_absorbent_ua,
						  { fn IFNULL(absorbent_uc.count, 0) } AS count_absorbent_uc,
						  { fn IFNULL(hira_sa.count, 0) } AS count_hira_sa,
						  { fn IFNULL(hira_sc.count, 0) } AS count_hira_sc,
						  { fn IFNULL(hira_ua.count, 0) } AS count_hira_ua,
						  { fn IFNULL(hira_uc.count, 0) } AS count_hira_uc,
						  { fn IFNULL(ptw_sa.count, 0) } AS count_ptw_sa,
						  { fn IFNULL(ptw_sc.count, 0) } AS count_ptw_sc,
						  { fn IFNULL(ptw_ua.count, 0) } AS count_ptw_ua,
						  { fn IFNULL(ptw_uc.count, 0) } AS count_ptw_uc,
						  { fn IFNULL(sop_sa.count, 0) } AS count_sop_sa,
						  { fn IFNULL(sop_sc.count, 0) } AS count_sop_sc,
						  { fn IFNULL(sop_ua.count, 0) } AS count_sop_ua,
						  { fn IFNULL(sop_uc.count, 0) } AS count_sop_uc,
						  { fn IFNULL(msds_sa.count, 0) } AS count_msds_sa,
						  { fn IFNULL(msds_sc.count, 0) } AS count_msds_sc,
						  { fn IFNULL(msds_ua.count, 0) } AS count_msds_ua,
						  { fn IFNULL(msds_uc.count, 0) } AS count_msds_uc,
						  { fn IFNULL(emergency_sa.count, 0) } AS count_emergency_sa,
						  { fn IFNULL(emergency_sc.count, 0) } AS count_emergency_sc,
						  { fn IFNULL(emergency_ua.count, 0) } AS count_emergency_ua,
						  { fn IFNULL(emergency_uc.count, 0) } AS count_emergency_uc,
						  { fn IFNULL(certificates_sa.count, 0) } AS count_certificates_sa,
						  { fn IFNULL(certificates_sc.count, 0) } AS count_certificates_sc,
						  { fn IFNULL(certificates_ua.count, 0) } AS count_certificates_ua,
						  { fn IFNULL(certificates_uc.count, 0) } AS count_certificates_uc,
						  { fn IFNULL(ppe_sa.count, 0) } AS count_ppe_sa,
						  { fn IFNULL(ppe_sc.count, 0) } AS count_ppe_sc,
						  { fn IFNULL(ppe_ua.count, 0) } AS count_ppe_ua,
						  { fn IFNULL(ppe_uc.count, 0) } AS count_ppe_uc,
						  { fn IFNULL(hand_sa.count, 0) } AS count_hand_sa,
						  { fn IFNULL(hand_sc.count, 0) } AS count_hand_sc,
						  { fn IFNULL(hand_ua.count, 0) } AS count_hand_ua,
						  { fn IFNULL(hand_uc.count, 0) } AS count_hand_uc,
						  { fn IFNULL(mechanical_sa.count, 0) } AS count_mechanical_sa,
						  { fn IFNULL(mechanical_sc.count, 0) } AS count_mechanical_sc,
						  { fn IFNULL(mechanical_ua.count, 0) } AS count_mechanical_ua,
						  { fn IFNULL(mechanical_uc.count, 0) } AS count_mechanical_uc,
						  { fn IFNULL(electrical_sa.count, 0) } AS count_electrical_sa,
						  { fn IFNULL(electrical_sc.count, 0) } AS count_electrical_sc,
						  { fn IFNULL(electrical_ua.count, 0) } AS count_electrical_ua,
						  { fn IFNULL(electrical_uc.count, 0) } AS count_electrical_uc,
						  { fn IFNULL(vehicular_sa.count, 0) } AS count_vehicular_sa,
						  { fn IFNULL(vehicular_sc.count, 0) } AS count_vehicular_sc,
						  { fn IFNULL(vehicular_ua.count, 0) } AS count_vehicular_ua,
						  { fn IFNULL(vehicular_uc.count, 0) } AS count_vehicular_uc,
						  { fn IFNULL(substandard_sa.count, 0) } AS count_substandard_sa,
						  { fn IFNULL(substandard_sc.count, 0) } AS count_substandard_sc,
						  { fn IFNULL(substandard_ua.count, 0) } AS count_substandard_ua,
						  { fn IFNULL(substandard_uc.count, 0) } AS count_substandard_uc,
						  { fn IFNULL(h2s_sa.count, 0) } AS count_h2s_sa,
						  { fn IFNULL(h2s_sc.count, 0) } AS count_h2s_sc,
						  { fn IFNULL(h2s_ua.count, 0) } AS count_h2s_ua,
						  { fn IFNULL(h2s_uc.count, 0) } AS count_h2s_uc,
						  { fn IFNULL(workplace_health_sa.count, 0) } AS count_workplace_health_sa,
						  { fn IFNULL(workplace_health_sc.count, 0) } AS count_workplace_health_sc,
						  { fn IFNULL(workplace_health_ua.count, 0) } AS count_workplace_health_ua,
						  { fn IFNULL(workplace_health_uc.count, 0) } AS count_workplace_health_uc
FROM            (SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) AS month
                          FROM            she_observation) AS ym LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_safe AS asa, COUNT(id) AS count_accident_sa
                               FROM            she_observation AS she_observation_2
                               WHERE        (accident_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_safe) AS accident_sa ON ym.year = accident_sa.year AND 
                         ym.month = accident_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_safe AS asa, COUNT(id) AS count_accident_sc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_safe) AS accident_sc ON ym.year = accident_sc.year AND 
                         ym.month = accident_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_unsafe AS aua, COUNT(id) AS count_accident_ua
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_unsafe) AS accident_ua ON ym.year = accident_ua.year AND 
                         ym.month = accident_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, accident_unsafe AS auc, COUNT(id) AS count_accident_uc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), accident_unsafe) AS accident_uc ON ym.year = accident_uc.year AND ym.month = accident_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_safe) AS fire_sa ON ym.year = fire_sa.year AND ym.month = fire_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_safe) AS fire_sc ON ym.year = fire_sc.year AND 
                         ym.month = fire_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_unsafe) AS fire_ua ON ym.year = fire_ua.year AND 
                         ym.month = fire_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fire_unsafe) AS fire_uc ON ym.year = fire_uc.year AND ym.month = fire_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_safe) AS prevention_sa ON ym.year = prevention_sa.year AND ym.month = prevention_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_safe) AS prevention_sc ON ym.year = prevention_sc.year AND 
                         ym.month = prevention_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_unsafe) AS prevention_ua ON ym.year = prevention_ua.year AND 
                         ym.month = prevention_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), prevention_unsafe) AS prevention_uc ON ym.year = prevention_uc.year AND ym.month = prevention_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_safe) AS supervisor_sa ON ym.year = supervisor_sa.year AND ym.month = supervisor_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_safe) AS supervisor_sc ON ym.year = supervisor_sc.year AND 
                         ym.month = supervisor_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_unsafe) AS supervisor_ua ON ym.year = supervisor_ua.year AND 
                         ym.month = supervisor_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), supervisor_unsafe) AS supervisor_uc ON ym.year = supervisor_uc.year AND ym.month = supervisor_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_safe) AS fit_work_sa ON ym.year = fit_work_sa.year AND ym.month = fit_work_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_safe) AS fit_work_sc ON ym.year = fit_work_sc.year AND 
                         ym.month = fit_work_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_unsafe) AS fit_work_ua ON ym.year = fit_work_ua.year AND 
                         ym.month = fit_work_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), fit_work_unsafe) AS fit_work_uc ON ym.year = fit_work_uc.year AND ym.month = fit_work_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_safe) AS psychological_sa ON ym.year = psychological_sa.year AND ym.month = psychological_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_safe) AS psychological_sc ON ym.year = psychological_sc.year AND 
                         ym.month = psychological_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_unsafe) AS psychological_ua ON ym.year = psychological_ua.year AND 
                         ym.month = psychological_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), psychological_unsafe) AS psychological_uc ON ym.year = psychological_uc.year AND ym.month = psychological_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_safe) AS posture_sa ON ym.year = posture_sa.year AND ym.month = posture_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_safe) AS posture_sc ON ym.year = posture_sc.year AND 
                         ym.month = posture_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_unsafe) AS posture_ua ON ym.year = posture_ua.year AND 
                         ym.month = posture_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), posture_unsafe) AS posture_uc ON ym.year = posture_uc.year AND ym.month = posture_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_safe) AS substance_sa ON ym.year = substance_sa.year AND ym.month = substance_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_safe) AS substance_sc ON ym.year = substance_sc.year AND 
                         ym.month = substance_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_unsafe) AS substance_ua ON ym.year = substance_ua.year AND 
                         ym.month = substance_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substance_unsafe) AS substance_uc ON ym.year = substance_uc.year AND ym.month = substance_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_safe) AS hygiene_sa ON ym.year = hygiene_sa.year AND ym.month = hygiene_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_safe) AS hygiene_sc ON ym.year = hygiene_sc.year AND 
                         ym.month = hygiene_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_unsafe) AS hygiene_ua ON ym.year = hygiene_ua.year AND 
                         ym.month = hygiene_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hygiene_unsafe) AS hygiene_uc ON ym.year = hygiene_uc.year AND ym.month = hygiene_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_safe) AS house_sa ON ym.year = house_sa.year AND ym.month = house_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_safe) AS house_sc ON ym.year = house_sc.year AND 
                         ym.month = house_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_unsafe) AS house_ua ON ym.year = house_ua.year AND 
                         ym.month = house_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), house_unsafe) AS house_uc ON ym.year = house_uc.year AND ym.month = house_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_safe) AS standard_sa ON ym.year = standard_sa.year AND ym.month = standard_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_safe) AS standard_sc ON ym.year = standard_sc.year AND 
                         ym.month = standard_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_unsafe) AS standard_ua ON ym.year = standard_ua.year AND 
                         ym.month = standard_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), standard_unsafe) AS standard_uc ON ym.year = standard_uc.year AND ym.month = standard_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_safe) AS spill_sa ON ym.year = spill_sa.year AND ym.month = spill_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_safe) AS spill_sc ON ym.year = spill_sc.year AND 
                         ym.month = spill_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_unsafe) AS spill_ua ON ym.year = spill_ua.year AND 
                         ym.month = spill_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), spill_unsafe) AS spill_uc ON ym.year = spill_uc.year AND ym.month = spill_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_safe) AS waste_energy_sa ON ym.year = waste_energy_sa.year AND ym.month = waste_energy_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_safe) AS waste_energy_sc ON ym.year = waste_energy_sc.year AND 
                         ym.month = waste_energy_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_unsafe) AS waste_energy_ua ON ym.year = waste_energy_ua.year AND 
                         ym.month = waste_energy_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_unsafe) AS waste_energy_uc ON ym.year = waste_energy_uc.year AND ym.month = waste_energy_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_safe) AS containment_sa ON ym.year = containment_sa.year AND ym.month = containment_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_safe) AS containment_sc ON ym.year = containment_sc.year AND 
                         ym.month = containment_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_unsafe) AS containment_ua ON ym.year = containment_ua.year AND 
                         ym.month = containment_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), containment_unsafe) AS containment_uc ON ym.year = containment_uc.year AND ym.month = containment_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_safe) AS absorbent_sa ON ym.year = absorbent_sa.year AND ym.month = absorbent_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_safe) AS absorbent_sc ON ym.year = absorbent_sc.year AND 
                         ym.month = absorbent_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_unsafe) AS absorbent_ua ON ym.year = absorbent_ua.year AND 
                         ym.month = absorbent_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), absorbent_unsafe) AS absorbent_uc ON ym.year = absorbent_uc.year AND ym.month = absorbent_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_safe) AS hira_sa ON ym.year = hira_sa.year AND ym.month = hira_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_safe) AS hira_sc ON ym.year = hira_sc.year AND 
                         ym.month = hira_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_unsafe) AS hira_ua ON ym.year = hira_ua.year AND 
                         ym.month = hira_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hira_unsafe) AS hira_uc ON ym.year = hira_uc.year AND ym.month = hira_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_safe) AS ptw_sa ON ym.year = ptw_sa.year AND ym.month = ptw_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_safe) AS ptw_sc ON ym.year = ptw_sc.year AND 
                         ym.month = ptw_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_unsafe) AS ptw_ua ON ym.year = ptw_ua.year AND 
                         ym.month = ptw_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ptw_unsafe) AS ptw_uc ON ym.year = ptw_uc.year AND ym.month = ptw_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_safe) AS sop_sa ON ym.year = sop_sa.year AND ym.month = sop_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_safe) AS sop_sc ON ym.year = sop_sc.year AND 
                         ym.month = sop_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_unsafe) AS sop_ua ON ym.year = sop_ua.year AND 
                         ym.month = sop_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), sop_unsafe) AS sop_uc ON ym.year = sop_uc.year AND ym.month = sop_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_safe) AS msds_sa ON ym.year = msds_sa.year AND ym.month = msds_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_safe) AS msds_sc ON ym.year = msds_sc.year AND 
                         ym.month = msds_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_unsafe) AS msds_ua ON ym.year = msds_ua.year AND 
                         ym.month = msds_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), msds_unsafe) AS msds_uc ON ym.year = msds_uc.year AND ym.month = msds_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_safe) AS emergency_sa ON ym.year = emergency_sa.year AND ym.month = emergency_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_safe) AS emergency_sc ON ym.year = emergency_sc.year AND 
                         ym.month = emergency_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_unsafe) AS emergency_ua ON ym.year = emergency_ua.year AND 
                         ym.month = emergency_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), emergency_unsafe) AS emergency_uc ON ym.year = emergency_uc.year AND ym.month = emergency_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_safe) AS certificates_sa ON ym.year = certificates_sa.year AND ym.month = certificates_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_safe) AS certificates_sc ON ym.year = certificates_sc.year AND 
                         ym.month = certificates_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_unsafe) AS certificates_ua ON ym.year = certificates_ua.year AND 
                         ym.month = certificates_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), certificates_unsafe) AS certificates_uc ON ym.year = certificates_uc.year AND ym.month = certificates_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_safe) AS ppe_sa ON ym.year = ppe_sa.year AND ym.month = ppe_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_safe) AS ppe_sc ON ym.year = ppe_sc.year AND 
                         ym.month = ppe_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_unsafe) AS ppe_ua ON ym.year = ppe_ua.year AND 
                         ym.month = ppe_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), ppe_unsafe) AS ppe_uc ON ym.year = ppe_uc.year AND ym.month = ppe_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_safe) AS hand_sa ON ym.year = hand_sa.year AND ym.month = hand_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_safe) AS hand_sc ON ym.year = hand_sc.year AND 
                         ym.month = hand_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_unsafe) AS hand_ua ON ym.year = hand_ua.year AND 
                         ym.month = hand_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), hand_unsafe) AS hand_uc ON ym.year = hand_uc.year AND ym.month = hand_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_safe) AS mechanical_sa ON ym.year = mechanical_sa.year AND ym.month = mechanical_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_safe) AS mechanical_sc ON ym.year = mechanical_sc.year AND 
                         ym.month = mechanical_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_unsafe) AS mechanical_ua ON ym.year = mechanical_ua.year AND 
                         ym.month = mechanical_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), mechanical_unsafe) AS mechanical_uc ON ym.year = mechanical_uc.year AND ym.month = mechanical_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_safe) AS electrical_sa ON ym.year = electrical_sa.year AND ym.month = electrical_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_safe) AS electrical_sc ON ym.year = electrical_sc.year AND 
                         ym.month = electrical_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_unsafe) AS electrical_ua ON ym.year = electrical_ua.year AND 
                         ym.month = electrical_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), electrical_unsafe) AS electrical_uc ON ym.year = electrical_uc.year AND ym.month = electrical_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_safe) AS vehicular_sa ON ym.year = vehicular_sa.year AND ym.month = vehicular_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_safe) AS vehicular_sc ON ym.year = vehicular_sc.year AND 
                         ym.month = vehicular_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_unsafe) AS vehicular_ua ON ym.year = vehicular_ua.year AND 
                         ym.month = vehicular_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), vehicular_unsafe) AS vehicular_uc ON ym.year = vehicular_uc.year AND ym.month = vehicular_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_safe) AS substandard_sa ON ym.year = substandard_sa.year AND ym.month = substandard_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_safe) AS substandard_sc ON ym.year = substandard_sc.year AND 
                         ym.month = substandard_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_unsafe) AS substandard_ua ON ym.year = substandard_ua.year AND 
                         ym.month = substandard_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), substandard_unsafe) AS substandard_uc ON ym.year = substandard_uc.year AND ym.month = substandard_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_safe) AS h2s_sa ON ym.year = h2s_sa.year AND ym.month = h2s_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_safe) AS h2s_sc ON ym.year = h2s_sc.year AND 
                         ym.month = h2s_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_unsafe) AS h2s_ua ON ym.year = h2s_ua.year AND 
                         ym.month = h2s_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), h2s_unsafe) AS h2s_uc ON ym.year = h2s_uc.year AND ym.month = h2s_uc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_safe) AS workplace_health_sa ON ym.year = workplace_health_sa.year AND ym.month = workplace_health_sa.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_safe) AS workplace_health_sc ON ym.year = workplace_health_sc.year AND 
                         ym.month = workplace_health_sc.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_unsafe) AS workplace_health_ua ON ym.year = workplace_health_ua.year AND 
                         ym.month = workplace_health_ua.month LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_unsafe) AS workplace_health_uc ON ym.year = workplace_health_uc.year AND ym.month = workplace_health_uc.month 
							   where ym.year=@year and ym.month=@month

GO
/****** Object:  UserDefinedFunction [dbo].[observationChart1]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[observationChart1] (
	@year varchar(4)
)
RETURNS TABLE
AS
RETURN 
(
    SELECT 'accident' as name, isnull(accident_ua.count,0) as ua, isnull(accident_uc.count,0) as uc, isnull(accident_sa.count,0) as sa, isnull(accident_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, accident_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (accident_safe = '10')
    GROUP BY YEAR(date_time), accident_safe) as accident_sa ON accident_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (accident_safe = '01')
GROUP BY YEAR(date_time), accident_safe) AS accident_sc ON accident_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '10')
GROUP BY YEAR(date_time), accident_unsafe) AS accident_ua ON accident_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(accident_unsafe = '01')
GROUP BY YEAR(date_time), accident_unsafe) AS accident_uc ON accident_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'fire' as name, isnull(fire_ua.count,0) as ua, isnull(fire_uc.count,0) as uc, isnull(fire_sa.count,0) as sa, isnull(fire_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, fire_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fire_safe = '10')
    GROUP BY YEAR(date_time), fire_safe) as fire_sa ON fire_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fire_safe = '01')
GROUP BY YEAR(date_time), fire_safe) AS fire_sc ON fire_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '10')
GROUP BY YEAR(date_time), fire_unsafe) AS fire_ua ON fire_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(fire_unsafe = '01')
GROUP BY YEAR(date_time), fire_unsafe) AS fire_uc ON fire_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'prevention' as name, isnull(prevention_ua.count,0) as ua, isnull(prevention_uc.count,0) as uc, isnull(prevention_sa.count,0) as sa, isnull(prevention_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, prevention_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (prevention_safe = '10')
    GROUP BY YEAR(date_time), prevention_safe) as prevention_sa ON prevention_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (prevention_safe = '01')
GROUP BY YEAR(date_time), prevention_safe) AS prevention_sc ON prevention_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '10')
GROUP BY YEAR(date_time), prevention_unsafe) AS prevention_ua ON prevention_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(prevention_unsafe = '01')
GROUP BY YEAR(date_time), prevention_unsafe) AS prevention_uc ON prevention_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'supervisor' as name, isnull(supervisor_ua.count,0) as ua, isnull(supervisor_uc.count,0) as uc, isnull(supervisor_sa.count,0) as sa, isnull(supervisor_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, supervisor_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (supervisor_safe = '10')
    GROUP BY YEAR(date_time), supervisor_safe) as supervisor_sa ON supervisor_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (supervisor_safe = '01')
GROUP BY YEAR(date_time), supervisor_safe) AS supervisor_sc ON supervisor_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '10')
GROUP BY YEAR(date_time), supervisor_unsafe) AS supervisor_ua ON supervisor_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(supervisor_unsafe = '01')
GROUP BY YEAR(date_time), supervisor_unsafe) AS supervisor_uc ON supervisor_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'fit_work' as name, isnull(fit_work_ua.count,0) as ua, isnull(fit_work_uc.count,0) as uc, isnull(fit_work_sa.count,0) as sa, isnull(fit_work_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, fit_work_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fit_work_safe = '10')
    GROUP BY YEAR(date_time), fit_work_safe) as fit_work_sa ON fit_work_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fit_work_safe = '01')
GROUP BY YEAR(date_time), fit_work_safe) AS fit_work_sc ON fit_work_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '10')
GROUP BY YEAR(date_time), fit_work_unsafe) AS fit_work_ua ON fit_work_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(fit_work_unsafe = '01')
GROUP BY YEAR(date_time), fit_work_unsafe) AS fit_work_uc ON fit_work_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'psychological' as name, isnull(psychological_ua.count,0) as ua, isnull(psychological_uc.count,0) as uc, isnull(psychological_sa.count,0) as sa, isnull(psychological_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, psychological_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (psychological_safe = '10')
    GROUP BY YEAR(date_time), psychological_safe) as psychological_sa ON psychological_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (psychological_safe = '01')
GROUP BY YEAR(date_time), psychological_safe) AS psychological_sc ON psychological_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '10')
GROUP BY YEAR(date_time), psychological_unsafe) AS psychological_ua ON psychological_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(psychological_unsafe = '01')
GROUP BY YEAR(date_time), psychological_unsafe) AS psychological_uc ON psychological_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'posture' as name, isnull(posture_ua.count,0) as ua, isnull(posture_uc.count,0) as uc, isnull(posture_sa.count,0) as sa, isnull(posture_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, posture_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (posture_safe = '10')
    GROUP BY YEAR(date_time), posture_safe) as posture_sa ON posture_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (posture_safe = '01')
GROUP BY YEAR(date_time), posture_safe) AS posture_sc ON posture_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '10')
GROUP BY YEAR(date_time), posture_unsafe) AS posture_ua ON posture_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(posture_unsafe = '01')
GROUP BY YEAR(date_time), posture_unsafe) AS posture_uc ON posture_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'substance' as name, isnull(substance_ua.count,0) as ua, isnull(substance_uc.count,0) as uc, isnull(substance_sa.count,0) as sa, isnull(substance_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, substance_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substance_safe = '10')
    GROUP BY YEAR(date_time), substance_safe) as substance_sa ON substance_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substance_safe = '01')
GROUP BY YEAR(date_time), substance_safe) AS substance_sc ON substance_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '10')
GROUP BY YEAR(date_time), substance_unsafe) AS substance_ua ON substance_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(substance_unsafe = '01')
GROUP BY YEAR(date_time), substance_unsafe) AS substance_uc ON substance_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'hygiene' as name, isnull(hygiene_ua.count,0) as ua, isnull(hygiene_uc.count,0) as uc, isnull(hygiene_sa.count,0) as sa, isnull(hygiene_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hygiene_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hygiene_safe = '10')
    GROUP BY YEAR(date_time), hygiene_safe) as hygiene_sa ON hygiene_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hygiene_safe = '01')
GROUP BY YEAR(date_time), hygiene_safe) AS hygiene_sc ON hygiene_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '10')
GROUP BY YEAR(date_time), hygiene_unsafe) AS hygiene_ua ON hygiene_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hygiene_unsafe = '01')
GROUP BY YEAR(date_time), hygiene_unsafe) AS hygiene_uc ON hygiene_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'house' as name, isnull(house_ua.count,0) as ua, isnull(house_uc.count,0) as uc, isnull(house_sa.count,0) as sa, isnull(house_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, house_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (house_safe = '10')
    GROUP BY YEAR(date_time), house_safe) as house_sa ON house_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (house_safe = '01')
GROUP BY YEAR(date_time), house_safe) AS house_sc ON house_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '10')
GROUP BY YEAR(date_time), house_unsafe) AS house_ua ON house_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(house_unsafe = '01')
GROUP BY YEAR(date_time), house_unsafe) AS house_uc ON house_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'standard' as name, isnull(standard_ua.count,0) as ua, isnull(standard_uc.count,0) as uc, isnull(standard_sa.count,0) as sa, isnull(standard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, standard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (standard_safe = '10')
    GROUP BY YEAR(date_time), standard_safe) as standard_sa ON standard_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (standard_safe = '01')
GROUP BY YEAR(date_time), standard_safe) AS standard_sc ON standard_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '10')
GROUP BY YEAR(date_time), standard_unsafe) AS standard_ua ON standard_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(standard_unsafe = '01')
GROUP BY YEAR(date_time), standard_unsafe) AS standard_uc ON standard_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'spill' as name, isnull(spill_ua.count,0) as ua, isnull(spill_uc.count,0) as uc, isnull(spill_sa.count,0) as sa, isnull(spill_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, spill_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (spill_safe = '10')
    GROUP BY YEAR(date_time), spill_safe) as spill_sa ON spill_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (spill_safe = '01')
GROUP BY YEAR(date_time), spill_safe) AS spill_sc ON spill_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '10')
GROUP BY YEAR(date_time), spill_unsafe) AS spill_ua ON spill_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(spill_unsafe = '01')
GROUP BY YEAR(date_time), spill_unsafe) AS spill_uc ON spill_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'waste_energy' as name, isnull(waste_energy_ua.count,0) as ua, isnull(waste_energy_uc.count,0) as uc, isnull(waste_energy_sa.count,0) as sa, isnull(waste_energy_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, waste_energy_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (waste_energy_safe = '10')
    GROUP BY YEAR(date_time), waste_energy_safe) as waste_energy_sa ON waste_energy_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (waste_energy_safe = '01')
GROUP BY YEAR(date_time), waste_energy_safe) AS waste_energy_sc ON waste_energy_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '10')
GROUP BY YEAR(date_time), waste_energy_unsafe) AS waste_energy_ua ON waste_energy_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(waste_energy_unsafe = '01')
GROUP BY YEAR(date_time), waste_energy_unsafe) AS waste_energy_uc ON waste_energy_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'containment' as name, isnull(containment_ua.count,0) as ua, isnull(containment_uc.count,0) as uc, isnull(containment_sa.count,0) as sa, isnull(containment_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, containment_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (containment_safe = '10')
    GROUP BY YEAR(date_time), containment_safe) as containment_sa ON containment_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (containment_safe = '01')
GROUP BY YEAR(date_time), containment_safe) AS containment_sc ON containment_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '10')
GROUP BY YEAR(date_time), containment_unsafe) AS containment_ua ON containment_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(containment_unsafe = '01')
GROUP BY YEAR(date_time), containment_unsafe) AS containment_uc ON containment_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'absorbent' as name, isnull(absorbent_ua.count,0) as ua, isnull(absorbent_uc.count,0) as uc, isnull(absorbent_sa.count,0) as sa, isnull(absorbent_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, absorbent_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (absorbent_safe = '10')
    GROUP BY YEAR(date_time), absorbent_safe) as absorbent_sa ON absorbent_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (absorbent_safe = '01')
GROUP BY YEAR(date_time), absorbent_safe) AS absorbent_sc ON absorbent_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '10')
GROUP BY YEAR(date_time), absorbent_unsafe) AS absorbent_ua ON absorbent_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(absorbent_unsafe = '01')
GROUP BY YEAR(date_time), absorbent_unsafe) AS absorbent_uc ON absorbent_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'hira' as name, isnull(hira_ua.count,0) as ua, isnull(hira_uc.count,0) as uc, isnull(hira_sa.count,0) as sa, isnull(hira_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hira_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hira_safe = '10')
    GROUP BY YEAR(date_time), hira_safe) as hira_sa ON hira_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hira_safe = '01')
GROUP BY YEAR(date_time), hira_safe) AS hira_sc ON hira_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '10')
GROUP BY YEAR(date_time), hira_unsafe) AS hira_ua ON hira_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hira_unsafe = '01')
GROUP BY YEAR(date_time), hira_unsafe) AS hira_uc ON hira_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'ptw' as name, isnull(ptw_ua.count,0) as ua, isnull(ptw_uc.count,0) as uc, isnull(ptw_sa.count,0) as sa, isnull(ptw_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, ptw_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ptw_safe = '10')
    GROUP BY YEAR(date_time), ptw_safe) as ptw_sa ON ptw_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ptw_safe = '01')
GROUP BY YEAR(date_time), ptw_safe) AS ptw_sc ON ptw_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '10')
GROUP BY YEAR(date_time), ptw_unsafe) AS ptw_ua ON ptw_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(ptw_unsafe = '01')
GROUP BY YEAR(date_time), ptw_unsafe) AS ptw_uc ON ptw_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'sop' as name, isnull(sop_ua.count,0) as ua, isnull(sop_uc.count,0) as uc, isnull(sop_sa.count,0) as sa, isnull(sop_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, sop_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (sop_safe = '10')
    GROUP BY YEAR(date_time), sop_safe) as sop_sa ON sop_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (sop_safe = '01')
GROUP BY YEAR(date_time), sop_safe) AS sop_sc ON sop_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '10')
GROUP BY YEAR(date_time), sop_unsafe) AS sop_ua ON sop_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(sop_unsafe = '01')
GROUP BY YEAR(date_time), sop_unsafe) AS sop_uc ON sop_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'msds' as name, isnull(msds_ua.count,0) as ua, isnull(msds_uc.count,0) as uc, isnull(msds_sa.count,0) as sa, isnull(msds_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, msds_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (msds_safe = '10')
    GROUP BY YEAR(date_time), msds_safe) as msds_sa ON msds_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (msds_safe = '01')
GROUP BY YEAR(date_time), msds_safe) AS msds_sc ON msds_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '10')
GROUP BY YEAR(date_time), msds_unsafe) AS msds_ua ON msds_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(msds_unsafe = '01')
GROUP BY YEAR(date_time), msds_unsafe) AS msds_uc ON msds_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'emergency' as name, isnull(emergency_ua.count,0) as ua, isnull(emergency_uc.count,0) as uc, isnull(emergency_sa.count,0) as sa, isnull(emergency_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, emergency_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (emergency_safe = '10')
    GROUP BY YEAR(date_time), emergency_safe) as emergency_sa ON emergency_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (emergency_safe = '01')
GROUP BY YEAR(date_time), emergency_safe) AS emergency_sc ON emergency_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '10')
GROUP BY YEAR(date_time), emergency_unsafe) AS emergency_ua ON emergency_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(emergency_unsafe = '01')
GROUP BY YEAR(date_time), emergency_unsafe) AS emergency_uc ON emergency_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'certificates' as name, isnull(certificates_ua.count,0) as ua, isnull(certificates_uc.count,0) as uc, isnull(certificates_sa.count,0) as sa, isnull(certificates_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, certificates_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (certificates_safe = '10')
    GROUP BY YEAR(date_time), certificates_safe) as certificates_sa ON certificates_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (certificates_safe = '01')
GROUP BY YEAR(date_time), certificates_safe) AS certificates_sc ON certificates_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '10')
GROUP BY YEAR(date_time), certificates_unsafe) AS certificates_ua ON certificates_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(certificates_unsafe = '01')
GROUP BY YEAR(date_time), certificates_unsafe) AS certificates_uc ON certificates_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'ppe' as name, isnull(ppe_ua.count,0) as ua, isnull(ppe_uc.count,0) as uc, isnull(ppe_sa.count,0) as sa, isnull(ppe_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, ppe_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ppe_safe = '10')
    GROUP BY YEAR(date_time), ppe_safe) as ppe_sa ON ppe_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ppe_safe = '01')
GROUP BY YEAR(date_time), ppe_safe) AS ppe_sc ON ppe_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '10')
GROUP BY YEAR(date_time), ppe_unsafe) AS ppe_ua ON ppe_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(ppe_unsafe = '01')
GROUP BY YEAR(date_time), ppe_unsafe) AS ppe_uc ON ppe_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'hand' as name, isnull(hand_ua.count,0) as ua, isnull(hand_uc.count,0) as uc, isnull(hand_sa.count,0) as sa, isnull(hand_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hand_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hand_safe = '10')
    GROUP BY YEAR(date_time), hand_safe) as hand_sa ON hand_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hand_safe = '01')
GROUP BY YEAR(date_time), hand_safe) AS hand_sc ON hand_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '10')
GROUP BY YEAR(date_time), hand_unsafe) AS hand_ua ON hand_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hand_unsafe = '01')
GROUP BY YEAR(date_time), hand_unsafe) AS hand_uc ON hand_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'mechanical' as name, isnull(mechanical_ua.count,0) as ua, isnull(mechanical_uc.count,0) as uc, isnull(mechanical_sa.count,0) as sa, isnull(mechanical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, mechanical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (mechanical_safe = '10')
    GROUP BY YEAR(date_time), mechanical_safe) as mechanical_sa ON mechanical_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (mechanical_safe = '01')
GROUP BY YEAR(date_time), mechanical_safe) AS mechanical_sc ON mechanical_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '10')
GROUP BY YEAR(date_time), mechanical_unsafe) AS mechanical_ua ON mechanical_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(mechanical_unsafe = '01')
GROUP BY YEAR(date_time), mechanical_unsafe) AS mechanical_uc ON mechanical_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'electrical' as name, isnull(electrical_ua.count,0) as ua, isnull(electrical_uc.count,0) as uc, isnull(electrical_sa.count,0) as sa, isnull(electrical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, electrical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (electrical_safe = '10')
    GROUP BY YEAR(date_time), electrical_safe) as electrical_sa ON electrical_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (electrical_safe = '01')
GROUP BY YEAR(date_time), electrical_safe) AS electrical_sc ON electrical_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '10')
GROUP BY YEAR(date_time), electrical_unsafe) AS electrical_ua ON electrical_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(electrical_unsafe = '01')
GROUP BY YEAR(date_time), electrical_unsafe) AS electrical_uc ON electrical_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'vehicular' as name, isnull(vehicular_ua.count,0) as ua, isnull(vehicular_uc.count,0) as uc, isnull(vehicular_sa.count,0) as sa, isnull(vehicular_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, vehicular_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (vehicular_safe = '10')
    GROUP BY YEAR(date_time), vehicular_safe) as vehicular_sa ON vehicular_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (vehicular_safe = '01')
GROUP BY YEAR(date_time), vehicular_safe) AS vehicular_sc ON vehicular_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '10')
GROUP BY YEAR(date_time), vehicular_unsafe) AS vehicular_ua ON vehicular_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(vehicular_unsafe = '01')
GROUP BY YEAR(date_time), vehicular_unsafe) AS vehicular_uc ON vehicular_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'substandard' as name, isnull(substandard_ua.count,0) as ua, isnull(substandard_uc.count,0) as uc, isnull(substandard_sa.count,0) as sa, isnull(substandard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, substandard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substandard_safe = '10')
    GROUP BY YEAR(date_time), substandard_safe) as substandard_sa ON substandard_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substandard_safe = '01')
GROUP BY YEAR(date_time), substandard_safe) AS substandard_sc ON substandard_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '10')
GROUP BY YEAR(date_time), substandard_unsafe) AS substandard_ua ON substandard_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(substandard_unsafe = '01')
GROUP BY YEAR(date_time), substandard_unsafe) AS substandard_uc ON substandard_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'h2s' as name, isnull(h2s_ua.count,0) as ua, isnull(h2s_uc.count,0) as uc, isnull(h2s_sa.count,0) as sa, isnull(h2s_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, h2s_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (h2s_safe = '10')
    GROUP BY YEAR(date_time), h2s_safe) as h2s_sa ON h2s_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (h2s_safe = '01')
GROUP BY YEAR(date_time), h2s_safe) AS h2s_sc ON h2s_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '10')
GROUP BY YEAR(date_time), h2s_unsafe) AS h2s_ua ON h2s_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(h2s_unsafe = '01')
GROUP BY YEAR(date_time), h2s_unsafe) AS h2s_uc ON h2s_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 'workplace_health' as name, isnull(workplace_health_ua.count,0) as ua, isnull(workplace_health_uc.count,0) as uc, isnull(workplace_health_sa.count,0) as sa, isnull(workplace_health_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, workplace_health_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (workplace_health_safe = '10')
    GROUP BY YEAR(date_time), workplace_health_safe) as workplace_health_sa ON workplace_health_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (workplace_health_safe = '01')
GROUP BY YEAR(date_time), workplace_health_safe) AS workplace_health_sc ON workplace_health_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '10')
GROUP BY YEAR(date_time), workplace_health_unsafe) AS workplace_health_ua ON workplace_health_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(workplace_health_unsafe = '01')
GROUP BY YEAR(date_time), workplace_health_unsafe) AS workplace_health_uc ON workplace_health_uc.year = ym.year
WHERE ym.year=@year
);
GO
/****** Object:  UserDefinedFunction [dbo].[observationChart12]    Script Date: 4/22/2013 3:23:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[observationChart12] (
	@year varchar(4)
)
RETURNS TABLE
AS
RETURN 
(
    SELECT 1 as num, 'accident' as name, isnull(accident_ua.count,0) as ua, isnull(accident_uc.count,0) as uc, isnull(accident_sa.count,0) as sa, isnull(accident_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, accident_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (accident_safe = '10')
    GROUP BY YEAR(date_time), accident_safe) as accident_sa ON accident_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (accident_safe = '01')
GROUP BY YEAR(date_time), accident_safe) AS accident_sc ON accident_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '10')
GROUP BY YEAR(date_time), accident_unsafe) AS accident_ua ON accident_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, accident_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(accident_unsafe = '01')
GROUP BY YEAR(date_time), accident_unsafe) AS accident_uc ON accident_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 2 as num, 'fire' as name, isnull(fire_ua.count,0) as ua, isnull(fire_uc.count,0) as uc, isnull(fire_sa.count,0) as sa, isnull(fire_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, fire_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fire_safe = '10')
    GROUP BY YEAR(date_time), fire_safe) as fire_sa ON fire_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fire_safe = '01')
GROUP BY YEAR(date_time), fire_safe) AS fire_sc ON fire_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '10')
GROUP BY YEAR(date_time), fire_unsafe) AS fire_ua ON fire_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fire_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(fire_unsafe = '01')
GROUP BY YEAR(date_time), fire_unsafe) AS fire_uc ON fire_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 3 as num, 'prevention' as name, isnull(prevention_ua.count,0) as ua, isnull(prevention_uc.count,0) as uc, isnull(prevention_sa.count,0) as sa, isnull(prevention_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, prevention_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (prevention_safe = '10')
    GROUP BY YEAR(date_time), prevention_safe) as prevention_sa ON prevention_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (prevention_safe = '01')
GROUP BY YEAR(date_time), prevention_safe) AS prevention_sc ON prevention_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '10')
GROUP BY YEAR(date_time), prevention_unsafe) AS prevention_ua ON prevention_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, prevention_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(prevention_unsafe = '01')
GROUP BY YEAR(date_time), prevention_unsafe) AS prevention_uc ON prevention_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 4 as num, 'supervisor' as name, isnull(supervisor_ua.count,0) as ua, isnull(supervisor_uc.count,0) as uc, isnull(supervisor_sa.count,0) as sa, isnull(supervisor_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, supervisor_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (supervisor_safe = '10')
    GROUP BY YEAR(date_time), supervisor_safe) as supervisor_sa ON supervisor_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (supervisor_safe = '01')
GROUP BY YEAR(date_time), supervisor_safe) AS supervisor_sc ON supervisor_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '10')
GROUP BY YEAR(date_time), supervisor_unsafe) AS supervisor_ua ON supervisor_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, supervisor_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(supervisor_unsafe = '01')
GROUP BY YEAR(date_time), supervisor_unsafe) AS supervisor_uc ON supervisor_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 5 as num, 'fit_work' as name, isnull(fit_work_ua.count,0) as ua, isnull(fit_work_uc.count,0) as uc, isnull(fit_work_sa.count,0) as sa, isnull(fit_work_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, fit_work_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fit_work_safe = '10')
    GROUP BY YEAR(date_time), fit_work_safe) as fit_work_sa ON fit_work_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fit_work_safe = '01')
GROUP BY YEAR(date_time), fit_work_safe) AS fit_work_sc ON fit_work_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '10')
GROUP BY YEAR(date_time), fit_work_unsafe) AS fit_work_ua ON fit_work_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, fit_work_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(fit_work_unsafe = '01')
GROUP BY YEAR(date_time), fit_work_unsafe) AS fit_work_uc ON fit_work_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 6 as num, 'psychological' as name, isnull(psychological_ua.count,0) as ua, isnull(psychological_uc.count,0) as uc, isnull(psychological_sa.count,0) as sa, isnull(psychological_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, psychological_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (psychological_safe = '10')
    GROUP BY YEAR(date_time), psychological_safe) as psychological_sa ON psychological_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (psychological_safe = '01')
GROUP BY YEAR(date_time), psychological_safe) AS psychological_sc ON psychological_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '10')
GROUP BY YEAR(date_time), psychological_unsafe) AS psychological_ua ON psychological_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, psychological_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(psychological_unsafe = '01')
GROUP BY YEAR(date_time), psychological_unsafe) AS psychological_uc ON psychological_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 7 as num, 'posture' as name, isnull(posture_ua.count,0) as ua, isnull(posture_uc.count,0) as uc, isnull(posture_sa.count,0) as sa, isnull(posture_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, posture_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (posture_safe = '10')
    GROUP BY YEAR(date_time), posture_safe) as posture_sa ON posture_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (posture_safe = '01')
GROUP BY YEAR(date_time), posture_safe) AS posture_sc ON posture_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '10')
GROUP BY YEAR(date_time), posture_unsafe) AS posture_ua ON posture_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, posture_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(posture_unsafe = '01')
GROUP BY YEAR(date_time), posture_unsafe) AS posture_uc ON posture_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 8 as num, 'substance' as name, isnull(substance_ua.count,0) as ua, isnull(substance_uc.count,0) as uc, isnull(substance_sa.count,0) as sa, isnull(substance_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, substance_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substance_safe = '10')
    GROUP BY YEAR(date_time), substance_safe) as substance_sa ON substance_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substance_safe = '01')
GROUP BY YEAR(date_time), substance_safe) AS substance_sc ON substance_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '10')
GROUP BY YEAR(date_time), substance_unsafe) AS substance_ua ON substance_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substance_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(substance_unsafe = '01')
GROUP BY YEAR(date_time), substance_unsafe) AS substance_uc ON substance_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 9 as num, 'hygiene' as name, isnull(hygiene_ua.count,0) as ua, isnull(hygiene_uc.count,0) as uc, isnull(hygiene_sa.count,0) as sa, isnull(hygiene_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hygiene_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hygiene_safe = '10')
    GROUP BY YEAR(date_time), hygiene_safe) as hygiene_sa ON hygiene_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hygiene_safe = '01')
GROUP BY YEAR(date_time), hygiene_safe) AS hygiene_sc ON hygiene_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '10')
GROUP BY YEAR(date_time), hygiene_unsafe) AS hygiene_ua ON hygiene_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hygiene_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hygiene_unsafe = '01')
GROUP BY YEAR(date_time), hygiene_unsafe) AS hygiene_uc ON hygiene_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 10 as num, 'house' as name, isnull(house_ua.count,0) as ua, isnull(house_uc.count,0) as uc, isnull(house_sa.count,0) as sa, isnull(house_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, house_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (house_safe = '10')
    GROUP BY YEAR(date_time), house_safe) as house_sa ON house_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (house_safe = '01')
GROUP BY YEAR(date_time), house_safe) AS house_sc ON house_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '10')
GROUP BY YEAR(date_time), house_unsafe) AS house_ua ON house_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, house_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(house_unsafe = '01')
GROUP BY YEAR(date_time), house_unsafe) AS house_uc ON house_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 11 as num, 'standard' as name, isnull(standard_ua.count,0) as ua, isnull(standard_uc.count,0) as uc, isnull(standard_sa.count,0) as sa, isnull(standard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, standard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (standard_safe = '10')
    GROUP BY YEAR(date_time), standard_safe) as standard_sa ON standard_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (standard_safe = '01')
GROUP BY YEAR(date_time), standard_safe) AS standard_sc ON standard_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '10')
GROUP BY YEAR(date_time), standard_unsafe) AS standard_ua ON standard_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, standard_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(standard_unsafe = '01')
GROUP BY YEAR(date_time), standard_unsafe) AS standard_uc ON standard_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 12 as num, 'spill' as name, isnull(spill_ua.count,0) as ua, isnull(spill_uc.count,0) as uc, isnull(spill_sa.count,0) as sa, isnull(spill_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, spill_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (spill_safe = '10')
    GROUP BY YEAR(date_time), spill_safe) as spill_sa ON spill_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (spill_safe = '01')
GROUP BY YEAR(date_time), spill_safe) AS spill_sc ON spill_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '10')
GROUP BY YEAR(date_time), spill_unsafe) AS spill_ua ON spill_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, spill_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(spill_unsafe = '01')
GROUP BY YEAR(date_time), spill_unsafe) AS spill_uc ON spill_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 13 as num, 'waste_energy' as name, isnull(waste_energy_ua.count,0) as ua, isnull(waste_energy_uc.count,0) as uc, isnull(waste_energy_sa.count,0) as sa, isnull(waste_energy_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, waste_energy_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (waste_energy_safe = '10')
    GROUP BY YEAR(date_time), waste_energy_safe) as waste_energy_sa ON waste_energy_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (waste_energy_safe = '01')
GROUP BY YEAR(date_time), waste_energy_safe) AS waste_energy_sc ON waste_energy_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '10')
GROUP BY YEAR(date_time), waste_energy_unsafe) AS waste_energy_ua ON waste_energy_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, waste_energy_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(waste_energy_unsafe = '01')
GROUP BY YEAR(date_time), waste_energy_unsafe) AS waste_energy_uc ON waste_energy_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 14 as num, 'containment' as name, isnull(containment_ua.count,0) as ua, isnull(containment_uc.count,0) as uc, isnull(containment_sa.count,0) as sa, isnull(containment_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, containment_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (containment_safe = '10')
    GROUP BY YEAR(date_time), containment_safe) as containment_sa ON containment_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (containment_safe = '01')
GROUP BY YEAR(date_time), containment_safe) AS containment_sc ON containment_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '10')
GROUP BY YEAR(date_time), containment_unsafe) AS containment_ua ON containment_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, containment_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(containment_unsafe = '01')
GROUP BY YEAR(date_time), containment_unsafe) AS containment_uc ON containment_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 15 as num, 'absorbent' as name, isnull(absorbent_ua.count,0) as ua, isnull(absorbent_uc.count,0) as uc, isnull(absorbent_sa.count,0) as sa, isnull(absorbent_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, absorbent_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (absorbent_safe = '10')
    GROUP BY YEAR(date_time), absorbent_safe) as absorbent_sa ON absorbent_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (absorbent_safe = '01')
GROUP BY YEAR(date_time), absorbent_safe) AS absorbent_sc ON absorbent_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '10')
GROUP BY YEAR(date_time), absorbent_unsafe) AS absorbent_ua ON absorbent_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, absorbent_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(absorbent_unsafe = '01')
GROUP BY YEAR(date_time), absorbent_unsafe) AS absorbent_uc ON absorbent_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 16 as num, 'hira' as name, isnull(hira_ua.count,0) as ua, isnull(hira_uc.count,0) as uc, isnull(hira_sa.count,0) as sa, isnull(hira_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hira_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hira_safe = '10')
    GROUP BY YEAR(date_time), hira_safe) as hira_sa ON hira_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hira_safe = '01')
GROUP BY YEAR(date_time), hira_safe) AS hira_sc ON hira_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '10')
GROUP BY YEAR(date_time), hira_unsafe) AS hira_ua ON hira_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hira_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hira_unsafe = '01')
GROUP BY YEAR(date_time), hira_unsafe) AS hira_uc ON hira_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 17 as num, 'ptw' as name, isnull(ptw_ua.count,0) as ua, isnull(ptw_uc.count,0) as uc, isnull(ptw_sa.count,0) as sa, isnull(ptw_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, ptw_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ptw_safe = '10')
    GROUP BY YEAR(date_time), ptw_safe) as ptw_sa ON ptw_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ptw_safe = '01')
GROUP BY YEAR(date_time), ptw_safe) AS ptw_sc ON ptw_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '10')
GROUP BY YEAR(date_time), ptw_unsafe) AS ptw_ua ON ptw_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ptw_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(ptw_unsafe = '01')
GROUP BY YEAR(date_time), ptw_unsafe) AS ptw_uc ON ptw_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 18 as num, 'sop' as name, isnull(sop_ua.count,0) as ua, isnull(sop_uc.count,0) as uc, isnull(sop_sa.count,0) as sa, isnull(sop_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, sop_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (sop_safe = '10')
    GROUP BY YEAR(date_time), sop_safe) as sop_sa ON sop_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (sop_safe = '01')
GROUP BY YEAR(date_time), sop_safe) AS sop_sc ON sop_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '10')
GROUP BY YEAR(date_time), sop_unsafe) AS sop_ua ON sop_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, sop_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(sop_unsafe = '01')
GROUP BY YEAR(date_time), sop_unsafe) AS sop_uc ON sop_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 19 as num, 'msds' as name, isnull(msds_ua.count,0) as ua, isnull(msds_uc.count,0) as uc, isnull(msds_sa.count,0) as sa, isnull(msds_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, msds_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (msds_safe = '10')
    GROUP BY YEAR(date_time), msds_safe) as msds_sa ON msds_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (msds_safe = '01')
GROUP BY YEAR(date_time), msds_safe) AS msds_sc ON msds_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '10')
GROUP BY YEAR(date_time), msds_unsafe) AS msds_ua ON msds_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, msds_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(msds_unsafe = '01')
GROUP BY YEAR(date_time), msds_unsafe) AS msds_uc ON msds_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 20 as num, 'emergency' as name, isnull(emergency_ua.count,0) as ua, isnull(emergency_uc.count,0) as uc, isnull(emergency_sa.count,0) as sa, isnull(emergency_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, emergency_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (emergency_safe = '10')
    GROUP BY YEAR(date_time), emergency_safe) as emergency_sa ON emergency_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (emergency_safe = '01')
GROUP BY YEAR(date_time), emergency_safe) AS emergency_sc ON emergency_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '10')
GROUP BY YEAR(date_time), emergency_unsafe) AS emergency_ua ON emergency_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, emergency_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(emergency_unsafe = '01')
GROUP BY YEAR(date_time), emergency_unsafe) AS emergency_uc ON emergency_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 21 as num, 'certificates' as name, isnull(certificates_ua.count,0) as ua, isnull(certificates_uc.count,0) as uc, isnull(certificates_sa.count,0) as sa, isnull(certificates_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, certificates_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (certificates_safe = '10')
    GROUP BY YEAR(date_time), certificates_safe) as certificates_sa ON certificates_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (certificates_safe = '01')
GROUP BY YEAR(date_time), certificates_safe) AS certificates_sc ON certificates_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '10')
GROUP BY YEAR(date_time), certificates_unsafe) AS certificates_ua ON certificates_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, certificates_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(certificates_unsafe = '01')
GROUP BY YEAR(date_time), certificates_unsafe) AS certificates_uc ON certificates_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 22 as num, 'ppe' as name, isnull(ppe_ua.count,0) as ua, isnull(ppe_uc.count,0) as uc, isnull(ppe_sa.count,0) as sa, isnull(ppe_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, ppe_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ppe_safe = '10')
    GROUP BY YEAR(date_time), ppe_safe) as ppe_sa ON ppe_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ppe_safe = '01')
GROUP BY YEAR(date_time), ppe_safe) AS ppe_sc ON ppe_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '10')
GROUP BY YEAR(date_time), ppe_unsafe) AS ppe_ua ON ppe_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, ppe_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(ppe_unsafe = '01')
GROUP BY YEAR(date_time), ppe_unsafe) AS ppe_uc ON ppe_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 23 as num, 'hand' as name, isnull(hand_ua.count,0) as ua, isnull(hand_uc.count,0) as uc, isnull(hand_sa.count,0) as sa, isnull(hand_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, hand_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hand_safe = '10')
    GROUP BY YEAR(date_time), hand_safe) as hand_sa ON hand_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hand_safe = '01')
GROUP BY YEAR(date_time), hand_safe) AS hand_sc ON hand_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '10')
GROUP BY YEAR(date_time), hand_unsafe) AS hand_ua ON hand_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, hand_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hand_unsafe = '01')
GROUP BY YEAR(date_time), hand_unsafe) AS hand_uc ON hand_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 24 as num, 'mechanical' as name, isnull(mechanical_ua.count,0) as ua, isnull(mechanical_uc.count,0) as uc, isnull(mechanical_sa.count,0) as sa, isnull(mechanical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, mechanical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (mechanical_safe = '10')
    GROUP BY YEAR(date_time), mechanical_safe) as mechanical_sa ON mechanical_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (mechanical_safe = '01')
GROUP BY YEAR(date_time), mechanical_safe) AS mechanical_sc ON mechanical_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '10')
GROUP BY YEAR(date_time), mechanical_unsafe) AS mechanical_ua ON mechanical_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, mechanical_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(mechanical_unsafe = '01')
GROUP BY YEAR(date_time), mechanical_unsafe) AS mechanical_uc ON mechanical_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 25 as num, 'electrical' as name, isnull(electrical_ua.count,0) as ua, isnull(electrical_uc.count,0) as uc, isnull(electrical_sa.count,0) as sa, isnull(electrical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, electrical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (electrical_safe = '10')
    GROUP BY YEAR(date_time), electrical_safe) as electrical_sa ON electrical_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (electrical_safe = '01')
GROUP BY YEAR(date_time), electrical_safe) AS electrical_sc ON electrical_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '10')
GROUP BY YEAR(date_time), electrical_unsafe) AS electrical_ua ON electrical_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, electrical_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(electrical_unsafe = '01')
GROUP BY YEAR(date_time), electrical_unsafe) AS electrical_uc ON electrical_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 26 as num, 'vehicular' as name, isnull(vehicular_ua.count,0) as ua, isnull(vehicular_uc.count,0) as uc, isnull(vehicular_sa.count,0) as sa, isnull(vehicular_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, vehicular_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (vehicular_safe = '10')
    GROUP BY YEAR(date_time), vehicular_safe) as vehicular_sa ON vehicular_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (vehicular_safe = '01')
GROUP BY YEAR(date_time), vehicular_safe) AS vehicular_sc ON vehicular_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '10')
GROUP BY YEAR(date_time), vehicular_unsafe) AS vehicular_ua ON vehicular_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, vehicular_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(vehicular_unsafe = '01')
GROUP BY YEAR(date_time), vehicular_unsafe) AS vehicular_uc ON vehicular_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 27 as num, 'substandard' as name, isnull(substandard_ua.count,0) as ua, isnull(substandard_uc.count,0) as uc, isnull(substandard_sa.count,0) as sa, isnull(substandard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, substandard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substandard_safe = '10')
    GROUP BY YEAR(date_time), substandard_safe) as substandard_sa ON substandard_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substandard_safe = '01')
GROUP BY YEAR(date_time), substandard_safe) AS substandard_sc ON substandard_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '10')
GROUP BY YEAR(date_time), substandard_unsafe) AS substandard_ua ON substandard_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, substandard_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(substandard_unsafe = '01')
GROUP BY YEAR(date_time), substandard_unsafe) AS substandard_uc ON substandard_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 28 as num, 'h2s' as name, isnull(h2s_ua.count,0) as ua, isnull(h2s_uc.count,0) as uc, isnull(h2s_sa.count,0) as sa, isnull(h2s_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, h2s_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (h2s_safe = '10')
    GROUP BY YEAR(date_time), h2s_safe) as h2s_sa ON h2s_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (h2s_safe = '01')
GROUP BY YEAR(date_time), h2s_safe) AS h2s_sc ON h2s_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '10')
GROUP BY YEAR(date_time), h2s_unsafe) AS h2s_ua ON h2s_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, h2s_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(h2s_unsafe = '01')
GROUP BY YEAR(date_time), h2s_unsafe) AS h2s_uc ON h2s_uc.year = ym.year
WHERE ym.year=@year
UNION
SELECT 29 as num, 'workplace_health' as name, isnull(workplace_health_ua.count,0) as ua, isnull(workplace_health_uc.count,0) as uc, isnull(workplace_health_sa.count,0) as sa, isnull(workplace_health_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) as year, workplace_health_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (workplace_health_safe = '10')
    GROUP BY YEAR(date_time), workplace_health_safe) as workplace_health_sa ON workplace_health_sa.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (workplace_health_safe = '01')
GROUP BY YEAR(date_time), workplace_health_safe) AS workplace_health_sc ON workplace_health_sc.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '10')
GROUP BY YEAR(date_time), workplace_health_unsafe) AS workplace_health_ua ON workplace_health_ua.year = ym.year FULL JOIN
(SELECT YEAR(date_time) as year, workplace_health_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(workplace_health_unsafe = '01')
GROUP BY YEAR(date_time), workplace_health_unsafe) AS workplace_health_uc ON workplace_health_uc.year = ym.year
WHERE ym.year=@year
);
GO
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
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_employee] FOREIGN KEY([employee_boss])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_employee]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_employee_dept] FOREIGN KEY([employee_dept])
REFERENCES [dbo].[employee_dept] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_employee_dept]
GO
ALTER TABLE [dbo].[employee_dept]  WITH CHECK ADD  CONSTRAINT [FK_employee_dept_plants] FOREIGN KEY([plant_id])
REFERENCES [dbo].[plants] ([id])
GO
ALTER TABLE [dbo].[employee_dept] CHECK CONSTRAINT [FK_employee_dept_plants]
GO
ALTER TABLE [dbo].[equipment_daily_report_table]  WITH CHECK ADD  CONSTRAINT [FK_equipment_daily_report_table_equipment_daily_report] FOREIGN KEY([id_equipment_daily_report])
REFERENCES [dbo].[equipment_daily_report] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_daily_report_table] CHECK CONSTRAINT [FK_equipment_daily_report_table_equipment_daily_report]
GO
ALTER TABLE [dbo].[equipment_daily_report_table]  WITH CHECK ADD  CONSTRAINT [FK_equipment_daily_report_table_equipments] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[equipments] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[equipment_daily_report_table] CHECK CONSTRAINT [FK_equipment_daily_report_table_equipments]
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
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_employee]
GO
USE [master]
GO
ALTER DATABASE [star_energi_geo] SET  READ_WRITE 
GO
