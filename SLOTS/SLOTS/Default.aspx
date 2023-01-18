<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>SLOT MACHINE</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="container py-5">
            <div class="row d-flex justify-content-center">
                <div class="col-xl-8">
                    <div class="card">
                        <div class="card-header d-flex justify-content-center">
                            <h3>BROVIA SLOTS</h3>
                        </div>
                        <div class="card-body">
                            <div id="divDisplay" class="display-5 d-flex justify-content-center" runat="server">
                                <asp:Literal ID="ltlDisplay" runat="server">Spin to Win!</asp:Literal>
                            </div>
                            <div class="row">
                                <table>
                                    <tr>
                                        <td>
                                            <div id="card1" runat="server" class="card border-dark">
                                                <div class="card-body">
                                                    <img id="img1" runat="server" src="assets/images/ciliege.jpg" />
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div id="card2" runat="server" class="card border-dark">
                                                <div class="card-body">
                                                    <img id="img2" runat="server" src="assets/images/ciliege.jpg" />
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div id="card3" runat="server" class="card border-dark">
                                                <div class="card-body">
                                                    <img id="img3" runat="server" src="assets/images/ciliege.jpg" />
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>

                                <div class="row">
                                    <div class="col-xl-4">
                                        <table class="table prezzi">
                                            <tr>
                                                <th>Prices</th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Literal ID="Literal1" runat="server">Win: +€100</asp:Literal>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Literal ID="Literal2" runat="server">Bet: -€1</asp:Literal>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-xl-4">
                                        <div class="bottone d-flex justify-content-center py-5">
                                            <asp:Button ID="btnCarica" runat="server" Text="SPIN" OnClick="btnCarica_Click" />
                                        </div>
                                    </div>
                                    <div class="col-xl-4">
                                        <div class="display-6 py-5">
                                            <asp:Literal ID="ltlBilancio" runat="server"></asp:Literal>
                                        </div>
                                    </div>
                                </div>



                            </div>

                            <asp:Literal ID="ltlSoldi" runat="server"></asp:Literal>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
