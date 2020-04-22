            
<?php
session_start();
if(isset($_SESSION["pairaVee"])){
header("location: pairavee/home.html");
} else if(isset($_SESSION["supriPolice"])){
header("location: sp/home.php");
} else if(isset($_SESSION["policeStation"])){
header("location: policeStation/home.php");
}
if(count($_POST)>0){
	if($_POST["username"]&&$_POST["password"]){
	include_once("db/db.php");
	   $db = mysqli_connect($servername, $username, $password, $dbname);
	   $myusername =$_POST['username'];
      $mypassword = $_POST['password']; 
	  $work=$_POST['q1'];
    
	if(!empty($_POST['username'])) {  
//1st    
if($work=="parviee")
{
	$sql="SELECT `no` FROM `pairavee` WHERE `username` = '$myusername' and `password` = '$mypassword'";
      $result = mysqli_query($db, $sql) or die ("Error: ".mysql_error());
	  $row = mysqli_fetch_array($result) or die(mysql_error());
		if($row>0){
			$_SESSION["pairaVee"] = mt_rand()+$row["username"];
			header("location: pairavee/home.php");
			echo "logged";
      }else {
		  echo "Incorrect credentials";
         //$error = "Your Login Name or Password is invalid";
      }
}else if($work=="policeStaion")
{
	//2nd  policestation
$sql1="SELECT `No` FROM `policeStations` WHERE `Code` = '$myusername' and `password` = '$mypassword'";	  
$result = mysqli_query($db, $sql1) or die ("Error: ".mysql_error());
	  $row = mysqli_fetch_array($result) or die(mysql_error());
		if($row>0){
			$_SESSION["policeStation"] = mt_rand()+$row["code"];
			header("location: policeStation/home.php");
      }else {
         //$error = "Your Login Name or Password is invalid";
		 echo "Incorrect credentials";
      }	  
}else if($work=="sp")
{
	//3rd Suprident Police

$sql2="SELECT `no` FROM `supri` WHERE `username` = '$myusername' and `password` = '$mypassword'";	  
$result = mysqli_query($db, $sql2) or die ("Error: ".mysql_error());
	  $row = mysqli_fetch_array($result) or die(mysql_error());
		if($row>0){
			$_SESSION["supriPolice"] = mt_rand()+$row["code"];
			header("location: sp/home.php");
      }else {
		  echo "Incorrect credentials";
         //$error = "Your Login Name or Password is invalid";
      }	  
}
	  
	  
	  
	  
	  
	  
	  
	  
	  
   }

}

}


?>
			  <form action = "#" method = "post">
                  <label>UserName  :</label><input type = "text" name = "username" class = "box"/><br /><br />
                  <label>Password  :</label><input type = "password" name = "password" class = "box" /><br/>
				  <label>Select Your Roll  :</label> <input type="radio" name="q1" value="parviee" checked> Parviee <input type="radio" name="q1" value="sp"> Sp<input type="radio" name="q1" value="policeStaion"> policeStaion
				  <br><input type="submit" value="login" />
				  
		 </form>
