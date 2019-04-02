class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :status
      t.uuid :number_reference

      t.timestamps
    end
  end
end
