<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/showPage/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>关于我们</title>
<link href="${path}/resources/css/front/index/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>

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
					<li ><a href="${path}/mng/index/index.rb">首页</a></li>
					<%--<li ><a href="${path}/front/index/contact.rb">关于我们</a></li>--%>
					<li><a href="${path}/front/index/service.rb">服务范围</a></li>
					<li><a href="${path}/front/index/blog.rb">社区</a></li>
					<li class="active"><a href="${path}/front/index/contact.rb">联系我们</a></li>
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
				$("span.menu").click(function() {
					$(".top-nav ul").slideToggle("slow", function() {
						// Animation complete.
					});
				});
			</script>
			<!----- script-for-nav ---->

		</div>
	</div>
	<!---- header ----->
	<!------ about ---->
	<div class="about">
		<!--- bradcrumbs ---->
		<div class="breadcrumbs">
			<div class="container">
				<div class="breadcrumbs-left">
					<h1>关于我们</h1>
				</div>
				<div class="breadcrumbs-right">
					<ul>
						<li><a href="index.html">Home</a> <label>:</label></li>
						<li>关于我们</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--- bradcrumbs ---->
	</div>
	<div class="about-top-grids">
		<div class="container">
			<div class="about-wel wel-head text-center">
				<h3>
					关于<span>D</span>RIVER
				</h3>
				<p>物流管理平台，方便快捷，方便人们出行，缩短乡村与城市距离，让我们的生活不再寸步难行。
					让你有更多的时间和家人在一起，让你的时间用在刀刃上，不在为了等车而苦恼，不在为了无座而累奔。</p>
			</div>
			<!---- about-grids ---->
			<div class="about-grids">
				<div class="about-grids-row1">
					<p>方便出行</p>
				</div>
				<div class="about-grids-row2">
					<div class="about-grids-row2-grid">
						<p>节省时间</p>
					</div>
					<div class="about-grids-row2-grid">
						<p>提高效率</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!---- about-grids ---->
		</div>
		<!------ about ---->
	</div>
	<!---- welcome-Note ---->
	<div class="about-note welcome-note">
		<div class="container">
			<div class="wel-head text-center">
				<h3>
					我们是 <span>D</span>RIVER
				</h3>
				<p>方便出行，快乐你我</p>
			</div>
		</div>
	</div>
	<!---- welcome-Note ---->
	<!---- top-grids ---->
	<div class="top-grids">
		<div class="container">
			<div class="col-md-4 top-grid">
				<h4>方便</h4>
				<p>If you are going to use a passage of Lorem Ipsum, there isn't
					anything embarrassing hidden in the middle of text.</p>
			</div>
			<div class="col-md-4 top-grid">
				<h4>快捷</h4>
				<p>If you are going to use a passage of Lorem Ipsum, there isn't
					anything embarrassing hidden in the middle of text.</p>
			</div>
			<div class="col-md-4 top-grid">
				<h4>省时</h4>
				<p>If you are going to use a passage of Lorem Ipsum, there isn't
					anything embarrassing hidden in the middle of text.</p>
			</div>
			<div class="col-md-4 top-grid">
				<h4>舒适</h4>
				<p>If you are going to use a passage of Lorem Ipsum, there isn't
					anything embarrassing hidden in the middle of text.</p>
			</div>
			<div class="col-md-4 top-grid">
				<h4>Available</h4>
				<p>If you are going to use a passage of Lorem Ipsum, there isn't
					anything embarrassing hidden in the middle of text.</p>
			</div>
			<div class="col-md-4 top-grid">
				<h4>Available</h4>
				<p>If you are going to use a passage of Lorem Ipsum, there isn't
					anything embarrassing hidden in the middle of text.</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!---- top-grids ---->
	<!---- container ---->
	<%@ include file="/WEB-INF/showPage/common/footer.jsp" %>
	<div style="display: none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>
