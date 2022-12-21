<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <table>

            <!-- Display per la calcolatrice -->
            <tr>
                <td colspan="4">
                    <asp:TextBox ID="txtDisplay" runat="server"></asp:TextBox>
                </td>
            </tr>

            <!-- Prima riga di bottoni (1,2,3,+) -->
            <tr>
                <td>
                    <asp:Button ID="btn1" runat="server" Text="1" OnClick="btn_Click" />
                </td>

                <td>
                    <asp:Button ID="btn2" runat="server" Text="2" OnClick="btn_Click" />
                </td>

                <td>
                    <asp:Button ID="btn3" runat="server" Text="3" OnClick="btn_Click" />
                </td>

                <td>
                    <asp:Button ID="btnPiu" runat="server" Text="+" OnClick="btnOp_Click" />
                </td>
            </tr>

            <!-- Seconda riga di bottoni (4,5,6,-) -->
            <tr>
                <td>
                    <asp:Button ID="btn4" runat="server" Text="4" OnClick="btn_Click" />
                </td>

                <td>
                    <asp:Button ID="btn5" runat="server" Text="5" OnClick="btn_Click" />
                </td>

                <td>
                    <asp:Button ID="btn6" runat="server" Text="6" OnClick="btn_Click" />
                </td>

                <td>
                    <asp:Button ID="btnMeno" runat="server" Text="-" OnClick="btnOp_Click" />
                </td>
            </tr>

            <!-- Terza riga di bottoni (7,8,9,/) -->
            <tr>
                <td>
                    <asp:Button ID="btn7" runat="server" Text="7" OnClick="btn_Click" />
                </td>

                <td>
                    <asp:Button ID="btn8" runat="server" Text="8" OnClick="btn_Click" />
                </td>

                <td>
                    <asp:Button ID="btn9" runat="server" Text="9" OnClick="btn_Click" />
                </td>

                <td>
                    <asp:Button ID="btnDiviso" runat="server" Text="/" OnClick="btnOp_Click" />
                </td>
            </tr>

            <!-- Prima riga di bottoni (C,0,=,*) -->
            <tr>
                <td>
                    <asp:Button ID="btnC" runat="server" Text="C" OnClick="btnC_Click" />
                </td>

                <td>
                    <asp:Button ID="btn0" runat="server" Text="0" OnClick="btn_Click" />
                </td>

                <td>
                    <asp:Button ID="btnUguale" runat="server" Text="=" OnClick="btnUguale_Click" />
                </td>

                <td>
                    <asp:Button ID="btnPer" runat="server" Text="*" OnClick="btnOp_Click" />
                </td>
            </tr>

        </table>

    </form>
</body>
</html>
