using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
namespace WebApplication2
{
    public partial class patientForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string w = Session["name"].ToString();
            Response.Write(w);
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog=project;User ID=sa;Password=anasmasho102030");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into sign_up_patient values('" + w + "','" + ssn.Text + "','" + fname.Text + "','" + lname.Text + "','" + gender.SelectedValue + "','" + phone.Text + "','" + dataofbirth.Text + "','" + bloodtype.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record inserted successfully!')</script>");
            con.Close();
            
            Response.Redirect("Main_page.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}