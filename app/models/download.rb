class Download < ActiveRecord::Base
  attr_accessible :file, :name, :sort_order

    mount_uploader :file, DownloadsUploader
end
