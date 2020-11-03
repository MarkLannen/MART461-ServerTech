<?php

    session_start();

    $player_id = $_SESSION['player_id'];

    echo("Player ID: " . $player_id);

    require("pdo_connection.php");

     // Stored Procedure
     $sql = 'CALL spGetSpecificPlayer(:playerid)';
     $stmt = $cn->prepare($sql);
     $stmt->bindParam(':playerid', $player_id, PDO::PARAM_INT);
     $stmt->setFetchMode(PDO::FETCH_ASSOC);
     $stmt->execute();

    // iterate over the array 
    $r = $stmt->fetch();
     if($r)
     {
         $first_name = $r['first_name'];
         $last_name = $r['last_name'];

         echo("Name: " . $first_name . " " . $last_name . "<br />");
     }


?>