<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuestInfo.aspx.cs" Inherits="The_Ruff_Inn.GuestInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        Textbox.newStyle1 {
            position: fixed;
            left: 5in;
        }
        Textbox.newStyle1 {
            position: absolute;
            z-index: auto;
            left: 15px;
        }
        .newStyle1 {
            margin-left: 0px;
        }
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position: relative">
    
        <span class="auto-style1"><strong>Guest Information:</strong></span><br style="font-weight: 700; text-decoration: underline" />
        <br />
&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;
    
        First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:</strong>&nbsp;&nbsp;
        <br />
        &nbsp;
        <asp:TextBox ID="txtFirstName" runat="server" BorderStyle="Solid" Columns="20" CssClass="newStyle1" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLastName" runat="server" BorderStyle="Solid" Columns="20" CssClass="newStyle1"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Apt:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Zip:&nbsp;</strong>&nbsp;&nbsp;&nbsp;<br />
        &nbsp;<asp:TextBox ID="txtStreet" runat="server" BorderStyle="Solid" style="margin-left: 3px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtApartmentNumber" runat="server" Width="42px" BorderStyle="Solid" style="margin-left: 2px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtCity" runat="server" BorderStyle="Solid" style="margin-left: 1px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlState" runat="server">
            <asp:ListItem>Choose State</asp:ListItem>
            <asp:ListItem>Alabama</asp:ListItem>
            <asp:ListItem>Alaska</asp:ListItem>
            <asp:ListItem>Arizona</asp:ListItem>
            <asp:ListItem>Arkansas</asp:ListItem>
        </asp:DropDownList>
    
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtZip" runat="server" Width="78px" BorderStyle="Solid" OnTextChanged="txtZip_TextChanged" style="margin-left: 1px"></asp:TextBox>
        <br />
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Email:</strong><br />
        &nbsp;<asp:TextBox ID="txtPhone" runat="server" Width="171px" BorderStyle="Solid" OnTextChanged="txtPhone_TextChanged" style="margin-left: 0px">Ex. (000)-000-0000</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server" BorderStyle="Solid" style="margin-left: 2px" Width="209px">Ex. Customer@RuffInn.com</asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
        <strong>Last Stay (Optional):</strong><br />
        <asp:Calendar ID="calLastVisited" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px"></asp:Calendar>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit &amp; Proceed to Guest Information" BorderStyle="Solid" />
    
    </div>
    </form>
</body>
</html>
