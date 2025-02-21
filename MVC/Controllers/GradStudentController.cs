﻿namespace MVC.Controllers
{
    using System.Web.Mvc;

    public class GradStudentController : Controller
    {
        public ActionResult Index(string id)
        {
            ViewBag.Id = id;
            return this.View();
        }

        public ActionResult Edit(string id)
        {
            ViewBag.Id = id;
            return this.View();
        }

        public ActionResult CreateGradStudent(string id)
        {
            ViewBag.Id = id;
            return this.View();
        }

        public ActionResult DeleteGradStudent(string id)
        {
            ViewBag.Id = id;
            return this.View();
        }
    }
}
