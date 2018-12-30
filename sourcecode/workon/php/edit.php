<?php 
require_once 'configdb.php';

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    $error = "Database Connection failed!";
}
if (isset($_POST['id'])) {
    $id = $_POST['id'];
    $label = $_POST['label'];
    $note = $_POST['note'];
    $page = $_POST['page'];
    $sql = "UPDATE ".$page." SET label='".$label."', info='".$note."' WHERE id=".$id;
}
if ($conn->query($sql) === TRUE) {
    $msg = "<div class='alert alert-success'>Record updated successfully</div>";
    $sql = "SELECT label, code, info FROM " . $page . " WHERE id=" .$id;
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $msg = $msg ."~~*#". $row["label"]."~~*#". $row["info"]."~~*#". $row["code"];
        }
    }
    echo $msg;
} else {
    echo "<div class='alert alert-danger'>Error updating record!</div>";
}
$conn->close();
 ?>