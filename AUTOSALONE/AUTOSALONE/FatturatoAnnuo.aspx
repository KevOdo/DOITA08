<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="FatturatoAnnuo.aspx.cs" Inherits="_FatturatoAnnuo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container py-5">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Fatturato Annuo</h5>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="gridFatturato" runat="server" AutoGenerateColumns="False" DataSourceID="sdsFATTURATOANNUO" CssClass="table">
                            <Columns>
                                <asp:CommandField  ShowSelectButton="true"/>
                                <asp:BoundField DataField="ANNO" HeaderText="ANNO" ReadOnly="True" SortExpression="ANNO"></asp:BoundField>
                                <asp:BoundField DataField="TOTALEV" HeaderText="TOTALE VENDITE" ReadOnly="True" SortExpression="TOTALEV"></asp:BoundField>
                                <asp:BoundField DataField="TOTALEA" HeaderText="TOTALE ACQUISTI" ReadOnly="True" SortExpression="TOTALEA"></asp:BoundField>
                                <asp:BoundField DataField="NETTO" HeaderText="NETTO" ReadOnly="True" SortExpression="NETTO"></asp:BoundField>
                                <asp:BoundField></asp:BoundField>
                            </Columns>
                            <SelectedRowStyle BackColor="#2c98e0" />
                            <HeaderStyle BackColor="#2c98e0" />
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="sdsFATTURATOANNUO" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAZIONI_SortByAnno" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

