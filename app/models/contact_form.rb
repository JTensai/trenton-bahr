class ContactForm < ActiveRecord::Base
  attr_accessible :address, :auction_type, :comments, :contact_time, :email, :name, :phone_number, :preferred_date, :preferred_day, :preferred_time, :request_type, :session_type
  has_one :session_type
end
