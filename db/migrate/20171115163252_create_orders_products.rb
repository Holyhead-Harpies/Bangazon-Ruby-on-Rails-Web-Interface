class CreateOrdersProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :orders_products do |t|
      t.integer :order_id
      t.integer :product_id
      t.decimal :product_rating

      t.timestamps
    end
  end
end
