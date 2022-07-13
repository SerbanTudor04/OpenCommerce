class CreateOcomProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :ocom_products, id: :uuid do |t|
      t.string :name
      t.float :price
      t.string :image
      t.string :description
      t.string :category_id
      t.float :discount
      t.float :stock
      t.timestamps
    end
  end
end
