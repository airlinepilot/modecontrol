<?php 
require_once 'php/configdb.php';

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    $error = "Database Connection failed!";
} 

if (isset($_GET["page"])) {
    $page = $_GET["page"];
} else {
    $sql = "SELECT name FROM boards ORDER BY id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $page = $row["name"];
        }
    }
}
if (isset($_POST['test'])) {
    echo $_POST['test'];
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Controller</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
    <style>
        input[type="checkbox"]:checked + span {
      border-color: red;
    /*background-color:red;*/
    color: red
}
    </style>
</head>

<body>
    <!-- Top navibar boards selector -->
    <div class="top">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                <li style="width: 25%; height: 50px">
                    <div class="dropdown" style="width: 100%; height: 100%">
                        <button class="btn btn-primary dropdown-toggle" style="width: 100%; height: 100%; background-color:#222; color:#ffffff; border-color: #222;" type="button" data-toggle="dropdown"><p style="font-size: 24px"><?php echo $page; ?> <span class="caret"></span></p>
                            </button>

                        <ul class="dropdown-menu" style="width: 100%;">
                            <?php
                            $sql = "SELECT * FROM boards";
                            $result = $conn->query($sql);
                            $withmode = "";
                            if (isset($_GET['mode'])) {
                                $withmode = "&mode=".$_GET['mode'];
                            }

                            if ($result->num_rows > 0) {
                                while($row = $result->fetch_assoc()) {
                                    $active = "";
                                    if ($page == $row["name"]) {
                                        $active = "active";
                                    }else {
                                        $active = "";
                                    }
                                    echo ' ';
                                    ?>
                                    <li <?php echo 'class="'.$active.'"'; ?> ><a <?php echo 'href="?page='. $row["name"].$withmode.'" '; ?> style="height: 50px; width: 100%; text-align: center; font-size: 24px; padding-top: 5px"><?php echo $row["name"]; ?></a>

                                    </li>


  

                                    <?php

                                }
                            } else {
                                
                            }
                            ?>
                            <li class="divider"></li>
                            <li><a id="newpin" style="height: 50px; text-align: center; font-size: 24px; padding-top: 5px"><span class="glyphicon glyphicon-plus"></span></a></li>

                        </ul>
                    </div>
                </li> 
                <li>
                    <button data-toggle="modal" data-target="#EditPin" class="btn btn-primary" style="height: 50px; width: 125px; background-color:#222; color:#ffffff; border-color: #222; font-size: 25px"><span style=" color:white" class="glyphicon glyphicon-pencil"></span></button>    
                </li> 
                <li>
                    <button onclick="if(window.location.href.split('?')[1] == null){window.location =  window.location.href +'?mode=play';}else{window.location =  window.location.href +'&mode=play';}" class="btn btn-primary" style="height: 50px; width: 175px; background-color:#222; color:#ffffff; border-color: #222; font-size: 25px"><span style="color: white" class="glyphicon glyphicon-play"></span> Play mode</button>
                </li>
                <li>
                    <button onclick="if(window.location.href.split('?')[1] == null){window.location =  window.location.href +'?mode=edit';}else{window.location =  window.location.href +'&mode=edit';}" class="btn btn-primary" style="height: 50px; width: 165px; background-color:#222; color:#ffffff; border-color: #222; font-size: 25px"><span style="color: white" class="glyphicon glyphicon-edit"></span> Pick mode</button>
                </li 
                 <li>
                    <button onclick="window.location = window.location.href.split('?')[0] + 'export_matrix_to_pdf.php';" class="btn btn-primary" style="height: 50px; width: 190px; background-color:#222; color:#ffffff; border-color: #222; font-size: 25px"><span style="color: white" class="glyphicon glyphicon-list-alt"></span> Summary</button>
                </li
                <li style="left:%; width: 4%; text-align: center;">
                    <a href="#"><span class="glyphicon glyphicon-log-out"></span></a>
                </li>
                </ul>
            </div>
        </nav>
    </div>
    <!-- Content funcion button -->
    
<?php
$mode = 'play';
if (isset($_GET['mode'])) {
$mode = $_GET['mode'];
}
require $mode.'.php';   
require "php/editcontrollerboard.php";
 ?>



<script>
$(document).ready(function() {
    $(".functionbtn").click(function() {

        var button_id = "#" + this.id;
        var id = button_id.split("button")[1];
        var button_class = this.className.split(" ")[2];
        var page = $("#current_page").val();
        var status;
        if (button_class == "btn-danger") {
            $(".functionbtn").removeClass("btn-success").addClass("btn-danger");
            $(button_id).removeClass(button_class).addClass("btn-success");
            status = 1;
        } else {
            $(button_id).removeClass(button_class).addClass("btn-danger");
            status = 0;
        }
        $.post(
            "php/buttonclick.php", {
                page: page,
                id: id,
                status: status
            },
            function(result) {

            },
            "text"
        );
    });

    $("#newfunctionbtn").click(function() {
         url = window.location.href;
         page = url.split("=")[1].split("&")[0];
        // var page = $("#current_page").val();
        $.post(
            "php/newfunctionbtn.php", {
                page: page,
            },
            function(result) {
            },
            "text"
        );
        location.reload();

    });
    $(".deletebtn").click(function() {
        var id = this.id.split("deletebtn")[1];
        var page = $("#current_page").val();
        $.post(
            "php/deletefunctionbtn.php", {
                page: page,
                id:id,
            },
            function(result) {

            },
            "text"
        );
        location.reload();

    });
    $("#savepin").click(function () {
        var data = $("#form_edit_pin").serialize();
        $.post(
            "php/editpin.php",
            data,
            function(result){
                result = result.split("~~*#");
                $("#edit_pin_result").html(result[0]);
                url = window.location.href;
                if (typeof result[1] !== "undefined") {
                    url = url.split("=")[0] + "=" + result[1];
                    window.location.replace(url); 
                }
            },
            "text"
            );
    });
    $("#newpin").click(function(){
        // alert(data);
        $.post(
            "php/newpin.php",
            {
                newpin:true,
            },
            function(result){
                url = window.location.href;
                if (typeof result !== "undefined") {
                    url = url.split("=")[0] + "=" + result;
                    window.location.replace(url); 
                }
            },
            "text"
            );
    });
    $("#deletepin").click(function(){
        var data = $("#form_edit_pin").serialize();
        $.post(
            "php/deletepin.php",
            data,
            function(result){
                url = window.location.href.split("?")[0];
                window.location.replace(url);
            },
            "text"
            );
    });
    $( ".select" ).change(function() {
        var idmatrixcodeinput = "#inputmatrixcode" + this.id.split("select_row")[1];
        var codematrix = $(idmatrixcodeinput).val();
        var codematrixarray = codematrix.split("-");
        codematrixarray[0] = this.value;
        var newcode = codematrixarray.join("-");
        $(idmatrixcodeinput).val(newcode);

    });
     $(".select_col_matrix").click(function(){
        $(".matrix_edit_result").html(null);
        let id = "#" + this.id;
        var divlistled = ".list_led"+this.className.split(' ')[0].split('functionid')[1];
        $("."+this.className.split(" ")[0]).removeClass("active");
        $(id+"."+this.className.split(" ")[0]).addClass("active");
        $(".ledcode_submit").attr('id', this.id);
        $(".list_led").empty();
        $.post(
            "php/getlistled.php", {
                id: this.id,
                class: this.className,
                page: $("#current_page").val(),
            },
            function(result) {
                $(divlistled).html(result);
            },
            "text"
        );
    });
    $(".checkbox").change(function() {
    if(this.checked) {
        this.value = "0";
    }else{
        this.value = "0";
    }
});
   $(".ledcode_submit").click(function(){
        let col = this.id.split("select_col_matrix")[1];
        let id = this.className.split(" ")[3].split("functionid")[1];
        var load = 0;
        if(this.className.split(" ")[4]==="saveandload"){
            load = 1;
        }
        var statusrespone = "#statusfunctionid"+id;
        let data = $(".matrixcheckoxform"+id).serialize();
        var code = '-00000000000000000000000000000000000000000000000000000000000000000000000000000000'.split('');
        let data_array =data.split('&');
        for (index = 0; index < data_array.length; ++index) {
            var needchange = parseInt(data_array[index].split('=0')[0]);
            code[needchange]="1";
        }
        code = col + code.join("");
        var io_array=[];
        var signame_array=[];
        var msgs_array=[];
        var notes_array=[];
        var ver_array=[];
        var i = 0;
        while(i<data_array.length){
            if (data_array[i].indexOf("io")!==-1) {
                io_array.push(data_array[i].split('=')[1]);
            }
            if (data_array[i].indexOf("signame")!==-1) {
                signame_array.push(data_array[i].split('=')[1]);
            }
            if (data_array[i].indexOf("msgs")!==-1) {
                msgs_array.push(data_array[i].split('=')[1]);
            }
            if (data_array[i].indexOf("notes")!==-1) {
                notes_array.push(data_array[i].split('=')[1]);
            }
            if (data_array[i].indexOf("ver")!==-1) {
                ver_array.push(data_array[i].split('=')[1]);
            }
            i++;
        }
        var io = io_array.join("\<splittag\>");
        var signame = signame_array.join("\<splittag\>");
        var msgs = msgs_array.join("\<splittag\>");
        var notes = notes_array.join("\<splittag\>");
        var ver = ver_array.join("\<splittag\>");
        // alert(io);
        $.post(
            "php/updatecode.php", {
                id: id,
                code: code,
                page: $("#current_page").val(),
                io: io,
                signame:signame,
                msgs: msgs,
                notes: notes,
                ver: ver,
                col: col,
                load: load,
            },
            function(result) {
                $(statusrespone).html(result);
            },
            "text"
        );
    });

});

$(document).on('change', '.editcheckboxmatrix', function() {
    if(this.checked) {
        this.value = "0";
    }else{
        this.value = "0";
    }
    var idmatrixcodeinput = "#inputmatrixcode" + this.className.split("editcheckboxmatrix checkboxmatrixof")[1];
    var codematrix = $(idmatrixcodeinput).val();
    var codematrixarray = codematrix.split("-");
    var ledpoistion = parseInt(this.name);
    codematrixarray[ledpoistion] = this.value;
    var newcode = codematrixarray.join("-");
    $(idmatrixcodeinput).val(newcode);
});

function save_edit(id) {
    var id_edit = "#edit" + id;
    var data = $(id_edit).serialize();
    $.post(
        "php/edit.php",
        data,
        function(result) {
            result = result.split("~~*#");
            result_id = "#edit_result"+id;
            $(result_id).html(result[0]);
            var label = "#label" + id;
            var button = "#button" + id;
            var info = "#info" + id;
            var code = "#code" + id;
            $(label).html(result[1]);
            $(button).html(result[1]);
            $(info).html(result[2]);
            $(code).html(result[3]);
        }, 'text'
    );

}
</script>

</body>
<?php 
$conn->close(); ?>

</html>