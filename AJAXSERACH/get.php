<?php
$ci =$_POST['data1'];
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "summons";
$conn = mysqli_connect($servername, $username, $password, $dbname);
if(!$conn){
	die("Connection failed: " .mysqli_connecet_error());
}

$showData = "SELECT * FROM `casetrack` WHERE `cId`='$ci'";
$result = mysqli_query($conn, $showData)or die ("Error: ".mysqli_error($conn));
	while($row = $result->fetch_assoc()) {
        echo "" . $row["tId"]. "," . $row["cId"]. "," . $row["callNo"]. ",".$row["rccScc"].",".$row["cr"].",".$row[
"issueDate"].",".$row["dueDate"].",".$row["courtName"].",".$row["judgeName"].",".$row["policeStationCode"].",".$row["accusedName"].",".$row[
"witnessName"].",".$row["sections"].",".$row["typeOfCase"].",".$row["servedStatus"].",".$row["servedNotes"].",".$row["examStatus"].",".$row[
"examNotes"].",".$row["entryTime"].",".$row["policeof"].",".$row["spcomment"].";";
    }
?>