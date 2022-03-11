<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="AssignmentUpload.aspx.cs" Inherits="SRMISTportal.AssignmentUpload" %>
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
            <h1><asp:Label ID="LblMsg" class="welcomeHead" runat="server" Text="Label"></asp:Label></h1>
        </div>
        <div class="row row1">
            <div class="col col1 loginTeaWelcomeFeatures" align="center">
               <a href="LoginTeaWelcome.aspx"><img src="user.png" /></a>
                <br>
               <asp:Label class="lblSesID" ID="LblSessionID" runat="server" Text="Label"></asp:Label>
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
                <table cellpadding="6" class="auto-style5 TableTeaReg AssignUploadSection" id="TableLoginTea" align="center">
            <tr>
                <th colspan="2" class="auto-style8 tblheading">
                    Assignment Upload
                </th>
            </tr>
            <tr>
                <td>Subject Name:</td>
                <td>
                    <asp:TextBox ID="txtSubName" class="textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Assignment:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <asp:Button ID="btnUpload" class="btn" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lblMsgAssign" runat="server" Text=" "></asp:Label>
                </th>
            </tr>
        </table>
            </div>
        </div>
    <br><br>
    </div>
    <br>
        





        
</asp:Content>
