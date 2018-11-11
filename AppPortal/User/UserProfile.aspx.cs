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
        static int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
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

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["UserLogin"] == null)
            {
                Response.Redirect("~/Index.aspx");
            }
            
            if (Session["UserLogin"] != null)
            {
                GetUserNameTableAdapter gu = new GetUserNameTableAdapter();
                object Result = gu.GetUserName(Session["UserLogin"].ToString());

                string res = Convert.ToString(Result);
                username_txt.Text = res;
                Session["UserName"] = res;
            }
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Remove("UserLogin");
            Response.Redirect("~/Index.aspx");
        }

        private Boolean UpdateUserProfile()
        {
            
            UpdateUserProfileTableAdapter UP = new UpdateUserProfileTableAdapter();
            object Result = UP.UpdateUserProfile(Session["UserLogin"].ToString(), Convert.ToInt32(YearOfStudy.Text), UserEmail.Text);
            Boolean chk = Convert.ToBoolean(Result);
            if (chk == true)
            {
                return true;
            }
            else
                return false;
        }

        protected void update_btn_Click(object sender, EventArgs e)
        {
            if (count == 1) return;
            Boolean Result = UpdateUserProfile();
            if (Result == true)
            {
                count = 1;
                
                error_lbl.Text = "Profile Updated successfully!!";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else
            {
                error_lbl.Text = "DB Error, Try again!!";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
        }
    }

    
}