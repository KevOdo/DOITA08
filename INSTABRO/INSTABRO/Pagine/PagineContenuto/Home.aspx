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
                                <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-primary sbtn" OnClick="Button1_Click" />
                            </div>
                        </div>
                        <div class="col-lg-2"></div>
                    </div>

                    <!-- Loaded Images -->
                    <div class="images">
                        <div runat="server" id="lit"></div>
                    </div>

                    <div id="popup" class="Popup">

                        <!-- The Close Button -->
                        <span class="close" onclick="closePopup()">&times;</span>

                        <div id="imgTitle"></div>
                        <!-- Modal Content (The Image) -->
                        <img class="PopupImage" id="popupIMG">

                        <!-- Modal Caption (Image Text) -->
                        <div id="caption"></div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <script>
        function showPopup(chiave, titolo, desc) {
            var popup = document.getElementById("popup");
            var img = document.getElementById(chiave);
            var popupIMG = document.getElementById("popupIMG");
            var imgTitle = document.getElementById("imgTitle");
            var caption = document.getElementById("caption");
            popup.style.display = "block";
            popupIMG.src = img.src;
            imgTitle.innerText = titolo;
            caption.innerText = desc;
        }

        function closePopup() {
            popup.style.display = "none";
        }
    </script>

</asp:Content>

