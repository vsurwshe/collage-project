<?PHP
if(count($_POST)>0){
include_once("../db/db.php");
	   $db = mysqli_connect($servername, $username, $password, $dbname);
$tid =$_POST['tid'];
$cid = $_POST['cid']; 
$callno=$_POST['callno'];
$rccScc =$_POST['rccScc'];
$cr = $_POST['cr']; 
$duetoDate=$_POST['duetoDate'];
$issueDate=$_POST['issueDate'];
$courtName =$_POST['courtName'];
$judgeName = $_POST['judgeName']; 
$policeStationCode=$_POST['policeStationCode'];
$accusedName =$_POST['accusedName'];
$witnessName = $_POST['witnessName']; 
$sections=$_POST['sections'];
$servedStatus =$_POST['servedStatus'];
$servedNotes = $_POST['servedNotes']; 
$examStatus=$_POST['examStatus'];
$examNotes =$_POST['examNotes'];
$typeOfCase =$_POST['typeOfCase'];
$sql="INSERT INTO `casetrack` (`tId`, `cId`, `callNo`, `rccScc`, `cr`, `issueDate`, `dueDate`, `courtName`, `judgeName`, 
`policeStationCode`, `accusedName`, `witnessName`, `sections`, `typeOfCase`, `servedStatus`, `servedNotes`, `examStatus`, 
`examNotes`, `entryTime`) VALUES (NULL, '$cid', '$callno', '$rccScc', '$cr', '$duetoDate', '$issueDate', '$courtName', 
'$judgeName', '$policeStationCode', '$accusedName', '$witnessName', '$sections', '$typeOfCase', '$servedStatus', '$servedNotes', 
'$examStatus', '$examNotes', CURRENT_TIMESTAMP);";
$result = mysqli_query($db, $sql) or die (mysql_error()); 
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
<h1>Wel-come to Track Cases</h1>
<form action="#" method="post">
 <label>Enter tid  :</label><input type = "text" name = "tid" class = "box"/><br />
 <label>Enter cid  :</label><input type = "text" name = "cid" class = "box"/><br /><br />
 <label>Enter callNo  :</label><input type = "text" name = "callno" class = "box"/><br />
 <label>Enter rccScc  :</label><input type = "text" name = "rccScc" class = "box"/><br />
 <label>Enter cr  :</label><input type = "text" name = "cr" class = "box"/><br />
 <label>Enter duetoDate  :</label><input type = "text" name = "duetoDate" class = "box"/><br />
 <label>Enter issueDate  :</label><input type = "text" name = "issueDate" class = "box"/><br />
 <label>Enter courtName  :</label><input type = "text" name = "courtName" class = "box"/><br />
 <label>Enter judgeName  :</label><input type = "text" name = "judgeName" class = "box"/><br />
 <label>Enter policeStationCode  :</label><input type = "text" name = "policeStationCode" class = "box"/><br />
 <label>Enter accusedName  :</label><input type = "text" name = "accusedName" class = "box"/><br />
 <label>Enter witnessName  :</label><input type = "text" name = "witnessName" class = "box"/><br />
 <label>Enter sections  :</label><input type = "text" name = "sections" class = "box" /><br/>
 <label>Enter typeOfCase  :</label><input type = "text" name = "typeOfCase" class = "box" /><br/>
 <label>Enter servedStatus  :</label><input type = "text" name = "servedStatus" class = "box" /><br/>
 <label>Enter servedNotes  :</label><input type = "text" name = "servedNotes" class = "box" /><br/>
 <label>Enter examStatus  :</label><input type = "text" name = "examStatus" class = "box" /><br/>
 <label>Enter examNotes  :</label><input type = "text" name = "examNotes" class = "box" /><br/>
 <input type="submit" value="submit">
</form>
</center>
</body>
</html>