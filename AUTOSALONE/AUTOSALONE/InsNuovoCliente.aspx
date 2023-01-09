<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsNuovoCliente.aspx.cs" Inherits="InsNuovoCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GOS Aggiungi Cliente</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <header>
            <nav class="navbar navbar-expand-lg myBlue">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <a class="navbar-brand" href="#">
                            <img src="assets/immagini/ag2.png" height="30" />
                        </a>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="Default.aspx">Home</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="dropModello nav-link">Gestione Marche</a>
                                <ul class="dropdown-content">
                                    <li class="nav-item">
                                        <a class="dropdown-item nav-link" href="InsMarca.aspx">Inserisci Marca</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="dropdown-item nav-link" href="ModMarca.aspx">Modifica Marca</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="dropModello nav-link">Gestione Modelli</a>
                                <ul class="dropdown-content">
                                    <li class="nav-item">
                                        <a class="dropdown-item nav-link" href="InsModello.aspx">Inserisci Modello</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="dropdown-item nav-link" href="ModModello.aspx">Modifica Modello</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="dropModello nav-link">Gestione Auto</a>
                                <ul class="dropdown-content">
                                    <li class="nav-item">
                                        <a class="dropdown-item nav-link" href="InsAuto.aspx">Inserisci Auto</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="dropdown-item nav-link" href="ModAuto.aspx">Modifica Auto</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="dropModello nav-link">Gestione Clienti</a>
                                <ul class="dropdown-content">
                                    <li class="nav-item">
                                        <a class="dropdown-item nav-link" href="InsNuovoCliente.aspx">Inserisci Cliente</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="dropdown-item nav-link" href="ModCliente.aspx">Modifica Cliente</a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                    <div class="d-flex align-items-center">
                        <a class="text-reset me-3" href="Login.aspx">LOG OUT</a>
                    </div>
                </div>
            </nav>
        </header>

        <div class="container py-5">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-8 col-xl-6">
                    <div class="card">
                        <div class="card-header">
                            <h4>Dati Cliente</h4>
                        </div>
                        <div class="card-body">

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-outline">
                                        <label for="" class="form-label">Nome</label>
                                        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-outline">
                                        <label class="form-label" for="">Cognome</label>
                                        <asp:TextBox ID="txtCognome" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-outline">
                                <label class="form-label" for="">Ragione Sociale</label>
                                <asp:TextBox ID="txtRS" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <div class="form-outline">
                                <label for="" class="form-label">Indirizzo</label>
                                <asp:TextBox ID="txtIndirizzo" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <div class="row">
                                <div class="col-md-8 col-sm-8">
                                    <div class="form-outline">
                                        <label for="" class="form-label">Citta'</label>
                                        <asp:TextBox ID="txtCitta" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-2">
                                    <div class="form-outline">
                                        <label for="" class="form-label">Provincia</label>
                                        <asp:TextBox ID="txtProvincia" runat="server" CssClass="form-control" MaxLength="2"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-2">
                                    <div class="form-outline">
                                        <label for="" class="form-label">CAP</label>
                                        <asp:TextBox ID="txtCAP" runat="server" CssClass="form-control" TextMode="Number" max="99999"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-outline py-1">
                                <asp:Button ID="btnRegistra" runat="server" Text="Salva Dati" CssClass="btn btn-primary" OnClick="btnRegistra_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section>
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-8 col-xl-6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sdsCLIENTI" CssClass="table table-striped table-sm">
                        <Columns>
                            <asp:BoundField DataField="COGNOME" HeaderText="COGNOME" SortExpression="COGNOME"></asp:BoundField>
                            <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME"></asp:BoundField>
                            <asp:BoundField DataField="RAGIONE_SOCIALE" HeaderText="RAGIONE_SOCIALE" SortExpression="RAGIONE_SOCIALE"></asp:BoundField>
                            <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" SortExpression="INDIRIZZO"></asp:BoundField>
                            <asp:BoundField DataField="CITTA" HeaderText="CITTA" SortExpression="CITTA"></asp:BoundField>
                            <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA"></asp:BoundField>
                            <asp:BoundField DataField="CAP" HeaderText="CAP" SortExpression="CAP"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="sdsCLIENTI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="SELECT [COGNOME], [NOME], [RAGIONE_SOCIALE], [INDIRIZZO], [CITTA], [PROVINCIA], [CAP] FROM [CLIENTI] ORDER BY [COGNOME]"></asp:SqlDataSource>
                </div>
            </div>
        </section>

    </form>
</body>
</html>
