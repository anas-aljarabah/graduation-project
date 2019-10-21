<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .vertical-menu {
            width: 250px;
            height: 300px;
            overflow-y: auto;
        }

            .vertical-menu a {
                background-color: #eee;
                color: black;
                display: block;
                padding: 12px;
                text-decoration: none;
            }

                .vertical-menu a:hover {
                    background-color: #ccc;
                }

                .vertical-menu a.active {
                    background-color: #000000;
                    color: white;
                }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Content -->
                    <%--<h2>
                        <img src="img_avatar.png" style="width: 70px; border-radius: 50%;">
                        Welcome Eyad!</h2>
                    <hr>

                    <!-- Menus -->
                    <div style="border: 3px solid blue; text-align: center;">

                        <!-- Patients Menu -->
                        <div style="border: 3px solid blue; margin: 10px; float: left;" class="vertical-menu">
                            <a style="color: white;" class="active">Today's Patients</a>
                            <a href="#">8:00---Link 1</a>
                            <a href="#">9:00---Link 2</a>
                            <a href="#">10:00--Link 3</a>
                            <a href="#">11:00--Link 4</a>
                            <a href="#">12:00--Link 5</a>
                            <a href="#">1:00---Link 6</a>
                            <a href="#">2:00---Link 7</a>
                            <a href="#">3:00---Link 8</a>
                            <a href="#">4:00---Link 9</a>
                            <a href="#">5:00---Link 10</a>
                        </div>

                        <!-- Extra Div -->
                        <div style="border: 3px solid blue; margin: 10px; float: right; width: 250px; height: 300px; overflow-y: auto;">
                            Extra div
                        </div>

                        <!-- Reports Menu -->
                        <div style="border: 3px solid blue; margin: 10px; width: 400px; height: 300px; overflow-y: auto;" class="vertical-menu">
                            <a style="color: white;" class="active">Latest lab reports received</a>
                            <a href="#">8:00---Link 1</a>
                            <a href="#">9:00---Link 2</a>
                            <a href="#">10:00--Link 3</a>
                            <a href="#">11:00--Link 4</a>
                            <a href="#">12:00--Link 5</a>
                            <a href="#">1:00---Link 6</a>
                            <a href="#">2:00---Link 7</a>
                            <a href="#">3:00---Link 8</a>
                            <a href="#">4:00---Link 9</a>
                            <a href="#">5:00---Link 10</a>
                        </div>

                    </div>

                    <asp:Button ID="Button1" runat="server" style="background-color:#006ccf; width: 350px; height: 40px;" type="button" Text="Create new diagnosis" class="btn btn-info"/> --%>
</asp:Content>
