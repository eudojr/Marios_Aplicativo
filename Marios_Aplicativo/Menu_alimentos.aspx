<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu_alimentos.aspx.cs" Inherits="Marios_Aplicativo.Menu_alimentos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>RECEIPES Bootstarp responsive Website Template| Popular-restaurent :: w3layouts</title>
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
					<p>Questions? Call us Toll-free!<span>1800-0000-7777 </span><label>(11AM to 11PM)</label></p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
			<div class="menu-bar">
			<div class="container">
				<div class="top-menu">
					<ul>
						<li class="active"><a href="index_administrador.aspx">Home</a></li>|
						<li><a href="Menu_alimentos.aspx"> AGREGAR ALIMENTOS</a></li>|
						<li><a href="construir_plato.aspx">CONSTRUIR PLATOS</a></li>|
						<li><a href="contact.html">MENU DEL DíA</a></li>|
                        <li><a href="contact.html">Reportes</a></li>
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
	<!-- content-section-starts -->

    <br /><br />
	<div class="Popular-Restaurants-content">
		<div class="Popular-Restaurants-grids">
			<div class="container">
				<div class="Popular-Restaurants-grid wow bounceInLeft" data-wow-delay="0.4s">
                    <div class="alimentos" data-wow-delay="0.4s">
					    <form id="form1" runat="server" action="Menu_alimentos.aspx" method="post">
                            <asp:DropDownList ID="drop_tipo" name="DrowpDownList1" runat="server" 
                                DataSourceID="Tipo_Alimentos" DataTextField="Descripcion" 
                                DataValueField="ID_clasificacion" AppendDataBoundItems="True" 
                                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem Selected="True" Value="">--Tipo--</asp:ListItem>
                            </asp:DropDownList>
                            <asp:ObjectDataSource ID="Tipo_Alimentos" runat="server" 
                                SelectMethod="GetTipoAlimentos" TypeName="Marios_Aplicativo.Datos">
                            </asp:ObjectDataSource>
                            <asp:GridView ID="GridView1" CssClass="grid" runat="server" DataSourceID="Alimentos"
                                EnableModelValidation="True" AutoGenerateColumns="False" 
                                HeaderStyle-BackColor="#D9D9D9" Width="100%" DataKeyNames="ID_Principal" 
                                OnItemCommand="doInsert" OnRowEditing="GridView1_RowEditing"
	                            ShowFooter="True" onselectedindexchanged="GridView1_SelectedIndexChanged">
                                 <Columns>
                                  <asp:TemplateField HeaderText="ID_Principal" HeaderStyle-BackColor="#D9D9D9" Visible=false>
                                                    <EditItemTemplate>
                                                        <asp:Label ID="LblLineaEdi1" runat="server" Text='<%# Bind("ID_Principal") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="LblLinea0" runat="server" Text='<%# Bind("ID_Principal") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="left"/>

                                    <HeaderStyle BackColor="#D9D9D9"></HeaderStyle>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Descripci&#243;n" HeaderStyle-BackColor="#D9D9D9">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="LblLineaEdi2" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <FooterTemplate>
                                                      <asp:TextBox ID="Descripcion" Columns="1" Runat="Server" Width="100%" BorderWidth="0px"/>
                                                    </FooterTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="LblLinea1" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="left" Width="30%"/>

                                    <HeaderStyle BackColor="#D9D9D9"></HeaderStyle>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Tipo">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="LblLineaEdi" runat="server" Text='<%# Bind("Tipo") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="LblLinea2" runat="server" Text='<%# Bind("Tipo") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                      <asp:DropDownList ID="ID_Clasificacion" Columns="1" name="DrowpDownList1" runat="server" 
                                                        DataSourceID="Tipo_Alimentos" DataTextField="Descripcion"
                                                        DataValueField="ID_clasificacion" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="100%" style="text-align:center">
                                                        </asp:DropDownList>
                                                    </FooterTemplate>
                                                    <ItemStyle HorizontalAlign="Center" Width="15%"/>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Precio">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="LblLineaEdi3" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        B./<asp:Label ID="LblLinea3" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                      <asp:TextBox ID="AddPrecio" Columns="1" Runat="Server" Width="100%" BorderWidth="0px" style="text-align:center"/>
                                                      <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                        ControlToValidate="AddPrecio"
                                                        ErrorMessage="Debe introducir un valor monetario mayor a 0.00. No incluye simbolo."
                                                        ForeColor="" Operator="GreaterThanEqual" Type="Currency" 
                                                        ValueToCompare="0" Display="Dynamic">
                                                        * </asp:CompareValidator>
                                                    </FooterTemplate>
                                                    <ItemStyle HorizontalAlign="Center" Width="15%"/>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Disponibilidad">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="LblLineaEdi4" runat="server" Text='<%# Bind("Cantidad") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="LblLinea4" runat="server" Text='<%# Bind("Cantidad") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                      <asp:TextBox ID="Disponibilidad" Columns="1" Runat="Server" Width="100%" BorderWidth="0px"/>
                                                    </FooterTemplate>
                                                    <HeaderStyle HorizontalAlign=Center />
                                                    <ItemStyle HorizontalAlign="Center" Width="15%"/>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Habilitado">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="LblLineaEdi5" runat="server" Text='asd'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:checkbox ID="Activar" runat="server"></asp:checkbox>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                      <asp:CheckBox ID="Activar" Columns="1" Runat="Server" Width="100%" BorderWidth="0px"/>
                                                    </FooterTemplate>
                                                    <ItemStyle HorizontalAlign="Center" Width="10%"/>
                                 </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Edit" ShowHeader="False"> 
                                   
                                    
                                    <EditItemTemplate> 
                                      <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="true" CommandName="Update" Text="Actualizar"></asp:LinkButton> 
                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton> 
                                    </EditItemTemplate> 
                                    <FooterTemplate> 
                                      <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Insert" Text="Agregar"></asp:LinkButton> 
                                    </FooterTemplate> 
                                    <ItemTemplate> 
                                      <asp:LinkButton ID="LinkButton5" runat="server" CausesValidation="false" CommandName="Edit" Text="Edit"></asp:LinkButton> 
                                    </ItemTemplate> 
                                    </asp:TemplateField>

                                    
                                 <asp:CommandField HeaderText="Eliminar" ShowDeleteButton="True" ShowHeader="True" />
                                 </Columns>

<HeaderStyle BackColor="#D9D9D9"></HeaderStyle>
                            </asp:GridView>
                            <asp:ObjectDataSource ID="Alimentos" runat="server" 
                                SelectMethod="GetAlimentos" TypeName="Marios_Aplicativo.Datos" 
                                DeleteMethod="Delete" InsertMethod="Agregar" UpdateMethod="Actualizar">
                                <DeleteParameters>
                                    <asp:Parameter Name="ID_Principal" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Descripcion" Type="String" />
                                    <asp:Parameter Name="Precio" Type="Decimal" />
                                    <asp:Parameter Name="ID_Clasificacion" Type="Int32" />
                                    <asp:Parameter Name="Disponibilidad" Type="Int32" />
                                    <asp:Parameter Name="Activar" Type="Int32" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="drop_tipo" DefaultValue="" Name="tipo" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Descripcion" Type="String" />
                                    <asp:Parameter Name="Precio" Type="Decimal" />
                                    <asp:Parameter Name="ID_Clasificacion" Type="Int32" />
                                    <asp:Parameter Name="Disponibilidad" Type="Int32" />
                                    <asp:Parameter Name="Activar" Type="Int32" />
                                </UpdateParameters>
                            </asp:ObjectDataSource>
                           </form>
                        </div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="contact-section" id="contact">
			<div class="container">
				<div class="contact-section-grids">
					<div class="col-md-3 contact-section-grid wow fadeInLeft" data-wow-delay="0.4s">
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
					<div class="col-md-3 contact-section-grid wow fadeInLeft" data-wow-delay="0.4s">
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
					<div class="col-md-3 contact-section-grid wow fadeInRight" data-wow-delay="0.4s">
						<h4>Follow Us On...</h4>
						<ul>
							<li><i class="fb"></i></li>
							<li class="data"> <a href="#">  Facebook</a></li>
						</ul>
						<ul>
							<li><i class="tw"></i></li>
							<li class="data"> <a href="#">Twitter</a></li>
						</ul>
						<ul>
							<li><i class="in"></i></li>
							<li class="data"><a href="#"> Linkedin</a></li>
						</ul>
						<ul>
							<li><i class="gp"></i></li>
							<li class="data"><a href="#">Google Plus</a></li>
						</ul>
					</div>
					<div class="col-md-3 contact-section-grid nth-grid wow fadeInRight" data-wow-delay="0.4s">
						<h4>Subscribe Newsletter</h4>
						<p>To get latest updates and food deals every week</p>
						<input type="text" class="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
						<input type="submit" value="submit">
						</div>
					<div class="clearfix"></div>
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
