<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="icon" type="image/png" sizes="64x64" href="/assets/images/amatron-icon.png" />
    <script>
        $(document).ready(function () {
            //Handles menu drop down
            $('.dropdown-menu').find('form').click(function (e) {
                e.stopPropagation();
            });
        });
        function openRightMenu() {            document.getElementById("rightMenu").style.display = "block";        }        function closeRightMenu() {            document.getElementById("rightMenu").style.display = "none";        }
    </script>
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-default">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img class="logo" src="/assets/images/amatron.png" />
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#">Contact</a> </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">Shop </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Mobiles</a></li>
                                <li><a class="dropdown-item" href="#">Laptops</a></li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li><a class="dropdown-item" href="#">Accessories</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="input-group searchbar" >
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search" />
                        <button class="btn logoColor input-group-append" type="submit">Search</button>
                    </div>
                    <div class="destra">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="nav-item"><a class="nav-link">Sign Up</a></li>
                            <li class="dropdown nav-item">
                                <a class="dropdown-toggle nav-link" data-toggle="dropdown">Sign in <b class="caret"></b></a>
                                <ul class="dropdown-menu dMenu black">
                                    <li class="cont">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form" role="form" method="post" accept-charset="UTF-8" id="login-nav">
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                                        <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required />
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="sr-only" for="exampleInputPassword2">Password</label>
                                                        <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required />
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" />
                                                            Remember me                                      
                                                        </label>
                                                    </div>
                                                    <div class="form-group">
                                                        <button type="submit" class="btn btn-success btn-block">Sign in</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <div>
                            <div onclick="openRightMenu()" class="cart">
                                <svg class="cart" xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                                    <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <div class="w3-sidebar w3-bar-block w3-card w3-animate-right sidebar" id="rightMenu">
            <button onclick="closeRightMenu()" class="w3-bar-item w3-button w3-large">&times;</button>
            <a href="#" class="w3-bar-item w3-button">Link 1</a>            <a href="#" class="w3-bar-item w3-button">Link 2</a>            <a href="#" class="w3-bar-item w3-button">Link 3</a>
        </div>
    </form>
</body>
</html>
