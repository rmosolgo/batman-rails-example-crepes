class Crepe.NavView extends Batman.View
  source: 'layouts/nav'

  viewDidAppear: ->
    console.log("Apperrd")
    @set('ingredients', Crepe.Ingredient.get('all'))

  # buttonWasClicked: (node, event, view) ->
    # You can put all of your event handlers in this view file. You can access
    # data by using `view.lookupKeypath('someData')` or `@controller`.
