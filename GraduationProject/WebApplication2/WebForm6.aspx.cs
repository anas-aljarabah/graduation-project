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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=DESKTOP-LJU2K1P\ANAS1997 ;Initial Catalog= ans;User ID=sa;Password=anasmasho102030");

        protected void Page_Load(object sender, EventArgs e)
        {
            //con1.Open();
            //string qry = "select City_Name from City  ";
            //SqlCommand cmd = new SqlCommand(qry, con1);
            //SqlDataReader sdr = cmd.ExecuteReader();
            //sdr.Read();

            //string City1 = sdr["City_Name"].ToString();
            //DropDownList1.Items.Add(sdr[0].ToString());
            //DropDownList1.Items[0].Value = "1";

            //while (sdr.Read())
            //{
                
            //    DropDownList1.Items.Add(sdr[0].ToString());
                
            //}
            
            //con1.Close();
            ////string s = DropDownList1.SelectedValue.ToString();
            ////Response.Write(s);
            ////Session.Add("C_name", s);
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string q = Session["C_name"].ToString();


            //con1.Open();
            //string qry = "select City_ID from City where City_Name = '" + q + "' ";
            //SqlCommand cmd = new SqlCommand(qry, con1);
            //SqlDataReader sdr = cmd.ExecuteReader();

            //sdr.Read();
            //int i = Convert.ToInt32(sdr["City_ID"]);
            //con1.Close();
            DropDownList2.Items.Clear();

            int i = Convert.ToInt32(DropDownList1.SelectedValue);
            con1.Open();
            string qry1 = "select Area from area where City_ID = '" + i + "'  ";
            SqlCommand cmd1 = new SqlCommand(qry1, con1);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            sdr1.Read();
            string area1 = sdr1["Area"].ToString();
            DropDownList2.Items.Add("Select Area");

            DropDownList2.Items.Add(sdr1[0].ToString());
            while (sdr1.Read())
            {
                DropDownList2.Items.Add(sdr1[0].ToString());
            }

            con1.Close();
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
    }

}

