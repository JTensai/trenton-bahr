class Addon < ActiveRecord::Base
  attr_accessible :active, :details, :name, :price, :package_ids, :sort_order
  has_many :package_addons
  has_many :packages, through: :package_addons
end
