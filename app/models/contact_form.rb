class ContactForm < ActiveRecord::Base
  attr_accessible :street, :city, :state, :zip_code, :auction_type, :comments, :contact_time, :email, :name, :phone_number, :preferred_date, :preferred_day, 
  :preferred_time, :request_type, :session_type_id
  has_one :session_type
end
