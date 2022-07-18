class AddCardidColumnToProduts < ActiveRecord::Migration[7.0]
  def change
    rename_column :ocom_products_carts, :cart_id, :session_id
  end
end
