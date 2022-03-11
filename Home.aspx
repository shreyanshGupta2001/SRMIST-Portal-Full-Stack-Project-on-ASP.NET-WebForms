<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SRMISTportal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <marquee behaviour="slide" direction="left">
       <h2>
           WELCOME TO SRMIST PORTAL FOR STUDENTS AND TEACHERS
       </h2></marquee>

    <br><br>   
    <div class="SRMuni" align="center">
        <img src="SRMuni.jpg" height="380px" class="SRMuniImage" />
    </div>
    <br><br><br>
    <div class="latestnews" align="center">
        <h2 class="latnewsHead">Latest News</h2>
        <br>
        <p><a href="https://www.sih.gov.in/" class="latnews" target="_blank">‣ Latest on Smart India Hackathon SRM</a></p>
        <br>
        <p><a href="#" class="latnews">‣ New Notice by Dean Sir</a></p>
        <br>
        <p><a href="Circular.aspx" class="latnews">‣ New Information regarding the Opening of College</a></p>
        <br>
        <p><a href="https://hostellogin.srmist.edu.in/srmclb/" class="latnews" target="_blank">‣ Hostel Details</a></p>
    </div>
    <br>
</asp:Content>
