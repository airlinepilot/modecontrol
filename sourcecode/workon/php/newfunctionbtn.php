<?php 
require_once 'configdb.php';
if (isset($_POST['page'])) {
    $page = $_POST['page'];
    $sql = "INSERT INTO ".$page." (label,info,code,status) VALUES ('New Function','','0-00000000000000000000000000000000000000000000000000000000000000000000000000000000','0')";
}
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    $error = "Database Connection failed!";
} else {
    if ($conn->query($sql) === TRUE) {        
    }else{
        echo $page;
    }

}

$conn->close();
 ?>