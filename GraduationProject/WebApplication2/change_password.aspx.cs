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
    public partial class chage_password : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog= project;User ID=sa;Password=anasmasho102030");

        protected void Page_Load(object sender, EventArgs e)
        {

            password_div.Visible = false;
        }
        public string decryptedString(string encryptstr)
        {
            byte[] b;
            string decrypted;

            try
            {
                b = Convert.FromBase64String(encryptstr);
                decrypted = System.Text.ASCIIEncoding.ASCII.GetString(b);
            }
            catch (FormatException fe)
            {
                decrypted = "";
            }
            return decrypted;
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

            int i = Convert.ToInt32(Session["ID"]);
            

            string encrypt_pass = encryptedString(password.Text);

            con.Open();
            string qry1 = "update sign_up set password ='" + encrypt_pass + "' where ID='" + i + "' ";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            cmd1.ExecuteNonQuery();
            con.Close();
        }

        protected void current_pass_TextChanged1(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(Session["ID"]);

            con.Open();
            string qry1 = "select password from sign_up where ID='" + i + "' ";
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            sdr1.Read();

            string r = sdr1["password"].ToString();

            con.Close();
            if (current_pass.Text == decryptedString (r))
            {
                Label1.Text = "Password is  correct";
                password_div.Visible = true;


            }
            else
            {
                Label1.Text = "Password is not correct";
            }
        }
    }
}