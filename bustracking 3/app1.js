  var markers = [
    {
        "title": 'Aksa Beach',
        "lat": '19.1759668',
        "lng": '72.79504659999998',
        "description": 'Aksa Beach is a popular beach and a vacation spot in Aksa village at Malad, Mumbai.'
    },
    {
        "title": 'Juhu Beach',
        "lat": '19.0883595',
        "lng": '72.82652380000002',
        "description": 'Juhu Beach is one of favourite tourist attractions situated in Mumbai.'
    },
    {
        "title": 'Girgaum Beach',
        "lat": '18.9542149',
        "lng": '72.81203529999993',
        "description": 'Girgaum Beach commonly known as just Chaupati is one of the most famous public beaches in Mumbai.'
    },
    {
        "title": 'Jijamata Udyan',
        "lat": '18.979006',
        "lng": '72.83388300000001',
        "description": 'Jijamata Udyan is situated near Byculla station is famous as Mumbai (Bombay) Zoo.'
    },
    {
        "title": 'Sanjay Gandhi National Park',
        "lat": '19.2147067',
        "lng": '72.91062020000004',
        "description": 'Sanjay Gandhi National Park is a large protected area in the northern part of Mumbai city.'
    }
    ];
    window.onload = function () {
        LoadMap();
    };
 
    var map;
    var marker;
    function LoadMap() {
        var mapOptions = {
            center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
            zoom: 10,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
        SetMarker(0);
    };
    function SetMarker(position) {
        //Remove previous Marker.
        if (marker != null) {
            marker.setMap(null);
        }
 
        //Set Marker on Map.
        var data = markers[position];
		
        var myLatlng = new google.maps.LatLng(data.lat, data.lng);
        marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title: data.title
        });
 
        //Create and open InfoWindow.
        var infoWindow = new google.maps.InfoWindow();
        infoWindow.setContent("<div style = 'width:200px;min-height:40px'>" + data.description + "</div>");
        infoWindow.open(map, marker);
    };
	
	var app = angular.module('angularPostPHP', []);
 
app.controller('loginCtrl', function ($scope, $http) {
 
    $scope.login = function () {
 
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
				//alert(data);
                if(!data == "0"){
                	var tempM = new Array();
					var temp = new Array();
					tempM = data.split(";");
					temp=tempM[0].split(",");
					alert(temp); 
					
					
					
					
					
					if (marker != null) {
            marker.setMap(null);
        }
 
        //Set Marker on Map.
        var data = markers[2];
		
        var myLatlng = new google.maps.LatLng(temp[0], temp[1]);
        marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title: temp[2]
        });
 
        //Create and open InfoWindow.
        var infoWindow = new google.maps.InfoWindow();
        infoWindow.setContent("<div style = 'width:200px;min-height:40px'>" + temp[3] + "</div>");
        infoWindow.open(map, marker);
					
					
					
					
					
					
					
					
					
					
					
				   }
                else {
                	$scope.responseMessage = "You Have Enter Worng Key";
                }
            }); 
    }
});