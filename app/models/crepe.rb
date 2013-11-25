class Crepe < ActiveRecord::Base
  has_many :toppings
  accepts_nested_attributes_for :toppings, allow_destroy: true
  has_many :ingredients, through: :toppings
end
