class AddColumnToStores < ActiveRecord::Migration[7.0]
  def change
    add_column :ocom_stores, :currency, :string
    add_column :ocom_stores, :addr_street, :string
    add_column :ocom_stores, :addr_city, :string
    add_column :ocom_stores, :addr_region, :string
    add_column :ocom_stores, :addr_country, :string
  end
end
