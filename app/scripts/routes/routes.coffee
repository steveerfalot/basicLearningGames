'use strict'

angular
.module 'tictactoeApp'
.config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state 'home',
    url: '/'
    controller: 'MainController'
    templateUrl: 'views/main.html'
  .state 'addition',
    url: '/addition'
    controller: 'AdditionController'
    templateUrl: 'views/addition.html'
