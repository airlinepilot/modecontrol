<div class="container-fluid content">
        <div class="row" style=" height: 80px">
            <?php
                $sql = "SELECT * FROM " . $page;
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        ?>
                <div class="col-md-2 col-lg-2 col-sm-3 col-xs-4" style=" height: 80px; padding-top: 10px;">
                    <button class="close close-for-js" type="button" data-toggle="modal" <?php echo 'data-target="#GSCCModal' . $row[ "id"]. '"'; ?> style="position: absolute; right: 10%"><span class="glyphicon glyphicon-pencil"></span></button>
                    <button type="button" <?php echo 'id="button'.$row[ "id"]. '"'; if ($row[ "status"]==0 ) { echo 'class="btn functionbtn btn-danger"'; } else { echo 'class="btn functionbtn btn-success"'; } ?> style="width: 100%; height: 90%">
                        <?php echo $row["label"]; ?>
                    </button>
                </div>
                <div <?php echo 'id="GSCCModal'.$row[ "id"]. '"'; ?> class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog" style="width: 70%">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times; </button>
                                <h4 class="modal-title" id="myModalLabel"><?php echo '<div id="label'.$row["id"].'"><span class="glyphicon glyphicon-pushpin"></span>  '.$row["label"].'</div>'; ?>
                                </h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                        <label for="note"><span class="glyphicon glyphicon-list-alt"></span> Note:</label>
                                        <textarea readonly <?php echo 'id="info'.$row["id"].'"'; ?>class="form-control" rows="12" name="note" style="text-align: left; background-color: #fff; border-color: #fff; border-width: 0px"><?php echo trim($row["info"]); ?></textarea>
                                </div>
                                <hr><span class="glyphicon glyphicon-barcode"></span>
                                <strong>Matrix code:</strong>
                                <?php echo '<div id="code'.$row["id"].'">'.$row["code"].'</div>'; ?>
                            </div>
                            <div class="modal-footer">
                                <button style="float: left;" <?php echo 'id="deletebtn'.$row['id'].'"'; ?> type="button" class="btn deletebtn btn-danger">Delete</button>
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target=<?php echo '#EditModal' . $row[ "id"]; ?>>Edit</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div <?php echo 'id="EditModal'.$row[ "id"]. '"'; ?> class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog" style="width: 70%">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times; </button>
                                <h4 class="modal-title" id="myModalLabel"><span class="glyphicon glyphicon-wrench"></span>  Edit</h4>
                            </div>
                            <div class="modal-body">
                                <form <?php echo 'id="edit' . $row[ "id"] . '"'; ?>>
                                    <div class="form-group">
                                        <input type="hidden" name="id" <?php echo 'value = "'.$row[ "id"]. '"'; ?>>
                                        <input type="hidden" id="current_page" name="page" <?php echo 'value = "'.$page. '"'; ?>>
                                        <label for="label"><span class="glyphicon glyphicon-pushpin"></span> Label:</label>
                                        <input type="text" name="label" class="form-control" <?php echo 'value = "'. $row[ "label"]. '"' ?>>
                                    </div>
                                    <div class="form-group">
                                        <label for="note"><span class="glyphicon glyphicon-list-alt"></span> Note:</label>
                                        <textarea class="form-control" rows="12" name="note" style="text-align: left;"><?php echo trim($row["info"]); ?></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="code"><span class="glyphicon glyphicon-barcode"></span> Matrix code:</label>
                                        <input type="text" name="code" class="form-control" <?php echo 'value = "'. $row[ "code"]. '" id ="inputmatrixcode'.$row["id"].'"' ?>>
                                    </div>
                                       <label for="">Select row: </label>
                                     <div style="text-align: center;font-size: 50px">

    <select class="form-control select" <?php echo 'id = "select_row'.$row["id"].'"'; ?> style="font-size: 50px; height: 60px">
    <?php 
    $arraycode = explode("-", $row["code"]);
    for ($rowmatrix=1; $rowmatrix < 9; $rowmatrix++) { 
       if ($arraycode[0] == (string)$rowmatrix) {
           echo ' <option value="'.$rowmatrix.'" selected>'. $rowmatrix.'</option>';
       }else{
            echo ' <option value="'.$rowmatrix.'" >'. $rowmatrix.'</option>';
       }
    }
     ?>
      </select>


<?php 
for ($i = 1; $i < 9; $i++) {
    if ($arraycode[$i] == "1") {
        echo '<label class="checkbox-inline"><input checked class="editcheckboxmatrix checkboxmatrixof'.$row["id"].'" name="'.($i).'" type="checkbox" value="1" checked><span class="glyphicon glyphicon-lamp"></span> </label>';    
    }else {
        echo '<label class="checkbox-inline"><input class="editcheckboxmatrix checkboxmatrixof'.$row["id"].'" name="'.($i).'" type="checkbox" value="0" ><span class="glyphicon glyphicon-lamp"></span> </label>';
    }
    
}
 ?>
 </form>
<!-- <label class="checkbox-inline"><input checked class="checkboxmatrix" type="checkbox" value="" checked><span class="glyphicon glyphicon-lamp"></span> </label>
<label class="checkbox-inline"><input class="checkboxmatrix" type="checkbox" value=""><span class="glyphicon glyphicon-lamp"></span> </label>
<label class="checkbox-inline"><input class="checkboxmatrix" type="checkbox" value=""><span class="glyphicon glyphicon-lamp"></span> </label>
<label class="checkbox-inline"><input class="checkboxmatrix" type="checkbox" value=""><span class="glyphicon glyphicon-lamp"></span> </label>
<label class="checkbox-inline"><input class="checkboxmatrix" type="checkbox" value=""><span class="glyphicon glyphicon-lamp"></span> </label>
<label class="checkbox-inline"><input class="checkboxmatrix" type="checkbox" value=""><span class="glyphicon glyphicon-lamp"></span> </label>
<label class="checkbox-inline"><input class="checkboxmatrix" type="checkbox" value=""><span class="glyphicon glyphicon-lamp"></span> </label>
<label class="checkbox-inline"><input class="checkboxmatrix" type="checkbox" value=""><span class="glyphicon glyphicon-lamp"></span> </label> -->
                                    </div>
                                    <div <?php echo 'id="edit_result'.$row["id"].'"'; ?>></div>
                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary save_edit"  <?php echo 'onclick="save_edit('. $row[ "id"] . ')"'; ?>>Save</button>
                                <button data-dismiss="modal" type="button" class="btn btn-default"  onclick='$("#edit_result").html(null);' '>Close</button>
                            </div>
                        </div>
                    </div>
                </div>

                <?php
                    }
                } else {
                }
                ?>
                    <div class="col-md-2 col-lg-2 col-sm-3 col-xs-4" style="height: 80px; padding-top: 10px;">
                        <button type="button" id = "newfunctionbtn"class="btn btn-default" style="width: 100%; height: 90%"><span class="glyphicon glyphicon-plus"></span></button>
                    </div>
        </div>
    </div>

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
            <input type="text" name="name" class="form-control" <?php echo 'value = "'. $row[ "name"]. '"' ?>>
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
 