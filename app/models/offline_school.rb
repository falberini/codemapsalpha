class OfflineSchool < ActiveRecord::Base
  attr_accessible :bio, :city, :ed_level, :format, :name, :pricing, :site_url, :state, :zip_code, :street, :latitude, :longitude
end
