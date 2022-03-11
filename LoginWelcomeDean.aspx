<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="LoginWelcomeDean.aspx.cs" Inherits="SRMISTportal.LoginWelcomeDean" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .HeroSection
    {
    display:none!important;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br>
    <div class="LoginTeawelContents">
        <div class="headingLoginTea" align="center">
            <h1><asp:Label ID="lblMsg" class="welcomeHead" runat="server" Text="Label"></asp:Label></h1>
            <p>The Admin Portal for the Dean of the College</p>
        </div>
        <div class="row row1">
            <div class="col col1 loginTeaWelcomeFeatures" align="center">
                <a href="LoginWelcomeDean.aspx"><img src="user.png" /></a>
                <br>
               <asp:Label class="lblSesID" ID="lblSessionID" runat="server" Text="Label"></asp:Label>
               <br><br>
                <asp:Button ID="btnDisplayTea" class="btnTea" runat="server" Text="Display Student Details" OnClick="btnDisplayTea_Click" />
                <br><br>
                <asp:Button ID="btnStdDelete" class="btnTea" runat="server" Text="Delete any Student Record" OnClick="btnStdDelete_Click" />
                <br><br>
                <asp:Button ID="btnAddNotice" class="btnTea" runat="server" Text="Add a new Notice" OnClick="btnAddNotice_Click" />
                <br><br>
                <asp:Button ID="btnTeaUpdate" class="btnTea" runat="server" Text="Reset Password" OnClick="btnTeaUpdate_Click"  />
                <br><br>
                <asp:Button ID="btnLogoutTea" class="btnTea" runat="server" Text="Logout" OnClick="btnLogoutTea_Click" />
            </div>
            <div class="col col2 timetable">
                <img src="Srmseal.png" height="350px" />
            </div>
        </div>
    
    </div>
    <br>

</asp:Content>
