class RotatingImage < ActiveRecord::Base
  attr_accessible :image, :live, :rotation_time, :sort_order
      mount_uploader :image, RotatingImagesUploader
end
