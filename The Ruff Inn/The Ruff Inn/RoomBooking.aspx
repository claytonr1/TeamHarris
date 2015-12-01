<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomBooking.aspx.cs" Inherits="The_Ruff_Inn.RoomBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong>Booking Information:</strong></span><br />
        <br />
        <br />
        <strong>Rooms:
        </strong>
        <br />
        <asp:DropDownList ID="ddlRoomType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRoomType_SelectedIndexChanged">
            <asp:ListItem>Choose Room</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <strong>Check In:&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Calendar ID="calCheckIn" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" OnSelectionChanged="calCheckIn_SelectionChanged"></asp:Calendar>
                </td>
                <td>

                    <asp:Label ID="lblCheckInValidator" runat="server"></asp:Label>

                </td>
            </tr>
        </table>
        <br />
        <table>
            <tr>
                <td>
                    <strong>Check Out:</strong><asp:Calendar ID="calCheckOut" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" OnSelectionChanged="calCheckOut_SelectionChanged"></asp:Calendar>
                </td>
                <td>

                    <asp:Label ID="lblCheckOutValidator" runat="server"></asp:Label>

                </td>
            </tr>
        </table>
        <br />
        <span class="auto-style2">(</span>
        <asp:CheckBox ID="cbxWeekendNights" runat="server" Text="Weekend Nights?" />
        &nbsp;<span class="auto-style2">)</span>
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
        Discounts:<asp:RadioButtonList ID="rdoDiscounts" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rdoDiscounts_SelectedIndexChanged">
            <asp:ListItem>None</asp:ListItem>
            <asp:ListItem>AAA</asp:ListItem>
            <asp:ListItem>AARP</asp:ListItem>
            <asp:ListItem>Ruff Rewards</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <strong>Ammenities:</strong><br />
        <asp:ListBox ID="lbxAmmenities" runat="server"></asp:ListBox>
        <br />
        <br />
        <strong>Charges:</strong><br />
        <asp:ListBox ID="lbxCharges" runat="server"></asp:ListBox>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit &amp; Proceed to Checkout" OnClick="btnSubmit_Click" />
    </form>
    </div>
</body>
</html>
