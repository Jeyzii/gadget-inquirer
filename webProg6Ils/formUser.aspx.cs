using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.VisualBasic;
namespace webProg6Ils
{
    public partial class formUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                GridView1.Visible = true;
                GridView2.Visible = false;

            }
            else
            {
                GridView1.Visible = false;
                GridView2.Visible = true;
                Find();
            }
            
        }

        private void Find()
        {
             string find = "select*from tbl_Gadget where(Product_Name like '%'+@Product_Name+'%' and Product_Status = 'AVAILABLE'" +
                "or Product_Brand like '%' +@Product_Brand+'%' and Product_Status = 'AVAILABLE')";

             SqlCommand com = new SqlCommand(find, con);
             com.Parameters.Add("@Product_Name", SqlDbType.NVarChar).Value = TextBox1.Text;
             com.Parameters.Add("@Product_Brand", SqlDbType.NVarChar).Value = TextBox1.Text;

             con.Open();
             com.ExecuteNonQuery();
             SqlDataAdapter da = new SqlDataAdapter();
             da.SelectCommand = com;
             DataSet ds = new DataSet();
             da.Fill(ds, "Product_Name");
             da.Fill(ds, "Product_Brand");
             GridView2.DataSource = ds;
             GridView2.DataBind();
             con.Close();
             
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}