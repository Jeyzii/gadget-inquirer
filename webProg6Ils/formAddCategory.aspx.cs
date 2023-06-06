using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace webProg6Ils
{
    public partial class formAddCategory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into[tbl_Category]values ('" + TextBox1.Text + "')", con);
            
           
            if ((string.IsNullOrEmpty(TextBox1.Text)) || (string.IsNullOrWhiteSpace(TextBox1.Text)))
            {
                var message = " please input value first";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            else {

                cmd.ExecuteNonQuery();
                con.Close();
                var message = "Category added successfully";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);

            }
          
            
        }
    }
}