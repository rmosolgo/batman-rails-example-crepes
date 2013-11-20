class Crepe.Ingredient extends Crepe.ApplicationModel
  @resourceName: 'ingredients'
  @storageKey: 'ingredients'
  @encode 'name', 'category', 'id'
  @validate 'name', presence: true
  @validate 'category', presence: true


