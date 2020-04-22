<?php
include_once("db/db.php");
$db = mysqli_connect($servername, $username, $password, $dbname);
$sql =   "SELECT `MONTH`,`RAINFALL(mm)2013` FROM `hingoli`";
$res=mysqli_query($db,$sql) or die(mysqli_error($db));
$sql1 =   "SELECT `MONTH`,`Evapotranspiration(mm)2013` FROM `hingoli`";
$res1=mysqli_query($db,$sql1) or die(mysqli_error($db));
$sql2 =   "SELECT `MONTH`,`Water Yeild2013` FROM `hingoli`";
$res2=mysqli_query($db,$sql2) or die(mysqli_error($db));
$dis ="";
echo $dis;
$dis=$dis."<html><head><script type='text/javascript'>
  window.onload = function () {
	   hart = new CanvasJS.Chart('chartContainer',
    {
      title:{
        text: 'Survey report from Godavari river of district Beed for year 2013'
      },
	  axisY: {
				title: 'Value(MM)',
				titleFontFamily: 'verdana',
		
		},

      legend: {
       horizontalAlign: 'center',
       verticalAlign: 'bottom',  
       fontSize: 15
     },
	 dataPointMaxWidth: 20,
	 data: [{type: 'line',showInLegend: true,legendText: 'Evapotranspiration',dataPoints: [";
/*	   
	 if(mysqli_num_rows($res1) > 0)
	 {
		 
	 while($row = mysqli_fetch_assoc($res1)) 
	 {
		 
		 $dis=$dis."{label: '".$row['MONTH']."',y:".$row["Evapotranspiration(mm)2013"]."},";
	 }
	 }
	   
	 $dis=$dis+"]},}{
      showInLegend: true,
      legendText: 'Rain Fall',
	    color: 'Blue',
		  dataPoints: [";
		  
	  if (mysqli_num_rows($res) > 0) {
			while($row = mysqli_fetch_assoc($res)) {
				
				$dis=$dis."{label: '".$row['MONTH']."',y:".$row["RAINFALL(mm)2013"]."},";
	}
	}
	  
	$dis=$dis+"]},{
      type: 'splineArea',
      showInLegend: true,
      legendText: 'Water Yeild',
      dataPoints: [";
	  
	  if (mysqli_num_rows($res2) > 0) {
			while($row = mysqli_fetch_assoc($res2)) {
				$dis=$dis."{label: '".$row['MONTH']."',y:".$row["Water Yeild2013"]."},";
	}
	}
	  
	$dis=$dis."]}]
  });
 chart.render();
  }
  </script>
  <script type='text/javascript' src='https://canvasjs.com/assets/script/canvasjs.min.js'></script></head>
  <body>
    <div id='chartContainer' style='height: 300px; width: 100%;'>
    </div>
  </body>
  </html>";
  */
  
  echo $dis;
 
 ?> 
  
  