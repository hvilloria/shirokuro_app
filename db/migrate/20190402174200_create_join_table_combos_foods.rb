class CreateJoinTableCombosFoods < ActiveRecord::Migration[5.2]
  def change
    create_join_table :combos, :foods do |t|
      t.index [:combo_id, :food_id]
      t.index [:food_id, :combo_id]
    end
  end
end
