<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ins_sitio.aspx.cs" Inherits="ProyectoIPC2.ins_sitio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="sit/styles.css">
    <title>Instituto Nacional de Turismo</title>
</head>
<body>
    
<nav class="nav justify-content-end">
  <a class="navbar-brand" href="#">Instituto Nacional de Turismo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="ins_sitio.aspx">Inscribir</a>
      <a class="nav-item nav-link" href="Index.aspx">Regresar</a>
    </div>
  </div>
</nav>

    <form id="form1" runat="server">
        <div class="container" id="advanced-search-form">
        <h2>Inscripción Sitio Turistico</h2>
        
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
                <label>Foto</label>
                <asp:FileUpload ID="foto" runat="server" CssClass="active" />
            </div>
            <div class="form-group">
                <label for="email">Titulo Foto</label>
                <asp:TextBox ID="titulo" runat="server" class="form-control" placeholder="Titulo Foto"></asp:TextBox>
            </div>
            <div class="clearfix"></div>
            <button type="submit" class="btn btn-info btn-lg btn-responsive" id="search"> <span class="glyphicon glyphicon-search"></span>Inscribir</button>
       
    </div>
    </form>
</body>
</html>
