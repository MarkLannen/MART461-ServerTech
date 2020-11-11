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
$sql = 'CALL spSelectAllCategories()';
// call the stored procedure
$q = $cn->query($sql);
$q->setFetchMode(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    die("Error occurred:" . $e->getMessage());
    }

    $expert_category = '<select class="form-group col-md-8"  name="txtCategory" id="txtCategory">';
   
    while ($r=$q->fetch())
    {
        $option_info = "<option value ='"  . $r['expertise_categoryID'] . "'>" . $r['category_name'] . "</option>";
        $expert_category = $expert_category . $option_info;
    }
    $expert_category = $expert_category . "</select>";

    echo $expert_category;

?>