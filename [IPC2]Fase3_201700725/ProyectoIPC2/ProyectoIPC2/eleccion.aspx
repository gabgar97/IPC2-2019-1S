<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eleccion.aspx.cs" Inherits="ProyectoIPC2.eleccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!-- Required meta tags -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Page Title -->
    <title>Instituto Nacional de Turismo</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="info/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="info/css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="info/css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="info/css/set1.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="info/css/style.css">

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--============================= HEADER =============================-->
    <div class="nav-menu">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <a class="navbar-brand" href="index.html">Instituto Nacional de Turismo</a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-menu"></span>
              </button>
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="#">About</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- SLIDER -->
    <section class="slider d-flex align-items-center">
        <!-- <img src="images/slider.jpg" class="img-fluid" alt="#"> -->
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12">
                    <div class="slider-title_box">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-content_wrap">
                                    <h1>Decubre Guatemala</h1>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-10">
                                <form class="form-wrap mt-4">
                                    <div class="btn-group" role="group" aria-label="Basic example">
                                        <asp:TextBox ID="region" runat="server" class="btn-group1" ReadOnly="True"></asp:TextBox>
                                        <asp:TextBox ID="opcion" runat="server" class="btn-group2" ReadOnly="True"></asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Text="REGRESAR" class="btn-form" OnClick="Button1_Click" />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--// SLIDER -->
    <!--//END HEADER -->
   
    <!--============================= FEATURED PLACES =============================-->
    <section class="main-block light-bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>Featured Places</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                
                            <asp:Label ID="foto" runat="server" Text=""></asp:Label>
                            <asp:Label ID="titulo" runat="server" Text=""></asp:Label>
                            <div class="featured-title-box">
                                <ul></ul>
                                <span><li> <asp:Label ID="codigo" runat="server" Text=""></asp:Label></li></span>
                                <li><asp:Label ID="region1" runat="server" Text=""></asp:Label></li>
                                <li><asp:Label ID="nombre" runat="server" Text=""></asp:Label></li>
                                <li><asp:Label ID="descripcion" runat="server" Text=""></asp:Label></li>
                                <li><asp:Label ID="telefono" runat="server" Text=""></asp:Label></li>
                                <li><asp:Label ID="correo" runat="server" Text=""></asp:Label>
                            </div>
                        <br />
            </div>
            
        </div>
    </section>
    <!--//END FEATURED PLACES -->
    
    <!--============================= FOOTER =============================-->
    <footer class="main-block dark-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Instituto Nacional de Turismo</p>
                        
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--//END FOOTER -->




    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="info/js/jquery-3.2.1.min.js"></script>
    <script src="info/js/popper.min.js"></script>
    <script src="info/js/bootstrap.min.js"></script>

    <script>
        $(window).scroll(function() {
            // 100 = The point you would like to fade the nav in.

            if ($(window).scrollTop() > 100) {

                $('.fixed').addClass('is-sticky');

            } else {

                $('.fixed').removeClass('is-sticky');

            };
        });
    </script>

        </div>
    </form>
</body>
</html>
