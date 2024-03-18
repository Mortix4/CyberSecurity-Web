<%@ Page Title="" Language="C#" MasterPageFile="~/pages/master.Master" AutoEventWireup="true" CodeBehind="first.aspx.cs" Inherits="myWeb.pages.first" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../images/firstStyle.css" rel="stylesheet">
    <style>
        body {
            color: #CCCCCC;
        }
        .img {
            border: dotted;
        }
    </style>
    </br>
    <center><h1>Cyber Introduction</h1>
    <img src="../images/cyber.jpg" width="500" height: "500" style="border: 2px solid orange;"/>

    <div class="container">        
        <div class="content-section">
            </br>
            <h2>What is Cyber Security?</h2>
            <p>Cybersecurity refers to the practice of protecting computer systems, networks, and data from unauthorized access, exploitation, and damage.</p>
        </div>
        </br></br>
        <div class="content-section">
            </br>
            <h2>What does the term cyber mean in cybersecurity?</h2>
            <p>In the context of cybersecurity, "cyber" refers to the digital domain encompassing computers, networks, and the internet.</p>
        </div>
        </br></br>
        <div class="content-section">
            </br>
            <h2>Why is cybersecurity important?</h2>
            <P>Cybersecurity is important because it helps safeguard sensitive information, prevent unauthorized access, protect against financial losses, ensure the integrity of data, and maintain the overall security of computer systems and networks</P>
        </div>
        </br></br>
        <div class="content-section">
            </br>
            <h2>What technologies are used in cybersecurity?</h2>
            <p>Various technologies are employed in cybersecurity, such as encryption, firewalls, intrusion detection systems (IDS), antivirus software, secure coding practices, and network segmentation</p>
        </div>
        </br></br>
        <div class="content-section">
            </br>
            <div class="image-gallery">
                <img src="../images/cyber1.jpg" width="400" height="300" style="border: 2px solid orange;">
                <img src="../images/cyber2.jpg" width="400" height="300" style="border: 2px solid orange;">
                <img src="../images/cyber3.jpg" width="400" height="300" style="border: 2px solid orange;">
            </div>
        </div>    
        
        <div class="content-section">
            </br></br>
            <h2>Why is ongoing research and education important in cybersecurity?</h2>
        <p>Ongoing research and education are essential in cybersecurity to keep up with evolving threats, develop new security measures, and enhance the skills and knowledge of cybersecurity professionals to effectively combat cyber attacks.</p>
        </div>

        <div class="content-section">
            </br></br>
            <h2>How does cybersecurity impact individuals and organizations?</h2>
        <p>Cybersecurity impacts individuals and organizations by helping to safeguard personal information, financial data, and intellectual property, as well as ensuring the continuity of operations, protecting reputations, and maintaining trust in digital systems.</p>
        </div>


    </div>


    </center>

    <script>
        document.getElementById("learnMoreBtn").addEventListener("click", function () {
            alert("You clicked the Learn More button!");
        });

    </script>
    </br></br></br>
</asp:Content>
