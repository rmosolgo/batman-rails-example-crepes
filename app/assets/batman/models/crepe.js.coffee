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

  removeTopping: (topping) ->
    topping.destroy (err, topping) ->
      throw err if err
      console.log("destroyed topping!")

  toString: ->
    "#{@get('name')} ($#{@get('price')})"
