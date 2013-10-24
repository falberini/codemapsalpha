class OfflineSchoolsController < ApplicationController

	def index
		@offline_schools = OfflineSchool.all
		respond_to do |format|
			format.html
			format.json {  
				@lat = params[:lat]
				@lng = params[:lng]
				render json: OfflineSchool.near([@lat, @lng], 50, :order => :distance)
			}
		end
	end

	def new
		# URI::escape removes spaces from search query
		query = URI::escape(params[:search_term])
		#queries the googlemaps API passing through school address in the query string
		result = Typhoeus.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{query}&sensor=true")
		#parse the json out of the result from googlemaps API query
		result_hash = JSON.parse(result.body)
		#iterates through the array of hashes and then pulls out the lat and lng
		result_hash["results"].each do |result|
			@lat = result["geometry"]["location"]["lat"]
			@lng = result["geometry"]["location"]["lng"]
		end
	end

	def create
	end
end

