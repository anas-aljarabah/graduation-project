<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="labForm1.aspx.cs" Inherits ="WebApplication2.labForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    
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
        </style>
        
</head>

<body style="background-image:url('Smart-Apps-Mean-Smart-Patients-3.jpg');">

    <div class="container-fluid" style="width: 500px;height:300px ;margin-left: auto; margin-right:auto;margin-bottom:auto;margin-top:auto;" id="main_div" runat ="server">

        <form id="form2" runat="server" class="text-center border border-light p-5">

            <div id ="signup_div" runat="server" style="width: 400px; margin-left: auto; margin-right:auto; margin-top:30px; margin-bottom:auto;">

                <p class="h4 mb-4">Sign up</p>
                <br/>
                                            <asp:Label ID="Label9"  runat="server"></asp:Label>

                <table >
                    
                     
                       <tr>
                        <td>         
                            <asp:Label ID="Label7" runat="server" Text="name_lab" Width="130px"></asp:Label>
                        </td>

                        <td>
                            <asp:TextBox ID="name_lab" runat="server"  class="form-control" placeholder="name" ></asp:TextBox>   
                        </td>
                            
                        <td>
                             <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="name_lab"
                                runat="server" /> 
                        </td>
                           
                    </tr>

                    <tr>
                        <td>         
                            <asp:Label ID="Label10" runat="server" Text="phone" Width="130px"></asp:Label>
                        </td>

                        <td>
                            <asp:TextBox ID="phone" runat="server"  class="form-control" placeholder="phone" ></asp:TextBox>   
                        </td>
                            
                        <td>
                             <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="phone"
                                runat="server" /> 
                        </td>
                           
                    </tr>

                     <tr>
                        <td>         
                            <asp:Label ID="Label6" runat="server" Text="address_lab" Width="130px"></asp:Label>
                        </td>

                        <td>
                            <textarea id="address_lab" cols="20" rows="3" class="form-control" runat="server"></textarea>
                            </td>
                         <td>
                             <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="address_lab"
                                runat="server" /> 
                        </td>
                           
                    </tr>
                    </table> 
                <br />
                <asp:Button ID="Button2" runat="server" Text="Button" class="btn btn-info" OnClick="Button1_Click" />
            </div> 
  
        </form>       
     </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</body>
</html>







