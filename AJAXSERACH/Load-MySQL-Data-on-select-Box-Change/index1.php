<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Loading MySQL Records on Drop Down Selection using PHP jQuery</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<style type="text/css">
select{
	
	width:250px;
	padding:5px;
	border-radius:3px;
}
</style>
<script src="jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
{		
	// function to get all records from table
	function getAll(){
		
		$.ajax
		({
			url: 'getproducts.php',
			data: 'action=showAll',
			cache: false,
			success: function(r)
			{
				$("#display").html(r);
			}
		});			
	}
	
	getAll();
	// function to get all records from table
	
	
	// code to get all records from table via select box
	$("#getProducts").change(function()
	{				
		var id = $(this).find(":selected").val();

		var dataString = 'action='+ id;
				
		$.ajax
		({
			url: 'getproducts.php',
			data: dataString,
			cache: false,
			success: function(r)
			{
				$("#display").html(r);
			} 
		});
	})
	// code to get all records from table via select box
});
</script>
</head>
<body>

<nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="http://www.codingcage.com">Coding Cage</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="http://www.codingcage.com/2016/04/load-mysql-records-on-drop-down.html" target="_blank">Tutorial Link</a></li>
            <li><a href="http://www.codingcage.com/p/about.html" target="_blank">About</a></li>
            <li><a href="http://www.codingcage.com/p/contact-me.html" target="_blank">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<div class="container">


	
    
    	<div class="page-header">
        <h3>
        <select id="getProducts">
        <option value="showAll" selected="selected">Show All Products</option>
        <?php
        require_once 'config.php';
        
        $stmt = $dbcon->prepare('SELECT * FROM categories');
        $stmt->execute();
        
        while($row=$stmt->fetch(PDO::FETCH_ASSOC))
        {
            extract($row);
            ?>
            <option value="<?php echo $cat_id; ?>"><?php echo $cat_name; ?></option>
            <?php
        }
        ?>
        </select>
        </h3>
        </div>
    <blockquote>Load MySQL Records On Drop Down Selection</blockquote>
    <hr />
    
    <div class="" id="display">
       <!-- Records will be displayed here -->
    </div>
    


</div>
</body>
</html>