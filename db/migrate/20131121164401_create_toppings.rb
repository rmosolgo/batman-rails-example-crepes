class CreateToppings < ActiveRecord::Migration
  def change
    create_table :toppings do |t|
      t.integer :crepe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
