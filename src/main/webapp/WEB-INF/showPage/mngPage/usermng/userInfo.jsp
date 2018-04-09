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
	  <!--  <button type="button" class="btn btn-primary" onclick="addUserShow()">
	   <span style="font-size: 15px">注册</span>
	   </button> -->
	</div>
	<!-- YOGNHU 列表 -->
	<div id="userForm" class="form-horizontal">
	
			<div id="userInfo" >
			<div style="margin-left: 50%"><h3>用户信息</h3></div>
			<%-- <div class="form-group">
				<label for="userId" class="col-sm-4 control-label">用户账户：</label>
				<div class="col-sm-4">
					<input type="text" id="userId" class="form-control" name="userId" value="${userInfo.id}" disabled="disabled" />
				</div>
			</div> --%>
			<div class="form-group">
				<label for="userName" class="col-sm-4 control-label">用户名称：</label>
				<div class="col-sm-4">
					<input type="text" id="userName" class="form-control" name="userName" value="${userInfo.userName}" disabled="disabled" />
				</div>
			</div>
			<div class="form-group">
				<label for="cardID" class="col-sm-4 control-label">身份证号：</label>
				<div class="col-sm-4">
					<input type="text" id="cardID" class="form-control" name="cardID" value="${userInfo.cardID}" disabled="disabled" />
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-4 control-label">登陆密码：</label>
				<div class="col-sm-4">
					<input type="password" id="password" class="form-control" name="password" value="${userInfo.password}" disabled="disabled" />
				</div>
			</div>
			<div class="form-group">
				<label for="phone" class="col-sm-4 control-label">电话：</label>
				<div class="col-sm-4">
					<input type="text" id="phone" name="phone" class="form-control"
						value="${userInfo.phone}" disabled="disabled" />
				</div>
			</div>
			<div class="form-group">
				<label for="plateNumber" class="col-sm-4 control-label">车牌号码：</label>
				<div class="col-sm-4">
					<input type="text" id="plateNumber" name="plateNumber"
						class="form-control" value="${userInfo.plateNumber}" disabled="disabled" />
				</div>
			</div>
			<div class="form-group">
				<label for="drivingLicenceImage" class="col-sm-4 control-label">驾照照片：</label>
				<div class="col-sm-4">
					<img src="${path}/resources/images/mng/login/login.png" id="drivingLicenceImage" name="drivingLicenceImage" value="${userInfo.drivingLicenceImage}"/>
					<input type="hidden" id="drivingLicenceImage"
						name="drivingLicenceImage" class="form-control" value="${userInfo.drivingLicenceImage}" />
				</div>
			</div>
			<div class="form-group">
				<label for="address" class="col-sm-4 control-label">地址：</label>
				<div class="col-sm-4">
					<input type="text" id="address" name="address" class="form-control"
						value="${userInfo.address}" disabled="disabled" />
				</div>
			</div>
			
			<div class="form-group">
				<label for="createTime" class="col-sm-4 control-label">创建时间：</label>
				<div class="col-sm-4">
					<input type="text" id="createTime" name="createTime"
						class="form-control" disabled="disabled" />
				</div>
			</div>

			<div class="form-group">
				<label for="roleId" class="col-sm-4 control-label">用户角色:</label>
				<div class="col-sm-4">
					<select id="roleId" name="roleId" class="form-control"
						disabled="disabled" disabled="disabled" >
						<option value="0">默认用户</option>
						<option value="1">普通用户</option>
						<option value="2">司机</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="userStatus" class="col-sm-4 control-label">用户状态:</label>
				<div class="col-sm-4">
					<select id="userStatus" name="userStatus" class="form-control"
						disabled="disabled">
						<option value="1">启用</option>
						<option value="0">禁用</option>
						<option value="2">删除</option>
					</select>
				</div>
			</div>
			</div>
		</div>
	</div>
	<%-- <%@ include file="/WEB-INF/showPage/common/pagination.jsp"%> --%>
</body>
</html>