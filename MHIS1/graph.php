
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mhis";
$db = mysqli_connect($servername, $username, $password, $dbname);
$sql =   "SELECT `MONTH`,`RAINFALL(mm)2013` FROM `hingoli`";
$res=mysqli_query($db,$sql) or die(mysqli_error($db));
$sql1 =   "SELECT `MONTH`,`Evapotranspiration(mm)2013` FROM `hingoli`";
$res1=mysqli_query($db,$sql1) or die(mysqli_error($db));
$sql2 =   "SELECT `MONTH`,`Water Yeild2013` FROM `hingoli`";
$res2=mysqli_query($db,$sql2) or die(mysqli_error($db));
?>
<html>
<head>
  <script type="text/javascript">
  window.onload = function () {
	   CanvasJS.addColorSet("greenShades",
                ["#2F4F4F",
                           
                ]);

    var chart = new CanvasJS.Chart("chartContainer",
    {
      title:{
        text: "Survey report from Godavari river of district Beed for year 2013"
      },
	  axisY: {
				title: "Value(MM)",
				titleFontFamily: "verdana",
		
		},

      legend: {
       horizontalAlign: "center", // "center" , "right"
       verticalAlign: "bottom",  // "top" , "bottom"
       fontSize: 15
     },
	 dataPointMaxWidth: 20,
	  
     data: [
     {
      type: "line",
      showInLegend: true,
	  legendText: "Evapotranspiration",
      dataPoints: [
	  <?php 
	  if (mysqli_num_rows($res1) > 0) {
			while($row = mysqli_fetch_assoc($res1)) {
    ?>
	  {label: "<?php echo $row['MONTH'];?>",y:<?php echo  $row["Evapotranspiration(mm)2013"];?>},
	<?php
	}
	}	
?>
    ]
    },
	{
      showInLegend: true,
      legendText: "Rain Fall",
	    color: "Blue",
		  dataPoints: [
	<?php 
	  if (mysqli_num_rows($res) > 0) {
			while($row = mysqli_fetch_assoc($res)) {
    ?>
	  {label: "<?php echo $row['MONTH'];?>",y:<?php echo  $row["RAINFALL(mm)2013"];?>},
	<?php
	}
	}	
?>
 ]
    }, {
      type: "splineArea",
      showInLegend: true,
      legendText: "Water Yeild",
      dataPoints: [
	   <?php 
	  if (mysqli_num_rows($res2) > 0) {
			while($row = mysqli_fetch_assoc($res2)) {
    ?>
	  {label: "<?php echo $row['MONTH'];?>",y:<?php echo  $row["Water Yeild2013"];?>},
	<?php
	}
	}	
?>
      ]
    }
    ]
  });

    chart.render();
  }
  </script>
  <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script></head>
  <body>
    <div id="chartContainer" style="height: 300px; width: 100%;">
    </div>
  </body>
  </html>