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
            <asp:Button ID="btnCaricaDati" runat="server" Text="Carica Dati" OnClick="btnCaricaDati_Click" />
            <asp:Literal ID="litDati" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
