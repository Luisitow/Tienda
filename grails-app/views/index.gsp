<!DOCTYPE html>
<html>
<head>
<title>ABARROTES | PRINCIPAL</title>
<asset:stylesheet src="bootstrape.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's J<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
avaScript plugins) -->
<asset:javascript src="jquery-1.11.0.min.js"/>

<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<asset:stylesheet src="stylee.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="keywords" content="Free Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
 addEventListener("load", function() {
 	setTimeout(hideURLbar, 0);
 	},false);
 	function hideURLbar(){
 	window.scrollTo(0,1); }
 </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Alegreya+Sans+SC:100,300,400,500,700,800,900,100italic,300italic,400italic,500italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<!--//fonts-->

		<asset:javascript src="move-top.js"/>
		<asset:javascript src="easing.js"/>

<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
<!-- start menu -->
<asset:javascript src="simpleCart.min.js"/>
<asset:stylesheet src="memenu.css" rel="stylesheet" type="text/css" media="all"/>
<asset:javascript src="memenu.js"/>

<script src="js/simpleCart.min.js"> </script>
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />

<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
</head>
<body>
	<!--top-header-->
	<div class="top-header">
	<div class="container">
		<div class="top-header-main">
			<div class="col-md-4 top-header-left">
				<h1>BIENVENIDOS</h1>
			</div>
			<div class="col-md-4 top-header-middle">
				<a href=" "><img src="${resource(dir:'images',file:'logo.jpg')}" alt=""></a>
			</div>
			<div class="col-md-4 top-header-right"  >
                <div class="cart box_1">
                        <a href=" ">
                        <h3> <div class="total">
                            <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> productos)</div>
                            <img src="images/cart-1.png" alt="" />
                            <img src="${resource(dir:'images',file:'cart-1.png')}" alt="">
                        </a>
                        <p><a href="javascript:;" class="simpleCart_empty">Vaciar carrito</a></p>
                        <div class="clearfix"> </div>
                    </div>
            </div>

			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--top-header-->
	<!--bottom-header-->
	<div class="header-bottom">
		<div class="container">
			<div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a href=" ">Home</a></li>
					<li class="grid"><a href="#prod">Productos</a>

					</li>
					<li class="grid"><a href="#">COntactos</a>

					</li>
					<li class="grid"><a href="#">Otro</a>

					</li>
					<li class="grid"><a href="#">Sports</a>

					</li>

				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--bottom-header-->
	<!--banner-starts-->
	<div class="bnr" id="home">
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider4">
			    <li>
					<div class="banner-1"></div>
				</li>
				<li>
					<div class="banner-2"></div>
				</li>

			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>
	<!--banner-ends-->
	<!--Slider-Starts-Here-->
				<asset:javascript src="responsiveslidess.min.js"/>

			 <script>

			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: false,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });

			    });
			  </script>
			<!--End-slider-script-->
	<!--start-banner-bottom-->

	<!--end-banner-bottom-->
	<!--start-shoes-->


	<div id="prod" class="shoes">

		<div class="container">
				<div class="product-one">
				<!--<iframe src="productos/listar" style="border:none; width:100%; height:400px; "></iframe>-->
				gggg
	<g:each var="o" in="${model}">
    <div class="col-md-3 product-left" >
    	<div class="p-one simpleCart_shelfItem">
        	<img src="${createLink(controller:'Productos',action:'showImage',id:o.id)}" width="50" />
        	<div class="mask"></div>
        	<h4>${o.nombreProducto}</h4>
            <p><a class="item_add" href="#"><i></i> <span class=" item_price">$ ${o.precio}</span></a></p>
        </div>
    </div>
    </g:each>

				<div class="col-md-3 product-left">
					<div class="p-one simpleCart_shelfItem">

						<a href="single.html">
								<img src="images/shoes-3.png" alt="" />
								<div class="mask">
									<span>Quick View</span>
								</div>
							</a>
						<h4>Aenean placerat</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>

					</div>
				</div>

	</div>
	</div>
	</div>



	<!--end-shoes-->
	<!--start-abt-shoe-->
	<div class="abt-shoe">

	</div>
	<!--end-abt-shoe-->
	<!--start-footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-top">
				<div class="col-md-3 footer-left">
					<h3>Contactos</h3>
					<ul>
						<li><a href="contact.html">Contact Us</a></li>
						<li><a href="#">Our Sites</a></li>
						<li><a href="#">In The News</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Carrers</a></li>
					</ul>
				</div>

				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-footer-->
	<!--end-footer-text-->
	<div class="abt-shoe">
		<p class="footer-class">© 2016 Tienda | Abarrotes  <a href="" target="_blank">Tienda</a> </p>
		<script type="text/javascript">
									$(document).ready(function() {
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
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--end-footer-text-->
</body>
</html>
