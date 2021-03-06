﻿using System;
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
    public partial class rejectedApplications : System.Web.UI.Page
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
            GetUserRejectedApplicationsTableAdapter ug = new GetUserRejectedApplicationsTableAdapter();
            DataTable dt = new DataTable();
            dt = ug.GetUserRejectedApplications(Session["UserLogin"].ToString());
            Rej_app.DataSource = dt;
            Rej_app.DataBind();
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