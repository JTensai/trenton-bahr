class Trenton < ActiveRecord::Base
  attr_accessible :image, :meet_the_artist_text, :video_link
      mount_uploader :image, TrentonUploader
end
