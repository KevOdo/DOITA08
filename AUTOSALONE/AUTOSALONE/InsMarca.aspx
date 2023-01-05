<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsMarca.aspx.cs" Inherits="Autoveicoli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GOS Inserisci Marca</title>
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
                                <a class="nav-link" href="#">Inserisci Marca</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="InsModello.aspx">Inserisci Modello</a>
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
                            <h5>Marca Nuova</h5>
                        </div>
                        <div class="card-body">
                            <div class="form-outline">
                                <asp:Literal ID="lit1" runat="server">Inserisci marca nuova:</asp:Literal>
                                <asp:TextBox ID="txtMarca" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnMarca" CssClass="my-1 btn btn-primary" runat="server" Text="Inserisci Marca" OnClick="btnMarca_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </form>
</body>
</html>
