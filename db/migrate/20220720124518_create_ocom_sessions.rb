class CreateOcomSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :ocom_sessions, id: :uuid do |t|
      t.string :session_id, null: false
      t.uuid :user_id, null: false
      t.string :user_name, null: false
      t.string :user_type, null: false
      t.datetime :expire_at, null: false
      t.timestamps
    end
  end
end
