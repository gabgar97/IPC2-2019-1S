<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seleccion.aspx.cs" Inherits="ProyectoIPC2.seleccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="propiedades/img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="codepixer">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- Site Title -->
		<title>Instituto Nacional de Turismo</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="propiedades/css/linearicons.css">
			<link rel="stylesheet" href="propiedades/css/bootstrap.css">
			<link rel="stylesheet" href="propiedades/css/nice-select.css">								
			<link rel="stylesheet" href="propiedades/css/animate.min.css">
			<link rel="stylesheet" href="propiedades/css/owl.carousel.css">
			<link rel="stylesheet" href="propiedades/css/main.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <section class="products-area section-gap">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col-md-12 pb-40 header-text text-center">
							<h1 class="pb-10">Seleccione la Región Deseada</h1>
						</div>
					</div>							
					<div class="row">
						<div class="col-lg-3 col-md-6">
							<div class="single-product">
								<div class="thumb">
									<img src="propiedades/img/norte.png" alt="">
								</div>
								<div class="details">
									<h4>Norte</h4>
                                    <center>
                                        <asp:RadioButtonList ID="norte" runat="server" value="norte" Width="93px">
                                            <asp:ListItem Text="Empresa" Value="empresa"></asp:ListItem> 
                                            <asp:ListItem Text="Sitio" Value="sitio"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </center>
                                    <asp:Button ID="Button1" runat="server" Text="Ir" class="primary-btn text-uppercase" OnClick="Button1_Click" />
								</div>
							</div>
						</div>	
						<div class="col-lg-3 col-md-6">
							<div class="single-product">
								<div class="thumb">
									<img src="propiedades/img/sur.png" alt="">
								</div>
								<div class="details">
									<h4>Sur</h4>
                                    <center>
									    <asp:RadioButtonList ID="sur" runat="server" value="sur" Width="93px">
                                            <asp:ListItem Text="Empresa" Value="empresa"></asp:ListItem> 
                                            <asp:ListItem Text="Sitio" Value="sitio"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </center>
                                    <asp:Button ID="Button2" runat="server" Text="Ir" class="primary-btn text-uppercase" OnClick="Button2_Click" />
								</div>
							</div>
						</div>	
						<div class="col-lg-3 col-md-6">
							<div class="single-product">
								<div class="thumb">
									<img src="propiedades/img/este.png" alt="">
								</div>
								<div class="details">
									<h4>Oriente</h4>
                                    <center>
									    <asp:RadioButtonList ID="oriente" runat="server" value="oriente" Width="93px">
                                            <asp:ListItem Text="Empresa" Value="empresa"></asp:ListItem> 
                                            <asp:ListItem Text="Sitio" Value="sitio"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </center>
                                    <asp:Button ID="Button3" runat="server" Text="Ir" class="primary-btn text-uppercase" OnClick="Button3_Click" />
								</div>
							</div>
						</div>	
						<div class="col-lg-3 col-md-6">
							<div class="single-product">
								<div class="thumb">
									<img src="propiedades/img/oeste.png" alt="">
								</div>
								<div class="details">
									<h4>Occidente</h4>
                                    <center>
									    <asp:RadioButtonList ID="occidente" runat="server" value="occidente" Width="93px">
                                            <asp:ListItem Text="Empresa" Value="empresa"></asp:ListItem> 
                                            <asp:ListItem Text="Sitio" Value="sitio"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </center>
                                    <asp:Button ID="Button4" runat="server" Text="Ir" class="primary-btn text-uppercase" OnClick="Button4_Click" />
								</div>
							</div>
						</div>																								
					</div>
				</div>	
			</section>
			<!-- End products Area -->

			
			
			
			<!-- Footer -->
  <footer class="bg-black small text-center text-white-50">
    <div class="container">
      Copyright &copy; Instituto Nacional de Turismo 2019
    </div>
  </footer>

			<script src="propiedades/js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="propiedades/js/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="propiedades/js/easing.min.js"></script>			
			<script src="propiedades/js/hoverIntent.js"></script>
			<script src="propiedades/js/superfish.min.js"></script>	
			<script src="propiedades/js/jquery.ajaxchimp.min.js"></script>
			<script src="propiedades/js/jquery.magnific-popup.min.js"></script>	
			<script src="propiedades/js/owl.carousel.min.js"></script>	
			<script src="propiedades/js/hexagons.min.js"></script>							
			<script src="propiedades/js/jquery.nice-select.min.js"></script>	
			<script src="propiedades/js/jquery.counterup.min.js"></script>
			<script src="propiedades/js/waypoints.min.js"></script>							
			<script src="propiedades/js/mail-script.js"></script>	
			<script src="propiedades/js/main.js"></script>	

        </div>
    </form>
</body>
</html>
