<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index_administrador.aspx.cs" Inherits="Marios_Aplicativo.index_administrador" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>RECEIPES Bootstarp responsive Website Template| Home :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--Animation-->
<script src="js/wow.min.js"></script>
<link href="css/animate.css" rel='stylesheet' type='text/css' />
<script>
    new WOW().init();
</script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1200);
        });
    });
		</script>
</head>
<body>
    <!-- header-section-starts -->
	<div class="header">
		<div class="container">
			<div class="top-header">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" class="img-responsive" alt="" /></a>
				</div>
				<div class="queries">
					<p><span>Bienvenido </span><asp:Label ID="label_nombre_apellido" runat="server" Text="Label"></asp:Label></p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
			<div class="menu-bar">
			<div class="container">
				<div class="top-menu">
					<ul>
						<li class="active"><a href="#Home" class="scroll">Home</a></li>|
						<li><a href="Menu_alimentos.aspx"> AGREGAR ALIMENTOS</a></li>|
						<li><a href="construir_plato.aspx">CONSTRUIR PLATOS</a></li>|
						<li><a href="contact.html">MENU DEL DíA</a></li>|
                        <li><a href="contact.html">Reportes</a></li>
						<div class="clearfix"><Reportes</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="banner wow fadeInUp" data-wow-delay="0.4s" id="Home">
		    <div class="container">
				<div class="banner-info">
					<div class="banner-info-head text-center wow fadeInLeft" data-wow-delay="0.5s">
	  	
				</div>
			</div>
		</div>
	</div>

		<div class="ordering-section" id="Order">
			<div class="container">
				

</body>
</html>
