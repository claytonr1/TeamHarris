﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="itsawebform.aspx.cs" Inherits="itsawebform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        I tawt I taw a putty tat<br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Push Me" />
    
    </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>