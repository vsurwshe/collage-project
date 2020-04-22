<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>MHIS</title>
  <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/normalize.min.css">

<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='css/metisMenu.min.css'>
<link rel='stylesheet prefetch' href='css/timeline.css'>
<link rel='stylesheet prefetch' href='css/morris.css'>
<link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-1.7.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script type='text/javascript' src='https://canvasjs.com/assets/script/canvasjs.min.js'></script>
</head>
<style>
.dropdown {background-color: #990000; color:#337ab7;}
.dropdown-content {
    display: none;
    position: absolute;
    min-width: 160px;
  }
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}
.dropdown-content a:hover {}
.dropdown:hover .dropdown-content {
    display: block;
}
.dropdown:hover .dropbtn {
    background-color: #990000;
}

select {
    margin-bottom: 1em;
  padding: .25em;
  border: 0;
  border-bottom: 2px solid currentcolor; 
  font-weight: bold;
  letter-spacing: .15em;
  border-radius: 0;
  &:focus, &:active {
    outline: 0;
    border-bottom-color: red;
  }
}

</style>
<script>
function bo()
{
	alert("Me");
	$(document).ready(function() {
    $("#map1").hide();
});

}


   /* window.onload = function(e) {
alert('main');

document.getElementById('Menu').style.display = 'none';
document.getElementById('map1').style.display = 'none';
 };*/
</script>
<body onload="bo()">
<div id="wrapper" style="background-color: #990000;">
  <!-- Navigation-->
   <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;background-color: #990000; color:#ffffff">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="index.html" Style=" color:#ffffff">Maharashtra Hydrological Infromation System</a>
    </div>
    <!-- /.navbar-header-->
    <ul class="nav navbar-top-links navbar-right">
      
      <!-- /.dropdown-->
      
      <!-- /.dropdown-->
      
      <!-- /.dropdown-->
      <li class="dropdown">
	  <!--<a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i></a>
        <ul class="dropdown-menu dropdown-user">
          <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a></li>
          <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
          <li class="divider"></li>
          <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
        </ul>--->
		<button >Reload</button>
        <!-- /.dropdown-user-->
      </li>
      <!-- /.dropdown-->
    </ul>
    <!-- /.navbar-top-links-->
	<script>
	function ShowImg()
	{
		alert("Hello");
		var sourceOfPicture="";
		var img=document.getElementById('bigpic');
		img.src=sourceOfPicture.replace('90x90','226x225');
		img.style.display="block";
	}
	function showTool()
	{
		document.getElementById('Menu').style.visibility='visible';
		
	}
	
	function map(sn)
	{
		
		
			alert("hi1");
			$(document).ready(function(){
    $("option").click(function(){
        $("#map1").load("graph.php");
    });
});
			 
			
	}
	var datap = new Array();
	function Showgraph(year)
	{
		alert('d1');
		  $.ajax({
		  type: 'GET',
		  url: 'line.php',
		  success: function (response) {
		  datap=response.split("/");
		       alert(datap);
			   document.getElementById('main').style.display='none';
			   
			   var chart = new CanvasJS.Chart("chartContainer", {
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
	  {label: "JAN",y:4.75},
	  {label: "FEB",y:9.43},
	  {label: "MAR",y:35.16},
	  {label: "APR",y:70.71},
	  {label: "MAY",y:0.63},
	  {label: "JUN",y:12.81},
	  {label: "JUL",y:28.64},
	  {label: "AUG",y:33.12},
	  {label: "SEPT",y:31.39},
	  {label: "OCT",y:20.30},
	  {label: "NOV",y:8.37},
	  {label: "DEC",y:5.90}
	  
    ]
    },
	{
      showInLegend: true,
      legendText: "Rain Fall",
	    color: "Blue",
		  dataPoints: 
		  [
			  {label: "JAN",y:1.34},
			  {label: "FEB",y:26.21},
			  {label: "MAR",y:0.00},
			  {label: "APR",y:12.23},
			  {label: "MAY",y:15.79},
			  {label: "JUN",y:155.78},
			  {label: "JUL",y:357.21},
			  {label: "AUG",y:157.60},
			  {label: "SEPT",y:104.22},
			  {label: "OCT",y:86.61},
			  {label: "NOV",y:10.97},
			  {label: "DEC",y:0.00}
		  ]
    }, {
      type: "splineArea",
      showInLegend: true,
      legendText: "Water Yeild",
      dataPoints: 
		  [
			  {label: "JAN",y:3.77},
			  {label: "FEB",y:0.89},
			  {label: "MAR",y:0.63},
			  {label: "APR",y:0.18},
			  {label: "MAY",y:0.07},
			  {label: "JUN",y:0.03},
			  {label: "JUL",y:75.15},
			  {label: "AUG",y:83.68},
			  {label: "SEPT",y:143.43},
			  {label: "OCT",y:48.97},
			  {label: "NOV",y:22.31},
			  {label: "DEC",y:11.61}
		  ]
    }
    ]
								});
								 chart.render();
			   
			   
		   
		  }
		  });
	}
	
	</script>
    <div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<div class="dropdown">
				<i class="fa fa-bar-chart-o fa-fw" ></i> <span onclick="showTool()" >Charts</span><span class="fa arrow"></span>
				<!--<div id="drop" class="dropdown-content">-->
						      <div id="Menu">
											<Label>Select your District</Label><br>
											<select class="select" name="example5" onchange="ShowImg(this.value)">
												<option  value="Aurangabad">Aurangabad</option>
												<option  value="Nanded">Nanded</option>
												<option  value="Beed">Beed</option>
												<option  value="Osmanabad">Osmanabad</option>
												<option  value="Latur">Latur</option>
												<option  value="Jalna">Jalna</option>
												<option  value="Parbhani">Parbhani</option>
												<option  value="Hingoli">Hingoli</option>
											</select>
								</div>
							  <div class="conditional" data-cond-option="example5" data-cond-value="Aurangabad">
								<Label>Select your River</Label><br>
								<select onchange="ShowImg1(this.value)" >
								     <option value="Khelana">Khelana</option>
									 <option value="Godavari">Godavari</option>
									 <option value="Dheku">Dheku</option>
									 <option value="Anjana">Anjana</option>
									 <option value="Nagjhari">Nagjhari</option>
								</select>
								<br>
								<Label>Select Your Year</Label><br>
								<select onchange="Showgraph(this.value)">	 
									 <option  value="2013">2013</option>
									 <option  value="2014">2014</option>
									 <option  value="2015">2015</option>
									 <option  value="2016">2016</option>
								</select>
							  </div>
							  
							  <div class="conditional" data-cond-option="example5" data-cond-value="Nanded">
								<Label>Select your River</Label><br>
								<select onchange="ShowImg1(this.value)">
									 <option  value="Godavari">Godavari</option>
									 <option  value="Penganga">Penganga</option>
									 <option  value="Siddha">Siddha</option>
									 <option  value="Kahala R">Kahala R</option>
									 <option  value="Kahala N">Kahala N</option>
								</select>
								<br>
								<Label>Select Your Year</Label><br>
								<select onchange="Showgraph(this.value)">	 
									 <option  value="2013">2013</option>
									 <option  value="2014">2014</option>
									 <option  value="2015">2015</option>
									 <option  value="2016">2016</option>
								</select>
							  </div>
							  <div class="conditional" data-cond-option="example5" data-cond-value="Beed">
								<Label>Select your River</Label><br>
								<select onchange="ShowImg1(this.value)">	 
								     <option  value="Meheri">Meheri</option>
									 <option  value="Godavari">Godavari</option>
									 <option  value="Gunwara">Gunwara</option>
									 <option  value="Sindhphana">Sindhphana</option>
								</select>
								<br>
								<Label>Select Your Year</Label><br>
								<select onchange="Showgraph(this.value)">	 
									 <option  value="2013">2013</option>
									 <option  value="2014">2014</option>
									 <option  value="2015">2015</option>
									 <option  value="2016">2016</option>
								</select>
							  </div>
							  <div class="conditional" data-cond-option="example5" data-cond-value="Osmanabad">
								<Label>Select your River</Label><br>
								<select onchange="ShowImg1(this.value)">	 
								   	 <option  value="Terna">Terna</option>
									 <option  value="Manjra">Manjra</option>
									 <option  value="Bori">Bori</option>
									 <option  value="Benithora">Benithora</option>
								</select>
								<br>
								<Label>Select Your Year</Label><br>
								<select onchange="Showgraph(this.value)">	 
									 <option  value="2013">2013</option>
									 <option  value="2014">2014</option>
									 <option  value="2015">2015</option>
									 <option  value="2016">2016</option>
								</select>
							  </div>
							  <div class="conditional" data-cond-option="example5" data-cond-value="Latur">
								<Label>Select your River</Label><br>
								<select onchange="ShowImg1(this.value)">	 
									 <option  value="Manjra">Manjra</option>
									 <option  value="Manar">Manar</option>
									 <option  value="Tirna">Tirna</option>
									 <option  value="Tiru">Tiru</option>
								</select>
								<br>
								<Label>Select Your Year</Label><br>
								<select onchange="Showgraph(this.value)">	 
									 <option  value="2013">2013</option>
									 <option  value="2014">2014</option>
									 <option  value="2015">2015</option>
									 <option  value="2016">2016</option>
								</select>
							  </div>
							  <div class="conditional" data-cond-option="example5" data-cond-value="Jalna">
								<Label>Select your River</Label><br>
								<select onchange="ShowImg1(this.value)">	 
									 <option  value="Dudhana">Dudhana</option>
									 <option  value="Godavari">Godavari</option>
									 <option  value="Purna">Purna</option>
									 <option  value="Khelna">Khelna</option>
								</select>
								<br>
								<Label>Select Your Year</Label><br>
								<select onchange="Showgraph(this.value)">	 
									 <option  value="2013">2013</option>
									 <option  value="2014">2014</option>
									 <option  value="2015">2015</option>
									 <option  value="2016">2016</option>
								</select>
							  </div><div class="conditional" data-cond-option="example5" data-cond-value="Parbhani">
								<Label>Select your River</Label><br>
								<select onchange="ShowImg1(this.value)">	 
									 <option  value="Godavari">Godavari</option>
									 <option  value="Purna">Purna</option>
									 <option  value="Dudhana">Dudhana</option>
									 <option  value="Kastora">Kastora</option>
								</select>
								<br>
								<Label>Select Your Year</Label><br>
								<select onchange="Showgraph(this.value)">	 
									 <option  value="2013">2013</option>
									 <option  value="2014">2014</option>
									 <option  value="2015">2015</option>
									 <option  value="2016">2016</option>
								</select>
							  </div>
							  <div class="conditional" data-cond-option="example5" data-cond-value="Hingoli">
								<Label>Select your River</Label><br>
								<select onchange="ShowImg1(this.value)">	 
									 <option  value="Kayadhu">Kayadhu</option>
									 <option  value="Godavari">Godavari</option>
									 <option  value="Penganga">Penganga</option>
									 <option  value="Purna">Purna</option>
								</select>
								<br>
								<Label>Select Your Year</Label><br>
								<select onchange="Showgraph(this.value)">	 
									 <option  value="2013">2013</option>
									 <option  value="2014">2014</option>
									 <option  value="2015">2015</option>
									 <option  value="2016">2016</option>
								</select>
							  </div>
								
							<div class="conditional" data-cond-option="example5" data-cond-value="Hingoli">
								
							  </div>



				
			</div>
		</div>
	</div>
    <!-- /.navbar-static-side-->
  </nav>
   <div id="page-wrapper" style="min-height: 611px;">
    <div class="row">
      <div class="col-lg-12">
        
		<div id="main">
		<center><img style="" id="bigpic" src="MAP/ALL.png" width="80%" height="50%" /></center>
		</div>
		
		<div  id="chartContainer">
		 
		 <button onclick="window.print()" >Print</button>
		</div>
      </div>
      <!-- /.col-lg-12-->
    </div>
    <!-- /.row-->
    <div class="row">
      <div class="col-lg-3 col-md-6">
        
      </div>
      
      
      
    </div>
    <!-- /.row-->
    
    <!-- /.row-->
  </div>
  <!-- /#page-wrapper-->
</div>
<!-- /#wrapper-->
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/metisMenu/2.2.0/metisMenu.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/timelinejs/2.36.0/js/timeline-min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.4/raphael-min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js'></script>
<script  src="js/index.js"></script>
<script>
/* * * * * * * * * * * * * * * * * *
* Show/hide fields conditionally
* * * * * * * * * * * * * * * * * */
(function($) {
  $.fn.conditionize = function(options){ 
      var settings = $.extend({
        hideJS: true
    }, options );
    $.fn.showOrHide = function(listenTo, listenFor, $section) {
      if ($(listenTo).is('select, input[type=text]') && $(listenTo).val() == listenFor ) {
        $section.slideDown();
      }
      else if ($(listenTo + ":checked").val() == listenFor) {
        $section.slideDown();
      }
      else {
        $section.slideUp();
      }
    } 

    return this.each( function() {
      var listenTo = "[name=" + $(this).data('cond-option') + "]";
      var listenFor = $(this).data('cond-value');
      var $section = $(this);
  
      //Set up event listener
      $(listenTo).on('change', function() {
        $.fn.showOrHide(listenTo, listenFor, $section);
      });
      //If setting was chosen, hide everything first...
      if (settings.hideJS) {
        $(this).hide();
      }
      //Show based on current value on page load
      $.fn.showOrHide(listenTo, listenFor, $section);
    });
  }
}(jQuery));
  
 $('.conditional').conditionize();
</script>




</body>

</html>
