<?PHP
if(count($_POST)>0){
include_once("../db/db.php");
	   $db = mysqli_connect($servername, $username, $password, $dbname);
$title =$_POST['title'];
$status = $_POST['status']; 
$dateof=$_POST['DateOfStart'];
$sql = "INSERT INTO `cases` (`cId`, `title`, `status`, `dateOfStart`, `entryTime`) VALUES (NULL,'$title', '$status', '$dateof', CURRENT_TIMESTAMP)";
$result = mysqli_query($db, $sql); 
if(! $result )
{
  die('Could not enter data: ' . mysql_error());
}
echo "Entered data successfully\n";
}


?>






<html>
<body>
<center>
<h1>Wel-come to Test Cases</h1>
<form action="#" method="post">
 <label>Enter Title :</label><input type = "text" name = "title" class = "box"/><br /><br />
 <label>Enter Status  :</label><input type = "text" name = "status" class = "box" /><br/>
 <label>Case Date :</label> <input type="text" name="DateOfStart"><br>
<input type="submit" value="submit">
</form>
</center>
</body>
</html>