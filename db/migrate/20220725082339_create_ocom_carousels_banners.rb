class CreateOcomCarouselsBanners < ActiveRecord::Migration[7.0]
  def change
    create_table :ocom_carousels_banners, id: :uuid do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :link_url
      t.integer :position
      t.uuid :carousel_id, null: false
      t.timestamps
    end
  end
end
