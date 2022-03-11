<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="DisplayNotice.aspx.cs" Inherits="SRMISTportal.DisplayNotice" %>
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
                <h3 class="headofeat">Notice</h3>
                <br>
             <asp:GridView ID="GridView1" class="assign gridvStdbyTea" runat="server" CssClass="auto-style2" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="NotName" HeaderText="Notice Heading" SortExpression="NotName" >
                <ControlStyle CssClass="assign" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="Notice" Target="_blank" HeaderText="Notice" Text="Click to open" >
                <ControlStyle BackColor="White" CssClass="AssignLink" Font-Underline="True" ForeColor="#3366FF" />
                </asp:HyperLinkField>
            </Columns>
        </asp:GridView>
            </div>
        </div>
        <br>
    </div>
    <br>
</asp:Content>
