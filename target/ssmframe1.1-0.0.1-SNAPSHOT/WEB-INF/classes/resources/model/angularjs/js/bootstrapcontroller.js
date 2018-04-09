
bootstrapApp.controller('bootstrapCtr',function ($scope){
	$scope.fName='';
	$scope.lName='';
	$scope.isShow=true;
	
	$scope.users = [
		{id:1, fName:'Hege', lName:"Pege" },
		{id:2, fName:'Kim',  lName:"Pim" },
		{id:3, fName:'Sal',  lName:"Smith" },
		{id:4, fName:'Jack', lName:"Jones" },
		{id:5, fName:'John', lName:"Doe" },
		{id:6, fName:'Peter',lName:"Pan" }
	];
	
	$scope.editUser=function (param){
		if(param == 'add'){
			
			$scope.fName='';
			$scope.lName='';
			$scope.isShow=true;
		}else{
			
			$scope.isShow=false;
			$scope.fName=$scope.users[param-1].fName;
			$scope.lName=$scope.users[param-1].lName;
			
		}
	}
	
});