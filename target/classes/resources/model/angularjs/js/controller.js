	
showApp.controller('showOrHideCrl',function ($scope){
	$scope.userName="Norman";
	$scope.password="nicai";
	$scope.show=true;
	$scope.showOrHide=function (){
		$scope.show=!$scope.show;
	}
});