<%@ Page Title="" Language="C#" MasterPageFile="~/pages/master.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="myWeb.pages.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../JavaScript/registerJS.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../CSS/RegisterStyle.css" rel="stylesheet" />
    <center>
    <table style="float: left">

        <center>
            </br></br></br></br></br>
        <div class="container register-container">
        <h2 style="color: black">Enter Your Details</h2>

        <form>
            <label for="userName">Username:</label>
            <input type="text" name="userName" id="userName" />
            <div id="userNameAlert" class="alert" runat="server"></div>

            <label for="fName">First Name:</label>
            <input type="text" name="fName" id="fName" />

            <label for="lName">Last Name:</label>
            <input type="text" name="lName" id="lName" />

            <label for="email">Email:</label>
            <input type="text" id="email" name="email">

            <label for="date">Birthday</label>
            <input type="date" name="date" id="date" />

            </br>
            <input type="radio" id="male" name="gender" value="male">
            <label for="male">Male</label>
            <input type="radio" id="female" name="gender" value="female">
            <label for="female">Female</label>

            </br>
            <input type="checkbox" id="football" name="football" value="footbal">
            <label for="football">Football</label>
            <input type="checkbox" id="music" name="music" value="music">
            <label for="music">Music</label>
            </br>
            <input type="checkbox" id="basketball" name="basketball" value="basketball">
            <label for="basketball">Basketball</label>
            <input type="checkbox" id="swim" name="swim" value="swim">
            <label for="swim">Swimming</label>

            </br></br>
            <label for="city">Hometown:</label>
            <select id="city" name="city">
                <option value="null" selected="selected"></option>
                <option value="Haifa">Haifa</option>
                <option value="Julis">Julis</option>
                <option value="Akko">Akko</option>
                <option value="Naharia">Nahria</option>
                <option value="Other">Other</option>
            </select>

            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone">

            <label for="pw">Password:</label>
            <input type="password" id="pw" name="pw" />
            </br></br>
            <input type="submit" id="submit" name="submit" value="Submit" />
            <input type="reset" id="reset" name="reset" value="Clear" />
        </form>
    </div>
        </center>
    </table>
    </center>
</br>
</asp:Content>