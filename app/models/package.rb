class Package < ActiveRecord::Base
  attr_accessible :name, :price, :sort_order, :addon_ids
  has_many :package_addons
  has_many :addons, through: :package_addons

end
