<?php

    function escape ($string) {
        return htmlspecialchars($string, ENT_QUOTES, 'UTF-8');
    }

?>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8">
    <title>Griz Esports Player Registration - Homework 11 - New</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link href="Styles.css" rel="stylesheet" />
</head>

<body class="mb-4 mt-5">

<div class="container">

    <div class="container text-white">
    <h1>Homework 11</h1>
    <h2 class="mb-5">Player Login</h2>

    </div>

    <div class="container">
        <div class="container text-white">
            <form action="Player_Login_Confirmation.php" method="POST">

               <!-- Username and password  -->
              <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="txtUserName">User Name</label>
                        <input id="txtUserName" class="form-control" name="txtUserName"></input>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="txtPassword">Password</label>
                        <input type="text" id="txtPassword" name="txtPassword" class="form-control"></input>
                    </div>
                </div>        
                               
                 <button type="submit" id="btnSubmit" class="form-control">Register</button>
            </form>
        </div>
    </div> 

    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous">
    </script> 

    <!-- http://tryphp.w3schools.com/showphp.php?filename=demo_form_validation_complete -->

</body>

</html>