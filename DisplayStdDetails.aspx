<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="DisplayStdDetails.aspx.cs" Inherits="SRMISTportal.DisplayStdDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .HeroSection
    {
    display:none!important;
    }
    </style>
    <style type="text/css">
        .auto-style2 {
            width: 40%;
            border: 1px solid #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <div class="DisplayStdDetails">
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
                <h3 class="headofeat">Details</h3>
                <br>
                 <asp:GridView ID="GridView1" class="gridviewStd gridvStdbyTea" runat="server" AutoGenerateColumns="False" CellPadding="2">
                    <Columns>
                        <asp:BoundField DataField="StdID" HeaderText="Student ID" SortExpression="StdID" />
                        <asp:BoundField DataField="SName" HeaderText="Student Name" SortExpression="SName" />
                        <asp:BoundField DataField="SEmail" HeaderText="Student Email ID" SortExpression="SEmail" />
                        <asp:BoundField DataField="SBatch" HeaderText="Batch" SortExpression="SBatch" />
                        <asp:BoundField DataField="SAddress" HeaderText="Address" SortExpression="SAddress" />
                        <asp:BoundField DataField="SSem1CGPA" HeaderText="Semester 1 CGPA" SortExpression="SSem1CGPA" />
                        <asp:BoundField DataField="SSem2CGPA" HeaderText="Semester 2 CGPA" SortExpression="SSem2CGPA" />
                        <asp:BoundField DataField="SSem3CGPA" HeaderText="Semester 3 CGPA" SortExpression="SSem3CGPA" />
                        <asp:BoundField DataField="SSem4CGPA" HeaderText="Semester 4 CGPA" SortExpression="SSem4CGPA" />
                        <asp:BoundField DataField="SSem5CGPA" HeaderText="Semester 5 CGPA" SortExpression="SSem5CGPA" />
                        <asp:BoundField DataField="SSem6CGPA" HeaderText="Semester 6 CGPA" SortExpression="SSem6CGPA" />
                        <asp:BoundField DataField="SFees" HeaderText="Fees Status" SortExpression="SFees" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <br>
    </div>
    <br>
</asp:Content>
