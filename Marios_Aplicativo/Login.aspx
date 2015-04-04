<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Marios_Aplicativo.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title> login Mario's</title>
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
					<a href="login.aspx"><img src="images/logo.png" class="img-responsive" alt="" /></a>
				</div>
				<div class="queries">
					<p>Preguntas? Llame al<span>000-0000 </span><label>Horario de Pedidos(11AM a 11PM)</label></p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
			<div class="menu-bar">
			<div class="container">
				<div class="top-menu">
					<ul>
						<li class="active"><a href="index.html">Home</a></li>|
					</ul>
				</div>				
				</div>
		</div>
	</div>
	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div class="content">
	<div class="container">
		<div class="login-page">
			   <div class="account_grid">
			   <div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
			  	 <h3>NUEVOS CLIENTES</h3>
				 <a class="acount-btn" href="register.html">Crear una cuenta</a>
			   </div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
			  	<h3>CLIENTES REGRISTRADOS</h3>
				<p>Si tienes una cuenta con nosotros, ingresa aqui.</p>
                   <form id="form1" runat="server">
				   <div>
					   <span>Usuario<label>*</label></span>
					<asp:TextBox ID="txt_id_usuario" runat="server"></asp:TextBox>
				  </div>
				  <div>
					<span>Contraseña<label>*</label></span>
					<asp:TextBox ID="txt_contrasena_usuario" runat="server" TextMode="Password"  ></asp:TextBox> 
				  </div>
				  <a class="forgot" href="#">Olvidasta tu contraseña?</a>
				 <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
             Text="Login" />
			    </form>
			   </div>	
			 </div>
		   </div>
</div>
<div class="special-offers-section">
			<div class="container">
				<div class="special-offers-section-head text-center dotted-line">
					
				</div>
				<div class="special-offers-section-grids">
				 <div class="m_3"><span class="middle-dotted-line"> </span> </div>
				   <div class="container">
					  <ul id="flexiselDemo3">
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/cuisine5.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/cuisine4.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/cuisine2.jpg" alt=""/>
								</div>
								<div class="offer-text">
									
									<span></span>
								</div>
								
								<div class="clearfix"></div>
								</div>
						</li>
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/cuisine1.jpg" alt=""/>
								</div>
								<div class="offer-text">
								
									<span></span>
								</div>
								
								<div class="clearfix"></div>
								</div>
					    </li>
					 </ul>
				 <script type="text/javascript">
				     $(window).load(function () {

				         $("#flexiselDemo3").flexisel({
				             visibleItems: 3,
				             animationSpeed: 1000,
				             autoPlay: true,
				             autoPlaySpeed: 3000,
				             pauseOnHover: true,
				             enableResponsiveBreakpoints: true,
				             responsiveBreakpoints: {
				                 portrait: {
				                     changePoint: 480,
				                     visibleItems: 1
				                 },
				                 landscape: {
				                     changePoint: 640,
				                     visibleItems: 2
				                 },
				                 tablet: {
				                     changePoint: 768,
				                     visibleItems: 3
				                 }
				             }
				         });

				     });
				    </script>
				    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
				</div>
			</div>
		</div>
		</div>
<div class="clearfix"></div>
		<div class="contact-section" id="contact">
			<div class="container">
				<div class="contact-section-grids">
					<div class="col-md-3 contact-section-grid">
						<h4>Site Links</h4>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">About Us</a></li>
						</ul>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">Contact Us</a></li>
						</ul>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">Privacy Policy</a></li>
						</ul>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">Terms of Use</a></li>
						</ul>
					</div>
					<div class="col-md-3 contact-section-grid">
						<h4>Site Links</h4>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">About Us</a></li>
						</ul>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">Contact Us</a></li>
						</ul>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">Privacy Policy</a></li>
						</ul>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">Terms of Use</a></li>
						</ul>
					</div>
			 </div>
		</div>
	</div>
	<!-- content-section-ends -->
	<!-- footer-section-starts -->
	<div class="footer">
		<div class="container">
			<p class="wow fadeInLeft" data-wow-delay="0.4s">&copy; 2014  All rights  Reserved | Template by &nbsp;<a href="http://w3layouts.com" target="target_blank">W3Layouts</a></p>
		</div>
	</div>
	<!-- footer-section-ends -->
	  <script type="text/javascript">
	      $(document).ready(function () {
	          /*
	          var defaults = {
	          containerID: 'toTop', // fading element id
	          containerHoverID: 'toTopHover', // fading element hover id
	          scrollSpeed: 1200,
	          easingType: 'linear' 
	          };
	          */

	          $().UItoTop({ easingType: 'easeOutQuart' });

	      });
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>
