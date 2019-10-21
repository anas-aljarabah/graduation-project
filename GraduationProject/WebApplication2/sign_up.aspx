﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="WebApplication2.sign_up" %>

<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>
<!DOCTYPE html>
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

    <script  src="https://code.jquery.com/jquery-3.2.1.min.js"></script>  
 
<script type="text/javascript">  
    var your_site_key = '<%= ConfigurationManager.AppSettings["SiteKey"]%>';  
    var renderRecaptcha = function () {  
        grecaptcha.render('ReCaptchContainer', {  
            'sitekey': your_site_key,  
            'callback': reCaptchaCallback,  
            theme: 'light', //light or dark    
            type: 'image',// image or audio    
            size: 'normal'//normal or compact    
        });  
    };  
  
    var reCaptchaCallback = function (response) {  
        if (response !== '') {  
            jQuery('#lblMessage').css('color', 'green').html('Success');  
        }  
    };  
  
    jQuery('button[type="button"]').click(function(e) {  
        var message = 'Please checck the checkbox';  
        if (typeof (grecaptcha) != 'undefined') {  
            var response = grecaptcha.getResponse();  
            (response.length === 0) ? (message = 'Captcha verification failed') : (message = 'Success!');  
        }  
        jQuery('#lblMessage').html(message);  
        jQuery('#lblMessage').css('color', (message.toLowerCase() == 'success!') ? "green" : "red");  
    });  
  
</script>  
</head>



<body style="background-image: url('Smart-Apps-Mean-Smart-Patients-3.jpg');">


    <div class="container-fluid" style="width: 400px; height: 450px; margin-left: auto; margin-right: auto; margin-bottom: auto; margin-top: auto;" id="main_div" runat="server">

        <form id="form1" runat="server" class="text-center border border-light p-5">

           <%-- <%--<div id="login_div" runat="server" style="margin-top: 80px; width: 400px; margin-left: auto; margin-right: auto; height: 300px;">

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

             <%--   <div>
            <div id="dvCaptcha">
            </div>
            <asp:TextBox ID="txtCaptcha" runat="server" Style="display: none" />
            <asp:RequiredFieldValidator ID="rfvCaptcha" ErrorMessage="Captcha validation is required." ControlToValidate="txtCaptcha"
                runat="server" ForeColor="Red" Display="Dynamic" />
            <br />
            <br />
            
        </div>




                <div style="margin-top: 5px; width: 372px; margin-bottom: 3px;">
                    <asp:Button ID="Button0" runat="server" Text="Login" class="btn btn-info" OnClick="Login_Click" Width="330px" Height="33px" />
                </div>

                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="56px" Height="20px">Sign up</asp:LinkButton>
                | 
                <asp:LinkButton ID="LinkButton2" runat="server" Width="157px" Height="20px">Forgot your password?</asp:LinkButton>

                <br />

            </div>--%>



            <div id="signup_div" runat="server" style="width: 400px; margin-left: auto; margin-right: auto; margin-top: 30px; margin-bottom: auto;">

                <p class="h4 mb-4">Sign up</p>
                <br />
                <asp:Label ID="Label9" runat="server"></asp:Label>

                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>

                        </td>

                        <td>
                            <asp:TextBox ID="username" ValidationGroup="signup" Name="username" runat="server" class="form-control " placeholder="username" OnTextChanged="username_TextChanged" AutoPostBack="true"></asp:TextBox>
                        </td>

                        <td>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="username"
                                runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="E-mail:"></asp:Label>
                        </td>

                        <td>
                            <asp:TextBox ID="email" runat="server" class="form-control " placeholder="E-mail"></asp:TextBox>
                        </td>

                        <td>
                            <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                                ControlToValidate="email" runat="server" />
                            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                ControlToValidate="email" ForeColor="Red" ErrorMessage="Invalid email address." />

                        </td>
                    </tr>


                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                        </td>

                        <td>

                            <asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                        </td>

                        <td>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="password"
                                runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Confirm Password:" Width="130px"></asp:Label>
                        </td>

                        <td>

                            <asp:TextBox ID="re_password" runat="server" TextMode="Password" class="form-control" placeholder="ConfirmPassword"></asp:TextBox>
                        </td>

                        <td>
                            <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="password"
                                ControlToValidate="re_password" runat="server" />
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="User type:"></asp:Label>
                        </td>

                        <td>
                            <asp:DropDownList ID="type_user" runat="server" class="form-control">
                                <asp:ListItem Text="Select type" Value="select" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Patient" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Doctor" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Lab" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </td>

                        <td>
                            <asp:RangeValidator ID="rvclass" runat="server" ForeColor="Red" ControlToValidate="type_user"
                                ErrorMessage="Enter your type" MaximumValue="3"
                                MinimumValue="1" Type="Integer">
                            </asp:RangeValidator>
                        </td>
                    </tr>

                </table>
                <br />
                 <div>
            <div id="dvCaptcha" style="width:230px;">
            </div>
            <asp:TextBox ID="txtCaptcha" runat="server" Style="display: none" />
            <asp:RequiredFieldValidator ID="rfvCaptcha" ErrorMessage="Captcha validation is required." ControlToValidate="txtCaptcha"
                runat="server" ForeColor="Red" Display="Dynamic" />
            <br />
            <br />
            
        </div>

                <asp:Button ID="Button1" runat="server" Text="Sign up" class="btn btn-info" OnClick="Signup_Click" />
            </div>

        </form>
    </div>
            <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async="async" defer="defer"></script>
<script type="text/javascript">
    var onloadCallback = function () {
        grecaptcha.render('dvCaptcha', {
            'sitekey': '<%=ReCaptcha_Key %>',
            'callback': function (response) {
                $.ajax({
                    type: "POST",
                    url: "testrecaptcha.aspx/VerifyCaptcha",
                    data: "{response: '" + response + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (r) {
                        var captchaResponse = jQuery.parseJSON(r.d);
                        if (captchaResponse.success) {
                            $("[id*=txtCaptcha]").val(captchaResponse.success);
                            $("[id*=rfvCaptcha]").hide();
                        } else {
                            $("[id*=txtCaptcha]").val("");
                            $("[id*=rfvCaptcha]").show();
                            var error = captchaResponse["error-codes"][0];
                            $("[id*=rfvCaptcha]").html("RECaptcha error. " + error);
                        }
                    }
                });
            }
        });
    };
</script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</body>
</html>
