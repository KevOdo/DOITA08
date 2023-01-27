<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtUno" runat="server"></asp:TextBox>
            <asp:Button ID="btnCrypt" runat="server" Text="Button" OnClick="btnCrypt_Click" />
            <asp:Label ID="lblRisultato" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:TextBox ID="txtDue" runat="server"></asp:TextBox>
            <asp:Button ID="btnDecrypt" runat="server" Text="Button" OnClick="btnDecrypt_Click" />
            <asp:Label ID="lblRisultato2" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
