class CreateOcomProductsCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :ocom_products_categories, id: :uuid do |t|
      t.string :name
      t.string :store_id
      t.uuid :parent_id
      t.timestamps
    end
  end
end
