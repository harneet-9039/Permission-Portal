using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppPortal.PortalTableAdapters;
using AppPortal.DepPortalTableAdapters;

namespace AppPortal.User
{
    public partial class acceptedApplications1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            if (Session["UserName"] != null)
                username_txt.Text = Session["UserName"].ToString();

            GetList();
        }

        private void GetList()
        {
            GetUserAcceptedApplicationsTableAdapter ug = new GetUserAcceptedApplicationsTableAdapter();
            DataTable dt = new DataTable();
            dt = ug.GetUserAcceptedApplications(Session["UserLogin"].ToString());
            Accp_app.DataSource = dt;
            Accp_app.DataBind();
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Remove("UserLogin");
            Session.Remove("UserName");
            Response.Redirect("~/Index.aspx");
        }

        protected void open_profile(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }
    }
}