<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="3">
                        <asp:Literal ID="ltlTurno" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn1" runat="server" Text="" OnClick="btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn2" runat="server" Text="" OnClick="btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn3" runat="server" Text="" OnClick="btn_Click" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btn4" runat="server" Text="" OnClick="btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn5" runat="server" Text="" OnClick="btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn6" runat="server" Text="" OnClick="btn_Click" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btn7" runat="server" Text="" OnClick="btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn8" runat="server" Text="" OnClick="btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn9" runat="server" Text="" OnClick="btn_Click" />
                    </td>
                </tr>
            </table>
            <div>
                <asp:Literal ID="lit1" runat="server"></asp:Literal>
                <asp:Literal ID="lit2" runat="server"></asp:Literal>
            </div>
            <div>
                <asp:Button ID="btnNuovaPartita" runat="server" Text="Nuova Partita" OnClick="btnNuovaPartita_Click" />
                <asp:Button ID="btnNuovaSfida" runat="server" Text="Nuova Sfida" OnClick="btnNuovaSfida_Click" />
            </div>
        </div>
    </form>
</body>
</html>
