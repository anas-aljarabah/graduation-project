using System;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            /*SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog=project;User ID=sa;Password=anasmasho102030");
           con.Open();
           SqlCommand cmd = new SqlCommand("insert into sign_up values('" + username.Text + "','" + password.Text + "','" + re_password.Text + "','" + type_user.SelectedValue + "')",con);
           cmd.ExecuteNonQuery();

      
            con.Close();*/


 SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog= project;User ID=sa;Password=anasmasho102030");


  SqlCommand cmd = new SqlCommand();
 cmd.Connection = con;
 cmd.CommandType = CommandType.StoredProcedure;
 cmd.CommandText = "Insert_User_1";
 cmd.Parameters.AddWithValue("@username", username.Text);
 cmd.Parameters.AddWithValue("@Password", password.Text);
 cmd.Parameters.AddWithValue("@re_password", re_password.Text);
 cmd.Parameters.AddWithValue("@type_user", type_user.SelectedValue);
  cmd.Parameters.AddWithValue("@email", email.Text);

  con.Open();
  cmd.ExecuteNonQuery();
 con.Close();
/*SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog=project;User ID=sa;Password=anasmasho102030");
con.Open();
            if (type_user.SelectedValue == "patient")
            {
                SqlCommand cmd1 = new SqlCommand("insert into sign_up_patient(username ,password ,re_password,email) values('" + username.Text + "','" + password.Text + "','" + re_password.Text + "','" + email.Text + "' )", con);
                cmd1.ExecuteNonQuery();
            }

            if (type_user.SelectedValue == "doctor")
            {
                SqlCommand cmd2 = new SqlCommand("insert into sign_up_doctor values('" + username.Text + "','" + password.Text + "','" + re_password.Text + "','" + email.Text + "','"+type_user.SelectedValue+"')", con);
                cmd2.ExecuteNonQuery();
            }

            if (type_user.SelectedValue == "lab")
            {
                SqlCommand cmd3 = new SqlCommand("insert into sign_up_lab values('" + username.Text + "','" + password.Text + "','" + re_password.Text + "','" + email.Text + "' ,'" + type_user.SelectedValue + "')", con);
                cmd3.ExecuteNonQuery();
            }


            con.Close();*/
        }
    }
}
 