<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="FatturatoFiliali.aspx.cs" Inherits="_FatturatoFiliali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container py-5">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Fatturato per Filiale</h5>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="gridFatturato" runat="server" AutoGenerateColumns="False" DataSourceID="sdsFATTURATI" CssClass="table">
                            <Columns>
                                <asp:BoundField DataField="NOMEFILIALE" HeaderText="FILIALE" SortExpression="NOMEFILIALE"></asp:BoundField>
                                <asp:BoundField DataField="ACQUISTOVENDITA" HeaderText="ACQUISTO/VENDITA" SortExpression="ACQUISTOVENDITA"></asp:BoundField>
                                <asp:BoundField DataField="TOTALE" HeaderText="TOTALE"   ReadOnly="True" SortExpression="TOTALE" ></asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="#2c98e0" />
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="sdsFATTURATI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAIZONI_SortByFiliale" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

