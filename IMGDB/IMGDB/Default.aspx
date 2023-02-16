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
            <asp:FileUpload ID="flup1" runat="server" accept=".png,.jpg,.jpeg,.gif"/>
            <br />
            <asp:Button ID="btnCarica" runat="server" Text="Carica il File"  OnClick="btnCarica_Click" />
            <br />
            <asp:Button ID="btnLeggi" runat="server" Text="Carica immagini dal DB" OnClick="btnLeggi_Click"/>
            <br />
            <asp:Literal ID="lit" runat="server"></asp:Literal>
            <img src="" />
        </div>
    </form>
</body>
</html>
