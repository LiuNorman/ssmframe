//共通js文件

//添加用户
function addUserShow(){
	
	//拼接订单编辑页面   class="form-horizontal"
	var $addUserDialog=$('<div id="addUserDialog" class="form-horizontal" role="form"></div>');
	
	$addUserDialog.append('<div class="form-group"><label for="userName" class="col-sm-4 control-label">用户名称：</label><div class="col-sm-5"><input type="text" id="userName" class="form-control" name="userName" placeholder="输入用户名称"/></div></div>');
	$addUserDialog.append('<div class="form-group"><label for="cardID" class="col-sm-4 control-label">身份证号：</label><div class="col-sm-5"><input type="text" id="cardID" class="form-control" name="cardID" placeholder="输入身份证号"/></div></div>');
	$addUserDialog.append('<div class="form-group"><label for="password" class="col-sm-4 control-label">登陆密码：</label><div class="col-sm-5"><input type="password" id="password" class="form-control" name="password"/></div></div>');
	$addUserDialog.append('<div class="form-group"><label for="phone" class="col-sm-4 control-label">电话：</label><div class="col-sm-5"><input type="text" id="phone" name="phone" class="form-control"/> </div></div>');
	$addUserDialog.append('<div class="form-group"><label for="plateNumber" class="col-sm-4 control-label">车牌号码：</label><div class="col-sm-5"><input type="text" id="plateNumber" name="plateNumber" class="form-control"/> </div></div>');
	$addUserDialog.append('<div class="form-group"><label for="drivingLicenceImage" class="col-sm-4 control-label">驾照照片：</label><div class="col-sm-5"><input type="file" id="drivingLicenceImage" name="drivingLicenceImage" class="form-control"/> </div></div>');
	$addUserDialog.append('<div class="form-group"><label for="address" class="col-sm-4 control-label">地址：</label><div class="col-sm-5"><input type="text" id="address" name="address" class="form-control"/></div> </div>');
	$addUserDialog.append('<div class="form-group"><label for="age" class="col-sm-4 control-label">年龄：</label><div class="col-sm-5"><input type="text" id="age" name="age" class="form-control"/></div></div>');
		/*$addDialog.append('<div class="form-group"><label for="updateTime" class="col-sm-4 control-label">更新时间：</label><div class="col-sm-5"><input type="text" id="updateTime" name="updateTime" class="form-control"/></div></div>');
		*/
	$addUserDialog.append('<div class="form-group"><label for="roleId" class="col-sm-4 control-label">用户角色:</label><div class="col-sm-5"><select id="roleId" name="roleId" class="form-control"> <option value="0">默认用户</option>'+
						   '<option value="1">普通用户</option> <option value="2">司机</option></select></div></div>');
	$addUserDialog.append('<div class="form-group"><label for="userStatus" class="col-sm-4 control-label">用户状态:</label><div class="col-sm-5"><select id="userStatus" name="userStatus" class="form-control"> <option value="1">启用</option>'+
		'<option value="0">禁用</option> <option value="2">删除</option></select> </div></div>');
		var dialogId = $("#addUserDialog");
		
		//初始化注册用户的界面  var dialog = new
		 BootstrapDialog.show({
		        id: 'addUserDialog',
		        title: '用户注册',
		        message: $addUserDialog,
		        buttons: [{
		        	icon: 'glyphicon glyphicon-send',
		            label: '注册',
		            autospin: true,
		            action:function(){
		            	
		            	// 身份证ID
		            	var cardID=$("#cardID").val();
		            	var userName=$("#userName").val();
		            	var password=$("#password").val();
		            	var phone=$("#phone").val();
		            	var createTime=new Date();
		            	var updateTime=new Date();
		            	var plateNumber=$("#plateNumber").val();
		            	var age=$("#age").val();
		            	var drivingLicenceImage=$("#drivingLicenceImage").val();
		            	var address=$("#address").val();
		            	var userStatus=$("#userStatus").val();
		            	var roleId=$("#roleId option:selected").val();
		            	
		            	$.ajax({
		            		url:path+'/mng/user/addUser',
		            		data:{
		            			'userName':userName,
		            			'password':password,
		            			'cardID':cardID,
		            			'phone':phone,
		            			'plateNumber':plateNumber,
		            			'drivingLicenceImage':drivingLicenceImage,
		            			'address':address,
		            			//'createTime':createTime,
		            			//'updateTime':updateTime,
		            			'age':age,
		            			'roleId':roleId,
		            			'userStatus':userStatus
		            		},
		            		type:'post',
		            		success:function(data){
		            			location.reload();
		            			if(data>0){
		            				
		            				alert("添加成功");
		            				
		            			}
		            		},
		            		error: function(data){
		            			
		            			alert(data+"添加失败");
		            			
		            		}
		            	});
		            }
		        },
		        {
			    	//icon: 'glyphicon glyphicon-send',
			    	label: '取消',
			    	autospin: true,
			    	action: function(dialogRef){
		                dialogRef.close();
		            }
			    	
			    }]
			    
		    });

}


//用户详情
function userInfo(userId){
	
	if(userId!=null && userId !=''){	
		//window.location.url=path+"/mng/user/userInfo.rb?userId="+userId;
		 window.open(path+'/mng/user/userInfo.rb?userId='+userId,'_self');
	}else{
		
		BootstrapDialog.confirm('请先登录系统。', function(res){
	        if(res) {
	        	 window.open(path+'/mng/index/login.rb','_self');
	        }
		});
	}
}

//切换tab页样式

