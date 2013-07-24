class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :file
      t.string :name
      t.integer :sort_order

      t.timestamps
    end
  end
end
