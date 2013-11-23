class Creperie.Ingredient extends Creperie.ApplicationModel
  @resourceName: 'ingredients'
  @storageKey: 'ingredients'

  @encode 'name', 'category', 'id'
  @validate 'name', presence: true
  @validate 'category', presence: true

  toString: ->
    "#{@get("name")} (#{@get("category")})"


