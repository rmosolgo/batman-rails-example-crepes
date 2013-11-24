class Creperie.ContextNavView extends Creperie.ApplicationView
  source: 'layouts/context_nav'

  viewDidAppear: ->
    Creperie.observe "currentRoute.controller", (newValue, oldValue) =>
      currentController = newValue
      itemClassName = Batman.helpers.singularize(Batman.helpers.camelize(currentController))
      itemClass = Creperie[itemClassName]
      if itemClass?
        @set 'itemClass', itemClass
        @set 'itemRoute', currentController


    Creperie.observe "currentParams.id", (newValue, oldValue) =>
      console.log(newValue, oldValue)
      @set 'itemId', parseInt(newValue)

