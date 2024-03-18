<%@ Page Title="" Language="C#" MasterPageFile="~/pages/master.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="myWeb.pages.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../JavaScript/loginJS.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../CSS/LoginStyle.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">


    
    <div class="table">
   <div style="text-align: center">
        <h2>Login</h2>

        <table style="float: right">
            <tr>
                <td>username:</td>
                <td>
                    <input type="text" name="userName" id="userName" /></td>
                <td>
                    <input type="text" name="uNameMsg" id="uNameMsg" style="color: black; font-weight: bold;background-color: teal"><br>
                </td>
            </tr>
            <tr>
                <td>password:</td>
                <td>
                    <input type="password" name="pw" id="pw" /></td>
                <td>
                    <input type="text" name="pwMsg" id="pwMsg" style="background-color:teal ;color: black; font-weight: bold;" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" name="submit" value="login" onclick="return loginValidate()" />
                </td>
                <td colspan="2">
                    <input type="reset" id="reset" name="reset" value="clear" />
                </td>
            </tr>
        </table>
    </div>
    <div id="message" runat="server">
      
    </div>
    <div style="text-align: center" name="div" id="div" runat="server">
       
    </div>

    <div style="text-align: center; font-size:x-large; float: right;" runat="server" id="Registration" visible="true">
    <a href="register.aspx">Register</a>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />

        </div>

</asp:Content>

