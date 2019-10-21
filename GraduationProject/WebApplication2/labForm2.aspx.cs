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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog= ans;User ID=sa;Password=anasmasho102030");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string w = Session["name"].ToString();
            Response.Write(w);
            con1.Open();
            string qry3 = "select Area_ID from area where Area = N'" + Area.SelectedValue + "'  ";
            SqlCommand cmd3 = new SqlCommand(qry3, con1);
            SqlDataReader sdr3 = cmd3.ExecuteReader();
            sdr3.Read();
            int area_id = Convert.ToInt32(sdr3["Area_ID"]);


            con1.Close();
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog=project;User ID=sa;Password=anasmasho102030");
            con.Open();
            string qry2 = "select ID from sign_up where  username='" + w + "'  ";
            SqlCommand cmd1 = new SqlCommand(qry2, con);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            sdr1.Read();
            string r = sdr1["ID"].ToString();
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into sign_up_lab values('" + r + "','" + name_lab.Text + "',N'" + address_lab.InnerText + "','" + phone.Text + "','" + City.SelectedValue + "','" + area_id + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Record inserted successfully!')</script>");
            con.Close();
            Response.Redirect("Main_page_l.aspx?SuccessMsg=1");
        }

        protected void City_SelectedIndexChanged(object sender, EventArgs e)
        {

            Area.Items.Clear();

            int i = Convert.ToInt32(City.SelectedValue);
            con1.Open();
            string qry1 = "select Area from area where City_ID = '" + i + "'  ";
            SqlCommand cmd1 = new SqlCommand(qry1, con1);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            sdr1.Read();
            string area1 = sdr1["Area"].ToString();
            Area.Items.Add("Select Area");

            Area.Items.Add(sdr1[0].ToString());
            while (sdr1.Read())
            {
                Area.Items.Add(sdr1[0].ToString());
            }

            con1.Close();
        }
    }
}