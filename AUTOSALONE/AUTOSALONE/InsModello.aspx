<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsModello.aspx.cs" Inherits="InsModello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GOS Inserisci Modello</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        
        <header>
            <nav class="navbar navbar-expand-lg myBlue">
                <div class="container-fluid">
                    <button
                        class="navbar-toggler"
                        type="button"
                        data-mdb-toggle="collapse"
                        data-mdb-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation">
                        <i class="fas fa-bars"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <a class="navbar-brand" href="#">
                            <img src="assets/immagini/ag2.png" height="30" />
                        </a>
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="Default.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="InsNuovoCliente.aspx">Aggiungi Cliente</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="InsMarca.aspx">Inserisci Marca</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Inserisci Modello</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="InsAuto.aspx">Inserisci Auto</a>
                            </li>
                        </ul>
                    </div>
                    <div class="d-flex align-items-center">
                        <a class="text-reset me-3" href="Login.aspx">LOG OUT</a>
                    </div>
                </div>
            </nav>
        </header>

        <section class="container py-5">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-8 col-xl-6">
                    <div class="card">
                        <div class="card-header">
                            <h5>Modello Nuovo</h5>
                        </div>
                        <div class="card-body">
                            <div class="form-outline">
                                <asp:Literal ID="lit11" runat="server">Seleziona marca auto:</asp:Literal>
                                <asp:DropDownList ID="ddlMarca" runat="server" CssClass="select" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMARCHE"></asp:DropDownList><asp:SqlDataSource runat="server" ID="sdsMARCHE" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="SELECT [chiave], [MARCA] FROM [MARCHE] ORDER BY [MARCA]"></asp:SqlDataSource>
                            </div>

                            <div class="form-outline">
                                <asp:Literal ID="lit22" runat="server">Nome modello:</asp:Literal>
                                <asp:TextBox ID="txtModello" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>                            

                            <div class="row py-1">
                                <div class="col-lg-6">
                                    <asp:Literal ID="lit33" runat="server">Alimentazione:</asp:Literal>
                                    <asp:DropDownList ID="ddlAlimentazione" runat="server">
                                        <asp:ListItem>Benzina</asp:ListItem>
                                        <asp:ListItem>Diesel</asp:ListItem>
                                        <asp:ListItem>Elettrico</asp:ListItem>
                                        <asp:ListItem>Ibrido</asp:ListItem>
                                        <asp:ListItem>Metano</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-6">
                                    <asp:Literal ID="lit44" runat="server">Cambio:</asp:Literal>
                                    <asp:DropDownList ID="ddlCambio" runat="server">
                                        <asp:ListItem>Manuale</asp:ListItem>
                                        <asp:ListItem>Automatico</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-outline">
                                <asp:Literal ID="lit55" runat="server">Inserisci motorizzazione:</asp:Literal>
                                <asp:TextBox ID="txtMotor" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <asp:Button ID="btnModello" CssClass="my-1 btn btn-primary" runat="server" Text="Inserisci Modello" OnClick="btnModello_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </form>
</body>
</html>
