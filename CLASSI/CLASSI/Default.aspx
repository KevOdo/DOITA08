<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
            <br />
            <asp:TextBox ID="txtDue" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnCalcola" runat="server" Text="Invia Mail" OnClick="btnCalcola_Click" />
            <br />
            <asp:Label ID="lblRisultato" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
