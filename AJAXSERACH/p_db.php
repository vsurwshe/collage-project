<?php
 //include_once("db/db.php");
    $key=$_GET['key'];
    $array = array();
    $con=mysqli_connect("localhost","root","") or die( mysqli_error($db));
    $db=mysqli_select_db($con,"summons");
    $query=mysqli_query($con,"select * from cases where cId LIKE '%{$key}%'") or die(mysqli_error($db));
    while($row=mysqli_fetch_assoc($query))
    {
      $array[] = $row['cId'];
    }
    echo json_encode($array);
?>