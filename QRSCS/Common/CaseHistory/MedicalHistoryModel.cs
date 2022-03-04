using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QRSCS.Common.CaseHistory
{
    public class MedicalHistoryModel
    {
        public int Medical_History_ID { get; set; }
        public int CaseHistory_ID { get; set; }
        public string Measles_Answer { get; set; }
        public string Whooping_Enough_Answer { get; set; }
        public string Mumps_Answer { get; set; }
        public string Chickenpox_Answer { get; set; }
        public string Pneumonia_Answer { get; set; }
        public string Diphtheria_Answer { get; set; }
        public string Polio_Answer { get; set; }
        public string Influenza_Answer { get; set; }
        public string Typhoid_Answer { get; set; }
        public string Convulsion_Answer { get; set; }
        public string Rheumatic_Fever_Answer { get; set; }
        public string High_Grade_Fever_Answer { get; set; }
        public int Measles_Age { get; set; }
        public int Whooping_Enough_Age { get; set; }
        public int Mumps_Age { get; set; }
        public int Chickenpox_Age { get; set; }
        public int Pneumonia_Age { get; set; }
        public int Diphtheria_Age { get; set; }
        public int Polio_Age { get; set; }
        public int Influenza_Age { get; set; }
        public int Typhoid_Age { get; set; }
        public int Convulsion_Age { get; set; }
        public int Rheumatic_Fever_Age { get; set; }
        public int High_Grade_Fever_Age { get; set; }
        public string Any_Other { get; set; }
    }
}