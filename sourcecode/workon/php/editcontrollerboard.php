<?php 
$sql = "SELECT * FROM boards WHERE name = '" . $page . "'";
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) { ?>
 <div class="modal fade" id="EditPin" role="dialog">
    <div class="modal-dialog" style="width: 70%">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title" id="myModalLabel"><?php echo '<div id="labelpin'.$row["id"].'"><span class="glyphicon glyphicon-pushpin"></span>  '.$row["name"].'</div>'; ?></h4>
        </div>
        <div class="modal-body">
        <form action="" id="form_edit_pin">
            <input type="hidden" name="id"<?php echo 'value="'.$row["id"].'"'; ?>>
            <label for="label"><span class="glyphicon glyphicon-tag"></span> Name:</label>
            <input type="text" placeholder="No space please!" name="name" class="form-control" <?php echo 'value = "'. $row[ "name"]. '"' ?>>
            <br>
            <label for="label"><span class="glyphicon glyphicon-tag"></span> Controller:</label>
            <input type="text" name="controller" class="form-control" <?php echo 'value = "'. $row[ "controller"]. '"' ?>>
            <br>
            <div class="form-group">
            <label for="note"><span class="glyphicon glyphicon-list-alt"></span> Note:</label>
            <textarea class="form-control" rows="12" name="info" style="text-align: left;"><?php echo trim($row["info"]); ?></textarea>
            </div>
            <div class="form-group">
            <label for="code"><span class="glyphicon glyphicon-barcode"></span> PinID:</label>
            <input type="text" name="pinid" class="form-control" <?php echo 'value = "'. $row[ "pinid"]. '"' ?>>
            </div>
        </form>
        <p id="edit_pin_result"></p>
        </div>
        <div class="modal-footer">
        <button style="float: left;" id="deletepin" type="button" class="btn deletebtn btn-danger">Delete</button>
        <button type="button" class="btn btn-primary" id="savepin" >Save</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
<?php 
}}
 ?>