class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :file
      t.string :description

      t.timestamps
    end
  end
end
