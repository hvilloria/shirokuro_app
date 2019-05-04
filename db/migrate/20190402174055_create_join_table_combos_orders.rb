class CreateJoinTableCombosOrders < ActiveRecord::Migration[5.2]
  def change
    create_join_table :combos, :orders do |t|
      t.index [:combo_id, :order_id]
      t.index [:order_id, :combo_id]
    end
  end
end
