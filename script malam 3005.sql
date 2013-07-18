USE [star_energi_geo]
GO
/****** Object:  StoredProcedure [dbo].[observationByDepartmentObserver2]    Script Date: 5/30/2013 9:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[observationByDepartmentObserver2]
    @department varchar(255) = '%',
    @observer varchar(255) = '%'
AS 
	SELECT        sum({fn IFNULL(accident_sa.count_accident_sa, 0) }) AS count_accident_sa, sum({fn IFNULL(accident_sc.count_accident_sc, 0) }) AS count_accident_sc, 
                         sum({fn IFNULL(accident_ua.count_accident_ua, 0) }) AS count_accident_ua, sum({fn IFNULL(accident_uc.count_accident_uc, 0) }) AS count_accident_uc, sum({fn IFNULL(fire_sa.count, 0) }) AS count_fire_sa, sum({fn IFNULL(fire_sc.count, 0) }) AS count_fire_sc, sum({fn IFNULL(fire_ua.count, 0) }) AS count_fire_ua, sum({fn IFNULL(fire_uc.count, 0) }) AS count_fire_uc, sum({fn IFNULL(prevention_sa.count, 0) }) AS count_prevention_sa, sum({fn IFNULL(prevention_sc.count, 0) }) AS count_prevention_sc, sum({fn IFNULL(prevention_ua.count, 0) }) AS count_prevention_ua, sum({fn IFNULL(prevention_uc.count, 0) }) AS count_prevention_uc, sum({fn IFNULL(supervisor_sa.count, 0) }) AS count_supervisor_sa, sum({fn IFNULL(supervisor_sc.count, 0) }) AS count_supervisor_sc, sum({fn IFNULL(supervisor_ua.count, 0) }) AS count_supervisor_ua, sum({fn IFNULL(supervisor_uc.count, 0) }) AS count_supervisor_uc,
						  sum({fn IFNULL(fit_work_sa.count, 0) }) AS count_fit_work_sa,
						  sum({fn IFNULL(fit_work_sc.count, 0) }) AS count_fit_work_sc,
						  sum({fn IFNULL(fit_work_ua.count, 0) }) AS count_fit_work_ua,
						  sum({fn IFNULL(fit_work_uc.count, 0) }) AS count_fit_work_uc,
						  sum({fn IFNULL(psychological_sa.count, 0) }) AS count_psychological_sa,
						  sum({fn IFNULL(psychological_sc.count, 0) }) AS count_psychological_sc,
						  sum({fn IFNULL(psychological_ua.count, 0) }) AS count_psychological_ua,
						  sum({fn IFNULL(psychological_uc.count, 0) }) AS count_psychological_uc,
						  sum({fn IFNULL(posture_sa.count, 0) }) AS count_posture_sa,
						  sum({fn IFNULL(posture_sc.count, 0) }) AS count_posture_sc,
						  sum({fn IFNULL(posture_ua.count, 0) }) AS count_posture_ua,
						  sum({fn IFNULL(posture_uc.count, 0) }) AS count_posture_uc,
						  sum({fn IFNULL(substance_sa.count, 0) }) AS count_substance_sa,
						  sum({fn IFNULL(substance_sc.count, 0) }) AS count_substance_sc,
						  sum({fn IFNULL(substance_ua.count, 0) }) AS count_substance_ua,
						  sum({fn IFNULL(substance_uc.count, 0) }) AS count_substance_uc,
						  sum({fn IFNULL(hygiene_sa.count, 0) }) AS count_hygiene_sa,
						  sum({fn IFNULL(hygiene_sc.count, 0) }) AS count_hygiene_sc,
						  sum({fn IFNULL(hygiene_ua.count, 0) }) AS count_hygiene_ua,
						  sum({fn IFNULL(hygiene_uc.count, 0) }) AS count_hygiene_uc,
						  sum({fn IFNULL(house_sa.count, 0) }) AS count_house_sa,
						  sum({fn IFNULL(house_sc.count, 0) }) AS count_house_sc,
						  sum({fn IFNULL(house_ua.count, 0) }) AS count_house_ua,
						  sum({fn IFNULL(house_uc.count, 0) }) AS count_house_uc,
						  sum({fn IFNULL(standard_sa.count, 0) }) AS count_standard_sa,
						  sum({fn IFNULL(standard_sc.count, 0) }) AS count_standard_sc,
						  sum({fn IFNULL(standard_ua.count, 0) }) AS count_standard_ua,
						  sum({fn IFNULL(standard_uc.count, 0) }) AS count_standard_uc,
						  sum({fn IFNULL(spill_sa.count, 0) }) AS count_spill_sa,
						  sum({fn IFNULL(spill_sc.count, 0) }) AS count_spill_sc,
						  sum({fn IFNULL(spill_ua.count, 0) }) AS count_spill_ua,
						  sum({fn IFNULL(spill_uc.count, 0) }) AS count_spill_uc,
						  sum({fn IFNULL(waste_energy_sa.count, 0) }) AS count_waste_energy_sa,
						  sum({fn IFNULL(waste_energy_sc.count, 0) }) AS count_waste_energy_sc,
						  sum({fn IFNULL(waste_energy_ua.count, 0) }) AS count_waste_energy_ua,
						  sum({fn IFNULL(waste_energy_uc.count, 0) }) AS count_waste_energy_uc,
						  sum({fn IFNULL(containment_sa.count, 0) }) AS count_containment_sa,
						  sum({fn IFNULL(containment_sc.count, 0) }) AS count_containment_sc,
						  sum({fn IFNULL(containment_ua.count, 0) }) AS count_containment_ua,
						  sum({fn IFNULL(containment_uc.count, 0) }) AS count_containment_uc,
						  sum({fn IFNULL(absorbent_sa.count, 0) }) AS count_absorbent_sa,
						  sum({fn IFNULL(absorbent_sc.count, 0) }) AS count_absorbent_sc,
						  sum({fn IFNULL(absorbent_ua.count, 0) }) AS count_absorbent_ua,
						  sum({fn IFNULL(absorbent_uc.count, 0) }) AS count_absorbent_uc,
						  sum({fn IFNULL(hira_sa.count, 0) }) AS count_hira_sa,
						  sum({fn IFNULL(hira_sc.count, 0) }) AS count_hira_sc,
						  sum({fn IFNULL(hira_ua.count, 0) }) AS count_hira_ua,
						  sum({fn IFNULL(hira_uc.count, 0) }) AS count_hira_uc,
						  sum({fn IFNULL(ptw_sa.count, 0) }) AS count_ptw_sa,
						  sum({fn IFNULL(ptw_sc.count, 0) }) AS count_ptw_sc,
						  sum({fn IFNULL(ptw_ua.count, 0) }) AS count_ptw_ua,
						  sum({fn IFNULL(ptw_uc.count, 0) }) AS count_ptw_uc,
						  sum({fn IFNULL(sop_sa.count, 0) }) AS count_sop_sa,
						  sum({fn IFNULL(sop_sc.count, 0) }) AS count_sop_sc,
						  sum({fn IFNULL(sop_ua.count, 0) }) AS count_sop_ua,
						  sum({fn IFNULL(sop_uc.count, 0) }) AS count_sop_uc,
						  sum({fn IFNULL(msds_sa.count, 0) }) AS count_msds_sa,
						  sum({fn IFNULL(msds_sc.count, 0) }) AS count_msds_sc,
						  sum({fn IFNULL(msds_ua.count, 0) }) AS count_msds_ua,
						  sum({fn IFNULL(msds_uc.count, 0) }) AS count_msds_uc,
						  sum({fn IFNULL(emergency_sa.count, 0) }) AS count_emergency_sa,
						  sum({fn IFNULL(emergency_sc.count, 0) }) AS count_emergency_sc,
						  sum({fn IFNULL(emergency_ua.count, 0) }) AS count_emergency_ua,
						  sum({fn IFNULL(emergency_uc.count, 0) }) AS count_emergency_uc,
						  sum({fn IFNULL(certificates_sa.count, 0) }) AS count_certificates_sa,
						  sum({fn IFNULL(certificates_sc.count, 0) }) AS count_certificates_sc,
						  sum({fn IFNULL(certificates_ua.count, 0) }) AS count_certificates_ua,
						  sum({fn IFNULL(certificates_uc.count, 0) }) AS count_certificates_uc,
						  sum({fn IFNULL(ppe_sa.count, 0) }) AS count_ppe_sa,
						  sum({fn IFNULL(ppe_sc.count, 0) }) AS count_ppe_sc,
						  sum({fn IFNULL(ppe_ua.count, 0) }) AS count_ppe_ua,
						  sum({fn IFNULL(ppe_uc.count, 0) }) AS count_ppe_uc,
						  sum({fn IFNULL(hand_sa.count, 0) }) AS count_hand_sa,
						  sum({fn IFNULL(hand_sc.count, 0) }) AS count_hand_sc,
						  sum({fn IFNULL(hand_ua.count, 0) }) AS count_hand_ua,
						  sum({fn IFNULL(hand_uc.count, 0) }) AS count_hand_uc,
						  sum({fn IFNULL(mechanical_sa.count, 0) }) AS count_mechanical_sa,
						  sum({fn IFNULL(mechanical_sc.count, 0) }) AS count_mechanical_sc,
						  sum({fn IFNULL(mechanical_ua.count, 0) }) AS count_mechanical_ua,
						  sum({fn IFNULL(mechanical_uc.count, 0) }) AS count_mechanical_uc,
						  sum({fn IFNULL(electrical_sa.count, 0) }) AS count_electrical_sa,
						  sum({fn IFNULL(electrical_sc.count, 0) }) AS count_electrical_sc,
						  sum({fn IFNULL(electrical_ua.count, 0) }) AS count_electrical_ua,
						  sum({fn IFNULL(electrical_uc.count, 0) }) AS count_electrical_uc,
						  sum({fn IFNULL(vehicular_sa.count, 0) }) AS count_vehicular_sa,
						  sum({fn IFNULL(vehicular_sc.count, 0) }) AS count_vehicular_sc,
						  sum({fn IFNULL(vehicular_ua.count, 0) }) AS count_vehicular_ua,
						  sum({fn IFNULL(vehicular_uc.count, 0) }) AS count_vehicular_uc,
						  sum({fn IFNULL(substandard_sa.count, 0) }) AS count_substandard_sa,
						  sum({fn IFNULL(substandard_sc.count, 0) }) AS count_substandard_sc,
						  sum({fn IFNULL(substandard_ua.count, 0) }) AS count_substandard_ua,
						  sum({fn IFNULL(substandard_uc.count, 0) }) AS count_substandard_uc,
						  sum({fn IFNULL(h2s_sa.count, 0) }) AS count_h2s_sa,
						  sum({fn IFNULL(h2s_sc.count, 0) }) AS count_h2s_sc,
						  sum({fn IFNULL(h2s_ua.count, 0) }) AS count_h2s_ua,
						  sum({fn IFNULL(h2s_uc.count, 0) }) AS count_h2s_uc,
						  sum({fn IFNULL(workplace_health_sa.count, 0) }) AS count_workplace_health_sa,
						  sum({fn IFNULL(workplace_health_sc.count, 0) }) AS count_workplace_health_sc,
						  sum({fn IFNULL(workplace_health_ua.count, 0) }) AS count_workplace_health_ua,
						  sum({fn IFNULL(workplace_health_uc.count, 0) }) AS count_workplace_health_uc
FROM            (SELECT DISTINCT department,observer
                          FROM            she_observation) AS ym LEFT OUTER JOIN
                             (SELECT        department, observer,  accident_safe AS asa, COUNT(id) AS count_accident_sa
                               FROM            she_observation AS she_observation_2
                               WHERE        (accident_safe = '10')
                               GROUP BY department, observer, accident_safe) AS accident_sa ON ym.department = accident_sa.department AND ym.observer = accident_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, accident_safe AS asa, COUNT(id) AS count_accident_sc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_safe = '01')
                               GROUP BY department, observer, accident_safe) AS accident_sc ON ym.department = accident_sc.department AND ym.observer = accident_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, accident_unsafe AS aua, COUNT(id) AS count_accident_ua
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '10')
                               GROUP BY department, observer, accident_unsafe) AS accident_ua ON ym.department = accident_ua.department AND ym.observer = accident_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, accident_unsafe AS auc, COUNT(id) AS count_accident_uc
                               FROM            she_observation AS she_observation_1
                               WHERE        (accident_unsafe = '01')
                               GROUP BY department, observer, accident_unsafe) AS accident_uc ON ym.department = accident_uc.department AND ym.observer = accident_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '10')
                               GROUP BY department, observer, fire_safe) AS fire_sa ON ym.department = fire_sa.department AND ym.observer = fire_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, fire_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_safe = '01')
                               GROUP BY department, observer, fire_safe) AS fire_sc ON ym.department = fire_sc.department AND ym.observer = fire_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '10')
                               GROUP BY department, observer, fire_unsafe) AS fire_ua ON ym.department = fire_ua.department AND ym.observer = fire_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, fire_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fire_unsafe = '01')
                               GROUP BY department, observer, fire_unsafe) AS fire_uc ON ym.department = fire_uc.department AND ym.observer = fire_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '10')
                               GROUP BY department, observer, prevention_safe) AS prevention_sa ON ym.department = prevention_sa.department AND ym.observer = prevention_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, prevention_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_safe = '01')
                               GROUP BY department, observer, prevention_safe) AS prevention_sc ON ym.department = prevention_sc.department AND ym.observer = prevention_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '10')
                               GROUP BY department, observer, prevention_unsafe) AS prevention_ua ON ym.department = prevention_ua.department AND ym.observer = prevention_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, prevention_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (prevention_unsafe = '01')
                               GROUP BY department, observer, prevention_unsafe) AS prevention_uc ON ym.department = prevention_uc.department AND ym.observer = prevention_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '10')
                               GROUP BY department, observer, supervisor_safe) AS supervisor_sa ON ym.department = supervisor_sa.department AND ym.observer = supervisor_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, supervisor_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_safe = '01')
                               GROUP BY department, observer, supervisor_safe) AS supervisor_sc ON ym.department = supervisor_sc.department AND ym.observer = supervisor_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '10')
                               GROUP BY department, observer, supervisor_unsafe) AS supervisor_ua ON ym.department = supervisor_ua.department AND ym.observer = supervisor_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, supervisor_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (supervisor_unsafe = '01')
                               GROUP BY department, observer, supervisor_unsafe) AS supervisor_uc ON ym.department = supervisor_uc.department AND ym.observer = supervisor_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '10')
                               GROUP BY department, observer, fit_work_safe) AS fit_work_sa ON ym.department = fit_work_sa.department AND ym.observer = fit_work_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, fit_work_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_safe = '01')
                               GROUP BY department, observer, fit_work_safe) AS fit_work_sc ON ym.department = fit_work_sc.department AND ym.observer = fit_work_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '10')
                               GROUP BY department, observer, fit_work_unsafe) AS fit_work_ua ON ym.department = fit_work_ua.department AND ym.observer = fit_work_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, fit_work_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (fit_work_unsafe = '01')
                               GROUP BY department, observer, fit_work_unsafe) AS fit_work_uc ON ym.department = fit_work_uc.department AND ym.observer = fit_work_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '10')
                               GROUP BY department, observer, psychological_safe) AS psychological_sa ON ym.department = psychological_sa.department AND ym.observer = psychological_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, psychological_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_safe = '01')
                               GROUP BY department, observer, psychological_safe) AS psychological_sc ON ym.department = psychological_sc.department AND ym.observer = psychological_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '10')
                               GROUP BY department, observer, psychological_unsafe) AS psychological_ua ON ym.department = psychological_ua.department AND ym.observer = psychological_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, psychological_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (psychological_unsafe = '01')
                               GROUP BY department, observer, psychological_unsafe) AS psychological_uc ON ym.department = psychological_uc.department AND ym.observer = psychological_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '10')
                               GROUP BY department, observer, posture_safe) AS posture_sa ON ym.department = posture_sa.department AND ym.observer = posture_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, posture_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_safe = '01')
                               GROUP BY department, observer, posture_safe) AS posture_sc ON ym.department = posture_sc.department AND ym.observer = posture_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '10')
                               GROUP BY department, observer, posture_unsafe) AS posture_ua ON ym.department = posture_ua.department AND ym.observer = posture_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, posture_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (posture_unsafe = '01')
                               GROUP BY department, observer, posture_unsafe) AS posture_uc ON ym.department = posture_uc.department AND ym.observer = posture_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '10')
                               GROUP BY department, observer, substance_safe) AS substance_sa ON ym.department = substance_sa.department AND ym.observer = substance_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, substance_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_safe = '01')
                               GROUP BY department, observer, substance_safe) AS substance_sc ON ym.department = substance_sc.department AND ym.observer = substance_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '10')
                               GROUP BY department, observer, substance_unsafe) AS substance_ua ON ym.department = substance_ua.department AND ym.observer = substance_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, substance_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substance_unsafe = '01')
                               GROUP BY department, observer, substance_unsafe) AS substance_uc ON ym.department = substance_uc.department AND ym.observer = substance_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '10')
                               GROUP BY department, observer, hygiene_safe) AS hygiene_sa ON ym.department = hygiene_sa.department AND ym.observer = hygiene_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hygiene_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_safe = '01')
                               GROUP BY department, observer, hygiene_safe) AS hygiene_sc ON ym.department = hygiene_sc.department AND ym.observer = hygiene_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '10')
                               GROUP BY department, observer, hygiene_unsafe) AS hygiene_ua ON ym.department = hygiene_ua.department AND ym.observer = hygiene_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hygiene_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hygiene_unsafe = '01')
                               GROUP BY department, observer, hygiene_unsafe) AS hygiene_uc ON ym.department = hygiene_uc.department AND ym.observer = hygiene_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '10')
                               GROUP BY department, observer, house_safe) AS house_sa ON ym.department = house_sa.department AND ym.observer = house_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, house_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_safe = '01')
                               GROUP BY department, observer, house_safe) AS house_sc ON ym.department = house_sc.department AND ym.observer = house_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '10')
                               GROUP BY department, observer, house_unsafe) AS house_ua ON ym.department = house_ua.department AND ym.observer = house_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, house_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (house_unsafe = '01')
                               GROUP BY department, observer, house_unsafe) AS house_uc ON ym.department = house_uc.department AND ym.observer = house_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '10')
                               GROUP BY department, observer, standard_safe) AS standard_sa ON ym.department = standard_sa.department AND ym.observer = standard_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, standard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_safe = '01')
                               GROUP BY department, observer, standard_safe) AS standard_sc ON ym.department = standard_sc.department AND ym.observer = standard_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '10')
                               GROUP BY department, observer, standard_unsafe) AS standard_ua ON ym.department = standard_ua.department AND ym.observer = standard_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, standard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (standard_unsafe = '01')
                               GROUP BY department, observer, standard_unsafe) AS standard_uc ON ym.department = standard_uc.department AND ym.observer = standard_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '10')
                               GROUP BY department, observer, spill_safe) AS spill_sa ON ym.department = spill_sa.department AND ym.observer = spill_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, spill_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_safe = '01')
                               GROUP BY department, observer, spill_safe) AS spill_sc ON ym.department = spill_sc.department AND ym.observer = spill_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '10')
                               GROUP BY department, observer, spill_unsafe) AS spill_ua ON ym.department = spill_ua.department AND ym.observer = spill_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, spill_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (spill_unsafe = '01')
                               GROUP BY department, observer, spill_unsafe) AS spill_uc ON ym.department = spill_uc.department AND ym.observer = spill_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '10')
                               GROUP BY department, observer, waste_energy_safe) AS waste_energy_sa ON ym.department = waste_energy_sa.department AND ym.observer = waste_energy_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, waste_energy_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_safe = '01')
                               GROUP BY department, observer, waste_energy_safe) AS waste_energy_sc ON ym.department = waste_energy_sc.department AND ym.observer = waste_energy_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '10')
                               GROUP BY department, observer, waste_energy_unsafe) AS waste_energy_ua ON ym.department = waste_energy_ua.department AND ym.observer = waste_energy_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, waste_energy_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (waste_energy_unsafe = '01')
                               GROUP BY department, observer, waste_energy_unsafe) AS waste_energy_uc ON ym.department = waste_energy_uc.department AND ym.observer = waste_energy_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '10')
                               GROUP BY department, observer, containment_safe) AS containment_sa ON ym.department = containment_sa.department AND ym.observer = containment_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, containment_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_safe = '01')
                               GROUP BY department, observer, containment_safe) AS containment_sc ON ym.department = containment_sc.department AND ym.observer = containment_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '10')
                               GROUP BY department, observer, containment_unsafe) AS containment_ua ON ym.department = containment_ua.department AND ym.observer = containment_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, containment_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (containment_unsafe = '01')
                               GROUP BY department, observer, containment_unsafe) AS containment_uc ON ym.department = containment_uc.department AND ym.observer = containment_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '10')
                               GROUP BY department, observer, absorbent_safe) AS absorbent_sa ON ym.department = absorbent_sa.department AND ym.observer = absorbent_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, absorbent_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_safe = '01')
                               GROUP BY department, observer, absorbent_safe) AS absorbent_sc ON ym.department = absorbent_sc.department AND ym.observer = absorbent_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '10')
                               GROUP BY department, observer, absorbent_unsafe) AS absorbent_ua ON ym.department = absorbent_ua.department AND ym.observer = absorbent_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, absorbent_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (absorbent_unsafe = '01')
                               GROUP BY department, observer, absorbent_unsafe) AS absorbent_uc ON ym.department = absorbent_uc.department AND ym.observer = absorbent_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '10')
                               GROUP BY department, observer, hira_safe) AS hira_sa ON ym.department = hira_sa.department AND ym.observer = hira_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hira_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_safe = '01')
                               GROUP BY department, observer, hira_safe) AS hira_sc ON ym.department = hira_sc.department AND ym.observer = hira_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '10')
                               GROUP BY department, observer, hira_unsafe) AS hira_ua ON ym.department = hira_ua.department AND ym.observer = hira_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hira_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hira_unsafe = '01')
                               GROUP BY department, observer, hira_unsafe) AS hira_uc ON ym.department = hira_uc.department AND ym.observer = hira_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '10')
                               GROUP BY department, observer, ptw_safe) AS ptw_sa ON ym.department = ptw_sa.department AND ym.observer = ptw_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, ptw_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_safe = '01')
                               GROUP BY department, observer, ptw_safe) AS ptw_sc ON ym.department = ptw_sc.department AND ym.observer = ptw_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '10')
                               GROUP BY department, observer, ptw_unsafe) AS ptw_ua ON ym.department = ptw_ua.department AND ym.observer = ptw_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, ptw_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ptw_unsafe = '01')
                               GROUP BY department, observer, ptw_unsafe) AS ptw_uc ON ym.department = ptw_uc.department AND ym.observer = ptw_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '10')
                               GROUP BY department, observer, sop_safe) AS sop_sa ON ym.department = sop_sa.department AND ym.observer = sop_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, sop_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_safe = '01')
                               GROUP BY department, observer, sop_safe) AS sop_sc ON ym.department = sop_sc.department AND ym.observer = sop_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '10')
                               GROUP BY department, observer, sop_unsafe) AS sop_ua ON ym.department = sop_ua.department AND ym.observer = sop_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, sop_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (sop_unsafe = '01')
                               GROUP BY department, observer, sop_unsafe) AS sop_uc ON ym.department = sop_uc.department AND ym.observer = sop_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '10')
                               GROUP BY department, observer, msds_safe) AS msds_sa ON ym.department = msds_sa.department AND ym.observer = msds_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, msds_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_safe = '01')
                               GROUP BY department, observer, msds_safe) AS msds_sc ON ym.department = msds_sc.department AND ym.observer = msds_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '10')
                               GROUP BY department, observer, msds_unsafe) AS msds_ua ON ym.department = msds_ua.department AND ym.observer = msds_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, msds_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (msds_unsafe = '01')
                               GROUP BY department, observer, msds_unsafe) AS msds_uc ON ym.department = msds_uc.department AND ym.observer = msds_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '10')
                               GROUP BY department, observer, emergency_safe) AS emergency_sa ON ym.department = emergency_sa.department AND ym.observer = emergency_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, emergency_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_safe = '01')
                               GROUP BY department, observer, emergency_safe) AS emergency_sc ON ym.department = emergency_sc.department AND ym.observer = emergency_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '10')
                               GROUP BY department, observer, emergency_unsafe) AS emergency_ua ON ym.department = emergency_ua.department AND ym.observer = emergency_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, emergency_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (emergency_unsafe = '01')
                               GROUP BY department, observer, emergency_unsafe) AS emergency_uc ON ym.department = emergency_uc.department AND ym.observer = emergency_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '10')
                               GROUP BY department, observer, certificates_safe) AS certificates_sa ON ym.department = certificates_sa.department AND ym.observer = certificates_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, certificates_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_safe = '01')
                               GROUP BY department, observer, certificates_safe) AS certificates_sc ON ym.department = certificates_sc.department AND ym.observer = certificates_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '10')
                               GROUP BY department, observer, certificates_unsafe) AS certificates_ua ON ym.department = certificates_ua.department AND ym.observer = certificates_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, certificates_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (certificates_unsafe = '01')
                               GROUP BY department, observer, certificates_unsafe) AS certificates_uc ON ym.department = certificates_uc.department AND ym.observer = certificates_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '10')
                               GROUP BY department, observer, ppe_safe) AS ppe_sa ON ym.department = ppe_sa.department AND ym.observer = ppe_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, ppe_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_safe = '01')
                               GROUP BY department, observer, ppe_safe) AS ppe_sc ON ym.department = ppe_sc.department AND ym.observer = ppe_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '10')
                               GROUP BY department, observer, ppe_unsafe) AS ppe_ua ON ym.department = ppe_ua.department AND ym.observer = ppe_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, ppe_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (ppe_unsafe = '01')
                               GROUP BY department, observer, ppe_unsafe) AS ppe_uc ON ym.department = ppe_uc.department AND ym.observer = ppe_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '10')
                               GROUP BY department, observer, hand_safe) AS hand_sa ON ym.department = hand_sa.department AND ym.observer = hand_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hand_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_safe = '01')
                               GROUP BY department, observer, hand_safe) AS hand_sc ON ym.department = hand_sc.department AND ym.observer = hand_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '10')
                               GROUP BY department, observer, hand_unsafe) AS hand_ua ON ym.department = hand_ua.department AND ym.observer = hand_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, hand_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (hand_unsafe = '01')
                               GROUP BY department, observer, hand_unsafe) AS hand_uc ON ym.department = hand_uc.department AND ym.observer = hand_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '10')
                               GROUP BY department, observer, mechanical_safe) AS mechanical_sa ON ym.department = mechanical_sa.department AND ym.observer = mechanical_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, mechanical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_safe = '01')
                               GROUP BY department, observer, mechanical_safe) AS mechanical_sc ON ym.department = mechanical_sc.department AND ym.observer = mechanical_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '10')
                               GROUP BY department, observer, mechanical_unsafe) AS mechanical_ua ON ym.department = mechanical_ua.department AND ym.observer = mechanical_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, mechanical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (mechanical_unsafe = '01')
                               GROUP BY department, observer, mechanical_unsafe) AS mechanical_uc ON ym.department = mechanical_uc.department AND ym.observer = mechanical_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '10')
                               GROUP BY department, observer, electrical_safe) AS electrical_sa ON ym.department = electrical_sa.department AND ym.observer = electrical_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, electrical_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_safe = '01')
                               GROUP BY department, observer, electrical_safe) AS electrical_sc ON ym.department = electrical_sc.department AND ym.observer = electrical_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '10')
                               GROUP BY department, observer, electrical_unsafe) AS electrical_ua ON ym.department = electrical_ua.department AND ym.observer = electrical_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, electrical_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (electrical_unsafe = '01')
                               GROUP BY department, observer, electrical_unsafe) AS electrical_uc ON ym.department = electrical_uc.department AND ym.observer = electrical_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '10')
                               GROUP BY department, observer, vehicular_safe) AS vehicular_sa ON ym.department = vehicular_sa.department AND ym.observer = vehicular_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, vehicular_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_safe = '01')
                               GROUP BY department, observer, vehicular_safe) AS vehicular_sc ON ym.department = vehicular_sc.department AND ym.observer = vehicular_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '10')
                               GROUP BY department, observer, vehicular_unsafe) AS vehicular_ua ON ym.department = vehicular_ua.department AND ym.observer = vehicular_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, vehicular_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (vehicular_unsafe = '01')
                               GROUP BY department, observer, vehicular_unsafe) AS vehicular_uc ON ym.department = vehicular_uc.department AND ym.observer = vehicular_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '10')
                               GROUP BY department, observer, substandard_safe) AS substandard_sa ON ym.department = substandard_sa.department AND ym.observer = substandard_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, substandard_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_safe = '01')
                               GROUP BY department, observer, substandard_safe) AS substandard_sc ON ym.department = substandard_sc.department AND ym.observer = substandard_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '10')
                               GROUP BY department, observer, substandard_unsafe) AS substandard_ua ON ym.department = substandard_ua.department AND ym.observer = substandard_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, substandard_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (substandard_unsafe = '01')
                               GROUP BY department, observer, substandard_unsafe) AS substandard_uc ON ym.department = substandard_uc.department AND ym.observer = substandard_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '10')
                               GROUP BY department, observer, h2s_safe) AS h2s_sa ON ym.department = h2s_sa.department AND ym.observer = h2s_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, h2s_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_safe = '01')
                               GROUP BY department, observer, h2s_safe) AS h2s_sc ON ym.department = h2s_sc.department AND ym.observer = h2s_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '10')
                               GROUP BY department, observer, h2s_unsafe) AS h2s_ua ON ym.department = h2s_ua.department AND ym.observer = h2s_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, h2s_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (h2s_unsafe = '01')
                               GROUP BY department, observer, h2s_unsafe) AS h2s_uc ON ym.department = h2s_uc.department AND ym.observer = h2s_uc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '10')
                               GROUP BY department, observer, workplace_health_safe) AS workplace_health_sa ON ym.department = workplace_health_sa.department AND ym.observer = workplace_health_sa.observer LEFT OUTER JOIN
                             (SELECT        department, observer, workplace_health_safe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_safe = '01')
                               GROUP BY department, observer, workplace_health_safe) AS workplace_health_sc ON ym.department = workplace_health_sc.department AND ym.observer = workplace_health_sc.observer LEFT OUTER JOIN
                             (SELECT        department, observer, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '10')
                               GROUP BY department, observer, workplace_health_unsafe) AS workplace_health_ua ON ym.department = workplace_health_ua.department AND ym.observer = workplace_health_ua.observer LEFT OUTER JOIN
                             (SELECT        department, observer, workplace_health_unsafe, COUNT(id) AS count
                               FROM            she_observation AS she_observation_1
                               WHERE        (workplace_health_unsafe = '01')
                               GROUP BY department, observer, workplace_health_unsafe) AS workplace_health_uc ON ym.department = workplace_health_uc.department AND ym.observer = workplace_health_uc.observer 
							   where ym.department like @department AND ym.observer like @observer



GO
/****** Object:  Table [dbo].[she_obs_category]    Script Date: 5/30/2013 9:53:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[she_obs_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NULL,
 CONSTRAINT [PK_she_obs_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[observationChart12DepartmentObserver]    Script Date: 5/30/2013 9:53:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[observationChart12DepartmentObserver] (
    @department varchar(255) = '%',
	@observer varchar(255) = '%'
)
RETURNS TABLE
AS
RETURN 
(
    SELECT 1 as num, 'accident' as name, sum(isnull(accident_ua.count,0)) as ua, sum(isnull(accident_uc.count,0)) as uc, sum(isnull(accident_sa.count,0)) as sa, sum(isnull(accident_sc.count,0)) as sc
FROM
(SELECT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, accident_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (accident_safe = '10')
    GROUP BY department, observer, accident_safe) as accident_sa ON accident_sa.department = ym.department AND accident_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, accident_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (accident_safe = '01')
GROUP BY department, observer, accident_safe) AS accident_sc ON accident_sc.department = ym.department AND accident_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, accident_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '10')
GROUP BY department, observer, accident_unsafe) AS accident_ua ON accident_ua.department = ym.department AND accident_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, accident_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (accident_unsafe = '01')
GROUP BY department, observer, accident_unsafe) AS accident_uc ON accident_uc.department = ym.department AND accident_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 2 as num, 'fire' as name, sum(isnull(fire_ua.count,0)) as ua, sum(isnull(fire_uc.count,0)) as uc, sum(isnull(fire_sa.count,0)) as sa, sum(isnull(fire_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, fire_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fire_safe = '10')
    GROUP BY department, observer, fire_safe) as fire_sa ON fire_sa.department = ym.department AND fire_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, fire_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fire_safe = '01')
GROUP BY department, observer, fire_safe) AS fire_sc ON fire_sc.department = ym.department AND fire_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, fire_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '10')
GROUP BY department, observer, fire_unsafe) AS fire_ua ON fire_ua.department = ym.department AND fire_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, fire_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fire_unsafe = '01')
GROUP BY department, observer, fire_unsafe) AS fire_uc ON fire_uc.department = ym.department AND fire_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 3 as num, 'prevention' as name, sum(isnull(prevention_ua.count,0)) as ua, sum(isnull(prevention_uc.count,0)) as uc, sum(isnull(prevention_sa.count,0)) as sa, sum(isnull(prevention_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, prevention_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (prevention_safe = '10')
    GROUP BY department, observer, prevention_safe) as prevention_sa ON prevention_sa.department = ym.department AND prevention_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, prevention_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (prevention_safe = '01')
GROUP BY department, observer, prevention_safe) AS prevention_sc ON prevention_sc.department = ym.department AND prevention_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, prevention_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '10')
GROUP BY department, observer, prevention_unsafe) AS prevention_ua ON prevention_ua.department = ym.department AND prevention_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, prevention_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (prevention_unsafe = '01')
GROUP BY department, observer, prevention_unsafe) AS prevention_uc ON prevention_uc.department = ym.department AND prevention_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 4 as num, 'supervisor' as name, sum(isnull(supervisor_ua.count,0)) as ua, sum(isnull(supervisor_uc.count,0)) as uc, sum(isnull(supervisor_sa.count,0)) as sa, sum(isnull(supervisor_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, supervisor_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (supervisor_safe = '10')
    GROUP BY department, observer, supervisor_safe) as supervisor_sa ON supervisor_sa.department = ym.department AND supervisor_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, supervisor_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (supervisor_safe = '01')
GROUP BY department, observer, supervisor_safe) AS supervisor_sc ON supervisor_sc.department = ym.department AND supervisor_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, supervisor_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '10')
GROUP BY department, observer, supervisor_unsafe) AS supervisor_ua ON supervisor_ua.department = ym.department AND supervisor_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, supervisor_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (supervisor_unsafe = '01')
GROUP BY department, observer, supervisor_unsafe) AS supervisor_uc ON supervisor_uc.department = ym.department AND supervisor_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 5 as num, 'fit_work' as name, sum(isnull(fit_work_ua.count,0)) as ua, sum(isnull(fit_work_uc.count,0)) as uc, sum(isnull(fit_work_sa.count,0)) as sa, sum(isnull(fit_work_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, fit_work_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (fit_work_safe = '10')
    GROUP BY department, observer, fit_work_safe) as fit_work_sa ON fit_work_sa.department = ym.department AND fit_work_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, fit_work_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (fit_work_safe = '01')
GROUP BY department, observer, fit_work_safe) AS fit_work_sc ON fit_work_sc.department = ym.department AND fit_work_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, fit_work_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '10')
GROUP BY department, observer, fit_work_unsafe) AS fit_work_ua ON fit_work_ua.department = ym.department AND fit_work_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, fit_work_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (fit_work_unsafe = '01')
GROUP BY department, observer, fit_work_unsafe) AS fit_work_uc ON fit_work_uc.department = ym.department AND fit_work_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 6 as num, 'psychological' as name, sum(isnull(psychological_ua.count,0)) as ua, sum(isnull(psychological_uc.count,0)) as uc, sum(isnull(psychological_sa.count,0)) as sa, sum(isnull(psychological_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, psychological_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (psychological_safe = '10')
    GROUP BY department, observer, psychological_safe) as psychological_sa ON psychological_sa.department = ym.department AND psychological_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, psychological_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (psychological_safe = '01')
GROUP BY department, observer, psychological_safe) AS psychological_sc ON psychological_sc.department = ym.department AND psychological_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, psychological_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '10')
GROUP BY department, observer, psychological_unsafe) AS psychological_ua ON psychological_ua.department = ym.department AND psychological_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, psychological_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (psychological_unsafe = '01')
GROUP BY department, observer, psychological_unsafe) AS psychological_uc ON psychological_uc.department = ym.department AND psychological_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 7 as num, 'posture' as name, sum(isnull(posture_ua.count,0)) as ua, sum(isnull(posture_uc.count,0)) as uc, sum(isnull(posture_sa.count,0)) as sa, sum(isnull(posture_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, posture_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (posture_safe = '10')
    GROUP BY department, observer, posture_safe) as posture_sa ON posture_sa.department = ym.department AND posture_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, posture_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (posture_safe = '01')
GROUP BY department, observer, posture_safe) AS posture_sc ON posture_sc.department = ym.department AND posture_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, posture_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '10')
GROUP BY department, observer, posture_unsafe) AS posture_ua ON posture_ua.department = ym.department AND posture_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, posture_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (posture_unsafe = '01')
GROUP BY department, observer, posture_unsafe) AS posture_uc ON posture_uc.department = ym.department AND posture_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 8 as num, 'substance' as name, sum(isnull(substance_ua.count,0)) as ua, sum(isnull(substance_uc.count,0)) as uc, sum(isnull(substance_sa.count,0)) as sa, sum(isnull(substance_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, substance_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substance_safe = '10')
    GROUP BY department, observer, substance_safe) as substance_sa ON substance_sa.department = ym.department AND substance_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, substance_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substance_safe = '01')
GROUP BY department, observer, substance_safe) AS substance_sc ON substance_sc.department = ym.department AND substance_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, substance_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '10')
GROUP BY department, observer, substance_unsafe) AS substance_ua ON substance_ua.department = ym.department AND substance_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, substance_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substance_unsafe = '01')
GROUP BY department, observer, substance_unsafe) AS substance_uc ON substance_uc.department = ym.department AND substance_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 9 as num, 'hygiene' as name, sum(isnull(hygiene_ua.count,0)) as ua, sum(isnull(hygiene_uc.count,0)) as uc, sum(isnull(hygiene_sa.count,0)) as sa, sum(isnull(hygiene_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, hygiene_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hygiene_safe = '10')
    GROUP BY department, observer, hygiene_safe) as hygiene_sa ON hygiene_sa.department = ym.department AND hygiene_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, hygiene_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hygiene_safe = '01')
GROUP BY department, observer, hygiene_safe) AS hygiene_sc ON hygiene_sc.department = ym.department AND hygiene_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, hygiene_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '10')
GROUP BY department, observer, hygiene_unsafe) AS hygiene_ua ON hygiene_ua.department = ym.department AND hygiene_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, hygiene_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hygiene_unsafe = '01')
GROUP BY department, observer, hygiene_unsafe) AS hygiene_uc ON hygiene_uc.department = ym.department AND hygiene_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 10 as num, 'house' as name, sum(isnull(house_ua.count,0)) as ua, sum(isnull(house_uc.count,0)) as uc, sum(isnull(house_sa.count,0)) as sa, sum(isnull(house_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, house_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (house_safe = '10')
    GROUP BY department, observer, house_safe) as house_sa ON house_sa.department = ym.department AND house_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, house_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (house_safe = '01')
GROUP BY department, observer, house_safe) AS house_sc ON house_sc.department = ym.department AND house_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, house_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '10')
GROUP BY department, observer, house_unsafe) AS house_ua ON house_ua.department = ym.department AND house_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, house_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (house_unsafe = '01')
GROUP BY department, observer, house_unsafe) AS house_uc ON house_uc.department = ym.department AND house_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 11 as num, 'standard' as name, sum(isnull(standard_ua.count,0)) as ua, sum(isnull(standard_uc.count,0)) as uc, sum(isnull(standard_sa.count,0)) as sa, sum(isnull(standard_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, standard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (standard_safe = '10')
    GROUP BY department, observer, standard_safe) as standard_sa ON standard_sa.department = ym.department AND standard_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, standard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (standard_safe = '01')
GROUP BY department, observer, standard_safe) AS standard_sc ON standard_sc.department = ym.department AND standard_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, standard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '10')
GROUP BY department, observer, standard_unsafe) AS standard_ua ON standard_ua.department = ym.department AND standard_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, standard_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (standard_unsafe = '01')
GROUP BY department, observer, standard_unsafe) AS standard_uc ON standard_uc.department = ym.department AND standard_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 12 as num, 'spill' as name, sum(isnull(spill_ua.count,0)) as ua, sum(isnull(spill_uc.count,0)) as uc, sum(isnull(spill_sa.count,0)) as sa, sum(isnull(spill_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, spill_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (spill_safe = '10')
    GROUP BY department, observer, spill_safe) as spill_sa ON spill_sa.department = ym.department AND spill_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, spill_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (spill_safe = '01')
GROUP BY department, observer, spill_safe) AS spill_sc ON spill_sc.department = ym.department AND spill_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, spill_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '10')
GROUP BY department, observer, spill_unsafe) AS spill_ua ON spill_ua.department = ym.department AND spill_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, spill_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (spill_unsafe = '01')
GROUP BY department, observer, spill_unsafe) AS spill_uc ON spill_uc.department = ym.department AND spill_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 13 as num, 'waste_energy' as name, sum(isnull(waste_energy_ua.count,0)) as ua, sum(isnull(waste_energy_uc.count,0)) as uc, sum(isnull(waste_energy_sa.count,0)) as sa, sum(isnull(waste_energy_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, waste_energy_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (waste_energy_safe = '10')
    GROUP BY department, observer, waste_energy_safe) as waste_energy_sa ON waste_energy_sa.department = ym.department AND waste_energy_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, waste_energy_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (waste_energy_safe = '01')
GROUP BY department, observer, waste_energy_safe) AS waste_energy_sc ON waste_energy_sc.department = ym.department AND waste_energy_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, waste_energy_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '10')
GROUP BY department, observer, waste_energy_unsafe) AS waste_energy_ua ON waste_energy_ua.department = ym.department AND waste_energy_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, waste_energy_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (waste_energy_unsafe = '01')
GROUP BY department, observer, waste_energy_unsafe) AS waste_energy_uc ON waste_energy_uc.department = ym.department AND waste_energy_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 14 as num, 'containment' as name, sum(isnull(containment_ua.count,0)) as ua, sum(isnull(containment_uc.count,0)) as uc, sum(isnull(containment_sa.count,0)) as sa, sum(isnull(containment_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, containment_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (containment_safe = '10')
    GROUP BY department, observer, containment_safe) as containment_sa ON containment_sa.department = ym.department AND containment_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, containment_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (containment_safe = '01')
GROUP BY department, observer, containment_safe) AS containment_sc ON containment_sc.department = ym.department AND containment_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, containment_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '10')
GROUP BY department, observer, containment_unsafe) AS containment_ua ON containment_ua.department = ym.department AND containment_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, containment_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (containment_unsafe = '01')
GROUP BY department, observer, containment_unsafe) AS containment_uc ON containment_uc.department = ym.department AND containment_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 15 as num, 'absorbent' as name, sum(isnull(absorbent_ua.count,0)) as ua, sum(isnull(absorbent_uc.count,0)) as uc, sum(isnull(absorbent_sa.count,0)) as sa, sum(isnull(absorbent_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, absorbent_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (absorbent_safe = '10')
    GROUP BY department, observer, absorbent_safe) as absorbent_sa ON absorbent_sa.department = ym.department AND absorbent_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, absorbent_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (absorbent_safe = '01')
GROUP BY department, observer, absorbent_safe) AS absorbent_sc ON absorbent_sc.department = ym.department AND absorbent_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, absorbent_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '10')
GROUP BY department, observer, absorbent_unsafe) AS absorbent_ua ON absorbent_ua.department = ym.department AND absorbent_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, absorbent_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (absorbent_unsafe = '01')
GROUP BY department, observer, absorbent_unsafe) AS absorbent_uc ON absorbent_uc.department = ym.department AND absorbent_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 16 as num, 'hira' as name, sum(isnull(hira_ua.count,0)) as ua, sum(isnull(hira_uc.count,0)) as uc, sum(isnull(hira_sa.count,0)) as sa, sum(isnull(hira_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, hira_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hira_safe = '10')
    GROUP BY department, observer, hira_safe) as hira_sa ON hira_sa.department = ym.department AND hira_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, hira_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hira_safe = '01')
GROUP BY department, observer, hira_safe) AS hira_sc ON hira_sc.department = ym.department AND hira_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, hira_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '10')
GROUP BY department, observer, hira_unsafe) AS hira_ua ON hira_ua.department = ym.department AND hira_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, hira_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hira_unsafe = '01')
GROUP BY department, observer, hira_unsafe) AS hira_uc ON hira_uc.department = ym.department AND hira_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 17 as num, 'ptw' as name, sum(isnull(ptw_ua.count,0)) as ua, sum(isnull(ptw_uc.count,0)) as uc, sum(isnull(ptw_sa.count,0)) as sa, sum(isnull(ptw_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, ptw_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ptw_safe = '10')
    GROUP BY department, observer, ptw_safe) as ptw_sa ON ptw_sa.department = ym.department AND ptw_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, ptw_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ptw_safe = '01')
GROUP BY department, observer, ptw_safe) AS ptw_sc ON ptw_sc.department = ym.department AND ptw_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, ptw_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '10')
GROUP BY department, observer, ptw_unsafe) AS ptw_ua ON ptw_ua.department = ym.department AND ptw_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, ptw_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ptw_unsafe = '01')
GROUP BY department, observer, ptw_unsafe) AS ptw_uc ON ptw_uc.department = ym.department AND ptw_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 18 as num, 'sop' as name, sum(isnull(sop_ua.count,0)) as ua, sum(isnull(sop_uc.count,0)) as uc, sum(isnull(sop_sa.count,0)) as sa, sum(isnull(sop_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, sop_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (sop_safe = '10')
    GROUP BY department, observer, sop_safe) as sop_sa ON sop_sa.department = ym.department AND sop_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, sop_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (sop_safe = '01')
GROUP BY department, observer, sop_safe) AS sop_sc ON sop_sc.department = ym.department AND sop_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, sop_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '10')
GROUP BY department, observer, sop_unsafe) AS sop_ua ON sop_ua.department = ym.department AND sop_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, sop_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (sop_unsafe = '01')
GROUP BY department, observer, sop_unsafe) AS sop_uc ON sop_uc.department = ym.department AND sop_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 19 as num, 'msds' as name, sum(isnull(msds_ua.count,0)) as ua, sum(isnull(msds_uc.count,0)) as uc, sum(isnull(msds_sa.count,0)) as sa, sum(isnull(msds_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, msds_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (msds_safe = '10')
    GROUP BY department, observer, msds_safe) as msds_sa ON msds_sa.department = ym.department AND msds_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, msds_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (msds_safe = '01')
GROUP BY department, observer, msds_safe) AS msds_sc ON msds_sc.department = ym.department AND msds_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, msds_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '10')
GROUP BY department, observer, msds_unsafe) AS msds_ua ON msds_ua.department = ym.department AND msds_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, msds_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (msds_unsafe = '01')
GROUP BY department, observer, msds_unsafe) AS msds_uc ON msds_uc.department = ym.department AND msds_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 20 as num, 'emergency' as name, sum(isnull(emergency_ua.count,0)) as ua, sum(isnull(emergency_uc.count,0)) as uc, sum(isnull(emergency_sa.count,0)) as sa, sum(isnull(emergency_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, emergency_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (emergency_safe = '10')
    GROUP BY department, observer, emergency_safe) as emergency_sa ON emergency_sa.department = ym.department AND emergency_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, emergency_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (emergency_safe = '01')
GROUP BY department, observer, emergency_safe) AS emergency_sc ON emergency_sc.department = ym.department AND emergency_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, emergency_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '10')
GROUP BY department, observer, emergency_unsafe) AS emergency_ua ON emergency_ua.department = ym.department AND emergency_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, emergency_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (emergency_unsafe = '01')
GROUP BY department, observer, emergency_unsafe) AS emergency_uc ON emergency_uc.department = ym.department AND emergency_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 21 as num, 'certificates' as name, sum(isnull(certificates_ua.count,0)) as ua, sum(isnull(certificates_uc.count,0)) as uc, sum(isnull(certificates_sa.count,0)) as sa, sum(isnull(certificates_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, certificates_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (certificates_safe = '10')
    GROUP BY department, observer, certificates_safe) as certificates_sa ON certificates_sa.department = ym.department AND certificates_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, certificates_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (certificates_safe = '01')
GROUP BY department, observer, certificates_safe) AS certificates_sc ON certificates_sc.department = ym.department AND certificates_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, certificates_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '10')
GROUP BY department, observer, certificates_unsafe) AS certificates_ua ON certificates_ua.department = ym.department AND certificates_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, certificates_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (certificates_unsafe = '01')
GROUP BY department, observer, certificates_unsafe) AS certificates_uc ON certificates_uc.department = ym.department AND certificates_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 22 as num, 'ppe' as name, sum(isnull(ppe_ua.count,0)) as ua, sum(isnull(ppe_uc.count,0)) as uc, sum(isnull(ppe_sa.count,0)) as sa, sum(isnull(ppe_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, ppe_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (ppe_safe = '10')
    GROUP BY department, observer, ppe_safe) as ppe_sa ON ppe_sa.department = ym.department AND ppe_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, ppe_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (ppe_safe = '01')
GROUP BY department, observer, ppe_safe) AS ppe_sc ON ppe_sc.department = ym.department AND ppe_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, ppe_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '10')
GROUP BY department, observer, ppe_unsafe) AS ppe_ua ON ppe_ua.department = ym.department AND ppe_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, ppe_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (ppe_unsafe = '01')
GROUP BY department, observer, ppe_unsafe) AS ppe_uc ON ppe_uc.department = ym.department AND ppe_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 23 as num, 'hand' as name, sum(isnull(hand_ua.count,0)) as ua, sum(isnull(hand_uc.count,0)) as uc, sum(isnull(hand_sa.count,0)) as sa, sum(isnull(hand_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, hand_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (hand_safe = '10')
    GROUP BY department, observer, hand_safe) as hand_sa ON hand_sa.department = ym.department AND hand_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, hand_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (hand_safe = '01')
GROUP BY department, observer, hand_safe) AS hand_sc ON hand_sc.department = ym.department AND hand_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, hand_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '10')
GROUP BY department, observer, hand_unsafe) AS hand_ua ON hand_ua.department = ym.department AND hand_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, hand_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (hand_unsafe = '01')
GROUP BY department, observer, hand_unsafe) AS hand_uc ON hand_uc.department = ym.department AND hand_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 24 as num, 'mechanical' as name, sum(isnull(mechanical_ua.count,0)) as ua, sum(isnull(mechanical_uc.count,0)) as uc, sum(isnull(mechanical_sa.count,0)) as sa, sum(isnull(mechanical_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, mechanical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (mechanical_safe = '10')
    GROUP BY department, observer, mechanical_safe) as mechanical_sa ON mechanical_sa.department = ym.department AND mechanical_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, mechanical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (mechanical_safe = '01')
GROUP BY department, observer, mechanical_safe) AS mechanical_sc ON mechanical_sc.department = ym.department AND mechanical_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, mechanical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '10')
GROUP BY department, observer, mechanical_unsafe) AS mechanical_ua ON mechanical_ua.department = ym.department AND mechanical_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, mechanical_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (mechanical_unsafe = '01')
GROUP BY department, observer, mechanical_unsafe) AS mechanical_uc ON mechanical_uc.department = ym.department AND mechanical_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 25 as num, 'electrical' as name, sum(isnull(electrical_ua.count,0)) as ua, sum(isnull(electrical_uc.count,0)) as uc, sum(isnull(electrical_sa.count,0)) as sa, sum(isnull(electrical_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, electrical_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (electrical_safe = '10')
    GROUP BY department, observer, electrical_safe) as electrical_sa ON electrical_sa.department = ym.department AND electrical_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, electrical_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (electrical_safe = '01')
GROUP BY department, observer, electrical_safe) AS electrical_sc ON electrical_sc.department = ym.department AND electrical_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, electrical_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '10')
GROUP BY department, observer, electrical_unsafe) AS electrical_ua ON electrical_ua.department = ym.department AND electrical_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, electrical_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (electrical_unsafe = '01')
GROUP BY department, observer, electrical_unsafe) AS electrical_uc ON electrical_uc.department = ym.department AND electrical_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 26 as num, 'vehicular' as name, sum(isnull(vehicular_ua.count,0)) as ua, sum(isnull(vehicular_uc.count,0)) as uc, sum(isnull(vehicular_sa.count,0)) as sa, sum(isnull(vehicular_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, vehicular_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (vehicular_safe = '10')
    GROUP BY department, observer, vehicular_safe) as vehicular_sa ON vehicular_sa.department = ym.department AND vehicular_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, vehicular_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (vehicular_safe = '01')
GROUP BY department, observer, vehicular_safe) AS vehicular_sc ON vehicular_sc.department = ym.department AND vehicular_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, vehicular_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '10')
GROUP BY department, observer, vehicular_unsafe) AS vehicular_ua ON vehicular_ua.department = ym.department AND vehicular_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, vehicular_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (vehicular_unsafe = '01')
GROUP BY department, observer, vehicular_unsafe) AS vehicular_uc ON vehicular_uc.department = ym.department AND vehicular_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 27 as num, 'substandard' as name, sum(isnull(substandard_ua.count,0)) as ua, sum(isnull(substandard_uc.count,0)) as uc, sum(isnull(substandard_sa.count,0)) as sa, sum(isnull(substandard_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, substandard_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (substandard_safe = '10')
    GROUP BY department, observer, substandard_safe) as substandard_sa ON substandard_sa.department = ym.department AND substandard_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, substandard_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (substandard_safe = '01')
GROUP BY department, observer, substandard_safe) AS substandard_sc ON substandard_sc.department = ym.department AND substandard_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, substandard_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '10')
GROUP BY department, observer, substandard_unsafe) AS substandard_ua ON substandard_ua.department = ym.department AND substandard_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, substandard_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (substandard_unsafe = '01')
GROUP BY department, observer, substandard_unsafe) AS substandard_uc ON substandard_uc.department = ym.department AND substandard_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 28 as num, 'h2s' as name, sum(isnull(h2s_ua.count,0)) as ua, sum(isnull(h2s_uc.count,0)) as uc, sum(isnull(h2s_sa.count,0)) as sa, sum(isnull(h2s_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, h2s_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (h2s_safe = '10')
    GROUP BY department, observer, h2s_safe) as h2s_sa ON h2s_sa.department = ym.department AND h2s_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, h2s_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (h2s_safe = '01')
GROUP BY department, observer, h2s_safe) AS h2s_sc ON h2s_sc.department = ym.department AND h2s_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, h2s_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '10')
GROUP BY department, observer, h2s_unsafe) AS h2s_ua ON h2s_ua.department = ym.department AND h2s_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, h2s_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (h2s_unsafe = '01')
GROUP BY department, observer, h2s_unsafe) AS h2s_uc ON h2s_uc.department = ym.department AND h2s_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
UNION
SELECT 29 as num, 'workplace_health' as name, sum(isnull(workplace_health_ua.count,0)) as ua, sum(isnull(workplace_health_uc.count,0)) as uc, sum(isnull(workplace_health_sa.count,0)) as sa, sum(isnull(workplace_health_sc.count,0)) as sc
FROM
(SELECT DISTINCT department, observer
    FROM    she_observation) AS ym LEFT OUTER JOIN
(SELECT department, observer, workplace_health_safe AS asa, COUNT(id) AS count
    FROM    she_observation AS she_observation_2
    WHERE   (workplace_health_safe = '10')
    GROUP BY department, observer, workplace_health_safe) as workplace_health_sa ON workplace_health_sa.department = ym.department AND workplace_health_sa.observer = ym.observer FULL JOIN
(SELECT department, observer, workplace_health_safe AS [asc], COUNT(id) AS count
    FROM            she_observation AS she_observation_1
    WHERE        (workplace_health_safe = '01')
GROUP BY department, observer, workplace_health_safe) AS workplace_health_sc ON workplace_health_sc.department = ym.department AND workplace_health_sc.observer = ym.observer FULL JOIN
(SELECT department, observer, workplace_health_unsafe AS aua, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '10')
GROUP BY department, observer, workplace_health_unsafe) AS workplace_health_ua ON workplace_health_ua.department = ym.department AND workplace_health_ua.observer = ym.observer FULL JOIN
(SELECT department, observer, workplace_health_unsafe AS auc, COUNT(id) AS count
    FROM    she_observation AS she_observation_1
    WHERE   (workplace_health_unsafe = '01')
GROUP BY department, observer, workplace_health_unsafe) AS workplace_health_uc ON workplace_health_uc.department = ym.department AND workplace_health_uc.observer = ym.observer
WHERE ym.department like @department AND ym.observer like @observer
);


GO
SET IDENTITY_INSERT [dbo].[she_obs_category] ON 

INSERT [dbo].[she_obs_category] ([id], [title]) VALUES (1, N'Safety')
INSERT [dbo].[she_obs_category] ([id], [title]) VALUES (2, N'Health')
INSERT [dbo].[she_obs_category] ([id], [title]) VALUES (3, N'Environment')
INSERT [dbo].[she_obs_category] ([id], [title]) VALUES (4, N'Document/Procedure')
INSERT [dbo].[she_obs_category] ([id], [title]) VALUES (5, N'Tools & Equipment')
INSERT [dbo].[she_obs_category] ([id], [title]) VALUES (6, N'Working Area')
SET IDENTITY_INSERT [dbo].[she_obs_category] OFF
