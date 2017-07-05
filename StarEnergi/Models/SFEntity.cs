﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StarEnergi.Models
{
    public class SFEntity
    {
        public int id { get; set; }        
        public double? sf_value { get; set; }
        public string sf_description { get; set; }
        public double? sf_score { get; set; }
        public string nama { get; set; }
    }
}