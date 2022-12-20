<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Primi Esercizi</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="assets/css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div class="mainCon text-center">

            <div class="card padded">
                <asp:Label ID="lbl1" runat="server" Text="Primo Esercizio"></asp:Label>
                <div>
                    <asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
                    <asp:Label ID="lblOut" runat="server" Text=""></asp:Label>
                </div>
                <asp:Button ID="btnCalcola" CssClass="btn btn-primary" runat="server" Text="Calcola" OnClick="btnCalcola_Click" />
            </div>

            <div class="card padded">
                <asp:Label ID="lbl2" runat="server" Text="Secondo Esercizio"></asp:Label>
                <div>
                    <asp:Label ID="lblMedia" runat="server" Text=""></asp:Label>
                </div>
                <asp:Button ID="btnCalcola2" CssClass="btn btn-primary" runat="server" Text="Calcola Media" OnClick="btnCalcola2_Click" />
            </div>

            <div class="card padded">
                <asp:Label ID="lbl3" runat="server" Text="Terzo Esercizio"></asp:Label>
                <div>
                    <input id="numA" type="number" runat="server" />
                    <input id="numB" type="number" runat="server" />
                </div>
                <asp:Label ID="lblMedia2" runat="server" Text=""></asp:Label>
                <asp:Button ID="btnCalcola3" CssClass="btn btn-primary" runat="server" Text="Calcola Media" OnClick="btnCalcola3_Click" />
            </div>

            <asp:Button ID="btnClear" CssClass="btn btn-primary padded" runat="server" Text="Clear" OnClick="btnClear_Click" />

        </div>
    </form>
</body>
</html>
