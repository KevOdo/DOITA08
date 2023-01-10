<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="ModMarca.aspx.cs" Inherits="_ModMarca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container py-5">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Modifica Marca</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-outline">
                            <asp:Literal ID="lit1" runat="server">Marca da Modificare:</asp:Literal>
                            <asp:DropDownList ID="ddlMarcaMod" runat="server" DataTextField="MARCA" DataValueField="chiave" DataSourceID="sdsMARCHE" AutoPostBack="True"></asp:DropDownList><asp:SqlDataSource runat="server" ID="sdsMARCHE" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="SELECT [chiave], [MARCA] FROM [MARCHE] ORDER BY [MARCA]"></asp:SqlDataSource>
                        </div>
                        <div class="form-outline">
                            <asp:Literal ID="lit2" runat="server">Nuovo nome:</asp:Literal>
                            <asp:TextBox ID="txtNomeNuovo" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnMarca" CssClass="my-1 btn btn-primary" runat="server" Text="Modifica Marca" OnClick="btnMarca_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-lg-8 col-xl-6">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sdsMARCHE" CssClass="table table-striped">
                    <Columns>
                        <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA"></asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:AUTOSALONIConnectionString %>" SelectCommand="SELECT [MARCA] FROM [MARCHE] ORDER BY [MARCA]"></asp:SqlDataSource>
            </div>
        </div>
    </section>
</asp:Content>

