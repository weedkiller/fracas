USE [star_energi_geo]
GO
/****** Object:  StoredProcedure [dbo].[observationByMonth]    Script Date: 4/18/2013 10:34:37 PM ******/
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
/****** Object:  StoredProcedure [dbo].[observationSummary]    Script Date: 4/18/2013 10:34:37 PM ******/
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
/****** Object:  StoredProcedure [dbo].[observationSummary3]    Script Date: 4/18/2013 10:34:37 PM ******/
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
/****** Object:  UserDefinedFunction [dbo].[observationByMonths]    Script Date: 4/18/2013 10:34:37 PM ******/
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
/****** Object:  UserDefinedFunction [dbo].[observationChart1]    Script Date: 4/18/2013 10:34:37 PM ******/
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
/****** Object:  UserDefinedFunction [dbo].[observationChart12]    Script Date: 4/18/2013 10:34:37 PM ******/
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
