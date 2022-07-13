class CreateOcomProductsImages < ActiveRecord::Migration[7.0]
  def change
    create_table :ocom_products_images, id: :uuid do |t|
      t.string :image_url
      t.string :product_id
      t.timestamps
    end
  end
end
