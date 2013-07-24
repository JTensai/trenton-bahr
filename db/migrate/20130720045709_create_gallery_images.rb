class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.string :image
      t.integer :sort_order
      t.string :category

      t.timestamps
    end
  end
end
