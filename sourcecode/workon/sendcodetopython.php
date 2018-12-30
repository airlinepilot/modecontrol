<?php
require_once 'php/configdb.php';
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    $error = "Database Connection failed!";
}
if (isset($_GET['pin'])) {
    $pinid = $_GET['pin'];
    $sql = "SELECT * FROM boards WHERE pinid = " .$pinid ;
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
        	$board = $row['name'];
        }
    }

    $sql2 = "SELECT * FROM ".$board." WHERE status = 1" ;
    $result = $conn->query($sql2);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
        	$code = $row["code"];
            echo $code;
            // $code = explode('-', $code);
            // echo $code[0]."<br>";
            // echo substr($code[1], 0,16)."<br>";
            // echo substr($code[1], 16,16)."<br>";
            // echo substr($code[1], 32,16)."<br>";
            // echo substr($code[1], 48,16)."<br>";
            // echo substr($code[1], 54,16)."<br>";
        }
    }else{
    	echo "nothing";
    }

}
?>