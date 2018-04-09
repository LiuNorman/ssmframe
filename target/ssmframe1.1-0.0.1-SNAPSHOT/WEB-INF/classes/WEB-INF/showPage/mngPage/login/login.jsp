<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/showPage/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台登录</title>
<!-- REDIRECTURI -->
<!-- <script type="text/javascript"
	src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js"
	data-appid="1105126139" data-redirecturi="fvLMAQKfUGTEryeB"
	charset="utf-8"></script> -->
<%-- <link rel="stylesheet" href="${path}/resources/js/common/bootstrapvalidator-master/bootstrapValidator.css"/> --%>

<link rel="stylesheet" href="${path}/resources/js/common/bootstrapvalidator-master/dist/css/bootstrapValidator.css"/>

<script type="text/javascript" src="${path}/resources/js/common/jquery-1.4.4.min.js"></script>

<script type="text/javascript" src="${path}/resources/js/common/formValidate/theme.js" ></script>
 
 <script type="text/javascript" src="${path}/resources/js/common/bootstrapvalidator-master/vendor/jquery/jquery-1.10.2.min.js"></script>

 <script type="text/javascript" src="${path}/resources/js/common/bootstrapvalidator-master/dist/js/bootstrapValidator.js"></script>

 <script type="text/javascript" src="${path}/resources/js/mng/login/login.js"></script>
 
</head>
<body>
	<!-- ng-app background-image: url(../../resources/images/mng/login/background.png);-->
	<div style="margin-top: 20%;">
	  <form  id="loginForm" action="${path}/mng/login/login.rb" method="post">
		<div style="margin-top: 20%;margin-left: 20%;">
			<div class="form-horizontal" role="form" style="">
				<div class="form-group">
					<label class="col-sm-1 control-label" for="userName">用户名：</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" size="20" id="userName" name="userName">
					</div>
				</div>
				<div class="form-group">
					<label  class="col-sm-1 control-label">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
					<div class="col-sm-3">
					<input type="password" class="form-control" size="20" id="password" name="password">
					</div>
					<a>忘记密码</a>
				</div>
				<div class="form-group">
					<label  class="col-sm-1 control-label" for="code">验证码：</label>
					<div class="col-sm-2">
					 	<input type="text" class="form-control" size="10" id="code" name="code"/>
                    </div>
					<div class="col-sm-1">
					 	<span >2698</span>
                    </div>
				</div>
				<div class="form-group">
					<div class="col-sm-1">
						<button class="btn btn-primary"  type="submit" style="width: 200px">登录</button>
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-3">
					<a  href="${path}/mng/register/register.rb"  >没有账号，请注册</a>
				<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2522987428&Site=2522987428&Menu=yes"><img alt="点击这里给我发消息" src="http://wpa.qq.com/pa?p=2:296763349:51" />
					</a>	
				</div>
				
			</div>
		</div>
		</form>
	</div>
	<%-- <div style="height: 500px; margin-top: 10%; background-image: url(../../resources/images/mng/login/background.png)">

		<div style="margin-left: 60%; width: 400px; padding-top: 50px; padding-bottom:50px;background-color: white;padding-left: 30px;mar">
			
			<!-- 用户名 -->
			<div><h3>登陆</h3></div>
				<div style="position: relative;">
					<div id="userNameTip" style="float: right; position: absolute; left:270px"></div>
					<div style="height: 50px;">
						<label for="userName" style="font-size: 20px">用户名：</label>
						<input type="text" class="col-sm-3 form-control" size="20"
							id="userName" name="userName" style="height: 30px">
					</div>

				</div>
				<!-- 密码 -->
				<div style="position: relative;">
					<div id="passwordTip" style="position: absolute;left:270px;"></div>
					<div style="height: 50px;">
						<label for="password" style="font-size: 20px">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label> 
						<input type="password" class="form-control" size="20" id="password" name="password" style="height: 30px">
					</div>
				</div>
				<div style="position: relative;">
				<div id="codeTip" style="position: absolute;left:270px;;width: 50px" ></div>
					<div style="height: 50px;">
						<label for="code" style="font-size: 20px">验证码：</label> <input type="text"
							class="form-control " size="10" id="code" name="code"
							style="width: 100px;height: 30px" />

						<div style="position: absolute;left:200px;bottom: 20px;"><img alt="" src="${path }/resources/images/mng/login/validateCode.png" style="width: 50px;height: 30px"/></div>
					</div>
					
				</div>
				<div  style="margin-left: 70px">
					<!-- javascript:window.location='main.html' onclick="login()"-->
					<button class="btn btn-primary"  type="submit" style="width: 200px">登录</button><br/>
					<a  href="${path}/mng/register/register.rb"  style="margin-left: 30px">没有账号，请注册</a>
					<span id="qqLoginBtn"></span>
					<!-- <script type="text/javascript">
					    QC.Login({
					       btnId:"qqLoginBtn"    //插入按钮的节点id
					});
					</script> -->
					<!-- <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=296763349&Site=296763349&Menu=yes"><img alt="点击这里给我发消息" src="http://wpa.qq.com/pa?p=2:296763349:51" />
					</a>-->
				</div>
			</form>
		</div>
	</div> --%>
</body>
</html>
