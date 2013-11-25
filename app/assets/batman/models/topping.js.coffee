class Creperie.Topping extends Creperie.ApplicationModel
  @resourceName: 'toppings'
  @storageKey: 'toppings'

  @belongsTo: 'crepe', encodeForeignKey: true, nestUrl: true
  @belongsTo: 'ingredient', encodeForeignKey: true

  @validate 'crepe_id', presence: true
  @validate 'ingredient_id', presence: true

