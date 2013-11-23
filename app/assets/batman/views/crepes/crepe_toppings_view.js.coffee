class Creperie.CrepeToppingsView extends Creperie.ApplicationView
  source: 'crepes/_toppings'

  addTopping: ->
    crepe = @get('crepe')
    ingId = @get('currentIngredient')

