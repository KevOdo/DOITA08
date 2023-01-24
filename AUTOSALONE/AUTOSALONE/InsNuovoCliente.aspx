<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsNuovoCliente.aspx.cs" Inherits="_InsNuovoCliente" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
    <link rel="heritagepanda-desktop.png" type="image/x-icon" href="~/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="container py-1">
            <h5>Inserisci dati:</h5>
            <!-- Nome e Cognome -->
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="form-outline">
                        <label for="" class="form-label">Nome</label>
                        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-6 col-sm-6">
                    <div class="form-outline">
                        <label class="form-label" for="">Cognome</label>
                        <asp:TextBox ID="txtCognome" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>

            <!-- Ragione Sociale -->
            <div class="form-outline">
                <label class="form-label" for="">Ragione Sociale</label>
                <asp:TextBox ID="txtRS" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- Indirizzo -->
            <div class="form-outline">
                <label for="" class="form-label">Indirizzo</label>
                <asp:TextBox ID="txtIndirizzo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- Cirra', Provincia e CAP -->
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

            <!-- Bottone per inserire i dati nel database -->
            <div class="form-outline py-1 d-flex justify-content-center">
                <asp:Button ID="btnRegistra" runat="server" Text="Salva Dati" CssClass="btn btn-primary" OnClick="btnRegistra_Click" />
            </div>
        </section>
    </form>
</body>
</html>

