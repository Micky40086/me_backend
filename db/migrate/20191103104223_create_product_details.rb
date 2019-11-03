class CreateProductDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :product_details do |t|
      t.belongs_to :order, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.integer :amount, default: 0
    end
  end
end
