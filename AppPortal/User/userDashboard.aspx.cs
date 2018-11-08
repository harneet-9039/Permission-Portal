using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using AppPortal.PortalTableAdapters;
using System.Windows.Forms;
using System.IO;
using AppPortal.Common;

namespace AppPortal.User
{
    public partial class userDashboard : System.Web.UI.Page
    {

        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["UserLogin"]==null)
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
           
        if(Page.IsValid)
        {
                
                // ClientScript.RegisterStartupScript(this.GetType(), "key", "blur();", true);
                // ModalPanel.Enabled = true;
                //mpe.Show();
                if (count == 1) return;
                count = 1;
                DateTime Fromdate = DateTime.ParseExact(date1.Text,"dd/MM/yyyy", null);
                DateTime Todate = DateTime.ParseExact(date2.Text, "dd/MM/yyyy", null); ;
                if ((Todate - Fromdate).TotalDays < 0)
                {
                    error_lbl.Text = "To Date cannot be less than From Date!!";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                }

                else if (timepicker_txt != null && timepicker_to_txt !=null) {
                    Int64 From = Convert.ToInt64(timepicker_txt.Text.Substring(0, 2));
                    Int64 To = Convert.ToInt64(timepicker_to_txt.Text.Substring(0, 2));

                    if(To<From)
                    {
                        error_lbl.Text = "Wrong Time Input, Please Check!!";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);

                    }
                    else
                    {
                        //urIframe.Attributes.Add("src", "~/Content/AbstractTemplate.pdf#toolbar=0&navpanes=0&scrollbar=0");
                        //error_lbl.Visible = false;
                        CheckAvailablityTableAdapter ca = new CheckAvailablityTableAdapter();
                        object Result = ca.CheckAvailablity(Convert.ToDateTime(date2.Text), 
                        Convert.ToDateTime(date1.Text), TimeSpan.Parse(timepicker_to_txt.Text), 
                        TimeSpan.Parse(timepicker_txt.Text), venue_ddl.SelectedValue);

                        string Res = Convert.ToString(Result);
                        if (Res == null)
                        {
                            FillApplicationData();
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalApp();", true);
                        }
                        else {
                            error_lbl.Text = "Venue " +"<b>" +  venue_ddl.SelectedItem.ToString() + "</b>" + " is already booked<br />"
                            + "<b>Information of booking:</b> " + Res;
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                        }
                    }
                }
               
                //modalbackground.show();
            }
        }

        private void FillApplicationData()
        {
            GetApplicationDataTableAdapter ga = new GetApplicationDataTableAdapter();
            DataTable dt = new DataTable();
            dt = ga.GetApplicationData(Session["UserLogin"].ToString(),venue_ddl.SelectedValue);
            dept_lbl.Text = dt.Rows[0][3].ToString();
            date_lbl.Text = DateTime.Today.ToString();
            subdept_lbl.Text = venue_ddl.SelectedItem.ToString();
            appname_lbl.Text = username_txt.Text;
            reg_lbl.Text = Session["UserLogin"].ToString();
            course_yr_lbl.Text = dt.Rows[0][0].ToString() + " Department," + dt.Rows[0][1].ToString() + " " + dt.Rows[0][2].ToString() + " Year";
            venue_lbl.Text = venue_ddl.SelectedItem.ToString();
            dateapp_lbl.Text = date1.Text + " to "+ date2.Text;
            time_lbl.Text = timepicker_txt.Text + " to " + timepicker_to_txt.Text;
            reason_lbl.Text = purpose_txt.Text;
            Nameapp_lbl.Text = username_txt.Text;
            RegNo_lbl.Text = Session["UserLogin"].ToString();
            Sign_lbl.ImageUrl = dt.Rows[0][4].ToString();
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Remove("UserLogin");
            Response.Redirect("~/Index.aspx");
        }

        protected void cstvalid_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime date = DateTime.Parse(args.Value);
            DateTime Now = DateTime.Now;
            if (((date - Now).TotalDays) < 0)
            {
                args.IsValid = false;
            }
            else
                args.IsValid = true;
        }

        protected void cstvalidto_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime date = DateTime.Parse(args.Value);
            DateTime Now = DateTime.Now;
            if (((date - Now).TotalDays) < 0)
            {
                args.IsValid = false;
            }
            else
                args.IsValid = true;
        }

        protected void submitapp_btn_Click(object sender, EventArgs e)
        {

            string temp = app_hfd.Value;
            Random r = new Random();
            int randNum = r.Next(1000000);
            string sixDigitNumber = randNum.ToString("D6");
            string NamePath = "~/Applications/" + Session["UserLogin"].ToString() + sixDigitNumber+".pdf";
            int Res = PDFConverter.DoConvert(Session["UserLogin"].ToString() + sixDigitNumber, temp);
            if(Res==0)
            {
                error_lbl.Text = "Failed to generate PDF, Try again!!";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else {
                Boolean Result = InsertApplication(NamePath);
                if (Result == true)
                {
                    error_lbl.Text = "Application forwarded successfully, Refer Application list!!";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                }
                else
                {
                    error_lbl.Text = "DB Error, Try again!!";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                }
            }

           
        }


        private Boolean InsertApplication(string path)
        {
            InsertApplicationTableAdapter IA = new InsertApplicationTableAdapter();
            object Result = IA.InsertApplication(Session["UserLogin"].ToString(), venue_ddl.SelectedValue, path, Convert.ToDateTime(date2.Text), Convert.ToDateTime(date1.Text), TimeSpan.Parse(timepicker_to_txt.Text), TimeSpan.Parse(timepicker_txt.Text), purpose_txt.Text);
            Boolean chk = Convert.ToBoolean(Result);
            if (chk == true)
            {
                return true;
            }
            else
                return false;
        }
    }
}