# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require_self
#= require_tree ./services/global
#= require_tree ./services/main
#= require_tree ./filters/global
#= require_tree ./filters/main
#= require_tree ./controllers/global
#= require_tree ./controllers/main
#= require_tree ./directives/global
#= require_tree ./directives/main

window.Unenemy = angular.module('Unenemy', [])

window.Unenemy.config ['$routeProvider', ($routeProvider) ->
  $routeProvider.when("/post", { templateUrl: "/assets/single.html"} )
  $routeProvider.otherwise({ templateUrl: "/assets/index.html"} )
]

window.Unenemy.config ['$locationProvider', ($locationProvider) ->
  $locationProvider.html5Mode(true)
]

