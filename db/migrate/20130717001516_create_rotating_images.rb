class CreateRotatingImages < ActiveRecord::Migration
  def change
    create_table :rotating_images do |t|
      t.string :image
      t.boolean :live
      t.integer :sort_order
      t.integer :rotation_time

      t.timestamps
    end
  end
end
