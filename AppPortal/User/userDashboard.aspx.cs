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

        protected void generate_btn_Click(object sender, EventArgs e)
        {
           // ClientScript.RegisterStartupScript(this.GetType(), "key", "blur();", true);
            ModalPanel.Enabled = true;
            mpe.Show();
            //modalbackground.show();
        }

    }
}