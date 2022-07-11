class CreateOcomMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :ocom_menus do |t|
      t.string :name
      t.bigint :parent_id
      t.string :redirect_to

      t.timestamps
    end
  end
end
