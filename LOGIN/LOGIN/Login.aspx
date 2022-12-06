<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GIGGI</title>
</head>
<body>
    <form id="form1" runat="server">

        <table>

            <!-- Campo Utente -->
            <tr>
                <td>
                    <asp:Label ID="lblUtente" runat="server" Text="Utente:"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="txtUtente" runat="server"></asp:TextBox>

                </td>
            </tr>

            <!-- Campo Password -->
            <tr>
                <td>
                    <asp:Label ID="lblPassowrd" runat="server" Text="Password"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td></td>
                <!-- Cella Vuota -->
                <td>
                    <asp:Button ID="btnAccedi" runat="server" Text="Accedi" OnClick="btnAccedi_Click" />

                </td>
            </tr>

            <tr>
                <td>
                    <a href="RecuperaPassword.aspx">Hai perso la password?</a>
                </td>
                <td></td>
            </tr>

            <tr>
                <td>
                    <a href="Registrazione.aspx">Registrati</a>
                </td>
                <td></td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="lblMessaggio" runat="server" Text=""></asp:Label>
                </td>
                <td></td>
                <!-- Cella Vuota -->
            </tr>

        </table>

    </form>
</body>
</html>
