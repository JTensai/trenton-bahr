class GalleryImageCategory < ActiveRecord::Base
  attr_accessible :name, :sort_order, :description, :image
  has_many :gallery_images

  mount_uploader :image, GalleryImageCategoryImageUploader

  validates_format_of :name, :with => /^[a-zA-Z\d\s]*$/
  validates_uniqueness_of :name
end
