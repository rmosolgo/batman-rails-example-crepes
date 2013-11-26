class AddPhotoToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :photo, :string
  end
end
