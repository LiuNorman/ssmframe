<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/showPage/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
    <!-- REDIRECTURI -->
    <script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="1105126139"
            data-redirecturi="fvLMAQKfUGTEryeB" charset="utf-8"></script>

    <script type="text/javascript" src="${path}/resources/js/common/jquery-1.4.4.min.js"></script>
    <!-- <script type="text/javascript" src="${path}/resources/js/common/angular1.3.9/js/angular.min.js"></script> -->

    <script type="text/javascript" src="${path}/resources/js/front/login/login.js"></script>
</head>
<body>
<!-- ng-app -->
<div class="container">
    <div class="center-block">
        <img src="${path}/resources/images/front/index/post-pic1.jpg" alt="" width="">

    </div>
    <div style="margin-top: 2%;" class="col-sm-10">
        <div>

            <div class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="userName">用户名：</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" size="20" id="userName" name="userName">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">密码：</label>
                    <div class="col-sm-5">
                        <input type="password" class="form-control" size="20" id="password" name="password">
                    </div>
                </div>
               <%-- <div class="form-group">
                    <label class="col-sm-2 control-label" for="code">验证码：</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" size="10" id="code" name="code"><label>2698</label>
                    </div>
                </div>--%>
                <div class="form-group">
                    <div class="col-sm-5">
                        <!-- javascript:window.location='main.html' -->
                        <button class="btn btn-primary" onclick="login()">登录</button>
                       </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-5">
                        <a class="button" target="_blank" href="${path}/front/register/register.rb">
                                立即注册</a>
                        <a class="button" target="_blank" href="${path}/front/register/register.rb">
                                忘记密码</a>
                        <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=296763349&Site=296763349&Menu=yes"><img
                                alt="点击这里给我发消息" src="http://wpa.qq.com/pa?p=2:296763349:51"/></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
