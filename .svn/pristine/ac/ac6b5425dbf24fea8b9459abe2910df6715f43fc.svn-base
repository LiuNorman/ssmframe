<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>百度地图</title>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=5Yau8PivZGBZyoICtm3DWFrm"></script>

</head>
<body>
<div style="float: left;z-index: 1000;position: absolute;">
	<div><span style="font-size: 16px;color: blue" >我的位置：</span><input type="text"/></div>
	<div style="margin-top: 10px" style="font-size: 16px;"><span style="color: blue;">目的地：</span><input type="text"/></div>
</div>
<div id="allmap" style="width: 1420px;height: 750px"></div>


</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	 // 创建Map实例
	var map = new BMap.Map("allmap");  
	 // 初始化地图,设置中心点坐标和地图级别
	map.centerAndZoom(new BMap.Point(120.33, 36.07), 11); 
	 //添加地图类型控件
	map.addControl(new BMap.MapTypeControl());  
	// 设置地图显示的城市 此项是必须设置的
	map.setCurrentCity("青岛");  
	 //开启鼠标滚轮缩放
	map.enableScrollWheelZoom(true);    
</script>