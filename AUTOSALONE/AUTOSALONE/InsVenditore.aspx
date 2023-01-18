<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="InsVenditore.aspx.cs" Inherits="_InsVenditore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container py-5">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Inserisci Venditore</h5>
                    </div>
                    <div class="card-body">
                        <!-- Nome e Cognome -->
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

                        <!-- Seleziona Filiale del Venditore -->
                        <div class="form-outline">
                            <asp:Literal ID="lit11" runat="server">Seleziona filiale:</asp:Literal>
                            <asp:DropDownList ID="ddlFiliale" runat="server" DataTextField="NOMEFILIALE" DataValueField="chiave" DataSourceID="sdsFILIALI"></asp:DropDownList><asp:SqlDataSource runat="server" ID="sdsFILIALI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="FILIALI_GetAllFiliali" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>

                        <!-- Bottone per inserire i dati nel database -->
                        <div class="form-outline py-1">
                            <asp:Button ID="btnSalva" runat="server" Text="Inserisci Venditore" CssClass="btn btn-primary" OnClick="btnSalva_Click" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- GridView per vedere tutti i venditori nel database -->
    <section>
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <asp:GridView ID="gridVenditori" runat="server" AutoGenerateColumns="False" DataSourceID="sdsVenditori" CssClass="table">
                    <Columns>
                        <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME"></asp:BoundField>
                        <asp:BoundField DataField="COGNOME" HeaderText="COGNOME" SortExpression="COGNOME"></asp:BoundField>
                        <asp:BoundField DataField="FILIALE" HeaderText="FILIALE" SortExpression="FILIALE"></asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="sdsVenditori" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="VENDITORI_GetAllVenditori" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
        </div>
    </section>
</asp:Content>

