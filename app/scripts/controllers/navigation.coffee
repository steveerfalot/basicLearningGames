'use strict'

angular.module 'tictactoeApp'
.controller 'NavigationController', ($scope, $state) ->
  $scope.navigation =
    headerPills: [
      {name: 'tictactoe'},
      {name: 'addition'},
    ],
    goTo: (type) ->
      $state.go type

  return