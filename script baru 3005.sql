USE [star_energi_geo]
GO
/****** Object:  StoredProcedure [dbo].[observationByDate]    Script Date: 5/30/2013 9:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[observationByDate]
    @year varchar(4), 
    @month varchar(2),
	@day varchar(2)
AS 
	SELECT        ym.year, ym.month,ym.day, { fn IFNULL(accident_sa.count_accident_sa, 0) } AS count_accident_sa, { fn IFNULL(accident_sc.count_accident_sc, 0) } AS count_accident_sc, 
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
FROM            (SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) AS month ,DAY(date_time) as day
                          FROM            she_observation) AS ym LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day,  accident_safe AS asa, COUNT(id) AS count_accident_sa
                               FROM            she_observation AS she_observation_2
                               WHERE        (accident_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), accident_safe) AS accident_sa ON ym.year = accident_sa.year AND ym.month = accident_sa.month AND ym.day = accident_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, accident_safe AS asa, COUNT(id) AS count_accident_sc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), accident_safe) AS accident_sc ON ym.year = accident_sc.year AND ym.month = accident_sc.month AND ym.day = accident_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, accident_unsafe AS aua, COUNT(id) AS count_accident_ua
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), accident_unsafe) AS accident_ua ON ym.year = accident_ua.year AND ym.month = accident_ua.month AND ym.day = accident_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, accident_unsafe AS auc, COUNT(id) AS count_accident_uc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), accident_unsafe) AS accident_uc ON ym.year = accident_uc.year AND ym.month = accident_uc.month AND ym.day = accident_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fire_safe) AS fire_sa ON ym.year = fire_sa.year AND ym.month = fire_sa.month AND ym.day = fire_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fire_safe) AS fire_sc ON ym.year = fire_sc.year AND ym.month = fire_sc.month AND ym.day = fire_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fire_unsafe) AS fire_ua ON ym.year = fire_ua.year AND ym.month = fire_ua.month AND ym.day = fire_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fire_unsafe) AS fire_uc ON ym.year = fire_uc.year AND ym.month = fire_uc.month AND ym.day = fire_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), prevention_safe) AS prevention_sa ON ym.year = prevention_sa.year AND ym.month = prevention_sa.month AND ym.day = prevention_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), prevention_safe) AS prevention_sc ON ym.year = prevention_sc.year AND ym.month = prevention_sc.month AND ym.day = prevention_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), prevention_unsafe) AS prevention_ua ON ym.year = prevention_ua.year AND ym.month = prevention_ua.month AND ym.day = prevention_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), prevention_unsafe) AS prevention_uc ON ym.year = prevention_uc.year AND ym.month = prevention_uc.month AND ym.day = prevention_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), supervisor_safe) AS supervisor_sa ON ym.year = supervisor_sa.year AND ym.month = supervisor_sa.month AND ym.day = supervisor_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), supervisor_safe) AS supervisor_sc ON ym.year = supervisor_sc.year AND ym.month = supervisor_sc.month AND ym.day = supervisor_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), supervisor_unsafe) AS supervisor_ua ON ym.year = supervisor_ua.year AND ym.month = supervisor_ua.month AND ym.day = supervisor_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), supervisor_unsafe) AS supervisor_uc ON ym.year = supervisor_uc.year AND ym.month = supervisor_uc.month AND ym.day = supervisor_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fit_work_safe) AS fit_work_sa ON ym.year = fit_work_sa.year AND ym.month = fit_work_sa.month AND ym.day = fit_work_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fit_work_safe) AS fit_work_sc ON ym.year = fit_work_sc.year AND ym.month = fit_work_sc.month AND ym.day = fit_work_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fit_work_unsafe) AS fit_work_ua ON ym.year = fit_work_ua.year AND ym.month = fit_work_ua.month AND ym.day = fit_work_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fit_work_unsafe) AS fit_work_uc ON ym.year = fit_work_uc.year AND ym.month = fit_work_uc.month AND ym.day = fit_work_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), psychological_safe) AS psychological_sa ON ym.year = psychological_sa.year AND ym.month = psychological_sa.month AND ym.day = psychological_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), psychological_safe) AS psychological_sc ON ym.year = psychological_sc.year AND ym.month = psychological_sc.month AND ym.day = psychological_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), psychological_unsafe) AS psychological_ua ON ym.year = psychological_ua.year AND ym.month = psychological_ua.month AND ym.day = psychological_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), psychological_unsafe) AS psychological_uc ON ym.year = psychological_uc.year AND ym.month = psychological_uc.month AND ym.day = psychological_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), posture_safe) AS posture_sa ON ym.year = posture_sa.year AND ym.month = posture_sa.month AND ym.day = posture_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), posture_safe) AS posture_sc ON ym.year = posture_sc.year AND ym.month = posture_sc.month AND ym.day = posture_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), posture_unsafe) AS posture_ua ON ym.year = posture_ua.year AND ym.month = posture_ua.month AND ym.day = posture_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), posture_unsafe) AS posture_uc ON ym.year = posture_uc.year AND ym.month = posture_uc.month AND ym.day = posture_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substance_safe) AS substance_sa ON ym.year = substance_sa.year AND ym.month = substance_sa.month AND ym.day = substance_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substance_safe) AS substance_sc ON ym.year = substance_sc.year AND ym.month = substance_sc.month AND ym.day = substance_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substance_unsafe) AS substance_ua ON ym.year = substance_ua.year AND ym.month = substance_ua.month AND ym.day = substance_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substance_unsafe) AS substance_uc ON ym.year = substance_uc.year AND ym.month = substance_uc.month AND ym.day = substance_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hygiene_safe) AS hygiene_sa ON ym.year = hygiene_sa.year AND ym.month = hygiene_sa.month AND ym.day = hygiene_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hygiene_safe) AS hygiene_sc ON ym.year = hygiene_sc.year AND ym.month = hygiene_sc.month AND ym.day = hygiene_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hygiene_unsafe) AS hygiene_ua ON ym.year = hygiene_ua.year AND ym.month = hygiene_ua.month AND ym.day = hygiene_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hygiene_unsafe) AS hygiene_uc ON ym.year = hygiene_uc.year AND ym.month = hygiene_uc.month AND ym.day = hygiene_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), house_safe) AS house_sa ON ym.year = house_sa.year AND ym.month = house_sa.month AND ym.day = house_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), house_safe) AS house_sc ON ym.year = house_sc.year AND ym.month = house_sc.month AND ym.day = house_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), house_unsafe) AS house_ua ON ym.year = house_ua.year AND ym.month = house_ua.month AND ym.day = house_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), house_unsafe) AS house_uc ON ym.year = house_uc.year AND ym.month = house_uc.month AND ym.day = house_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), standard_safe) AS standard_sa ON ym.year = standard_sa.year AND ym.month = standard_sa.month AND ym.day = standard_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), standard_safe) AS standard_sc ON ym.year = standard_sc.year AND ym.month = standard_sc.month AND ym.day = standard_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), standard_unsafe) AS standard_ua ON ym.year = standard_ua.year AND ym.month = standard_ua.month AND ym.day = standard_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), standard_unsafe) AS standard_uc ON ym.year = standard_uc.year AND ym.month = standard_uc.month AND ym.day = standard_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), spill_safe) AS spill_sa ON ym.year = spill_sa.year AND ym.month = spill_sa.month AND ym.day = spill_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), spill_safe) AS spill_sc ON ym.year = spill_sc.year AND ym.month = spill_sc.month AND ym.day = spill_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), spill_unsafe) AS spill_ua ON ym.year = spill_ua.year AND ym.month = spill_ua.month AND ym.day = spill_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), spill_unsafe) AS spill_uc ON ym.year = spill_uc.year AND ym.month = spill_uc.month AND ym.day = spill_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), waste_energy_safe) AS waste_energy_sa ON ym.year = waste_energy_sa.year AND ym.month = waste_energy_sa.month AND ym.day = waste_energy_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), waste_energy_safe) AS waste_energy_sc ON ym.year = waste_energy_sc.year AND ym.month = waste_energy_sc.month AND ym.day = waste_energy_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), waste_energy_unsafe) AS waste_energy_ua ON ym.year = waste_energy_ua.year AND ym.month = waste_energy_ua.month AND ym.day = waste_energy_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), waste_energy_unsafe) AS waste_energy_uc ON ym.year = waste_energy_uc.year AND ym.month = waste_energy_uc.month AND ym.day = waste_energy_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), containment_safe) AS containment_sa ON ym.year = containment_sa.year AND ym.month = containment_sa.month AND ym.day = containment_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), containment_safe) AS containment_sc ON ym.year = containment_sc.year AND ym.month = containment_sc.month AND ym.day = containment_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), containment_unsafe) AS containment_ua ON ym.year = containment_ua.year AND ym.month = containment_ua.month AND ym.day = containment_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), containment_unsafe) AS containment_uc ON ym.year = containment_uc.year AND ym.month = containment_uc.month AND ym.day = containment_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), absorbent_safe) AS absorbent_sa ON ym.year = absorbent_sa.year AND ym.month = absorbent_sa.month AND ym.day = absorbent_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), absorbent_safe) AS absorbent_sc ON ym.year = absorbent_sc.year AND ym.month = absorbent_sc.month AND ym.day = absorbent_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), absorbent_unsafe) AS absorbent_ua ON ym.year = absorbent_ua.year AND ym.month = absorbent_ua.month AND ym.day = absorbent_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), absorbent_unsafe) AS absorbent_uc ON ym.year = absorbent_uc.year AND ym.month = absorbent_uc.month AND ym.day = absorbent_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hira_safe) AS hira_sa ON ym.year = hira_sa.year AND ym.month = hira_sa.month AND ym.day = hira_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hira_safe) AS hira_sc ON ym.year = hira_sc.year AND ym.month = hira_sc.month AND ym.day = hira_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hira_unsafe) AS hira_ua ON ym.year = hira_ua.year AND ym.month = hira_ua.month AND ym.day = hira_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hira_unsafe) AS hira_uc ON ym.year = hira_uc.year AND ym.month = hira_uc.month AND ym.day = hira_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ptw_safe) AS ptw_sa ON ym.year = ptw_sa.year AND ym.month = ptw_sa.month AND ym.day = ptw_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ptw_safe) AS ptw_sc ON ym.year = ptw_sc.year AND ym.month = ptw_sc.month AND ym.day = ptw_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ptw_unsafe) AS ptw_ua ON ym.year = ptw_ua.year AND ym.month = ptw_ua.month AND ym.day = ptw_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ptw_unsafe) AS ptw_uc ON ym.year = ptw_uc.year AND ym.month = ptw_uc.month AND ym.day = ptw_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), sop_safe) AS sop_sa ON ym.year = sop_sa.year AND ym.month = sop_sa.month AND ym.day = sop_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), sop_safe) AS sop_sc ON ym.year = sop_sc.year AND ym.month = sop_sc.month AND ym.day = sop_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), sop_unsafe) AS sop_ua ON ym.year = sop_ua.year AND ym.month = sop_ua.month AND ym.day = sop_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), sop_unsafe) AS sop_uc ON ym.year = sop_uc.year AND ym.month = sop_uc.month AND ym.day = sop_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), msds_safe) AS msds_sa ON ym.year = msds_sa.year AND ym.month = msds_sa.month AND ym.day = msds_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), msds_safe) AS msds_sc ON ym.year = msds_sc.year AND ym.month = msds_sc.month AND ym.day = msds_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), msds_unsafe) AS msds_ua ON ym.year = msds_ua.year AND ym.month = msds_ua.month AND ym.day = msds_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), msds_unsafe) AS msds_uc ON ym.year = msds_uc.year AND ym.month = msds_uc.month AND ym.day = msds_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), emergency_safe) AS emergency_sa ON ym.year = emergency_sa.year AND ym.month = emergency_sa.month AND ym.day = emergency_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), emergency_safe) AS emergency_sc ON ym.year = emergency_sc.year AND ym.month = emergency_sc.month AND ym.day = emergency_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), emergency_unsafe) AS emergency_ua ON ym.year = emergency_ua.year AND ym.month = emergency_ua.month AND ym.day = emergency_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), emergency_unsafe) AS emergency_uc ON ym.year = emergency_uc.year AND ym.month = emergency_uc.month AND ym.day = emergency_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), certificates_safe) AS certificates_sa ON ym.year = certificates_sa.year AND ym.month = certificates_sa.month AND ym.day = certificates_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), certificates_safe) AS certificates_sc ON ym.year = certificates_sc.year AND ym.month = certificates_sc.month AND ym.day = certificates_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), certificates_unsafe) AS certificates_ua ON ym.year = certificates_ua.year AND ym.month = certificates_ua.month AND ym.day = certificates_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), certificates_unsafe) AS certificates_uc ON ym.year = certificates_uc.year AND ym.month = certificates_uc.month AND ym.day = certificates_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ppe_safe) AS ppe_sa ON ym.year = ppe_sa.year AND ym.month = ppe_sa.month AND ym.day = ppe_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ppe_safe) AS ppe_sc ON ym.year = ppe_sc.year AND ym.month = ppe_sc.month AND ym.day = ppe_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ppe_unsafe) AS ppe_ua ON ym.year = ppe_ua.year AND ym.month = ppe_ua.month AND ym.day = ppe_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ppe_unsafe) AS ppe_uc ON ym.year = ppe_uc.year AND ym.month = ppe_uc.month AND ym.day = ppe_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hand_safe) AS hand_sa ON ym.year = hand_sa.year AND ym.month = hand_sa.month AND ym.day = hand_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hand_safe) AS hand_sc ON ym.year = hand_sc.year AND ym.month = hand_sc.month AND ym.day = hand_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hand_unsafe) AS hand_ua ON ym.year = hand_ua.year AND ym.month = hand_ua.month AND ym.day = hand_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hand_unsafe) AS hand_uc ON ym.year = hand_uc.year AND ym.month = hand_uc.month AND ym.day = hand_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), mechanical_safe) AS mechanical_sa ON ym.year = mechanical_sa.year AND ym.month = mechanical_sa.month AND ym.day = mechanical_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), mechanical_safe) AS mechanical_sc ON ym.year = mechanical_sc.year AND ym.month = mechanical_sc.month AND ym.day = mechanical_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), mechanical_unsafe) AS mechanical_ua ON ym.year = mechanical_ua.year AND ym.month = mechanical_ua.month AND ym.day = mechanical_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), mechanical_unsafe) AS mechanical_uc ON ym.year = mechanical_uc.year AND ym.month = mechanical_uc.month AND ym.day = mechanical_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), electrical_safe) AS electrical_sa ON ym.year = electrical_sa.year AND ym.month = electrical_sa.month AND ym.day = electrical_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), electrical_safe) AS electrical_sc ON ym.year = electrical_sc.year AND ym.month = electrical_sc.month AND ym.day = electrical_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), electrical_unsafe) AS electrical_ua ON ym.year = electrical_ua.year AND ym.month = electrical_ua.month AND ym.day = electrical_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), electrical_unsafe) AS electrical_uc ON ym.year = electrical_uc.year AND ym.month = electrical_uc.month AND ym.day = electrical_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), vehicular_safe) AS vehicular_sa ON ym.year = vehicular_sa.year AND ym.month = vehicular_sa.month AND ym.day = vehicular_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), vehicular_safe) AS vehicular_sc ON ym.year = vehicular_sc.year AND ym.month = vehicular_sc.month AND ym.day = vehicular_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), vehicular_unsafe) AS vehicular_ua ON ym.year = vehicular_ua.year AND ym.month = vehicular_ua.month AND ym.day = vehicular_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), vehicular_unsafe) AS vehicular_uc ON ym.year = vehicular_uc.year AND ym.month = vehicular_uc.month AND ym.day = vehicular_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substandard_safe) AS substandard_sa ON ym.year = substandard_sa.year AND ym.month = substandard_sa.month AND ym.day = substandard_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substandard_safe) AS substandard_sc ON ym.year = substandard_sc.year AND ym.month = substandard_sc.month AND ym.day = substandard_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substandard_unsafe) AS substandard_ua ON ym.year = substandard_ua.year AND ym.month = substandard_ua.month AND ym.day = substandard_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substandard_unsafe) AS substandard_uc ON ym.year = substandard_uc.year AND ym.month = substandard_uc.month AND ym.day = substandard_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), h2s_safe) AS h2s_sa ON ym.year = h2s_sa.year AND ym.month = h2s_sa.month AND ym.day = h2s_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), h2s_safe) AS h2s_sc ON ym.year = h2s_sc.year AND ym.month = h2s_sc.month AND ym.day = h2s_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), h2s_unsafe) AS h2s_ua ON ym.year = h2s_ua.year AND ym.month = h2s_ua.month AND ym.day = h2s_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), h2s_unsafe) AS h2s_uc ON ym.year = h2s_uc.year AND ym.month = h2s_uc.month AND ym.day = h2s_uc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), workplace_health_safe) AS workplace_health_sa ON ym.year = workplace_health_sa.year AND ym.month = workplace_health_sa.month AND ym.day = workplace_health_sa.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), workplace_health_safe) AS workplace_health_sc ON ym.year = workplace_health_sc.year AND ym.month = workplace_health_sc.month AND ym.day = workplace_health_sc.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '10')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), workplace_health_unsafe) AS workplace_health_ua ON ym.year = workplace_health_ua.year AND ym.month = workplace_health_ua.month AND ym.day = workplace_health_ua.day LEFT OUTER JOIN
                             (SELECT        YEAR(date_time) AS year, MONTH(date_time) AS month, DAY(date_time) AS day, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '01')
                               GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), workplace_health_unsafe) AS workplace_health_uc ON ym.year = workplace_health_uc.year AND ym.month = workplace_health_uc.month AND ym.day = workplace_health_uc.day 
							   where ym.year=@year and ym.month=@month and ym.day=@day


GO
/****** Object:  StoredProcedure [dbo].[observationByDepartment]    Script Date: 5/30/2013 9:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[observationByDepartment]
    @department varchar(255)
AS 
	SELECT        ym.department, { fn IFNULL(accident_sa.count_accident_sa, 0) } AS count_accident_sa, { fn IFNULL(accident_sc.count_accident_sc, 0) } AS count_accident_sc, 
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
FROM            (SELECT DISTINCT department
                          FROM            she_observation) AS ym LEFT OUTER JOIN
                             (SELECT        department,  accident_safe AS asa, COUNT(id) AS count_accident_sa
                               FROM            she_observation AS she_observation_2
                               WHERE        (accident_safe = '10')
                               GROUP BY department, accident_safe) AS accident_sa ON ym.department = accident_sa.department LEFT OUTER JOIN
                             (SELECT        department, accident_safe AS asa, COUNT(id) AS count_accident_sc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_safe = '01')
                               GROUP BY department, accident_safe) AS accident_sc ON ym.department = accident_sc.department LEFT OUTER JOIN
                             (SELECT        department, accident_unsafe AS aua, COUNT(id) AS count_accident_ua
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '10')
                               GROUP BY department, accident_unsafe) AS accident_ua ON ym.department = accident_ua.department LEFT OUTER JOIN
                             (SELECT        department, accident_unsafe AS auc, COUNT(id) AS count_accident_uc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '01')
                               GROUP BY department, accident_unsafe) AS accident_uc ON ym.department = accident_uc.department LEFT OUTER JOIN
                             (SELECT        department, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '10')
                               GROUP BY department, fire_safe) AS fire_sa ON ym.department = fire_sa.department LEFT OUTER JOIN
                             (SELECT        department, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '01')
                               GROUP BY department, fire_safe) AS fire_sc ON ym.department = fire_sc.department LEFT OUTER JOIN
                             (SELECT        department, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '10')
                               GROUP BY department, fire_unsafe) AS fire_ua ON ym.department = fire_ua.department LEFT OUTER JOIN
                             (SELECT        department, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '01')
                               GROUP BY department, fire_unsafe) AS fire_uc ON ym.department = fire_uc.department LEFT OUTER JOIN
                             (SELECT        department, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '10')
                               GROUP BY department, prevention_safe) AS prevention_sa ON ym.department = prevention_sa.department LEFT OUTER JOIN
                             (SELECT        department, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '01')
                               GROUP BY department, prevention_safe) AS prevention_sc ON ym.department = prevention_sc.department LEFT OUTER JOIN
                             (SELECT        department, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '10')
                               GROUP BY department, prevention_unsafe) AS prevention_ua ON ym.department = prevention_ua.department LEFT OUTER JOIN
                             (SELECT        department, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '01')
                               GROUP BY department, prevention_unsafe) AS prevention_uc ON ym.department = prevention_uc.department LEFT OUTER JOIN
                             (SELECT        department, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '10')
                               GROUP BY department, supervisor_safe) AS supervisor_sa ON ym.department = supervisor_sa.department LEFT OUTER JOIN
                             (SELECT        department, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '01')
                               GROUP BY department, supervisor_safe) AS supervisor_sc ON ym.department = supervisor_sc.department LEFT OUTER JOIN
                             (SELECT        department, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '10')
                               GROUP BY department, supervisor_unsafe) AS supervisor_ua ON ym.department = supervisor_ua.department LEFT OUTER JOIN
                             (SELECT        department, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '01')
                               GROUP BY department, supervisor_unsafe) AS supervisor_uc ON ym.department = supervisor_uc.department LEFT OUTER JOIN
                             (SELECT        department, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '10')
                               GROUP BY department, fit_work_safe) AS fit_work_sa ON ym.department = fit_work_sa.department LEFT OUTER JOIN
                             (SELECT        department, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '01')
                               GROUP BY department, fit_work_safe) AS fit_work_sc ON ym.department = fit_work_sc.department LEFT OUTER JOIN
                             (SELECT        department, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '10')
                               GROUP BY department, fit_work_unsafe) AS fit_work_ua ON ym.department = fit_work_ua.department LEFT OUTER JOIN
                             (SELECT        department, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '01')
                               GROUP BY department, fit_work_unsafe) AS fit_work_uc ON ym.department = fit_work_uc.department LEFT OUTER JOIN
                             (SELECT        department, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '10')
                               GROUP BY department, psychological_safe) AS psychological_sa ON ym.department = psychological_sa.department LEFT OUTER JOIN
                             (SELECT        department, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '01')
                               GROUP BY department, psychological_safe) AS psychological_sc ON ym.department = psychological_sc.department LEFT OUTER JOIN
                             (SELECT        department, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '10')
                               GROUP BY department, psychological_unsafe) AS psychological_ua ON ym.department = psychological_ua.department LEFT OUTER JOIN
                             (SELECT        department, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '01')
                               GROUP BY department, psychological_unsafe) AS psychological_uc ON ym.department = psychological_uc.department LEFT OUTER JOIN
                             (SELECT        department, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '10')
                               GROUP BY department, posture_safe) AS posture_sa ON ym.department = posture_sa.department LEFT OUTER JOIN
                             (SELECT        department, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '01')
                               GROUP BY department, posture_safe) AS posture_sc ON ym.department = posture_sc.department LEFT OUTER JOIN
                             (SELECT        department, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '10')
                               GROUP BY department, posture_unsafe) AS posture_ua ON ym.department = posture_ua.department LEFT OUTER JOIN
                             (SELECT        department, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '01')
                               GROUP BY department, posture_unsafe) AS posture_uc ON ym.department = posture_uc.department LEFT OUTER JOIN
                             (SELECT        department, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '10')
                               GROUP BY department, substance_safe) AS substance_sa ON ym.department = substance_sa.department LEFT OUTER JOIN
                             (SELECT        department, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '01')
                               GROUP BY department, substance_safe) AS substance_sc ON ym.department = substance_sc.department LEFT OUTER JOIN
                             (SELECT        department, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '10')
                               GROUP BY department, substance_unsafe) AS substance_ua ON ym.department = substance_ua.department LEFT OUTER JOIN
                             (SELECT        department, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '01')
                               GROUP BY department, substance_unsafe) AS substance_uc ON ym.department = substance_uc.department LEFT OUTER JOIN
                             (SELECT        department, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '10')
                               GROUP BY department, hygiene_safe) AS hygiene_sa ON ym.department = hygiene_sa.department LEFT OUTER JOIN
                             (SELECT        department, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '01')
                               GROUP BY department, hygiene_safe) AS hygiene_sc ON ym.department = hygiene_sc.department LEFT OUTER JOIN
                             (SELECT        department, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '10')
                               GROUP BY department, hygiene_unsafe) AS hygiene_ua ON ym.department = hygiene_ua.department LEFT OUTER JOIN
                             (SELECT        department, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '01')
                               GROUP BY department, hygiene_unsafe) AS hygiene_uc ON ym.department = hygiene_uc.department LEFT OUTER JOIN
                             (SELECT        department, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '10')
                               GROUP BY department, house_safe) AS house_sa ON ym.department = house_sa.department LEFT OUTER JOIN
                             (SELECT        department, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '01')
                               GROUP BY department, house_safe) AS house_sc ON ym.department = house_sc.department LEFT OUTER JOIN
                             (SELECT        department, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '10')
                               GROUP BY department, house_unsafe) AS house_ua ON ym.department = house_ua.department LEFT OUTER JOIN
                             (SELECT        department, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '01')
                               GROUP BY department, house_unsafe) AS house_uc ON ym.department = house_uc.department LEFT OUTER JOIN
                             (SELECT        department, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '10')
                               GROUP BY department, standard_safe) AS standard_sa ON ym.department = standard_sa.department LEFT OUTER JOIN
                             (SELECT        department, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '01')
                               GROUP BY department, standard_safe) AS standard_sc ON ym.department = standard_sc.department LEFT OUTER JOIN
                             (SELECT        department, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '10')
                               GROUP BY department, standard_unsafe) AS standard_ua ON ym.department = standard_ua.department LEFT OUTER JOIN
                             (SELECT        department, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '01')
                               GROUP BY department, standard_unsafe) AS standard_uc ON ym.department = standard_uc.department LEFT OUTER JOIN
                             (SELECT        department, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '10')
                               GROUP BY department, spill_safe) AS spill_sa ON ym.department = spill_sa.department LEFT OUTER JOIN
                             (SELECT        department, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '01')
                               GROUP BY department, spill_safe) AS spill_sc ON ym.department = spill_sc.department LEFT OUTER JOIN
                             (SELECT        department, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '10')
                               GROUP BY department, spill_unsafe) AS spill_ua ON ym.department = spill_ua.department LEFT OUTER JOIN
                             (SELECT        department, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '01')
                               GROUP BY department, spill_unsafe) AS spill_uc ON ym.department = spill_uc.department LEFT OUTER JOIN
                             (SELECT        department, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '10')
                               GROUP BY department, waste_energy_safe) AS waste_energy_sa ON ym.department = waste_energy_sa.department LEFT OUTER JOIN
                             (SELECT        department, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '01')
                               GROUP BY department, waste_energy_safe) AS waste_energy_sc ON ym.department = waste_energy_sc.department LEFT OUTER JOIN
                             (SELECT        department, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '10')
                               GROUP BY department, waste_energy_unsafe) AS waste_energy_ua ON ym.department = waste_energy_ua.department LEFT OUTER JOIN
                             (SELECT        department, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '01')
                               GROUP BY department, waste_energy_unsafe) AS waste_energy_uc ON ym.department = waste_energy_uc.department LEFT OUTER JOIN
                             (SELECT        department, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '10')
                               GROUP BY department, containment_safe) AS containment_sa ON ym.department = containment_sa.department LEFT OUTER JOIN
                             (SELECT        department, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '01')
                               GROUP BY department, containment_safe) AS containment_sc ON ym.department = containment_sc.department LEFT OUTER JOIN
                             (SELECT        department, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '10')
                               GROUP BY department, containment_unsafe) AS containment_ua ON ym.department = containment_ua.department LEFT OUTER JOIN
                             (SELECT        department, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '01')
                               GROUP BY department, containment_unsafe) AS containment_uc ON ym.department = containment_uc.department LEFT OUTER JOIN
                             (SELECT        department, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '10')
                               GROUP BY department, absorbent_safe) AS absorbent_sa ON ym.department = absorbent_sa.department LEFT OUTER JOIN
                             (SELECT        department, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '01')
                               GROUP BY department, absorbent_safe) AS absorbent_sc ON ym.department = absorbent_sc.department LEFT OUTER JOIN
                             (SELECT        department, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '10')
                               GROUP BY department, absorbent_unsafe) AS absorbent_ua ON ym.department = absorbent_ua.department LEFT OUTER JOIN
                             (SELECT        department, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '01')
                               GROUP BY department, absorbent_unsafe) AS absorbent_uc ON ym.department = absorbent_uc.department LEFT OUTER JOIN
                             (SELECT        department, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '10')
                               GROUP BY department, hira_safe) AS hira_sa ON ym.department = hira_sa.department LEFT OUTER JOIN
                             (SELECT        department, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '01')
                               GROUP BY department, hira_safe) AS hira_sc ON ym.department = hira_sc.department LEFT OUTER JOIN
                             (SELECT        department, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '10')
                               GROUP BY department, hira_unsafe) AS hira_ua ON ym.department = hira_ua.department LEFT OUTER JOIN
                             (SELECT        department, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '01')
                               GROUP BY department, hira_unsafe) AS hira_uc ON ym.department = hira_uc.department LEFT OUTER JOIN
                             (SELECT        department, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '10')
                               GROUP BY department, ptw_safe) AS ptw_sa ON ym.department = ptw_sa.department LEFT OUTER JOIN
                             (SELECT        department, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '01')
                               GROUP BY department, ptw_safe) AS ptw_sc ON ym.department = ptw_sc.department LEFT OUTER JOIN
                             (SELECT        department, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '10')
                               GROUP BY department, ptw_unsafe) AS ptw_ua ON ym.department = ptw_ua.department LEFT OUTER JOIN
                             (SELECT        department, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '01')
                               GROUP BY department, ptw_unsafe) AS ptw_uc ON ym.department = ptw_uc.department LEFT OUTER JOIN
                             (SELECT        department, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '10')
                               GROUP BY department, sop_safe) AS sop_sa ON ym.department = sop_sa.department LEFT OUTER JOIN
                             (SELECT        department, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '01')
                               GROUP BY department, sop_safe) AS sop_sc ON ym.department = sop_sc.department LEFT OUTER JOIN
                             (SELECT        department, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '10')
                               GROUP BY department, sop_unsafe) AS sop_ua ON ym.department = sop_ua.department LEFT OUTER JOIN
                             (SELECT        department, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '01')
                               GROUP BY department, sop_unsafe) AS sop_uc ON ym.department = sop_uc.department LEFT OUTER JOIN
                             (SELECT        department, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '10')
                               GROUP BY department, msds_safe) AS msds_sa ON ym.department = msds_sa.department LEFT OUTER JOIN
                             (SELECT        department, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '01')
                               GROUP BY department, msds_safe) AS msds_sc ON ym.department = msds_sc.department LEFT OUTER JOIN
                             (SELECT        department, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '10')
                               GROUP BY department, msds_unsafe) AS msds_ua ON ym.department = msds_ua.department LEFT OUTER JOIN
                             (SELECT        department, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '01')
                               GROUP BY department, msds_unsafe) AS msds_uc ON ym.department = msds_uc.department LEFT OUTER JOIN
                             (SELECT        department, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '10')
                               GROUP BY department, emergency_safe) AS emergency_sa ON ym.department = emergency_sa.department LEFT OUTER JOIN
                             (SELECT        department, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '01')
                               GROUP BY department, emergency_safe) AS emergency_sc ON ym.department = emergency_sc.department LEFT OUTER JOIN
                             (SELECT        department, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '10')
                               GROUP BY department, emergency_unsafe) AS emergency_ua ON ym.department = emergency_ua.department LEFT OUTER JOIN
                             (SELECT        department, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '01')
                               GROUP BY department, emergency_unsafe) AS emergency_uc ON ym.department = emergency_uc.department LEFT OUTER JOIN
                             (SELECT        department, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '10')
                               GROUP BY department, certificates_safe) AS certificates_sa ON ym.department = certificates_sa.department LEFT OUTER JOIN
                             (SELECT        department, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '01')
                               GROUP BY department, certificates_safe) AS certificates_sc ON ym.department = certificates_sc.department LEFT OUTER JOIN
                             (SELECT        department, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '10')
                               GROUP BY department, certificates_unsafe) AS certificates_ua ON ym.department = certificates_ua.department LEFT OUTER JOIN
                             (SELECT        department, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '01')
                               GROUP BY department, certificates_unsafe) AS certificates_uc ON ym.department = certificates_uc.department LEFT OUTER JOIN
                             (SELECT        department, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '10')
                               GROUP BY department, ppe_safe) AS ppe_sa ON ym.department = ppe_sa.department LEFT OUTER JOIN
                             (SELECT        department, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '01')
                               GROUP BY department, ppe_safe) AS ppe_sc ON ym.department = ppe_sc.department LEFT OUTER JOIN
                             (SELECT        department, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '10')
                               GROUP BY department, ppe_unsafe) AS ppe_ua ON ym.department = ppe_ua.department LEFT OUTER JOIN
                             (SELECT        department, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '01')
                               GROUP BY department, ppe_unsafe) AS ppe_uc ON ym.department = ppe_uc.department LEFT OUTER JOIN
                             (SELECT        department, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '10')
                               GROUP BY department, hand_safe) AS hand_sa ON ym.department = hand_sa.department LEFT OUTER JOIN
                             (SELECT        department, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '01')
                               GROUP BY department, hand_safe) AS hand_sc ON ym.department = hand_sc.department LEFT OUTER JOIN
                             (SELECT        department, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '10')
                               GROUP BY department, hand_unsafe) AS hand_ua ON ym.department = hand_ua.department LEFT OUTER JOIN
                             (SELECT        department, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '01')
                               GROUP BY department, hand_unsafe) AS hand_uc ON ym.department = hand_uc.department LEFT OUTER JOIN
                             (SELECT        department, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '10')
                               GROUP BY department, mechanical_safe) AS mechanical_sa ON ym.department = mechanical_sa.department LEFT OUTER JOIN
                             (SELECT        department, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '01')
                               GROUP BY department, mechanical_safe) AS mechanical_sc ON ym.department = mechanical_sc.department LEFT OUTER JOIN
                             (SELECT        department, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '10')
                               GROUP BY department, mechanical_unsafe) AS mechanical_ua ON ym.department = mechanical_ua.department LEFT OUTER JOIN
                             (SELECT        department, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '01')
                               GROUP BY department, mechanical_unsafe) AS mechanical_uc ON ym.department = mechanical_uc.department LEFT OUTER JOIN
                             (SELECT        department, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '10')
                               GROUP BY department, electrical_safe) AS electrical_sa ON ym.department = electrical_sa.department LEFT OUTER JOIN
                             (SELECT        department, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '01')
                               GROUP BY department, electrical_safe) AS electrical_sc ON ym.department = electrical_sc.department LEFT OUTER JOIN
                             (SELECT        department, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '10')
                               GROUP BY department, electrical_unsafe) AS electrical_ua ON ym.department = electrical_ua.department LEFT OUTER JOIN
                             (SELECT        department, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '01')
                               GROUP BY department, electrical_unsafe) AS electrical_uc ON ym.department = electrical_uc.department LEFT OUTER JOIN
                             (SELECT        department, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '10')
                               GROUP BY department, vehicular_safe) AS vehicular_sa ON ym.department = vehicular_sa.department LEFT OUTER JOIN
                             (SELECT        department, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '01')
                               GROUP BY department, vehicular_safe) AS vehicular_sc ON ym.department = vehicular_sc.department LEFT OUTER JOIN
                             (SELECT        department, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '10')
                               GROUP BY department, vehicular_unsafe) AS vehicular_ua ON ym.department = vehicular_ua.department LEFT OUTER JOIN
                             (SELECT        department, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '01')
                               GROUP BY department, vehicular_unsafe) AS vehicular_uc ON ym.department = vehicular_uc.department LEFT OUTER JOIN
                             (SELECT        department, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '10')
                               GROUP BY department, substandard_safe) AS substandard_sa ON ym.department = substandard_sa.department LEFT OUTER JOIN
                             (SELECT        department, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '01')
                               GROUP BY department, substandard_safe) AS substandard_sc ON ym.department = substandard_sc.department LEFT OUTER JOIN
                             (SELECT        department, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '10')
                               GROUP BY department, substandard_unsafe) AS substandard_ua ON ym.department = substandard_ua.department LEFT OUTER JOIN
                             (SELECT        department, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '01')
                               GROUP BY department, substandard_unsafe) AS substandard_uc ON ym.department = substandard_uc.department LEFT OUTER JOIN
                             (SELECT        department, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '10')
                               GROUP BY department, h2s_safe) AS h2s_sa ON ym.department = h2s_sa.department LEFT OUTER JOIN
                             (SELECT        department, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '01')
                               GROUP BY department, h2s_safe) AS h2s_sc ON ym.department = h2s_sc.department LEFT OUTER JOIN
                             (SELECT        department, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '10')
                               GROUP BY department, h2s_unsafe) AS h2s_ua ON ym.department = h2s_ua.department LEFT OUTER JOIN
                             (SELECT        department, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '01')
                               GROUP BY department, h2s_unsafe) AS h2s_uc ON ym.department = h2s_uc.department LEFT OUTER JOIN
                             (SELECT        department, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '10')
                               GROUP BY department, workplace_health_safe) AS workplace_health_sa ON ym.department = workplace_health_sa.department LEFT OUTER JOIN
                             (SELECT        department, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '01')
                               GROUP BY department, workplace_health_safe) AS workplace_health_sc ON ym.department = workplace_health_sc.department LEFT OUTER JOIN
                             (SELECT        department, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '10')
                               GROUP BY department, workplace_health_unsafe) AS workplace_health_ua ON ym.department = workplace_health_ua.department LEFT OUTER JOIN
                             (SELECT        department, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '01')
                               GROUP BY department, workplace_health_unsafe) AS workplace_health_uc ON ym.department = workplace_health_uc.department 
							   where ym.department=@department


GO
/****** Object:  StoredProcedure [dbo].[observationByMonth]    Script Date: 5/30/2013 9:01:27 AM ******/
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
/****** Object:  StoredProcedure [dbo].[observationByObserver]    Script Date: 5/30/2013 9:01:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[observationByObserver]
    @observer varchar(255)
AS 
	SELECT        ym.observer, { fn IFNULL(accident_sa.count_accident_sa, 0) } AS count_accident_sa, { fn IFNULL(accident_sc.count_accident_sc, 0) } AS count_accident_sc, 
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
FROM            (SELECT DISTINCT observer
                          FROM            she_observation) AS ym LEFT OUTER JOIN
                             (SELECT        observer,  accident_safe AS asa, COUNT(id) AS count_accident_sa
                               FROM            she_observation AS she_observation_2
                               WHERE        (accident_safe = '10')
                               GROUP BY observer, accident_safe) AS accident_sa ON ym.observer = accident_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, accident_safe AS asa, COUNT(id) AS count_accident_sc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_safe = '01')
                               GROUP BY observer, accident_safe) AS accident_sc ON ym.observer = accident_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, accident_unsafe AS aua, COUNT(id) AS count_accident_ua
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '10')
                               GROUP BY observer, accident_unsafe) AS accident_ua ON ym.observer = accident_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, accident_unsafe AS auc, COUNT(id) AS count_accident_uc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '01')
                               GROUP BY observer, accident_unsafe) AS accident_uc ON ym.observer = accident_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '10')
                               GROUP BY observer, fire_safe) AS fire_sa ON ym.observer = fire_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '01')
                               GROUP BY observer, fire_safe) AS fire_sc ON ym.observer = fire_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '10')
                               GROUP BY observer, fire_unsafe) AS fire_ua ON ym.observer = fire_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '01')
                               GROUP BY observer, fire_unsafe) AS fire_uc ON ym.observer = fire_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '10')
                               GROUP BY observer, prevention_safe) AS prevention_sa ON ym.observer = prevention_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '01')
                               GROUP BY observer, prevention_safe) AS prevention_sc ON ym.observer = prevention_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '10')
                               GROUP BY observer, prevention_unsafe) AS prevention_ua ON ym.observer = prevention_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '01')
                               GROUP BY observer, prevention_unsafe) AS prevention_uc ON ym.observer = prevention_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '10')
                               GROUP BY observer, supervisor_safe) AS supervisor_sa ON ym.observer = supervisor_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '01')
                               GROUP BY observer, supervisor_safe) AS supervisor_sc ON ym.observer = supervisor_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '10')
                               GROUP BY observer, supervisor_unsafe) AS supervisor_ua ON ym.observer = supervisor_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '01')
                               GROUP BY observer, supervisor_unsafe) AS supervisor_uc ON ym.observer = supervisor_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '10')
                               GROUP BY observer, fit_work_safe) AS fit_work_sa ON ym.observer = fit_work_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '01')
                               GROUP BY observer, fit_work_safe) AS fit_work_sc ON ym.observer = fit_work_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '10')
                               GROUP BY observer, fit_work_unsafe) AS fit_work_ua ON ym.observer = fit_work_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '01')
                               GROUP BY observer, fit_work_unsafe) AS fit_work_uc ON ym.observer = fit_work_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '10')
                               GROUP BY observer, psychological_safe) AS psychological_sa ON ym.observer = psychological_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '01')
                               GROUP BY observer, psychological_safe) AS psychological_sc ON ym.observer = psychological_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '10')
                               GROUP BY observer, psychological_unsafe) AS psychological_ua ON ym.observer = psychological_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '01')
                               GROUP BY observer, psychological_unsafe) AS psychological_uc ON ym.observer = psychological_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '10')
                               GROUP BY observer, posture_safe) AS posture_sa ON ym.observer = posture_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '01')
                               GROUP BY observer, posture_safe) AS posture_sc ON ym.observer = posture_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '10')
                               GROUP BY observer, posture_unsafe) AS posture_ua ON ym.observer = posture_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '01')
                               GROUP BY observer, posture_unsafe) AS posture_uc ON ym.observer = posture_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '10')
                               GROUP BY observer, substance_safe) AS substance_sa ON ym.observer = substance_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '01')
                               GROUP BY observer, substance_safe) AS substance_sc ON ym.observer = substance_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '10')
                               GROUP BY observer, substance_unsafe) AS substance_ua ON ym.observer = substance_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '01')
                               GROUP BY observer, substance_unsafe) AS substance_uc ON ym.observer = substance_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '10')
                               GROUP BY observer, hygiene_safe) AS hygiene_sa ON ym.observer = hygiene_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '01')
                               GROUP BY observer, hygiene_safe) AS hygiene_sc ON ym.observer = hygiene_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '10')
                               GROUP BY observer, hygiene_unsafe) AS hygiene_ua ON ym.observer = hygiene_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '01')
                               GROUP BY observer, hygiene_unsafe) AS hygiene_uc ON ym.observer = hygiene_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '10')
                               GROUP BY observer, house_safe) AS house_sa ON ym.observer = house_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '01')
                               GROUP BY observer, house_safe) AS house_sc ON ym.observer = house_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '10')
                               GROUP BY observer, house_unsafe) AS house_ua ON ym.observer = house_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '01')
                               GROUP BY observer, house_unsafe) AS house_uc ON ym.observer = house_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '10')
                               GROUP BY observer, standard_safe) AS standard_sa ON ym.observer = standard_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '01')
                               GROUP BY observer, standard_safe) AS standard_sc ON ym.observer = standard_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '10')
                               GROUP BY observer, standard_unsafe) AS standard_ua ON ym.observer = standard_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '01')
                               GROUP BY observer, standard_unsafe) AS standard_uc ON ym.observer = standard_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '10')
                               GROUP BY observer, spill_safe) AS spill_sa ON ym.observer = spill_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '01')
                               GROUP BY observer, spill_safe) AS spill_sc ON ym.observer = spill_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '10')
                               GROUP BY observer, spill_unsafe) AS spill_ua ON ym.observer = spill_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '01')
                               GROUP BY observer, spill_unsafe) AS spill_uc ON ym.observer = spill_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '10')
                               GROUP BY observer, waste_energy_safe) AS waste_energy_sa ON ym.observer = waste_energy_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '01')
                               GROUP BY observer, waste_energy_safe) AS waste_energy_sc ON ym.observer = waste_energy_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '10')
                               GROUP BY observer, waste_energy_unsafe) AS waste_energy_ua ON ym.observer = waste_energy_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '01')
                               GROUP BY observer, waste_energy_unsafe) AS waste_energy_uc ON ym.observer = waste_energy_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '10')
                               GROUP BY observer, containment_safe) AS containment_sa ON ym.observer = containment_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '01')
                               GROUP BY observer, containment_safe) AS containment_sc ON ym.observer = containment_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '10')
                               GROUP BY observer, containment_unsafe) AS containment_ua ON ym.observer = containment_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '01')
                               GROUP BY observer, containment_unsafe) AS containment_uc ON ym.observer = containment_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '10')
                               GROUP BY observer, absorbent_safe) AS absorbent_sa ON ym.observer = absorbent_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '01')
                               GROUP BY observer, absorbent_safe) AS absorbent_sc ON ym.observer = absorbent_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '10')
                               GROUP BY observer, absorbent_unsafe) AS absorbent_ua ON ym.observer = absorbent_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '01')
                               GROUP BY observer, absorbent_unsafe) AS absorbent_uc ON ym.observer = absorbent_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '10')
                               GROUP BY observer, hira_safe) AS hira_sa ON ym.observer = hira_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '01')
                               GROUP BY observer, hira_safe) AS hira_sc ON ym.observer = hira_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '10')
                               GROUP BY observer, hira_unsafe) AS hira_ua ON ym.observer = hira_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '01')
                               GROUP BY observer, hira_unsafe) AS hira_uc ON ym.observer = hira_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '10')
                               GROUP BY observer, ptw_safe) AS ptw_sa ON ym.observer = ptw_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '01')
                               GROUP BY observer, ptw_safe) AS ptw_sc ON ym.observer = ptw_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '10')
                               GROUP BY observer, ptw_unsafe) AS ptw_ua ON ym.observer = ptw_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '01')
                               GROUP BY observer, ptw_unsafe) AS ptw_uc ON ym.observer = ptw_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '10')
                               GROUP BY observer, sop_safe) AS sop_sa ON ym.observer = sop_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '01')
                               GROUP BY observer, sop_safe) AS sop_sc ON ym.observer = sop_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '10')
                               GROUP BY observer, sop_unsafe) AS sop_ua ON ym.observer = sop_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '01')
                               GROUP BY observer, sop_unsafe) AS sop_uc ON ym.observer = sop_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '10')
                               GROUP BY observer, msds_safe) AS msds_sa ON ym.observer = msds_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '01')
                               GROUP BY observer, msds_safe) AS msds_sc ON ym.observer = msds_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '10')
                               GROUP BY observer, msds_unsafe) AS msds_ua ON ym.observer = msds_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '01')
                               GROUP BY observer, msds_unsafe) AS msds_uc ON ym.observer = msds_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '10')
                               GROUP BY observer, emergency_safe) AS emergency_sa ON ym.observer = emergency_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '01')
                               GROUP BY observer, emergency_safe) AS emergency_sc ON ym.observer = emergency_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '10')
                               GROUP BY observer, emergency_unsafe) AS emergency_ua ON ym.observer = emergency_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '01')
                               GROUP BY observer, emergency_unsafe) AS emergency_uc ON ym.observer = emergency_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '10')
                               GROUP BY observer, certificates_safe) AS certificates_sa ON ym.observer = certificates_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '01')
                               GROUP BY observer, certificates_safe) AS certificates_sc ON ym.observer = certificates_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '10')
                               GROUP BY observer, certificates_unsafe) AS certificates_ua ON ym.observer = certificates_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '01')
                               GROUP BY observer, certificates_unsafe) AS certificates_uc ON ym.observer = certificates_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '10')
                               GROUP BY observer, ppe_safe) AS ppe_sa ON ym.observer = ppe_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '01')
                               GROUP BY observer, ppe_safe) AS ppe_sc ON ym.observer = ppe_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '10')
                               GROUP BY observer, ppe_unsafe) AS ppe_ua ON ym.observer = ppe_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '01')
                               GROUP BY observer, ppe_unsafe) AS ppe_uc ON ym.observer = ppe_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '10')
                               GROUP BY observer, hand_safe) AS hand_sa ON ym.observer = hand_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '01')
                               GROUP BY observer, hand_safe) AS hand_sc ON ym.observer = hand_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '10')
                               GROUP BY observer, hand_unsafe) AS hand_ua ON ym.observer = hand_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '01')
                               GROUP BY observer, hand_unsafe) AS hand_uc ON ym.observer = hand_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '10')
                               GROUP BY observer, mechanical_safe) AS mechanical_sa ON ym.observer = mechanical_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '01')
                               GROUP BY observer, mechanical_safe) AS mechanical_sc ON ym.observer = mechanical_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '10')
                               GROUP BY observer, mechanical_unsafe) AS mechanical_ua ON ym.observer = mechanical_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '01')
                               GROUP BY observer, mechanical_unsafe) AS mechanical_uc ON ym.observer = mechanical_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '10')
                               GROUP BY observer, electrical_safe) AS electrical_sa ON ym.observer = electrical_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '01')
                               GROUP BY observer, electrical_safe) AS electrical_sc ON ym.observer = electrical_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '10')
                               GROUP BY observer, electrical_unsafe) AS electrical_ua ON ym.observer = electrical_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '01')
                               GROUP BY observer, electrical_unsafe) AS electrical_uc ON ym.observer = electrical_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '10')
                               GROUP BY observer, vehicular_safe) AS vehicular_sa ON ym.observer = vehicular_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '01')
                               GROUP BY observer, vehicular_safe) AS vehicular_sc ON ym.observer = vehicular_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '10')
                               GROUP BY observer, vehicular_unsafe) AS vehicular_ua ON ym.observer = vehicular_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '01')
                               GROUP BY observer, vehicular_unsafe) AS vehicular_uc ON ym.observer = vehicular_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '10')
                               GROUP BY observer, substandard_safe) AS substandard_sa ON ym.observer = substandard_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '01')
                               GROUP BY observer, substandard_safe) AS substandard_sc ON ym.observer = substandard_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '10')
                               GROUP BY observer, substandard_unsafe) AS substandard_ua ON ym.observer = substandard_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '01')
                               GROUP BY observer, substandard_unsafe) AS substandard_uc ON ym.observer = substandard_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '10')
                               GROUP BY observer, h2s_safe) AS h2s_sa ON ym.observer = h2s_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '01')
                               GROUP BY observer, h2s_safe) AS h2s_sc ON ym.observer = h2s_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '10')
                               GROUP BY observer, h2s_unsafe) AS h2s_ua ON ym.observer = h2s_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '01')
                               GROUP BY observer, h2s_unsafe) AS h2s_uc ON ym.observer = h2s_uc.observer LEFT OUTER JOIN
                             (SELECT        observer, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '10')
                               GROUP BY observer, workplace_health_safe) AS workplace_health_sa ON ym.observer = workplace_health_sa.observer LEFT OUTER JOIN
                             (SELECT        observer, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '01')
                               GROUP BY observer, workplace_health_safe) AS workplace_health_sc ON ym.observer = workplace_health_sc.observer LEFT OUTER JOIN
                             (SELECT        observer, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '10')
                               GROUP BY observer, workplace_health_unsafe) AS workplace_health_ua ON ym.observer = workplace_health_ua.observer LEFT OUTER JOIN
                             (SELECT        observer, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '01')
                               GROUP BY observer, workplace_health_unsafe) AS workplace_health_uc ON ym.observer = workplace_health_uc.observer 
							   where ym.observer=@observer


GO
/****** Object:  Table [dbo].[rca]    Script Date: 5/30/2013 9:01:27 AM ******/
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
	[rca_code] [varchar](50) NULL,
	[id_iir] [int] NULL,
 CONSTRAINT [PK_rca] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[observationChart12Date]    Script Date: 5/30/2013 9:01:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[observationChart12Date] (
    @year varchar(4),
    @month varchar(2),
    @day varchar(2)
)
RETURNS TABLE
AS
RETURN 
(
    SELECT 1 as num, 'accident' as name, isnull(accident_ua.count,0) as ua, isnull(accident_uc.count,0) as uc, isnull(accident_sa.count,0) as sa, isnull(accident_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, accident_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (accident_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), accident_safe) as accident_sa ON accident_sa.year = ym.year AND accident_sa.month = ym.month AND accident_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, accident_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (accident_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), accident_safe) AS accident_sc ON accident_sc.year = ym.year AND accident_sc.month = ym.month AND accident_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, accident_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), accident_unsafe) AS accident_ua ON accident_ua.year = ym.year AND accident_ua.month = ym.month AND accident_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, accident_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), accident_unsafe) AS accident_uc ON accident_uc.year = ym.year AND accident_uc.month = ym.month AND accident_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 2 as num, 'fire' as name, isnull(fire_ua.count,0) as ua, isnull(fire_uc.count,0) as uc, isnull(fire_sa.count,0) as sa, isnull(fire_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, fire_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fire_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fire_safe) as fire_sa ON fire_sa.year = ym.year AND fire_sa.month = ym.month AND fire_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, fire_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fire_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fire_safe) AS fire_sc ON fire_sc.year = ym.year AND fire_sc.month = ym.month AND fire_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, fire_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fire_unsafe) AS fire_ua ON fire_ua.year = ym.year AND fire_ua.month = ym.month AND fire_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, fire_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fire_unsafe) AS fire_uc ON fire_uc.year = ym.year AND fire_uc.month = ym.month AND fire_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 3 as num, 'prevention' as name, isnull(prevention_ua.count,0) as ua, isnull(prevention_uc.count,0) as uc, isnull(prevention_sa.count,0) as sa, isnull(prevention_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, prevention_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (prevention_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), prevention_safe) as prevention_sa ON prevention_sa.year = ym.year AND prevention_sa.month = ym.month AND prevention_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, prevention_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (prevention_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), prevention_safe) AS prevention_sc ON prevention_sc.year = ym.year AND prevention_sc.month = ym.month AND prevention_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, prevention_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), prevention_unsafe) AS prevention_ua ON prevention_ua.year = ym.year AND prevention_ua.month = ym.month AND prevention_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, prevention_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), prevention_unsafe) AS prevention_uc ON prevention_uc.year = ym.year AND prevention_uc.month = ym.month AND prevention_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 4 as num, 'supervisor' as name, isnull(supervisor_ua.count,0) as ua, isnull(supervisor_uc.count,0) as uc, isnull(supervisor_sa.count,0) as sa, isnull(supervisor_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, supervisor_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (supervisor_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), supervisor_safe) as supervisor_sa ON supervisor_sa.year = ym.year AND supervisor_sa.month = ym.month AND supervisor_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, supervisor_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (supervisor_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), supervisor_safe) AS supervisor_sc ON supervisor_sc.year = ym.year AND supervisor_sc.month = ym.month AND supervisor_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, supervisor_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), supervisor_unsafe) AS supervisor_ua ON supervisor_ua.year = ym.year AND supervisor_ua.month = ym.month AND supervisor_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, supervisor_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), supervisor_unsafe) AS supervisor_uc ON supervisor_uc.year = ym.year AND supervisor_uc.month = ym.month AND supervisor_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 5 as num, 'fit_work' as name, isnull(fit_work_ua.count,0) as ua, isnull(fit_work_uc.count,0) as uc, isnull(fit_work_sa.count,0) as sa, isnull(fit_work_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, fit_work_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fit_work_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fit_work_safe) as fit_work_sa ON fit_work_sa.year = ym.year AND fit_work_sa.month = ym.month AND fit_work_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, fit_work_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fit_work_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fit_work_safe) AS fit_work_sc ON fit_work_sc.year = ym.year AND fit_work_sc.month = ym.month AND fit_work_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, fit_work_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fit_work_unsafe) AS fit_work_ua ON fit_work_ua.year = ym.year AND fit_work_ua.month = ym.month AND fit_work_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, fit_work_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), fit_work_unsafe) AS fit_work_uc ON fit_work_uc.year = ym.year AND fit_work_uc.month = ym.month AND fit_work_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 6 as num, 'psychological' as name, isnull(psychological_ua.count,0) as ua, isnull(psychological_uc.count,0) as uc, isnull(psychological_sa.count,0) as sa, isnull(psychological_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, psychological_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (psychological_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), psychological_safe) as psychological_sa ON psychological_sa.year = ym.year AND psychological_sa.month = ym.month AND psychological_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, psychological_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (psychological_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), psychological_safe) AS psychological_sc ON psychological_sc.year = ym.year AND psychological_sc.month = ym.month AND psychological_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, psychological_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), psychological_unsafe) AS psychological_ua ON psychological_ua.year = ym.year AND psychological_ua.month = ym.month AND psychological_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, psychological_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), psychological_unsafe) AS psychological_uc ON psychological_uc.year = ym.year AND psychological_uc.month = ym.month AND psychological_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 7 as num, 'posture' as name, isnull(posture_ua.count,0) as ua, isnull(posture_uc.count,0) as uc, isnull(posture_sa.count,0) as sa, isnull(posture_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, posture_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (posture_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), posture_safe) as posture_sa ON posture_sa.year = ym.year AND posture_sa.month = ym.month AND posture_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, posture_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (posture_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), posture_safe) AS posture_sc ON posture_sc.year = ym.year AND posture_sc.month = ym.month AND posture_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, posture_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), posture_unsafe) AS posture_ua ON posture_ua.year = ym.year AND posture_ua.month = ym.month AND posture_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, posture_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), posture_unsafe) AS posture_uc ON posture_uc.year = ym.year AND posture_uc.month = ym.month AND posture_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 8 as num, 'substance' as name, isnull(substance_ua.count,0) as ua, isnull(substance_uc.count,0) as uc, isnull(substance_sa.count,0) as sa, isnull(substance_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, substance_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substance_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substance_safe) as substance_sa ON substance_sa.year = ym.year AND substance_sa.month = ym.month AND substance_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, substance_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substance_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substance_safe) AS substance_sc ON substance_sc.year = ym.year AND substance_sc.month = ym.month AND substance_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, substance_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substance_unsafe) AS substance_ua ON substance_ua.year = ym.year AND substance_ua.month = ym.month AND substance_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, substance_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substance_unsafe) AS substance_uc ON substance_uc.year = ym.year AND substance_uc.month = ym.month AND substance_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 9 as num, 'hygiene' as name, isnull(hygiene_ua.count,0) as ua, isnull(hygiene_uc.count,0) as uc, isnull(hygiene_sa.count,0) as sa, isnull(hygiene_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hygiene_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hygiene_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hygiene_safe) as hygiene_sa ON hygiene_sa.year = ym.year AND hygiene_sa.month = ym.month AND hygiene_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hygiene_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hygiene_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hygiene_safe) AS hygiene_sc ON hygiene_sc.year = ym.year AND hygiene_sc.month = ym.month AND hygiene_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hygiene_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hygiene_unsafe) AS hygiene_ua ON hygiene_ua.year = ym.year AND hygiene_ua.month = ym.month AND hygiene_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hygiene_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hygiene_unsafe) AS hygiene_uc ON hygiene_uc.year = ym.year AND hygiene_uc.month = ym.month AND hygiene_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 10 as num, 'house' as name, isnull(house_ua.count,0) as ua, isnull(house_uc.count,0) as uc, isnull(house_sa.count,0) as sa, isnull(house_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, house_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (house_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), house_safe) as house_sa ON house_sa.year = ym.year AND house_sa.month = ym.month AND house_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, house_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (house_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), house_safe) AS house_sc ON house_sc.year = ym.year AND house_sc.month = ym.month AND house_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, house_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), house_unsafe) AS house_ua ON house_ua.year = ym.year AND house_ua.month = ym.month AND house_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, house_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), house_unsafe) AS house_uc ON house_uc.year = ym.year AND house_uc.month = ym.month AND house_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 11 as num, 'standard' as name, isnull(standard_ua.count,0) as ua, isnull(standard_uc.count,0) as uc, isnull(standard_sa.count,0) as sa, isnull(standard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, standard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (standard_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), standard_safe) as standard_sa ON standard_sa.year = ym.year AND standard_sa.month = ym.month AND standard_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, standard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (standard_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), standard_safe) AS standard_sc ON standard_sc.year = ym.year AND standard_sc.month = ym.month AND standard_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, standard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), standard_unsafe) AS standard_ua ON standard_ua.year = ym.year AND standard_ua.month = ym.month AND standard_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, standard_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), standard_unsafe) AS standard_uc ON standard_uc.year = ym.year AND standard_uc.month = ym.month AND standard_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 12 as num, 'spill' as name, isnull(spill_ua.count,0) as ua, isnull(spill_uc.count,0) as uc, isnull(spill_sa.count,0) as sa, isnull(spill_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, spill_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (spill_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), spill_safe) as spill_sa ON spill_sa.year = ym.year AND spill_sa.month = ym.month AND spill_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, spill_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (spill_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), spill_safe) AS spill_sc ON spill_sc.year = ym.year AND spill_sc.month = ym.month AND spill_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, spill_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), spill_unsafe) AS spill_ua ON spill_ua.year = ym.year AND spill_ua.month = ym.month AND spill_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, spill_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), spill_unsafe) AS spill_uc ON spill_uc.year = ym.year AND spill_uc.month = ym.month AND spill_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 13 as num, 'waste_energy' as name, isnull(waste_energy_ua.count,0) as ua, isnull(waste_energy_uc.count,0) as uc, isnull(waste_energy_sa.count,0) as sa, isnull(waste_energy_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, waste_energy_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (waste_energy_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), waste_energy_safe) as waste_energy_sa ON waste_energy_sa.year = ym.year AND waste_energy_sa.month = ym.month AND waste_energy_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, waste_energy_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (waste_energy_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), waste_energy_safe) AS waste_energy_sc ON waste_energy_sc.year = ym.year AND waste_energy_sc.month = ym.month AND waste_energy_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, waste_energy_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), waste_energy_unsafe) AS waste_energy_ua ON waste_energy_ua.year = ym.year AND waste_energy_ua.month = ym.month AND waste_energy_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, waste_energy_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), waste_energy_unsafe) AS waste_energy_uc ON waste_energy_uc.year = ym.year AND waste_energy_uc.month = ym.month AND waste_energy_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 14 as num, 'containment' as name, isnull(containment_ua.count,0) as ua, isnull(containment_uc.count,0) as uc, isnull(containment_sa.count,0) as sa, isnull(containment_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, containment_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (containment_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), containment_safe) as containment_sa ON containment_sa.year = ym.year AND containment_sa.month = ym.month AND containment_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, containment_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (containment_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), containment_safe) AS containment_sc ON containment_sc.year = ym.year AND containment_sc.month = ym.month AND containment_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, containment_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), containment_unsafe) AS containment_ua ON containment_ua.year = ym.year AND containment_ua.month = ym.month AND containment_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, containment_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), containment_unsafe) AS containment_uc ON containment_uc.year = ym.year AND containment_uc.month = ym.month AND containment_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 15 as num, 'absorbent' as name, isnull(absorbent_ua.count,0) as ua, isnull(absorbent_uc.count,0) as uc, isnull(absorbent_sa.count,0) as sa, isnull(absorbent_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, absorbent_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (absorbent_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), absorbent_safe) as absorbent_sa ON absorbent_sa.year = ym.year AND absorbent_sa.month = ym.month AND absorbent_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, absorbent_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (absorbent_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), absorbent_safe) AS absorbent_sc ON absorbent_sc.year = ym.year AND absorbent_sc.month = ym.month AND absorbent_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, absorbent_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), absorbent_unsafe) AS absorbent_ua ON absorbent_ua.year = ym.year AND absorbent_ua.month = ym.month AND absorbent_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, absorbent_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), absorbent_unsafe) AS absorbent_uc ON absorbent_uc.year = ym.year AND absorbent_uc.month = ym.month AND absorbent_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 16 as num, 'hira' as name, isnull(hira_ua.count,0) as ua, isnull(hira_uc.count,0) as uc, isnull(hira_sa.count,0) as sa, isnull(hira_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hira_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hira_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hira_safe) as hira_sa ON hira_sa.year = ym.year AND hira_sa.month = ym.month AND hira_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hira_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hira_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hira_safe) AS hira_sc ON hira_sc.year = ym.year AND hira_sc.month = ym.month AND hira_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hira_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hira_unsafe) AS hira_ua ON hira_ua.year = ym.year AND hira_ua.month = ym.month AND hira_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hira_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hira_unsafe) AS hira_uc ON hira_uc.year = ym.year AND hira_uc.month = ym.month AND hira_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 17 as num, 'ptw' as name, isnull(ptw_ua.count,0) as ua, isnull(ptw_uc.count,0) as uc, isnull(ptw_sa.count,0) as sa, isnull(ptw_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, ptw_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ptw_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ptw_safe) as ptw_sa ON ptw_sa.year = ym.year AND ptw_sa.month = ym.month AND ptw_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, ptw_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ptw_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ptw_safe) AS ptw_sc ON ptw_sc.year = ym.year AND ptw_sc.month = ym.month AND ptw_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, ptw_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ptw_unsafe) AS ptw_ua ON ptw_ua.year = ym.year AND ptw_ua.month = ym.month AND ptw_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, ptw_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ptw_unsafe) AS ptw_uc ON ptw_uc.year = ym.year AND ptw_uc.month = ym.month AND ptw_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 18 as num, 'sop' as name, isnull(sop_ua.count,0) as ua, isnull(sop_uc.count,0) as uc, isnull(sop_sa.count,0) as sa, isnull(sop_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, sop_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (sop_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), sop_safe) as sop_sa ON sop_sa.year = ym.year AND sop_sa.month = ym.month AND sop_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, sop_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (sop_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), sop_safe) AS sop_sc ON sop_sc.year = ym.year AND sop_sc.month = ym.month AND sop_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, sop_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), sop_unsafe) AS sop_ua ON sop_ua.year = ym.year AND sop_ua.month = ym.month AND sop_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, sop_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), sop_unsafe) AS sop_uc ON sop_uc.year = ym.year AND sop_uc.month = ym.month AND sop_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 19 as num, 'msds' as name, isnull(msds_ua.count,0) as ua, isnull(msds_uc.count,0) as uc, isnull(msds_sa.count,0) as sa, isnull(msds_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, msds_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (msds_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), msds_safe) as msds_sa ON msds_sa.year = ym.year AND msds_sa.month = ym.month AND msds_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, msds_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (msds_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), msds_safe) AS msds_sc ON msds_sc.year = ym.year AND msds_sc.month = ym.month AND msds_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, msds_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), msds_unsafe) AS msds_ua ON msds_ua.year = ym.year AND msds_ua.month = ym.month AND msds_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, msds_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), msds_unsafe) AS msds_uc ON msds_uc.year = ym.year AND msds_uc.month = ym.month AND msds_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 20 as num, 'emergency' as name, isnull(emergency_ua.count,0) as ua, isnull(emergency_uc.count,0) as uc, isnull(emergency_sa.count,0) as sa, isnull(emergency_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, emergency_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (emergency_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), emergency_safe) as emergency_sa ON emergency_sa.year = ym.year AND emergency_sa.month = ym.month AND emergency_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, emergency_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (emergency_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), emergency_safe) AS emergency_sc ON emergency_sc.year = ym.year AND emergency_sc.month = ym.month AND emergency_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, emergency_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), emergency_unsafe) AS emergency_ua ON emergency_ua.year = ym.year AND emergency_ua.month = ym.month AND emergency_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, emergency_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), emergency_unsafe) AS emergency_uc ON emergency_uc.year = ym.year AND emergency_uc.month = ym.month AND emergency_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 21 as num, 'certificates' as name, isnull(certificates_ua.count,0) as ua, isnull(certificates_uc.count,0) as uc, isnull(certificates_sa.count,0) as sa, isnull(certificates_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, certificates_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (certificates_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), certificates_safe) as certificates_sa ON certificates_sa.year = ym.year AND certificates_sa.month = ym.month AND certificates_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, certificates_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (certificates_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), certificates_safe) AS certificates_sc ON certificates_sc.year = ym.year AND certificates_sc.month = ym.month AND certificates_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, certificates_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), certificates_unsafe) AS certificates_ua ON certificates_ua.year = ym.year AND certificates_ua.month = ym.month AND certificates_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, certificates_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), certificates_unsafe) AS certificates_uc ON certificates_uc.year = ym.year AND certificates_uc.month = ym.month AND certificates_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 22 as num, 'ppe' as name, isnull(ppe_ua.count,0) as ua, isnull(ppe_uc.count,0) as uc, isnull(ppe_sa.count,0) as sa, isnull(ppe_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, ppe_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ppe_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ppe_safe) as ppe_sa ON ppe_sa.year = ym.year AND ppe_sa.month = ym.month AND ppe_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, ppe_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ppe_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ppe_safe) AS ppe_sc ON ppe_sc.year = ym.year AND ppe_sc.month = ym.month AND ppe_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, ppe_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ppe_unsafe) AS ppe_ua ON ppe_ua.year = ym.year AND ppe_ua.month = ym.month AND ppe_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, ppe_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), ppe_unsafe) AS ppe_uc ON ppe_uc.year = ym.year AND ppe_uc.month = ym.month AND ppe_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 23 as num, 'hand' as name, isnull(hand_ua.count,0) as ua, isnull(hand_uc.count,0) as uc, isnull(hand_sa.count,0) as sa, isnull(hand_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hand_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hand_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hand_safe) as hand_sa ON hand_sa.year = ym.year AND hand_sa.month = ym.month AND hand_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hand_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hand_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hand_safe) AS hand_sc ON hand_sc.year = ym.year AND hand_sc.month = ym.month AND hand_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hand_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hand_unsafe) AS hand_ua ON hand_ua.year = ym.year AND hand_ua.month = ym.month AND hand_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, hand_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), hand_unsafe) AS hand_uc ON hand_uc.year = ym.year AND hand_uc.month = ym.month AND hand_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 24 as num, 'mechanical' as name, isnull(mechanical_ua.count,0) as ua, isnull(mechanical_uc.count,0) as uc, isnull(mechanical_sa.count,0) as sa, isnull(mechanical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, mechanical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (mechanical_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), mechanical_safe) as mechanical_sa ON mechanical_sa.year = ym.year AND mechanical_sa.month = ym.month AND mechanical_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, mechanical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (mechanical_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), mechanical_safe) AS mechanical_sc ON mechanical_sc.year = ym.year AND mechanical_sc.month = ym.month AND mechanical_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, mechanical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), mechanical_unsafe) AS mechanical_ua ON mechanical_ua.year = ym.year AND mechanical_ua.month = ym.month AND mechanical_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, mechanical_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), mechanical_unsafe) AS mechanical_uc ON mechanical_uc.year = ym.year AND mechanical_uc.month = ym.month AND mechanical_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 25 as num, 'electrical' as name, isnull(electrical_ua.count,0) as ua, isnull(electrical_uc.count,0) as uc, isnull(electrical_sa.count,0) as sa, isnull(electrical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, electrical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (electrical_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), electrical_safe) as electrical_sa ON electrical_sa.year = ym.year AND electrical_sa.month = ym.month AND electrical_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, electrical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (electrical_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), electrical_safe) AS electrical_sc ON electrical_sc.year = ym.year AND electrical_sc.month = ym.month AND electrical_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, electrical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), electrical_unsafe) AS electrical_ua ON electrical_ua.year = ym.year AND electrical_ua.month = ym.month AND electrical_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, electrical_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), electrical_unsafe) AS electrical_uc ON electrical_uc.year = ym.year AND electrical_uc.month = ym.month AND electrical_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 26 as num, 'vehicular' as name, isnull(vehicular_ua.count,0) as ua, isnull(vehicular_uc.count,0) as uc, isnull(vehicular_sa.count,0) as sa, isnull(vehicular_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, vehicular_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (vehicular_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), vehicular_safe) as vehicular_sa ON vehicular_sa.year = ym.year AND vehicular_sa.month = ym.month AND vehicular_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, vehicular_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (vehicular_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), vehicular_safe) AS vehicular_sc ON vehicular_sc.year = ym.year AND vehicular_sc.month = ym.month AND vehicular_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, vehicular_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), vehicular_unsafe) AS vehicular_ua ON vehicular_ua.year = ym.year AND vehicular_ua.month = ym.month AND vehicular_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, vehicular_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), vehicular_unsafe) AS vehicular_uc ON vehicular_uc.year = ym.year AND vehicular_uc.month = ym.month AND vehicular_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 27 as num, 'substandard' as name, isnull(substandard_ua.count,0) as ua, isnull(substandard_uc.count,0) as uc, isnull(substandard_sa.count,0) as sa, isnull(substandard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, substandard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substandard_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substandard_safe) as substandard_sa ON substandard_sa.year = ym.year AND substandard_sa.month = ym.month AND substandard_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, substandard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substandard_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substandard_safe) AS substandard_sc ON substandard_sc.year = ym.year AND substandard_sc.month = ym.month AND substandard_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, substandard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substandard_unsafe) AS substandard_ua ON substandard_ua.year = ym.year AND substandard_ua.month = ym.month AND substandard_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, substandard_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), substandard_unsafe) AS substandard_uc ON substandard_uc.year = ym.year AND substandard_uc.month = ym.month AND substandard_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 28 as num, 'h2s' as name, isnull(h2s_ua.count,0) as ua, isnull(h2s_uc.count,0) as uc, isnull(h2s_sa.count,0) as sa, isnull(h2s_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, h2s_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (h2s_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), h2s_safe) as h2s_sa ON h2s_sa.year = ym.year AND h2s_sa.month = ym.month AND h2s_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, h2s_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (h2s_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), h2s_safe) AS h2s_sc ON h2s_sc.year = ym.year AND h2s_sc.month = ym.month AND h2s_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, h2s_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), h2s_unsafe) AS h2s_ua ON h2s_ua.year = ym.year AND h2s_ua.month = ym.month AND h2s_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, h2s_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), h2s_unsafe) AS h2s_uc ON h2s_uc.year = ym.year AND h2s_uc.month = ym.month AND h2s_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
UNION
SELECT 29 as num, 'workplace_health' as name, isnull(workplace_health_ua.count,0) as ua, isnull(workplace_health_uc.count,0) as uc, isnull(workplace_health_sa.count,0) as sa, isnull(workplace_health_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, workplace_health_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (workplace_health_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), workplace_health_safe) as workplace_health_sa ON workplace_health_sa.year = ym.year AND workplace_health_sa.month = ym.month AND workplace_health_sa.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, workplace_health_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (workplace_health_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), workplace_health_safe) AS workplace_health_sc ON workplace_health_sc.year = ym.year AND workplace_health_sc.month = ym.month AND workplace_health_sc.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, workplace_health_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), workplace_health_unsafe) AS workplace_health_ua ON workplace_health_ua.year = ym.year AND workplace_health_ua.month = ym.month AND workplace_health_ua.day = ym.day FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, DAY(date_time) as day, workplace_health_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), DAY(date_time), workplace_health_unsafe) AS workplace_health_uc ON workplace_health_uc.year = ym.year AND workplace_health_uc.month = ym.month AND workplace_health_uc.day = ym.day
WHERE ym.year=@year AND ym.month=@month AND ym.day=@day
);

GO
/****** Object:  UserDefinedFunction [dbo].[observationChart12Department]    Script Date: 5/30/2013 9:01:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[observationChart12Department] (
    @department varchar(255)
)
RETURNS TABLE
AS
RETURN 
(
    SELECT 1 as num, 'accident' as name, isnull(accident_ua.count,0) as ua, isnull(accident_uc.count,0) as uc, isnull(accident_sa.count,0) as sa, isnull(accident_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, accident_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (accident_safe = '10')
    GROUP BY department, accident_safe) as accident_sa ON accident_sa.department = ym.department FULL JOIN
(SELECT department, accident_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (accident_safe = '01')
GROUP BY department, accident_safe) AS accident_sc ON accident_sc.department = ym.department FULL JOIN
(SELECT department, accident_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '10')
GROUP BY department, accident_unsafe) AS accident_ua ON accident_ua.department = ym.department FULL JOIN
(SELECT department, accident_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '01')
GROUP BY department, accident_unsafe) AS accident_uc ON accident_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 2 as num, 'fire' as name, isnull(fire_ua.count,0) as ua, isnull(fire_uc.count,0) as uc, isnull(fire_sa.count,0) as sa, isnull(fire_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, fire_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fire_safe = '10')
    GROUP BY department, fire_safe) as fire_sa ON fire_sa.department = ym.department FULL JOIN
(SELECT department, fire_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fire_safe = '01')
GROUP BY department, fire_safe) AS fire_sc ON fire_sc.department = ym.department FULL JOIN
(SELECT department, fire_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '10')
GROUP BY department, fire_unsafe) AS fire_ua ON fire_ua.department = ym.department FULL JOIN
(SELECT department, fire_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '01')
GROUP BY department, fire_unsafe) AS fire_uc ON fire_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 3 as num, 'prevention' as name, isnull(prevention_ua.count,0) as ua, isnull(prevention_uc.count,0) as uc, isnull(prevention_sa.count,0) as sa, isnull(prevention_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, prevention_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (prevention_safe = '10')
    GROUP BY department, prevention_safe) as prevention_sa ON prevention_sa.department = ym.department FULL JOIN
(SELECT department, prevention_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (prevention_safe = '01')
GROUP BY department, prevention_safe) AS prevention_sc ON prevention_sc.department = ym.department FULL JOIN
(SELECT department, prevention_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '10')
GROUP BY department, prevention_unsafe) AS prevention_ua ON prevention_ua.department = ym.department FULL JOIN
(SELECT department, prevention_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '01')
GROUP BY department, prevention_unsafe) AS prevention_uc ON prevention_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 4 as num, 'supervisor' as name, isnull(supervisor_ua.count,0) as ua, isnull(supervisor_uc.count,0) as uc, isnull(supervisor_sa.count,0) as sa, isnull(supervisor_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, supervisor_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (supervisor_safe = '10')
    GROUP BY department, supervisor_safe) as supervisor_sa ON supervisor_sa.department = ym.department FULL JOIN
(SELECT department, supervisor_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (supervisor_safe = '01')
GROUP BY department, supervisor_safe) AS supervisor_sc ON supervisor_sc.department = ym.department FULL JOIN
(SELECT department, supervisor_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '10')
GROUP BY department, supervisor_unsafe) AS supervisor_ua ON supervisor_ua.department = ym.department FULL JOIN
(SELECT department, supervisor_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '01')
GROUP BY department, supervisor_unsafe) AS supervisor_uc ON supervisor_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 5 as num, 'fit_work' as name, isnull(fit_work_ua.count,0) as ua, isnull(fit_work_uc.count,0) as uc, isnull(fit_work_sa.count,0) as sa, isnull(fit_work_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, fit_work_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fit_work_safe = '10')
    GROUP BY department, fit_work_safe) as fit_work_sa ON fit_work_sa.department = ym.department FULL JOIN
(SELECT department, fit_work_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fit_work_safe = '01')
GROUP BY department, fit_work_safe) AS fit_work_sc ON fit_work_sc.department = ym.department FULL JOIN
(SELECT department, fit_work_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '10')
GROUP BY department, fit_work_unsafe) AS fit_work_ua ON fit_work_ua.department = ym.department FULL JOIN
(SELECT department, fit_work_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '01')
GROUP BY department, fit_work_unsafe) AS fit_work_uc ON fit_work_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 6 as num, 'psychological' as name, isnull(psychological_ua.count,0) as ua, isnull(psychological_uc.count,0) as uc, isnull(psychological_sa.count,0) as sa, isnull(psychological_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, psychological_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (psychological_safe = '10')
    GROUP BY department, psychological_safe) as psychological_sa ON psychological_sa.department = ym.department FULL JOIN
(SELECT department, psychological_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (psychological_safe = '01')
GROUP BY department, psychological_safe) AS psychological_sc ON psychological_sc.department = ym.department FULL JOIN
(SELECT department, psychological_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '10')
GROUP BY department, psychological_unsafe) AS psychological_ua ON psychological_ua.department = ym.department FULL JOIN
(SELECT department, psychological_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '01')
GROUP BY department, psychological_unsafe) AS psychological_uc ON psychological_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 7 as num, 'posture' as name, isnull(posture_ua.count,0) as ua, isnull(posture_uc.count,0) as uc, isnull(posture_sa.count,0) as sa, isnull(posture_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, posture_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (posture_safe = '10')
    GROUP BY department, posture_safe) as posture_sa ON posture_sa.department = ym.department FULL JOIN
(SELECT department, posture_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (posture_safe = '01')
GROUP BY department, posture_safe) AS posture_sc ON posture_sc.department = ym.department FULL JOIN
(SELECT department, posture_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '10')
GROUP BY department, posture_unsafe) AS posture_ua ON posture_ua.department = ym.department FULL JOIN
(SELECT department, posture_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '01')
GROUP BY department, posture_unsafe) AS posture_uc ON posture_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 8 as num, 'substance' as name, isnull(substance_ua.count,0) as ua, isnull(substance_uc.count,0) as uc, isnull(substance_sa.count,0) as sa, isnull(substance_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, substance_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substance_safe = '10')
    GROUP BY department, substance_safe) as substance_sa ON substance_sa.department = ym.department FULL JOIN
(SELECT department, substance_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substance_safe = '01')
GROUP BY department, substance_safe) AS substance_sc ON substance_sc.department = ym.department FULL JOIN
(SELECT department, substance_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '10')
GROUP BY department, substance_unsafe) AS substance_ua ON substance_ua.department = ym.department FULL JOIN
(SELECT department, substance_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '01')
GROUP BY department, substance_unsafe) AS substance_uc ON substance_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 9 as num, 'hygiene' as name, isnull(hygiene_ua.count,0) as ua, isnull(hygiene_uc.count,0) as uc, isnull(hygiene_sa.count,0) as sa, isnull(hygiene_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, hygiene_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hygiene_safe = '10')
    GROUP BY department, hygiene_safe) as hygiene_sa ON hygiene_sa.department = ym.department FULL JOIN
(SELECT department, hygiene_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hygiene_safe = '01')
GROUP BY department, hygiene_safe) AS hygiene_sc ON hygiene_sc.department = ym.department FULL JOIN
(SELECT department, hygiene_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '10')
GROUP BY department, hygiene_unsafe) AS hygiene_ua ON hygiene_ua.department = ym.department FULL JOIN
(SELECT department, hygiene_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '01')
GROUP BY department, hygiene_unsafe) AS hygiene_uc ON hygiene_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 10 as num, 'house' as name, isnull(house_ua.count,0) as ua, isnull(house_uc.count,0) as uc, isnull(house_sa.count,0) as sa, isnull(house_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, house_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (house_safe = '10')
    GROUP BY department, house_safe) as house_sa ON house_sa.department = ym.department FULL JOIN
(SELECT department, house_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (house_safe = '01')
GROUP BY department, house_safe) AS house_sc ON house_sc.department = ym.department FULL JOIN
(SELECT department, house_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '10')
GROUP BY department, house_unsafe) AS house_ua ON house_ua.department = ym.department FULL JOIN
(SELECT department, house_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '01')
GROUP BY department, house_unsafe) AS house_uc ON house_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 11 as num, 'standard' as name, isnull(standard_ua.count,0) as ua, isnull(standard_uc.count,0) as uc, isnull(standard_sa.count,0) as sa, isnull(standard_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, standard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (standard_safe = '10')
    GROUP BY department, standard_safe) as standard_sa ON standard_sa.department = ym.department FULL JOIN
(SELECT department, standard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (standard_safe = '01')
GROUP BY department, standard_safe) AS standard_sc ON standard_sc.department = ym.department FULL JOIN
(SELECT department, standard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '10')
GROUP BY department, standard_unsafe) AS standard_ua ON standard_ua.department = ym.department FULL JOIN
(SELECT department, standard_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '01')
GROUP BY department, standard_unsafe) AS standard_uc ON standard_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 12 as num, 'spill' as name, isnull(spill_ua.count,0) as ua, isnull(spill_uc.count,0) as uc, isnull(spill_sa.count,0) as sa, isnull(spill_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, spill_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (spill_safe = '10')
    GROUP BY department, spill_safe) as spill_sa ON spill_sa.department = ym.department FULL JOIN
(SELECT department, spill_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (spill_safe = '01')
GROUP BY department, spill_safe) AS spill_sc ON spill_sc.department = ym.department FULL JOIN
(SELECT department, spill_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '10')
GROUP BY department, spill_unsafe) AS spill_ua ON spill_ua.department = ym.department FULL JOIN
(SELECT department, spill_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '01')
GROUP BY department, spill_unsafe) AS spill_uc ON spill_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 13 as num, 'waste_energy' as name, isnull(waste_energy_ua.count,0) as ua, isnull(waste_energy_uc.count,0) as uc, isnull(waste_energy_sa.count,0) as sa, isnull(waste_energy_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, waste_energy_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (waste_energy_safe = '10')
    GROUP BY department, waste_energy_safe) as waste_energy_sa ON waste_energy_sa.department = ym.department FULL JOIN
(SELECT department, waste_energy_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (waste_energy_safe = '01')
GROUP BY department, waste_energy_safe) AS waste_energy_sc ON waste_energy_sc.department = ym.department FULL JOIN
(SELECT department, waste_energy_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '10')
GROUP BY department, waste_energy_unsafe) AS waste_energy_ua ON waste_energy_ua.department = ym.department FULL JOIN
(SELECT department, waste_energy_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '01')
GROUP BY department, waste_energy_unsafe) AS waste_energy_uc ON waste_energy_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 14 as num, 'containment' as name, isnull(containment_ua.count,0) as ua, isnull(containment_uc.count,0) as uc, isnull(containment_sa.count,0) as sa, isnull(containment_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, containment_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (containment_safe = '10')
    GROUP BY department, containment_safe) as containment_sa ON containment_sa.department = ym.department FULL JOIN
(SELECT department, containment_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (containment_safe = '01')
GROUP BY department, containment_safe) AS containment_sc ON containment_sc.department = ym.department FULL JOIN
(SELECT department, containment_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '10')
GROUP BY department, containment_unsafe) AS containment_ua ON containment_ua.department = ym.department FULL JOIN
(SELECT department, containment_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '01')
GROUP BY department, containment_unsafe) AS containment_uc ON containment_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 15 as num, 'absorbent' as name, isnull(absorbent_ua.count,0) as ua, isnull(absorbent_uc.count,0) as uc, isnull(absorbent_sa.count,0) as sa, isnull(absorbent_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, absorbent_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (absorbent_safe = '10')
    GROUP BY department, absorbent_safe) as absorbent_sa ON absorbent_sa.department = ym.department FULL JOIN
(SELECT department, absorbent_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (absorbent_safe = '01')
GROUP BY department, absorbent_safe) AS absorbent_sc ON absorbent_sc.department = ym.department FULL JOIN
(SELECT department, absorbent_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '10')
GROUP BY department, absorbent_unsafe) AS absorbent_ua ON absorbent_ua.department = ym.department FULL JOIN
(SELECT department, absorbent_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '01')
GROUP BY department, absorbent_unsafe) AS absorbent_uc ON absorbent_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 16 as num, 'hira' as name, isnull(hira_ua.count,0) as ua, isnull(hira_uc.count,0) as uc, isnull(hira_sa.count,0) as sa, isnull(hira_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, hira_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hira_safe = '10')
    GROUP BY department, hira_safe) as hira_sa ON hira_sa.department = ym.department FULL JOIN
(SELECT department, hira_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hira_safe = '01')
GROUP BY department, hira_safe) AS hira_sc ON hira_sc.department = ym.department FULL JOIN
(SELECT department, hira_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '10')
GROUP BY department, hira_unsafe) AS hira_ua ON hira_ua.department = ym.department FULL JOIN
(SELECT department, hira_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '01')
GROUP BY department, hira_unsafe) AS hira_uc ON hira_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 17 as num, 'ptw' as name, isnull(ptw_ua.count,0) as ua, isnull(ptw_uc.count,0) as uc, isnull(ptw_sa.count,0) as sa, isnull(ptw_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, ptw_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ptw_safe = '10')
    GROUP BY department, ptw_safe) as ptw_sa ON ptw_sa.department = ym.department FULL JOIN
(SELECT department, ptw_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ptw_safe = '01')
GROUP BY department, ptw_safe) AS ptw_sc ON ptw_sc.department = ym.department FULL JOIN
(SELECT department, ptw_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '10')
GROUP BY department, ptw_unsafe) AS ptw_ua ON ptw_ua.department = ym.department FULL JOIN
(SELECT department, ptw_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '01')
GROUP BY department, ptw_unsafe) AS ptw_uc ON ptw_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 18 as num, 'sop' as name, isnull(sop_ua.count,0) as ua, isnull(sop_uc.count,0) as uc, isnull(sop_sa.count,0) as sa, isnull(sop_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, sop_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (sop_safe = '10')
    GROUP BY department, sop_safe) as sop_sa ON sop_sa.department = ym.department FULL JOIN
(SELECT department, sop_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (sop_safe = '01')
GROUP BY department, sop_safe) AS sop_sc ON sop_sc.department = ym.department FULL JOIN
(SELECT department, sop_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '10')
GROUP BY department, sop_unsafe) AS sop_ua ON sop_ua.department = ym.department FULL JOIN
(SELECT department, sop_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '01')
GROUP BY department, sop_unsafe) AS sop_uc ON sop_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 19 as num, 'msds' as name, isnull(msds_ua.count,0) as ua, isnull(msds_uc.count,0) as uc, isnull(msds_sa.count,0) as sa, isnull(msds_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, msds_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (msds_safe = '10')
    GROUP BY department, msds_safe) as msds_sa ON msds_sa.department = ym.department FULL JOIN
(SELECT department, msds_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (msds_safe = '01')
GROUP BY department, msds_safe) AS msds_sc ON msds_sc.department = ym.department FULL JOIN
(SELECT department, msds_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '10')
GROUP BY department, msds_unsafe) AS msds_ua ON msds_ua.department = ym.department FULL JOIN
(SELECT department, msds_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '01')
GROUP BY department, msds_unsafe) AS msds_uc ON msds_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 20 as num, 'emergency' as name, isnull(emergency_ua.count,0) as ua, isnull(emergency_uc.count,0) as uc, isnull(emergency_sa.count,0) as sa, isnull(emergency_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, emergency_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (emergency_safe = '10')
    GROUP BY department, emergency_safe) as emergency_sa ON emergency_sa.department = ym.department FULL JOIN
(SELECT department, emergency_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (emergency_safe = '01')
GROUP BY department, emergency_safe) AS emergency_sc ON emergency_sc.department = ym.department FULL JOIN
(SELECT department, emergency_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '10')
GROUP BY department, emergency_unsafe) AS emergency_ua ON emergency_ua.department = ym.department FULL JOIN
(SELECT department, emergency_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '01')
GROUP BY department, emergency_unsafe) AS emergency_uc ON emergency_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 21 as num, 'certificates' as name, isnull(certificates_ua.count,0) as ua, isnull(certificates_uc.count,0) as uc, isnull(certificates_sa.count,0) as sa, isnull(certificates_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, certificates_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (certificates_safe = '10')
    GROUP BY department, certificates_safe) as certificates_sa ON certificates_sa.department = ym.department FULL JOIN
(SELECT department, certificates_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (certificates_safe = '01')
GROUP BY department, certificates_safe) AS certificates_sc ON certificates_sc.department = ym.department FULL JOIN
(SELECT department, certificates_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '10')
GROUP BY department, certificates_unsafe) AS certificates_ua ON certificates_ua.department = ym.department FULL JOIN
(SELECT department, certificates_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '01')
GROUP BY department, certificates_unsafe) AS certificates_uc ON certificates_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 22 as num, 'ppe' as name, isnull(ppe_ua.count,0) as ua, isnull(ppe_uc.count,0) as uc, isnull(ppe_sa.count,0) as sa, isnull(ppe_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, ppe_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ppe_safe = '10')
    GROUP BY department, ppe_safe) as ppe_sa ON ppe_sa.department = ym.department FULL JOIN
(SELECT department, ppe_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ppe_safe = '01')
GROUP BY department, ppe_safe) AS ppe_sc ON ppe_sc.department = ym.department FULL JOIN
(SELECT department, ppe_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '10')
GROUP BY department, ppe_unsafe) AS ppe_ua ON ppe_ua.department = ym.department FULL JOIN
(SELECT department, ppe_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '01')
GROUP BY department, ppe_unsafe) AS ppe_uc ON ppe_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 23 as num, 'hand' as name, isnull(hand_ua.count,0) as ua, isnull(hand_uc.count,0) as uc, isnull(hand_sa.count,0) as sa, isnull(hand_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, hand_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hand_safe = '10')
    GROUP BY department, hand_safe) as hand_sa ON hand_sa.department = ym.department FULL JOIN
(SELECT department, hand_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hand_safe = '01')
GROUP BY department, hand_safe) AS hand_sc ON hand_sc.department = ym.department FULL JOIN
(SELECT department, hand_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '10')
GROUP BY department, hand_unsafe) AS hand_ua ON hand_ua.department = ym.department FULL JOIN
(SELECT department, hand_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '01')
GROUP BY department, hand_unsafe) AS hand_uc ON hand_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 24 as num, 'mechanical' as name, isnull(mechanical_ua.count,0) as ua, isnull(mechanical_uc.count,0) as uc, isnull(mechanical_sa.count,0) as sa, isnull(mechanical_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, mechanical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (mechanical_safe = '10')
    GROUP BY department, mechanical_safe) as mechanical_sa ON mechanical_sa.department = ym.department FULL JOIN
(SELECT department, mechanical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (mechanical_safe = '01')
GROUP BY department, mechanical_safe) AS mechanical_sc ON mechanical_sc.department = ym.department FULL JOIN
(SELECT department, mechanical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '10')
GROUP BY department, mechanical_unsafe) AS mechanical_ua ON mechanical_ua.department = ym.department FULL JOIN
(SELECT department, mechanical_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '01')
GROUP BY department, mechanical_unsafe) AS mechanical_uc ON mechanical_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 25 as num, 'electrical' as name, isnull(electrical_ua.count,0) as ua, isnull(electrical_uc.count,0) as uc, isnull(electrical_sa.count,0) as sa, isnull(electrical_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, electrical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (electrical_safe = '10')
    GROUP BY department, electrical_safe) as electrical_sa ON electrical_sa.department = ym.department FULL JOIN
(SELECT department, electrical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (electrical_safe = '01')
GROUP BY department, electrical_safe) AS electrical_sc ON electrical_sc.department = ym.department FULL JOIN
(SELECT department, electrical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '10')
GROUP BY department, electrical_unsafe) AS electrical_ua ON electrical_ua.department = ym.department FULL JOIN
(SELECT department, electrical_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '01')
GROUP BY department, electrical_unsafe) AS electrical_uc ON electrical_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 26 as num, 'vehicular' as name, isnull(vehicular_ua.count,0) as ua, isnull(vehicular_uc.count,0) as uc, isnull(vehicular_sa.count,0) as sa, isnull(vehicular_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, vehicular_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (vehicular_safe = '10')
    GROUP BY department, vehicular_safe) as vehicular_sa ON vehicular_sa.department = ym.department FULL JOIN
(SELECT department, vehicular_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (vehicular_safe = '01')
GROUP BY department, vehicular_safe) AS vehicular_sc ON vehicular_sc.department = ym.department FULL JOIN
(SELECT department, vehicular_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '10')
GROUP BY department, vehicular_unsafe) AS vehicular_ua ON vehicular_ua.department = ym.department FULL JOIN
(SELECT department, vehicular_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '01')
GROUP BY department, vehicular_unsafe) AS vehicular_uc ON vehicular_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 27 as num, 'substandard' as name, isnull(substandard_ua.count,0) as ua, isnull(substandard_uc.count,0) as uc, isnull(substandard_sa.count,0) as sa, isnull(substandard_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, substandard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substandard_safe = '10')
    GROUP BY department, substandard_safe) as substandard_sa ON substandard_sa.department = ym.department FULL JOIN
(SELECT department, substandard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substandard_safe = '01')
GROUP BY department, substandard_safe) AS substandard_sc ON substandard_sc.department = ym.department FULL JOIN
(SELECT department, substandard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '10')
GROUP BY department, substandard_unsafe) AS substandard_ua ON substandard_ua.department = ym.department FULL JOIN
(SELECT department, substandard_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '01')
GROUP BY department, substandard_unsafe) AS substandard_uc ON substandard_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 28 as num, 'h2s' as name, isnull(h2s_ua.count,0) as ua, isnull(h2s_uc.count,0) as uc, isnull(h2s_sa.count,0) as sa, isnull(h2s_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, h2s_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (h2s_safe = '10')
    GROUP BY department, h2s_safe) as h2s_sa ON h2s_sa.department = ym.department FULL JOIN
(SELECT department, h2s_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (h2s_safe = '01')
GROUP BY department, h2s_safe) AS h2s_sc ON h2s_sc.department = ym.department FULL JOIN
(SELECT department, h2s_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '10')
GROUP BY department, h2s_unsafe) AS h2s_ua ON h2s_ua.department = ym.department FULL JOIN
(SELECT department, h2s_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '01')
GROUP BY department, h2s_unsafe) AS h2s_uc ON h2s_uc.department = ym.department
WHERE ym.department=@department
UNION
SELECT 29 as num, 'workplace_health' as name, isnull(workplace_health_ua.count,0) as ua, isnull(workplace_health_uc.count,0) as uc, isnull(workplace_health_sa.count,0) as sa, isnull(workplace_health_sc.count,0) as sc
FROM
(SELECT DISTINCT department
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, workplace_health_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (workplace_health_safe = '10')
    GROUP BY department, workplace_health_safe) as workplace_health_sa ON workplace_health_sa.department = ym.department FULL JOIN
(SELECT department, workplace_health_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (workplace_health_safe = '01')
GROUP BY department, workplace_health_safe) AS workplace_health_sc ON workplace_health_sc.department = ym.department FULL JOIN
(SELECT department, workplace_health_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '10')
GROUP BY department, workplace_health_unsafe) AS workplace_health_ua ON workplace_health_ua.department = ym.department FULL JOIN
(SELECT department, workplace_health_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '01')
GROUP BY department, workplace_health_unsafe) AS workplace_health_uc ON workplace_health_uc.department = ym.department
WHERE ym.department=@department
);

GO
/****** Object:  UserDefinedFunction [dbo].[observationChart12Month]    Script Date: 5/30/2013 9:01:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[observationChart12Month] (
	@year varchar(4),
    @month varchar(2)
)
RETURNS TABLE
AS
RETURN 
(
    SELECT 1 as num, 'accident' as name, isnull(accident_ua.count,0) as ua, isnull(accident_uc.count,0) as uc, isnull(accident_sa.count,0) as sa, isnull(accident_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, accident_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (accident_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), accident_safe) as accident_sa ON accident_sa.year = ym.year AND accident_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, accident_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (accident_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), accident_safe) AS accident_sc ON accident_sc.year = ym.year AND accident_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, accident_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), accident_unsafe) AS accident_ua ON accident_ua.year = ym.year AND accident_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, accident_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(accident_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), accident_unsafe) AS accident_uc ON accident_uc.year = ym.year AND accident_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 2 as num, 'fire' as name, isnull(fire_ua.count,0) as ua, isnull(fire_uc.count,0) as uc, isnull(fire_sa.count,0) as sa, isnull(fire_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, fire_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fire_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), fire_safe) as fire_sa ON fire_sa.year = ym.year AND fire_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, fire_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fire_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), fire_safe) AS fire_sc ON fire_sc.year = ym.year AND fire_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, fire_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), fire_unsafe) AS fire_ua ON fire_ua.year = ym.year AND fire_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, fire_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(fire_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), fire_unsafe) AS fire_uc ON fire_uc.year = ym.year AND fire_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 3 as num, 'prevention' as name, isnull(prevention_ua.count,0) as ua, isnull(prevention_uc.count,0) as uc, isnull(prevention_sa.count,0) as sa, isnull(prevention_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, prevention_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (prevention_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), prevention_safe) as prevention_sa ON prevention_sa.year = ym.year AND prevention_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, prevention_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (prevention_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), prevention_safe) AS prevention_sc ON prevention_sc.year = ym.year AND prevention_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, prevention_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), prevention_unsafe) AS prevention_ua ON prevention_ua.year = ym.year AND prevention_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, prevention_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(prevention_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), prevention_unsafe) AS prevention_uc ON prevention_uc.year = ym.year AND prevention_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 4 as num, 'supervisor' as name, isnull(supervisor_ua.count,0) as ua, isnull(supervisor_uc.count,0) as uc, isnull(supervisor_sa.count,0) as sa, isnull(supervisor_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, supervisor_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (supervisor_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), supervisor_safe) as supervisor_sa ON supervisor_sa.year = ym.year AND supervisor_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, supervisor_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (supervisor_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), supervisor_safe) AS supervisor_sc ON supervisor_sc.year = ym.year AND supervisor_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, supervisor_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), supervisor_unsafe) AS supervisor_ua ON supervisor_ua.year = ym.year AND supervisor_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, supervisor_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(supervisor_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), supervisor_unsafe) AS supervisor_uc ON supervisor_uc.year = ym.year AND supervisor_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 5 as num, 'fit_work' as name, isnull(fit_work_ua.count,0) as ua, isnull(fit_work_uc.count,0) as uc, isnull(fit_work_sa.count,0) as sa, isnull(fit_work_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, fit_work_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fit_work_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), fit_work_safe) as fit_work_sa ON fit_work_sa.year = ym.year AND fit_work_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, fit_work_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fit_work_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), fit_work_safe) AS fit_work_sc ON fit_work_sc.year = ym.year AND fit_work_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, fit_work_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), fit_work_unsafe) AS fit_work_ua ON fit_work_ua.year = ym.year AND fit_work_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, fit_work_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(fit_work_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), fit_work_unsafe) AS fit_work_uc ON fit_work_uc.year = ym.year AND fit_work_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 6 as num, 'psychological' as name, isnull(psychological_ua.count,0) as ua, isnull(psychological_uc.count,0) as uc, isnull(psychological_sa.count,0) as sa, isnull(psychological_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, psychological_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (psychological_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), psychological_safe) as psychological_sa ON psychological_sa.year = ym.year AND psychological_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, psychological_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (psychological_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), psychological_safe) AS psychological_sc ON psychological_sc.year = ym.year AND psychological_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, psychological_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), psychological_unsafe) AS psychological_ua ON psychological_ua.year = ym.year AND psychological_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, psychological_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(psychological_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), psychological_unsafe) AS psychological_uc ON psychological_uc.year = ym.year AND psychological_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 7 as num, 'posture' as name, isnull(posture_ua.count,0) as ua, isnull(posture_uc.count,0) as uc, isnull(posture_sa.count,0) as sa, isnull(posture_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, posture_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (posture_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), posture_safe) as posture_sa ON posture_sa.year = ym.year AND posture_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, posture_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (posture_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), posture_safe) AS posture_sc ON posture_sc.year = ym.year AND posture_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, posture_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), posture_unsafe) AS posture_ua ON posture_ua.year = ym.year AND posture_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, posture_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(posture_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), posture_unsafe) AS posture_uc ON posture_uc.year = ym.year AND posture_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 8 as num, 'substance' as name, isnull(substance_ua.count,0) as ua, isnull(substance_uc.count,0) as uc, isnull(substance_sa.count,0) as sa, isnull(substance_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, substance_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substance_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), substance_safe) as substance_sa ON substance_sa.year = ym.year AND substance_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, substance_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substance_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), substance_safe) AS substance_sc ON substance_sc.year = ym.year AND substance_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, substance_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), substance_unsafe) AS substance_ua ON substance_ua.year = ym.year AND substance_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, substance_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(substance_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), substance_unsafe) AS substance_uc ON substance_uc.year = ym.year AND substance_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 9 as num, 'hygiene' as name, isnull(hygiene_ua.count,0) as ua, isnull(hygiene_uc.count,0) as uc, isnull(hygiene_sa.count,0) as sa, isnull(hygiene_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hygiene_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hygiene_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), hygiene_safe) as hygiene_sa ON hygiene_sa.year = ym.year AND hygiene_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hygiene_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hygiene_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), hygiene_safe) AS hygiene_sc ON hygiene_sc.year = ym.year AND hygiene_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hygiene_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), hygiene_unsafe) AS hygiene_ua ON hygiene_ua.year = ym.year AND hygiene_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hygiene_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hygiene_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), hygiene_unsafe) AS hygiene_uc ON hygiene_uc.year = ym.year AND hygiene_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 10 as num, 'house' as name, isnull(house_ua.count,0) as ua, isnull(house_uc.count,0) as uc, isnull(house_sa.count,0) as sa, isnull(house_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, house_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (house_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), house_safe) as house_sa ON house_sa.year = ym.year AND house_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, house_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (house_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), house_safe) AS house_sc ON house_sc.year = ym.year AND house_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, house_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), house_unsafe) AS house_ua ON house_ua.year = ym.year AND house_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, house_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(house_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), house_unsafe) AS house_uc ON house_uc.year = ym.year AND house_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 11 as num, 'standard' as name, isnull(standard_ua.count,0) as ua, isnull(standard_uc.count,0) as uc, isnull(standard_sa.count,0) as sa, isnull(standard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, standard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (standard_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), standard_safe) as standard_sa ON standard_sa.year = ym.year AND standard_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, standard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (standard_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), standard_safe) AS standard_sc ON standard_sc.year = ym.year AND standard_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, standard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), standard_unsafe) AS standard_ua ON standard_ua.year = ym.year AND standard_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, standard_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(standard_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), standard_unsafe) AS standard_uc ON standard_uc.year = ym.year AND standard_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 12 as num, 'spill' as name, isnull(spill_ua.count,0) as ua, isnull(spill_uc.count,0) as uc, isnull(spill_sa.count,0) as sa, isnull(spill_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, spill_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (spill_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), spill_safe) as spill_sa ON spill_sa.year = ym.year AND spill_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, spill_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (spill_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), spill_safe) AS spill_sc ON spill_sc.year = ym.year AND spill_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, spill_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), spill_unsafe) AS spill_ua ON spill_ua.year = ym.year AND spill_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, spill_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(spill_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), spill_unsafe) AS spill_uc ON spill_uc.year = ym.year AND spill_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 13 as num, 'waste_energy' as name, isnull(waste_energy_ua.count,0) as ua, isnull(waste_energy_uc.count,0) as uc, isnull(waste_energy_sa.count,0) as sa, isnull(waste_energy_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, waste_energy_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (waste_energy_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_safe) as waste_energy_sa ON waste_energy_sa.year = ym.year AND waste_energy_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, waste_energy_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (waste_energy_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_safe) AS waste_energy_sc ON waste_energy_sc.year = ym.year AND waste_energy_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, waste_energy_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_unsafe) AS waste_energy_ua ON waste_energy_ua.year = ym.year AND waste_energy_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, waste_energy_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(waste_energy_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), waste_energy_unsafe) AS waste_energy_uc ON waste_energy_uc.year = ym.year AND waste_energy_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 14 as num, 'containment' as name, isnull(containment_ua.count,0) as ua, isnull(containment_uc.count,0) as uc, isnull(containment_sa.count,0) as sa, isnull(containment_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, containment_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (containment_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), containment_safe) as containment_sa ON containment_sa.year = ym.year AND containment_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, containment_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (containment_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), containment_safe) AS containment_sc ON containment_sc.year = ym.year AND containment_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, containment_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), containment_unsafe) AS containment_ua ON containment_ua.year = ym.year AND containment_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, containment_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(containment_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), containment_unsafe) AS containment_uc ON containment_uc.year = ym.year AND containment_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 15 as num, 'absorbent' as name, isnull(absorbent_ua.count,0) as ua, isnull(absorbent_uc.count,0) as uc, isnull(absorbent_sa.count,0) as sa, isnull(absorbent_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, absorbent_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (absorbent_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), absorbent_safe) as absorbent_sa ON absorbent_sa.year = ym.year AND absorbent_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, absorbent_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (absorbent_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), absorbent_safe) AS absorbent_sc ON absorbent_sc.year = ym.year AND absorbent_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, absorbent_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), absorbent_unsafe) AS absorbent_ua ON absorbent_ua.year = ym.year AND absorbent_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, absorbent_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(absorbent_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), absorbent_unsafe) AS absorbent_uc ON absorbent_uc.year = ym.year AND absorbent_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 16 as num, 'hira' as name, isnull(hira_ua.count,0) as ua, isnull(hira_uc.count,0) as uc, isnull(hira_sa.count,0) as sa, isnull(hira_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hira_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hira_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), hira_safe) as hira_sa ON hira_sa.year = ym.year AND hira_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hira_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hira_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), hira_safe) AS hira_sc ON hira_sc.year = ym.year AND hira_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hira_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), hira_unsafe) AS hira_ua ON hira_ua.year = ym.year AND hira_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hira_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hira_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), hira_unsafe) AS hira_uc ON hira_uc.year = ym.year AND hira_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 17 as num, 'ptw' as name, isnull(ptw_ua.count,0) as ua, isnull(ptw_uc.count,0) as uc, isnull(ptw_sa.count,0) as sa, isnull(ptw_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, ptw_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ptw_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), ptw_safe) as ptw_sa ON ptw_sa.year = ym.year AND ptw_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, ptw_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ptw_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), ptw_safe) AS ptw_sc ON ptw_sc.year = ym.year AND ptw_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, ptw_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), ptw_unsafe) AS ptw_ua ON ptw_ua.year = ym.year AND ptw_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, ptw_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(ptw_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), ptw_unsafe) AS ptw_uc ON ptw_uc.year = ym.year AND ptw_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 18 as num, 'sop' as name, isnull(sop_ua.count,0) as ua, isnull(sop_uc.count,0) as uc, isnull(sop_sa.count,0) as sa, isnull(sop_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, sop_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (sop_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), sop_safe) as sop_sa ON sop_sa.year = ym.year AND sop_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, sop_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (sop_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), sop_safe) AS sop_sc ON sop_sc.year = ym.year AND sop_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, sop_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), sop_unsafe) AS sop_ua ON sop_ua.year = ym.year AND sop_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, sop_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(sop_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), sop_unsafe) AS sop_uc ON sop_uc.year = ym.year AND sop_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 19 as num, 'msds' as name, isnull(msds_ua.count,0) as ua, isnull(msds_uc.count,0) as uc, isnull(msds_sa.count,0) as sa, isnull(msds_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, msds_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (msds_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), msds_safe) as msds_sa ON msds_sa.year = ym.year AND msds_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, msds_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (msds_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), msds_safe) AS msds_sc ON msds_sc.year = ym.year AND msds_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, msds_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), msds_unsafe) AS msds_ua ON msds_ua.year = ym.year AND msds_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, msds_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(msds_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), msds_unsafe) AS msds_uc ON msds_uc.year = ym.year AND msds_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 20 as num, 'emergency' as name, isnull(emergency_ua.count,0) as ua, isnull(emergency_uc.count,0) as uc, isnull(emergency_sa.count,0) as sa, isnull(emergency_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, emergency_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (emergency_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), emergency_safe) as emergency_sa ON emergency_sa.year = ym.year AND emergency_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, emergency_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (emergency_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), emergency_safe) AS emergency_sc ON emergency_sc.year = ym.year AND emergency_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, emergency_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), emergency_unsafe) AS emergency_ua ON emergency_ua.year = ym.year AND emergency_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, emergency_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(emergency_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), emergency_unsafe) AS emergency_uc ON emergency_uc.year = ym.year AND emergency_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 21 as num, 'certificates' as name, isnull(certificates_ua.count,0) as ua, isnull(certificates_uc.count,0) as uc, isnull(certificates_sa.count,0) as sa, isnull(certificates_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, certificates_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (certificates_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), certificates_safe) as certificates_sa ON certificates_sa.year = ym.year AND certificates_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, certificates_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (certificates_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), certificates_safe) AS certificates_sc ON certificates_sc.year = ym.year AND certificates_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, certificates_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), certificates_unsafe) AS certificates_ua ON certificates_ua.year = ym.year AND certificates_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, certificates_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(certificates_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), certificates_unsafe) AS certificates_uc ON certificates_uc.year = ym.year AND certificates_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 22 as num, 'ppe' as name, isnull(ppe_ua.count,0) as ua, isnull(ppe_uc.count,0) as uc, isnull(ppe_sa.count,0) as sa, isnull(ppe_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, ppe_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ppe_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), ppe_safe) as ppe_sa ON ppe_sa.year = ym.year AND ppe_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, ppe_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ppe_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), ppe_safe) AS ppe_sc ON ppe_sc.year = ym.year AND ppe_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, ppe_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), ppe_unsafe) AS ppe_ua ON ppe_ua.year = ym.year AND ppe_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, ppe_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(ppe_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), ppe_unsafe) AS ppe_uc ON ppe_uc.year = ym.year AND ppe_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 23 as num, 'hand' as name, isnull(hand_ua.count,0) as ua, isnull(hand_uc.count,0) as uc, isnull(hand_sa.count,0) as sa, isnull(hand_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hand_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hand_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), hand_safe) as hand_sa ON hand_sa.year = ym.year AND hand_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hand_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hand_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), hand_safe) AS hand_sc ON hand_sc.year = ym.year AND hand_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hand_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), hand_unsafe) AS hand_ua ON hand_ua.year = ym.year AND hand_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, hand_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(hand_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), hand_unsafe) AS hand_uc ON hand_uc.year = ym.year AND hand_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 24 as num, 'mechanical' as name, isnull(mechanical_ua.count,0) as ua, isnull(mechanical_uc.count,0) as uc, isnull(mechanical_sa.count,0) as sa, isnull(mechanical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, mechanical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (mechanical_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), mechanical_safe) as mechanical_sa ON mechanical_sa.year = ym.year AND mechanical_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, mechanical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (mechanical_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), mechanical_safe) AS mechanical_sc ON mechanical_sc.year = ym.year AND mechanical_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, mechanical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), mechanical_unsafe) AS mechanical_ua ON mechanical_ua.year = ym.year AND mechanical_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, mechanical_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(mechanical_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), mechanical_unsafe) AS mechanical_uc ON mechanical_uc.year = ym.year AND mechanical_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 25 as num, 'electrical' as name, isnull(electrical_ua.count,0) as ua, isnull(electrical_uc.count,0) as uc, isnull(electrical_sa.count,0) as sa, isnull(electrical_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, electrical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (electrical_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), electrical_safe) as electrical_sa ON electrical_sa.year = ym.year AND electrical_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, electrical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (electrical_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), electrical_safe) AS electrical_sc ON electrical_sc.year = ym.year AND electrical_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, electrical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), electrical_unsafe) AS electrical_ua ON electrical_ua.year = ym.year AND electrical_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, electrical_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(electrical_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), electrical_unsafe) AS electrical_uc ON electrical_uc.year = ym.year AND electrical_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 26 as num, 'vehicular' as name, isnull(vehicular_ua.count,0) as ua, isnull(vehicular_uc.count,0) as uc, isnull(vehicular_sa.count,0) as sa, isnull(vehicular_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, vehicular_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (vehicular_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), vehicular_safe) as vehicular_sa ON vehicular_sa.year = ym.year AND vehicular_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, vehicular_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (vehicular_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), vehicular_safe) AS vehicular_sc ON vehicular_sc.year = ym.year AND vehicular_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, vehicular_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), vehicular_unsafe) AS vehicular_ua ON vehicular_ua.year = ym.year AND vehicular_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, vehicular_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(vehicular_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), vehicular_unsafe) AS vehicular_uc ON vehicular_uc.year = ym.year AND vehicular_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 27 as num, 'substandard' as name, isnull(substandard_ua.count,0) as ua, isnull(substandard_uc.count,0) as uc, isnull(substandard_sa.count,0) as sa, isnull(substandard_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, substandard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substandard_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), substandard_safe) as substandard_sa ON substandard_sa.year = ym.year AND substandard_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, substandard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substandard_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), substandard_safe) AS substandard_sc ON substandard_sc.year = ym.year AND substandard_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, substandard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), substandard_unsafe) AS substandard_ua ON substandard_ua.year = ym.year AND substandard_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, substandard_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(substandard_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), substandard_unsafe) AS substandard_uc ON substandard_uc.year = ym.year AND substandard_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 28 as num, 'h2s' as name, isnull(h2s_ua.count,0) as ua, isnull(h2s_uc.count,0) as uc, isnull(h2s_sa.count,0) as sa, isnull(h2s_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, h2s_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (h2s_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), h2s_safe) as h2s_sa ON h2s_sa.year = ym.year AND h2s_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, h2s_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (h2s_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), h2s_safe) AS h2s_sc ON h2s_sc.year = ym.year AND h2s_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, h2s_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), h2s_unsafe) AS h2s_ua ON h2s_ua.year = ym.year AND h2s_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, h2s_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(h2s_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), h2s_unsafe) AS h2s_uc ON h2s_uc.year = ym.year AND h2s_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
UNION
SELECT 29 as num, 'workplace_health' as name, isnull(workplace_health_ua.count,0) as ua, isnull(workplace_health_uc.count,0) as uc, isnull(workplace_health_sa.count,0) as sa, isnull(workplace_health_sc.count,0) as sc
FROM
(SELECT DISTINCT YEAR(date_time) AS year, MONTH(date_time) as month
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, workplace_health_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (workplace_health_safe = '10')
    GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_safe) as workplace_health_sa ON workplace_health_sa.year = ym.year AND workplace_health_sa.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, workplace_health_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (workplace_health_safe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_safe) AS workplace_health_sc ON workplace_health_sc.year = ym.year AND workplace_health_sc.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, workplace_health_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '10')
GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_unsafe) AS workplace_health_ua ON workplace_health_ua.year = ym.year AND workplace_health_ua.month = ym.month FULL JOIN
(SELECT YEAR(date_time) AS year, MONTH(date_time) as month, workplace_health_unsafe AS auc, COUNT(id) AS count
    FROM	she_observation AS she_observation_1
    WHERE	(workplace_health_unsafe = '01')
GROUP BY YEAR(date_time), MONTH(date_time), workplace_health_unsafe) AS workplace_health_uc ON workplace_health_uc.year = ym.year AND workplace_health_uc.month = ym.month
WHERE ym.year=@year AND ym.month=@month
);

GO
/****** Object:  UserDefinedFunction [dbo].[observationChart12Observer]    Script Date: 5/30/2013 9:01:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[observationChart12Observer] (
    @observer varchar(255)
)
RETURNS TABLE
AS
RETURN 
(
    SELECT 1 as num, 'accident' as name, isnull(accident_ua.count,0) as ua, isnull(accident_uc.count,0) as uc, isnull(accident_sa.count,0) as sa, isnull(accident_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, accident_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (accident_safe = '10')
    GROUP BY observer, accident_safe) as accident_sa ON accident_sa.observer = ym.observer FULL JOIN
(SELECT observer, accident_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (accident_safe = '01')
GROUP BY observer, accident_safe) AS accident_sc ON accident_sc.observer = ym.observer FULL JOIN
(SELECT observer, accident_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '10')
GROUP BY observer, accident_unsafe) AS accident_ua ON accident_ua.observer = ym.observer FULL JOIN
(SELECT observer, accident_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '01')
GROUP BY observer, accident_unsafe) AS accident_uc ON accident_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 2 as num, 'fire' as name, isnull(fire_ua.count,0) as ua, isnull(fire_uc.count,0) as uc, isnull(fire_sa.count,0) as sa, isnull(fire_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, fire_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fire_safe = '10')
    GROUP BY observer, fire_safe) as fire_sa ON fire_sa.observer = ym.observer FULL JOIN
(SELECT observer, fire_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fire_safe = '01')
GROUP BY observer, fire_safe) AS fire_sc ON fire_sc.observer = ym.observer FULL JOIN
(SELECT observer, fire_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '10')
GROUP BY observer, fire_unsafe) AS fire_ua ON fire_ua.observer = ym.observer FULL JOIN
(SELECT observer, fire_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '01')
GROUP BY observer, fire_unsafe) AS fire_uc ON fire_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 3 as num, 'prevention' as name, isnull(prevention_ua.count,0) as ua, isnull(prevention_uc.count,0) as uc, isnull(prevention_sa.count,0) as sa, isnull(prevention_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, prevention_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (prevention_safe = '10')
    GROUP BY observer, prevention_safe) as prevention_sa ON prevention_sa.observer = ym.observer FULL JOIN
(SELECT observer, prevention_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (prevention_safe = '01')
GROUP BY observer, prevention_safe) AS prevention_sc ON prevention_sc.observer = ym.observer FULL JOIN
(SELECT observer, prevention_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '10')
GROUP BY observer, prevention_unsafe) AS prevention_ua ON prevention_ua.observer = ym.observer FULL JOIN
(SELECT observer, prevention_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '01')
GROUP BY observer, prevention_unsafe) AS prevention_uc ON prevention_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 4 as num, 'supervisor' as name, isnull(supervisor_ua.count,0) as ua, isnull(supervisor_uc.count,0) as uc, isnull(supervisor_sa.count,0) as sa, isnull(supervisor_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, supervisor_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (supervisor_safe = '10')
    GROUP BY observer, supervisor_safe) as supervisor_sa ON supervisor_sa.observer = ym.observer FULL JOIN
(SELECT observer, supervisor_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (supervisor_safe = '01')
GROUP BY observer, supervisor_safe) AS supervisor_sc ON supervisor_sc.observer = ym.observer FULL JOIN
(SELECT observer, supervisor_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '10')
GROUP BY observer, supervisor_unsafe) AS supervisor_ua ON supervisor_ua.observer = ym.observer FULL JOIN
(SELECT observer, supervisor_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '01')
GROUP BY observer, supervisor_unsafe) AS supervisor_uc ON supervisor_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 5 as num, 'fit_work' as name, isnull(fit_work_ua.count,0) as ua, isnull(fit_work_uc.count,0) as uc, isnull(fit_work_sa.count,0) as sa, isnull(fit_work_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, fit_work_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fit_work_safe = '10')
    GROUP BY observer, fit_work_safe) as fit_work_sa ON fit_work_sa.observer = ym.observer FULL JOIN
(SELECT observer, fit_work_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fit_work_safe = '01')
GROUP BY observer, fit_work_safe) AS fit_work_sc ON fit_work_sc.observer = ym.observer FULL JOIN
(SELECT observer, fit_work_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '10')
GROUP BY observer, fit_work_unsafe) AS fit_work_ua ON fit_work_ua.observer = ym.observer FULL JOIN
(SELECT observer, fit_work_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '01')
GROUP BY observer, fit_work_unsafe) AS fit_work_uc ON fit_work_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 6 as num, 'psychological' as name, isnull(psychological_ua.count,0) as ua, isnull(psychological_uc.count,0) as uc, isnull(psychological_sa.count,0) as sa, isnull(psychological_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, psychological_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (psychological_safe = '10')
    GROUP BY observer, psychological_safe) as psychological_sa ON psychological_sa.observer = ym.observer FULL JOIN
(SELECT observer, psychological_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (psychological_safe = '01')
GROUP BY observer, psychological_safe) AS psychological_sc ON psychological_sc.observer = ym.observer FULL JOIN
(SELECT observer, psychological_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '10')
GROUP BY observer, psychological_unsafe) AS psychological_ua ON psychological_ua.observer = ym.observer FULL JOIN
(SELECT observer, psychological_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '01')
GROUP BY observer, psychological_unsafe) AS psychological_uc ON psychological_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 7 as num, 'posture' as name, isnull(posture_ua.count,0) as ua, isnull(posture_uc.count,0) as uc, isnull(posture_sa.count,0) as sa, isnull(posture_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, posture_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (posture_safe = '10')
    GROUP BY observer, posture_safe) as posture_sa ON posture_sa.observer = ym.observer FULL JOIN
(SELECT observer, posture_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (posture_safe = '01')
GROUP BY observer, posture_safe) AS posture_sc ON posture_sc.observer = ym.observer FULL JOIN
(SELECT observer, posture_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '10')
GROUP BY observer, posture_unsafe) AS posture_ua ON posture_ua.observer = ym.observer FULL JOIN
(SELECT observer, posture_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '01')
GROUP BY observer, posture_unsafe) AS posture_uc ON posture_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 8 as num, 'substance' as name, isnull(substance_ua.count,0) as ua, isnull(substance_uc.count,0) as uc, isnull(substance_sa.count,0) as sa, isnull(substance_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, substance_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substance_safe = '10')
    GROUP BY observer, substance_safe) as substance_sa ON substance_sa.observer = ym.observer FULL JOIN
(SELECT observer, substance_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substance_safe = '01')
GROUP BY observer, substance_safe) AS substance_sc ON substance_sc.observer = ym.observer FULL JOIN
(SELECT observer, substance_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '10')
GROUP BY observer, substance_unsafe) AS substance_ua ON substance_ua.observer = ym.observer FULL JOIN
(SELECT observer, substance_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '01')
GROUP BY observer, substance_unsafe) AS substance_uc ON substance_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 9 as num, 'hygiene' as name, isnull(hygiene_ua.count,0) as ua, isnull(hygiene_uc.count,0) as uc, isnull(hygiene_sa.count,0) as sa, isnull(hygiene_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, hygiene_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hygiene_safe = '10')
    GROUP BY observer, hygiene_safe) as hygiene_sa ON hygiene_sa.observer = ym.observer FULL JOIN
(SELECT observer, hygiene_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hygiene_safe = '01')
GROUP BY observer, hygiene_safe) AS hygiene_sc ON hygiene_sc.observer = ym.observer FULL JOIN
(SELECT observer, hygiene_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '10')
GROUP BY observer, hygiene_unsafe) AS hygiene_ua ON hygiene_ua.observer = ym.observer FULL JOIN
(SELECT observer, hygiene_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '01')
GROUP BY observer, hygiene_unsafe) AS hygiene_uc ON hygiene_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 10 as num, 'house' as name, isnull(house_ua.count,0) as ua, isnull(house_uc.count,0) as uc, isnull(house_sa.count,0) as sa, isnull(house_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, house_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (house_safe = '10')
    GROUP BY observer, house_safe) as house_sa ON house_sa.observer = ym.observer FULL JOIN
(SELECT observer, house_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (house_safe = '01')
GROUP BY observer, house_safe) AS house_sc ON house_sc.observer = ym.observer FULL JOIN
(SELECT observer, house_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '10')
GROUP BY observer, house_unsafe) AS house_ua ON house_ua.observer = ym.observer FULL JOIN
(SELECT observer, house_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '01')
GROUP BY observer, house_unsafe) AS house_uc ON house_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 11 as num, 'standard' as name, isnull(standard_ua.count,0) as ua, isnull(standard_uc.count,0) as uc, isnull(standard_sa.count,0) as sa, isnull(standard_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, standard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (standard_safe = '10')
    GROUP BY observer, standard_safe) as standard_sa ON standard_sa.observer = ym.observer FULL JOIN
(SELECT observer, standard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (standard_safe = '01')
GROUP BY observer, standard_safe) AS standard_sc ON standard_sc.observer = ym.observer FULL JOIN
(SELECT observer, standard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '10')
GROUP BY observer, standard_unsafe) AS standard_ua ON standard_ua.observer = ym.observer FULL JOIN
(SELECT observer, standard_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '01')
GROUP BY observer, standard_unsafe) AS standard_uc ON standard_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 12 as num, 'spill' as name, isnull(spill_ua.count,0) as ua, isnull(spill_uc.count,0) as uc, isnull(spill_sa.count,0) as sa, isnull(spill_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, spill_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (spill_safe = '10')
    GROUP BY observer, spill_safe) as spill_sa ON spill_sa.observer = ym.observer FULL JOIN
(SELECT observer, spill_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (spill_safe = '01')
GROUP BY observer, spill_safe) AS spill_sc ON spill_sc.observer = ym.observer FULL JOIN
(SELECT observer, spill_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '10')
GROUP BY observer, spill_unsafe) AS spill_ua ON spill_ua.observer = ym.observer FULL JOIN
(SELECT observer, spill_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '01')
GROUP BY observer, spill_unsafe) AS spill_uc ON spill_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 13 as num, 'waste_energy' as name, isnull(waste_energy_ua.count,0) as ua, isnull(waste_energy_uc.count,0) as uc, isnull(waste_energy_sa.count,0) as sa, isnull(waste_energy_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, waste_energy_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (waste_energy_safe = '10')
    GROUP BY observer, waste_energy_safe) as waste_energy_sa ON waste_energy_sa.observer = ym.observer FULL JOIN
(SELECT observer, waste_energy_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (waste_energy_safe = '01')
GROUP BY observer, waste_energy_safe) AS waste_energy_sc ON waste_energy_sc.observer = ym.observer FULL JOIN
(SELECT observer, waste_energy_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '10')
GROUP BY observer, waste_energy_unsafe) AS waste_energy_ua ON waste_energy_ua.observer = ym.observer FULL JOIN
(SELECT observer, waste_energy_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '01')
GROUP BY observer, waste_energy_unsafe) AS waste_energy_uc ON waste_energy_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 14 as num, 'containment' as name, isnull(containment_ua.count,0) as ua, isnull(containment_uc.count,0) as uc, isnull(containment_sa.count,0) as sa, isnull(containment_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, containment_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (containment_safe = '10')
    GROUP BY observer, containment_safe) as containment_sa ON containment_sa.observer = ym.observer FULL JOIN
(SELECT observer, containment_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (containment_safe = '01')
GROUP BY observer, containment_safe) AS containment_sc ON containment_sc.observer = ym.observer FULL JOIN
(SELECT observer, containment_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '10')
GROUP BY observer, containment_unsafe) AS containment_ua ON containment_ua.observer = ym.observer FULL JOIN
(SELECT observer, containment_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '01')
GROUP BY observer, containment_unsafe) AS containment_uc ON containment_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 15 as num, 'absorbent' as name, isnull(absorbent_ua.count,0) as ua, isnull(absorbent_uc.count,0) as uc, isnull(absorbent_sa.count,0) as sa, isnull(absorbent_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, absorbent_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (absorbent_safe = '10')
    GROUP BY observer, absorbent_safe) as absorbent_sa ON absorbent_sa.observer = ym.observer FULL JOIN
(SELECT observer, absorbent_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (absorbent_safe = '01')
GROUP BY observer, absorbent_safe) AS absorbent_sc ON absorbent_sc.observer = ym.observer FULL JOIN
(SELECT observer, absorbent_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '10')
GROUP BY observer, absorbent_unsafe) AS absorbent_ua ON absorbent_ua.observer = ym.observer FULL JOIN
(SELECT observer, absorbent_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '01')
GROUP BY observer, absorbent_unsafe) AS absorbent_uc ON absorbent_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 16 as num, 'hira' as name, isnull(hira_ua.count,0) as ua, isnull(hira_uc.count,0) as uc, isnull(hira_sa.count,0) as sa, isnull(hira_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, hira_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hira_safe = '10')
    GROUP BY observer, hira_safe) as hira_sa ON hira_sa.observer = ym.observer FULL JOIN
(SELECT observer, hira_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hira_safe = '01')
GROUP BY observer, hira_safe) AS hira_sc ON hira_sc.observer = ym.observer FULL JOIN
(SELECT observer, hira_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '10')
GROUP BY observer, hira_unsafe) AS hira_ua ON hira_ua.observer = ym.observer FULL JOIN
(SELECT observer, hira_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '01')
GROUP BY observer, hira_unsafe) AS hira_uc ON hira_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 17 as num, 'ptw' as name, isnull(ptw_ua.count,0) as ua, isnull(ptw_uc.count,0) as uc, isnull(ptw_sa.count,0) as sa, isnull(ptw_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, ptw_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ptw_safe = '10')
    GROUP BY observer, ptw_safe) as ptw_sa ON ptw_sa.observer = ym.observer FULL JOIN
(SELECT observer, ptw_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ptw_safe = '01')
GROUP BY observer, ptw_safe) AS ptw_sc ON ptw_sc.observer = ym.observer FULL JOIN
(SELECT observer, ptw_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '10')
GROUP BY observer, ptw_unsafe) AS ptw_ua ON ptw_ua.observer = ym.observer FULL JOIN
(SELECT observer, ptw_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '01')
GROUP BY observer, ptw_unsafe) AS ptw_uc ON ptw_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 18 as num, 'sop' as name, isnull(sop_ua.count,0) as ua, isnull(sop_uc.count,0) as uc, isnull(sop_sa.count,0) as sa, isnull(sop_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, sop_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (sop_safe = '10')
    GROUP BY observer, sop_safe) as sop_sa ON sop_sa.observer = ym.observer FULL JOIN
(SELECT observer, sop_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (sop_safe = '01')
GROUP BY observer, sop_safe) AS sop_sc ON sop_sc.observer = ym.observer FULL JOIN
(SELECT observer, sop_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '10')
GROUP BY observer, sop_unsafe) AS sop_ua ON sop_ua.observer = ym.observer FULL JOIN
(SELECT observer, sop_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '01')
GROUP BY observer, sop_unsafe) AS sop_uc ON sop_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 19 as num, 'msds' as name, isnull(msds_ua.count,0) as ua, isnull(msds_uc.count,0) as uc, isnull(msds_sa.count,0) as sa, isnull(msds_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, msds_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (msds_safe = '10')
    GROUP BY observer, msds_safe) as msds_sa ON msds_sa.observer = ym.observer FULL JOIN
(SELECT observer, msds_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (msds_safe = '01')
GROUP BY observer, msds_safe) AS msds_sc ON msds_sc.observer = ym.observer FULL JOIN
(SELECT observer, msds_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '10')
GROUP BY observer, msds_unsafe) AS msds_ua ON msds_ua.observer = ym.observer FULL JOIN
(SELECT observer, msds_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '01')
GROUP BY observer, msds_unsafe) AS msds_uc ON msds_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 20 as num, 'emergency' as name, isnull(emergency_ua.count,0) as ua, isnull(emergency_uc.count,0) as uc, isnull(emergency_sa.count,0) as sa, isnull(emergency_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, emergency_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (emergency_safe = '10')
    GROUP BY observer, emergency_safe) as emergency_sa ON emergency_sa.observer = ym.observer FULL JOIN
(SELECT observer, emergency_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (emergency_safe = '01')
GROUP BY observer, emergency_safe) AS emergency_sc ON emergency_sc.observer = ym.observer FULL JOIN
(SELECT observer, emergency_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '10')
GROUP BY observer, emergency_unsafe) AS emergency_ua ON emergency_ua.observer = ym.observer FULL JOIN
(SELECT observer, emergency_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '01')
GROUP BY observer, emergency_unsafe) AS emergency_uc ON emergency_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 21 as num, 'certificates' as name, isnull(certificates_ua.count,0) as ua, isnull(certificates_uc.count,0) as uc, isnull(certificates_sa.count,0) as sa, isnull(certificates_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, certificates_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (certificates_safe = '10')
    GROUP BY observer, certificates_safe) as certificates_sa ON certificates_sa.observer = ym.observer FULL JOIN
(SELECT observer, certificates_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (certificates_safe = '01')
GROUP BY observer, certificates_safe) AS certificates_sc ON certificates_sc.observer = ym.observer FULL JOIN
(SELECT observer, certificates_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '10')
GROUP BY observer, certificates_unsafe) AS certificates_ua ON certificates_ua.observer = ym.observer FULL JOIN
(SELECT observer, certificates_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '01')
GROUP BY observer, certificates_unsafe) AS certificates_uc ON certificates_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 22 as num, 'ppe' as name, isnull(ppe_ua.count,0) as ua, isnull(ppe_uc.count,0) as uc, isnull(ppe_sa.count,0) as sa, isnull(ppe_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, ppe_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ppe_safe = '10')
    GROUP BY observer, ppe_safe) as ppe_sa ON ppe_sa.observer = ym.observer FULL JOIN
(SELECT observer, ppe_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ppe_safe = '01')
GROUP BY observer, ppe_safe) AS ppe_sc ON ppe_sc.observer = ym.observer FULL JOIN
(SELECT observer, ppe_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '10')
GROUP BY observer, ppe_unsafe) AS ppe_ua ON ppe_ua.observer = ym.observer FULL JOIN
(SELECT observer, ppe_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '01')
GROUP BY observer, ppe_unsafe) AS ppe_uc ON ppe_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 23 as num, 'hand' as name, isnull(hand_ua.count,0) as ua, isnull(hand_uc.count,0) as uc, isnull(hand_sa.count,0) as sa, isnull(hand_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, hand_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hand_safe = '10')
    GROUP BY observer, hand_safe) as hand_sa ON hand_sa.observer = ym.observer FULL JOIN
(SELECT observer, hand_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hand_safe = '01')
GROUP BY observer, hand_safe) AS hand_sc ON hand_sc.observer = ym.observer FULL JOIN
(SELECT observer, hand_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '10')
GROUP BY observer, hand_unsafe) AS hand_ua ON hand_ua.observer = ym.observer FULL JOIN
(SELECT observer, hand_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '01')
GROUP BY observer, hand_unsafe) AS hand_uc ON hand_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 24 as num, 'mechanical' as name, isnull(mechanical_ua.count,0) as ua, isnull(mechanical_uc.count,0) as uc, isnull(mechanical_sa.count,0) as sa, isnull(mechanical_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, mechanical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (mechanical_safe = '10')
    GROUP BY observer, mechanical_safe) as mechanical_sa ON mechanical_sa.observer = ym.observer FULL JOIN
(SELECT observer, mechanical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (mechanical_safe = '01')
GROUP BY observer, mechanical_safe) AS mechanical_sc ON mechanical_sc.observer = ym.observer FULL JOIN
(SELECT observer, mechanical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '10')
GROUP BY observer, mechanical_unsafe) AS mechanical_ua ON mechanical_ua.observer = ym.observer FULL JOIN
(SELECT observer, mechanical_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '01')
GROUP BY observer, mechanical_unsafe) AS mechanical_uc ON mechanical_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 25 as num, 'electrical' as name, isnull(electrical_ua.count,0) as ua, isnull(electrical_uc.count,0) as uc, isnull(electrical_sa.count,0) as sa, isnull(electrical_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, electrical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (electrical_safe = '10')
    GROUP BY observer, electrical_safe) as electrical_sa ON electrical_sa.observer = ym.observer FULL JOIN
(SELECT observer, electrical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (electrical_safe = '01')
GROUP BY observer, electrical_safe) AS electrical_sc ON electrical_sc.observer = ym.observer FULL JOIN
(SELECT observer, electrical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '10')
GROUP BY observer, electrical_unsafe) AS electrical_ua ON electrical_ua.observer = ym.observer FULL JOIN
(SELECT observer, electrical_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '01')
GROUP BY observer, electrical_unsafe) AS electrical_uc ON electrical_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 26 as num, 'vehicular' as name, isnull(vehicular_ua.count,0) as ua, isnull(vehicular_uc.count,0) as uc, isnull(vehicular_sa.count,0) as sa, isnull(vehicular_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, vehicular_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (vehicular_safe = '10')
    GROUP BY observer, vehicular_safe) as vehicular_sa ON vehicular_sa.observer = ym.observer FULL JOIN
(SELECT observer, vehicular_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (vehicular_safe = '01')
GROUP BY observer, vehicular_safe) AS vehicular_sc ON vehicular_sc.observer = ym.observer FULL JOIN
(SELECT observer, vehicular_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '10')
GROUP BY observer, vehicular_unsafe) AS vehicular_ua ON vehicular_ua.observer = ym.observer FULL JOIN
(SELECT observer, vehicular_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '01')
GROUP BY observer, vehicular_unsafe) AS vehicular_uc ON vehicular_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 27 as num, 'substandard' as name, isnull(substandard_ua.count,0) as ua, isnull(substandard_uc.count,0) as uc, isnull(substandard_sa.count,0) as sa, isnull(substandard_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, substandard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substandard_safe = '10')
    GROUP BY observer, substandard_safe) as substandard_sa ON substandard_sa.observer = ym.observer FULL JOIN
(SELECT observer, substandard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substandard_safe = '01')
GROUP BY observer, substandard_safe) AS substandard_sc ON substandard_sc.observer = ym.observer FULL JOIN
(SELECT observer, substandard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '10')
GROUP BY observer, substandard_unsafe) AS substandard_ua ON substandard_ua.observer = ym.observer FULL JOIN
(SELECT observer, substandard_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '01')
GROUP BY observer, substandard_unsafe) AS substandard_uc ON substandard_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 28 as num, 'h2s' as name, isnull(h2s_ua.count,0) as ua, isnull(h2s_uc.count,0) as uc, isnull(h2s_sa.count,0) as sa, isnull(h2s_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, h2s_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (h2s_safe = '10')
    GROUP BY observer, h2s_safe) as h2s_sa ON h2s_sa.observer = ym.observer FULL JOIN
(SELECT observer, h2s_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (h2s_safe = '01')
GROUP BY observer, h2s_safe) AS h2s_sc ON h2s_sc.observer = ym.observer FULL JOIN
(SELECT observer, h2s_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '10')
GROUP BY observer, h2s_unsafe) AS h2s_ua ON h2s_ua.observer = ym.observer FULL JOIN
(SELECT observer, h2s_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '01')
GROUP BY observer, h2s_unsafe) AS h2s_uc ON h2s_uc.observer = ym.observer
WHERE ym.observer=@observer
UNION
SELECT 29 as num, 'workplace_health' as name, isnull(workplace_health_ua.count,0) as ua, isnull(workplace_health_uc.count,0) as uc, isnull(workplace_health_sa.count,0) as sa, isnull(workplace_health_sc.count,0) as sc
FROM
(SELECT DISTINCT observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT observer, workplace_health_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (workplace_health_safe = '10')
    GROUP BY observer, workplace_health_safe) as workplace_health_sa ON workplace_health_sa.observer = ym.observer FULL JOIN
(SELECT observer, workplace_health_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (workplace_health_safe = '01')
GROUP BY observer, workplace_health_safe) AS workplace_health_sc ON workplace_health_sc.observer = ym.observer FULL JOIN
(SELECT observer, workplace_health_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '10')
GROUP BY observer, workplace_health_unsafe) AS workplace_health_ua ON workplace_health_ua.observer = ym.observer FULL JOIN
(SELECT observer, workplace_health_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '01')
GROUP BY observer, workplace_health_unsafe) AS workplace_health_uc ON workplace_health_uc.observer = ym.observer
WHERE ym.observer=@observer
);

GO
SET IDENTITY_INSERT [dbo].[rca] ON 

INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (1, N'tes', N'tes', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (63, N'Training', N'Menganalisis penyebab dibatalkannya training', 1, N'2500', 1, 1, 1, NULL, NULL, N'', NULL, NULL, N'Training', N'Employee', NULL, N'Penyelenggaraan training lebih profesional', N'', 94, CAST(0x0000A10400000000 AS DateTime), CAST(0x0000A10B00000000 AS DateTime), 0, N'analysis63.xml', NULL, 1, 20, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (64, N'tes', N'tes', 1, N'0', 1, 1, 1, NULL, NULL, N'', 23, 2, N'', N'', NULL, N'tes', N'tes', 79, CAST(0x0000A12500000000 AS DateTime), CAST(0x0000A13600000000 AS DateTime), 1, N'analysis64.xml', N'C-8-01B', 0, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (71, N'Analisis Fracas', N'Analisis', 3, N'20000', 1, 1, 1, NULL, NULL, N'W-123', 29, 1, N'', N'', NULL, N'tes', N'tes', 96, CAST(0x0000A15000000000 AS DateTime), CAST(0x0000A17300317040 AS DateTime), 0, N'analysis71.xml', N'0-CFV-003A', 1, NULL, 0, 2, 1, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (73, N'Analisis Fracas', N'Analisis', 3, N'20000', 1, 1, 1, NULL, NULL, N'W-123', 29, 1, N'', N'', NULL, N'tes', N'tes', 96, CAST(0x0000A15000000000 AS DateTime), CAST(0x0000A17300317040 AS DateTime), 1, NULL, N'0-CFV-003A', 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (1073, N'Analisis Fracas', N'Analisis', 3, N'20000', 1, 1, 1, NULL, NULL, N'W-123', 29, 1, N'', N'', NULL, N'tes', N'tes', 96, CAST(0x0000A15000000000 AS DateTime), CAST(0x0000A17300317040 AS DateTime), 1, N'analysis1073.xml', N'0-CFV-003A', 1, NULL, 0, 2, 1, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (2073, N'lalalal', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', 29, 1, N'', N'', NULL, N'', N'', 2100, CAST(0x0000A16B00000000 AS DateTime), NULL, 0, N'analysis2073.xml', N'0-CFV-003A', 1, NULL, 0, 1, 766, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (3073, N'asda', N'qweqer', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', 24, 3, N'', N'', NULL, N'', N'', 3100, CAST(0x0000A16B00000000 AS DateTime), NULL, 0, N'analysis3073.xml', N'0-CFV-019', 1, NULL, 1, 2, 1, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (5073, N'testing fishbone', N'ini untuk testing fishbone saja', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', 31, 3, N'', N'', NULL, N'', N'', 4100, CAST(0x0000A18000000000 AS DateTime), NULL, 1, N'analysis5073.xml', N'0-CFV-007B', 2, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (6073, N'testing fishbone 2', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', 22, 1, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A18200000000 AS DateTime), NULL, 0, N'analysis6073.xml', N'0-CFV-008', 2, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (6074, N'testing fishbone 3', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', 22, 1, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A18200000000 AS DateTime), NULL, 0, N'analysis6074.xml', N'0-CFV-008', 2, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (7074, N'testing fishbone 4', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', 24, 3, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A18E00000000 AS DateTime), NULL, 0, NULL, N'0-CFV504A', 2, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (8074, N'testing fishbone 5', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', 25, 3, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A18B00000000 AS DateTime), NULL, 0, NULL, N'CF201', 2, NULL, 0, 2, 1, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (9075, N'asda', N'qweqer', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', 24, 3, N'', N'', NULL, N'', N'', 3100, CAST(0x0000A16B00000000 AS DateTime), NULL, 1, N'analysis9075.xml', N'0-CFV-019', 1, NULL, 1, 2, 1, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (9083, N'tes RCA', N'Description', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 5106, CAST(0x0000A19300000000 AS DateTime), NULL, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (9084, N'testing email', N'deskripsi testing email', 5, N'20', 1, 1, 1, NULL, NULL, N'', 23, 3, N'', N'', NULL, N'', N'', 5114, CAST(0x0000A19400000000 AS DateTime), NULL, 0, NULL, N'0-CFV-016', 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (9085, N'testing email 2', N'deskripsi testing email 2', 3, N'20', 1, 1, 1, NULL, NULL, N'', 22, 1, N'', N'', NULL, N'', N'', 5116, CAST(0x0000A19300000000 AS DateTime), NULL, 0, N'analysis9085.xml', N'0-CFV-008', 1, 27, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (10085, N'jkjkjlk', N'jkljkj', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL, 2, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (10086, N'asdas', N'asdsad', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 6108, CAST(0x0000A1A900000000 AS DateTime), NULL, 0, NULL, NULL, 2, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (10087, N'asd', N'adasd', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', NULL, NULL, NULL, 0, NULL, NULL, 2, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (10088, N'kjj', N'jkj', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 6110, CAST(0x0000A1AA00000000 AS DateTime), NULL, 0, NULL, NULL, 2, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (10089, N'zxcxz', N'zczcx', 1, N'0', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A1A900000000 AS DateTime), NULL, 0, NULL, NULL, 2, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (10090, N'mnkjk', N'jkhkjh', 1, N'323', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A1A900000000 AS DateTime), NULL, 0, NULL, N'0-CFV-016', 2, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (11085, N'', N'', 1, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (11086, N'', N'', 1, N'0', 1, 1, 1, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (11087, N'blabl', N'', 1, N'0', 1, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 7108, CAST(0x0000A1C500000000 AS DateTime), NULL, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, N'RCA/20130507/00001', NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (11088, N'qwert', N'', 1, N'0', 1, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 7110, CAST(0x0000A1B800000000 AS DateTime), NULL, 0, NULL, NULL, 1, NULL, 0, NULL, NULL, N'RCA/20130507/00002', NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (11089, N'lkkjhg', N'', 1, N'0', 1, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A1C500000000 AS DateTime), NULL, 1, N'analysis11089.xml', NULL, 1, NULL, 0, 0, NULL, N'RCA/20130507/00003', 1008)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (11090, N'asdasd', N'', 1, N'0', 1, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', 7112, CAST(0x0000A1CC00000000 AS DateTime), NULL, 0, NULL, NULL, 2, NULL, 0, 2, 1013, N'RCA/20130528/00004', NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (11091, N'lkkjhg', N'', 1, N'0', 1, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A1C500000000 AS DateTime), NULL, 0, N'analysis11091.xml', NULL, 1, NULL, 0, 0, NULL, N'RCA/20130507/00003', NULL)
INSERT [dbo].[rca] ([id], [name], [description], [id_type], [cost], [id_facility], [id_division], [id_department], [id_building], [id_floor], [functional_location], [id_type_equipment], [id_equipment_class], [other], [manufacture], [id_csf_connector], [charter], [comment], [id_team], [start_date], [completion_date], [is_publish], [analysis_file], [equipment_code], [is_tree], [id_pir], [has_pir], [fracas_ir], [fracas_ir_id], [rca_code], [id_iir]) VALUES (11092, N'lkkjhg', N'', 1, N'0', 1, NULL, NULL, NULL, NULL, N'', NULL, NULL, N'', N'', NULL, N'', N'', NULL, CAST(0x0000A1C500000000 AS DateTime), NULL, 0, N'analysis11092.xml', NULL, 1, NULL, 0, 0, NULL, N'RCA/20130528/00004', NULL)
SET IDENTITY_INSERT [dbo].[rca] OFF
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
