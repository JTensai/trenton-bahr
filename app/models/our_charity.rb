class OurCharity < ActiveRecord::Base
  attr_accessible :name, :sort_order
  validates_presence_of :name, :sort_order
  validates_uniqueness_of :name
end
