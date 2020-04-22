<?php
   if($_GET['keyword'] && !empty($_GET['keyword']))
    {
    $servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "5s";

	   $conn = mysqli_connect($servername, $username, $password, $dbname);
		if(!$conn){
					die("Connection failed: " .mysqli_connecet_error());
				} //Connection to my database
        $keyword = $_GET['keyword'];
        $keyword="%$keyword%";
        $query = "select name from names where name like ?";
        $statement = $conn->prepare('select name from names where name like ?');
        $statement->bind_param('s',$keyword);
        $statement->execute();
        $statement->store_result();
        if($statement->num_rows() == 0) // so if we have 0 records acc. to keyword display no records found
        {
            echo '<div id="item">Ah snap...! No results found :/</div>';
            $statement->close();
            $conn->close();
        }
        else {
            $statement->bind_result($name);
            while ($statement->fetch()) //outputs the records
            {
                echo "<div id='item'>$name</div>";
            };
            $statement->close();
            $conn->close();
        };
    };

?>