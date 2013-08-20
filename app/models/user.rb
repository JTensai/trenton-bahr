class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation
  has_secure_password
  validates :username, presence: true, uniqueness: true
  
  before_save { |user| user.username = user.username.downcase }

end
