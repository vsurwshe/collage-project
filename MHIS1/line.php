<?php
include_once("db/db.php");
$db = mysqli_connect($servername, $username, $password, $dbname);
$sql =   "SELECT `MONTH`,`RAINFALL(mm)2013` FROM `hingoli`";
$res=mysqli_query($db,$sql) or die(mysqli_error($db));
$output ="";
$i=0;

if(mysqli_num_rows($res) > 0)
	 {
		 
	 while($row = mysqli_fetch_assoc($res)) 
	 {
		 if($i==11)
		 {
			  $output=$output." {label:'".$row['MONTH']."',y:".$row["RAINFALL(mm)2013"]."}";
		 }els,
		 {
			 $output=$output." {label:'".$row['MONTH']."',y:".$row["RAINFALL(mm)2013"]."},/";
			 $i=$i+1;
		 }
		 
		
	 }
}

$myJSON = json_encode($output);
echo $output;
?>