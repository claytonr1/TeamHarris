<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomBooking.aspx.cs" Inherits="The_Ruff_Inn.RoomBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
        .parenthesis {
            font-size: large;
        }
        .radioBorder {
            border-style: solid;
            border-width: 3px;
            border-color: black;
        }
        .chargesTable {
            width: 350px;
            border-style: solid;
            border-width: 3px;
            border-color: black;
            border-collapse: collapse;
        }
        .tablecolumn1style {
            width: 261px;
        }
        .tablecolumn2style {
            width: 539px;
        }
        .tableRowBottom {
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-bottom-color: gray;
        }
        .chargescolumn1 {
            width: 150px;
        }
        .ammenities {
            width: 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager EnablePartialRendering="true" runat="server" />
        <asp:UpdatePanel runat="server">
            <ContentTemplate>    
        <span class="auto-style1"><strong>Booking Information:</strong></span><br />
        <br />
        <br />
        <strong>Rooms:
        </strong>
        <br />
        <asp:DropDownList ID="ddlRoomType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRoomType_SelectedIndexChanged">
            <asp:ListItem>Choose Room</asp:ListItem>
        </asp:DropDownList>
        <strong>
                <br />
                <br />
                Ammenities:</strong><br />
        <asp:ListBox ID="lbxAmmenities" runat="server" class="ammenities"></asp:ListBox>
        <br />
        <br />
        <table>
            <tr>
                <td class="tablecolumn1style">
                    <strong>Check In:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Calendar ID="calCheckIn" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" OnSelectionChanged="calCheckIn_SelectionChanged">
                        <SelectedDayStyle BackColor="#000099" />
                        <TodayDayStyle BorderStyle="Inset" BorderWidth="3px" />
                    </asp:Calendar>
                </td>
                <td class="tablecolumn2style">

                    <asp:Label ID="lblCheckInValidator" runat="server"></asp:Label>

                </td>
            </tr>
        </table>
        <br />
        <table>
            <tr>
                <td class="tablecolumn1style">
                    <strong>Check Out:</strong><asp:Calendar ID="calCheckOut" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" OnSelectionChanged="calCheckOut_SelectionChanged">
                        <SelectedDayStyle BackColor="#000099" />
                        <TodayDayStyle BorderStyle="Inset" BorderWidth="3px" />
                    </asp:Calendar>
                </td>
                <td class="tablecolumn2style">

                    <asp:Label ID="lblCheckOutValidator" runat="server"></asp:Label>

                </td>
            </tr>
        </table>
        <br />
        <span class="parenthesis">(</span>
        <asp:CheckBox ID="cbxWeekendNights" runat="server" Text="Weekend Nights?" />
        &nbsp;<span class="parenthesis">)</span>
        <br />
        <br />
        <strong>Number of Guests: </strong> 
        &nbsp;<asp:DropDownList ID="ddlNumberGuests" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <strong>Discounts:</strong><asp:RadioButtonList ID="rdoDiscounts" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rdoDiscounts_SelectedIndexChanged" class="radioBorder">
            <asp:ListItem>None</asp:ListItem>
            <asp:ListItem>AAA</asp:ListItem>
            <asp:ListItem>AARP</asp:ListItem>
            <asp:ListItem>Ruff Rewards</asp:ListItem>
        </asp:RadioButtonList>
                <br />
                <strong>Charges:</strong>
                <table class="chargesTable">
                    <tr>
                        <td class="chargescolumn1">Room</td>
                        <td>
                            <asp:Label ID="lblRoomName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="chargescolumn1">
                            <asp:Label ID="lblNumberNights" runat="server" Text="0"></asp:Label>
                            &nbsp;night(s)</td>
                        <td>
                            <asp:Label ID="lblRoomAmount" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="chargescolumn1 tableRowBottom">
                            <asp:Label ID="lblNumberWeekendNights" runat="server" Text="0"></asp:Label>
                            &nbsp;weekend night(s)</td>
                        <td class="tableRowBottom">
                            <asp:Label ID="lblWeekendNightAmount" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="chargescolumn1">Subtotal</td>
                        <td>
                            <asp:Label ID="lblSubtotal" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="chargescolumn1">Discount</td>
                        <td>
                            <asp:Label ID="lblDiscountNameAndAmount" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr class="tableRowBottom">
                        <td class="chargescolumn1 tableRowBottom">Tax (7%)</td>
                        <td class="tableRowBottom">
                            <asp:Label ID="lblTax" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="chargescolumn1">Total</td>
                        <td>
                            <asp:Label ID="lblTotal" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
        <br />
        </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="calCheckIn" EventName="SelectionChanged" />
                <asp:AsyncPostBackTrigger ControlID="calCheckOut" EventName="SelectionChanged" />
                <asp:AsyncPostBackTrigger ControlID="rdoDiscounts" EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit &amp; Proceed to Checkout" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>
