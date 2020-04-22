var app=angular.module('refresh_div',[]).controller('refresh_control',function($scope,$interval){
var c=0;
$scope.message="This DIV is refreshed "+c+" time.";
$interval(function(){
$scope.message="This DIV is refreshed "+c+" time.";
c++;
},1000);
});