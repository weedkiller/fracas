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
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace StarEnergi.Models
{
    public partial class daily_log_pro
    {
        [ReadOnly(true)]
        public int id { get; set; }
        public Nullable<int> id_daily_log { get; set; }
        public string wo_number { get; set; }
        public string work_to_be_performed { get; set; }

        [UIHint("SapStatus")]
        public Nullable<byte> sap_status { get; set; }

        [DataType(DataType.Time)]
        public string pro_time { get; set; }
        public string username { get; set; }
    
        public virtual daily_log daily_log { internal get; set; }
    }
    
}
