<?php 
require_once 'configdb.php';
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    $error = "Database Connection failed!";
}
if (isset($_POST["id"])) {
	$page = $_POST["page"];
	$id = $_POST["id"];
	$code = $_POST["code"];
	$col = $_POST["col"];
	$io = $_POST["io"];
	$signame = $_POST["signame"];
	$msgs = $_POST["msgs"];
	$notes = $_POST["notes"];
	$ver = $_POST["ver"];
	$load = $_POST["load"];

	if (intval($load) == 1) {
		$sql0 = "UPDATE ".$page." SET status='0'";
		$sql = "UPDATE ".$page." SET code='".$code."', status='1' WHERE id=".$id;
		$sql2 = "UPDATE matrixledname SET IO= '".$io."', signame= '".$signame."', msgs= '".$msgs."',notes = '".$notes."',ver = '".$ver."' WHERE id_column= ".$col;
        if ($conn->query($sql2) === TRUE && $conn->query($sql0) === TRUE && $conn->query($sql) === TRUE){
        	echo "<div class='alert alert-success'>Loaded successfully</div>";
        	echo "<div class='alert alert-success'>Updated successfully</div>";
	    } else {
	        echo "<div class='alert alert-danger'>Error updating record!</div>";
	        echo "<div class='alert alert-danger'>Unloaded!</div>";
	    }
	} else {
		$sql = "UPDATE ". $page ." SET code='".$code. "' WHERE id= ".$id;
		$sql2 = "UPDATE matrixledname SET IO= '".$io."', signame= '".$signame."', msgs= '".$msgs."',notes = '".$notes."',ver = '".$ver."' WHERE id_column= ".$col;
		if ($conn->query($sql2) === TRUE && $conn->query($sql) === TRUE){
        	echo "<div class='alert alert-success'>Updated successfully</div>";
    	} else {
       	 echo "<div class='alert alert-danger'>Error updating record!</div>". $conn->error;
   		}

	}
}
 ?>