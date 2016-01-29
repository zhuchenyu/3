<?php
$conn = mysqli_connect(SAE_MYSQL_HOST_M.':'.SAE_MYSQL_PORT,SAE_MYSQL_USER,SAE_MYSQL_PASS);
if(!$conn){
  die("mysqli conn failed");
} else{
  mysqli_query("set names uft-8");
  mysqli_select_db(SAE_MYSQL_DB,$conn);
if(!$conn){
 die("database selected failed");
          }
       }
 ?>

