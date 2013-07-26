class CreateSessionInfos < ActiveRecord::Migration
  def change
    create_table :session_infos do |t|
      t.string :video_link
      t.text :what_to_expect

      t.timestamps
    end
  end
end
