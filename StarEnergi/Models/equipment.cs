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
using System.ComponentModel.DataAnnotations;

namespace StarEnergi.Models
{
    public partial class equipment
    {
        public equipment()
        {
            this.equipment_paf = new HashSet<equipment_paf>();
            this.equipment_readiness_nav = new HashSet<equipment_readiness_nav>();
            this.equipment_part = new HashSet<equipment_part>();
            this.equipment_event = new HashSet<equipment_event>();
            status = 1;
            mtbf = 0;
            mttr = 0;
            mdt = 0;
            status_read_nav = 0;
        }

        [Key]
        public int id { get; set; }
        public int id_equipment_group { get; set; }
        public Nullable<byte> id_category { get; set; }

        [Required]
        [Display(Name = "Tag Num")]
        public string tag_num { get; set; }

        [Required]
        [Display(Name = "Nama")]
        public string nama { get; set; }

        [Display(Name = "PDF")]
        public string pdf { get; set; }

        [Display(Name = "Tetha")]
        public Nullable<double> tetha { get; set; }

        [Display(Name = "Betha")]
        public Nullable<double> beta { get; set; }

        [Display(Name = "Mean")]
        public Nullable<double> mean { get; set; }

        [Display(Name = "Varian")]
        public Nullable<double> varian { get; set; }

        [Display(Name = "Lamda")]
        public Nullable<double> lamda { get; set; }

        [Display(Name = "Sub Class")]
        public Nullable<int> id_discipline { get; set; }

        [Display(Name = "MTBF")]
        public Nullable<int> mtbf { get; set; }

        [Display(Name = "MTTR")]
        public Nullable<int> mttr { get; set; }

        [Display(Name = "MDT")]
        public Nullable<int> mdt { get; set; }
        public Nullable<byte> status { get; set; }
        public string method { get; set; }

        [Display(Name = "Econ")]
        public Nullable<int> econ { get; set; }

        [Display(Name = "Ram Crit")]
        public string ram_crit { get; set; }

        [Display(Name = "Installed Date")]
        public Nullable<System.DateTime> installed_date { get; set; }

        [Display(Name = "Obsolete Date")]
        public Nullable<System.DateTime> obsolete_date { get; set; }

        [Display(Name = "Warranty")]
        public Nullable<int> warranty { get; set; }

        [Display(Name = "Manufacture")]
        public string vendor { get; set; }

        [Display(Name = "Equipment Class")]
        public Nullable<int> id_tag_type { get; set; }
        public Nullable<byte> status_read_nav { get; set; }

        [Display(Name = "Data Sheet")]
        public string data_sheet_path { get; set; }

        [Display(Name = "Sertifikasi")]
        public Nullable<System.DateTime> sertifikasi { get; set; }

        [Display(Name = "P&ID Tag Num")]
        [StringLength(255,ErrorMessage="P&ID Tag Number cannot more than 255 characters.")]
        public string pnid_tag_num { get; set; }

        [Display(Name = "Func Code")]
        public string functional_code { get; set; }

        [Display(Name = "MPI")]
        public Nullable<double> mpi { get; set; }

        [Display(Name = "ACR")]
        public Nullable<double> acr { get; set; }

        [Display(Name = "AFP")]
        public Nullable<int> id_afp { get; set; }

        [Display(Name = "OCR")]
        public Nullable<int> id_ocr { get; set; }

        public virtual discipline discipline { get; set; }
        public virtual ICollection<equipment_event> equipment_event { get; set; }
        public virtual equipment_groups equipment_groups { get; set; }
        public virtual ICollection<equipment_paf> equipment_paf { get; set; }
        public virtual ICollection<equipment_part> equipment_part { get; set; }
        public virtual ICollection<equipment_readiness_nav> equipment_readiness_nav { get; set; }
        public virtual tag_types tag_types { get; set; }

        public virtual afp afp { get; set; }

        public virtual ocr ocr { get; set; }
    }
    
}
