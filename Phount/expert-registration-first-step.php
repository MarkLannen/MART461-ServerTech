<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="styles.css">

    <!--    Google Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Rubik:300|Sanchez&display=swap" rel="stylesheet">
    <!--    Custom JavaScript-->

    <title>Expert Registration First Steps</title>
</head>

<body>

    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #00518f">
        <div class="container-fluid">
            <a class="navbar-brand Sanchez" href="index.html">Phount</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link Rubik text-white ml-2" href="expert-registration-landing.html">Register as an
                            Expert</a>
                    </li>
                </ul>
                <a href="login.html" id="nav-login-button" class="btn px-4 ml-auto">Login</a>
                <button class="btn btn-light ml-3">My Profile</button>
            </div>
        </div>
    </nav>

    <!-- Set Form Data and Confirm Registration  -->

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
        :City, :stateId, :Zip, :Country, :Email, :Phone, :Username, :Pwd, @UserID)';
        

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

    <section id="expert-registration-header">
        <div id="expert-registration-instructions" class="container">
            <h1 class="expert-registration-heading">Hi <?php echo($user_name) ?>, welcome to Phount!</h1>
            <p class="mb-5">Let's set up your profile so that you can share your expertise with the world!</p>
            <h2 class="mb-4 ">2 more steps to set up your profile - please tell us about your:</h2>
            <div class="row mb-4 d-flex justify-content-start">
                <div class="col-12 col-sm-6 text-center">
                    <img src="graphics/Phount-1-red-fill-35px.svg" class="mb-1" height="35px" width="35px" alt=""><br>
                    <p>Category of expertise</p>
                </div>
                <div class="col-12 col-sm-6 text-center">
                    <img src="graphics/Phount-2-red-35px.svg" class="mb-1" height="35px" width="35px" alt=""><br>
                    <p>Experience</p>
                </div>
                <!-- <div class="col-6 col-sm-3 text-center">
                    <img src="graphics/Phount-3-red-35px.svg" class="mb-1" height="35px" width="35px" alt=""><br>
                    <p>Experience</p>
                </div>
                <div class="col-6 col-sm-3 text-center">
                    <img src="graphics/Phount-4-red-35px.svg" class="mb-1" height="35px" width="35px" alt=""><br>
                    <p>Availability</p>
                </div> -->
            </div>
        </div>
    </section>

    <section class="mb-5">
        <div class="container">
            <div class="row justify-content-center">
                <img src="graphics/Phount-1-red-fill-35px.svg" class="mr-3" height="35px" width="35px" alt="Number 1">
                <h4 class="mb-5">Let’s start with your category of expertise</h4>
            </div>

            <div class="row justify-content-center">
                <form action="expert-registration-skills.php" method="POST" id="expertRegistrationFirstStepForm"
                    class="">

                    <div class="form-group col-md-12">
                        <label for="txtCategory" class="">Category</label><br />
                        <?php require('expert-categories-dropdown.php'); ?>
                    </div>

                    <div class="mt-3 form-group col-md-12">
                        <button type="submit" class="btn btn-light registration-element register-button"
                            OnClick="btn_Expert_Registration_Categories">Proceed to Experience</button>
                    </div>

                    <!-- <div class="form-group col-md-6 col-12">
                        <label for="formGroupExampleInput">Was your expertise category not listed?</label>
                        <input type="text" class="form-control" id="txtNewExpertiseCategory" placeholder="Create a new expertise category"></input>
                    </div>  
                                      -->
                </form>
            </div>            
        </div>
    </section>

    <!-- Footer -->
    <footer class="page-footer font-small blue pt-4">

        <!-- Footer Links -->
        <div class="container-fluid text-center text-md-left">

            <!-- Grid row -->
            <div class="row">

                <!-- Grid column -->
                <div class="col-md-6 mt-md-0 mt-3">

                    <!-- Content -->
                    <h5 class="text-uppercase">Footer Content</h5>
                    <p>Here you can use rows and columns to organize your footer content.</p>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none pb-3">

                <!-- Grid column -->
                <div class="col-md-3 mb-md-0 mb-3">

                    <!-- Links -->
                    <h5 class="text-uppercase">Links</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Link 1</a>
                        </li>
                        <li>
                            <a href="#!">Link 2</a>
                        </li>
                        <li>
                            <a href="#!">Link 3</a>
                        </li>
                        <li>
                            <a href="#!">Link 4</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-3 mb-md-0 mb-3">

                    <!-- Links -->
                    <h5 class="text-uppercase">Links</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Link 1</a>
                        </li>
                        <li>
                            <a href="#!">Link 2</a>
                        </li>
                        <li>
                            <a href="#!">Link 3</a>
                        </li>
                        <li>
                            <a href="#!">Link 4</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->

        </div>
        <!-- Footer Links -->

    </footer>


    <!-- Footer -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
    <!-- <script type="text/javascript" src="scripts.js"></script> -->
</body>

</html>