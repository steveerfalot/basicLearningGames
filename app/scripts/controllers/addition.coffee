'use strict'

angular.module 'tictactoeApp'
.controller 'AdditionController', ($scope) ->

  $scope.difficulty = 1

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
    if Number(answer) == ($scope.firstNumber + $scope.secondNumber) then $scope.onCorrect() else $scope.onIncorrect()

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