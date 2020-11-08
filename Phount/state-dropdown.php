<?php require ("pdo-connection.php") ?>

<?php 

    $server_name = 'localhost'; 
    $db_name = 'phount';      
    $user_name = 'root';
    $password = '@Phount_Password5';    

?>

<?php 
try {

// connecting to the database
$cn = new PDO("mysql:host=$server_name;dbname=$db_name", $user_name, $password);
// define the stored procedure
$sql = 'CALL spSelectAllStates()';
// call the stored procedure
$q = $cn->query($sql);
$q->setFetchMode(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    die("Error occurred:" . $e->getMessage());
    }


    $state_info = '<select class="form-group col-md-6"  name="txtState" id="txtState">';
   
    while ($r=$q->fetch())
    {
        $option_info = "<option value ='"  . $r['state_id'] . "'>" . $r['state_name'] . "</option>";
        $state_info = $state_info . $option_info;
    }
    $state_info = $state_info . "</select>";

    echo $state_info;

?>