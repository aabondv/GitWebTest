<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<title>首页</title>
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
						<a href="CartServlet?cartmethod=selectCart">
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
							<span><a href="UserServlet?usermethod=quit">退出</a></span>
							<span><a href="OrderServlet?ordermethod=findAll&userid=${sessionScope.user.uid}">查看订单</a></span>
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
	<!--banner-starts-->
	<div class="bnr" id="home">
		<div id="top" class="callbacks_container">
			<ul class="rslides" id="slider4">
			<c:forEach items="${banner}" var="banner">
				<li>
					<div class="banner" style="background: url('${banner.shoesPictureUrl}') no-repeat center;"></div>
				</li>
			</c:forEach>
			
			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>
	<!--banner-ends-->
	<!--Slider-Starts-Here-->
	<script src="js/responsiveslides.min.js"></script>
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
	<div class="banner-bottom">
		<div class="container">
			<div class="banner-bottom-top">
			<c:forEach items="${top}" var="top" varStatus="s">
				<c:if test="${s.index==0 }">
				<div class="col-md-6 banner-bottom-left">
					<div class="bnr-one">
						<div class="bnr-left">
							<h1><a href="InitServlet?productsmethod=findOne&productId=${top.shoesId}">${top.shoesName }</a></h1>
							<p>${top.shoesDescription }</p>
							<div class="b-btn">
							<!--下面改为加入购物车  -->
								<a href="InitServlet?productsmethod=findOne&productId=${top.shoesId}">现在就买</a>
							</div>
						</div>
						<div class="bnr-right">
							<a href="InitServlet?productsmethod=findOne&productId=${top.shoesId}"><img src="${top.shoesPictureUrl }" alt="" /></a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				</c:if>
				<c:if test="${s.index==1 }">
				<div class="col-md-6 banner-bottom-right">
					<div class="bnr-two">
						<div class="bnr-left">
							<h1><a href="InitServlet?productsmethod=findOne&productId=${top.shoesId}">${top.shoesName }</a></h1>
							<p>${top.shoesDescription }</p>
							<div class="b-btn">
								<a href="InitServlet?productsmethod=findOne&productId=${top.shoesId}">现在就买</a>
							</div>
						</div>
						<div class="bnr-right">
								<a href="InitServlet?productsmethod=findOne&productId=${top.shoesId}"><img src="${top.shoesPictureUrl }" alt="" /></a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				</c:if>
				</c:forEach>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-banner-bottom-->
	<!--start-shoes-->
	<div class="shoes">
		<div class="container">
		<c:forEach items="${info.list}" var="info" varStatus="step">
				<c:if test="${step.index%4==0}">
					<div class="product-one"></div>
				</c:if>
				<c:if test="${empty info.shoesident}">
					<div class="col-md-3 product-left">
						<div class="p-one simpleCart_shelfItem">
								<a href="InitServlet?productsmethod=findOne&productId=${info.shoesId}">
								<img src="${info.shoesPictureUrl }" alt="" />
								<div class="mask">
									<span>快速查看</span>
								</div>
							</a>
						<h4>${info.shoesName }</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">$${info.shoesPrice }</span></a></p>
						</div>
					</div>
				</c:if>
				<c:if test="${step.index%4==3 }"><div class="clearfix"> </div>
				</c:if>
				
		</c:forEach>	
		</div>
		<%-- <c:if test="${info.currentPage > 1}"> --%>
		<%-- <div>
			<ul class="pagination">
    		<li><a href="InitServlet?page=1">首页</a></li>
    		<li><a href="InitServlet?page=${info.prePage }">上一页</a></li>
    		<li><a href="" class="disabled">当前第${info.currentPage}页</a></li>
    		<li><a href="InitServlet?page=${info.nextPage }">下一页</a></li>
    		<li><a href="InitServlet?page=${info.totalPage }">尾页</a></li>
			</ul>
		</div> --%>
		<%-- </c:if> --%>
	</div>
	<!--end-shoes-->
	<!--start-abt-shoe-->
	<div class="abt-shoe">
		<div class="container">
			<div class="abt-shoe-main">
				<c:forEach items="${bottom}" var="bottomone">
					<c:if test="${!empty bottomone.shoesident}">
					<div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="InitServlet?productsmethod=findOne&productId=${bottomone.shoesId}"><img src="${bottomone.shoesPictureUrl }" alt="" /></a>
						<h4><a href="InitServlet?productsmethod=findOne&productId=${bottomone.shoesId}">${bottomone.shoesName }</a></h4>
						<p>${bottomone.shoesDescription }</p>
					</div>
					</div>
					</c:if>
				</c:forEach>
				<!-- <div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="single.jsp"><img src="images/abt-1.jpg" alt="" /></a>
						<h4><a href="single.jsp">Cras dolor ligula</a></h4>
						<p>Phasellus auctor vulputate egestas. Nulla facilisi. Cras dolor ligula, pharetra vitae efficitur ac, tempus vitae nisl.
							Aliquam erat volutpat. </p>
					</div>
				</div>
				<div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="single.jsp"><img src="images/abt-2.jpg" alt="" /></a>
						<h4><a href="single.jsp">Cras dolor ligula</a></h4>
						<p>Phasellus auctor vulputate egestas. Nulla facilisi. Cras dolor ligula, pharetra vitae efficitur ac, tempus vitae nisl.
							Aliquam erat volutpat. </p>
					</div>
				</div>
				<div class="col-md-4 abt-shoe-left">
					<div class="abt-one">
						<a href="single.jsp"><img src="images/abt-3.jpg" alt="" /></a>
						<h4><a href="single.jsp">Cras dolor ligula</a></h4>
						<p>Phasellus auctor vulputate egestas. Nulla facilisi. Cras dolor ligula, pharetra vitae efficitur ac, tempus vitae nisl.
							Aliquam erat volutpat. </p>
					</div>
				</div> -->
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-abt-shoe-->
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