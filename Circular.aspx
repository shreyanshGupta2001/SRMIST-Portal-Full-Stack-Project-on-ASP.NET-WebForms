<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Circular.aspx.cs" Inherits="SRMISTportal.Circular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 80%;
            border: 1px solid #0033CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <div class="Circular" align="center">
        <br>
        <img src="Srmseal.png" height="150px" />

        <br />
        <br>
        <div class="rowcir" align="center">
            <div class="colcir">
                <img src="mask.png" height="100px" />
            </div>
            <div class="colcir">
                <img src="sanitizer.png" height="100px" />
            </div>
            <div class="colcir">
                <img src="social.png" height="100px" />
            </div>
            <div class="colcir">
                <img src="distance.png" height="100px" />
            </div>
        </div>
        <br />
        <h3>Dear Students, Greetings from SRMIST</h3>
        <p>&nbsp;</p>
        <div class="infocir">
        <div class="infocirhead">
            <h4>👉Information for III year B.Tech(UG) Students:-</h4>
        </div>    
        <p>
            We are pleased to inform you that we will be opening the oncampus classes from 14/03/2022 (Monday). The classes will be 
            held through physical mode only. 
            SOPs to be strictly adhered to. Suitable travel plans can be made at your end. Those who have already booked the hostels will be permitted to occupy their rooms from 1st of March, 2022. 
            No fresh bookings for the hostel will be permitted. SRMIST awaits your return to experience the lively campus.🙂
        </p>
        </div>
        <br>
        <img src="hostel1.png" height="550px" />
        <img src="hostel2.png" height="350px" />
        <img src="hostel3.png" height="560px" />
        <br />
        <br />
        <div class="infocirbtm">
            Hostel booking for III Year B.Tech, B.Arch and B. Des students
        </div>
        <div class="infocirbtm">
            Hostel booking portal: <a id="hostelink" href="https://hostellogin.srmist.edu.in/srmclb/" target="_blank">Click here</a>
        </div>
        <div class="infocirbtm">
            Use your Net ID and Password.
        </div>
        <br>
        <img src="app.png" height="200px" />
        <br>
    </div>
    <br>
</asp:Content>
