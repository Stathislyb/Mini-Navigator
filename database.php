<?php
$host="localhost"; // Host name 
$username="root"; // Mysql username 
$password=""; // Mysql password 
$db_name="algo_destinator"; // Database name 

// Connect to server and select databse.
$conn = mysql_connect("$host", "$username", "$password")or die("cannot connect to database."); 
mysql_select_db("$db_name") or die("cannot select DB");
mysql_query("SET CHARACTER SET utf8");
mysql_query("SET NAMES utf8");	
?>
