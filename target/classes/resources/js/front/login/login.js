//========================用户登录js文件
// 登录验证
function login(){
	
	var userName=$("#userName").val();
	var password=$("#password").val();
	var code=$("#code").val();
	
	$.ajax({
		url:'loginValidate.rb',
		data:{'userName':userName,"password":password},
		type:'post',
		success:function(data){
			// refresh();
			 //alert("成功");
			//window.location.href=data; 
//			 window.open(data,'_self');
			if(data.url!=null && data.url!=''){
				window.open(path+"/"+data.url,'_self');
			}
		},
		error: function(){
			alert("失败");
			
		}
	});
	
}
