class CharityOfTheMonth < ActiveRecord::Base
  attr_accessible :header_image, :text, :title

  mount_uploader :header_image, CharitiesUploader
end
