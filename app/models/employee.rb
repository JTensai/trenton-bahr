class Employee < ActiveRecord::Base
  attr_accessible :name, :description, :image, :job_title, :current, :sort_order
  mount_uploader :image, EmployeesUploader
end
