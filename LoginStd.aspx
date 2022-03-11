<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="LoginStd.aspx.cs" Inherits="SRMISTportal.LoginStd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br>
    <div class="RegStd" align="center">

        <table cellpadding="6" class="auto-style5 TableStdReg" id="TableLoginStd" align="center">
            <tr>
                <th colspan="2" class="auto-style8 tblheading">
                    Student Login
                </th>
            </tr>
            <tr>
                <td>College Email ID:</td>
                <td>
                    <asp:TextBox ID="txtEmailStd" class="textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="txtPasswordStd" class="textbox" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <asp:Button ID="btnLogin" class="btn" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label>
                </th>
            </tr>
        </table>
    </div>
    <br>

</asp:Content>
