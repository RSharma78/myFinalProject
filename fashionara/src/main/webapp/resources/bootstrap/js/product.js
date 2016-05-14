angular.module('sortApp', [])

.controller('mainController', function($scope) {
  $scope.sortType     = 'name'; // set the default sort type
  $scope.sortReverse  = false;  // set the default sort order
  $scope.search   = '';     // set the default search/filter term
    
  // create the list  
  $scope.music = [
    { id: 'M001', name: 'violin', brand: 'yamaha', price: 7000,category: 'fluit'},
    { id: 'M002', name: 'flute', brand: 'marshal', price: 9000,category:'tabla'},
    { id: 'M003', name: 'guitar', brand: 'randall', price: 3000,category: 'violin'},
    { id: 'M004', name: 'tabla', brand: 'park',price: 5000,category: 'violin'}
  ];
  
});