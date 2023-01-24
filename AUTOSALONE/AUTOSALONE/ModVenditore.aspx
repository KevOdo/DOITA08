<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="ModVenditore.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container">
        <div class="row d-flex justify-content-center">

            <!-- Page Title -->
            <div class="display-4 py-4 d-flex justify-content-center">
                Modifica Venditore
            </div>

            <div class="col-xl-6 col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5>Seleziona Venditore:</h5>
                        <div class="scroll">
                            <asp:GridView CssClass="table" runat="server" AutoGenerateColumns="False" ID="GridVend" DataSourceID="SqlDataSource2" DataKeyNames="chiaveVENDITORE" OnSelectedIndexChanged="btnModifica_Click">
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
            <div class="col-xl-6 col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5>Inserisci dati:</h5>
                        <label for="exampleDatepicker1" class="form-label">Filiale</label>
                        <asp:DropDownList ID="ddlfil" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMEFILIALE" DataValueField="chiave"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="FILIALI_GetAllFiliali" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-outline">
                                    <div class="form-outline">
                                        <label for="exampleDatepicker1" class="form-label">Nome</label>
                                        <asp:TextBox ID="txtNome" class="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-outline">
                                    <label for="exampleDatepicker1" class="form-label">Cognome</label>
                                    <asp:TextBox ID="txtCognome" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-outline py-1">
                            <asp:Button class="btn btn-primary" ID="btnSalva" runat="server" Text="Salva Dati" OnClick="btnSalva_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>










</asp:Content>

