<?php  
header("Access-Control-Allow-Origin: http://127.0.0.1:8000");
//$postdata = file_get_contents("php://input");
//$request = json_decode($postdata);
$ci =$_POST['data1'];//1234;
if($ci==1234)
{
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "map1";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if(!$conn){
	die("Connection failed: " .mysqli_connecet_error());
}

$showData = "SELECT `lan`,`lng`,`title`,`desc` FROM `nanmap` WHERE `buskey`='$ci'";
$result = mysqli_query($conn, $showData)or die ("Error: ".mysql_error());;
if(mysqli_num_rows($result) > 0){
	while($row = $result->fetch_assoc()) {
        echo "" . $row["lan"]. "," . $row["lng"]. "," . $row["title"]. ",".$row["desc"].";";
    }
} else {
	echo "0";
};
}
 
 
   
 
?>