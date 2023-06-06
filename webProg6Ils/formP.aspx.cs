using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webProg6Ils
{
    public partial class formP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value == "0")
            {
                Response.Redirect("~/formP.aspx");
            }
            
            if (DropDownList1.SelectedItem.Value != "0")
            {
                GridView2.Visible = false;
                GridView1.Visible = true;
            }
        }
    }
}