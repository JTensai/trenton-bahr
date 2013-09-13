class Newsletter < ActiveRecord::Base
  attr_accessible :description, :file
  validates_uniqueness_of :description

  mount_uploader :file, NewslettersUploader
end
