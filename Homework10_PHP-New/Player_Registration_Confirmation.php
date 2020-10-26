<!-- Get form data for Player Registration  -->
<?php
if($_SERVER["REQUEST_METHOD"]  == "POST")  {
    $first_name = $_POST["txtFirstName"];
    $last_name = $_POST["txtLastName"];
    $address_1 = $_POST["txtStreetAddress-1"];
    $address_2 = $_POST["txtStreetAddress-2"];
    $city = $_POST["txtCity"];
    $stateId = $_POST["txtStates"];
    $zip = $_POST["txtZip"];
    $country = $_POST["txtCountry"];
    $phone = $_POST["txtPhone"];
    $email = $_POST["txtEmail"];
    $user_name = $_POST["txtUserName"];
    $pwd = $_POST["txtPassword"];
    $gamer_tag = $_POST["txtGamerTag"];
    // $games_played = $_POST["gamesPlayed"];
    $subscribe_to_correspondence = $_POST["txtSubscribe"];

    echo ($first_name . " " . $last_name . " " . $address_1 . " " . $address_2 . " " . $city . " " 
    . $stateId . " " . $zip . " " . $country . " " . $phone . " " . $email . " " . $user_name
    . " " . $pwd . " " . $gamer_tag . " " . $subscribe_to_correspondence);
  
}

// Make connection to the database

// Call the stored procedure to insert 

// Put out message that it was successful or not 

?>