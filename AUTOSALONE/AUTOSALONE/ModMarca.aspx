<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModMarca.aspx.cs" Inherits="ModMarca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>GOS Modifica Marca</title>
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

        <section class="container py-5">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-8 col-xl-6">
                    <div class="card">
                        <div class="card-header">
                            <h5>Modifica Marca</h5>
                        </div>
                        <div class="card-body">
                            <div class="form-outline">
                                <asp:Literal ID="lit1" runat="server">Marca da Modificare:</asp:Literal>
                                <asp:DropDownList ID="ddlMarcaMod" runat="server" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMARCHE" AutoPostBack="True"></asp:DropDownList><asp:SqlDataSource runat="server" ID="sdsMARCHE" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="SELECT [chiave], [MARCA] FROM [MARCHE] ORDER BY [MARCA]"></asp:SqlDataSource>
                            </div>
                            <div class="form-outline">
                                <asp:Literal ID="lit2" runat="server">Nuovo nome:</asp:Literal>
                                <asp:TextBox ID="txtNomeNuovo" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnMarca" CssClass="my-1 btn btn-primary" runat="server" Text="Modifica Marca" OnClick="btnMarca_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-8 col-xl-6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sdsMARCHE" CssClass="table table-striped">
                        <Columns>
                            <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="SELECT [MARCA] FROM [MARCHE] ORDER BY [MARCA]"></asp:SqlDataSource>
                </div>
            </div>
        </section>

    </form>
</body>
</html>
