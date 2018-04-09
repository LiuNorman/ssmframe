//分页处理js文件

// 分页请求地址url
var url=$("#pagination").attr("url");

//分页初始化
$(function (){
	//初始化分页
	init();
	
});

//初始化分页控件
function init(){
	//分页容器对象
	var pagination=$("#pagination");
	//var pageCount=$("#pageCount").val();
	
	var showHtml='<ul class="pagination">'
		//"'+${pageBean.pageIndex-1}+'","'+${pageBean.pageCount}+'"
		        +'<li><a onclick="pagination()">&laquo;首页</a></li>'
				+'<li><a onclick="pagination()">&laquo;上一页</a></li>';
				for(var i=1;i<=pageNum;i++){
					showHtml=showHtml+'<li ><a onclick="pagination('+i+','+pageCount+')">'+i+'</a></li>';
				}
				
	showHtml=showHtml+'<li>'
	  +'<select id="pageCount" name="pageCount" style="height: 30px;" onchange="selectCount()">'
	  				//<c:if test="'+${pageBean.pageCount==5}+'">selected="selected"</c:if>
				+'<option value="5" >每页显示5条</option>'
				// <c:if test="'+${pageBean.pageCount==10}+'">selected="selected"</c:if>
				+'<option value="10">每页显示10条</option>'
				// <c:if test="'+${pageBean.pageCount==15}+'">selected="selected"</c:if>
				+'<option value="15">每页显示15条</option>'
				// <c:if test="'+${pageBean.pageCount==20}+'">selected="selected"</c:if>
				+'<option value="20">每页显示20条</option>'
				+'</select>'
				+'</li>'
				//'${pageBean.pageIndex+1}','${pageBean.pageCount}'
				+'<li><input type="text" id="pageNum" style="height: 30px;width:50px"/></li>'
				+'<li>当前'+nowPage+'页/共'+pageNum+'页</li>'
				+'<li><a onclick="pagination()">下一页&raquo;</a></li>'
				+'<li><a onclick="pagination()">末页&raquo;</a></li>'
	+'</ul>';
	pagination.append(showHtml);
}



/*function paginationCount(url){
	
	$.ajax({
		url:url,
		data:{},
		success:function(data){
			//
			paginationCount=data;
		}
	});
	
}*/


//分页上一页。下一页请求
function pagination(url,start,end){
	
}

//选择每页条数
function selectCount(){
	var pageCount=$("#pageCount").val();
	pagination(1,pageCount);
}


//点击下一页 上一页 请求分页
function pagination(next,pageCount){
	var url=$("#pagination").attr("url");
	
	var orderName='';
	var start;
	if(next>1){
		start=(next-1)*pageCount;
	}else{
		start=1;
	}
	 /*$.ajax({
 		url:url,
 		ansync:false,
 		data:{
 			'select':orderName,
 			'start':start,
 			'pageIndex':next,
 			'pageCount':pageCount
 		},
 		//type:'post',
 		success:function(data){
 			//refresh();
 		},
 		error: function(data){
 			var str="";
 			 $.each(data,function(n,value) { 
 				 str=str+"n:"+n+".value:"+value;   
 			 });   
 			BootstrapDialog.alert("请求失败！");
 		}
 	});*/
	window.location.href=url+"?start="+start+"&pageIndex="+next+"&pageCount="+pageCount+"&nowPage="+nowPage;
}