var app = angular.module('angularPostPHP', []);
app.controller('TimeCtrl', function($scope, $interval) {
  var tick = function() {
    var map;
    var marker;
    var mapOptions = {
            center: new google.maps.LatLng(19.2183, 72.9781),
            zoom: 10,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
              var request = $http({
                method: "post",
                url: "login.php",
                data: {
                    email: $scope.email,
						},
                headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
            });
            /* Successful HTTP post request or not */
            request.success(function (data) {
				alert(data);
                if(!data == "0"){
                	var tempM = new Array();
					var temp = new Array();
					tempM = data.split(";");
					temp=tempM[0].split(",");
					alert(temp);
					//var map;
					var marker;
					//Remove previous Marker.
						if (marker != null) {
							marker.setMap(null);
								}
 
							//Set Marker on Map.
							var lt = parseFloat(temp[0]);
							var ln = parseFloat(temp[1]);;
							var tit = temp[2];
							var desc=temp[3];
							d=lt+"="+ln+"="+tit+"= "+desc;
							alert(d);
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
																
									//document.getElementById("dvMap").innerHTML =
					
    							
                }
                else {
                	$scope.responseMessage = "You Have Enter Worng Key";
                }
            });
    }

 
  tick();
  $interval(tick, 1000);
});
 
/*app.controller('loginCtrl', function ($scope, $http) {
 
    $scope.login = function () {
	var map;
    var marker;
    var mapOptions = {
            center: new google.maps.LatLng(19.2183, 72.9781),
            zoom: 10,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
              var request = $http({
                method: "post",
                url: "login.php",
                data: {
                    email: $scope.email,
						},
                headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
            });
            /* Successful HTTP post request or not 
            request.success(function (data) {
				alert(data);
                if(!data == "0"){
                	var tempM = new Array();
					var temp = new Array();
					tempM = data.split(";");
					temp=tempM[0].split(",");
					alert(temp);
					//var map;
					var marker;
					//Remove previous Marker.
						if (marker != null) {
							marker.setMap(null);
								}
 
							//Set Marker on Map.
							var lt = parseFloat(temp[0]);
							var ln = parseFloat(temp[1]);;
							var tit = temp[2];
							var desc=temp[3];
							d=lt+"="+ln+"="+tit+"= "+desc;
							alert(d);
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
																
									//document.getElementById("dvMap").innerHTML =
					
    							
                }
                else {
                	$scope.responseMessage = "You Have Enter Worng Key";
                }
            });
    }
});*/