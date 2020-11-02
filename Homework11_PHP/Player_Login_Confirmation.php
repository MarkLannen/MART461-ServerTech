<?php

    require("pdo_connection.php");

    if($_SERVER["REQUEST_METHOD"]== "POST") {
        $user_name = $_POST["txtUserName"];
        $pwd = $_POST["txtPassword"];
        $player_id = 0;
    }    

    // Stored Procedure
    $sql = 'Call spCheckUser(:user_name, :pwd, @userfound)';
    $stmt = $cn->prepare($sql);
    $stmt->bindParam(':user_name', $user_name, PDO::PARAM_STR);
    $stmt->bindParam(':pwd', $pwd, PDO::PARAM_STR);
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $stmt->execute();
    $rows = $cn->query("SELECT @userfound")->fetch(PDO::FETCH_ASSOC);
    if($rows) {
        $player_id = $rows['@userfound'];
        echo("Found: " . $player_id);
    } 
    
    // Do an isset
    // else {
    //      echo("Not logged in.");
    //      }

    // iterate over array 
    // $r = $rows->fetch();
    // if ($r)
    // {
    //     $player_id = $r['player_id'];
    //     echo("Logged in<br/>");
    //     echo "Player ID = : " . $player_id . "<br/> ";
    // }
    // 

?>