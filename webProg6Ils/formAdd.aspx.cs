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
    public partial class formAdd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try { 


            //Extract Image File Name.
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

            //Set the Image File Path.
            string filePath = "~/Uploads/" + fileName;

            //Save the Image File in Folder.
            FileUpload1.PostedFile.SaveAs(Server.MapPath(filePath));


            SqlCommand cmd = new SqlCommand("insert into[tbl_Gadget]values ('" + TextBox1.Text + "','" + TextBox2.Text +
                "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Value + "','" + TextBox6.Text + "','" + DropDownList2.SelectedItem.Value + "',@Name, @Path)", con);

            cmd.Parameters.AddWithValue("@Name", fileName);
            cmd.Parameters.AddWithValue("@Path", filePath);
            

                if ((string.IsNullOrEmpty(TextBox1.Text)) || (string.IsNullOrWhiteSpace(TextBox1.Text)))
                {
                    var message = " please input value first";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                }
                if ((string.IsNullOrEmpty(TextBox2.Text)) || (string.IsNullOrWhiteSpace(TextBox2.Text)))
                {
                    var message = " please input value first";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                }
                if ((string.IsNullOrEmpty(TextBox3.Text)) || (string.IsNullOrWhiteSpace(TextBox3.Text)))
                {
                    var message = " please input value first";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                }
                if ((string.IsNullOrEmpty(TextBox4.Text)) || (string.IsNullOrWhiteSpace(TextBox4.Text)))
                {
                    var message = " please input value first";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                }
                
                if ((string.IsNullOrEmpty(TextBox6.Text)) || (string.IsNullOrWhiteSpace(TextBox6.Text)))
                {
                    var message = " please input value first";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                }

                else
                {
                    var message = "Item added successfully";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect(Request.Url.AbsoluteUri);
                    
                }


            }
                    
                   
                    
            catch (System.IO.DirectoryNotFoundException) {
                var message = "select an image";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }

            

        }
          
    }
}