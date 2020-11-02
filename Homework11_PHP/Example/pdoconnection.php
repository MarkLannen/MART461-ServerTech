<?php

$host = 'localhost'; 
$db = 'names';
$user = 'michaelcassens';
$pass = 'test123';
$dsn = "mysql:host=$host;dbname=$db";

$cn=new PDO($dsn, $user, $pass);

?>