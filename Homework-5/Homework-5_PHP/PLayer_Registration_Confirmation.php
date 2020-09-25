<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Griz Esports Player Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link href="Styles.css" rel="stylesheet" />
<?php

$gamesPlayed = "";
$userName = "";
$phone = "";
$email = "";
$errMessage = "";

print_r($_POST);
print_r($_POST["gamesPlayed"]);

//Return to main page if User Name is blank
if ($_SERVER["REQUEST_METHOD"] == "POST")  {

   // $gamesPlayed = $_POST["gamesPlayed"];
    if (!empty($_POST["txtUserName"])) {
        $userName = $_POST["txtUserName"];
    } else  {
        $errMessage = "userNameError=UserName";
    }
}

//Return to main page if email is invalid
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["txtEmail"];
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {

        if ($errMessage != "") {
            $errMessage = $errMessage . "&emailError=email";
        } else {
            $errMessage="emailError=email";
        }       
    }
}

//Return to main page if phone number is blank
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (empty($_POST["txtPhone"])) {
        if ($errMessage != "") {
            $errMessage = $errMessage . "&phoneNumberError=phone";
        } else {
            $errMessage="phoneNumberError=phone";
        }

        
    }
}
if ($errMessage!="") {
    header("Location: Player_Registration.php?" . $errMessage);
}

?>

</head>
<body>

    <!-- Get info using POST -->
    <div class="container text-white">
        <h1 class="mb-5 mt-5 text-center">Player Registration Confirmation</h1>
        <h2 class="text-center">Welcome to Griz Esports! You're username is:  
          <?php 
            echo ($userName);
            ?> 
            <h2>
            <?php
            

            if (!empty($_POST["gamesPlayed"])) {
                $gamesPlayed = $_POST["gamesPlayed"];
                // if (isset($_POST[$gamesPlayed]) && $_POST[0]=='solitaire') {
                //      echo ("You have selected Solitaire");
                // }
                echo ("You have selected" . " " . $gamesPlayed);
            }
            ?>    
            </h2>            
    </div>  

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
