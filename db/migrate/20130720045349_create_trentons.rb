class CreateTrentons < ActiveRecord::Migration
  def change
    create_table :trentons do |t|
      t.string :image
      t.text :meet_the_artist_text
      t.string :video_link

      t.timestamps
    end
  end
end
