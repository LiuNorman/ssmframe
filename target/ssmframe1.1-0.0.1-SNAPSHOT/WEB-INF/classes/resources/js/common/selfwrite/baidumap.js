//http://api.map.baidu.com/location/ip?ak=E4805d16520de693a3fe707cdc962045&ip=202.198.16.3&coor=bd09ll

//地图测试
function mapTest(){
	var ak="5Yau8PivZGBZyoICtm3DWFrm";
	var ip="202.198.16.3";
	var coor="bd09ll";
	$.ajax({
		url:'http://api.map.baidu.com/location/ip',
		data:{ak:ak,ip:ip,coor:coor},
		success:function(data){
			alert(data);
		}
	});
}