<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="ListaAuto.aspx.cs" Inherits="_ListaAuto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container py-5">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <div class="card" style="overflow:scroll;">
                    <asp:GridView runat="server" ID="ctl00" AutoGenerateColumns="False" DataKeyNames="chiaveAuto" DataSourceID="sdsAUTO" CssClass="table" >
                        <Columns>
                            <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA"></asp:BoundField>
                            <asp:BoundField DataField="MODELLO" HeaderText="MODELLO" SortExpression="MODELLO"></asp:BoundField>
                            <asp:BoundField DataField="CAMBIO" HeaderText="CAMBIO" SortExpression="CAMBIO"></asp:BoundField>
                            <asp:BoundField DataField="ALIMENTAZIONE" HeaderText="ALIMENTAZIONE" SortExpression="ALIMENTAZIONE"></asp:BoundField>
                            <asp:BoundField DataField="MOTORIZZAZIONE" HeaderText="MOTORIZZAZIONE" SortExpression="MOTORIZZAZIONE"></asp:BoundField>
                            <asp:BoundField DataField="ANNO" HeaderText="ANNO" SortExpression="ANNO"></asp:BoundField>
                            <asp:BoundField DataField="TARGA" HeaderText="TARGA" SortExpression="TARGA"></asp:BoundField>
                            <asp:BoundField DataField="KILOMETRI" HeaderText="KILOMETRI" SortExpression="KILOMETRI"></asp:BoundField>
                            <asp:BoundField DataField="COLORE" HeaderText="COLORE" SortExpression="COLORE"></asp:BoundField>
                            <asp:BoundField DataField="PREZZO" HeaderText="PREZZO" SortExpression="PREZZO"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="sdsAUTO" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="AUTOMOBILI_GetAllAuto" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

