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
    public partial class formAdmin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView4.Visible = false;
            GridView3.Visible = false;
            GridView2.Visible = true;
            GridView5.Visible = false;


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value== "Select a category" && DropDownList2.SelectedItem.Value == "Select a brand" && DropDownList3.SelectedItem.Value != null)
            {
                GridView2.Visible = true;
                GridView1.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = false;
                GridView5.Visible = false;
            }

            if (DropDownList1.SelectedItem.Value != "Select a category" && DropDownList2.SelectedItem.Value != "Select a brand" && DropDownList3.SelectedItem.Value != null)
            {
                GridView1.Visible = true;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = false;
                GridView5.Visible = false;
            }

            if (DropDownList1.SelectedItem.Value == "Select a category" && DropDownList2.SelectedItem.Value != "Select a brand" && DropDownList3.SelectedItem.Value != null)
            {
                GridView3.Visible = true;
                GridView2.Visible = false;
                GridView1.Visible = false;
                GridView4.Visible = false;
                GridView5.Visible = false;
            }
            if (DropDownList1.SelectedItem.Value != "Select a category" && DropDownList2.SelectedItem.Value == "Select a brand" )
            {
                GridView4.Visible = true;
                GridView2.Visible = false;
                GridView1.Visible = false;
                GridView3.Visible = false;
                GridView5.Visible = false;
            }
            if (DropDownList1.SelectedItem.Value == "Select a category" && DropDownList2.SelectedItem.Value == "Select a brand" && DropDownList3.SelectedItem.Value != null)
            {
                GridView5.Visible = true;
                GridView2.Visible = false;
                GridView1.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = false;
            }

            //GridView1.DataBind();
            // Find();
        }



        /* private void Find()
        {
           string find = "select*from tbl_Gadget where(Product_Name like '%'+@Product_Name+'%' " +
               "or Product_Brand like '%' +@Product_Brand+'%')";

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
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            
         }*/


    }
}