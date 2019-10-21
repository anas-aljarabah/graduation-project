﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="labForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="signup_div" runat="server" style="">

        <!-- <asp:Label ID="Label9" runat="server"></asp:Label> -->

        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Personal Information (Lab)</div>
            <div class="card-body">


                <asp:TextBox ID="name_lab" runat="server" class="form-control" placeholder="Lab Name"></asp:TextBox><asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="name_lab" runat="server" />

                <asp:TextBox ID="phone" runat="server" class="form-control" placeholder="Phone Number"></asp:TextBox><asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="phone" runat="server" /><asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="^\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$" ControlToValidate="phone" ForeColor="Red" ErrorMessage="Invalid phone number." />
                 <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                  <asp:DropDownList ID="City" runat="server" AutoPostBack="True" class="form-control" OnSelectedIndexChanged="City_SelectedIndexChanged">
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
              </div>
              <div class="col-md-6">
               <asp:DropDownList ID="Area" runat="server" class="form-control">
                    <asp:ListItem Text="Select Area" Value="select" Selected="True"></asp:ListItem>
                </asp:DropDownList>
              </div>
            </div>
          </div>

                <textarea placeholder="Full Address" id="address_lab" cols="20" rows="3" class="form-control" runat="server"></textarea><asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="address_lab" runat="server" />



                <hr />
                <asp:Button ID="Button2" runat="server" Text="Save" class="btn btn-info" Style="color: white; background-color: #007bff;" OnClick="Button2_Click" />
            </div>
        </div>
    </div>
</asp:Content>
