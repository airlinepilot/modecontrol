<?php 
require_once 'configdb.php';
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
  <title>Config Summary</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- <script src="https://unpkg.com/jspdf@latest/dist/jspdf.min.js"></script> -->
  <script src="../js/table2CSV.js"></script>

</head>
<body id="target">
<div class="container-fluid" id="content">
     <!-- PinID table -->
<?php 
$sql1 = "SELECT * FROM boards";
$result = $conn->query($sql1);
$array_controller = [];
$array_name = [];
$array_pinid = [];
$array_code = [];
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
        }
    }else{
      echo "nothing";
    }

}


 ?>
<h1 style="text-align: center;">Controller Mapping Matrix Table</h1>
<hr>
     <!-- <button id="cmd">Generate PDF</button> -->
     <button id="cmd" type="button" class="btn btn-primary btn-sm" style="float: right;">
          <span class="glyphicon glyphicon-download-alt"></span> Download
        </button>
<div>
<table class="table">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>
    <p>a pararaph</p>

</div>
<div id="editor"></div>

<script>

 $(document).ready(function () {
    $('table').each(function () {
        var $table = $(this);

        var $button = $("<button type='button'>");
        $button.text("Export to spreadsheet");
        $button.insertAfter($table);

        $button.click(function () {
            var csv = $table.table2CSV({
                delivery: 'value'
            });
            window.location.href = 'data:text/csv;charset=UTF-8,' 
            + encodeURIComponent(csv);
        });
    });
})






    
    // var doc = new jsPDF();
    // var specialElementHandlers = {
    //     '#editor': function (element, renderer) {
    //         return true;
    //     }
    // };

    // $('#cmd').click(function () {
    //     doc.fromHTML($('#content').html(), 15, 15, {
    //         'width': 170,
    //             'elementHandlers': specialElementHandlers
    //     });
    //     doc.save('sample-file.pdf');
    // });

    // This code is collected but useful, click below to jsfiddle link.

    // This code is collected but useful, click below to jsfiddle link.
</script>
</body>
</html>
