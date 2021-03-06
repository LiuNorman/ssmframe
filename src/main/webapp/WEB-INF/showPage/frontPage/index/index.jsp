<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/showPage/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>

<!-- Custom Theme files -->
<link href="${path}/resources/css/front/index/style.css" rel='stylesheet' type='text/css' />

<script src="${path}/resources/js/front/index/index.js"></script>
<script src="${path}/resources/js/common/selfwrite/pagination.js"></script>
<script src="${path}/resources/js/front/order/order.js"></script>
	<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script type="text/javascript">
	//查询分页的总数
	var pageNum=${pageNum};
	
	//每页条数
	var pageCount=${pageCount};

	//当前页
	var nowPage=${nowPage};
</script>
</head>
<body>
	
	<!---- container ---->
	<!---- header ----->
	<div class="header" style="height: 300px">
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
					<li  class="active"><a href="${path}/front/index/index.rb">首页</a></li>
					<%--<li><a href="${path}/front/index/contact.rb">关于我们</a></li>--%>
					<li ><a href="${path}/front/index/service.rb">服务范围</a></li>
					<li ><a href="${path}/front/index/blog.rb">社区</a></li>
					<li ><a href="${path}/front/index/contact.rb">联系我们</a></li>
					<li ><a href="${path}/mng/order/index.rb">订单管理</a></li>
					<a  href="${path}/front/index/login.rb" target="_parent">
					   <span style="font-size: 15px;color:white">登录</span>
				   </a>
				<a  href="${path}/front/register/register.rb">
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
			<!---- banner --->
			<div class="banner text-center">
				<h1>
					物流管理系统 <span>D</span>river
				</h1>
				<p>远在天边，近在咫尺</p>
				<a class="seemore" onclick="moreOnShow()">更多</a>
			</div>
			<!---- banner --->
			<!---- banner-grids ---->
			<div class="banner-grids" style="height: 110px;display: none;" id="moreShow">
				<div class="col-md-4 banner-grid" style="margin-top: 0px">
					<span><img src="${path}/resources/images/front/index/icon.png" title="tootls" style="height: 20px;margin-top: 0px"/></span>
					
					<h4>
						<a href="#">运输工具</a>
					</h4>
					<p>出租车、私家车</p>
				</div>
				<div class="col-md-4 banner-grid">
					<span><img src="${path}/resources/images/front/index/icon1.png" title="tootls" style="height: 20px;margin-top: 0px"/></span>
					<h4>
						<a href="#">我们的目标</a>
					</h4>
					<p>您的方便才是我们最大的方便</p>
				</div>
				<div class="col-md-4 banner-grid">
					<span><img src="${path}/resources/images/front/index/icon3.png" title="tootls" style="height: 20px;margin-top: 0px"/></span>
					<h4>
						<a href="#">关于我们</a>
					</h4>
					<p>顾客至上</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<!---- banner-grids ---->
		</div>
	</div>
	<!---- header ----->
	<!---- welcome-Note ---->
	<div class="welcome-note">
		<div class="container">
			<div class="wel-head text-center">
				<h3>
					我们需要你 <span>D</span>river
				</h3>
				<p>距离不是问题，交通更不是难题；咫尺天涯，与您相伴</p>
			</div>
		</div>
	</div>
	<!---- welcome-Note ---->
	<!---- top-grids ---->
	<!-- <div class="top-grids">
		<div class="container">
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
	</div> -->
	<!---- top-grids ---->
	<!---- mid-grids ---->
	<div class="mid-grids">
		<div class="container">
			<div class="col-md-8 mid-grids-left">
				<h2>
					我们需要你<span><label>D</label>river</span>
				</h2>
				<p>最便捷的服务</p>
				
				<!---- latest-news-grids---->
				<div class="latest-news-grids">
				<c:forEach var="order" items="${orders}">
					<div class="latest-news-grid">
						<img src="${path}/resources/images/front/index/m1.jpg" title="name" />
						<h4>
							<a href="#">${order.orderName}</a>
						</h4>
						<span> 
							<c:if test="${order.serviceTime == null}">--</c:if>
	                   		<c:if test="${order.serviceTime != null}">
	                       		<fmt:formatDate value="${order.serviceTime}" pattern="YYYY-MM-dd HH:mm:ss"/>
	                   		</c:if>,  <a ><c:if test="${order.orderStatus==1}">已接单</c:if>
									<c:if test="${order.orderStatus==0}">未接单</c:if>
									<c:if test="${order.orderStatus!=1 && order.orderStatus!=0}">不可处理订单</c:if>
									</a>
						</span>
						  	<p>联系方式：${order.phone}</p>
							 <p>要求时间：${order.requireTime}分钟</p>
					         <p>订单内容：${order.orderDescription}</p>
					         <p>地址：${order.address}</p>
					         <p>
					            <c:if test="${order.orderStatus==0}">
										<a onclick="reciveOrder(${order.id},'${userInfo}')" class="btn btn-default" role="button">接单</a>
								</c:if>
								<a onclick="orderDetail(${order.id})" class="btn btn-default" role="button">详情</a>
								<c:if test="${order.orderStatus!=0}">
									<a onclick="deleteOrder(${order.id},'${userInfo}')" class="btn btn-default" role="button">删除</a>
								</c:if>
					         </p>
						<a class="news-btn" href="${path}/front/order/single.rb?orderId=${order.id}">订单详情</a>
					</div>
					</c:forEach>
					<div id="pagination" name="pagination" class="paging" url="${path}/front/index/index.rb" style="margin-right: 1%;padding-top: 20%"></div>
					<div class="clearfix"></div>
				</div>
				<!---- latest-news-grids---->
			</div>
			<div class="col-md-4 mid-grids-right">
				<h3>
					<span><label>D</label>river</span> Services
				</h3>
				<p>We wont let you down, we are here to make you feel..</p>
				<div class="services-list">
					<ul>
						<li><a href="#"><span> </span><small>Etiam pretium quam sed lectus mollis</small></a></li>
						<li><a href="#"><span> </span><small>Vivamus in vulputate tellus. Morbi interdum</small></a></li>
						<li><a href="#"><span> </span><small>aucibus nibh, id rutrum elit hendrerit quis</small></a></li>
						<li><a href="#"><span> </span> <small>Ut ut turpis nec turpis bibendum aliquet</small></a></li>
						<li><a href="#"><span> </span><small>neque. Nulla sollicitudin tristique nisl, ac porttitor</small></a></li>
						<li><a href="#"><span> </span><small>ligula laoreet sit amet. Quisque non fringilla ante.</small></a></li>
						<li><a href="#"><span> </span><small>Etiam pretium quam sed lectus mollis</small></a></li>
						<li><a href="#"><span> </span><small>Vivamus in vulputate tellus. Morbi interdum</small></a></li>
						<li><a href="#"><span> </span><small>aucibus nibh, id rutrum elit hendrerit quis</small></a></li>
					</ul>
				</div>
			</div>
			
		</div>
	</div>
	<!---- mid-grids ---->
	<!---- container ---->
	<%@ include file="/WEB-INF/showPage/common/footer.jsp" %>
	<div style="display: none">
		<script src='' language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>

