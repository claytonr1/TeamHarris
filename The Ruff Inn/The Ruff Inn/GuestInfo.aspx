<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuestInfo.aspx.cs" Inherits="The_Ruff_Inn.GuestInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        First Name:
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <br />
        Last Name:&nbsp;
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <br />
        Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        Street:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
        <br />
        Apartment:&nbsp;
        <asp:TextBox ID="txtApartmentNumber" runat="server" Width="42px"></asp:TextBox>
        <br />
        City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <br />
        State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlState" runat="server">
            <asp:ListItem>Choose State</asp:ListItem>
            <asp:ListItem>Alabama</asp:ListItem>
            <asp:ListItem>Alaska</asp:ListItem>
            <asp:ListItem>Arizona</asp:ListItem>
            <asp:ListItem>Arkansas</asp:ListItem>
        </asp:DropDownList>
    
        <br />
        Zip:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtZip" runat="server" Width="78px"></asp:TextBox>
        <br />
        Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPhone" runat="server" Width="171px"></asp:TextBox>
        <br />
        <br />
        Last Stay:<br />
        <asp:Calendar ID="calLastVisited" runat="server"></asp:Calendar>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit &amp; Proceed to Guest Information" />
    
    </div>
    </form>
</body>
</html>
