<?php 
require_once 'configdb.php';
if (isset($_POST['id'])) {
    $id = $_POST["id"];
        
    

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    $error = "Database Connection failed!";
} else {
    $sql1 = "SELECT name FROM boards WHERE id = " . $id;
    $result = $conn->query($sql1);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $name = $row["name"];
        }
    }
    $sql = "DELETE FROM boards WHERE id = ". $id ;
    if ($conn->query($sql) === TRUE) { 
        $sql = "DROP TABLE " . $name;
        if ($conn->query($sql) === TRUE) {
        }
    }else {
        echo $sql;

    }

}
}
$conn->close();
 ?>