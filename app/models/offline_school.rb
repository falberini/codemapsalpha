class OfflineSchool < ActiveRecord::Base
  attr_accessible :bio, :city, :ed_level, :format, :name, :pricing, :site_url, :state, :zip_code, :street, :latitude, :longitude
  validate do
		errors.add(:name, "The school must have a name") unless name!=nil
	end
  geocoded_by :street
	after_validation :geocode
end
