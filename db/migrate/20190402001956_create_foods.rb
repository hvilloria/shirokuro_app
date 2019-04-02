class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.integer :category
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
