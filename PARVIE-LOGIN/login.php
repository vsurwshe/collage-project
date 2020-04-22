<?php

if(count($_POST)>0){
	if($_POST["username"]&&$_POST["password"]){
	
	include_once("db/db.php");
	   $db = mysqli_connect($servername, $username, $password, $dbname);
	   $myusername =$_POST['username'];
      $mypassword = $_POST['password']; 
    if(!empty($_POST['username'])) {      
	  $sql="SELECT `no` FROM `pairavee` WHERE `username` = '$myusername' and `password` = '$mypassword'";
      $result = mysqli_query($db, $sql) or die ("Error: ".mysql_error());
	  $row = mysqli_fetch_array($result) or die(mysql_error());
		if($row>0){
			session_start();
			$_SESSION["user"] = "rand".$row["username"];
			echo "SucessFull Login";
             header("location: pairavee/welcome.html");
			//include("pairavee/welcome.php");
      }else {
         $error = "Your Login Name or Password is invalid";
		 echo $error;
      }
   }

}//

}//
   ?>
