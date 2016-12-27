var app = angular.module('myapp',[]);
	
app.controller('CustomerSearchController', function($scope, $http, $filter)
{

		 var page = 0;

    	$scope.customers = [];

		$scope.currentPage = 0;
		$scope.pageSize = 10;
		

		init();


		function init()
		{
			$http.get("/customers.json")
				.then(function(response) 
				{
					$scope.customers = response.data;
				},function(response) {
					alert("There was a problem: " + response.status);
				})
		}


		$scope.numberOfPages=function()
		{
     	   return Math.ceil($scope.customers.length/$scope.pageSize);                
    	}



		$scope.previousPage = function()
		{
			if(page >0 )
			{
				page = page -1;
				$scope.search($scope.keywords);
			}
		}


		$scope.nextPage = function()
		{
			if(page >0 )
			{
				page = page +1;
				$scope.search($scope.keywords);
			}
		}
	

})


app.filter('startFrom', function() {
    return function(input, start) {
        start = +start; //parse to int
        return input.slice(start);
    }
});