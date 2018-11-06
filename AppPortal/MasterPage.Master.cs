using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppPortal.PortalTableAdapters;

namespace AppPortal
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Page.IsPostBack) return;
            FillRole();
        }

        public void FillRole()
        {
            DataTable dt = new DataTable();
            GetRoleTableAdapter gr = new GetRoleTableAdapter();
            dt = gr.GetRole();
            role_ddl.DataSource = dt;
            role_ddl.DataValueField = "RoleId";
            role_ddl.DataTextField = "RoleName";
            role_ddl.DataBind();
            ListItem li = new ListItem("---select---", "-1");
            role_ddl.Items.Insert(0, li);
        }

        protected void submit_txt_Click(object sender, EventArgs e)
        {
            RegisterUserTableAdapter RU = new RegisterUserTableAdapter();
            
            string fileName = Path.GetFileName(sign_fld.PostedFile.FileName);
            sign_fld.PostedFile.SaveAs(Server.MapPath("~/Content/") + fileName);
            object Result = RU.RegisterUser(reg_txt.Text, name_txt.Text, course_txt.Text, dep_txt.Text, stud_txt.Text, "~/Signature/User/" + fileName, email_txt.Text, pwdr_txt.Text);

            Boolean chk = Convert.ToBoolean(Result);
            if(chk==true) {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Registration Success.');window.location='Index.aspx';", true);
            }
            else {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Registration failed.');window.location='Index.aspx';", true);
            }
        }

        protected void Signin_btn_Click1(object sender, EventArgs e)
        {
            LoginUserProcTableAdapter LU = new LoginUserProcTableAdapter();
            object Result = LU.LoginUserProc(role_ddl.SelectedValue, regno_txt.Text, pwd_txt.Text);
            String chk = Result.ToString();

            if (chk == "strue")
            {
                Session["UserLogin"] = regno_txt.Text;
                Response.Redirect("~/User/userDashboard.aspx");
                
            }
            else if (chk == "dtrue")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Department Login successfully.');window.location='Index.aspx';", true);
                Session["DeptLogin"] = regno_txt.Text;
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Login failed.');window.location='Index.aspx';", true);
            }
        }

       

    }
}