<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="empresa.aspx.cs" Inherits="ProyectoIPC2.empresa" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="sit/styles.css">
    <title>Instituto Nacional de Turismo</title>

    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,700'>

      <link rel="stylesheet" href="tabs/css/style.css">

</head>
<body>
    
<nav class="nav justify-content-end">
  <a class="navbar-brand" href="#">Instituto Nacional de Turismo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="empresa.aspx">Inscribir</a>
      <a class="nav-item nav-link" href="Index.aspx">Regresar</a>
    </div>
  </div>
</nav>

    <form id="form1" runat="server">
        <div class="container" id="advanced-search-form">
        <h2>Inscripción Empresa</h2>
        
            <div class="form-group">
                <label for="first-name">Codigo</label>
                <asp:TextBox ID="codigo" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="last-name">Region</label>
                <asp:TextBox ID="region" runat="server" class="form-control" placeholder="Region"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="country">Nombre</label>
                <asp:TextBox ID="nombre" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="number">Descripción</label>
                <asp:TextBox ID="descripcion" runat="server" class="form-control" placeholder="Descripcion"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="country">Telefono</label>
                <asp:TextBox ID="telefono" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="number">Correo</label>
                <asp:TextBox ID="correo" runat="server" class="form-control" placeholder="Descripcion"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Foto</label>
                <asp:FileUpload ID="foto" runat="server" CssClass="active" />
            </div>
            <div class="form-group">
                <label for="email">Titulo Foto</label>
                <asp:TextBox ID="titulo" runat="server" class="form-control" placeholder="Titulo Foto"></asp:TextBox>
            </div>

    </div>
        <div class="container"> 
<section id="fancyTabWidget" class="tabs t-tabs">
        <ul class="nav nav-tabs fancyTabs" role="tablist">
        
                    <li class="tab fancyTab active">
                    <div class="arrow-down"><div class="arrow-down-inner"></div></div>	
                        <a id="tab0" href="#tabBody0" role="tab" aria-controls="tabBody0" aria-selected="true" data-toggle="tab" tabindex="0"><span class="fa fa-desktop"></span><span class="hidden-xs">Restaurante</span></a>
                    	<div class="whiteBlock"></div>
                    </li>
                    
                    <li class="tab fancyTab">
                    <div class="arrow-down"><div class="arrow-down-inner"></div></div>
                        <a id="tab1" href="#tabBody1" role="tab" aria-controls="tabBody1" aria-selected="true" data-toggle="tab" tabindex="0"><span class="fa fa-firefox"></span><span class="hidden-xs">Hotel</span></a>
                        <div class="whiteBlock"></div>
                    </li>
                    
                    <li class="tab fancyTab">
                    <div class="arrow-down"><div class="arrow-down-inner"></div></div>
                        <a id="tab2" href="#tabBody2" role="tab" aria-controls="tabBody2" aria-selected="true" data-toggle="tab" tabindex="0"><span class="fa fa-envira"></span><span class="hidden-xs">Museo</span></a>
                        <div class="whiteBlock"></div>
                    </li>
        </ul>
        <div id="myTabContent" class="tab-content fancyTabContent" aria-live="polite">
                    <div class="tab-pane  fade active in" id="tabBody0" role="tabpanel" aria-labelledby="tab0" aria-hidden="false" tabindex="0">
                        <div>
                        	<div class="row">
                            	
                                <div class="col-md-12">
                                    <div class="form-group">
                <label for="first-name">Codigo</label>
                <asp:TextBox ID="codres" runat="server" class="form-control"  ReadOnly="True"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="last-name">Especialidad</label>
                <asp:TextBox ID="especialidad" runat="server" class="form-control" placeholder="Especialidad"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="country">Tipica</label>
                <asp:DropDownList ID="tipica" runat="server" class="form-control">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="number">Mariscos</label>
                <asp:DropDownList ID="mariscos" runat="server" class="form-control">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="email">Postres</label>
                <asp:DropDownList ID="postres" runat="server" class="form-control">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
                                    <div class="clearfix"></div>
                                    <asp:Button ID="Button1" runat="server" Text="Ingresar" class="btn btn-info btn-lg btn-responsive" OnClick="Button1_Click" />
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane  fade" id="tabBody1" role="tabpanel" aria-labelledby="tab1" aria-hidden="true" tabindex="0">
                        <div class="row">
                            	
                                <div class="col-md-12">
                                    <div class="form-group">
                <label for="first-name">Codigo</label>
                <asp:TextBox ID="codhot" runat="server" class="form-control"  ReadOnly="True"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="last-name">Habitaciones</label>
                <asp:TextBox ID="habitaciones" runat="server" class="form-control" placeholder="Habitaciones"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="country">Internet</label>
                <asp:DropDownList ID="internet" runat="server" class="form-control">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="number">Cafeteria</label>
                <asp:DropDownList ID="cafeteria" runat="server" class="form-control">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="number">Parqueo</label>
                <asp:DropDownList ID="parqueo" runat="server" class="form-control">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="number">Piscina</label>
                <asp:DropDownList ID="piscina" runat="server" class="form-control">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="number">Seguridad</label>
                <asp:DropDownList ID="seguridad" runat="server" class="form-control">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="number">Gimnasio</label>
                <asp:DropDownList ID="gimnasio" runat="server" class="form-control">
                    <asp:ListItem>Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
                                    <div class="clearfix"></div>
                                    <asp:Button ID="Button2" runat="server" Text="Ingresar" class="btn btn-info btn-lg btn-responsive" OnClick="Button2_Click" />                                  
                                </div>
                            </div>
                    </div>
                    <div class="tab-pane  fade" id="tabBody2" role="tabpanel" aria-labelledby="tab2" aria-hidden="true" tabindex="0">
                        <div class="row">
                                <div class="col-md-12">
                                     <div class="form-group">
                <label for="first-name">Codigo</label>
                <asp:TextBox ID="codmu" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="last-name">Horario</label>
                <asp:TextBox ID="horario" runat="server" class="form-control" placeholder="Horario"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="country">Tarifa</label>
                <asp:TextBox ID="tarifa" runat="server" class="form-control" placeholder="Tarifa"></asp:TextBox>
            </div>
                                    <div class="clearfix"></div>
                                    <asp:Button ID="Button3" runat="server" Text="Ingresar" class="btn btn-info btn-lg btn-responsive" OnClick="Button3_Click" />
                                </div>
                            </div>
                    </div>
        </div>

    </section>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>

    <script src="tabs/js/index.js"></script>
    </form>
</body>
</html>