<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="InsNuovoCliente.aspx.cs" Inherits="_InsNuovoCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container py-5">
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
    </section>

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
</asp:Content>

