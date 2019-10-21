using System;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Web.Services;

namespace WebApplication2
{
    public partial class sign_up1 : System.Web.UI.Page
    {
        protected static string ReCaptcha_Key = "6Lf9QLEUAAAAACIV7WTf_6MWiufweGpPLkGSB-pH";
        protected static string ReCaptcha_Secret = "6Lf9QLEUAAAAANPx4ugY4vB9qg2VO8SbVXEgykJC";

        [WebMethod]
        public static string VerifyCaptcha(string response)
        {
            string url = "https://www.google.com/recaptcha/api/siteverify?secret=" + ReCaptcha_Secret + "&response=" + response;
            return (new WebClient()).DownloadString(url);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string encryptedString(string encryptstring)
        {
            byte[] b;
            string encrypted;

            b = System.Text.ASCIIEncoding.ASCII.GetBytes(encryptstring);
            encrypted = Convert.ToBase64String(b);


            return encrypted;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string encrypt_pass = encryptedString(password.Text);
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog= project;User ID=sa;Password=anasmasho102030");


            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Insert_User_1";

            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@Password", encrypt_pass);
            cmd.Parameters.AddWithValue("@re_password", re_password.Text);
            cmd.Parameters.AddWithValue("@type_user", type_user.SelectedValue);
            cmd.Parameters.AddWithValue("@email", email.Text);

            string uid = username.Text;

            con.Open();
            string qry = "select username from sign_up where username='" + uid + "' ";
            SqlCommand cm = new SqlCommand(qry, con);
            SqlDataReader sdr = cm.ExecuteReader();
            bool a = sdr.Read();
            con.Close();
            if (a == true)
            {


                Response.Write("<script>alert('Username  Is exsits Try again..!!!')</script>");
                //signup_div.Visible = true;
                //login_div.Visible = false;
                Label9.Text = "";


            }

            else
            {
                con.Open();
                cmd.ExecuteNonQuery();
                //Response.Write("<script>alert('Record inserted successfully!')</script>");
                Response.Redirect("log_in.aspx");
                //signup_div.Visible = false;
                //login_div.Visible = true;


            }



            username.Text = "";
            email.Text = "";
            password.Text = "";
            re_password.Text = "";
            type_user.SelectedValue = "select";
            con.Close();

            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

        }

        protected void username_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog= project;User ID=sa;Password=anasmasho102030");

            string uid = username.Text;

            con.Open();
            string qry = "select username from sign_up where username='" + uid + "' ";
            SqlCommand cm = new SqlCommand(qry, con);
            SqlDataReader sdr = cm.ExecuteReader();
            if (sdr.Read())
            {
                Label9.Text = "Username  Is exsits Try again..!!!";

                //Response.Write("<script>alert('Username  Is exsits Try again..!!!')</script>");
                //signup_div.Visible = true;
                //login_div.Visible = false;
            }

            else
            {
                Label9.Text = "";
                //signup_div.Visible = true;
                //login_div.Visible = false;

            }


            con.Close();

        }
       

        
    }
}
