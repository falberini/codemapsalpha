desc "Clean school data"
task :clean_schools => :environment do 
	all_schools = OfflineSchool.all
	all_schools.each do |school|
		name = school.name
		lat = school.latitude
		if name.empty?
			school.delete
		else
			query = URI::escape(school.street)
			result = Typhoeus.get("http://maps.googleapis.com/maps/api/geocode/json?address=#{query}&sensor=true")
			result_hash = JSON.parse(result.body)
			result_hash["results"].each do |result|
				@lat = result["geometry"]["location"]["lat"]
				@lng = result["geometry"]["location"]["lng"]
			end
			school.update_attributes(latitude: @lat, longitude: @lng)
		end
	end
end

