'use strict'

###*
 # @ngdoc function
 # @name tictactoeApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the tictactoeApp
###
angular.module 'tictactoeApp'
  .controller 'MainController', ($scope) ->
    $scope.resultMessage = 'No wins yet'

    $scope.$on 'isWon', (event, message) ->
      $scope.resultMessage = message
      $scope.isOver = true
      $scope.$apply()

    $scope.$on 'catsGame', ->
      $scope.resultMessage = 'Cat\'s game, check yo self and restart'
      $scope.isCatsGame = true
      $scope.$apply()

    $scope.restart = () ->
      $scope.isOver = false
      $scope.isCatsGame = false
      $scope.resultMessage = 'No wins yet'
      $scope.$broadcast 'restart'

    return