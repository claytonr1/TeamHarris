<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeamCredits.aspx.cs" Inherits="The_Ruff_Inn.Credits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Team Members</title>
    <style>
        .body {
            background-color: black;
        }
        .filler {            
            height: 100px;
            color: white;
            text-align: center;
        }
        .table
        {
            width: 600px;
            margin: auto;
            border-collapse: collapse;
        }
        .cellSize {
            text-align: center;
            vertical-align: middle;
            height: 300px;
            width: 300px;
        }
        .topLeft {
            background-color: red;           
        }
        .topRight {
            background-color: green;
        }
        .bottomLeft {
            background-color: blue;
        }
        .bottomRight {
            background-color: yellow;
        }
        .names {
            font-size: xx-large;
        }
        .bottom {
            width: 100%;
        }
        .continue {
            text-align: center;
        }
    </style>
</head>
<body class="body">
    <div class="filler">
        <h1>&nbsp;The following people contributed to this website.</h1>
    </div>
    <form id="form1" runat="server">
            <table class="table">
                <tr>
                    <td class="topLeft cellSize">
                        <span class="names">Terry Borders</span>
                    </td>
                    <td class="topRight cellSize">
                        <span class="names">Jason Harris</span>
                    </td>
                </tr>
                <tr>
                    <td class="bottomLeft cellSize">
                        <span class="names">Justin House</span>
                    </td>
                    <td class="bottomRight cellSize">
                        <span class="names">Lance Ivy</span>
                    </td>
                </tr>
            </table>
            <table class="bottom">
                <tr>
                    <td class="continue">

                        <br />

                        <asp:Button ID="btnContinue" runat="server" Text="Continue" BackColor="Black" BorderColor="Black" BorderStyle="None" Font-Size="Large" ForeColor="White" OnClick="btnContinue_Click" />

                    </td>
                </tr>
            </table>
    </form>
    </body>
</html>
