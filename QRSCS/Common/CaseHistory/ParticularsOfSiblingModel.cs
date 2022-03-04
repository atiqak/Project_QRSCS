using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QRSCS.Common.CaseHistory
{
    public class ParticularsOfSiblingModel
    {
        public int Particulars_of_Sibling_ID { get; set; }
        public int CaseHistory_ID { get; set; }
        public int Number_of_Siblings { get; set; }
        public int Child_Order { get; set; }
        public string Any_Disability { get; set; }

    }
}