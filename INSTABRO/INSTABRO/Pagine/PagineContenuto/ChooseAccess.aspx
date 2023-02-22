<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ChooseAccess.aspx.cs" Inherits="ChooseAccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="title">
        <div class="container py-2 ">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-10 col-xl-10">
                    <h2 class="text-center" id="titolo">LOGIN/REGISTER</h2>
                </div>
                <div class="row py-4">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                LOGIN
                            </div>
                            <div class="card-body">
                                <div class="form-element">
                                    <asp:Label ID="lblEmailLogin" runat="server" Text="Email:"></asp:Label>
                                    <asp:TextBox ID="txtEmailLogin" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-element">
                                    <asp:Label ID="lblPWD" runat="server" Text="Password:"></asp:Label>
                                    <asp:TextBox ID="txtPWD" runat="server"></asp:TextBox>
                                </div>
                                <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                REGISTER
                            </div>
                            <div class="card-body">
                                <div class="form-element">
                                    <asp:Label ID="lblEmailRegister" runat="server" Text="Email:"></asp:Label>
                                    <asp:TextBox ID="txtEmailRegister" runat="server"></asp:TextBox>
                                </div>
                                <asp:Button ID="btnRegister" runat="server" Text="REGISTER" OnClick="btnRegister_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

