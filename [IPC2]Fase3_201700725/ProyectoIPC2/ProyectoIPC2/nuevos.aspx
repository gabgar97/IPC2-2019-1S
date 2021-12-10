<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nuevos.aspx.cs" Inherits="ProyectoIPC2.nuevos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Instituto Nacional de Turismo</title>

     <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/owl.carousel.css">
    <link rel="stylesheet" href="datos/css/owl.theme.css">
    <link rel="stylesheet" href="datos/css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/normalize.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="datos/css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="datos/css/calendar/fullcalendar.print.min.css">
    <!-- forms CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/form/all-type-forms.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="datos/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="datos/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="datos/js/vendor/modernizr-2.8.3.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="color-line"></div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="back-link back-backend">
                    <a href="admin.aspx" class="btn btn-primary">Regresar</a>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
            <div class="col-md-6 col-md-6 col-sm-6 col-xs-12">
                <div class="hpanel">
                    <div class="panel-body">
                        <form action="#" id="loginForm">
                            <div class="row">
                                <div class="form-group col-lg-12">
                                    <label>Codigo</label>
                                    <asp:TextBox ID="codigo" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group col-lg-12">
                                    <label>Nombre</label>
                                    <asp:TextBox ID="nombre" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group col-lg-12">
                                    <label>Correo</label>
                                    <asp:TextBox ID="correo" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group col-lg-12">
                                    <label>Telefono</label>
                                    <asp:TextBox ID="telefono" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group col-lg-12">
                                    <label>Usuario</label>
                                    <asp:TextBox ID="usuario" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group col-lg-12">
                                    <label>Contraseña</label>
                                    <asp:TextBox ID="contra" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group col-lg-12">
                                    <asp:DropDownList ID="tipo" runat="server" class="form-control">
                                        <asp:ListItem Value="Tecnico">Tecnico</asp:ListItem>
                                        <asp:ListItem Value="Agente">Agente</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="text-center">
                                <asp:Button ID="registro" runat="server" Text="Registrar" class="btn btn-success loginbtn" OnClick="registro_Click" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
        </div>
    </div>

    <!-- jquery
		============================================ -->
    <script src="datos/js/vendor/jquery-1.11.3.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="datos/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="datos/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="datos/js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="datos/js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="datos/js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="datos/js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="datos/js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="datos/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="datos/js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="datos/js/metisMenu/metisMenu.min.js"></script>
    <script src="datos/js/metisMenu/metisMenu-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="datos/js/tab.js"></script>
    <!-- icheck JS
		============================================ -->
    <script src="datos/js/icheck/icheck.min.js"></script>
    <script src="datos/js/icheck/icheck-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="datos/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="datos/js/main.js"></script>

        </div>
    </form>
</body>
</html>
