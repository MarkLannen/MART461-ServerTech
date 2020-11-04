<!-- Get form data for Player Registration  -->
<?php

    require("pdo_connection.php");

    function escape ($string) {
        return htmlspecialchars($string, ENT_QUOTES, 'UTF-8');
    }


    if($_SERVER["REQUEST_METHOD"]  == "POST")  {
      
        $first_name = $_POST["txtFirstName"];
        $first_name = escape($first_name);

        $last_name = $_POST["txtLastName"];
        $last_name = escape($last_name);

        $address_1 = $_POST["txtStreetAddress-1"];
        $address_1 = escape($address_1);

        $address_2 = $_POST["txtStreetAddress-2"];
        $address_2 = escape($address_2);

        $city = $_POST["txtCity"];
        $city = escape($city);

        $stateId = $_POST["txtStates"];
        $stateId = escape($stateId);

        $zip = $_POST["txtZip"];
        $zip = escape($zip);

        $country = $_POST["txtCountry"];
        $country = escape($country);

        $phone = $_POST["txtPhone"];
        $phone = escape($phone);

        $email = $_POST["txtEmail"];
        $email = escape($email);

        $user_name = $_POST["txtUserName"];
        $user_name = escape($user_name);

        $pwd = $_POST["txtPassword"];
        $pwd = escape($pwd);

        $gamer_tag = $_POST["txtGamerTag"];
        $gamer_tag = escape($gamer_tag);

        echo 'Connection Successful' . '<br />';    

        // echo($first_name);

        $sql = 'CALL spInsertNewPlayer(:first_name, :last_name, :address_1, :address_2, 
        :city, :stateId, :zip, :country, :phone, :email, :user_name, :pwd, :gamer_tag)';
        

        $stmt = $cn->prepare($sql);

        $stmt->bindParam(':first_name', $first_name, PDO::PARAM_STR);
        $stmt->bindParam(':last_name', $last_name, PDO::PARAM_STR);        
        $stmt->bindParam(':address_1', $address_1, PDO::PARAM_STR);
        $stmt->bindParam(':address_2', $address_2, PDO::PARAM_STR);
        $stmt->bindParam(':city', $city, PDO::PARAM_STR);
        $stmt->bindParam(':stateId', $stateId, PDO::PARAM_INT);
        $stmt->bindParam(':zip', $zip, PDO::PARAM_STR);
        $stmt->bindParam(':country', $country, PDO::PARAM_STR);
        $stmt->bindParam(':phone', $phone, PDO::PARAM_STR);
        $stmt->bindParam(':email', $email, PDO::PARAM_STR);
        $stmt->bindParam(':user_name', $user_name, PDO::PARAM_STR);
        $stmt->bindParam(':pwd', $pwd, PDO::PARAM_STR);
        $stmt->bindParam(':gamer_tag', $gamer_tag, PDO::PARAM_STR);
        // $stmt->bindParam(':games_played', $games_played, PDO::PARAM_STR);
        // $stmt->bindParam(':subscribe_to_correspondence', $subscribe_to_correspondence, PDO::PARAM_STR);
    
        $stmt->execute();

        $stmt->closeCursor();

        echo ($first_name . " " . $last_name . " " . $address_1 . " " . $address_2 . " " . $city . " " 
        . $stateId . " " . $zip . " " . $country . " " . $phone . " " . $email . " " . $user_name
        . " " . $pwd . " " . $gamer_tag);
    
    }

?>