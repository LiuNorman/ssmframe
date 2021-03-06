<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="${path}/resources/js/common/selfwrite/common.js"></script>
</head>
<div class="top">

    <div class="admin_logo">
        <img height="80%" src="${path}/resources/images/mng/model/admin_logo.jpg">
    </div>

    <div><!--  class="top_nav" -->
        <!-- <nav class="navbar navbar-default navbar-static-top" role="navigation"> -->
        <ul class="nav navbar-nav"><!-- nav nav-pills -->
            <li class="active" style=""><a href="${path}/mng/index/index.rb">后台首页</a></li>
            <%-- <li><a href="${path}/front/index/index">网站首页管理</a></li> --%>
            <li><a href="javascript:void(0)" onclick="userInfo('${userInfo.id}')">用户中心</a></li>
            <li><a href="${path}/mng/order/index.rb">订单中心</a></li>
            <li><a href="${path}/mng/order/needReciveOrder.rb">消息中心</a></li>

        </ul>
        <!-- </nav> -->
    </div>
    <div style="padding-top: 1.3%;">
        <div style="float: right;padding-right: 5%">
            <!-- type="button" class="btn btn-primary" -->
            <a href="${path}/front/index/login.rb" target="_parent">
                <span style="font-size: 15px">登录</span>
            </a>
            <a href="${path}/front/register/register.rb">
                <span style="font-size: 15px">注册</span>
            </a>
        </div>

        <div style="float: right;margin-right:3%"><!--  class="top_member" -->
            <!-- style="font-size: 20px" -->
            <span>欢迎您，${userInfo.userName}<a href="${path}/mng/index/loginOut.rb">退出</a></span> |
            <a onclick="userInfo('${userInfo.id}')">帐号管理</a> |
            <a href="#" onclick="recharge()">充值</a> | <!-- <a href="#">编辑</a> | -->
            <a href="${path}/mng/order/needReciveOrder.rb">${messageCount}条未读信息</a>
        </div>
    </div>
</div>
</html>