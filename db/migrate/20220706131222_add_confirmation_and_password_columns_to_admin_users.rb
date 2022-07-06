class AddConfirmationAndPasswordColumnsToAdminUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :admin_users, :confirmed_at, :datetime
    add_column :admin_users, :password_digest, :string
  end
end
