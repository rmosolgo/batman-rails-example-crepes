class Creperie.IngredientsController extends Creperie.ApplicationController
  routingKey: 'ingredients'

  @observeAll 'ingredient', (newValue, oldValue) ->
    Creperie.set('Title', (newValue.get('name') || "New") )

  index: (params) ->
    Creperie.set 'Title', 'Ingredients'
    @set 'ingredients', Creperie.Ingredient.get('all')

  show: (params) ->
    Creperie.Ingredient.find params.id , (err, ing) =>
      throw err if err
      @set 'ingredient', ing

  edit: (params) ->
    Creperie.Ingredient.find params.id , (err, ing) =>
      throw err if err
      @set 'ingredient', ing

  new: (params) ->
    @set 'ingredient', new Creperie.Ingredient

  saveIngredient: (ingredient) ->
    console.log "saving", ingredient.toJSON()
    ingredient.save (err, ing) =>
      console.log(err)
      throw err if err
      @redirect('/ingredients')

  destroyIngredient: (ingredient) ->
    ingredient.destroy (err) =>
      throw err if err
      @redirect('/ingredients')
