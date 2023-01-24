<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="InsFiliale.aspx.cs" Inherits="_InsFiliale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container">

        <!-- Page Title -->
        <div class="display-4 py-4 d-flex justify-content-center">
            Inserisci Filiale
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-xl-6">
                <div class="card">
                    <div class="card-body">
                        <h5>Inserisci dati:</h5>
                        <div class="form-outline">
                            <label for="" class="form-label">Nome Filiale:</label>
                            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
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

                        <div class="row">
                            <div class="col-xl-6">
                                <div class="form-outline">
                                    <label for="" class="form-label">Telefono:</label>
                                    <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="form-outline">
                                    <label for="" class="form-label">Email:</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <!-- Bottone per inserire i dati nel database -->
                        <div class="form-outline py-1">
                            <asp:Button ID="btnSalva" runat="server" Text="Inserisci Filiale" OnClick="btnSalva_Click" CssClass="btn btn-primary" />
                        </div>

                    </div>
                </div>
            </div>
            <!-- GridView per vedere tutte le filiali nel database -->
            <div class="col-lg-6 col-xl-6">
                <div class="scroll">
                    <asp:GridView ID="grdFiliali" runat="server" AutoGenerateColumns="False" DataKeyNames="chiave" DataSourceID="sdsFILIALI" CssClass="table">
                        <Columns>
                            <asp:BoundField DataField="NOMEFILIALE" HeaderText="NOMEFILIALE" SortExpression="NOMEFILIALE"></asp:BoundField>
                            <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" SortExpression="INDIRIZZO"></asp:BoundField>
                            <asp:BoundField DataField="CITTA" HeaderText="CITTA" SortExpression="CITTA"></asp:BoundField>
                            <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA"></asp:BoundField>
                            <asp:BoundField DataField="CAP" HeaderText="CAP" SortExpression="CAP"></asp:BoundField>
                            <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO"></asp:BoundField>
                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
                <asp:SqlDataSource runat="server" ID="sdsFILIALI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="FILIALI_GetAllFiliali" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>

        </div>
    </section>



</asp:Content>

