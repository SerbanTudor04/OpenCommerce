class ChangeFixTypoOcomStores < ActiveRecord::Migration[7.0]
  def change
    rename_column :ocom_stores, :defautl, :default
  end
end
