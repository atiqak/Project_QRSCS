﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QRSCS.Common.CaseHistory
{
    public class RecommendationModel
    {
        public int Recommendation_Answer_ID { get; set; }
        public int CaseHistory_ID { get; set; }
        public string IEP { get; set; }
        public string Physical_Therapy { get; set; }
        public string Occupational_Therapy { get; set; }
        public string Speech_Therapy { get; set; }
        public string Music_Therapy { get; set; }
        public string Vocational_Therapy { get; set; }
        public string Correction_of_Defect { get; set; }
        public string Glasses { get; set; }
        public string Heraing_Aid { get; set; }
        public string Orthopedic_appliance { get; set; }
        public string Attention_to_home_situation { get; set; }
        public string Parental_Counseling { get; set; }
        public string Any_other_Home { get; set; }
        public string Home_Based_Program { get; set; }
        public string Special_School { get; set; }
        public string Medication { get; set; }
        public string Any_other { get; set; }
    }
}