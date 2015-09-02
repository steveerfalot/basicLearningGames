'use strict'

angular.module 'tictactoeApp'
.service 'tictactoeService', () ->
  me = this
  return {
    player: '1'
    isGameOn: true

    squares:
      1: ''
      2: ''
      3: ''
      4: ''
      5: ''
      6: ''
      7: ''
      8: ''
      9: ''

    resultMessage: ''
    catsGame: false

    isWon: (playerValue) ->
      if (this.squares['1'] == playerValue && this.squares['2'] == playerValue && this.squares['3'] == playerValue)
        return true
      if (this.squares['1'] == playerValue && this.squares['5'] == playerValue && this.squares['9'] == playerValue)
        return true
      if (this.squares['1'] == playerValue && this.squares['4'] == playerValue && this.squares['7'] == playerValue)
        return true
      if (this.squares['2'] == playerValue && this.squares['5'] == playerValue && this.squares['8'] == playerValue)
        return true
      if (this.squares['3'] == playerValue && this.squares['6'] == playerValue && this.squares['9'] == playerValue)
        return true
      if (this.squares['3'] == playerValue && this.squares['5'] == playerValue && this.squares['7'] == playerValue)
        return true
      if (this.squares['4'] == playerValue && this.squares['5'] == playerValue && this.squares['6'] == playerValue)
        return true
      if (this.squares['7'] == playerValue && this.squares['8'] == playerValue && this.squares['9'] == playerValue)
        return true

      catsGameCounter = 0
      for key, square of this.squares
        if square != '' then catsGameCounter++
        if catsGameCounter == 9 then this.catsGame = true

    changePlayer: () ->
      this.player = if this.player == '1' then '2' else '1'

    markSquare: (position, playerValue) ->
      this.squares[position] = if this.squares[position] == '' then playerValue else this.squares[position]

    clearSelections: ->
      this.squares =
        1: ''
        2: ''
        3: ''
        4: ''
        5: ''
        6: ''
        7: ''
        8: ''
        9: ''

  }