<%@ Page Title="" Language="C#" MasterPageFile="~/pages/master.Master" AutoEventWireup="true" CodeBehind="usersTable.aspx.cs" Inherits="myWeb.pages.usersTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="filter-section">
            <label for="filter">Enter text to search:</label>
            <br />
            <input type="text" name="filter" id="filter" />
            <br />
            <input type="submit" id="btnFilter2" value="Search" runat="server" onserverclick="Click_Filter" />
            <br />
        </div>

        <div class="sort-section">
            <label for="Columns">Sort by the following columns:</label>
            <select id="Columns" runat="server">
                <option value="firstName">firstName</option>
                <option value="lastName">lastName</option>
                <option value="userName">userName</option>
                <option value="city">city</option>
            </select>
            <input type="radio" id="ASC" name="order" value="ASC" checked />
            <label for="ASC">Ascending</label>
            <input type="radio" id="DESC" name="order" value="DESC" />
            <label for="DESC">Descending</label>
            <input type="submit" value="Sort" name="btnSort" id="btnSort" runat="server" onserverclick="Click_Sort" />
            <br />
        </div>

        <div class="actions-section">
            <input type="submit" value="Delete" name="btnDelete" id="Button1" runat="server" onserverclick="Delete" />
            <input type="submit" value="Edit" name="btnEdit" id="btnEdit" runat="server" onserverclick="Edit" />
            <input type="submit" value="Add" name="btnAdd" id="btnAdd" runat="server" onserverclick="Add" />
        </div>

        <div runat="server" id="tableDiv"></div>
        <div runat="server" id="message"></div>
    </div>

    <style>
        body {
            color: white;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 20px;
        }

        .filter-section,
        .sort-section,
        .actions-section {
            margin-bottom: 10px;
        }
    </style>
</asp:Content>
