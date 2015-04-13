﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StarEnergi.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class relmon_star_energiEntities : DbContext
    {
        public relmon_star_energiEntities()
            : base("name=relmon_star_energiEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<audit> audits { get; set; }
        public DbSet<audit_log> audit_log { get; set; }
        public DbSet<audit_log_clause> audit_log_clause { get; set; }
        public DbSet<bom> boms { get; set; }
        public DbSet<comms_rbi> comms_rbi { get; set; }
        public DbSet<component> components { get; set; }
        public DbSet<daily_log> daily_log { get; set; }
        public DbSet<daily_log_last_plant_status> daily_log_last_plant_status { get; set; }
        public DbSet<daily_log_maintainence> daily_log_maintainence { get; set; }
        public DbSet<daily_log_operation_warning> daily_log_operation_warning { get; set; }
        public DbSet<daily_log_power_stations> daily_log_power_stations { get; set; }
        public DbSet<daily_log_pro> daily_log_pro { get; set; }
        public DbSet<daily_log_sags> daily_log_sags { get; set; }
        public DbSet<daily_log_sap> daily_log_sap { get; set; }
        public DbSet<daily_log_to_wells> daily_log_to_wells { get; set; }
        public DbSet<daily_log_weekly_target> daily_log_weekly_target { get; set; }
        public DbSet<daily_log_wells> daily_log_wells { get; set; }
        public DbSet<daily_log_wpnb> daily_log_wpnb { get; set; }
        public DbSet<discipline> disciplines { get; set; }
        public DbSet<duty_manager> duty_manager { get; set; }
        public DbSet<email_error> email_error { get; set; }
        public DbSet<employee> employees { get; set; }
        public DbSet<employee_delegations> employee_delegations { get; set; }
        public DbSet<employee_dept> employee_dept { get; set; }
        public DbSet<equipment_daily_report> equipment_daily_report { get; set; }
        public DbSet<equipment_daily_report_table> equipment_daily_report_table { get; set; }
        public DbSet<equipment_event> equipment_event { get; set; }
        public DbSet<equipment_groups> equipment_groups { get; set; }
        public DbSet<equipment_paf> equipment_paf { get; set; }
        public DbSet<equipment_part> equipment_part { get; set; }
        public DbSet<equipment_read_nav_note> equipment_read_nav_note { get; set; }
        public DbSet<equipment_readiness_nav> equipment_readiness_nav { get; set; }
        public DbSet<equipment> equipments { get; set; }
        public DbSet<event_descriptions> event_descriptions { get; set; }
        public DbSet<failure_causes> failure_causes { get; set; }
        public DbSet<failure_effects> failure_effects { get; set; }
        public DbSet<failure_modes> failure_modes { get; set; }
        public DbSet<foc_op_avail> foc_op_avail { get; set; }
        public DbSet<foc_paf> foc_paf { get; set; }
        public DbSet<foc_target_paf> foc_target_paf { get; set; }
        public DbSet<foc> focs { get; set; }
        public DbSet<iir_recommendations> iir_recommendations { get; set; }
        public DbSet<immediate_actions> immediate_actions { get; set; }
        public DbSet<incident_report> incident_report { get; set; }
        public DbSet<incident_report_log> incident_report_log { get; set; }
        public DbSet<investigation_report> investigation_report { get; set; }
        public DbSet<investigation_report_log> investigation_report_log { get; set; }
        public DbSet<ir_KPI_log> ir_KPI_log { get; set; }
        public DbSet<long_term_actions> long_term_actions { get; set; }
        public DbSet<ma> mas { get; set; }
        public DbSet<master_security> master_security { get; set; }
        public DbSet<monthly_project_activity> monthly_project_activity { get; set; }
        public DbSet<monthly_project_outstanding_activity> monthly_project_outstanding_activity { get; set; }
        public DbSet<monthly_project_she_report> monthly_project_she_report { get; set; }
        public DbSet<monthly_she_contractor> monthly_she_contractor { get; set; }
        public DbSet<part_unit_event> part_unit_event { get; set; }
        public DbSet<part> parts { get; set; }
        public DbSet<pir> pirs { get; set; }
        public DbSet<pir_clause> pir_clause { get; set; }
        public DbSet<pir_log> pir_log { get; set; }
        public DbSet<plant> plants { get; set; }
        public DbSet<process_owner> process_owner { get; set; }
        public DbSet<rca> rcas { get; set; }
        public DbSet<rca_analisys_type> rca_analisys_type { get; set; }
        public DbSet<rca_building> rca_building { get; set; }
        public DbSet<rca_csf> rca_csf { get; set; }
        public DbSet<rca_csf_conector> rca_csf_conector { get; set; }
        public DbSet<rca_department> rca_department { get; set; }
        public DbSet<rca_desc> rca_desc { get; set; }
        public DbSet<rca_facility> rca_facility { get; set; }
        public DbSet<rca_fishbone_master> rca_fishbone_master { get; set; }
        public DbSet<rca_floor> rca_floor { get; set; }
        public DbSet<rca_graph_metric> rca_graph_metric { get; set; }
        public DbSet<rca_implementation> rca_implementation { get; set; }
        public DbSet<rca_pre_task> rca_pre_task { get; set; }
        public DbSet<rca_preserve_category> rca_preserve_category { get; set; }
        public DbSet<rca_section> rca_section { get; set; }
        public DbSet<rca_team_connector> rca_team_connector { get; set; }
        public DbSet<rca_template> rca_template { get; set; }
        public DbSet<safe_man_hours> safe_man_hours { get; set; }
        public DbSet<safe_man_hours_incident> safe_man_hours_incident { get; set; }
        public DbSet<secondary_effects> secondary_effects { get; set; }
        public DbSet<she_illness_report> she_illness_report { get; set; }
        public DbSet<she_injury_report> she_injury_report { get; set; }
        public DbSet<she_KPI_target> she_KPI_target { get; set; }
        public DbSet<she_obs_category> she_obs_category { get; set; }
        public DbSet<she_obs_KPI_log> she_obs_KPI_log { get; set; }
        public DbSet<she_obs_sub_category> she_obs_sub_category { get; set; }
        public DbSet<she_observation> she_observation { get; set; }
        public DbSet<she_observation_undian> she_observation_undian { get; set; }
        public DbSet<she_observation_undian_exception> she_observation_undian_exception { get; set; }
        public DbSet<she_observation_undian_reward> she_observation_undian_reward { get; set; }
        public DbSet<she_observation_undian_winner> she_observation_undian_winner { get; set; }
        public DbSet<sub_component> sub_component { get; set; }
        public DbSet<system_paf> system_paf { get; set; }
        public DbSet<system> systems { get; set; }
        public DbSet<tag_types> tag_types { get; set; }
        public DbSet<trouble_shooting> trouble_shooting { get; set; }
        public DbSet<unit_paf> unit_paf { get; set; }
        public DbSet<unit> units { get; set; }
        public DbSet<user_per_role> user_per_role { get; set; }
        public DbSet<user_role> user_role { get; set; }
        public DbSet<user> users { get; set; }
        public DbSet<weekend_duty> weekend_duty { get; set; }
        public DbSet<workflow_node> workflow_node { get; set; }
    
        public virtual int insertUser(string username, Nullable<int> idEmployee)
        {
            var usernameParameter = username != null ?
                new ObjectParameter("username", username) :
                new ObjectParameter("username", typeof(string));
    
            var idEmployeeParameter = idEmployee.HasValue ?
                new ObjectParameter("idEmployee", idEmployee) :
                new ObjectParameter("idEmployee", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("insertUser", usernameParameter, idEmployeeParameter);
        }
    
        public virtual ObjectResult<observationByDate_Result> observationByDate(string year, string month, string day)
        {
            var yearParameter = year != null ?
                new ObjectParameter("year", year) :
                new ObjectParameter("year", typeof(string));
    
            var monthParameter = month != null ?
                new ObjectParameter("month", month) :
                new ObjectParameter("month", typeof(string));
    
            var dayParameter = day != null ?
                new ObjectParameter("day", day) :
                new ObjectParameter("day", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<observationByDate_Result>("observationByDate", yearParameter, monthParameter, dayParameter);
        }
    
        public virtual ObjectResult<observationByDepartment_Result> observationByDepartment(string department)
        {
            var departmentParameter = department != null ?
                new ObjectParameter("department", department) :
                new ObjectParameter("department", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<observationByDepartment_Result>("observationByDepartment", departmentParameter);
        }
    
        public virtual ObjectResult<observationByDepartmentObserver2_Result> observationByDepartmentObserver2(string department, string observer)
        {
            var departmentParameter = department != null ?
                new ObjectParameter("department", department) :
                new ObjectParameter("department", typeof(string));
    
            var observerParameter = observer != null ?
                new ObjectParameter("observer", observer) :
                new ObjectParameter("observer", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<observationByDepartmentObserver2_Result>("observationByDepartmentObserver2", departmentParameter, observerParameter);
        }
    
        public virtual ObjectResult<observationByMonth_Result> observationByMonth(string year, string month)
        {
            var yearParameter = year != null ?
                new ObjectParameter("year", year) :
                new ObjectParameter("year", typeof(string));
    
            var monthParameter = month != null ?
                new ObjectParameter("month", month) :
                new ObjectParameter("month", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<observationByMonth_Result>("observationByMonth", yearParameter, monthParameter);
        }
    
        public virtual ObjectResult<observationByObserver_Result> observationByObserver(string observer)
        {
            var observerParameter = observer != null ?
                new ObjectParameter("observer", observer) :
                new ObjectParameter("observer", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<observationByObserver_Result>("observationByObserver", observerParameter);
        }
    
        public virtual int observationSummary(string year)
        {
            var yearParameter = year != null ?
                new ObjectParameter("year", year) :
                new ObjectParameter("year", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("observationSummary", yearParameter);
        }
    
        public virtual int observationSummary3(string year)
        {
            var yearParameter = year != null ?
                new ObjectParameter("year", year) :
                new ObjectParameter("year", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("observationSummary3", yearParameter);
        }
    }
}
