using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QRSCS.Models;
using QRSCS.Manager;
using System.IO;
using QRSCS.Filters;

namespace QRSCS.Controllers
{
    [AuthorizedUser]
    public class EditorController : Controller
    {
        // GET: Editor
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult NewAdmission()
        {
            ViewBag.Message = "";
            return View();
        }

        [HttpPost]
        public JsonResult GetUserByID(string GR_NO )
        {
            CaseHistoryManager onbj = new CaseHistoryManager();
            return Json(onbj.CheckUserExists(GR_NO));
        }

        [HttpPost]
        public ActionResult NewAdmission(NewAdmissionModel student)
        {
            if (ModelState.IsValid)
            {
                NewAdmissionManager obj = new NewAdmissionManager();
                student.User_ID = Convert.ToInt32(Session["User_ID"]);
                int grno = obj.AddStudent(student);
                if (grno > 0)
                {
                    TempData["Message"] = "Student Added Successfuly and Student GR-NO is " + grno;
                }

                else
                {
                    TempData["Message"] = "Student Not Added !";
                }
            }
            else
            {
                TempData["Message"] = "Student Not Added !";
            }
            return View();
        }

        [HttpGet]
        public ActionResult CaseHistory()
        {
            ViewBag.Message = "";
            return View();
        }

        [HttpPost]
        public ActionResult CaseHistory(CaseHistoryModelDTO student)
        {
            if (ModelState.IsValid)
            {
                CaseHistoryManager obj = new CaseHistoryManager();
                int chistoryID = obj.AddCaseHistory(student);
                if (chistoryID > 0)
                {
                    TempData["Message"] = "Student Case History Added Successfuly  " + chistoryID;
                }

                else
                {
                    TempData["Message"] = "Student Case History Not Added !";
                }
            }
            else
            {
                TempData["Message"] = "Student Case History Not Added !";
            }
            return View();
        }

        [HttpGet]
        public ActionResult SpeechTherapyAssessment()

        {
            return View();
        }
        [HttpPost]
        public ActionResult SpeechTherapyAssessment(SpeechTherapyAssessmentModel student, HttpPostedFileBase ImageFile)

        {
            if (ModelState.IsValid)
            {
                if (ImageFile == null)
                {
                    TempData["Message"] = "Upload User Picture !";
                    return View();
                }
                else
                {
                    string Filename = Path.GetFileNameWithoutExtension(ImageFile.FileName);
                    string Extension = Path.GetExtension(ImageFile.FileName);
                    Filename = Filename + DateTime.Now.ToString("yymmssfff") + Extension;
                    student.Speech_Test_Image = "~/ProjectData/" + Filename;
                    Filename = Path.Combine(Server.MapPath("~/ProjectData/"), Filename);
                    ImageFile.SaveAs(Filename);
                    SpeechTherapyAssessmentManager obj = new SpeechTherapyAssessmentManager();
                    int staid = obj.AddSpeechTherapyAssessment(student);
                    if (staid > 0)
                    {
                        TempData["Message"] = "Successfully saved";
                        return View();
                    }
                    else
                    {
                        TempData["Message"] = "Not saved";
                    }
                }
            }
            else
            {
                TempData["Message"] = "Serach Student First then Upload Picture";
            }
            return View();
        }

        [HttpGet]
        public ActionResult SpeechCaseHistory()
        {
            return View();
        }
        [HttpPost]
        public ActionResult SpeechCaseHistory(SpeachCaseHistoryModelDTO SpeechHistory)
        {
            if (ModelState.IsValid)
            {
                SpeechCaseHistoryManager obj = new SpeechCaseHistoryManager();   
                int SpeachCaseHistoryID = obj.AddSpeechCaseHistory(SpeechHistory);
                if (SpeachCaseHistoryID > 0)
                {
                    TempData["Message"] = "Speach Case History Added Successfuly" + SpeachCaseHistoryID;
                }

                else
                {
                    TempData["Message"] = "Speach Case History Not Added !";
                }
            }
            else
            {
                TempData["Message"] = "Speach Case History Not Added !";
            }
            return View();
        }
        public ActionResult AudiologyAssessment()
        {
            return View();
        }

    }
}