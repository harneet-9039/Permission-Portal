using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using AppPortal.PortalTableAdapters;

namespace AppPortal.User
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetUserProfileTableAdapter gp = new GetUserProfileTableAdapter();
            DataTable dt = new DataTable();
            dt = gp.GetUserProfile(Session["UserLogin"].ToString());
            UserName.Text = dt.Rows[0][0].ToString();
            UserReg.Text = dt.Rows[0][1].ToString();
            UserDept.Text = dt.Rows[0][2].ToString();
            UserCourse.Text = dt.Rows[0][3].ToString();
            YearOfStudy.Text = dt.Rows[0][4].ToString();
            UserEmail.Text = dt.Rows[0][5].ToString();
            UserSign.Attributes.Add("src", dt.Rows[0][6].ToString());
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Remove("UserLogin");
            Response.Redirect("~/Index.aspx");
        }
    }

    
}