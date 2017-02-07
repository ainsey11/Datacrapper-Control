'use strict';

app.controller('PerformanceDataController', ['$scope', 'backendHubProxy',
  function ($scope, backendHubProxy) {
      console.log('trying to connect to service')
      var performanceDataHub = backendHubProxy(backendHubProxy.defaultServer, 'performanceHub');
      console.log('connected to service')
      $scope.currentRamNumber = 68;

      performanceDataHub.on('broadcastPerformance', function (data) {
          data.forEach(function (dataItem) {
              switch (dataItem.categoryName) {
                  case 'Processor':
                      break;
                  case 'Memory':
                      $scope.currentRamNumber = dataItem.value;
                      break;
                  case 'Network In':
                      break;
                  case 'Network Out':
                      break;
                  case 'Disk Read Bytes/Sec':
                      break;
                  case 'Disk Write Bytes/Sec':
                      break;
                  default:
                      //default code block
                      break;
              }
          });
      });
  }
]);