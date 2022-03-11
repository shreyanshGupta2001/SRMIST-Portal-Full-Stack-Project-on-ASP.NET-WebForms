<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="LoginTea.aspx.cs" Inherits="SRMISTportal.LoginTea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <br>
    <div class="RegStd" align="center">

        <table cellpadding="6" class="auto-style5 TableTeaReg" id="TableLoginTea" align="center">
            <tr>
                <th colspan="2" class="auto-style8 tblheading">
                    Teacher Login
                </th>
            </tr>
            <tr>
                <td>College Email ID:</td>
                <td>
                    <asp:TextBox ID="txtEmailTea" class="textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="txtPasswordTea" class="textbox" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <asp:Button ID="btnLoginTea" class="btn" runat="server" Text="Login" OnClick="btnLoginTea_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label>
                </th>
            </tr>
        </table>
    </div>
    <br>


</asp:Content>
