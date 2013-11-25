class CrepeSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  has_many :toppings
end
