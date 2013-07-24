class CreateCharityOfTheMonths < ActiveRecord::Migration
  def change
    create_table :charity_of_the_months do |t|
      t.string :header_image
      t.text :text
      t.string :title

      t.timestamps
    end
  end
end
