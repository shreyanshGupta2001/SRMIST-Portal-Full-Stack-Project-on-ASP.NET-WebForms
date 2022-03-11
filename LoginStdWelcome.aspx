<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="LoginStdWelcome.aspx.cs" Inherits="SRMISTportal.LoginStdWelcome" %>
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
    <div class="LoginStdwelContents">
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
            <div class="col col2 timetable">
                <img src="TimeTable.png" height="430px" />
            </div>
        </div>
        <br>

        <div align="center">
            <p>
                <asp:GridView ID="GridView1" class="gridviewStd" runat="server" AutoGenerateColumns="False" CellPadding="2">
                    <Columns>
                        <asp:BoundField DataField="StdID" HeaderText="Student ID" SortExpression="StdID" />
                        <asp:BoundField DataField="SName" HeaderText="Student Name" SortExpression="SName" />
                        <asp:BoundField DataField="SEmail" HeaderText="Student Email ID" SortExpression="SEmail" />
                        <asp:BoundField DataField="SBatch" HeaderText="Batch" SortExpression="SBatch" />
                        <asp:BoundField DataField="SAddress" HeaderText="Address" SortExpression="SAddress" />
                        <asp:BoundField DataField="SSem1CGPA" HeaderText="Semester 1 CGPS" SortExpression="SSem1CGPA" />
                        <asp:BoundField DataField="SSem2CGPA" HeaderText="Semester 2 CGPA" SortExpression="SSem2CGPA" />
                        <asp:BoundField DataField="SSem3CGPA" HeaderText="Semester 3 CGPA" SortExpression="SSem3CGPA" />
                        <asp:BoundField DataField="SSem4CGPA" HeaderText="Semester 4 CGPA" SortExpression="SSem4CGPA" />
                        <asp:BoundField DataField="SSem5CGPA" HeaderText="Semester 5 CGPA" SortExpression="SSem5CGPA" />
                        <asp:BoundField DataField="SSem6CGPA" HeaderText="Semester 6 CGPA" SortExpression="SSem6CGPA" />
                        <asp:BoundField DataField="SFees" HeaderText="Fees Status" SortExpression="SFees" />
                    </Columns>
                </asp:GridView>
                <br>
                <asp:GridView ID="GridView2" class="gridviewStd" runat="server" AutoGenerateColumns="False" CellPadding="2">
                    <Columns>
                        <asp:BoundField DataField="SAtten1" HeaderText="Subject 1" SortExpression="SAtten1" />
                        <asp:BoundField DataField="SAtten2" HeaderText="Subject 2" SortExpression="SAtten2" />
                        <asp:BoundField DataField="SAtten3" HeaderText="Subject 3" SortExpression="SAtten3" />
                        <asp:BoundField DataField="SAtten4" HeaderText="Subject 4" SortExpression="SAtten4" />
                        <asp:BoundField DataField="SAtten5" HeaderText="Subject 5" SortExpression="SAtten5" />
                    </Columns>
                </asp:GridView>
            </p>
        </div>
        <br>
    </div>
    <br>
</asp:Content>
