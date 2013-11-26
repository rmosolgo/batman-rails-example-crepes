class Creperie.Topping extends Creperie.ApplicationModel
  @resourceName: 'topping'
  @storageKey: 'toppings'

  @belongsTo 'crepe', encodeForeignKey: true, nestUrl: true, namespace: Creperie
  @belongsTo 'ingredient', encodeForeignKey: true

  @validate 'crepe_id', presence: true
  @validate 'ingredient_id', presence: true

  # @delegate 'photo_url', to: 'ingredient'
  @accessor 'photo_url', -> @get('ingredient.photo_url')
