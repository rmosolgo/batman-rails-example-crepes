class Ingredient < ActiveRecord::Base
  has_many :toppings
  has_many :crepes, through: :toppings
  mount_uploader :photo, ItemPhotoUploader
end
