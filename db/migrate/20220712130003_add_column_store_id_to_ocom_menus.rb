class AddColumnStoreIdToOcomMenus < ActiveRecord::Migration[7.0]
  def change
    add_column :ocom_menus, :store_id, :integer
  end
end
