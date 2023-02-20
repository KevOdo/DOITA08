<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="title">
        <div class="container py-2 ">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-10 col-xl-10">
                    <h2 class="text-center">INSTABRO</h2>

                    <div class="images">
                        <asp:GridView ID="grdIMG" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

