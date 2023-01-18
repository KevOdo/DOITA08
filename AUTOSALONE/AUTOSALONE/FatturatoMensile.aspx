<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="FatturatoMensile.aspx.cs" Inherits="_FatturatoMensile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container py-5">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Fatturato Mensile</h5>
                    </div>
                    <div class="card-body">
                        <div>
                            <asp:DropDownList ID="ddlAnno" runat="server" DataTextField="ANNO" DataValueField="ANNO" DataSourceID="sdsANNO" AutoPostBack="True"></asp:DropDownList>
                            <asp:SqlDataSource runat="server" ID="sdsANNO" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAZIONI_GetAnniTransazioni" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>
                        <asp:GridView ID="gridFatturato" runat="server" DataSourceID="sdsFATTURATO" CssClass="table table-striped" AutoGenerateColumns="False">
                            <Columns>
                                <asp:CommandField  ShowSelectButton="true"/>
                                <asp:BoundField DataField="MESE" HeaderText="MESE" ReadOnly="True" SortExpression="MESE" />
                                <asp:BoundField DataField="TOTALEV" HeaderText="TOTALE VENDITE" ReadOnly="True" SortExpression="TOTALEV" />
                                <asp:BoundField DataField="TOTALEA" HeaderText="TOTALE ACQUISTI" ReadOnly="True" SortExpression="TOTALEA" />
                                <asp:BoundField DataField="NETTO" HeaderText="NETTO" ReadOnly="True" SortExpression="NETTO" />
                            </Columns>
                            <SelectedRowStyle BackColor="#2c98e0" />
                            <HeaderStyle BackColor="#2c98e0" />
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="sdsFATTURATO" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAZIONI_SortByMeseGetByAnno" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlAnno" PropertyName="SelectedValue" DefaultValue="" Name="ANNO" Type="Int32"></asp:ControlParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

