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
if (isset($_POST['name'])) {
    $id = $_POST["id"];
    $newname = trim($_POST['name']);
    $newcontroller = trim($_POST['controller']);
    $info = trim($_POST['info']);
    $pinid = trim($_POST['pinid']);
    $sql1 = "SELECT name FROM boards WHERE id = " . $id;
    $result = $conn->query($sql1);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $oldname = $row["name"];
        }
    }
    $sql2 = "SELECT * FROM boards WHERE id != " . $id;
    $result = $conn->query($sql2);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            
            if ((strcmp(strtolower($newname),strtolower($row["name"]))) == 0) {
                $canupdate = 0;
                $error .= '<div class="alert alert-danger">Name is duplicate!</div>';
            }
            if ((strcmp(strtolower($pinid),strtolower($row["pinid"]))) == 0) {
                $canupdate = 0;
                $error .= '<div class="alert alert-danger">PinID is duplicate with '.$row["name"].'!</div>';
            }
        }
    }
            
    //     }
    // }
    if ($canupdate) {
        
        if ((strcmp($oldname,$newname))!=0){
            $sql = "UPDATE boards SET name='".$newname. "',controller='".$newcontroller."', info='" .$info. "', pinid='".$pinid."' WHERE id= ".$id." ;";
            $sql4 = "RENAME TABLE ".$oldname." TO " .$newname. " ;";
            if (($conn->query($sql4) === TRUE) && ($conn->query($sql) === TRUE)){
                $msg .= "<div class='alert alert-success'>Updated successfully</div>~~*#" . $newname;
            } else {
                $msg .= "<div class='alert alert-danger'>Error updating record!</div>";
            }
            echo $msg;
        }else{
            $sql = "UPDATE boards SET name='".$newname. "',controller='".$newcontroller."', info='" .$info. "', pinid='".$pinid."' WHERE id= ".$id." ;";
            if ($conn->query($sql) === TRUE){
                $msg .= "<div class='alert alert-success'>Updated successfully</div>~~*#" . $newname;
            } else {
                $msg .= "<div class='alert alert-danger'>Error updating record!</div>";
            }
            echo $msg;
        }
        
        // if ((strcmp($oldname,$newname))==0) {
        //     $sql = "UPDATE boards SET name='".$newname. "', info='" .$info. "', pinid='".$pinid."' WHERE id= ".$id." ;";
            

        //     echo $msg;
        // }else {

        // }

        
    }else {
        echo $error;
    }
}

$conn->close();
 ?>