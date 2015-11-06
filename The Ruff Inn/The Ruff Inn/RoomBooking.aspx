<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomBooking.aspx.cs" Inherits="The_Ruff_Inn.RoomBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Rooms:
        <br />
        <asp:DropDownList ID="ddlRoomType" runat="server" AutoPostBack="True">
            <asp:ListItem>Choose Room</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Check In:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Calendar ID="calCheckIn" runat="server"></asp:Calendar>
        <br />
        Check Out:<asp:Calendar ID="calCheckOut" runat="server"></asp:Calendar>
        <br />
        <br />
        Number of Guests:
        <asp:DropDownList ID="ddlNumberGuests" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Discounts:<asp:CheckBoxList ID="cbxDiscounts" runat="server" AutoPostBack="True">
            <asp:ListItem>AAA</asp:ListItem>
            <asp:ListItem>AARP</asp:ListItem>
            <asp:ListItem>Ruff Rewards</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        Ammenities:<br />
        <asp:ListBox ID="lbxAmmenities" runat="server"></asp:ListBox>
        <br />
        <br />
        Charges:<br />
        <asp:ListBox ID="lbxCharges" runat="server"></asp:ListBox>
        <br />
&nbsp;<asp:CheckBox ID="cbxWeekend" runat="server" Enabled="False" Text="Weekend Nights?" />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit &amp; Proceed to Checkout" OnClick="btnSubmit_Click" />
    </form>
    </div>
</body>
</html>
