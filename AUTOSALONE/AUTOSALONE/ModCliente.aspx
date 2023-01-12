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

                            <!-- Bottone per cercare il cliente in base ad i dati inseriti -->
                            <div class="py-2">
                                <asp:Button ID="btnCerca" runat="server" Text="Cerca Cliente" OnClick="btnCerca_Click" class="btn btn-primary" />
                            </div>

                            <!-- Gridview per vedere tutti i clienti che hanno quei dati -->
                            <asp:GridView ID="GridView1" runat="server" DataSourceID="sdsCLIENTI" CssClass="table table-striped table-sm" AutoGenerateColumns="False" DataKeyNames="chiave">
                                <Columns>
                                    <asp:BoundField DataField="chiave" HeaderText="chiave" ReadOnly="True" InsertVisible="False" SortExpression="chiave"></asp:BoundField>
                                    <asp:BoundField DataField="COGNOME" HeaderText="COGNOME" SortExpression="COGNOME"></asp:BoundField>
                                    <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME"></asp:BoundField>
                                    <asp:BoundField DataField="RAGIONE_SOCIALE" HeaderText="RAGIONE_SOCIALE" SortExpression="RAGIONE_SOCIALE"></asp:BoundField>
                                    <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" SortExpression="INDIRIZZO"></asp:BoundField>
                                    <asp:BoundField DataField="CITTA" HeaderText="CITTA" SortExpression="CITTA"></asp:BoundField>
                                    <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA"></asp:BoundField>
                                    <asp:BoundField DataField="CAP" HeaderText="CAP" SortExpression="CAP"></asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="sdsCLIENTI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="CLIENTI_GetClientiByNomeCognome" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtNome" PropertyName="Text" Name="NOME"></asp:ControlParameter>
                                    <asp:ControlParameter ControlID="txtCognome" PropertyName="Text" Name="COGNOME"></asp:ControlParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!-- Dropdown per selezionare la chiave del cliente specifico da modificare -->
                            <div class="form-outline">
                                <asp:Literal ID="Literal3" runat="server">Seleziona chiave del cliente da modificare</asp:Literal>
                                <asp:DropDownList ID="ddlChiaveCliente" runat="server" DataTextField="chiave" DataValueField="chiave" DataSourceID="sdsCLIENTI"></asp:DropDownList>
                            </div>
                        </section>

                        <!-- Selezione dei campi da modificare -->
                        <section class="py-2">
                            <h5>Seleziona elementi da cambiare:</h5>
                            <!-- Ogni campo e' un checkbox, per poter modificare piu' di un campo -->
                            <div class="row">
                                <div class="col-lg-3">
                                    <asp:Literal ID="litMod" runat="server">Cognome:</asp:Literal>
                                    <asp:CheckBox ID="chkMod" runat="server" />
                                </div>
                                <div class="col-lg-3">
                                    <asp:Literal ID="litAlim" runat="server">Nome:</asp:Literal>
                                    <asp:CheckBox ID="chkAlim" runat="server" />
                                </div>
                                <div class="col-lg-3">
                                    <asp:Literal ID="litCambio" runat="server">Ragione Sociale:</asp:Literal>
                                    <asp:CheckBox ID="chkCambio" runat="server" />
                                </div>
                                <div class="col-lg-3">
                                    <asp:Literal ID="litMotor" runat="server">Indirizzo:</asp:Literal>
                                    <asp:CheckBox ID="chkMotor" runat="server" />
                                </div>
                                <div class="col-lg-3">
                                    <asp:Literal ID="Literal1" runat="server">Citta:</asp:Literal>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </div>
                                <div class="col-lg-3">
                                    <asp:Literal ID="Literal2" runat="server">Provincia:</asp:Literal>
                                    <asp:CheckBox ID="CheckBox2" runat="server" />
                                </div>
                                <div class="col-lg-3">
                                    <asp:Literal ID="Literal4" runat="server">CAP:</asp:Literal>
                                    <asp:CheckBox ID="CheckBox3" runat="server" />
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

