<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ActivationRequests.aspx.cs" Inherits="ActivationRequests" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdRequests" runat="server" AutoGenerateColumns="False" DataSourceID="sdsRequests" DataKeyNames="chiave">
                <Columns>
                    <asp:CommandField  ShowSelectButton="true"/>
                    <asp:BoundField DataField="USR" HeaderText="USR" SortExpression="USR"></asp:BoundField>
                    <asp:BoundField DataField="PWD" HeaderText="PWD" SortExpression="PWD"></asp:BoundField>
                    <asp:BoundField DataField="ATTIVO" HeaderText="ATTIVO" SortExpression="ATTIVO"></asp:BoundField>
                    <asp:BoundField DataField="PRIMAREG" HeaderText="PRIMAREG" SortExpression="PRIMAREG"></asp:BoundField>
                </Columns>
                <SelectedRowStyle BackColor="#ffffcc" />
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="sdsRequests" ConnectionString="<%$ ConnectionStrings:TESTConnectionString %>" SelectCommand="select chiave, USR, PWD, ATTIVO, PRIMAREG
from UTENTI
where ATTIVO='N'"></asp:SqlDataSource>

            <asp:Button ID="btnApprove" runat="server" Text="Approve Request" OnClick="btnApprove_Click" />

        </div>
    </form>
</body>
</html>
