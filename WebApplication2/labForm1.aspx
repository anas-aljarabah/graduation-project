<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="labForm1.aspx.cs" Inherits="WebApplication2.labForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            
            <div id="lab" runat="server">
                <div>
                    <asp:TextBox ID="name_lab" runat="server"></asp:TextBox>
                </div>
                </div>
                <div>
                    <asp:TextBox ID="address_lab" runat="server"></asp:TextBox>
                </div>

            <div id="general_information" runat="server">
              
                <div>
                   <asp:TextBox ID="phone" runat="server"></asp:TextBox> 
                </div>


            </div>  

        </div>
    </form>
</body>
</html>
