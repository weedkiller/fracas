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
    public partial class pe
    {
        public pe()
        {
            this.systems = new HashSet<system>();
        }
    
        public int id { get; set; }
        public Nullable<double> pe_value { get; set; }
        public string pe_description { get; set; }
        public Nullable<double> pe_score { get; set; }
    
        public virtual ICollection<system> systems { get; set; }
    }
    
}
