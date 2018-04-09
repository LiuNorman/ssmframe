<?php 

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
echo "输出";
$serverName="localhost";
$userName="root";
$password="123456";

try { 
 // $connect=mysqli_connect("localhost","root","123456","ssm");
  $connect=mysql_connect($serverName,$userName,$password);
} catch (Exception $e) {
	echo "捕获异常：$e";
}


//mysql($database_name, $query, $link_identifier);
if(!$connect){
	die("无法连接".mysql_error());
}else{
	echo "数据库连接成功！";
}

mysqli_set_charset($connect, "utf-8");
// 创建表
/*
$sql="CREATE TABLE t_dictionary (
		id int,
		name varchar(100),
		val varchar(10),
		parent varchar(10),
		sort varchar(10),
		state varchar(1),
		)";
$create=mysqli_query($connect, $sql);

if($create){
	echo "<br>创建成功！";
}else{
	echo "<br>创建失败或已存在";
}*/
echo "<br>输出查询结果";
$sql="SELECT * from t_dictionary";
$result=mysqli_query($connect, $sql);
foreach ($result as $res ){
	echo "<br>$res[id]==========$res[name]";
}
mysqli_close($connect);

//$_POST[userId]
/*
$sql="INSERT INTO t_user (
		userID,
		userName,
		password
		) VALUES('2','刘晓文','123456')";

$insert=mysqli_query($connect, $sql);
if($insert){
	echo "<br>插入成功";
}else{
	echo "<br>插入失败";
}

echo "<br>输出查询结果";
$sql="SELECT * from t_user order by userID DESC";
$result=mysqli_query($connect, $sql);
foreach ($result as $res ){
	echo "<br>$res[userID]==========$res[userName]";
}
$sql="UPDATE t_user SET userName='Norman' where userID='2'";
$result=mysqli_query($connect, $sql);
echo "<br>更新$result";
$sql="delete from t_user  where userName='刘晓文'";
$result=mysqli_query($connect, $sql);
echo "<br>shanchu $result";


echo "<br>odbc:";
$odbcNmae="odbc";
$user="root";
$password="123456";
$odbc=odbc_connect($odbcNmae, $user, $password);
$sql="select * from t_user";
$rs=odbc_exec($odbc, $sql);

foreach ($rs as $res){
	echo "<br>+++$res[userName]";
}*/
?>