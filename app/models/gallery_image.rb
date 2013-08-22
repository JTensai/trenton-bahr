class GalleryImage < ActiveRecord::Base
  attr_accessible :image, :sort_order, :category, :caption
  mount_uploader :image, GalleryImagesUploader

  validates_presence_of :image, :category, :sort_order
end
