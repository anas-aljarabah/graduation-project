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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string w = Session["name"].ToString();

            DateTime oDate = DateTime.ParseExact(txtDatePicker.Text, "dd/MM/yyyy", null);



            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog=project;User ID=sa;Password=anasmasho102030");

            con.Open();
            string qry2 = "select ID from sign_up where  username='" + w + "'  ";
            SqlCommand cmd1 = new SqlCommand(qry2, con);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            sdr1.Read();
            string r = sdr1["ID"].ToString();
            con.Close();
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into sign_up_patient values('" + r + "','" + ssn.Text + "','" + fname.Text + "','" + lname.Text + "','" + gender.SelectedValue + "','" + phone.Text + "','" + oDate + "','" + blood_type.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
           
            //Response.Write("<script>alert('Record inserted successfully!')</script>");
            Response.Redirect("main_page_p.aspx?SuccessMsg=1");
        }
    }
}