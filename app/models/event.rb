class Event < ActiveRecord::Base
  attr_accessible :date, :description, :link_url, :name, :time, :street, :city, :state, :zip_code
end
