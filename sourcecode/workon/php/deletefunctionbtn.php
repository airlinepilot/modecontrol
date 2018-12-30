<?php 
require_once 'configdb.php';
if (isset($_POST['page'])) {
    $page = $_POST['page'];
    $id = $_POST['id'];
    $sql = "DELETE FROM " . $page . " WHERE id = ". $id ;
}
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    $error = "Database Connection failed!";
} else {
    if ($conn->query($sql) === TRUE) {        
    }

}

$conn->close();
 ?>