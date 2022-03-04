using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QRSCS.Common.CaseHistory
{
    public class BehavioralObservationModel
    {
        public int Behavioral_Observation_Answer_ID { get; set; }
        public int CaseHistory_ID { get; set; }
        public string Aggressive { get; set; }
        public string Restlessness { get; set; }
        public string Impulsivity { get; set; }
        public string Distractibility { get; set; }
        public string Destructive { get; set; }
        public string Hyper_Active { get; set; }
        public string Tantrum { get; set; }
        public string Self_Stimulation { get; set; }
        public string Shyness { get; set; }
        public string Complain { get; set; }
        public string Dependence { get; set; }
        public string Low_Self_Image { get; set; }
        public string Add_ { get; set; }
        public string Short_Attention_Span { get; set; }
        public string Poor_Motivation { get; set; }
        public string Isolation_ { get; set; }
        public string Withdrawn { get; set; }
        public string Asocial { get; set; }

    }
}