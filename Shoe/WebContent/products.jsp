<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>

<head>
	<title>新品上市</title>
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
	<script></script>
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
					<li class="active">新品上市</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-product-->
	<div class="product">
		<div class="container">
			<div class="product-main">
				<div class="col-md-9 p-left">
					
					<c:forEach items="${info}" var="inf" varStatus="num">
				
				        <c:if test="${(num.index+1)%3 == 0 && num.index != 0 }">
					        <div class="product-one">
				        </c:if>
					
						<div class="col-md-4 product-left single-left">
							<div class="p-one simpleCart_shelfItem">
								<a href="single.jsp">
								<img src="${inf.shoesPictureUrl }" alt="" />
								<div class="mask mask1">
									<span>快速查看</span>
								</div>
							</a>
								<h4>${inf.shoesName }</h4>
								<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
							</div>
						</div>
						
				        <c:if test="${(num.index+1)%3 == 0 && num.index != 0 }">	
					         <div class="clearfix"> </div>
					       </div>
				        </c:if>
				      </c:forEach>
					
					
				</div>
				<div class="col-md-3 p-right single-right">
					<h3>类别</h3>
					<ul class="product-categories">
						<li><a href="ProductsServlet?ident=type&types='男'">男鞋</a> <span class="count">(14)</span></li>
						<li><a href="ProductsServlet?ident=type&types='女'">女鞋</a> <span class="count">(2)</span></li>
					</ul>
					<h3>颜色</h3>
					<ul class="product-categories">
						<c:forEach items="${info1}" var="inf" varStatus="num1">
							<li><a href="ProductsServlet?ident=color&colors=${inf.shoesColor }">${inf.shoesColor }</a> <span class="count">(${inf.shoesCount })</span></li>
						</c:forEach>
					</ul>
					<h3>尺码</h3>
					<ul class="product-categories">
					    <c:forEach items="${info2}" var="inf" varStatus="num2">
							<li><a href="ProductsServlet?ident=size&sizes=${inf.shoesSize }">${inf.shoesSize }</a> <span class="count">(${inf.shoesCount })</span></li>
						</c:forEach>
					</ul>
					<h3>价格</h3>
					<ul class="product-categories p1">
						<c:forEach items="${info3}" var="inf" varStatus="num3">
							<li><a href="ProductsServlet?ident=price&prices=${inf.shoesPrice }">${inf.shoesPrice }</a> <span class="count">(${inf.shoesCount })</span></li>
						</c:forEach>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-product-->
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
				/*
										var defaults = {
											  containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
										 };
										*/

				$().UItoTop({
					easingType: 'easeOutQuart'
				});

			});
		</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--end-footer-text-->
</body>

</html>