// 订单管理JS

$(function(){
	/*$("[data-toggle='popover']").popover();
	mapTest();*/
	
	 $('#sendOrderForm')
     .bootstrapValidator({
         message: 'This value is not valid',
         feedbackIcons: {
             valid: 'glyphicon glyphicon-ok',
             invalid: 'glyphicon glyphicon-remove',
             validating: 'glyphicon glyphicon-refresh'
         },
         fields: {
        	 orderName: {
                 message: 'The username is not valid',
                 validators: {
                     notEmpty: {
                         message: '用户名不能为空'
                     },
                     stringLength: {
                         min: 6,
                         max: 30,
                         message: '用户名的长度为6-30位'
                     },
                     /*remote: {
                         url: 'remote.php',
                         message: 'The username is not available'
                     },*/
                     regexp: {
                         regexp: /^[a-zA-Z0-9_\.]+$/,
                         message: '用户名只能为数字和字母'
                     }
                 }
             },
             customerId: {
            	 message: 'The username is not valid',
            	 validators: {
            		 notEmpty: {
            			 message: '身份证不能为空'
            		 },
            		 stringLength: {
            			 min: 6,
            			 max: 30,
            			 message: '用户名的长度为6-30位'
            		 },
            		 /*remote: {
                         url: 'remote.php',
                         message: 'The username is not available'
                     },*/
            		 regexp: {
            			 regexp: /^[a-zA-Z0-9_\.]+$/,
            			 message: '用户名只能为数字和字母'
            		 }
            	 }
             },
             phone: {
                 validators: {
                     notEmpty: {
                         message: '密码不能为空'
                     }
                 }
             },
             phone: {
	        	 validators: {
	        		 notEmpty: {
	        			 message: '手机号码不能为空'
	        		 }
	        	 }
         },
         address: {
        	 validators: {
        		 notEmpty: {
        			 message: '车牌号不能为空'
        		 }
        	 }
         },
         drivingLicenceImage: {
        	 validators: {
        		 notEmpty: {
        			 message: '驾驶照不能为空'
        		 }
        	 }
         },
         roleId: {
        	 validators: {
        		 notEmpty: {
        			 message: '用户角色不能为空'
        		 }
        	 }
         },
         address: {
        	 validators: {
        		 notEmpty: {
        			 message: '地址不能为空'
        		 }
        	 }
         },
         requireTime: {
        	 validators: {
        		 notEmpty: {
        			 message: '地址不能为空'
        		 }
        	 }
         }
         }
     });
});

// 显示添加界面
function editShow(user){
	
	if(user!=null && user !=''){	
		//拼接订单编辑页面   class="form-horizontal"<form id="sendOrderForm"></form>
		var $editDialog=$('<div id="editDialog" class="form-horizontal" role="form"></div>');
		
			$editDialog.append('<div class="form-group"><label for="orderName" class="col-sm-4 control-label">订单名称：</label><div class="col-sm-5"><input type="text" id="orderName" class="form-control" name="orderName" placeholder="输入订单名称"/></div></div>');
			$editDialog.append('<div class="form-group"><label for="customerId" class="col-sm-4 control-label">客户：</label><div class="col-sm-5"><input type="text" id="customerId" class="form-control" name="orderName" disabled="disabled" value="1"/></div></div>');
			$editDialog.append('<div class="form-group"><label for="phone" class="col-sm-4 control-label">电话：</label><div class="col-sm-5"><input type="text" id="phone" name="phone" class="form-control"/> </div></div>');
			$editDialog.append('<div class="form-group"><label for="address" class="col-sm-4 control-label">地址：</label><div class="col-sm-5"><input type="text" id="address" name="address" class="form-control"/></div> </div>');
			/*$editDialog.append('<div class="form-group"><label for="createTime" class="col-sm-4 control-label">'
								+'创建时间：</label><div class="input-group date form_date col-md-5"  data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">'
								+'<input  id="createTime" name="createTime" class="form-control"  type="text" value="" readonly>'
								+'<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>'
								+'<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>'
								+'</div></div>');*/
			$editDialog.append('<div class="form-group"><label for="requireTime" class="col-sm-4 control-label">要求时间:</label><div class="col-sm-5"><select id="requireTime" name="requireTime" class="form-control"><option value="10">10分钟</option>'+
			   '<option value="20">20分钟</option> <option value="30">30分钟</option></select> </div></div>');
	
			$editDialog.append('<div class="form-group"><label for="orderDescription" class="col-sm-4 control-label">订单内容:</label><div class="col-sm-5"><textarea row="3" id="orderDescription" name="orderDescription" class="form-control"></textarea></div></div>');
			$editDialog.append('<div class="form-group"><label for="orderStatus" class="col-sm-4 control-label">订单状态:</label><div class="col-sm-5"><select id="orderStatus" name="orderStatus" class="form-control" disabled="disabled"><option value="0">未接单</option>'+
							   '<option value="1">已接单</option> <option value="2">完成</option></select> </div></div>');
		
		var dialogId = $("#editDialog");
		
		//初始化订单发布的界面  var dialog = new 
	    BootstrapDialog.show({
	        id: dialogId,
	        title: '编辑订单',
	        message: $editDialog,
	        buttons: [{
	        	
	        	icon: 'glyphicon glyphicon-send',
	            label: '发布',
	            autospin: true,
	            action:function(dialog){
	            	
	            	var orderName=$("#orderName").val();
	            	var customerId=$("#customerId").val();
	            	//var courierId=1;//$("#courierId option:selected").val();
	            	var phone=$("#phone").val();
	            	var orderStatus=$("#orderStatus option:selected").val();
	            	var serviceTime=new Date();//$("#serviceTime").val();
	            	var updateTime=new Date();//$("#serviceTime").val();
	            	var requireTime=$("#requireTime option:selected").val();
	            	var address=$("#address").val();
	            	var createTime=new Date();//$("#createTime").val();
	            	var orderDescription=$("#orderDescription").val();
	            	
	            	$.ajax({
	            		url:'sendOrder.rb',
	            		type:'Post',
	            		async:false,
	            		contentType: "application/x-www-form-urlencoded; charset=utf-8",
	            		data:{
	            			'orderName':orderName,
	            			'customerId':customerId,
	            			//'courierId':courierId,
	            			'phone':phone,
	            			'address':address,
	            			'orderStatus':orderStatus,
	            			'createTime':createTime,
	            			'updateTime':updateTime,
	            			'serviceTime':serviceTime,
	            			'requireTime':requireTime,
	            			'orderDescription':orderDescription
	            		},
	            		
	            		success:function(data){
	            			dialog.close();
	            			BootstrapDialog.alert("发单成功。");
	            			refresh();
	            		},
	            		error: function(data){
	            			
	            			var str="";
	            			
	            			 $.each(data,function(n,value) { 
	            				 
	            				 str=str+"n:"+n+".value:"+value;   
	            				                   
	            			 });   
	            			 BootstrapDialog.alert("发单失败，请重新发单。");
	            			
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
	    
	}else{
			
			BootstrapDialog.confirm('请先登录系统。', function(res){
		        if(res) {
		        	 window.open(path+'/mng/index/login.rb','_self');
		        }
			});
		}
}

// 刷新
function refresh(){
	
	location.reload();
	
}

//切换块状展示
function blockedOut(){
     
	//$("#makeTab").html("列表");
	$("#orderForm").hide();
	$("#orderFormBlock").show();
	//BootstrapDialog.alert('切换展示形式！！！');
}
//切换块状展示
function tableOut(){
	
	//$("#makeTab").html("列表");
	$("#orderForm").show();
	$("#orderFormBlock").hide();
	//BootstrapDialog.alert('切换展示形式！！！');
}

//编辑-----接单
function reciveOrder(id,user){
	
	if(user!=null && user !=''){
		
		BootstrapDialog.confirm('确定接单吗?', function(result){
			
	        if(result) {
	        	
	        	var orderName;
	        	// 接单
	        	var orderStatus=1;
	        	var serviceTime=new Date();
	        	
	        	// 接单
	        	$.ajax({
	         		url:'reciveOrder.rb',
	         		async:false,
	         		data:{
	         			'id':id,
	         			'courierId':user.id,
	         			'orderName':orderName,
	         			'orderStatus':orderStatus,
	         			'serviceTime':serviceTime
	         		},
	         		success:function(data){
	         			if(data.code=='success'){
	         				BootstrapDialog.alert("接单成功。");
	         			}
	         			refresh();
	         		},
	         		error: function(data){
	         				  
	         			BootstrapDialog.alert(data+"接单失败");
	         			
	         		}
	         	});
	        	
	        }
	    });
		
	}else{
		
		BootstrapDialog.confirm('请先登录系统。', function(res){
	        if(res) {
	        	//BootstrapDialog.alert('登陆！！！');
	        	  window.open(path+'/mng/index/login','_self');
	        }
		});
		
	}
}

//详情
function orderDetail(id){
	$.ajax({
 		url:'selOrder.rb',
 		data:{
 			'orderId':id,
 		},
 		success:function(data){
 			
 			var $editDialog=$('<div id="editDialog" class="form-horizontal" role="form"></div>');
 			
 			$editDialog.append('<div class="form-group"><label for="orderName" class="col-sm-4 control-label">订单名称：</label><div class="col-sm-5"><input type="text" class="form-control" name="orderName" placeholder="'+data.orderName+'" disabled="disabled"/></div></div>');
 			$editDialog.append('<div class="form-group"><label for="customerId" class="col-sm-4 control-label">客户：</label><div class="col-sm-5"><input type="text"  name="customerId" class="form-control" placeholder="'+data.customerId+'" disabled="disabled"/></div></div>');
 			$editDialog.append('<div class="form-group"><label for="courierId" class="col-sm-4 control-label">商家：</label>'+
 							   '<div class="col-sm-5" ><input type="text"  name="courierId" class="form-control" placeholder="'+data.courierId+'" disabled="disabled"/></div></div>');
 			
 			$editDialog.append('<div class="form-group"><label for="phone" class="col-sm-4 control-label">电话：</label><div class="col-sm-5"><input type="text" name="phone" class="form-control" placeholder="'+data.phone+'" disabled="disabled"/> </div></div>');
 			$editDialog.append('<div class="form-group"><label for="address" class="col-sm-4 control-label">地址：</label><div class="col-sm-5"><input type="text"  name="address" class="form-control" placeholder="'+data.address+'" disabled="disabled"/></div> </div>');
 			$editDialog.append('<div class="form-group"><label for="orderDescription" class="col-sm-4 control-label">订单内容:</label><div class="col-sm-5"><textarea row="3" name="orderDescription" class="form-control" placeholder="'+data.orderDescription+'" disabled="disabled"></textarea></div></div>');
 			$editDialog.append('<div class="form-group"><label for="orderStatus" class="col-sm-4 control-label">订单状态:</label><div class="col-sm-5"><select  name="orderStatus" class="form-control" disabled="disabled"><option value="0">未接单</option>'+
 							   '<option value="1">已接单</option> <option value="2">完成</option></select> </div></div>');
 		
 		var dialogId = $("#editDialog");
 		//初始化订单发布的界面  var dialog = new 
 	    BootstrapDialog.show({
 	        id: dialogId,
 	        title: '订单详情',
 	        message: $editDialog,
 	        buttons: [{
 		    	label: '关闭',
 		    	autospin: true,
 		    	action: function(dialogRef){
 	                dialogRef.close();
 	            }
 		    	
 		    }]
 		    
 	    });
 		},
 		error: function(data){
 			
 			var str="";
 			
 			 $.each(data,function(n,value) { 
 				 
 				 str=str+"n:"+n+".value:"+value;   
 				                   
 			 });   
 				  
 			BootstrapDialog.alert(str+"获取数据失败！");
 		}
 	});
	
}

//删除
function deleteOrder(id,user){
	//先登录进行删除操作------删除需要审核判断，如果状态为已接单状态禁止删除
	if(user!=null && user!=''){
	
	BootstrapDialog.confirm('确定删除吗?', function(result){
		
        if(result) {
        	
        	var orderName;
        	// 删除
        	var orderStatus=2;
        	
        	var serviceTime=new Date();
        	
        	// 删除后台请求
        	$.ajax({
         		url:'deleteOrder.rb',
         		//async:false,
         		data:{
         			'id':id,
         			'orderName':orderName,
         			'orderStatus':orderStatus,
         			'serviceTime':serviceTime
         		},
         		//type:'post',
         		success:function(data){
         			
         			refresh();
         			if(data.code='success'){
         				BootstrapDialog.alert("删除成功。");
         			}
         			
         		},
         		error: function(data){
         				  
         			BootstrapDialog.alert(str+"删除失败。");
         			
         		}
         	});
        	
        }
    });
	
	}else{
		BootstrapDialog.confirm('请先登录系统。', function(res){
	        if(res) {
	        	 window.open(path+'/mng/index/login','_self');
	        }
		});
	}
	
}


//根据用户ID查询

function selectById(userId){
	if(userId!=null && userId !=''){
		$.ajax({
	 		url:'selOrderById.rb',
	 		//async:false,
	 		data:{
	 			'id':userId
	 		},
	 		type:'Post',
	 		success:function(data){
	 			
	 			refresh();
	 			/*
	 			 * if(data.code='success'){
	 				BootstrapDialog.alert("查询成功。");
	 			}*/
	 			
	 		},
	 		error: function(data){
	 				  
	 			BootstrapDialog.alert("查询失败。");
	 			
	 		}
	 	});
	}else{
			
			BootstrapDialog.confirm('请先登录系统。', function(res){
		        if(res) {
		        	//BootstrapDialog.alert('登陆！！！');
		        	  window.open(path+'/mng/index/login','_self');
		        }
			});
			
		}
}

//时间控件
$("#createTime").datetimepicker({
	language:  'fr',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0
	 //inline: true
});

$('.form_datetime').datetimepicker({
    //language:  'fr',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	forceParse: 0,
    showMeridian: 1
});

