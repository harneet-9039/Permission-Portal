using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using AppPortal.PortalTableAdapters;


namespace AppPortal.User
{
    public partial class userDashboard : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserLogin"]==null)
            {
                Response.Redirect("~/Index.aspx");
            }
            if (Page.IsPostBack) return;
            if (Session["UserLogin"] != null)
            {
                GetUserNameTableAdapter gu = new GetUserNameTableAdapter();
                object Result = gu.GetUserName(Session["UserLogin"].ToString());

                string res = Convert.ToString(Result);
                username_txt.Text = res;
            }

            FillVenue();
           
                
           
            
        }

        private void FillVenue()
        {
           
            GetVenueTableAdapter gv = new GetVenueTableAdapter();
            DataTable dt = new DataTable();
            dt = gv.GetVenue();
            venue_ddl.DataSource = dt;
            venue_ddl.DataValueField = "VId";
            venue_ddl.DataTextField = "VenueName";
            venue_ddl.DataBind();
            ListItem lit = new ListItem("---select---", "-1");
            venue_ddl.Items.Insert(0, lit);


        }
        protected void generate_btn_Click(object sender, EventArgs e)
        {
           // ClientScript.RegisterStartupScript(this.GetType(), "key", "blur();", true);
            ModalPanel.Enabled = true;
            mpe.Show();
            //modalbackground.show();
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Remove("UserLogin");
            Response.Redirect("~/Index.aspx");
        }
    }
}