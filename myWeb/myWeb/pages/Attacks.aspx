<%@ Page Title="" Language="C#" MasterPageFile="~/pages/master.Master" AutoEventWireup="true" CodeBehind="Attacks.aspx.cs" Inherits="myWeb.pages.page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
  .styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
  .styled-table thead tr {
    background-color: orange;
    color: #ffffff;
    text-align: left;
}

  .styled-table th,
.styled-table td {
    padding: 12px 15px;
}

  .styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
    color: #ff6a00;
    background-color: antiquewhite;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}

.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}

</style>

    <center>
    <table class="styled-table">
    <thead>
        <tr>
            <th>Attack</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Spoofing</td>
            <td>An attacker impersonates someone or something else to access sensitive information and do malicious activities. For example, they can spoof an email address or a network address</td>
        </tr>

        <tr class="active-row">
            <td>Identity-Based Attacks</td>
            <td>Perform to steal or manipulate others' personal information, like login someone's PINs to steal unauthorized access to their systems</td>
        </tr>

        <tr class="active-row">
            <td>Code Injection Attacks</td>
            <td>Performed by inserting malicious code into a software application to manipulate data. For example, the attacker puts malicious code into a SQL database to steal data</td>
        </tr>

        <tr class="active-row">
            <td>Supply Chain Attacks</td>
            <td>Exploit software or hardware supply chain vulnerabilities to collect sensitive information</td>
        </tr>

        <tr class="active-row">
            <td>DNS Tunneling</td>
            <td>Attacker uses the Domain Name System (DNS) to bypass security measures and communicate with a remote server</td>
        </tr>

        <tr class="active-row">
            <td>DNS Spoofing</td>
            <td>Cyberattack in which an attacker manipulates the DNS records from a website to control its traffic</td>
        </tr>

        <tr class="active-row">
            <td>IoT-Based Attacks</td>
            <td>Exploit vulnerabilities in the Internet of Things (IoT), like smart thermostats and security cameras, to steal data. </td>
        </tr>

        <tr class="active-row">
            <td>Ransomware</td>
            <td>Encrypt the victim's data and demands payment in exchange.
</td>
        </tr>

        <tr class="active-row">
            <td>Distributed Denial of Service (DDos) Attacks</td>
            <td>Flood a website with traffic to make it unavailable to legitimate users and to exploit vulnerabilities in the specific network</td>
        </tr>

        <tr class="active-row">
            <td>Spamming</td>
            <td>Send unauthentic emails to spread phishing scams. 
</td>
        </tr>

        <tr class="active-row">
            <td>Corporate Account Takeover (CATO)</td>
            <td>Hackers use stolen login credentials to access others' bank accounts</td>
        </tr>

        <tr class="active-row">
            <td>Automated Teller Machine (ATM) Cash Out</td>
            <td>Hackers get close to a bank's computer systems to withdraw large amounts of cash from ATMs</td>
        </tr>

        <tr class="active-row">
            <td>Whale-Phishing Attacks</td>
            <td>Target high-profile individuals like executives or celebrities using sophisticated social engineering techniques to get sensitive information. </td>
        </tr>

        <tr class="active-row">
            <td>Spear-Phishing Attacks</td>
            <td>Target specific individuals or groups under an organization. Attackers use social engineering techniques to get sensitive information. </td>
        </tr>

        <tr class="active-row">
            <td>URL Interpretation</td>
            <td>A web browser interprets a URL (Uniform Resource Locator) and requests the corresponding web page to exploit vulnerabilities in the URL interpretation. 
</td>
        </tr>
       
        <tr class="active-row">
            <td>Session Hijacking</td>
            <td>The hacker gets access to a user's session ID to authenticate the user's session with a web application and take control of the user's session.
</td>
        </tr>
        
        <tr class="active-row">
            <td>Brute Force Attack</td>
            <td>An attacker gets unauthorized access to a system by trying various passwords until the correct one is found. It can be highly effective against weak passwords.
</td>
        </tr>
        
        <tr class="active-row">
            <td>Web Attacks</td>
            <td>Targets websites and can insert SQL injection, cross-site scripting (XSS) and file inclusion.
</td>
        </tr>
        
        <tr class="active-row">
            <td>Trojan Horses</td>
            <td>Malware that appears to be a legitimate program but which contains malicious code. Once installed, it can perform malicious actions like stealing data and controlling the system.</td>
        </tr>
        
        <tr class="active-row">
            <td>Drive-by Attacks</td>
            <td>The user's system is flooded with malware by visiting its compromised website to exploit vulnerabilities in other software to insert the malware without the user's knowledge</td>
        </tr>
        
        <tr class="active-row">
            <td>Advanced Persistent Threat (APT)</td>
            <td>Is a cyberattack characterized by long-term, persistent access to a victim's computer system. APT attacks are highly sophisticated and difficult to detect and remove</td>
        </tr>


        <tr class="active-row">
            <td>Angler Phishing Attacks</td>
            <td>Target individuals or organizations using highly targeted and personalized emails. Angler phishing attacks can be difficult to detect and are often successful in stealing sensitive information</td>
        </tr>
  

        <tr class="active-row">
            <td>Fileless Malware</td>
            <td>Doesn’t rely on files to infect a victim's computer system. Instead, fileless malware executes malicious code using existing system resources, such as memory or registry keys.

</td>
        </tr>
        

        <tr class="active-row">
            <td>Adware</td>
            <td>Is malware that displays unwanted advertisements on a victim's computer system. Adware can be annoying and disruptive, but it's generally less harmful than other types of malware</td>
        </tr>
        

        <tr class="active-row">
            <td>Emotet</td>
            <td>Is malware designed to steal sensitive information and spread it to other computers on a network. Emotet is often spread through phishing emails and can be very difficult to detect and remove</td>
        </tr>        

        <tr class="active-row">
            <td>Botnets</td>
            <td>Are networks of compromised computers controlled by a single attacker. Botnets can launch distributed denial of service (DDoS) attacks, steal sensitive information, or perform other malicious activities</td>
        </tr>
    </tbody>
</table>
        </center>

</asp:Content>
