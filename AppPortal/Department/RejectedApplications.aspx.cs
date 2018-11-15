using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppPortal.DepPortalTableAdapters;
using AppPortal.PortalTableAdapters;
using AppPortal.Common;
namespace AppPortal.Department
{
    public partial class Rejected : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["DeptLogin"] == null)
            {
                Response.Redirect("~/Index.aspx");
            }
            if (Page.IsPostBack) return;
            if (Session["DeptLogin"] != null)
            {
                GetDepartmentNameTableAdapter gu = new GetDepartmentNameTableAdapter();
                object Result = gu.GetDepartmentName(Session["DeptLogin"].ToString());

                string res = Convert.ToString(Result);
                department_txt.Text = res;
                Session["DepName"] = res;
                GetList();
            }
        }

        private void GetList()
        {
            GetDeptRejectedApplicationsTableAdapter ug = new GetDeptRejectedApplicationsTableAdapter();
            DataTable dt = new DataTable();
            dt = ug.GetDeptRejectedApplications(Session["DeptLogin"].ToString());
            User_grd.DataSource = dt;
            User_grd.DataBind();
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Remove("DeptLogin");
            Response.Redirect("~/Index.aspx");
        }
    }
}