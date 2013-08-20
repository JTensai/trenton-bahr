class Download < ActiveRecord::Base
  attr_accessible :file, :name, :sort_order
  mount_uploader :file, DownloadsUploader
  validates_uniqueness_of :name
  validates_presence_of :sort_order, :name, :file
end
