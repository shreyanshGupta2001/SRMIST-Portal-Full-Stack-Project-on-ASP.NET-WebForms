<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="RegistrationTea.aspx.cs" Inherits="SRMISTportal.RegistrationTea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style5 {
            width: 35%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style7 {
            width: 35%;
        }
        .auto-style8 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br> 
    <div class="RegTea" align="center">

        <table cellpadding="6" class="auto-style7 TableTeaReg">
            <tr>
                <th colspan="2" class="tblheading">
                    Teachers Registration
                </th>
            </tr>
            <tr>
                <td>Teacher Name:</td>
                <td>
                    <asp:TextBox ID="txtNameTea" class="textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Teacher College Email ID:</td>
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
                    <asp:Button ID="btnSubmitTea" runat="server" Text="Submit" class="btn" OnClick="btnSubmitTea_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label>
                </th>
            </tr>
        </table>

    </div>
    <br>
</asp:Content>
