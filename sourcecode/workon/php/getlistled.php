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
	$functionid = explode("functionid",explode(" ",$_POST["class"])[0])[1];
	$sql = "SELECT * FROM " . $page . " WHERE id = " .$functionid ;
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
        	$code = $row["code"];
        }
    }
    $column = explode('-',$code)[0];
    $ledcode = explode('-',$code)[1];
	$id = explode("select_col_matrix",$_POST["id"])[1];
	$sql2 = "SELECT * FROM matrixledname WHERE id_column = " . $id;
	$result2 = $conn->query($sql2);
    $respone ='<form class="matrixcheckoxform'.$functionid.'""><table class="table"><thead><tr><th>LED</th><th>I/O</th><th>SIG NAME</th><th>MSGs</th><th>Notes</th><th>ReV#</th></tr></thead><tbody>';

    if ($result2->num_rows > 0) {
        while($row2 = $result2->fetch_assoc()) {
        	$array_ledname = explode("<splittag>", $row2["led_name"]);
        	$array_ledcode = str_split($ledcode);
            $array_io = explode("<splittag>", $row2["IO"]);
            $array_signame = explode("<splittag>", $row2["signame"]);
            $array_msgs = explode("<splittag>", $row2["msgs"]);
            $array_notes = explode("<splittag>", $row2["notes"]);
            $array_ver = explode("<splittag>", $row2["ver"]);
        	if ($id == $column) {
        		foreach ($array_ledname as $key => $value) {
        			if (intval($array_ledcode[$key]) == 1) {
                        $respone .= '<tr><td style="width: 5%"><div class="checkbox"><label><input class="checkbox" type="checkbox" name="'.($key+1).'" value="0" checked>'.$value.'</label></div></td> ';
                        $respone .= '<td style="width: 5%"><input name="io'.($key+1).'" type="text" class="form-control" value="'.$array_io[$key].'"></td>';
                        $respone .= '<td style="width: 10%"><input name="signame'.($key+1).'" type="text" class="form-control" value="'.$array_signame[$key].'"></td>';
                        $respone .= '<td style="width: 20%"><textarea name="msgs'.($key+1).'"  class="form-control" rows="1" >'.$array_msgs[$key] .'</textarea></td>';
                        $respone .= '<td><textarea name="notes'.($key+1).'" class="form-control" rows="1" >'. $array_notes[$key].'</textarea></td>';
                        $respone .= '<td style="width: 7%"><input name="ver'.($key+1).'" type="text" class="form-control" value="'.$array_ver[$key].'"></td></tr>';


        			} else{
                        $respone .= '<tr><td style="width: 5%"><div class="checkbox"><label><input class="checkbox" type="checkbox" name="'.($key+1).'" value="0">'.$value.'</label></div></td> ';
                        $respone .= '<td style="width: 5%"><input name="io'.($key+1).'" type="text" class="form-control" value="'.$array_io[$key].'"></td>';
                        $respone .= '<td style="width: 10%"><input name="signame'.($key+1).'"  type="text" class="form-control" value="'.$array_signame[$key].'"></td>';
                        $respone .= '<td style="width: 20%"><textarea name="msgs'.($key+1).'" class="form-control" rows="1" >'.$array_msgs[$key] .'</textarea></td>';
                        $respone .= '<td><textarea name="notes'.($key+1).'" class="form-control" rows="1" >'. $array_notes[$key].'</textarea></td>';
                        $respone .= '<td style="width: 7%"><input name="ver'.($key+1).'" type="text" class="form-control" value="'.$array_ver[$key].'"></td></tr>';


	        		}
	        	}
        	} else{
	        	foreach ($array_ledname as $key => $value) {
                        $respone .= '<tr><td style="width: 5%"><div class="checkbox"><label><input class="checkbox" type="checkbox" name="'.($key+1).'" value="0">'.$value.'</label></div></td> ';
                        $respone .= '<td style="width: 5%"><input name="io'.($key+1).'" type="text" class="form-control" value="'.$array_io[$key].'"></td>';
                        $respone .= '<td style="width: 10%"><input name="signame'.($key+1).'"  type="text" class="form-control" value="'.$array_signame[$key].'"></td>';
                        $respone .= '<td style="width: 20%"><textarea name="msgs'.($key+1).'" class="form-control" rows="1" >'.$array_msgs[$key] .'</textarea></td>';
                        $respone .= '<td><textarea name="notes'.($key+1).'" class="form-control" rows="1" >'. $array_notes[$key].'</textarea></td>';
                        $respone .= '<td style="width: 7%"><input name="ver'.($key+1).'" type="text" class="form-control" value="'.$array_ver[$key].'"></td></tr>';
 

	        	}
        	}
            
        }
    }
    echo $respone.'</tbody></table></form>';
}

 ?>