using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Main_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String p = Request.QueryString["SuccessMsg"];
            if (p == "1")
                //Response.Write("<script>alert('Record inserted successfully!')</script>");
                Label1.Text = "Record inserted successfully!";
            
        }
    }
}