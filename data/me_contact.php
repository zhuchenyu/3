<?php
header('Content-Type: application/json');

$List=array();

$conn = mysql_connect(SAE_MYSQL_HOST_M,SAE_MYSQL_USER,SAE_MYSQL_PASS,SAE_MYSQL_PORT);
$sql = 'SET NAMES UTF8';
mysqli_query($conn,  $sql);
$sql = "SELECT phone,email,wechat,sinaweibo,github,blog,link FROM me_contact";
$result = mysqli_query($conn, $sql);

while(($row = mysqli_fetch_assoc($result))!==NULL){
$List[]=$row;
}
//��php����ת��Ϊjson�ַ�����ʽ�����͸��ͻ���
$jsonString = json_encode($List);
echo $jsonString;
?>