class CreateAddons < ActiveRecord::Migration
  def change
    create_table :addons do |t|
      t.string :name
      t.integer :price
      t.text :details
      t.boolean :active
      t.integer :sort_order

      t.timestamps
    end
  end
end
