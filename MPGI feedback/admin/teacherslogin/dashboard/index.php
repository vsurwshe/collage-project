<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" type="text/css" href="../../../css.css">
	<link href='https://fonts.googleapis.com/css?family=Product+Sans' rel='stylesheet'>
	<link rel="icon" type="image/png" href="../../../images/logo.png">
	<title>MPGI| Dashboard</title>
	</head>
	<body>
		<div class="header">
			<div><a href="../"><img src="../../../images/back.svg" class="home"></a></div>
			<img src="../../../images/logo.png" class="logo"/>
			<div class="title">MPGI</div>
			<a href="../../?logout=1"><div class="logout">Logout</div></a>
		</div>
		<div class="wrapper">
	<div class="container">
<div class="heading">Class list:</div>

	<?php

				include('../../../db_config.php');

				session_start();
                
                if (!isset($_SESSION["te_username"])){
                  sleep(1);
                  header('Location: ../../');
                }

				$sql = "SELECT class, sub_name, sub_code FROM teachersinfo WHERE te_username = '".$_SESSION["te_username"]."'";
			 $result = $conn->query($sql);

			 if($result->num_rows > 0) {
				while($row = $result->fetch_assoc()){
	?>
				 <div class="flex">
				 <div class="heading flex"><?php echo $row["class"]; ?></div>
					 <div>
					 <a href="feedshow/?class=<?php echo $row["class"]; ?>">
					 <div class="button">Open</div>
					 </a>
					 </div>
				</div>

	<?php
				}
			 }

	?>

		</div>
		</div>
		<footer>Created By Vishvanath And Sony Form CSE-BE</footer>
	</body>
</html>



