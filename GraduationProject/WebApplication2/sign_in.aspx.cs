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
    public partial class sign_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog=project;User ID=sa;Password=anasmasho102030");
           con.Open();
           SqlCommand cmd = new SqlCommand("insert into sign_up values('" + username.Text + "','" + password.Text + "','" + re_password.Text + "','" + type_user.SelectedValue + "')",con);
           cmd.ExecuteNonQuery();

      
            con.Close();*/
            
                
            String p = Request.QueryString["Msg"];
            if (p == "1")
                Response.Write("<script>alert('Record inserted successfully!')</script>");
                

        }

        protected void Button1_Click(object sender, EventArgs e)

        {



            /*SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog= project;User ID=sa;Password=anasmasho102030");


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
                       ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
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

  
        protected void Login_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog= project;User ID=sa;Password=anasmasho102030");
                string uid = username1.Text;
                string pass = password1.Text;


                con.Open();
                string qry = "select username ,password from sign_up where username='" + uid + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                bool c = sdr.Read();
                con.Close();
                Session.Add("name", uid);

                if (c == true)
                {
                    //Label7.Text = "Login Sucess......!!";
                    /*con.Open();
                    string qry1 = "select type_user from sign_up where username='" + uid + "' ";
                    SqlCommand cmd1 = new SqlCommand(qry1, con);
                    SqlDataReader sdr1 = cmd1.ExecuteReader();
                    sdr1.Read();
                    string r = sdr1["type_user"].ToString();
                    con.Close();*/


                    con.Open();
                    string qry2 = "select * from sign_up_patient p ,sign_up_doctor d ,sign_up_lab l  where p.P_ID='" + uid + "' or d.D_ID='" + uid + "' or l.L_ID='" + uid + "'  ";
                    SqlCommand cmd2 = new SqlCommand(qry2, con);
                    SqlDataReader sdr2 = cmd2.ExecuteReader();
                    bool d = sdr2.Read();
                    con.Close();

                    if (d == false)
                    {


                        Response.Redirect("WebForm5.aspx");
                        /*if (r == "1")
                        {
                            Response.Redirect("patientForm4.aspx");
                        }
                        if (r == "2")
                        {
                            Response.Redirect("doctorForm3.aspx");
                        }
                        if (r == "3")
                        {
                            Response.Redirect("labForm2.aspx");
                        }*/


                    }
                    else
                    {


                        Response.Redirect("Main_page.aspx");
                    }



                }
                else
                {
                    //Label7.Text = "Username & Password Is not correct Try again..!!";

                    Response.Write("<script>alert('Username & Password Is not correct Try again..!!!')</script>");
                }




            }

            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("sign_up.aspx");
        }
    }
}