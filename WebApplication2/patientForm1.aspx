<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientForm1.aspx.cs" Inherits="WebApplication2.patientForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div id="personal_information" runat="server">
                <div>
                    <asp:TextBox ID="ssn" runat="server"></asp:TextBox>


                </div>
                <div>
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                </div>
                 <div>
                    <asp:RadioButtonList ID="gender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>  
                    <asp:ListItem>Female</asp:ListItem>  
                </asp:RadioButtonList>
                 </div>
            </div> 
            

            <div id="general_information" runat="server">
               
                <div>
                   <asp:TextBox ID="phone" runat="server"></asp:TextBox> 
                </div>
            </div>
            
               <div>
                    <asp:TextBox ID="dataofbirth" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="bloodtype" runat="server"></asp:TextBox>
                </div>
            </div>   

        </div>
    </form>
</body>
</html>
