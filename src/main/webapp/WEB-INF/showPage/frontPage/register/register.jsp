<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/showPage/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册</title>
    <!-- REDIRECTURI -->
    <!-- <script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js"
        data-appid="1105126139" data-redirecturi="fvLMAQKfUGTEryeB" charset="utf-8"></script> -->

    <script type="text/javascript" src="${path}/resources/js/common/jquery-1.4.4.min.js"></script>
    <!-- <script type="text/javascript" src="${path}/resources/js/common/angular1.3.9/js/angular.min.js"></script> -->
    <script src="${path}/resources/js/common/formValidate/formValidator-4.1.1.js" type="text/javascript"
            charset="UTF-8"></script>
    <script src="${path}/resources/js/common/formValidate/formValidatorRegex.js" type="text/javascript"
            charset="UTF-8"></script>
    <%--<script src="${path}/resources/js/common/DateTimeMask.js" language="javascript"  type="text/javascript"></script>--%>
    <script src="${path}/resources/js/common/formValidate/theme.js" type="text/javascript"></script>
    <script type="text/javascript" src="${path}/resources/js/mng/register/register.js"></script>
    <!-- bootstrap验证 -->

    <%--  <link rel="stylesheet" href="${path}/resources/js/common/bootstrapvalidator-master/vendor/bootstrap/css/bootstrap.css"/> --%>
    <link rel="stylesheet"
          href="${path}/resources/js/common/bootstrapvalidator-master/dist/css/bootstrapValidator.css"/>

    <script type="text/javascript"
            src="${path}/resources/js/common/bootstrapvalidator-master/vendor/jquery/jquery-1.10.2.min.js"></script>
    <%--  <script type="text/javascript" src="${path}/resources/js/common/bootstrapvalidator-master/vendor/bootstrap/js/bootstrap.min.js"></script>
     --%>
    <script type="text/javascript"
            src="${path}/resources/js/common/bootstrapvalidator-master/dist/js/bootstrapValidator.js"></script>
</head>
<body>
<div style="margin-top: 20px">
    <div style="margin-left: 500px"><h3>个人注册</h3></div>
    <div id="addUserDialog" class="form-horizontal" role="form">
        <form id="registerForm" action="${path}/front/register/userRegister.rb" method="post">

            <div class="form-group">
                <label for="account" class="col-sm-4 control-label">登录账号：</label>
                <div class="col-sm-4" style="position: relative;">
                    <input type="text" id="account" class="form-control" name="account" placeholder="登录账号为手机号或者邮箱"/>
                </div>
            </div>
            <div class="form-group">
                <label for="userName" class="col-sm-4 control-label">用户名称：</label>
                <div class="col-sm-4" style="position: relative;">
                    <input type="text" id="userName" class="form-control" name="userName" placeholder="输入用户名称"/>
                    <div id="userNameTip" style="left:200px;position: absolute;top: 0px"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="cardID" class="col-sm-4 control-label">身份证号：</label>
                <div class="col-sm-3" style="position: relative;">
                    <input type="text" id="cardID" class="form-control" name="cardID" placeholder="输入身份证号"/>
                    <div id="cardIDTip" style="left:200px;position: absolute;top: 0px"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="password" class="col-sm-4 control-label">登录密码：</label>
                <div class="col-sm-2" style="position: relative;">
                    <input type="password" id="password" class="form-control" name="password"/>
                    <div id="passwordTip" style="left:200px;position: absolute;top: 0px"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="phone" class="col-sm-4 control-label">电话：</label>
                <div class="col-sm-2" style="position: relative;">
                    <input type="text" id="phone" name="phone" class="form-control"/>
                    <div id="phoneTip" style="left:200px;position: absolute;top: 0px"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="address" class="col-sm-4 control-label">地址：</label>
                <div class="col-sm-2" style="position: relative;">
                    <input type="text" id="address" name="address" class="form-control"/>
                    <div id="addressTip" style="left:200px;position: absolute;top: 0px"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="age" class="col-sm-4 control-label">年龄：</label>
                <div class="col-sm-1">
                    <input type="text" id="age" name="age" class="form-control"/>
                    <div id="ageTip" style="left:200px;position: absolute;top: 0px"></div>
                </div>
            </div>

            <div class="form-group">
                <label for="roleId" class="col-sm-4 control-label">用户角色:</label>
                <div class="col-sm-2" style="position: relative;">
                    <select id="roleId" name="roleId" class="form-control">
                        <option value="0">默认用户</option>
                        <option value="2">普通用户</option>
                        <option value="3">司机</option>
                        <option value="4">商家</option>
                    </select>
                    <div id="roleIdTip" style="left:230px;position: absolute;top: 0px"></div>
                </div>
            </div>
            <div id="driverInfo" style="display: none;">
                <div class="form-group">
                    <label for="plateNumber" class="col-sm-4 control-label">车牌号码：</label>
                    <div class="col-sm-2" style="position: relative;">
                        <input type="text" id="plateNumber" name="plateNumber" class="form-control"/>
                        <div id="plateNumberTip" style="left:200px;position: absolute;top: 0px"></div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="drivingLicenceImage" class="col-sm-4 control-label">驾驶证照片：</label>
                    <div class="col-sm-2" style="position: relative;">
                        <input type="file" id="drivingLicenceImage" name="drivingLicenceImage" class="form-control"/>
                        <!-- <div id="drivingLicenceImageTip" style="left:200px;position: absolute;top: 0px"></div> -->
                    </div>
                </div>
            </div>
            <!-- onclick="register()" -->
            <div style="margin-left: 500px;"><input class="btn btn-primary" type="submit" style="width: 150px"
                                                    value="注册"></input><br/><a href="${path }/front/index/login.rb">已有账号，直接登录</a>
            </div>
        </form>
    </div>

</div>

</body>
</html>
