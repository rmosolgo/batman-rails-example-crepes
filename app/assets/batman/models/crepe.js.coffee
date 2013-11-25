class Creperie.Crepe extends Creperie.ApplicationModel
  @resourceName: 'crepe'
  @storageKey: 'crepes'

  @encode 'name', 'price'
  @hasMany 'toppings', autoload: false
  # @hasMany 'ingredients', through: 'toppings'

  @accessor 'ingredients',
    set: (vals) -> return
    get: ->
      ingredients = new Batman.Set
      @get('toppings').forEach (t) ->
         ingredients.add(t.get('ingredient'))
      ingredients

  addTopping: (ingredientId) ->
    console.log "add topping with ing #{ingredientId}"
    newTopping = new Creperie.Topping(crepeId: @get('id'), ingredientId: ingredientId)
    @get('toppings').add(newTopping)
    @save (err, crepe) ->
      throw err if err
      console.log crepe

  toString: ->
    "#{@get('name')} ($#{@get('price')})"
