using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QRSCS.Common.CaseHistory
{
    public class DevelopmentHistoryModel
    {
        public int Development_History_ID { get; set; }
        public int CaseHistory_ID { get; set; }
        public string Anemia { get; set; }
        public string Exposure_or_Radiation { get; set; }
        public string Rubella { get; set; }
        public string Attempted_Abortion { get; set; }
        public string Mediation_Drugs { get; set; }
        public string Alcohol { get; set; }
        public string Tobaco { get; set; }
        public string Any_Other_Development { get; set; }
        public string Labor { get; set; }
        public string Condition_at_birth { get; set; }
        public string Attendant_During_Labour { get; set; }
        public string Juandice { get; set; }
        public string Convulsions { get; set; }
        public string Cyanotic_Attacks { get; set; }
        public string Feeding_Difficulty { get; set; }
        public string Any_Other_Neo_Natal_Period { get; set; }
    }
}