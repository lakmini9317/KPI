<?php
include 'db_connect.php';


$empcode =  $_REQUEST['empcode'];
$noc = $_REQUEST['noc'];
$desig = $_REQUEST['desig'];
$dutyfrm = $_REQUEST['dutyfrm'];
$tutq1 = $_REQUEST['tutq1'];
$progq1p = $_REQUEST['progq1p'];
$progq1l = $_REQUEST['progq1l'];
$tutq2 = $_REQUEST['tutq2'];
$progq2p = $_REQUEST['progq2p'];
$progq2l = $_REQUEST['progq2l'];
$tutq3 = $_REQUEST['tutq3'];
$progq3p = $_REQUEST['progq3p'];
$progq3l = $_REQUEST['progq3l'];

$sql = "INSERT INTO duty_list(empcode,noc,desig,dutyfrm,tutq1,progq1p,progq1l,tutq2,progq2p,progq2l,tutq3,progq3p,progq3l) 
VALUES ('$empcode','$noc','$desig','$dutyfrm','$tutq1','$progq1p','$progq1l','$tutq2','$progq2p','$progq2l','$tutq3','$progq3p','$progq3l')";

if(mysqli_query($conn, $sql)){
    echo "<h3>data stored in a database successfully.</h3>"; 
    
    } else{
        echo "ERROR: Hush! Sorry $sql. " 
        . mysqli_error($conn);
    }
?>