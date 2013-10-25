require 'nokogiri'
require 'open-uri'

desc "Fetch school data"
task :fetch_school_data => :environment do 
	cities = ["san+jose,+ca"]
	cities.each do |city|	
		url = "http://aws.code.org/search?query="+city
		doc = Nokogiri::HTML(open(url))
		doc.css(".result").each do |item|
			#Scrape data from code.org
			name = item.css(".name").text
			description = item.css(".tt").text
			street = item.css(".address").text
			city_state = item.css(".address+ .address").text
			site_url = item.css(".description a").text
			school_level = item.css(".description div div:nth-child(1)").text
			class_format = item.css(".description div div:nth-child(2)").text
			languages = item.css(".description div div:nth-child(3)").text
			#Strip empty space and random html formatting crap from each entry
			name1 = name.strip
			description1 = description.strip
			street1 = street.strip
			city_state1 = city_state.strip
			site_url1 = site_url.strip
			school_level1 = school_level.strip
			class_format1 = class_format.strip
			languages1 = languages.strip
			if name1.empty?
				puts "Unable to add school to DB"
			else
				OfflineSchool.create(name: name1, street: street1, city: city_state1, site_url: site_url1, bio: description1, ed_level: school_level1, format: class_format1)
			end
		end
	end
end