#= require batman/es5-shim

#= require batman/batman
#= require batman/batman.rails

#= require jquery
#= require batman/batman.jquery

#= require_self

#= require_tree ./lib
#= require_tree ./controllers
#= require_tree ./models
#= require_tree ./views
#= require bootstrap


Batman.config.pathToHTML = '/assets/html'

class Creperie extends Batman.App

  @resources 'crepes', ->
    @resources 'toppings'


  @resources 'ingredients'
  @root 'ingredients#index'

(global ? window).Creperie = Creperie
