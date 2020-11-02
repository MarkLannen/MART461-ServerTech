<?php

    require("pdoconnection.php");

    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $username = $_POST["username"];
        $pwd = $_POST["pwd"];
        $personid = 0;

        /*
        // basic query
        $sql = "SELECT personid FROM people WHERE username = '" . $username . "' AND pwd='" . $pwd . "'";
        try{
             $stmt = $cn->query($sql);
            // gets array
            $stmt->setFetchMode(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            die("Error occurred:" . $e->getMessage());
        }
        
        while($r = $stmt->fetch())
        {
            $personid = $r['personid'];
            echo("Logged in<br>");
            echo " PersonID " . $personid . "<br />";
        }
        */
        /*
        // stored procedure
        $sql = 'CALL spCheckUser(:username, :pwd)';
        $stmt = $cn->prepare($sql);
        $stmt->bindParam(':username', $username, PDO::PARAM_STR);
        $stmt->bindParam(':pwd', $pwd, PDO::PARAM_STR);
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        $stmt->execute();

        // iterate over the array
        $r = $stmt->fetch();
        if($r)
        {
            $personid = $r['personid'];
            echo("Logged in<br>");
            echo "PersonID " . $r['personid'] . "<br />";
        }
        else
        {
            echo("Not logged in");
        }
        */

        // out parameters
        $sql = 'CALL spCheckUser2(:username, :pwd, @userfound)';
        $stmt = $cn->prepare($sql);
        $stmt->bindParam(':username', $username, PDO::PARAM_STR);
        $stmt->bindParam(':pwd', $pwd, PDO::PARAM_STR);
        $stmt->execute();
        $rows = $cn->query("SELECT @userfound")->fetch(PDO::FETCH_ASSOC);
        if($rows)
        {
            $personid = $rows['@userfound'];
            echo("Found: " . $personid);
        }

        session_start();
        $_SESSION["personid"] = $personid;
        if(!isset($_SESSION["count"]))
        {
            $_SESSION["count"] = 0;
        }
        
        if(isset($personid))
        {
            $_SESSION["count"] = 0;
            header("Location: adminpage.php");
        }
        else
        {
            echo("Tough luck!");
            $_SESSION["count"] = $_SESSION["count"] + 1;
            echo($_SESSION["count"]);
        }
        

    }
?>