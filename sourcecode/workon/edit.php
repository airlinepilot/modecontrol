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
                    <button type="button"  data-toggle="modal" <?php echo 'data-target="#MatrixPickModal' . $row[ "id"]. '"'; ?> <?php echo 'id="button'.$row[ "id"]. '"'; ?> class="btn editmatrixbtn btn-primary" style="width: 100%; height: 90%">
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
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target=<?php echo '#EditModal' . $row[ "id"]; ?>>Edit Note</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                 <div <?php echo 'id="MatrixPickModal'.$row[ "id"]. '"'; ?> class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog" style="width: 100%">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times; </button>
                                <h4 class="modal-title" id="myModalLabel"><?php echo '<div id="label'.$row["id"].'"><span class="glyphicon glyphicon-pushpin"></span>  '.$row["label"].' - Matrix Picker</div>'; ?>
                                </h4>
                            </div>
                            <div class="modal-body">
	    						<ul class="nav nav-tabs">
	    							<?php
	    							$colselected = intval(explode("-",$row["code"])[0]);
	    							$ledcode = explode("-",$row["code"])[1];
	    							$i=1;
	    							while ($i <= 8) {
	    								if ($colselected == $i) {
                            			$colactive = "active";
		                            	} else {
		                            		$colactive = "";
		                            	}
	    								?>
	    								<li <?php echo 'id="select_col_matrix'.$i.'" class="functionid'.$row["id"].' select_col_matrix '. $colactive.'"';?> ><a>Column <?php echo $i; ?></a></li>
	    								<?php
	    							$i++;
	    							}
	    							 ?>
								   
								</ul>
                               
    								<div <?php echo 'class="list_led'.$row['id'].'"'; ?>>

                                    <form <?php echo 'class="matrixcheckoxform'.$row['id'].'"'; ?>>
									<?php 
									$sql2 = "SELECT * FROM matrixledname WHERE id_column = " . $colselected;
				                	$result2 = $conn->query($sql2);
                                    ?>
                                     <table class="table">
                                    <thead>
                                      <tr>
                                        <th>LED</th>
                                        <th>I/O</th>
                                        <th>SIG NAME</th>
                                        <th>MSGs</th>
                                        <th>Notes</th>
                                        <th>ReV#</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      
                                    
                                    <?php
					                if ($result2->num_rows > 0) {
					                    while($row2 = $result2->fetch_assoc()) {
					                    	$array_ledname = explode("<splittag>", $row2["led_name"]);
					                    	$array_ledcode = str_split($ledcode);
                                            $array_io = explode("<splittag>", $row2["IO"]);
                                            $array_signame = explode("<splittag>", $row2["signame"]);
                                            $array_msgs = explode("<splittag>", $row2["msgs"]);
                                            $array_notes = explode("<splittag>", $row2["notes"]);
                                            $array_ver = explode("<splittag>", $row2["ver"]);
					                    	$i=1;
					                    	while ($i <= 80) {
					                    		?>
                                                <tr>
                                                    <td style="width: 5%">
					                    		<div class="checkbox">
												  <label><input class="checkbox" <?php echo 'name="'.$i.'"'; ?>type="checkbox"<?php if (intval($array_ledcode[$i-1])==1) {
													  	echo " checked";
                                                        echo " value = '0'";
												  }else{ echo " value = '0'";} ?>><?php echo $array_ledname[$i-1]; ?></label></div>
                                                    </td>
                                                    <td style="width: 5%"><input <?php echo 'name="io'.$i.'"'; ?> type="text" class="form-control" <?php echo 'value="'.$array_io[$i-1].'"'; ?>></td>
                                                    <td style="width: 10%"><input <?php echo 'name="signame'.$i.'"'; ?> type="text" class="form-control" <?php echo 'value="'.$array_signame[$i-1].'"'; ?>></td>
                                                    <td style="width: 20%"><textarea <?php echo 'name="msgs'.$i.'"'; ?> class="form-control" rows="1" ><?php echo $array_msgs[$i-1]; ?></textarea></td>
                                                    <td>
                                                      <textarea <?php echo 'name="notes'.$i.'"'; ?> class="form-control" rows="1" ><?php echo $array_notes[$i-1]; ?></textarea>
                                                    </td>
                                                    <td style="width: 7%"><input <?php echo 'name="ver'.$i.'"'; ?> type="text" class="form-control" <?php echo 'value="'.$array_ver[$i-1].'"'; ?>></td>
                                                </tr>
					                    		<?php
					                    	$i++;
					                    	}
					                    	
					                    }
					                }
									 ?>
                                     </tbody>
                                  </table>
                                     </form>
                                    
								</div>
                                <p class="matrix_edit_result" <?php echo 'id="statusfunctionid'.$row['id'].'"'; ?>></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" <?php echo 'class="btn btn-success ledcode_submit functionid'.$row["id"].' saveandload"'; ?> <?php echo 'id= "select_col_matrix'.$colselected.'" '; ?>>Save & Load</button>
                            	<button type="button" <?php echo 'class="btn btn-primary ledcode_submit functionid'.$row["id"].'"'; ?> <?php echo 'id= "select_col_matrix'.$colselected.'" '; ?>>Save</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal" onclick='$(".matrix_edit_result").html(null);'>Close</button>
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
                                    </form>

                                    <div class="editnote_result" <?php echo 'id="edit_result'.$row["id"].'"'; ?>></div>
                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary save_edit"  <?php echo 'onclick="save_edit('. $row[ "id"] . ')"'; ?>>Save</button>
                                <button data-dismiss="modal" type="button" class="btn btn-default"  onclick='$(".editnote_result").html(null);' >Close</button>
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

 