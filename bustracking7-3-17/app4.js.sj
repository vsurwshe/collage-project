var pw = 0;
var app = angular.module('angularPostPHP', []);
app.controller('loginCtrl', function ($scope, $http) {
    $scope.login= function (){
		pw = $scope.ide;
loopsiloop( 2000 );
 }
});
	
/*function sleep (time) {
  return new Promise((resolve) => setTimeout(resolve, time));
}*/
var myTrip=new Array();
function foo(tempM){
	
	//sleep(50).then(() => {do
	//{
		/*if(i>3)
		{
			i=0;
		}
		else
		{*/
		temp=tempM[i].split(",");
					
					alert(tempM);
					//var map;
					var marker;
					//Remove previous Marker.
						if (marker != null) {
							marker.setMap(null);}
 
							//Set Marker on Map.
							var lt = parseFloat(temp[0]);
							var ln = parseFloat(temp[1]);;
							var tit = temp[2];
							var desc=temp[3];
							d=lt+"="+ln+"="+tit+"= "+desc;
							
							alert(d);
							var mapOptions;
							var map;  
							mapOptions = {
										center: new google.maps.LatLng(lt,ln),
										zoom: 18,
										mapTypeId: google.maps.MapTypeId.ROADMAP
										};
							map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
							var myLatlng = new google.maps.LatLng(lt,ln);
							marker = new google.maps.Marker({
											position: myLatlng,
											map: map,
											title: tit
															});
							//Create and open InfoWindow.
							var infoWindow = new google.maps.InfoWindow();
							infoWindow.setContent("<div style='width:200px;min-height:40px'>"+desc+ "</div>");
							infoWindow.open(map, marker);
			
    
  //  myTrip.push(new google.maps.LatLng(28.360012,77.031527));
    myTrip.push(new google.maps.LatLng(lt,ln));
  
    var flightPath=new google.maps.Polyline({
        path:myTrip,
        strokeColor:"#0000FF",
        strokeOpacity:0.8,
        strokeWeight:2
    });
    flightPath.setMap(map); 
							/* var flightPath=new google.maps.Polyline({
													path:myTrip,
													strokeColor:"#0000FF",
													strokeOpacity:0.8,
													strokeWeight:2
												});
												flightPath.setMap(map);*/
							i=i+1;	
		//}
	 
	//}while(tempM[i]!="");});
}

	
	
	
	var tempM = new Array();
					var temp = new Array();
	var failed = 0;
var i=0;
function loopsiloop( interval ){
	
alert("d-11");
   interval = interval || 2000; // default polling to 1 second
  
   setTimeout(function(){
  // alert("d-12");
         $.ajax({
		   method: "post",
           url: 'login.php',
		   data : {
                   data1 : pw// will be accessible in $_POST['data1']
            },
           success: function( response ){
		   // my coded
		 
		        alert(response );
                if(!response  == "0"){
                	var tempM = new Array();
					var temp = new Array();
					tempM = response.split(";");
					var i=0;
					foo(tempM);
					
					
					
					
                    /*temp=tempM[i].split(",");
					
					alert(tempM);
					//var map;
					var marker;
					//Remove previous Marker.
						if (marker != null) {
							marker.setMap(null);}
 
							//Set Marker on Map.
							var lt = parseFloat(temp[0]);
							var ln = parseFloat(temp[1]);;
							var tit = temp[2];
							var desc=temp[3];
							d=lt+"="+ln+"="+tit+"= "+desc;
							
							alert(d);
							var mapOptions;
							var map;  
							mapOptions = {
										center: new google.maps.LatLng(lt,ln),
										zoom: 18,
										mapTypeId: google.maps.MapTypeId.ROADMAP
										};
							map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
							var myLatlng = new google.maps.LatLng(lt,ln);
							marker = new google.maps.Marker({
											position: myLatlng,
											map: map,
											title: tit
															});
							//Create and open InfoWindow.
							var infoWindow = new google.maps.InfoWindow();
							infoWindow.setContent("<div style='width:200px;min-height:40px'>"+desc+ "</div>");
							infoWindow.open(map, marker);
							//document.getElementById("dvMap").innerHTML =*/
						
					
					
    							
                }
                else {$scope.responseMessage = "You Have Enter Worng Key";}
               // do something with the response
               loopsiloop(); // recurse
           },
           error: function(){

               // only recurse while there's less than 10 failed requests.
               // otherwise the server might be down or is experiencing issues.
               if( ++failed < 10 ){

                   // give the server some breathing room by
                   // increasing the interval
                   interval = interval;
                   loopsiloop( interval );
               }
           }
       });
	   
	   
	   
	   
	   
   }, interval);
}