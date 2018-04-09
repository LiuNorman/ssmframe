<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/showPage/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact</title>
<link href="${path}/resources/css/front/index/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
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
					<li ><a href="${path}/front/index/index.rb">首页</a></li>
					<%--<li><a href="${path}/front/index/contact.rb">关于我们</a></li>--%>
					<li ><a href="${path}/front/index/service.rb">服务范围</a></li>
					<li ><a href="${path}/front/index/blog.rb">社区</a></li>
					<li  class="active"><a href="${path}/front/index/contact.rb">联系我们</a></li>
					<a  href="${path}/mng/index/login.rb" target="_parent">
						<span style="font-size: 15px;color:white">登录</span>
					</a>
					<a  href="${path}/mng/register/register.rb">
						<span style="font-size: 15px;color:white">注册</span>
					</a>
				</ul>
				
			</div>
			<div class="clearfix"></div>
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
	<div class="contact">
		<!--- bradcrumbs ---->
		<div class="breadcrumbs">
			<div class="container">
				<div class="breadcrumbs-left">
					<h1>联系我们</h1>
				</div>
				<div class="breadcrumbs-right">
					<ul>
						<li><a href="index.html">Home</a> <label>:</label></li>
						<li>联系我们</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--- bradcrumbs ---->
	</div>
	<!---- contact ----->
	<div class="contact">
		<div class="contact-top">
			<div class="map">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1595605.0148859094!2d-95.82979491146818!3d38.63931300664301!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1406811441457">
				</iframe>
			</div>
		</div>
		<div class="container">
			<div class="contact-grids">
				<div class="contact-left">
					<h2>地址</h2>
					<span>山东省沂水县马站</span>
					<p>山东省沂水县马站</p>
					山东省沂水县马站
					</p>
					<p>联系电话</p>
					<p>18354231330</p>
					<%--<p>Eget leo-00000001</p>	--%>
				</div>
				<div class="contact-right">
					<h2>联系我们</h2>
					<form>
						<div>
							<span>姓名</span> <input type="text">
						</div>
						<div>
							<span>邮箱</span> <input type="text">
						</div>
						<div>
							<span>项目</span> <input type="text">
						</div>
						<div>
							<span>消息</span>
							<textarea> </textarea>
						</div>
						<input type="submit" Value="Submit" />
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---- contact ----->
	<!---- container ---->
	<%@ include file="/WEB-INF/showPage/common/footer.jsp" %>
	<div style="display: none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>

