<?php 
require_once 'configdb.php';
$canupdate = 1;
$msg = "";
$error = "";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    $error .= '<div class="alert alert-danger">Database Connection failed!</div>';
}
if (isset($_POST['newpin'])) {
    $i =0;
    $sql = "SELECT id FROM boards";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $i++;
        }
    }
    $newpin = "New_Pin" . $i;
    $sql = "INSERT INTO boards (name,info,pinid) VALUES ('".$newpin."','note','pin')";
    if ($conn->query($sql) === TRUE) {
        $sql = "CREATE TABLE " . $newpin ." LIKE Sample";
         if ($conn->query($sql) === TRUE) {
            echo $newpin;
         }
    }
}
 ?>