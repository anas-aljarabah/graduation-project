<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebApplication2.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


</head>

<body>
    <form id="form1" runat="server">

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
             <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>
               <asp:ListItem Text="عمان" Value="1" ></asp:ListItem>
               <asp:ListItem Text="الزرقاء" Value="2" ></asp:ListItem>
               <asp:ListItem Text="معان" Value="3" ></asp:ListItem>
               <asp:ListItem Text="اربد" Value="4" ></asp:ListItem>
               <asp:ListItem Text="المفرق" Value="5" ></asp:ListItem>
                <asp:ListItem Text="البلقاء" Value="6" ></asp:ListItem>
               <asp:ListItem Text="الطفيلة" Value="7"></asp:ListItem>
               <asp:ListItem Text="الكرك" Value="8" ></asp:ListItem>
               <asp:ListItem Text="مأدبا" Value="9" ></asp:ListItem>
               <asp:ListItem Text="جرش" Value="10" ></asp:ListItem>
               <asp:ListItem Text="عجلون" Value="11" ></asp:ListItem>
            <asp:ListItem Text="العقبة" Value="12" ></asp:ListItem>
               
        </asp:DropDownList>
        
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Text="Select Area" Value="select" Selected="True"></asp:ListItem>
                </asp:DropDownList>


    </form>
</body>
</html>
