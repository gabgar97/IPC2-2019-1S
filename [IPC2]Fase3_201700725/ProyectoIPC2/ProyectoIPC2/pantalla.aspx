<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pantalla.aspx.cs" Inherits="ProyectoIPC2.pantalla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Instituto Nacional de Turismo</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="assets/css/bootstrap.css" rel="stylesheet">
 <link href="assets/css/facebook.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="wrapper">
			<div class="box">
				<div class="row row-offcanvas row-offcanvas-left">
					
					<!-- sidebar -->
					<div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">
					  
						<ul class="nav">
							<li><a href="#" data-toggle="offcanvas" class="visible-xs text-center"><i class="glyphicon glyphicon-chevron-right"></i></a></li>
						</ul>
					   
						<ul class="nav hidden-xs" id="lg-menu">
							<li class="active"><a href="#featured"><i class="glyphicon glyphicon-list-alt"></i> <asp:Label ID="Label1" runat="server" Text=""></asp:Label></a></li>
						</ul>
						<ul class="list-unstyled hidden-xs" id="sidebar-footer">
							<li>
							  <a><h3>INDT</h3> <i class="glyphicon glyphicon-heart-empty"></i>Guatemala</a>
							</li>
						</ul>
					  
						<!-- tiny only nav-->
					  <ul class="nav visible-xs" id="xs-menu">
							<li><a href="#featured" class="text-center"><i class="glyphicon glyphicon-list-alt"></i></a></li>
							<li><a href="#stories" class="text-center"><i class="glyphicon glyphicon-list"></i></a></li>
							<li><a href="#" class="text-center"><i class="glyphicon glyphicon-paperclip"></i></a></li>
							<li><a href="#" class="text-center"><i class="glyphicon glyphicon-refresh"></i></a></li>
						</ul>
					  
					</div>
					<!-- /sidebar -->
				  
					<!-- main right col -->
					<div class="column col-sm-10 col-xs-11" id="main">
						
						<!-- top nav -->
						<div class="navbar navbar-blue navbar-static-top">  
							<div class="navbar-header">
							  <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							  </button>
							  </div>
							<nav class="collapse navbar-collapse" role="navigation">
							<form class="navbar-form navbar-left">
								<div class="input-group input-group-sm" style="max-width:360px;">
								   <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Search"></asp:TextBox>
								  <div class="input-group-btn">
									<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
								  </div>
								</div>
							</form>
							<ul class="nav navbar-nav">
							  <li>
								<a href="#"><i class="glyphicon glyphicon-home"></i> Home</a>
							  </li>
							  <li>
								<a href="#postModal" role="button" data-toggle="modal"><i class="glyphicon glyphicon-plus"></i> Post</a>
							  </li>
							  <li>
								<a href="#"><span class="badge">badge</span></a>
							  </li>
							</ul>
							<ul class="nav navbar-nav navbar-right">
							  <li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i></a>
								<ul class="dropdown-menu">
								  <li><a href="">More</a></li>
								  <li><a href="">More</a></li>
								  <li><a href="">More</a></li>
								  <li><a href="">More</a></li>
								  <li><a href="">More</a></li>
								</ul>
							  </li>
							</ul>
							</nav>
						</div>
						<!-- /top nav -->
					  
						<div class="padding">
							<div class="full col-sm-9">
							  
								<!-- content -->                      
								<div class="row">
								  
								 <!-- main col left --> 
								 <div class="col-sm-5">
								   
									  <div class="panel panel-default">
										
										<div class="panel-body">
                                            <asp:GridView ID="tabla" runat="server"></asp:GridView>
										  </p>
										</div>
									  </div>

								   
									  <div class="panel panel-default">
										<div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Bootstrap Examples</h4></div>
										  <div class="panel-body">
											<div class="list-group">
											  <a href="http://usebootstrap.com/theme/facebook" class="list-group-item">Modal / Dialog</a>
											  <a href="http://usebootstrap.com/theme/facebook" class="list-group-item">Datetime Examples</a>
											  <a href="http://usebootstrap.com/theme/facebook" class="list-group-item">Data Grids</a>
											</div>
										  </div>
									  </div>
								   
									  <div class="well"> 
										   <form class="form-horizontal" role="form">
											<h4>What's New</h4>
											 <div class="form-group" style="padding:14px;">
											  <textarea class="form-control" placeholder="Update your status"></textarea>
											</div>
											<button class="btn btn-primary pull-right" type="button">Post</button><ul class="list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
										  </form>
									  </div>
								   
									  <div class="panel panel-default">
										 <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Comenta</h4></div>
										  <div class="panel-body">
											<div class="clearfix"></div>
                                              <asp:Label ID="Label2" runat="server" Text="Selecciones"></asp:Label>
                                              <asp:DropDownList ID="eleccion" runat="server">
                                                  <asp:ListItem Value="sitio">Sitio</asp:ListItem>
                                                  <asp:ListItem Value="empresa">Empresa</asp:ListItem>
                                              </asp:DropDownList>
                                              <br />
                                              <asp:Label ID="Label3" runat="server" Text="Nombre del Lugar"></asp:Label>
                                              <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
                                              <br />
                                              <asp:Label ID="Label4" runat="server" Text="Comentario"></asp:Label>
                                              <asp:TextBox ID="comentario" runat="server"></asp:TextBox>
                                              <br />
                                              <asp:Button ID="Button1" runat="server" Text="Comentar" OnClick="Button1_Click" />
											
										  </div>
									  </div>
								   </div>
								  
								  <!-- main col right -->
								  <div class="col-sm-7">
									   
										<div class="well"> 
										   <form class="form">
											<h4>Filtra</h4>
											<div class="input-group text-center">
											
                                                <center>
                                                    <asp:DropDownList ID="puesto" runat="server" class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" >
                                                        <asp:ListItem>------------</asp:ListItem>
                                                        <asp:ListItem Text="Empresa" Value="empresa"></asp:ListItem> 
                                                        <asp:ListItem Text="Sitio" Value="sitio"></asp:ListItem>
                                                    </asp:DropDownList>

                                                    <asp:DropDownList ID="ubi" runat="server" class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" >
                                                        <asp:ListItem>-----------</asp:ListItem>
                                                        <asp:ListItem Text="Norte" Value="norte"></asp:ListItem> 
                                                        <asp:ListItem Text="Sur" Value="sur"></asp:ListItem>
                                                        <asp:ListItem Text="Este" Value="este"></asp:ListItem>
                                                        <asp:ListItem Text="Oeste" Value="oeste"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </center>
                                                
											  <span class="input-group-btn"><asp:Button ID="Button2" runat="server" Text="OK" class="btn btn-lg btn-primary" OnClick="Button2_Click"/></span>
											</div>
										  </form>
										</div>
							  
									   
									
									   <div class="panel panel-default">
										 <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Stackoverflow</h4></div>
										  <div class="panel-body">
											<asp:GridView ID="tabla1" runat="server"></asp:GridView>
											<div class="clearfix"></div>
											
											<hr>
											<form>
											<div class="input-group">
											  <div class="input-group-btn">
											  <button class="btn btn-default">+1</button><button class="btn btn-default"><i class="glyphicon glyphicon-share"></i></button>
											  </div>
											  <input class="form-control" placeholder="Add a comment.." type="text">
											</div>
											</form>
											
										  </div>
									   </div>

								  </div>
							   </div><!--/row-->
							  
							
							  
								<div class="row" id="footer">    
								  <div class="col-sm-6">
									
								  </div>
								  
								</div>
							  
							  <hr>
							  
							  
								
							  <hr>
								
							  
							</div><!-- /col-9 -->
						</div><!-- /padding -->
					</div>
					<!-- /main -->
				  
				</div>
			</div>
		</div>


		<!--post modal-->
		<div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		  <div class="modal-dialog">
		  <div class="modal-content">
			  <div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					Update Status
			  </div>
			  <div class="modal-body">
				  <form class="form center-block">
					<div class="form-group">
					  <textarea class="form-control input-lg" autofocus="" placeholder="What do you want to share?"></textarea>
					</div>
				  </form>
			  </div>
			  <div class="modal-footer">
				  <div>
				  <button class="btn btn-primary btn-sm" data-dismiss="modal" aria-hidden="true">Post</button>
					<ul class="pull-left list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
				  </div>	
			  </div>
		  </div>
		  </div>
		</div>
        
        <script type="text/javascript" src="assets/js/jquery.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.js"></script>
        <script type="text/javascript">
        $(document).ready(function() {
			$('[data-toggle=offcanvas]').click(function() {
				$(this).toggleClass('visible-xs text-center');
				$(this).find('i').toggleClass('glyphicon-chevron-right glyphicon-chevron-left');
				$('.row-offcanvas').toggleClass('active');
				$('#lg-menu').toggleClass('hidden-xs').toggleClass('visible-xs');
				$('#xs-menu').toggleClass('visible-xs').toggleClass('hidden-xs');
				$('#btnShow').toggle();
			});
        });
        </script>

        </div>
    </form>
</body>
</html>
