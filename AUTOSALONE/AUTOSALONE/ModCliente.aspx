<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="ModCliente.aspx.cs" Inherits="_ModCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container py-5">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-8">
                <div class="card">
                    <div class="card-header">
                        <h5>Modifica Cliente</h5>
                    </div>
                    <div class="card-body">

                        <!-- Ricerca e selezione del cliente da modificare -->
                        <section>
                            <h5>Seleziona cliente da modificare:</h5>
                            <!-- Seleziona Nome e Cognome del cliente che si vuole modificare -->
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="form-outline">
                                        <label for="" class="form-label">Nome:</label>
                                        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-lg-5">
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
                                <div class="col-lg-10">
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
                            <asp:SqlDataSource runat="server" ID="sdsCLIENTI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="CLIENTI_GetClientiByNomeCognome" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtNome" PropertyName="Text" Name="NOME"></asp:ControlParameter>
                                    <asp:ControlParameter ControlID="txtCognome" PropertyName="Text" Name="COGNOME"></asp:ControlParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!-- Bottone per confermare marca da modificare -->
                            <div class="py-2">
                                <asp:Button CssClass="my-1 btn btn-primary" ID="btnModifica" runat="server" Text="Modifica" OnClick="btnModifica_Click" />
                            </div>
                        </section>

                        <section class="py-2">
                            <h5>Modifica dati cliente:</h5>
                            <!-- Nome e Cognome -->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-outline">
                                        <label for="" class="form-label">Nome</label>
                                        <asp:TextBox ID="txtNomeMod" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-outline">
                                        <label class="form-label" for="">Cognome</label>
                                        <asp:TextBox ID="txtCognomeMod" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <!-- Ragione Sociale -->
                            <div class="form-outline">
                                <label class="form-label" for="">Ragione Sociale</label>
                                <asp:TextBox ID="txtRSMod" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <!-- Indirizzo -->
                            <div class="form-outline">
                                <label for="" class="form-label">Indirizzo</label>
                                <asp:TextBox ID="txtIndirizzoMod" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <!-- Cirra', Provincia e CAP -->
                            <div class="row">
                                <div class="col-md-8 col-sm-8">
                                    <div class="form-outline">
                                        <label for="" class="form-label">Citta'</label>
                                        <asp:TextBox ID="txtCittaMod" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-2">
                                    <div class="form-outline">
                                        <label for="" class="form-label">Provincia</label>
                                        <asp:TextBox ID="txtProvinciaMod" runat="server" CssClass="form-control" MaxLength="2"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-2">
                                    <div class="form-outline">
                                        <label for="" class="form-label">CAP</label>
                                        <asp:TextBox ID="txtCAPMod" runat="server" CssClass="form-control" TextMode="Number" max="99999"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <!-- Bottone per inserire i dati nel database -->
                            <div class="form-outline py-1">
                                <asp:Button ID="btnRegistra" runat="server" Text="Salva Modifiche" CssClass="btn btn-primary" OnClick="btnRegistra_Click" />
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

