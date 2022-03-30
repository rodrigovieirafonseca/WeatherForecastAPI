using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClimaTempoSimples.Models;

namespace ClimaTempoSimples.Controllers
{
    public class HomeController : Controller
    {
        ClimaTempoDBEntities climaTempoData = new ClimaTempoDBEntities();
        public ActionResult Index()
        {
            return View(climaTempoData);
        }

        [HttpPost]
        public ActionResult Index(string CidadeId)
        {
            ViewData["CidadeId"] = CidadeId;
            return View(climaTempoData);
        }

        public ActionResult About()
        {
            ViewBag.Message = "";

            return View();
        }


    }
}