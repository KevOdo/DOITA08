<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="InsTransazione.aspx.cs" Inherits="_InsTransazione" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container">

        <!-- Page Title -->
        <div class="display-4 py-4 d-flex justify-content-center">
            Inserisci Transazione
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-xl-6">
                <div class="card">
                    <div class="card-body">
                        <h5>Seleziona auto:</h5>
                        <div class="row">
                            <div class="col-lg-6">
                                <asp:Label ID="Label1" runat="server" Text="Marca:"></asp:Label>
                                <asp:DropDownList ID="ddlMarca" runat="server" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMarche" AutoPostBack="True"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="sdsMarche" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MARCHE_GetAllMarche" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                            <div class="col-lg-6">
                                <asp:Label ID="Label2" runat="server" Text="Modello:"></asp:Label>
                                <asp:DropDownList ID="ddlModello" runat="server" DataTextField="MODELLO" DataValueField="MODELLO" DataSourceID="sdsModello" AutoPostBack="True" OnDataBound="gridAuto_SelectedIndexChanged"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="sdsModello" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MODELLI_GetDistinctModelloByMarca" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlMarca" PropertyName="SelectedValue" Name="MARCA"></asp:ControlParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="scroll">
                            <asp:GridView ID="gridAuto" runat="server" DataSourceID="sdsAuto" DataKeyNames="chiaveAuto" AutoGenerateColumns="false" CssClass="table table-striped">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="true" />
                                    <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                    <asp:BoundField DataField="MODELLO" HeaderText="MODELLO" SortExpression="MODELLO" />
                                    <asp:BoundField DataField="ANNO" HeaderText="ANNO" SortExpression="ANNO" />
                                    <asp:BoundField DataField="TARGA" HeaderText="TARGA" SortExpression="TARGA" />
                                    <asp:BoundField DataField="PREZZO" HeaderText="PREZZO" SortExpression="PREZZO" />
                                </Columns>
                                <SelectedRowStyle BackColor="#2c98e0" />
                            </asp:GridView>
                        </div>
                        <asp:SqlDataSource runat="server" ID="sdsAuto" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="AUTOMOBILI_GetAutoByModello" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlModello" PropertyName="SelectedValue" Name="modello" Type="String"></asp:ControlParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-6">
                <div class="card">
                    <div class="card-body">
                        <h5>Seleziona cliente:</h5>
                        <!-- Ricerca e selezione del cliente da modificare -->
                        <!-- Seleziona Nome e Cognome del cliente che si vuole modificare -->
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-outline">
                                    <label for="" class="form-label">Nome:</label>
                                    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="form-outline">
                                    <label class="form-label" for="">Cognome:</label>
                                    <asp:TextBox ID="txtCognome" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Bottone per cercare il cliente in base ad i dati inseriti -->
                            <div class="col-lg-2">
                                <div class="form-outline py-2">
                                    <label class="form-label" for=""></label>
                                    <asp:Button ID="btnCerca" runat="server" Text="Cerca Cliente" OnClick="btnCerca_Click" class="btn btn-primary" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-8">
                                <div class="form-outline">
                                    <label for="" class="form-label">Ragione Sociale:</label>
                                    <asp:TextBox ID="txtRS" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Bottone per cercare il cliente in base ad i dati inseriti -->
                            <div class="col-lg-2">
                                <div class="form-outline py-2">
                                    <label class="form-label" for=""></label>
                                    <asp:Button ID="btnCercaRS" runat="server" Text="Cerca Cliente" class="btn btn-primary" OnClick="btnCercaRS_Click" />
                                </div>
                            </div>
                        </div>


                        <!-- Gridview per vedere tutti i clienti che hanno quei dati -->
                        <div class="scroll">
                            <asp:GridView ID="gridClienti" runat="server" DataSourceID="sdsCLIENTI" CssClass="table table-striped table-sm" AutoGenerateColumns="False" DataKeyNames="chiave">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="true" />
                                    <asp:BoundField DataField="COGNOME" HeaderText="COGNOME" SortExpression="COGNOME"></asp:BoundField>
                                    <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME"></asp:BoundField>
                                    <asp:BoundField DataField="RAGIONE_SOCIALE" HeaderText="RAGIONE_SOCIALE" SortExpression="RAGIONE_SOCIALE"></asp:BoundField>
                                    <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" SortExpression="INDIRIZZO"></asp:BoundField>
                                    <asp:BoundField DataField="CITTA" HeaderText="CITTA" SortExpression="CITTA"></asp:BoundField>
                                    <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA"></asp:BoundField>
                                    <asp:BoundField DataField="CAP" HeaderText="CAP" SortExpression="CAP"></asp:BoundField>
                                </Columns>
                                <SelectedRowStyle BackColor="#2c98e0" />
                            </asp:GridView>
                        </div>
                        <asp:SqlDataSource runat="server" ID="sdsCLIENTI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="CLIENTI_GetClientiByNomeCognome" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtNome" PropertyName="Text" Name="NOME"></asp:ControlParameter>
                                <asp:ControlParameter ControlID="txtCognome" PropertyName="Text" Name="COGNOME"></asp:ControlParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>

        <div class="row py-2">
            <div class="col-lg-6 col-xl-6">
                <div class="card">
                    <div class="card-body">
                        <h5>Seleziona Venditore:</h5>
                        <div class="scroll">
                            <asp:GridView CssClass="table" runat="server" AutoGenerateColumns="False" ID="GridVend" DataSourceID="SqlDataSource2" DataKeyNames="chiaveVENDITORE">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="FILIALE" HeaderText="FILIALE" SortExpression="FILIALE" />
                                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                                    <asp:BoundField DataField="Cognome" HeaderText="Cognome" SortExpression="Cognome" />
                                </Columns>
                                <SelectedRowStyle BackColor="#2c98e0" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="VENDITORI_GetVenditori" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-xl-6">
                <div class="card">
                    <div class="card-body">
                        <h5>Inserisci dati:</h5>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-outline">
                                    <asp:Label ID="Label3" runat="server" Text="Data:"></asp:Label>
                                    <asp:TextBox ID="txtData" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-outline">
                                    <asp:Label ID="Label4" runat="server" Text="Metodo Pagamento:"></asp:Label>
                                    <asp:TextBox ID="txtMP" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-outline">
                                    <asp:Label ID="Label5" runat="server" Text="Acquisto/vendita:"></asp:Label>
                                    <asp:DropDownList ID="ddlAV" runat="server" CssClass="form-control" >
                                        <asp:ListItem Text="Acquisto" Value="A"></asp:ListItem>
                                        <asp:ListItem Text="Vendita" Value="V"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-outline">
                                    <asp:Label ID="Label6" runat="server" Text="Prezzo:"></asp:Label>
                                    <asp:TextBox ID="txtPrezzo" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="py-1">
                            <asp:Button ID="btnSalva" runat="server" Text="Salva Dati" OnClick="btnSalva_Click" CssClass="btn btn-primary"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
</asp:Content>

