<html>
 <head>
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
  <link rel="stylesheet" type="text/css" href="css.css">
	<link href='https://fonts.googleapis.com/css?family=Product+Sans' rel='stylesheet'>
  <link rel="icon" type="image/png" href="images/logo.png">
  <title>MPGI</title>
 </head>
 <body>
  <div class="header">
		<img src="images/logo.png" class="logo"/>
		<div class="title">MPGI</div>
  </div>
  <div class="wrapper">
  <div class="container">
		<div class="heading">Student Login</div>
		<center><img src="images/student.svg" class="avatar"/></center>
    <form class="myform" action="" method="post">
    <input type="text" class="inputvalue" name="rollno" placeholder="Register number" style="text-align:center;"/>
		<input type="password" class="inputvalue" name="password" placeholder="Password" style="text-align:center;"/>
    <div class="phpr" style="color:red">
    <label>
    <?php   

      if (isset($_GET["logout"])){
        if ($_GET["logout"] == 1){
          session_start();
          session_destroy();
        }
      }

      $servername = "127.0.0.1";
      $username = "root";
      $password = "";
      $dbname = "feedie_base";
            
      if (isset($_POST["rollno"]) AND isset($_POST["password"])){
      // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        $rollno = $_POST["rollno"];
        $sql = "SELECT st_username, password, class FROM students WHERE rollno = '".$rollno."'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
          // output data of each row
          $row = $result->fetch_assoc();
          if( $_POST["password"] == $row["password"] ){
            echo "Logging you in..";    
            session_start();
            $_SESSION["rollno"] = $_POST["rollno"];
            $_SESSION["st_username"] = $row["st_username"];
            $_SESSION["class"] = $row["class"];
            sleep(1);
            header("Location: dashboard/");  // lines
          }
          else
            echo "Password incorrect!";
          } 
        else {
            echo "Unknown Register number!";
        }
        $conn->close();
      }

    ?>
    </label>
    </div>
    <div style="text-align: right">
	<center>
	<input class="button" type="submit" id="login_btn" value="Login"/>
	</center>
	  </div>
    </form>
  </div>
  </div>
 <footer>Created By Vishvanath And Sony Form CSE-BE</footer>
 </body>
</html>
