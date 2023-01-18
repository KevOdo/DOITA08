<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="FatturatoVenditori.aspx.cs" Inherits="_FatturatoVenditori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container py-5">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Fatturato Venditori</h5>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="grdFatturato" runat="server" AutoGenerateColumns="False" DataSourceID="sdsVenditori" CssClass="table">
                            <columns>
                                <asp:CommandField ShowSelectButton="true" HeaderText="Seleziona:" />
                                <asp:BoundField DataField="nomeVENDITORE" HeaderText="Nome Venditore" SortExpression="nomeVENDITORE"></asp:BoundField>
                                <asp:BoundField DataField="cognomeVENDITORE" HeaderText="Cognome Venditore" SortExpression="cognomeVENDITORE"></asp:BoundField>
                                <asp:BoundField DataField="ACQUISTOVENDITA" HeaderText="ACQUISTOVENDITA" SortExpression="ACQUISTOVENDITA"></asp:BoundField>
                                <asp:BoundField DataField="TOTALE" HeaderText="TOTALE" ReadOnly="True" SortExpression="TOTALE"></asp:BoundField>
                            </columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="sdsVenditori" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAZIONI_SortByVenditore" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

