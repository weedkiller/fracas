//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

namespace StarEnergi.Models
{
    public partial class trouble_shooting
    {
        public int id { get; set; }
        public string no { get; set; }
        public string equipment_no { get; set; }
        public string equipment_description { get; set; }
        public Nullable<System.DateTime> date_of_trouble { get; set; }
        public Nullable<System.TimeSpan> time_of_trouble { get; set; }
        public Nullable<System.DateTime> start_date_repair { get; set; }
        public Nullable<System.DateTime> end_date_repair { get; set; }
        public string time_repaired { get; set; }
        public string wo_number { get; set; }
        public string description_trouble { get; set; }
        public string as_found_condition { get; set; }
        public string analysis { get; set; }
        public string action { get; set; }
        public string recommendation { get; set; }
        public string inspector_name { get; set; }
        public string inspector_signature { get; set; }
        public string supervisor_approval_name { get; set; }
        public string supervisor_approval_signature { get; set; }
        public Nullable<System.DateTime> inspector_date { get; set; }
        public Nullable<System.DateTime> supervisor_approval_date { get; set; }
        public Nullable<int> id_ir { get; set; }
        public string superintendent_approval_name { get; set; }
        public string superintendent_approval_signature { get; set; }
        public Nullable<System.DateTime> superintendent_approval_date { get; set; }
        public string superintendent_delegate { get; set; }
        public string supervisor_delegate { get; set; }
    }
    
}