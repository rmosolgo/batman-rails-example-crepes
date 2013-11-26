class Creperie.Ingredient extends Creperie.ApplicationModel
  @resourceName: 'ingredient'
  @storageKey: 'ingredients'

  @encode 'name', 'category', 'id', 'photo', 'photo_url'
  @validate 'name', presence: true
  @validate 'category', presence: true

  toString: ->
    "#{@get("name")} (#{@get("category")})"


