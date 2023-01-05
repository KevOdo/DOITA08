<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ACCESSO AL PORTALE AUTOSALONI</title>
    <link href="css/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="tabella">
                <tr>
                    <td>Utente:</td>
                    <td>
                        <asp:TextBox ID="txtUSR" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtPWD" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnAccedi" runat="server" Text="Accedi" OnClick="btnAccedi_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
