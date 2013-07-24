class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.date :date
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.time :time
      t.string :link_url

      t.timestamps
    end
  end
end
