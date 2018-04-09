<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/showPage/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单信息</title>

<link rel="stylesheet" type="text/css" href="${path}/resources/css/mng/model/admin_style.css" />
<link rel="stylesheet" type="text/css" href="${path}/resources/css/mng/model/skins/tpphp.css" />
<link rel="stylesheet" type="text/css" href="${path}/resources/css/front/order/order.css" />

<script src="${path}/resources/js/mng/index/main.js"></script>
<script src="${path}/resources/js/front/order/order.js"></script>

</head>

<body>

	<%@ include file="/WEB-INF/showPage/common/top.jsp"%>
	<div style="margin-left: 2%">
	   <button type="button" class="btn btn-primary" onclick="refresh()">
	  	 <span style="font-size: 15px">刷新</span></button>
	   <button type="button" class="btn btn-primary" onclick="editShow('${userInfo}')">
	  	 <span style="font-size: 15px">发单</span>
	   </button>
	   <!--提示框   title="提示" data-container="body" data-toggle="popover" data-placement="right" data-content="块状展示切换。" -->
	   <button type="button" class="btn btn-primary" onclick="blockedOut()" >
	  	 <span style="font-size: 15px">块状</span>
	   </button>
	   <button type="button" class="btn btn-primary" onclick="selectById(${userInfo.id})" >
	  	 <span style="font-size: 15px">我的订单</span>
	   </button>
	</div>
	
	<!-- 订单列表 -->
	<div id="orderForm" style="margin-left: 1%">
		
		<table class="table table-bordered">
			<tr>
			   <th>订单号</th>
			   <th>订单名称</th>
			   <th>客户</th>
			   <th>商家</th>
			   <th>电话</th>
			   <th>地址</th>
			   <th>创建时间</th>
			   <!--<th>更新时间</th>-->
			   <th>服务时间</th>
			   <th>要求时间（分钟）</th>
			   <th>订单内容</th>
			   <th>订单状态</th>
			   <th>操作</th>
			</tr>
			<c:forEach var="order" items="${orders}">
				<tr>
					<td>${order.id}</td>
					<td>${order.orderName}</td>
					<td>${order.customerId}</td>
					<td>${order.courierId}</td>
					<td>${order.phone}</td>
					<td>${order.address}</td>
					<td>${order.createTime}</td>
					<!-- <td>${order.updateTime}</td> -->
					<td>${order.serviceTime}</td>
					<td>${order.requireTime}</td> 
					<td>${order.orderDescription}</td> 
					<td><c:if test="${order.orderStatus==1}">已接单</c:if>
						<c:if test="${order.orderStatus==0}">未接单</c:if>
						<c:if test="${order.orderStatus!=1 && order.orderStatus!=0}">不可处理订单</c:if></td>
					<td><c:if test="${order.orderStatus==0}">
							<a onclick="reciveOrder(${order.id},'${userInfo}')">接单</a>
						</c:if>
							<a onclick="orderDetail(${order.id})">详情</a>
						<c:if test="${order.orderStatus!=0 && user.roleId==1}">
							<a onclick="deleteOrder(${order.id},'${userInfo}')">删除</a>
						</c:if>
					</td> 
				</tr>
			</c:forEach>
		</table>
		
	</div>
	
	<!-- 分页 -->
	<%@ include file="/WEB-INF/showPage/common/pagination.jsp"%>
	
	<!-- 时间控件测试 -->
	<!-- <div class="form-group">
          <label for="dtp_input1" class="col-md-2 control-label">时间控件</label>
          <div class="input-group date form_datetime col-md-5" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
              <input class="form-control" size="16" type="text" value="" readonly>
              <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
			<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
          </div>
		<input type="hidden" id="dtp_input1" value="" /><br/>
    </div> -->
	
	<!-- 块状分布 -->
	<div style="margin-left: 1%;margin-top: 5%">
	<c:forEach var="order" items="${orders}">
		<div> <!-- class=row -->
		   <div class="col-sm-2 col-md-2">
		      <div class="thumbnail">
		         <img  width="100%" src="${path}/resources/images/mng/model/demo.png"  alt="通用的占位符缩略图">
		      </div>
		      <div class="caption">
		         <h3>${order.orderName} </h3>
		         <p>联系方式：${order.phone}</p>
		         <p>服务时间：${order.serviceTime}</p>
				 <p>要求时间：${order.requireTime}分钟</p>
		         <p>订单内容：${order.orderDescription}</p>
		         <p>地址：${order.address}</p>
		         <p>
		         <c:if test="${order.orderStatus==1}">已接单</c:if>
						<c:if test="${order.orderStatus==0}">未接单</c:if>
						<c:if test="${order.orderStatus!=1 && order.orderStatus!=0}">不可处理订单</c:if>
				</p>
		         <p>
		            <c:if test="${order.orderStatus==0}">
							<a onclick="reciveOrder(${order.id},'${userInfo}')" class="btn btn-default" role="button">接单</a>
					</c:if>
					<a onclick="orderDetail(${order.id})" class="btn btn-default" role="button">详情</a>
					<c:if test="${order.orderStatus!=0}">
						<a onclick="deleteOrder(${order.id},'${userInfo}')" class="btn btn-default" role="button">删除</a>
					</c:if>
		         </p>
		      </div>
		   </div>
		</div>
		</c:forEach>
	</div>
</body>
    
</html>
	
