<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Griz Esports Player Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link href="Styles.css" rel="stylesheet" />
</head>

<body class="mb-4 mt-5">

    <div class="container text-white">
    <h1>Homework 7</h1>
    <h2 class="mb-5">Data pulled out of MySql Database using PHP</h2>

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

    <!-- Iterate over table and output results -->
    <?php 

        $sql = "SELECT first_name, last_name, user_name FROM PLAYERS";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo "First Name: " . $row["first_name"] . "Last Name: " . $row["last_name"] . "User Name: " . $row["user_name"] . "<br>";
        }
        } else {
        echo "0 results";
        }
        $conn->close();

        ?>

        <!-- Return error Messages from Confirmation page -->
        <?php 
        if (isset($_GET["userNameError"])) {
            if ($_GET["userNameError"] == "UserName") {
                echo ("* User Name is required.");
            }
        } 

        if (isset($_GET["emailError"])) {
            if ($_GET["emailError"] == "email") {
                echo ("* Valid email is required.");
            }
        } 

        if (isset($_GET["phoneNumberError"])) {
            if ($_GET["phoneNumberError"] == "phone") {
                echo ("* Phone number is required.");
            }
        }  
    ?>

    </div>

    <!-- <div class="container">
        <h1 class="mb-5 mt-5 text-center">Player Registration - SQL Homework</h1>

        <div class="container text-white">
            <form action="Player_Registration_Confirmation.php" method="POST">

                 <%--First name and last name text fields--%> -->

                <!-- <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="txtFirstName">First Name</label>
                        <input type=text ID="txtFirstName" class="form-control"></input>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="txtLastName">Last Name</label>
                        <input type="text" ID="txtLastName" class="form-control"></input>
                    </div>
                </div> -->

                <!-- <%--Street address and City/town--%> -->
                <!-- <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="txtStreetAddress">Street Address</label>
                        <input type="text" id="txtStreetAddress" class="form-control"></input>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="txtCity">City/Town</label>
                        <input type="text" id="txtCity" class="form-control"></input>
                    </div>
                </div> -->

                <!-- <%--Country/Phone--%> -->
                <!-- <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="txtCountry">Country</label>
                        <input type="text" id="txtCountry" class="form-control"></input>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="Phone">Phone</label>
                        <input type="text" id="txtPhone" class="form-control" name="txtPhone"></input>
                    </div>
                </div>

                <%--Email--%> -->
                <!-- <div class="form-row">
                    <label for="Email">Email</label>
                    <input type="text" id="txtEmail" class="form-control" name="txtEmail"></input>
                </div> -->

                <!-- <%--Unsubscribe--%> -->
                <!-- <div>
                    <input type="checkbox" id="unsubscribeCheckbox" name="" value="" />
                    <label class="text-white mt-4 mb-4" for="unsubscribeCheckbox">Unsubscribe from marketing
                        emails</label>
                </div> -->

                <!-- <%--Agree to Student Conduct Code--%> -->
                <!-- <div>
                    <input type="checkbox" id="unsubscribeCheckbox" name="" value="" />
                    <label class="text-white mt-4 mb-4" for="agreeStudentConductCode">I agree to follow the Student
                        Conduct Code</label>
                </div>

                 <%--Username and password--%> -->
                <!-- <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="txtUserName">User Name</label>
                        <input id="txtUserName" class="form-control" name="txtUserName"></input>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="txtPassword">Password</label>
                        <input type="text" id="txtPassword" class="form-control"></input>
                    </div>
                </div> --> 

                <!-- <%--Gamer Tag and Games played--%> -->
                <!-- <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="txtGamerTag">Gamer Tag</label>
                        <input type="text" id="txtGamerTag" class="form-control"></input>
                    </div>

                </div> -->

                <!-- <h2 class="mb-2">Games Played</h2>
                <div class="container mb-3">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="solitaire" name="gamesPlayed[]"
                            id="chkSolitaire"
                            <?php if (isset($gamesPlayed) && $gamesPlayed=="solitaire") echo "checked";?>>
                        <label class="form-check-label" for="chkSolitaire">Solitaire</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="tetris" name="gamesPlayed[]"
                            id="chkTetris" <?php if (isset($gamesPlayed) && $gamesPlayed=="tetris") echo "checked";?>>
                        <label class="form-check-label" for="chkTetris">
                            Tetris
                        </label>
                    </div> -->
                    <!-- <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="pong" name="gamesPlayed[]" id="chkPong">
                        <?php if (isset($gamesPlayed) && $gamesPlayed=="pong") echo "checked";?>
                        <label class="form-check-label" for="chkPong">
                            Pong
                        </label>
                    </div>
                </div> -->


                <!-- <button type="submit" id="btnSubmit" class="form-control">Register</button>


            </form>
        </div>
    </div> --> 
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