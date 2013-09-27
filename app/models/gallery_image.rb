class GalleryImage < ActiveRecord::Base
  attr_accessible :image, :sort_order, :category, :caption
  mount_uploader :image, GalleryImagesUploader
  belongs_to :gallery_image_category

  validates_presence_of :image, :category, :sort_order

  CATEGORIES = []

  GalleryImageCategory.all(order: :sort_order).each do |g|
    CATEGORIES << g.name
  end

end
