# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

app = angular.module("myApp", [])

app.controller("TimetableCtrl", ["$scope", ($scope) ->
  $scope.weeks = []
  $scope.lunchCount = 0

  $scope.init = ->
    for i in [1..13]
      $scope.weeks.push [0, 0, 0, 0, 0]

  $scope.getClass = (day) ->
    if day is 0 then 'btn-success' else 'btn-danger'

  $scope.increment = (week, day) ->
    if $scope.weeks[week][day] is 0
      $scope.lunchCount++
      $scope.weeks[week][day] = 1
    else
      $scope.lunchCount--
      $scope.weeks[week][day] = 0

  $scope.init()
])
