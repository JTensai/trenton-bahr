class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.string :image
      t.integer :sort_order
      t.string :category
      t.string :caption
      t.integer :gallery_image_category_id

      t.timestamps
    end
  end
end
