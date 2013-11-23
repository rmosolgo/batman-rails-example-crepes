class CreateCrepes < ActiveRecord::Migration
  def change
    create_table :crepes do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
