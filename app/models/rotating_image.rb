class RotatingImage < ActiveRecord::Base
  attr_accessible :image, :live, :rotation_time, :sort_order
end
