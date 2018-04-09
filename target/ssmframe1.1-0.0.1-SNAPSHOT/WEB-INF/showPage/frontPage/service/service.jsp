<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/showPage/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>Services</title>
		 <!-- Custom Theme files -->
   		 <link href="${path}/resources/css/front/index/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	
	</head>
	<body>
	<!---- container ---->
		<!---- header ----->
		<div class="header about-head">
			<div class="container">
				<!--- logo ----->
				<div class="logo">
					<a href="${path}/mng/index/index.rb"><span>D</span>RIVER</a>
				</div>
				<!--- logo ----->
				<!--- top-nav ----->
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
					<li  ><a href="${path}/front/index/index.rb">首页</a></li>
<%--
					<li><a href="${path}/front/index/contact.rb">关于我们</a></li>
--%>
					<li class="active"><a href="${path}/front/index/service.rb">服务范围</a></li>
					<li ><a href="${path}/front/index/blog.rb">社区</a></li>
					<li ><a href="${path}/front/index/contact.rb">联系我们</a></li>
						<a  href="${path}/mng/index/login.rb" target="_parent">
							<span style="font-size: 15px;color:white">登录</span>
						</a>
						<a  href="${path}/mng/register/register.rb">
							<span style="font-size: 15px;color:white">注册</span>
						</a>
					</ul>
				</div>
				<div class="clearfix"> </div>
				<!--- top-nav ----->
					<!----- script-for-nav ---->
				<script>
					$( "span.menu" ).click(function() {
					  $( ".top-nav ul" ).slideToggle( "slow", function() {
					    // Animation complete.
					  });
					});
				</script>
				<!----- script-for-nav ---->
			
			</div>
			</div>
		<!---- header ----->
		<!------ about ---->
		<div class="services">
			<!--- bradcrumbs ---->
			<div class="breadcrumbs">
				<div class="container">
					<div class="breadcrumbs-left">
						<h1>服务范围</h1>
					</div>
					<div class="breadcrumbs-right">
						<ul>
							<li><a href="index.html">Home</a> <label>:</label></li>
							<li>服务范围</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<!--- bradcrumbs ---->
		</div>
		<div class="services-top-grids">
			<div class="container">
				<div class="services-wel wel-head text-center">
					<h3><span>D</span>RIVER 服务 </h3>
					<p>我们提供载客、捎物等各种物流服务，方便您的出行</p>
				</div>
				<!---- services-grids ---->
				<div class="service-grids">
					<div class="col-md-4 service-grid">
						<img src="${path}/resources/images/front/index/m1.jpg" title="services-name" />
						<h3>客车</h3>
						<p>我们提供客车外包、出租、拼车等客运服务</p>
					</div>
					<div class="col-md-4 service-grid">
						<img src="${path}/resources/images/front/index/m3.jpg" title="services-name" />
						<h3>货车</h3>
						<p>我们提供货运服务：快捷、灵活、节省</p>
					</div>
					<div class="col-md-4 service-grid">
						<img src="${path}/resources/images/front/index/m4.jpg" title="services-name" />
						<h3>Service Name</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nisl turpis, aliquet mattis eros eu, ullamcorper tempus odio. Praesent vel mauris tincidunt felis varius feugiat eget non risus.</p>
					</div>
					<div class="col-md-4 service-grid">
						<img src="${path}/resources/images/front/index/m5.jpg" title="services-name" />
						<h3>Service Name</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nisl turpis, aliquet mattis eros eu, ullamcorper tempus odio. Praesent vel mauris tincidunt felis varius feugiat eget non risus.</p>
					</div>
					<div class="col-md-4 service-grid">
						<img src="${path}/resources/images/front/index/m6.jpg" title="services-name" />
						<h3>Service Name</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nisl turpis, aliquet mattis eros eu, ullamcorper tempus odio. Praesent vel mauris tincidunt felis varius feugiat eget non risus.</p>
					</div>
					<div class="col-md-4 service-grid">
						<img src="${path}/resources/images/front/index/m2.jpg" title="services-name" />
						<h3>Service Name</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nisl turpis, aliquet mattis eros eu, ullamcorper tempus odio. Praesent vel mauris tincidunt felis varius feugiat eget non risus.</p>
					</div>
					<div class="clearfix"> </div>
					<a class="viewmore-s" href="#">查看全部</a>
				</div>
				<!---- services-grids ---->
		</div>
		<!------ about ---->
		</div>
		<!---- welcome-Note ---->
		<div class="about-note welcome-note">
			<div class="container">
				<div class="wel-head text-center">
					<h3>我们是 <span>D</span>RIVER</h3>
					<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>
				</div>
			</div>
		</div>
		<!---- welcome-Note ---->
		<!---- top-grids ---->
		<div class="top-grids">
			<div class="container">
				<div class="col-md-4 top-grid">
					<h4>Available</h4>
					<p>If you are going to use a passage of Lorem Ipsum, there isn't anything embarrassing hidden in the middle of text.</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>Available</h4>
					<p>If you are going to use a passage of Lorem Ipsum, there isn't anything embarrassing hidden in the middle of text.</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>Available</h4>
					<p>If you are going to use a passage of Lorem Ipsum, there isn't anything embarrassing hidden in the middle of text.</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>Available</h4>
					<p>If you are going to use a passage of Lorem Ipsum, there isn't anything embarrassing hidden in the middle of text.</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>Available</h4>
					<p>If you are going to use a passage of Lorem Ipsum, there isn't anything embarrassing hidden in the middle of text.</p>
				</div>
				<div class="col-md-4 top-grid">
					<h4>Available</h4>
					<p>If you are going to use a passage of Lorem Ipsum, there isn't anything embarrassing hidden in the middle of text.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!---- top-grids ---->
	<!---- container ---->
	<%@ include file="/WEB-INF/showPage/common/footer.jsp" %>
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

