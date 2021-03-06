﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StarEnergi.Models;
using System.Web.Routing;
using System.Collections.Specialized;
using System.Data.Entity.Validation;
using StarEnergi.Utilities;
using System.Diagnostics;
using System.IO;

namespace StarEnergi.Controllers.Admin
{
    public class EmployeeController : Controller
    {
        private relmon_star_energiEntities db = new relmon_star_energiEntities();
        private ErrorHandling e = new ErrorHandling();
        //
        // GET: /Employee/

        public ActionResult Index()
        {
            var employees = db.employees.Include(f => f.employee1);
            return PartialView(employees.ToList());
        }

        //
        // GET: /Employee/Details/5

        public ActionResult Details(int id)
        {
            employee employee = db.employees.Find(id);

            Dictionary<int, string> delegate_name = new Dictionary<int, string>();
            var has = (from employees in db.employees
                       join dept in db.employee_dept on employees.dept_id equals dept.id
                       join users in db.users on employees.id equals users.employee_id into user_employee
                       orderby employee.alpha_name
                       select new EmployeeEntity
                       {
                           id = employees.id,
                           alpha_name = employees.alpha_name,
                       }).ToList();
            foreach (EmployeeEntity e in has)
            {
                delegate_name.Add(e.id, e.alpha_name);
            }
            ViewBag.delegate_name = new SelectList(delegate_name, "Key", "Value", employee.employee_delegate);

            return PartialView(employee);
        }

        //
        // GET: /EmployeeDept/Create/2

        public ActionResult Create(int id)
        {
            //ViewBag.plant_id = new SelectList(db.plants, "id", "nama");
            ViewBag.employee_id = id;
            employee employee = db.employees.Find(id);
            ViewBag.dept_id = employee.dept_id;
            return PartialView();
        }

        //
        // POST: /EmployeeDept/Create

        [HttpPost]
        public ActionResult Create(employee employee)
        {
            Debug.WriteLine(employee.employee_no);
            if (ModelState.IsValid)
            {

                if (db.employees.Where(x => x.employee_no == employee.employee_no).ToList().Count > 0)
                {
                    return Json(e.Fail());
                }

                db.employees.Add(employee);
                IEnumerable<DbEntityValidationResult> error = db.GetValidationErrors();
                if (error.Count() == 0)
                {
                    db.SaveChanges();
                    if (employee.signature != null)
                    {
                        employee es = db.employees.OrderBy(p => p.id).ToList().LastOrDefault();
                        string oldFilePath = Server.MapPath(employee.signature);
                        es.signature = "/Attachment/signatures/" + (es.id + ".") + es.signature.Substring(es.signature.LastIndexOf(".") + 1);
                        string newFilePath = Server.MapPath(es.signature);
                        System.IO.File.Move(oldFilePath, newFilePath);
                        db.Entry(es).State = EntityState.Modified;
                        db.SaveChanges();
                    }
                    return Json(e.Succes(employee.id.ToString()));
                }
                else
                {
                    return Json(e.Fail(error));
                }
            }
            return Json(e.Fail(ModelState));
        }

        //
        // GET: /EmployeeBoss/Edit/5

        public ActionResult Edit(int id)
        {
            employee employee = db.employees.Find(id);
            ViewBag.employee_id = employee.employee_boss;
            ViewBag.dept_id = employee.dept_id;

            Dictionary<int, string> delegate_name = new Dictionary<int, string>();
            var has = (from employees in db.employees
                       join dept in db.employee_dept on employees.dept_id equals dept.id
                       join users in db.users on employees.id equals users.employee_id into user_employee
                       orderby employees.alpha_name
                       select new EmployeeEntity
                       {
                           id = employees.id,
                           alpha_name = employees.alpha_name,
                       }).ToList();
            foreach (EmployeeEntity e in has)
            {
                delegate_name.Add(e.id, e.alpha_name);
            }
            ViewBag.delegate_name = new SelectList(delegate_name, "Key", "Value", employee.employee_delegate);

            return PartialView(employee);
        }

        //
        // POST: /EmployeeDept/Edit/5

        [HttpPost]
        public ActionResult Edit(employee employee)
        {
            if (ModelState.IsValid)
            {
                db.Entry(employee).State = EntityState.Modified;
                IEnumerable<DbEntityValidationResult> error = db.GetValidationErrors();
                if (error.Count() == 0)
                {
                    db.SaveChanges();
                    string result = "EMPLOYEE" + ";" + employee.id;
                    return Json(e.Succes(result));
                }
                else
                {
                    //return Json(error.First().ValidationErrors.ToArray());
                    return Json(e.Fail(error));
                }
            }
            //ViewBag.plant_id = new SelectList(db.plants, "id", "nama", foc.plant_id);
            return Json(e.Fail(ModelState));
        }

        //
        // GET: /EmployeeDept/Delete/5

        public ActionResult Delete(int id)
        {
            employee employee = db.employees.Find(id);

            return PartialView(employee);
        }

        //
        // POST: /EmployeeDept/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            List<employee> le = getAllDeletedData(id);
            foreach (employee e in le)
            {
                e.employee_boss = null;
                e.employee_dept = null;
                db.Entry(e).State = EntityState.Modified;
                db.SaveChanges();
            }
            return Json(true);
            //return RedirectToAction("Index");
        }

        private List<employee> getAllDeletedData(int id)
        {
            employee e = db.employees.Find(id);

            List<employee> list_e = new List<employee>();

            list_e.Add(e);

            List<employee> le = e.employee1.ToList();

            foreach (employee ee in le) {
                ee.employee_boss = e.employee_boss;
                ee.employee_dept = e.employee_dept;

                db.Entry(ee).State = EntityState.Modified;
                db.SaveChanges();
            }

            //for (int i = 0; i < list_e.Count; i++)
            //{
            //    List<employee> le = list_e[i].employee1.ToList();
            //    foreach (employee eee in le)
            //    {
            //        list_e.Add(eee);
            //    }
            //}

            list_e.Reverse();

            return list_e;
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        [HttpPost]
        public ActionResult saveSignature(HttpPostedFileBase signature, int? id)
        {
            var currpath = "";
            if (signature != null && signature.ContentLength > 0)
            {
                currpath = Path.Combine(
                    Server.MapPath("~/Attachment/signatures/"),
                    (id == null ? "0x0." : (id + ".")) + signature.FileName.Substring(signature.FileName.LastIndexOf(".") + 1)
                );
                signature.SaveAs(currpath);
                currpath = "/Attachment/signatures/" + 
                    (id == null ? "0x0." : (id + ".")) + signature.FileName.Substring(signature.FileName.LastIndexOf(".") + 1);
            }
            return Json(new { success = true, path = currpath });
        }

        #region drag & drop

        public JsonResult DragDrop(int type, int value_id, int dest_id)
        {
            employee e = null;
            employee dest = null;
            List<employee> emp = null;
            switch (type)
            {
                case 1:
                    e = db.employees.Find(value_id);
                    dest = db.employees.Find(dest_id);

                    emp = db.employees.Where(p => p.employee_boss == value_id).ToList();

                    foreach (employee em in emp)
                    {
                        em.employee_boss = e.employee_boss;
                        db.Entry(em).State = EntityState.Modified;
                        db.SaveChanges();
                    }

                    e.employee_dept = dest.employee_dept;
                    e.employee_boss = null;
                    e.dept_id = dest.dept_id;

                    db.Entry(e).State = EntityState.Modified;
                    db.SaveChanges();
                    break;
                case 2:
                    e = db.employees.Find(value_id);
                    dest = db.employees.Find(dest_id);

                    if (e.employee_boss != dest.employee_boss)
                    {

                        emp = db.employees.Where(p => p.employee_boss == value_id).ToList();

                        foreach (employee em in emp)
                        {
                            em.employee_boss = e.employee_boss;
                            db.Entry(em).State = EntityState.Modified;
                            db.SaveChanges();
                        }
                    }

                    e.employee_dept = dest.employee_dept;
                    e.employee_boss = dest.employee_boss;
                    e.dept_id = dest.dept_id;

                    db.Entry(e).State = EntityState.Modified;
                    db.SaveChanges();
                    break;
                case 3:
                    e = db.employees.Find(value_id);
                    dest = db.employees.Find(dest_id);

                    if (e.dept_id != dest.dept_id)
                    {

                        emp = db.employees.Where(p => p.employee_boss == value_id).ToList();

                        foreach (employee em in emp)
                        {
                            em.employee_boss = e.employee_boss;
                            db.Entry(em).State = EntityState.Modified;
                            db.SaveChanges();
                        }
                    }

                    e.employee_dept = dest.employee_dept;
                    e.employee_boss = null;
                    e.dept_id = dest.dept_id;

                    db.Entry(e).State = EntityState.Modified;
                    db.SaveChanges();
                    break;
                case 4:
                    e = db.employees.Find(value_id);
                    dest = db.employees.Find(dest_id);

                    if (e.dept_id != dest.dept_id)
                    {
                        emp = db.employees.Where(p => p.employee_boss == value_id).ToList();
                        foreach (employee em in emp)
                        {
                            em.employee_boss = null;
                            em.employee_dept = e.dept_id;
                            db.Entry(em).State = EntityState.Modified;
                            db.SaveChanges();
                        }
                    }

                    e.employee_dept = dest.employee_dept;
                    e.employee_boss = dest.employee_boss;
                    e.dept_id = dest.dept_id;

                    db.Entry(e).State = EntityState.Modified;
                    db.SaveChanges();
                    break;
                case 5:
                    e = db.employees.Find(value_id);
                    dest = db.employees.Find(dest_id);

                    if (e.employee_boss != dest.id)
                    {
                        emp = db.employees.Where(p => p.employee_boss == value_id).ToList();
                        foreach (employee em in emp)
                        {
                            em.employee_boss = e.employee_boss;
                            db.Entry(em).State = EntityState.Modified;
                            db.SaveChanges();
                        }
                    }

                    e.employee_dept = null;
                    e.employee_boss = dest.id;
                    e.dept_id = dest.dept_id;

                    db.Entry(e).State = EntityState.Modified;
                    db.SaveChanges();
                    break;
                case 6:
                    e = db.employees.Find(value_id);
                    employee_dept dept = db.employee_dept.Find(dest_id);

                    emp = db.employees.Where(p => p.employee_boss == value_id).ToList();
                    foreach (employee em in emp)
                    {
                        em.employee_boss = e.employee_boss;
                        db.Entry(em).State = EntityState.Modified;
                        db.SaveChanges();
                    }

                    e.employee_dept = dept.id;
                    e.employee_boss = null;
                    e.dept_id = dept.id;

                    db.Entry(e).State = EntityState.Modified;
                    db.SaveChanges();
                    break;
                case 7:
                    e = db.employees.Find(value_id);
                    dest = db.employees.Find(dest_id);

                    if (e.employee_boss != dest.id)
                    {
                        if (e.dept_id != dest.dept_id)
                        {
                            emp = db.employees.Where(p => p.employee_boss == value_id).ToList();
                            foreach (employee em in emp)
                            {
                                em.employee_boss = e.employee_boss;
                                db.Entry(em).State = EntityState.Modified;
                                db.SaveChanges();
                            }
                        }
                    }

                    e.employee_dept = null;
                    e.employee_boss = dest.id;
                    e.dept_id = dest.dept_id;

                    db.Entry(e).State = EntityState.Modified;
                    db.SaveChanges();
                    break;
                case 8:
                    e = db.employees.Find(value_id);
                    employee_dept dept2 = db.employee_dept.Find(dest_id);

                    if (e.dept_id != dept2.id)
                    {
                        emp = db.employees.Where(p => p.employee_boss == value_id).ToList();
                        foreach (employee em in emp)
                        {
                            em.employee_boss = null;
                            em.employee_dept = e.dept_id;
                            db.Entry(em).State = EntityState.Modified;
                            db.SaveChanges();
                        }
                    }

                    e.employee_dept = dept2.id;
                    e.employee_boss = null;
                    e.dept_id = dept2.id;

                    db.Entry(e).State = EntityState.Modified;
                    db.SaveChanges();
                    break;
                case 9:
                    e = db.employees.Find(value_id);
                    dest = db.employees.Find(dest_id);

                    if (e.dept_id != dest.dept_id)
                    {
                        emp = db.employees.Where(p => p.employee_boss == value_id).ToList();
                        foreach (employee em in emp)
                        {
                            em.employee_boss = null;
                            em.employee_dept = e.dept_id;
                            db.Entry(em).State = EntityState.Modified;
                            db.SaveChanges();
                        }
                    }

                    e.employee_dept = null;
                    e.employee_boss = dest.id;
                    e.dept_id = dest.dept_id;

                    db.Entry(e).State = EntityState.Modified;
                    db.SaveChanges();
                    break;
                case 10:
                    e = db.employees.Find(value_id);
                    dest = db.employees.Find(dest_id);

                    if (e.dept_id != dest.dept_id)
                    {
                        emp = db.employees.Where(p => p.employee_boss == value_id).ToList();
                        foreach (employee em in emp)
                        {
                            em.employee_boss = null;
                            em.employee_dept = e.dept_id;
                            db.Entry(em).State = EntityState.Modified;
                            db.SaveChanges();
                        }
                    }

                    e.employee_dept = null;
                    e.employee_boss = dest.id;
                    e.dept_id = dest.dept_id;

                    db.Entry(e).State = EntityState.Modified;
                    db.SaveChanges();
                    break;
            }
            return Json(true);
        }

        #endregion

    }
}
