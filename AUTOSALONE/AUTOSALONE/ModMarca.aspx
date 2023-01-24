<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="ModMarca.aspx.cs" Inherits="_ModMarca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container">

        <!-- Page Title -->
        <div class="display-4 py-4 d-flex justify-content-center">
            Modifica Marca
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-xl-6 top">
                <div class="card">
                    <div class="card-body">
                        <h5>Seleziona marca:</h5>
                        <!-- GridView per selezionare la marca da modificare -->
                        <asp:GridView ID="gridMarche" runat="server" AutoGenerateColumns="false" DataKeyNames="chiave" DataSourceID="sdsMARCHE" CssClass="table table-striped" OnSelectedIndexChanged="btnModifica_Click">
                            <Columns>
                                <asp:CommandField ShowSelectButton="true" HeaderText="Seleziona:" />
                                <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                                <asp:BoundField DataField="NAZIONE" HeaderText="NAZIONE" SortExpression="NAZIONE" />
                            </Columns>
                            <SelectedRowStyle BackColor="#2c98e0" />
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="sdsMARCHE" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MARCHE_GetAllMarche" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5>Modifica dati:</h5>
                        <!-- TextBox per marca e nazione. Popolati una volta selezionata la marca da modificare -->
                        <div class="row">
                            <div class="col-xl-6">
                                <asp:Label ID="lblMarca" runat="server" Text="Marca:"></asp:Label>
                                <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-xl-6">
                                <asp:Label ID="lblNazione" runat="server" Text="Nazione:"></asp:Label>
                                <asp:TextBox ID="txtNazione" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Bottone per inviare le modifiche effettuate al database -->
                        <asp:Button ID="btnSalva" CssClass="my-1 btn btn-primary" runat="server" Text="Salva Modifiche" OnClick="btnSalva_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

