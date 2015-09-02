'use strict'

angular.module 'tictactoeApp'
.controller 'MathController', ($scope) ->

  $scope.difficulty = 1

  operation = (a, b) ->
    if $scope.operator?.option == 'addition' then return a + b
    if $scope.operator?.option == 'subtraction' then return a - b
    if $scope.operator?.option == 'multiplication' then return a * b
    if $scope.operator?.option == 'division' then return a / b

  $scope.operators = [
    {option: 'addition'},
    {option: 'subtraction'},
    {option: 'multiplication'},
    {option: 'division'}
  ]

  $scope.$watch 'operator.option', () ->
    if $scope.operator?.option == 'addition' then $scope.operatorLabel = '+'
    if $scope.operator?.option == 'subtraction' then $scope.operatorLabel = '-'
    if $scope.operator?.option == 'multiplication' then $scope.operatorLabel = 'X'
    if $scope.operator?.option == 'division' then $scope.operatorLabel = '÷'

  $scope.getRandomNumber = () ->
    difficulty = $scope.difficulty
    powerOfTen = Math.pow(10, difficulty)
    randomNumberToFixedPoint = Math.random().toFixed(difficulty)
    return Math.floor(randomNumberToFixedPoint * powerOfTen)

  $scope.setNumbers = () ->
    $scope.firstNumber = $scope.getRandomNumber()
    $scope.secondNumber = $scope.getRandomNumber()
    $scope.answer = ''

  $scope.message = 'No Answer Yet'

  $scope.onAnswer = (answer) ->
    if Number(answer) == operation($scope.firstNumber, $scope.secondNumber) then $scope.onCorrect() else $scope.onIncorrect()

  $scope.onCorrect = () ->
    $scope.message = 'That\'s right!'
    $scope.setNumbers()

  $scope.onIncorrect = () ->
    $scope.message = 'Not quite. Try again!'
    $scope.answer = ''

  $scope.setDifficulty = (difficulty) ->
    $scope.difficulty = Number(difficulty)
    $scope.setNumbers()

  $scope.setNumbers()

  return