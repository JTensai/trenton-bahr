class GalleryImage < ActiveRecord::Base
  attr_accessible :image, :sort_order, :category
      mount_uploader :image, GalleryImagesUploader
end
