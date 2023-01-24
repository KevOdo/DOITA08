<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="InsMarca.aspx.cs" Inherits="_InsMarca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container">

        <!-- Page Title -->
        <div class="display-4 py-4 d-flex justify-content-center">
            Inserisci Marca
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-xl-6">
                <div class="card">
                    <!-- Inserimento di Marca nuova -->
                    <div class="card-body">
                        <h5>Inserisci dati:</h5>
                        <div class="form-outline">
                            <asp:Literal ID="lit1" runat="server">Inserisci marca nuova:</asp:Literal>
                            <asp:TextBox ID="txtMarca" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnMarca" CssClass="my-1 btn btn-primary" runat="server" Text="Inserisci Marca" OnClick="btnMarca_Click" />
                    </div>
                </div>
            </div>
            <!-- GridView per vedere tutte le marche nel database -->
            <div class="col-lg-6 col-xl-6">
                <div class="scroll">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sdsMARCHE" CssClass="table table-striped">
                        <Columns>
                            <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
                <asp:SqlDataSource runat="server" ID="sdsMARCHE" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MARCHE_GetAllMarche" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
        </div>
    </section>
</asp:Content>

