<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>GOS Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
    <link rel="heritagepanda-desktop.png" type="image/x-icon" href="~/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100 gradient-custom">
            <div class="container py-5">
                <div class="row d-flex justify-content-center align-items-center">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">


                                <img class="py-2" src="assets/immagini/ag2-white.png" height="120" />
                                <h2 class="fw-bold text-uppercase py-1">Portale Dipendenti</h2>

                                <!-- Email -->
                                <div class="form-outline form-white">
                                    <label class="form-label" for="USR">Email</label>
                                    <asp:TextBox ID="USR" runat="server" class="form-control form-control-lg" TextMode="Email"></asp:TextBox>
                                </div>

                                <!-- Password -->
                                <div class="form-outline form-white">
                                    <label class="form-label" for="PWD">Password</label>
                                    <asp:TextBox ID="PWD" runat="server" class="form-control form-control-lg" TextMode="Password"></asp:TextBox>
                                </div>

                                <!-- Bottone per eseguire il login -->
                                <div class="py-2">
                                    <asp:Button ID="btnLogin" runat="server" Text="LOGIN" class="btn btn-outline-light btn-lg" OnClick="btnLogin_Click" />
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
