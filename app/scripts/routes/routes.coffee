'use strict'

angular
.module 'tictactoeApp'
.config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state 'tictactoe',
    url: '/'
    controller: 'MainController'
    templateUrl: 'views/main.html'
  .state 'math',
    url: '/math'
    controller: 'MathController'
    templateUrl: 'views/math.html'
