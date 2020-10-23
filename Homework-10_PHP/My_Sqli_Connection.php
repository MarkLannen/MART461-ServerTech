<?php 
    $servername = "localhost";
    $username = "root";
    $password = "@Phount_Password5";
    $dbname = "esports";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    echo "Connected Successfully!" . "<br/>";

?>