class CreateOcomCarousels < ActiveRecord::Migration[7.0]
  def change
    create_table :ocom_carousels, id: :uuid do |t|
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
