<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="title">
        <div class="container py-2 ">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-lg-10 col-xl-10">
                    <h2 class="text-center" id="titolo">INSTABRO</h2>

                    <!-- SearcgBar -->
                    <div class="row py-2">
                        <div class="col-lg-2"></div>
                        <div class="col-lg-8">
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i></span>
                                <asp:TextBox ID="txtSearch" runat="server" class="form-control" placeholder="Cerca per titolo, album o descrizione..."></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-primary" OnClick="Button1_Click" />
                            </div>
                        </div>
                        <div class="col-lg-2"></div>
                    </div>

                    <!-- Loaded Images -->
                    <div class="images">
                        <div runat="server" id="lit"></div>
                    </div>

                    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
                    </asp:ScriptManager>

                    <button style="display:none" id="btnHdn2" runat="server"></button>
                    <!-- controller per popup dell'Immagine -->
                    <cc1:ModalPopupExtender ID="mpExtender" runat="server" PopupControlID="pnlModifica" TargetControlID="btnHdn2"
                        BackgroundCssClass="Background" BehaviorID="mpExtender_b" >
                    </cc1:ModalPopupExtender>

                    <!-- Popup per visualizzare l'immagine -->
                    <asp:Panel
                        ID="pnlModifica"
                        runat="server"
                        CssClass="Popup"
                        align="center"
                        Style="display: none" OnLoad="pnlModifica_Load">
                        <%--ci pensa lo script manager a renderlo visibile--%>
                        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
                        <iframe style="width: 850px; height: 580px;" id="Iframe1" src="/Pagine/PaginePopup/Immagine.aspx" runat="server" visible="false" ></iframe>
                        <br />
                        <asp:Button ID="btnCloseMod" runat="server" Text="x" CssClass="usrCloseBtn" />
                        <%--chiude il popup--%>
                    </asp:Panel>

                </div>
            </div>
        </div>
    </section>

    <script>
        function showPopup(chiave) {
            PageMethods.setKey(chiave);
            $find('mpExtender_b').Enabled = true;
            $find('mpExtender_b').show();
        }
    </script>

</asp:Content>

