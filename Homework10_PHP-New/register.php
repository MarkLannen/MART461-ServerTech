<?php require ("pdo_connection.php") ?>

<?php 

    $server_name = 'localhost'; 
    $db_name = 'esports';      
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
?>
<select name="states" id="states">
<?php 
   
    while ($r=$q->fetch())
    {
?>   
    <option value = '<?php $r['state_id']?>'><?php echo $r['state_name'] ?></option>; 
<?php }
?>
</select>


