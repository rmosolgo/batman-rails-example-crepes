class Creperie.Crepe extends Creperie.ApplicationModel
  @resourceName: 'crepes'
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

  toString: ->
    "#{@get('name')} ($#{@get('price')})"
