<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Immagine.aspx.cs" Inherits="Pagine_PaginePopup_Immagine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../assets/css/style.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <section class="title">
            <div class="container py-2 ">
                <div class="row d-flex justify-content-center align-items-center">
                    <div class="col-lg-10 col-xl-10">
                        <h2 class="text-center" id="titolo" runat="server"></h2>
                        <asp:Image ID="img" CssClass="PopupImage" runat="server" ImageUrl="" />
                        <div runat="server" id="lit"></div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
