//========================用户登录js文件
$(function(){
	 $('#loginForm')
     .bootstrapValidator({
         message: 'This value is not valid',
         feedbackIcons: {
             valid: 'glyphicon glyphicon-ok',
             invalid: 'glyphicon glyphicon-remove',
             validating: 'glyphicon glyphicon-refresh'
         },
         fields: {
             userName: {
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
             
             password: {
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
         plateNumber: {
        	 validators: {
        		 notEmpty: {
        			 message: '车牌号不能为空'
        		 }
        	 }
         }
         }
     })
     /*.on('success.form.bv', function(e) {
         // Prevent form submission
         e.preventDefault();
         // Get the form instance
         var $form = $(e.target);
         // Get the BootstrapValidator instance
         var bv = $form.data('bootstrapValidator');
         // Use Ajax to submit form data
         $.post($form.attr('action'), $form.serialize(), function(result) {
             console.log(result);
         }, 'json');
     })*/;
	 
	/*$.formValidator.initConfig({formID:"loginForm",theme:"ArrowSolidBox",submitOnce:true,
		onError:function(msg,obj,errorlist){
			$("#errorlist").empty();
			$.map(errorlist,function(msg){
				$("#errorlist").append("<li>" + msg + "</li>")
			});
		},
		ajaxPrompt : '有数据正在异步验证，请稍等...'
	});
	
	$("#userName").formValidator({
		onShow : "请输入你的账户名",
		onFocus : "请输入你的账户名（手机号/邮箱）",
	}).inputValidator({min:11,max:11,onError:"手机号码长度为11位，请确认"})
	
	.regexValidator({
		regExp : "mobileOrEmail",
		dataType : "enum",
		onError : "账户名格式不正确，请重新输入"
	}).ajaxValidator({
		
		dataType : "html",
		async : true,
		url : path+"/mng/user/isOnlyUser.do",
		success : function(data){
			if( data.indexOf("success") >= 0 ) {
				$("#duanxintijiao").attr("disabled",false);
				return true;
			}
			$("#duanxintijiao").attr("disabled","disabled");
			return false;
		},
		buttons: $("#button"),
		error: function(jqXHR, textStatus, errorThrown){
			//alert("服务器没有返回数据，可能服务器忙，请重试"+errorThrown);
		},
		onError : "账户名不存在，请重新输入",
		onWait : "正在对用户名进行唯一性校验，请稍候..."
		
	});
	$("#password").formValidator({
		onShow : "请输入验证码",
		onFocus : "请输入6位数字验证码",
		onCorrect : "谢谢你的合作，你的正整数正确"
	}).inputValidator({min:1,onError:"验证码不能为空,请确认"}).regexValidator({
		regExp : "code",
		dataType : "enum",
		onError : "验证码输入错误"
	});
	$("#code")
			.formValidator({
				onShow : "请输验证码",
				onFocus : "验证码为6位数字",
				onCorrect : "恭喜你,你输对了",
				defaultValue : ""
			})
			.inputValidator({
				min : 6,
				max : 6,
				onError : "验证码长度不正确,请确认"
			})
			.regexValidator(
					{
						//regExp : "^([\\w-.]+)@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.)|(([\\w-]+.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(]?)$",
						regExp : "^(\\w)+(\\.\\w+)*@(\\w)+((\\.\\w+)+)$",
						onError : "验证码格式不正确"
					});
	*/
});


$(function(){
	 $(".ziliao_box").toggle();
	 
	 //倒计时
	 //获取校验码
	 $("#duanxintijiao").click(function(){
		 
	    var mobile=$("#tel").val();
	    if(mobile!="" && mobile !=null ){
		 residueTimes=resendTime;
		 sendMoblieMessage(mobile);
		if(registSendFlag01.indexOf('success')>=0){
			 $("#duanxintijiao").attr("disabled", "true");  
	            $("#duanxintijiao").val(residueTimes + "秒后重新发送");  
	            // 启动计时器，1秒执行一次
	            codeTimer01 = window.setInterval(setRemainTime01, 1000);   
				
	            $(".xiaoyan_xiaoxi").show();
			}
	    }else{
	    	alert("请先填写手机号码");
	    }
	});

	    
	     
	      
	      //个人手机 勾选同意  “下一步”可用  不勾选  "下一步"禁止
	      function checkAgree(isChecked){
	      	    if(isChecked){
	      	    	$("#xiayibu").removeAttr("disabled");
	      			$("#xiayibu").css("background","#9c7623")
	      	    } else {
	      	    	$("#xiayibu").attr("disabled", true);
	      			$("#xiayibu").css("background","#ddd")
	      	    }
	      	}
	      //企业 勾选同意  “下一步”可用  不勾选  "下一步"禁止
	      function tongyiAgree(isChecked){
	      	    if(isChecked){
	      	    	$("#xiayibu2").removeAttr("disabled");
	      			$("#xiayibu2").css("background","#296cae")
	      	    } else {
	      	    	$("#xiayibu2").attr("disabled", true);
	      			$("#xiayibu2").css("background","#ddd")
	      	    }
	      	}
	      //准备材料
	       $(".ziliao_title").click(function(){
	      	     $(".ziliao_box").toggle();
	      	 })
	      //身份印件弹出框js
	      $('.shenfen_yingjian').click(function () {
	              var maskHight=$(document).height();
	              var maskWidth=$(document).width();
	              $('<div class="mask"></div>').appendTo($('body'));
	              $('div.mask').css(
	              {
	                'opacity':0.5,
	                'background':'#000',
	                'position':'absolute',
	                'left':0,
	                'top':0,
	                'width':maskWidth,
	                'height':maskHight,
	                'z-index':2
	              }
	                );
	              $('.tanchukuang').delay(120).show(1);
	            });
	              $('.guanbi').click(function () {
	              $('.tanchukuang').hide();
	              $('.mask').remove();
	            });
	      //营业执照印件弹出框js
	      $('.yingyezhizhao').click(function () {
	              var maskHight=$(document).height();
	              var maskWidth=$(document).width();
	              $('<div class="mask"></div>').appendTo($('body'));
	              $('div.mask').css(
	              {
	                'opacity':0.5,
	                'background':'#000',
	                'position':'absolute',
	                'left':0,
	                'top':0,
	                'width':maskWidth,
	                'height':maskHight,
	                'z-index':2
	              }
	                );
	              $('.tanchu_yingye').delay(120).show(1);
	            });
	              $('.guanbi').click(function () {
	              $('.tanchu_yingye').hide();
	              $('.mask').remove();
	            });
	              
	              
	              
	              
	            //服务协议弹框
	              $('.xieyi').click(function () {
	                var maskHight=$(document).height();
	                var maskWidth=$(document).width();
	                $('<div class="mask"></div>').appendTo($('body'));
	                $('div.mask').css(
	                {
	                  'opacity':0.5,
	                  'background':'#000',
	                  'position':'absolute',
	                  'left':0,
	                  'top':0,
	                  'width':maskWidth,
	                  'height':maskHight,
	                  'z-index':2
	                }
	                  );
	                $('.xieyi_tankuang').delay(120).show(1);
	              });
	              
	                $('.guanbi').click(function () {
	                $('.xieyi_tankuang').hide();
	                $('.mask').remove();
	              });
	                $('.tongyicixieyi').click(function () {
	                	
	                	$('.xieyi_tankuang').hide();
	                	$('.mask').remove();
	                	$("#tongyikuang").attr("checked","checked");
	                	$("#xiayibu").removeAttr("disabled");
	        			$("#xiayibu").css("background","#9c7623")
	        			
	                });



});


// 登录验证
function login(){
	
	var userName=$("#userName").val();
	var password=$("#password").val();
	
	$.ajax({
		url:'loginValidate.rb',
		data:{'userName':userName,"password":password},
		type:'post',
		success:function(data){
			if(data.url!=null && data.url!=''){
				window.open(path+"/"+data.url,'_self');
			}
		},
		error: function(){
			
			BootstrapDialog.alert("失败");
			
		}
	});
	
}