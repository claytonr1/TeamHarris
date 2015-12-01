<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="The_Ruff_Inn.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong>Checkout:</strong></span><br />
        <br />
        <strong>Card Type:</strong>
        <br />
        <asp:DropDownList ID="ddlCardType" runat="server" BackColor="White">
            <asp:ListItem>Choose Type</asp:ListItem>
            <asp:ListItem>American Express</asp:ListItem>
            <asp:ListItem>Discover</asp:ListItem>
            <asp:ListItem>MasterCard</asp:ListItem>
            <asp:ListItem>Visa</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <strong>Card Number:
        </strong>
        <br />
        <asp:TextBox ID="txtCardNumber" runat="server" BorderStyle="Solid"></asp:TextBox>
        <br />
        <strong>
        <br />
        Expiration:</strong><br />
&nbsp;Month:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year:<br />
&nbsp;<asp:DropDownList ID="ddlExpirationMonth" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem Value="7"></asp:ListItem>
            <asp:ListItem Value="8"></asp:ListItem>
            <asp:ListItem Value="9"></asp:ListItem>
            <asp:ListItem Value="10"></asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlExpirationYear" runat="server">
            <asp:ListItem Value="2015"></asp:ListItem>
            <asp:ListItem Value="2016"></asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem Value="2018"></asp:ListItem>
            <asp:ListItem>2019</asp:ListItem>
            <asp:ListItem>2020</asp:ListItem>
            <asp:ListItem>2021</asp:ListItem>
            <asp:ListItem Value="2022"></asp:ListItem>
            <asp:ListItem Value="2023"></asp:ListItem>
            <asp:ListItem Value="2024"></asp:ListItem>
            <asp:ListItem>2025</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <strong>List of Charges:</strong><br />
        <br />
        <asp:ListBox ID="lbxCharges" runat="server"></asp:ListBox>
        <br />
        <br />
        <asp:CheckBox ID="cbxReceipt" runat="server" Text="Receipt?" />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" BorderStyle="Solid" />
    
    </div>
    </form>
</body>
</html>
