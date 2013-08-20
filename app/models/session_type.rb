class SessionType < ActiveRecord::Base
  attr_accessible :name
  belongs_to :contact_form

  validates :name, presence: true, uniqueness: true 
end
