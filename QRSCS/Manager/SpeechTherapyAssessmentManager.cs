using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using QRSCS.Models;
using System.Data.Entity;

namespace QRSCS.Manager
{
    public class SpeechTherapyAssessmentManager
    {

        int SAid = 0;
        public int AddSpeechTherapyAssessment(SpeechTherapyAssessmentModel staid)
        {
            using (QRSCS_DatabaseEntities db = new QRSCS_DatabaseEntities())
            {
                Speech_Therapy_Assessment tbluser = new Speech_Therapy_Assessment();
                tbluser.GR_NO = staid.GR_NO;
                tbluser.Speech_Test_Image = staid.Speech_Test_Image;
                db.Speech_Therapy_Assessment.Add(tbluser);
                tbluser.Date_of_Assessment = staid.Date_of_Assessment;
                db.SaveChanges();

                SAid = tbluser.Speech_Therapy_Assessment_ID;
            }
            return SAid;
        }
        public List<SpeechTherapyAssessmentModel> selectStudentSpeechAssessment()
        {
            using (QRSCS_DatabaseEntities db = new QRSCS_DatabaseEntities())
            {
                var request = db.Speech_Therapy_Assessment.ToList();
                List<SpeechTherapyAssessmentModel> List = request.Select(x => new SpeechTherapyAssessmentModel
                {
                    GR_NO = x.GR_NO,
                    Speech_Test_Image = x.Speech_Test_Image,
                    Speech_Therapy_Assessment_ID = x.Speech_Therapy_Assessment_ID,
                    Date_of_Assessment = x.Date_of_Assessment,
                  
                }).ToList();
                return List;
            }
        }

    }
}