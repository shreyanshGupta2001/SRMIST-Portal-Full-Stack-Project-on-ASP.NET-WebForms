<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="EditTea.aspx.cs" Inherits="SRMISTportal.EditTea" %>
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
    <div class="DisplayStdbyTea">
        <div class="headingLoginTea" align="center">
            <h1><asp:Label ID="lblMsg" class="welcomeHead" runat="server" Text="Label"></asp:Label></h1>
        </div>
        <div class="row row1">
            <div class="col col1 loginTeaWelcomeFeatures" align="center">
               <a href="LoginTeaWelcome.aspx"><img src="user.png" /></a>
                <br>
               <asp:Label class="lblSesID" ID="lblSessionID" runat="server" Text="Label"></asp:Label>
               <br><br>
               <asp:Button ID="btnDisplayTea" class="btnTea" runat="server" Text="Display Student Details" OnClick="btnDisplayTea_Click" />
               <br><br>
               <asp:Button ID="btnAgnUpload" class="btnTea" runat="server" Text="Upload Assignment" OnClick="btnAgnUpload_Click" />
               <br><br>
               <asp:Button ID="btnTeaUpdate" class="btnTea" runat="server" Text="Reset Password" OnClick="btnTeaUpdate_Click" />
               <br><br>
               <asp:Button ID="btnLogoutTea" class="btnTea" runat="server" Text="Logout" OnClick="btnLogoutTea_Click" />
            </div>
            <div class="col col2 stdlist">
                <table cellpadding="6" class="auto-style5 TableStdReg TableUpdateTea" id="TableEditStd" align="center">
            <tr>
                <th colspan="2" class="auto-style8 tblheading">
                    Reset Password
                </th>
            </tr>
            <tr>
                <td>College Email ID:</td>
                <td>
                    <asp:TextBox ID="txtEmailTea" class="textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>New Password:</td>
                <td>
                    <asp:TextBox ID="txtPasswordTea" class="textbox" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <asp:Button ID="btnUpdateTea" class="btn" runat="server" Text="Update" OnClick="btnUpdateTea_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lblMsgUpdate" runat="server" Text=" "></asp:Label>
                </th>
            </tr>
        </table>
            </div>
        </div>
    <br><br>
    </div>
    <br>
        
        
</asp:Content>
