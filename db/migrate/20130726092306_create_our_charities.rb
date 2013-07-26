class CreateOurCharities < ActiveRecord::Migration
  def change
    create_table :our_charities do |t|
      t.string :name
      t.integer :sort_order

      t.timestamps
    end
  end
end
