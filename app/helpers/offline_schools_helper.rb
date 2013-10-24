module OfflineSchoolsHelper
	def getLatlng(search_query)
		query = URI::escape(search_query)
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
end