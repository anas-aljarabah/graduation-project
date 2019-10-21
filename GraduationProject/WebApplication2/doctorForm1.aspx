<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctorForm1.aspx.cs" Inherits="WebApplication2.doctorForm1" %>
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

<body style="background-image:url('Smart-Apps-Mean-Smart-Patients-3.jpg')";>

    <div class="container-fluid" style="width: 500px;height:500px ;margin-left: auto; margin-right:auto;margin-bottom:auto;margin-top:auto;" id="main_div" runat ="server">
    
        <form id="form2" runat="server" class="text-center border border-light p-5">

            <div id ="signup_div" runat="server" style="width: 400px; margin-left: auto; margin-right:auto; margin-top:30px; margin-bottom:auto;">

                <p class="h4 mb-4">Sign up</p>
                <br/>
                                            <asp:Label ID="Label9"  runat="server"></asp:Label>

                <table >
                    <tr >
                        <td>         
                            <asp:Label ID="Label1" runat="server" Text="ssn:"></asp:Label>
                   
                        </td>

                        <td>
                             <asp:TextBox ID="ssn" runat="server" class="form-control "  placeholder="ssn"></asp:TextBox>
                        </td>
                        
                        <td>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="ssn"
                                runat="server" />
                        </td>
                    </tr>

                    <tr>
                        <td>         
                            <asp:Label ID="Label2"  runat="server" Text="First name:"></asp:Label>
                        </td>

                        <td>
                            <asp:TextBox ID="fname" runat="server" class="form-control " placeholder="First name"></asp:TextBox>  
                        </td> 

                         <td>
                           
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="fname"
                                runat="server" />

                        </td>
                    </tr>
                     
            
                    <tr>
                        <td>         
                            <asp:Label ID="Label3" runat="server" Text="Last name:"></asp:Label>
                        </td>

                        <td>
                            
                            <asp:TextBox ID="lname"   runat="server" class="form-control" placeholder="Last name"></asp:TextBox> 
                        </td>

                        <td>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="lname"
                                runat="server" /> 
                        </td> 
                    </tr>

                    <tr>
                        <td>         
                            <asp:Label ID="Label4" runat="server" Text="Phone number" Width="130px"></asp:Label>
                        </td>

                        <td>
                            <asp:TextBox ID="phone" runat="server"  class="form-control" placeholder="Phone number" ></asp:TextBox>   
                        </td>
                            
                        <td>
                             <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="phone"
                                runat="server" /> 
                        </td>
                           
                    </tr>

                    
                     
                       <tr>
                        <td>         
                            <asp:Label ID="Label7" runat="server" Text="specialization" Width="130px"></asp:Label>
                        </td>

                        <td>
                            <asp:TextBox ID="specialization" runat="server"  class="form-control" placeholder="specialization" ></asp:TextBox>   
                        </td>
                            
                        <td>
                             <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="specialization"
                                runat="server" /> 
                        </td>
                           
                    </tr>

                    <tr>
                        <td>         
                            <asp:Label ID="Label10" runat="server" Text="unionnumber" Width="130px"></asp:Label>
                        </td>

                        <td>
                            <asp:TextBox ID="unionnumber" runat="server"  class="form-control" placeholder="unionnumber" ></asp:TextBox>   
                        </td>
                            
                        <td>
                             <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="unionnumber"
                                runat="server" /> 
                        </td>
                           
                    </tr>

                     <tr>
                        <td>         
                            <asp:Label ID="Label6" runat="server" Text="address_doc" Width="130px"></asp:Label>
                        </td>

                        <td>
                            <textarea id="address_doc" cols="20" rows="3" class="form-control" runat="server"></textarea>
                            </td>
                         <td>
                             <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="address_doc"
                                runat="server" /> 
                        </td>
                           
                    </tr>

                    <tr>
                        <td>         
                            <asp:Label ID="Label5" runat="server" Text="gender:"></asp:Label>
                        </td>

                        <td>
                            <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>  
                    <asp:ListItem>Female</asp:ListItem>  
                </asp:RadioButtonList>
                        </td>

                        <td>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="gender"
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













