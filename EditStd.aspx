<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="EditStd.aspx.cs" Inherits="SRMISTportal.EditStd" %>
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
    <div class="DisplayAssign">
        <div align="center">
            <h1>
                <asp:Label ID="lblMsg" class="welcomeHead" runat="server" Text="Label"></asp:Label>
            </h1>
        </div>
        <div class="row row1">
            <div class="col col1 loginStdWelcomeFeatures" align="center">
                <a href="LoginStdWelcome.aspx"><img src="user.png" /></a>
                <br>
                <asp:Label class="lblSesID" ID="lblSessionID" runat="server" Text="Label"></asp:Label>
                <br><br>
                <asp:Button ID="btnDisplayStd" class="btnStd" runat="server" Text="Display Details" OnClick="btnDisplayStd_Click" />
                <br><br>
                <asp:Button ID="btnAttendance" class="btnStd" runat="server" Text="Check Attendance" OnClick="btnAttendance_Click" />
                <br><br>
                <asp:Button ID="btnAssignment" class="btnStd" runat="server" Text="Check Assignment" OnClick="btnAssignment_Click" />
                <br><br>
                <asp:Button ID="btnNotice" class="btnStd" runat="server" Text="Check Notice" OnClick="btnNotice_Click" />
                <br><br>
                <asp:Button ID="btnEditStd" class="btnStd" runat="server" Text="Reset Password" OnClick="btnEditStd_Click" />
                <br><br>
                <asp:Button ID="btnLogoutStd" class="btnStd" runat="server" Text="Logout" OnClick="btnLogoutStd_Click" />
            </div>
            <div class="col col2 stdlist" align="center">
                <table cellpadding="6" class="auto-style5 TableStdReg" id="TableEditStd" align="center">
            <tr>
                <th colspan="2" class="auto-style8 tblheading">
                    Reset Password
                </th>
            </tr>
            <tr>
                <td>College Email ID:</td>
                <td>
                    <asp:TextBox ID="txtEmailStd" class="textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>New Password:</td>
                <td>
                    <asp:TextBox ID="txtPasswordStd" class="textbox" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <asp:Button ID="btnUpdateStd" class="btn" runat="server" Text="Update" OnClick="btnUpdateStd_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lblMsgUpdate" runat="server" Text=" "></asp:Label>
                </th>
            </tr>
        </table>
            </div>
        </div>
        <br>
    </div>
    <br>

    
</asp:Content>
