<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="ModAuto.aspx.cs" Inherits="_ModAuto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container">

        <!-- Page Title -->
        <div class="display-4 py-4 d-flex justify-content-center">
            Modifica Auto
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-xl-6">
                <div class="card">
                    <div class="card-body">
                        <h5>Selezona Auto:</h5>
                        <div class="row">
                            <div class="col-lg-6">
                                <asp:Literal ID="Literal1" runat="server">Marca:</asp:Literal>
                                <asp:DropDownList ID="ddlMarca" runat="server" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMarche" AutoPostBack="True"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="sdsMarche" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MARCHE_GetAllMarche" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                            <div class="col-lg-6">
                                <asp:Literal ID="Literal2" runat="server">Modello:</asp:Literal>
                                <asp:DropDownList ID="ddlModello" runat="server" DataTextField="MODELLO" DataValueField="MODELLO" DataSourceID="sdsModelli" AutoPostBack="True"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="sdsModelli" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="MODELLI_GetDistinctModelloByMarca" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlMarca" PropertyName="SelectedValue" Name="MARCA" Type="Int32"></asp:ControlParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <asp:GridView ID="grdAuto" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-xl-6">
                <div class="card">
                    <div class="card-body">
                    </div>
                </div>
            </div>
        </div>

    </section>
</asp:Content>

