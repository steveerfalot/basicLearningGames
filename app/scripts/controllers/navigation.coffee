'use strict'

angular.module 'tictactoeApp'
.controller 'NavigationController', ($scope, $state) ->
  $scope.navigation =
    headerPills: [
      {name: 'tictactoe'},
      {name: 'math'},
    ],
    goTo: (type) ->
      $state.go type

  return