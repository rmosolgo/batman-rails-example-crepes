class Topping < ActiveRecord::Base
  belongs_to :crepe
  belongs_to :ingredient
end
