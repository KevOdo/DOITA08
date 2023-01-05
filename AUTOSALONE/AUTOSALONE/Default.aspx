<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GOS Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
    <link rel="heritagepanda-desktop.png" type="image/x-icon" href="~/favicon.ico" />
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
                                <a class="nav-link" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="InsNuovoCliente.aspx">Aggiungi Cliente</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Modifica Dati</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Acquista</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Cronologia Vendite</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Inventario</a>
                            </li>
                        </ul>
                    </div>
                    <div class="d-flex align-items-center">
                        <a class="text-reset me-3" href="Login.aspx">LOG OUT</a>
                    </div>
                </div>
            </nav>
        </header>

        <div class="container">
            <div class="row p-2">
                <div class="col-md-4">
                    <div class="px-2 card">
                        <div class="card-header">
                            <h4>Annuncio agli utenti</h4>
                        </div>
                        <div class="card-body">
                            <p class="card-text">Il sito sta venendo sviluppato attivamente; per ora login e registrazione nuovo cliente funzionanti</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="px-2 card">
                        <div class="card-header">
                            <h4>Prossima implementazione</h4>
                        </div>
                        <div class="card-body">
                            <p class="card-text">Prossimamente aggiugeremo una pagina di cronologia Registrazioni clienti</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="px-2 card">
                        <div class="card-header">
                            <h4>Implementazioni programmate</h4>
                        </div>
                        <div class="card-body">
                            <p class="card-text">Pagine per: modificare i dati e Acquistare</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Button trigger modal -->
        <button runat="server" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
            Launch demo modal
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
