class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :photo_url

  def photo_url
    object.photo.url
  end
end
