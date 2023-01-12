<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="ModModello.aspx.cs" Inherits="_ModModello" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Modulo per selezionare modello da modificare, selezionare i campi da modificare, e poi compiere la modifica -->
    <section class="container py-5">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Modifica Modello</h5>
                    </div>
                    <div class="card-body">

                        <!-- Selezione del modello da modificare -->
                        <section class="py-2">
                            <h5>Seleziona modello da modificare:</h5>
                            <div class="row">
                                <!-- Dropdown per selezionare la marca del modello -->
                                <div class="col-lg-6">
                                    <div class="form-outline">
                                        <asp:Literal ID="Literal1" runat="server">Marca:</asp:Literal>
                                        <asp:DropDownList ID="ddlModMarca" runat="server" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMARCHE" AutoPostBack="True">
                                            <asp:ListItem Text="" disabled="disabled" />
                                        </asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="sdsMARCHE" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MARCHE_GetAllMarche" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    </div>
                                </div>
                                <!-- Dropdown per selezionare il tipo di modello -->
                                <div class="col-lg-6">
                                    <div class="form-outline">
                                        <asp:Literal ID="Literal2" runat="server">Modello:</asp:Literal>
                                        <asp:DropDownList ID="ddlModModello" runat="server" DataTextField="MODELLO" DataValueField="MODELLO" DataSourceID="sdsMODELLI" AutoPostBack="True">
                                            <asp:ListItem Text="" />
                                        </asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="sdsMODELLI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MODELLI_GetDistinctModelloByMarca" SelectCommandType="StoredProcedure">
                                            <selectparameters>
                                                <asp:ControlParameter ControlID="ddlModMarca" PropertyName="SelectedValue" DefaultValue="1" Name="MARCA"></asp:ControlParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                            </div>

                            <!-- Gridview che mostra tutte le varianti del modello selezionato -->
                            <div class="py-2">
                                <asp:GridView ID="GridView1" runat="server" DataSourceID="sdsMODELLI2" CssClass="table table-striped table-sm">
                                    <%--<Columns>
                                        <asp:TemplateField HeaderText="SELEZIONA">
                                            <ItemTemplate>
                                                <asp:RadioButton ID="RadioButton1" runat="server" name="rdb" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>--%>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="sdsMODELLI2" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MODELLI_GetModelloByName" SelectCommandType="StoredProcedure">
                                    <selectparameters>
                                        <asp:ControlParameter ControlID="ddlModModello" PropertyName="SelectedValue" DefaultValue="" Name="MODELLO"></asp:ControlParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>

                            <!-- Dropdown per selezionare la chiave del modello specifico da modificare -->
                            <div class="form-outline">
                                <asp:Literal ID="Literal3" runat="server">Seleziona chiave dell'elemento da modificare</asp:Literal>
                                <asp:DropDownList ID="ddlChiaveModello" runat="server" DataTextField="chiave" DataValueField="chiave" DataSourceID="sdsCHIAVIMODELLI"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="sdsCHIAVIMODELLI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MODELLI_GetKeysByName" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlModModello" PropertyName="SelectedValue" Name="MODELLO" Type="String"></asp:ControlParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </section>

                        <!-- Selezione dei campi da modificare -->
                        <section class="py-2">
                            <h5>Seleziona elementi da cambiare:</h5>
                            <!-- Ogni campo e' un checkbox, per poter modificare piu' di un campo -->
                            <div class="row">
                                <div class="col-lg-3">
                                    <asp:Literal ID="litMod" runat="server">Modello:</asp:Literal>
                                    <asp:CheckBox ID="chkMod" runat="server" />
                                </div>
                                <div class="col-lg-3">
                                    <asp:Literal ID="litAlim" runat="server">Alimentazione:</asp:Literal>
                                    <asp:CheckBox ID="chkAlim" runat="server" />
                                </div>
                                <div class="col-lg-3">
                                    <asp:Literal ID="litCambio" runat="server">Cambio:</asp:Literal>
                                    <asp:CheckBox ID="chkCambio" runat="server" />
                                </div>
                                <div class="col-lg-3">
                                    <asp:Literal ID="litMotor" runat="server">Motorizzazione:</asp:Literal>
                                    <asp:CheckBox ID="chkMotor" runat="server" />
                                </div>
                            </div>
                        </section>

                        <!-- Modifica dei dati da cambiare -->
                        <section class="py-2">
                            <h5>Cambia Dati:</h5>
                            <!-- Nome modello e Motorizzazione -->
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-outline">
                                        <asp:Literal ID="lit22" runat="server">Nome modello:</asp:Literal>
                                        <asp:TextBox ID="txtModello" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-outline">
                                        <asp:Literal ID="lit55" runat="server">Inserisci motorizzazione:</asp:Literal>
                                        <asp:TextBox ID="txtMotor" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <!-- Alimentazione e Cambio. Dropdown perche' valori limitati -->
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

                            <!-- Bottone per mandare il query SQL per aggiornare la tabella -->
                            <asp:Button ID="btnModello" CssClass="my-1 btn btn-primary" runat="server" Text="Modifica Modello" OnClick="btnModello_Click" />

                        </section>

                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

