<?php
header('Content-Type: application/json');

$List=array();

$conn = mysql_connect(SAE_MYSQL_HOST_M,SAE_MYSQL_USER,SAE_MYSQL_PASS,SAE_MYSQL_PORT);
$sql = 'SET NAMES UTF8';
mysqli_query($conn,  $sql);
$sql = "SELECT name,repo,job_description FROM me_myself";
$result = mysqli_query($conn, $sql);

while(($row = mysqli_fetch_assoc($result))!==NULL){
$List[]=$row;
}
//把php数组转换为json字符串格式，发送给客户端
$jsonString = json_encode($List);
echo $jsonString;
?>