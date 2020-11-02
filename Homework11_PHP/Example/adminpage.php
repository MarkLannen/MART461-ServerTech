<?php

    session_start();

    $person_id = $_SESSION["personid"];

    echo("PersonID Here " . $person_id);

    require("pdoconnection.php");
    // stored procedure
    $sql = 'CALL spGetSpecificPerson(:personid)';
    $stmt = $cn->prepare($sql);
    $stmt->bindParam(':personid', $person_id, PDO::PARAM_INT);
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $stmt->execute();

    // iterate over the array
    $r = $stmt->fetch();
    if($r)
    {
        $first_name = $r['firstname'];
        $last_name = $r['lastname'];
        echo "Name " . $first_name . " " . $last_name . "<br />";
    }
    else
    {
        echo("Not logged in");
    }
?>