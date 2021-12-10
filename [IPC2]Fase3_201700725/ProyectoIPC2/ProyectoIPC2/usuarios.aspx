<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="ProyectoIPC2.usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Instituto Nacional de Turismo</title>

        <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,700'>

      <link rel="stylesheet" href="tabs/css/style.css">


</head>
<body>
    <form id="fomr1" runat="server">
        <div class="container"> 
<section id="fancyTabWidget" class="tabs t-tabs">
        <ul class="nav nav-tabs fancyTabs" role="tablist">
        
                    <li class="tab fancyTab active">
                    <div class="arrow-down"><div class="arrow-down-inner"></div></div>	
                        <a id="tab0" href="#tabBody0" role="tab" aria-controls="tabBody0" aria-selected="true" data-toggle="tab" tabindex="0"><span class="fa fa-desktop"></span><span class="hidden-xs">Ingresar</span></a>
                    	<div class="whiteBlock"></div>
                    </li>
                    
                    <li class="tab fancyTab">
                    <div class="arrow-down"><div class="arrow-down-inner"></div></div>
                        <a id="tab1" href="#tabBody1" role="tab" aria-controls="tabBody1" aria-selected="true" data-toggle="tab" tabindex="0"><span class="fa fa-firefox"></span><span class="hidden-xs">Crear Usuario</span></a>
                        <div class="whiteBlock"></div>
                    </li>
        </ul>
        <div id="myTabContent" class="tab-content fancyTabContent" aria-live="polite">
                    <div class="tab-pane  fade active in" id="tabBody0" role="tabpanel" aria-labelledby="tab0" aria-hidden="false" tabindex="0">
                        <div>
                        	<div class="row">
                            	
                                <div class="col-md-12">
                                    <div class="form-group">
                     <asp:Label ID="mensaje2" runat="server" Text=""></asp:Label>
                <label for="first-name">Usuario</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="last-name">Contraseña</label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
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
                <label for="first-name">Nombre Completo</label>
                <asp:TextBox ID="nc" runat="server" class="form-control" ></asp:TextBox>
                 <asp:Label ID="mensaje" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group">
                <label for="last-name">Usuario</label>
                <asp:TextBox ID="usuario" runat="server" class="form-control" placeholder="Usuario"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="Verificar" OnClick="Button3_Click" />
            </div>
            <div class="form-group">
                <label for="last-name">Contraseña</label>
                <asp:TextBox ID="contra" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="last-name">Repita Contraseña</label>
                <asp:TextBox ID="contra1" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
            </div>
                                    <div class="clearfix"></div>
                                    <asp:Button ID="Button2" runat="server" Text="Ingresar" class="btn btn-info btn-lg btn-responsive" OnClick="Button2_Click" />                                  
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
