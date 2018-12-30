<?php 
require_once 'configdb.php';
if (isset($_POST['id'])) {
    $id = $_POST['id'];
    $status = $_POST['status'];
    $page = $_POST['page'];
    $sql1 = "UPDATE ".$page." SET status='0'";
    $sql2 = "UPDATE ".$page." SET status='".$status."' WHERE id=".$id;
}
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    $error = "Database Connection failed!";
} else {
    if ($conn->query($sql1) === TRUE) {        
    }
    if ($conn->query($sql2) === TRUE) {        
    }

}

$conn->close();
 ?>