using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Web.Services;

namespace WebApplication2
{
    public partial class testrecaptcha : System.Web.UI.Page
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {



        }
    }
}