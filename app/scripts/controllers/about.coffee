'use strict'

###*
 # @ngdoc function
 # @name tictactoeApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the tictactoeApp
###
angular.module 'tictactoeApp'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
