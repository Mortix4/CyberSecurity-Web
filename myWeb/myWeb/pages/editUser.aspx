<%@ Page Title="" Language="C#" MasterPageFile="~/pages/master.Master" AutoEventWireup="true" CodeBehind="editUser.aspx.cs" Inherits="myWeb.pages.editUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <h1 style="text-align:center">עריכת משתמש - עדכון </h1>
    <table align="center">
        <tr>
            <td>
               שם משתמש:
            </td>
            <td>
                <input type="text" name="userName" id="userName" runat="server"/>
            </td>
            <td>
                <div id="userNameAlert" class="alert"></div>
            </td>
        </tr>
       <tr>
            <td>
                שם פרטי:
            </td>
            <td>
                <input type="text" name="fName" id="fName" runat="server"/>
            </td>
            <td>
                <div></div>
            </td>
        </tr>
        <tr>
            <td>
               שם משפחה:
            </td>
            <td>
                <input type="text" name="lName" id="lName" runat="server"/>
            </td>
            <td>
                <div></div>
            </td>
        </tr>
         <tr>
            <td>אימייל</td>
            <td>
                <input type="text" name="email" id="email" runat="server"/>
            </td>
            <td >
                <div id="emailAlert" class="alert"></div>
            </td>
            </tr>
        <tr>
            <td>תאריך לידה</td>
            <td>
                <input type="date" name="date" id="date" runat="server" />
            </td>
            <td></td>
        </tr>

        <tr >
            <td>מגדר</td>
            <td >
                <input type="radio" name="gender" id="gender" value="male" checked runat="server"> Male
                <input type="radio" name="gender" id="gender" value="female" > Female
            </td>
            <td></td>
        </tr>

        <tr>
            <td>
                כדורגל:
            </td>
            <td>
                <input type="text" name="football" id="football" runat="server"/>
            </td>
            <td>
                <div></div>
            </td>
        </tr>

         <tr>
            <td>
                מוזיקה:
            </td>
            <td>
                <input type="text" name="music" id="music" runat="server"/>
            </td>
            <td>
                <div></div>
            </td>
        </tr>


         <tr>
            <td>
                כדורסל:
            </td>
            <td>
                <input type="text" name="basketball" id="basketball" runat="server"/>
            </td>
            <td>
                <div></div>
            </td>
        </tr>


         <tr>
            <td>
                שחיה:
            </td>
            <td>
                <input type="text" name="swim" id="swim" runat="server"/>
            </td>
            <td>
                <div></div>
            </td>
        </tr>

         <tr>
            <td>
                טלפון:
            </td>
            <td>
                <input type="text" name="phone" id="phone" runat="server"/>
            </td>
            <td>
                <div></div>
            </td>
        </tr>


        <tr>
            <td>
                עיר:
            </td>
            <td>
                <input type="text" name="city" id="city" runat="server"/>
            </td>
            <td>
                <div></div>
            </td>
        </tr>

        <tr>
            <td>
                מנהל:
            </td>
            <td>
                <input type="checkbox" name="Admin" id="Admin" runat="server"/>
            </td>
            <td>
                <div></div>
            </td>
        </tr>
       
        
         <tr>
            <td>סיסמה</td>
            <td>
                <input type="text" name="pw" id="pw" runat="server"/>
            </td>
            <td>
                <div id="passwordAlert" class="alert"></div>
            </td>
        </tr>
       
        <tr>
            <td>
                <input type="submit" name="Update" id="Update" runat="server" value ="עדכן" onserverclick ="UpdateUser" />
            </td>
            <td>
                <input type="reset" name="reset" value ="אתחל" />
            </td>
            <td></td>
        </tr>
        </table>

    <div runat="server" id="message"></div>



</asp:Content>

סייבר מתייחס לתחום הדיגיטלי הכולל מחשבים, רשתות, תוכנות ואינטרנט. זהו תחום מתפתח כל הזמן, הממלא תפקיד מכריע בחברה המודרנית שלנו, המאפשר תקשורת, חילופי מידע והתקדמות טכנולוגית. עם זאת, עם צמיחת מרחב הסייבר, צצו אתגרים וסיכונים חדשים, שהולידו את תחום אבטחת הסייבר.
