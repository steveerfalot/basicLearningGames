'use strict'

angular.module 'tictactoeApp'
.directive 'squareDirective', (tictactoeService) ->
  restrict: 'EA'
  templateUrl: 'views/square.html'
  scope:
    position: '='
  link: (scope, element, attributes) ->
    element.on 'click', () ->
      if tictactoeService.isGameOn == false then return

      if tictactoeService.player == '1' then element.find('div').text('X') else element.find('div').text('O')

      tictactoeService.markSquare attributes.position, tictactoeService.player.toString()

      hasWon = tictactoeService.isWon tictactoeService.player.toString()

      if hasWon == true
        tictactoeService.isGameOn = false
        scope.$emit 'isWon', 'Player ' + tictactoeService.player.toString() + ' has won.'
      else
        tictactoeService.changePlayer()

      if tictactoeService.catsGame == true
        tictactoeService.isGameOn = false
        scope.$emit 'catsGame'

      scope.$on 'restart', ->
        tictactoeService.clearSelections()
        tictactoeService.isGameOn = true
        element.find('div').text('')