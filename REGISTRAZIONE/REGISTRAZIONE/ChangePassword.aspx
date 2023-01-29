<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Change Password</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="ltlOldPWD" runat="server"></asp:Literal>
            <asp:TextBox ID="txtNewPWD" runat="server"></asp:TextBox>
            <asp:Button ID="btnChangePWD" runat="server" Text="Change Password" OnClick="btnChangePWD_Click" />
        </div>
    </form>
</body>
</html>
