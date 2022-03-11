<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="RegistrationStd.aspx.cs" Inherits="SRMISTportal.Registration" %>
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
    <div class="RegStd" align="center">

        <table cellpadding="6" class="auto-style5 TableStdReg" align="center">
            <tr>
                <th colspan="2" class="auto-style8 tblheading">
                    Students Registration
                </th>
            </tr>
            <tr>
                <td>Student Name:</td>
                <td>
                    <asp:TextBox ID="txtNameStd" class="textbox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Student College Email ID:</td>
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
                    <asp:Button ID="btnSubmitStd" runat="server" Text="Submit" class="btn" OnClick="btnSubmitStd_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label>
                </th>
            </tr>
        </table>
    </div>
    <br>
</asp:Content>
