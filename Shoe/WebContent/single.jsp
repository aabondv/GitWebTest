<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<title>商品详情</title>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<!-- Custom Theme files -->
	<!--theme-style-->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!--//theme-style-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Free Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start menu -->
	<script src="js/simpleCart.min.js">
	</script>
	<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/memenu.js"></script>
	<script>
		$(document).ready(function () {
			$(".memenu").memenu();
		});
	</script>
</head>

<body>
	<!--top-header-->
	<div class="top-header">
		<div class="container">
			<div class="top-header-main">

				<div class="col-md-8 top-header-left">
					<a href="InitServlet"><img src="images/logo-4.png" alt="" /></a>
				</div>

				<div class="col-md-2  top-header-middle">
					<div class="cart box_1">
						<a href="checkout.jsp">
							<h3>
								(<span>0</span>)
								<img src="images/cart-1.png" alt="" />

							</h3>
						</a>
						<div class="clearfix"> </div>
					</div>
				</div>

				<div class="col-md-2 top-header-right">
				<c:choose>
					<c:when test="${empty sessionScope.user}">
						<p class="login">
							<a href="./login.jsp" class="simpleCart_empty">登陆</a>
						</p>
						<p class="register">
							<a href="./account.jsp" class="simpleCart_empty">注册</a>
						</p>
					</c:when>
					<c:otherwise>
					<p class="login">
							<span class="simpleCart_empty">欢迎，${sessionScope.user.userName}</span>
						</p>
				</c:otherwise>
				</c:choose>
				</div>

			</div>
		</div>
	</div>
	<!--top-header-->
	<!--bottom-header-->
	<div class="header-bottom">
		<div class="container">
			<div class="top-nav">
				<ul class="memenu skyblue">
					<li class="active"><a href="InitServlet">首页</a></li>
					<li class="grid"><a href="#">男鞋</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>商城</h4>
									<ul>
										<li><a href="products.jsp">New Arrivals</a></li>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">login</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>类型</h4>
									<ul>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Style Videos</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
										<li><a href="products.jsp">Levis</a></li>
										<li><a href="products.jsp">Persol</a></li>
										<li><a href="products.jsp">Nike</a></li>
										<li><a href="products.jsp">Edwin</a></li>
										<li><a href="products.jsp">New Balance</a></li>
										<li><a href="products.jsp">Jack & Jones</a></li>
										<li><a href="products.jsp">Paul Smith</a></li>
										<li><a href="products.jsp">Ray-Ban</a></li>
										<li><a href="products.jsp">Wood Wood</a></li>
									</ul>
								</div>
							</div>
						</div>
					</li>
					<li class="grid"><a href="#">女鞋</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>商城</h4>
									<ul>
										<li><a href="products.jsp">New Arrivals</a></li>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">login</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>类型</h4>
									<ul>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Style Videos</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
										<li><a href="products.jsp">Levis</a></li>
										<li><a href="products.jsp">Persol</a></li>
										<li><a href="products.jsp">Nike</a></li>
										<li><a href="products.jsp">Edwin</a></li>
										<li><a href="products.jsp">New Balance</a></li>
										<li><a href="products.jsp">Jack & Jones</a></li>
										<li><a href="products.jsp">Paul Smith</a></li>
										<li><a href="products.jsp">Ray-Ban</a></li>
										<li><a href="products.jsp">Wood Wood</a></li>
									</ul>
								</div>
							</div>
						</div>
					</li>
					<li class="grid"><a href="#">童鞋</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>商城</h4>
									<ul>
										<li><a href="products.jsp">New Arrivals</a></li>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">login</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>类型</h4>
									<ul>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Style Videos</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
										<li><a href="products.jsp">Levis</a></li>
										<li><a href="products.jsp">Persol</a></li>
										<li><a href="products.jsp">Nike</a></li>
										<li><a href="products.jsp">Edwin</a></li>
										<li><a href="products.jsp">New Balance</a></li>
										<li><a href="products.jsp">Jack & Jones</a></li>
										<li><a href="products.jsp">Paul Smith</a></li>
										<li><a href="products.jsp">Ray-Ban</a></li>
										<li><a href="products.jsp">Wood Wood</a></li>
									</ul>
								</div>
							</div>
						</div>
					</li>
					<li class="grid"><a href="#">运动鞋</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>商城</h4>
									<ul>
										<li><a href="products.jsp">New Arrivals</a></li>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">login</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>类型</h4>
									<ul>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Style Videos</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
										<li><a href="products.jsp">Levis</a></li>
										<li><a href="products.jsp">Persol</a></li>
										<li><a href="products.jsp">Nike</a></li>
										<li><a href="products.jsp">Edwin</a></li>
										<li><a href="products.jsp">New Balance</a></li>
										<li><a href="products.jsp">Jack & Jones</a></li>
										<li><a href="products.jsp">Paul Smith</a></li>
										<li><a href="products.jsp">Ray-Ban</a></li>
										<li><a href="products.jsp">Wood Wood</a></li>
									</ul>
								</div>
							</div>
						</div>
					</li>
					<li class="grid"><a href="#">品牌</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>商城</h4>
									<ul>
										<li><a href="products.jsp">New Arrivals</a></li>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">login</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>类型</h4>
									<ul>
										<li><a href="products.jsp">Men</a></li>
										<li><a href="products.jsp">Women</a></li>
										<li><a href="products.jsp">Brands</a></li>
										<li><a href="products.jsp">Kids</a></li>
										<li><a href="products.jsp">Accessories</a></li>
										<li><a href="products.jsp">Style Videos</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>品牌</h4>
									<ul>
										<li><a href="products.jsp">Levis</a></li>
										<li><a href="products.jsp">Persol</a></li>
										<li><a href="products.jsp">Nike</a></li>
										<li><a href="products.jsp">Edwin</a></li>
										<li><a href="products.jsp">New Balance</a></li>
										<li><a href="products.jsp">Jack & Jones</a></li>
										<li><a href="products.jsp">Paul Smith</a></li>
										<li><a href="products.jsp">Ray-Ban</a></li>
										<li><a href="products.jsp">Wood Wood</a></li>
									</ul>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--bottom-header-->
	<!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="InitServlet">首页</a></li>
					<li class="active">鞋子详情</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-single-->
	<div class="single contact">
		<div class="container">
			<div class="single-main">
				<div class="col-md-9 single-main-left">
					<div class="sngl-top">
						<div class="col-md-5 single-top-left">
							<div class="flexslider">
								<ul class="slides">
									<li data-thumb="${oneProduct.shoesPictureUrl}">
										<img src="${oneProduct.shoesPictureUrl}" />
									</li>
									 <li data-thumb="images/s1.jpg">
										<img src="images/s1.jpg" />
									</li>
									<!--
									<li data-thumb="images/s2.jpg">
										<img src="images/s2.jpg" />
									</li>
									<li data-thumb="images/s3.jpg">
										<img src="images/s3.jpg" />
									</li>
									<li data-thumb="images/s4.jpg">
										<img src="images/s4.jpg" />
									</li> -->
								</ul>
							</div>
							<!-- FlexSlider -->
							<script defer src="js/jquery.flexslider.js"></script>
							<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

							<script>
								// Can also be used with $(document).ready()
								$(window).load(function () {
									$('.flexslider').flexslider({
										animation: "slide",
										controlNav: "thumbnails"
									});
								});
							</script>
						</div>
						<div class="col-md-7 single-top-right">
							<div class="details-left-info simpleCart_shelfItem">
								<h3>${oneProduct.shoesName}</h3>
								<p class="availability">Availability: <span class="color">In stock</span></p>
								<div class="price_single">
									<span class="reducedfrom">${oneProduct.shoesoldPrice}</span>
									<span class="actual item_price">${oneProduct.shoesPrice}</span><a href="#">click for offer</a>
								</div>
								<h2 class="quick">描述:</h2>
								<p class="quick_desc"> ${oneProduct.shoesDescription}</p>
								<ul class="product-color">
									<h3>可选颜色:</h3>
									<li><a class="color1" href="#"><span> </span></a></li>
									<li><a class="color2" href="#"><span> </span></a></li>
									<li><a class="color3" href="#"><span> </span></a></li>
									<li><a class="color4" href="#"><span> </span></a></li>
									<li><a class="color5" href="#"><span> </span></a></li>
									<li><a class="color6" href="#"><span> </span></a></li>
									<li><a class="color7" href="#"><span> </span></a></li>
									<li><a class="color8" href="#"><span> </span></a></li>
									<div class="clear"> </div>
								</ul>
								<ul class="size">
									<h3>Length</h3>
									<li><a href="#">7</a></li>
									<li><a href="#">6</a></li>
								</ul>
								<div class="quantity_box">
									<ul class="product-qty">
										<span>数量:</span>
										<select id="num">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
								</select>
									</ul>
								</div>
								<div class="clearfix"> </div>
								<div class="single-but item_add">
									<input type="submit" value="加入购物车" />
									<input type="submit" value="立即购买" onclick="toadd()"/>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="latest products">
						<div class="product-one">
							<div class="col-md-4 product-left single-left">
								<div class="p-one simpleCart_shelfItem">

									<a href="#">
								<img src="images/shoes-1.png" alt="" />
								<div class="mask mask1">
									<span>快速查看</span>
								</div>
							</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>

								</div>
							</div>
							<div class="col-md-4 product-left single-left">
								<div class="p-one simpleCart_shelfItem">
									<a href="#">
								<img src="images/shoes-2.png" alt="" />
								<div class="mask mask1">
									<span>快速查看</span>
								</div>
							</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>

								</div>
							</div>
							<div class="col-md-4 product-left single-left">
								<div class="p-one simpleCart_shelfItem">
									<a href="#">
								<img src="images/shoes-3.png" alt="" />
								<div class="mask mask1">
									<span>快速查看</span>
								</div>
							</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="product-one">
							<div class="col-md-4 product-left single-left">
								<div class="p-one simpleCart_shelfItem">
									<a href="#">
								<img src="images/shoes-13.png" alt="" />
								<div class="mask mask1">
									<span>快速查看</span>
								</div>
							</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
								</div>
							</div>
							<div class="col-md-4 product-left single-left">
								<div class="p-one simpleCart_shelfItem">
									<a href="#">
								<img src="images/shoes-5.png" alt="" />
								<div class="mask mask1">
									<span>快速查看</span>
								</div>
							</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
								</div>
							</div>
							<div class="col-md-4 product-left single-left">
								<div class="p-one simpleCart_shelfItem">
									<a href="#">
								<img src="images/shoes-6.png" alt="" />
								<div class="mask mask1">
									<span>快速查看</span>
								</div>
								</a>
									<h4>Aenean placerat</h4>
									<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3 single-right">
					<h3>类别</h3>
					<ul class="product-categories">
						<li><a href="#">Blucher Shoe</a> <span class="count">(14)</span></li>
						<li><a href="#">Clog Shoe</a> <span class="count">(2)</span></li>
						<li><a href="#">Snow Boot Shoe</a> <span class="count">(2)</span></li>
						<li><a href="#">Galesh Shoe</a> <span class="count">(11)</span></li>
						<li><a href="#">pataugas Shoe</a> <span class="count">(3)</span></li>
						<li><a href="#">Jazz Shoe</a> <span class="count">(3)</span></li>
					</ul>
					<h3>颜色</h3>
					<ul class="product-categories">
						<li><a href="#">Green</a> <span class="count">(14)</span></li>
						<li><a href="#">Blue</a> <span class="count">(2)</span></li>
						<li><a href="#">Red</a> <span class="count">(2)</span></li>
						<li><a href="#">Gray</a> <span class="count">(8)</span></li>
						<li><a href="#">Green</a> <span class="count">(11)</span></li>
						<li><a href="#">Yellow</a> <span class="count">(2)</span></li>
					</ul>
					<h3>尺码</h3>
					<ul class="product-categories">
						<li><a href="#">5.5</a> <span class="count">(14)</span></li>
						<li><a href="#">6</a> <span class="count">(2)</span></li>
						<li><a href="#">6.5</a> <span class="count">(2)</span></li>
						<li><a href="#">7</a> <span class="count">(8)</span></li>
						<li><a href="#">7.5</a> <span class="count">(11)</span></li>
					</ul>
					<h3>价格</h3>
					<ul class="product-categories p1">
						<li><a href="#">600$-700$</a> <span class="count">(14)</span></li>
						<li><a href="#">700$-800$</a> <span class="count">(2)</span></li>
						<li><a href="#">800$-900$</a> <span class="count">(2)</span></li>
						<li><a href="#">900$-1000$</a> <span class="count">(8)</span></li>
						<li><a href="#">1000$-1100$</a> <span class="count">(11)</span></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-single-->
	<!--start-footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-top">
				<div class="col-md-3 footer-left">
					<h3>关于我们</h3>
					<ul>
						<li><a href="#">我们是谁</a></li>
						<li><a href="contact.jsp">联系我们</a></li>
						<li><a href="#">我们的规模</a></li>
						<li><a href="#">新闻</a></li>
						<li><a href="#">团队</a></li>
						<li><a href="#">诚聘英才</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-left">
					<h3>你的帐号</h3>
					<ul>
						<li><a href="account.jsp">你的账号</a></li>
						<li><a href="#">个人资料</a></li>
						<li><a href="contact.jsp">地址</a></li>
						<li><a href="#">折扣</a></li>
						<li><a href="#">订单跟踪</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-left">
					<h3>客户服务</h3>
					<ul>
						<li><a href="#">常见问题</a></li>
						<li><a href="#">运输</a></li>
						<li><a href="#">未完交易</a></li>
						<li><a href="#">退货</a></li>
						<li><a href="#">订单</a></li>
						<li><a href="#">购物指南</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-left">
					<h3>类型</h3>
					<ul>
						<li><a href="#">运动鞋</a></li>
						<li><a href="#">休闲鞋</a></li>
						<li><a href="#">皮鞋</a></li>
						<li><a href="#">宴会鞋</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-footer-->
	<!--end-footer-text-->
	<div class="footer-text">
		<div class="container">
			<div class="footer-main">
				<p class="footer-class">Copyright &copy; 2017.加鸡腿工作室 All rights reserved.</p>
			</div>
		</div>
		<script type="text/javascript">
			$(document).ready(function () {
				

				$().UItoTop({
					easingType: 'easeOutQuart'
				});
				
			});
			function toadd(){
				var num = $("#num option:selected").text();
				var user = ${sessionScope.user.uid};
				var shoesid = ${oneProduct.shoesId};
				location.href="OrderServlet?ordermethod=toAddone&userid="+user+
						"&shoesid="+shoesid+"&num="+num;
			}
		</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--end-footer-text-->
</body>

</html>