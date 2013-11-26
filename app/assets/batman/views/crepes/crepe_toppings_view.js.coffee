class Creperie.CrepeToppingsView extends Creperie.ApplicationView
  source: 'crepes/_toppings'

  addTopping: (ingredientId) ->
    crepeId = @get('controller.currentCrepe.id')
    newTopping = new Creperie.Topping(crepe_id: crepeId, ingredient_id: ingredientId)
    newTopping.save (err, topp) ->
      throw err if err
      $('.new-topping').val("")

