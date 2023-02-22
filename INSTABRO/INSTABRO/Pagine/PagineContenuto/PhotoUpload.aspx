<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="PhotoUpload.aspx.cs" Inherits="PhotoUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="title">
        <div class="container py-2 ">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-10 col-xl-10">
                    <h2 class="text-center" id="titolo">CARICA IMMAGINE</h2>
                </div>
                <div class="row py-3">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <asp:FileUpload ID="flup" runat="server" />
                                    </div>
                                    <div class="col-lg-6">
                                        <asp:Button ID="btnCarica" runat="server" Text="Carica Immagine" OnClick="btnCarica_Click" />
                                    </div>
                                </div>
                                <div class="form-control">
                                    <asp:Label ID="lblTitolo" runat="server" Text="Titolo:"></asp:Label>
                                    <asp:TextBox ID="txtTitolo" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-control">
                                    <asp:Label ID="lblDescrizione" runat="server" Text="Descrizione:"></asp:Label>
                                    <asp:TextBox ID="txtDescrizione" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-control">
                                    <asp:Label ID="lblAlbum" runat="server" Text="Album:"></asp:Label>
                                    <asp:DropDownList ID="ddlAlbum" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>

