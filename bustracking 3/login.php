<?php  
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
 $ci = $request->email;
if($ci==1234)
{
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "map";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if(!$conn){
	die("Connection failed: " .mysqli_connecet_error());
}

$showData = "SELECT `lan`,`lng`,`title`,`desc` FROM `loca`";
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