using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Sclera2.Models;

namespace Sclera2.Controllers
{
    public class RespondentsController : Controller
    {
        private ScleraDB2Entities db = new ScleraDB2Entities();

        // GET: Respondents
        public ActionResult Index()
        {
            return View(db.Respondents.ToList());
        }

        // GET: Respondents/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Respondent respondent = db.Respondents.Find(id);
            if (respondent == null)
            {
                return HttpNotFound();
            }
            return View(respondent);
        }

        // GET: Respondents/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Respondents/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "respondent_id,rname,npassword,email,created")] Respondent respondent)
        {
            if (ModelState.IsValid)
            {
                db.Respondents.Add(respondent);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(respondent);
        }

        // GET: Respondents/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Respondent respondent = db.Respondents.Find(id);
            if (respondent == null)
            {
                return HttpNotFound();
            }
            return View(respondent);
        }

        // POST: Respondents/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "respondent_id,rname,npassword,email,created")] Respondent respondent)
        {
            if (ModelState.IsValid)
            {
                db.Entry(respondent).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(respondent);
        }

        // GET: Respondents/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Respondent respondent = db.Respondents.Find(id);
            if (respondent == null)
            {
                return HttpNotFound();
            }
            return View(respondent);
        }

        // POST: Respondents/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Respondent respondent = db.Respondents.Find(id);
            db.Respondents.Remove(respondent);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
