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

    public partial class formEditImage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                //Extract Image File Name.
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

                //Set the Image File Path.
                string filePath = "~/Uploads/" + fileName;

                //Save the Image File in Folder.
                FileUpload1.PostedFile.SaveAs(Server.MapPath(filePath));

                String Update = "update tbl_Gadget set img_Path = @Path where Product_ID = '" + TextBox3.Text + "'; ";

                SqlCommand cmd = new SqlCommand(Update, con);
                cmd.Parameters.AddWithValue("@Name", fileName);
                cmd.Parameters.AddWithValue("@Path", filePath);
                
                if ((string.IsNullOrEmpty(TextBox3.Text)) || (string.IsNullOrWhiteSpace(TextBox3.Text))) {
                    var message = " please input ID first";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);

                }

                else {
                    var message = "Image updated successfully";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect(Request.Url.AbsoluteUri);
                    
                }
               
            }
            catch (System.IO.DirectoryNotFoundException) {
                var message = "Please select an image";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
        }
    }
}