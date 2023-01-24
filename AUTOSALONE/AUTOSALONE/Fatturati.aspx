<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="Fatturati.aspx.cs" Inherits="_Fatturati" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container">

        <!-- Page Title -->
        <div class="display-4 py-4 d-flex justify-content-center">
            Transazioni
        </div>

        <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-xl-6">
                <!-- Drop Down List per Filtrare -->
                <div class="row">
                    <div class="col-lg-3 col-xl-3">
                        <asp:Label ID="lblAnno" runat="server" Text="Anno:"></asp:Label>
                        <asp:DropDownList AutoPostBack="true" ID="ddlAnno" runat="server" DataTextField="ANNO" DataValueField="ANNO" DataSourceID="sdsAnno" AppendDataBoundItems="True">
                            <asp:ListItem Text="" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="sdsAnno" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAZIONI_GetAnniTransazioni" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>

                    <div class="col-lg-5 col-xl-5">
                        <asp:Label ID="lblFiliale" runat="server" Text="Filiale:"></asp:Label>
                        <asp:DropDownList AutoPostBack="true" ID="ddlFiliale" runat="server" DataSourceID="sdsFiliale" DataTextField="NOMEFILIALE" DataValueField="chiaveFILIALE" AppendDataBoundItems="True">
                            <asp:ListItem Text="" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="sdsFiliale" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAZIONI_GetFiliale" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>

                    <div class="col-lg-4 col-xl-4">
                        <asp:Label ID="lblMarca" runat="server" Text="Marca:"></asp:Label>
                        <asp:DropDownList ID="ddlMarca" runat="server" DataTextField="MARCA" DataValueField="chiaveMARCA" DataSourceID="sdsMarca" AutoPostBack="True" AppendDataBoundItems="True">
                            <asp:ListItem Text="" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="sdsMarca" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAZIONI_GetMarca" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-3 col-xl-3">
                        <asp:Label ID="lblMese" runat="server" Text="Mese:"></asp:Label>
                        <asp:DropDownList ID="ddlMese" runat="server" DataTextField="MESE" DataValueField="Column1" DataSourceID="sdsMese" AutoPostBack="True" AppendDataBoundItems="True" OnDataBinding="clearDDL">
                            <asp:ListItem Text="" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="sdsMese" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAZIONI_GetMeseByAnno" SelectCommandType="StoredProcedure">
                            <selectparameters>
                                <asp:ControlParameter ControlID="ddlAnno" PropertyName="SelectedValue" Name="anno" Type="Int32"></asp:ControlParameter>
                            </selectparameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="col-lg-5 col-xl-5">
                        <asp:Label ID="lblVenditore" runat="server" Text="Venditore:"></asp:Label>
                        <asp:DropDownList ID="ddlVenditore" runat="server" DataTextField="VENDITORE" DataValueField="chiaveVENDITORE" DataSourceID="sdsVenditore" AutoPostBack="True" AppendDataBoundItems="True" OnDataBinding="clearDDL">
                            <asp:ListItem Text="" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="sdsVenditore" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAZIONI_GetVenditoreByFiliale" SelectCommandType="StoredProcedure">
                            <selectparameters>
                                <asp:ControlParameter ControlID="ddlFiliale" PropertyName="SelectedValue" DefaultValue="" Name="chiave" Type="Int32"></asp:ControlParameter>
                            </selectparameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="col-lg-4 col-xl-4">
                        <asp:Label ID="lblModello" runat="server" Text="Modello:"></asp:Label>
                        <asp:DropDownList ID="ddlModello" runat="server" DataTextField="MODELLO" DataValueField="chiaveMODELLO" DataSourceID="sdsModello" AutoPostBack="True" AppendDataBoundItems="True" OnDataBinding="clearDDL">
                            <asp:ListItem Text="" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="sdsModello" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAZIONI_GetModelloByMarca" SelectCommandType="StoredProcedure">
                            <selectparameters>
                                <asp:ControlParameter ControlID="ddlMarca" PropertyName="SelectedValue" Name="chiave" Type="Int32"></asp:ControlParameter>
                            </selectparameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div class="scroll">
                    <asp:GridView ID="grdTransazioni" runat="server" DataSourceID="sdsTransazioni" CssClass="table">
                    </asp:GridView>
                </div>
                <asp:SqlDataSource runat="server" ID="sdsTransazioni" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="TRANSAZIONI_ChooseFilter" SelectCommandType="StoredProcedure">
                    <selectparameters>
                        <asp:ControlParameter ControlID="ddlAnno" PropertyName="SelectedValue" Name="anno" Type="Int32"></asp:ControlParameter>
                        <asp:ControlParameter ControlID="ddlMese" PropertyName="SelectedValue" Name="mese" Type="Int32"></asp:ControlParameter>
                        <asp:ControlParameter ControlID="ddlFiliale" PropertyName="SelectedValue" Name="chiaveFiliale" Type="Int32"></asp:ControlParameter>
                        <asp:ControlParameter ControlID="ddlVenditore" PropertyName="SelectedValue" Name="chiaveVenditore" Type="Int32"></asp:ControlParameter>
                        <asp:ControlParameter ControlID="ddlMarca" PropertyName="SelectedValue" Name="chiaveMarca" Type="Int32"></asp:ControlParameter>
                        <asp:ControlParameter ControlID="ddlModello" PropertyName="SelectedValue" Name="chiaveModello" Type="Int32"></asp:ControlParameter>
                    </selectparameters>
                </asp:SqlDataSource>
            </div>

            <div class="col-lg-6 col-xl-6">
            </div>
        </div>
    </section>
</asp:Content>

