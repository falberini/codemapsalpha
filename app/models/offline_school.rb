class OfflineSchool < ActiveRecord::Base
  attr_accessible :bio, :city, :ed_level, :format, :name, :pricing, :site_url, :state, :zip_code, :street, :latitude, :longitude, :languages, :contact_email, :contact_number, :country
  validate do
		errors.add(:name, "The school must have a name") unless name!=nil
	end
  geocoded_by :street
	after_validation :geocode
end
