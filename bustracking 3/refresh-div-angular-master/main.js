var app=angular.module('refresh_div',[])
.controller('refresh_control',function($scope,$interval){
      var c=0;
      $scope.message="This DIV is refreshed "+c+" time.";
      var timer=$interval(function(){
		/*   var map;
    var marker;
    var mapOptions = {
            center: new google.maps.LatLng(19.2183, 72.9781),
            zoom: 10,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
		 map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
        $scope.message="This DIV is refreshed "+c+" time."; */
        c++;
        if(c===100)
          {
            $scope.message="Restarting the timer again :-)";
            c=0;
          }
		  
		  /*my code*/
		  
		  
		  
      });

      $scope.killtimer=function(){
        if(angular.isDefined(timer))
          {
            $interval.cancel(timer);
            timer=undefined;
            $scope.message="Timer is killed :-(";
          }
      };
});
