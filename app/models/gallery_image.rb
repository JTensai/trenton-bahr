class GalleryImage < ActiveRecord::Base
  attr_accessible :image, :sort_order, :category
end
