<?php

$myhost = "localhost";
$myuser = "root";
$mypass = "password";
$mydb = "iltuo_db";
$key = "2147828743";

$con = mysqli_connect($myhost, $myuser, $mypass, $mydb);

if (mysqli_connect_errno())
{
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

?>
