<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="change_password.aspx.cs" Inherits="WebApplication2.chage_password" %>
<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>

  <title>SB Admin - Register</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet"/>

 <script  src="https://code.jquery.com/jquery-3.2.1.min.js"></script>  
 
 
</head>

<body class="bg-dark" >

  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">change Your Password</div>
      <div class="card-body">
        <form runat="server">
       
          <div class="form-group">
            <div class="form-label-group">
              <asp:TextBox ID="current_pass" runat="server" class="form-control " placeholder="Current Password"   AutoPostBack="true" OnTextChanged="current_pass_TextChanged1"></asp:TextBox>
              <label for="current_pass">Current Password</label>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="current_pass"
                                runat="server" Display="Dynamic" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
              
          </div>
<div runat="server" id="password_div">
          <div class="form-group" >
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                  <label for="password">Password</label>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="password"
                                runat="server" Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$"
                                ControlToValidate="password" ForeColor="Red" ErrorMessage="Invalid password (contains at least 8 characters,at least one digit and at least one special character)." />
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                  <asp:TextBox ID="re_password" runat="server" TextMode="Password" class="form-control" placeholder="ConfirmPassword"></asp:TextBox>
                  <label for="re_password">Confirm password</label>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="re_password"
                                runat="server" Display="Dynamic" />

                    <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="password"
                                ControlToValidate="re_password" runat="server"  Display="Dynamic"/>
                </div>
              </div>
            </div>
              </br>
                          <asp:Button ID="Button1" runat="server" Text="Change" class="btn btn-primary btn-block" OnClick="Button1_Click"/>

          </div>
              </div>
            
        

          
        </form>
       
      </div>
    </div>
  </div>
    
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>
