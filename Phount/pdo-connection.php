<?php

     $host = 'localhost';   
     $db = 'phount';    
     $user_name = 'root';
     $password = '@Phount_Password5';    
     $dsn = "mysql:host=$host;dbname=$db";

    // Create connection 
    $cn=new PDO($dsn, $user_name, $password);

    
    try {
        $cn = new PDO($dsn, $user_name, $password);
        $cn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo 'Connection failed: ' . $e->getMessage();
    }
    
    // echo("Connected!");

?> 
