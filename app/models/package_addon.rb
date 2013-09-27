class PackageAddon < ActiveRecord::Base
  attr_accessible :package_id, :addon_id
  belongs_to :package
  belongs_to :addon
end
