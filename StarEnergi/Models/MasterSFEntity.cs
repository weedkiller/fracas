﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace StarEnergi.Models
{
    public class MasterSFEntity
    {
        public int id { get; set; }
        [UIHint("Double")]
        public Nullable<double> sf_value { get; set; }
        public string sf_description { get; set; }
        [UIHint("Double")]
        public Nullable<double> sf_score { get; set; }
    }
}