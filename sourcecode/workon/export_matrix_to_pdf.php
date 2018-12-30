<?php 
require_once 'php/configdb.php';
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    $error = "Database Connection failed!";
}
$sql = "SELECT signame FROM matrixledname";
$result = $conn->query($sql);
$array_signame_all_col = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
    	array_push($array_signame_all_col, explode('<splittag>',$row['signame']));
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Controller Mapping Matrix Table</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- for export -->
<script type="text/javascript" src="for_export_pdf/tableExport.js"></script>
<script type="text/javascript" src="for_export_pdf/jquery.base64.js"></script>
<script type="text/javascript" src="for_export_pdf/html2canvas.js"></script>
<script type="text/javascript" src="for_export_pdf/jspdf/libs/sprintf.js"></script>
<script type="text/javascript" src="for_export_pdf/jspdf/jspdf.js"></script>
<script type="text/javascript" src="for_export_pdf/jspdf/libs/base64.js"></script>




</head>
<body>

<div class="container-fluid" id="content">
<!-- PinID table -->
<?php 
$sql1 = "SELECT * FROM boards";
$result = $conn->query($sql1);
$array_controller = [];
$array_name = [];
$array_pinid = [];
$array_code = [];
$array_function = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
    	array_push($array_controller, $row['controller']);
    	array_push($array_name, $row['name']);
    	array_push($array_pinid, $row['pinid']);
    }
}
foreach ($array_name as $key => $value) {
	$sql2 = "SELECT * FROM ".$value." WHERE status = 1" ;
    $result = $conn->query($sql2);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
      array_push($array_code, $row['code']);
    	array_push($array_function, $row['label']);
        }
    }

}


 ?>
<button id="download" type="button" class="btn btn-primary btn-sm" style="float: left;width: 10%; height:50px" onclick ="window.location = '/Sub-Site/ledcontrol/workon/'">
Back
</button>

<h1 style="text-align: center;">Controller Mapping Matrix Table</h1>
<hr>
<p style="float: right;"><i>Ctrl + S or Command + S to Save</i></p>
  <table id="tableID" class="table table-bordered" style="text-align: center;">
    <thead>
    	<!-- Controller -->
      <tr>
        <?php
        $array_colspan = array_count_values($array_controller);
        $array_controller = array_unique($array_controller);
        foreach ($array_controller as $key => $value) {
        	echo '<td colspan="'.$array_colspan[$value].'"><h3>'.$value.'</h3></td>';
        }
         ?>
      </tr>
    </thead>
    <tbody>
    	<!-- Name -->
      <tr>
        <?php 
        foreach ($array_name as $key => $value) {
        	echo "<td><h4>".$value."</h4></td>";
        }
         ?>

      </tr>
      <!-- Pin -->
      <tr>
        <?php 
        foreach ($array_pinid as $key => $value) {
          echo "<td><h5>Pin ".$value."</h5></td>";
        }
         ?>
      </tr> 
      <!-- Function is chosed -->
      <tr>
        <?php 
        foreach ($array_function as $key => $value) {
        	echo "<td><h5>".$value."</h5></td>";
        }
         ?>
      </tr>
      <!-- Col -->
      <tr>
         <?php 
        foreach ($array_code as $key => $value) {
        	echo "<td><h5>Column ".explode('-',$value)[0]."</h5></td>";
        }
         ?>
      </tr>
      
	<?php 
	$i = 1;
	while ($i <= 80) {
		?>
		<tr>
			<?php
				$j = 0;
				while ($j < 8) {
					if ($array_code[$j][$i + 1] == "1") {
						$classtd = 'class="success"';
					}else{
						$classtd = 'class="active"';
					}
					?>
					<td <?php echo $classtd; ?>>
						<?php 
							echo $array_signame_all_col[$j][$i-1];
						 ?>
					</td>
					<?php
					$j++;
				}
			  ?>
		</tr>
		<?php
	 $i++;
	}

	 ?>
    </tbody>
  </table>

</div>
</body>
</html>
