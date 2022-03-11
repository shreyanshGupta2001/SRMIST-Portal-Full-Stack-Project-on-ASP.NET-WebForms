<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="NoticeUpload.aspx.cs" Inherits="SRMISTportal.NoticeUpload" %>
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
    <div class="DisplayStdbyTea" id="notupload">
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
            <div class="col col2 stdlist">
                <table cellpadding="6" class="auto-style5 TableTeaReg" id="TableLoginTea" align="center">
            <tr>
                <th colspan="2" class="auto-style8 tblheading">
                    Notice Upload
                </th>
            </tr>
            <tr>
                <td>Notice Heading:</td>
                <td>
                    <asp:TextBox ID="txtNotName" class="textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Notice:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <asp:Button ID="btnUploadNot" class="btn" runat="server" Text="Upload" OnClick="btnUploadNot_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lblMsgUpload" runat="server" Text=" "></asp:Label>
                </th>
            </tr>
        </table>
            </div>
        </div>
    
    </div>
    <br>

            
</asp:Content>
