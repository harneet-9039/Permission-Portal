using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPortal.User
{
    public partial class userDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void lnkpickdate_Click1(object sender, EventArgs e)
        {
            datepicker1.Visible = true;
        }
        protected void datepicker1_SelectionChanged(object sender, EventArgs e)
        {
            date1.Text = datepicker1.SelectedDate.ToShortDateString(); // just use this method to get dd/MM/yyyy  
            datepicker1.Visible = false;
        }
        protected void lnkpickdate_Click2(object sender, EventArgs e)
        {
            datepicker2.Visible = true;
        }
        protected void datepicker2_SelectionChanged(object sender, EventArgs e)
        {
            date2.Text = datepicker2.SelectedDate.ToShortDateString(); // just use this method to get dd/MM/yyyy  
            datepicker2.Visible = false;
        }
    }
}