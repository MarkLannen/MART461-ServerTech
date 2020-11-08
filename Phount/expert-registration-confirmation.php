<!-- Get form data for Expert Registration and confirm Registration -->
<?php

    require("pdo-connection.php");

    function escape ($string) {
        return htmlspecialchars($string, ENT_QUOTES, 'UTF-8');
    }

    if($_SERVER["REQUEST_METHOD"]  == "POST")  {
      
        $first_name = $_POST["txtExpertFirstName"];
        $first_name = escape($first_name);

        $last_name = $_POST["txtExpertLastName"];
        $last_name = escape($last_name);

        $address_1 = $_POST["txtAddress-1"];
        $address_1 = escape($address_1);

        $address_2 = $_POST["txtAddress-2"];
        $address_2 = escape($address_2);

        $city = $_POST["txtCity"];
        $city = escape($city);

        $stateId = $_POST["txtState"];
        $stateId = escape($stateId);

        $zip = $_POST["txtZip"];
        $zip = escape($zip);

        $country = $_POST["txtCountry"];
        $country = escape($country);        

        $email = $_POST["txtExpertEmail"];
        $email = escape($email);

        $phone = $_POST["txtExpertPhone"];
        $phone = escape($phone);

        $user_name = $_POST["txtExpertUserName"];
        $user_name = escape($user_name);

        $pwd = $_POST["txtExpertPassword"];
        $pwd = escape($pwd);

        echo 'Connection Successful' . '<br />';    

        // echo($first_name);

        $sql = 'CALL spInsertNewExpertPersonalDetails(:firstname, :lastname, :address_1, :address_2, 
        :City, :stateId, :Zip, :Country, :Email, :Phone, :Username, :Pwd)';
        

        $stmt = $cn->prepare($sql);

        $stmt->bindParam(':firstname', $first_name, PDO::PARAM_STR);
        $stmt->bindParam(':lastname', $last_name, PDO::PARAM_STR);        
        $stmt->bindParam(':address_1', $address_1, PDO::PARAM_STR);
        $stmt->bindParam(':address_2', $address_2, PDO::PARAM_STR);
        $stmt->bindParam(':City', $city, PDO::PARAM_STR);
        $stmt->bindParam(':stateId', $stateId, PDO::PARAM_INT);
        $stmt->bindParam(':Zip', $zip, PDO::PARAM_STR);
        $stmt->bindParam(':Country', $country, PDO::PARAM_STR);
        $stmt->bindParam(':Email', $email, PDO::PARAM_STR);
        $stmt->bindParam(':Phone', $phone, PDO::PARAM_STR);        
        $stmt->bindParam(':Username', $user_name, PDO::PARAM_STR);
        $stmt->bindParam(':Pwd', $pwd, PDO::PARAM_STR);
    
        $stmt->execute();

        $stmt->closeCursor();

        echo ($first_name . " " . $last_name . " " . $address_1 . " " . $address_2 . " " . $city . " " 
        . $stateId . " " . $zip . " " . $country . " " . $email . " " . $phone . " " . $user_name
        . " " . $pwd);
    
    }



?>