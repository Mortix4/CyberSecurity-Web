<%@ Page Title="" Language="C#" MasterPageFile="~/pages/master.Master" AutoEventWireup="true" CodeBehind="counter.aspx.cs" Inherits="myWeb.pages.counter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        body {
            color: #CCCCCC;
        }
        table {
          font-family: arial, sans-serif;
          border-collapse: revert-layer;
        }
        
        td, th {
          border: 1px solid orange;
          text-align: left;
          padding: 8px;
        }
    </style>

    </br></br>
    <h1 style="text-align: center"> Guests Counter</h1>
    </br></br>
    <center><table align="center"; border="1" width="400px" style="text-align:center">
            <tr>
                <td width="75%">Total Guests In Website</td>
                <td >
                    <%=Application["SessionsNum"] %>
                </td>
            </tr>
            <tr>
                <td>Number Of Guests Now</td>
                <td >
                    <%=Session["counterS"] %>
                </td>
            </tr>
        </table></center>
        </br></br>


</asp:Content>
