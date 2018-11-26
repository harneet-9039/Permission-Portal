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
    public partial class Applications : System.Web.UI.Page
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
               AppPortal.DepPortalTableAdapters.GetDepartmentNameTableAdapter gu = new AppPortal.DepPortalTableAdapters.GetDepartmentNameTableAdapter();
                DataTable Result = gu.GetDepDetails(Session["DeptLogin"].ToString());

                string res = Convert.ToString(Result.Rows[0][0].ToString());
                department_txt.Text = res;
                Session["DepName"] = res;
                Session["DepSign"] = Result.Rows[0][1].ToString();
                GetList();
            }
        }

        private void GetList()
        {
            GetDeptGridDetailsTableAdapter ug = new GetDeptGridDetailsTableAdapter();
            DataTable dt = new DataTable();
            dt = ug.GetDeptGridDetails(Session["DeptLogin"].ToString());
            User_grd.DataSource = dt;
            User_grd.DataBind();
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Remove("DeptLogin");
            Session.Remove("DepName");
            Session.Remove("DepSign");
            Response.Redirect("~/Index.aspx");
        }

        protected string CheckStatus(string text)
        {
        
            if (text == "End")
            {
                return "Approve and Allot";
            }
            else
                return "Approve and Forward";
        }


 

       

        protected void Approve_btn_Click(object sender, EventArgs e)
        {
            int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
            Button btn = (sender as Button);
            string Status = btn.Text;


            string Path = User_grd.DataKeys[rowIndex].Values[1].ToString();
            string ID = User_grd.DataKeys[rowIndex].Values[0].ToString();
            FileInfo info = new FileInfo(Path);
            
            Path = "~/StaticHTML/" + info.Name.Replace(".pdf","") + ".html";
            string content = "";
            if (Status == "Approve and Forward")
            {
                content = "<br><div class='row'><span id ='temp' style='float:right; color:red;text-decoration:bold'> Approved and forwarded, " + Session["DepName"].ToString() + " </span><br><img id ='Sign_lbl' src="+Session["DepSign"].ToString()+" style='width:10%;height:10%;float: right;'></div><br>";
            }
            else {
                content = "<br><div class='row'><span id ='temp' style='float:right; color:green;text-decoration:bold'> Approved and Alloted, " + Session["DepName"].ToString() + " </span><br><img id ='Sign_lbl' src="+Session["DepSign"].ToString()+" style='width:10%;height:10%;float: right;'></div><br>";
            }
            File.AppendAllText(Server.MapPath(Path), content);
            int Res = PDFConverter.DoConvert(info.Name.Replace(".pdf", ""), Path);
            if(Res==1)
            {
                UpdateStatusTableAdapter us = new UpdateStatusTableAdapter();
                object res = us.UpdateStatus(ID, Status);
                Boolean chk = Convert.ToBoolean(res);

                if(chk==true && Status== "Approve and Forward")
                {
                    error_lbl.Text = "Application forwarded Successfully!!";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                }
                else if(chk == true && Status == "Approve and Allot")
                {
                    error_lbl.Text = "Application accepted Successfully!!";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                }
                else {
                    error_lbl.Text = "Error!!";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                }
            }


        }

        protected void Reject_btn_Click(object sender, EventArgs e)
        {
            int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
            


            string Path = User_grd.DataKeys[rowIndex].Values[1].ToString();
            string ID = User_grd.DataKeys[rowIndex].Values[0].ToString();
            FileInfo info = new FileInfo(Path);

            Path = "~/StaticHTML/" + info.Name.Replace(".pdf", "") + ".html";
            string content = "<div class='row'><span id ='temp' style='float:right; color:violet;text-decoration:bold'> Rejected, " + Session["DepName"].ToString() + " </span><br><img id ='Sign_lbl' src='../Content/signature.jpg' style='width:10%;height:10%;float: right;'></div><br>";
            
            File.AppendAllText(Server.MapPath(Path), content);
            int Res = PDFConverter.DoConvert(info.Name.Replace(".pdf", ""), Path);
            if (Res == 1)
            {
                UpdateStatusTableAdapter us = new UpdateStatusTableAdapter();
                object res = us.UpdateStatus(ID, "");
                Boolean chk = Convert.ToBoolean(res);

                if (chk == true)
                {
                    error_lbl.Text = "Application rejected Successfully!!";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                }
                else
                {
                    error_lbl.Text = "Error, please try again!!";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                }
            }

        }
    }
}

    
