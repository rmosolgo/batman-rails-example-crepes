class Crepe.IngredientsController extends Crepe.ApplicationController
  routingKey: 'ingredients'

  @observeAll 'ingredient', (newValue, oldValue) ->
    Crepe.set('Title', newValue.get('name'))

  index: (params) ->
    Crepe.set 'Title', 'Ingredients'
    @set 'ingredients', Crepe.Ingredient.get('all')

  show: (params) ->
    Crepe.Ingredient.find params.id , (err, ing) =>
      throw err if err
      @set 'ingredient', ing

  edit: (params) ->
    Crepe.Ingredient.find params.id , (err, ing) =>
      throw err if err
      @set 'currentIngredient', ing

  new: (params) ->
    @set 'currentIngredient', new Crepe.Ingredient

  saveIngredient: (ingredient) ->
    console.log "saving", ingredient.toJSON()
    ingredient.save (err, ing) =>
      throw err if err
      @redirect('/ingredients')

  destroyIngredient: (ingredient) ->
    ingredient.destroy (err) =>
      throw err if err
      @redirect('/ingredients')
