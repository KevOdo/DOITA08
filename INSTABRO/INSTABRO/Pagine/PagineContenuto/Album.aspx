<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Album.aspx.cs" Inherits="Album" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="title">
        <div class="container py-2 ">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-10 col-xl-10">
                    <h2 class="text-center" id="titolo">ALBUM</h2>
                    <div class="row py-4">
                        <div class="col-lg-4"></div>
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-header">
                                    Carica Nuovo Album
                                </div>
                                <div class="card-body">
                                    <asp:TextBox ID="txtAlbum" runat="server"></asp:TextBox>
                                    <asp:Button ID="btnCarica" runat="server" Text="Carica" OnClick="btnCarica_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4"></div>
                    </div>
                    <div id="albums" runat="server">
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

