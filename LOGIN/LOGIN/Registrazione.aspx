<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrazione.aspx.cs" Inherits="Registrazione" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GIGGI</title>
    <link href="css/stile.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <table id="tabella">

            <tr>
                <td colspan="4" class="centra">
                    <h2>Registrati</h2>
                </td>
            </tr>

            <!-- Campo Utente e campo Password -->
            <tr>
                <td>
                    <asp:Label ID="lblUtente" runat="server" Text="Utente:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUtente" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>

            <!-- Campo Nome e campo Cognome -->
            <tr>
                <td>
                    <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblCognome" runat="server" Text="Cognome:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCognome" runat="server"></asp:TextBox>
                </td>
            </tr>

            <!-- Campo Indirizzo e campo CAP -->
            <tr>
                <td>
                    <asp:Label ID="lblIndirizzo" runat="server" Text="Indirizzo:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtIndirizzo" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblCap" runat="server" Text="CAP:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCap" runat="server"></asp:TextBox>
                </td>
            </tr>


            <!-- Campo Citta' e campo Provincia -->
            <tr>
                <td>
                    <asp:Label ID="lblCitta" runat="server" Text="Citta':"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCitta" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblProvincia" runat="server" Text="Provincia:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProvincia" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="4" class="centra">
                    <asp:Button ID="btnRegistrati" runat="server" Text="Registrati" OnClick="btnRegistrati_Click" />
                </td>
            </tr>

            <tr>
                <td colspan="4" class="centra">
                    <asp:Label ID="lblError" CssClass="messaggio" runat="server" Text=""></asp:Label>
                </td>
            </tr>

        </table>

    </form>
</body>
</html>
ch