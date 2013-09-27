class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.integer :price
      t.integer :sort_order

      t.timestamps
    end
  end
end
