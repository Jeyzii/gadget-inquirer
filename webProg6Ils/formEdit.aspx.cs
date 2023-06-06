using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace webProg6Ils
{
    public partial class formEdit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String Update = "update tbl_Gadget set " + DropDownList1.SelectedItem.Value + " = '" + TextBox2.Text + "' where Product_ID = '" + TextBox3.Text + "'; ";
                SqlCommand cmd = new SqlCommand(Update, con);

                if ((string.IsNullOrEmpty(TextBox2.Text)) || (string.IsNullOrWhiteSpace(TextBox3.Text))) {
                    var message = " please input value first";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);


                }

                else {
                    cmd.ExecuteNonQuery();
                    con.Close();
                    var message = "Successfully updated";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                }

            }
            catch (System.Data.SqlClient.SqlException) {
                if (DropDownList1.SelectedItem.Value == "0") {
                    var message = "Select a Column";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                }
            }
            
            
        }

       
    }
}