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
    public partial class rca_implementation
    {
        [ReadOnly(true)]
        public int id { get; set; }

        [DefaultValue("")]
        public string next_action { get; set; }
		
        public Nullable<int> pic { get; set; }
        [DataType(DataType.Date)]
        public Nullable<System.DateTime> due_date { get; set; }
        public Nullable<byte> is_complete { get; set; }
        public Nullable<int> id_rca { get; set; }

        [DataType(DataType.Date)]
        public Nullable<System.DateTime> complete_date { get; set; }

        [UIHint("Dampak")]
        public Nullable<byte> dampak { get; set; }

        [UIHint("Usaha")]
        public Nullable<byte> usaha { get; set; }
    
        public virtual employee employee { internal get; set; }
    }
    
}
