<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtUSR" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtPWD" runat="server"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" Text="Button" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>
