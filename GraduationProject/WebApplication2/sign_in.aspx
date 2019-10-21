<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_in.aspx.cs" Inherits="WebApplication2.sign_in" %>

<html xmlns="http://www.w3.org/1999/xhtml">




<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <style type="text/css">
        body {
            height: 500px;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
            display: flex;
            align-items: center;
            width: 100vw;
            height: 100vh;
        }


        #main_div {
            background-color: whitesmoke;
            border: 2px solid #83bdf3;
        }

        .auto-style1 {
            height: 48px;
        }
    </style>
  
</head>



<body style="background-image: url('Smart-Apps-Mean-Smart-Patients-3.jpg');">


    <div class="container-fluid" style="width: 400px; height: 350px; margin-left: auto; margin-right: auto; margin-bottom: auto; margin-top: auto;" id="main_div" runat="server">

        <form id="form1" runat="server" class="text-center border border-light p-5">

            <div id="login_div" runat="server" style="margin-top: 80px; width: 400px; margin-left: auto; margin-right: auto; height: 300px;">

                <p class="h4 mb-4" style="margin-top: 10px">Login</p>

                <table>

                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Username:" Width="100px"></asp:Label>
                        </td>

                        <td>
                            <asp:TextBox ID="username1" ValidationGroup="signup" Name="username" runat="server" class="form-control " placeholder="Username" Width="250px"></asp:TextBox>
                        </td>
                    </tr>


                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label8" runat="server" Text="Password:" Width="100px"></asp:Label>
                        </td>

                        <td class="auto-style1">
                            <asp:TextBox ID="password1" TextMode="Password" runat="server" class="form-control" placeholder="Password" Width="250px"></asp:TextBox>
                        </td>
                    </tr>

                </table>
                <%--   <recaptcha:RecaptchaControl ID="recaptcha" runat="server" class="g-recaptcha" style="margin-left:35px;" PublicKey="6Lf9QLEUAAAAACIV7WTf_6MWiufweGpPLkGSB-pH" PrivateKey="6Lf9QLEUAAAAANPx4ugY4vB9qg2VO8SbVXEgykJC" />--%>

          




                <div style="margin-top: 5px; width: 372px; margin-bottom: 3px;">
                    <asp:Button ID="Button0" runat="server" Text="Login" class="btn btn-info" OnClick="Login_Click" Width="330px" Height="33px" />
                </div>

                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="56px" Height="20px">Sign up</asp:LinkButton>
                | 
                <asp:LinkButton ID="LinkButton2" runat="server" Width="157px" Height="20px">Forgot your password?</asp:LinkButton>

                <br />

            </div>
        </form>
        </div>

</body>
</html>
