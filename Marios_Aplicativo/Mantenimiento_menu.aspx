<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mantenimiento_menu.aspx.cs" Inherits="Marios_Aplicativo.Mantenimiento_menu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RECEIPES Bootstarp responsive Website Template| order page :: w3layouts</title>
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
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
 $(window).load(function(){
      $('.slider')._TMS({
              show:0,
              pauseOnHover:false,
              prevBu:'.prev',
              nextBu:'.next',
              playBu:false,
              duration:800,
              preset:'fade', 
              pagination:true,//'.pagination',true,'<ul></ul>'
              pagNums:false,
              slideshow:8000,
              numStatus:false,
              banners:false,
          waitBannerAnimation:false,
        progressBar:false
      })  
      });
      
     $(window).load (
    function(){$('.carousel1').carouFredSel({auto: false,prev: '.prev',next: '.next', width: 960, items: {
      visible : {min: 1,
       max: 4
},
height: 'auto',
 width: 240,

    }, responsive: false, 
    
    scroll: 1, 
    
    mousewheel: false,
    
    swipe: {onMouse: false, onTouch: false}});
    
    
    });      

     </script>
<script src="js/jquery.easydropdown.js"></script>
</head>
<body>
 
    <!-- header-section-starts -->
    <form
	<div class="header">
		<div class="container">
			<div class="top-header">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" class="img-responsive" alt="" /></a>
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
						<li><a href="popular-restaurents.html">Popular Restaurants</a></li>|
						<li><a href="Order.html">Order</a></li>|
						<li><a href="contact.html">contact</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="login-section">
					<ul>
						<li><a href="login.html">Login</a>  </li> |
						<li><a href="register.html">Register</a> </li> |
						<li><a href="#">Help</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</div>
	<!-- header-section-ends -->
	<div class="order-section-page">
		<div class="ordering-form">
			<div class="container">
			<div class="order-form-head text-center wow bounceInLeft" data-wow-delay="0.4s">
						<h3>Construccion Menu Diario</h3>
                        <p>&nbsp;</p>
                        <br />
					</div>
                    
				<div class="col-md-6 order-form-grids">
					
					<div class="order-form-grid  wow fadeInLeft" data-wow-delay="0.4s">
						<h5>MENU PRINCIPAL</h5>
								<span>Carnes</span>
								 <div class="dropdown-button">           			
            			<asp:DropDownList ID="ddlCarnes" runat="server" class="dropdown" tabindex="9" 
                                         data-settings='{"wrapperClass":"flat"}' 
                                         onselectedindexchanged="ddlCarnes_SelectedIndexChanged">
            			 </asp:DropDownList>
					</div>
		              <span>Contorno 1</span>
					   <div class="dropdown-button wow">           			
            				<asp:DropDownList ID="ddlContorno1" runat="server" class="dropdown" tabindex="9" 
                                         data-settings='{"wrapperClass":"flat"}'>                                        
            			 </asp:DropDownList>
					</div>
					<span>Contorno 2</span>
								 <div class="dropdown-button">           			
            			<asp:DropDownList ID="ddlContorno2" runat="server" class="dropdown" tabindex="9" 
                                         data-settings='{"wrapperClass":"flat"}'>                                        
            			 </asp:DropDownList>
					</div>
					<span>Contorno 3</span>
					   <div class="dropdown-button">           			
            				<asp:DropDownList ID="ddlContorno3" runat="server" class="dropdown" tabindex="9" 
                                         data-settings='{"wrapperClass":"flat"}' >
            			 </asp:DropDownList>
					</div>
                         <div class="dropdown-button">   
                        <span>Precio</span>
                        <br />
					<input type="text">   					  
					</div>
					</div>
				</div>
                <div class="col-md-6 order-form-grids">
					
					<div class="order-form-grid  wow fadeInLeft" data-wow-delay="0.4s">
						<h5>EXTRAS</h5>
								<span>Extra 1</span>
								 <div class="dropdown-button">           			
            			<asp:DropDownList ID="Extra1" runat="server" class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}'>
            			 </asp:DropDownList>
					</div>
		              <span>Extra 2</span>
					   <div class="dropdown-button wow">           			
            			<asp:DropDownList ID="ddlExtra2" runat="server" class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}'>
            			 </asp:DropDownList> 
					</div>
					<span>Extra 3</span>
								 <div class="dropdown-button">           			
            			<asp:DropDownList ID="ddlExtra3" runat="server" class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}'>
            			 </asp:DropDownList>
					</div>
					<span>Extra 4 </span>
					   <div class="dropdown-button">           			
            		<asp:DropDownList ID="ddlExtra4" runat="server" class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}'>
            			 </asp:DropDownList> 
					</div>
					
                      <div class="wow swing animated" data-wow-delay= "0.4s">
                      <input Type="button" value="order now" ID="btnAceptarExtra" onclick="return btnAceptarExtra_onclick()">
					<asp:Button ID="btnAceptarExtra" Text="order now" runat="server" 
                              onclick="btnAceptarExtra_Click"/>
                    </div>
					</div>
				</div>
              
                
			</div>
		</div>
        

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
	</div>
	  <script type="text/javascript">
	      $(document).ready(function () {
	          
	          var defaults = {
	          containerID: 'toTop', // fading element id
	          containerHoverID: 'toTopHover', // fading element hover id
	          scrollSpeed: 1200,
	          easingType: 'linear' 
	          };
	          

	          $().UItoTop({ easingType: 'easeOutQuart' });

	      });
	      function btnAceptarExtra_onclick() {
	          btnAceptarExtra_Click();
	      }

      </script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
                
</body>
</html>
