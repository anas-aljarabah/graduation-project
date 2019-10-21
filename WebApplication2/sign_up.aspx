<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="WebApplication2.sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


      

<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <style type="text/css">
       
  
          body  { 
               
                  height: 500px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
                display:flex;
                   align-items:center;
                    width:100vw;
                    height:100vh; 
                
                }
                       

          #a{
              background-color:whitesmoke;
             border: 2px solid #83bdf3;
          }


        </style>
</head>
<body style="background-image:url('Smart-Apps-Mean-Smart-Patients-3.jpg')";>
   <div class="container-fluid" style="width: 400px;height:350px ;margin-left: auto; margin-right:auto;margin-bottom:auto;margin-top:auto;" id="a">
    
       <form id="form1" runat="server" class="text-center border border-light p-5">

            

         <p class="h4 mb-4">Sign up</p>
      
        <div  style="width: 400px; margin-left: auto; margin-right:auto; "  class="sample">

        <table >
                <tr>
                    <td>         
                        <asp:Label ID="Label1" runat="server" Text="username  :"></asp:Label>
                   
                    </td>
                    <td>
                        <asp:TextBox ID="username"   runat="server"  class="form-control "  placeholder="username"></asp:TextBox> 
                   </td> 
                    <td> 
                         <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="username"  runat="server" />

                    </td>
              </tr>
              

             <tr>
                    <td>         
                        <asp:Label ID="Label2"  runat="server" Text="E-mail  :"></asp:Label>
                   
                    </td>
                    <td>
                         <asp:TextBox ID="email" runat="server" class="form-control "  placeholder="E-mail"></asp:TextBox>  
                   </td> 
                 <td>
                     

                 </td>
              </tr>
                     
            
            <tr>
                    <td>         
                        <asp:Label ID="Label3" runat="server" Text="password  :"></asp:Label>
                   
                    </td>
                    <td>
                         <asp:TextBox ID="password"  TextMode="Password" runat="server" class="form-control" placeholder="Password"></asp:TextBox> 
                   </td> 
              </tr>


            <tr>
                    <td>         
                        <asp:Label ID="Label4" runat="server" Text="ConfirmPassword  :"></asp:Label>
                   
                    </td>
                    <td>
                          <asp:TextBox ID="re_password" runat="server" TextMode="Password" class="form-control" placeholder="ConfirmPassword" ></asp:TextBox>   
                   </td> 
              </tr>
                      
                    
               
            <tr>
                    <td>         
                        <asp:Label ID="Label5" runat="server" Text="type user  :"></asp:Label>
                   
                    </td>
                    <td>
                            <asp:DropDownList ID="type_user" runat="server" class="form-control">  
                            <asp:ListItem Text="Select type" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="patient" Value="patient"></asp:ListItem>  
                            <asp:ListItem Text="doctor" Value="doctor"></asp:ListItem>  
                            <asp:ListItem Text="lab" Value="lab"></asp:ListItem>  
                </asp:DropDownList> 
                   </td> 
              </tr>  
                     
           </table>         
             </div> 
            
            <br/>
            
              
             
                    
               <asp:Button ID="Button1" runat="server" Text="Button"  class="btn btn-info" OnClick="Button1_Click"/>           
        </form>
         
   </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</body>
</html>
