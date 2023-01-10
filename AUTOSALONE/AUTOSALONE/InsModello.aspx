<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="InsModello.aspx.cs" Inherits="_InsModello" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container py-5">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Modello Nuovo</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-outline">
                            <asp:Literal ID="lit11" runat="server">Seleziona marca auto:</asp:Literal>
                            <asp:DropDownList ID="ddlMarca" runat="server" CssClass="select" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMARCHE"></asp:DropDownList><asp:SqlDataSource runat="server" ID="sdsMARCHE" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="SELECT [chiave], [MARCA] FROM [MARCHE] ORDER BY [MARCA]"></asp:SqlDataSource>
                        </div>

                        <div class="form-outline">
                            <asp:Literal ID="lit22" runat="server">Nome modello:</asp:Literal>
                            <asp:TextBox ID="txtModello" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

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

                        <div class="form-outline">
                            <asp:Literal ID="lit55" runat="server">Inserisci motorizzazione:</asp:Literal>
                            <asp:TextBox ID="txtMotor" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <asp:Button ID="btnModello" CssClass="my-1 btn btn-primary" runat="server" Text="Inserisci Modello" OnClick="btnModello_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <div>
                    <asp:DropDownList ID="ddlSelectmarca" runat="server" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMARCHE" AutoPostBack="True"></asp:DropDownList>
                </div>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="sdsMODELLI" CssClass="table table-striped table-sm"></asp:GridView>
                <asp:SqlDataSource runat="server" ID="sdsMODELLI" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="select MODELLO, ALIMENTAZIONE, CAMBIO, MOTORIZZAZIONE
                        from MODELLI
                        where chiaveMARCA=@MARCA">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlSelectmarca" PropertyName="SelectedValue" DefaultValue="1" Name="MARCA"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </section>
</asp:Content>

