class OfflineSchool < ActiveRecord::Base
  attr_accessible :bio, :city, :ed_level, :format, :name, :pricing, :site_url, :state, :zip_code, :street, :latitude, :longitude
  geocoded_by :street
	after_validation :geocode, :if => :address_changed?
end
