<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/showPage/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理界面</title>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/mng/model/admin_style.css" />
<link rel="stylesheet" type="text/css" href="${path}/resources/css/mng/usermng/usermng.css" />
<link rel="stylesheet" type="text/css" href="${path}/resources/css/mng/model/skins/tpphp.css" />

<script src="${path}/resources/js/mng/usermng/usermng.js"></script>
<script src="${path}/resources/js/common/jquery-1.4.4.min.js"></script>
<script src="${path}/resources/js/mng/index/main.js"></script>
<script src="${path}/resources/js/mng/index/index.js"></script>
<script src="${path}/resources/js/mng/index/artDialog.js"></script>
</head>

<body>
<%@ include file="/WEB-INF/showPage/common/top.jsp"%>

<div style="margin-left: 8%;;width: 85%">
	<div style="margin-left: 2%">
	   <button type="button" class="btn btn-primary" onclick="refresh('${path}/front/user/index')">
	   <span style="font-size: 15px">刷新</span></button>
	   <button type="button" class="btn btn-primary" onclick="addUserShow()">
	   <span style="font-size: 15px">注册</span>
	   </button>
	</div>
	<!-- YOGNHU 列表 -->
	<div id="userForm" style="margin-left:1%;">
		
		<table class="table table-busered">
			<tr>
			   <th>用户编号</th>
			   <th>用户名</th>
			  <!--  <th>身份证号</th> -->
			  <!--  <th>年龄</th> -->
			  <!--  <th>电话</th> -->
			   <!-- <th>地址</th> -->
			   <th>创建时间</th>
			   <th>更新时间</th>
			   <th>角色</th>
			   <!-- <th>账户余额</th> -->
			   <th>收入（元）</th>
			   <th>消费（元）</th>
			   <th>操作</th>
			</tr>
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.id}</td>
					<td>${user.userName}</td>
					<%-- <td>${user.cardID}</td> --%>
					<%-- <td>${user.age}</td> --%>
					<%-- <td>${user.phone}</td> --%>
					<%-- <td>${user.address}</td> --%>
					<td>${user.createTime}</td>
					<td>${user.updateTime}</td>
					<td>
						<c:if test="${user.roleId==1}">管理员</c:if>
						<c:if test="${user.roleId==2}">普通用户</c:if>
						<c:if test="${user.roleId==3}">司机</c:if>
						<c:if test="${user.roleId==4}">酒店</c:if>
					</td>
					<td>${user.userMoney}</td> 
					<td>${user.makeMoney}</td> 
					<td>${user.consumption}</td>
					<td><c:if test="${userInfo.roleId==1 || userInfo.id==user.id}"><a onclick="editUserShow(${user.id})">编辑</a></c:if>&nbsp;<a onclick="userInfoShow(${user.id})">详情</a></td> 
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
	<%-- <%@ include file="/WEB-INF/showPage/common/pagination.jsp"%> --%>
</body>
</html>