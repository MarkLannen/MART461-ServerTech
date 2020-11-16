<!-- Get form data for Novice Registration  -->
<?php

    require("pdo-connection.php");

    function escape ($string) {
        return htmlspecialchars($string, ENT_QUOTES, 'UTF-8');
    }

    if($_SERVER["REQUEST_METHOD"]  == "POST")  {
      
        $first_name = $_POST["txtNoviceFirstName"];
        $first_name = escape($first_name);

        $last_name = $_POST["txtNoviceLastName"];
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

        $email = $_POST["txtNoviceEmail"];
        $email = escape($email);

        $phone = $_POST["txtNovicePhone"];
        $phone = escape($phone);

        $user_name = $_POST["txtNoviceUserName"];
        $user_name = escape($user_name);

        $pwd = $_POST["txtNovicePassword"];
        $pwd = escape($pwd);

        echo 'Connection Successful' . '<br />';    

        // echo($first_name);

        $sql = 'CALL spInsertNewNovicePersonalDetails(:firstname, :lastname, :address_1, :address_2, 
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

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="styles.css">

    <!--    Google Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Rubik:300|Sanchez&display=swap" rel="stylesheet">
    <!--    Custom JavaScript-->

    <title>Expert Profile</title>
</head>

<body>

    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #00518f">
        <div class="container-fluid">
            <a class="navbar-brand Sanchez" href="index.html">Phount</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                
                   
            </div>
        </div>
    </nav>

    <section id="categories-profiles-banner">
        <div class="container-fluid">
            <h1>My profile</h1>
        </div>
    </section>
    <!--            Category banner-->
    <section id="categories-profiles-section">
        <div class="container">

            <div class="card my-5">
                <div class="row">
                    <div class="col-md-4 d-flex justify-content-center">
                        <div class="card-header text-center border-0 bg-white">
                            <img src="img/add_image-175px.png" class="img-fluid rounded-circle my-4" alt=""><br>
                            
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body px-2">
                            <div class="d-flex flex-row">
                                <span class="card-title category-profile-card-title align-items-center mr-3">
                                <span>
                                    <?php 
                                        echo $first_name . " " . $last_name;
                                    ?>
                                </span>                               
                            </div>                
                            
                        </div>
                    </div>
                </div>
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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script type="text/javascript" src="scripts.js"></script>
</body>
</html>
