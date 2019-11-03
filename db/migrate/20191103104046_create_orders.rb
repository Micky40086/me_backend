class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :uid
      t.boolean :is_paid, default: false

      t.timestamps
    end
  end
end
