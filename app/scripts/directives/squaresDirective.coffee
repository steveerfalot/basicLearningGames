'use strict'

angular.module 'tictactoeApp'
    .directive 'squaresDirective', () ->
        restrict: 'EA'
        templateUrl: 'views/squares.html'