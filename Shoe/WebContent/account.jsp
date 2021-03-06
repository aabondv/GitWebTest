<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>账号</title>
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
					<li class="active">账号</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-account-->
	<div class="account">
		<div class="container">
			<div class="account-bottom">
				<div class="col-md-6 account-left">
					<form action="UserServlet?usermethod=reg" method="post" enctype="multipart/form-data" id="reg">
						<div class="account-top heading">
							<h3>注册</h3>
						</div>
						<div class="address">
							<span>头像</span>
							<input type="file" name="uheadImages">
						</div>
						<div class="address">
							<span id="msg">用户名</span>
							<input type="text" name="userName">
						</div>
						<div class="address">
							<span>密码</span>
							<input type="password" name="upassword">
						</div>
						<div class="address">
							<span>再输一次密码</span>
							<input type="password" name="repwd">
						</div>
						<div class="address">
							<span>真实姓名</span>
							<input type="text" name="urealname">
						</div>
						<div class="address">
							<span>电话号码</span>
							<input type="text" name="utelephone">
						</div>
						<div class="address">
							<span>地址</span>
							<input type="text" name="uaddress">
						</div>
						
						<div class="address new">
							<input type="submit" value="提交">
						</div>
					</form>
				</div>
				
			</div>
		</div>
	</div>
	<!--end-account-->
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
				$("form#reg").submit(function(e){
						var file = $("input[type=file]").val();
						if(file==""||file==null){
							alert("请选择头像");
							$("input[type=file]").focus();
							return;
						}
						var uname =  $("input[name=userName]").val();
						if(uname==""||uname==null){
							alert("用户名不能为空");
							$("input[name=userName]").focus();
							return;
						}
						var upwd = $("input[name=upassword]").val();
						if(uname==""||uname==null){
							alert("密码不能为空");
							$("input[name=upassword]").focus();
							return;
						}
						var repwd = $("input[name=repwd]").val();
						if(repwd==""||repwd==null){
							alert("确认密码不能为空");
							$("input[name=repwd]").focus();
							return;
						}
						if(upwd!=repwd){
							alert("两次密码不一致");
							return;
						}
				});
				$("input[name=repwd]").blur(function(){
					var repwd =$(this).val();
					var pwd = $("input[name=upassword]").val();
					if(repwd!=pwd){
						alert("两次密码不一致！！");
						$("input[name=repwd]").focus();
					}
				})
				 $("input[name=userName]").blur(function(){
					 var name = $(this).val();
					 if(name==""||name==null) return;
					 $.ajax({
						url:"UserServlet",
						dataType:"json",
						data:{'usermethod':'namerepeat','username':name},
						method:"post",
						success:function(data){
							if(data.existName=="true"){
								$("span#msg").html("用户名 <label style='color:red'>已存在用户名</label>");
								$("input[name=userName]").focus();
							}else{
								$("span#msg").html("用户名  <label style='color:green'>用户名可用</label>");
							}
						}
					}); 
				}) 						

			});
		</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--end-footer-text-->
</body>

</html>