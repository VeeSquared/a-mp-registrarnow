﻿namespace MVC.Controllers
{
    using System.Web.Mvc;

    public class ScheduleController : Controller
    {
        public ActionResult Index()
        {
            return this.View("Index");
        }

        public ActionResult ManageSchedule()
        {
            return this.View();
        }
    }
}
