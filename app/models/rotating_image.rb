class RotatingImage < ActiveRecord::Base
  attr_accessible :image, :live, :sort_order
      mount_uploader :image, RotatingImagesUploader
end
