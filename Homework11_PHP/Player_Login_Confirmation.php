<?php

    require("pdo_connection.php");

    if($_SERVER["REQUEST_METHOD"]== "POST") {
        $user_name = $_POST["txtUserName"];
        $pwd = $_POST["txtPassword"];
        $player_id = 0;
    }    

    // Stored Procedure
    $sql = 'CALL spCheckUser(:user_name, :pwd, @user_found)';
        $stmt = $cn->prepare($sql);
        $stmt->bindParam(':user_name', $user_name, PDO::PARAM_STR);
        $stmt->bindParam(':pwd', $pwd, PDO::PARAM_STR);
        $stmt->execute();
        $rows = $cn->query("SELECT @user_found")->fetch(PDO::FETCH_ASSOC);
        if($rows)
        {
            $player_id = $rows['@user_found'];
            echo("Found: " . $player_id);
        }
    
    // Do an isset
    // else {
    //      echo("Not logged in.");
    //      }

    session_start();
    $_SESSION["player_id"] = $player_id;
    if(!isset($_SESSION["count"])) {
        $_SESSION["count"] = 0;
    }
    
    if(isset($player_id)) {
        $_SESSION["count"] = 0;
        header("Location: Player_Admin.php");
    } else {
        echo("You are not logged in.");
        $_SESSION["count"]++;
        echo($_SESSION["count"]);
    } 
?>