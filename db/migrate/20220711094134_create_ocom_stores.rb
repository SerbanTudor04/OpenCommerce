class CreateOcomStores < ActiveRecord::Migration[7.0]
  def change
    create_table :ocom_stores do |t|
      t.string :name
      t.integer :content_menu_id
      t.string :description
      t.integer :owner_id

      t.timestamps
    end
  end
end
