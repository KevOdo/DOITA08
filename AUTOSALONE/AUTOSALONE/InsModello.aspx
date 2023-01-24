<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="InsModello.aspx.cs" Inherits="_InsModello" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container">

        <!-- Page Title -->
        <div class="display-4 py-4 d-flex justify-content-center">
            Inserisci Modello
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-xl-6">
                <div class="card">
                    <div class="card-body">
                        <h5>Inserisci dati:</h5>
                        <!-- Seleziona Marca del modello da aggiungere -->
                        <div class="form-outline">
                            <asp:Literal ID="lit11" runat="server">Seleziona marca auto:</asp:Literal>
                            <asp:DropDownList ID="ddlMarca" runat="server" CssClass="select" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMARCHE"></asp:DropDownList>
                            <asp:SqlDataSource runat="server" ID="sdsMARCHE" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MARCHE_GetAllMarche" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>

                        <!-- Nome modello -->
                        <div class="form-outline">
                            <asp:Literal ID="lit22" runat="server">Nome modello:</asp:Literal>
                            <asp:TextBox ID="txtModello" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <!-- DropDownList per selezione di Alimentazione e Cambio -->
                        <div class="row py-1">
                            <div class="col-lg-6">
                                <asp:Literal ID="lit33" runat="server">Alimentazione:</asp:Literal>
                                <asp:DropDownList ID="ddlAlimentazione" runat="server">
                                    <asp:ListItem>Benzina</asp:ListItem>
                                    <asp:ListItem>Diesel</asp:ListItem>
                                    <asp:ListItem>Elettrico</asp:ListItem>
                                    <asp:ListItem>Ibrido</asp:ListItem>
                                    <asp:ListItem>Metano</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-6">
                                <asp:Literal ID="lit44" runat="server">Cambio:</asp:Literal>
                                <asp:DropDownList ID="ddlCambio" runat="server">
                                    <asp:ListItem>Manuale</asp:ListItem>
                                    <asp:ListItem>Automatico</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <!-- Motorizzazione -->
                        <div class="form-outline">
                            <asp:Literal ID="lit55" runat="server">Inserisci motorizzazione:</asp:Literal>
                            <asp:TextBox ID="txtMotor" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <!-- Bottone per inserire i dati nel database -->
                        <asp:Button ID="btnModello" CssClass="my-1 btn btn-primary" runat="server" Text="Inserisci Modello" OnClick="btnModello_Click" />
                    </div>
                </div>
            </div>

            <!-- GridView per vedere tutti i modelli di una certa marca-->
            <div class="col-lg-6 col-xl-6">
                <!-- DropDownList per selezionare la marca di cui vedere i modelli-->
                <div>
                    <asp:DropDownList ID="ddlSelectmarca" runat="server" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMARCHE" AutoPostBack="True"></asp:DropDownList>
                </div>
                <div class="scroll">
                    <!-- GridView popolato in base alla marca -->
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="sdsMODELLI" CssClass="table table-striped table-sm"></asp:GridView>
                    <asp:SqlDataSource runat="server" ID="sdsMODELLI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MODELLI_GetModelloByMarca" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlSelectmarca" PropertyName="SelectedValue" DefaultValue="1" Name="MARCA" Type="Int32"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

