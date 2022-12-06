<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GIGGI</title>
</head>
<body>
    <form id="form1" runat="server">

        <!-- Campo Utente -->
        <div>
            <asp:Label ID="lblUtente" runat="server" Text="Utente:"></asp:Label>
            <asp:TextBox ID="txtUtente" runat="server"></asp:TextBox>
        </div>

        <!-- Campo Password -->
        <div>
            <asp:Label ID="lblPassowrd" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </div>

        <asp:Button ID="btnAccedi" runat="server" Text="Accedi" OnClick="btnAccedi_Click" />

        <div>
            <a href="RecuperaPassword.aspx">Hai perso la password?</a>
        </div>

        <div>
            <a href="Registrazione.aspx">Registrati</a>
        </div>

        <asp:Label ID="lblMessaggio" runat="server" Text=""></asp:Label>

    </form>
</body>
</html>
