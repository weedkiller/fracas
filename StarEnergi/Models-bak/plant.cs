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
    public partial class plant
    {
        public plant()
        {
            this.focs = new HashSet<foc>();
            this.employee_dept = new HashSet<employee_dept>();
        }
    
        public int id { get; set; }
        public string nama { get; set; }
    
        public virtual ICollection<foc> focs { get; set; }
        public virtual ICollection<employee_dept> employee_dept { get; set; }
    }
    
}