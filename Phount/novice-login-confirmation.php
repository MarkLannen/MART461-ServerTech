<?php

    require("pdo-connection.php");

    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $user_name = $_POST["txtExpertUserName"];
        $pwd = $_POST["txtExpertPassword"];
        $player_id = 0;
    }    

    // Stored Procedure
    $sql = 'CALL spCheckUser(:user_name, :pwd, @user_found, @firstname, @lastname, @categoryid)';
        $stmt = $cn->prepare($sql);
        $stmt->bindParam(':user_name', $user_name, PDO::PARAM_STR);
        $stmt->bindParam(':pwd', $pwd, PDO::PARAM_STR);
        $stmt->execute();
        $rows = $cn->query("SELECT @user_found, @firstname, @lastname, @categoryid")->fetch(PDO::FETCH_ASSOC);
        if($rows)
        {
            $player_id = $rows['@user_found'];
            $first_name = $rows['@firstname'];
            $last_name = $rows['@lastname'];
            $category_id = $rows['@categoryid'];


            echo("Found: " . $player_id);
        }
    

    session_start();
    $_SESSION["player_id"] = $player_id;
    $_SESSION['first_name'] =   $first_name;
    $_SESSION['last_name'] = $last_name;
    $_SESSION['category_id'] = $category_id;
    if(!isset($_SESSION["count"])) {
        $_SESSION["count"] = 0;
    }
    
    if(isset($player_id)) {
        $_SESSION["count"] = 0;
        header("Location: expert-profile.php");
    } else {
        echo("You are not logged in.");
        $_SESSION["count"]++;
        echo("You have attempted to login " . $_SESSION["count"] . "times");
    } 
?>