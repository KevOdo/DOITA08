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
            <asp:Literal ID="Literal2" runat="server" Text="Scegli la marca:"></asp:Literal>
            <asp:DropDownList ID="ddlMarche" runat="server" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMARCHE"></asp:DropDownList>
            <br />
            <asp:Literal ID="Literal1" runat="server" Text="Inserisci il nuovo modello:"></asp:Literal>
            <asp:TextBox ID="txtNuovoModello" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnInserisci" runat="server" Text="Inserisci Modello" OnClick="btnInserisci_Click" />
            <asp:SqlDataSource runat="server" ID="sdsMARCHE" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="SELECT [chiave], [MARCA] FROM [MARCHE] ORDER BY [MARCA]"></asp:SqlDataSource>
        </div>

        <asp:GridView ID="griglia" runat="server" AutoGenerateColumns="False" DataKeyNames="chiave" DataSourceID="sdsMODELLI">
            <Columns>
                <asp:BoundField DataField="chiave" HeaderText="chiave" ReadOnly="True" InsertVisible="False" SortExpression="chiave"></asp:BoundField>
                <asp:BoundField DataField="MODELLO" HeaderText="MODELLO" SortExpression="MODELLO"></asp:BoundField>
                <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="sdsMODELLI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="select MODELLI.chiave,MODELLI.MODELLO,MARCHE.MARCA
from MODELLI
join MARCHE
on MODELLI.chiaveMARCA=MARCHE.chiave"></asp:SqlDataSource>

    </form>
</body>
</html>
