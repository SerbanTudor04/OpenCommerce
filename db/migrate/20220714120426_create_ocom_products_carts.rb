class CreateOcomProductsCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :ocom_products_carts, id: :uuid do |t|
      t.string :cart_id
      t.string :product_id
      t.float :quantity
      t.float :price
      t.float :total_price
      t.timestamps
    end
  end
end
