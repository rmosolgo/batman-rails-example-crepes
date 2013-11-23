class Creperie.ContextNavView extends Creperie.ApplicationView
  source: 'layouts/context_nav'

  viewDidAppear: ->
    Creperie.observe "currentRoute.controller", (newValue, oldValue) ->
      currentController = newValue
      itemClassName = Batman.helpers.singularize(Batman.helpers.camelize(currentController))
      itemClass = Creperie[itemClassName]
      if itemClass?
        @set 'itemClass', itemClass
        @set 'itemRoute', currentController


  # buttonWasClicked: (node, event, view) ->
    # You can put all of your event handlers in this view file. You can access
    # data by using `view.lookupKeypath('someData')` or `@controller`.
