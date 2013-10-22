class OfflineSchoolsController < ApplicationController

	def index
				@offline_schools = OfflineSchool.all

				respond_to do |format|
					format.html
					format.json { render json: @offline_schools}
				end
	end

	# def data
	# 	@offline_schools = OfflineSchool.all
	# 	@offline_schools.to_json
	# end

	def new
		@offline_schools = OfflineSchool.all
		@school_array = []
		@offline_schools.each do |school|
			@school_array << [school.latitude, school.longitude, school.id]
		end
		# URI::escape removes 
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

# @offline_schools = OfflineSchool.find(2)
# 		#concats the school address pulling street, city and state
# 		school_address = @offline_schools.street + ",+" + @offline_schools.city + ",+" + @offline_schools.state
# 		#replaces spaces with + in the school address
# 		school_address = school_address.gsub!(/ /, '+')
# 		#queries the googlemaps API passing through school address in the query string
# 		result = Typhoeus.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{school_address}&sensor=true")
# 		#parse the json out of the result from googlemaps API query
# 		result_hash = JSON.parse(result.body)
# 		#iterates through the array of hashes and then pulls out the lat and lng
# 		result_hash["results"].each do |result|
# 			@lat = result["geometry"]["location"]["lat"]
# 			@lng = result["geometry"]["location"]["lng"]
end

