class CreateGalleryImageCategories < ActiveRecord::Migration
  def change
    create_table :gallery_image_categories do |t|
      t.string :name
      t.integer :sort_order
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
