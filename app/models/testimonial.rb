class Testimonial < ActiveRecord::Base
  attr_accessible :category, :firstname, :live, :testimonial

  validates_presence_of :category, :firstname, :testimonial
end
