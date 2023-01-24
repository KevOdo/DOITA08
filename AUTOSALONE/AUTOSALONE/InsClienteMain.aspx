<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="InsClienteMain.aspx.cs" Inherits="_InsClienteMain" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container">

        <!-- Page Title -->
        <div class="display-4 py-4 d-flex justify-content-center">
            Inserisci Cliente
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-lg-8 col-xl-8">
                <%-- Introduzione di uno script manager --%>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>

                <%-- pulsante che apre il popup --%>
                <div class="py-1 d-flex justify-content-center">
                    <asp:Button ID="Button1" runat="server" Text="Nuovo Cliente" CssClass="btn btn-primary" />
                </div>

                <%-- chiamata del popup --%>
                <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button1"
                    BackgroundCssClass="Background" >
                </cc1:ModalPopupExtender>

                <%-- contenuto del popup --%>
                <asp:Panel
                    ID="Panl1"
                    runat="server"
                    CssClass="card Popup"
                    align="center"
                    Style="display: none">
                    <%--ci pensa lo script manager a renderlo visibile--%>

                    <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
                    <iframe style="width: 650px; height: 400px;" id="irm1" src="InsNuovoCliente.aspx" runat="server" class="card"></iframe>
                    <asp:Button ID="Button2" runat="server" Text="x" CssClass="MyButton"  OnClick="Button2_Click"/>
                    <%--chiude il popup--%>
                </asp:Panel>

                <div class="scroll">
                    <asp:GridView ID="grdClienti" runat="server" AutoGenerateColumns="False" DataSourceID="sdsCLIENTI" CssClass="table table-striped table-sm">
                        <Columns>
                            <asp:BoundField DataField="COGNOME" HeaderText="COGNOME" SortExpression="COGNOME"></asp:BoundField>
                            <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME"></asp:BoundField>
                            <asp:BoundField DataField="RAGIONE_SOCIALE" HeaderText="RAGIONE_SOCIALE" SortExpression="RAGIONE_SOCIALE"></asp:BoundField>
                            <asp:BoundField DataField="INDIRIZZO" HeaderText="INDIRIZZO" SortExpression="INDIRIZZO"></asp:BoundField>
                            <asp:BoundField DataField="CITTA" HeaderText="CITTA" SortExpression="CITTA"></asp:BoundField>
                            <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" SortExpression="PROVINCIA"></asp:BoundField>
                            <asp:BoundField DataField="CAP" HeaderText="CAP" SortExpression="CAP"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
                <asp:SqlDataSource runat="server" ID="sdsCLIENTI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="CLIENTI_GetAllClienti" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
        </div>
    </section>
</asp:Content>

