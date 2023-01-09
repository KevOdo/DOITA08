<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsAuto.aspx.cs" Inherits="InsAuto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GOS Inserisci Autp</title>
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
                            <h5>Auto Nuova</h5>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-outline">
                                        <asp:Literal ID="Literal1" runat="server">Marca:</asp:Literal>
                                        <asp:DropDownList ID="ddlMarca" runat="server" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMARCHE" AutoPostBack="True"></asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="sdsMARCHE" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="SELECT [chiave], [MARCA] FROM [MARCHE] ORDER BY [MARCA]"></asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-outline">
                                        <asp:Literal ID="Literal2" runat="server">Modello:</asp:Literal>
                                        <asp:DropDownList ID="ddlModello" runat="server" DataTextField="MODELLO" DataValueField="chiave" DataSourceID="sdsMODELLI"></asp:DropDownList><asp:SqlDataSource runat="server" ID="sdsMODELLI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="select *
                                            from MODELLI
                                            where chiaveMARCA=@MARCA">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlMarca" PropertyName="SelectedValue" Name="MARCA"></asp:ControlParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-outline">
                                        <asp:Literal ID="li1" runat="server">Anno:</asp:Literal>
                                        <asp:TextBox ID="txtAnno" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-outline">
                                        <asp:Literal ID="lit2" runat="server">Targa:</asp:Literal>
                                        <asp:TextBox ID="txtTarga" runat="server" CssClass="form-control" MaxLength="7"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-outline">
                                        <asp:Literal ID="lit3" runat="server">Kilometri:</asp:Literal>
                                        <asp:TextBox ID="txtKM" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-outline">
                                        <asp:Literal ID="lit4" runat="server">Colore:</asp:Literal>
                                        <asp:TextBox ID="txtColore" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-outline">
                                        <asp:Literal ID="lit1" runat="server">Prezzo:</asp:Literal>
                                        <asp:TextBox ID="txtPrezzo" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="py-1">
                                <asp:Button ID="btnAuto" runat="server" Text="Inserisci Auto" OnClick="btnAuto_Click" CssClass="btn btn-primary" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-8 col-xl-6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="chiave" DataSourceID="sdsAUTOMOBILI" CssClass="table table-striped">
                        <Columns>
                            <asp:BoundField DataField="chiave" HeaderText="chiave" ReadOnly="True" InsertVisible="False" SortExpression="chiave"></asp:BoundField>
                            <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA"></asp:BoundField>
                            <asp:BoundField DataField="MODELLO" HeaderText="MODELLO" SortExpression="MODELLO"></asp:BoundField>
                            <asp:BoundField DataField="ANNO" HeaderText="ANNO" SortExpression="ANNO"></asp:BoundField>
                            <asp:BoundField DataField="TARGA" HeaderText="TARGA" SortExpression="TARGA"></asp:BoundField>
                            <asp:BoundField DataField="KILOMETRI" HeaderText="KILOMETRI" SortExpression="KILOMETRI"></asp:BoundField>
                            <asp:BoundField DataField="COLORE" HeaderText="COLORE" SortExpression="COLORE"></asp:BoundField>
                            <asp:BoundField DataField="PREZZO" HeaderText="PREZZO" SortExpression="PREZZO"></asp:BoundField>
                            <asp:BoundField DataField="ALIMENTAZIONE" HeaderText="ALIMENTAZIONE" SortExpression="ALIMENTAZIONE"></asp:BoundField>
                            <asp:BoundField DataField="CAMBIO" HeaderText="CAMBIO" SortExpression="CAMBIO"></asp:BoundField>
                            <asp:BoundField DataField="MOTORIZZAZIONE" HeaderText="MOTORIZZAZIONE" SortExpression="MOTORIZZAZIONE"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="sdsAUTOMOBILI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="select AUTOMOBILI.chiave, MARCHE.MARCA, MODELLI.MODELLO, AUTOMOBILI.ANNO, AUTOMOBILI.TARGA, AUTOMOBILI.KILOMETRI, AUTOMOBILI.COLORE, AUTOMOBILI.PREZZO, MODELLI.ALIMENTAZIONE, MODELLI.CAMBIO, MODELLI.MOTORIZZAZIONE
                        from AUTOMOBILI
                        join MODELLI
                        on AUTOMOBILI.chiaveMODELLO=MODELLI.chiave
                        join MARCHE
                        on MODELLI.chiaveMARCA=MARCHE.chiave
                        order by MARCHE.MARCA"></asp:SqlDataSource>
                </div>
            </div>
        </section>

    </form>
</body>
</html>
